; ModuleID = 'src/rdopt.c'
source_filename = "src/rdopt.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@cofAC = dso_local global ptr null, align 8
@cofAC8x8 = dso_local global ptr null, align 8
@cofDC = dso_local global ptr null, align 8
@cofAC4x4 = dso_local local_unnamed_addr global ptr null, align 8
@cofAC4x4intern = dso_local global ptr null, align 8
@cs_mb = dso_local local_unnamed_addr global ptr null, align 8
@cs_b8 = dso_local local_unnamed_addr global ptr null, align 8
@cs_cm = dso_local local_unnamed_addr global ptr null, align 8
@cs_imb = dso_local local_unnamed_addr global ptr null, align 8
@cs_ib8 = dso_local local_unnamed_addr global ptr null, align 8
@cs_ib4 = dso_local local_unnamed_addr global ptr null, align 8
@cs_pc = dso_local local_unnamed_addr global ptr null, align 8
@cofAC_8x8ts = dso_local global ptr null, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@rdopt = external dso_local local_unnamed_addr global ptr, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@pixel_map = external dso_local local_unnamed_addr global ptr, align 8
@refresh_map = external dso_local local_unnamed_addr global ptr, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@assignSE2partition = external dso_local local_unnamed_addr global [2 x ptr], align 8
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@cbp_chroma_block_temp = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@Mode_Decision_for_4x4IntraBlocks.cbp_bits = internal unnamed_addr global i64 0, align 8
@lrec = external dso_local local_unnamed_addr global ptr, align 8
@fadjust4x4 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@imgUV_org = external dso_local local_unnamed_addr global ptr, align 8
@resTrans_R = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_B = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_G = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resG = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resB = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resR = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@cofAC4x4_chroma = dso_local local_unnamed_addr global [2 x [2 x [18 x i32]]] zeroinitializer, align 4
@dc_level_temp = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@dc_level = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@cbp_chroma_block = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@lrec_uv = external dso_local local_unnamed_addr global ptr, align 8
@direct_pdir = external dso_local local_unnamed_addr global ptr, align 8
@direct_ref_idx = external dso_local local_unnamed_addr global ptr, align 8
@mprRGB = external dso_local local_unnamed_addr global [3 x [16 x [16 x i32]]], align 4
@decs = external dso_local local_unnamed_addr global ptr, align 8
@cbp8x8 = dso_local local_unnamed_addr global i32 0, align 4
@best8x8pdir = dso_local local_unnamed_addr global [15 x [4 x i16]] zeroinitializer, align 2
@best8x8mode = dso_local local_unnamed_addr global [4 x i16] zeroinitializer, align 2
@best8x8fwref = dso_local local_unnamed_addr global [15 x [4 x i16]] zeroinitializer, align 2
@best8x8bwref = dso_local local_unnamed_addr global [15 x [4 x i16]] zeroinitializer, align 2
@tr8x8 = dso_local local_unnamed_addr global %struct.RD_8x8DATA zeroinitializer, align 4
@cnt_nonz8_8x8ts = dso_local local_unnamed_addr global i32 0, align 4
@cbp8_8x8ts = dso_local local_unnamed_addr global i32 0, align 4
@cbp_blk8_8x8ts = dso_local local_unnamed_addr global i64 0, align 8
@cnt_nonz_8x8 = dso_local local_unnamed_addr global i32 0, align 4
@tr4x4 = dso_local local_unnamed_addr global %struct.RD_8x8DATA zeroinitializer, align 4
@cbp_blk8x8 = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid direction mode\00", align 1
@LEVELMVLIMIT = external dso_local local_unnamed_addr constant [17 x [6 x i32]], align 4
@pred = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@gaaiMBAFF_NZCoeff = external dso_local local_unnamed_addr global [4 x [12 x i32]], align 4
@bestInterFAdjust8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@bestInterFAdjust4x4Cr = dso_local local_unnamed_addr global [2 x [16 x [16 x i32]]] zeroinitializer, align 4
@bestInterFAdjust4x4 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@bestIntraFAdjust4x4 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@bestIntraFAdjust4x4Cr = dso_local local_unnamed_addr global [2 x [16 x [16 x i32]]] zeroinitializer, align 4
@bestIntraFAdjust8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@best_mode = dso_local local_unnamed_addr global i16 0, align 2
@best_c_imode = dso_local local_unnamed_addr global i32 0, align 4
@best_i16offset = dso_local local_unnamed_addr global i32 0, align 4
@bi_pred_me = dso_local local_unnamed_addr global i16 0, align 2
@b8mode = dso_local local_unnamed_addr global [4 x i32] zeroinitializer, align 4
@b8pdir = dso_local local_unnamed_addr global [4 x i32] zeroinitializer, align 4
@b4_intra_pred_modes = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 1
@b8_intra_pred_modes8x8 = external dso_local local_unnamed_addr global [16 x i8], align 1
@b4_ipredmode = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 4
@b8_ipredmode8x8 = external dso_local local_unnamed_addr global [4 x [4 x i8]], align 1
@rec_mbY = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@lrec_rec = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@rec_mbU = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@rec_mbV = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@lrec_rec_U = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@lrec_rec_V = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@cbp = dso_local local_unnamed_addr global i32 0, align 4
@cbp_blk = dso_local local_unnamed_addr global i64 0, align 8
@luma_transform_size_8x8_flag = dso_local local_unnamed_addr global i32 0, align 4
@frefframe = dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 4
@brefframe = dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 4
@all_mv8x8 = dso_local local_unnamed_addr global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 2
@pred_mv8x8 = dso_local local_unnamed_addr global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 2
@OffsetBits = external dso_local local_unnamed_addr constant i32, align 4
@OffsetList4x4 = external dso_local local_unnamed_addr global [15 x [16 x i16]], align 2
@OffsetList8x8 = external dso_local local_unnamed_addr global [5 x [64 x i16]], align 2
@QP2 = dso_local local_unnamed_addr global i32 0, align 4
@DELTA_QP = dso_local local_unnamed_addr global i32 0, align 4
@DELTA_QP2 = dso_local local_unnamed_addr global i32 0, align 4
@fadjust8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@fadjust4x4Cr = dso_local local_unnamed_addr global [2 x [16 x [16 x i32]]] zeroinitializer, align 4
@fadjust8x8Cr = dso_local local_unnamed_addr global [2 x [16 x [16 x i32]]] zeroinitializer, align 4
@cost8_8x8ts = dso_local local_unnamed_addr global i32 0, align 4
@rec_resG_8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@resTrans_R_8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@resTrans_B_8x8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@rec_resG_8x8ts = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@resTrans_R_8x8ts = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@resTrans_B_8x8ts = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@mprRGB_8x8 = dso_local local_unnamed_addr global [3 x [16 x [16 x i32]]] zeroinitializer, align 4
@mprRGB_8x8ts = dso_local local_unnamed_addr global [3 x [16 x [16 x i32]]] zeroinitializer, align 4
@str = private unnamed_addr constant [50 x i8] c"Unsupported mode in SetModesAndRefframeForBlocks!\00", align 1

; Function Attrs: nounwind
define dso_local void @clear_rdopt() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cofDC, align 8, !tbaa !6
  tail call void @free_mem_DCcoeff(ptr noundef %1) #15
  %2 = load ptr, ptr @cofAC, align 8, !tbaa !6
  tail call void @free_mem_ACcoeff(ptr noundef %2) #15
  %3 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  tail call void @free_mem_ACcoeff(ptr noundef %3) #15
  %4 = load ptr, ptr @cofAC4x4intern, align 8, !tbaa !6
  tail call void @free_mem_ACcoeff(ptr noundef %4) #15
  %5 = load ptr, ptr @input, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 3892
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  tail call void @free_mem_ACcoeff(ptr noundef %10) #15
  br label %11

11:                                               ; preds = %9, %0
  %12 = load ptr, ptr @cs_mb, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %12) #15
  %13 = load ptr, ptr @cs_b8, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %13) #15
  %14 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %14) #15
  %15 = load ptr, ptr @cs_imb, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %15) #15
  %16 = load ptr, ptr @cs_ib8, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %16) #15
  %17 = load ptr, ptr @cs_ib4, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %17) #15
  %18 = load ptr, ptr @cs_pc, align 8, !tbaa !6
  tail call void @delete_coding_state(ptr noundef %18) #15
  ret void
}

declare dso_local void @free_mem_DCcoeff(ptr noundef) local_unnamed_addr #1

declare dso_local void @free_mem_ACcoeff(ptr noundef) local_unnamed_addr #1

declare dso_local void @delete_coding_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @init_rdopt() local_unnamed_addr #0 {
  store ptr null, ptr @rdopt, align 8, !tbaa !6
  %1 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull @cofDC) #15
  %2 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull @cofAC) #15
  %3 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull @cofAC8x8) #15
  %4 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull @cofAC4x4intern) #15
  %5 = load ptr, ptr @cofAC4x4intern, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  store ptr %7, ptr @cofAC4x4, align 8, !tbaa !6
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 3892
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull @cofAC_8x8ts) #15
  br label %14

14:                                               ; preds = %12, %0
  %15 = tail call ptr @create_coding_state() #15
  store ptr %15, ptr @cs_mb, align 8, !tbaa !6
  %16 = tail call ptr @create_coding_state() #15
  store ptr %16, ptr @cs_b8, align 8, !tbaa !6
  %17 = tail call ptr @create_coding_state() #15
  store ptr %17, ptr @cs_cm, align 8, !tbaa !6
  %18 = tail call ptr @create_coding_state() #15
  store ptr %18, ptr @cs_imb, align 8, !tbaa !6
  %19 = tail call ptr @create_coding_state() #15
  store ptr %19, ptr @cs_ib8, align 8, !tbaa !6
  %20 = tail call ptr @create_coding_state() #15
  store ptr %20, ptr @cs_ib4, align 8, !tbaa !6
  %21 = tail call ptr @create_coding_state() #15
  store ptr %21, ptr @cs_pc, align 8, !tbaa !6
  ret void
}

declare dso_local signext i32 @get_mem_DCcoeff(ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @get_mem_ACcoeff(ptr noundef) local_unnamed_addr #1

declare dso_local ptr @create_coding_state() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @UpdatePixelMap() local_unnamed_addr #2 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds i8, ptr %1, i64 60
  %6 = load i32, ptr %5, align 4, !tbaa !18
  br i1 %4, label %9, label %7

7:                                                ; preds = %0
  %8 = icmp sgt i32 %6, 7
  br i1 %8, label %36, label %215

9:                                                ; preds = %0
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %215

11:                                               ; preds = %9, %29
  %12 = phi ptr [ %30, %29 ], [ %1, %9 ]
  %13 = phi i64 [ %31, %29 ], [ 0, %9 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 52
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %23, %17 ], [ 0, %11 ]
  %19 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %20 = getelementptr inbounds ptr, ptr %19, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store i8 1, ptr %22, align 1, !tbaa !20
  %23 = add nuw nsw i64 %18, 1
  %24 = load ptr, ptr @img, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 52
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %17, label %29

29:                                               ; preds = %17, %11
  %30 = phi ptr [ %12, %11 ], [ %24, %17 ]
  %31 = add nuw nsw i64 %13, 1
  %32 = getelementptr inbounds i8, ptr %30, i64 60
  %33 = load i32, ptr %32, align 4, !tbaa !18
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %11, label %215

36:                                               ; preds = %7, %205
  %37 = phi ptr [ %206, %205 ], [ %1, %7 ]
  %38 = phi i64 [ %207, %205 ], [ 0, %7 ]
  %39 = phi i64 [ %214, %205 ], [ 8, %7 ]
  %40 = phi i64 [ %213, %205 ], [ 0, %7 ]
  %41 = getelementptr inbounds i8, ptr %37, i64 52
  %42 = load i32, ptr %41, align 4, !tbaa !19
  %43 = icmp sgt i32 %42, 7
  br i1 %43, label %44, label %205

44:                                               ; preds = %36, %196
  %45 = phi i64 [ %197, %196 ], [ 0, %36 ]
  %46 = phi i64 [ %204, %196 ], [ 0, %36 ]
  %47 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %48 = getelementptr inbounds ptr, ptr %47, i64 %38
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !20
  %52 = icmp eq i8 %51, 0
  %53 = or disjoint i64 %46, 1
  %54 = or disjoint i64 %46, 2
  %55 = or disjoint i64 %46, 3
  %56 = or disjoint i64 %46, 4
  %57 = or disjoint i64 %46, 5
  %58 = or disjoint i64 %46, 6
  %59 = or disjoint i64 %46, 7
  br i1 %52, label %96, label %60

60:                                               ; preds = %44, %60
  %61 = phi i64 [ %94, %60 ], [ %40, %44 ]
  %62 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 %46
  store i8 1, ptr %65, align 1, !tbaa !20
  %66 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %67 = getelementptr inbounds ptr, ptr %66, i64 %61
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 %53
  store i8 1, ptr %69, align 1, !tbaa !20
  %70 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %61
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 %54
  store i8 1, ptr %73, align 1, !tbaa !20
  %74 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %75 = getelementptr inbounds ptr, ptr %74, i64 %61
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %76, i64 %55
  store i8 1, ptr %77, align 1, !tbaa !20
  %78 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %79 = getelementptr inbounds ptr, ptr %78, i64 %61
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 %56
  store i8 1, ptr %81, align 1, !tbaa !20
  %82 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %83 = getelementptr inbounds ptr, ptr %82, i64 %61
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 %57
  store i8 1, ptr %85, align 1, !tbaa !20
  %86 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %87 = getelementptr inbounds ptr, ptr %86, i64 %61
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 %58
  store i8 1, ptr %89, align 1, !tbaa !20
  %90 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %61
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 %59
  store i8 1, ptr %93, align 1, !tbaa !20
  %94 = add nuw nsw i64 %61, 1
  %95 = icmp eq i64 %94, %39
  br i1 %95, label %196, label %60

96:                                               ; preds = %44, %96
  %97 = phi i64 [ %194, %96 ], [ %40, %44 ]
  %98 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 %46
  %102 = load i8, ptr %101, align 1, !tbaa !20
  %103 = zext i8 %102 to i32
  %104 = load ptr, ptr @input, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 36
  %106 = load i32, ptr %105, align 4, !tbaa !21
  %107 = tail call i32 @llvm.smin.i32(i32 %106, i32 %103)
  %108 = trunc i32 %107 to i8
  %109 = add i8 %108, 1
  store i8 %109, ptr %101, align 1, !tbaa !20
  %110 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %97
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %112, i64 %53
  %114 = load i8, ptr %113, align 1, !tbaa !20
  %115 = zext i8 %114 to i32
  %116 = load ptr, ptr @input, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 36
  %118 = load i32, ptr %117, align 4, !tbaa !21
  %119 = tail call i32 @llvm.smin.i32(i32 %118, i32 %115)
  %120 = trunc i32 %119 to i8
  %121 = add i8 %120, 1
  store i8 %121, ptr %113, align 1, !tbaa !20
  %122 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %123 = getelementptr inbounds ptr, ptr %122, i64 %97
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %124, i64 %54
  %126 = load i8, ptr %125, align 1, !tbaa !20
  %127 = zext i8 %126 to i32
  %128 = load ptr, ptr @input, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 36
  %130 = load i32, ptr %129, align 4, !tbaa !21
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 %127)
  %132 = trunc i32 %131 to i8
  %133 = add i8 %132, 1
  store i8 %133, ptr %125, align 1, !tbaa !20
  %134 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %135 = getelementptr inbounds ptr, ptr %134, i64 %97
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %136, i64 %55
  %138 = load i8, ptr %137, align 1, !tbaa !20
  %139 = zext i8 %138 to i32
  %140 = load ptr, ptr @input, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 36
  %142 = load i32, ptr %141, align 4, !tbaa !21
  %143 = tail call i32 @llvm.smin.i32(i32 %142, i32 %139)
  %144 = trunc i32 %143 to i8
  %145 = add i8 %144, 1
  store i8 %145, ptr %137, align 1, !tbaa !20
  %146 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %147 = getelementptr inbounds ptr, ptr %146, i64 %97
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 %56
  %150 = load i8, ptr %149, align 1, !tbaa !20
  %151 = zext i8 %150 to i32
  %152 = load ptr, ptr @input, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %152, i64 36
  %154 = load i32, ptr %153, align 4, !tbaa !21
  %155 = tail call i32 @llvm.smin.i32(i32 %154, i32 %151)
  %156 = trunc i32 %155 to i8
  %157 = add i8 %156, 1
  store i8 %157, ptr %149, align 1, !tbaa !20
  %158 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %159 = getelementptr inbounds ptr, ptr %158, i64 %97
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds i8, ptr %160, i64 %57
  %162 = load i8, ptr %161, align 1, !tbaa !20
  %163 = zext i8 %162 to i32
  %164 = load ptr, ptr @input, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 36
  %166 = load i32, ptr %165, align 4, !tbaa !21
  %167 = tail call i32 @llvm.smin.i32(i32 %166, i32 %163)
  %168 = trunc i32 %167 to i8
  %169 = add i8 %168, 1
  store i8 %169, ptr %161, align 1, !tbaa !20
  %170 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %171 = getelementptr inbounds ptr, ptr %170, i64 %97
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds i8, ptr %172, i64 %58
  %174 = load i8, ptr %173, align 1, !tbaa !20
  %175 = zext i8 %174 to i32
  %176 = load ptr, ptr @input, align 8, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %176, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !21
  %179 = tail call i32 @llvm.smin.i32(i32 %178, i32 %175)
  %180 = trunc i32 %179 to i8
  %181 = add i8 %180, 1
  store i8 %181, ptr %173, align 1, !tbaa !20
  %182 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %183 = getelementptr inbounds ptr, ptr %182, i64 %97
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 %59
  %186 = load i8, ptr %185, align 1, !tbaa !20
  %187 = zext i8 %186 to i32
  %188 = load ptr, ptr @input, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 36
  %190 = load i32, ptr %189, align 4, !tbaa !21
  %191 = tail call i32 @llvm.smin.i32(i32 %190, i32 %187)
  %192 = trunc i32 %191 to i8
  %193 = add i8 %192, 1
  store i8 %193, ptr %185, align 1, !tbaa !20
  %194 = add nuw nsw i64 %97, 1
  %195 = icmp eq i64 %194, %39
  br i1 %195, label %196, label %96

196:                                              ; preds = %60, %96
  %197 = add nuw nsw i64 %45, 1
  %198 = load ptr, ptr @img, align 8, !tbaa !6
  %199 = getelementptr inbounds i8, ptr %198, i64 52
  %200 = load i32, ptr %199, align 4, !tbaa !19
  %201 = ashr i32 %200, 3
  %202 = sext i32 %201 to i64
  %203 = icmp slt i64 %197, %202
  %204 = add nuw nsw i64 %46, 8
  br i1 %203, label %44, label %205

205:                                              ; preds = %196, %36
  %206 = phi ptr [ %37, %36 ], [ %198, %196 ]
  %207 = add nuw nsw i64 %38, 1
  %208 = getelementptr inbounds i8, ptr %206, i64 60
  %209 = load i32, ptr %208, align 4, !tbaa !18
  %210 = ashr i32 %209, 3
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %207, %211
  %213 = add nuw nsw i64 %40, 8
  %214 = add nuw nsw i64 %39, 8
  br i1 %212, label %36, label %215

215:                                              ; preds = %205, %29, %7, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @CheckReliabilityOfRef(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #4 {
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 52
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds i8, ptr %5, i64 60
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %3, 3
  %13 = and i32 %0, -2
  %14 = icmp eq i32 %3, 2
  %15 = shl i32 %0, 1
  %16 = select i1 %14, i32 %15, i32 0
  %17 = select i1 %12, i32 %13, i32 %16
  %18 = or i1 %12, %14
  %19 = select i1 %18, i32 2, i32 4
  %20 = add nsw i32 %17, %19
  %21 = and i32 %15, 2
  %22 = icmp eq i32 %3, 3
  %23 = select i1 %22, i32 %15, i32 0
  %24 = select i1 %12, i32 %21, i32 %23
  %25 = icmp sgt i32 %3, 2
  %26 = select i1 %25, i32 2, i32 4
  %27 = add nsw i32 %24, %26
  %28 = getelementptr inbounds i8, ptr %5, i64 89336
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = sext i32 %1 to i64
  %31 = sext i32 %2 to i64
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds i8, ptr %5, i64 148
  %34 = load i32, ptr %33, align 4, !tbaa !23
  %35 = getelementptr inbounds i8, ptr %5, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !24
  %37 = load ptr, ptr @pixel_map, align 8
  %38 = sext i32 %24 to i64
  %39 = sext i32 %27 to i64
  %40 = sext i32 %17 to i64
  %41 = sext i32 %20 to i64
  br label %42

42:                                               ; preds = %4, %1099
  %43 = phi i64 [ %40, %4 ], [ %1100, %1099 ]
  %44 = getelementptr inbounds ptr, ptr %29, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = trunc i64 %43 to i32
  %47 = add i32 %34, %46
  %48 = shl i32 %47, 4
  br label %49

49:                                               ; preds = %42, %1096
  %50 = phi i64 [ %38, %42 ], [ %1097, %1096 ]
  %51 = getelementptr inbounds ptr, ptr %45, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %30
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds ptr, ptr %54, i64 %31
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds ptr, ptr %56, i64 %32
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  %60 = load i16, ptr %59, align 2, !tbaa !25
  %61 = sext i16 %60 to i32
  %62 = load i16, ptr %58, align 2, !tbaa !25
  %63 = sext i16 %62 to i32
  %64 = and i32 %61, 3
  %65 = and i32 %63, 3
  %66 = add i32 %48, %61
  %67 = ashr i32 %66, 2
  %68 = trunc i64 %50 to i32
  %69 = add i32 %36, %68
  %70 = shl i32 %69, 4
  %71 = add i32 %70, %63
  %72 = ashr i32 %71, 2
  %73 = icmp eq i32 %64, 0
  %74 = icmp eq i32 %65, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %194

76:                                               ; preds = %49
  %77 = tail call i32 @llvm.smin.i32(i32 %8, i32 %72)
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0)
  %79 = zext nneg i32 %78 to i64
  %80 = add nsw i32 %72, 1
  %81 = tail call i32 @llvm.smin.i32(i32 %8, i32 %80)
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = zext nneg i32 %82 to i64
  %84 = add nsw i32 %72, 2
  %85 = tail call i32 @llvm.smin.i32(i32 %8, i32 %84)
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 0)
  %87 = zext nneg i32 %86 to i64
  %88 = add nsw i32 %72, 3
  %89 = tail call i32 @llvm.smin.i32(i32 %8, i32 %88)
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 0)
  %91 = zext nneg i32 %90 to i64
  %92 = tail call i32 @llvm.smin.i32(i32 %11, i32 %67)
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %37, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 %79
  %98 = load i8, ptr %97, align 1, !tbaa !20
  %99 = zext i8 %98 to i32
  %100 = icmp sgt i32 %99, %2
  br i1 %100, label %101, label %1102

101:                                              ; preds = %76
  %102 = getelementptr inbounds i8, ptr %96, i64 %83
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i32
  %105 = icmp sgt i32 %104, %2
  br i1 %105, label %106, label %1102

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, ptr %96, i64 %87
  %108 = load i8, ptr %107, align 1, !tbaa !20
  %109 = zext i8 %108 to i32
  %110 = icmp sgt i32 %109, %2
  br i1 %110, label %111, label %1102

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, ptr %96, i64 %91
  %113 = load i8, ptr %112, align 1, !tbaa !20
  %114 = zext i8 %113 to i32
  %115 = icmp sgt i32 %114, %2
  br i1 %115, label %116, label %1102

116:                                              ; preds = %111
  %117 = add nsw i32 %67, 1
  %118 = tail call i32 @llvm.smin.i32(i32 %11, i32 %117)
  %119 = tail call i32 @llvm.smax.i32(i32 %118, i32 0)
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %37, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 %79
  %124 = load i8, ptr %123, align 1, !tbaa !20
  %125 = zext i8 %124 to i32
  %126 = icmp sgt i32 %125, %2
  br i1 %126, label %127, label %1102

127:                                              ; preds = %116
  %128 = getelementptr inbounds i8, ptr %122, i64 %83
  %129 = load i8, ptr %128, align 1, !tbaa !20
  %130 = zext i8 %129 to i32
  %131 = icmp sgt i32 %130, %2
  br i1 %131, label %132, label %1102

132:                                              ; preds = %127
  %133 = getelementptr inbounds i8, ptr %122, i64 %87
  %134 = load i8, ptr %133, align 1, !tbaa !20
  %135 = zext i8 %134 to i32
  %136 = icmp sgt i32 %135, %2
  br i1 %136, label %137, label %1102

137:                                              ; preds = %132
  %138 = getelementptr inbounds i8, ptr %122, i64 %91
  %139 = load i8, ptr %138, align 1, !tbaa !20
  %140 = zext i8 %139 to i32
  %141 = icmp sgt i32 %140, %2
  br i1 %141, label %142, label %1102

142:                                              ; preds = %137
  %143 = add nsw i32 %67, 2
  %144 = tail call i32 @llvm.smin.i32(i32 %11, i32 %143)
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 0)
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %37, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 %79
  %150 = load i8, ptr %149, align 1, !tbaa !20
  %151 = zext i8 %150 to i32
  %152 = icmp sgt i32 %151, %2
  br i1 %152, label %153, label %1102

153:                                              ; preds = %142
  %154 = getelementptr inbounds i8, ptr %148, i64 %83
  %155 = load i8, ptr %154, align 1, !tbaa !20
  %156 = zext i8 %155 to i32
  %157 = icmp sgt i32 %156, %2
  br i1 %157, label %158, label %1102

158:                                              ; preds = %153
  %159 = getelementptr inbounds i8, ptr %148, i64 %87
  %160 = load i8, ptr %159, align 1, !tbaa !20
  %161 = zext i8 %160 to i32
  %162 = icmp sgt i32 %161, %2
  br i1 %162, label %163, label %1102

163:                                              ; preds = %158
  %164 = getelementptr inbounds i8, ptr %148, i64 %91
  %165 = load i8, ptr %164, align 1, !tbaa !20
  %166 = zext i8 %165 to i32
  %167 = icmp sgt i32 %166, %2
  br i1 %167, label %168, label %1102

168:                                              ; preds = %163
  %169 = add nsw i32 %67, 3
  %170 = tail call i32 @llvm.smin.i32(i32 %11, i32 %169)
  %171 = tail call i32 @llvm.smax.i32(i32 %170, i32 0)
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %37, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 %79
  %176 = load i8, ptr %175, align 1, !tbaa !20
  %177 = zext i8 %176 to i32
  %178 = icmp sgt i32 %177, %2
  br i1 %178, label %179, label %1102

179:                                              ; preds = %168
  %180 = getelementptr inbounds i8, ptr %174, i64 %83
  %181 = load i8, ptr %180, align 1, !tbaa !20
  %182 = zext i8 %181 to i32
  %183 = icmp sgt i32 %182, %2
  br i1 %183, label %184, label %1102

184:                                              ; preds = %179
  %185 = getelementptr inbounds i8, ptr %174, i64 %87
  %186 = load i8, ptr %185, align 1, !tbaa !20
  %187 = zext i8 %186 to i32
  %188 = icmp sgt i32 %187, %2
  br i1 %188, label %189, label %1102

189:                                              ; preds = %184
  %190 = getelementptr inbounds i8, ptr %174, i64 %91
  %191 = load i8, ptr %190, align 1, !tbaa !20
  %192 = zext i8 %191 to i32
  %193 = icmp sgt i32 %192, %2
  br i1 %193, label %1096, label %1102

194:                                              ; preds = %49
  br i1 %73, label %195, label %264

195:                                              ; preds = %194
  %196 = add nsw i32 %72, 3
  %197 = add nsw i32 %67, 3
  br label %198

198:                                              ; preds = %195, %261
  %199 = phi i32 [ %67, %195 ], [ %262, %261 ]
  %200 = tail call i32 @llvm.smin.i32(i32 %11, i32 %199)
  %201 = tail call i32 @llvm.smax.i32(i32 %200, i32 0)
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %37, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  br label %205

205:                                              ; preds = %198, %259
  %206 = phi i32 [ %72, %198 ], [ %233, %259 ]
  %207 = add nsw i32 %206, -2
  %208 = tail call i32 @llvm.smin.i32(i32 %8, i32 %207)
  %209 = tail call i32 @llvm.smax.i32(i32 %208, i32 0)
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %204, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !20
  %213 = zext i8 %212 to i32
  %214 = icmp sgt i32 %213, %2
  br i1 %214, label %215, label %1102

215:                                              ; preds = %205
  %216 = add nsw i32 %206, -1
  %217 = tail call i32 @llvm.smin.i32(i32 %8, i32 %216)
  %218 = tail call i32 @llvm.smax.i32(i32 %217, i32 0)
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds i8, ptr %204, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !20
  %222 = zext i8 %221 to i32
  %223 = icmp sgt i32 %222, %2
  br i1 %223, label %224, label %1102

224:                                              ; preds = %215
  %225 = tail call i32 @llvm.smin.i32(i32 %8, i32 %206)
  %226 = tail call i32 @llvm.smax.i32(i32 %225, i32 0)
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %204, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !20
  %230 = zext i8 %229 to i32
  %231 = icmp sgt i32 %230, %2
  br i1 %231, label %232, label %1102

232:                                              ; preds = %224
  %233 = add nsw i32 %206, 1
  %234 = tail call i32 @llvm.smin.i32(i32 %8, i32 %233)
  %235 = tail call i32 @llvm.smax.i32(i32 %234, i32 0)
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %204, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !20
  %239 = zext i8 %238 to i32
  %240 = icmp sgt i32 %239, %2
  br i1 %240, label %241, label %1102

241:                                              ; preds = %232
  %242 = add nsw i32 %206, 2
  %243 = tail call i32 @llvm.smin.i32(i32 %8, i32 %242)
  %244 = tail call i32 @llvm.smax.i32(i32 %243, i32 0)
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %204, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !20
  %248 = zext i8 %247 to i32
  %249 = icmp sgt i32 %248, %2
  br i1 %249, label %250, label %1102

250:                                              ; preds = %241
  %251 = add nsw i32 %206, 3
  %252 = tail call i32 @llvm.smin.i32(i32 %8, i32 %251)
  %253 = tail call i32 @llvm.smax.i32(i32 %252, i32 0)
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %204, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !20
  %257 = zext i8 %256 to i32
  %258 = icmp sgt i32 %257, %2
  br i1 %258, label %259, label %1102

259:                                              ; preds = %250
  %260 = icmp eq i32 %206, %196
  br i1 %260, label %261, label %205

261:                                              ; preds = %259
  %262 = add nsw i32 %199, 1
  %263 = icmp eq i32 %199, %197
  br i1 %263, label %1096, label %198

264:                                              ; preds = %194
  br i1 %74, label %265, label %455

265:                                              ; preds = %264
  %266 = add nsw i32 %67, 3
  %267 = tail call i32 @llvm.smin.i32(i32 %8, i32 %72)
  %268 = tail call i32 @llvm.smax.i32(i32 %267, i32 0)
  %269 = zext nneg i32 %268 to i64
  %270 = add nsw i32 %72, 1
  %271 = tail call i32 @llvm.smin.i32(i32 %8, i32 %270)
  %272 = tail call i32 @llvm.smax.i32(i32 %271, i32 0)
  %273 = zext nneg i32 %272 to i64
  %274 = add nsw i32 %72, 2
  %275 = tail call i32 @llvm.smin.i32(i32 %8, i32 %274)
  %276 = tail call i32 @llvm.smax.i32(i32 %275, i32 0)
  %277 = zext nneg i32 %276 to i64
  %278 = add nsw i32 %72, 3
  %279 = tail call i32 @llvm.smin.i32(i32 %8, i32 %278)
  %280 = tail call i32 @llvm.smax.i32(i32 %279, i32 0)
  %281 = zext nneg i32 %280 to i64
  br label %282

282:                                              ; preds = %265, %453
  %283 = phi i32 [ %67, %265 ], [ %299, %453 ]
  %284 = add nsw i32 %283, -2
  %285 = tail call i32 @llvm.smin.i32(i32 %11, i32 %284)
  %286 = tail call i32 @llvm.smax.i32(i32 %285, i32 0)
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %37, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = add nsw i32 %283, -1
  %291 = tail call i32 @llvm.smin.i32(i32 %11, i32 %290)
  %292 = tail call i32 @llvm.smax.i32(i32 %291, i32 0)
  %293 = zext nneg i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %37, i64 %293
  %295 = tail call i32 @llvm.smin.i32(i32 %11, i32 %283)
  %296 = tail call i32 @llvm.smax.i32(i32 %295, i32 0)
  %297 = zext nneg i32 %296 to i64
  %298 = getelementptr inbounds ptr, ptr %37, i64 %297
  %299 = add nsw i32 %283, 1
  %300 = tail call i32 @llvm.smin.i32(i32 %11, i32 %299)
  %301 = tail call i32 @llvm.smax.i32(i32 %300, i32 0)
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %37, i64 %302
  %304 = add nsw i32 %283, 2
  %305 = tail call i32 @llvm.smin.i32(i32 %11, i32 %304)
  %306 = tail call i32 @llvm.smax.i32(i32 %305, i32 0)
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds ptr, ptr %37, i64 %307
  %309 = add nsw i32 %283, 3
  %310 = tail call i32 @llvm.smin.i32(i32 %11, i32 %309)
  %311 = tail call i32 @llvm.smax.i32(i32 %310, i32 0)
  %312 = zext nneg i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %37, i64 %312
  %314 = getelementptr inbounds i8, ptr %289, i64 %269
  %315 = load i8, ptr %314, align 1, !tbaa !20
  %316 = zext i8 %315 to i32
  %317 = icmp sgt i32 %316, %2
  br i1 %317, label %318, label %1102

318:                                              ; preds = %282
  %319 = load ptr, ptr %294, align 8, !tbaa !6
  %320 = getelementptr inbounds i8, ptr %319, i64 %269
  %321 = load i8, ptr %320, align 1, !tbaa !20
  %322 = zext i8 %321 to i32
  %323 = icmp sgt i32 %322, %2
  br i1 %323, label %324, label %1102

324:                                              ; preds = %318
  %325 = load ptr, ptr %298, align 8, !tbaa !6
  %326 = getelementptr inbounds i8, ptr %325, i64 %269
  %327 = load i8, ptr %326, align 1, !tbaa !20
  %328 = zext i8 %327 to i32
  %329 = icmp sgt i32 %328, %2
  br i1 %329, label %330, label %1102

330:                                              ; preds = %324
  %331 = load ptr, ptr %303, align 8, !tbaa !6
  %332 = getelementptr inbounds i8, ptr %331, i64 %269
  %333 = load i8, ptr %332, align 1, !tbaa !20
  %334 = zext i8 %333 to i32
  %335 = icmp sgt i32 %334, %2
  br i1 %335, label %336, label %1102

336:                                              ; preds = %330
  %337 = load ptr, ptr %308, align 8, !tbaa !6
  %338 = getelementptr inbounds i8, ptr %337, i64 %269
  %339 = load i8, ptr %338, align 1, !tbaa !20
  %340 = zext i8 %339 to i32
  %341 = icmp sgt i32 %340, %2
  br i1 %341, label %342, label %1102

342:                                              ; preds = %336
  %343 = load ptr, ptr %313, align 8, !tbaa !6
  %344 = getelementptr inbounds i8, ptr %343, i64 %269
  %345 = load i8, ptr %344, align 1, !tbaa !20
  %346 = zext i8 %345 to i32
  %347 = icmp sgt i32 %346, %2
  br i1 %347, label %348, label %1102

348:                                              ; preds = %342
  %349 = getelementptr inbounds i8, ptr %289, i64 %273
  %350 = load i8, ptr %349, align 1, !tbaa !20
  %351 = zext i8 %350 to i32
  %352 = icmp sgt i32 %351, %2
  br i1 %352, label %353, label %1102

353:                                              ; preds = %348
  %354 = load ptr, ptr %294, align 8, !tbaa !6
  %355 = getelementptr inbounds i8, ptr %354, i64 %273
  %356 = load i8, ptr %355, align 1, !tbaa !20
  %357 = zext i8 %356 to i32
  %358 = icmp sgt i32 %357, %2
  br i1 %358, label %359, label %1102

359:                                              ; preds = %353
  %360 = load ptr, ptr %298, align 8, !tbaa !6
  %361 = getelementptr inbounds i8, ptr %360, i64 %273
  %362 = load i8, ptr %361, align 1, !tbaa !20
  %363 = zext i8 %362 to i32
  %364 = icmp sgt i32 %363, %2
  br i1 %364, label %365, label %1102

365:                                              ; preds = %359
  %366 = load ptr, ptr %303, align 8, !tbaa !6
  %367 = getelementptr inbounds i8, ptr %366, i64 %273
  %368 = load i8, ptr %367, align 1, !tbaa !20
  %369 = zext i8 %368 to i32
  %370 = icmp sgt i32 %369, %2
  br i1 %370, label %371, label %1102

371:                                              ; preds = %365
  %372 = load ptr, ptr %308, align 8, !tbaa !6
  %373 = getelementptr inbounds i8, ptr %372, i64 %273
  %374 = load i8, ptr %373, align 1, !tbaa !20
  %375 = zext i8 %374 to i32
  %376 = icmp sgt i32 %375, %2
  br i1 %376, label %377, label %1102

377:                                              ; preds = %371
  %378 = load ptr, ptr %313, align 8, !tbaa !6
  %379 = getelementptr inbounds i8, ptr %378, i64 %273
  %380 = load i8, ptr %379, align 1, !tbaa !20
  %381 = zext i8 %380 to i32
  %382 = icmp sgt i32 %381, %2
  br i1 %382, label %383, label %1102

383:                                              ; preds = %377
  %384 = getelementptr inbounds i8, ptr %289, i64 %277
  %385 = load i8, ptr %384, align 1, !tbaa !20
  %386 = zext i8 %385 to i32
  %387 = icmp sgt i32 %386, %2
  br i1 %387, label %388, label %1102

388:                                              ; preds = %383
  %389 = load ptr, ptr %294, align 8, !tbaa !6
  %390 = getelementptr inbounds i8, ptr %389, i64 %277
  %391 = load i8, ptr %390, align 1, !tbaa !20
  %392 = zext i8 %391 to i32
  %393 = icmp sgt i32 %392, %2
  br i1 %393, label %394, label %1102

394:                                              ; preds = %388
  %395 = load ptr, ptr %298, align 8, !tbaa !6
  %396 = getelementptr inbounds i8, ptr %395, i64 %277
  %397 = load i8, ptr %396, align 1, !tbaa !20
  %398 = zext i8 %397 to i32
  %399 = icmp sgt i32 %398, %2
  br i1 %399, label %400, label %1102

400:                                              ; preds = %394
  %401 = load ptr, ptr %303, align 8, !tbaa !6
  %402 = getelementptr inbounds i8, ptr %401, i64 %277
  %403 = load i8, ptr %402, align 1, !tbaa !20
  %404 = zext i8 %403 to i32
  %405 = icmp sgt i32 %404, %2
  br i1 %405, label %406, label %1102

406:                                              ; preds = %400
  %407 = load ptr, ptr %308, align 8, !tbaa !6
  %408 = getelementptr inbounds i8, ptr %407, i64 %277
  %409 = load i8, ptr %408, align 1, !tbaa !20
  %410 = zext i8 %409 to i32
  %411 = icmp sgt i32 %410, %2
  br i1 %411, label %412, label %1102

412:                                              ; preds = %406
  %413 = load ptr, ptr %313, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %413, i64 %277
  %415 = load i8, ptr %414, align 1, !tbaa !20
  %416 = zext i8 %415 to i32
  %417 = icmp sgt i32 %416, %2
  br i1 %417, label %418, label %1102

418:                                              ; preds = %412
  %419 = getelementptr inbounds i8, ptr %289, i64 %281
  %420 = load i8, ptr %419, align 1, !tbaa !20
  %421 = zext i8 %420 to i32
  %422 = icmp sgt i32 %421, %2
  br i1 %422, label %423, label %1102

423:                                              ; preds = %418
  %424 = load ptr, ptr %294, align 8, !tbaa !6
  %425 = getelementptr inbounds i8, ptr %424, i64 %281
  %426 = load i8, ptr %425, align 1, !tbaa !20
  %427 = zext i8 %426 to i32
  %428 = icmp sgt i32 %427, %2
  br i1 %428, label %429, label %1102

429:                                              ; preds = %423
  %430 = load ptr, ptr %298, align 8, !tbaa !6
  %431 = getelementptr inbounds i8, ptr %430, i64 %281
  %432 = load i8, ptr %431, align 1, !tbaa !20
  %433 = zext i8 %432 to i32
  %434 = icmp sgt i32 %433, %2
  br i1 %434, label %435, label %1102

435:                                              ; preds = %429
  %436 = load ptr, ptr %303, align 8, !tbaa !6
  %437 = getelementptr inbounds i8, ptr %436, i64 %281
  %438 = load i8, ptr %437, align 1, !tbaa !20
  %439 = zext i8 %438 to i32
  %440 = icmp sgt i32 %439, %2
  br i1 %440, label %441, label %1102

441:                                              ; preds = %435
  %442 = load ptr, ptr %308, align 8, !tbaa !6
  %443 = getelementptr inbounds i8, ptr %442, i64 %281
  %444 = load i8, ptr %443, align 1, !tbaa !20
  %445 = zext i8 %444 to i32
  %446 = icmp sgt i32 %445, %2
  br i1 %446, label %447, label %1102

447:                                              ; preds = %441
  %448 = load ptr, ptr %313, align 8, !tbaa !6
  %449 = getelementptr inbounds i8, ptr %448, i64 %281
  %450 = load i8, ptr %449, align 1, !tbaa !20
  %451 = zext i8 %450 to i32
  %452 = icmp sgt i32 %451, %2
  br i1 %452, label %453, label %1102

453:                                              ; preds = %447
  %454 = icmp eq i32 %283, %266
  br i1 %454, label %1096, label %282

455:                                              ; preds = %264
  %456 = icmp eq i32 %65, 2
  br i1 %456, label %457, label %705

457:                                              ; preds = %455
  %458 = add nsw i32 %72, 3
  %459 = add nsw i32 %67, 3
  br label %460

460:                                              ; preds = %457, %703
  %461 = phi i32 [ %67, %457 ], [ %477, %703 ]
  %462 = add nsw i32 %461, -2
  %463 = tail call i32 @llvm.smin.i32(i32 %11, i32 %462)
  %464 = tail call i32 @llvm.smax.i32(i32 %463, i32 0)
  %465 = zext nneg i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %37, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !6
  %468 = add nsw i32 %461, -1
  %469 = tail call i32 @llvm.smin.i32(i32 %11, i32 %468)
  %470 = tail call i32 @llvm.smax.i32(i32 %469, i32 0)
  %471 = zext nneg i32 %470 to i64
  %472 = getelementptr inbounds ptr, ptr %37, i64 %471
  %473 = tail call i32 @llvm.smin.i32(i32 %11, i32 %461)
  %474 = tail call i32 @llvm.smax.i32(i32 %473, i32 0)
  %475 = zext nneg i32 %474 to i64
  %476 = getelementptr inbounds ptr, ptr %37, i64 %475
  %477 = add nsw i32 %461, 1
  %478 = tail call i32 @llvm.smin.i32(i32 %11, i32 %477)
  %479 = tail call i32 @llvm.smax.i32(i32 %478, i32 0)
  %480 = zext nneg i32 %479 to i64
  %481 = getelementptr inbounds ptr, ptr %37, i64 %480
  %482 = add nsw i32 %461, 2
  %483 = tail call i32 @llvm.smin.i32(i32 %11, i32 %482)
  %484 = tail call i32 @llvm.smax.i32(i32 %483, i32 0)
  %485 = zext nneg i32 %484 to i64
  %486 = getelementptr inbounds ptr, ptr %37, i64 %485
  %487 = add nsw i32 %461, 3
  %488 = tail call i32 @llvm.smin.i32(i32 %11, i32 %487)
  %489 = tail call i32 @llvm.smax.i32(i32 %488, i32 0)
  %490 = zext nneg i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %37, i64 %490
  br label %492

492:                                              ; preds = %460, %701
  %493 = phi i32 [ %72, %460 ], [ %520, %701 ]
  %494 = add nsw i32 %493, -2
  %495 = tail call i32 @llvm.smin.i32(i32 %8, i32 %494)
  %496 = tail call i32 @llvm.smax.i32(i32 %495, i32 0)
  %497 = zext nneg i32 %496 to i64
  %498 = getelementptr inbounds i8, ptr %467, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !20
  %500 = zext i8 %499 to i32
  %501 = icmp sgt i32 %500, %2
  br i1 %501, label %502, label %1102

502:                                              ; preds = %492
  %503 = add nsw i32 %493, -1
  %504 = tail call i32 @llvm.smin.i32(i32 %8, i32 %503)
  %505 = tail call i32 @llvm.smax.i32(i32 %504, i32 0)
  %506 = zext nneg i32 %505 to i64
  %507 = getelementptr inbounds i8, ptr %467, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !20
  %509 = zext i8 %508 to i32
  %510 = icmp sgt i32 %509, %2
  br i1 %510, label %511, label %1102

511:                                              ; preds = %502
  %512 = tail call i32 @llvm.smin.i32(i32 %8, i32 %493)
  %513 = tail call i32 @llvm.smax.i32(i32 %512, i32 0)
  %514 = zext nneg i32 %513 to i64
  %515 = getelementptr inbounds i8, ptr %467, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !20
  %517 = zext i8 %516 to i32
  %518 = icmp sgt i32 %517, %2
  br i1 %518, label %519, label %1102

519:                                              ; preds = %511
  %520 = add nsw i32 %493, 1
  %521 = tail call i32 @llvm.smin.i32(i32 %8, i32 %520)
  %522 = tail call i32 @llvm.smax.i32(i32 %521, i32 0)
  %523 = zext nneg i32 %522 to i64
  %524 = getelementptr inbounds i8, ptr %467, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !20
  %526 = zext i8 %525 to i32
  %527 = icmp sgt i32 %526, %2
  br i1 %527, label %528, label %1102

528:                                              ; preds = %519
  %529 = add nsw i32 %493, 2
  %530 = tail call i32 @llvm.smin.i32(i32 %8, i32 %529)
  %531 = tail call i32 @llvm.smax.i32(i32 %530, i32 0)
  %532 = zext nneg i32 %531 to i64
  %533 = getelementptr inbounds i8, ptr %467, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !20
  %535 = zext i8 %534 to i32
  %536 = icmp sgt i32 %535, %2
  br i1 %536, label %537, label %1102

537:                                              ; preds = %528
  %538 = add nsw i32 %493, 3
  %539 = tail call i32 @llvm.smin.i32(i32 %8, i32 %538)
  %540 = tail call i32 @llvm.smax.i32(i32 %539, i32 0)
  %541 = zext nneg i32 %540 to i64
  %542 = getelementptr inbounds i8, ptr %467, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !20
  %544 = zext i8 %543 to i32
  %545 = icmp sgt i32 %544, %2
  br i1 %545, label %546, label %1102

546:                                              ; preds = %537
  %547 = load ptr, ptr %472, align 8, !tbaa !6
  %548 = getelementptr inbounds i8, ptr %547, i64 %497
  %549 = load i8, ptr %548, align 1, !tbaa !20
  %550 = zext i8 %549 to i32
  %551 = icmp sgt i32 %550, %2
  br i1 %551, label %552, label %1102

552:                                              ; preds = %546
  %553 = getelementptr inbounds i8, ptr %547, i64 %506
  %554 = load i8, ptr %553, align 1, !tbaa !20
  %555 = zext i8 %554 to i32
  %556 = icmp sgt i32 %555, %2
  br i1 %556, label %557, label %1102

557:                                              ; preds = %552
  %558 = getelementptr inbounds i8, ptr %547, i64 %514
  %559 = load i8, ptr %558, align 1, !tbaa !20
  %560 = zext i8 %559 to i32
  %561 = icmp sgt i32 %560, %2
  br i1 %561, label %562, label %1102

562:                                              ; preds = %557
  %563 = getelementptr inbounds i8, ptr %547, i64 %523
  %564 = load i8, ptr %563, align 1, !tbaa !20
  %565 = zext i8 %564 to i32
  %566 = icmp sgt i32 %565, %2
  br i1 %566, label %567, label %1102

567:                                              ; preds = %562
  %568 = getelementptr inbounds i8, ptr %547, i64 %532
  %569 = load i8, ptr %568, align 1, !tbaa !20
  %570 = zext i8 %569 to i32
  %571 = icmp sgt i32 %570, %2
  br i1 %571, label %572, label %1102

572:                                              ; preds = %567
  %573 = getelementptr inbounds i8, ptr %547, i64 %541
  %574 = load i8, ptr %573, align 1, !tbaa !20
  %575 = zext i8 %574 to i32
  %576 = icmp sgt i32 %575, %2
  br i1 %576, label %577, label %1102

577:                                              ; preds = %572
  %578 = load ptr, ptr %476, align 8, !tbaa !6
  %579 = getelementptr inbounds i8, ptr %578, i64 %497
  %580 = load i8, ptr %579, align 1, !tbaa !20
  %581 = zext i8 %580 to i32
  %582 = icmp sgt i32 %581, %2
  br i1 %582, label %583, label %1102

583:                                              ; preds = %577
  %584 = getelementptr inbounds i8, ptr %578, i64 %506
  %585 = load i8, ptr %584, align 1, !tbaa !20
  %586 = zext i8 %585 to i32
  %587 = icmp sgt i32 %586, %2
  br i1 %587, label %588, label %1102

588:                                              ; preds = %583
  %589 = getelementptr inbounds i8, ptr %578, i64 %514
  %590 = load i8, ptr %589, align 1, !tbaa !20
  %591 = zext i8 %590 to i32
  %592 = icmp sgt i32 %591, %2
  br i1 %592, label %593, label %1102

593:                                              ; preds = %588
  %594 = getelementptr inbounds i8, ptr %578, i64 %523
  %595 = load i8, ptr %594, align 1, !tbaa !20
  %596 = zext i8 %595 to i32
  %597 = icmp sgt i32 %596, %2
  br i1 %597, label %598, label %1102

598:                                              ; preds = %593
  %599 = getelementptr inbounds i8, ptr %578, i64 %532
  %600 = load i8, ptr %599, align 1, !tbaa !20
  %601 = zext i8 %600 to i32
  %602 = icmp sgt i32 %601, %2
  br i1 %602, label %603, label %1102

603:                                              ; preds = %598
  %604 = getelementptr inbounds i8, ptr %578, i64 %541
  %605 = load i8, ptr %604, align 1, !tbaa !20
  %606 = zext i8 %605 to i32
  %607 = icmp sgt i32 %606, %2
  br i1 %607, label %608, label %1102

608:                                              ; preds = %603
  %609 = load ptr, ptr %481, align 8, !tbaa !6
  %610 = getelementptr inbounds i8, ptr %609, i64 %497
  %611 = load i8, ptr %610, align 1, !tbaa !20
  %612 = zext i8 %611 to i32
  %613 = icmp sgt i32 %612, %2
  br i1 %613, label %614, label %1102

614:                                              ; preds = %608
  %615 = getelementptr inbounds i8, ptr %609, i64 %506
  %616 = load i8, ptr %615, align 1, !tbaa !20
  %617 = zext i8 %616 to i32
  %618 = icmp sgt i32 %617, %2
  br i1 %618, label %619, label %1102

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, ptr %609, i64 %514
  %621 = load i8, ptr %620, align 1, !tbaa !20
  %622 = zext i8 %621 to i32
  %623 = icmp sgt i32 %622, %2
  br i1 %623, label %624, label %1102

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, ptr %609, i64 %523
  %626 = load i8, ptr %625, align 1, !tbaa !20
  %627 = zext i8 %626 to i32
  %628 = icmp sgt i32 %627, %2
  br i1 %628, label %629, label %1102

629:                                              ; preds = %624
  %630 = getelementptr inbounds i8, ptr %609, i64 %532
  %631 = load i8, ptr %630, align 1, !tbaa !20
  %632 = zext i8 %631 to i32
  %633 = icmp sgt i32 %632, %2
  br i1 %633, label %634, label %1102

634:                                              ; preds = %629
  %635 = getelementptr inbounds i8, ptr %609, i64 %541
  %636 = load i8, ptr %635, align 1, !tbaa !20
  %637 = zext i8 %636 to i32
  %638 = icmp sgt i32 %637, %2
  br i1 %638, label %639, label %1102

639:                                              ; preds = %634
  %640 = load ptr, ptr %486, align 8, !tbaa !6
  %641 = getelementptr inbounds i8, ptr %640, i64 %497
  %642 = load i8, ptr %641, align 1, !tbaa !20
  %643 = zext i8 %642 to i32
  %644 = icmp sgt i32 %643, %2
  br i1 %644, label %645, label %1102

645:                                              ; preds = %639
  %646 = getelementptr inbounds i8, ptr %640, i64 %506
  %647 = load i8, ptr %646, align 1, !tbaa !20
  %648 = zext i8 %647 to i32
  %649 = icmp sgt i32 %648, %2
  br i1 %649, label %650, label %1102

650:                                              ; preds = %645
  %651 = getelementptr inbounds i8, ptr %640, i64 %514
  %652 = load i8, ptr %651, align 1, !tbaa !20
  %653 = zext i8 %652 to i32
  %654 = icmp sgt i32 %653, %2
  br i1 %654, label %655, label %1102

655:                                              ; preds = %650
  %656 = getelementptr inbounds i8, ptr %640, i64 %523
  %657 = load i8, ptr %656, align 1, !tbaa !20
  %658 = zext i8 %657 to i32
  %659 = icmp sgt i32 %658, %2
  br i1 %659, label %660, label %1102

660:                                              ; preds = %655
  %661 = getelementptr inbounds i8, ptr %640, i64 %532
  %662 = load i8, ptr %661, align 1, !tbaa !20
  %663 = zext i8 %662 to i32
  %664 = icmp sgt i32 %663, %2
  br i1 %664, label %665, label %1102

665:                                              ; preds = %660
  %666 = getelementptr inbounds i8, ptr %640, i64 %541
  %667 = load i8, ptr %666, align 1, !tbaa !20
  %668 = zext i8 %667 to i32
  %669 = icmp sgt i32 %668, %2
  br i1 %669, label %670, label %1102

670:                                              ; preds = %665
  %671 = load ptr, ptr %491, align 8, !tbaa !6
  %672 = getelementptr inbounds i8, ptr %671, i64 %497
  %673 = load i8, ptr %672, align 1, !tbaa !20
  %674 = zext i8 %673 to i32
  %675 = icmp sgt i32 %674, %2
  br i1 %675, label %676, label %1102

676:                                              ; preds = %670
  %677 = getelementptr inbounds i8, ptr %671, i64 %506
  %678 = load i8, ptr %677, align 1, !tbaa !20
  %679 = zext i8 %678 to i32
  %680 = icmp sgt i32 %679, %2
  br i1 %680, label %681, label %1102

681:                                              ; preds = %676
  %682 = getelementptr inbounds i8, ptr %671, i64 %514
  %683 = load i8, ptr %682, align 1, !tbaa !20
  %684 = zext i8 %683 to i32
  %685 = icmp sgt i32 %684, %2
  br i1 %685, label %686, label %1102

686:                                              ; preds = %681
  %687 = getelementptr inbounds i8, ptr %671, i64 %523
  %688 = load i8, ptr %687, align 1, !tbaa !20
  %689 = zext i8 %688 to i32
  %690 = icmp sgt i32 %689, %2
  br i1 %690, label %691, label %1102

691:                                              ; preds = %686
  %692 = getelementptr inbounds i8, ptr %671, i64 %532
  %693 = load i8, ptr %692, align 1, !tbaa !20
  %694 = zext i8 %693 to i32
  %695 = icmp sgt i32 %694, %2
  br i1 %695, label %696, label %1102

696:                                              ; preds = %691
  %697 = getelementptr inbounds i8, ptr %671, i64 %541
  %698 = load i8, ptr %697, align 1, !tbaa !20
  %699 = zext i8 %698 to i32
  %700 = icmp sgt i32 %699, %2
  br i1 %700, label %701, label %1102

701:                                              ; preds = %696
  %702 = icmp eq i32 %493, %458
  br i1 %702, label %703, label %492

703:                                              ; preds = %701
  %704 = icmp eq i32 %461, %459
  br i1 %704, label %1096, label %460

705:                                              ; preds = %455
  %706 = icmp eq i32 %64, 2
  br i1 %706, label %713, label %707

707:                                              ; preds = %705
  %708 = icmp ne i32 %64, 1
  %709 = zext i1 %708 to i32
  %710 = icmp eq i32 %65, 1
  %711 = add nsw i32 %72, 3
  %712 = add nsw i32 %67, 3
  br label %961

713:                                              ; preds = %705
  %714 = add nsw i32 %72, 3
  %715 = add nsw i32 %67, 3
  br label %716

716:                                              ; preds = %713, %959
  %717 = phi i32 [ %67, %713 ], [ %733, %959 ]
  %718 = add nsw i32 %717, -2
  %719 = tail call i32 @llvm.smin.i32(i32 %11, i32 %718)
  %720 = tail call i32 @llvm.smax.i32(i32 %719, i32 0)
  %721 = zext nneg i32 %720 to i64
  %722 = getelementptr inbounds ptr, ptr %37, i64 %721
  %723 = load ptr, ptr %722, align 8, !tbaa !6
  %724 = add nsw i32 %717, -1
  %725 = tail call i32 @llvm.smin.i32(i32 %11, i32 %724)
  %726 = tail call i32 @llvm.smax.i32(i32 %725, i32 0)
  %727 = zext nneg i32 %726 to i64
  %728 = getelementptr inbounds ptr, ptr %37, i64 %727
  %729 = tail call i32 @llvm.smin.i32(i32 %11, i32 %717)
  %730 = tail call i32 @llvm.smax.i32(i32 %729, i32 0)
  %731 = zext nneg i32 %730 to i64
  %732 = getelementptr inbounds ptr, ptr %37, i64 %731
  %733 = add nsw i32 %717, 1
  %734 = tail call i32 @llvm.smin.i32(i32 %11, i32 %733)
  %735 = tail call i32 @llvm.smax.i32(i32 %734, i32 0)
  %736 = zext nneg i32 %735 to i64
  %737 = getelementptr inbounds ptr, ptr %37, i64 %736
  %738 = add nsw i32 %717, 2
  %739 = tail call i32 @llvm.smin.i32(i32 %11, i32 %738)
  %740 = tail call i32 @llvm.smax.i32(i32 %739, i32 0)
  %741 = zext nneg i32 %740 to i64
  %742 = getelementptr inbounds ptr, ptr %37, i64 %741
  %743 = add nsw i32 %717, 3
  %744 = tail call i32 @llvm.smin.i32(i32 %11, i32 %743)
  %745 = tail call i32 @llvm.smax.i32(i32 %744, i32 0)
  %746 = zext nneg i32 %745 to i64
  %747 = getelementptr inbounds ptr, ptr %37, i64 %746
  br label %748

748:                                              ; preds = %716, %957
  %749 = phi i32 [ %72, %716 ], [ %856, %957 ]
  %750 = add nsw i32 %749, -2
  %751 = tail call i32 @llvm.smin.i32(i32 %8, i32 %750)
  %752 = tail call i32 @llvm.smax.i32(i32 %751, i32 0)
  %753 = zext nneg i32 %752 to i64
  %754 = getelementptr inbounds i8, ptr %723, i64 %753
  %755 = load i8, ptr %754, align 1, !tbaa !20
  %756 = zext i8 %755 to i32
  %757 = icmp sgt i32 %756, %2
  br i1 %757, label %758, label %1102

758:                                              ; preds = %748
  %759 = load ptr, ptr %728, align 8, !tbaa !6
  %760 = getelementptr inbounds i8, ptr %759, i64 %753
  %761 = load i8, ptr %760, align 1, !tbaa !20
  %762 = zext i8 %761 to i32
  %763 = icmp sgt i32 %762, %2
  br i1 %763, label %764, label %1102

764:                                              ; preds = %758
  %765 = load ptr, ptr %732, align 8, !tbaa !6
  %766 = getelementptr inbounds i8, ptr %765, i64 %753
  %767 = load i8, ptr %766, align 1, !tbaa !20
  %768 = zext i8 %767 to i32
  %769 = icmp sgt i32 %768, %2
  br i1 %769, label %770, label %1102

770:                                              ; preds = %764
  %771 = load ptr, ptr %737, align 8, !tbaa !6
  %772 = getelementptr inbounds i8, ptr %771, i64 %753
  %773 = load i8, ptr %772, align 1, !tbaa !20
  %774 = zext i8 %773 to i32
  %775 = icmp sgt i32 %774, %2
  br i1 %775, label %776, label %1102

776:                                              ; preds = %770
  %777 = load ptr, ptr %742, align 8, !tbaa !6
  %778 = getelementptr inbounds i8, ptr %777, i64 %753
  %779 = load i8, ptr %778, align 1, !tbaa !20
  %780 = zext i8 %779 to i32
  %781 = icmp sgt i32 %780, %2
  br i1 %781, label %782, label %1102

782:                                              ; preds = %776
  %783 = load ptr, ptr %747, align 8, !tbaa !6
  %784 = getelementptr inbounds i8, ptr %783, i64 %753
  %785 = load i8, ptr %784, align 1, !tbaa !20
  %786 = zext i8 %785 to i32
  %787 = icmp sgt i32 %786, %2
  br i1 %787, label %788, label %1102

788:                                              ; preds = %782
  %789 = add nsw i32 %749, -1
  %790 = tail call i32 @llvm.smin.i32(i32 %8, i32 %789)
  %791 = tail call i32 @llvm.smax.i32(i32 %790, i32 0)
  %792 = zext nneg i32 %791 to i64
  %793 = getelementptr inbounds i8, ptr %723, i64 %792
  %794 = load i8, ptr %793, align 1, !tbaa !20
  %795 = zext i8 %794 to i32
  %796 = icmp sgt i32 %795, %2
  br i1 %796, label %797, label %1102

797:                                              ; preds = %788
  %798 = getelementptr inbounds i8, ptr %759, i64 %792
  %799 = load i8, ptr %798, align 1, !tbaa !20
  %800 = zext i8 %799 to i32
  %801 = icmp sgt i32 %800, %2
  br i1 %801, label %802, label %1102

802:                                              ; preds = %797
  %803 = getelementptr inbounds i8, ptr %765, i64 %792
  %804 = load i8, ptr %803, align 1, !tbaa !20
  %805 = zext i8 %804 to i32
  %806 = icmp sgt i32 %805, %2
  br i1 %806, label %807, label %1102

807:                                              ; preds = %802
  %808 = getelementptr inbounds i8, ptr %771, i64 %792
  %809 = load i8, ptr %808, align 1, !tbaa !20
  %810 = zext i8 %809 to i32
  %811 = icmp sgt i32 %810, %2
  br i1 %811, label %812, label %1102

812:                                              ; preds = %807
  %813 = getelementptr inbounds i8, ptr %777, i64 %792
  %814 = load i8, ptr %813, align 1, !tbaa !20
  %815 = zext i8 %814 to i32
  %816 = icmp sgt i32 %815, %2
  br i1 %816, label %817, label %1102

817:                                              ; preds = %812
  %818 = getelementptr inbounds i8, ptr %783, i64 %792
  %819 = load i8, ptr %818, align 1, !tbaa !20
  %820 = zext i8 %819 to i32
  %821 = icmp sgt i32 %820, %2
  br i1 %821, label %822, label %1102

822:                                              ; preds = %817
  %823 = tail call i32 @llvm.smin.i32(i32 %8, i32 %749)
  %824 = tail call i32 @llvm.smax.i32(i32 %823, i32 0)
  %825 = zext nneg i32 %824 to i64
  %826 = getelementptr inbounds i8, ptr %723, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !20
  %828 = zext i8 %827 to i32
  %829 = icmp sgt i32 %828, %2
  br i1 %829, label %830, label %1102

830:                                              ; preds = %822
  %831 = getelementptr inbounds i8, ptr %759, i64 %825
  %832 = load i8, ptr %831, align 1, !tbaa !20
  %833 = zext i8 %832 to i32
  %834 = icmp sgt i32 %833, %2
  br i1 %834, label %835, label %1102

835:                                              ; preds = %830
  %836 = getelementptr inbounds i8, ptr %765, i64 %825
  %837 = load i8, ptr %836, align 1, !tbaa !20
  %838 = zext i8 %837 to i32
  %839 = icmp sgt i32 %838, %2
  br i1 %839, label %840, label %1102

840:                                              ; preds = %835
  %841 = getelementptr inbounds i8, ptr %771, i64 %825
  %842 = load i8, ptr %841, align 1, !tbaa !20
  %843 = zext i8 %842 to i32
  %844 = icmp sgt i32 %843, %2
  br i1 %844, label %845, label %1102

845:                                              ; preds = %840
  %846 = getelementptr inbounds i8, ptr %777, i64 %825
  %847 = load i8, ptr %846, align 1, !tbaa !20
  %848 = zext i8 %847 to i32
  %849 = icmp sgt i32 %848, %2
  br i1 %849, label %850, label %1102

850:                                              ; preds = %845
  %851 = getelementptr inbounds i8, ptr %783, i64 %825
  %852 = load i8, ptr %851, align 1, !tbaa !20
  %853 = zext i8 %852 to i32
  %854 = icmp sgt i32 %853, %2
  br i1 %854, label %855, label %1102

855:                                              ; preds = %850
  %856 = add nsw i32 %749, 1
  %857 = tail call i32 @llvm.smin.i32(i32 %8, i32 %856)
  %858 = tail call i32 @llvm.smax.i32(i32 %857, i32 0)
  %859 = zext nneg i32 %858 to i64
  %860 = getelementptr inbounds i8, ptr %723, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !20
  %862 = zext i8 %861 to i32
  %863 = icmp sgt i32 %862, %2
  br i1 %863, label %864, label %1102

864:                                              ; preds = %855
  %865 = getelementptr inbounds i8, ptr %759, i64 %859
  %866 = load i8, ptr %865, align 1, !tbaa !20
  %867 = zext i8 %866 to i32
  %868 = icmp sgt i32 %867, %2
  br i1 %868, label %869, label %1102

869:                                              ; preds = %864
  %870 = getelementptr inbounds i8, ptr %765, i64 %859
  %871 = load i8, ptr %870, align 1, !tbaa !20
  %872 = zext i8 %871 to i32
  %873 = icmp sgt i32 %872, %2
  br i1 %873, label %874, label %1102

874:                                              ; preds = %869
  %875 = getelementptr inbounds i8, ptr %771, i64 %859
  %876 = load i8, ptr %875, align 1, !tbaa !20
  %877 = zext i8 %876 to i32
  %878 = icmp sgt i32 %877, %2
  br i1 %878, label %879, label %1102

879:                                              ; preds = %874
  %880 = getelementptr inbounds i8, ptr %777, i64 %859
  %881 = load i8, ptr %880, align 1, !tbaa !20
  %882 = zext i8 %881 to i32
  %883 = icmp sgt i32 %882, %2
  br i1 %883, label %884, label %1102

884:                                              ; preds = %879
  %885 = getelementptr inbounds i8, ptr %783, i64 %859
  %886 = load i8, ptr %885, align 1, !tbaa !20
  %887 = zext i8 %886 to i32
  %888 = icmp sgt i32 %887, %2
  br i1 %888, label %889, label %1102

889:                                              ; preds = %884
  %890 = add nsw i32 %749, 2
  %891 = tail call i32 @llvm.smin.i32(i32 %8, i32 %890)
  %892 = tail call i32 @llvm.smax.i32(i32 %891, i32 0)
  %893 = zext nneg i32 %892 to i64
  %894 = getelementptr inbounds i8, ptr %723, i64 %893
  %895 = load i8, ptr %894, align 1, !tbaa !20
  %896 = zext i8 %895 to i32
  %897 = icmp sgt i32 %896, %2
  br i1 %897, label %898, label %1102

898:                                              ; preds = %889
  %899 = getelementptr inbounds i8, ptr %759, i64 %893
  %900 = load i8, ptr %899, align 1, !tbaa !20
  %901 = zext i8 %900 to i32
  %902 = icmp sgt i32 %901, %2
  br i1 %902, label %903, label %1102

903:                                              ; preds = %898
  %904 = getelementptr inbounds i8, ptr %765, i64 %893
  %905 = load i8, ptr %904, align 1, !tbaa !20
  %906 = zext i8 %905 to i32
  %907 = icmp sgt i32 %906, %2
  br i1 %907, label %908, label %1102

908:                                              ; preds = %903
  %909 = getelementptr inbounds i8, ptr %771, i64 %893
  %910 = load i8, ptr %909, align 1, !tbaa !20
  %911 = zext i8 %910 to i32
  %912 = icmp sgt i32 %911, %2
  br i1 %912, label %913, label %1102

913:                                              ; preds = %908
  %914 = getelementptr inbounds i8, ptr %777, i64 %893
  %915 = load i8, ptr %914, align 1, !tbaa !20
  %916 = zext i8 %915 to i32
  %917 = icmp sgt i32 %916, %2
  br i1 %917, label %918, label %1102

918:                                              ; preds = %913
  %919 = getelementptr inbounds i8, ptr %783, i64 %893
  %920 = load i8, ptr %919, align 1, !tbaa !20
  %921 = zext i8 %920 to i32
  %922 = icmp sgt i32 %921, %2
  br i1 %922, label %923, label %1102

923:                                              ; preds = %918
  %924 = add nsw i32 %749, 3
  %925 = tail call i32 @llvm.smin.i32(i32 %8, i32 %924)
  %926 = tail call i32 @llvm.smax.i32(i32 %925, i32 0)
  %927 = zext nneg i32 %926 to i64
  %928 = getelementptr inbounds i8, ptr %723, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !20
  %930 = zext i8 %929 to i32
  %931 = icmp sgt i32 %930, %2
  br i1 %931, label %932, label %1102

932:                                              ; preds = %923
  %933 = getelementptr inbounds i8, ptr %759, i64 %927
  %934 = load i8, ptr %933, align 1, !tbaa !20
  %935 = zext i8 %934 to i32
  %936 = icmp sgt i32 %935, %2
  br i1 %936, label %937, label %1102

937:                                              ; preds = %932
  %938 = getelementptr inbounds i8, ptr %765, i64 %927
  %939 = load i8, ptr %938, align 1, !tbaa !20
  %940 = zext i8 %939 to i32
  %941 = icmp sgt i32 %940, %2
  br i1 %941, label %942, label %1102

942:                                              ; preds = %937
  %943 = getelementptr inbounds i8, ptr %771, i64 %927
  %944 = load i8, ptr %943, align 1, !tbaa !20
  %945 = zext i8 %944 to i32
  %946 = icmp sgt i32 %945, %2
  br i1 %946, label %947, label %1102

947:                                              ; preds = %942
  %948 = getelementptr inbounds i8, ptr %777, i64 %927
  %949 = load i8, ptr %948, align 1, !tbaa !20
  %950 = zext i8 %949 to i32
  %951 = icmp sgt i32 %950, %2
  br i1 %951, label %952, label %1102

952:                                              ; preds = %947
  %953 = getelementptr inbounds i8, ptr %783, i64 %927
  %954 = load i8, ptr %953, align 1, !tbaa !20
  %955 = zext i8 %954 to i32
  %956 = icmp sgt i32 %955, %2
  br i1 %956, label %957, label %1102

957:                                              ; preds = %952
  %958 = icmp eq i32 %749, %714
  br i1 %958, label %959, label %748

959:                                              ; preds = %957
  %960 = icmp eq i32 %717, %715
  br i1 %960, label %1096, label %716

961:                                              ; preds = %707, %1094
  %962 = phi i32 [ %67, %707 ], [ %983, %1094 ]
  %963 = add nsw i32 %962, %709
  %964 = tail call i32 @llvm.smin.i32(i32 %11, i32 %963)
  %965 = tail call i32 @llvm.smax.i32(i32 %964, i32 0)
  %966 = zext nneg i32 %965 to i64
  %967 = getelementptr inbounds ptr, ptr %37, i64 %966
  %968 = load ptr, ptr %967, align 8, !tbaa !6
  %969 = add nsw i32 %962, -2
  %970 = tail call i32 @llvm.smin.i32(i32 %11, i32 %969)
  %971 = tail call i32 @llvm.smax.i32(i32 %970, i32 0)
  %972 = zext nneg i32 %971 to i64
  %973 = getelementptr inbounds ptr, ptr %37, i64 %972
  %974 = add nsw i32 %962, -1
  %975 = tail call i32 @llvm.smin.i32(i32 %11, i32 %974)
  %976 = tail call i32 @llvm.smax.i32(i32 %975, i32 0)
  %977 = zext nneg i32 %976 to i64
  %978 = getelementptr inbounds ptr, ptr %37, i64 %977
  %979 = tail call i32 @llvm.smin.i32(i32 %11, i32 %962)
  %980 = tail call i32 @llvm.smax.i32(i32 %979, i32 0)
  %981 = zext nneg i32 %980 to i64
  %982 = getelementptr inbounds ptr, ptr %37, i64 %981
  %983 = add nsw i32 %962, 1
  %984 = tail call i32 @llvm.smin.i32(i32 %11, i32 %983)
  %985 = tail call i32 @llvm.smax.i32(i32 %984, i32 0)
  %986 = zext nneg i32 %985 to i64
  %987 = getelementptr inbounds ptr, ptr %37, i64 %986
  %988 = add nsw i32 %962, 2
  %989 = tail call i32 @llvm.smin.i32(i32 %11, i32 %988)
  %990 = tail call i32 @llvm.smax.i32(i32 %989, i32 0)
  %991 = zext nneg i32 %990 to i64
  %992 = getelementptr inbounds ptr, ptr %37, i64 %991
  %993 = add nsw i32 %962, 3
  %994 = tail call i32 @llvm.smin.i32(i32 %11, i32 %993)
  %995 = tail call i32 @llvm.smax.i32(i32 %994, i32 0)
  %996 = zext nneg i32 %995 to i64
  %997 = getelementptr inbounds ptr, ptr %37, i64 %996
  br label %998

998:                                              ; preds = %961, %1092
  %999 = phi i32 [ %72, %961 ], [ %1026, %1092 ]
  %1000 = add nsw i32 %999, -2
  %1001 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1000)
  %1002 = tail call i32 @llvm.smax.i32(i32 %1001, i32 0)
  %1003 = zext nneg i32 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %968, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !20
  %1006 = zext i8 %1005 to i32
  %1007 = icmp sgt i32 %1006, %2
  br i1 %1007, label %1008, label %1102

1008:                                             ; preds = %998
  %1009 = add nsw i32 %999, -1
  %1010 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1009)
  %1011 = tail call i32 @llvm.smax.i32(i32 %1010, i32 0)
  %1012 = zext nneg i32 %1011 to i64
  %1013 = getelementptr inbounds i8, ptr %968, i64 %1012
  %1014 = load i8, ptr %1013, align 1, !tbaa !20
  %1015 = zext i8 %1014 to i32
  %1016 = icmp sgt i32 %1015, %2
  br i1 %1016, label %1017, label %1102

1017:                                             ; preds = %1008
  %1018 = tail call i32 @llvm.smin.i32(i32 %8, i32 %999)
  %1019 = tail call i32 @llvm.smax.i32(i32 %1018, i32 0)
  %1020 = zext nneg i32 %1019 to i64
  %1021 = getelementptr inbounds i8, ptr %968, i64 %1020
  %1022 = load i8, ptr %1021, align 1, !tbaa !20
  %1023 = zext i8 %1022 to i32
  %1024 = icmp sgt i32 %1023, %2
  br i1 %1024, label %1025, label %1102

1025:                                             ; preds = %1017
  %1026 = add nsw i32 %999, 1
  %1027 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1026)
  %1028 = tail call i32 @llvm.smax.i32(i32 %1027, i32 0)
  %1029 = zext nneg i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %968, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !20
  %1032 = zext i8 %1031 to i32
  %1033 = icmp sgt i32 %1032, %2
  br i1 %1033, label %1034, label %1102

1034:                                             ; preds = %1025
  %1035 = add nsw i32 %999, 2
  %1036 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1035)
  %1037 = tail call i32 @llvm.smax.i32(i32 %1036, i32 0)
  %1038 = zext nneg i32 %1037 to i64
  %1039 = getelementptr inbounds i8, ptr %968, i64 %1038
  %1040 = load i8, ptr %1039, align 1, !tbaa !20
  %1041 = zext i8 %1040 to i32
  %1042 = icmp sgt i32 %1041, %2
  br i1 %1042, label %1043, label %1102

1043:                                             ; preds = %1034
  %1044 = add nsw i32 %999, 3
  %1045 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1044)
  %1046 = tail call i32 @llvm.smax.i32(i32 %1045, i32 0)
  %1047 = zext nneg i32 %1046 to i64
  %1048 = getelementptr inbounds i8, ptr %968, i64 %1047
  %1049 = load i8, ptr %1048, align 1, !tbaa !20
  %1050 = zext i8 %1049 to i32
  %1051 = icmp sgt i32 %1050, %2
  br i1 %1051, label %1052, label %1102

1052:                                             ; preds = %1043
  %1053 = select i1 %710, i32 %999, i32 %1026
  %1054 = tail call i32 @llvm.smin.i32(i32 %8, i32 %1053)
  %1055 = tail call i32 @llvm.smax.i32(i32 %1054, i32 0)
  %1056 = zext nneg i32 %1055 to i64
  %1057 = load ptr, ptr %973, align 8, !tbaa !6
  %1058 = getelementptr inbounds i8, ptr %1057, i64 %1056
  %1059 = load i8, ptr %1058, align 1, !tbaa !20
  %1060 = zext i8 %1059 to i32
  %1061 = icmp sgt i32 %1060, %2
  br i1 %1061, label %1062, label %1102

1062:                                             ; preds = %1052
  %1063 = load ptr, ptr %978, align 8, !tbaa !6
  %1064 = getelementptr inbounds i8, ptr %1063, i64 %1056
  %1065 = load i8, ptr %1064, align 1, !tbaa !20
  %1066 = zext i8 %1065 to i32
  %1067 = icmp sgt i32 %1066, %2
  br i1 %1067, label %1068, label %1102

1068:                                             ; preds = %1062
  %1069 = load ptr, ptr %982, align 8, !tbaa !6
  %1070 = getelementptr inbounds i8, ptr %1069, i64 %1056
  %1071 = load i8, ptr %1070, align 1, !tbaa !20
  %1072 = zext i8 %1071 to i32
  %1073 = icmp sgt i32 %1072, %2
  br i1 %1073, label %1074, label %1102

1074:                                             ; preds = %1068
  %1075 = load ptr, ptr %987, align 8, !tbaa !6
  %1076 = getelementptr inbounds i8, ptr %1075, i64 %1056
  %1077 = load i8, ptr %1076, align 1, !tbaa !20
  %1078 = zext i8 %1077 to i32
  %1079 = icmp sgt i32 %1078, %2
  br i1 %1079, label %1080, label %1102

1080:                                             ; preds = %1074
  %1081 = load ptr, ptr %992, align 8, !tbaa !6
  %1082 = getelementptr inbounds i8, ptr %1081, i64 %1056
  %1083 = load i8, ptr %1082, align 1, !tbaa !20
  %1084 = zext i8 %1083 to i32
  %1085 = icmp sgt i32 %1084, %2
  br i1 %1085, label %1086, label %1102

1086:                                             ; preds = %1080
  %1087 = load ptr, ptr %997, align 8, !tbaa !6
  %1088 = getelementptr inbounds i8, ptr %1087, i64 %1056
  %1089 = load i8, ptr %1088, align 1, !tbaa !20
  %1090 = zext i8 %1089 to i32
  %1091 = icmp sgt i32 %1090, %2
  br i1 %1091, label %1092, label %1102

1092:                                             ; preds = %1086
  %1093 = icmp eq i32 %999, %711
  br i1 %1093, label %1094, label %998

1094:                                             ; preds = %1092
  %1095 = icmp eq i32 %962, %712
  br i1 %1095, label %1096, label %961

1096:                                             ; preds = %1094, %959, %703, %453, %261, %189
  %1097 = add nsw i64 %50, 1
  %1098 = icmp slt i64 %1097, %39
  br i1 %1098, label %49, label %1099

1099:                                             ; preds = %1096
  %1100 = add nsw i64 %43, 1
  %1101 = icmp slt i64 %1100, %41
  br i1 %1101, label %42, label %1102

1102:                                             ; preds = %1099, %76, %101, %106, %111, %116, %127, %132, %137, %142, %153, %158, %163, %168, %179, %184, %189, %998, %1008, %1017, %1025, %1034, %1043, %1052, %1062, %1068, %1074, %1080, %1086, %748, %758, %764, %770, %776, %782, %788, %797, %802, %807, %812, %817, %822, %830, %835, %840, %845, %850, %855, %864, %869, %874, %879, %884, %889, %898, %903, %908, %913, %918, %923, %932, %937, %942, %947, %952, %492, %502, %511, %519, %528, %537, %546, %552, %557, %562, %567, %572, %577, %583, %588, %593, %598, %603, %608, %614, %619, %624, %629, %634, %639, %645, %650, %655, %660, %665, %670, %676, %681, %686, %691, %696, %282, %318, %324, %330, %336, %342, %348, %353, %359, %365, %371, %377, %383, %388, %394, %400, %406, %412, %418, %423, %429, %435, %441, %447, %205, %215, %224, %232, %241, %250
  %1103 = phi i32 [ 0, %250 ], [ 0, %241 ], [ 0, %232 ], [ 0, %224 ], [ 0, %215 ], [ 0, %205 ], [ 0, %447 ], [ 0, %441 ], [ 0, %435 ], [ 0, %429 ], [ 0, %423 ], [ 0, %418 ], [ 0, %412 ], [ 0, %406 ], [ 0, %400 ], [ 0, %394 ], [ 0, %388 ], [ 0, %383 ], [ 0, %377 ], [ 0, %371 ], [ 0, %365 ], [ 0, %359 ], [ 0, %353 ], [ 0, %348 ], [ 0, %342 ], [ 0, %336 ], [ 0, %330 ], [ 0, %324 ], [ 0, %318 ], [ 0, %282 ], [ 0, %696 ], [ 0, %691 ], [ 0, %686 ], [ 0, %681 ], [ 0, %676 ], [ 0, %670 ], [ 0, %665 ], [ 0, %660 ], [ 0, %655 ], [ 0, %650 ], [ 0, %645 ], [ 0, %639 ], [ 0, %634 ], [ 0, %629 ], [ 0, %624 ], [ 0, %619 ], [ 0, %614 ], [ 0, %608 ], [ 0, %603 ], [ 0, %598 ], [ 0, %593 ], [ 0, %588 ], [ 0, %583 ], [ 0, %577 ], [ 0, %572 ], [ 0, %567 ], [ 0, %562 ], [ 0, %557 ], [ 0, %552 ], [ 0, %546 ], [ 0, %537 ], [ 0, %528 ], [ 0, %519 ], [ 0, %511 ], [ 0, %502 ], [ 0, %492 ], [ 0, %952 ], [ 0, %947 ], [ 0, %942 ], [ 0, %937 ], [ 0, %932 ], [ 0, %923 ], [ 0, %918 ], [ 0, %913 ], [ 0, %908 ], [ 0, %903 ], [ 0, %898 ], [ 0, %889 ], [ 0, %884 ], [ 0, %879 ], [ 0, %874 ], [ 0, %869 ], [ 0, %864 ], [ 0, %855 ], [ 0, %850 ], [ 0, %845 ], [ 0, %840 ], [ 0, %835 ], [ 0, %830 ], [ 0, %822 ], [ 0, %817 ], [ 0, %812 ], [ 0, %807 ], [ 0, %802 ], [ 0, %797 ], [ 0, %788 ], [ 0, %782 ], [ 0, %776 ], [ 0, %770 ], [ 0, %764 ], [ 0, %758 ], [ 0, %748 ], [ 0, %1086 ], [ 0, %1080 ], [ 0, %1074 ], [ 0, %1068 ], [ 0, %1062 ], [ 0, %1052 ], [ 0, %1043 ], [ 0, %1034 ], [ 0, %1025 ], [ 0, %1017 ], [ 0, %1008 ], [ 0, %998 ], [ 0, %189 ], [ 0, %184 ], [ 0, %179 ], [ 0, %168 ], [ 0, %163 ], [ 0, %158 ], [ 0, %153 ], [ 0, %142 ], [ 0, %137 ], [ 0, %132 ], [ 0, %127 ], [ 0, %116 ], [ 0, %111 ], [ 0, %106 ], [ 0, %101 ], [ 0, %76 ], [ 1, %1099 ]
  ret i32 %1103
}

; Function Attrs: nounwind
define dso_local double @RDCost_for_4x4IntraBlocks(ptr nocapture noundef writeonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, double noundef %4, double %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %9 = shl i32 %1, 3
  %10 = and i32 %9, 8
  %11 = shl i32 %2, 2
  %12 = and i32 %11, 4
  %13 = or disjoint i32 %12, %10
  %14 = shl nsw i32 %1, 2
  %15 = and i32 %14, -8
  %16 = shl nsw i32 %2, 1
  %17 = and i32 %16, -4
  %18 = add nsw i32 %17, %15
  %19 = load ptr, ptr @img, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 152
  %21 = load i32, ptr %20, align 8, !tbaa !26
  %22 = add nsw i32 %21, %13
  %23 = getelementptr inbounds i8, ptr %19, i64 156
  %24 = load i32, ptr %23, align 4, !tbaa !27
  %25 = add nsw i32 %24, %18
  %26 = getelementptr inbounds i8, ptr %19, i64 172
  %27 = load i32, ptr %26, align 4, !tbaa !28
  %28 = add nsw i32 %27, %18
  %29 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 6424
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds i8, ptr %19, i64 31568
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  %34 = getelementptr inbounds i8, ptr %19, i64 31576
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = getelementptr inbounds i8, ptr %19, i64 12
  %37 = load i32, ptr %36, align 4, !tbaa !33
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %38
  %40 = getelementptr inbounds i8, ptr %19, i64 31584
  %41 = load i32, ptr %39, align 8, !tbaa !34
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %40, i64 0, i64 %42
  %44 = load ptr, ptr @input, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 2992
  %46 = load i32, ptr %45, align 8, !tbaa !37
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  store i32 0, ptr %8, align 4, !tbaa !38
  %50 = getelementptr inbounds i8, ptr %19, i64 24
  %51 = load i32, ptr %50, align 8, !tbaa !14
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %55, label %53

53:                                               ; preds = %7
  %54 = call signext i32 @dct_luma(i32 noundef signext %13, i32 noundef signext %18, ptr noundef nonnull %8, i32 noundef signext 1) #15
  br label %65

55:                                               ; preds = %7
  %56 = load i32, ptr @si_frame_indicator, align 4, !tbaa !38
  %57 = icmp ne i32 %56, 0
  %58 = load i32, ptr @sp2_frame_indicator, align 4
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call signext i32 @dct_luma_sp(i32 noundef signext %13, i32 noundef signext %18, ptr noundef nonnull %8) #15
  br label %65

63:                                               ; preds = %55
  %64 = call signext i32 @dct_luma_sp2(i32 noundef signext %13, i32 noundef signext %18, ptr noundef nonnull %8) #15
  br label %65

65:                                               ; preds = %61, %63, %53
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], [ %54, %53 ]
  store i32 %66, ptr %0, align 4, !tbaa !38
  %67 = load ptr, ptr @img, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 90572
  %69 = load i32, ptr %68, align 4, !tbaa !39
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %301

71:                                               ; preds = %65
  %72 = getelementptr inbounds i8, ptr %67, i64 89184
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %75 = add i32 %21, %10
  %76 = add i32 %75, %12
  %77 = sext i32 %76 to i64
  %78 = sext i32 %28 to i64
  %79 = sext i32 %25 to i64
  %80 = getelementptr inbounds ptr, ptr %74, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds ptr, ptr %31, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds i16, ptr %81, i64 %77
  %85 = load i16, ptr %84, align 2, !tbaa !25
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds i16, ptr %83, i64 %77
  %88 = load i16, ptr %87, align 2, !tbaa !25
  %89 = zext i16 %88 to i64
  %90 = sub nsw i64 %86, %89
  %91 = getelementptr inbounds i32, ptr %73, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !38
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %77, 1
  %95 = add nsw i32 %22, 3
  %96 = icmp slt i32 %76, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %71
  %98 = getelementptr inbounds i16, ptr %81, i64 %94
  %99 = load i16, ptr %98, align 2, !tbaa !25
  %100 = zext i16 %99 to i64
  %101 = getelementptr inbounds i16, ptr %83, i64 %94
  %102 = load i16, ptr %101, align 2, !tbaa !25
  %103 = zext i16 %102 to i64
  %104 = sub nsw i64 %100, %103
  %105 = getelementptr inbounds i32, ptr %73, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !38
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %93, %107
  %109 = add nsw i64 %77, 2
  %110 = getelementptr inbounds i16, ptr %81, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !25
  %112 = zext i16 %111 to i64
  %113 = getelementptr inbounds i16, ptr %83, i64 %109
  %114 = load i16, ptr %113, align 2, !tbaa !25
  %115 = zext i16 %114 to i64
  %116 = sub nsw i64 %112, %115
  %117 = getelementptr inbounds i32, ptr %73, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !38
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %108, %119
  %121 = add nsw i64 %77, 3
  %122 = getelementptr inbounds i16, ptr %81, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !25
  %124 = zext i16 %123 to i64
  %125 = getelementptr inbounds i16, ptr %83, i64 %121
  %126 = load i16, ptr %125, align 2, !tbaa !25
  %127 = zext i16 %126 to i64
  %128 = sub nsw i64 %124, %127
  %129 = getelementptr inbounds i32, ptr %73, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !38
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %120, %131
  br label %133

133:                                              ; preds = %97, %71
  %134 = phi i64 [ %93, %71 ], [ %132, %97 ]
  %135 = getelementptr ptr, ptr %74, i64 %78
  %136 = getelementptr i8, ptr %135, i64 8
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr ptr, ptr %31, i64 %79
  %139 = getelementptr i8, ptr %138, i64 8
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = getelementptr inbounds i16, ptr %137, i64 %77
  %142 = load i16, ptr %141, align 2, !tbaa !25
  %143 = zext i16 %142 to i64
  %144 = getelementptr inbounds i16, ptr %140, i64 %77
  %145 = load i16, ptr %144, align 2, !tbaa !25
  %146 = zext i16 %145 to i64
  %147 = sub nsw i64 %143, %146
  %148 = getelementptr inbounds i32, ptr %73, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !38
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %134, %150
  br i1 %96, label %152, label %188

152:                                              ; preds = %133
  %153 = getelementptr inbounds i16, ptr %137, i64 %94
  %154 = load i16, ptr %153, align 2, !tbaa !25
  %155 = zext i16 %154 to i64
  %156 = getelementptr inbounds i16, ptr %140, i64 %94
  %157 = load i16, ptr %156, align 2, !tbaa !25
  %158 = zext i16 %157 to i64
  %159 = sub nsw i64 %155, %158
  %160 = getelementptr inbounds i32, ptr %73, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !38
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %151, %162
  %164 = add nsw i64 %77, 2
  %165 = getelementptr inbounds i16, ptr %137, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !25
  %167 = zext i16 %166 to i64
  %168 = getelementptr inbounds i16, ptr %140, i64 %164
  %169 = load i16, ptr %168, align 2, !tbaa !25
  %170 = zext i16 %169 to i64
  %171 = sub nsw i64 %167, %170
  %172 = getelementptr inbounds i32, ptr %73, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !38
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %163, %174
  %176 = add nsw i64 %77, 3
  %177 = getelementptr inbounds i16, ptr %137, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !25
  %179 = zext i16 %178 to i64
  %180 = getelementptr inbounds i16, ptr %140, i64 %176
  %181 = load i16, ptr %180, align 2, !tbaa !25
  %182 = zext i16 %181 to i64
  %183 = sub nsw i64 %179, %182
  %184 = getelementptr inbounds i32, ptr %73, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !38
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %175, %186
  br label %188

188:                                              ; preds = %152, %133
  %189 = phi i64 [ %151, %133 ], [ %187, %152 ]
  %190 = getelementptr ptr, ptr %74, i64 %78
  %191 = getelementptr i8, ptr %190, i64 16
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = getelementptr ptr, ptr %31, i64 %79
  %194 = getelementptr i8, ptr %193, i64 16
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds i16, ptr %192, i64 %77
  %197 = load i16, ptr %196, align 2, !tbaa !25
  %198 = zext i16 %197 to i64
  %199 = getelementptr inbounds i16, ptr %195, i64 %77
  %200 = load i16, ptr %199, align 2, !tbaa !25
  %201 = zext i16 %200 to i64
  %202 = sub nsw i64 %198, %201
  %203 = getelementptr inbounds i32, ptr %73, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !38
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %189, %205
  br i1 %96, label %207, label %243

207:                                              ; preds = %188
  %208 = getelementptr inbounds i16, ptr %192, i64 %94
  %209 = load i16, ptr %208, align 2, !tbaa !25
  %210 = zext i16 %209 to i64
  %211 = getelementptr inbounds i16, ptr %195, i64 %94
  %212 = load i16, ptr %211, align 2, !tbaa !25
  %213 = zext i16 %212 to i64
  %214 = sub nsw i64 %210, %213
  %215 = getelementptr inbounds i32, ptr %73, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !38
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %206, %217
  %219 = add nsw i64 %77, 2
  %220 = getelementptr inbounds i16, ptr %192, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !25
  %222 = zext i16 %221 to i64
  %223 = getelementptr inbounds i16, ptr %195, i64 %219
  %224 = load i16, ptr %223, align 2, !tbaa !25
  %225 = zext i16 %224 to i64
  %226 = sub nsw i64 %222, %225
  %227 = getelementptr inbounds i32, ptr %73, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !38
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %218, %229
  %231 = add nsw i64 %77, 3
  %232 = getelementptr inbounds i16, ptr %192, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !25
  %234 = zext i16 %233 to i64
  %235 = getelementptr inbounds i16, ptr %195, i64 %231
  %236 = load i16, ptr %235, align 2, !tbaa !25
  %237 = zext i16 %236 to i64
  %238 = sub nsw i64 %234, %237
  %239 = getelementptr inbounds i32, ptr %73, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !38
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %230, %241
  br label %243

243:                                              ; preds = %207, %188
  %244 = phi i64 [ %206, %188 ], [ %242, %207 ]
  %245 = getelementptr ptr, ptr %74, i64 %78
  %246 = getelementptr i8, ptr %245, i64 24
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = getelementptr ptr, ptr %31, i64 %79
  %249 = getelementptr i8, ptr %248, i64 24
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = getelementptr inbounds i16, ptr %247, i64 %77
  %252 = load i16, ptr %251, align 2, !tbaa !25
  %253 = zext i16 %252 to i64
  %254 = getelementptr inbounds i16, ptr %250, i64 %77
  %255 = load i16, ptr %254, align 2, !tbaa !25
  %256 = zext i16 %255 to i64
  %257 = sub nsw i64 %253, %256
  %258 = getelementptr inbounds i32, ptr %73, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !38
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %244, %260
  br i1 %96, label %262, label %298

262:                                              ; preds = %243
  %263 = getelementptr inbounds i16, ptr %247, i64 %94
  %264 = load i16, ptr %263, align 2, !tbaa !25
  %265 = zext i16 %264 to i64
  %266 = getelementptr inbounds i16, ptr %250, i64 %94
  %267 = load i16, ptr %266, align 2, !tbaa !25
  %268 = zext i16 %267 to i64
  %269 = sub nsw i64 %265, %268
  %270 = getelementptr inbounds i32, ptr %73, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !38
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %261, %272
  %274 = add nsw i64 %77, 2
  %275 = getelementptr inbounds i16, ptr %247, i64 %274
  %276 = load i16, ptr %275, align 2, !tbaa !25
  %277 = zext i16 %276 to i64
  %278 = getelementptr inbounds i16, ptr %250, i64 %274
  %279 = load i16, ptr %278, align 2, !tbaa !25
  %280 = zext i16 %279 to i64
  %281 = sub nsw i64 %277, %280
  %282 = getelementptr inbounds i32, ptr %73, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !38
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %273, %284
  %286 = add nsw i64 %77, 3
  %287 = getelementptr inbounds i16, ptr %247, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !25
  %289 = zext i16 %288 to i64
  %290 = getelementptr inbounds i16, ptr %250, i64 %286
  %291 = load i16, ptr %290, align 2, !tbaa !25
  %292 = zext i16 %291 to i64
  %293 = sub nsw i64 %289, %292
  %294 = getelementptr inbounds i32, ptr %73, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !38
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %285, %296
  br label %298

298:                                              ; preds = %262, %243
  %299 = phi i64 [ %261, %243 ], [ %297, %262 ]
  %300 = sitofp i64 %299 to double
  br label %301

301:                                              ; preds = %298, %65
  %302 = phi double [ 0.000000e+00, %65 ], [ %300, %298 ]
  %303 = icmp eq i32 %6, %3
  %304 = icmp sge i32 %3, %6
  %305 = sext i1 %304 to i32
  %306 = add nsw i32 %305, %3
  %307 = select i1 %303, i32 -1, i32 %306
  %308 = getelementptr inbounds i8, ptr %43, i64 4
  store i32 %307, ptr %308, align 4, !tbaa !41
  %309 = add nsw i32 %14, %2
  %310 = getelementptr inbounds i8, ptr %43, i64 24
  store i32 %309, ptr %310, align 8, !tbaa !43
  store i32 4, ptr %43, align 8, !tbaa !44
  %311 = load ptr, ptr @input, align 8, !tbaa !6
  %312 = getelementptr inbounds i8, ptr %311, i64 2984
  %313 = load i32, ptr %312, align 8, !tbaa !45
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %301
  %316 = getelementptr inbounds i8, ptr %33, i64 24
  %317 = load ptr, ptr %316, align 8, !tbaa !46
  %318 = getelementptr inbounds i8, ptr %49, i64 16
  %319 = load i32, ptr %318, align 4, !tbaa !38
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.datapartition, ptr %317, i64 %320
  br label %334

322:                                              ; preds = %301
  %323 = getelementptr inbounds i8, ptr %43, i64 40
  store ptr @writeIntraPredMode_CABAC, ptr %323, align 8, !tbaa !48
  %324 = load ptr, ptr @input, align 8, !tbaa !6
  %325 = getelementptr inbounds i8, ptr %324, i64 2984
  %326 = load i32, ptr %325, align 8, !tbaa !45
  %327 = icmp eq i32 %326, 0
  %328 = getelementptr inbounds i8, ptr %33, i64 24
  %329 = load ptr, ptr %328, align 8, !tbaa !46
  %330 = getelementptr inbounds i8, ptr %49, i64 16
  %331 = load i32, ptr %330, align 4, !tbaa !38
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.datapartition, ptr %329, i64 %332
  br i1 %327, label %334, label %337

334:                                              ; preds = %315, %322
  %335 = phi ptr [ %321, %315 ], [ %333, %322 ]
  %336 = call signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef nonnull %43, ptr noundef %335) #15
  br label %341

337:                                              ; preds = %322
  %338 = getelementptr inbounds i8, ptr %333, i64 104
  %339 = load ptr, ptr %338, align 8, !tbaa !49
  %340 = call signext i32 %339(ptr noundef nonnull %43, ptr noundef %333) #15
  br label %341

341:                                              ; preds = %337, %334
  %342 = getelementptr inbounds i8, ptr %43, i64 12
  %343 = load i32, ptr %342, align 4, !tbaa !52
  %344 = load i32, ptr %39, align 8, !tbaa !34
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %39, align 8, !tbaa !34
  %346 = load ptr, ptr @input, align 8, !tbaa !6
  %347 = getelementptr inbounds i8, ptr %346, i64 2984
  %348 = load i32, ptr %347, align 8, !tbaa !45
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %341
  %351 = call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext 0) #15
  br label %354

352:                                              ; preds = %341
  %353 = call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext 1) #15
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi i32 [ %351, %350 ], [ %353, %352 ]
  %356 = add nsw i32 %355, %343
  %357 = sitofp i32 %356 to double
  %358 = load ptr, ptr @img, align 8, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %358, i64 90572
  %360 = load i32, ptr %359, align 4, !tbaa !39
  %361 = icmp eq i32 %360, 0
  %362 = call double @llvm.fmuladd.f64(double %4, double %357, double %302)
  %363 = select i1 %361, double %362, double %357
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  ret double %363
}

declare dso_local signext i32 @dct_luma(i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma_sp(i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma_sp2(i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local void @writeIntraPredMode_CABAC(ptr noundef, ptr noundef) #1

declare dso_local signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
define dso_local signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31568
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds i8, ptr %4, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds i8, ptr %4, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 2992
  %16 = load i32, ptr %15, align 8, !tbaa !37
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp sgt i32 %0, 7
  %21 = zext i1 %20 to i32
  %22 = tail call signext i32 @dct_chroma4x4(i32 noundef signext %2, i32 noundef signext %0, i32 noundef signext %1) #15
  %23 = zext i1 %20 to i64
  %24 = select i1 %20, i32 -8, i32 -4
  %25 = add i32 %24, %0
  %26 = shl i32 %0, 1
  %27 = and i32 %26, 2
  %28 = and i32 %1, 1
  %29 = or disjoint i32 %27, %28
  %30 = zext nneg i32 %29 to i64
  %31 = and i32 %25, -2
  %32 = ashr i32 %1, 1
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block_temp, i64 0, i64 %23, i64 %30, i64 %34
  store i32 %22, ptr %35, align 4, !tbaa !38
  %36 = load ptr, ptr @input, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 2984
  %38 = load i32, ptr %37, align 8, !tbaa !45
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = shl nuw nsw i32 %29, 4
  %42 = and i32 %0, -2
  %43 = add nsw i32 %32, %42
  %44 = or i32 %41, %43
  %45 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 7, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %44) #15
  br label %114

46:                                               ; preds = %3
  %47 = getelementptr inbounds i8, ptr %4, i64 31584
  %48 = sext i32 %13 to i64
  %49 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %47, i64 0, i64 %48
  %50 = load ptr, ptr @img, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 14136
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = sext i32 %0 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %58, i64 8
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %50, i64 76
  store i32 %32, ptr %62, align 4, !tbaa !54
  %63 = getelementptr inbounds i8, ptr %50, i64 72
  store i32 %28, ptr %63, align 8, !tbaa !55
  %64 = getelementptr inbounds i8, ptr %12, i64 72
  %65 = getelementptr inbounds i8, ptr %6, i64 24
  %66 = getelementptr inbounds i8, ptr %19, i64 40
  %67 = getelementptr inbounds i8, ptr %12, i64 44
  br label %68

68:                                               ; preds = %46, %68
  %69 = phi i64 [ 0, %46 ], [ %110, %68 ]
  %70 = phi i32 [ 0, %46 ], [ %106, %68 ]
  %71 = phi ptr [ %49, %46 ], [ %107, %68 ]
  %72 = getelementptr inbounds i32, ptr %59, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !38
  %74 = getelementptr inbounds i8, ptr %71, i64 4
  store i32 %73, ptr %74, align 4, !tbaa !41
  %75 = getelementptr inbounds i32, ptr %61, i64 %69
  %76 = load i32, ptr %75, align 4, !tbaa !38
  %77 = getelementptr inbounds i8, ptr %71, i64 8
  store i32 %76, ptr %77, align 8, !tbaa !56
  %78 = load ptr, ptr @input, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %78, i64 2984
  %80 = load i32, ptr %79, align 8, !tbaa !45
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i64 32, i64 40
  %83 = select i1 %81, ptr @levrun_linfo_inter, ptr @writeRunLevel_CABAC
  %84 = getelementptr inbounds i8, ptr %71, i64 %82
  store ptr %83, ptr %84, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %71, i64 24
  store i32 7, ptr %85, align 8, !tbaa !43
  store i32 10, ptr %71, align 8, !tbaa !44
  %86 = load i32, ptr %64, align 8, !tbaa !57
  %87 = add i32 %86, -9
  %88 = and i32 %87, -6
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load ptr, ptr @img, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %91, i64 80
  store i32 %90, ptr %92, align 8, !tbaa !58
  %93 = getelementptr inbounds i8, ptr %91, i64 84
  store i32 %21, ptr %93, align 4, !tbaa !59
  %94 = load ptr, ptr %65, align 8, !tbaa !46
  %95 = load i32, ptr %66, align 4, !tbaa !38
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.datapartition, ptr %94, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 104
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = tail call signext i32 %99(ptr noundef nonnull %71, ptr noundef %97) #15
  %101 = getelementptr inbounds i8, ptr %71, i64 12
  %102 = load i32, ptr %101, align 4, !tbaa !52
  %103 = load i32, ptr %67, align 4, !tbaa !38
  %104 = add nsw i32 %103, %102
  store i32 %104, ptr %67, align 4, !tbaa !38
  %105 = load i32, ptr %101, align 4, !tbaa !52
  %106 = add nsw i32 %105, %70
  %107 = getelementptr inbounds i8, ptr %71, i64 48
  %108 = load i32, ptr %12, align 8, !tbaa !34
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %12, align 8, !tbaa !34
  %110 = add nuw nsw i64 %69, 1
  %111 = icmp ult i64 %69, 16
  %112 = icmp ne i32 %73, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %68, label %114

114:                                              ; preds = %68, %40
  %115 = phi i32 [ %45, %40 ], [ %106, %68 ]
  %116 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  tail call void @reset_coding_state(ptr noundef %116) #15
  ret i32 %115
}

declare dso_local signext i32 @dct_chroma4x4(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @levrun_linfo_inter(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare dso_local void @writeRunLevel_CABAC(ptr noundef, ptr noundef) #1

declare dso_local void @reset_coding_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca [4 x [4 x i32]], align 4
  %14 = alloca [2 x [4 x [4 x i32]]], align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %21 = and i32 %0, 1
  %22 = shl nuw nsw i32 %21, 3
  %23 = and i32 %1, 1
  %24 = shl nuw nsw i32 %23, 2
  %25 = or disjoint i32 %24, %22
  %26 = ashr i32 %1, 1
  %27 = and i32 %0, 1073741822
  %28 = add nsw i32 %26, %27
  %29 = shl i32 %28, 2
  %30 = lshr exact i32 %25, 2
  %31 = ashr exact i32 %29, 2
  %32 = load ptr, ptr @img, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 152
  %34 = load i32, ptr %33, align 8, !tbaa !26
  %35 = add nsw i32 %34, %25
  %36 = getelementptr inbounds i8, ptr %32, i64 156
  %37 = load i32, ptr %36, align 4, !tbaa !27
  %38 = add nsw i32 %37, %29
  %39 = getelementptr inbounds i8, ptr %32, i64 168
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = add nsw i32 %40, %25
  %42 = getelementptr inbounds i8, ptr %32, i64 172
  %43 = load i32, ptr %42, align 4, !tbaa !28
  %44 = add nsw i32 %43, %29
  %45 = ashr i32 %35, 2
  %46 = ashr i32 %38, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #15
  %47 = getelementptr inbounds i8, ptr %32, i64 31576
  %48 = load ptr, ptr %47, align 8, !tbaa !32
  %49 = getelementptr inbounds i8, ptr %32, i64 12
  %50 = load i32, ptr %49, align 4, !tbaa !33
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 17
  %53 = load i32, ptr %52, align 8, !tbaa !61
  %54 = fmul double %2, 4.000000e+00
  %55 = tail call double @llvm.floor.f64(double %54)
  %56 = fptosi double %55 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20)
  %57 = or disjoint i32 %29, 1
  %58 = shl nuw nsw i32 %21, 1
  %59 = or disjoint i32 %58, %23
  %60 = add nsw i32 %57, %59
  %61 = or i32 %1, %0
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds i8, ptr %14, i64 64
  %64 = getelementptr inbounds i8, ptr %14, i64 80
  %65 = getelementptr inbounds i8, ptr %14, i64 16
  %66 = getelementptr inbounds i8, ptr %14, i64 96
  %67 = getelementptr inbounds i8, ptr %14, i64 32
  %68 = getelementptr inbounds i8, ptr %14, i64 112
  %69 = getelementptr inbounds i8, ptr %14, i64 48
  br i1 %62, label %70, label %71

70:                                               ; preds = %4
  store i64 0, ptr @Mode_Decision_for_4x4IntraBlocks.cbp_bits, align 8, !tbaa !62
  br label %71

71:                                               ; preds = %70, %4
  call void @getLuma4x4Neighbour(i32 noundef signext %50, i32 noundef signext %30, i32 noundef signext %31, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %11) #15
  %72 = load ptr, ptr @img, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 12
  %74 = load i32, ptr %73, align 4, !tbaa !33
  call void @getLuma4x4Neighbour(i32 noundef signext %74, i32 noundef signext %30, i32 noundef signext %31, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %12) #15
  %75 = load ptr, ptr @input, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %75, i64 220
  %77 = load i32, ptr %76, align 4, !tbaa !63
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %71
  %80 = load i32, ptr %11, align 4, !tbaa !64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @img, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 89192
  %85 = load ptr, ptr %84, align 8, !tbaa !66
  %86 = getelementptr inbounds i8, ptr %11, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !67
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !38
  br label %91

91:                                               ; preds = %79, %82
  %92 = phi i32 [ %90, %82 ], [ 0, %79 ]
  store i32 %92, ptr %11, align 4, !tbaa !64
  %93 = load i32, ptr %12, align 4, !tbaa !64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @img, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 89192
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  %99 = getelementptr inbounds i8, ptr %12, i64 4
  %100 = load i32, ptr %99, align 4, !tbaa !67
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %98, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !38
  br label %104

104:                                              ; preds = %91, %95
  %105 = phi i32 [ %103, %95 ], [ 0, %91 ]
  store i32 %105, ptr %12, align 4, !tbaa !64
  br label %108

106:                                              ; preds = %71
  %107 = load i32, ptr %12, align 4, !tbaa !64
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %107, %106 ], [ %105, %104 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @img, align 8, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %112, i64 104
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = getelementptr inbounds i8, ptr %12, i64 20
  %116 = load i32, ptr %115, align 4, !tbaa !69
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %114, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %12, i64 16
  %121 = load i32, ptr %120, align 4, !tbaa !70
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !20
  br label %125

125:                                              ; preds = %108, %111
  %126 = phi i8 [ %124, %111 ], [ -1, %108 ]
  %127 = load i32, ptr %11, align 4, !tbaa !64
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr @img, align 8, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %130, i64 104
  %132 = load ptr, ptr %131, align 8, !tbaa !68
  %133 = getelementptr inbounds i8, ptr %11, i64 20
  %134 = load i32, ptr %133, align 4, !tbaa !69
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %132, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %11, i64 16
  %139 = load i32, ptr %138, align 4, !tbaa !70
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %137, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !20
  br label %143

143:                                              ; preds = %129, %125
  %144 = phi i8 [ %142, %129 ], [ -1, %125 ]
  %145 = call i8 @llvm.umin.i8(i8 %126, i8 %144)
  %146 = zext i8 %145 to i32
  store i32 2147483647, ptr %3, align 4, !tbaa !38
  call void @intrapred_luma(i32 noundef signext %35, i32 noundef signext %38, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %147 = sext i32 %53 to i64
  %148 = add nsw i32 %0, 4
  %149 = add nsw i32 %0, 8
  %150 = sext i32 %0 to i64
  %151 = sext i32 %1 to i64
  %152 = sext i32 %148 to i64
  %153 = sext i32 %149 to i64
  %154 = zext nneg i32 %59 to i64
  %155 = and i32 %0, -2
  %156 = add nsw i32 %26, %155
  %157 = sext i32 %156 to i64
  %158 = sext i32 %35 to i64
  %159 = zext nneg i32 %30 to i64
  %160 = sext i32 %31 to i64
  %161 = zext nneg i32 %25 to i64
  %162 = zext nneg i32 %60 to i64
  %163 = zext nneg i32 %25 to i64
  %164 = sext i32 %41 to i64
  %165 = sext i32 %29 to i64
  %166 = sext i32 %44 to i64
  %167 = sext i32 %38 to i64
  %168 = add i32 %34, %22
  %169 = add i32 %168, %24
  %170 = sext i32 %169 to i64
  %171 = zext i8 %145 to i64
  %172 = add nsw i64 %164, 1
  %173 = or disjoint i64 %163, 1
  %174 = add nsw i64 %164, 2
  %175 = or disjoint i64 %163, 2
  %176 = add nsw i64 %164, 3
  %177 = or disjoint i64 %163, 3
  %178 = add nsw i32 %35, 3
  %179 = icmp slt i32 %169, %178
  %180 = add nsw i64 %170, 1
  %181 = add nsw i64 %170, 2
  %182 = add nsw i64 %170, 3
  %183 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level_temp, i64 0, i64 0, i64 %154, i64 %157
  %184 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level, i64 0, i64 0, i64 %154, i64 %157
  %185 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block_temp, i64 0, i64 0, i64 %154, i64 %157
  %186 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block, i64 0, i64 0, i64 %154, i64 %157
  %187 = add nsw i64 %167, 1
  %188 = getelementptr inbounds i8, ptr %13, i64 16
  %189 = add nsw i64 %167, 2
  %190 = getelementptr inbounds i8, ptr %13, i64 32
  %191 = add nsw i64 %167, 3
  %192 = getelementptr inbounds i8, ptr %13, i64 48
  %193 = add nsw i64 %167, 1
  %194 = add nsw i64 %167, 2
  %195 = add nsw i64 %167, 3
  %196 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level_temp, i64 0, i64 1, i64 %154, i64 %157
  %197 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level, i64 0, i64 1, i64 %154, i64 %157
  %198 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block_temp, i64 0, i64 1, i64 %154, i64 %157
  %199 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block, i64 0, i64 1, i64 %154, i64 %157
  %200 = getelementptr inbounds i8, ptr %13, i64 16
  %201 = getelementptr inbounds i8, ptr %13, i64 32
  %202 = getelementptr inbounds i8, ptr %13, i64 48
  %203 = add nsw i64 %164, 1
  %204 = add nsw i64 %164, 2
  %205 = add nsw i64 %164, 3
  %206 = or disjoint i64 %165, 1
  %207 = or disjoint i64 %165, 2
  %208 = or disjoint i64 %165, 3
  %209 = add nsw i64 %167, 1
  %210 = getelementptr inbounds i8, ptr %13, i64 16
  %211 = add nsw i64 %167, 2
  %212 = getelementptr inbounds i8, ptr %13, i64 32
  %213 = add nsw i64 %167, 3
  %214 = getelementptr inbounds i8, ptr %13, i64 48
  %215 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %165, i64 %161
  %216 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %206, i64 %161
  %217 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %207, i64 %161
  %218 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %208, i64 %161
  %219 = add nsw i64 %164, 1
  %220 = getelementptr inbounds i8, ptr %7, i64 4
  %221 = add nsw i64 %164, 2
  %222 = getelementptr inbounds i8, ptr %7, i64 8
  %223 = add nsw i64 %164, 3
  %224 = getelementptr inbounds i8, ptr %7, i64 12
  %225 = getelementptr inbounds i8, ptr %7, i64 16
  %226 = getelementptr inbounds i8, ptr %7, i64 20
  %227 = getelementptr inbounds i8, ptr %7, i64 24
  %228 = getelementptr inbounds i8, ptr %7, i64 28
  %229 = getelementptr inbounds i8, ptr %7, i64 32
  %230 = getelementptr inbounds i8, ptr %7, i64 36
  %231 = getelementptr inbounds i8, ptr %7, i64 40
  %232 = getelementptr inbounds i8, ptr %7, i64 44
  %233 = getelementptr inbounds i8, ptr %7, i64 48
  %234 = getelementptr inbounds i8, ptr %7, i64 52
  %235 = getelementptr inbounds i8, ptr %7, i64 56
  %236 = getelementptr inbounds i8, ptr %7, i64 60
  br label %237

237:                                              ; preds = %143, %1645
  %238 = phi i64 [ undef, %143 ], [ %1646, %1645 ]
  %239 = phi i64 [ undef, %143 ], [ %1647, %1645 ]
  %240 = phi i64 [ undef, %143 ], [ %1648, %1645 ]
  %241 = phi i64 [ undef, %143 ], [ %1649, %1645 ]
  %242 = phi i64 [ undef, %143 ], [ %1650, %1645 ]
  %243 = phi i64 [ undef, %143 ], [ %1651, %1645 ]
  %244 = phi i64 [ 0, %143 ], [ %1657, %1645 ]
  %245 = phi i32 [ 0, %143 ], [ %1656, %1645 ]
  %246 = phi i32 [ 0, %143 ], [ %1655, %1645 ]
  %247 = phi i32 [ 0, %143 ], [ %1654, %1645 ]
  %248 = phi i32 [ 0, %143 ], [ %1653, %1645 ]
  %249 = phi double [ 1.000000e+30, %143 ], [ %1652, %1645 ]
  %250 = icmp eq i64 %244, 2
  br i1 %250, label %269, label %251

251:                                              ; preds = %237
  %252 = icmp eq i64 %244, 0
  %253 = and i64 %244, 11
  %254 = icmp eq i64 %253, 3
  %255 = or i1 %252, %254
  %256 = load i32, ptr %9, align 4
  %257 = icmp ne i32 %256, 0
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %269, label %259

259:                                              ; preds = %251
  %260 = icmp eq i64 %244, 1
  %261 = icmp eq i64 %244, 8
  %262 = or i1 %260, %261
  %263 = load i32, ptr %8, align 4
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %262, i1 %264, i1 false
  br i1 %265, label %269, label %266

266:                                              ; preds = %259
  %267 = load i32, ptr %10, align 4, !tbaa !38
  %268 = icmp ne i32 %267, 0
  br label %269

269:                                              ; preds = %259, %251, %266, %237
  %270 = phi i1 [ true, %237 ], [ %268, %266 ], [ true, %251 ], [ true, %259 ]
  %271 = load ptr, ptr @input, align 8, !tbaa !6
  %272 = getelementptr inbounds i8, ptr %271, i64 3024
  %273 = load i32, ptr %272, align 8, !tbaa !71
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %269
  %276 = load ptr, ptr @img, align 8, !tbaa !6
  %277 = getelementptr inbounds i8, ptr %276, i64 24
  %278 = load i32, ptr %277, align 8, !tbaa !14
  %279 = icmp eq i32 %278, 2
  br i1 %279, label %300, label %280

280:                                              ; preds = %275, %269
  %281 = getelementptr inbounds i8, ptr %271, i64 3028
  %282 = load i32, ptr %281, align 4, !tbaa !72
  %283 = icmp ne i32 %282, 0
  %284 = icmp ult i64 %244, 2
  %285 = and i1 %284, %283
  br i1 %285, label %1645, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds i8, ptr %271, i64 3032
  %288 = load i32, ptr %287, align 8, !tbaa !73
  %289 = icmp ne i32 %288, 0
  %290 = trunc i64 %244 to i32
  %291 = add i32 %290, -3
  %292 = icmp ult i32 %291, 2
  %293 = and i1 %289, %292
  br i1 %293, label %1645, label %294

294:                                              ; preds = %286
  %295 = getelementptr inbounds i8, ptr %271, i64 3036
  %296 = load i32, ptr %295, align 4, !tbaa !74
  %297 = icmp ne i32 %296, 0
  %298 = icmp ugt i64 %244, 4
  %299 = and i1 %298, %297
  br i1 %299, label %1645, label %300

300:                                              ; preds = %294, %275
  br i1 %270, label %301, label %1645

301:                                              ; preds = %300
  %302 = getelementptr inbounds i8, ptr %271, i64 3136
  %303 = load i32, ptr %302, align 8, !tbaa !75
  %304 = icmp eq i32 %303, 0
  %305 = trunc nuw nsw i64 %244 to i32
  br i1 %304, label %306, label %442

306:                                              ; preds = %301
  %307 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %308 = load ptr, ptr @img, align 8, !tbaa !6
  %309 = getelementptr inbounds i8, ptr %308, i64 184
  %310 = getelementptr inbounds ptr, ptr %307, i64 %166
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = getelementptr inbounds i16, ptr %311, i64 %164
  %313 = load i16, ptr %312, align 2, !tbaa !25
  %314 = zext i16 %313 to i32
  %315 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 0, i64 0
  %316 = load i16, ptr %315, align 2, !tbaa !25
  %317 = zext i16 %316 to i32
  %318 = sub nsw i32 %314, %317
  store i32 %318, ptr %7, align 4, !tbaa !38
  %319 = getelementptr inbounds i16, ptr %311, i64 %219
  %320 = load i16, ptr %319, align 2, !tbaa !25
  %321 = zext i16 %320 to i32
  %322 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 0, i64 1
  %323 = load i16, ptr %322, align 2, !tbaa !25
  %324 = zext i16 %323 to i32
  %325 = sub nsw i32 %321, %324
  store i32 %325, ptr %220, align 4, !tbaa !38
  %326 = getelementptr inbounds i16, ptr %311, i64 %221
  %327 = load i16, ptr %326, align 2, !tbaa !25
  %328 = zext i16 %327 to i32
  %329 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 0, i64 2
  %330 = load i16, ptr %329, align 2, !tbaa !25
  %331 = zext i16 %330 to i32
  %332 = sub nsw i32 %328, %331
  store i32 %332, ptr %222, align 4, !tbaa !38
  %333 = getelementptr inbounds i16, ptr %311, i64 %223
  %334 = load i16, ptr %333, align 2, !tbaa !25
  %335 = zext i16 %334 to i32
  %336 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 0, i64 3
  %337 = load i16, ptr %336, align 2, !tbaa !25
  %338 = zext i16 %337 to i32
  %339 = sub nsw i32 %335, %338
  store i32 %339, ptr %224, align 4, !tbaa !38
  %340 = getelementptr ptr, ptr %307, i64 %166
  %341 = getelementptr i8, ptr %340, i64 8
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i16, ptr %342, i64 %164
  %344 = load i16, ptr %343, align 2, !tbaa !25
  %345 = zext i16 %344 to i32
  %346 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 1, i64 0
  %347 = load i16, ptr %346, align 2, !tbaa !25
  %348 = zext i16 %347 to i32
  %349 = sub nsw i32 %345, %348
  store i32 %349, ptr %225, align 4, !tbaa !38
  %350 = getelementptr inbounds i16, ptr %342, i64 %219
  %351 = load i16, ptr %350, align 2, !tbaa !25
  %352 = zext i16 %351 to i32
  %353 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 1, i64 1
  %354 = load i16, ptr %353, align 2, !tbaa !25
  %355 = zext i16 %354 to i32
  %356 = sub nsw i32 %352, %355
  store i32 %356, ptr %226, align 4, !tbaa !38
  %357 = getelementptr inbounds i16, ptr %342, i64 %221
  %358 = load i16, ptr %357, align 2, !tbaa !25
  %359 = zext i16 %358 to i32
  %360 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 1, i64 2
  %361 = load i16, ptr %360, align 2, !tbaa !25
  %362 = zext i16 %361 to i32
  %363 = sub nsw i32 %359, %362
  store i32 %363, ptr %227, align 4, !tbaa !38
  %364 = getelementptr inbounds i16, ptr %342, i64 %223
  %365 = load i16, ptr %364, align 2, !tbaa !25
  %366 = zext i16 %365 to i32
  %367 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 1, i64 3
  %368 = load i16, ptr %367, align 2, !tbaa !25
  %369 = zext i16 %368 to i32
  %370 = sub nsw i32 %366, %369
  store i32 %370, ptr %228, align 4, !tbaa !38
  %371 = getelementptr ptr, ptr %307, i64 %166
  %372 = getelementptr i8, ptr %371, i64 16
  %373 = load ptr, ptr %372, align 8, !tbaa !6
  %374 = getelementptr inbounds i16, ptr %373, i64 %164
  %375 = load i16, ptr %374, align 2, !tbaa !25
  %376 = zext i16 %375 to i32
  %377 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 2, i64 0
  %378 = load i16, ptr %377, align 2, !tbaa !25
  %379 = zext i16 %378 to i32
  %380 = sub nsw i32 %376, %379
  store i32 %380, ptr %229, align 4, !tbaa !38
  %381 = getelementptr inbounds i16, ptr %373, i64 %219
  %382 = load i16, ptr %381, align 2, !tbaa !25
  %383 = zext i16 %382 to i32
  %384 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 2, i64 1
  %385 = load i16, ptr %384, align 2, !tbaa !25
  %386 = zext i16 %385 to i32
  %387 = sub nsw i32 %383, %386
  store i32 %387, ptr %230, align 4, !tbaa !38
  %388 = getelementptr inbounds i16, ptr %373, i64 %221
  %389 = load i16, ptr %388, align 2, !tbaa !25
  %390 = zext i16 %389 to i32
  %391 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 2, i64 2
  %392 = load i16, ptr %391, align 2, !tbaa !25
  %393 = zext i16 %392 to i32
  %394 = sub nsw i32 %390, %393
  store i32 %394, ptr %231, align 4, !tbaa !38
  %395 = getelementptr inbounds i16, ptr %373, i64 %223
  %396 = load i16, ptr %395, align 2, !tbaa !25
  %397 = zext i16 %396 to i32
  %398 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 2, i64 3
  %399 = load i16, ptr %398, align 2, !tbaa !25
  %400 = zext i16 %399 to i32
  %401 = sub nsw i32 %397, %400
  store i32 %401, ptr %232, align 4, !tbaa !38
  %402 = getelementptr ptr, ptr %307, i64 %166
  %403 = getelementptr i8, ptr %402, i64 24
  %404 = load ptr, ptr %403, align 8, !tbaa !6
  %405 = getelementptr inbounds i16, ptr %404, i64 %164
  %406 = load i16, ptr %405, align 2, !tbaa !25
  %407 = zext i16 %406 to i32
  %408 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 3, i64 0
  %409 = load i16, ptr %408, align 2, !tbaa !25
  %410 = zext i16 %409 to i32
  %411 = sub nsw i32 %407, %410
  store i32 %411, ptr %233, align 4, !tbaa !38
  %412 = getelementptr inbounds i16, ptr %404, i64 %219
  %413 = load i16, ptr %412, align 2, !tbaa !25
  %414 = zext i16 %413 to i32
  %415 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 3, i64 1
  %416 = load i16, ptr %415, align 2, !tbaa !25
  %417 = zext i16 %416 to i32
  %418 = sub nsw i32 %414, %417
  store i32 %418, ptr %234, align 4, !tbaa !38
  %419 = getelementptr inbounds i16, ptr %404, i64 %221
  %420 = load i16, ptr %419, align 2, !tbaa !25
  %421 = zext i16 %420 to i32
  %422 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 3, i64 2
  %423 = load i16, ptr %422, align 2, !tbaa !25
  %424 = zext i16 %423 to i32
  %425 = sub nsw i32 %421, %424
  store i32 %425, ptr %235, align 4, !tbaa !38
  %426 = getelementptr inbounds i16, ptr %404, i64 %223
  %427 = load i16, ptr %426, align 2, !tbaa !25
  %428 = zext i16 %427 to i32
  %429 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %309, i64 0, i64 %244, i64 3, i64 3
  %430 = load i16, ptr %429, align 2, !tbaa !25
  %431 = zext i16 %430 to i32
  %432 = sub nsw i32 %428, %431
  store i32 %432, ptr %236, align 4, !tbaa !38
  %433 = icmp eq i64 %244, %171
  %434 = select i1 %433, i32 0, i32 %56
  %435 = getelementptr inbounds i8, ptr %271, i64 24
  %436 = load i32, ptr %435, align 8, !tbaa !76
  %437 = call signext i32 @SATD(ptr noundef nonnull %7, i32 noundef signext %436) #15
  %438 = add nsw i32 %437, %434
  %439 = load i32, ptr %3, align 4, !tbaa !38
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %1645

441:                                              ; preds = %306
  store i32 %438, ptr %3, align 4, !tbaa !38
  br label %1645

442:                                              ; preds = %301
  %443 = load ptr, ptr @img, align 8, !tbaa !6
  %444 = getelementptr inbounds i8, ptr %443, i64 90572
  %445 = load i32, ptr %444, align 4, !tbaa !39
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %456, label %447

447:                                              ; preds = %442
  %448 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %449 = load ptr, ptr %448, align 8, !tbaa !6
  %450 = getelementptr inbounds i8, ptr %443, i64 8504
  %451 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %452 = getelementptr inbounds i8, ptr %443, i64 184
  %453 = getelementptr inbounds i8, ptr %448, i64 8
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  %455 = getelementptr inbounds i8, ptr %443, i64 10552
  br label %945

456:                                              ; preds = %442
  %457 = getelementptr inbounds i8, ptr %443, i64 12600
  %458 = getelementptr inbounds [16 x [16 x i16]], ptr %457, i64 0, i64 %165, i64 %161
  %459 = getelementptr inbounds i8, ptr %443, i64 184
  %460 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %459, i64 0, i64 %244, i64 0
  %461 = load i64, ptr %460, align 8
  store i64 %461, ptr %458, align 2
  %462 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %463 = getelementptr inbounds ptr, ptr %462, i64 %166
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = load ptr, ptr @img, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 184
  %467 = getelementptr inbounds i8, ptr %465, i64 13112
  %468 = getelementptr inbounds i16, ptr %464, i64 %164
  %469 = load i16, ptr %468, align 2, !tbaa !25
  %470 = zext i16 %469 to i32
  %471 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %466, i64 0, i64 %244, i64 0, i64 0
  %472 = load i16, ptr %471, align 2, !tbaa !25
  %473 = zext i16 %472 to i32
  %474 = sub nsw i32 %470, %473
  store i32 %474, ptr %467, align 4, !tbaa !38
  %475 = getelementptr inbounds i16, ptr %464, i64 %203
  %476 = load i16, ptr %475, align 2, !tbaa !25
  %477 = zext i16 %476 to i32
  %478 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %466, i64 0, i64 %244, i64 0, i64 1
  %479 = load i16, ptr %478, align 2, !tbaa !25
  %480 = zext i16 %479 to i32
  %481 = sub nsw i32 %477, %480
  %482 = getelementptr inbounds i8, ptr %465, i64 13116
  store i32 %481, ptr %482, align 4, !tbaa !38
  %483 = getelementptr inbounds i16, ptr %464, i64 %204
  %484 = load i16, ptr %483, align 2, !tbaa !25
  %485 = zext i16 %484 to i32
  %486 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %466, i64 0, i64 %244, i64 0, i64 2
  %487 = load i16, ptr %486, align 2, !tbaa !25
  %488 = zext i16 %487 to i32
  %489 = sub nsw i32 %485, %488
  %490 = getelementptr inbounds i8, ptr %465, i64 13120
  store i32 %489, ptr %490, align 4, !tbaa !38
  %491 = getelementptr inbounds i16, ptr %464, i64 %205
  %492 = load i16, ptr %491, align 2, !tbaa !25
  %493 = zext i16 %492 to i32
  %494 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %466, i64 0, i64 %244, i64 0, i64 3
  %495 = load i16, ptr %494, align 2, !tbaa !25
  %496 = zext i16 %495 to i32
  %497 = sub nsw i32 %493, %496
  %498 = getelementptr inbounds i8, ptr %465, i64 13124
  store i32 %497, ptr %498, align 4, !tbaa !38
  %499 = getelementptr inbounds i8, ptr %465, i64 12600
  %500 = getelementptr inbounds [16 x [16 x i16]], ptr %499, i64 0, i64 %206, i64 %161
  %501 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %466, i64 0, i64 %244, i64 1
  %502 = load i64, ptr %501, align 8
  store i64 %502, ptr %500, align 2
  %503 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %504 = getelementptr ptr, ptr %503, i64 %166
  %505 = getelementptr i8, ptr %504, i64 8
  %506 = load ptr, ptr %505, align 8, !tbaa !6
  %507 = load ptr, ptr @img, align 8, !tbaa !6
  %508 = getelementptr inbounds i8, ptr %507, i64 184
  %509 = getelementptr inbounds i16, ptr %506, i64 %164
  %510 = load i16, ptr %509, align 2, !tbaa !25
  %511 = zext i16 %510 to i32
  %512 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %508, i64 0, i64 %244, i64 1, i64 0
  %513 = load i16, ptr %512, align 2, !tbaa !25
  %514 = zext i16 %513 to i32
  %515 = sub nsw i32 %511, %514
  %516 = getelementptr inbounds i8, ptr %507, i64 13176
  store i32 %515, ptr %516, align 4, !tbaa !38
  %517 = getelementptr inbounds i16, ptr %506, i64 %203
  %518 = load i16, ptr %517, align 2, !tbaa !25
  %519 = zext i16 %518 to i32
  %520 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %508, i64 0, i64 %244, i64 1, i64 1
  %521 = load i16, ptr %520, align 2, !tbaa !25
  %522 = zext i16 %521 to i32
  %523 = sub nsw i32 %519, %522
  %524 = getelementptr inbounds i8, ptr %507, i64 13180
  store i32 %523, ptr %524, align 4, !tbaa !38
  %525 = getelementptr inbounds i16, ptr %506, i64 %204
  %526 = load i16, ptr %525, align 2, !tbaa !25
  %527 = zext i16 %526 to i32
  %528 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %508, i64 0, i64 %244, i64 1, i64 2
  %529 = load i16, ptr %528, align 2, !tbaa !25
  %530 = zext i16 %529 to i32
  %531 = sub nsw i32 %527, %530
  %532 = getelementptr inbounds i8, ptr %507, i64 13184
  store i32 %531, ptr %532, align 4, !tbaa !38
  %533 = getelementptr inbounds i16, ptr %506, i64 %205
  %534 = load i16, ptr %533, align 2, !tbaa !25
  %535 = zext i16 %534 to i32
  %536 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %508, i64 0, i64 %244, i64 1, i64 3
  %537 = load i16, ptr %536, align 2, !tbaa !25
  %538 = zext i16 %537 to i32
  %539 = sub nsw i32 %535, %538
  %540 = getelementptr inbounds i8, ptr %507, i64 13188
  store i32 %539, ptr %540, align 4, !tbaa !38
  %541 = getelementptr inbounds i8, ptr %507, i64 12600
  %542 = getelementptr inbounds [16 x [16 x i16]], ptr %541, i64 0, i64 %207, i64 %161
  %543 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %508, i64 0, i64 %244, i64 2
  %544 = load i64, ptr %543, align 8
  store i64 %544, ptr %542, align 2
  %545 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %546 = getelementptr ptr, ptr %545, i64 %166
  %547 = getelementptr i8, ptr %546, i64 16
  %548 = load ptr, ptr %547, align 8, !tbaa !6
  %549 = load ptr, ptr @img, align 8, !tbaa !6
  %550 = getelementptr inbounds i8, ptr %549, i64 184
  %551 = getelementptr inbounds i16, ptr %548, i64 %164
  %552 = load i16, ptr %551, align 2, !tbaa !25
  %553 = zext i16 %552 to i32
  %554 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %550, i64 0, i64 %244, i64 2, i64 0
  %555 = load i16, ptr %554, align 2, !tbaa !25
  %556 = zext i16 %555 to i32
  %557 = sub nsw i32 %553, %556
  %558 = getelementptr inbounds i8, ptr %549, i64 13240
  store i32 %557, ptr %558, align 4, !tbaa !38
  %559 = getelementptr inbounds i16, ptr %548, i64 %203
  %560 = load i16, ptr %559, align 2, !tbaa !25
  %561 = zext i16 %560 to i32
  %562 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %550, i64 0, i64 %244, i64 2, i64 1
  %563 = load i16, ptr %562, align 2, !tbaa !25
  %564 = zext i16 %563 to i32
  %565 = sub nsw i32 %561, %564
  %566 = getelementptr inbounds i8, ptr %549, i64 13244
  store i32 %565, ptr %566, align 4, !tbaa !38
  %567 = getelementptr inbounds i16, ptr %548, i64 %204
  %568 = load i16, ptr %567, align 2, !tbaa !25
  %569 = zext i16 %568 to i32
  %570 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %550, i64 0, i64 %244, i64 2, i64 2
  %571 = load i16, ptr %570, align 2, !tbaa !25
  %572 = zext i16 %571 to i32
  %573 = sub nsw i32 %569, %572
  %574 = getelementptr inbounds i8, ptr %549, i64 13248
  store i32 %573, ptr %574, align 4, !tbaa !38
  %575 = getelementptr inbounds i16, ptr %548, i64 %205
  %576 = load i16, ptr %575, align 2, !tbaa !25
  %577 = zext i16 %576 to i32
  %578 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %550, i64 0, i64 %244, i64 2, i64 3
  %579 = load i16, ptr %578, align 2, !tbaa !25
  %580 = zext i16 %579 to i32
  %581 = sub nsw i32 %577, %580
  %582 = getelementptr inbounds i8, ptr %549, i64 13252
  store i32 %581, ptr %582, align 4, !tbaa !38
  %583 = getelementptr inbounds i8, ptr %549, i64 12600
  %584 = getelementptr inbounds [16 x [16 x i16]], ptr %583, i64 0, i64 %208, i64 %161
  %585 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %550, i64 0, i64 %244, i64 3
  %586 = load i64, ptr %585, align 8
  store i64 %586, ptr %584, align 2
  %587 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %588 = getelementptr ptr, ptr %587, i64 %166
  %589 = getelementptr i8, ptr %588, i64 24
  %590 = load ptr, ptr %589, align 8, !tbaa !6
  %591 = load ptr, ptr @img, align 8, !tbaa !6
  %592 = getelementptr inbounds i8, ptr %591, i64 184
  %593 = getelementptr inbounds i16, ptr %590, i64 %164
  %594 = load i16, ptr %593, align 2, !tbaa !25
  %595 = zext i16 %594 to i32
  %596 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %592, i64 0, i64 %244, i64 3, i64 0
  %597 = load i16, ptr %596, align 2, !tbaa !25
  %598 = zext i16 %597 to i32
  %599 = sub nsw i32 %595, %598
  %600 = getelementptr inbounds i8, ptr %591, i64 13304
  store i32 %599, ptr %600, align 4, !tbaa !38
  %601 = getelementptr inbounds i16, ptr %590, i64 %203
  %602 = load i16, ptr %601, align 2, !tbaa !25
  %603 = zext i16 %602 to i32
  %604 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %592, i64 0, i64 %244, i64 3, i64 1
  %605 = load i16, ptr %604, align 2, !tbaa !25
  %606 = zext i16 %605 to i32
  %607 = sub nsw i32 %603, %606
  %608 = getelementptr inbounds i8, ptr %591, i64 13308
  store i32 %607, ptr %608, align 4, !tbaa !38
  %609 = getelementptr inbounds i16, ptr %590, i64 %204
  %610 = load i16, ptr %609, align 2, !tbaa !25
  %611 = zext i16 %610 to i32
  %612 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %592, i64 0, i64 %244, i64 3, i64 2
  %613 = load i16, ptr %612, align 2, !tbaa !25
  %614 = zext i16 %613 to i32
  %615 = sub nsw i32 %611, %614
  %616 = getelementptr inbounds i8, ptr %591, i64 13312
  store i32 %615, ptr %616, align 4, !tbaa !38
  %617 = getelementptr inbounds i16, ptr %590, i64 %205
  %618 = load i16, ptr %617, align 2, !tbaa !25
  %619 = zext i16 %618 to i32
  %620 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %592, i64 0, i64 %244, i64 3, i64 3
  %621 = load i16, ptr %620, align 2, !tbaa !25
  %622 = zext i16 %621 to i32
  %623 = sub nsw i32 %619, %622
  %624 = getelementptr inbounds i8, ptr %591, i64 13316
  store i32 %623, ptr %624, align 4, !tbaa !38
  %625 = load i64, ptr @Mode_Decision_for_4x4IntraBlocks.cbp_bits, align 8, !tbaa !62
  %626 = getelementptr inbounds i8, ptr %591, i64 31576
  %627 = load ptr, ptr %626, align 8, !tbaa !32
  %628 = getelementptr inbounds i8, ptr %591, i64 12
  %629 = load i32, ptr %628, align 4, !tbaa !33
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.macroblock, ptr %627, i64 %630, i32 16
  store i64 %625, ptr %631, align 8, !tbaa !77
  %632 = call double @RDCost_for_4x4IntraBlocks(ptr noundef nonnull %6, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %305, double noundef %2, double poison, i32 noundef signext %146)
  %633 = fcmp olt double %632, %249
  br i1 %633, label %634, label %747

634:                                              ; preds = %456
  %635 = load ptr, ptr @cofAC4x4, align 8, !tbaa !6
  %636 = load ptr, ptr %635, align 8, !tbaa !6
  %637 = load ptr, ptr @img, align 8, !tbaa !6
  %638 = getelementptr inbounds i8, ptr %637, i64 14136
  %639 = load ptr, ptr %638, align 8, !tbaa !53
  %640 = getelementptr inbounds ptr, ptr %639, i64 %150
  %641 = load ptr, ptr %640, align 8, !tbaa !6
  %642 = getelementptr inbounds ptr, ptr %641, i64 %151
  %643 = load ptr, ptr %642, align 8, !tbaa !6
  %644 = load ptr, ptr %643, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %636, ptr noundef nonnull align 4 dereferenceable(72) %644, i64 72, i1 false)
  %645 = getelementptr inbounds i8, ptr %635, i64 8
  %646 = load ptr, ptr %645, align 8, !tbaa !6
  %647 = load ptr, ptr @img, align 8, !tbaa !6
  %648 = getelementptr inbounds i8, ptr %647, i64 14136
  %649 = load ptr, ptr %648, align 8, !tbaa !53
  %650 = getelementptr inbounds ptr, ptr %649, i64 %150
  %651 = load ptr, ptr %650, align 8, !tbaa !6
  %652 = getelementptr inbounds ptr, ptr %651, i64 %151
  %653 = load ptr, ptr %652, align 8, !tbaa !6
  %654 = getelementptr inbounds i8, ptr %653, i64 8
  %655 = load ptr, ptr %654, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %646, ptr noundef nonnull align 4 dereferenceable(72) %655, i64 72, i1 false)
  %656 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %657 = getelementptr inbounds i8, ptr %656, i64 6424
  %658 = load ptr, ptr %657, align 8, !tbaa !29
  %659 = load ptr, ptr @img, align 8, !tbaa !6
  %660 = getelementptr inbounds i8, ptr %659, i64 24
  %661 = load i32, ptr %660, align 8, !tbaa !14
  %662 = icmp ne i32 %661, 3
  %663 = load i32, ptr @si_frame_indicator, align 4
  %664 = icmp ne i32 %663, 0
  %665 = select i1 %662, i1 true, i1 %664
  %666 = load i32, ptr @sp2_frame_indicator, align 4
  %667 = icmp ne i32 %666, 0
  %668 = select i1 %665, i1 true, i1 %667
  %669 = getelementptr inbounds ptr, ptr %658, i64 %167
  %670 = load ptr, ptr %669, align 8, !tbaa !6
  %671 = getelementptr inbounds i16, ptr %670, i64 %158
  %672 = load i64, ptr %671, align 2
  br i1 %668, label %673, label %689

673:                                              ; preds = %634
  %674 = getelementptr ptr, ptr %658, i64 %167
  %675 = getelementptr i8, ptr %674, i64 8
  %676 = load ptr, ptr %675, align 8, !tbaa !6
  %677 = getelementptr inbounds i16, ptr %676, i64 %158
  %678 = load i64, ptr %677, align 2
  %679 = getelementptr ptr, ptr %658, i64 %167
  %680 = getelementptr i8, ptr %679, i64 16
  %681 = load ptr, ptr %680, align 8, !tbaa !6
  %682 = getelementptr inbounds i16, ptr %681, i64 %158
  %683 = load i64, ptr %682, align 2
  %684 = getelementptr ptr, ptr %658, i64 %167
  %685 = getelementptr i8, ptr %684, i64 24
  %686 = load ptr, ptr %685, align 8, !tbaa !6
  %687 = getelementptr inbounds i16, ptr %686, i64 %158
  %688 = load i64, ptr %687, align 2
  br label %715

689:                                              ; preds = %634
  %690 = load ptr, ptr @lrec, align 8
  %691 = getelementptr inbounds ptr, ptr %690, i64 %167
  %692 = load ptr, ptr %691, align 8, !tbaa !6
  %693 = getelementptr inbounds i32, ptr %692, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %693, i64 16, i1 false)
  %694 = getelementptr inbounds ptr, ptr %658, i64 %209
  %695 = load ptr, ptr %694, align 8, !tbaa !6
  %696 = getelementptr inbounds i16, ptr %695, i64 %158
  %697 = load i64, ptr %696, align 2
  %698 = getelementptr inbounds ptr, ptr %690, i64 %209
  %699 = load ptr, ptr %698, align 8, !tbaa !6
  %700 = getelementptr inbounds i32, ptr %699, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %210, ptr noundef nonnull align 4 dereferenceable(16) %700, i64 16, i1 false)
  %701 = getelementptr inbounds ptr, ptr %658, i64 %211
  %702 = load ptr, ptr %701, align 8, !tbaa !6
  %703 = getelementptr inbounds i16, ptr %702, i64 %158
  %704 = load i64, ptr %703, align 2
  %705 = getelementptr inbounds ptr, ptr %690, i64 %211
  %706 = load ptr, ptr %705, align 8, !tbaa !6
  %707 = getelementptr inbounds i32, ptr %706, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %212, ptr noundef nonnull align 4 dereferenceable(16) %707, i64 16, i1 false)
  %708 = getelementptr inbounds ptr, ptr %658, i64 %213
  %709 = load ptr, ptr %708, align 8, !tbaa !6
  %710 = getelementptr inbounds i16, ptr %709, i64 %158
  %711 = load i64, ptr %710, align 2
  %712 = getelementptr inbounds ptr, ptr %690, i64 %213
  %713 = load ptr, ptr %712, align 8, !tbaa !6
  %714 = getelementptr inbounds i32, ptr %713, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %214, ptr noundef nonnull align 4 dereferenceable(16) %714, i64 16, i1 false)
  br label %715

715:                                              ; preds = %673, %689
  %716 = phi i64 [ %688, %673 ], [ %711, %689 ]
  %717 = phi i64 [ %678, %673 ], [ %697, %689 ]
  %718 = phi i64 [ %683, %673 ], [ %704, %689 ]
  %719 = load i32, ptr %6, align 4, !tbaa !38
  %720 = getelementptr inbounds i8, ptr %659, i64 128
  %721 = load ptr, ptr %720, align 8, !tbaa !78
  %722 = getelementptr inbounds i8, ptr %659, i64 12
  %723 = load i32, ptr %722, align 4, !tbaa !33
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds ptr, ptr %721, i64 %724
  %726 = load ptr, ptr %725, align 8, !tbaa !6
  %727 = getelementptr inbounds ptr, ptr %726, i64 %159
  %728 = load ptr, ptr %727, align 8, !tbaa !6
  %729 = getelementptr inbounds i32, ptr %728, i64 %160
  %730 = load i32, ptr %729, align 4, !tbaa !38
  %731 = getelementptr inbounds i8, ptr %659, i64 31576
  %732 = load ptr, ptr %731, align 8, !tbaa !32
  %733 = getelementptr inbounds %struct.macroblock, ptr %732, i64 %724, i32 16
  %734 = load i64, ptr %733, align 8, !tbaa !77
  %735 = lshr i64 %734, %162
  %736 = trunc i64 %735 to i32
  %737 = and i32 %736, 1
  %738 = getelementptr inbounds i8, ptr %659, i64 90212
  %739 = load i32, ptr %738, align 4, !tbaa !79
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %747, label %741

741:                                              ; preds = %715
  %742 = getelementptr inbounds i8, ptr %659, i64 15176
  %743 = getelementptr inbounds [16 x [16 x i32]], ptr %742, i64 0, i64 %165, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %215, ptr noundef nonnull align 4 dereferenceable(16) %743, i64 16, i1 false)
  %744 = getelementptr inbounds [16 x [16 x i32]], ptr %742, i64 0, i64 %206, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %216, ptr noundef nonnull align 4 dereferenceable(16) %744, i64 16, i1 false)
  %745 = getelementptr inbounds [16 x [16 x i32]], ptr %742, i64 0, i64 %207, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %217, ptr noundef nonnull align 4 dereferenceable(16) %745, i64 16, i1 false)
  %746 = getelementptr inbounds [16 x [16 x i32]], ptr %742, i64 0, i64 %208, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %218, ptr noundef nonnull align 4 dereferenceable(16) %746, i64 16, i1 false)
  br label %747

747:                                              ; preds = %741, %715, %456
  %748 = phi i64 [ %716, %715 ], [ %716, %741 ], [ %240, %456 ]
  %749 = phi i64 [ %718, %715 ], [ %718, %741 ], [ %241, %456 ]
  %750 = phi i64 [ %717, %715 ], [ %717, %741 ], [ %242, %456 ]
  %751 = phi i64 [ %672, %715 ], [ %672, %741 ], [ %243, %456 ]
  %752 = phi double [ %632, %715 ], [ %632, %741 ], [ %249, %456 ]
  %753 = phi i32 [ %719, %715 ], [ %719, %741 ], [ %248, %456 ]
  %754 = phi i32 [ %730, %715 ], [ %730, %741 ], [ %247, %456 ]
  %755 = phi i32 [ %737, %715 ], [ %737, %741 ], [ %246, %456 ]
  %756 = phi i32 [ %305, %715 ], [ %305, %741 ], [ %245, %456 ]
  %757 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %757) #15
  br label %1645

758:                                              ; preds = %945
  %759 = getelementptr inbounds i8, ptr %443, i64 13112
  %760 = load i32, ptr @resTrans_G, align 4, !tbaa !38
  store i32 %760, ptr %759, align 4, !tbaa !38
  %761 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 4), align 4, !tbaa !38
  %762 = getelementptr inbounds i8, ptr %443, i64 13116
  store i32 %761, ptr %762, align 4, !tbaa !38
  %763 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 8), align 4, !tbaa !38
  %764 = getelementptr inbounds i8, ptr %443, i64 13120
  store i32 %763, ptr %764, align 4, !tbaa !38
  %765 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 12), align 4, !tbaa !38
  %766 = getelementptr inbounds i8, ptr %443, i64 13124
  store i32 %765, ptr %766, align 4, !tbaa !38
  %767 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 64), align 4, !tbaa !38
  %768 = getelementptr inbounds i8, ptr %443, i64 13176
  store i32 %767, ptr %768, align 4, !tbaa !38
  %769 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 68), align 4, !tbaa !38
  %770 = getelementptr inbounds i8, ptr %443, i64 13180
  store i32 %769, ptr %770, align 4, !tbaa !38
  %771 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 72), align 4, !tbaa !38
  %772 = getelementptr inbounds i8, ptr %443, i64 13184
  store i32 %771, ptr %772, align 4, !tbaa !38
  %773 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 76), align 4, !tbaa !38
  %774 = getelementptr inbounds i8, ptr %443, i64 13188
  store i32 %773, ptr %774, align 4, !tbaa !38
  %775 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 128), align 4, !tbaa !38
  %776 = getelementptr inbounds i8, ptr %443, i64 13240
  store i32 %775, ptr %776, align 4, !tbaa !38
  %777 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 132), align 4, !tbaa !38
  %778 = getelementptr inbounds i8, ptr %443, i64 13244
  store i32 %777, ptr %778, align 4, !tbaa !38
  %779 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 136), align 4, !tbaa !38
  %780 = getelementptr inbounds i8, ptr %443, i64 13248
  store i32 %779, ptr %780, align 4, !tbaa !38
  %781 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 140), align 4, !tbaa !38
  %782 = getelementptr inbounds i8, ptr %443, i64 13252
  store i32 %781, ptr %782, align 4, !tbaa !38
  %783 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 192), align 4, !tbaa !38
  %784 = getelementptr inbounds i8, ptr %443, i64 13304
  store i32 %783, ptr %784, align 4, !tbaa !38
  %785 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 196), align 4, !tbaa !38
  %786 = getelementptr inbounds i8, ptr %443, i64 13308
  store i32 %785, ptr %786, align 4, !tbaa !38
  %787 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 200), align 4, !tbaa !38
  %788 = getelementptr inbounds i8, ptr %443, i64 13312
  store i32 %787, ptr %788, align 4, !tbaa !38
  %789 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 204), align 4, !tbaa !38
  %790 = getelementptr inbounds i8, ptr %443, i64 13316
  store i32 %789, ptr %790, align 4, !tbaa !38
  %791 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @store_coding_state(ptr noundef %791) #15
  %792 = call double @RDCost_for_4x4IntraBlocks(ptr noundef nonnull %6, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %305, double noundef %2, double poison, i32 noundef signext %146)
  %793 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %793) #15
  %794 = load ptr, ptr @img, align 8, !tbaa !6
  %795 = getelementptr inbounds i8, ptr %794, i64 13112
  %796 = load i32, ptr %795, align 4, !tbaa !38
  store i32 %796, ptr @rec_resG, align 4, !tbaa !38
  %797 = load i32, ptr @resTrans_B, align 4, !tbaa !38
  store i32 %797, ptr %795, align 4, !tbaa !38
  %798 = getelementptr inbounds i8, ptr %794, i64 13116
  %799 = load i32, ptr %798, align 4, !tbaa !38
  store i32 %799, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 4), align 4, !tbaa !38
  %800 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 4), align 4, !tbaa !38
  store i32 %800, ptr %798, align 4, !tbaa !38
  %801 = getelementptr inbounds i8, ptr %794, i64 13120
  %802 = load i32, ptr %801, align 4, !tbaa !38
  store i32 %802, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 8), align 4, !tbaa !38
  %803 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 8), align 4, !tbaa !38
  store i32 %803, ptr %801, align 4, !tbaa !38
  %804 = getelementptr inbounds i8, ptr %794, i64 13124
  %805 = load i32, ptr %804, align 4, !tbaa !38
  store i32 %805, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 12), align 4, !tbaa !38
  %806 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 12), align 4, !tbaa !38
  store i32 %806, ptr %804, align 4, !tbaa !38
  %807 = getelementptr inbounds i8, ptr %794, i64 13176
  %808 = load i32, ptr %807, align 4, !tbaa !38
  store i32 %808, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 64), align 4, !tbaa !38
  %809 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 64), align 4, !tbaa !38
  store i32 %809, ptr %807, align 4, !tbaa !38
  %810 = getelementptr inbounds i8, ptr %794, i64 13180
  %811 = load i32, ptr %810, align 4, !tbaa !38
  store i32 %811, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 68), align 4, !tbaa !38
  %812 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 68), align 4, !tbaa !38
  store i32 %812, ptr %810, align 4, !tbaa !38
  %813 = getelementptr inbounds i8, ptr %794, i64 13184
  %814 = load i32, ptr %813, align 4, !tbaa !38
  store i32 %814, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 72), align 4, !tbaa !38
  %815 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 72), align 4, !tbaa !38
  store i32 %815, ptr %813, align 4, !tbaa !38
  %816 = getelementptr inbounds i8, ptr %794, i64 13188
  %817 = load i32, ptr %816, align 4, !tbaa !38
  store i32 %817, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 76), align 4, !tbaa !38
  %818 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 76), align 4, !tbaa !38
  store i32 %818, ptr %816, align 4, !tbaa !38
  %819 = getelementptr inbounds i8, ptr %794, i64 13240
  %820 = load i32, ptr %819, align 4, !tbaa !38
  store i32 %820, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 128), align 4, !tbaa !38
  %821 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 128), align 4, !tbaa !38
  store i32 %821, ptr %819, align 4, !tbaa !38
  %822 = getelementptr inbounds i8, ptr %794, i64 13244
  %823 = load i32, ptr %822, align 4, !tbaa !38
  store i32 %823, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 132), align 4, !tbaa !38
  %824 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 132), align 4, !tbaa !38
  store i32 %824, ptr %822, align 4, !tbaa !38
  %825 = getelementptr inbounds i8, ptr %794, i64 13248
  %826 = load i32, ptr %825, align 4, !tbaa !38
  store i32 %826, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 136), align 4, !tbaa !38
  %827 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 136), align 4, !tbaa !38
  store i32 %827, ptr %825, align 4, !tbaa !38
  %828 = getelementptr inbounds i8, ptr %794, i64 13252
  %829 = load i32, ptr %828, align 4, !tbaa !38
  store i32 %829, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 140), align 4, !tbaa !38
  %830 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 140), align 4, !tbaa !38
  store i32 %830, ptr %828, align 4, !tbaa !38
  %831 = getelementptr inbounds i8, ptr %794, i64 13304
  %832 = load i32, ptr %831, align 4, !tbaa !38
  store i32 %832, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 192), align 4, !tbaa !38
  %833 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 192), align 4, !tbaa !38
  store i32 %833, ptr %831, align 4, !tbaa !38
  %834 = getelementptr inbounds i8, ptr %794, i64 13308
  %835 = load i32, ptr %834, align 4, !tbaa !38
  store i32 %835, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 196), align 4, !tbaa !38
  %836 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 196), align 4, !tbaa !38
  store i32 %836, ptr %834, align 4, !tbaa !38
  %837 = getelementptr inbounds i8, ptr %794, i64 13312
  %838 = load i32, ptr %837, align 4, !tbaa !38
  store i32 %838, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 200), align 4, !tbaa !38
  %839 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 200), align 4, !tbaa !38
  store i32 %839, ptr %837, align 4, !tbaa !38
  %840 = getelementptr inbounds i8, ptr %794, i64 13316
  %841 = load i32, ptr %840, align 4, !tbaa !38
  store i32 %841, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 204), align 4, !tbaa !38
  %842 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 204), align 4, !tbaa !38
  store i32 %842, ptr %840, align 4, !tbaa !38
  %843 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %148, i32 noundef signext %1, i32 noundef signext 0)
  %844 = load ptr, ptr @img, align 8, !tbaa !6
  %845 = getelementptr inbounds i8, ptr %844, i64 13112
  %846 = load i32, ptr %845, align 4, !tbaa !38
  store i32 %846, ptr @rec_resB, align 4, !tbaa !38
  %847 = load i32, ptr @resTrans_R, align 4, !tbaa !38
  store i32 %847, ptr %845, align 4, !tbaa !38
  %848 = getelementptr inbounds i8, ptr %844, i64 13116
  %849 = load i32, ptr %848, align 4, !tbaa !38
  store i32 %849, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 4), align 4, !tbaa !38
  %850 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 4), align 4, !tbaa !38
  store i32 %850, ptr %848, align 4, !tbaa !38
  %851 = getelementptr inbounds i8, ptr %844, i64 13120
  %852 = load i32, ptr %851, align 4, !tbaa !38
  store i32 %852, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 8), align 4, !tbaa !38
  %853 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 8), align 4, !tbaa !38
  store i32 %853, ptr %851, align 4, !tbaa !38
  %854 = getelementptr inbounds i8, ptr %844, i64 13124
  %855 = load i32, ptr %854, align 4, !tbaa !38
  store i32 %855, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 12), align 4, !tbaa !38
  %856 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 12), align 4, !tbaa !38
  store i32 %856, ptr %854, align 4, !tbaa !38
  %857 = getelementptr inbounds i8, ptr %844, i64 13176
  %858 = load i32, ptr %857, align 4, !tbaa !38
  store i32 %858, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 64), align 4, !tbaa !38
  %859 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 64), align 4, !tbaa !38
  store i32 %859, ptr %857, align 4, !tbaa !38
  %860 = getelementptr inbounds i8, ptr %844, i64 13180
  %861 = load i32, ptr %860, align 4, !tbaa !38
  store i32 %861, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 68), align 4, !tbaa !38
  %862 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 68), align 4, !tbaa !38
  store i32 %862, ptr %860, align 4, !tbaa !38
  %863 = getelementptr inbounds i8, ptr %844, i64 13184
  %864 = load i32, ptr %863, align 4, !tbaa !38
  store i32 %864, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 72), align 4, !tbaa !38
  %865 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 72), align 4, !tbaa !38
  store i32 %865, ptr %863, align 4, !tbaa !38
  %866 = getelementptr inbounds i8, ptr %844, i64 13188
  %867 = load i32, ptr %866, align 4, !tbaa !38
  store i32 %867, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 76), align 4, !tbaa !38
  %868 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 76), align 4, !tbaa !38
  store i32 %868, ptr %866, align 4, !tbaa !38
  %869 = getelementptr inbounds i8, ptr %844, i64 13240
  %870 = load i32, ptr %869, align 4, !tbaa !38
  store i32 %870, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 128), align 4, !tbaa !38
  %871 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 128), align 4, !tbaa !38
  store i32 %871, ptr %869, align 4, !tbaa !38
  %872 = getelementptr inbounds i8, ptr %844, i64 13244
  %873 = load i32, ptr %872, align 4, !tbaa !38
  store i32 %873, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 132), align 4, !tbaa !38
  %874 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 132), align 4, !tbaa !38
  store i32 %874, ptr %872, align 4, !tbaa !38
  %875 = getelementptr inbounds i8, ptr %844, i64 13248
  %876 = load i32, ptr %875, align 4, !tbaa !38
  store i32 %876, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 136), align 4, !tbaa !38
  %877 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 136), align 4, !tbaa !38
  store i32 %877, ptr %875, align 4, !tbaa !38
  %878 = getelementptr inbounds i8, ptr %844, i64 13252
  %879 = load i32, ptr %878, align 4, !tbaa !38
  store i32 %879, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 140), align 4, !tbaa !38
  %880 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 140), align 4, !tbaa !38
  store i32 %880, ptr %878, align 4, !tbaa !38
  %881 = getelementptr inbounds i8, ptr %844, i64 13304
  %882 = load i32, ptr %881, align 4, !tbaa !38
  store i32 %882, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 192), align 4, !tbaa !38
  %883 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 192), align 4, !tbaa !38
  store i32 %883, ptr %881, align 4, !tbaa !38
  %884 = getelementptr inbounds i8, ptr %844, i64 13308
  %885 = load i32, ptr %884, align 4, !tbaa !38
  store i32 %885, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 196), align 4, !tbaa !38
  %886 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 196), align 4, !tbaa !38
  store i32 %886, ptr %884, align 4, !tbaa !38
  %887 = getelementptr inbounds i8, ptr %844, i64 13312
  %888 = load i32, ptr %887, align 4, !tbaa !38
  store i32 %888, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 200), align 4, !tbaa !38
  %889 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 200), align 4, !tbaa !38
  store i32 %889, ptr %887, align 4, !tbaa !38
  %890 = getelementptr inbounds i8, ptr %844, i64 13316
  %891 = load i32, ptr %890, align 4, !tbaa !38
  store i32 %891, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 204), align 4, !tbaa !38
  %892 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 204), align 4, !tbaa !38
  store i32 %892, ptr %890, align 4, !tbaa !38
  %893 = fptosi double %792 to i32
  %894 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %149, i32 noundef signext %1, i32 noundef signext 1)
  %895 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %895) #15
  %896 = load ptr, ptr @img, align 8, !tbaa !6
  %897 = getelementptr inbounds i8, ptr %896, i64 13112
  %898 = load i32, ptr %897, align 4, !tbaa !38
  store i32 %898, ptr @rec_resR, align 4, !tbaa !38
  %899 = getelementptr inbounds i8, ptr %896, i64 13116
  %900 = load i32, ptr %899, align 4, !tbaa !38
  store i32 %900, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 4), align 4, !tbaa !38
  %901 = getelementptr inbounds i8, ptr %896, i64 13120
  %902 = load i32, ptr %901, align 4, !tbaa !38
  store i32 %902, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 8), align 4, !tbaa !38
  %903 = getelementptr inbounds i8, ptr %896, i64 13124
  %904 = load i32, ptr %903, align 4, !tbaa !38
  store i32 %904, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 12), align 4, !tbaa !38
  %905 = getelementptr inbounds i8, ptr %896, i64 13176
  %906 = load i32, ptr %905, align 4, !tbaa !38
  store i32 %906, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 64), align 4, !tbaa !38
  %907 = getelementptr inbounds i8, ptr %896, i64 13180
  %908 = load i32, ptr %907, align 4, !tbaa !38
  store i32 %908, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 68), align 4, !tbaa !38
  %909 = getelementptr inbounds i8, ptr %896, i64 13184
  %910 = load i32, ptr %909, align 4, !tbaa !38
  store i32 %910, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 72), align 4, !tbaa !38
  %911 = getelementptr inbounds i8, ptr %896, i64 13188
  %912 = load i32, ptr %911, align 4, !tbaa !38
  store i32 %912, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 76), align 4, !tbaa !38
  %913 = getelementptr inbounds i8, ptr %896, i64 13240
  %914 = load i32, ptr %913, align 4, !tbaa !38
  store i32 %914, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 128), align 4, !tbaa !38
  %915 = getelementptr inbounds i8, ptr %896, i64 13244
  %916 = load i32, ptr %915, align 4, !tbaa !38
  store i32 %916, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 132), align 4, !tbaa !38
  %917 = getelementptr inbounds i8, ptr %896, i64 13248
  %918 = load i32, ptr %917, align 4, !tbaa !38
  store i32 %918, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 136), align 4, !tbaa !38
  %919 = getelementptr inbounds i8, ptr %896, i64 13252
  %920 = load i32, ptr %919, align 4, !tbaa !38
  store i32 %920, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 140), align 4, !tbaa !38
  %921 = getelementptr inbounds i8, ptr %896, i64 13304
  %922 = load i32, ptr %921, align 4, !tbaa !38
  store i32 %922, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 192), align 4, !tbaa !38
  %923 = getelementptr inbounds i8, ptr %896, i64 13308
  %924 = load i32, ptr %923, align 4, !tbaa !38
  store i32 %924, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 196), align 4, !tbaa !38
  %925 = getelementptr inbounds i8, ptr %896, i64 13312
  %926 = load i32, ptr %925, align 4, !tbaa !38
  store i32 %926, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 200), align 4, !tbaa !38
  %927 = getelementptr inbounds i8, ptr %896, i64 13316
  %928 = load i32, ptr %927, align 4, !tbaa !38
  store i32 %928, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 204), align 4, !tbaa !38
  %929 = add nsw i32 %843, %893
  %930 = getelementptr inbounds i8, ptr %896, i64 90536
  %931 = load i32, ptr %930, align 8, !tbaa !80
  %932 = getelementptr inbounds i8, ptr %896, i64 8504
  %933 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %934 = getelementptr inbounds i8, ptr %933, i64 6464
  %935 = load ptr, ptr %934, align 8, !tbaa !81
  %936 = load ptr, ptr %935, align 8, !tbaa !6
  %937 = getelementptr inbounds i8, ptr %896, i64 90532
  %938 = load i32, ptr %937, align 4, !tbaa !82
  %939 = getelementptr inbounds i8, ptr %896, i64 184
  %940 = getelementptr inbounds i8, ptr %933, i64 6424
  %941 = load ptr, ptr %940, align 8, !tbaa !29
  %942 = getelementptr inbounds i8, ptr %896, i64 10552
  %943 = getelementptr inbounds i8, ptr %935, i64 8
  %944 = load ptr, ptr %943, align 8, !tbaa !6
  br label %1085

945:                                              ; preds = %447, %945
  %946 = phi i64 [ 0, %447 ], [ %1075, %945 ]
  %947 = add nsw i64 %946, %166
  %948 = getelementptr inbounds ptr, ptr %449, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !6
  %950 = or disjoint i64 %946, %165
  %951 = getelementptr inbounds ptr, ptr %451, i64 %947
  %952 = load ptr, ptr %951, align 8, !tbaa !6
  %953 = getelementptr inbounds ptr, ptr %454, i64 %947
  %954 = load ptr, ptr %953, align 8, !tbaa !6
  %955 = getelementptr inbounds i16, ptr %949, i64 %164
  %956 = load i16, ptr %955, align 2, !tbaa !25
  %957 = zext i16 %956 to i32
  %958 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %450, i64 0, i64 %147, i64 %950, i64 %163
  %959 = load i16, ptr %958, align 2, !tbaa !25
  %960 = zext i16 %959 to i32
  %961 = sub nsw i32 %957, %960
  %962 = getelementptr inbounds i16, ptr %952, i64 %164
  %963 = load i16, ptr %962, align 2, !tbaa !25
  %964 = zext i16 %963 to i32
  %965 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %452, i64 0, i64 %244, i64 %946, i64 0
  %966 = load i16, ptr %965, align 2, !tbaa !25
  %967 = zext i16 %966 to i32
  %968 = getelementptr inbounds i16, ptr %954, i64 %164
  %969 = load i16, ptr %968, align 2, !tbaa !25
  %970 = zext i16 %969 to i32
  %971 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %455, i64 0, i64 %147, i64 %950, i64 %163
  %972 = load i16, ptr %971, align 2, !tbaa !25
  %973 = zext i16 %972 to i32
  %974 = add nsw i32 %961, %973
  %975 = sub nsw i32 %970, %974
  %976 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %946, i64 0
  store i32 %975, ptr %976, align 4, !tbaa !38
  %977 = ashr i32 %975, 1
  %978 = add nsw i32 %977, %961
  %979 = add nsw i32 %978, %967
  %980 = sub nsw i32 %964, %979
  %981 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %946, i64 0
  store i32 %980, ptr %981, align 4, !tbaa !38
  %982 = ashr i32 %980, 1
  %983 = add nsw i32 %982, %978
  %984 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %946, i64 0
  store i32 %983, ptr %984, align 4, !tbaa !38
  %985 = getelementptr inbounds i16, ptr %949, i64 %172
  %986 = load i16, ptr %985, align 2, !tbaa !25
  %987 = zext i16 %986 to i32
  %988 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %450, i64 0, i64 %147, i64 %950, i64 %173
  %989 = load i16, ptr %988, align 2, !tbaa !25
  %990 = zext i16 %989 to i32
  %991 = sub nsw i32 %987, %990
  %992 = getelementptr inbounds i16, ptr %952, i64 %172
  %993 = load i16, ptr %992, align 2, !tbaa !25
  %994 = zext i16 %993 to i32
  %995 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %452, i64 0, i64 %244, i64 %946, i64 1
  %996 = load i16, ptr %995, align 2, !tbaa !25
  %997 = zext i16 %996 to i32
  %998 = getelementptr inbounds i16, ptr %954, i64 %172
  %999 = load i16, ptr %998, align 2, !tbaa !25
  %1000 = zext i16 %999 to i32
  %1001 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %455, i64 0, i64 %147, i64 %950, i64 %173
  %1002 = load i16, ptr %1001, align 2, !tbaa !25
  %1003 = zext i16 %1002 to i32
  %1004 = add nsw i32 %991, %1003
  %1005 = sub nsw i32 %1000, %1004
  %1006 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %946, i64 1
  store i32 %1005, ptr %1006, align 4, !tbaa !38
  %1007 = ashr i32 %1005, 1
  %1008 = add nsw i32 %1007, %991
  %1009 = add nsw i32 %1008, %997
  %1010 = sub nsw i32 %994, %1009
  %1011 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %946, i64 1
  store i32 %1010, ptr %1011, align 4, !tbaa !38
  %1012 = ashr i32 %1010, 1
  %1013 = add nsw i32 %1012, %1008
  %1014 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %946, i64 1
  store i32 %1013, ptr %1014, align 4, !tbaa !38
  %1015 = getelementptr inbounds i16, ptr %949, i64 %174
  %1016 = load i16, ptr %1015, align 2, !tbaa !25
  %1017 = zext i16 %1016 to i32
  %1018 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %450, i64 0, i64 %147, i64 %950, i64 %175
  %1019 = load i16, ptr %1018, align 2, !tbaa !25
  %1020 = zext i16 %1019 to i32
  %1021 = sub nsw i32 %1017, %1020
  %1022 = getelementptr inbounds i16, ptr %952, i64 %174
  %1023 = load i16, ptr %1022, align 2, !tbaa !25
  %1024 = zext i16 %1023 to i32
  %1025 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %452, i64 0, i64 %244, i64 %946, i64 2
  %1026 = load i16, ptr %1025, align 2, !tbaa !25
  %1027 = zext i16 %1026 to i32
  %1028 = getelementptr inbounds i16, ptr %954, i64 %174
  %1029 = load i16, ptr %1028, align 2, !tbaa !25
  %1030 = zext i16 %1029 to i32
  %1031 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %455, i64 0, i64 %147, i64 %950, i64 %175
  %1032 = load i16, ptr %1031, align 2, !tbaa !25
  %1033 = zext i16 %1032 to i32
  %1034 = add nsw i32 %1021, %1033
  %1035 = sub nsw i32 %1030, %1034
  %1036 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %946, i64 2
  store i32 %1035, ptr %1036, align 4, !tbaa !38
  %1037 = ashr i32 %1035, 1
  %1038 = add nsw i32 %1037, %1021
  %1039 = add nsw i32 %1038, %1027
  %1040 = sub nsw i32 %1024, %1039
  %1041 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %946, i64 2
  store i32 %1040, ptr %1041, align 4, !tbaa !38
  %1042 = ashr i32 %1040, 1
  %1043 = add nsw i32 %1042, %1038
  %1044 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %946, i64 2
  store i32 %1043, ptr %1044, align 4, !tbaa !38
  %1045 = getelementptr inbounds i16, ptr %949, i64 %176
  %1046 = load i16, ptr %1045, align 2, !tbaa !25
  %1047 = zext i16 %1046 to i32
  %1048 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %450, i64 0, i64 %147, i64 %950, i64 %177
  %1049 = load i16, ptr %1048, align 2, !tbaa !25
  %1050 = zext i16 %1049 to i32
  %1051 = sub nsw i32 %1047, %1050
  %1052 = getelementptr inbounds i16, ptr %952, i64 %176
  %1053 = load i16, ptr %1052, align 2, !tbaa !25
  %1054 = zext i16 %1053 to i32
  %1055 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %452, i64 0, i64 %244, i64 %946, i64 3
  %1056 = load i16, ptr %1055, align 2, !tbaa !25
  %1057 = zext i16 %1056 to i32
  %1058 = getelementptr inbounds i16, ptr %954, i64 %176
  %1059 = load i16, ptr %1058, align 2, !tbaa !25
  %1060 = zext i16 %1059 to i32
  %1061 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %455, i64 0, i64 %147, i64 %950, i64 %177
  %1062 = load i16, ptr %1061, align 2, !tbaa !25
  %1063 = zext i16 %1062 to i32
  %1064 = add nsw i32 %1051, %1063
  %1065 = sub nsw i32 %1060, %1064
  %1066 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %946, i64 3
  store i32 %1065, ptr %1066, align 4, !tbaa !38
  %1067 = ashr i32 %1065, 1
  %1068 = add nsw i32 %1067, %1051
  %1069 = add nsw i32 %1068, %1057
  %1070 = sub nsw i32 %1054, %1069
  %1071 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %946, i64 3
  store i32 %1070, ptr %1071, align 4, !tbaa !38
  %1072 = ashr i32 %1070, 1
  %1073 = add nsw i32 %1072, %1068
  %1074 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %946, i64 3
  store i32 %1073, ptr %1074, align 4, !tbaa !38
  %1075 = add nuw nsw i64 %946, 1
  %1076 = icmp eq i64 %1075, 4
  br i1 %1076, label %758, label %945

1077:                                             ; preds = %1137
  %1078 = getelementptr inbounds i8, ptr %896, i64 89184
  %1079 = load ptr, ptr %1078, align 8, !tbaa !40
  %1080 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1081 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %1082 = load ptr, ptr %1081, align 8, !tbaa !6
  %1083 = getelementptr inbounds i8, ptr %1081, i64 8
  %1084 = load ptr, ptr %1083, align 8, !tbaa !6
  br label %1140

1085:                                             ; preds = %758, %1137
  %1086 = phi i64 [ 0, %758 ], [ %1138, %1137 ]
  %1087 = or disjoint i64 %1086, %165
  %1088 = add nsw i64 %1086, %167
  %1089 = getelementptr inbounds ptr, ptr %936, i64 %1088
  %1090 = load ptr, ptr %1089, align 8, !tbaa !6
  %1091 = getelementptr inbounds ptr, ptr %941, i64 %1088
  %1092 = load ptr, ptr %1091, align 8, !tbaa !6
  %1093 = getelementptr inbounds ptr, ptr %944, i64 %1088
  %1094 = load ptr, ptr %1093, align 8, !tbaa !6
  br label %1095

1095:                                             ; preds = %1085, %1095
  %1096 = phi i64 [ 0, %1085 ], [ %1135, %1095 ]
  %1097 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1086, i64 %1096
  %1098 = load i32, ptr %1097, align 4, !tbaa !38
  %1099 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1086, i64 %1096
  %1100 = load i32, ptr %1099, align 4, !tbaa !38
  %1101 = ashr i32 %1100, 1
  %1102 = sub nsw i32 %1098, %1101
  %1103 = add nsw i32 %1102, %1100
  %1104 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1086, i64 %1096
  %1105 = load i32, ptr %1104, align 4, !tbaa !38
  %1106 = ashr i32 %1105, 1
  %1107 = sub nsw i32 %1102, %1106
  %1108 = add nsw i32 %1107, %1105
  %1109 = or disjoint i64 %1096, %163
  %1110 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %932, i64 0, i64 %147, i64 %1087, i64 %1109
  %1111 = load i16, ptr %1110, align 2, !tbaa !25
  %1112 = zext i16 %1111 to i32
  %1113 = add nsw i32 %1107, %1112
  %1114 = call i32 @llvm.smax.i32(i32 %1113, i32 0)
  %1115 = call i32 @llvm.smin.i32(i32 %931, i32 %1114)
  %1116 = trunc i32 %1115 to i16
  %1117 = add nsw i64 %1096, %158
  %1118 = getelementptr inbounds i16, ptr %1090, i64 %1117
  store i16 %1116, ptr %1118, align 2, !tbaa !25
  %1119 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %939, i64 0, i64 %244, i64 %1086, i64 %1096
  %1120 = load i16, ptr %1119, align 2, !tbaa !25
  %1121 = zext i16 %1120 to i32
  %1122 = add nsw i32 %1103, %1121
  %1123 = call i32 @llvm.smax.i32(i32 %1122, i32 0)
  %1124 = call i32 @llvm.smin.i32(i32 %938, i32 %1123)
  %1125 = trunc i32 %1124 to i16
  %1126 = getelementptr inbounds i16, ptr %1092, i64 %1117
  store i16 %1125, ptr %1126, align 2, !tbaa !25
  %1127 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %942, i64 0, i64 %147, i64 %1087, i64 %1109
  %1128 = load i16, ptr %1127, align 2, !tbaa !25
  %1129 = zext i16 %1128 to i32
  %1130 = add nsw i32 %1108, %1129
  %1131 = call i32 @llvm.smax.i32(i32 %1130, i32 0)
  %1132 = call i32 @llvm.smin.i32(i32 %931, i32 %1131)
  %1133 = trunc i32 %1132 to i16
  %1134 = getelementptr inbounds i16, ptr %1094, i64 %1117
  store i16 %1133, ptr %1134, align 2, !tbaa !25
  %1135 = add nuw nsw i64 %1096, 1
  %1136 = icmp eq i64 %1135, 4
  br i1 %1136, label %1137, label %1095

1137:                                             ; preds = %1095
  %1138 = add nuw nsw i64 %1086, 1
  %1139 = icmp eq i64 %1138, 4
  br i1 %1139, label %1077, label %1085

1140:                                             ; preds = %1077, %1289
  %1141 = phi i64 [ 0, %1077 ], [ %1291, %1289 ]
  %1142 = phi i64 [ 0, %1077 ], [ %1290, %1289 ]
  %1143 = add nsw i64 %1141, %167
  %1144 = getelementptr inbounds ptr, ptr %1080, i64 %1143
  %1145 = load ptr, ptr %1144, align 8, !tbaa !6
  %1146 = getelementptr inbounds ptr, ptr %941, i64 %1143
  %1147 = load ptr, ptr %1146, align 8, !tbaa !6
  %1148 = getelementptr inbounds ptr, ptr %1082, i64 %1143
  %1149 = load ptr, ptr %1148, align 8, !tbaa !6
  %1150 = getelementptr inbounds ptr, ptr %936, i64 %1143
  %1151 = load ptr, ptr %1150, align 8, !tbaa !6
  %1152 = getelementptr inbounds ptr, ptr %1084, i64 %1143
  %1153 = load ptr, ptr %1152, align 8, !tbaa !6
  %1154 = getelementptr inbounds ptr, ptr %944, i64 %1143
  %1155 = load ptr, ptr %1154, align 8, !tbaa !6
  %1156 = getelementptr inbounds i16, ptr %1145, i64 %170
  %1157 = load i16, ptr %1156, align 2, !tbaa !25
  %1158 = zext i16 %1157 to i64
  %1159 = getelementptr inbounds i16, ptr %1147, i64 %170
  %1160 = load i16, ptr %1159, align 2, !tbaa !25
  %1161 = zext i16 %1160 to i64
  %1162 = sub nsw i64 %1158, %1161
  %1163 = getelementptr inbounds i32, ptr %1079, i64 %1162
  %1164 = load i32, ptr %1163, align 4, !tbaa !38
  %1165 = sext i32 %1164 to i64
  %1166 = add nsw i64 %1142, %1165
  %1167 = getelementptr inbounds i16, ptr %1149, i64 %170
  %1168 = load i16, ptr %1167, align 2, !tbaa !25
  %1169 = zext i16 %1168 to i64
  %1170 = getelementptr inbounds i16, ptr %1151, i64 %170
  %1171 = load i16, ptr %1170, align 2, !tbaa !25
  %1172 = zext i16 %1171 to i64
  %1173 = sub nsw i64 %1169, %1172
  %1174 = getelementptr inbounds i32, ptr %1079, i64 %1173
  %1175 = load i32, ptr %1174, align 4, !tbaa !38
  %1176 = sext i32 %1175 to i64
  %1177 = add nsw i64 %1166, %1176
  %1178 = getelementptr inbounds i16, ptr %1153, i64 %170
  %1179 = load i16, ptr %1178, align 2, !tbaa !25
  %1180 = zext i16 %1179 to i64
  %1181 = getelementptr inbounds i16, ptr %1155, i64 %170
  %1182 = load i16, ptr %1181, align 2, !tbaa !25
  %1183 = zext i16 %1182 to i64
  %1184 = sub nsw i64 %1180, %1183
  %1185 = getelementptr inbounds i32, ptr %1079, i64 %1184
  %1186 = load i32, ptr %1185, align 4, !tbaa !38
  %1187 = sext i32 %1186 to i64
  %1188 = add nsw i64 %1177, %1187
  br i1 %179, label %1189, label %1289

1189:                                             ; preds = %1140
  %1190 = getelementptr inbounds i16, ptr %1145, i64 %180
  %1191 = load i16, ptr %1190, align 2, !tbaa !25
  %1192 = zext i16 %1191 to i64
  %1193 = getelementptr inbounds i16, ptr %1147, i64 %180
  %1194 = load i16, ptr %1193, align 2, !tbaa !25
  %1195 = zext i16 %1194 to i64
  %1196 = sub nsw i64 %1192, %1195
  %1197 = getelementptr inbounds i32, ptr %1079, i64 %1196
  %1198 = load i32, ptr %1197, align 4, !tbaa !38
  %1199 = sext i32 %1198 to i64
  %1200 = add nsw i64 %1188, %1199
  %1201 = getelementptr inbounds i16, ptr %1149, i64 %180
  %1202 = load i16, ptr %1201, align 2, !tbaa !25
  %1203 = zext i16 %1202 to i64
  %1204 = getelementptr inbounds i16, ptr %1151, i64 %180
  %1205 = load i16, ptr %1204, align 2, !tbaa !25
  %1206 = zext i16 %1205 to i64
  %1207 = sub nsw i64 %1203, %1206
  %1208 = getelementptr inbounds i32, ptr %1079, i64 %1207
  %1209 = load i32, ptr %1208, align 4, !tbaa !38
  %1210 = sext i32 %1209 to i64
  %1211 = add nsw i64 %1200, %1210
  %1212 = getelementptr inbounds i16, ptr %1153, i64 %180
  %1213 = load i16, ptr %1212, align 2, !tbaa !25
  %1214 = zext i16 %1213 to i64
  %1215 = getelementptr inbounds i16, ptr %1155, i64 %180
  %1216 = load i16, ptr %1215, align 2, !tbaa !25
  %1217 = zext i16 %1216 to i64
  %1218 = sub nsw i64 %1214, %1217
  %1219 = getelementptr inbounds i32, ptr %1079, i64 %1218
  %1220 = load i32, ptr %1219, align 4, !tbaa !38
  %1221 = sext i32 %1220 to i64
  %1222 = add nsw i64 %1211, %1221
  %1223 = getelementptr inbounds i16, ptr %1145, i64 %181
  %1224 = load i16, ptr %1223, align 2, !tbaa !25
  %1225 = zext i16 %1224 to i64
  %1226 = getelementptr inbounds i16, ptr %1147, i64 %181
  %1227 = load i16, ptr %1226, align 2, !tbaa !25
  %1228 = zext i16 %1227 to i64
  %1229 = sub nsw i64 %1225, %1228
  %1230 = getelementptr inbounds i32, ptr %1079, i64 %1229
  %1231 = load i32, ptr %1230, align 4, !tbaa !38
  %1232 = sext i32 %1231 to i64
  %1233 = add nsw i64 %1222, %1232
  %1234 = getelementptr inbounds i16, ptr %1149, i64 %181
  %1235 = load i16, ptr %1234, align 2, !tbaa !25
  %1236 = zext i16 %1235 to i64
  %1237 = getelementptr inbounds i16, ptr %1151, i64 %181
  %1238 = load i16, ptr %1237, align 2, !tbaa !25
  %1239 = zext i16 %1238 to i64
  %1240 = sub nsw i64 %1236, %1239
  %1241 = getelementptr inbounds i32, ptr %1079, i64 %1240
  %1242 = load i32, ptr %1241, align 4, !tbaa !38
  %1243 = sext i32 %1242 to i64
  %1244 = add nsw i64 %1233, %1243
  %1245 = getelementptr inbounds i16, ptr %1153, i64 %181
  %1246 = load i16, ptr %1245, align 2, !tbaa !25
  %1247 = zext i16 %1246 to i64
  %1248 = getelementptr inbounds i16, ptr %1155, i64 %181
  %1249 = load i16, ptr %1248, align 2, !tbaa !25
  %1250 = zext i16 %1249 to i64
  %1251 = sub nsw i64 %1247, %1250
  %1252 = getelementptr inbounds i32, ptr %1079, i64 %1251
  %1253 = load i32, ptr %1252, align 4, !tbaa !38
  %1254 = sext i32 %1253 to i64
  %1255 = add nsw i64 %1244, %1254
  %1256 = getelementptr inbounds i16, ptr %1145, i64 %182
  %1257 = load i16, ptr %1256, align 2, !tbaa !25
  %1258 = zext i16 %1257 to i64
  %1259 = getelementptr inbounds i16, ptr %1147, i64 %182
  %1260 = load i16, ptr %1259, align 2, !tbaa !25
  %1261 = zext i16 %1260 to i64
  %1262 = sub nsw i64 %1258, %1261
  %1263 = getelementptr inbounds i32, ptr %1079, i64 %1262
  %1264 = load i32, ptr %1263, align 4, !tbaa !38
  %1265 = sext i32 %1264 to i64
  %1266 = add nsw i64 %1255, %1265
  %1267 = getelementptr inbounds i16, ptr %1149, i64 %182
  %1268 = load i16, ptr %1267, align 2, !tbaa !25
  %1269 = zext i16 %1268 to i64
  %1270 = getelementptr inbounds i16, ptr %1151, i64 %182
  %1271 = load i16, ptr %1270, align 2, !tbaa !25
  %1272 = zext i16 %1271 to i64
  %1273 = sub nsw i64 %1269, %1272
  %1274 = getelementptr inbounds i32, ptr %1079, i64 %1273
  %1275 = load i32, ptr %1274, align 4, !tbaa !38
  %1276 = sext i32 %1275 to i64
  %1277 = add nsw i64 %1266, %1276
  %1278 = getelementptr inbounds i16, ptr %1153, i64 %182
  %1279 = load i16, ptr %1278, align 2, !tbaa !25
  %1280 = zext i16 %1279 to i64
  %1281 = getelementptr inbounds i16, ptr %1155, i64 %182
  %1282 = load i16, ptr %1281, align 2, !tbaa !25
  %1283 = zext i16 %1282 to i64
  %1284 = sub nsw i64 %1280, %1283
  %1285 = getelementptr inbounds i32, ptr %1079, i64 %1284
  %1286 = load i32, ptr %1285, align 4, !tbaa !38
  %1287 = sext i32 %1286 to i64
  %1288 = add nsw i64 %1277, %1287
  br label %1289

1289:                                             ; preds = %1189, %1140
  %1290 = phi i64 [ %1188, %1140 ], [ %1288, %1189 ]
  %1291 = add nuw nsw i64 %1141, 1
  %1292 = icmp eq i64 %1291, 4
  br i1 %1292, label %1293, label %1140

1293:                                             ; preds = %1289
  %1294 = add nsw i32 %929, %894
  %1295 = sitofp i64 %1290 to double
  %1296 = sitofp i32 %1294 to double
  %1297 = call double @llvm.fmuladd.f64(double %2, double %1296, double %1295)
  %1298 = fcmp olt double %1297, %249
  br i1 %1298, label %1299, label %1645

1299:                                             ; preds = %1293
  %1300 = load ptr, ptr @img, align 8, !tbaa !6
  %1301 = getelementptr inbounds i8, ptr %1300, i64 14136
  %1302 = load ptr, ptr %1301, align 8, !tbaa !53
  %1303 = getelementptr inbounds ptr, ptr %1302, i64 %150
  %1304 = load ptr, ptr %1303, align 8, !tbaa !6
  %1305 = getelementptr inbounds ptr, ptr %1304, i64 %151
  %1306 = load ptr, ptr %1305, align 8, !tbaa !6
  %1307 = load ptr, ptr @cofAC4x4, align 8, !tbaa !6
  %1308 = getelementptr inbounds ptr, ptr %1302, i64 %152
  %1309 = load ptr, ptr %1308, align 8, !tbaa !6
  %1310 = getelementptr inbounds ptr, ptr %1309, i64 %151
  %1311 = load ptr, ptr %1310, align 8, !tbaa !6
  %1312 = getelementptr inbounds ptr, ptr %1302, i64 %153
  %1313 = load ptr, ptr %1312, align 8, !tbaa !6
  %1314 = getelementptr inbounds ptr, ptr %1313, i64 %151
  %1315 = load ptr, ptr %1314, align 8, !tbaa !6
  br label %1351

1316:                                             ; preds = %1351
  %1317 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1318 = getelementptr inbounds i8, ptr %1317, i64 6464
  %1319 = load ptr, ptr %1318, align 8, !tbaa !81
  %1320 = load ptr, ptr @img, align 8, !tbaa !6
  %1321 = getelementptr inbounds i8, ptr %1320, i64 24
  %1322 = load i32, ptr @si_frame_indicator, align 4
  %1323 = icmp ne i32 %1322, 0
  %1324 = load i32, ptr @sp2_frame_indicator, align 4
  %1325 = icmp ne i32 %1324, 0
  %1326 = load ptr, ptr @lrec, align 8
  %1327 = load i32, ptr %183, align 4, !tbaa !38
  store i32 %1327, ptr %184, align 4, !tbaa !38
  %1328 = load i32, ptr %185, align 4, !tbaa !38
  store i32 %1328, ptr %186, align 4, !tbaa !38
  %1329 = load ptr, ptr %1319, align 8, !tbaa !6
  %1330 = load i32, ptr %1321, align 8, !tbaa !14
  %1331 = icmp ne i32 %1330, 3
  %1332 = select i1 %1331, i1 true, i1 %1323
  %1333 = select i1 %1332, i1 true, i1 %1325
  %1334 = getelementptr inbounds ptr, ptr %1329, i64 %167
  %1335 = load ptr, ptr %1334, align 8, !tbaa !6
  %1336 = getelementptr inbounds i16, ptr %1335, i64 %158
  %1337 = load i64, ptr %1336, align 2
  br i1 %1333, label %1338, label %1520

1338:                                             ; preds = %1316
  %1339 = getelementptr inbounds ptr, ptr %1329, i64 %193
  %1340 = load ptr, ptr %1339, align 8, !tbaa !6
  %1341 = getelementptr inbounds i16, ptr %1340, i64 %158
  %1342 = load i64, ptr %1341, align 2
  store i64 %1342, ptr %15, align 8
  %1343 = getelementptr inbounds ptr, ptr %1329, i64 %194
  %1344 = load ptr, ptr %1343, align 8, !tbaa !6
  %1345 = getelementptr inbounds i16, ptr %1344, i64 %158
  %1346 = load i64, ptr %1345, align 2
  store i64 %1346, ptr %16, align 8
  %1347 = getelementptr inbounds ptr, ptr %1329, i64 %195
  %1348 = load ptr, ptr %1347, align 8, !tbaa !6
  %1349 = getelementptr inbounds i16, ptr %1348, i64 %158
  %1350 = load i64, ptr %1349, align 2
  store i64 %1350, ptr %17, align 8
  br label %1545

1351:                                             ; preds = %1299, %1351
  %1352 = phi i1 [ true, %1299 ], [ false, %1351 ]
  %1353 = phi i64 [ 0, %1299 ], [ 1, %1351 ]
  %1354 = getelementptr inbounds ptr, ptr %1306, i64 %1353
  %1355 = load ptr, ptr %1354, align 8, !tbaa !6
  %1356 = getelementptr inbounds ptr, ptr %1307, i64 %1353
  %1357 = load ptr, ptr %1356, align 8, !tbaa !6
  %1358 = load i32, ptr %1355, align 4, !tbaa !38
  store i32 %1358, ptr %1357, align 4, !tbaa !38
  %1359 = getelementptr inbounds i8, ptr %1355, i64 4
  %1360 = load i32, ptr %1359, align 4, !tbaa !38
  %1361 = getelementptr inbounds i8, ptr %1357, i64 4
  store i32 %1360, ptr %1361, align 4, !tbaa !38
  %1362 = getelementptr inbounds i8, ptr %1355, i64 8
  %1363 = load i32, ptr %1362, align 4, !tbaa !38
  %1364 = getelementptr inbounds i8, ptr %1357, i64 8
  store i32 %1363, ptr %1364, align 4, !tbaa !38
  %1365 = getelementptr inbounds i8, ptr %1355, i64 12
  %1366 = load i32, ptr %1365, align 4, !tbaa !38
  %1367 = getelementptr inbounds i8, ptr %1357, i64 12
  store i32 %1366, ptr %1367, align 4, !tbaa !38
  %1368 = getelementptr inbounds i8, ptr %1355, i64 16
  %1369 = load i32, ptr %1368, align 4, !tbaa !38
  %1370 = getelementptr inbounds i8, ptr %1357, i64 16
  store i32 %1369, ptr %1370, align 4, !tbaa !38
  %1371 = getelementptr inbounds i8, ptr %1355, i64 20
  %1372 = load i32, ptr %1371, align 4, !tbaa !38
  %1373 = getelementptr inbounds i8, ptr %1357, i64 20
  store i32 %1372, ptr %1373, align 4, !tbaa !38
  %1374 = getelementptr inbounds i8, ptr %1355, i64 24
  %1375 = load i32, ptr %1374, align 4, !tbaa !38
  %1376 = getelementptr inbounds i8, ptr %1357, i64 24
  store i32 %1375, ptr %1376, align 4, !tbaa !38
  %1377 = getelementptr inbounds i8, ptr %1355, i64 28
  %1378 = load i32, ptr %1377, align 4, !tbaa !38
  %1379 = getelementptr inbounds i8, ptr %1357, i64 28
  store i32 %1378, ptr %1379, align 4, !tbaa !38
  %1380 = getelementptr inbounds i8, ptr %1355, i64 32
  %1381 = load i32, ptr %1380, align 4, !tbaa !38
  %1382 = getelementptr inbounds i8, ptr %1357, i64 32
  store i32 %1381, ptr %1382, align 4, !tbaa !38
  %1383 = getelementptr inbounds i8, ptr %1355, i64 36
  %1384 = load i32, ptr %1383, align 4, !tbaa !38
  %1385 = getelementptr inbounds i8, ptr %1357, i64 36
  store i32 %1384, ptr %1385, align 4, !tbaa !38
  %1386 = getelementptr inbounds i8, ptr %1355, i64 40
  %1387 = load i32, ptr %1386, align 4, !tbaa !38
  %1388 = getelementptr inbounds i8, ptr %1357, i64 40
  store i32 %1387, ptr %1388, align 4, !tbaa !38
  %1389 = getelementptr inbounds i8, ptr %1355, i64 44
  %1390 = load i32, ptr %1389, align 4, !tbaa !38
  %1391 = getelementptr inbounds i8, ptr %1357, i64 44
  store i32 %1390, ptr %1391, align 4, !tbaa !38
  %1392 = getelementptr inbounds i8, ptr %1355, i64 48
  %1393 = load i32, ptr %1392, align 4, !tbaa !38
  %1394 = getelementptr inbounds i8, ptr %1357, i64 48
  store i32 %1393, ptr %1394, align 4, !tbaa !38
  %1395 = getelementptr inbounds i8, ptr %1355, i64 52
  %1396 = load i32, ptr %1395, align 4, !tbaa !38
  %1397 = getelementptr inbounds i8, ptr %1357, i64 52
  store i32 %1396, ptr %1397, align 4, !tbaa !38
  %1398 = getelementptr inbounds i8, ptr %1355, i64 56
  %1399 = load i32, ptr %1398, align 4, !tbaa !38
  %1400 = getelementptr inbounds i8, ptr %1357, i64 56
  store i32 %1399, ptr %1400, align 4, !tbaa !38
  %1401 = getelementptr inbounds i8, ptr %1355, i64 60
  %1402 = load i32, ptr %1401, align 4, !tbaa !38
  %1403 = getelementptr inbounds i8, ptr %1357, i64 60
  store i32 %1402, ptr %1403, align 4, !tbaa !38
  %1404 = getelementptr inbounds i8, ptr %1355, i64 64
  %1405 = load i32, ptr %1404, align 4, !tbaa !38
  %1406 = getelementptr inbounds i8, ptr %1357, i64 64
  store i32 %1405, ptr %1406, align 4, !tbaa !38
  %1407 = getelementptr inbounds i8, ptr %1355, i64 68
  %1408 = load i32, ptr %1407, align 4, !tbaa !38
  %1409 = getelementptr inbounds i8, ptr %1357, i64 68
  store i32 %1408, ptr %1409, align 4, !tbaa !38
  %1410 = getelementptr inbounds ptr, ptr %1311, i64 %1353
  %1411 = load ptr, ptr %1410, align 8, !tbaa !6
  %1412 = load i32, ptr %1411, align 4, !tbaa !38
  %1413 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 0
  store i32 %1412, ptr %1413, align 4, !tbaa !38
  %1414 = getelementptr inbounds i8, ptr %1411, i64 4
  %1415 = load i32, ptr %1414, align 4, !tbaa !38
  %1416 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 1
  store i32 %1415, ptr %1416, align 4, !tbaa !38
  %1417 = getelementptr inbounds i8, ptr %1411, i64 8
  %1418 = load i32, ptr %1417, align 4, !tbaa !38
  %1419 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 2
  store i32 %1418, ptr %1419, align 4, !tbaa !38
  %1420 = getelementptr inbounds i8, ptr %1411, i64 12
  %1421 = load i32, ptr %1420, align 4, !tbaa !38
  %1422 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 3
  store i32 %1421, ptr %1422, align 4, !tbaa !38
  %1423 = getelementptr inbounds i8, ptr %1411, i64 16
  %1424 = load i32, ptr %1423, align 4, !tbaa !38
  %1425 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 4
  store i32 %1424, ptr %1425, align 4, !tbaa !38
  %1426 = getelementptr inbounds i8, ptr %1411, i64 20
  %1427 = load i32, ptr %1426, align 4, !tbaa !38
  %1428 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 5
  store i32 %1427, ptr %1428, align 4, !tbaa !38
  %1429 = getelementptr inbounds i8, ptr %1411, i64 24
  %1430 = load i32, ptr %1429, align 4, !tbaa !38
  %1431 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 6
  store i32 %1430, ptr %1431, align 4, !tbaa !38
  %1432 = getelementptr inbounds i8, ptr %1411, i64 28
  %1433 = load i32, ptr %1432, align 4, !tbaa !38
  %1434 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 7
  store i32 %1433, ptr %1434, align 4, !tbaa !38
  %1435 = getelementptr inbounds i8, ptr %1411, i64 32
  %1436 = load i32, ptr %1435, align 4, !tbaa !38
  %1437 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 8
  store i32 %1436, ptr %1437, align 4, !tbaa !38
  %1438 = getelementptr inbounds i8, ptr %1411, i64 36
  %1439 = load i32, ptr %1438, align 4, !tbaa !38
  %1440 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 9
  store i32 %1439, ptr %1440, align 4, !tbaa !38
  %1441 = getelementptr inbounds i8, ptr %1411, i64 40
  %1442 = load i32, ptr %1441, align 4, !tbaa !38
  %1443 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 10
  store i32 %1442, ptr %1443, align 4, !tbaa !38
  %1444 = getelementptr inbounds i8, ptr %1411, i64 44
  %1445 = load i32, ptr %1444, align 4, !tbaa !38
  %1446 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 11
  store i32 %1445, ptr %1446, align 4, !tbaa !38
  %1447 = getelementptr inbounds i8, ptr %1411, i64 48
  %1448 = load i32, ptr %1447, align 4, !tbaa !38
  %1449 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 12
  store i32 %1448, ptr %1449, align 4, !tbaa !38
  %1450 = getelementptr inbounds i8, ptr %1411, i64 52
  %1451 = load i32, ptr %1450, align 4, !tbaa !38
  %1452 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 13
  store i32 %1451, ptr %1452, align 4, !tbaa !38
  %1453 = getelementptr inbounds i8, ptr %1411, i64 56
  %1454 = load i32, ptr %1453, align 4, !tbaa !38
  %1455 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 14
  store i32 %1454, ptr %1455, align 4, !tbaa !38
  %1456 = getelementptr inbounds i8, ptr %1411, i64 60
  %1457 = load i32, ptr %1456, align 4, !tbaa !38
  %1458 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 15
  store i32 %1457, ptr %1458, align 4, !tbaa !38
  %1459 = getelementptr inbounds i8, ptr %1411, i64 64
  %1460 = load i32, ptr %1459, align 4, !tbaa !38
  %1461 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 16
  store i32 %1460, ptr %1461, align 4, !tbaa !38
  %1462 = getelementptr inbounds i8, ptr %1411, i64 68
  %1463 = load i32, ptr %1462, align 4, !tbaa !38
  %1464 = getelementptr inbounds [2 x [18 x i32]], ptr @cofAC4x4_chroma, i64 0, i64 %1353, i64 17
  store i32 %1463, ptr %1464, align 4, !tbaa !38
  %1465 = getelementptr inbounds ptr, ptr %1315, i64 %1353
  %1466 = load ptr, ptr %1465, align 8, !tbaa !6
  %1467 = load i32, ptr %1466, align 4, !tbaa !38
  %1468 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 0
  store i32 %1467, ptr %1468, align 4, !tbaa !38
  %1469 = getelementptr inbounds i8, ptr %1466, i64 4
  %1470 = load i32, ptr %1469, align 4, !tbaa !38
  %1471 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 1
  store i32 %1470, ptr %1471, align 4, !tbaa !38
  %1472 = getelementptr inbounds i8, ptr %1466, i64 8
  %1473 = load i32, ptr %1472, align 4, !tbaa !38
  %1474 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 2
  store i32 %1473, ptr %1474, align 4, !tbaa !38
  %1475 = getelementptr inbounds i8, ptr %1466, i64 12
  %1476 = load i32, ptr %1475, align 4, !tbaa !38
  %1477 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 3
  store i32 %1476, ptr %1477, align 4, !tbaa !38
  %1478 = getelementptr inbounds i8, ptr %1466, i64 16
  %1479 = load i32, ptr %1478, align 4, !tbaa !38
  %1480 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 4
  store i32 %1479, ptr %1480, align 4, !tbaa !38
  %1481 = getelementptr inbounds i8, ptr %1466, i64 20
  %1482 = load i32, ptr %1481, align 4, !tbaa !38
  %1483 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 5
  store i32 %1482, ptr %1483, align 4, !tbaa !38
  %1484 = getelementptr inbounds i8, ptr %1466, i64 24
  %1485 = load i32, ptr %1484, align 4, !tbaa !38
  %1486 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 6
  store i32 %1485, ptr %1486, align 4, !tbaa !38
  %1487 = getelementptr inbounds i8, ptr %1466, i64 28
  %1488 = load i32, ptr %1487, align 4, !tbaa !38
  %1489 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 7
  store i32 %1488, ptr %1489, align 4, !tbaa !38
  %1490 = getelementptr inbounds i8, ptr %1466, i64 32
  %1491 = load i32, ptr %1490, align 4, !tbaa !38
  %1492 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 8
  store i32 %1491, ptr %1492, align 4, !tbaa !38
  %1493 = getelementptr inbounds i8, ptr %1466, i64 36
  %1494 = load i32, ptr %1493, align 4, !tbaa !38
  %1495 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 9
  store i32 %1494, ptr %1495, align 4, !tbaa !38
  %1496 = getelementptr inbounds i8, ptr %1466, i64 40
  %1497 = load i32, ptr %1496, align 4, !tbaa !38
  %1498 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 10
  store i32 %1497, ptr %1498, align 4, !tbaa !38
  %1499 = getelementptr inbounds i8, ptr %1466, i64 44
  %1500 = load i32, ptr %1499, align 4, !tbaa !38
  %1501 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 11
  store i32 %1500, ptr %1501, align 4, !tbaa !38
  %1502 = getelementptr inbounds i8, ptr %1466, i64 48
  %1503 = load i32, ptr %1502, align 4, !tbaa !38
  %1504 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 12
  store i32 %1503, ptr %1504, align 4, !tbaa !38
  %1505 = getelementptr inbounds i8, ptr %1466, i64 52
  %1506 = load i32, ptr %1505, align 4, !tbaa !38
  %1507 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 13
  store i32 %1506, ptr %1507, align 4, !tbaa !38
  %1508 = getelementptr inbounds i8, ptr %1466, i64 56
  %1509 = load i32, ptr %1508, align 4, !tbaa !38
  %1510 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 14
  store i32 %1509, ptr %1510, align 4, !tbaa !38
  %1511 = getelementptr inbounds i8, ptr %1466, i64 60
  %1512 = load i32, ptr %1511, align 4, !tbaa !38
  %1513 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 15
  store i32 %1512, ptr %1513, align 4, !tbaa !38
  %1514 = getelementptr inbounds i8, ptr %1466, i64 64
  %1515 = load i32, ptr %1514, align 4, !tbaa !38
  %1516 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 16
  store i32 %1515, ptr %1516, align 4, !tbaa !38
  %1517 = getelementptr inbounds i8, ptr %1466, i64 68
  %1518 = load i32, ptr %1517, align 4, !tbaa !38
  %1519 = getelementptr inbounds [2 x [18 x i32]], ptr getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 0, i64 %1353, i64 17
  store i32 %1518, ptr %1519, align 4, !tbaa !38
  br i1 %1352, label %1351, label %1316

1520:                                             ; preds = %1316
  %1521 = getelementptr inbounds ptr, ptr %1326, i64 %167
  %1522 = load ptr, ptr %1521, align 8, !tbaa !6
  %1523 = getelementptr inbounds i32, ptr %1522, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %1523, i64 16, i1 false)
  %1524 = getelementptr inbounds ptr, ptr %1329, i64 %187
  %1525 = load ptr, ptr %1524, align 8, !tbaa !6
  %1526 = getelementptr inbounds i16, ptr %1525, i64 %158
  %1527 = load i64, ptr %1526, align 2
  store i64 %1527, ptr %15, align 8
  %1528 = getelementptr inbounds ptr, ptr %1326, i64 %187
  %1529 = load ptr, ptr %1528, align 8, !tbaa !6
  %1530 = getelementptr inbounds i32, ptr %1529, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %188, ptr noundef nonnull align 4 dereferenceable(16) %1530, i64 16, i1 false)
  %1531 = getelementptr inbounds ptr, ptr %1329, i64 %189
  %1532 = load ptr, ptr %1531, align 8, !tbaa !6
  %1533 = getelementptr inbounds i16, ptr %1532, i64 %158
  %1534 = load i64, ptr %1533, align 2
  store i64 %1534, ptr %16, align 8
  %1535 = getelementptr inbounds ptr, ptr %1326, i64 %189
  %1536 = load ptr, ptr %1535, align 8, !tbaa !6
  %1537 = getelementptr inbounds i32, ptr %1536, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %190, ptr noundef nonnull align 4 dereferenceable(16) %1537, i64 16, i1 false)
  %1538 = getelementptr inbounds ptr, ptr %1329, i64 %191
  %1539 = load ptr, ptr %1538, align 8, !tbaa !6
  %1540 = getelementptr inbounds i16, ptr %1539, i64 %158
  %1541 = load i64, ptr %1540, align 2
  store i64 %1541, ptr %17, align 8
  %1542 = getelementptr inbounds ptr, ptr %1326, i64 %191
  %1543 = load ptr, ptr %1542, align 8, !tbaa !6
  %1544 = getelementptr inbounds i32, ptr %1543, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %192, ptr noundef nonnull align 4 dereferenceable(16) %1544, i64 16, i1 false)
  br label %1545

1545:                                             ; preds = %1338, %1520
  %1546 = phi i64 [ %195, %1338 ], [ %191, %1520 ]
  %1547 = phi i64 [ %193, %1338 ], [ %187, %1520 ]
  %1548 = phi i64 [ %194, %1338 ], [ %189, %1520 ]
  %1549 = load i32, ptr %196, align 4, !tbaa !38
  store i32 %1549, ptr %197, align 4, !tbaa !38
  %1550 = load i32, ptr %198, align 4, !tbaa !38
  store i32 %1550, ptr %199, align 4, !tbaa !38
  %1551 = getelementptr inbounds i8, ptr %1319, i64 8
  %1552 = load ptr, ptr %1551, align 8, !tbaa !6
  %1553 = load i32, ptr %1321, align 8, !tbaa !14
  %1554 = icmp ne i32 %1553, 3
  %1555 = select i1 %1554, i1 true, i1 %1323
  %1556 = select i1 %1555, i1 true, i1 %1325
  %1557 = getelementptr inbounds ptr, ptr %1552, i64 %167
  %1558 = load ptr, ptr %1557, align 8, !tbaa !6
  %1559 = getelementptr inbounds i16, ptr %1558, i64 %158
  %1560 = load i64, ptr %1559, align 2
  %1561 = getelementptr inbounds ptr, ptr %1552, i64 %1547
  %1562 = load ptr, ptr %1561, align 8, !tbaa !6
  %1563 = getelementptr inbounds i16, ptr %1562, i64 %158
  %1564 = load i64, ptr %1563, align 2
  %1565 = getelementptr inbounds ptr, ptr %1552, i64 %1548
  %1566 = getelementptr inbounds ptr, ptr %1552, i64 %1546
  %1567 = getelementptr inbounds i8, ptr %1317, i64 6424
  br i1 %1556, label %1568, label %1592

1568:                                             ; preds = %1545
  store i64 %1564, ptr %18, align 8
  %1569 = load ptr, ptr %1565, align 8, !tbaa !6
  %1570 = getelementptr inbounds i16, ptr %1569, i64 %158
  %1571 = load i64, ptr %1570, align 2
  store i64 %1571, ptr %19, align 8
  %1572 = load ptr, ptr %1566, align 8, !tbaa !6
  %1573 = getelementptr inbounds i16, ptr %1572, i64 %158
  %1574 = load i64, ptr %1573, align 2
  store i64 %1574, ptr %20, align 8
  %1575 = load ptr, ptr %1567, align 8, !tbaa !29
  %1576 = getelementptr inbounds ptr, ptr %1575, i64 %167
  %1577 = load ptr, ptr %1576, align 8, !tbaa !6
  %1578 = getelementptr inbounds i16, ptr %1577, i64 %158
  %1579 = load i64, ptr %1578, align 2
  %1580 = getelementptr inbounds ptr, ptr %1575, i64 %1547
  %1581 = load ptr, ptr %1580, align 8, !tbaa !6
  %1582 = getelementptr inbounds i16, ptr %1581, i64 %158
  %1583 = load i64, ptr %1582, align 2
  %1584 = getelementptr inbounds ptr, ptr %1575, i64 %1548
  %1585 = load ptr, ptr %1584, align 8, !tbaa !6
  %1586 = getelementptr inbounds i16, ptr %1585, i64 %158
  %1587 = load i64, ptr %1586, align 2
  %1588 = getelementptr inbounds ptr, ptr %1575, i64 %1546
  %1589 = load ptr, ptr %1588, align 8, !tbaa !6
  %1590 = getelementptr inbounds i16, ptr %1589, i64 %158
  %1591 = load i64, ptr %1590, align 2
  br label %1628

1592:                                             ; preds = %1545
  store i64 %1564, ptr %18, align 8
  %1593 = load ptr, ptr %1565, align 8, !tbaa !6
  %1594 = getelementptr inbounds i16, ptr %1593, i64 %158
  %1595 = load i64, ptr %1594, align 2
  store i64 %1595, ptr %19, align 8
  %1596 = load ptr, ptr %1566, align 8, !tbaa !6
  %1597 = getelementptr inbounds i16, ptr %1596, i64 %158
  %1598 = load i64, ptr %1597, align 2
  store i64 %1598, ptr %20, align 8
  %1599 = load ptr, ptr %1567, align 8, !tbaa !29
  %1600 = getelementptr inbounds ptr, ptr %1599, i64 %167
  %1601 = load ptr, ptr %1600, align 8, !tbaa !6
  %1602 = getelementptr inbounds i16, ptr %1601, i64 %158
  %1603 = load i64, ptr %1602, align 2
  %1604 = getelementptr inbounds ptr, ptr %1326, i64 %167
  %1605 = load ptr, ptr %1604, align 8, !tbaa !6
  %1606 = getelementptr inbounds i32, ptr %1605, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %1606, i64 16, i1 false)
  %1607 = getelementptr inbounds ptr, ptr %1599, i64 %1547
  %1608 = load ptr, ptr %1607, align 8, !tbaa !6
  %1609 = getelementptr inbounds i16, ptr %1608, i64 %158
  %1610 = load i64, ptr %1609, align 2
  %1611 = getelementptr inbounds ptr, ptr %1326, i64 %1547
  %1612 = load ptr, ptr %1611, align 8, !tbaa !6
  %1613 = getelementptr inbounds i32, ptr %1612, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %200, ptr noundef nonnull align 4 dereferenceable(16) %1613, i64 16, i1 false)
  %1614 = getelementptr inbounds ptr, ptr %1599, i64 %1548
  %1615 = load ptr, ptr %1614, align 8, !tbaa !6
  %1616 = getelementptr inbounds i16, ptr %1615, i64 %158
  %1617 = load i64, ptr %1616, align 2
  %1618 = getelementptr inbounds ptr, ptr %1326, i64 %1548
  %1619 = load ptr, ptr %1618, align 8, !tbaa !6
  %1620 = getelementptr inbounds i32, ptr %1619, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %201, ptr noundef nonnull align 4 dereferenceable(16) %1620, i64 16, i1 false)
  %1621 = getelementptr inbounds ptr, ptr %1599, i64 %1546
  %1622 = load ptr, ptr %1621, align 8, !tbaa !6
  %1623 = getelementptr inbounds i16, ptr %1622, i64 %158
  %1624 = load i64, ptr %1623, align 2
  %1625 = getelementptr inbounds ptr, ptr %1326, i64 %1546
  %1626 = load ptr, ptr %1625, align 8, !tbaa !6
  %1627 = getelementptr inbounds i32, ptr %1626, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %202, ptr noundef nonnull align 4 dereferenceable(16) %1627, i64 16, i1 false)
  br label %1628

1628:                                             ; preds = %1568, %1592
  %1629 = phi i64 [ %1591, %1568 ], [ %1624, %1592 ]
  %1630 = phi i64 [ %1583, %1568 ], [ %1610, %1592 ]
  %1631 = phi i64 [ %1579, %1568 ], [ %1603, %1592 ]
  %1632 = phi i64 [ %1587, %1568 ], [ %1617, %1592 ]
  %1633 = load i32, ptr %6, align 4, !tbaa !38
  %1634 = getelementptr inbounds i8, ptr %1320, i64 128
  %1635 = load ptr, ptr %1634, align 8, !tbaa !78
  %1636 = getelementptr inbounds i8, ptr %1320, i64 12
  %1637 = load i32, ptr %1636, align 4, !tbaa !33
  %1638 = sext i32 %1637 to i64
  %1639 = getelementptr inbounds ptr, ptr %1635, i64 %1638
  %1640 = load ptr, ptr %1639, align 8, !tbaa !6
  %1641 = getelementptr inbounds ptr, ptr %1640, i64 %159
  %1642 = load ptr, ptr %1641, align 8, !tbaa !6
  %1643 = getelementptr inbounds i32, ptr %1642, i64 %160
  %1644 = load i32, ptr %1643, align 4, !tbaa !38
  br label %1645

1645:                                             ; preds = %300, %747, %1628, %1293, %306, %441, %294, %286, %280
  %1646 = phi i64 [ %238, %280 ], [ %238, %286 ], [ %238, %294 ], [ %238, %441 ], [ %238, %306 ], [ %238, %747 ], [ %1337, %1628 ], [ %238, %1293 ], [ %238, %300 ]
  %1647 = phi i64 [ %239, %280 ], [ %239, %286 ], [ %239, %294 ], [ %239, %441 ], [ %239, %306 ], [ %239, %747 ], [ %1560, %1628 ], [ %239, %1293 ], [ %239, %300 ]
  %1648 = phi i64 [ %240, %280 ], [ %240, %286 ], [ %240, %294 ], [ %240, %441 ], [ %240, %306 ], [ %748, %747 ], [ %1629, %1628 ], [ %240, %1293 ], [ %240, %300 ]
  %1649 = phi i64 [ %241, %280 ], [ %241, %286 ], [ %241, %294 ], [ %241, %441 ], [ %241, %306 ], [ %749, %747 ], [ %1632, %1628 ], [ %241, %1293 ], [ %241, %300 ]
  %1650 = phi i64 [ %242, %280 ], [ %242, %286 ], [ %242, %294 ], [ %242, %441 ], [ %242, %306 ], [ %750, %747 ], [ %1630, %1628 ], [ %242, %1293 ], [ %242, %300 ]
  %1651 = phi i64 [ %243, %280 ], [ %243, %286 ], [ %243, %294 ], [ %243, %441 ], [ %243, %306 ], [ %751, %747 ], [ %1631, %1628 ], [ %243, %1293 ], [ %243, %300 ]
  %1652 = phi double [ %249, %280 ], [ %249, %286 ], [ %249, %294 ], [ %249, %441 ], [ %249, %306 ], [ %752, %747 ], [ %1297, %1628 ], [ %249, %1293 ], [ %249, %300 ]
  %1653 = phi i32 [ %248, %280 ], [ %248, %286 ], [ %248, %294 ], [ %248, %441 ], [ %248, %306 ], [ %753, %747 ], [ %1633, %1628 ], [ %248, %1293 ], [ %248, %300 ]
  %1654 = phi i32 [ %247, %280 ], [ %247, %286 ], [ %247, %294 ], [ %247, %441 ], [ %247, %306 ], [ %754, %747 ], [ %1644, %1628 ], [ %247, %1293 ], [ %247, %300 ]
  %1655 = phi i32 [ %246, %280 ], [ %246, %286 ], [ %246, %294 ], [ %246, %441 ], [ %246, %306 ], [ %755, %747 ], [ %246, %1628 ], [ %246, %1293 ], [ %246, %300 ]
  %1656 = phi i32 [ %245, %280 ], [ %245, %286 ], [ %245, %294 ], [ %305, %441 ], [ %245, %306 ], [ %756, %747 ], [ %305, %1628 ], [ %245, %1293 ], [ %245, %300 ]
  %1657 = add nuw nsw i64 %244, 1
  %1658 = icmp eq i64 %1657, 9
  br i1 %1658, label %1659, label %237

1659:                                             ; preds = %1645
  %1660 = load ptr, ptr @img, align 8, !tbaa !6
  %1661 = getelementptr inbounds i8, ptr %1660, i64 128
  %1662 = load ptr, ptr %1661, align 8, !tbaa !78
  %1663 = getelementptr inbounds i8, ptr %1660, i64 12
  %1664 = load i32, ptr %1663, align 4, !tbaa !33
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds ptr, ptr %1662, i64 %1665
  %1667 = load ptr, ptr %1666, align 8, !tbaa !6
  %1668 = getelementptr inbounds ptr, ptr %1667, i64 %159
  %1669 = load ptr, ptr %1668, align 8, !tbaa !6
  %1670 = getelementptr inbounds i32, ptr %1669, i64 %160
  store i32 %1654, ptr %1670, align 4, !tbaa !38
  %1671 = shl nuw i32 1, %60
  %1672 = xor i32 %1671, -1
  %1673 = sext i32 %1672 to i64
  %1674 = load i64, ptr @Mode_Decision_for_4x4IntraBlocks.cbp_bits, align 8, !tbaa !62
  %1675 = and i64 %1674, %1673
  %1676 = shl nuw i32 %1655, %60
  %1677 = sext i32 %1676 to i64
  %1678 = or i64 %1675, %1677
  store i64 %1678, ptr @Mode_Decision_for_4x4IntraBlocks.cbp_bits, align 8, !tbaa !62
  %1679 = trunc i32 %1656 to i8
  %1680 = getelementptr inbounds i8, ptr %1660, i64 104
  %1681 = load ptr, ptr %1680, align 8, !tbaa !68
  %1682 = sext i32 %46 to i64
  %1683 = getelementptr inbounds ptr, ptr %1681, i64 %1682
  %1684 = load ptr, ptr %1683, align 8, !tbaa !6
  %1685 = sext i32 %45 to i64
  %1686 = getelementptr inbounds i8, ptr %1684, i64 %1685
  store i8 %1679, ptr %1686, align 1, !tbaa !20
  %1687 = icmp eq i32 %1656, %146
  %1688 = icmp sge i32 %1656, %146
  %1689 = sext i1 %1688 to i32
  %1690 = add nsw i32 %1656, %1689
  %1691 = trunc i32 %1690 to i8
  %1692 = select i1 %1687, i8 -1, i8 %1691
  %1693 = load ptr, ptr @img, align 8, !tbaa !6
  %1694 = getelementptr inbounds i8, ptr %1693, i64 31576
  %1695 = load ptr, ptr %1694, align 8, !tbaa !32
  %1696 = getelementptr inbounds i8, ptr %1693, i64 12
  %1697 = load i32, ptr %1696, align 4, !tbaa !33
  %1698 = sext i32 %1697 to i64
  %1699 = shl nsw i32 %0, 2
  %1700 = add nsw i32 %1699, %1
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds %struct.macroblock, ptr %1695, i64 %1698, i32 10, i64 %1701
  store i8 %1692, ptr %1702, align 1, !tbaa !20
  %1703 = load ptr, ptr @input, align 8, !tbaa !6
  %1704 = getelementptr inbounds i8, ptr %1703, i64 3136
  %1705 = load i32, ptr %1704, align 8, !tbaa !75
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1733, label %1707

1707:                                             ; preds = %1659
  %1708 = load ptr, ptr @cofAC4x4, align 8, !tbaa !6
  %1709 = load ptr, ptr @img, align 8, !tbaa !6
  %1710 = getelementptr inbounds i8, ptr %1709, i64 14136
  %1711 = load ptr, ptr %1710, align 8, !tbaa !53
  %1712 = getelementptr inbounds ptr, ptr %1711, i64 %150
  %1713 = load ptr, ptr %1712, align 8, !tbaa !6
  %1714 = getelementptr inbounds ptr, ptr %1713, i64 %151
  %1715 = load ptr, ptr %1714, align 8, !tbaa !6
  %1716 = load ptr, ptr %1715, align 8, !tbaa !6
  %1717 = load ptr, ptr %1708, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %1716, ptr noundef nonnull align 4 dereferenceable(72) %1717, i64 72, i1 false)
  %1718 = load ptr, ptr @img, align 8, !tbaa !6
  %1719 = getelementptr inbounds i8, ptr %1718, i64 14136
  %1720 = load ptr, ptr %1719, align 8, !tbaa !53
  %1721 = getelementptr inbounds ptr, ptr %1720, i64 %150
  %1722 = load ptr, ptr %1721, align 8, !tbaa !6
  %1723 = getelementptr inbounds ptr, ptr %1722, i64 %151
  %1724 = load ptr, ptr %1723, align 8, !tbaa !6
  %1725 = getelementptr inbounds i8, ptr %1724, i64 8
  %1726 = load ptr, ptr %1725, align 8, !tbaa !6
  %1727 = getelementptr inbounds i8, ptr %1708, i64 8
  %1728 = load ptr, ptr %1727, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %1726, ptr noundef nonnull align 4 dereferenceable(72) %1728, i64 72, i1 false)
  %1729 = load ptr, ptr @img, align 8, !tbaa !6
  %1730 = getelementptr inbounds i8, ptr %1729, i64 90572
  %1731 = load i32, ptr %1730, align 4, !tbaa !39
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %2338, label %2300

1733:                                             ; preds = %1659
  %1734 = load ptr, ptr @img, align 8, !tbaa !6
  %1735 = getelementptr inbounds i8, ptr %1734, i64 90572
  %1736 = load i32, ptr %1735, align 4, !tbaa !39
  %1737 = icmp eq i32 %1736, 0
  %1738 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  br i1 %1737, label %1739, label %1908

1739:                                             ; preds = %1733
  %1740 = getelementptr inbounds i8, ptr %1734, i64 184
  %1741 = sext i32 %1656 to i64
  %1742 = getelementptr inbounds i8, ptr %1734, i64 12600
  %1743 = getelementptr inbounds i8, ptr %1734, i64 13112
  %1744 = getelementptr inbounds ptr, ptr %1738, i64 %166
  %1745 = load ptr, ptr %1744, align 8, !tbaa !6
  %1746 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 0, i64 0
  %1747 = load i16, ptr %1746, align 2, !tbaa !25
  %1748 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %165, i64 %163
  store i16 %1747, ptr %1748, align 2, !tbaa !25
  %1749 = getelementptr inbounds i16, ptr %1745, i64 %164
  %1750 = load i16, ptr %1749, align 2, !tbaa !25
  %1751 = zext i16 %1750 to i32
  %1752 = zext i16 %1747 to i32
  %1753 = sub nsw i32 %1751, %1752
  store i32 %1753, ptr %1743, align 4, !tbaa !38
  %1754 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 0, i64 1
  %1755 = load i16, ptr %1754, align 2, !tbaa !25
  %1756 = or disjoint i64 %163, 1
  %1757 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %165, i64 %1756
  store i16 %1755, ptr %1757, align 2, !tbaa !25
  %1758 = add nsw i64 %164, 1
  %1759 = getelementptr inbounds i16, ptr %1745, i64 %1758
  %1760 = load i16, ptr %1759, align 2, !tbaa !25
  %1761 = zext i16 %1760 to i32
  %1762 = zext i16 %1755 to i32
  %1763 = sub nsw i32 %1761, %1762
  %1764 = getelementptr inbounds i8, ptr %1734, i64 13116
  store i32 %1763, ptr %1764, align 4, !tbaa !38
  %1765 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 0, i64 2
  %1766 = load i16, ptr %1765, align 2, !tbaa !25
  %1767 = or disjoint i64 %163, 2
  %1768 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %165, i64 %1767
  store i16 %1766, ptr %1768, align 2, !tbaa !25
  %1769 = add nsw i64 %164, 2
  %1770 = getelementptr inbounds i16, ptr %1745, i64 %1769
  %1771 = load i16, ptr %1770, align 2, !tbaa !25
  %1772 = zext i16 %1771 to i32
  %1773 = zext i16 %1766 to i32
  %1774 = sub nsw i32 %1772, %1773
  %1775 = getelementptr inbounds i8, ptr %1734, i64 13120
  store i32 %1774, ptr %1775, align 4, !tbaa !38
  %1776 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 0, i64 3
  %1777 = load i16, ptr %1776, align 2, !tbaa !25
  %1778 = or disjoint i64 %163, 3
  %1779 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %165, i64 %1778
  store i16 %1777, ptr %1779, align 2, !tbaa !25
  %1780 = add nsw i64 %164, 3
  %1781 = getelementptr inbounds i16, ptr %1745, i64 %1780
  %1782 = load i16, ptr %1781, align 2, !tbaa !25
  %1783 = zext i16 %1782 to i32
  %1784 = zext i16 %1777 to i32
  %1785 = sub nsw i32 %1783, %1784
  %1786 = getelementptr inbounds i8, ptr %1734, i64 13124
  store i32 %1785, ptr %1786, align 4, !tbaa !38
  %1787 = or disjoint i64 %165, 1
  %1788 = getelementptr ptr, ptr %1738, i64 %166
  %1789 = getelementptr i8, ptr %1788, i64 8
  %1790 = load ptr, ptr %1789, align 8, !tbaa !6
  %1791 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 1, i64 0
  %1792 = load i16, ptr %1791, align 2, !tbaa !25
  %1793 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1787, i64 %163
  store i16 %1792, ptr %1793, align 2, !tbaa !25
  %1794 = getelementptr inbounds i16, ptr %1790, i64 %164
  %1795 = load i16, ptr %1794, align 2, !tbaa !25
  %1796 = zext i16 %1795 to i32
  %1797 = zext i16 %1792 to i32
  %1798 = sub nsw i32 %1796, %1797
  %1799 = getelementptr inbounds i8, ptr %1734, i64 13176
  store i32 %1798, ptr %1799, align 4, !tbaa !38
  %1800 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 1, i64 1
  %1801 = load i16, ptr %1800, align 2, !tbaa !25
  %1802 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1787, i64 %1756
  store i16 %1801, ptr %1802, align 2, !tbaa !25
  %1803 = getelementptr inbounds i16, ptr %1790, i64 %1758
  %1804 = load i16, ptr %1803, align 2, !tbaa !25
  %1805 = zext i16 %1804 to i32
  %1806 = zext i16 %1801 to i32
  %1807 = sub nsw i32 %1805, %1806
  %1808 = getelementptr inbounds i8, ptr %1734, i64 13180
  store i32 %1807, ptr %1808, align 4, !tbaa !38
  %1809 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 1, i64 2
  %1810 = load i16, ptr %1809, align 2, !tbaa !25
  %1811 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1787, i64 %1767
  store i16 %1810, ptr %1811, align 2, !tbaa !25
  %1812 = getelementptr inbounds i16, ptr %1790, i64 %1769
  %1813 = load i16, ptr %1812, align 2, !tbaa !25
  %1814 = zext i16 %1813 to i32
  %1815 = zext i16 %1810 to i32
  %1816 = sub nsw i32 %1814, %1815
  %1817 = getelementptr inbounds i8, ptr %1734, i64 13184
  store i32 %1816, ptr %1817, align 4, !tbaa !38
  %1818 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 1, i64 3
  %1819 = load i16, ptr %1818, align 2, !tbaa !25
  %1820 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1787, i64 %1778
  store i16 %1819, ptr %1820, align 2, !tbaa !25
  %1821 = getelementptr inbounds i16, ptr %1790, i64 %1780
  %1822 = load i16, ptr %1821, align 2, !tbaa !25
  %1823 = zext i16 %1822 to i32
  %1824 = zext i16 %1819 to i32
  %1825 = sub nsw i32 %1823, %1824
  %1826 = getelementptr inbounds i8, ptr %1734, i64 13188
  store i32 %1825, ptr %1826, align 4, !tbaa !38
  %1827 = or disjoint i64 %165, 2
  %1828 = getelementptr ptr, ptr %1738, i64 %166
  %1829 = getelementptr i8, ptr %1828, i64 16
  %1830 = load ptr, ptr %1829, align 8, !tbaa !6
  %1831 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 2, i64 0
  %1832 = load i16, ptr %1831, align 2, !tbaa !25
  %1833 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1827, i64 %163
  store i16 %1832, ptr %1833, align 2, !tbaa !25
  %1834 = getelementptr inbounds i16, ptr %1830, i64 %164
  %1835 = load i16, ptr %1834, align 2, !tbaa !25
  %1836 = zext i16 %1835 to i32
  %1837 = zext i16 %1832 to i32
  %1838 = sub nsw i32 %1836, %1837
  %1839 = getelementptr inbounds i8, ptr %1734, i64 13240
  store i32 %1838, ptr %1839, align 4, !tbaa !38
  %1840 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 2, i64 1
  %1841 = load i16, ptr %1840, align 2, !tbaa !25
  %1842 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1827, i64 %1756
  store i16 %1841, ptr %1842, align 2, !tbaa !25
  %1843 = getelementptr inbounds i16, ptr %1830, i64 %1758
  %1844 = load i16, ptr %1843, align 2, !tbaa !25
  %1845 = zext i16 %1844 to i32
  %1846 = zext i16 %1841 to i32
  %1847 = sub nsw i32 %1845, %1846
  %1848 = getelementptr inbounds i8, ptr %1734, i64 13244
  store i32 %1847, ptr %1848, align 4, !tbaa !38
  %1849 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 2, i64 2
  %1850 = load i16, ptr %1849, align 2, !tbaa !25
  %1851 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1827, i64 %1767
  store i16 %1850, ptr %1851, align 2, !tbaa !25
  %1852 = getelementptr inbounds i16, ptr %1830, i64 %1769
  %1853 = load i16, ptr %1852, align 2, !tbaa !25
  %1854 = zext i16 %1853 to i32
  %1855 = zext i16 %1850 to i32
  %1856 = sub nsw i32 %1854, %1855
  %1857 = getelementptr inbounds i8, ptr %1734, i64 13248
  store i32 %1856, ptr %1857, align 4, !tbaa !38
  %1858 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 2, i64 3
  %1859 = load i16, ptr %1858, align 2, !tbaa !25
  %1860 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1827, i64 %1778
  store i16 %1859, ptr %1860, align 2, !tbaa !25
  %1861 = getelementptr inbounds i16, ptr %1830, i64 %1780
  %1862 = load i16, ptr %1861, align 2, !tbaa !25
  %1863 = zext i16 %1862 to i32
  %1864 = zext i16 %1859 to i32
  %1865 = sub nsw i32 %1863, %1864
  %1866 = getelementptr inbounds i8, ptr %1734, i64 13252
  store i32 %1865, ptr %1866, align 4, !tbaa !38
  %1867 = or disjoint i64 %165, 3
  %1868 = getelementptr ptr, ptr %1738, i64 %166
  %1869 = getelementptr i8, ptr %1868, i64 24
  %1870 = load ptr, ptr %1869, align 8, !tbaa !6
  %1871 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 3, i64 0
  %1872 = load i16, ptr %1871, align 2, !tbaa !25
  %1873 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1867, i64 %163
  store i16 %1872, ptr %1873, align 2, !tbaa !25
  %1874 = getelementptr inbounds i16, ptr %1870, i64 %164
  %1875 = load i16, ptr %1874, align 2, !tbaa !25
  %1876 = zext i16 %1875 to i32
  %1877 = zext i16 %1872 to i32
  %1878 = sub nsw i32 %1876, %1877
  %1879 = getelementptr inbounds i8, ptr %1734, i64 13304
  store i32 %1878, ptr %1879, align 4, !tbaa !38
  %1880 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 3, i64 1
  %1881 = load i16, ptr %1880, align 2, !tbaa !25
  %1882 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1867, i64 %1756
  store i16 %1881, ptr %1882, align 2, !tbaa !25
  %1883 = getelementptr inbounds i16, ptr %1870, i64 %1758
  %1884 = load i16, ptr %1883, align 2, !tbaa !25
  %1885 = zext i16 %1884 to i32
  %1886 = zext i16 %1881 to i32
  %1887 = sub nsw i32 %1885, %1886
  %1888 = getelementptr inbounds i8, ptr %1734, i64 13308
  store i32 %1887, ptr %1888, align 4, !tbaa !38
  %1889 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 3, i64 2
  %1890 = load i16, ptr %1889, align 2, !tbaa !25
  %1891 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1867, i64 %1767
  store i16 %1890, ptr %1891, align 2, !tbaa !25
  %1892 = getelementptr inbounds i16, ptr %1870, i64 %1769
  %1893 = load i16, ptr %1892, align 2, !tbaa !25
  %1894 = zext i16 %1893 to i32
  %1895 = zext i16 %1890 to i32
  %1896 = sub nsw i32 %1894, %1895
  %1897 = getelementptr inbounds i8, ptr %1734, i64 13312
  store i32 %1896, ptr %1897, align 4, !tbaa !38
  %1898 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1740, i64 0, i64 %1741, i64 3, i64 3
  %1899 = load i16, ptr %1898, align 2, !tbaa !25
  %1900 = getelementptr inbounds [16 x [16 x i16]], ptr %1742, i64 0, i64 %1867, i64 %1778
  store i16 %1899, ptr %1900, align 2, !tbaa !25
  %1901 = getelementptr inbounds i16, ptr %1870, i64 %1780
  %1902 = load i16, ptr %1901, align 2, !tbaa !25
  %1903 = zext i16 %1902 to i32
  %1904 = zext i16 %1899 to i32
  %1905 = sub nsw i32 %1903, %1904
  %1906 = getelementptr inbounds i8, ptr %1734, i64 13316
  store i32 %1905, ptr %1906, align 4, !tbaa !38
  %1907 = call signext i32 @dct_luma(i32 noundef signext %25, i32 noundef signext %29, ptr noundef nonnull %5, i32 noundef signext 1) #15
  br label %2606

1908:                                             ; preds = %1733
  %1909 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %1910 = load ptr, ptr %1909, align 8, !tbaa !6
  %1911 = getelementptr inbounds i8, ptr %1734, i64 8504
  %1912 = getelementptr inbounds i8, ptr %1734, i64 184
  %1913 = sext i32 %1656 to i64
  %1914 = getelementptr inbounds i8, ptr %1909, i64 8
  %1915 = load ptr, ptr %1914, align 8, !tbaa !6
  %1916 = getelementptr inbounds i8, ptr %1734, i64 10552
  %1917 = add nsw i64 %164, 1
  %1918 = or disjoint i64 %163, 1
  %1919 = add nsw i64 %164, 2
  %1920 = or disjoint i64 %163, 2
  %1921 = add nsw i64 %164, 3
  %1922 = or disjoint i64 %163, 3
  br label %1923

1923:                                             ; preds = %1908, %1923
  %1924 = phi i64 [ 0, %1908 ], [ %2053, %1923 ]
  %1925 = add nsw i64 %1924, %166
  %1926 = getelementptr inbounds ptr, ptr %1910, i64 %1925
  %1927 = load ptr, ptr %1926, align 8, !tbaa !6
  %1928 = or disjoint i64 %1924, %165
  %1929 = getelementptr inbounds ptr, ptr %1738, i64 %1925
  %1930 = load ptr, ptr %1929, align 8, !tbaa !6
  %1931 = getelementptr inbounds ptr, ptr %1915, i64 %1925
  %1932 = load ptr, ptr %1931, align 8, !tbaa !6
  %1933 = getelementptr inbounds i16, ptr %1927, i64 %164
  %1934 = load i16, ptr %1933, align 2, !tbaa !25
  %1935 = zext i16 %1934 to i32
  %1936 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1911, i64 0, i64 %147, i64 %1928, i64 %163
  %1937 = load i16, ptr %1936, align 2, !tbaa !25
  %1938 = zext i16 %1937 to i32
  %1939 = sub nsw i32 %1935, %1938
  %1940 = getelementptr inbounds i16, ptr %1930, i64 %164
  %1941 = load i16, ptr %1940, align 2, !tbaa !25
  %1942 = zext i16 %1941 to i32
  %1943 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1912, i64 0, i64 %1913, i64 %1924, i64 0
  %1944 = load i16, ptr %1943, align 2, !tbaa !25
  %1945 = zext i16 %1944 to i32
  %1946 = getelementptr inbounds i16, ptr %1932, i64 %164
  %1947 = load i16, ptr %1946, align 2, !tbaa !25
  %1948 = zext i16 %1947 to i32
  %1949 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1916, i64 0, i64 %147, i64 %1928, i64 %163
  %1950 = load i16, ptr %1949, align 2, !tbaa !25
  %1951 = zext i16 %1950 to i32
  %1952 = add nsw i32 %1939, %1951
  %1953 = sub nsw i32 %1948, %1952
  %1954 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1924, i64 0
  store i32 %1953, ptr %1954, align 4, !tbaa !38
  %1955 = ashr i32 %1953, 1
  %1956 = add nsw i32 %1955, %1939
  %1957 = add nsw i32 %1956, %1945
  %1958 = sub nsw i32 %1942, %1957
  %1959 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1924, i64 0
  store i32 %1958, ptr %1959, align 4, !tbaa !38
  %1960 = ashr i32 %1958, 1
  %1961 = add nsw i32 %1960, %1956
  %1962 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1924, i64 0
  store i32 %1961, ptr %1962, align 4, !tbaa !38
  %1963 = getelementptr inbounds i16, ptr %1927, i64 %1917
  %1964 = load i16, ptr %1963, align 2, !tbaa !25
  %1965 = zext i16 %1964 to i32
  %1966 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1911, i64 0, i64 %147, i64 %1928, i64 %1918
  %1967 = load i16, ptr %1966, align 2, !tbaa !25
  %1968 = zext i16 %1967 to i32
  %1969 = sub nsw i32 %1965, %1968
  %1970 = getelementptr inbounds i16, ptr %1930, i64 %1917
  %1971 = load i16, ptr %1970, align 2, !tbaa !25
  %1972 = zext i16 %1971 to i32
  %1973 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1912, i64 0, i64 %1913, i64 %1924, i64 1
  %1974 = load i16, ptr %1973, align 2, !tbaa !25
  %1975 = zext i16 %1974 to i32
  %1976 = getelementptr inbounds i16, ptr %1932, i64 %1917
  %1977 = load i16, ptr %1976, align 2, !tbaa !25
  %1978 = zext i16 %1977 to i32
  %1979 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1916, i64 0, i64 %147, i64 %1928, i64 %1918
  %1980 = load i16, ptr %1979, align 2, !tbaa !25
  %1981 = zext i16 %1980 to i32
  %1982 = add nsw i32 %1969, %1981
  %1983 = sub nsw i32 %1978, %1982
  %1984 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1924, i64 1
  store i32 %1983, ptr %1984, align 4, !tbaa !38
  %1985 = ashr i32 %1983, 1
  %1986 = add nsw i32 %1985, %1969
  %1987 = add nsw i32 %1986, %1975
  %1988 = sub nsw i32 %1972, %1987
  %1989 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1924, i64 1
  store i32 %1988, ptr %1989, align 4, !tbaa !38
  %1990 = ashr i32 %1988, 1
  %1991 = add nsw i32 %1990, %1986
  %1992 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1924, i64 1
  store i32 %1991, ptr %1992, align 4, !tbaa !38
  %1993 = getelementptr inbounds i16, ptr %1927, i64 %1919
  %1994 = load i16, ptr %1993, align 2, !tbaa !25
  %1995 = zext i16 %1994 to i32
  %1996 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1911, i64 0, i64 %147, i64 %1928, i64 %1920
  %1997 = load i16, ptr %1996, align 2, !tbaa !25
  %1998 = zext i16 %1997 to i32
  %1999 = sub nsw i32 %1995, %1998
  %2000 = getelementptr inbounds i16, ptr %1930, i64 %1919
  %2001 = load i16, ptr %2000, align 2, !tbaa !25
  %2002 = zext i16 %2001 to i32
  %2003 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1912, i64 0, i64 %1913, i64 %1924, i64 2
  %2004 = load i16, ptr %2003, align 2, !tbaa !25
  %2005 = zext i16 %2004 to i32
  %2006 = getelementptr inbounds i16, ptr %1932, i64 %1919
  %2007 = load i16, ptr %2006, align 2, !tbaa !25
  %2008 = zext i16 %2007 to i32
  %2009 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1916, i64 0, i64 %147, i64 %1928, i64 %1920
  %2010 = load i16, ptr %2009, align 2, !tbaa !25
  %2011 = zext i16 %2010 to i32
  %2012 = add nsw i32 %1999, %2011
  %2013 = sub nsw i32 %2008, %2012
  %2014 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1924, i64 2
  store i32 %2013, ptr %2014, align 4, !tbaa !38
  %2015 = ashr i32 %2013, 1
  %2016 = add nsw i32 %2015, %1999
  %2017 = add nsw i32 %2016, %2005
  %2018 = sub nsw i32 %2002, %2017
  %2019 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1924, i64 2
  store i32 %2018, ptr %2019, align 4, !tbaa !38
  %2020 = ashr i32 %2018, 1
  %2021 = add nsw i32 %2020, %2016
  %2022 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1924, i64 2
  store i32 %2021, ptr %2022, align 4, !tbaa !38
  %2023 = getelementptr inbounds i16, ptr %1927, i64 %1921
  %2024 = load i16, ptr %2023, align 2, !tbaa !25
  %2025 = zext i16 %2024 to i32
  %2026 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1911, i64 0, i64 %147, i64 %1928, i64 %1922
  %2027 = load i16, ptr %2026, align 2, !tbaa !25
  %2028 = zext i16 %2027 to i32
  %2029 = sub nsw i32 %2025, %2028
  %2030 = getelementptr inbounds i16, ptr %1930, i64 %1921
  %2031 = load i16, ptr %2030, align 2, !tbaa !25
  %2032 = zext i16 %2031 to i32
  %2033 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %1912, i64 0, i64 %1913, i64 %1924, i64 3
  %2034 = load i16, ptr %2033, align 2, !tbaa !25
  %2035 = zext i16 %2034 to i32
  %2036 = getelementptr inbounds i16, ptr %1932, i64 %1921
  %2037 = load i16, ptr %2036, align 2, !tbaa !25
  %2038 = zext i16 %2037 to i32
  %2039 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1916, i64 0, i64 %147, i64 %1928, i64 %1922
  %2040 = load i16, ptr %2039, align 2, !tbaa !25
  %2041 = zext i16 %2040 to i32
  %2042 = add nsw i32 %2029, %2041
  %2043 = sub nsw i32 %2038, %2042
  %2044 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1924, i64 3
  store i32 %2043, ptr %2044, align 4, !tbaa !38
  %2045 = ashr i32 %2043, 1
  %2046 = add nsw i32 %2045, %2029
  %2047 = add nsw i32 %2046, %2035
  %2048 = sub nsw i32 %2032, %2047
  %2049 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1924, i64 3
  store i32 %2048, ptr %2049, align 4, !tbaa !38
  %2050 = ashr i32 %2048, 1
  %2051 = add nsw i32 %2050, %2046
  %2052 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1924, i64 3
  store i32 %2051, ptr %2052, align 4, !tbaa !38
  %2053 = add nuw nsw i64 %1924, 1
  %2054 = icmp eq i64 %2053, 4
  br i1 %2054, label %2055, label %1923

2055:                                             ; preds = %1923
  %2056 = getelementptr inbounds i8, ptr %1734, i64 13112
  %2057 = load i32, ptr @resTrans_G, align 4, !tbaa !38
  store i32 %2057, ptr %2056, align 4, !tbaa !38
  %2058 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 4), align 4, !tbaa !38
  %2059 = getelementptr inbounds i8, ptr %1734, i64 13116
  store i32 %2058, ptr %2059, align 4, !tbaa !38
  %2060 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 8), align 4, !tbaa !38
  %2061 = getelementptr inbounds i8, ptr %1734, i64 13120
  store i32 %2060, ptr %2061, align 4, !tbaa !38
  %2062 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 12), align 4, !tbaa !38
  %2063 = getelementptr inbounds i8, ptr %1734, i64 13124
  store i32 %2062, ptr %2063, align 4, !tbaa !38
  %2064 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 64), align 4, !tbaa !38
  %2065 = getelementptr inbounds i8, ptr %1734, i64 13176
  store i32 %2064, ptr %2065, align 4, !tbaa !38
  %2066 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 68), align 4, !tbaa !38
  %2067 = getelementptr inbounds i8, ptr %1734, i64 13180
  store i32 %2066, ptr %2067, align 4, !tbaa !38
  %2068 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 72), align 4, !tbaa !38
  %2069 = getelementptr inbounds i8, ptr %1734, i64 13184
  store i32 %2068, ptr %2069, align 4, !tbaa !38
  %2070 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 76), align 4, !tbaa !38
  %2071 = getelementptr inbounds i8, ptr %1734, i64 13188
  store i32 %2070, ptr %2071, align 4, !tbaa !38
  %2072 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 128), align 4, !tbaa !38
  %2073 = getelementptr inbounds i8, ptr %1734, i64 13240
  store i32 %2072, ptr %2073, align 4, !tbaa !38
  %2074 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 132), align 4, !tbaa !38
  %2075 = getelementptr inbounds i8, ptr %1734, i64 13244
  store i32 %2074, ptr %2075, align 4, !tbaa !38
  %2076 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 136), align 4, !tbaa !38
  %2077 = getelementptr inbounds i8, ptr %1734, i64 13248
  store i32 %2076, ptr %2077, align 4, !tbaa !38
  %2078 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 140), align 4, !tbaa !38
  %2079 = getelementptr inbounds i8, ptr %1734, i64 13252
  store i32 %2078, ptr %2079, align 4, !tbaa !38
  %2080 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 192), align 4, !tbaa !38
  %2081 = getelementptr inbounds i8, ptr %1734, i64 13304
  store i32 %2080, ptr %2081, align 4, !tbaa !38
  %2082 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 196), align 4, !tbaa !38
  %2083 = getelementptr inbounds i8, ptr %1734, i64 13308
  store i32 %2082, ptr %2083, align 4, !tbaa !38
  %2084 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 200), align 4, !tbaa !38
  %2085 = getelementptr inbounds i8, ptr %1734, i64 13312
  store i32 %2084, ptr %2085, align 4, !tbaa !38
  %2086 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 204), align 4, !tbaa !38
  %2087 = getelementptr inbounds i8, ptr %1734, i64 13316
  store i32 %2086, ptr %2087, align 4, !tbaa !38
  %2088 = call signext i32 @dct_luma(i32 noundef signext %25, i32 noundef signext %29, ptr noundef nonnull %5, i32 noundef signext 1) #15
  %2089 = load ptr, ptr @img, align 8, !tbaa !6
  %2090 = getelementptr inbounds i8, ptr %2089, i64 13112
  %2091 = load i32, ptr %2090, align 4, !tbaa !38
  store i32 %2091, ptr @rec_resG, align 4, !tbaa !38
  %2092 = load i32, ptr @resTrans_B, align 4, !tbaa !38
  store i32 %2092, ptr %2090, align 4, !tbaa !38
  %2093 = getelementptr inbounds i8, ptr %2089, i64 13116
  %2094 = load i32, ptr %2093, align 4, !tbaa !38
  store i32 %2094, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 4), align 4, !tbaa !38
  %2095 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 4), align 4, !tbaa !38
  store i32 %2095, ptr %2093, align 4, !tbaa !38
  %2096 = getelementptr inbounds i8, ptr %2089, i64 13120
  %2097 = load i32, ptr %2096, align 4, !tbaa !38
  store i32 %2097, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 8), align 4, !tbaa !38
  %2098 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 8), align 4, !tbaa !38
  store i32 %2098, ptr %2096, align 4, !tbaa !38
  %2099 = getelementptr inbounds i8, ptr %2089, i64 13124
  %2100 = load i32, ptr %2099, align 4, !tbaa !38
  store i32 %2100, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 12), align 4, !tbaa !38
  %2101 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 12), align 4, !tbaa !38
  store i32 %2101, ptr %2099, align 4, !tbaa !38
  %2102 = getelementptr inbounds i8, ptr %2089, i64 13176
  %2103 = load i32, ptr %2102, align 4, !tbaa !38
  store i32 %2103, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 64), align 4, !tbaa !38
  %2104 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 64), align 4, !tbaa !38
  store i32 %2104, ptr %2102, align 4, !tbaa !38
  %2105 = getelementptr inbounds i8, ptr %2089, i64 13180
  %2106 = load i32, ptr %2105, align 4, !tbaa !38
  store i32 %2106, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 68), align 4, !tbaa !38
  %2107 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 68), align 4, !tbaa !38
  store i32 %2107, ptr %2105, align 4, !tbaa !38
  %2108 = getelementptr inbounds i8, ptr %2089, i64 13184
  %2109 = load i32, ptr %2108, align 4, !tbaa !38
  store i32 %2109, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 72), align 4, !tbaa !38
  %2110 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 72), align 4, !tbaa !38
  store i32 %2110, ptr %2108, align 4, !tbaa !38
  %2111 = getelementptr inbounds i8, ptr %2089, i64 13188
  %2112 = load i32, ptr %2111, align 4, !tbaa !38
  store i32 %2112, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 76), align 4, !tbaa !38
  %2113 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 76), align 4, !tbaa !38
  store i32 %2113, ptr %2111, align 4, !tbaa !38
  %2114 = getelementptr inbounds i8, ptr %2089, i64 13240
  %2115 = load i32, ptr %2114, align 4, !tbaa !38
  store i32 %2115, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 128), align 4, !tbaa !38
  %2116 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 128), align 4, !tbaa !38
  store i32 %2116, ptr %2114, align 4, !tbaa !38
  %2117 = getelementptr inbounds i8, ptr %2089, i64 13244
  %2118 = load i32, ptr %2117, align 4, !tbaa !38
  store i32 %2118, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 132), align 4, !tbaa !38
  %2119 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 132), align 4, !tbaa !38
  store i32 %2119, ptr %2117, align 4, !tbaa !38
  %2120 = getelementptr inbounds i8, ptr %2089, i64 13248
  %2121 = load i32, ptr %2120, align 4, !tbaa !38
  store i32 %2121, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 136), align 4, !tbaa !38
  %2122 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 136), align 4, !tbaa !38
  store i32 %2122, ptr %2120, align 4, !tbaa !38
  %2123 = getelementptr inbounds i8, ptr %2089, i64 13252
  %2124 = load i32, ptr %2123, align 4, !tbaa !38
  store i32 %2124, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 140), align 4, !tbaa !38
  %2125 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 140), align 4, !tbaa !38
  store i32 %2125, ptr %2123, align 4, !tbaa !38
  %2126 = getelementptr inbounds i8, ptr %2089, i64 13304
  %2127 = load i32, ptr %2126, align 4, !tbaa !38
  store i32 %2127, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 192), align 4, !tbaa !38
  %2128 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 192), align 4, !tbaa !38
  store i32 %2128, ptr %2126, align 4, !tbaa !38
  %2129 = getelementptr inbounds i8, ptr %2089, i64 13308
  %2130 = load i32, ptr %2129, align 4, !tbaa !38
  store i32 %2130, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 196), align 4, !tbaa !38
  %2131 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 196), align 4, !tbaa !38
  store i32 %2131, ptr %2129, align 4, !tbaa !38
  %2132 = getelementptr inbounds i8, ptr %2089, i64 13312
  %2133 = load i32, ptr %2132, align 4, !tbaa !38
  store i32 %2133, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 200), align 4, !tbaa !38
  %2134 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 200), align 4, !tbaa !38
  store i32 %2134, ptr %2132, align 4, !tbaa !38
  %2135 = getelementptr inbounds i8, ptr %2089, i64 13316
  %2136 = load i32, ptr %2135, align 4, !tbaa !38
  store i32 %2136, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 204), align 4, !tbaa !38
  %2137 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_B, i64 204), align 4, !tbaa !38
  store i32 %2137, ptr %2135, align 4, !tbaa !38
  %2138 = call signext i32 @dct_chroma4x4(i32 noundef signext 0, i32 noundef signext %148, i32 noundef signext %1) #15
  %2139 = getelementptr inbounds [4 x [4 x i32]], ptr @cbp_chroma_block, i64 0, i64 %154, i64 %157
  store i32 %2138, ptr %2139, align 4, !tbaa !38
  %2140 = getelementptr inbounds [4 x [4 x i32]], ptr @dc_level_temp, i64 0, i64 %154, i64 %157
  %2141 = load i32, ptr %2140, align 4, !tbaa !38
  %2142 = getelementptr inbounds [4 x [4 x i32]], ptr @dc_level, i64 0, i64 %154, i64 %157
  store i32 %2141, ptr %2142, align 4, !tbaa !38
  %2143 = load ptr, ptr @img, align 8, !tbaa !6
  %2144 = getelementptr inbounds i8, ptr %2143, i64 13112
  %2145 = load i32, ptr %2144, align 4, !tbaa !38
  store i32 %2145, ptr @rec_resB, align 4, !tbaa !38
  %2146 = load i32, ptr @resTrans_R, align 4, !tbaa !38
  store i32 %2146, ptr %2144, align 4, !tbaa !38
  %2147 = getelementptr inbounds i8, ptr %2143, i64 13116
  %2148 = load i32, ptr %2147, align 4, !tbaa !38
  store i32 %2148, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 4), align 4, !tbaa !38
  %2149 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 4), align 4, !tbaa !38
  store i32 %2149, ptr %2147, align 4, !tbaa !38
  %2150 = getelementptr inbounds i8, ptr %2143, i64 13120
  %2151 = load i32, ptr %2150, align 4, !tbaa !38
  store i32 %2151, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 8), align 4, !tbaa !38
  %2152 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 8), align 4, !tbaa !38
  store i32 %2152, ptr %2150, align 4, !tbaa !38
  %2153 = getelementptr inbounds i8, ptr %2143, i64 13124
  %2154 = load i32, ptr %2153, align 4, !tbaa !38
  store i32 %2154, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 12), align 4, !tbaa !38
  %2155 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 12), align 4, !tbaa !38
  store i32 %2155, ptr %2153, align 4, !tbaa !38
  %2156 = getelementptr inbounds i8, ptr %2143, i64 13176
  %2157 = load i32, ptr %2156, align 4, !tbaa !38
  store i32 %2157, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 64), align 4, !tbaa !38
  %2158 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 64), align 4, !tbaa !38
  store i32 %2158, ptr %2156, align 4, !tbaa !38
  %2159 = getelementptr inbounds i8, ptr %2143, i64 13180
  %2160 = load i32, ptr %2159, align 4, !tbaa !38
  store i32 %2160, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 68), align 4, !tbaa !38
  %2161 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 68), align 4, !tbaa !38
  store i32 %2161, ptr %2159, align 4, !tbaa !38
  %2162 = getelementptr inbounds i8, ptr %2143, i64 13184
  %2163 = load i32, ptr %2162, align 4, !tbaa !38
  store i32 %2163, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 72), align 4, !tbaa !38
  %2164 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 72), align 4, !tbaa !38
  store i32 %2164, ptr %2162, align 4, !tbaa !38
  %2165 = getelementptr inbounds i8, ptr %2143, i64 13188
  %2166 = load i32, ptr %2165, align 4, !tbaa !38
  store i32 %2166, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 76), align 4, !tbaa !38
  %2167 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 76), align 4, !tbaa !38
  store i32 %2167, ptr %2165, align 4, !tbaa !38
  %2168 = getelementptr inbounds i8, ptr %2143, i64 13240
  %2169 = load i32, ptr %2168, align 4, !tbaa !38
  store i32 %2169, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 128), align 4, !tbaa !38
  %2170 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 128), align 4, !tbaa !38
  store i32 %2170, ptr %2168, align 4, !tbaa !38
  %2171 = getelementptr inbounds i8, ptr %2143, i64 13244
  %2172 = load i32, ptr %2171, align 4, !tbaa !38
  store i32 %2172, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 132), align 4, !tbaa !38
  %2173 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 132), align 4, !tbaa !38
  store i32 %2173, ptr %2171, align 4, !tbaa !38
  %2174 = getelementptr inbounds i8, ptr %2143, i64 13248
  %2175 = load i32, ptr %2174, align 4, !tbaa !38
  store i32 %2175, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 136), align 4, !tbaa !38
  %2176 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 136), align 4, !tbaa !38
  store i32 %2176, ptr %2174, align 4, !tbaa !38
  %2177 = getelementptr inbounds i8, ptr %2143, i64 13252
  %2178 = load i32, ptr %2177, align 4, !tbaa !38
  store i32 %2178, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 140), align 4, !tbaa !38
  %2179 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 140), align 4, !tbaa !38
  store i32 %2179, ptr %2177, align 4, !tbaa !38
  %2180 = getelementptr inbounds i8, ptr %2143, i64 13304
  %2181 = load i32, ptr %2180, align 4, !tbaa !38
  store i32 %2181, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 192), align 4, !tbaa !38
  %2182 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 192), align 4, !tbaa !38
  store i32 %2182, ptr %2180, align 4, !tbaa !38
  %2183 = getelementptr inbounds i8, ptr %2143, i64 13308
  %2184 = load i32, ptr %2183, align 4, !tbaa !38
  store i32 %2184, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 196), align 4, !tbaa !38
  %2185 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 196), align 4, !tbaa !38
  store i32 %2185, ptr %2183, align 4, !tbaa !38
  %2186 = getelementptr inbounds i8, ptr %2143, i64 13312
  %2187 = load i32, ptr %2186, align 4, !tbaa !38
  store i32 %2187, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 200), align 4, !tbaa !38
  %2188 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 200), align 4, !tbaa !38
  store i32 %2188, ptr %2186, align 4, !tbaa !38
  %2189 = getelementptr inbounds i8, ptr %2143, i64 13316
  %2190 = load i32, ptr %2189, align 4, !tbaa !38
  store i32 %2190, ptr getelementptr inbounds (i8, ptr @rec_resB, i64 204), align 4, !tbaa !38
  %2191 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_R, i64 204), align 4, !tbaa !38
  store i32 %2191, ptr %2189, align 4, !tbaa !38
  %2192 = call signext i32 @dct_chroma4x4(i32 noundef signext 1, i32 noundef signext %149, i32 noundef signext %1) #15
  %2193 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), i64 0, i64 %154, i64 %157
  store i32 %2192, ptr %2193, align 4, !tbaa !38
  %2194 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @dc_level_temp, i64 64), i64 0, i64 %154, i64 %157
  %2195 = load i32, ptr %2194, align 4, !tbaa !38
  %2196 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @dc_level, i64 64), i64 0, i64 %154, i64 %157
  store i32 %2195, ptr %2196, align 4, !tbaa !38
  %2197 = load ptr, ptr @img, align 8, !tbaa !6
  %2198 = getelementptr inbounds i8, ptr %2197, i64 13112
  %2199 = load i32, ptr %2198, align 4, !tbaa !38
  store i32 %2199, ptr @rec_resR, align 4, !tbaa !38
  %2200 = getelementptr inbounds i8, ptr %2197, i64 13116
  %2201 = load i32, ptr %2200, align 4, !tbaa !38
  store i32 %2201, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 4), align 4, !tbaa !38
  %2202 = getelementptr inbounds i8, ptr %2197, i64 13120
  %2203 = load i32, ptr %2202, align 4, !tbaa !38
  store i32 %2203, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 8), align 4, !tbaa !38
  %2204 = getelementptr inbounds i8, ptr %2197, i64 13124
  %2205 = load i32, ptr %2204, align 4, !tbaa !38
  store i32 %2205, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 12), align 4, !tbaa !38
  %2206 = getelementptr inbounds i8, ptr %2197, i64 13176
  %2207 = load i32, ptr %2206, align 4, !tbaa !38
  store i32 %2207, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 64), align 4, !tbaa !38
  %2208 = getelementptr inbounds i8, ptr %2197, i64 13180
  %2209 = load i32, ptr %2208, align 4, !tbaa !38
  store i32 %2209, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 68), align 4, !tbaa !38
  %2210 = getelementptr inbounds i8, ptr %2197, i64 13184
  %2211 = load i32, ptr %2210, align 4, !tbaa !38
  store i32 %2211, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 72), align 4, !tbaa !38
  %2212 = getelementptr inbounds i8, ptr %2197, i64 13188
  %2213 = load i32, ptr %2212, align 4, !tbaa !38
  store i32 %2213, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 76), align 4, !tbaa !38
  %2214 = getelementptr inbounds i8, ptr %2197, i64 13240
  %2215 = load i32, ptr %2214, align 4, !tbaa !38
  store i32 %2215, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 128), align 4, !tbaa !38
  %2216 = getelementptr inbounds i8, ptr %2197, i64 13244
  %2217 = load i32, ptr %2216, align 4, !tbaa !38
  store i32 %2217, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 132), align 4, !tbaa !38
  %2218 = getelementptr inbounds i8, ptr %2197, i64 13248
  %2219 = load i32, ptr %2218, align 4, !tbaa !38
  store i32 %2219, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 136), align 4, !tbaa !38
  %2220 = getelementptr inbounds i8, ptr %2197, i64 13252
  %2221 = load i32, ptr %2220, align 4, !tbaa !38
  store i32 %2221, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 140), align 4, !tbaa !38
  %2222 = getelementptr inbounds i8, ptr %2197, i64 13304
  %2223 = load i32, ptr %2222, align 4, !tbaa !38
  store i32 %2223, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 192), align 4, !tbaa !38
  %2224 = getelementptr inbounds i8, ptr %2197, i64 13308
  %2225 = load i32, ptr %2224, align 4, !tbaa !38
  store i32 %2225, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 196), align 4, !tbaa !38
  %2226 = getelementptr inbounds i8, ptr %2197, i64 13312
  %2227 = load i32, ptr %2226, align 4, !tbaa !38
  store i32 %2227, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 200), align 4, !tbaa !38
  %2228 = getelementptr inbounds i8, ptr %2197, i64 13316
  %2229 = load i32, ptr %2228, align 4, !tbaa !38
  store i32 %2229, ptr getelementptr inbounds (i8, ptr @rec_resR, i64 204), align 4, !tbaa !38
  %2230 = getelementptr inbounds i8, ptr %2197, i64 90536
  %2231 = load i32, ptr %2230, align 8, !tbaa !80
  %2232 = getelementptr inbounds i8, ptr %2197, i64 8504
  %2233 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2234 = getelementptr inbounds i8, ptr %2233, i64 6464
  %2235 = load ptr, ptr %2234, align 8, !tbaa !81
  %2236 = load ptr, ptr %2235, align 8, !tbaa !6
  %2237 = getelementptr inbounds i8, ptr %2197, i64 90532
  %2238 = load i32, ptr %2237, align 4, !tbaa !82
  %2239 = getelementptr inbounds i8, ptr %2197, i64 184
  %2240 = getelementptr inbounds i8, ptr %2233, i64 6424
  %2241 = load ptr, ptr %2240, align 8, !tbaa !29
  %2242 = getelementptr inbounds i8, ptr %2197, i64 10552
  %2243 = getelementptr inbounds i8, ptr %2235, i64 8
  %2244 = load ptr, ptr %2243, align 8, !tbaa !6
  br label %2245

2245:                                             ; preds = %2055, %2297
  %2246 = phi i64 [ 0, %2055 ], [ %2298, %2297 ]
  %2247 = or disjoint i64 %2246, %165
  %2248 = add nsw i64 %2246, %167
  %2249 = getelementptr inbounds ptr, ptr %2236, i64 %2248
  %2250 = load ptr, ptr %2249, align 8, !tbaa !6
  %2251 = getelementptr inbounds ptr, ptr %2241, i64 %2248
  %2252 = load ptr, ptr %2251, align 8, !tbaa !6
  %2253 = getelementptr inbounds ptr, ptr %2244, i64 %2248
  %2254 = load ptr, ptr %2253, align 8, !tbaa !6
  br label %2255

2255:                                             ; preds = %2245, %2255
  %2256 = phi i64 [ 0, %2245 ], [ %2295, %2255 ]
  %2257 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %2246, i64 %2256
  %2258 = load i32, ptr %2257, align 4, !tbaa !38
  %2259 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2246, i64 %2256
  %2260 = load i32, ptr %2259, align 4, !tbaa !38
  %2261 = ashr i32 %2260, 1
  %2262 = sub nsw i32 %2258, %2261
  %2263 = add nsw i32 %2262, %2260
  %2264 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2246, i64 %2256
  %2265 = load i32, ptr %2264, align 4, !tbaa !38
  %2266 = ashr i32 %2265, 1
  %2267 = sub nsw i32 %2262, %2266
  %2268 = add nsw i32 %2267, %2265
  %2269 = or disjoint i64 %2256, %163
  %2270 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2232, i64 0, i64 %147, i64 %2247, i64 %2269
  %2271 = load i16, ptr %2270, align 2, !tbaa !25
  %2272 = zext i16 %2271 to i32
  %2273 = add nsw i32 %2267, %2272
  %2274 = call i32 @llvm.smax.i32(i32 %2273, i32 0)
  %2275 = call i32 @llvm.smin.i32(i32 %2231, i32 %2274)
  %2276 = trunc i32 %2275 to i16
  %2277 = add nsw i64 %2256, %158
  %2278 = getelementptr inbounds i16, ptr %2250, i64 %2277
  store i16 %2276, ptr %2278, align 2, !tbaa !25
  %2279 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %2239, i64 0, i64 %1913, i64 %2246, i64 %2256
  %2280 = load i16, ptr %2279, align 2, !tbaa !25
  %2281 = zext i16 %2280 to i32
  %2282 = add nsw i32 %2263, %2281
  %2283 = call i32 @llvm.smax.i32(i32 %2282, i32 0)
  %2284 = call i32 @llvm.smin.i32(i32 %2238, i32 %2283)
  %2285 = trunc i32 %2284 to i16
  %2286 = getelementptr inbounds i16, ptr %2252, i64 %2277
  store i16 %2285, ptr %2286, align 2, !tbaa !25
  %2287 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2242, i64 0, i64 %147, i64 %2247, i64 %2269
  %2288 = load i16, ptr %2287, align 2, !tbaa !25
  %2289 = zext i16 %2288 to i32
  %2290 = add nsw i32 %2268, %2289
  %2291 = call i32 @llvm.smax.i32(i32 %2290, i32 0)
  %2292 = call i32 @llvm.smin.i32(i32 %2231, i32 %2291)
  %2293 = trunc i32 %2292 to i16
  %2294 = getelementptr inbounds i16, ptr %2254, i64 %2277
  store i16 %2293, ptr %2294, align 2, !tbaa !25
  %2295 = add nuw nsw i64 %2256, 1
  %2296 = icmp eq i64 %2295, 4
  br i1 %2296, label %2297, label %2255

2297:                                             ; preds = %2255
  %2298 = add nuw nsw i64 %2246, 1
  %2299 = icmp eq i64 %2298, 4
  br i1 %2299, label %2606, label %2245

2300:                                             ; preds = %1707
  %2301 = getelementptr inbounds i8, ptr %1729, i64 14136
  %2302 = load ptr, ptr %2301, align 8, !tbaa !53
  %2303 = getelementptr ptr, ptr %2302, i64 %150
  %2304 = getelementptr i8, ptr %2303, i64 32
  %2305 = load ptr, ptr %2304, align 8, !tbaa !6
  %2306 = getelementptr inbounds ptr, ptr %2305, i64 %151
  %2307 = load ptr, ptr %2306, align 8, !tbaa !6
  %2308 = load ptr, ptr %2307, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2308, ptr noundef nonnull align 4 dereferenceable(72) @cofAC4x4_chroma, i64 72, i1 false)
  %2309 = load ptr, ptr @img, align 8, !tbaa !6
  %2310 = getelementptr inbounds i8, ptr %2309, i64 14136
  %2311 = load ptr, ptr %2310, align 8, !tbaa !53
  %2312 = getelementptr ptr, ptr %2311, i64 %150
  %2313 = getelementptr i8, ptr %2312, i64 64
  %2314 = load ptr, ptr %2313, align 8, !tbaa !6
  %2315 = getelementptr inbounds ptr, ptr %2314, i64 %151
  %2316 = load ptr, ptr %2315, align 8, !tbaa !6
  %2317 = load ptr, ptr %2316, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2317, ptr noundef nonnull align 4 dereferenceable(72) getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 144), i64 72, i1 false)
  %2318 = load ptr, ptr @img, align 8, !tbaa !6
  %2319 = getelementptr inbounds i8, ptr %2318, i64 14136
  %2320 = load ptr, ptr %2319, align 8, !tbaa !53
  %2321 = getelementptr ptr, ptr %2320, i64 %150
  %2322 = getelementptr i8, ptr %2321, i64 32
  %2323 = load ptr, ptr %2322, align 8, !tbaa !6
  %2324 = getelementptr inbounds ptr, ptr %2323, i64 %151
  %2325 = load ptr, ptr %2324, align 8, !tbaa !6
  %2326 = getelementptr inbounds i8, ptr %2325, i64 8
  %2327 = load ptr, ptr %2326, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2327, ptr noundef nonnull align 4 dereferenceable(72) getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 72), i64 72, i1 false)
  %2328 = load ptr, ptr @img, align 8, !tbaa !6
  %2329 = getelementptr inbounds i8, ptr %2328, i64 14136
  %2330 = load ptr, ptr %2329, align 8, !tbaa !53
  %2331 = getelementptr ptr, ptr %2330, i64 %150
  %2332 = getelementptr i8, ptr %2331, i64 64
  %2333 = load ptr, ptr %2332, align 8, !tbaa !6
  %2334 = getelementptr inbounds ptr, ptr %2333, i64 %151
  %2335 = load ptr, ptr %2334, align 8, !tbaa !6
  %2336 = getelementptr inbounds i8, ptr %2335, i64 8
  %2337 = load ptr, ptr %2336, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2337, ptr noundef nonnull align 4 dereferenceable(72) getelementptr inbounds (i8, ptr @cofAC4x4_chroma, i64 216), i64 72, i1 false)
  br label %2338

2338:                                             ; preds = %2300, %1707
  %2339 = sext i32 %1656 to i64
  %2340 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2341 = getelementptr inbounds i8, ptr %2340, i64 6424
  %2342 = load ptr, ptr %2341, align 8, !tbaa !29
  %2343 = getelementptr inbounds ptr, ptr %2342, i64 %167
  %2344 = load ptr, ptr %2343, align 8, !tbaa !6
  %2345 = getelementptr inbounds i16, ptr %2344, i64 %158
  store i64 %1651, ptr %2345, align 2
  %2346 = load ptr, ptr @img, align 8, !tbaa !6
  %2347 = getelementptr inbounds i8, ptr %2346, i64 12600
  %2348 = getelementptr inbounds [16 x [16 x i16]], ptr %2347, i64 0, i64 %165, i64 %161
  %2349 = getelementptr inbounds i8, ptr %2346, i64 184
  %2350 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %2349, i64 0, i64 %2339, i64 0
  %2351 = load i64, ptr %2350, align 8
  store i64 %2351, ptr %2348, align 2
  %2352 = load ptr, ptr @img, align 8, !tbaa !6
  %2353 = getelementptr inbounds i8, ptr %2352, i64 24
  %2354 = load i32, ptr %2353, align 8, !tbaa !14
  %2355 = icmp ne i32 %2354, 3
  %2356 = load i32, ptr @si_frame_indicator, align 4
  %2357 = icmp ne i32 %2356, 0
  %2358 = select i1 %2355, i1 true, i1 %2357
  %2359 = load i32, ptr @sp2_frame_indicator, align 4
  %2360 = icmp ne i32 %2359, 0
  %2361 = select i1 %2358, i1 true, i1 %2360
  br i1 %2361, label %2367, label %2362

2362:                                             ; preds = %2338
  %2363 = load ptr, ptr @lrec, align 8, !tbaa !6
  %2364 = getelementptr inbounds ptr, ptr %2363, i64 %167
  %2365 = load ptr, ptr %2364, align 8, !tbaa !6
  %2366 = getelementptr inbounds i32, ptr %2365, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2366, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false)
  br label %2367

2367:                                             ; preds = %2338, %2362
  %2368 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2369 = getelementptr inbounds i8, ptr %2368, i64 6424
  %2370 = load ptr, ptr %2369, align 8, !tbaa !29
  %2371 = add nsw i64 %167, 1
  %2372 = getelementptr inbounds ptr, ptr %2370, i64 %2371
  %2373 = load ptr, ptr %2372, align 8, !tbaa !6
  %2374 = getelementptr inbounds i16, ptr %2373, i64 %158
  store i64 %1650, ptr %2374, align 2
  %2375 = load ptr, ptr @img, align 8, !tbaa !6
  %2376 = getelementptr inbounds i8, ptr %2375, i64 12600
  %2377 = or disjoint i64 %165, 1
  %2378 = getelementptr inbounds [16 x [16 x i16]], ptr %2376, i64 0, i64 %2377, i64 %161
  %2379 = getelementptr inbounds i8, ptr %2375, i64 184
  %2380 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %2379, i64 0, i64 %2339, i64 1
  %2381 = load i64, ptr %2380, align 8
  store i64 %2381, ptr %2378, align 2
  %2382 = load ptr, ptr @img, align 8, !tbaa !6
  %2383 = getelementptr inbounds i8, ptr %2382, i64 24
  %2384 = load i32, ptr %2383, align 8, !tbaa !14
  %2385 = icmp ne i32 %2384, 3
  %2386 = load i32, ptr @si_frame_indicator, align 4
  %2387 = icmp ne i32 %2386, 0
  %2388 = select i1 %2385, i1 true, i1 %2387
  %2389 = load i32, ptr @sp2_frame_indicator, align 4
  %2390 = icmp ne i32 %2389, 0
  %2391 = select i1 %2388, i1 true, i1 %2390
  br i1 %2391, label %2398, label %2392

2392:                                             ; preds = %2367
  %2393 = load ptr, ptr @lrec, align 8, !tbaa !6
  %2394 = getelementptr inbounds ptr, ptr %2393, i64 %2371
  %2395 = load ptr, ptr %2394, align 8, !tbaa !6
  %2396 = getelementptr inbounds i32, ptr %2395, i64 %158
  %2397 = getelementptr inbounds i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2396, ptr noundef nonnull align 4 dereferenceable(16) %2397, i64 16, i1 false)
  br label %2398

2398:                                             ; preds = %2392, %2367
  %2399 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2400 = getelementptr inbounds i8, ptr %2399, i64 6424
  %2401 = load ptr, ptr %2400, align 8, !tbaa !29
  %2402 = add nsw i64 %167, 2
  %2403 = getelementptr inbounds ptr, ptr %2401, i64 %2402
  %2404 = load ptr, ptr %2403, align 8, !tbaa !6
  %2405 = getelementptr inbounds i16, ptr %2404, i64 %158
  store i64 %1649, ptr %2405, align 2
  %2406 = load ptr, ptr @img, align 8, !tbaa !6
  %2407 = getelementptr inbounds i8, ptr %2406, i64 12600
  %2408 = or disjoint i64 %165, 2
  %2409 = getelementptr inbounds [16 x [16 x i16]], ptr %2407, i64 0, i64 %2408, i64 %161
  %2410 = getelementptr inbounds i8, ptr %2406, i64 184
  %2411 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %2410, i64 0, i64 %2339, i64 2
  %2412 = load i64, ptr %2411, align 8
  store i64 %2412, ptr %2409, align 2
  %2413 = load ptr, ptr @img, align 8, !tbaa !6
  %2414 = getelementptr inbounds i8, ptr %2413, i64 24
  %2415 = load i32, ptr %2414, align 8, !tbaa !14
  %2416 = icmp ne i32 %2415, 3
  %2417 = load i32, ptr @si_frame_indicator, align 4
  %2418 = icmp ne i32 %2417, 0
  %2419 = select i1 %2416, i1 true, i1 %2418
  %2420 = load i32, ptr @sp2_frame_indicator, align 4
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2419, i1 true, i1 %2421
  br i1 %2422, label %2429, label %2423

2423:                                             ; preds = %2398
  %2424 = load ptr, ptr @lrec, align 8, !tbaa !6
  %2425 = getelementptr inbounds ptr, ptr %2424, i64 %2402
  %2426 = load ptr, ptr %2425, align 8, !tbaa !6
  %2427 = getelementptr inbounds i32, ptr %2426, i64 %158
  %2428 = getelementptr inbounds i8, ptr %13, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2427, ptr noundef nonnull align 4 dereferenceable(16) %2428, i64 16, i1 false)
  br label %2429

2429:                                             ; preds = %2423, %2398
  %2430 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2431 = getelementptr inbounds i8, ptr %2430, i64 6424
  %2432 = load ptr, ptr %2431, align 8, !tbaa !29
  %2433 = add nsw i64 %167, 3
  %2434 = getelementptr inbounds ptr, ptr %2432, i64 %2433
  %2435 = load ptr, ptr %2434, align 8, !tbaa !6
  %2436 = getelementptr inbounds i16, ptr %2435, i64 %158
  store i64 %1648, ptr %2436, align 2
  %2437 = load ptr, ptr @img, align 8, !tbaa !6
  %2438 = getelementptr inbounds i8, ptr %2437, i64 12600
  %2439 = or disjoint i64 %165, 3
  %2440 = getelementptr inbounds [16 x [16 x i16]], ptr %2438, i64 0, i64 %2439, i64 %161
  %2441 = getelementptr inbounds i8, ptr %2437, i64 184
  %2442 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %2441, i64 0, i64 %2339, i64 3
  %2443 = load i64, ptr %2442, align 8
  store i64 %2443, ptr %2440, align 2
  %2444 = load ptr, ptr @img, align 8, !tbaa !6
  %2445 = getelementptr inbounds i8, ptr %2444, i64 24
  %2446 = load i32, ptr %2445, align 8, !tbaa !14
  %2447 = icmp ne i32 %2446, 3
  %2448 = load i32, ptr @si_frame_indicator, align 4
  %2449 = icmp ne i32 %2448, 0
  %2450 = select i1 %2447, i1 true, i1 %2449
  %2451 = load i32, ptr @sp2_frame_indicator, align 4
  %2452 = icmp ne i32 %2451, 0
  %2453 = select i1 %2450, i1 true, i1 %2452
  br i1 %2453, label %2461, label %2454

2454:                                             ; preds = %2429
  %2455 = load ptr, ptr @lrec, align 8, !tbaa !6
  %2456 = getelementptr inbounds ptr, ptr %2455, i64 %2433
  %2457 = load ptr, ptr %2456, align 8, !tbaa !6
  %2458 = getelementptr inbounds i32, ptr %2457, i64 %158
  %2459 = getelementptr inbounds i8, ptr %13, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2458, ptr noundef nonnull align 4 dereferenceable(16) %2459, i64 16, i1 false)
  %2460 = load ptr, ptr @img, align 8, !tbaa !6
  br label %2461

2461:                                             ; preds = %2454, %2429
  %2462 = phi ptr [ %2460, %2454 ], [ %2444, %2429 ]
  %2463 = getelementptr inbounds i8, ptr %2462, i64 90212
  %2464 = load i32, ptr %2463, align 4, !tbaa !79
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2483, label %2466

2466:                                             ; preds = %2461
  %2467 = getelementptr inbounds i8, ptr %2462, i64 15176
  %2468 = getelementptr inbounds [16 x [16 x i32]], ptr %2467, i64 0, i64 %165, i64 %161
  %2469 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %165, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2468, ptr noundef nonnull align 4 dereferenceable(16) %2469, i64 16, i1 false)
  %2470 = load ptr, ptr @img, align 8, !tbaa !6
  %2471 = getelementptr inbounds i8, ptr %2470, i64 15176
  %2472 = getelementptr inbounds [16 x [16 x i32]], ptr %2471, i64 0, i64 %2377, i64 %161
  %2473 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %2377, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2472, ptr noundef nonnull align 4 dereferenceable(16) %2473, i64 16, i1 false)
  %2474 = load ptr, ptr @img, align 8, !tbaa !6
  %2475 = getelementptr inbounds i8, ptr %2474, i64 15176
  %2476 = getelementptr inbounds [16 x [16 x i32]], ptr %2475, i64 0, i64 %2408, i64 %161
  %2477 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %2408, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2476, ptr noundef nonnull align 4 dereferenceable(16) %2477, i64 16, i1 false)
  %2478 = load ptr, ptr @img, align 8, !tbaa !6
  %2479 = getelementptr inbounds i8, ptr %2478, i64 15176
  %2480 = getelementptr inbounds [16 x [16 x i32]], ptr %2479, i64 0, i64 %2439, i64 %161
  %2481 = getelementptr inbounds [16 x [16 x i32]], ptr @fadjust4x4, i64 0, i64 %2439, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2480, ptr noundef nonnull align 4 dereferenceable(16) %2481, i64 16, i1 false)
  %2482 = load ptr, ptr @img, align 8, !tbaa !6
  br label %2483

2483:                                             ; preds = %2466, %2461
  %2484 = phi ptr [ %2482, %2466 ], [ %2462, %2461 ]
  %2485 = getelementptr inbounds i8, ptr %2484, i64 90572
  %2486 = load i32, ptr %2485, align 4, !tbaa !39
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2606, label %2488

2488:                                             ; preds = %2483, %2605
  %2489 = phi i1 [ false, %2605 ], [ true, %2483 ]
  %2490 = phi i64 [ %1647, %2605 ], [ %1646, %2483 ]
  %2491 = phi ptr [ %18, %2605 ], [ %15, %2483 ]
  %2492 = phi ptr [ %19, %2605 ], [ %16, %2483 ]
  %2493 = phi ptr [ %20, %2605 ], [ %17, %2483 ]
  %2494 = phi ptr [ %63, %2605 ], [ %14, %2483 ]
  %2495 = phi ptr [ %64, %2605 ], [ %65, %2483 ]
  %2496 = phi ptr [ %66, %2605 ], [ %67, %2483 ]
  %2497 = phi ptr [ %68, %2605 ], [ %69, %2483 ]
  %2498 = phi i64 [ 1, %2605 ], [ 0, %2483 ]
  %2499 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2500 = getelementptr inbounds i8, ptr %2499, i64 6464
  %2501 = load ptr, ptr %2500, align 8, !tbaa !81
  %2502 = getelementptr inbounds ptr, ptr %2501, i64 %2498
  %2503 = load ptr, ptr %2502, align 8, !tbaa !6
  %2504 = getelementptr inbounds ptr, ptr %2503, i64 %167
  %2505 = load ptr, ptr %2504, align 8, !tbaa !6
  %2506 = getelementptr inbounds i16, ptr %2505, i64 %158
  store i64 %2490, ptr %2506, align 2
  %2507 = load ptr, ptr @img, align 8, !tbaa !6
  %2508 = getelementptr inbounds i8, ptr %2507, i64 24
  %2509 = load i32, ptr %2508, align 8, !tbaa !14
  %2510 = icmp ne i32 %2509, 3
  %2511 = load i32, ptr @si_frame_indicator, align 4
  %2512 = icmp ne i32 %2511, 0
  %2513 = select i1 %2510, i1 true, i1 %2512
  %2514 = load i32, ptr @sp2_frame_indicator, align 4
  %2515 = icmp ne i32 %2514, 0
  %2516 = select i1 %2513, i1 true, i1 %2515
  br i1 %2516, label %2524, label %2517

2517:                                             ; preds = %2488
  %2518 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %2519 = getelementptr inbounds ptr, ptr %2518, i64 %2498
  %2520 = load ptr, ptr %2519, align 8, !tbaa !6
  %2521 = getelementptr inbounds ptr, ptr %2520, i64 %167
  %2522 = load ptr, ptr %2521, align 8, !tbaa !6
  %2523 = getelementptr inbounds i32, ptr %2522, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2523, ptr noundef nonnull align 4 dereferenceable(16) %2494, i64 16, i1 false)
  br label %2524

2524:                                             ; preds = %2488, %2517
  %2525 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2526 = getelementptr inbounds i8, ptr %2525, i64 6464
  %2527 = load ptr, ptr %2526, align 8, !tbaa !81
  %2528 = getelementptr inbounds ptr, ptr %2527, i64 %2498
  %2529 = load ptr, ptr %2528, align 8, !tbaa !6
  %2530 = getelementptr inbounds ptr, ptr %2529, i64 %2371
  %2531 = load ptr, ptr %2530, align 8, !tbaa !6
  %2532 = getelementptr inbounds i16, ptr %2531, i64 %158
  %2533 = load i64, ptr %2491, align 8
  store i64 %2533, ptr %2532, align 2
  %2534 = load ptr, ptr @img, align 8, !tbaa !6
  %2535 = getelementptr inbounds i8, ptr %2534, i64 24
  %2536 = load i32, ptr %2535, align 8, !tbaa !14
  %2537 = icmp ne i32 %2536, 3
  %2538 = load i32, ptr @si_frame_indicator, align 4
  %2539 = icmp ne i32 %2538, 0
  %2540 = select i1 %2537, i1 true, i1 %2539
  %2541 = load i32, ptr @sp2_frame_indicator, align 4
  %2542 = icmp ne i32 %2541, 0
  %2543 = select i1 %2540, i1 true, i1 %2542
  br i1 %2543, label %2551, label %2544

2544:                                             ; preds = %2524
  %2545 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %2546 = getelementptr inbounds ptr, ptr %2545, i64 %2498
  %2547 = load ptr, ptr %2546, align 8, !tbaa !6
  %2548 = getelementptr inbounds ptr, ptr %2547, i64 %2371
  %2549 = load ptr, ptr %2548, align 8, !tbaa !6
  %2550 = getelementptr inbounds i32, ptr %2549, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2550, ptr noundef nonnull align 4 dereferenceable(16) %2495, i64 16, i1 false)
  br label %2551

2551:                                             ; preds = %2544, %2524
  %2552 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2553 = getelementptr inbounds i8, ptr %2552, i64 6464
  %2554 = load ptr, ptr %2553, align 8, !tbaa !81
  %2555 = getelementptr inbounds ptr, ptr %2554, i64 %2498
  %2556 = load ptr, ptr %2555, align 8, !tbaa !6
  %2557 = getelementptr inbounds ptr, ptr %2556, i64 %2402
  %2558 = load ptr, ptr %2557, align 8, !tbaa !6
  %2559 = getelementptr inbounds i16, ptr %2558, i64 %158
  %2560 = load i64, ptr %2492, align 8
  store i64 %2560, ptr %2559, align 2
  %2561 = load ptr, ptr @img, align 8, !tbaa !6
  %2562 = getelementptr inbounds i8, ptr %2561, i64 24
  %2563 = load i32, ptr %2562, align 8, !tbaa !14
  %2564 = icmp ne i32 %2563, 3
  %2565 = load i32, ptr @si_frame_indicator, align 4
  %2566 = icmp ne i32 %2565, 0
  %2567 = select i1 %2564, i1 true, i1 %2566
  %2568 = load i32, ptr @sp2_frame_indicator, align 4
  %2569 = icmp ne i32 %2568, 0
  %2570 = select i1 %2567, i1 true, i1 %2569
  br i1 %2570, label %2578, label %2571

2571:                                             ; preds = %2551
  %2572 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %2573 = getelementptr inbounds ptr, ptr %2572, i64 %2498
  %2574 = load ptr, ptr %2573, align 8, !tbaa !6
  %2575 = getelementptr inbounds ptr, ptr %2574, i64 %2402
  %2576 = load ptr, ptr %2575, align 8, !tbaa !6
  %2577 = getelementptr inbounds i32, ptr %2576, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2577, ptr noundef nonnull align 4 dereferenceable(16) %2496, i64 16, i1 false)
  br label %2578

2578:                                             ; preds = %2571, %2551
  %2579 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2580 = getelementptr inbounds i8, ptr %2579, i64 6464
  %2581 = load ptr, ptr %2580, align 8, !tbaa !81
  %2582 = getelementptr inbounds ptr, ptr %2581, i64 %2498
  %2583 = load ptr, ptr %2582, align 8, !tbaa !6
  %2584 = getelementptr inbounds ptr, ptr %2583, i64 %2433
  %2585 = load ptr, ptr %2584, align 8, !tbaa !6
  %2586 = getelementptr inbounds i16, ptr %2585, i64 %158
  %2587 = load i64, ptr %2493, align 8
  store i64 %2587, ptr %2586, align 2
  %2588 = load ptr, ptr @img, align 8, !tbaa !6
  %2589 = getelementptr inbounds i8, ptr %2588, i64 24
  %2590 = load i32, ptr %2589, align 8, !tbaa !14
  %2591 = icmp ne i32 %2590, 3
  %2592 = load i32, ptr @si_frame_indicator, align 4
  %2593 = icmp ne i32 %2592, 0
  %2594 = select i1 %2591, i1 true, i1 %2593
  %2595 = load i32, ptr @sp2_frame_indicator, align 4
  %2596 = icmp ne i32 %2595, 0
  %2597 = select i1 %2594, i1 true, i1 %2596
  br i1 %2597, label %2605, label %2598

2598:                                             ; preds = %2578
  %2599 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %2600 = getelementptr inbounds ptr, ptr %2599, i64 %2498
  %2601 = load ptr, ptr %2600, align 8, !tbaa !6
  %2602 = getelementptr inbounds ptr, ptr %2601, i64 %2433
  %2603 = load ptr, ptr %2602, align 8, !tbaa !6
  %2604 = getelementptr inbounds i32, ptr %2603, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2604, ptr noundef nonnull align 4 dereferenceable(16) %2497, i64 16, i1 false)
  br label %2605

2605:                                             ; preds = %2598, %2578
  br i1 %2489, label %2488, label %2606

2606:                                             ; preds = %2605, %2297, %2483, %1739
  %2607 = phi i32 [ %1653, %2483 ], [ %1907, %1739 ], [ %2088, %2297 ], [ %1653, %2605 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %2607
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local void @intrapred_luma(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local void @store_coding_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @Mode_Decision_for_8x8IntraBlocks(i32 noundef signext %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = tail call double @llvm.fmuladd.f64(double %1, double 6.000000e+00, double 4.999000e-01)
  %6 = tail call double @llvm.floor.f64(double %5)
  %7 = fptosi double %6 to i32
  store i32 %7, ptr %2, align 4, !tbaa !38
  %8 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext 0, double noundef %1, ptr noundef nonnull %4)
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %4, align 4, !tbaa !38
  %11 = load i32, ptr %2, align 4, !tbaa !38
  %12 = add nsw i32 %11, %10
  store i32 %12, ptr %2, align 4, !tbaa !38
  %13 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext 1, double noundef %1, ptr noundef nonnull %4)
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %4, align 4, !tbaa !38
  %16 = load i32, ptr %2, align 4, !tbaa !38
  %17 = add nsw i32 %16, %15
  store i32 %17, ptr %2, align 4, !tbaa !38
  %18 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext 2, double noundef %1, ptr noundef nonnull %4)
  %19 = icmp ne i32 %18, 0
  %20 = load i32, ptr %4, align 4, !tbaa !38
  %21 = load i32, ptr %2, align 4, !tbaa !38
  %22 = add nsw i32 %21, %20
  store i32 %22, ptr %2, align 4, !tbaa !38
  %23 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext 3, double noundef %1, ptr noundef nonnull %4)
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 true, i1 %19
  %26 = select i1 %25, i1 true, i1 %14
  %27 = select i1 %26, i1 true, i1 %9
  %28 = zext i1 %27 to i32
  %29 = load i32, ptr %4, align 4, !tbaa !38
  %30 = load i32, ptr %2, align 4, !tbaa !38
  %31 = add nsw i32 %30, %29
  store i32 %31, ptr %2, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4, !tbaa !38
  %4 = tail call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double 4.999000e-01)
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fptosi double %5 to i32
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ 0, %2 ], [ %34, %7 ]
  %9 = phi i32 [ 0, %2 ], [ %31, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %10 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %8, i32 noundef signext 0, double noundef %0, ptr noundef nonnull %3)
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %3, align 4, !tbaa !38
  %13 = add nsw i32 %12, %6
  %14 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %8, i32 noundef signext 1, double noundef %0, ptr noundef nonnull %3)
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %3, align 4, !tbaa !38
  %17 = add nsw i32 %13, %16
  %18 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %8, i32 noundef signext 2, double noundef %0, ptr noundef nonnull %3)
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %3, align 4, !tbaa !38
  %21 = add nsw i32 %17, %20
  %22 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %8, i32 noundef signext 3, double noundef %0, ptr noundef nonnull %3)
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i1 %19, i1 false
  %25 = select i1 %24, i1 %15, i1 false
  %26 = select i1 %25, i1 %11, i1 false
  %27 = load i32, ptr %3, align 4, !tbaa !38
  %28 = add nsw i32 %21, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %29 = shl nuw nsw i32 1, %8
  %30 = select i1 %26, i32 0, i32 %29
  %31 = or i32 %30, %9
  %32 = load i32, ptr %1, align 4, !tbaa !38
  %33 = add nsw i32 %28, %32
  store i32 %33, ptr %1, align 4, !tbaa !38
  %34 = add nuw nsw i32 %8, 1
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %7

36:                                               ; preds = %7
  ret i32 %31
}

; Function Attrs: nounwind
define dso_local double @RDCost_for_8x8blocks(ptr nocapture noundef %0, ptr noundef %1, double noundef %2, i32 noundef signext %3, i32 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !tbaa !38
  %12 = shl i32 %3, 3
  %13 = and i32 %12, 8
  %14 = shl i32 %3, 2
  %15 = and i32 %14, -8
  %16 = lshr exact i32 %13, 2
  %17 = ashr exact i32 %15, 2
  %18 = load ptr, ptr @img, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i32 %20, 1
  %22 = icmp eq i32 %4, 0
  %23 = and i1 %22, %21
  %24 = sext i16 %5 to i32
  %25 = tail call signext i32 @B8Mode2Value(i32 noundef signext %4, i32 noundef signext %24) #15
  %26 = load ptr, ptr @img, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 31576
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds i8, ptr %26, i64 12
  %30 = load i32, ptr %29, align 4, !tbaa !33
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.macroblock, ptr %28, i64 %31
  %33 = getelementptr inbounds i8, ptr %26, i64 31584
  %34 = load i32, ptr %32, align 8, !tbaa !34
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %33, i64 0, i64 %35
  %37 = getelementptr inbounds i8, ptr %26, i64 31568
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  %39 = load ptr, ptr @input, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 2992
  %41 = load i32, ptr %40, align 8, !tbaa !37
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %32, i64 476
  store i16 0, ptr %45, align 4, !tbaa !83
  br i1 %23, label %46, label %77

46:                                               ; preds = %8
  %47 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %26, i64 148
  %49 = load i32, ptr %48, align 4, !tbaa !23
  %50 = add nsw i32 %49, %17
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %26, i64 144
  %55 = load i32, ptr %54, align 8, !tbaa !24
  %56 = add nsw i32 %55, %16
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %53, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !25
  %60 = icmp slt i16 %59, 0
  br i1 %60, label %754, label %61

61:                                               ; preds = %46
  %62 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds ptr, ptr %63, i64 %51
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 %57
  %67 = load i8, ptr %66, align 1, !tbaa !20
  %68 = zext i8 %67 to i16
  %69 = getelementptr inbounds i8, ptr %62, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %51
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 %57
  %74 = load i8, ptr %73, align 1, !tbaa !20
  %75 = zext i8 %74 to i16
  %76 = call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %11, ptr noundef %1, i32 noundef signext %3, i16 noundef signext %59, i32 noundef signext 0, i32 noundef signext 0, i16 noundef signext %68, i16 noundef signext %75) #15
  br label %85

77:                                               ; preds = %8
  %78 = and i16 %5, -3
  %79 = icmp eq i16 %78, 0
  %80 = select i1 %79, i32 %4, i32 0
  %81 = add i16 %5, -1
  %82 = icmp ult i16 %81, 2
  %83 = select i1 %82, i32 %4, i32 0
  %84 = call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %11, ptr noundef %1, i32 noundef signext %3, i16 noundef signext %5, i32 noundef signext %80, i32 noundef signext %83, i16 noundef signext %6, i16 noundef signext %7) #15
  br label %85

85:                                               ; preds = %77, %61
  %86 = phi i32 [ %84, %77 ], [ %76, %61 ]
  store i32 %86, ptr %0, align 4, !tbaa !38
  %87 = load ptr, ptr @img, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 90572
  %89 = load i32, ptr %88, align 4, !tbaa !39
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %375, label %91

91:                                               ; preds = %85
  %92 = add nsw i32 %3, 4
  %93 = add nsw i32 %3, 8
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %87, %91 ], [ %243, %94 ]
  %96 = phi i32 [ 0, %91 ], [ %294, %94 ]
  %97 = phi i32 [ 0, %91 ], [ %293, %94 ]
  %98 = shl nuw nsw i32 %96, 2
  %99 = and i32 %98, 4
  %100 = or disjoint i32 %99, %13
  %101 = shl nuw nsw i32 %96, 1
  %102 = and i32 %101, 4
  %103 = or disjoint i32 %102, %15
  %104 = getelementptr inbounds i8, ptr %95, i64 13112
  %105 = zext nneg i32 %100 to i64
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %106, i64 %105
  %108 = load i32, ptr %107, align 4, !tbaa !38
  store i32 %108, ptr %104, align 4, !tbaa !38
  %109 = or disjoint i64 %105, 1
  %110 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %106, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !38
  %112 = getelementptr inbounds i8, ptr %95, i64 13116
  store i32 %111, ptr %112, align 4, !tbaa !38
  %113 = or disjoint i64 %105, 2
  %114 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %106, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !38
  %116 = getelementptr inbounds i8, ptr %95, i64 13120
  store i32 %115, ptr %116, align 4, !tbaa !38
  %117 = or disjoint i64 %105, 3
  %118 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %106, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !38
  %120 = getelementptr inbounds i8, ptr %95, i64 13124
  store i32 %119, ptr %120, align 4, !tbaa !38
  %121 = or disjoint i64 %106, 1
  %122 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %121, i64 %105
  %123 = load i32, ptr %122, align 4, !tbaa !38
  %124 = getelementptr inbounds i8, ptr %95, i64 13176
  store i32 %123, ptr %124, align 4, !tbaa !38
  %125 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %121, i64 %109
  %126 = load i32, ptr %125, align 4, !tbaa !38
  %127 = getelementptr inbounds i8, ptr %95, i64 13180
  store i32 %126, ptr %127, align 4, !tbaa !38
  %128 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %121, i64 %113
  %129 = load i32, ptr %128, align 4, !tbaa !38
  %130 = getelementptr inbounds i8, ptr %95, i64 13184
  store i32 %129, ptr %130, align 4, !tbaa !38
  %131 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %121, i64 %117
  %132 = load i32, ptr %131, align 4, !tbaa !38
  %133 = getelementptr inbounds i8, ptr %95, i64 13188
  store i32 %132, ptr %133, align 4, !tbaa !38
  %134 = or disjoint i64 %106, 2
  %135 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %134, i64 %105
  %136 = load i32, ptr %135, align 4, !tbaa !38
  %137 = getelementptr inbounds i8, ptr %95, i64 13240
  store i32 %136, ptr %137, align 4, !tbaa !38
  %138 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %134, i64 %109
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = getelementptr inbounds i8, ptr %95, i64 13244
  store i32 %139, ptr %140, align 4, !tbaa !38
  %141 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %134, i64 %113
  %142 = load i32, ptr %141, align 4, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %95, i64 13248
  store i32 %142, ptr %143, align 4, !tbaa !38
  %144 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %134, i64 %117
  %145 = load i32, ptr %144, align 4, !tbaa !38
  %146 = getelementptr inbounds i8, ptr %95, i64 13252
  store i32 %145, ptr %146, align 4, !tbaa !38
  %147 = or disjoint i64 %106, 3
  %148 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %147, i64 %105
  %149 = load i32, ptr %148, align 4, !tbaa !38
  %150 = getelementptr inbounds i8, ptr %95, i64 13304
  store i32 %149, ptr %150, align 4, !tbaa !38
  %151 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %147, i64 %109
  %152 = load i32, ptr %151, align 4, !tbaa !38
  %153 = getelementptr inbounds i8, ptr %95, i64 13308
  store i32 %152, ptr %153, align 4, !tbaa !38
  %154 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %147, i64 %113
  %155 = load i32, ptr %154, align 4, !tbaa !38
  %156 = getelementptr inbounds i8, ptr %95, i64 13312
  store i32 %155, ptr %156, align 4, !tbaa !38
  %157 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %147, i64 %117
  %158 = load i32, ptr %157, align 4, !tbaa !38
  %159 = getelementptr inbounds i8, ptr %95, i64 13316
  store i32 %158, ptr %159, align 4, !tbaa !38
  %160 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %92, i32 noundef signext %96, i32 noundef signext 0)
  %161 = load ptr, ptr @img, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 13112
  %163 = load i32, ptr %162, align 4, !tbaa !38
  %164 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %106, i64 %105
  store i32 %163, ptr %164, align 4, !tbaa !38
  %165 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %106, i64 %105
  %166 = load i32, ptr %165, align 4, !tbaa !38
  store i32 %166, ptr %162, align 4, !tbaa !38
  %167 = getelementptr inbounds i8, ptr %161, i64 13116
  %168 = load i32, ptr %167, align 4, !tbaa !38
  %169 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %106, i64 %109
  store i32 %168, ptr %169, align 4, !tbaa !38
  %170 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %106, i64 %109
  %171 = load i32, ptr %170, align 4, !tbaa !38
  store i32 %171, ptr %167, align 4, !tbaa !38
  %172 = getelementptr inbounds i8, ptr %161, i64 13120
  %173 = load i32, ptr %172, align 4, !tbaa !38
  %174 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %106, i64 %113
  store i32 %173, ptr %174, align 4, !tbaa !38
  %175 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %106, i64 %113
  %176 = load i32, ptr %175, align 4, !tbaa !38
  store i32 %176, ptr %172, align 4, !tbaa !38
  %177 = getelementptr inbounds i8, ptr %161, i64 13124
  %178 = load i32, ptr %177, align 4, !tbaa !38
  %179 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %106, i64 %117
  store i32 %178, ptr %179, align 4, !tbaa !38
  %180 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %106, i64 %117
  %181 = load i32, ptr %180, align 4, !tbaa !38
  store i32 %181, ptr %177, align 4, !tbaa !38
  %182 = getelementptr inbounds i8, ptr %161, i64 13176
  %183 = load i32, ptr %182, align 4, !tbaa !38
  %184 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %121, i64 %105
  store i32 %183, ptr %184, align 4, !tbaa !38
  %185 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %121, i64 %105
  %186 = load i32, ptr %185, align 4, !tbaa !38
  store i32 %186, ptr %182, align 4, !tbaa !38
  %187 = getelementptr inbounds i8, ptr %161, i64 13180
  %188 = load i32, ptr %187, align 4, !tbaa !38
  %189 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %121, i64 %109
  store i32 %188, ptr %189, align 4, !tbaa !38
  %190 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %121, i64 %109
  %191 = load i32, ptr %190, align 4, !tbaa !38
  store i32 %191, ptr %187, align 4, !tbaa !38
  %192 = getelementptr inbounds i8, ptr %161, i64 13184
  %193 = load i32, ptr %192, align 4, !tbaa !38
  %194 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %121, i64 %113
  store i32 %193, ptr %194, align 4, !tbaa !38
  %195 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %121, i64 %113
  %196 = load i32, ptr %195, align 4, !tbaa !38
  store i32 %196, ptr %192, align 4, !tbaa !38
  %197 = getelementptr inbounds i8, ptr %161, i64 13188
  %198 = load i32, ptr %197, align 4, !tbaa !38
  %199 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %121, i64 %117
  store i32 %198, ptr %199, align 4, !tbaa !38
  %200 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %121, i64 %117
  %201 = load i32, ptr %200, align 4, !tbaa !38
  store i32 %201, ptr %197, align 4, !tbaa !38
  %202 = getelementptr inbounds i8, ptr %161, i64 13240
  %203 = load i32, ptr %202, align 4, !tbaa !38
  %204 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %134, i64 %105
  store i32 %203, ptr %204, align 4, !tbaa !38
  %205 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %134, i64 %105
  %206 = load i32, ptr %205, align 4, !tbaa !38
  store i32 %206, ptr %202, align 4, !tbaa !38
  %207 = getelementptr inbounds i8, ptr %161, i64 13244
  %208 = load i32, ptr %207, align 4, !tbaa !38
  %209 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %134, i64 %109
  store i32 %208, ptr %209, align 4, !tbaa !38
  %210 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %134, i64 %109
  %211 = load i32, ptr %210, align 4, !tbaa !38
  store i32 %211, ptr %207, align 4, !tbaa !38
  %212 = getelementptr inbounds i8, ptr %161, i64 13248
  %213 = load i32, ptr %212, align 4, !tbaa !38
  %214 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %134, i64 %113
  store i32 %213, ptr %214, align 4, !tbaa !38
  %215 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %134, i64 %113
  %216 = load i32, ptr %215, align 4, !tbaa !38
  store i32 %216, ptr %212, align 4, !tbaa !38
  %217 = getelementptr inbounds i8, ptr %161, i64 13252
  %218 = load i32, ptr %217, align 4, !tbaa !38
  %219 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %134, i64 %117
  store i32 %218, ptr %219, align 4, !tbaa !38
  %220 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %134, i64 %117
  %221 = load i32, ptr %220, align 4, !tbaa !38
  store i32 %221, ptr %217, align 4, !tbaa !38
  %222 = getelementptr inbounds i8, ptr %161, i64 13304
  %223 = load i32, ptr %222, align 4, !tbaa !38
  %224 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %147, i64 %105
  store i32 %223, ptr %224, align 4, !tbaa !38
  %225 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %147, i64 %105
  %226 = load i32, ptr %225, align 4, !tbaa !38
  store i32 %226, ptr %222, align 4, !tbaa !38
  %227 = getelementptr inbounds i8, ptr %161, i64 13308
  %228 = load i32, ptr %227, align 4, !tbaa !38
  %229 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %147, i64 %109
  store i32 %228, ptr %229, align 4, !tbaa !38
  %230 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %147, i64 %109
  %231 = load i32, ptr %230, align 4, !tbaa !38
  store i32 %231, ptr %227, align 4, !tbaa !38
  %232 = getelementptr inbounds i8, ptr %161, i64 13312
  %233 = load i32, ptr %232, align 4, !tbaa !38
  %234 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %147, i64 %113
  store i32 %233, ptr %234, align 4, !tbaa !38
  %235 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %147, i64 %113
  %236 = load i32, ptr %235, align 4, !tbaa !38
  store i32 %236, ptr %232, align 4, !tbaa !38
  %237 = getelementptr inbounds i8, ptr %161, i64 13316
  %238 = load i32, ptr %237, align 4, !tbaa !38
  %239 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %147, i64 %117
  store i32 %238, ptr %239, align 4, !tbaa !38
  %240 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %147, i64 %117
  %241 = load i32, ptr %240, align 4, !tbaa !38
  store i32 %241, ptr %237, align 4, !tbaa !38
  %242 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %93, i32 noundef signext %96, i32 noundef signext 1)
  %243 = load ptr, ptr @img, align 8, !tbaa !6
  %244 = getelementptr inbounds i8, ptr %243, i64 13112
  %245 = load i32, ptr %244, align 4, !tbaa !38
  %246 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %106, i64 %105
  store i32 %245, ptr %246, align 4, !tbaa !38
  %247 = getelementptr inbounds i8, ptr %243, i64 13116
  %248 = load i32, ptr %247, align 4, !tbaa !38
  %249 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %106, i64 %109
  store i32 %248, ptr %249, align 4, !tbaa !38
  %250 = getelementptr inbounds i8, ptr %243, i64 13120
  %251 = load i32, ptr %250, align 4, !tbaa !38
  %252 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %106, i64 %113
  store i32 %251, ptr %252, align 4, !tbaa !38
  %253 = getelementptr inbounds i8, ptr %243, i64 13124
  %254 = load i32, ptr %253, align 4, !tbaa !38
  %255 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %106, i64 %117
  store i32 %254, ptr %255, align 4, !tbaa !38
  %256 = getelementptr inbounds i8, ptr %243, i64 13176
  %257 = load i32, ptr %256, align 4, !tbaa !38
  %258 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %121, i64 %105
  store i32 %257, ptr %258, align 4, !tbaa !38
  %259 = getelementptr inbounds i8, ptr %243, i64 13180
  %260 = load i32, ptr %259, align 4, !tbaa !38
  %261 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %121, i64 %109
  store i32 %260, ptr %261, align 4, !tbaa !38
  %262 = getelementptr inbounds i8, ptr %243, i64 13184
  %263 = load i32, ptr %262, align 4, !tbaa !38
  %264 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %121, i64 %113
  store i32 %263, ptr %264, align 4, !tbaa !38
  %265 = getelementptr inbounds i8, ptr %243, i64 13188
  %266 = load i32, ptr %265, align 4, !tbaa !38
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %121, i64 %117
  store i32 %266, ptr %267, align 4, !tbaa !38
  %268 = getelementptr inbounds i8, ptr %243, i64 13240
  %269 = load i32, ptr %268, align 4, !tbaa !38
  %270 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %134, i64 %105
  store i32 %269, ptr %270, align 4, !tbaa !38
  %271 = getelementptr inbounds i8, ptr %243, i64 13244
  %272 = load i32, ptr %271, align 4, !tbaa !38
  %273 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %134, i64 %109
  store i32 %272, ptr %273, align 4, !tbaa !38
  %274 = getelementptr inbounds i8, ptr %243, i64 13248
  %275 = load i32, ptr %274, align 4, !tbaa !38
  %276 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %134, i64 %113
  store i32 %275, ptr %276, align 4, !tbaa !38
  %277 = getelementptr inbounds i8, ptr %243, i64 13252
  %278 = load i32, ptr %277, align 4, !tbaa !38
  %279 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %134, i64 %117
  store i32 %278, ptr %279, align 4, !tbaa !38
  %280 = getelementptr inbounds i8, ptr %243, i64 13304
  %281 = load i32, ptr %280, align 4, !tbaa !38
  %282 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %147, i64 %105
  store i32 %281, ptr %282, align 4, !tbaa !38
  %283 = getelementptr inbounds i8, ptr %243, i64 13308
  %284 = load i32, ptr %283, align 4, !tbaa !38
  %285 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %147, i64 %109
  store i32 %284, ptr %285, align 4, !tbaa !38
  %286 = getelementptr inbounds i8, ptr %243, i64 13312
  %287 = load i32, ptr %286, align 4, !tbaa !38
  %288 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %147, i64 %113
  store i32 %287, ptr %288, align 4, !tbaa !38
  %289 = getelementptr inbounds i8, ptr %243, i64 13316
  %290 = load i32, ptr %289, align 4, !tbaa !38
  %291 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %147, i64 %117
  store i32 %290, ptr %291, align 4, !tbaa !38
  %292 = add nsw i32 %160, %97
  %293 = add nsw i32 %292, %242
  %294 = add nuw nsw i32 %96, 1
  %295 = icmp eq i32 %294, 4
  br i1 %295, label %296, label %94

296:                                              ; preds = %94
  %297 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %297) #15
  %298 = add nuw nsw i32 %13, 8
  %299 = load ptr, ptr @img, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %299, i64 90536
  %301 = load i32, ptr %300, align 8, !tbaa !80
  %302 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %303 = getelementptr inbounds i8, ptr %302, i64 6464
  %304 = load ptr, ptr %303, align 8, !tbaa !81
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = getelementptr inbounds i8, ptr %299, i64 156
  %307 = load i32, ptr %306, align 4, !tbaa !27
  %308 = getelementptr inbounds i8, ptr %299, i64 152
  %309 = load i32, ptr %308, align 8, !tbaa !26
  %310 = getelementptr inbounds i8, ptr %299, i64 90532
  %311 = load i32, ptr %310, align 4, !tbaa !82
  %312 = getelementptr inbounds i8, ptr %302, i64 6424
  %313 = load ptr, ptr %312, align 8, !tbaa !29
  %314 = getelementptr inbounds i8, ptr %304, i64 8
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  %316 = shl i32 %3, 3
  %317 = and i32 %316, 8
  %318 = zext nneg i32 %317 to i64
  %319 = sext i32 %309 to i64
  %320 = sext i32 %15 to i64
  %321 = sext i32 %307 to i64
  %322 = zext nneg i32 %298 to i64
  %323 = or i32 %14, 7
  %324 = sext i32 %323 to i64
  br label %325

325:                                              ; preds = %296, %372
  %326 = phi i64 [ %320, %296 ], [ %373, %372 ]
  %327 = add nsw i64 %326, %321
  %328 = getelementptr inbounds ptr, ptr %305, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds ptr, ptr %313, i64 %327
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = getelementptr inbounds ptr, ptr %315, i64 %327
  %333 = load ptr, ptr %332, align 8, !tbaa !6
  br label %334

334:                                              ; preds = %325, %334
  %335 = phi i64 [ %318, %325 ], [ %370, %334 ]
  %336 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %326, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !38
  %338 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %326, i64 %335
  %339 = load i32, ptr %338, align 4, !tbaa !38
  %340 = ashr i32 %339, 1
  %341 = sub nsw i32 %337, %340
  %342 = add nsw i32 %341, %339
  %343 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %326, i64 %335
  %344 = load i32, ptr %343, align 4, !tbaa !38
  %345 = ashr i32 %344, 1
  %346 = sub nsw i32 %341, %345
  %347 = add nsw i32 %346, %344
  %348 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %326, i64 %335
  %349 = load i32, ptr %348, align 4, !tbaa !38
  %350 = add nsw i32 %349, %346
  %351 = call i32 @llvm.smax.i32(i32 %350, i32 0)
  %352 = call i32 @llvm.smin.i32(i32 %301, i32 %351)
  %353 = trunc i32 %352 to i16
  %354 = add nsw i64 %335, %319
  %355 = getelementptr inbounds i16, ptr %329, i64 %354
  store i16 %353, ptr %355, align 2, !tbaa !25
  %356 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %326, i64 %335
  %357 = load i32, ptr %356, align 4, !tbaa !38
  %358 = add nsw i32 %342, %357
  %359 = call i32 @llvm.smax.i32(i32 %358, i32 0)
  %360 = call i32 @llvm.smin.i32(i32 %311, i32 %359)
  %361 = trunc i32 %360 to i16
  %362 = getelementptr inbounds i16, ptr %331, i64 %354
  store i16 %361, ptr %362, align 2, !tbaa !25
  %363 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %326, i64 %335
  %364 = load i32, ptr %363, align 4, !tbaa !38
  %365 = add nsw i32 %347, %364
  %366 = call i32 @llvm.smax.i32(i32 %365, i32 0)
  %367 = call i32 @llvm.smin.i32(i32 %301, i32 %366)
  %368 = trunc i32 %367 to i16
  %369 = getelementptr inbounds i16, ptr %333, i64 %354
  store i16 %368, ptr %369, align 2, !tbaa !25
  %370 = add nuw nsw i64 %335, 1
  %371 = icmp eq i64 %370, %322
  br i1 %371, label %372, label %334

372:                                              ; preds = %334
  %373 = add nsw i64 %326, 1
  %374 = icmp slt i64 %326, %324
  br i1 %374, label %325, label %375

375:                                              ; preds = %372, %85
  %376 = phi ptr [ %87, %85 ], [ %299, %372 ]
  %377 = phi i32 [ 0, %85 ], [ %293, %372 ]
  %378 = load ptr, ptr @input, align 8, !tbaa !6
  %379 = getelementptr inbounds i8, ptr %378, i64 3136
  %380 = load i32, ptr %379, align 8, !tbaa !75
  %381 = icmp eq i32 %380, 3
  br i1 %381, label %382, label %545

382:                                              ; preds = %375
  %383 = getelementptr inbounds i8, ptr %376, i64 24
  %384 = load i32, ptr %383, align 8, !tbaa !14
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %392, label %386

386:                                              ; preds = %382
  call void @compute_residue_b8block(i32 noundef signext %3, i32 noundef signext -1) #15
  %387 = load ptr, ptr @input, align 8, !tbaa !6
  %388 = getelementptr inbounds i8, ptr %387, i64 3136
  %389 = load i32, ptr %388, align 8, !tbaa !75
  %390 = load ptr, ptr @img, align 8, !tbaa !6
  %391 = icmp eq i32 %389, 3
  br i1 %391, label %392, label %545

392:                                              ; preds = %382, %386
  %393 = phi ptr [ %387, %386 ], [ %378, %382 ]
  %394 = phi ptr [ %390, %386 ], [ %376, %382 ]
  %395 = getelementptr inbounds i8, ptr %394, i64 24
  %396 = load i32, ptr %395, align 8, !tbaa !14
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %545, label %398

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, ptr %393, i64 3576
  %400 = load i32, ptr %399, align 8, !tbaa !84
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %398
  %403 = sext i32 %400 to i64
  br label %540

404:                                              ; preds = %398
  %405 = sext i16 %6 to i32
  br label %406

406:                                              ; preds = %404, %533
  %407 = phi i64 [ 0, %404 ], [ %534, %533 ]
  %408 = phi i64 [ 0, %404 ], [ %530, %533 ]
  %409 = trunc nuw nsw i64 %407 to i32
  call void @decode_one_b8block(i32 noundef signext %409, i32 noundef signext 8, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %405) #15
  %410 = load ptr, ptr @img, align 8, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %410, i64 172
  %412 = load i32, ptr %411, align 4, !tbaa !28
  %413 = add i32 %412, %15
  %414 = getelementptr inbounds i8, ptr %410, i64 168
  %415 = load i32, ptr %414, align 8, !tbaa !60
  %416 = add i32 %415, %13
  %417 = getelementptr inbounds i8, ptr %410, i64 89184
  %418 = load ptr, ptr %417, align 8, !tbaa !40
  %419 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %420 = load ptr, ptr @decs, align 8, !tbaa !6
  %421 = getelementptr inbounds i8, ptr %420, i64 8
  %422 = load ptr, ptr %421, align 8, !tbaa !85
  %423 = getelementptr inbounds ptr, ptr %422, i64 %407
  %424 = load ptr, ptr %423, align 8, !tbaa !6
  %425 = sext i32 %416 to i64
  %426 = sext i32 %413 to i64
  %427 = add nsw i64 %425, 1
  %428 = add nsw i64 %425, 2
  %429 = add nsw i64 %425, 3
  %430 = add nsw i64 %425, 4
  %431 = add nsw i64 %425, 5
  %432 = add nsw i64 %425, 6
  %433 = add nsw i64 %425, 7
  %434 = add nsw i32 %413, 7
  %435 = sext i32 %434 to i64
  br label %436

436:                                              ; preds = %406, %436
  %437 = phi i64 [ %426, %406 ], [ %531, %436 ]
  %438 = phi i64 [ %408, %406 ], [ %530, %436 ]
  %439 = getelementptr inbounds ptr, ptr %419, i64 %437
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = getelementptr inbounds i16, ptr %440, i64 %425
  %442 = load i16, ptr %441, align 2, !tbaa !25
  %443 = zext i16 %442 to i64
  %444 = getelementptr inbounds ptr, ptr %424, i64 %437
  %445 = load ptr, ptr %444, align 8, !tbaa !6
  %446 = getelementptr inbounds i16, ptr %445, i64 %425
  %447 = load i16, ptr %446, align 2, !tbaa !25
  %448 = zext i16 %447 to i64
  %449 = sub nsw i64 %443, %448
  %450 = getelementptr inbounds i32, ptr %418, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !38
  %452 = sext i32 %451 to i64
  %453 = add nsw i64 %438, %452
  %454 = getelementptr inbounds i16, ptr %440, i64 %427
  %455 = load i16, ptr %454, align 2, !tbaa !25
  %456 = zext i16 %455 to i64
  %457 = getelementptr inbounds i16, ptr %445, i64 %427
  %458 = load i16, ptr %457, align 2, !tbaa !25
  %459 = zext i16 %458 to i64
  %460 = sub nsw i64 %456, %459
  %461 = getelementptr inbounds i32, ptr %418, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !38
  %463 = sext i32 %462 to i64
  %464 = add nsw i64 %453, %463
  %465 = getelementptr inbounds i16, ptr %440, i64 %428
  %466 = load i16, ptr %465, align 2, !tbaa !25
  %467 = zext i16 %466 to i64
  %468 = getelementptr inbounds i16, ptr %445, i64 %428
  %469 = load i16, ptr %468, align 2, !tbaa !25
  %470 = zext i16 %469 to i64
  %471 = sub nsw i64 %467, %470
  %472 = getelementptr inbounds i32, ptr %418, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !38
  %474 = sext i32 %473 to i64
  %475 = add nsw i64 %464, %474
  %476 = getelementptr inbounds i16, ptr %440, i64 %429
  %477 = load i16, ptr %476, align 2, !tbaa !25
  %478 = zext i16 %477 to i64
  %479 = getelementptr inbounds i16, ptr %445, i64 %429
  %480 = load i16, ptr %479, align 2, !tbaa !25
  %481 = zext i16 %480 to i64
  %482 = sub nsw i64 %478, %481
  %483 = getelementptr inbounds i32, ptr %418, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !38
  %485 = sext i32 %484 to i64
  %486 = add nsw i64 %475, %485
  %487 = getelementptr inbounds i16, ptr %440, i64 %430
  %488 = load i16, ptr %487, align 2, !tbaa !25
  %489 = zext i16 %488 to i64
  %490 = getelementptr inbounds i16, ptr %445, i64 %430
  %491 = load i16, ptr %490, align 2, !tbaa !25
  %492 = zext i16 %491 to i64
  %493 = sub nsw i64 %489, %492
  %494 = getelementptr inbounds i32, ptr %418, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !38
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %486, %496
  %498 = getelementptr inbounds i16, ptr %440, i64 %431
  %499 = load i16, ptr %498, align 2, !tbaa !25
  %500 = zext i16 %499 to i64
  %501 = getelementptr inbounds i16, ptr %445, i64 %431
  %502 = load i16, ptr %501, align 2, !tbaa !25
  %503 = zext i16 %502 to i64
  %504 = sub nsw i64 %500, %503
  %505 = getelementptr inbounds i32, ptr %418, i64 %504
  %506 = load i32, ptr %505, align 4, !tbaa !38
  %507 = sext i32 %506 to i64
  %508 = add nsw i64 %497, %507
  %509 = getelementptr inbounds i16, ptr %440, i64 %432
  %510 = load i16, ptr %509, align 2, !tbaa !25
  %511 = zext i16 %510 to i64
  %512 = getelementptr inbounds i16, ptr %445, i64 %432
  %513 = load i16, ptr %512, align 2, !tbaa !25
  %514 = zext i16 %513 to i64
  %515 = sub nsw i64 %511, %514
  %516 = getelementptr inbounds i32, ptr %418, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !38
  %518 = sext i32 %517 to i64
  %519 = add nsw i64 %508, %518
  %520 = getelementptr inbounds i16, ptr %440, i64 %433
  %521 = load i16, ptr %520, align 2, !tbaa !25
  %522 = zext i16 %521 to i64
  %523 = getelementptr inbounds i16, ptr %445, i64 %433
  %524 = load i16, ptr %523, align 2, !tbaa !25
  %525 = zext i16 %524 to i64
  %526 = sub nsw i64 %522, %525
  %527 = getelementptr inbounds i32, ptr %418, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !38
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %519, %529
  %531 = add nsw i64 %437, 1
  %532 = icmp slt i64 %437, %435
  br i1 %532, label %436, label %533

533:                                              ; preds = %436
  %534 = add nuw nsw i64 %407, 1
  %535 = load ptr, ptr @input, align 8, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %535, i64 3576
  %537 = load i32, ptr %536, align 8, !tbaa !84
  %538 = sext i32 %537 to i64
  %539 = icmp slt i64 %534, %538
  br i1 %539, label %406, label %540

540:                                              ; preds = %533, %402
  %541 = phi i64 [ %403, %402 ], [ %538, %533 ]
  %542 = phi ptr [ %393, %402 ], [ %535, %533 ]
  %543 = phi i64 [ 0, %402 ], [ %530, %533 ]
  %544 = sdiv i64 %543, %541
  br label %642

545:                                              ; preds = %375, %392, %386
  %546 = phi ptr [ %393, %392 ], [ %387, %386 ], [ %378, %375 ]
  %547 = phi ptr [ %394, %392 ], [ %390, %386 ], [ %376, %375 ]
  %548 = getelementptr inbounds i8, ptr %547, i64 152
  %549 = load i32, ptr %548, align 8, !tbaa !26
  %550 = add i32 %549, %13
  %551 = getelementptr inbounds i8, ptr %547, i64 89184
  %552 = load ptr, ptr %551, align 8, !tbaa !40
  %553 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %554 = getelementptr inbounds i8, ptr %547, i64 172
  %555 = load i32, ptr %554, align 4, !tbaa !28
  %556 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %557 = getelementptr inbounds i8, ptr %556, i64 6424
  %558 = load ptr, ptr %557, align 8, !tbaa !29
  %559 = getelementptr inbounds i8, ptr %547, i64 156
  %560 = load i32, ptr %559, align 4, !tbaa !27
  %561 = getelementptr inbounds i8, ptr %547, i64 90572
  %562 = load i32, ptr %561, align 4, !tbaa !39
  %563 = icmp eq i32 %562, 0
  %564 = load ptr, ptr @imgUV_org, align 8
  %565 = getelementptr inbounds i8, ptr %556, i64 6464
  %566 = getelementptr inbounds i8, ptr %564, i64 8
  %567 = sext i32 %550 to i64
  %568 = sext i32 %15 to i64
  %569 = sext i32 %555 to i64
  %570 = sext i32 %560 to i64
  %571 = add nsw i32 %550, 7
  %572 = sext i32 %571 to i64
  %573 = or i32 %14, 7
  %574 = sext i32 %573 to i64
  br label %575

575:                                              ; preds = %545, %639
  %576 = phi i64 [ %568, %545 ], [ %640, %639 ]
  %577 = phi i64 [ 0, %545 ], [ %636, %639 ]
  %578 = add nsw i64 %576, %569
  %579 = getelementptr inbounds ptr, ptr %553, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !6
  %581 = add nsw i64 %576, %570
  %582 = getelementptr inbounds ptr, ptr %558, i64 %581
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  br label %584

584:                                              ; preds = %575, %635
  %585 = phi i64 [ %567, %575 ], [ %637, %635 ]
  %586 = phi i64 [ %577, %575 ], [ %636, %635 ]
  %587 = getelementptr inbounds i16, ptr %580, i64 %585
  %588 = load i16, ptr %587, align 2, !tbaa !25
  %589 = zext i16 %588 to i64
  %590 = getelementptr inbounds i16, ptr %583, i64 %585
  %591 = load i16, ptr %590, align 2, !tbaa !25
  %592 = zext i16 %591 to i64
  %593 = sub nsw i64 %589, %592
  %594 = getelementptr inbounds i32, ptr %552, i64 %593
  %595 = load i32, ptr %594, align 4, !tbaa !38
  %596 = sext i32 %595 to i64
  %597 = add nsw i64 %586, %596
  br i1 %563, label %635, label %598

598:                                              ; preds = %584
  %599 = load ptr, ptr %564, align 8, !tbaa !6
  %600 = getelementptr inbounds ptr, ptr %599, i64 %578
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  %602 = getelementptr inbounds i16, ptr %601, i64 %585
  %603 = load i16, ptr %602, align 2, !tbaa !25
  %604 = zext i16 %603 to i64
  %605 = load ptr, ptr %565, align 8, !tbaa !81
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = getelementptr inbounds ptr, ptr %606, i64 %581
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = getelementptr inbounds i16, ptr %608, i64 %585
  %610 = load i16, ptr %609, align 2, !tbaa !25
  %611 = zext i16 %610 to i64
  %612 = sub nsw i64 %604, %611
  %613 = getelementptr inbounds i32, ptr %552, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !38
  %615 = sext i32 %614 to i64
  %616 = add nsw i64 %597, %615
  %617 = load ptr, ptr %566, align 8, !tbaa !6
  %618 = getelementptr inbounds ptr, ptr %617, i64 %578
  %619 = load ptr, ptr %618, align 8, !tbaa !6
  %620 = getelementptr inbounds i16, ptr %619, i64 %585
  %621 = load i16, ptr %620, align 2, !tbaa !25
  %622 = zext i16 %621 to i64
  %623 = getelementptr inbounds i8, ptr %605, i64 8
  %624 = load ptr, ptr %623, align 8, !tbaa !6
  %625 = getelementptr inbounds ptr, ptr %624, i64 %581
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  %627 = getelementptr inbounds i16, ptr %626, i64 %585
  %628 = load i16, ptr %627, align 2, !tbaa !25
  %629 = zext i16 %628 to i64
  %630 = sub nsw i64 %622, %629
  %631 = getelementptr inbounds i32, ptr %552, i64 %630
  %632 = load i32, ptr %631, align 4, !tbaa !38
  %633 = sext i32 %632 to i64
  %634 = add nsw i64 %616, %633
  br label %635

635:                                              ; preds = %584, %598
  %636 = phi i64 [ %634, %598 ], [ %597, %584 ]
  %637 = add nsw i64 %585, 1
  %638 = icmp slt i64 %585, %572
  br i1 %638, label %584, label %639

639:                                              ; preds = %635
  %640 = add nsw i64 %576, 1
  %641 = icmp slt i64 %576, %574
  br i1 %641, label %575, label %642

642:                                              ; preds = %639, %540
  %643 = phi ptr [ %542, %540 ], [ %546, %639 ]
  %644 = phi i64 [ %544, %540 ], [ %636, %639 ]
  %645 = getelementptr inbounds i8, ptr %643, i64 2984
  %646 = load i32, ptr %645, align 8, !tbaa !45
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %651

648:                                              ; preds = %642
  %649 = load i32, ptr %9, align 4, !tbaa !38
  call void @ue_linfo(i32 noundef signext %25, i32 noundef signext %649, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  %650 = load i32, ptr %10, align 4, !tbaa !38
  br label %667

651:                                              ; preds = %642
  %652 = getelementptr inbounds i8, ptr %36, i64 4
  store i32 %25, ptr %652, align 4, !tbaa !41
  %653 = getelementptr inbounds i8, ptr %36, i64 40
  store ptr @writeB8_typeInfo_CABAC, ptr %653, align 8, !tbaa !48
  store i32 2, ptr %36, align 8, !tbaa !44
  %654 = getelementptr inbounds i8, ptr %38, i64 24
  %655 = load ptr, ptr %654, align 8, !tbaa !46
  %656 = getelementptr inbounds i8, ptr %44, i64 8
  %657 = load i32, ptr %656, align 4, !tbaa !38
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.datapartition, ptr %655, i64 %658
  %660 = getelementptr inbounds i8, ptr %659, i64 104
  %661 = load ptr, ptr %660, align 8, !tbaa !49
  %662 = call signext i32 %661(ptr noundef nonnull %36, ptr noundef %659) #15
  %663 = getelementptr inbounds i8, ptr %36, i64 12
  %664 = load i32, ptr %663, align 4, !tbaa !52
  %665 = load i32, ptr %32, align 8, !tbaa !34
  %666 = add nsw i32 %665, 1
  store i32 %666, ptr %32, align 8, !tbaa !34
  br label %667

667:                                              ; preds = %651, %648
  %668 = phi i32 [ %650, %648 ], [ %664, %651 ]
  %669 = add nsw i32 %668, %377
  br i1 %23, label %718, label %670

670:                                              ; preds = %667
  %671 = load ptr, ptr @img, align 8, !tbaa !6
  %672 = getelementptr inbounds i8, ptr %671, i64 89408
  %673 = load i32, ptr %672, align 8, !tbaa !87
  %674 = icmp sgt i32 %673, 1
  %675 = and i16 %5, -3
  %676 = icmp eq i16 %675, 0
  %677 = and i1 %676, %674
  br i1 %677, label %678, label %683

678:                                              ; preds = %670
  %679 = sext i16 %6 to i32
  %680 = call signext i32 @writeReferenceFrame(i32 noundef signext %4, i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext 1, i32 noundef signext %679) #15
  %681 = add nsw i32 %680, %669
  %682 = load ptr, ptr @img, align 8, !tbaa !6
  br label %683

683:                                              ; preds = %678, %670
  %684 = phi ptr [ %682, %678 ], [ %671, %670 ]
  %685 = phi i32 [ %681, %678 ], [ %669, %670 ]
  %686 = getelementptr inbounds i8, ptr %684, i64 89412
  %687 = load i32, ptr %686, align 4, !tbaa !88
  %688 = icmp sgt i32 %687, 1
  br i1 %688, label %689, label %700

689:                                              ; preds = %683
  %690 = getelementptr inbounds i8, ptr %684, i64 24
  %691 = load i32, ptr %690, align 8, !tbaa !14
  %692 = icmp eq i32 %691, 1
  %693 = add i16 %5, -1
  %694 = icmp ult i16 %693, 2
  %695 = and i1 %694, %692
  br i1 %695, label %696, label %700

696:                                              ; preds = %689
  %697 = sext i16 %7 to i32
  %698 = call signext i32 @writeReferenceFrame(i32 noundef signext %4, i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext 0, i32 noundef signext %697) #15
  %699 = add nsw i32 %698, %685
  br label %700

700:                                              ; preds = %696, %689, %683
  %701 = phi i32 [ %699, %696 ], [ %685, %689 ], [ %685, %683 ]
  br i1 %676, label %702, label %708

702:                                              ; preds = %700
  %703 = add nuw nsw i32 %16, 2
  %704 = add nsw i32 %17, 2
  %705 = sext i16 %6 to i32
  %706 = call signext i32 @writeMotionVector8x8(i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext %703, i32 noundef signext %704, i32 noundef signext %705, i32 noundef signext 0, i32 noundef signext %4) #15
  %707 = add nsw i32 %706, %701
  br label %708

708:                                              ; preds = %700, %702
  %709 = phi i32 [ %707, %702 ], [ %701, %700 ]
  %710 = add i16 %5, -1
  %711 = icmp ult i16 %710, 2
  br i1 %711, label %712, label %718

712:                                              ; preds = %708
  %713 = add nuw nsw i32 %16, 2
  %714 = add nsw i32 %17, 2
  %715 = sext i16 %7 to i32
  %716 = call signext i32 @writeMotionVector8x8(i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext %713, i32 noundef signext %714, i32 noundef signext %715, i32 noundef signext 1, i32 noundef signext %4) #15
  %717 = add nsw i32 %716, %709
  br label %718

718:                                              ; preds = %712, %708, %667
  %719 = phi i32 [ %669, %667 ], [ %717, %712 ], [ %709, %708 ]
  %720 = load ptr, ptr @input, align 8, !tbaa !6
  %721 = getelementptr inbounds i8, ptr %720, i64 2984
  %722 = load i32, ptr %721, align 8, !tbaa !45
  %723 = icmp eq i32 %722, 1
  br i1 %723, label %724, label %740

724:                                              ; preds = %718
  %725 = getelementptr inbounds i8, ptr %38, i64 24
  %726 = load ptr, ptr %725, align 8, !tbaa !46
  %727 = getelementptr inbounds i8, ptr %44, i64 44
  %728 = load i32, ptr %727, align 4, !tbaa !38
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.datapartition, ptr %726, i64 %729, i32 1
  %731 = call signext i32 @arienco_bits_written(ptr noundef nonnull %730) #15
  store i32 %731, ptr %10, align 4, !tbaa !38
  %732 = load i32, ptr %0, align 4, !tbaa !38
  %733 = icmp sgt i32 %732, 0
  %734 = zext i1 %733 to i32
  %735 = load i32, ptr @cbp8x8, align 4, !tbaa !38
  call void @writeCBP_BIT_CABAC(i32 noundef signext %3, i32 noundef signext %734, i32 noundef signext %735, ptr noundef nonnull %32, i32 noundef signext 1, ptr noundef nonnull %730) #15
  %736 = call signext i32 @arienco_bits_written(ptr noundef nonnull %730) #15
  %737 = load i32, ptr %10, align 4, !tbaa !38
  %738 = sub nsw i32 %736, %737
  store i32 %738, ptr %10, align 4, !tbaa !38
  %739 = add nsw i32 %738, %719
  br label %740

740:                                              ; preds = %724, %718
  %741 = phi i32 [ %739, %724 ], [ %719, %718 ]
  %742 = load i32, ptr %0, align 4, !tbaa !38
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %749, label %744

744:                                              ; preds = %740
  %745 = getelementptr inbounds i8, ptr %32, i64 468
  %746 = load i32, ptr %745, align 4, !tbaa !89
  %747 = call signext i32 @writeLumaCoeff8x8(i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %746) #15
  %748 = add nsw i32 %747, %741
  br label %749

749:                                              ; preds = %744, %740
  %750 = phi i32 [ %748, %744 ], [ %741, %740 ]
  %751 = sitofp i64 %644 to double
  %752 = sitofp i32 %750 to double
  %753 = call double @llvm.fmuladd.f64(double %2, double %752, double %751)
  br label %754

754:                                              ; preds = %46, %749
  %755 = phi double [ %753, %749 ], [ 1.000000e+20, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  ret double %755
}

declare dso_local signext i32 @B8Mode2Value(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @LumaResidualCoding8x8(ptr noundef, ptr noundef, i32 noundef signext, i16 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare dso_local void @compute_residue_b8block(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @decode_one_b8block(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local void @writeB8_typeInfo_CABAC(ptr noundef, ptr noundef) #1

declare dso_local signext i32 @writeReferenceFrame(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @writeMotionVector8x8(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @arienco_bits_written(ptr noundef) local_unnamed_addr #1

declare dso_local void @writeCBP_BIT_CABAC(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeLumaCoeff8x8(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext range(i32 -2147483647, -2147483648) i32 @I16Offset(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #7 {
  %3 = and i32 %0, 15
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 1, i32 13
  %6 = lshr i32 %0, 2
  %7 = and i32 %6, 12
  %8 = add i32 %7, %1
  %9 = add i32 %8, %5
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local void @SetModesAndRefframeForBlocks(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31576
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %2, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %7
  %9 = getelementptr inbounds i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, 1
  %12 = getelementptr inbounds i8, ptr %8, i64 72
  store i32 %0, ptr %12, align 8, !tbaa !57
  %13 = icmp eq i32 %0, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %2, i64 89362
  %16 = load i16, ptr %15, align 2, !tbaa !25
  %17 = getelementptr inbounds i8, ptr %8, i64 476
  store i16 %16, ptr %17, align 4, !tbaa !83
  br label %80

18:                                               ; preds = %1
  %19 = getelementptr inbounds i8, ptr %8, i64 476
  store i16 0, ptr %19, align 4, !tbaa !83
  switch i32 %0, label %78 [
    i32 0, label %75
    i32 14, label %66
    i32 2, label %80
    i32 3, label %80
    i32 8, label %42
    i32 9, label %33
    i32 10, label %30
    i32 13, label %20
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, ptr %8, i64 376
  %22 = getelementptr inbounds i8, ptr %8, i64 392
  store i32 13, ptr %21, align 4, !tbaa !38
  store i32 -1, ptr %22, align 4, !tbaa !38
  %23 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 13, ptr %23, align 4, !tbaa !38
  %24 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 -1, ptr %24, align 4, !tbaa !38
  %25 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 13, ptr %25, align 4, !tbaa !38
  %26 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 -1, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 13, ptr %27, align 4, !tbaa !38
  %28 = getelementptr inbounds i8, ptr %8, i64 404
  store i32 -1, ptr %28, align 4, !tbaa !38
  %29 = getelementptr inbounds i8, ptr %8, i64 468
  store i32 1, ptr %29, align 4, !tbaa !89
  br label %102

30:                                               ; preds = %18
  %31 = getelementptr inbounds i8, ptr %8, i64 376
  %32 = getelementptr inbounds i8, ptr %8, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, i8 0, i64 16, i1 false), !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %32, i8 -1, i64 16, i1 false), !tbaa !38
  br label %102

33:                                               ; preds = %18
  %34 = getelementptr inbounds i8, ptr %8, i64 376
  %35 = getelementptr inbounds i8, ptr %8, i64 392
  store i32 11, ptr %34, align 4, !tbaa !38
  store i32 -1, ptr %35, align 4, !tbaa !38
  %36 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 11, ptr %36, align 4, !tbaa !38
  %37 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 -1, ptr %37, align 4, !tbaa !38
  %38 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 11, ptr %38, align 4, !tbaa !38
  %39 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 -1, ptr %39, align 4, !tbaa !38
  %40 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 11, ptr %40, align 4, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %8, i64 404
  store i32 -1, ptr %41, align 4, !tbaa !38
  br label %102

42:                                               ; preds = %18
  %43 = getelementptr inbounds i8, ptr %8, i64 376
  %44 = getelementptr inbounds i8, ptr %8, i64 392
  %45 = load i16, ptr @best8x8mode, align 2, !tbaa !25
  %46 = sext i16 %45 to i32
  store i32 %46, ptr %43, align 4, !tbaa !38
  %47 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 64), align 2, !tbaa !25
  %48 = sext i16 %47 to i32
  store i32 %48, ptr %44, align 4, !tbaa !38
  %49 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 2), align 2, !tbaa !25
  %50 = sext i16 %49 to i32
  %51 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 %50, ptr %51, align 4, !tbaa !38
  %52 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 66), align 2, !tbaa !25
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 %53, ptr %54, align 4, !tbaa !38
  %55 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 4), align 2, !tbaa !25
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 %56, ptr %57, align 4, !tbaa !38
  %58 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 68), align 2, !tbaa !25
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 %59, ptr %60, align 4, !tbaa !38
  %61 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 6), align 2, !tbaa !25
  %62 = sext i16 %61 to i32
  %63 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 %62, ptr %63, align 4, !tbaa !38
  %64 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 70), align 2, !tbaa !25
  %65 = sext i16 %64 to i32
  br label %291

66:                                               ; preds = %18
  %67 = getelementptr inbounds i8, ptr %8, i64 376
  %68 = getelementptr inbounds i8, ptr %8, i64 392
  store i32 14, ptr %67, align 4, !tbaa !38
  store i32 -1, ptr %68, align 4, !tbaa !38
  %69 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 14, ptr %69, align 4, !tbaa !38
  %70 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 -1, ptr %70, align 4, !tbaa !38
  %71 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 14, ptr %71, align 4, !tbaa !38
  %72 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 -1, ptr %72, align 4, !tbaa !38
  %73 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 14, ptr %73, align 4, !tbaa !38
  %74 = getelementptr inbounds i8, ptr %8, i64 404
  store i32 -1, ptr %74, align 4, !tbaa !38
  br label %291

75:                                               ; preds = %18
  %76 = getelementptr inbounds i8, ptr %8, i64 376
  %77 = load ptr, ptr @direct_pdir, align 8
  store i32 0, ptr %76, align 4, !tbaa !38
  br i1 %11, label %106, label %104

78:                                               ; preds = %18
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef signext 1) #16
  unreachable

80:                                               ; preds = %18, %18, %14
  %81 = phi ptr [ %17, %14 ], [ %19, %18 ], [ %19, %18 ]
  %82 = getelementptr inbounds i8, ptr %8, i64 376
  %83 = zext nneg i32 %0 to i64
  %84 = getelementptr inbounds i8, ptr %8, i64 392
  store i32 %0, ptr %82, align 4, !tbaa !38
  %85 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %83, i64 0
  %86 = load i16, ptr %85, align 2, !tbaa !25
  %87 = sext i16 %86 to i32
  store i32 %87, ptr %84, align 4, !tbaa !38
  %88 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 %0, ptr %88, align 4, !tbaa !38
  %89 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %83, i64 1
  %90 = load i16, ptr %89, align 2, !tbaa !25
  %91 = sext i16 %90 to i32
  %92 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 %91, ptr %92, align 4, !tbaa !38
  %93 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 %0, ptr %93, align 4, !tbaa !38
  %94 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %83, i64 2
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 %96, ptr %97, align 4, !tbaa !38
  %98 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 %0, ptr %98, align 4, !tbaa !38
  %99 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %83, i64 3
  %100 = load i16, ptr %99, align 2, !tbaa !25
  %101 = sext i16 %100 to i32
  br label %291

102:                                              ; preds = %20, %33, %30
  %103 = icmp eq i32 %0, 0
  br i1 %11, label %156, label %242

104:                                              ; preds = %75
  %105 = getelementptr inbounds i8, ptr %8, i64 380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %105, i8 0, i64 28, i1 false)
  br label %243

106:                                              ; preds = %75
  %107 = getelementptr inbounds i8, ptr %2, i64 144
  %108 = getelementptr inbounds i8, ptr %2, i64 148
  %109 = getelementptr inbounds i8, ptr %8, i64 392
  %110 = load i32, ptr %108, align 4, !tbaa !23
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %77, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load i32, ptr %107, align 8, !tbaa !24
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, ptr %113, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !25
  %118 = sext i16 %117 to i32
  store i32 %118, ptr %109, align 4, !tbaa !38
  %119 = getelementptr inbounds i8, ptr %8, i64 380
  store i32 0, ptr %119, align 4, !tbaa !38
  %120 = load i32, ptr %108, align 4, !tbaa !23
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %77, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = load i32, ptr %107, align 8, !tbaa !24
  %125 = sext i32 %124 to i64
  %126 = getelementptr i16, ptr %123, i64 %125
  %127 = getelementptr i8, ptr %126, i64 4
  %128 = load i16, ptr %127, align 2, !tbaa !25
  %129 = sext i16 %128 to i32
  %130 = getelementptr inbounds i8, ptr %8, i64 396
  store i32 %129, ptr %130, align 4, !tbaa !38
  %131 = getelementptr inbounds i8, ptr %8, i64 384
  store i32 0, ptr %131, align 4, !tbaa !38
  %132 = load i32, ptr %108, align 4, !tbaa !23
  %133 = sext i32 %132 to i64
  %134 = getelementptr ptr, ptr %77, i64 %133
  %135 = getelementptr i8, ptr %134, i64 16
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = load i32, ptr %107, align 8, !tbaa !24
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i16, ptr %136, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !25
  %141 = sext i16 %140 to i32
  %142 = getelementptr inbounds i8, ptr %8, i64 400
  store i32 %141, ptr %142, align 4, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %8, i64 388
  store i32 0, ptr %143, align 4, !tbaa !38
  %144 = load i32, ptr %108, align 4, !tbaa !23
  %145 = sext i32 %144 to i64
  %146 = getelementptr ptr, ptr %77, i64 %145
  %147 = getelementptr i8, ptr %146, i64 16
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = load i32, ptr %107, align 8, !tbaa !24
  %150 = sext i32 %149 to i64
  %151 = getelementptr i16, ptr %148, i64 %150
  %152 = getelementptr i8, ptr %151, i64 4
  %153 = load i16, ptr %152, align 2, !tbaa !25
  %154 = sext i16 %153 to i32
  %155 = getelementptr inbounds i8, ptr %8, i64 404
  store i32 %154, ptr %155, align 4, !tbaa !38
  br label %157

156:                                              ; preds = %102
  br i1 %103, label %157, label %206

157:                                              ; preds = %106, %156
  %158 = getelementptr inbounds i8, ptr %2, i64 148
  %159 = load i32, ptr %158, align 4, !tbaa !23
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %157, %161
  %162 = phi i64 [ %160, %157 ], [ %199, %161 ]
  %163 = phi ptr [ %2, %157 ], [ %200, %161 ]
  %164 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 6480
  %166 = load ptr, ptr %165, align 8, !tbaa !90
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds ptr, ptr %167, i64 %162
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds i8, ptr %163, i64 144
  %171 = load i32, ptr %170, align 8, !tbaa !24
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  %174 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  %176 = getelementptr inbounds ptr, ptr %175, i64 %162
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %177, i64 %172
  %179 = load i32, ptr %178, align 1
  store i32 %179, ptr %173, align 1
  %180 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %181 = getelementptr inbounds i8, ptr %180, i64 6480
  %182 = load ptr, ptr %181, align 8, !tbaa !90
  %183 = getelementptr inbounds i8, ptr %182, i64 8
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds ptr, ptr %184, i64 %162
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = load ptr, ptr @img, align 8, !tbaa !6
  %188 = getelementptr inbounds i8, ptr %187, i64 144
  %189 = load i32, ptr %188, align 8, !tbaa !24
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %186, i64 %190
  %192 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %192, i64 8
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = getelementptr inbounds ptr, ptr %194, i64 %162
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 %190
  %198 = load i32, ptr %197, align 1
  store i32 %198, ptr %191, align 1
  %199 = add nsw i64 %162, 1
  %200 = load ptr, ptr @img, align 8, !tbaa !6
  %201 = getelementptr inbounds i8, ptr %200, i64 148
  %202 = load i32, ptr %201, align 4, !tbaa !23
  %203 = add nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %162, %204
  br i1 %205, label %161, label %505

206:                                              ; preds = %156
  %207 = getelementptr inbounds i8, ptr %2, i64 148
  %208 = load i32, ptr %207, align 4, !tbaa !23
  %209 = sext i32 %208 to i64
  br label %210

210:                                              ; preds = %206, %210
  %211 = phi i64 [ %209, %206 ], [ %235, %210 ]
  %212 = phi ptr [ %2, %206 ], [ %236, %210 ]
  %213 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %214 = getelementptr inbounds i8, ptr %213, i64 6480
  %215 = load ptr, ptr %214, align 8, !tbaa !90
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds ptr, ptr %216, i64 %211
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %212, i64 144
  %220 = load i32, ptr %219, align 8, !tbaa !24
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  store i32 -1, ptr %222, align 1
  %223 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %224 = getelementptr inbounds i8, ptr %223, i64 6480
  %225 = load ptr, ptr %224, align 8, !tbaa !90
  %226 = getelementptr inbounds i8, ptr %225, i64 8
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = getelementptr inbounds ptr, ptr %227, i64 %211
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = load ptr, ptr @img, align 8, !tbaa !6
  %231 = getelementptr inbounds i8, ptr %230, i64 144
  %232 = load i32, ptr %231, align 8, !tbaa !24
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %229, i64 %233
  store i32 -1, ptr %234, align 1
  %235 = add nsw i64 %211, 1
  %236 = load ptr, ptr @img, align 8, !tbaa !6
  %237 = getelementptr inbounds i8, ptr %236, i64 148
  %238 = load i32, ptr %237, align 4, !tbaa !23
  %239 = add nsw i32 %238, 3
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %211, %240
  br i1 %241, label %210, label %505

242:                                              ; preds = %102
  br i1 %103, label %243, label %267

243:                                              ; preds = %104, %242
  %244 = getelementptr inbounds i8, ptr %2, i64 148
  %245 = load i32, ptr %244, align 4, !tbaa !23
  %246 = sext i32 %245 to i64
  br label %247

247:                                              ; preds = %243, %247
  %248 = phi i64 [ %246, %243 ], [ %260, %247 ]
  %249 = phi ptr [ %2, %243 ], [ %261, %247 ]
  %250 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %251 = getelementptr inbounds i8, ptr %250, i64 6480
  %252 = load ptr, ptr %251, align 8, !tbaa !90
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = getelementptr inbounds ptr, ptr %253, i64 %248
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = getelementptr inbounds i8, ptr %249, i64 144
  %257 = load i32, ptr %256, align 8, !tbaa !24
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, ptr %255, i64 %258
  store i32 0, ptr %259, align 1
  %260 = add nsw i64 %248, 1
  %261 = load ptr, ptr @img, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 148
  %263 = load i32, ptr %262, align 4, !tbaa !23
  %264 = add nsw i32 %263, 3
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %248, %265
  br i1 %266, label %247, label %505

267:                                              ; preds = %242
  %268 = getelementptr inbounds i8, ptr %2, i64 148
  %269 = load i32, ptr %268, align 4, !tbaa !23
  %270 = sext i32 %269 to i64
  br label %271

271:                                              ; preds = %267, %271
  %272 = phi i64 [ %270, %267 ], [ %284, %271 ]
  %273 = phi ptr [ %2, %267 ], [ %285, %271 ]
  %274 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 6480
  %276 = load ptr, ptr %275, align 8, !tbaa !90
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = getelementptr inbounds ptr, ptr %277, i64 %272
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %273, i64 144
  %281 = load i32, ptr %280, align 8, !tbaa !24
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, ptr %279, i64 %282
  store i32 -1, ptr %283, align 1
  %284 = add nsw i64 %272, 1
  %285 = load ptr, ptr @img, align 8, !tbaa !6
  %286 = getelementptr inbounds i8, ptr %285, i64 148
  %287 = load i32, ptr %286, align 4, !tbaa !23
  %288 = add nsw i32 %287, 3
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %272, %289
  br i1 %290, label %271, label %505

291:                                              ; preds = %80, %66, %42
  %292 = phi i64 [ 404, %80 ], [ 468, %66 ], [ 404, %42 ]
  %293 = phi i32 [ %101, %80 ], [ 0, %66 ], [ %65, %42 ]
  %294 = phi ptr [ %81, %80 ], [ %19, %66 ], [ %19, %42 ]
  %295 = getelementptr inbounds i8, ptr %8, i64 %292
  store i32 %293, ptr %295, align 4, !tbaa !38
  br i1 %11, label %298, label %296

296:                                              ; preds = %291
  %297 = zext nneg i32 %0 to i64
  br label %416

298:                                              ; preds = %291
  %299 = icmp eq i32 %0, 8
  %300 = zext nneg i32 %0 to i64
  %301 = zext nneg i32 %0 to i64
  br label %302

302:                                              ; preds = %298, %413
  %303 = phi i32 [ 0, %298 ], [ %414, %413 ]
  %304 = load ptr, ptr @img, align 8, !tbaa !6
  %305 = getelementptr inbounds i8, ptr %304, i64 148
  %306 = load i32, ptr %305, align 4, !tbaa !23
  %307 = add nsw i32 %306, %303
  %308 = and i32 %303, 2
  %309 = sext i32 %307 to i64
  br label %310

310:                                              ; preds = %302, %400
  %311 = phi i32 [ 0, %302 ], [ %411, %400 ]
  %312 = load ptr, ptr @img, align 8, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %312, i64 144
  %314 = load i32, ptr %313, align 8, !tbaa !24
  %315 = add nsw i32 %314, %311
  %316 = lshr i32 %311, 1
  %317 = or disjoint i32 %316, %308
  br i1 %299, label %318, label %345

318:                                              ; preds = %310
  %319 = zext nneg i32 %317 to i64
  %320 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !25
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %323, label %365

323:                                              ; preds = %318
  %324 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %325 = load ptr, ptr %324, align 8, !tbaa !6
  %326 = getelementptr inbounds ptr, ptr %325, i64 %309
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = sext i32 %315 to i64
  %329 = getelementptr inbounds i8, ptr %327, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !20
  %331 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %332 = getelementptr inbounds i8, ptr %331, i64 6480
  %333 = load ptr, ptr %332, align 8, !tbaa !90
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = getelementptr inbounds ptr, ptr %334, i64 %309
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %336, i64 %328
  store i8 %330, ptr %337, align 1, !tbaa !20
  %338 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 8
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = getelementptr inbounds ptr, ptr %340, i64 %309
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %342, i64 %328
  %344 = load i8, ptr %343, align 1, !tbaa !20
  br label %400

345:                                              ; preds = %310
  br i1 %13, label %346, label %365

346:                                              ; preds = %345
  %347 = load i16, ptr %294, align 4, !tbaa !83
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %365, label %349

349:                                              ; preds = %346
  %350 = zext nneg i32 %317 to i64
  %351 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %300, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !25
  switch i16 %352, label %365 [
    i16 0, label %353
    i16 2, label %353
  ]

353:                                              ; preds = %349, %349
  %354 = add nsw i16 %352, -1
  %355 = icmp ult i16 %354, 2
  br i1 %355, label %356, label %365

356:                                              ; preds = %353
  %357 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %358 = getelementptr inbounds i8, ptr %357, i64 6480
  %359 = load ptr, ptr %358, align 8, !tbaa !90
  %360 = load ptr, ptr %359, align 8, !tbaa !6
  %361 = getelementptr inbounds ptr, ptr %360, i64 %309
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  %363 = sext i32 %315 to i64
  %364 = getelementptr inbounds i8, ptr %362, i64 %363
  store i8 0, ptr %364, align 1, !tbaa !20
  br label %400

365:                                              ; preds = %318, %353, %349, %346, %345
  %366 = zext nneg i32 %317 to i64
  %367 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %301, i64 %366
  %368 = load i16, ptr %367, align 2, !tbaa !25
  switch i16 %368, label %378 [
    i16 0, label %369
    i16 2, label %369
  ]

369:                                              ; preds = %365, %365
  br i1 %299, label %370, label %374

370:                                              ; preds = %369
  %371 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %366
  %372 = load i16, ptr %371, align 2, !tbaa !25
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %370, %369
  %375 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8fwref, i64 0, i64 %301, i64 %366
  %376 = load i16, ptr %375, align 2, !tbaa !25
  %377 = trunc i16 %376 to i8
  br label %378

378:                                              ; preds = %365, %370, %374
  %379 = phi i8 [ %377, %374 ], [ -1, %370 ], [ -1, %365 ]
  %380 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %381 = getelementptr inbounds i8, ptr %380, i64 6480
  %382 = load ptr, ptr %381, align 8, !tbaa !90
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds ptr, ptr %383, i64 %309
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = sext i32 %315 to i64
  %387 = getelementptr inbounds i8, ptr %385, i64 %386
  store i8 %379, ptr %387, align 1, !tbaa !20
  %388 = load i16, ptr %367, align 2, !tbaa !25
  %389 = add i16 %388, -1
  %390 = icmp ult i16 %389, 2
  br i1 %390, label %391, label %400

391:                                              ; preds = %378
  br i1 %299, label %392, label %396

392:                                              ; preds = %391
  %393 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %366
  %394 = load i16, ptr %393, align 2, !tbaa !25
  %395 = icmp eq i16 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %392, %391
  %397 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8bwref, i64 0, i64 %301, i64 %366
  %398 = load i16, ptr %397, align 2, !tbaa !25
  %399 = trunc i16 %398 to i8
  br label %400

400:                                              ; preds = %396, %392, %378, %323, %356
  %401 = phi i64 [ %328, %323 ], [ %363, %356 ], [ %386, %378 ], [ %386, %392 ], [ %386, %396 ]
  %402 = phi i8 [ %344, %323 ], [ 0, %356 ], [ -1, %378 ], [ -1, %392 ], [ %399, %396 ]
  %403 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %404 = getelementptr inbounds i8, ptr %403, i64 6480
  %405 = load ptr, ptr %404, align 8, !tbaa !90
  %406 = getelementptr inbounds i8, ptr %405, i64 8
  %407 = load ptr, ptr %406, align 8, !tbaa !6
  %408 = getelementptr inbounds ptr, ptr %407, i64 %309
  %409 = load ptr, ptr %408, align 8, !tbaa !6
  %410 = getelementptr inbounds i8, ptr %409, i64 %401
  store i8 %402, ptr %410, align 1, !tbaa !20
  %411 = add nuw nsw i32 %311, 1
  %412 = icmp eq i32 %411, 4
  br i1 %412, label %413, label %310

413:                                              ; preds = %400
  %414 = add nuw nsw i32 %303, 1
  %415 = icmp eq i32 %414, 4
  br i1 %415, label %505, label %302

416:                                              ; preds = %296, %492
  %417 = phi i32 [ 0, %296 ], [ %503, %492 ]
  %418 = load ptr, ptr @img, align 8, !tbaa !6
  %419 = getelementptr inbounds i8, ptr %418, i64 148
  %420 = load i32, ptr %419, align 4, !tbaa !23
  %421 = add nsw i32 %420, %417
  %422 = and i32 %417, 2
  %423 = sext i32 %421 to i64
  %424 = getelementptr inbounds i8, ptr %418, i64 144
  %425 = load i32, ptr %424, align 8, !tbaa !24
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %297, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !25
  switch i16 %428, label %433 [
    i16 0, label %429
    i16 2, label %429
  ]

429:                                              ; preds = %416, %416
  %430 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8fwref, i64 0, i64 %297, i64 %426
  %431 = load i16, ptr %430, align 2, !tbaa !25
  %432 = trunc i16 %431 to i8
  br label %433

433:                                              ; preds = %416, %429
  %434 = phi i8 [ %432, %429 ], [ -1, %416 ]
  %435 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %435, i64 6480
  %437 = load ptr, ptr %436, align 8, !tbaa !90
  %438 = load ptr, ptr %437, align 8, !tbaa !6
  %439 = getelementptr inbounds ptr, ptr %438, i64 %423
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = sext i32 %425 to i64
  %442 = getelementptr inbounds i8, ptr %440, i64 %441
  store i8 %434, ptr %442, align 1, !tbaa !20
  %443 = load ptr, ptr @img, align 8, !tbaa !6
  %444 = getelementptr inbounds i8, ptr %443, i64 144
  %445 = load i32, ptr %444, align 8, !tbaa !24
  %446 = load i16, ptr %427, align 2, !tbaa !25
  switch i16 %446, label %451 [
    i16 0, label %447
    i16 2, label %447
  ]

447:                                              ; preds = %433, %433
  %448 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8fwref, i64 0, i64 %297, i64 %426
  %449 = load i16, ptr %448, align 2, !tbaa !25
  %450 = trunc i16 %449 to i8
  br label %451

451:                                              ; preds = %447, %433
  %452 = phi i8 [ %450, %447 ], [ -1, %433 ]
  %453 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %454 = getelementptr inbounds i8, ptr %453, i64 6480
  %455 = load ptr, ptr %454, align 8, !tbaa !90
  %456 = load ptr, ptr %455, align 8, !tbaa !6
  %457 = getelementptr inbounds ptr, ptr %456, i64 %423
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = sext i32 %445 to i64
  %460 = getelementptr i8, ptr %458, i64 %459
  %461 = getelementptr i8, ptr %460, i64 1
  store i8 %452, ptr %461, align 1, !tbaa !20
  %462 = load ptr, ptr @img, align 8, !tbaa !6
  %463 = getelementptr inbounds i8, ptr %462, i64 144
  %464 = load i32, ptr %463, align 8, !tbaa !24
  %465 = or disjoint i32 %422, 1
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8pdir, i64 0, i64 %297, i64 %466
  %468 = load i16, ptr %467, align 2, !tbaa !25
  switch i16 %468, label %473 [
    i16 0, label %469
    i16 2, label %469
  ]

469:                                              ; preds = %451, %451
  %470 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8fwref, i64 0, i64 %297, i64 %466
  %471 = load i16, ptr %470, align 2, !tbaa !25
  %472 = trunc i16 %471 to i8
  br label %473

473:                                              ; preds = %469, %451
  %474 = phi i8 [ %472, %469 ], [ -1, %451 ]
  %475 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %475, i64 6480
  %477 = load ptr, ptr %476, align 8, !tbaa !90
  %478 = load ptr, ptr %477, align 8, !tbaa !6
  %479 = getelementptr inbounds ptr, ptr %478, i64 %423
  %480 = load ptr, ptr %479, align 8, !tbaa !6
  %481 = sext i32 %464 to i64
  %482 = getelementptr i8, ptr %480, i64 %481
  %483 = getelementptr i8, ptr %482, i64 2
  store i8 %474, ptr %483, align 1, !tbaa !20
  %484 = load ptr, ptr @img, align 8, !tbaa !6
  %485 = getelementptr inbounds i8, ptr %484, i64 144
  %486 = load i32, ptr %485, align 8, !tbaa !24
  %487 = load i16, ptr %467, align 2, !tbaa !25
  switch i16 %487, label %492 [
    i16 0, label %488
    i16 2, label %488
  ]

488:                                              ; preds = %473, %473
  %489 = getelementptr inbounds [15 x [4 x i16]], ptr @best8x8fwref, i64 0, i64 %297, i64 %466
  %490 = load i16, ptr %489, align 2, !tbaa !25
  %491 = trunc i16 %490 to i8
  br label %492

492:                                              ; preds = %488, %473
  %493 = phi i8 [ %491, %488 ], [ -1, %473 ]
  %494 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %495 = getelementptr inbounds i8, ptr %494, i64 6480
  %496 = load ptr, ptr %495, align 8, !tbaa !90
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  %498 = getelementptr inbounds ptr, ptr %497, i64 %423
  %499 = load ptr, ptr %498, align 8, !tbaa !6
  %500 = sext i32 %486 to i64
  %501 = getelementptr i8, ptr %499, i64 %500
  %502 = getelementptr i8, ptr %501, i64 3
  store i8 %493, ptr %502, align 1, !tbaa !20
  %503 = add nuw nsw i32 %417, 1
  %504 = icmp eq i32 %503, 4
  br i1 %504, label %505, label %416

505:                                              ; preds = %271, %210, %247, %161, %492, %413
  %506 = load ptr, ptr @img, align 8, !tbaa !6
  %507 = getelementptr inbounds i8, ptr %506, i64 148
  %508 = load i32, ptr %507, align 4, !tbaa !23
  %509 = getelementptr inbounds i8, ptr %506, i64 144
  %510 = load i32, ptr %509, align 8, !tbaa !24
  %511 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br i1 %11, label %512, label %596

512:                                              ; preds = %505
  %513 = getelementptr inbounds i8, ptr %511, i64 6480
  %514 = load ptr, ptr %513, align 8, !tbaa !90
  %515 = getelementptr inbounds i8, ptr %514, i64 8
  %516 = load ptr, ptr %515, align 8, !tbaa !6
  %517 = getelementptr inbounds i8, ptr %511, i64 24
  %518 = getelementptr inbounds i8, ptr %8, i64 428
  %519 = load i32, ptr %518, align 4, !tbaa !91
  %520 = sext i32 %519 to i64
  %521 = load ptr, ptr %514, align 8, !tbaa !6
  %522 = getelementptr inbounds i8, ptr %511, i64 6488
  %523 = load ptr, ptr %522, align 8, !tbaa !92
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = add nsw i32 %519, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8, ptr %523, i64 8
  %528 = load ptr, ptr %527, align 8, !tbaa !6
  %529 = sext i32 %510 to i64
  %530 = sext i32 %508 to i64
  %531 = add nsw i64 %529, 1
  %532 = add nsw i64 %529, 2
  %533 = add nsw i64 %529, 3
  %534 = add nsw i32 %508, 3
  %535 = sext i32 %534 to i64
  br label %536

536:                                              ; preds = %512, %536
  %537 = phi i64 [ %530, %512 ], [ %594, %536 ]
  %538 = getelementptr inbounds ptr, ptr %516, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !6
  %540 = getelementptr inbounds ptr, ptr %521, i64 %537
  %541 = load ptr, ptr %540, align 8, !tbaa !6
  %542 = getelementptr inbounds ptr, ptr %524, i64 %537
  %543 = load ptr, ptr %542, align 8, !tbaa !6
  %544 = getelementptr inbounds ptr, ptr %528, i64 %537
  %545 = load ptr, ptr %544, align 8, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %539, i64 %529
  %547 = load i8, ptr %546, align 1, !tbaa !20
  %548 = getelementptr inbounds i8, ptr %541, i64 %529
  %549 = load i8, ptr %548, align 1, !tbaa !20
  %550 = zext i8 %549 to i64
  %551 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %520, i64 %550
  %552 = load i64, ptr %551, align 8, !tbaa !62
  %553 = getelementptr inbounds i64, ptr %543, i64 %529
  store i64 %552, ptr %553, align 8, !tbaa !62
  %554 = zext i8 %547 to i64
  %555 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %526, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !62
  %557 = getelementptr inbounds i64, ptr %545, i64 %529
  store i64 %556, ptr %557, align 8, !tbaa !62
  %558 = getelementptr inbounds i8, ptr %539, i64 %531
  %559 = load i8, ptr %558, align 1, !tbaa !20
  %560 = getelementptr inbounds i8, ptr %541, i64 %531
  %561 = load i8, ptr %560, align 1, !tbaa !20
  %562 = zext i8 %561 to i64
  %563 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %520, i64 %562
  %564 = load i64, ptr %563, align 8, !tbaa !62
  %565 = getelementptr inbounds i64, ptr %543, i64 %531
  store i64 %564, ptr %565, align 8, !tbaa !62
  %566 = zext i8 %559 to i64
  %567 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %526, i64 %566
  %568 = load i64, ptr %567, align 8, !tbaa !62
  %569 = getelementptr inbounds i64, ptr %545, i64 %531
  store i64 %568, ptr %569, align 8, !tbaa !62
  %570 = getelementptr inbounds i8, ptr %539, i64 %532
  %571 = load i8, ptr %570, align 1, !tbaa !20
  %572 = getelementptr inbounds i8, ptr %541, i64 %532
  %573 = load i8, ptr %572, align 1, !tbaa !20
  %574 = zext i8 %573 to i64
  %575 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %520, i64 %574
  %576 = load i64, ptr %575, align 8, !tbaa !62
  %577 = getelementptr inbounds i64, ptr %543, i64 %532
  store i64 %576, ptr %577, align 8, !tbaa !62
  %578 = zext i8 %571 to i64
  %579 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %526, i64 %578
  %580 = load i64, ptr %579, align 8, !tbaa !62
  %581 = getelementptr inbounds i64, ptr %545, i64 %532
  store i64 %580, ptr %581, align 8, !tbaa !62
  %582 = getelementptr inbounds i8, ptr %539, i64 %533
  %583 = load i8, ptr %582, align 1, !tbaa !20
  %584 = getelementptr inbounds i8, ptr %541, i64 %533
  %585 = load i8, ptr %584, align 1, !tbaa !20
  %586 = zext i8 %585 to i64
  %587 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %520, i64 %586
  %588 = load i64, ptr %587, align 8, !tbaa !62
  %589 = getelementptr inbounds i64, ptr %543, i64 %533
  store i64 %588, ptr %589, align 8, !tbaa !62
  %590 = zext i8 %583 to i64
  %591 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %526, i64 %590
  %592 = load i64, ptr %591, align 8, !tbaa !62
  %593 = getelementptr inbounds i64, ptr %545, i64 %533
  store i64 %592, ptr %593, align 8, !tbaa !62
  %594 = add nsw i64 %537, 1
  %595 = icmp slt i64 %537, %535
  br i1 %595, label %536, label %733

596:                                              ; preds = %505
  %597 = getelementptr inbounds i8, ptr %511, i64 24
  %598 = getelementptr inbounds i8, ptr %8, i64 428
  %599 = load i32, ptr %598, align 4, !tbaa !91
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, ptr %511, i64 6480
  %602 = load ptr, ptr %601, align 8, !tbaa !90
  %603 = load ptr, ptr %602, align 8, !tbaa !6
  %604 = getelementptr inbounds i8, ptr %511, i64 6488
  %605 = load ptr, ptr %604, align 8, !tbaa !92
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = sext i32 %510 to i64
  %608 = sext i32 %508 to i64
  %609 = getelementptr inbounds ptr, ptr %603, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !6
  %611 = getelementptr inbounds ptr, ptr %606, i64 %608
  %612 = load ptr, ptr %611, align 8, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %610, i64 %607
  %614 = load i8, ptr %613, align 1, !tbaa !20
  %615 = zext i8 %614 to i64
  %616 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %615
  %617 = load i64, ptr %616, align 8, !tbaa !62
  %618 = getelementptr inbounds i64, ptr %612, i64 %607
  store i64 %617, ptr %618, align 8, !tbaa !62
  %619 = add nsw i64 %607, 1
  %620 = getelementptr inbounds i8, ptr %610, i64 %619
  %621 = load i8, ptr %620, align 1, !tbaa !20
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %622
  %624 = load i64, ptr %623, align 8, !tbaa !62
  %625 = getelementptr inbounds i64, ptr %612, i64 %619
  store i64 %624, ptr %625, align 8, !tbaa !62
  %626 = add nsw i64 %607, 2
  %627 = getelementptr inbounds i8, ptr %610, i64 %626
  %628 = load i8, ptr %627, align 1, !tbaa !20
  %629 = zext i8 %628 to i64
  %630 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %629
  %631 = load i64, ptr %630, align 8, !tbaa !62
  %632 = getelementptr inbounds i64, ptr %612, i64 %626
  store i64 %631, ptr %632, align 8, !tbaa !62
  %633 = add nsw i64 %607, 3
  %634 = getelementptr inbounds i8, ptr %610, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !20
  %636 = zext i8 %635 to i64
  %637 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %636
  %638 = load i64, ptr %637, align 8, !tbaa !62
  %639 = getelementptr inbounds i64, ptr %612, i64 %633
  store i64 %638, ptr %639, align 8, !tbaa !62
  %640 = add nsw i64 %608, 1
  %641 = getelementptr inbounds ptr, ptr %603, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !6
  %643 = getelementptr inbounds ptr, ptr %606, i64 %640
  %644 = load ptr, ptr %643, align 8, !tbaa !6
  %645 = getelementptr inbounds i8, ptr %642, i64 %607
  %646 = load i8, ptr %645, align 1, !tbaa !20
  %647 = zext i8 %646 to i64
  %648 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %647
  %649 = load i64, ptr %648, align 8, !tbaa !62
  %650 = getelementptr inbounds i64, ptr %644, i64 %607
  store i64 %649, ptr %650, align 8, !tbaa !62
  %651 = getelementptr inbounds i8, ptr %642, i64 %619
  %652 = load i8, ptr %651, align 1, !tbaa !20
  %653 = zext i8 %652 to i64
  %654 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %653
  %655 = load i64, ptr %654, align 8, !tbaa !62
  %656 = getelementptr inbounds i64, ptr %644, i64 %619
  store i64 %655, ptr %656, align 8, !tbaa !62
  %657 = add nsw i64 %607, 2
  %658 = getelementptr inbounds i8, ptr %642, i64 %657
  %659 = load i8, ptr %658, align 1, !tbaa !20
  %660 = zext i8 %659 to i64
  %661 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %660
  %662 = load i64, ptr %661, align 8, !tbaa !62
  %663 = getelementptr inbounds i64, ptr %644, i64 %657
  store i64 %662, ptr %663, align 8, !tbaa !62
  %664 = add nsw i64 %607, 3
  %665 = getelementptr inbounds i8, ptr %642, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !20
  %667 = zext i8 %666 to i64
  %668 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %667
  %669 = load i64, ptr %668, align 8, !tbaa !62
  %670 = getelementptr inbounds i64, ptr %644, i64 %664
  store i64 %669, ptr %670, align 8, !tbaa !62
  %671 = add nsw i64 %608, 2
  %672 = getelementptr inbounds ptr, ptr %603, i64 %671
  %673 = load ptr, ptr %672, align 8, !tbaa !6
  %674 = getelementptr inbounds ptr, ptr %606, i64 %671
  %675 = load ptr, ptr %674, align 8, !tbaa !6
  %676 = getelementptr inbounds i8, ptr %673, i64 %607
  %677 = load i8, ptr %676, align 1, !tbaa !20
  %678 = zext i8 %677 to i64
  %679 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %678
  %680 = load i64, ptr %679, align 8, !tbaa !62
  %681 = getelementptr inbounds i64, ptr %675, i64 %607
  store i64 %680, ptr %681, align 8, !tbaa !62
  %682 = getelementptr inbounds i8, ptr %673, i64 %619
  %683 = load i8, ptr %682, align 1, !tbaa !20
  %684 = zext i8 %683 to i64
  %685 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %684
  %686 = load i64, ptr %685, align 8, !tbaa !62
  %687 = getelementptr inbounds i64, ptr %675, i64 %619
  store i64 %686, ptr %687, align 8, !tbaa !62
  %688 = add nsw i64 %607, 2
  %689 = getelementptr inbounds i8, ptr %673, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !20
  %691 = zext i8 %690 to i64
  %692 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %691
  %693 = load i64, ptr %692, align 8, !tbaa !62
  %694 = getelementptr inbounds i64, ptr %675, i64 %688
  store i64 %693, ptr %694, align 8, !tbaa !62
  %695 = add nsw i64 %607, 3
  %696 = getelementptr inbounds i8, ptr %673, i64 %695
  %697 = load i8, ptr %696, align 1, !tbaa !20
  %698 = zext i8 %697 to i64
  %699 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %698
  %700 = load i64, ptr %699, align 8, !tbaa !62
  %701 = getelementptr inbounds i64, ptr %675, i64 %695
  store i64 %700, ptr %701, align 8, !tbaa !62
  %702 = add nsw i64 %608, 3
  %703 = getelementptr inbounds ptr, ptr %603, i64 %702
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  %705 = getelementptr inbounds ptr, ptr %606, i64 %702
  %706 = load ptr, ptr %705, align 8, !tbaa !6
  %707 = getelementptr inbounds i8, ptr %704, i64 %607
  %708 = load i8, ptr %707, align 1, !tbaa !20
  %709 = zext i8 %708 to i64
  %710 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %709
  %711 = load i64, ptr %710, align 8, !tbaa !62
  %712 = getelementptr inbounds i64, ptr %706, i64 %607
  store i64 %711, ptr %712, align 8, !tbaa !62
  %713 = getelementptr inbounds i8, ptr %704, i64 %619
  %714 = load i8, ptr %713, align 1, !tbaa !20
  %715 = zext i8 %714 to i64
  %716 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %715
  %717 = load i64, ptr %716, align 8, !tbaa !62
  %718 = getelementptr inbounds i64, ptr %706, i64 %619
  store i64 %717, ptr %718, align 8, !tbaa !62
  %719 = add nsw i64 %607, 2
  %720 = getelementptr inbounds i8, ptr %704, i64 %719
  %721 = load i8, ptr %720, align 1, !tbaa !20
  %722 = zext i8 %721 to i64
  %723 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %722
  %724 = load i64, ptr %723, align 8, !tbaa !62
  %725 = getelementptr inbounds i64, ptr %706, i64 %719
  store i64 %724, ptr %725, align 8, !tbaa !62
  %726 = add nsw i64 %607, 3
  %727 = getelementptr inbounds i8, ptr %704, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !20
  %729 = zext i8 %728 to i64
  %730 = getelementptr inbounds [6 x [33 x i64]], ptr %597, i64 0, i64 %600, i64 %729
  %731 = load i64, ptr %730, align 8, !tbaa !62
  %732 = getelementptr inbounds i64, ptr %706, i64 %726
  store i64 %731, ptr %732, align 8, !tbaa !62
  br label %733

733:                                              ; preds = %536, %596
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind
define dso_local void @Intra16x16_Mode_Decision(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 31576
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds i8, ptr %3, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %8, i32 17
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds i8, ptr %3, i64 152
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = getelementptr inbounds i8, ptr %3, i64 156
  %14 = load i32, ptr %13, align 4, !tbaa !27
  %15 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %16 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  tail call void @intrapred_luma_16x16() #15
  %17 = load ptr, ptr @img, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 90572
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = tail call signext i32 @find_sad_16x16(ptr noundef %1) #15
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 90572
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %89, label %27

27:                                               ; preds = %2, %21
  %28 = phi ptr [ %23, %21 ], [ %17, %2 ]
  %29 = load ptr, ptr %16, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %28, i64 8504
  %31 = sext i32 %10 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 4792
  %33 = getelementptr inbounds i8, ptr %16, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %28, i64 10552
  %36 = getelementptr inbounds i8, ptr %28, i64 13112
  %37 = sext i32 %12 to i64
  %38 = sext i32 %14 to i64
  br label %39

39:                                               ; preds = %27, %86
  %40 = phi i64 [ 0, %27 ], [ %87, %86 ]
  %41 = add nsw i64 %40, %38
  %42 = getelementptr inbounds ptr, ptr %29, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %15, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds ptr, ptr %34, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %39, %48
  %49 = phi i64 [ 0, %39 ], [ %84, %48 ]
  %50 = add nsw i64 %49, %37
  %51 = getelementptr inbounds i16, ptr %43, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !25
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %30, i64 0, i64 %31, i64 %40, i64 %49
  %55 = load i16, ptr %54, align 2, !tbaa !25
  %56 = zext i16 %55 to i32
  %57 = sub nsw i32 %53, %56
  %58 = getelementptr inbounds i16, ptr %45, i64 %50
  %59 = load i16, ptr %58, align 2, !tbaa !25
  %60 = zext i16 %59 to i32
  %61 = load i32, ptr %1, align 4, !tbaa !38
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %32, i64 0, i64 %62, i64 %40, i64 %49
  %64 = load i16, ptr %63, align 2, !tbaa !25
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds i16, ptr %47, i64 %50
  %67 = load i16, ptr %66, align 2, !tbaa !25
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %35, i64 0, i64 %31, i64 %40, i64 %49
  %70 = load i16, ptr %69, align 2, !tbaa !25
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %57, %71
  %73 = sub nsw i32 %68, %72
  %74 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %40, i64 %49
  store i32 %73, ptr %74, align 4, !tbaa !38
  %75 = ashr i32 %73, 1
  %76 = add nsw i32 %75, %57
  %77 = add nsw i32 %76, %65
  %78 = sub nsw i32 %60, %77
  %79 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %40, i64 %49
  store i32 %78, ptr %79, align 4, !tbaa !38
  %80 = ashr i32 %78, 1
  %81 = add nsw i32 %80, %76
  %82 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %40, i64 %49
  store i32 %81, ptr %82, align 4, !tbaa !38
  %83 = getelementptr inbounds [16 x [16 x i32]], ptr %36, i64 0, i64 %40, i64 %49
  store i32 %81, ptr %83, align 4, !tbaa !38
  %84 = add nuw nsw i64 %49, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %48

86:                                               ; preds = %48
  %87 = add nuw nsw i64 %40, 1
  %88 = icmp eq i64 %87, 16
  br i1 %88, label %89, label %39

89:                                               ; preds = %86, %21
  %90 = load i32, ptr %1, align 4, !tbaa !38
  %91 = tail call signext i32 @dct_luma_16x16(i32 noundef signext %90) #15
  %92 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 %91, ptr %92, align 4, !tbaa !93
  %93 = load ptr, ptr @img, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 90572
  %95 = load i32, ptr %94, align 4, !tbaa !39
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %404, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds i8, ptr %93, i64 13112
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %181, %99 ]
  %101 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 0
  %102 = load i32, ptr %101, align 4, !tbaa !38
  %103 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 0
  store i32 %102, ptr %103, align 4, !tbaa !38
  %104 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 0
  %105 = load i32, ptr %104, align 4, !tbaa !38
  store i32 %105, ptr %101, align 4, !tbaa !38
  %106 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 1
  %107 = load i32, ptr %106, align 4, !tbaa !38
  %108 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 1
  store i32 %107, ptr %108, align 4, !tbaa !38
  %109 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !38
  store i32 %110, ptr %106, align 4, !tbaa !38
  %111 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 2
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 2
  store i32 %112, ptr %113, align 4, !tbaa !38
  %114 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 2
  %115 = load i32, ptr %114, align 4, !tbaa !38
  store i32 %115, ptr %111, align 4, !tbaa !38
  %116 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 3
  %117 = load i32, ptr %116, align 4, !tbaa !38
  %118 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 3
  store i32 %117, ptr %118, align 4, !tbaa !38
  %119 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 3
  %120 = load i32, ptr %119, align 4, !tbaa !38
  store i32 %120, ptr %116, align 4, !tbaa !38
  %121 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 4
  %122 = load i32, ptr %121, align 4, !tbaa !38
  %123 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !38
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 4
  %125 = load i32, ptr %124, align 4, !tbaa !38
  store i32 %125, ptr %121, align 4, !tbaa !38
  %126 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 5
  %127 = load i32, ptr %126, align 4, !tbaa !38
  %128 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 5
  store i32 %127, ptr %128, align 4, !tbaa !38
  %129 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 5
  %130 = load i32, ptr %129, align 4, !tbaa !38
  store i32 %130, ptr %126, align 4, !tbaa !38
  %131 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 6
  %132 = load i32, ptr %131, align 4, !tbaa !38
  %133 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 6
  store i32 %132, ptr %133, align 4, !tbaa !38
  %134 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 6
  %135 = load i32, ptr %134, align 4, !tbaa !38
  store i32 %135, ptr %131, align 4, !tbaa !38
  %136 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 7
  %137 = load i32, ptr %136, align 4, !tbaa !38
  %138 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 7
  store i32 %137, ptr %138, align 4, !tbaa !38
  %139 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 7
  %140 = load i32, ptr %139, align 4, !tbaa !38
  store i32 %140, ptr %136, align 4, !tbaa !38
  %141 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 8
  %142 = load i32, ptr %141, align 4, !tbaa !38
  %143 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 8
  store i32 %142, ptr %143, align 4, !tbaa !38
  %144 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 8
  %145 = load i32, ptr %144, align 4, !tbaa !38
  store i32 %145, ptr %141, align 4, !tbaa !38
  %146 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 9
  %147 = load i32, ptr %146, align 4, !tbaa !38
  %148 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 9
  store i32 %147, ptr %148, align 4, !tbaa !38
  %149 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 9
  %150 = load i32, ptr %149, align 4, !tbaa !38
  store i32 %150, ptr %146, align 4, !tbaa !38
  %151 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 10
  %152 = load i32, ptr %151, align 4, !tbaa !38
  %153 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 10
  store i32 %152, ptr %153, align 4, !tbaa !38
  %154 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 10
  %155 = load i32, ptr %154, align 4, !tbaa !38
  store i32 %155, ptr %151, align 4, !tbaa !38
  %156 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 11
  %157 = load i32, ptr %156, align 4, !tbaa !38
  %158 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 11
  store i32 %157, ptr %158, align 4, !tbaa !38
  %159 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 11
  %160 = load i32, ptr %159, align 4, !tbaa !38
  store i32 %160, ptr %156, align 4, !tbaa !38
  %161 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 12
  %162 = load i32, ptr %161, align 4, !tbaa !38
  %163 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 12
  store i32 %162, ptr %163, align 4, !tbaa !38
  %164 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 12
  %165 = load i32, ptr %164, align 4, !tbaa !38
  store i32 %165, ptr %161, align 4, !tbaa !38
  %166 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 13
  %167 = load i32, ptr %166, align 4, !tbaa !38
  %168 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 13
  store i32 %167, ptr %168, align 4, !tbaa !38
  %169 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 13
  %170 = load i32, ptr %169, align 4, !tbaa !38
  store i32 %170, ptr %166, align 4, !tbaa !38
  %171 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 14
  %172 = load i32, ptr %171, align 4, !tbaa !38
  %173 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 14
  store i32 %172, ptr %173, align 4, !tbaa !38
  %174 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 14
  %175 = load i32, ptr %174, align 4, !tbaa !38
  store i32 %175, ptr %171, align 4, !tbaa !38
  %176 = getelementptr inbounds [16 x [16 x i32]], ptr %98, i64 0, i64 %100, i64 15
  %177 = load i32, ptr %176, align 4, !tbaa !38
  %178 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %100, i64 15
  store i32 %177, ptr %178, align 4, !tbaa !38
  %179 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %100, i64 15
  %180 = load i32, ptr %179, align 4, !tbaa !38
  store i32 %180, ptr %176, align 4, !tbaa !38
  %181 = add nuw nsw i64 %100, 1
  %182 = icmp eq i64 %181, 16
  br i1 %182, label %183, label %99

183:                                              ; preds = %99
  %184 = tail call signext i32 @dct_chroma(i32 noundef signext 0, i32 noundef signext 0) #15
  %185 = load ptr, ptr @img, align 8, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %185, i64 13112
  br label %187

187:                                              ; preds = %183, %187
  %188 = phi i64 [ 0, %183 ], [ %269, %187 ]
  %189 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 0
  %190 = load i32, ptr %189, align 4, !tbaa !38
  %191 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 0
  store i32 %190, ptr %191, align 4, !tbaa !38
  %192 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 0
  %193 = load i32, ptr %192, align 4, !tbaa !38
  store i32 %193, ptr %189, align 4, !tbaa !38
  %194 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 1
  %195 = load i32, ptr %194, align 4, !tbaa !38
  %196 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 1
  store i32 %195, ptr %196, align 4, !tbaa !38
  %197 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 1
  %198 = load i32, ptr %197, align 4, !tbaa !38
  store i32 %198, ptr %194, align 4, !tbaa !38
  %199 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 2
  %200 = load i32, ptr %199, align 4, !tbaa !38
  %201 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 2
  store i32 %200, ptr %201, align 4, !tbaa !38
  %202 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 2
  %203 = load i32, ptr %202, align 4, !tbaa !38
  store i32 %203, ptr %199, align 4, !tbaa !38
  %204 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 3
  %205 = load i32, ptr %204, align 4, !tbaa !38
  %206 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 3
  store i32 %205, ptr %206, align 4, !tbaa !38
  %207 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 3
  %208 = load i32, ptr %207, align 4, !tbaa !38
  store i32 %208, ptr %204, align 4, !tbaa !38
  %209 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 4
  %210 = load i32, ptr %209, align 4, !tbaa !38
  %211 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 4
  store i32 %210, ptr %211, align 4, !tbaa !38
  %212 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 4
  %213 = load i32, ptr %212, align 4, !tbaa !38
  store i32 %213, ptr %209, align 4, !tbaa !38
  %214 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 5
  %215 = load i32, ptr %214, align 4, !tbaa !38
  %216 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 5
  store i32 %215, ptr %216, align 4, !tbaa !38
  %217 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 5
  %218 = load i32, ptr %217, align 4, !tbaa !38
  store i32 %218, ptr %214, align 4, !tbaa !38
  %219 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 6
  %220 = load i32, ptr %219, align 4, !tbaa !38
  %221 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 6
  store i32 %220, ptr %221, align 4, !tbaa !38
  %222 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 6
  %223 = load i32, ptr %222, align 4, !tbaa !38
  store i32 %223, ptr %219, align 4, !tbaa !38
  %224 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 7
  %225 = load i32, ptr %224, align 4, !tbaa !38
  %226 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 7
  store i32 %225, ptr %226, align 4, !tbaa !38
  %227 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 7
  %228 = load i32, ptr %227, align 4, !tbaa !38
  store i32 %228, ptr %224, align 4, !tbaa !38
  %229 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 8
  %230 = load i32, ptr %229, align 4, !tbaa !38
  %231 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 8
  store i32 %230, ptr %231, align 4, !tbaa !38
  %232 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 8
  %233 = load i32, ptr %232, align 4, !tbaa !38
  store i32 %233, ptr %229, align 4, !tbaa !38
  %234 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 9
  %235 = load i32, ptr %234, align 4, !tbaa !38
  %236 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 9
  store i32 %235, ptr %236, align 4, !tbaa !38
  %237 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 9
  %238 = load i32, ptr %237, align 4, !tbaa !38
  store i32 %238, ptr %234, align 4, !tbaa !38
  %239 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 10
  %240 = load i32, ptr %239, align 4, !tbaa !38
  %241 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 10
  store i32 %240, ptr %241, align 4, !tbaa !38
  %242 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 10
  %243 = load i32, ptr %242, align 4, !tbaa !38
  store i32 %243, ptr %239, align 4, !tbaa !38
  %244 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 11
  %245 = load i32, ptr %244, align 4, !tbaa !38
  %246 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 11
  store i32 %245, ptr %246, align 4, !tbaa !38
  %247 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 11
  %248 = load i32, ptr %247, align 4, !tbaa !38
  store i32 %248, ptr %244, align 4, !tbaa !38
  %249 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 12
  %250 = load i32, ptr %249, align 4, !tbaa !38
  %251 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 12
  store i32 %250, ptr %251, align 4, !tbaa !38
  %252 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 12
  %253 = load i32, ptr %252, align 4, !tbaa !38
  store i32 %253, ptr %249, align 4, !tbaa !38
  %254 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 13
  %255 = load i32, ptr %254, align 4, !tbaa !38
  %256 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 13
  store i32 %255, ptr %256, align 4, !tbaa !38
  %257 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 13
  %258 = load i32, ptr %257, align 4, !tbaa !38
  store i32 %258, ptr %254, align 4, !tbaa !38
  %259 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 14
  %260 = load i32, ptr %259, align 4, !tbaa !38
  %261 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 14
  store i32 %260, ptr %261, align 4, !tbaa !38
  %262 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 14
  %263 = load i32, ptr %262, align 4, !tbaa !38
  store i32 %263, ptr %259, align 4, !tbaa !38
  %264 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %188, i64 15
  %265 = load i32, ptr %264, align 4, !tbaa !38
  %266 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %188, i64 15
  store i32 %265, ptr %266, align 4, !tbaa !38
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %188, i64 15
  %268 = load i32, ptr %267, align 4, !tbaa !38
  store i32 %268, ptr %264, align 4, !tbaa !38
  %269 = add nuw nsw i64 %188, 1
  %270 = icmp eq i64 %269, 16
  br i1 %270, label %271, label %187

271:                                              ; preds = %187
  %272 = tail call signext i32 @dct_chroma(i32 noundef signext 1, i32 noundef signext %184) #15
  %273 = load ptr, ptr @img, align 8, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %273, i64 13112
  br label %275

275:                                              ; preds = %271, %275
  %276 = phi i64 [ 0, %271 ], [ %325, %275 ]
  %277 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 0
  %278 = load i32, ptr %277, align 4, !tbaa !38
  %279 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 0
  store i32 %278, ptr %279, align 4, !tbaa !38
  %280 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 1
  %281 = load i32, ptr %280, align 4, !tbaa !38
  %282 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 1
  store i32 %281, ptr %282, align 4, !tbaa !38
  %283 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 2
  %284 = load i32, ptr %283, align 4, !tbaa !38
  %285 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 2
  store i32 %284, ptr %285, align 4, !tbaa !38
  %286 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 3
  %287 = load i32, ptr %286, align 4, !tbaa !38
  %288 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 3
  store i32 %287, ptr %288, align 4, !tbaa !38
  %289 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 4
  %290 = load i32, ptr %289, align 4, !tbaa !38
  %291 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 4
  store i32 %290, ptr %291, align 4, !tbaa !38
  %292 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 5
  %293 = load i32, ptr %292, align 4, !tbaa !38
  %294 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 5
  store i32 %293, ptr %294, align 4, !tbaa !38
  %295 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 6
  %296 = load i32, ptr %295, align 4, !tbaa !38
  %297 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 6
  store i32 %296, ptr %297, align 4, !tbaa !38
  %298 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 7
  %299 = load i32, ptr %298, align 4, !tbaa !38
  %300 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 7
  store i32 %299, ptr %300, align 4, !tbaa !38
  %301 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 8
  %302 = load i32, ptr %301, align 4, !tbaa !38
  %303 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 8
  store i32 %302, ptr %303, align 4, !tbaa !38
  %304 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 9
  %305 = load i32, ptr %304, align 4, !tbaa !38
  %306 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 9
  store i32 %305, ptr %306, align 4, !tbaa !38
  %307 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 10
  %308 = load i32, ptr %307, align 4, !tbaa !38
  %309 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 10
  store i32 %308, ptr %309, align 4, !tbaa !38
  %310 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 11
  %311 = load i32, ptr %310, align 4, !tbaa !38
  %312 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 11
  store i32 %311, ptr %312, align 4, !tbaa !38
  %313 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 12
  %314 = load i32, ptr %313, align 4, !tbaa !38
  %315 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 12
  store i32 %314, ptr %315, align 4, !tbaa !38
  %316 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 13
  %317 = load i32, ptr %316, align 4, !tbaa !38
  %318 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 13
  store i32 %317, ptr %318, align 4, !tbaa !38
  %319 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 14
  %320 = load i32, ptr %319, align 4, !tbaa !38
  %321 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 14
  store i32 %320, ptr %321, align 4, !tbaa !38
  %322 = getelementptr inbounds [16 x [16 x i32]], ptr %274, i64 0, i64 %276, i64 15
  %323 = load i32, ptr %322, align 4, !tbaa !38
  %324 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %276, i64 15
  store i32 %323, ptr %324, align 4, !tbaa !38
  %325 = add nuw nsw i64 %276, 1
  %326 = icmp eq i64 %325, 16
  br i1 %326, label %327, label %275

327:                                              ; preds = %275
  %328 = shl i32 %272, 4
  %329 = load i32, ptr %92, align 4, !tbaa !93
  %330 = add nsw i32 %329, %328
  store i32 %330, ptr %92, align 4, !tbaa !93
  %331 = getelementptr inbounds i8, ptr %273, i64 90536
  %332 = load i32, ptr %331, align 8, !tbaa !80
  %333 = getelementptr inbounds i8, ptr %273, i64 8504
  %334 = sext i32 %10 to i64
  %335 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %336 = getelementptr inbounds i8, ptr %335, i64 6464
  %337 = load ptr, ptr %336, align 8, !tbaa !81
  %338 = load ptr, ptr %337, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %273, i64 90532
  %340 = load i32, ptr %339, align 4, !tbaa !82
  %341 = getelementptr inbounds i8, ptr %273, i64 4792
  %342 = load i32, ptr %1, align 4, !tbaa !38
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %335, i64 6424
  %345 = load ptr, ptr %344, align 8, !tbaa !29
  %346 = getelementptr inbounds i8, ptr %273, i64 10552
  %347 = getelementptr inbounds i8, ptr %337, i64 8
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = sext i32 %12 to i64
  %350 = sext i32 %14 to i64
  br label %351

351:                                              ; preds = %327, %401
  %352 = phi i64 [ 0, %327 ], [ %402, %401 ]
  %353 = add nsw i64 %352, %350
  %354 = getelementptr inbounds ptr, ptr %338, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !6
  %356 = getelementptr inbounds ptr, ptr %345, i64 %353
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = getelementptr inbounds ptr, ptr %348, i64 %353
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  br label %360

360:                                              ; preds = %351, %360
  %361 = phi i64 [ 0, %351 ], [ %399, %360 ]
  %362 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %352, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !38
  %364 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %352, i64 %361
  %365 = load i32, ptr %364, align 4, !tbaa !38
  %366 = ashr i32 %365, 1
  %367 = sub nsw i32 %363, %366
  %368 = add nsw i32 %367, %365
  %369 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %352, i64 %361
  %370 = load i32, ptr %369, align 4, !tbaa !38
  %371 = ashr i32 %370, 1
  %372 = sub nsw i32 %367, %371
  %373 = add nsw i32 %372, %370
  %374 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %333, i64 0, i64 %334, i64 %352, i64 %361
  %375 = load i16, ptr %374, align 2, !tbaa !25
  %376 = zext i16 %375 to i32
  %377 = add nsw i32 %372, %376
  %378 = tail call i32 @llvm.smax.i32(i32 %377, i32 0)
  %379 = tail call i32 @llvm.smin.i32(i32 %332, i32 %378)
  %380 = trunc i32 %379 to i16
  %381 = add nsw i64 %361, %349
  %382 = getelementptr inbounds i16, ptr %355, i64 %381
  store i16 %380, ptr %382, align 2, !tbaa !25
  %383 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %341, i64 0, i64 %343, i64 %352, i64 %361
  %384 = load i16, ptr %383, align 2, !tbaa !25
  %385 = zext i16 %384 to i32
  %386 = add nsw i32 %368, %385
  %387 = tail call i32 @llvm.smax.i32(i32 %386, i32 0)
  %388 = tail call i32 @llvm.smin.i32(i32 %340, i32 %387)
  %389 = trunc i32 %388 to i16
  %390 = getelementptr inbounds i16, ptr %357, i64 %381
  store i16 %389, ptr %390, align 2, !tbaa !25
  %391 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %346, i64 0, i64 %334, i64 %352, i64 %361
  %392 = load i16, ptr %391, align 2, !tbaa !25
  %393 = zext i16 %392 to i32
  %394 = add nsw i32 %373, %393
  %395 = tail call i32 @llvm.smax.i32(i32 %394, i32 0)
  %396 = tail call i32 @llvm.smin.i32(i32 %332, i32 %395)
  %397 = trunc i32 %396 to i16
  %398 = getelementptr inbounds i16, ptr %359, i64 %381
  store i16 %397, ptr %398, align 2, !tbaa !25
  %399 = add nuw nsw i64 %361, 1
  %400 = icmp eq i64 %399, 16
  br i1 %400, label %401, label %360

401:                                              ; preds = %360
  %402 = add nuw nsw i64 %352, 1
  %403 = icmp eq i64 %402, 16
  br i1 %403, label %404, label %351

404:                                              ; preds = %401, %89
  ret void
}

declare dso_local void @intrapred_luma_16x16() local_unnamed_addr #1

declare dso_local signext i32 @find_sad_16x16(ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma_16x16(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @dct_chroma(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @SetCoeffAndReconstruction8x8(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.RD_8x8DATA, align 4
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds i8, ptr %0, i64 468
  %8 = load i32, ptr %7, align 4, !tbaa !89
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %0, i64 376
  %12 = getelementptr inbounds i8, ptr %0, i64 392
  %13 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6148), align 4, !tbaa !25
  %14 = sext i16 %13 to i32
  store i32 %14, ptr %11, align 4, !tbaa !38
  %15 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6156), align 4, !tbaa !25
  %16 = sext i16 %15 to i32
  store i32 %16, ptr %12, align 4, !tbaa !38
  %17 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6150), align 2, !tbaa !25
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds i8, ptr %0, i64 380
  store i32 %18, ptr %19, align 4, !tbaa !38
  %20 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6158), align 2, !tbaa !25
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds i8, ptr %0, i64 396
  store i32 %21, ptr %22, align 4, !tbaa !38
  %23 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6152), align 4, !tbaa !25
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds i8, ptr %0, i64 384
  store i32 %24, ptr %25, align 4, !tbaa !38
  %26 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6160), align 4, !tbaa !25
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds i8, ptr %0, i64 400
  store i32 %27, ptr %28, align 4, !tbaa !38
  %29 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6154), align 2, !tbaa !25
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds i8, ptr %0, i64 388
  store i32 %30, ptr %31, align 4, !tbaa !38
  %32 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6162), align 2, !tbaa !25
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds i8, ptr %0, i64 404
  store i32 %33, ptr %34, align 4, !tbaa !38
  br i1 %6, label %41, label %103

35:                                               ; preds = %1
  %36 = getelementptr inbounds i8, ptr %3, i64 90540
  %37 = load i32, ptr %36, align 4, !tbaa !94
  %38 = icmp sgt i32 %37, -4
  br i1 %38, label %39, label %865

39:                                               ; preds = %35
  %40 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  br label %755

41:                                               ; preds = %10, %100
  %42 = phi i32 [ %101, %100 ], [ 0, %10 ]
  %43 = and i32 %42, 2
  br label %44

44:                                               ; preds = %41, %79
  %45 = phi i32 [ 0, %41 ], [ %98, %79 ]
  %46 = lshr i32 %45, 1
  %47 = or disjoint i32 %46, %43
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), i64 0, i64 %48
  %55 = load i8, ptr %54, align 1, !tbaa !20
  br label %56

56:                                               ; preds = %44, %53
  %57 = phi i8 [ %55, %53 ], [ -1, %44 ]
  %58 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 6480
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load ptr, ptr @img, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %62, i64 148
  %64 = load i32, ptr %63, align 4, !tbaa !23
  %65 = add nsw i32 %64, %42
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %61, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %62, i64 144
  %70 = load i32, ptr %69, align 8, !tbaa !24
  %71 = add nsw i32 %70, %45
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %68, i64 %72
  store i8 %57, ptr %73, align 1, !tbaa !20
  %74 = load i32, ptr %49, align 4, !tbaa !38
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6168), i64 0, i64 %48
  %78 = load i8, ptr %77, align 1, !tbaa !20
  br label %79

79:                                               ; preds = %56, %76
  %80 = phi i8 [ %78, %76 ], [ -1, %56 ]
  %81 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %81, i64 6480
  %83 = load ptr, ptr %82, align 8, !tbaa !90
  %84 = getelementptr inbounds i8, ptr %83, i64 8
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = load ptr, ptr @img, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %86, i64 148
  %88 = load i32, ptr %87, align 4, !tbaa !23
  %89 = add nsw i32 %88, %42
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %86, i64 144
  %94 = load i32, ptr %93, align 8, !tbaa !24
  %95 = add nsw i32 %94, %45
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %92, i64 %96
  store i8 %80, ptr %97, align 1, !tbaa !20
  %98 = add nuw nsw i32 %45, 1
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %44

100:                                              ; preds = %79
  %101 = add nuw nsw i32 %42, 1
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %178, label %41

103:                                              ; preds = %10, %103
  %104 = phi i32 [ %176, %103 ], [ 0, %10 ]
  %105 = and i32 %104, 2
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), i64 0, i64 %106
  %108 = load i8, ptr %107, align 2, !tbaa !20
  %109 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 6480
  %111 = load ptr, ptr %110, align 8, !tbaa !90
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = load ptr, ptr @img, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %113, i64 148
  %115 = load i32, ptr %114, align 4, !tbaa !23
  %116 = add nsw i32 %115, %104
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %112, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %113, i64 144
  %121 = load i32, ptr %120, align 8, !tbaa !24
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  store i8 %108, ptr %123, align 1, !tbaa !20
  %124 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %124, i64 6480
  %126 = load ptr, ptr %125, align 8, !tbaa !90
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load ptr, ptr @img, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 148
  %130 = load i32, ptr %129, align 4, !tbaa !23
  %131 = add nsw i32 %130, %104
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %127, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %128, i64 144
  %136 = load i32, ptr %135, align 8, !tbaa !24
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, ptr %134, i64 %137
  %139 = getelementptr i8, ptr %138, i64 1
  store i8 %108, ptr %139, align 1, !tbaa !20
  %140 = or disjoint i32 %105, 1
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !20
  %144 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 6480
  %146 = load ptr, ptr %145, align 8, !tbaa !90
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = load ptr, ptr @img, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 148
  %150 = load i32, ptr %149, align 4, !tbaa !23
  %151 = add nsw i32 %150, %104
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %147, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %148, i64 144
  %156 = load i32, ptr %155, align 8, !tbaa !24
  %157 = sext i32 %156 to i64
  %158 = getelementptr i8, ptr %154, i64 %157
  %159 = getelementptr i8, ptr %158, i64 2
  store i8 %143, ptr %159, align 1, !tbaa !20
  %160 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %161 = getelementptr inbounds i8, ptr %160, i64 6480
  %162 = load ptr, ptr %161, align 8, !tbaa !90
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = load ptr, ptr @img, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 148
  %166 = load i32, ptr %165, align 4, !tbaa !23
  %167 = add nsw i32 %166, %104
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %163, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %164, i64 144
  %172 = load i32, ptr %171, align 8, !tbaa !24
  %173 = sext i32 %172 to i64
  %174 = getelementptr i8, ptr %170, i64 %173
  %175 = getelementptr i8, ptr %174, i64 3
  store i8 %143, ptr %175, align 1, !tbaa !20
  %176 = add nuw nsw i32 %104, 1
  %177 = icmp eq i32 %176, 4
  br i1 %177, label %178, label %103

178:                                              ; preds = %103, %100
  %179 = load ptr, ptr @img, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 148
  %181 = load i32, ptr %180, align 4, !tbaa !23
  %182 = add nsw i32 %181, 4
  %183 = getelementptr inbounds i8, ptr %179, i64 144
  %184 = load i32, ptr %183, align 8, !tbaa !24
  %185 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %185, i64 24
  %187 = getelementptr inbounds i8, ptr %0, i64 428
  %188 = load i32, ptr %187, align 4, !tbaa !91
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %185, i64 6480
  %191 = load ptr, ptr %190, align 8, !tbaa !90
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %185, i64 6488
  %194 = load ptr, ptr %193, align 8, !tbaa !92
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = sext i32 %184 to i64
  %197 = sext i32 %181 to i64
  %198 = sext i32 %182 to i64
  %199 = getelementptr inbounds ptr, ptr %192, i64 %197
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = getelementptr inbounds ptr, ptr %195, i64 %197
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %200, i64 %196
  %204 = load i8, ptr %203, align 1, !tbaa !20
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !62
  %208 = getelementptr inbounds i64, ptr %202, i64 %196
  store i64 %207, ptr %208, align 8, !tbaa !62
  %209 = add nsw i64 %196, 1
  %210 = getelementptr inbounds i8, ptr %200, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !20
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %212
  %214 = load i64, ptr %213, align 8, !tbaa !62
  %215 = getelementptr inbounds i64, ptr %202, i64 %209
  store i64 %214, ptr %215, align 8, !tbaa !62
  %216 = add nsw i64 %196, 2
  %217 = getelementptr inbounds i8, ptr %200, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !20
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !62
  %222 = getelementptr inbounds i64, ptr %202, i64 %216
  store i64 %221, ptr %222, align 8, !tbaa !62
  %223 = add nsw i64 %196, 3
  %224 = getelementptr inbounds i8, ptr %200, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !20
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !62
  %229 = getelementptr inbounds i64, ptr %202, i64 %223
  store i64 %228, ptr %229, align 8, !tbaa !62
  %230 = add nsw i64 %197, 1
  %231 = icmp slt i64 %230, %198
  br i1 %231, label %232, label %325

232:                                              ; preds = %178
  %233 = getelementptr inbounds ptr, ptr %192, i64 %230
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = getelementptr inbounds ptr, ptr %195, i64 %230
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = getelementptr inbounds i8, ptr %234, i64 %196
  %238 = load i8, ptr %237, align 1, !tbaa !20
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !62
  %242 = getelementptr inbounds i64, ptr %236, i64 %196
  store i64 %241, ptr %242, align 8, !tbaa !62
  %243 = getelementptr inbounds i8, ptr %234, i64 %209
  %244 = load i8, ptr %243, align 1, !tbaa !20
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !62
  %248 = getelementptr inbounds i64, ptr %236, i64 %209
  store i64 %247, ptr %248, align 8, !tbaa !62
  %249 = add nsw i64 %196, 2
  %250 = getelementptr inbounds i8, ptr %234, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !20
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %252
  %254 = load i64, ptr %253, align 8, !tbaa !62
  %255 = getelementptr inbounds i64, ptr %236, i64 %249
  store i64 %254, ptr %255, align 8, !tbaa !62
  %256 = add nsw i64 %196, 3
  %257 = getelementptr inbounds i8, ptr %234, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !20
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !62
  %262 = getelementptr inbounds i64, ptr %236, i64 %256
  store i64 %261, ptr %262, align 8, !tbaa !62
  %263 = add nsw i64 %197, 2
  %264 = getelementptr inbounds ptr, ptr %192, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  %266 = getelementptr inbounds ptr, ptr %195, i64 %263
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  %268 = getelementptr inbounds i8, ptr %265, i64 %196
  %269 = load i8, ptr %268, align 1, !tbaa !20
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %270
  %272 = load i64, ptr %271, align 8, !tbaa !62
  %273 = getelementptr inbounds i64, ptr %267, i64 %196
  store i64 %272, ptr %273, align 8, !tbaa !62
  %274 = getelementptr inbounds i8, ptr %265, i64 %209
  %275 = load i8, ptr %274, align 1, !tbaa !20
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !62
  %279 = getelementptr inbounds i64, ptr %267, i64 %209
  store i64 %278, ptr %279, align 8, !tbaa !62
  %280 = add nsw i64 %196, 2
  %281 = getelementptr inbounds i8, ptr %265, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !20
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !62
  %286 = getelementptr inbounds i64, ptr %267, i64 %280
  store i64 %285, ptr %286, align 8, !tbaa !62
  %287 = add nsw i64 %196, 3
  %288 = getelementptr inbounds i8, ptr %265, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !20
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !62
  %293 = getelementptr inbounds i64, ptr %267, i64 %287
  store i64 %292, ptr %293, align 8, !tbaa !62
  %294 = add nsw i64 %197, 3
  %295 = getelementptr inbounds ptr, ptr %192, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !6
  %297 = getelementptr inbounds ptr, ptr %195, i64 %294
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = getelementptr inbounds i8, ptr %296, i64 %196
  %300 = load i8, ptr %299, align 1, !tbaa !20
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !62
  %304 = getelementptr inbounds i64, ptr %298, i64 %196
  store i64 %303, ptr %304, align 8, !tbaa !62
  %305 = getelementptr inbounds i8, ptr %296, i64 %209
  %306 = load i8, ptr %305, align 1, !tbaa !20
  %307 = zext i8 %306 to i64
  %308 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !62
  %310 = getelementptr inbounds i64, ptr %298, i64 %209
  store i64 %309, ptr %310, align 8, !tbaa !62
  %311 = add nsw i64 %196, 2
  %312 = getelementptr inbounds i8, ptr %296, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !20
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !62
  %317 = getelementptr inbounds i64, ptr %298, i64 %311
  store i64 %316, ptr %317, align 8, !tbaa !62
  %318 = add nsw i64 %196, 3
  %319 = getelementptr inbounds i8, ptr %296, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !20
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %189, i64 %321
  %323 = load i64, ptr %322, align 8, !tbaa !62
  %324 = getelementptr inbounds i64, ptr %298, i64 %318
  store i64 %323, ptr %324, align 8, !tbaa !62
  br label %325

325:                                              ; preds = %232, %178
  br i1 %6, label %326, label %456

326:                                              ; preds = %325
  %327 = add nsw i32 %188, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %191, i64 8
  %330 = load ptr, ptr %329, align 8, !tbaa !6
  %331 = getelementptr inbounds i8, ptr %194, i64 8
  %332 = load ptr, ptr %331, align 8, !tbaa !6
  %333 = getelementptr inbounds ptr, ptr %330, i64 %197
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = getelementptr inbounds ptr, ptr %332, i64 %197
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %334, i64 %196
  %338 = load i8, ptr %337, align 1, !tbaa !20
  %339 = zext i8 %338 to i64
  %340 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !62
  %342 = getelementptr inbounds i64, ptr %336, i64 %196
  store i64 %341, ptr %342, align 8, !tbaa !62
  %343 = getelementptr inbounds i8, ptr %334, i64 %209
  %344 = load i8, ptr %343, align 1, !tbaa !20
  %345 = zext i8 %344 to i64
  %346 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !62
  %348 = getelementptr inbounds i64, ptr %336, i64 %209
  store i64 %347, ptr %348, align 8, !tbaa !62
  %349 = add nsw i64 %196, 2
  %350 = getelementptr inbounds i8, ptr %334, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !20
  %352 = zext i8 %351 to i64
  %353 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !62
  %355 = getelementptr inbounds i64, ptr %336, i64 %349
  store i64 %354, ptr %355, align 8, !tbaa !62
  %356 = add nsw i64 %196, 3
  %357 = getelementptr inbounds i8, ptr %334, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !20
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %359
  %361 = load i64, ptr %360, align 8, !tbaa !62
  %362 = getelementptr inbounds i64, ptr %336, i64 %356
  store i64 %361, ptr %362, align 8, !tbaa !62
  br i1 %231, label %363, label %456

363:                                              ; preds = %326
  %364 = getelementptr inbounds ptr, ptr %330, i64 %230
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = getelementptr inbounds ptr, ptr %332, i64 %230
  %367 = load ptr, ptr %366, align 8, !tbaa !6
  %368 = getelementptr inbounds i8, ptr %365, i64 %196
  %369 = load i8, ptr %368, align 1, !tbaa !20
  %370 = zext i8 %369 to i64
  %371 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %370
  %372 = load i64, ptr %371, align 8, !tbaa !62
  %373 = getelementptr inbounds i64, ptr %367, i64 %196
  store i64 %372, ptr %373, align 8, !tbaa !62
  %374 = getelementptr inbounds i8, ptr %365, i64 %209
  %375 = load i8, ptr %374, align 1, !tbaa !20
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !62
  %379 = getelementptr inbounds i64, ptr %367, i64 %209
  store i64 %378, ptr %379, align 8, !tbaa !62
  %380 = add nsw i64 %196, 2
  %381 = getelementptr inbounds i8, ptr %365, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !20
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !62
  %386 = getelementptr inbounds i64, ptr %367, i64 %380
  store i64 %385, ptr %386, align 8, !tbaa !62
  %387 = add nsw i64 %196, 3
  %388 = getelementptr inbounds i8, ptr %365, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !20
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !62
  %393 = getelementptr inbounds i64, ptr %367, i64 %387
  store i64 %392, ptr %393, align 8, !tbaa !62
  %394 = add nsw i64 %197, 2
  %395 = getelementptr inbounds ptr, ptr %330, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = getelementptr inbounds ptr, ptr %332, i64 %394
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = getelementptr inbounds i8, ptr %396, i64 %196
  %400 = load i8, ptr %399, align 1, !tbaa !20
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !62
  %404 = getelementptr inbounds i64, ptr %398, i64 %196
  store i64 %403, ptr %404, align 8, !tbaa !62
  %405 = getelementptr inbounds i8, ptr %396, i64 %209
  %406 = load i8, ptr %405, align 1, !tbaa !20
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !62
  %410 = getelementptr inbounds i64, ptr %398, i64 %209
  store i64 %409, ptr %410, align 8, !tbaa !62
  %411 = add nsw i64 %196, 2
  %412 = getelementptr inbounds i8, ptr %396, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !20
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !62
  %417 = getelementptr inbounds i64, ptr %398, i64 %411
  store i64 %416, ptr %417, align 8, !tbaa !62
  %418 = add nsw i64 %196, 3
  %419 = getelementptr inbounds i8, ptr %396, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !20
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %421
  %423 = load i64, ptr %422, align 8, !tbaa !62
  %424 = getelementptr inbounds i64, ptr %398, i64 %418
  store i64 %423, ptr %424, align 8, !tbaa !62
  %425 = add nsw i64 %197, 3
  %426 = getelementptr inbounds ptr, ptr %330, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = getelementptr inbounds ptr, ptr %332, i64 %425
  %429 = load ptr, ptr %428, align 8, !tbaa !6
  %430 = getelementptr inbounds i8, ptr %427, i64 %196
  %431 = load i8, ptr %430, align 1, !tbaa !20
  %432 = zext i8 %431 to i64
  %433 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %432
  %434 = load i64, ptr %433, align 8, !tbaa !62
  %435 = getelementptr inbounds i64, ptr %429, i64 %196
  store i64 %434, ptr %435, align 8, !tbaa !62
  %436 = getelementptr inbounds i8, ptr %427, i64 %209
  %437 = load i8, ptr %436, align 1, !tbaa !20
  %438 = zext i8 %437 to i64
  %439 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %438
  %440 = load i64, ptr %439, align 8, !tbaa !62
  %441 = getelementptr inbounds i64, ptr %429, i64 %209
  store i64 %440, ptr %441, align 8, !tbaa !62
  %442 = add nsw i64 %196, 2
  %443 = getelementptr inbounds i8, ptr %427, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !20
  %445 = zext i8 %444 to i64
  %446 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %445
  %447 = load i64, ptr %446, align 8, !tbaa !62
  %448 = getelementptr inbounds i64, ptr %429, i64 %442
  store i64 %447, ptr %448, align 8, !tbaa !62
  %449 = add nsw i64 %196, 3
  %450 = getelementptr inbounds i8, ptr %427, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !20
  %452 = zext i8 %451 to i64
  %453 = getelementptr inbounds [6 x [33 x i64]], ptr %186, i64 0, i64 %328, i64 %452
  %454 = load i64, ptr %453, align 8, !tbaa !62
  %455 = getelementptr inbounds i64, ptr %429, i64 %449
  store i64 %454, ptr %455, align 8, !tbaa !62
  br label %456

456:                                              ; preds = %326, %363, %325
  %457 = getelementptr inbounds i8, ptr %179, i64 24
  %458 = load i32, ptr %457, align 8, !tbaa !14
  %459 = icmp eq i32 %458, 1
  %460 = zext i1 %459 to i32
  %461 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6148), align 4, !tbaa !25
  %462 = sext i16 %461 to i32
  %463 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), align 4, !tbaa !20
  %464 = zext i8 %463 to i32
  %465 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6168), align 4, !tbaa !20
  %466 = zext i8 %465 to i32
  %467 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6156), align 4, !tbaa !25
  %468 = sext i16 %467 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %462, i32 noundef signext %464, i32 noundef signext %466, i32 noundef signext %468, i32 noundef signext %460)
  %469 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6150), align 2, !tbaa !25
  %470 = sext i16 %469 to i32
  %471 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6165), align 1, !tbaa !20
  %472 = zext i8 %471 to i32
  %473 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6169), align 1, !tbaa !20
  %474 = zext i8 %473 to i32
  %475 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6158), align 2, !tbaa !25
  %476 = sext i16 %475 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %470, i32 noundef signext %472, i32 noundef signext %474, i32 noundef signext %476, i32 noundef signext %460)
  %477 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6152), align 4, !tbaa !25
  %478 = sext i16 %477 to i32
  %479 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6166), align 2, !tbaa !20
  %480 = zext i8 %479 to i32
  %481 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6170), align 2, !tbaa !20
  %482 = zext i8 %481 to i32
  %483 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6160), align 4, !tbaa !25
  %484 = sext i16 %483 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 2, i32 noundef signext %478, i32 noundef signext %480, i32 noundef signext %482, i32 noundef signext %484, i32 noundef signext %460)
  %485 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6154), align 2, !tbaa !25
  %486 = sext i16 %485 to i32
  %487 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6167), align 1, !tbaa !20
  %488 = zext i8 %487 to i32
  %489 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6171), align 1, !tbaa !20
  %490 = zext i8 %489 to i32
  %491 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6162), align 2, !tbaa !25
  %492 = sext i16 %491 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 3, i32 noundef signext %486, i32 noundef signext %488, i32 noundef signext %490, i32 noundef signext %492, i32 noundef signext %460)
  %493 = load ptr, ptr @img, align 8, !tbaa !6
  %494 = getelementptr inbounds i8, ptr %493, i64 24
  %495 = load i32, ptr %494, align 8, !tbaa !14
  %496 = icmp eq i32 %495, 1
  %497 = zext i1 %496 to i32
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 0, i32 noundef signext 0, ptr noundef nonnull %2, i32 noundef signext %497)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 0, i32 noundef signext 1, ptr noundef nonnull %2, i32 noundef signext %497)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 0, i32 noundef signext 2, ptr noundef nonnull %2, i32 noundef signext %497)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 0, i32 noundef signext 3, ptr noundef nonnull %2, i32 noundef signext %497)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  %498 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  br label %499

499:                                              ; preds = %456, %499
  %500 = phi i64 [ 0, %456 ], [ %602, %499 ]
  %501 = getelementptr inbounds ptr, ptr %498, i64 %500
  %502 = load ptr, ptr @img, align 8, !tbaa !6
  %503 = getelementptr inbounds i8, ptr %502, i64 14136
  %504 = load ptr, ptr %503, align 8, !tbaa !53
  %505 = getelementptr inbounds ptr, ptr %504, i64 %500
  %506 = load ptr, ptr %505, align 8, !tbaa !6
  %507 = load ptr, ptr %506, align 8, !tbaa !6
  %508 = load ptr, ptr %507, align 8, !tbaa !6
  %509 = load ptr, ptr %501, align 8, !tbaa !6
  %510 = load ptr, ptr %509, align 8, !tbaa !6
  %511 = load ptr, ptr %510, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %508, ptr noundef nonnull align 4 dereferenceable(260) %511, i64 260, i1 false)
  %512 = load ptr, ptr @img, align 8, !tbaa !6
  %513 = getelementptr inbounds i8, ptr %512, i64 14136
  %514 = load ptr, ptr %513, align 8, !tbaa !53
  %515 = getelementptr inbounds ptr, ptr %514, i64 %500
  %516 = load ptr, ptr %515, align 8, !tbaa !6
  %517 = load ptr, ptr %516, align 8, !tbaa !6
  %518 = getelementptr inbounds i8, ptr %517, i64 8
  %519 = load ptr, ptr %518, align 8, !tbaa !6
  %520 = load ptr, ptr %501, align 8, !tbaa !6
  %521 = load ptr, ptr %520, align 8, !tbaa !6
  %522 = getelementptr inbounds i8, ptr %521, i64 8
  %523 = load ptr, ptr %522, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %519, ptr noundef nonnull align 4 dereferenceable(260) %523, i64 260, i1 false)
  %524 = load ptr, ptr @img, align 8, !tbaa !6
  %525 = getelementptr inbounds i8, ptr %524, i64 14136
  %526 = load ptr, ptr %525, align 8, !tbaa !53
  %527 = getelementptr inbounds ptr, ptr %526, i64 %500
  %528 = load ptr, ptr %527, align 8, !tbaa !6
  %529 = getelementptr inbounds i8, ptr %528, i64 8
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = load ptr, ptr %530, align 8, !tbaa !6
  %532 = load ptr, ptr %501, align 8, !tbaa !6
  %533 = getelementptr inbounds i8, ptr %532, i64 8
  %534 = load ptr, ptr %533, align 8, !tbaa !6
  %535 = load ptr, ptr %534, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %531, ptr noundef nonnull align 4 dereferenceable(260) %535, i64 260, i1 false)
  %536 = load ptr, ptr @img, align 8, !tbaa !6
  %537 = getelementptr inbounds i8, ptr %536, i64 14136
  %538 = load ptr, ptr %537, align 8, !tbaa !53
  %539 = getelementptr inbounds ptr, ptr %538, i64 %500
  %540 = load ptr, ptr %539, align 8, !tbaa !6
  %541 = getelementptr inbounds i8, ptr %540, i64 8
  %542 = load ptr, ptr %541, align 8, !tbaa !6
  %543 = getelementptr inbounds i8, ptr %542, i64 8
  %544 = load ptr, ptr %543, align 8, !tbaa !6
  %545 = load ptr, ptr %501, align 8, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %545, i64 8
  %547 = load ptr, ptr %546, align 8, !tbaa !6
  %548 = getelementptr inbounds i8, ptr %547, i64 8
  %549 = load ptr, ptr %548, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %544, ptr noundef nonnull align 4 dereferenceable(260) %549, i64 260, i1 false)
  %550 = load ptr, ptr @img, align 8, !tbaa !6
  %551 = getelementptr inbounds i8, ptr %550, i64 14136
  %552 = load ptr, ptr %551, align 8, !tbaa !53
  %553 = getelementptr inbounds ptr, ptr %552, i64 %500
  %554 = load ptr, ptr %553, align 8, !tbaa !6
  %555 = getelementptr inbounds i8, ptr %554, i64 16
  %556 = load ptr, ptr %555, align 8, !tbaa !6
  %557 = load ptr, ptr %556, align 8, !tbaa !6
  %558 = load ptr, ptr %501, align 8, !tbaa !6
  %559 = getelementptr inbounds i8, ptr %558, i64 16
  %560 = load ptr, ptr %559, align 8, !tbaa !6
  %561 = load ptr, ptr %560, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %557, ptr noundef nonnull align 4 dereferenceable(260) %561, i64 260, i1 false)
  %562 = load ptr, ptr @img, align 8, !tbaa !6
  %563 = getelementptr inbounds i8, ptr %562, i64 14136
  %564 = load ptr, ptr %563, align 8, !tbaa !53
  %565 = getelementptr inbounds ptr, ptr %564, i64 %500
  %566 = load ptr, ptr %565, align 8, !tbaa !6
  %567 = getelementptr inbounds i8, ptr %566, i64 16
  %568 = load ptr, ptr %567, align 8, !tbaa !6
  %569 = getelementptr inbounds i8, ptr %568, i64 8
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = load ptr, ptr %501, align 8, !tbaa !6
  %572 = getelementptr inbounds i8, ptr %571, i64 16
  %573 = load ptr, ptr %572, align 8, !tbaa !6
  %574 = getelementptr inbounds i8, ptr %573, i64 8
  %575 = load ptr, ptr %574, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %570, ptr noundef nonnull align 4 dereferenceable(260) %575, i64 260, i1 false)
  %576 = load ptr, ptr @img, align 8, !tbaa !6
  %577 = getelementptr inbounds i8, ptr %576, i64 14136
  %578 = load ptr, ptr %577, align 8, !tbaa !53
  %579 = getelementptr inbounds ptr, ptr %578, i64 %500
  %580 = load ptr, ptr %579, align 8, !tbaa !6
  %581 = getelementptr inbounds i8, ptr %580, i64 24
  %582 = load ptr, ptr %581, align 8, !tbaa !6
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  %584 = load ptr, ptr %501, align 8, !tbaa !6
  %585 = getelementptr inbounds i8, ptr %584, i64 24
  %586 = load ptr, ptr %585, align 8, !tbaa !6
  %587 = load ptr, ptr %586, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %583, ptr noundef nonnull align 4 dereferenceable(260) %587, i64 260, i1 false)
  %588 = load ptr, ptr @img, align 8, !tbaa !6
  %589 = getelementptr inbounds i8, ptr %588, i64 14136
  %590 = load ptr, ptr %589, align 8, !tbaa !53
  %591 = getelementptr inbounds ptr, ptr %590, i64 %500
  %592 = load ptr, ptr %591, align 8, !tbaa !6
  %593 = getelementptr inbounds i8, ptr %592, i64 24
  %594 = load ptr, ptr %593, align 8, !tbaa !6
  %595 = getelementptr inbounds i8, ptr %594, i64 8
  %596 = load ptr, ptr %595, align 8, !tbaa !6
  %597 = load ptr, ptr %501, align 8, !tbaa !6
  %598 = getelementptr inbounds i8, ptr %597, i64 24
  %599 = load ptr, ptr %598, align 8, !tbaa !6
  %600 = getelementptr inbounds i8, ptr %599, i64 8
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %596, ptr noundef nonnull align 4 dereferenceable(260) %601, i64 260, i1 false)
  %602 = add nuw nsw i64 %500, 1
  %603 = icmp eq i64 %602, 4
  br i1 %603, label %604, label %499

604:                                              ; preds = %499
  %605 = load i32, ptr @cnt_nonz8_8x8ts, align 4, !tbaa !38
  %606 = icmp slt i32 %605, 6
  %607 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %606, label %608, label %676

608:                                              ; preds = %604
  %609 = getelementptr inbounds i8, ptr %607, i64 40
  %610 = load i32, ptr %609, align 8, !tbaa !96
  %611 = getelementptr inbounds i8, ptr %607, i64 90492
  %612 = load i32, ptr %611, align 4, !tbaa !97
  %613 = sub i32 0, %612
  %614 = icmp eq i32 %610, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %608
  %616 = getelementptr inbounds i8, ptr %607, i64 90552
  %617 = load i32, ptr %616, align 8, !tbaa !98
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %676

619:                                              ; preds = %615, %608
  %620 = getelementptr inbounds i8, ptr %607, i64 24
  %621 = load i32, ptr %620, align 8, !tbaa !14
  %622 = icmp eq i32 %621, 3
  br i1 %622, label %676, label %623

623:                                              ; preds = %619
  %624 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 0, ptr %624, align 4, !tbaa !93
  %625 = getelementptr inbounds i8, ptr %0, i64 368
  store i64 0, ptr %625, align 8, !tbaa !99
  %626 = getelementptr inbounds i8, ptr %607, i64 90572
  %627 = load i32, ptr %626, align 4, !tbaa !39
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %630, label %629

629:                                              ; preds = %623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @rec_resG, i8 0, i64 1024, i1 false)
  br label %731

630:                                              ; preds = %623, %672
  %631 = phi ptr [ %673, %672 ], [ %607, %623 ]
  %632 = phi i64 [ %674, %672 ], [ 0, %623 ]
  %633 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %634 = getelementptr inbounds i8, ptr %633, i64 6424
  %635 = load ptr, ptr %634, align 8, !tbaa !29
  %636 = getelementptr inbounds i8, ptr %631, i64 156
  %637 = load i32, ptr %636, align 4, !tbaa !27
  %638 = trunc nuw nsw i64 %632 to i32
  %639 = add nsw i32 %637, %638
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %635, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !6
  %643 = getelementptr inbounds i8, ptr %631, i64 152
  %644 = load i32, ptr %643, align 8, !tbaa !26
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i16, ptr %642, i64 %645
  %647 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), i64 0, i64 %632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %646, ptr noundef nonnull align 4 dereferenceable(32) %647, i64 32, i1 false)
  %648 = load ptr, ptr @img, align 8, !tbaa !6
  %649 = getelementptr inbounds i8, ptr %648, i64 24
  %650 = load i32, ptr %649, align 8, !tbaa !14
  %651 = icmp ne i32 %650, 3
  %652 = load i32, ptr @si_frame_indicator, align 4
  %653 = icmp ne i32 %652, 0
  %654 = select i1 %651, i1 true, i1 %653
  %655 = load i32, ptr @sp2_frame_indicator, align 4
  %656 = icmp ne i32 %655, 0
  %657 = select i1 %654, i1 true, i1 %656
  br i1 %657, label %672, label %658

658:                                              ; preds = %630
  %659 = load ptr, ptr @lrec, align 8, !tbaa !6
  %660 = getelementptr inbounds i8, ptr %648, i64 156
  %661 = load i32, ptr %660, align 4, !tbaa !27
  %662 = add nsw i32 %661, %638
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds ptr, ptr %659, i64 %663
  %665 = load ptr, ptr %664, align 8, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %648, i64 152
  %667 = load i32, ptr %666, align 8, !tbaa !26
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, ptr %665, i64 %668
  %670 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 7196), i64 0, i64 %632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %669, ptr noundef nonnull align 4 dereferenceable(64) %670, i64 64, i1 false)
  %671 = load ptr, ptr @img, align 8, !tbaa !6
  br label %672

672:                                              ; preds = %630, %658
  %673 = phi ptr [ %648, %630 ], [ %671, %658 ]
  %674 = add nuw nsw i64 %632, 1
  %675 = icmp eq i64 %674, 16
  br i1 %675, label %731, label %630

676:                                              ; preds = %619, %615, %604
  %677 = load i32, ptr @cbp8_8x8ts, align 4, !tbaa !38
  %678 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 %677, ptr %678, align 4, !tbaa !93
  %679 = load i64, ptr @cbp_blk8_8x8ts, align 8, !tbaa !62
  %680 = getelementptr inbounds i8, ptr %0, i64 368
  store i64 %679, ptr %680, align 8, !tbaa !99
  %681 = getelementptr inbounds i8, ptr %607, i64 90572
  %682 = load i32, ptr %681, align 4, !tbaa !39
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %685, label %684

684:                                              ; preds = %676
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @rec_resG, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr8x8, i64 4), i64 1024, i1 false)
  br label %731

685:                                              ; preds = %676, %727
  %686 = phi ptr [ %728, %727 ], [ %607, %676 ]
  %687 = phi i64 [ %729, %727 ], [ 0, %676 ]
  %688 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %689 = getelementptr inbounds i8, ptr %688, i64 6424
  %690 = load ptr, ptr %689, align 8, !tbaa !29
  %691 = getelementptr inbounds i8, ptr %686, i64 156
  %692 = load i32, ptr %691, align 4, !tbaa !27
  %693 = trunc nuw nsw i64 %687 to i32
  %694 = add nsw i32 %692, %693
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds ptr, ptr %690, i64 %695
  %697 = load ptr, ptr %696, align 8, !tbaa !6
  %698 = getelementptr inbounds i8, ptr %686, i64 152
  %699 = load i32, ptr %698, align 8, !tbaa !26
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i16, ptr %697, i64 %700
  %702 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6172), i64 0, i64 %687
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %701, ptr noundef nonnull align 4 dereferenceable(32) %702, i64 32, i1 false)
  %703 = load ptr, ptr @img, align 8, !tbaa !6
  %704 = getelementptr inbounds i8, ptr %703, i64 24
  %705 = load i32, ptr %704, align 8, !tbaa !14
  %706 = icmp ne i32 %705, 3
  %707 = load i32, ptr @si_frame_indicator, align 4
  %708 = icmp ne i32 %707, 0
  %709 = select i1 %706, i1 true, i1 %708
  %710 = load i32, ptr @sp2_frame_indicator, align 4
  %711 = icmp ne i32 %710, 0
  %712 = select i1 %709, i1 true, i1 %711
  br i1 %712, label %727, label %713

713:                                              ; preds = %685
  %714 = load ptr, ptr @lrec, align 8, !tbaa !6
  %715 = getelementptr inbounds i8, ptr %703, i64 156
  %716 = load i32, ptr %715, align 4, !tbaa !27
  %717 = add nsw i32 %716, %693
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds ptr, ptr %714, i64 %718
  %720 = load ptr, ptr %719, align 8, !tbaa !6
  %721 = getelementptr inbounds i8, ptr %703, i64 152
  %722 = load i32, ptr %721, align 8, !tbaa !26
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, ptr %720, i64 %723
  %725 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 7196), i64 0, i64 %687
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %724, ptr noundef nonnull align 4 dereferenceable(64) %725, i64 64, i1 false)
  %726 = load ptr, ptr @img, align 8, !tbaa !6
  br label %727

727:                                              ; preds = %685, %713
  %728 = phi ptr [ %703, %685 ], [ %726, %713 ]
  %729 = add nuw nsw i64 %687, 1
  %730 = icmp eq i64 %729, 16
  br i1 %730, label %731, label %685

731:                                              ; preds = %672, %727, %629, %684
  %732 = phi ptr [ %607, %629 ], [ %607, %684 ], [ %728, %727 ], [ %673, %672 ]
  %733 = getelementptr inbounds i8, ptr %732, i64 90572
  %734 = load i32, ptr %733, align 4, !tbaa !39
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %999, label %736

736:                                              ; preds = %731
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @resTrans_R, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr8x8, i64 1028), i64 1024, i1 false), !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @resTrans_B, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr8x8, i64 2052), i64 1024, i1 false), !tbaa !38
  br label %737

737:                                              ; preds = %736, %752
  %738 = phi i64 [ 0, %736 ], [ %753, %752 ]
  br label %739

739:                                              ; preds = %737, %739
  %740 = phi i64 [ 0, %737 ], [ %750, %739 ]
  %741 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 3076), i64 0, i64 %738, i64 %740
  %742 = load i32, ptr %741, align 4, !tbaa !38
  %743 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %738, i64 %740
  store i32 %742, ptr %743, align 4, !tbaa !38
  %744 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 4100), i64 0, i64 %738, i64 %740
  %745 = load i32, ptr %744, align 4, !tbaa !38
  %746 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %738, i64 %740
  store i32 %745, ptr %746, align 4, !tbaa !38
  %747 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 5124), i64 0, i64 %738, i64 %740
  %748 = load i32, ptr %747, align 4, !tbaa !38
  %749 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %738, i64 %740
  store i32 %748, ptr %749, align 4, !tbaa !38
  %750 = add nuw nsw i64 %740, 1
  %751 = icmp eq i64 %750, 16
  br i1 %751, label %752, label %739

752:                                              ; preds = %739
  %753 = add nuw nsw i64 %738, 1
  %754 = icmp eq i64 %753, 16
  br i1 %754, label %999, label %737

755:                                              ; preds = %39, %755
  %756 = phi ptr [ %3, %39 ], [ %859, %755 ]
  %757 = phi i64 [ 0, %39 ], [ %858, %755 ]
  %758 = getelementptr inbounds ptr, ptr %40, i64 %757
  %759 = getelementptr inbounds i8, ptr %756, i64 14136
  %760 = load ptr, ptr %759, align 8, !tbaa !53
  %761 = getelementptr inbounds ptr, ptr %760, i64 %757
  %762 = load ptr, ptr %761, align 8, !tbaa !6
  %763 = load ptr, ptr %762, align 8, !tbaa !6
  %764 = load ptr, ptr %763, align 8, !tbaa !6
  %765 = load ptr, ptr %758, align 8, !tbaa !6
  %766 = load ptr, ptr %765, align 8, !tbaa !6
  %767 = load ptr, ptr %766, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %764, ptr noundef nonnull align 4 dereferenceable(260) %767, i64 260, i1 false)
  %768 = load ptr, ptr @img, align 8, !tbaa !6
  %769 = getelementptr inbounds i8, ptr %768, i64 14136
  %770 = load ptr, ptr %769, align 8, !tbaa !53
  %771 = getelementptr inbounds ptr, ptr %770, i64 %757
  %772 = load ptr, ptr %771, align 8, !tbaa !6
  %773 = load ptr, ptr %772, align 8, !tbaa !6
  %774 = getelementptr inbounds i8, ptr %773, i64 8
  %775 = load ptr, ptr %774, align 8, !tbaa !6
  %776 = load ptr, ptr %758, align 8, !tbaa !6
  %777 = load ptr, ptr %776, align 8, !tbaa !6
  %778 = getelementptr inbounds i8, ptr %777, i64 8
  %779 = load ptr, ptr %778, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %775, ptr noundef nonnull align 4 dereferenceable(260) %779, i64 260, i1 false)
  %780 = load ptr, ptr @img, align 8, !tbaa !6
  %781 = getelementptr inbounds i8, ptr %780, i64 14136
  %782 = load ptr, ptr %781, align 8, !tbaa !53
  %783 = getelementptr inbounds ptr, ptr %782, i64 %757
  %784 = load ptr, ptr %783, align 8, !tbaa !6
  %785 = getelementptr inbounds i8, ptr %784, i64 8
  %786 = load ptr, ptr %785, align 8, !tbaa !6
  %787 = load ptr, ptr %786, align 8, !tbaa !6
  %788 = load ptr, ptr %758, align 8, !tbaa !6
  %789 = getelementptr inbounds i8, ptr %788, i64 8
  %790 = load ptr, ptr %789, align 8, !tbaa !6
  %791 = load ptr, ptr %790, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %787, ptr noundef nonnull align 4 dereferenceable(260) %791, i64 260, i1 false)
  %792 = load ptr, ptr @img, align 8, !tbaa !6
  %793 = getelementptr inbounds i8, ptr %792, i64 14136
  %794 = load ptr, ptr %793, align 8, !tbaa !53
  %795 = getelementptr inbounds ptr, ptr %794, i64 %757
  %796 = load ptr, ptr %795, align 8, !tbaa !6
  %797 = getelementptr inbounds i8, ptr %796, i64 8
  %798 = load ptr, ptr %797, align 8, !tbaa !6
  %799 = getelementptr inbounds i8, ptr %798, i64 8
  %800 = load ptr, ptr %799, align 8, !tbaa !6
  %801 = load ptr, ptr %758, align 8, !tbaa !6
  %802 = getelementptr inbounds i8, ptr %801, i64 8
  %803 = load ptr, ptr %802, align 8, !tbaa !6
  %804 = getelementptr inbounds i8, ptr %803, i64 8
  %805 = load ptr, ptr %804, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %800, ptr noundef nonnull align 4 dereferenceable(260) %805, i64 260, i1 false)
  %806 = load ptr, ptr @img, align 8, !tbaa !6
  %807 = getelementptr inbounds i8, ptr %806, i64 14136
  %808 = load ptr, ptr %807, align 8, !tbaa !53
  %809 = getelementptr inbounds ptr, ptr %808, i64 %757
  %810 = load ptr, ptr %809, align 8, !tbaa !6
  %811 = getelementptr inbounds i8, ptr %810, i64 16
  %812 = load ptr, ptr %811, align 8, !tbaa !6
  %813 = load ptr, ptr %812, align 8, !tbaa !6
  %814 = load ptr, ptr %758, align 8, !tbaa !6
  %815 = getelementptr inbounds i8, ptr %814, i64 16
  %816 = load ptr, ptr %815, align 8, !tbaa !6
  %817 = load ptr, ptr %816, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %813, ptr noundef nonnull align 4 dereferenceable(260) %817, i64 260, i1 false)
  %818 = load ptr, ptr @img, align 8, !tbaa !6
  %819 = getelementptr inbounds i8, ptr %818, i64 14136
  %820 = load ptr, ptr %819, align 8, !tbaa !53
  %821 = getelementptr inbounds ptr, ptr %820, i64 %757
  %822 = load ptr, ptr %821, align 8, !tbaa !6
  %823 = getelementptr inbounds i8, ptr %822, i64 16
  %824 = load ptr, ptr %823, align 8, !tbaa !6
  %825 = getelementptr inbounds i8, ptr %824, i64 8
  %826 = load ptr, ptr %825, align 8, !tbaa !6
  %827 = load ptr, ptr %758, align 8, !tbaa !6
  %828 = getelementptr inbounds i8, ptr %827, i64 16
  %829 = load ptr, ptr %828, align 8, !tbaa !6
  %830 = getelementptr inbounds i8, ptr %829, i64 8
  %831 = load ptr, ptr %830, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %826, ptr noundef nonnull align 4 dereferenceable(260) %831, i64 260, i1 false)
  %832 = load ptr, ptr @img, align 8, !tbaa !6
  %833 = getelementptr inbounds i8, ptr %832, i64 14136
  %834 = load ptr, ptr %833, align 8, !tbaa !53
  %835 = getelementptr inbounds ptr, ptr %834, i64 %757
  %836 = load ptr, ptr %835, align 8, !tbaa !6
  %837 = getelementptr inbounds i8, ptr %836, i64 24
  %838 = load ptr, ptr %837, align 8, !tbaa !6
  %839 = load ptr, ptr %838, align 8, !tbaa !6
  %840 = load ptr, ptr %758, align 8, !tbaa !6
  %841 = getelementptr inbounds i8, ptr %840, i64 24
  %842 = load ptr, ptr %841, align 8, !tbaa !6
  %843 = load ptr, ptr %842, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %839, ptr noundef nonnull align 4 dereferenceable(260) %843, i64 260, i1 false)
  %844 = load ptr, ptr @img, align 8, !tbaa !6
  %845 = getelementptr inbounds i8, ptr %844, i64 14136
  %846 = load ptr, ptr %845, align 8, !tbaa !53
  %847 = getelementptr inbounds ptr, ptr %846, i64 %757
  %848 = load ptr, ptr %847, align 8, !tbaa !6
  %849 = getelementptr inbounds i8, ptr %848, i64 24
  %850 = load ptr, ptr %849, align 8, !tbaa !6
  %851 = getelementptr inbounds i8, ptr %850, i64 8
  %852 = load ptr, ptr %851, align 8, !tbaa !6
  %853 = load ptr, ptr %758, align 8, !tbaa !6
  %854 = getelementptr inbounds i8, ptr %853, i64 24
  %855 = load ptr, ptr %854, align 8, !tbaa !6
  %856 = getelementptr inbounds i8, ptr %855, i64 8
  %857 = load ptr, ptr %856, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %852, ptr noundef nonnull align 4 dereferenceable(260) %857, i64 260, i1 false)
  %858 = add nuw nsw i64 %757, 1
  %859 = load ptr, ptr @img, align 8, !tbaa !6
  %860 = getelementptr inbounds i8, ptr %859, i64 90540
  %861 = load i32, ptr %860, align 4, !tbaa !94
  %862 = add nsw i32 %861, 3
  %863 = sext i32 %862 to i64
  %864 = icmp slt i64 %757, %863
  br i1 %864, label %755, label %865

865:                                              ; preds = %755, %35
  %866 = phi ptr [ %3, %35 ], [ %859, %755 ]
  %867 = load i32, ptr @cnt_nonz_8x8, align 4, !tbaa !38
  %868 = icmp slt i32 %867, 6
  br i1 %868, label %869, label %937

869:                                              ; preds = %865
  %870 = getelementptr inbounds i8, ptr %866, i64 24
  %871 = load i32, ptr %870, align 8, !tbaa !14
  %872 = icmp eq i32 %871, 3
  br i1 %872, label %937, label %873

873:                                              ; preds = %869
  %874 = getelementptr inbounds i8, ptr %866, i64 40
  %875 = load i32, ptr %874, align 8, !tbaa !96
  %876 = getelementptr inbounds i8, ptr %866, i64 90492
  %877 = load i32, ptr %876, align 4, !tbaa !97
  %878 = sub i32 0, %877
  %879 = icmp eq i32 %875, %878
  br i1 %879, label %880, label %884

880:                                              ; preds = %873
  %881 = getelementptr inbounds i8, ptr %866, i64 90552
  %882 = load i32, ptr %881, align 8, !tbaa !98
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %937

884:                                              ; preds = %880, %873
  %885 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 0, ptr %885, align 4, !tbaa !93
  %886 = getelementptr inbounds i8, ptr %0, i64 368
  store i64 0, ptr %886, align 8, !tbaa !99
  %887 = getelementptr inbounds i8, ptr %866, i64 90572
  %888 = load i32, ptr %887, align 4, !tbaa !39
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %891, label %890

890:                                              ; preds = %884
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @rec_resG, i8 0, i64 1024, i1 false)
  br label %993

891:                                              ; preds = %884, %933
  %892 = phi ptr [ %934, %933 ], [ %866, %884 ]
  %893 = phi i64 [ %935, %933 ], [ 0, %884 ]
  %894 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %895 = getelementptr inbounds i8, ptr %894, i64 6424
  %896 = load ptr, ptr %895, align 8, !tbaa !29
  %897 = getelementptr inbounds i8, ptr %892, i64 156
  %898 = load i32, ptr %897, align 4, !tbaa !27
  %899 = trunc nuw nsw i64 %893 to i32
  %900 = add nsw i32 %898, %899
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds ptr, ptr %896, i64 %901
  %903 = load ptr, ptr %902, align 8, !tbaa !6
  %904 = getelementptr inbounds i8, ptr %892, i64 152
  %905 = load i32, ptr %904, align 8, !tbaa !26
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i16, ptr %903, i64 %906
  %908 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684), i64 0, i64 %893
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %907, ptr noundef nonnull align 4 dereferenceable(32) %908, i64 32, i1 false)
  %909 = load ptr, ptr @img, align 8, !tbaa !6
  %910 = getelementptr inbounds i8, ptr %909, i64 24
  %911 = load i32, ptr %910, align 8, !tbaa !14
  %912 = icmp ne i32 %911, 3
  %913 = load i32, ptr @si_frame_indicator, align 4
  %914 = icmp ne i32 %913, 0
  %915 = select i1 %912, i1 true, i1 %914
  %916 = load i32, ptr @sp2_frame_indicator, align 4
  %917 = icmp ne i32 %916, 0
  %918 = select i1 %915, i1 true, i1 %917
  br i1 %918, label %933, label %919

919:                                              ; preds = %891
  %920 = load ptr, ptr @lrec, align 8, !tbaa !6
  %921 = getelementptr inbounds i8, ptr %909, i64 156
  %922 = load i32, ptr %921, align 4, !tbaa !27
  %923 = add nsw i32 %922, %899
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds ptr, ptr %920, i64 %924
  %926 = load ptr, ptr %925, align 8, !tbaa !6
  %927 = getelementptr inbounds i8, ptr %909, i64 152
  %928 = load i32, ptr %927, align 8, !tbaa !26
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds i32, ptr %926, i64 %929
  %931 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 7196), i64 0, i64 %893
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %930, ptr noundef nonnull align 4 dereferenceable(64) %931, i64 64, i1 false)
  %932 = load ptr, ptr @img, align 8, !tbaa !6
  br label %933

933:                                              ; preds = %891, %919
  %934 = phi ptr [ %909, %891 ], [ %932, %919 ]
  %935 = add nuw nsw i64 %893, 1
  %936 = icmp eq i64 %935, 16
  br i1 %936, label %993, label %891

937:                                              ; preds = %880, %869, %865
  %938 = load i32, ptr @cbp8x8, align 4, !tbaa !38
  %939 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 %938, ptr %939, align 4, !tbaa !93
  %940 = load i32, ptr @cbp_blk8x8, align 4, !tbaa !38
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds i8, ptr %0, i64 368
  store i64 %941, ptr %942, align 8, !tbaa !99
  %943 = getelementptr inbounds i8, ptr %866, i64 90572
  %944 = load i32, ptr %943, align 4, !tbaa !39
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %947, label %946

946:                                              ; preds = %937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @rec_resG, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 4), i64 1024, i1 false)
  br label %993

947:                                              ; preds = %937, %989
  %948 = phi ptr [ %990, %989 ], [ %866, %937 ]
  %949 = phi i64 [ %991, %989 ], [ 0, %937 ]
  %950 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %951 = getelementptr inbounds i8, ptr %950, i64 6424
  %952 = load ptr, ptr %951, align 8, !tbaa !29
  %953 = getelementptr inbounds i8, ptr %948, i64 156
  %954 = load i32, ptr %953, align 4, !tbaa !27
  %955 = trunc nuw nsw i64 %949 to i32
  %956 = add nsw i32 %954, %955
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds ptr, ptr %952, i64 %957
  %959 = load ptr, ptr %958, align 8, !tbaa !6
  %960 = getelementptr inbounds i8, ptr %948, i64 152
  %961 = load i32, ptr %960, align 8, !tbaa !26
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i16, ptr %959, i64 %962
  %964 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6172), i64 0, i64 %949
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %963, ptr noundef nonnull align 4 dereferenceable(32) %964, i64 32, i1 false)
  %965 = load ptr, ptr @img, align 8, !tbaa !6
  %966 = getelementptr inbounds i8, ptr %965, i64 24
  %967 = load i32, ptr %966, align 8, !tbaa !14
  %968 = icmp ne i32 %967, 3
  %969 = load i32, ptr @si_frame_indicator, align 4
  %970 = icmp ne i32 %969, 0
  %971 = select i1 %968, i1 true, i1 %970
  %972 = load i32, ptr @sp2_frame_indicator, align 4
  %973 = icmp ne i32 %972, 0
  %974 = select i1 %971, i1 true, i1 %973
  br i1 %974, label %989, label %975

975:                                              ; preds = %947
  %976 = load ptr, ptr @lrec, align 8, !tbaa !6
  %977 = getelementptr inbounds i8, ptr %965, i64 156
  %978 = load i32, ptr %977, align 4, !tbaa !27
  %979 = add nsw i32 %978, %955
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds ptr, ptr %976, i64 %980
  %982 = load ptr, ptr %981, align 8, !tbaa !6
  %983 = getelementptr inbounds i8, ptr %965, i64 152
  %984 = load i32, ptr %983, align 8, !tbaa !26
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i32, ptr %982, i64 %985
  %987 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 7196), i64 0, i64 %949
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %986, ptr noundef nonnull align 4 dereferenceable(64) %987, i64 64, i1 false)
  %988 = load ptr, ptr @img, align 8, !tbaa !6
  br label %989

989:                                              ; preds = %947, %975
  %990 = phi ptr [ %965, %947 ], [ %988, %975 ]
  %991 = add nuw nsw i64 %949, 1
  %992 = icmp eq i64 %991, 16
  br i1 %992, label %993, label %947

993:                                              ; preds = %933, %989, %890, %946
  %994 = phi ptr [ %866, %890 ], [ %866, %946 ], [ %990, %989 ], [ %934, %933 ]
  %995 = getelementptr inbounds i8, ptr %994, i64 90572
  %996 = load i32, ptr %995, align 4, !tbaa !39
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %999, label %998

998:                                              ; preds = %993
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @mprRGB, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 3076), i64 1024, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @mprRGB, i64 1024), ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 4100), i64 1024, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @mprRGB, i64 2048), ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 5124), i64 1024, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @resTrans_R, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 1028), i64 1024, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @resTrans_B, ptr noundef nonnull align 4 dereferenceable(1024) getelementptr inbounds (i8, ptr @tr4x4, i64 2052), i64 1024, i1 false)
  br label %999

999:                                              ; preds = %752, %998, %993, %731
  ret void
}

; Function Attrs: nounwind
define dso_local void @StoreMV8x8(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  %7 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6148), align 4, !tbaa !25
  %8 = sext i16 %7 to i32
  %9 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), align 4, !tbaa !20
  %10 = zext i8 %9 to i32
  %11 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6168), align 4, !tbaa !20
  %12 = zext i8 %11 to i32
  %13 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6156), align 4, !tbaa !25
  %14 = sext i16 %13 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 0, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext %12, i32 noundef signext %14, i32 noundef signext %6)
  %15 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6150), align 2, !tbaa !25
  %16 = sext i16 %15 to i32
  %17 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6165), align 1, !tbaa !20
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6169), align 1, !tbaa !20
  %20 = zext i8 %19 to i32
  %21 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6158), align 2, !tbaa !25
  %22 = sext i16 %21 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 1, i32 noundef signext %16, i32 noundef signext %18, i32 noundef signext %20, i32 noundef signext %22, i32 noundef signext %6)
  %23 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6152), align 4, !tbaa !25
  %24 = sext i16 %23 to i32
  %25 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6166), align 2, !tbaa !20
  %26 = zext i8 %25 to i32
  %27 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6170), align 2, !tbaa !20
  %28 = zext i8 %27 to i32
  %29 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6160), align 4, !tbaa !25
  %30 = sext i16 %29 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 2, i32 noundef signext %24, i32 noundef signext %26, i32 noundef signext %28, i32 noundef signext %30, i32 noundef signext %6)
  %31 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6154), align 2, !tbaa !25
  %32 = sext i16 %31 to i32
  %33 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6167), align 1, !tbaa !20
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6171), align 1, !tbaa !20
  %36 = zext i8 %35 to i32
  %37 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6162), align 2, !tbaa !25
  %38 = sext i16 %37 to i32
  tail call void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 3, i32 noundef signext %32, i32 noundef signext %34, i32 noundef signext %36, i32 noundef signext %38, i32 noundef signext %6)
  ret void
}

; Function Attrs: nounwind
define dso_local void @RestoreMV8x8(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca %struct.RD_8x8DATA, align 4
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 0, ptr noundef nonnull %2, i32 noundef signext %7)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 1, ptr noundef nonnull %2, i32 noundef signext %7)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 2, ptr noundef nonnull %2, i32 noundef signext %7)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %2, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext 3, ptr noundef nonnull %2, i32 noundef signext %7)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind
define dso_local void @SetMotionVectorsMB(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 89336
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds i8, ptr %3, i64 89328
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 376
  %11 = getelementptr inbounds i8, ptr %0, i64 392
  %12 = getelementptr inbounds i8, ptr %0, i64 476
  %13 = getelementptr inbounds i8, ptr %0, i64 72
  br label %170

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %3, i64 148
  %16 = load i32, ptr %15, align 4, !tbaa !23
  %17 = getelementptr inbounds i8, ptr %3, i64 144
  %18 = load i32, ptr %17, align 8, !tbaa !24
  %19 = getelementptr inbounds i8, ptr %0, i64 392
  %20 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 6504
  %22 = getelementptr inbounds i8, ptr %20, i64 6480
  %23 = getelementptr inbounds i8, ptr %0, i64 376
  %24 = sext i32 %18 to i64
  %25 = sext i32 %16 to i64
  %26 = add nsw i64 %24, 1
  %27 = add nsw i64 %24, 2
  %28 = add nsw i64 %24, 3
  %29 = add nsw i64 %24, 3
  br label %30

30:                                               ; preds = %14, %164
  %31 = phi i64 [ 0, %14 ], [ %168, %164 ]
  %32 = and i64 %31, 2
  %33 = add nsw i64 %31, %25
  %34 = getelementptr inbounds ptr, ptr %5, i64 %31
  %35 = and i64 %31, 2
  %36 = getelementptr inbounds [4 x i32], ptr %19, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !38
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %50, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %21, align 8, !tbaa !101
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds ptr, ptr %41, i64 %33
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %24
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  store i16 0, ptr %45, align 2, !tbaa !25
  %46 = getelementptr inbounds i8, ptr %45, i64 2
  store i16 0, ptr %46, align 2, !tbaa !25
  %47 = getelementptr ptr, ptr %43, i64 %24
  %48 = getelementptr i8, ptr %47, i64 8
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  store i16 0, ptr %49, align 2, !tbaa !25
  br label %101

50:                                               ; preds = %30
  %51 = load ptr, ptr %22, align 8, !tbaa !90
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %33
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 %24
  %56 = load i8, ptr %55, align 1, !tbaa !20
  %57 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %35
  %58 = load i32, ptr %57, align 4, !tbaa !38
  %59 = load ptr, ptr %34, align 8, !tbaa !6
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = zext i8 %56 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = sext i32 %58 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load i16, ptr %67, align 2, !tbaa !25
  %69 = load ptr, ptr %21, align 8, !tbaa !101
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %33
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %24
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  store i16 %68, ptr %74, align 2, !tbaa !25
  %75 = getelementptr inbounds i8, ptr %67, i64 2
  %76 = load i16, ptr %75, align 2, !tbaa !25
  %77 = getelementptr inbounds i8, ptr %74, i64 2
  store i16 %76, ptr %77, align 2, !tbaa !25
  %78 = load ptr, ptr %22, align 8, !tbaa !90
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %33
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %81, i64 %26
  %83 = load i8, ptr %82, align 1, !tbaa !20
  %84 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %35
  %85 = load i32, ptr %84, align 4, !tbaa !38
  %86 = load ptr, ptr %34, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %86, i64 8
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = zext i8 %83 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = sext i32 %85 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = load i16, ptr %95, align 2, !tbaa !25
  %97 = getelementptr inbounds ptr, ptr %72, i64 %26
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  store i16 %96, ptr %98, align 2, !tbaa !25
  %99 = getelementptr inbounds i8, ptr %95, i64 2
  %100 = load i16, ptr %99, align 2, !tbaa !25
  br label %101

101:                                              ; preds = %50, %39
  %102 = phi ptr [ %98, %50 ], [ %49, %39 ]
  %103 = phi i16 [ %100, %50 ], [ 0, %39 ]
  %104 = phi ptr [ %72, %50 ], [ %43, %39 ]
  %105 = getelementptr inbounds i8, ptr %102, i64 2
  store i16 %103, ptr %105, align 2, !tbaa !25
  %106 = or disjoint i64 %32, 1
  %107 = getelementptr inbounds [4 x i32], ptr %19, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !38
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %116, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds ptr, ptr %104, i64 %27
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  store i16 0, ptr %112, align 2, !tbaa !25
  %113 = getelementptr inbounds i8, ptr %112, i64 2
  store i16 0, ptr %113, align 2, !tbaa !25
  %114 = getelementptr inbounds ptr, ptr %104, i64 %28
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  store i16 0, ptr %115, align 2, !tbaa !25
  br label %164

116:                                              ; preds = %101
  %117 = load ptr, ptr %22, align 8, !tbaa !90
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %33
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 %27
  %122 = load i8, ptr %121, align 1, !tbaa !20
  %123 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %106
  %124 = load i32, ptr %123, align 4, !tbaa !38
  %125 = load ptr, ptr %34, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 16
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = zext i8 %122 to i64
  %130 = getelementptr inbounds ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = sext i32 %124 to i64
  %133 = getelementptr inbounds ptr, ptr %131, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = load i16, ptr %134, align 2, !tbaa !25
  %136 = getelementptr inbounds ptr, ptr %104, i64 %27
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  store i16 %135, ptr %137, align 2, !tbaa !25
  %138 = getelementptr inbounds i8, ptr %134, i64 2
  %139 = load i16, ptr %138, align 2, !tbaa !25
  %140 = getelementptr inbounds i8, ptr %137, i64 2
  store i16 %139, ptr %140, align 2, !tbaa !25
  %141 = load ptr, ptr %22, align 8, !tbaa !90
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = getelementptr inbounds ptr, ptr %142, i64 %33
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 %29
  %146 = load i8, ptr %145, align 1, !tbaa !20
  %147 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %106
  %148 = load i32, ptr %147, align 4, !tbaa !38
  %149 = load ptr, ptr %34, align 8, !tbaa !6
  %150 = getelementptr inbounds i8, ptr %149, i64 24
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = zext i8 %146 to i64
  %154 = getelementptr inbounds ptr, ptr %152, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = sext i32 %148 to i64
  %157 = getelementptr inbounds ptr, ptr %155, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !6
  %159 = load i16, ptr %158, align 2, !tbaa !25
  %160 = getelementptr inbounds ptr, ptr %104, i64 %29
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  store i16 %159, ptr %161, align 2, !tbaa !25
  %162 = getelementptr inbounds i8, ptr %158, i64 2
  %163 = load i16, ptr %162, align 2, !tbaa !25
  br label %164

164:                                              ; preds = %116, %110
  %165 = phi ptr [ %161, %116 ], [ %115, %110 ]
  %166 = phi i16 [ %163, %116 ], [ 0, %110 ]
  %167 = getelementptr inbounds i8, ptr %165, i64 2
  store i16 %166, ptr %167, align 2, !tbaa !25
  %168 = add nuw nsw i64 %31, 1
  %169 = icmp eq i64 %168, 4
  br i1 %169, label %357, label %30

170:                                              ; preds = %9, %352
  %171 = phi i64 [ 0, %9 ], [ %353, %352 ]
  %172 = phi ptr [ %5, %9 ], [ %349, %352 ]
  %173 = trunc nuw nsw i64 %171 to i32
  %174 = and i64 %171, 2
  %175 = load ptr, ptr @img, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 148
  %177 = load i32, ptr %176, align 4, !tbaa !23
  %178 = add nsw i32 %177, %173
  %179 = sext i32 %178 to i64
  br label %180

180:                                              ; preds = %170, %348
  %181 = phi i64 [ 0, %170 ], [ %350, %348 ]
  %182 = phi ptr [ %172, %170 ], [ %349, %348 ]
  %183 = trunc nuw nsw i64 %181 to i32
  %184 = lshr i64 %181, 1
  %185 = and i64 %184, 2147483647
  %186 = or i64 %185, %174
  %187 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !38
  %189 = load ptr, ptr @img, align 8, !tbaa !6
  %190 = getelementptr inbounds i8, ptr %189, i64 144
  %191 = load i32, ptr %190, align 8, !tbaa !24
  %192 = add nsw i32 %191, %183
  %193 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 %186
  %194 = load i32, ptr %193, align 4, !tbaa !38
  %195 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %196 = getelementptr inbounds i8, ptr %195, i64 6480
  %197 = load ptr, ptr %196, align 8, !tbaa !90
  %198 = load ptr, ptr %197, align 8, !tbaa !6
  %199 = getelementptr inbounds ptr, ptr %198, i64 %179
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = sext i32 %192 to i64
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !20
  %204 = getelementptr inbounds i8, ptr %197, i64 8
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = getelementptr inbounds ptr, ptr %205, i64 %179
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 %201
  %209 = load i8, ptr %208, align 1, !tbaa !20
  %210 = load i16, ptr %12, align 4, !tbaa !83
  %211 = icmp ne i16 %210, 0
  %212 = icmp eq i32 %194, 2
  %213 = select i1 %211, i1 %212, i1 false
  br i1 %213, label %214, label %222

214:                                              ; preds = %180
  %215 = load i32, ptr %13, align 8, !tbaa !57
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %304

217:                                              ; preds = %214
  %218 = icmp eq i16 %210, 1
  %219 = select i1 %218, i64 89344, i64 89352
  %220 = getelementptr inbounds i8, ptr %189, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  br label %304

222:                                              ; preds = %180
  switch i32 %194, label %303 [
    i32 -1, label %223
    i32 0, label %239
    i32 1, label %269
  ]

223:                                              ; preds = %222
  %224 = getelementptr inbounds i8, ptr %195, i64 6504
  %225 = load ptr, ptr %224, align 8, !tbaa !101
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = getelementptr inbounds ptr, ptr %226, i64 %179
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = getelementptr inbounds ptr, ptr %228, i64 %201
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  store i16 0, ptr %230, align 2, !tbaa !25
  %231 = getelementptr inbounds i8, ptr %230, i64 2
  store i16 0, ptr %231, align 2, !tbaa !25
  %232 = getelementptr inbounds i8, ptr %225, i64 8
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = getelementptr inbounds ptr, ptr %233, i64 %179
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds ptr, ptr %235, i64 %201
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  store i16 0, ptr %237, align 2, !tbaa !25
  %238 = getelementptr inbounds i8, ptr %237, i64 2
  store i16 0, ptr %238, align 2, !tbaa !25
  br label %348

239:                                              ; preds = %222
  %240 = getelementptr inbounds ptr, ptr %182, i64 %171
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = getelementptr inbounds ptr, ptr %241, i64 %181
  %243 = load ptr, ptr %242, align 8, !tbaa !6
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = zext i8 %203 to i64
  %246 = getelementptr inbounds ptr, ptr %244, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = sext i32 %188 to i64
  %249 = getelementptr inbounds ptr, ptr %247, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = load i16, ptr %250, align 2, !tbaa !25
  %252 = getelementptr inbounds i8, ptr %195, i64 6504
  %253 = load ptr, ptr %252, align 8, !tbaa !101
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = getelementptr inbounds ptr, ptr %254, i64 %179
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds ptr, ptr %256, i64 %201
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  store i16 %251, ptr %258, align 2, !tbaa !25
  %259 = getelementptr inbounds i8, ptr %250, i64 2
  %260 = load i16, ptr %259, align 2, !tbaa !25
  %261 = getelementptr inbounds i8, ptr %258, i64 2
  store i16 %260, ptr %261, align 2, !tbaa !25
  %262 = getelementptr inbounds i8, ptr %253, i64 8
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = getelementptr inbounds ptr, ptr %263, i64 %179
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  %266 = getelementptr inbounds ptr, ptr %265, i64 %201
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  store i16 0, ptr %267, align 2, !tbaa !25
  %268 = getelementptr inbounds i8, ptr %267, i64 2
  store i16 0, ptr %268, align 2, !tbaa !25
  store i8 -1, ptr %208, align 1, !tbaa !20
  br label %348

269:                                              ; preds = %222
  %270 = getelementptr inbounds i8, ptr %195, i64 6504
  %271 = load ptr, ptr %270, align 8, !tbaa !101
  %272 = load ptr, ptr %271, align 8, !tbaa !6
  %273 = getelementptr inbounds ptr, ptr %272, i64 %179
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  %275 = getelementptr inbounds ptr, ptr %274, i64 %201
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  store i16 0, ptr %276, align 2, !tbaa !25
  %277 = getelementptr inbounds i8, ptr %276, i64 2
  store i16 0, ptr %277, align 2, !tbaa !25
  store i8 -1, ptr %202, align 1, !tbaa !20
  %278 = getelementptr inbounds ptr, ptr %182, i64 %171
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = getelementptr inbounds ptr, ptr %279, i64 %181
  %281 = load ptr, ptr %280, align 8, !tbaa !6
  %282 = getelementptr inbounds i8, ptr %281, i64 8
  %283 = load ptr, ptr %282, align 8, !tbaa !6
  %284 = zext i8 %209 to i64
  %285 = getelementptr inbounds ptr, ptr %283, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = sext i32 %188 to i64
  %288 = getelementptr inbounds ptr, ptr %286, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = load i16, ptr %289, align 2, !tbaa !25
  %291 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %292 = getelementptr inbounds i8, ptr %291, i64 6504
  %293 = load ptr, ptr %292, align 8, !tbaa !101
  %294 = getelementptr inbounds i8, ptr %293, i64 8
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = getelementptr inbounds ptr, ptr %295, i64 %179
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  %298 = getelementptr inbounds ptr, ptr %297, i64 %201
  %299 = load ptr, ptr %298, align 8, !tbaa !6
  store i16 %290, ptr %299, align 2, !tbaa !25
  %300 = getelementptr inbounds i8, ptr %289, i64 2
  %301 = load i16, ptr %300, align 2, !tbaa !25
  %302 = getelementptr inbounds i8, ptr %299, i64 2
  store i16 %301, ptr %302, align 2, !tbaa !25
  br label %348

303:                                              ; preds = %222
  br i1 %212, label %304, label %347

304:                                              ; preds = %217, %214, %303
  %305 = phi i8 [ %203, %303 ], [ %203, %214 ], [ 0, %217 ]
  %306 = phi ptr [ %182, %303 ], [ %182, %214 ], [ %221, %217 ]
  %307 = phi i8 [ %209, %303 ], [ %209, %214 ], [ 0, %217 ]
  %308 = getelementptr inbounds ptr, ptr %306, i64 %171
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = getelementptr inbounds ptr, ptr %309, i64 %181
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = load ptr, ptr %311, align 8, !tbaa !6
  %313 = zext i8 %305 to i64
  %314 = getelementptr inbounds ptr, ptr %312, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  %316 = sext i32 %188 to i64
  %317 = getelementptr inbounds ptr, ptr %315, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  %319 = load i16, ptr %318, align 2, !tbaa !25
  %320 = getelementptr inbounds i8, ptr %195, i64 6504
  %321 = load ptr, ptr %320, align 8, !tbaa !101
  %322 = load ptr, ptr %321, align 8, !tbaa !6
  %323 = getelementptr inbounds ptr, ptr %322, i64 %179
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  %325 = getelementptr inbounds ptr, ptr %324, i64 %201
  %326 = load ptr, ptr %325, align 8, !tbaa !6
  store i16 %319, ptr %326, align 2, !tbaa !25
  %327 = getelementptr inbounds i8, ptr %318, i64 2
  %328 = load i16, ptr %327, align 2, !tbaa !25
  %329 = getelementptr inbounds i8, ptr %326, i64 2
  store i16 %328, ptr %329, align 2, !tbaa !25
  %330 = getelementptr inbounds i8, ptr %311, i64 8
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = zext i8 %307 to i64
  %333 = getelementptr inbounds ptr, ptr %331, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = getelementptr inbounds ptr, ptr %334, i64 %316
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = load i16, ptr %336, align 2, !tbaa !25
  %338 = getelementptr inbounds i8, ptr %321, i64 8
  %339 = load ptr, ptr %338, align 8, !tbaa !6
  %340 = getelementptr inbounds ptr, ptr %339, i64 %179
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds ptr, ptr %341, i64 %201
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  store i16 %337, ptr %343, align 2, !tbaa !25
  %344 = getelementptr inbounds i8, ptr %336, i64 2
  %345 = load i16, ptr %344, align 2, !tbaa !25
  %346 = getelementptr inbounds i8, ptr %343, i64 2
  store i16 %345, ptr %346, align 2, !tbaa !25
  br label %348

347:                                              ; preds = %303
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 255) #15
  br label %348

348:                                              ; preds = %223, %269, %347, %304, %239
  %349 = phi ptr [ %182, %223 ], [ %182, %269 ], [ %182, %347 ], [ %306, %304 ], [ %182, %239 ]
  %350 = add nuw nsw i64 %181, 1
  %351 = icmp eq i64 %350, 4
  br i1 %351, label %352, label %180

352:                                              ; preds = %348
  %353 = add nuw nsw i64 %171, 1
  %354 = icmp eq i64 %353, 4
  br i1 %354, label %355, label %170

355:                                              ; preds = %352
  %356 = load ptr, ptr @img, align 8, !tbaa !6
  br label %357

357:                                              ; preds = %164, %355
  %358 = phi ptr [ %356, %355 ], [ %3, %164 ]
  %359 = phi ptr [ %349, %355 ], [ %5, %164 ]
  %360 = getelementptr inbounds i8, ptr %358, i64 90220
  %361 = load i32, ptr %360, align 4, !tbaa !102
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %564, label %363

363:                                              ; preds = %357
  %364 = getelementptr inbounds i8, ptr %358, i64 36
  %365 = load i32, ptr %364, align 4, !tbaa !103
  %366 = icmp sgt i32 %365, 0
  %367 = zext nneg i32 %365 to i64
  br label %368

368:                                              ; preds = %363, %561
  %369 = phi i64 [ 0, %363 ], [ %562, %561 ]
  br label %370

370:                                              ; preds = %368, %558
  %371 = phi i64 [ 0, %368 ], [ %559, %558 ]
  %372 = getelementptr inbounds ptr, ptr %359, i64 %371
  %373 = load ptr, ptr @rdopt, align 8
  %374 = getelementptr inbounds i8, ptr %373, i64 1656
  %375 = getelementptr inbounds ptr, ptr %7, i64 %371
  %376 = getelementptr inbounds i8, ptr %373, i64 1648
  br label %377

377:                                              ; preds = %370, %557
  %378 = phi i1 [ true, %370 ], [ false, %557 ]
  %379 = phi i64 [ 0, %370 ], [ 1, %557 ]
  br i1 %366, label %380, label %557

380:                                              ; preds = %377
  %381 = load ptr, ptr %372, align 8, !tbaa !6
  %382 = getelementptr inbounds ptr, ptr %381, i64 %369
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds ptr, ptr %383, i64 %379
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = load ptr, ptr %374, align 8, !tbaa !104
  %387 = getelementptr inbounds ptr, ptr %386, i64 %371
  %388 = load ptr, ptr %387, align 8, !tbaa !6
  %389 = getelementptr inbounds ptr, ptr %388, i64 %369
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  %391 = getelementptr inbounds ptr, ptr %390, i64 %379
  %392 = load ptr, ptr %391, align 8, !tbaa !6
  %393 = load ptr, ptr %375, align 8, !tbaa !6
  %394 = getelementptr inbounds ptr, ptr %393, i64 %369
  %395 = load ptr, ptr %394, align 8, !tbaa !6
  %396 = getelementptr inbounds ptr, ptr %395, i64 %379
  %397 = load ptr, ptr %396, align 8, !tbaa !6
  %398 = load ptr, ptr %376, align 8, !tbaa !106
  %399 = getelementptr inbounds ptr, ptr %398, i64 %371
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds ptr, ptr %400, i64 %369
  %402 = load ptr, ptr %401, align 8, !tbaa !6
  %403 = getelementptr inbounds ptr, ptr %402, i64 %379
  %404 = load ptr, ptr %403, align 8, !tbaa !6
  br label %405

405:                                              ; preds = %380, %405
  %406 = phi i64 [ 0, %380 ], [ %555, %405 ]
  %407 = getelementptr inbounds ptr, ptr %385, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !6
  %409 = getelementptr inbounds ptr, ptr %392, i64 %406
  %410 = load ptr, ptr %409, align 8, !tbaa !6
  %411 = getelementptr inbounds ptr, ptr %397, i64 %406
  %412 = load ptr, ptr %411, align 8, !tbaa !6
  %413 = getelementptr inbounds ptr, ptr %404, i64 %406
  %414 = load ptr, ptr %413, align 8, !tbaa !6
  %415 = load ptr, ptr %408, align 8, !tbaa !6
  %416 = load i16, ptr %415, align 2, !tbaa !25
  %417 = load ptr, ptr %410, align 8, !tbaa !6
  store i16 %416, ptr %417, align 2, !tbaa !25
  %418 = load ptr, ptr %412, align 8, !tbaa !6
  %419 = load i16, ptr %418, align 2, !tbaa !25
  %420 = load ptr, ptr %414, align 8, !tbaa !6
  store i16 %419, ptr %420, align 2, !tbaa !25
  %421 = getelementptr inbounds i8, ptr %415, i64 2
  %422 = load i16, ptr %421, align 2, !tbaa !25
  %423 = getelementptr inbounds i8, ptr %417, i64 2
  store i16 %422, ptr %423, align 2, !tbaa !25
  %424 = getelementptr inbounds i8, ptr %418, i64 2
  %425 = load i16, ptr %424, align 2, !tbaa !25
  %426 = getelementptr inbounds i8, ptr %420, i64 2
  store i16 %425, ptr %426, align 2, !tbaa !25
  %427 = getelementptr inbounds i8, ptr %408, i64 8
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = load i16, ptr %428, align 2, !tbaa !25
  %430 = getelementptr inbounds i8, ptr %410, i64 8
  %431 = load ptr, ptr %430, align 8, !tbaa !6
  store i16 %429, ptr %431, align 2, !tbaa !25
  %432 = getelementptr inbounds i8, ptr %412, i64 8
  %433 = load ptr, ptr %432, align 8, !tbaa !6
  %434 = load i16, ptr %433, align 2, !tbaa !25
  %435 = getelementptr inbounds i8, ptr %414, i64 8
  %436 = load ptr, ptr %435, align 8, !tbaa !6
  store i16 %434, ptr %436, align 2, !tbaa !25
  %437 = getelementptr inbounds i8, ptr %428, i64 2
  %438 = load i16, ptr %437, align 2, !tbaa !25
  %439 = getelementptr inbounds i8, ptr %431, i64 2
  store i16 %438, ptr %439, align 2, !tbaa !25
  %440 = getelementptr inbounds i8, ptr %433, i64 2
  %441 = load i16, ptr %440, align 2, !tbaa !25
  %442 = getelementptr inbounds i8, ptr %436, i64 2
  store i16 %441, ptr %442, align 2, !tbaa !25
  %443 = getelementptr inbounds i8, ptr %408, i64 16
  %444 = load ptr, ptr %443, align 8, !tbaa !6
  %445 = load i16, ptr %444, align 2, !tbaa !25
  %446 = getelementptr inbounds i8, ptr %410, i64 16
  %447 = load ptr, ptr %446, align 8, !tbaa !6
  store i16 %445, ptr %447, align 2, !tbaa !25
  %448 = getelementptr inbounds i8, ptr %412, i64 16
  %449 = load ptr, ptr %448, align 8, !tbaa !6
  %450 = load i16, ptr %449, align 2, !tbaa !25
  %451 = getelementptr inbounds i8, ptr %414, i64 16
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  store i16 %450, ptr %452, align 2, !tbaa !25
  %453 = getelementptr inbounds i8, ptr %444, i64 2
  %454 = load i16, ptr %453, align 2, !tbaa !25
  %455 = getelementptr inbounds i8, ptr %447, i64 2
  store i16 %454, ptr %455, align 2, !tbaa !25
  %456 = getelementptr inbounds i8, ptr %449, i64 2
  %457 = load i16, ptr %456, align 2, !tbaa !25
  %458 = getelementptr inbounds i8, ptr %452, i64 2
  store i16 %457, ptr %458, align 2, !tbaa !25
  %459 = getelementptr inbounds i8, ptr %408, i64 24
  %460 = load ptr, ptr %459, align 8, !tbaa !6
  %461 = load i16, ptr %460, align 2, !tbaa !25
  %462 = getelementptr inbounds i8, ptr %410, i64 24
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  store i16 %461, ptr %463, align 2, !tbaa !25
  %464 = getelementptr inbounds i8, ptr %412, i64 24
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = load i16, ptr %465, align 2, !tbaa !25
  %467 = getelementptr inbounds i8, ptr %414, i64 24
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  store i16 %466, ptr %468, align 2, !tbaa !25
  %469 = getelementptr inbounds i8, ptr %460, i64 2
  %470 = load i16, ptr %469, align 2, !tbaa !25
  %471 = getelementptr inbounds i8, ptr %463, i64 2
  store i16 %470, ptr %471, align 2, !tbaa !25
  %472 = getelementptr inbounds i8, ptr %465, i64 2
  %473 = load i16, ptr %472, align 2, !tbaa !25
  %474 = getelementptr inbounds i8, ptr %468, i64 2
  store i16 %473, ptr %474, align 2, !tbaa !25
  %475 = getelementptr inbounds i8, ptr %408, i64 32
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = load i16, ptr %476, align 2, !tbaa !25
  %478 = getelementptr inbounds i8, ptr %410, i64 32
  %479 = load ptr, ptr %478, align 8, !tbaa !6
  store i16 %477, ptr %479, align 2, !tbaa !25
  %480 = getelementptr inbounds i8, ptr %412, i64 32
  %481 = load ptr, ptr %480, align 8, !tbaa !6
  %482 = load i16, ptr %481, align 2, !tbaa !25
  %483 = getelementptr inbounds i8, ptr %414, i64 32
  %484 = load ptr, ptr %483, align 8, !tbaa !6
  store i16 %482, ptr %484, align 2, !tbaa !25
  %485 = getelementptr inbounds i8, ptr %476, i64 2
  %486 = load i16, ptr %485, align 2, !tbaa !25
  %487 = getelementptr inbounds i8, ptr %479, i64 2
  store i16 %486, ptr %487, align 2, !tbaa !25
  %488 = getelementptr inbounds i8, ptr %481, i64 2
  %489 = load i16, ptr %488, align 2, !tbaa !25
  %490 = getelementptr inbounds i8, ptr %484, i64 2
  store i16 %489, ptr %490, align 2, !tbaa !25
  %491 = getelementptr inbounds i8, ptr %408, i64 40
  %492 = load ptr, ptr %491, align 8, !tbaa !6
  %493 = load i16, ptr %492, align 2, !tbaa !25
  %494 = getelementptr inbounds i8, ptr %410, i64 40
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  store i16 %493, ptr %495, align 2, !tbaa !25
  %496 = getelementptr inbounds i8, ptr %412, i64 40
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  %498 = load i16, ptr %497, align 2, !tbaa !25
  %499 = getelementptr inbounds i8, ptr %414, i64 40
  %500 = load ptr, ptr %499, align 8, !tbaa !6
  store i16 %498, ptr %500, align 2, !tbaa !25
  %501 = getelementptr inbounds i8, ptr %492, i64 2
  %502 = load i16, ptr %501, align 2, !tbaa !25
  %503 = getelementptr inbounds i8, ptr %495, i64 2
  store i16 %502, ptr %503, align 2, !tbaa !25
  %504 = getelementptr inbounds i8, ptr %497, i64 2
  %505 = load i16, ptr %504, align 2, !tbaa !25
  %506 = getelementptr inbounds i8, ptr %500, i64 2
  store i16 %505, ptr %506, align 2, !tbaa !25
  %507 = getelementptr inbounds i8, ptr %408, i64 48
  %508 = load ptr, ptr %507, align 8, !tbaa !6
  %509 = load i16, ptr %508, align 2, !tbaa !25
  %510 = getelementptr inbounds i8, ptr %410, i64 48
  %511 = load ptr, ptr %510, align 8, !tbaa !6
  store i16 %509, ptr %511, align 2, !tbaa !25
  %512 = getelementptr inbounds i8, ptr %412, i64 48
  %513 = load ptr, ptr %512, align 8, !tbaa !6
  %514 = load i16, ptr %513, align 2, !tbaa !25
  %515 = getelementptr inbounds i8, ptr %414, i64 48
  %516 = load ptr, ptr %515, align 8, !tbaa !6
  store i16 %514, ptr %516, align 2, !tbaa !25
  %517 = getelementptr inbounds i8, ptr %508, i64 2
  %518 = load i16, ptr %517, align 2, !tbaa !25
  %519 = getelementptr inbounds i8, ptr %511, i64 2
  store i16 %518, ptr %519, align 2, !tbaa !25
  %520 = getelementptr inbounds i8, ptr %513, i64 2
  %521 = load i16, ptr %520, align 2, !tbaa !25
  %522 = getelementptr inbounds i8, ptr %516, i64 2
  store i16 %521, ptr %522, align 2, !tbaa !25
  %523 = getelementptr inbounds i8, ptr %408, i64 56
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = load i16, ptr %524, align 2, !tbaa !25
  %526 = getelementptr inbounds i8, ptr %410, i64 56
  %527 = load ptr, ptr %526, align 8, !tbaa !6
  store i16 %525, ptr %527, align 2, !tbaa !25
  %528 = getelementptr inbounds i8, ptr %412, i64 56
  %529 = load ptr, ptr %528, align 8, !tbaa !6
  %530 = load i16, ptr %529, align 2, !tbaa !25
  %531 = getelementptr inbounds i8, ptr %414, i64 56
  %532 = load ptr, ptr %531, align 8, !tbaa !6
  store i16 %530, ptr %532, align 2, !tbaa !25
  %533 = getelementptr inbounds i8, ptr %524, i64 2
  %534 = load i16, ptr %533, align 2, !tbaa !25
  %535 = getelementptr inbounds i8, ptr %527, i64 2
  store i16 %534, ptr %535, align 2, !tbaa !25
  %536 = getelementptr inbounds i8, ptr %529, i64 2
  %537 = load i16, ptr %536, align 2, !tbaa !25
  %538 = getelementptr inbounds i8, ptr %532, i64 2
  store i16 %537, ptr %538, align 2, !tbaa !25
  %539 = getelementptr inbounds i8, ptr %408, i64 64
  %540 = load ptr, ptr %539, align 8, !tbaa !6
  %541 = load i16, ptr %540, align 2, !tbaa !25
  %542 = getelementptr inbounds i8, ptr %410, i64 64
  %543 = load ptr, ptr %542, align 8, !tbaa !6
  store i16 %541, ptr %543, align 2, !tbaa !25
  %544 = getelementptr inbounds i8, ptr %412, i64 64
  %545 = load ptr, ptr %544, align 8, !tbaa !6
  %546 = load i16, ptr %545, align 2, !tbaa !25
  %547 = getelementptr inbounds i8, ptr %414, i64 64
  %548 = load ptr, ptr %547, align 8, !tbaa !6
  store i16 %546, ptr %548, align 2, !tbaa !25
  %549 = getelementptr inbounds i8, ptr %540, i64 2
  %550 = load i16, ptr %549, align 2, !tbaa !25
  %551 = getelementptr inbounds i8, ptr %543, i64 2
  store i16 %550, ptr %551, align 2, !tbaa !25
  %552 = getelementptr inbounds i8, ptr %545, i64 2
  %553 = load i16, ptr %552, align 2, !tbaa !25
  %554 = getelementptr inbounds i8, ptr %548, i64 2
  store i16 %553, ptr %554, align 2, !tbaa !25
  %555 = add nuw nsw i64 %406, 1
  %556 = icmp eq i64 %555, %367
  br i1 %556, label %557, label %405

557:                                              ; preds = %405, %377
  br i1 %378, label %377, label %558

558:                                              ; preds = %557
  %559 = add nuw nsw i64 %371, 1
  %560 = icmp eq i64 %559, 4
  br i1 %560, label %561, label %370

561:                                              ; preds = %558
  %562 = add nuw nsw i64 %369, 1
  %563 = icmp eq i64 %562, 4
  br i1 %563, label %564, label %368

564:                                              ; preds = %561, %357
  ret void
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @RDCost_for_macroblocks(double noundef %0, i32 noundef signext %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %4, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !38
  %11 = load ptr, ptr @img, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %13) #15
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 31576
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds i8, ptr %15, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !33
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %20
  %22 = icmp sgt i32 %14, -1
  %23 = zext nneg i32 %14 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %23
  %25 = select i1 %22, ptr %24, ptr null
  %26 = getelementptr inbounds i8, ptr %15, i64 24
  %27 = load i32, ptr %26, align 8, !tbaa !14
  %28 = icmp eq i32 %27, 1
  %29 = icmp eq i32 %27, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  tail call void @SetModesAndRefframeForBlocks(i32 noundef signext %1)
  %31 = icmp eq i32 %1, 0
  %32 = load ptr, ptr @img, align 8, !tbaa !6
  br label %128

33:                                               ; preds = %5
  %34 = load ptr, ptr @input, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %34, i64 2984
  %36 = load i32, ptr %35, align 8, !tbaa !45
  %37 = icmp ne i32 %36, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  tail call void @SetModesAndRefframeForBlocks(i32 noundef signext %1)
  %38 = icmp eq i32 %1, 0
  %39 = and i1 %38, %28
  %40 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %39, label %41, label %128

41:                                               ; preds = %33
  %42 = getelementptr inbounds i8, ptr %40, i64 152
  %43 = load i32, ptr %42, align 8, !tbaa !26
  %44 = ashr i32 %43, 2
  %45 = getelementptr inbounds i8, ptr %40, i64 156
  %46 = load i32, ptr %45, align 4, !tbaa !27
  %47 = ashr i32 %46, 2
  %48 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %49 = sext i32 %44 to i64
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i16, ptr %52, i64 %49
  %54 = load i16, ptr %53, align 2, !tbaa !25
  %55 = icmp slt i16 %54, 0
  br i1 %55, label %1400, label %56

56:                                               ; preds = %41
  %57 = add nsw i64 %49, 1
  %58 = getelementptr inbounds i16, ptr %52, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !25
  %60 = icmp slt i16 %59, 0
  br i1 %60, label %1400, label %61

61:                                               ; preds = %56
  %62 = add nsw i64 %49, 2
  %63 = getelementptr inbounds i16, ptr %52, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !25
  %65 = icmp slt i16 %64, 0
  br i1 %65, label %1400, label %66

66:                                               ; preds = %61
  %67 = add nsw i64 %49, 3
  %68 = getelementptr inbounds i16, ptr %52, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !25
  %70 = icmp slt i16 %69, 0
  br i1 %70, label %1400, label %71

71:                                               ; preds = %66
  %72 = getelementptr ptr, ptr %48, i64 %50
  %73 = getelementptr i8, ptr %72, i64 8
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i16, ptr %74, i64 %49
  %76 = load i16, ptr %75, align 2, !tbaa !25
  %77 = icmp slt i16 %76, 0
  br i1 %77, label %1400, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds i16, ptr %74, i64 %57
  %80 = load i16, ptr %79, align 2, !tbaa !25
  %81 = icmp slt i16 %80, 0
  br i1 %81, label %1400, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i16, ptr %74, i64 %62
  %84 = load i16, ptr %83, align 2, !tbaa !25
  %85 = icmp slt i16 %84, 0
  br i1 %85, label %1400, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds i16, ptr %74, i64 %67
  %88 = load i16, ptr %87, align 2, !tbaa !25
  %89 = icmp slt i16 %88, 0
  br i1 %89, label %1400, label %90

90:                                               ; preds = %86
  %91 = getelementptr ptr, ptr %48, i64 %50
  %92 = getelementptr i8, ptr %91, i64 16
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = getelementptr inbounds i16, ptr %93, i64 %49
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = icmp slt i16 %95, 0
  br i1 %96, label %1400, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds i16, ptr %93, i64 %57
  %99 = load i16, ptr %98, align 2, !tbaa !25
  %100 = icmp slt i16 %99, 0
  br i1 %100, label %1400, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i16, ptr %93, i64 %62
  %103 = load i16, ptr %102, align 2, !tbaa !25
  %104 = icmp slt i16 %103, 0
  br i1 %104, label %1400, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds i16, ptr %93, i64 %67
  %107 = load i16, ptr %106, align 2, !tbaa !25
  %108 = icmp slt i16 %107, 0
  br i1 %108, label %1400, label %109

109:                                              ; preds = %105
  %110 = getelementptr ptr, ptr %48, i64 %50
  %111 = getelementptr i8, ptr %110, i64 24
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds i16, ptr %112, i64 %49
  %114 = load i16, ptr %113, align 2, !tbaa !25
  %115 = icmp slt i16 %114, 0
  br i1 %115, label %1400, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds i16, ptr %112, i64 %57
  %118 = load i16, ptr %117, align 2, !tbaa !25
  %119 = icmp slt i16 %118, 0
  br i1 %119, label %1400, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds i16, ptr %112, i64 %62
  %122 = load i16, ptr %121, align 2, !tbaa !25
  %123 = icmp slt i16 %122, 0
  br i1 %123, label %1400, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds i16, ptr %112, i64 %67
  %126 = load i16, ptr %125, align 2, !tbaa !25
  %127 = icmp slt i16 %126, 0
  br i1 %127, label %1400, label %128

128:                                              ; preds = %124, %30, %33
  %129 = phi ptr [ %32, %30 ], [ %40, %33 ], [ %40, %124 ]
  %130 = phi i1 [ %31, %30 ], [ %38, %33 ], [ true, %124 ]
  %131 = phi i1 [ false, %30 ], [ %37, %33 ], [ %37, %124 ]
  %132 = getelementptr inbounds i8, ptr %129, i64 90220
  %133 = load i32, ptr %132, align 4, !tbaa !102
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %170, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds i8, ptr %21, i64 424
  %137 = load i32, ptr %136, align 8, !tbaa !107
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %135
  %140 = getelementptr inbounds i8, ptr %129, i64 24
  %141 = load i32, ptr %140, align 8, !tbaa !14
  %142 = or i32 %141, %1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %139
  %145 = getelementptr inbounds i8, ptr %129, i64 89336
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = load i16, ptr %151, align 2, !tbaa !25
  %153 = add i16 %152, -8192
  %154 = icmp ult i16 %153, -16384
  br i1 %154, label %1400, label %155

155:                                              ; preds = %144
  %156 = getelementptr inbounds i8, ptr %151, i64 2
  %157 = load i16, ptr %156, align 2, !tbaa !25
  %158 = sext i16 %157 to i32
  %159 = getelementptr inbounds i8, ptr %129, i64 8
  %160 = load i32, ptr %159, align 8, !tbaa !108
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %161
  %163 = getelementptr inbounds i8, ptr %162, i64 16
  %164 = load i32, ptr %163, align 4, !tbaa !38
  %165 = icmp sgt i32 %164, %158
  br i1 %165, label %1400, label %166

166:                                              ; preds = %155
  %167 = getelementptr inbounds i8, ptr %162, i64 20
  %168 = load i32, ptr %167, align 4, !tbaa !38
  %169 = icmp slt i32 %168, %158
  br i1 %169, label %1400, label %170

170:                                              ; preds = %166, %139, %135, %128
  %171 = getelementptr inbounds i8, ptr %129, i64 90212
  %172 = load i32, ptr %171, align 4, !tbaa !79
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %170, %174
  %175 = phi i64 [ %188, %174 ], [ 0, %170 ]
  %176 = load ptr, ptr @img, align 8, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %176, i64 14152
  %178 = getelementptr inbounds [16 x [16 x i32]], ptr %177, i64 0, i64 %175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %178, i8 0, i64 64, i1 false)
  %179 = load ptr, ptr @img, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 18248
  %181 = getelementptr inbounds [16 x [16 x i32]], ptr %180, i64 0, i64 %175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %181, i8 0, i64 64, i1 false)
  %182 = load ptr, ptr @img, align 8, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %182, i64 21320
  %184 = getelementptr inbounds [16 x [16 x i32]], ptr %183, i64 0, i64 %175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %184, i8 0, i64 64, i1 false)
  %185 = load ptr, ptr @img, align 8, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %185, i64 22344
  %187 = getelementptr inbounds [16 x [16 x i32]], ptr %186, i64 0, i64 %175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %187, i8 0, i64 64, i1 false)
  %188 = add nuw nsw i64 %175, 1
  %189 = icmp eq i64 %188, 16
  br i1 %189, label %190, label %174

190:                                              ; preds = %174, %170
  %191 = icmp slt i32 %1, 8
  br i1 %191, label %192, label %210

192:                                              ; preds = %190
  tail call void @LumaResidualCoding() #15
  br i1 %130, label %193, label %579

193:                                              ; preds = %192
  %194 = getelementptr inbounds i8, ptr %21, i64 364
  %195 = load i32, ptr %194, align 4, !tbaa !93
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr @img, align 8, !tbaa !6
  %199 = getelementptr inbounds i8, ptr %198, i64 24
  %200 = load i32, ptr %199, align 8, !tbaa !14
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %1400

202:                                              ; preds = %197
  %203 = getelementptr inbounds i8, ptr %198, i64 90208
  %204 = load i32, ptr %203, align 8, !tbaa !109
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %1400, label %579

206:                                              ; preds = %193
  %207 = getelementptr inbounds i8, ptr %21, i64 468
  %208 = load i32, ptr %207, align 4, !tbaa !89
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %1400, label %579

210:                                              ; preds = %190
  switch i32 %1, label %579 [
    i32 8, label %243
    i32 9, label %244
    i32 10, label %353
    i32 13, label %354
    i32 14, label %211
  ]

211:                                              ; preds = %210
  %212 = load ptr, ptr @img, align 8, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %212, i64 172
  %214 = load i32, ptr %213, align 4, !tbaa !28
  %215 = getelementptr inbounds i8, ptr %212, i64 156
  %216 = load i32, ptr %215, align 4, !tbaa !27
  %217 = getelementptr inbounds i8, ptr %212, i64 168
  %218 = load i32, ptr %217, align 8, !tbaa !60
  %219 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %220 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %221 = getelementptr inbounds i8, ptr %220, i64 6424
  %222 = load ptr, ptr %221, align 8, !tbaa !29
  %223 = sext i32 %218 to i64
  %224 = sext i32 %214 to i64
  %225 = sext i32 %216 to i64
  %226 = getelementptr ptr, ptr %219, i64 %224
  %227 = getelementptr ptr, ptr %222, i64 %225
  %228 = add nsw i64 %223, 1
  %229 = add nsw i64 %223, 2
  %230 = add nsw i64 %223, 3
  %231 = add nsw i64 %223, 4
  %232 = add nsw i64 %223, 5
  %233 = add nsw i64 %223, 6
  %234 = add nsw i64 %223, 7
  %235 = add nsw i64 %223, 8
  %236 = add nsw i64 %223, 9
  %237 = add nsw i64 %223, 10
  %238 = add nsw i64 %223, 11
  %239 = add nsw i64 %223, 12
  %240 = add nsw i64 %223, 13
  %241 = add nsw i64 %223, 14
  %242 = add nsw i64 %223, 15
  br label %463

243:                                              ; preds = %210
  tail call void @SetCoeffAndReconstruction8x8(ptr noundef %21)
  br label %579

244:                                              ; preds = %210
  %245 = call signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %0, ptr noundef nonnull %10)
  %246 = getelementptr inbounds i8, ptr %21, i64 364
  store i32 %245, ptr %246, align 4, !tbaa !93
  %247 = load ptr, ptr @img, align 8, !tbaa !6
  %248 = getelementptr inbounds i8, ptr %247, i64 90572
  %249 = load i32, ptr %248, align 4, !tbaa !39
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %579, label %251

251:                                              ; preds = %244
  %252 = load i32, ptr @cbp_chroma_block, align 4, !tbaa !38
  %253 = icmp eq i32 %252, 0
  %254 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 4), align 4, !tbaa !38
  %255 = icmp eq i32 %254, 0
  %256 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 8), align 4, !tbaa !38
  %257 = icmp eq i32 %256, 0
  %258 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 12), align 4, !tbaa !38
  %259 = icmp eq i32 %258, 0
  %260 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 16), align 4, !tbaa !38
  %261 = icmp eq i32 %260, 0
  %262 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 20), align 4, !tbaa !38
  %263 = icmp eq i32 %262, 0
  %264 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 24), align 4, !tbaa !38
  %265 = icmp eq i32 %264, 0
  %266 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 28), align 4, !tbaa !38
  %267 = icmp eq i32 %266, 0
  %268 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 32), align 4, !tbaa !38
  %269 = icmp eq i32 %268, 0
  %270 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 36), align 4, !tbaa !38
  %271 = icmp eq i32 %270, 0
  %272 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 40), align 4, !tbaa !38
  %273 = icmp eq i32 %272, 0
  %274 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 44), align 4, !tbaa !38
  %275 = icmp eq i32 %274, 0
  %276 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 48), align 4, !tbaa !38
  %277 = icmp eq i32 %276, 0
  %278 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 52), align 4, !tbaa !38
  %279 = icmp eq i32 %278, 0
  %280 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 56), align 4, !tbaa !38
  %281 = icmp eq i32 %280, 0
  %282 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 60), align 4, !tbaa !38
  %283 = icmp eq i32 %282, 0
  %284 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), align 4, !tbaa !38
  %285 = icmp eq i32 %284, 0
  %286 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 68), align 4, !tbaa !38
  %287 = icmp eq i32 %286, 0
  %288 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 72), align 4, !tbaa !38
  %289 = icmp eq i32 %288, 0
  %290 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 76), align 4, !tbaa !38
  %291 = icmp eq i32 %290, 0
  %292 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 80), align 4, !tbaa !38
  %293 = icmp eq i32 %292, 0
  %294 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 84), align 4, !tbaa !38
  %295 = icmp eq i32 %294, 0
  %296 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 88), align 4, !tbaa !38
  %297 = icmp eq i32 %296, 0
  %298 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 92), align 4, !tbaa !38
  %299 = icmp eq i32 %298, 0
  %300 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 96), align 4, !tbaa !38
  %301 = icmp eq i32 %300, 0
  %302 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 100), align 4, !tbaa !38
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 104), align 4, !tbaa !38
  %305 = icmp eq i32 %304, 0
  %306 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 108), align 4, !tbaa !38
  %307 = icmp eq i32 %306, 0
  %308 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 112), align 4, !tbaa !38
  %309 = icmp eq i32 %308, 0
  %310 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 116), align 4, !tbaa !38
  %311 = icmp eq i32 %310, 0
  %312 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 120), align 4, !tbaa !38
  %313 = icmp eq i32 %312, 0
  %314 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 124), align 4, !tbaa !38
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %315, i1 %313, i1 false
  %317 = select i1 %316, i1 %311, i1 false
  %318 = select i1 %317, i1 %309, i1 false
  %319 = select i1 %318, i1 %307, i1 false
  %320 = select i1 %319, i1 %305, i1 false
  %321 = select i1 %320, i1 %303, i1 false
  %322 = select i1 %321, i1 %301, i1 false
  %323 = select i1 %322, i1 %299, i1 false
  %324 = select i1 %323, i1 %297, i1 false
  %325 = select i1 %324, i1 %295, i1 false
  %326 = select i1 %325, i1 %293, i1 false
  %327 = select i1 %326, i1 %291, i1 false
  %328 = select i1 %327, i1 %289, i1 false
  %329 = select i1 %328, i1 %287, i1 false
  %330 = select i1 %329, i1 %285, i1 false
  %331 = select i1 %330, i1 %283, i1 false
  %332 = select i1 %331, i1 %281, i1 false
  %333 = select i1 %332, i1 %279, i1 false
  %334 = select i1 %333, i1 %277, i1 false
  %335 = select i1 %334, i1 %275, i1 false
  %336 = select i1 %335, i1 %273, i1 false
  %337 = select i1 %336, i1 %271, i1 false
  %338 = select i1 %337, i1 %269, i1 false
  %339 = select i1 %338, i1 %267, i1 false
  %340 = select i1 %339, i1 %265, i1 false
  %341 = select i1 %340, i1 %263, i1 false
  %342 = select i1 %341, i1 %261, i1 false
  %343 = select i1 %342, i1 %259, i1 false
  %344 = select i1 %343, i1 %257, i1 false
  %345 = select i1 %344, i1 %255, i1 false
  %346 = select i1 %345, i1 %253, i1 false
  %347 = select i1 %346, i32 0, i32 2
  %348 = tail call signext i32 @dct_chroma_DC(i32 noundef signext 0, i32 noundef signext %347) #15
  %349 = tail call signext i32 @dct_chroma_DC(i32 noundef signext 1, i32 noundef signext %348) #15
  %350 = shl i32 %349, 4
  %351 = load i32, ptr %246, align 4, !tbaa !93
  %352 = add nsw i32 %351, %350
  store i32 %352, ptr %246, align 4, !tbaa !93
  br label %579

353:                                              ; preds = %210
  call void @Intra16x16_Mode_Decision(ptr noundef %21, ptr noundef nonnull %6)
  br label %579

354:                                              ; preds = %210
  %355 = call signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef %0, ptr noundef nonnull %10) #15
  %356 = getelementptr inbounds i8, ptr %21, i64 364
  store i32 %355, ptr %356, align 4, !tbaa !93
  %357 = load ptr, ptr @img, align 8, !tbaa !6
  %358 = getelementptr inbounds i8, ptr %357, i64 90572
  %359 = load i32, ptr %358, align 4, !tbaa !39
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %579, label %361

361:                                              ; preds = %354
  %362 = load i32, ptr @cbp_chroma_block, align 4, !tbaa !38
  %363 = icmp eq i32 %362, 0
  %364 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 4), align 4, !tbaa !38
  %365 = icmp eq i32 %364, 0
  %366 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 8), align 4, !tbaa !38
  %367 = icmp eq i32 %366, 0
  %368 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 12), align 4, !tbaa !38
  %369 = icmp eq i32 %368, 0
  %370 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 16), align 4, !tbaa !38
  %371 = icmp eq i32 %370, 0
  %372 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 20), align 4, !tbaa !38
  %373 = icmp eq i32 %372, 0
  %374 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 24), align 4, !tbaa !38
  %375 = icmp eq i32 %374, 0
  %376 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 28), align 4, !tbaa !38
  %377 = icmp eq i32 %376, 0
  %378 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 32), align 4, !tbaa !38
  %379 = icmp eq i32 %378, 0
  %380 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 36), align 4, !tbaa !38
  %381 = icmp eq i32 %380, 0
  %382 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 40), align 4, !tbaa !38
  %383 = icmp eq i32 %382, 0
  %384 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 44), align 4, !tbaa !38
  %385 = icmp eq i32 %384, 0
  %386 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 48), align 4, !tbaa !38
  %387 = icmp eq i32 %386, 0
  %388 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 52), align 4, !tbaa !38
  %389 = icmp eq i32 %388, 0
  %390 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 56), align 4, !tbaa !38
  %391 = icmp eq i32 %390, 0
  %392 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 60), align 4, !tbaa !38
  %393 = icmp eq i32 %392, 0
  %394 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), align 4, !tbaa !38
  %395 = icmp eq i32 %394, 0
  %396 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 68), align 4, !tbaa !38
  %397 = icmp eq i32 %396, 0
  %398 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 72), align 4, !tbaa !38
  %399 = icmp eq i32 %398, 0
  %400 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 76), align 4, !tbaa !38
  %401 = icmp eq i32 %400, 0
  %402 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 80), align 4, !tbaa !38
  %403 = icmp eq i32 %402, 0
  %404 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 84), align 4, !tbaa !38
  %405 = icmp eq i32 %404, 0
  %406 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 88), align 4, !tbaa !38
  %407 = icmp eq i32 %406, 0
  %408 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 92), align 4, !tbaa !38
  %409 = icmp eq i32 %408, 0
  %410 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 96), align 4, !tbaa !38
  %411 = icmp eq i32 %410, 0
  %412 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 100), align 4, !tbaa !38
  %413 = icmp eq i32 %412, 0
  %414 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 104), align 4, !tbaa !38
  %415 = icmp eq i32 %414, 0
  %416 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 108), align 4, !tbaa !38
  %417 = icmp eq i32 %416, 0
  %418 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 112), align 4, !tbaa !38
  %419 = icmp eq i32 %418, 0
  %420 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 116), align 4, !tbaa !38
  %421 = icmp eq i32 %420, 0
  %422 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 120), align 4, !tbaa !38
  %423 = icmp eq i32 %422, 0
  %424 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 124), align 4, !tbaa !38
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i1 %423, i1 false
  %427 = select i1 %426, i1 %421, i1 false
  %428 = select i1 %427, i1 %419, i1 false
  %429 = select i1 %428, i1 %417, i1 false
  %430 = select i1 %429, i1 %415, i1 false
  %431 = select i1 %430, i1 %413, i1 false
  %432 = select i1 %431, i1 %411, i1 false
  %433 = select i1 %432, i1 %409, i1 false
  %434 = select i1 %433, i1 %407, i1 false
  %435 = select i1 %434, i1 %405, i1 false
  %436 = select i1 %435, i1 %403, i1 false
  %437 = select i1 %436, i1 %401, i1 false
  %438 = select i1 %437, i1 %399, i1 false
  %439 = select i1 %438, i1 %397, i1 false
  %440 = select i1 %439, i1 %395, i1 false
  %441 = select i1 %440, i1 %393, i1 false
  %442 = select i1 %441, i1 %391, i1 false
  %443 = select i1 %442, i1 %389, i1 false
  %444 = select i1 %443, i1 %387, i1 false
  %445 = select i1 %444, i1 %385, i1 false
  %446 = select i1 %445, i1 %383, i1 false
  %447 = select i1 %446, i1 %381, i1 false
  %448 = select i1 %447, i1 %379, i1 false
  %449 = select i1 %448, i1 %377, i1 false
  %450 = select i1 %449, i1 %375, i1 false
  %451 = select i1 %450, i1 %373, i1 false
  %452 = select i1 %451, i1 %371, i1 false
  %453 = select i1 %452, i1 %369, i1 false
  %454 = select i1 %453, i1 %367, i1 false
  %455 = select i1 %454, i1 %365, i1 false
  %456 = select i1 %455, i1 %363, i1 false
  %457 = select i1 %456, i32 0, i32 2
  %458 = call signext i32 @dct_chroma_DC(i32 noundef signext 0, i32 noundef signext %457) #15
  %459 = call signext i32 @dct_chroma_DC(i32 noundef signext 1, i32 noundef signext %458) #15
  %460 = shl i32 %459, 4
  %461 = load i32, ptr %356, align 4, !tbaa !93
  %462 = add nsw i32 %461, %460
  store i32 %462, ptr %356, align 4, !tbaa !93
  br label %579

463:                                              ; preds = %211, %463
  %464 = phi i64 [ 0, %211 ], [ %517, %463 ]
  %465 = getelementptr ptr, ptr %227, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr ptr, ptr %226, i64 %464
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  %469 = getelementptr inbounds i16, ptr %468, i64 %223
  %470 = load i16, ptr %469, align 2, !tbaa !25
  %471 = getelementptr inbounds i16, ptr %466, i64 %223
  store i16 %470, ptr %471, align 2, !tbaa !25
  %472 = getelementptr inbounds i16, ptr %468, i64 %228
  %473 = load i16, ptr %472, align 2, !tbaa !25
  %474 = getelementptr inbounds i16, ptr %466, i64 %228
  store i16 %473, ptr %474, align 2, !tbaa !25
  %475 = getelementptr inbounds i16, ptr %468, i64 %229
  %476 = load i16, ptr %475, align 2, !tbaa !25
  %477 = getelementptr inbounds i16, ptr %466, i64 %229
  store i16 %476, ptr %477, align 2, !tbaa !25
  %478 = getelementptr inbounds i16, ptr %468, i64 %230
  %479 = load i16, ptr %478, align 2, !tbaa !25
  %480 = getelementptr inbounds i16, ptr %466, i64 %230
  store i16 %479, ptr %480, align 2, !tbaa !25
  %481 = getelementptr inbounds i16, ptr %468, i64 %231
  %482 = load i16, ptr %481, align 2, !tbaa !25
  %483 = getelementptr inbounds i16, ptr %466, i64 %231
  store i16 %482, ptr %483, align 2, !tbaa !25
  %484 = getelementptr inbounds i16, ptr %468, i64 %232
  %485 = load i16, ptr %484, align 2, !tbaa !25
  %486 = getelementptr inbounds i16, ptr %466, i64 %232
  store i16 %485, ptr %486, align 2, !tbaa !25
  %487 = getelementptr inbounds i16, ptr %468, i64 %233
  %488 = load i16, ptr %487, align 2, !tbaa !25
  %489 = getelementptr inbounds i16, ptr %466, i64 %233
  store i16 %488, ptr %489, align 2, !tbaa !25
  %490 = getelementptr inbounds i16, ptr %468, i64 %234
  %491 = load i16, ptr %490, align 2, !tbaa !25
  %492 = getelementptr inbounds i16, ptr %466, i64 %234
  store i16 %491, ptr %492, align 2, !tbaa !25
  %493 = getelementptr inbounds i16, ptr %468, i64 %235
  %494 = load i16, ptr %493, align 2, !tbaa !25
  %495 = getelementptr inbounds i16, ptr %466, i64 %235
  store i16 %494, ptr %495, align 2, !tbaa !25
  %496 = getelementptr inbounds i16, ptr %468, i64 %236
  %497 = load i16, ptr %496, align 2, !tbaa !25
  %498 = getelementptr inbounds i16, ptr %466, i64 %236
  store i16 %497, ptr %498, align 2, !tbaa !25
  %499 = getelementptr inbounds i16, ptr %468, i64 %237
  %500 = load i16, ptr %499, align 2, !tbaa !25
  %501 = getelementptr inbounds i16, ptr %466, i64 %237
  store i16 %500, ptr %501, align 2, !tbaa !25
  %502 = getelementptr inbounds i16, ptr %468, i64 %238
  %503 = load i16, ptr %502, align 2, !tbaa !25
  %504 = getelementptr inbounds i16, ptr %466, i64 %238
  store i16 %503, ptr %504, align 2, !tbaa !25
  %505 = getelementptr inbounds i16, ptr %468, i64 %239
  %506 = load i16, ptr %505, align 2, !tbaa !25
  %507 = getelementptr inbounds i16, ptr %466, i64 %239
  store i16 %506, ptr %507, align 2, !tbaa !25
  %508 = getelementptr inbounds i16, ptr %468, i64 %240
  %509 = load i16, ptr %508, align 2, !tbaa !25
  %510 = getelementptr inbounds i16, ptr %466, i64 %240
  store i16 %509, ptr %510, align 2, !tbaa !25
  %511 = getelementptr inbounds i16, ptr %468, i64 %241
  %512 = load i16, ptr %511, align 2, !tbaa !25
  %513 = getelementptr inbounds i16, ptr %466, i64 %241
  store i16 %512, ptr %513, align 2, !tbaa !25
  %514 = getelementptr inbounds i16, ptr %468, i64 %242
  %515 = load i16, ptr %514, align 2, !tbaa !25
  %516 = getelementptr inbounds i16, ptr %466, i64 %242
  store i16 %515, ptr %516, align 2, !tbaa !25
  %517 = add nuw nsw i64 %464, 1
  %518 = icmp eq i64 %517, 16
  br i1 %518, label %519, label %463

519:                                              ; preds = %463
  %520 = getelementptr inbounds i8, ptr %212, i64 90548
  %521 = load i32, ptr %520, align 4, !tbaa !110
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %579, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds i8, ptr %212, i64 90560
  %525 = load i32, ptr %524, align 8, !tbaa !111
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %579

527:                                              ; preds = %523
  %528 = getelementptr inbounds i8, ptr %212, i64 180
  %529 = load i32, ptr %528, align 4, !tbaa !112
  %530 = getelementptr inbounds i8, ptr %212, i64 164
  %531 = load i32, ptr %530, align 4, !tbaa !113
  %532 = getelementptr inbounds i8, ptr %212, i64 176
  %533 = load i32, ptr %532, align 8, !tbaa !114
  %534 = getelementptr inbounds i8, ptr %212, i64 90556
  %535 = load i32, ptr %534, align 4, !tbaa !115
  %536 = add nsw i32 %535, %533
  %537 = icmp sgt i32 %535, 0
  %538 = load ptr, ptr @imgUV_org, align 8
  %539 = load ptr, ptr @enc_picture, align 8
  %540 = getelementptr inbounds i8, ptr %539, i64 6464
  %541 = getelementptr inbounds i8, ptr %538, i64 8
  %542 = sext i32 %533 to i64
  %543 = sext i32 %536 to i64
  %544 = sext i32 %529 to i64
  %545 = sext i32 %531 to i64
  %546 = zext nneg i32 %525 to i64
  br label %547

547:                                              ; preds = %527, %576
  %548 = phi i64 [ 0, %527 ], [ %577, %576 ]
  br i1 %537, label %549, label %576

549:                                              ; preds = %547
  %550 = add nsw i64 %548, %545
  %551 = add nsw i64 %548, %544
  %552 = load ptr, ptr %538, align 8, !tbaa !6
  %553 = getelementptr inbounds ptr, ptr %552, i64 %551
  %554 = load ptr, ptr %553, align 8, !tbaa !6
  %555 = load ptr, ptr %540, align 8, !tbaa !81
  %556 = load ptr, ptr %555, align 8, !tbaa !6
  %557 = getelementptr inbounds ptr, ptr %556, i64 %550
  %558 = load ptr, ptr %557, align 8, !tbaa !6
  %559 = load ptr, ptr %541, align 8, !tbaa !6
  %560 = getelementptr inbounds ptr, ptr %559, i64 %551
  %561 = load ptr, ptr %560, align 8, !tbaa !6
  %562 = getelementptr inbounds i8, ptr %555, i64 8
  %563 = load ptr, ptr %562, align 8, !tbaa !6
  %564 = getelementptr inbounds ptr, ptr %563, i64 %550
  %565 = load ptr, ptr %564, align 8, !tbaa !6
  br label %566

566:                                              ; preds = %549, %566
  %567 = phi i64 [ %542, %549 ], [ %574, %566 ]
  %568 = getelementptr inbounds i16, ptr %554, i64 %567
  %569 = load i16, ptr %568, align 2, !tbaa !25
  %570 = getelementptr inbounds i16, ptr %558, i64 %567
  store i16 %569, ptr %570, align 2, !tbaa !25
  %571 = getelementptr inbounds i16, ptr %561, i64 %567
  %572 = load i16, ptr %571, align 2, !tbaa !25
  %573 = getelementptr inbounds i16, ptr %565, i64 %567
  store i16 %572, ptr %573, align 2, !tbaa !25
  %574 = add nsw i64 %567, 1
  %575 = icmp slt i64 %574, %543
  br i1 %575, label %566, label %576

576:                                              ; preds = %566, %547
  %577 = add nuw nsw i64 %548, 1
  %578 = icmp eq i64 %577, %546
  br i1 %578, label %579, label %547

579:                                              ; preds = %576, %523, %202, %192, %210, %243, %353, %519, %354, %361, %244, %251, %206
  %580 = load ptr, ptr @input, align 8, !tbaa !6
  %581 = getelementptr inbounds i8, ptr %580, i64 3136
  %582 = load i32, ptr %581, align 8, !tbaa !75
  %583 = icmp eq i32 %582, 3
  br i1 %583, label %584, label %594

584:                                              ; preds = %579
  %585 = load ptr, ptr @img, align 8, !tbaa !6
  %586 = getelementptr inbounds i8, ptr %585, i64 24
  %587 = load i32, ptr %586, align 8, !tbaa !14
  %588 = icmp eq i32 %587, 1
  br i1 %588, label %594, label %589

589:                                              ; preds = %584
  %590 = icmp eq i32 %1, 10
  %591 = load i32, ptr %6, align 4
  %592 = select i1 %590, i32 %591, i32 -1
  call void @compute_residue_mb(i32 noundef signext %592) #15
  %593 = load ptr, ptr @input, align 8, !tbaa !6
  br label %594

594:                                              ; preds = %589, %584, %579
  %595 = phi ptr [ %593, %589 ], [ %580, %584 ], [ %580, %579 ]
  %596 = getelementptr inbounds i8, ptr %595, i64 3908
  %597 = load i32, ptr %596, align 4, !tbaa !116
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %594
  %600 = load ptr, ptr @img, align 8, !tbaa !6
  br label %611

601:                                              ; preds = %594
  %602 = icmp eq i32 %1, 10
  %603 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %602, label %604, label %609

604:                                              ; preds = %601
  %605 = getelementptr inbounds i8, ptr %603, i64 4792
  %606 = load i32, ptr %6, align 4, !tbaa !38
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %605, i64 0, i64 %607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) @pred, ptr noundef nonnull align 8 dereferenceable(512) %608, i64 512, i1 false)
  br label %611

609:                                              ; preds = %601
  %610 = getelementptr inbounds i8, ptr %603, i64 12600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) @pred, ptr noundef nonnull align 8 dereferenceable(512) %610, i64 512, i1 false)
  br label %611

611:                                              ; preds = %599, %604, %609
  %612 = phi ptr [ %600, %599 ], [ %603, %604 ], [ %603, %609 ]
  %613 = getelementptr inbounds i8, ptr %612, i64 90196
  store i32 0, ptr %613, align 4, !tbaa !117
  store i32 0, ptr %10, align 4, !tbaa !38
  %614 = getelementptr inbounds i8, ptr %612, i64 90572
  %615 = load i32, ptr %614, align 4, !tbaa !39
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %618, label %617

617:                                              ; preds = %611
  switch i32 %1, label %618 [
    i32 10, label %627
    i32 9, label %640
    i32 13, label %640
  ]

618:                                              ; preds = %617, %611
  %619 = getelementptr inbounds i8, ptr %612, i64 90548
  %620 = load i32, ptr %619, align 4, !tbaa !110
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %624, label %622

622:                                              ; preds = %618
  call void @ChromaResidualCoding(ptr noundef nonnull %10) #15
  %623 = load ptr, ptr @img, align 8, !tbaa !6
  br label %624

624:                                              ; preds = %622, %618
  %625 = phi ptr [ %623, %622 ], [ %612, %618 ]
  %626 = icmp eq i32 %1, 10
  br i1 %626, label %627, label %640

627:                                              ; preds = %624, %617
  %628 = phi ptr [ %612, %617 ], [ %625, %624 ]
  %629 = getelementptr inbounds i8, ptr %21, i64 364
  %630 = load i32, ptr %629, align 4, !tbaa !93
  %631 = load i32, ptr %6, align 4, !tbaa !38
  %632 = and i32 %630, 15
  %633 = icmp eq i32 %632, 0
  %634 = select i1 %633, i32 1, i32 13
  %635 = lshr i32 %630, 2
  %636 = and i32 %635, 12
  %637 = add i32 %636, %631
  %638 = add i32 %637, %634
  %639 = getelementptr inbounds i8, ptr %628, i64 90196
  store i32 %638, ptr %639, align 4, !tbaa !117
  br label %640

640:                                              ; preds = %617, %617, %627, %624
  %641 = phi ptr [ %612, %617 ], [ %612, %617 ], [ %628, %627 ], [ %625, %624 ]
  %642 = load ptr, ptr @input, align 8, !tbaa !6
  %643 = getelementptr inbounds i8, ptr %642, i64 3136
  %644 = load i32, ptr %643, align 8, !tbaa !75
  %645 = icmp eq i32 %644, 3
  br i1 %645, label %646, label %888

646:                                              ; preds = %640
  %647 = getelementptr inbounds i8, ptr %641, i64 24
  %648 = load i32, ptr %647, align 8, !tbaa !14
  %649 = icmp eq i32 %648, 1
  br i1 %649, label %888, label %650

650:                                              ; preds = %646
  %651 = getelementptr inbounds i8, ptr %642, i64 3576
  %652 = load i32, ptr %651, align 8, !tbaa !84
  %653 = icmp sgt i32 %652, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %650
  %655 = sext i32 %652 to i64
  br label %883

656:                                              ; preds = %650, %876
  %657 = phi i64 [ %877, %876 ], [ 0, %650 ]
  %658 = phi i64 [ %873, %876 ], [ 0, %650 ]
  %659 = trunc nuw nsw i64 %657 to i32
  call void @decode_one_mb(i32 noundef signext %659, ptr noundef %21) #15
  %660 = load ptr, ptr @img, align 8, !tbaa !6
  %661 = getelementptr inbounds i8, ptr %660, i64 168
  %662 = load i32, ptr %661, align 8, !tbaa !60
  %663 = getelementptr inbounds i8, ptr %660, i64 89184
  %664 = load ptr, ptr %663, align 8, !tbaa !40
  %665 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %660, i64 172
  %667 = load i32, ptr %666, align 4, !tbaa !28
  %668 = load ptr, ptr @decs, align 8, !tbaa !6
  %669 = getelementptr inbounds i8, ptr %668, i64 8
  %670 = load ptr, ptr %669, align 8, !tbaa !85
  %671 = getelementptr inbounds ptr, ptr %670, i64 %657
  %672 = load ptr, ptr %671, align 8, !tbaa !6
  %673 = sext i32 %662 to i64
  %674 = sext i32 %667 to i64
  %675 = add nsw i64 %673, 1
  %676 = add nsw i64 %673, 2
  %677 = add nsw i64 %673, 3
  %678 = add nsw i64 %673, 4
  %679 = add nsw i64 %673, 5
  %680 = add nsw i64 %673, 6
  %681 = add nsw i64 %673, 7
  %682 = add nsw i64 %673, 8
  %683 = add nsw i64 %673, 9
  %684 = add nsw i64 %673, 10
  %685 = add nsw i64 %673, 11
  %686 = add nsw i64 %673, 12
  %687 = add nsw i64 %673, 13
  %688 = add nsw i64 %673, 14
  %689 = add nsw i64 %673, 15
  br label %690

690:                                              ; preds = %656, %690
  %691 = phi i64 [ 0, %656 ], [ %874, %690 ]
  %692 = phi i64 [ %658, %656 ], [ %873, %690 ]
  %693 = add nsw i64 %691, %674
  %694 = getelementptr inbounds ptr, ptr %672, i64 %693
  %695 = load ptr, ptr %694, align 8, !tbaa !6
  %696 = getelementptr inbounds ptr, ptr %665, i64 %693
  %697 = load ptr, ptr %696, align 8, !tbaa !6
  %698 = getelementptr inbounds i16, ptr %697, i64 %673
  %699 = load i16, ptr %698, align 2, !tbaa !25
  %700 = zext i16 %699 to i64
  %701 = getelementptr inbounds i16, ptr %695, i64 %673
  %702 = load i16, ptr %701, align 2, !tbaa !25
  %703 = zext i16 %702 to i64
  %704 = sub nsw i64 %700, %703
  %705 = getelementptr inbounds i32, ptr %664, i64 %704
  %706 = load i32, ptr %705, align 4, !tbaa !38
  %707 = sext i32 %706 to i64
  %708 = add nsw i64 %692, %707
  %709 = getelementptr inbounds i16, ptr %697, i64 %675
  %710 = load i16, ptr %709, align 2, !tbaa !25
  %711 = zext i16 %710 to i64
  %712 = getelementptr inbounds i16, ptr %695, i64 %675
  %713 = load i16, ptr %712, align 2, !tbaa !25
  %714 = zext i16 %713 to i64
  %715 = sub nsw i64 %711, %714
  %716 = getelementptr inbounds i32, ptr %664, i64 %715
  %717 = load i32, ptr %716, align 4, !tbaa !38
  %718 = sext i32 %717 to i64
  %719 = add nsw i64 %708, %718
  %720 = getelementptr inbounds i16, ptr %697, i64 %676
  %721 = load i16, ptr %720, align 2, !tbaa !25
  %722 = zext i16 %721 to i64
  %723 = getelementptr inbounds i16, ptr %695, i64 %676
  %724 = load i16, ptr %723, align 2, !tbaa !25
  %725 = zext i16 %724 to i64
  %726 = sub nsw i64 %722, %725
  %727 = getelementptr inbounds i32, ptr %664, i64 %726
  %728 = load i32, ptr %727, align 4, !tbaa !38
  %729 = sext i32 %728 to i64
  %730 = add nsw i64 %719, %729
  %731 = getelementptr inbounds i16, ptr %697, i64 %677
  %732 = load i16, ptr %731, align 2, !tbaa !25
  %733 = zext i16 %732 to i64
  %734 = getelementptr inbounds i16, ptr %695, i64 %677
  %735 = load i16, ptr %734, align 2, !tbaa !25
  %736 = zext i16 %735 to i64
  %737 = sub nsw i64 %733, %736
  %738 = getelementptr inbounds i32, ptr %664, i64 %737
  %739 = load i32, ptr %738, align 4, !tbaa !38
  %740 = sext i32 %739 to i64
  %741 = add nsw i64 %730, %740
  %742 = getelementptr inbounds i16, ptr %697, i64 %678
  %743 = load i16, ptr %742, align 2, !tbaa !25
  %744 = zext i16 %743 to i64
  %745 = getelementptr inbounds i16, ptr %695, i64 %678
  %746 = load i16, ptr %745, align 2, !tbaa !25
  %747 = zext i16 %746 to i64
  %748 = sub nsw i64 %744, %747
  %749 = getelementptr inbounds i32, ptr %664, i64 %748
  %750 = load i32, ptr %749, align 4, !tbaa !38
  %751 = sext i32 %750 to i64
  %752 = add nsw i64 %741, %751
  %753 = getelementptr inbounds i16, ptr %697, i64 %679
  %754 = load i16, ptr %753, align 2, !tbaa !25
  %755 = zext i16 %754 to i64
  %756 = getelementptr inbounds i16, ptr %695, i64 %679
  %757 = load i16, ptr %756, align 2, !tbaa !25
  %758 = zext i16 %757 to i64
  %759 = sub nsw i64 %755, %758
  %760 = getelementptr inbounds i32, ptr %664, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !38
  %762 = sext i32 %761 to i64
  %763 = add nsw i64 %752, %762
  %764 = getelementptr inbounds i16, ptr %697, i64 %680
  %765 = load i16, ptr %764, align 2, !tbaa !25
  %766 = zext i16 %765 to i64
  %767 = getelementptr inbounds i16, ptr %695, i64 %680
  %768 = load i16, ptr %767, align 2, !tbaa !25
  %769 = zext i16 %768 to i64
  %770 = sub nsw i64 %766, %769
  %771 = getelementptr inbounds i32, ptr %664, i64 %770
  %772 = load i32, ptr %771, align 4, !tbaa !38
  %773 = sext i32 %772 to i64
  %774 = add nsw i64 %763, %773
  %775 = getelementptr inbounds i16, ptr %697, i64 %681
  %776 = load i16, ptr %775, align 2, !tbaa !25
  %777 = zext i16 %776 to i64
  %778 = getelementptr inbounds i16, ptr %695, i64 %681
  %779 = load i16, ptr %778, align 2, !tbaa !25
  %780 = zext i16 %779 to i64
  %781 = sub nsw i64 %777, %780
  %782 = getelementptr inbounds i32, ptr %664, i64 %781
  %783 = load i32, ptr %782, align 4, !tbaa !38
  %784 = sext i32 %783 to i64
  %785 = add nsw i64 %774, %784
  %786 = getelementptr inbounds i16, ptr %697, i64 %682
  %787 = load i16, ptr %786, align 2, !tbaa !25
  %788 = zext i16 %787 to i64
  %789 = getelementptr inbounds i16, ptr %695, i64 %682
  %790 = load i16, ptr %789, align 2, !tbaa !25
  %791 = zext i16 %790 to i64
  %792 = sub nsw i64 %788, %791
  %793 = getelementptr inbounds i32, ptr %664, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !38
  %795 = sext i32 %794 to i64
  %796 = add nsw i64 %785, %795
  %797 = getelementptr inbounds i16, ptr %697, i64 %683
  %798 = load i16, ptr %797, align 2, !tbaa !25
  %799 = zext i16 %798 to i64
  %800 = getelementptr inbounds i16, ptr %695, i64 %683
  %801 = load i16, ptr %800, align 2, !tbaa !25
  %802 = zext i16 %801 to i64
  %803 = sub nsw i64 %799, %802
  %804 = getelementptr inbounds i32, ptr %664, i64 %803
  %805 = load i32, ptr %804, align 4, !tbaa !38
  %806 = sext i32 %805 to i64
  %807 = add nsw i64 %796, %806
  %808 = getelementptr inbounds i16, ptr %697, i64 %684
  %809 = load i16, ptr %808, align 2, !tbaa !25
  %810 = zext i16 %809 to i64
  %811 = getelementptr inbounds i16, ptr %695, i64 %684
  %812 = load i16, ptr %811, align 2, !tbaa !25
  %813 = zext i16 %812 to i64
  %814 = sub nsw i64 %810, %813
  %815 = getelementptr inbounds i32, ptr %664, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !38
  %817 = sext i32 %816 to i64
  %818 = add nsw i64 %807, %817
  %819 = getelementptr inbounds i16, ptr %697, i64 %685
  %820 = load i16, ptr %819, align 2, !tbaa !25
  %821 = zext i16 %820 to i64
  %822 = getelementptr inbounds i16, ptr %695, i64 %685
  %823 = load i16, ptr %822, align 2, !tbaa !25
  %824 = zext i16 %823 to i64
  %825 = sub nsw i64 %821, %824
  %826 = getelementptr inbounds i32, ptr %664, i64 %825
  %827 = load i32, ptr %826, align 4, !tbaa !38
  %828 = sext i32 %827 to i64
  %829 = add nsw i64 %818, %828
  %830 = getelementptr inbounds i16, ptr %697, i64 %686
  %831 = load i16, ptr %830, align 2, !tbaa !25
  %832 = zext i16 %831 to i64
  %833 = getelementptr inbounds i16, ptr %695, i64 %686
  %834 = load i16, ptr %833, align 2, !tbaa !25
  %835 = zext i16 %834 to i64
  %836 = sub nsw i64 %832, %835
  %837 = getelementptr inbounds i32, ptr %664, i64 %836
  %838 = load i32, ptr %837, align 4, !tbaa !38
  %839 = sext i32 %838 to i64
  %840 = add nsw i64 %829, %839
  %841 = getelementptr inbounds i16, ptr %697, i64 %687
  %842 = load i16, ptr %841, align 2, !tbaa !25
  %843 = zext i16 %842 to i64
  %844 = getelementptr inbounds i16, ptr %695, i64 %687
  %845 = load i16, ptr %844, align 2, !tbaa !25
  %846 = zext i16 %845 to i64
  %847 = sub nsw i64 %843, %846
  %848 = getelementptr inbounds i32, ptr %664, i64 %847
  %849 = load i32, ptr %848, align 4, !tbaa !38
  %850 = sext i32 %849 to i64
  %851 = add nsw i64 %840, %850
  %852 = getelementptr inbounds i16, ptr %697, i64 %688
  %853 = load i16, ptr %852, align 2, !tbaa !25
  %854 = zext i16 %853 to i64
  %855 = getelementptr inbounds i16, ptr %695, i64 %688
  %856 = load i16, ptr %855, align 2, !tbaa !25
  %857 = zext i16 %856 to i64
  %858 = sub nsw i64 %854, %857
  %859 = getelementptr inbounds i32, ptr %664, i64 %858
  %860 = load i32, ptr %859, align 4, !tbaa !38
  %861 = sext i32 %860 to i64
  %862 = add nsw i64 %851, %861
  %863 = getelementptr inbounds i16, ptr %697, i64 %689
  %864 = load i16, ptr %863, align 2, !tbaa !25
  %865 = zext i16 %864 to i64
  %866 = getelementptr inbounds i16, ptr %695, i64 %689
  %867 = load i16, ptr %866, align 2, !tbaa !25
  %868 = zext i16 %867 to i64
  %869 = sub nsw i64 %865, %868
  %870 = getelementptr inbounds i32, ptr %664, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !38
  %872 = sext i32 %871 to i64
  %873 = add nsw i64 %862, %872
  %874 = add nuw nsw i64 %691, 1
  %875 = icmp eq i64 %874, 16
  br i1 %875, label %876, label %690

876:                                              ; preds = %690
  %877 = add nuw nsw i64 %657, 1
  %878 = load ptr, ptr @input, align 8, !tbaa !6
  %879 = getelementptr inbounds i8, ptr %878, i64 3576
  %880 = load i32, ptr %879, align 8, !tbaa !84
  %881 = sext i32 %880 to i64
  %882 = icmp slt i64 %877, %881
  br i1 %882, label %656, label %883

883:                                              ; preds = %876, %654
  %884 = phi i64 [ %655, %654 ], [ %881, %876 ]
  %885 = phi ptr [ %641, %654 ], [ %660, %876 ]
  %886 = phi i64 [ 0, %654 ], [ %873, %876 ]
  %887 = sdiv i64 %886, %884
  br label %1106

888:                                              ; preds = %646, %640
  %889 = getelementptr inbounds i8, ptr %641, i64 172
  %890 = load i32, ptr %889, align 4, !tbaa !28
  %891 = getelementptr inbounds i8, ptr %641, i64 156
  %892 = load i32, ptr %891, align 4, !tbaa !27
  %893 = getelementptr inbounds i8, ptr %641, i64 168
  %894 = load i32, ptr %893, align 8, !tbaa !60
  %895 = getelementptr inbounds i8, ptr %641, i64 89184
  %896 = load ptr, ptr %895, align 8, !tbaa !40
  %897 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %898 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %899 = getelementptr inbounds i8, ptr %898, i64 6424
  %900 = load ptr, ptr %899, align 8, !tbaa !29
  %901 = sext i32 %894 to i64
  %902 = sext i32 %890 to i64
  %903 = sext i32 %892 to i64
  %904 = getelementptr ptr, ptr %897, i64 %902
  %905 = getelementptr ptr, ptr %900, i64 %903
  %906 = add nsw i64 %901, 1
  %907 = add nsw i64 %901, 2
  %908 = add nsw i64 %901, 3
  %909 = add nsw i64 %901, 4
  %910 = add nsw i64 %901, 5
  %911 = add nsw i64 %901, 6
  %912 = add nsw i64 %901, 7
  %913 = add nsw i64 %901, 8
  %914 = add nsw i64 %901, 9
  %915 = add nsw i64 %901, 10
  %916 = add nsw i64 %901, 11
  %917 = add nsw i64 %901, 12
  %918 = add nsw i64 %901, 13
  %919 = add nsw i64 %901, 14
  %920 = add nsw i64 %901, 15
  br label %921

921:                                              ; preds = %888, %921
  %922 = phi i64 [ 0, %888 ], [ %1104, %921 ]
  %923 = phi i64 [ 0, %888 ], [ %1103, %921 ]
  %924 = getelementptr ptr, ptr %905, i64 %922
  %925 = load ptr, ptr %924, align 8, !tbaa !6
  %926 = getelementptr ptr, ptr %904, i64 %922
  %927 = load ptr, ptr %926, align 8, !tbaa !6
  %928 = getelementptr inbounds i16, ptr %927, i64 %901
  %929 = load i16, ptr %928, align 2, !tbaa !25
  %930 = zext i16 %929 to i64
  %931 = getelementptr inbounds i16, ptr %925, i64 %901
  %932 = load i16, ptr %931, align 2, !tbaa !25
  %933 = zext i16 %932 to i64
  %934 = sub nsw i64 %930, %933
  %935 = getelementptr inbounds i32, ptr %896, i64 %934
  %936 = load i32, ptr %935, align 4, !tbaa !38
  %937 = sext i32 %936 to i64
  %938 = add nsw i64 %923, %937
  %939 = getelementptr inbounds i16, ptr %927, i64 %906
  %940 = load i16, ptr %939, align 2, !tbaa !25
  %941 = zext i16 %940 to i64
  %942 = getelementptr inbounds i16, ptr %925, i64 %906
  %943 = load i16, ptr %942, align 2, !tbaa !25
  %944 = zext i16 %943 to i64
  %945 = sub nsw i64 %941, %944
  %946 = getelementptr inbounds i32, ptr %896, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !38
  %948 = sext i32 %947 to i64
  %949 = add nsw i64 %938, %948
  %950 = getelementptr inbounds i16, ptr %927, i64 %907
  %951 = load i16, ptr %950, align 2, !tbaa !25
  %952 = zext i16 %951 to i64
  %953 = getelementptr inbounds i16, ptr %925, i64 %907
  %954 = load i16, ptr %953, align 2, !tbaa !25
  %955 = zext i16 %954 to i64
  %956 = sub nsw i64 %952, %955
  %957 = getelementptr inbounds i32, ptr %896, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !38
  %959 = sext i32 %958 to i64
  %960 = add nsw i64 %949, %959
  %961 = getelementptr inbounds i16, ptr %927, i64 %908
  %962 = load i16, ptr %961, align 2, !tbaa !25
  %963 = zext i16 %962 to i64
  %964 = getelementptr inbounds i16, ptr %925, i64 %908
  %965 = load i16, ptr %964, align 2, !tbaa !25
  %966 = zext i16 %965 to i64
  %967 = sub nsw i64 %963, %966
  %968 = getelementptr inbounds i32, ptr %896, i64 %967
  %969 = load i32, ptr %968, align 4, !tbaa !38
  %970 = sext i32 %969 to i64
  %971 = add nsw i64 %960, %970
  %972 = getelementptr inbounds i16, ptr %927, i64 %909
  %973 = load i16, ptr %972, align 2, !tbaa !25
  %974 = zext i16 %973 to i64
  %975 = getelementptr inbounds i16, ptr %925, i64 %909
  %976 = load i16, ptr %975, align 2, !tbaa !25
  %977 = zext i16 %976 to i64
  %978 = sub nsw i64 %974, %977
  %979 = getelementptr inbounds i32, ptr %896, i64 %978
  %980 = load i32, ptr %979, align 4, !tbaa !38
  %981 = sext i32 %980 to i64
  %982 = add nsw i64 %971, %981
  %983 = getelementptr inbounds i16, ptr %927, i64 %910
  %984 = load i16, ptr %983, align 2, !tbaa !25
  %985 = zext i16 %984 to i64
  %986 = getelementptr inbounds i16, ptr %925, i64 %910
  %987 = load i16, ptr %986, align 2, !tbaa !25
  %988 = zext i16 %987 to i64
  %989 = sub nsw i64 %985, %988
  %990 = getelementptr inbounds i32, ptr %896, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !38
  %992 = sext i32 %991 to i64
  %993 = add nsw i64 %982, %992
  %994 = getelementptr inbounds i16, ptr %927, i64 %911
  %995 = load i16, ptr %994, align 2, !tbaa !25
  %996 = zext i16 %995 to i64
  %997 = getelementptr inbounds i16, ptr %925, i64 %911
  %998 = load i16, ptr %997, align 2, !tbaa !25
  %999 = zext i16 %998 to i64
  %1000 = sub nsw i64 %996, %999
  %1001 = getelementptr inbounds i32, ptr %896, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !38
  %1003 = sext i32 %1002 to i64
  %1004 = add nsw i64 %993, %1003
  %1005 = getelementptr inbounds i16, ptr %927, i64 %912
  %1006 = load i16, ptr %1005, align 2, !tbaa !25
  %1007 = zext i16 %1006 to i64
  %1008 = getelementptr inbounds i16, ptr %925, i64 %912
  %1009 = load i16, ptr %1008, align 2, !tbaa !25
  %1010 = zext i16 %1009 to i64
  %1011 = sub nsw i64 %1007, %1010
  %1012 = getelementptr inbounds i32, ptr %896, i64 %1011
  %1013 = load i32, ptr %1012, align 4, !tbaa !38
  %1014 = sext i32 %1013 to i64
  %1015 = add nsw i64 %1004, %1014
  %1016 = getelementptr inbounds i16, ptr %927, i64 %913
  %1017 = load i16, ptr %1016, align 2, !tbaa !25
  %1018 = zext i16 %1017 to i64
  %1019 = getelementptr inbounds i16, ptr %925, i64 %913
  %1020 = load i16, ptr %1019, align 2, !tbaa !25
  %1021 = zext i16 %1020 to i64
  %1022 = sub nsw i64 %1018, %1021
  %1023 = getelementptr inbounds i32, ptr %896, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !38
  %1025 = sext i32 %1024 to i64
  %1026 = add nsw i64 %1015, %1025
  %1027 = getelementptr inbounds i16, ptr %927, i64 %914
  %1028 = load i16, ptr %1027, align 2, !tbaa !25
  %1029 = zext i16 %1028 to i64
  %1030 = getelementptr inbounds i16, ptr %925, i64 %914
  %1031 = load i16, ptr %1030, align 2, !tbaa !25
  %1032 = zext i16 %1031 to i64
  %1033 = sub nsw i64 %1029, %1032
  %1034 = getelementptr inbounds i32, ptr %896, i64 %1033
  %1035 = load i32, ptr %1034, align 4, !tbaa !38
  %1036 = sext i32 %1035 to i64
  %1037 = add nsw i64 %1026, %1036
  %1038 = getelementptr inbounds i16, ptr %927, i64 %915
  %1039 = load i16, ptr %1038, align 2, !tbaa !25
  %1040 = zext i16 %1039 to i64
  %1041 = getelementptr inbounds i16, ptr %925, i64 %915
  %1042 = load i16, ptr %1041, align 2, !tbaa !25
  %1043 = zext i16 %1042 to i64
  %1044 = sub nsw i64 %1040, %1043
  %1045 = getelementptr inbounds i32, ptr %896, i64 %1044
  %1046 = load i32, ptr %1045, align 4, !tbaa !38
  %1047 = sext i32 %1046 to i64
  %1048 = add nsw i64 %1037, %1047
  %1049 = getelementptr inbounds i16, ptr %927, i64 %916
  %1050 = load i16, ptr %1049, align 2, !tbaa !25
  %1051 = zext i16 %1050 to i64
  %1052 = getelementptr inbounds i16, ptr %925, i64 %916
  %1053 = load i16, ptr %1052, align 2, !tbaa !25
  %1054 = zext i16 %1053 to i64
  %1055 = sub nsw i64 %1051, %1054
  %1056 = getelementptr inbounds i32, ptr %896, i64 %1055
  %1057 = load i32, ptr %1056, align 4, !tbaa !38
  %1058 = sext i32 %1057 to i64
  %1059 = add nsw i64 %1048, %1058
  %1060 = getelementptr inbounds i16, ptr %927, i64 %917
  %1061 = load i16, ptr %1060, align 2, !tbaa !25
  %1062 = zext i16 %1061 to i64
  %1063 = getelementptr inbounds i16, ptr %925, i64 %917
  %1064 = load i16, ptr %1063, align 2, !tbaa !25
  %1065 = zext i16 %1064 to i64
  %1066 = sub nsw i64 %1062, %1065
  %1067 = getelementptr inbounds i32, ptr %896, i64 %1066
  %1068 = load i32, ptr %1067, align 4, !tbaa !38
  %1069 = sext i32 %1068 to i64
  %1070 = add nsw i64 %1059, %1069
  %1071 = getelementptr inbounds i16, ptr %927, i64 %918
  %1072 = load i16, ptr %1071, align 2, !tbaa !25
  %1073 = zext i16 %1072 to i64
  %1074 = getelementptr inbounds i16, ptr %925, i64 %918
  %1075 = load i16, ptr %1074, align 2, !tbaa !25
  %1076 = zext i16 %1075 to i64
  %1077 = sub nsw i64 %1073, %1076
  %1078 = getelementptr inbounds i32, ptr %896, i64 %1077
  %1079 = load i32, ptr %1078, align 4, !tbaa !38
  %1080 = sext i32 %1079 to i64
  %1081 = add nsw i64 %1070, %1080
  %1082 = getelementptr inbounds i16, ptr %927, i64 %919
  %1083 = load i16, ptr %1082, align 2, !tbaa !25
  %1084 = zext i16 %1083 to i64
  %1085 = getelementptr inbounds i16, ptr %925, i64 %919
  %1086 = load i16, ptr %1085, align 2, !tbaa !25
  %1087 = zext i16 %1086 to i64
  %1088 = sub nsw i64 %1084, %1087
  %1089 = getelementptr inbounds i32, ptr %896, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !38
  %1091 = sext i32 %1090 to i64
  %1092 = add nsw i64 %1081, %1091
  %1093 = getelementptr inbounds i16, ptr %927, i64 %920
  %1094 = load i16, ptr %1093, align 2, !tbaa !25
  %1095 = zext i16 %1094 to i64
  %1096 = getelementptr inbounds i16, ptr %925, i64 %920
  %1097 = load i16, ptr %1096, align 2, !tbaa !25
  %1098 = zext i16 %1097 to i64
  %1099 = sub nsw i64 %1095, %1098
  %1100 = getelementptr inbounds i32, ptr %896, i64 %1099
  %1101 = load i32, ptr %1100, align 4, !tbaa !38
  %1102 = sext i32 %1101 to i64
  %1103 = add nsw i64 %1092, %1102
  %1104 = add nuw nsw i64 %922, 1
  %1105 = icmp eq i64 %1104, 16
  br i1 %1105, label %1106, label %921

1106:                                             ; preds = %921, %883
  %1107 = phi ptr [ %885, %883 ], [ %641, %921 ]
  %1108 = phi i64 [ %887, %883 ], [ %1103, %921 ]
  %1109 = getelementptr inbounds i8, ptr %1107, i64 90548
  %1110 = load i32, ptr %1109, align 4, !tbaa !110
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1189, label %1112

1112:                                             ; preds = %1106
  %1113 = getelementptr inbounds i8, ptr %1107, i64 90560
  %1114 = load i32, ptr %1113, align 8, !tbaa !111
  %1115 = icmp sgt i32 %1114, 0
  br i1 %1115, label %1116, label %1189

1116:                                             ; preds = %1112
  %1117 = getelementptr inbounds i8, ptr %1107, i64 180
  %1118 = load i32, ptr %1117, align 4, !tbaa !112
  %1119 = getelementptr inbounds i8, ptr %1107, i64 164
  %1120 = load i32, ptr %1119, align 4, !tbaa !113
  %1121 = getelementptr inbounds i8, ptr %1107, i64 176
  %1122 = load i32, ptr %1121, align 8, !tbaa !114
  %1123 = getelementptr inbounds i8, ptr %1107, i64 90556
  %1124 = load i32, ptr %1123, align 4, !tbaa !115
  %1125 = add nsw i32 %1124, %1122
  %1126 = icmp sgt i32 %1124, 0
  %1127 = getelementptr inbounds i8, ptr %1107, i64 89184
  %1128 = load ptr, ptr @imgUV_org, align 8
  %1129 = load ptr, ptr @enc_picture, align 8
  %1130 = getelementptr inbounds i8, ptr %1129, i64 6464
  %1131 = getelementptr inbounds i8, ptr %1128, i64 8
  %1132 = sext i32 %1122 to i64
  %1133 = sext i32 %1125 to i64
  %1134 = sext i32 %1118 to i64
  %1135 = sext i32 %1120 to i64
  %1136 = zext nneg i32 %1114 to i64
  br label %1137

1137:                                             ; preds = %1116, %1185
  %1138 = phi i64 [ 0, %1116 ], [ %1187, %1185 ]
  %1139 = phi i64 [ %1108, %1116 ], [ %1186, %1185 ]
  br i1 %1126, label %1140, label %1185

1140:                                             ; preds = %1137
  %1141 = add nsw i64 %1138, %1135
  %1142 = add nsw i64 %1138, %1134
  %1143 = load ptr, ptr %1127, align 8, !tbaa !40
  %1144 = load ptr, ptr %1128, align 8, !tbaa !6
  %1145 = getelementptr inbounds ptr, ptr %1144, i64 %1142
  %1146 = load ptr, ptr %1145, align 8, !tbaa !6
  %1147 = load ptr, ptr %1130, align 8, !tbaa !81
  %1148 = load ptr, ptr %1147, align 8, !tbaa !6
  %1149 = getelementptr inbounds ptr, ptr %1148, i64 %1141
  %1150 = load ptr, ptr %1149, align 8, !tbaa !6
  %1151 = load ptr, ptr %1131, align 8, !tbaa !6
  %1152 = getelementptr inbounds ptr, ptr %1151, i64 %1142
  %1153 = load ptr, ptr %1152, align 8, !tbaa !6
  %1154 = getelementptr inbounds i8, ptr %1147, i64 8
  %1155 = load ptr, ptr %1154, align 8, !tbaa !6
  %1156 = getelementptr inbounds ptr, ptr %1155, i64 %1141
  %1157 = load ptr, ptr %1156, align 8, !tbaa !6
  br label %1158

1158:                                             ; preds = %1140, %1158
  %1159 = phi i64 [ %1132, %1140 ], [ %1183, %1158 ]
  %1160 = phi i64 [ %1139, %1140 ], [ %1182, %1158 ]
  %1161 = getelementptr inbounds i16, ptr %1146, i64 %1159
  %1162 = load i16, ptr %1161, align 2, !tbaa !25
  %1163 = zext i16 %1162 to i64
  %1164 = getelementptr inbounds i16, ptr %1150, i64 %1159
  %1165 = load i16, ptr %1164, align 2, !tbaa !25
  %1166 = zext i16 %1165 to i64
  %1167 = sub nsw i64 %1163, %1166
  %1168 = getelementptr inbounds i32, ptr %1143, i64 %1167
  %1169 = load i32, ptr %1168, align 4, !tbaa !38
  %1170 = sext i32 %1169 to i64
  %1171 = add nsw i64 %1160, %1170
  %1172 = getelementptr inbounds i16, ptr %1153, i64 %1159
  %1173 = load i16, ptr %1172, align 2, !tbaa !25
  %1174 = zext i16 %1173 to i64
  %1175 = getelementptr inbounds i16, ptr %1157, i64 %1159
  %1176 = load i16, ptr %1175, align 2, !tbaa !25
  %1177 = zext i16 %1176 to i64
  %1178 = sub nsw i64 %1174, %1177
  %1179 = getelementptr inbounds i32, ptr %1143, i64 %1178
  %1180 = load i32, ptr %1179, align 4, !tbaa !38
  %1181 = sext i32 %1180 to i64
  %1182 = add nsw i64 %1171, %1181
  %1183 = add nsw i64 %1159, 1
  %1184 = icmp slt i64 %1183, %1133
  br i1 %1184, label %1158, label %1185

1185:                                             ; preds = %1158, %1137
  %1186 = phi i64 [ %1139, %1137 ], [ %1182, %1158 ]
  %1187 = add nuw nsw i64 %1138, 1
  %1188 = icmp eq i64 %1187, %1136
  br i1 %1188, label %1189, label %1137

1189:                                             ; preds = %1185, %1112, %1106
  %1190 = phi i64 [ %1108, %1106 ], [ %1108, %1112 ], [ %1186, %1185 ]
  %1191 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @store_coding_state(ptr noundef %1191) #15
  br i1 %131, label %1192, label %1225

1192:                                             ; preds = %1189
  %1193 = getelementptr inbounds i8, ptr %21, i64 72
  %1194 = load i32, ptr %1193, align 8, !tbaa !57
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1196, label %1201

1196:                                             ; preds = %1192
  br i1 %28, label %1197, label %1212

1197:                                             ; preds = %1196
  %1198 = getelementptr inbounds i8, ptr %21, i64 364
  %1199 = load i32, ptr %1198, align 4, !tbaa !93
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1212, label %1201

1201:                                             ; preds = %1197, %1192
  %1202 = load ptr, ptr @img, align 8, !tbaa !6
  %1203 = getelementptr inbounds i8, ptr %1202, i64 120
  %1204 = load i32, ptr %1203, align 8, !tbaa !118
  %1205 = call signext i32 @writeMBLayer(i32 noundef signext 1, ptr noundef nonnull %8) #15
  store i32 %1205, ptr %7, align 4, !tbaa !38
  %1206 = load i32, ptr %10, align 4, !tbaa !38
  call void @ue_linfo(i32 noundef signext %1204, i32 noundef signext %1206, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %1207 = load i32, ptr %9, align 4, !tbaa !38
  %1208 = load i32, ptr %7, align 4, !tbaa !38
  %1209 = sub nsw i32 %1208, %1207
  store i32 %1209, ptr %7, align 4, !tbaa !38
  %1210 = load ptr, ptr @img, align 8, !tbaa !6
  %1211 = getelementptr inbounds i8, ptr %1210, i64 120
  store i32 %1204, ptr %1211, align 8, !tbaa !118
  br label %1227

1212:                                             ; preds = %1197, %1196
  %1213 = load ptr, ptr @img, align 8, !tbaa !6
  %1214 = getelementptr inbounds i8, ptr %1213, i64 120
  %1215 = load i32, ptr %1214, align 8, !tbaa !118
  %1216 = add nsw i32 %1215, 1
  %1217 = load i32, ptr %10, align 4, !tbaa !38
  call void @ue_linfo(i32 noundef signext %1216, i32 noundef signext %1217, ptr noundef nonnull %7, ptr noundef nonnull %10) #15
  %1218 = load ptr, ptr @img, align 8, !tbaa !6
  %1219 = getelementptr inbounds i8, ptr %1218, i64 120
  %1220 = load i32, ptr %1219, align 8, !tbaa !118
  %1221 = load i32, ptr %10, align 4, !tbaa !38
  call void @ue_linfo(i32 noundef signext %1220, i32 noundef signext %1221, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %1222 = load i32, ptr %9, align 4, !tbaa !38
  %1223 = load i32, ptr %7, align 4, !tbaa !38
  %1224 = sub nsw i32 %1223, %1222
  store i32 %1224, ptr %7, align 4, !tbaa !38
  br label %1227

1225:                                             ; preds = %1189
  %1226 = call signext i32 @writeMBLayer(i32 noundef signext 1, ptr noundef nonnull %8) #15
  store i32 %1226, ptr %7, align 4, !tbaa !38
  br label %1227

1227:                                             ; preds = %1201, %1212, %1225
  %1228 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %1228) #15
  %1229 = sitofp i64 %1190 to double
  %1230 = load i32, ptr %7, align 4
  %1231 = sitofp i32 %1230 to double
  %1232 = fcmp olt double %1231, 5.000000e-01
  %1233 = select i1 %1232, double 5.000000e-01, double %1231
  %1234 = call double @llvm.fmuladd.f64(double %0, double %1233, double %1229)
  %1235 = load double, ptr %2, align 8, !tbaa !119
  %1236 = fcmp ult double %1234, %1235
  %1237 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %1236, label %1238, label %1251

1238:                                             ; preds = %1227
  %1239 = getelementptr inbounds i8, ptr %1237, i64 40
  %1240 = load i32, ptr %1239, align 8, !tbaa !96
  %1241 = getelementptr inbounds i8, ptr %1237, i64 90492
  %1242 = load i32, ptr %1241, align 4, !tbaa !97
  %1243 = sub i32 0, %1242
  %1244 = icmp eq i32 %1240, %1243
  br i1 %1244, label %1245, label %1262

1245:                                             ; preds = %1238
  %1246 = getelementptr inbounds i8, ptr %1237, i64 90552
  %1247 = load i32, ptr %1246, align 8, !tbaa !98
  %1248 = icmp eq i32 %1247, 1
  %1249 = icmp ne i64 %1190, 0
  %1250 = select i1 %1248, i1 %1249, i1 false
  br i1 %1250, label %1251, label %1262

1251:                                             ; preds = %1245, %1227
  %1252 = getelementptr inbounds i8, ptr %1237, i64 24
  %1253 = load i32, ptr %1252, align 8, !tbaa !14
  %1254 = or i32 %1253, %1
  %1255 = icmp ne i32 %1254, 0
  %1256 = fcmp une double %1234, %1235
  %1257 = or i1 %1256, %1255
  br i1 %1257, label %1400, label %1258

1258:                                             ; preds = %1251
  %1259 = load ptr, ptr @input, align 8, !tbaa !6
  %1260 = load i32, ptr %1259, align 8, !tbaa !120
  %1261 = icmp sgt i32 %1260, 99
  br i1 %1261, label %1400, label %1262

1262:                                             ; preds = %1258, %1245, %1238
  %1263 = getelementptr inbounds i8, ptr %1237, i64 90220
  %1264 = load i32, ptr %1263, align 4, !tbaa !102
  %1265 = icmp eq i32 %1264, 0
  %1266 = icmp ne i32 %1, 0
  %1267 = or i1 %1266, %1265
  br i1 %1267, label %1314, label %1268

1268:                                             ; preds = %1262
  %1269 = getelementptr inbounds i8, ptr %1237, i64 24
  %1270 = load i32, ptr %1269, align 8, !tbaa !14
  %1271 = icmp eq i32 %1270, 1
  br i1 %1271, label %1272, label %1276

1272:                                             ; preds = %1268
  %1273 = getelementptr inbounds i8, ptr %21, i64 364
  %1274 = load i32, ptr %1273, align 4, !tbaa !93
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1314

1276:                                             ; preds = %1268, %1272
  %1277 = getelementptr inbounds i8, ptr %1237, i64 12
  %1278 = load i32, ptr %1277, align 4, !tbaa !33
  %1279 = and i32 %1278, 1
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1314, label %1281

1281:                                             ; preds = %1276
  %1282 = getelementptr inbounds i8, ptr %25, i64 72
  %1283 = load i32, ptr %1282, align 8, !tbaa !57
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1285, label %1314

1285:                                             ; preds = %1281
  br i1 %1271, label %1286, label %1290

1286:                                             ; preds = %1285
  %1287 = getelementptr inbounds i8, ptr %25, i64 364
  %1288 = load i32, ptr %1287, align 4, !tbaa !93
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1290, label %1314

1290:                                             ; preds = %1285, %1286
  %1291 = getelementptr inbounds i8, ptr %1237, i64 31576
  %1292 = load ptr, ptr %1291, align 8, !tbaa !32
  %1293 = sext i32 %1278 to i64
  %1294 = getelementptr inbounds %struct.macroblock, ptr %1292, i64 %1293
  %1295 = getelementptr inbounds i8, ptr %1294, i64 448
  %1296 = load i32, ptr %1295, align 8, !tbaa !121
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1298, label %1302

1298:                                             ; preds = %1290
  %1299 = getelementptr inbounds i8, ptr %1294, i64 452
  %1300 = load i32, ptr %1299, align 4, !tbaa !122
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1309, label %1302

1302:                                             ; preds = %1298, %1290
  %1303 = phi i64 [ 432, %1290 ], [ 436, %1298 ]
  %1304 = getelementptr inbounds i8, ptr %1294, i64 %1303
  %1305 = load i32, ptr %1304, align 4, !tbaa !38
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds %struct.macroblock, ptr %1292, i64 %1306, i32 19
  %1308 = load i32, ptr %1307, align 8, !tbaa !107
  br label %1309

1309:                                             ; preds = %1298, %1302
  %1310 = phi i32 [ 0, %1298 ], [ %1308, %1302 ]
  %1311 = getelementptr inbounds i8, ptr %21, i64 424
  %1312 = load i32, ptr %1311, align 8, !tbaa !107
  %1313 = icmp eq i32 %1310, %1312
  br i1 %1313, label %1314, label %1400

1314:                                             ; preds = %1276, %1309, %1281, %1286, %1272, %1262
  store double %1234, ptr %2, align 8, !tbaa !119
  %1315 = load i32, ptr %8, align 4, !tbaa !38
  %1316 = sitofp i32 %1315 to double
  %1317 = fmul double %1316, %0
  store double %1317, ptr %3, align 8, !tbaa !119
  %1318 = getelementptr inbounds i8, ptr %1237, i64 90540
  %1319 = getelementptr inbounds i8, ptr %1237, i64 128
  %1320 = getelementptr inbounds i8, ptr %1237, i64 12
  %1321 = load i32, ptr %1318, align 4, !tbaa !94
  %1322 = icmp sgt i32 %1321, -4
  br i1 %1322, label %1323, label %1400

1323:                                             ; preds = %1314
  %1324 = load ptr, ptr %1319, align 8, !tbaa !78
  br label %1325

1325:                                             ; preds = %1323, %1325
  %1326 = phi i64 [ 0, %1323 ], [ %1335, %1325 ]
  %1327 = load i32, ptr %1320, align 4, !tbaa !33
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds ptr, ptr %1324, i64 %1328
  %1330 = load ptr, ptr %1329, align 8, !tbaa !6
  %1331 = load ptr, ptr %1330, align 8, !tbaa !6
  %1332 = getelementptr inbounds i32, ptr %1331, i64 %1326
  %1333 = load i32, ptr %1332, align 4, !tbaa !38
  %1334 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 0, i64 %1326
  store i32 %1333, ptr %1334, align 4, !tbaa !38
  %1335 = add nuw nsw i64 %1326, 1
  %1336 = load i32, ptr %1318, align 4, !tbaa !94
  %1337 = add nsw i32 %1336, 3
  %1338 = sext i32 %1337 to i64
  %1339 = icmp slt i64 %1326, %1338
  br i1 %1339, label %1325, label %1340

1340:                                             ; preds = %1325
  %1341 = icmp sgt i32 %1336, -4
  br i1 %1341, label %1342, label %1400

1342:                                             ; preds = %1340
  %1343 = load ptr, ptr %1319, align 8, !tbaa !78
  br label %1344

1344:                                             ; preds = %1344, %1342
  %1345 = phi i64 [ 0, %1342 ], [ %1355, %1344 ]
  %1346 = load i32, ptr %1320, align 4, !tbaa !33
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds ptr, ptr %1343, i64 %1347
  %1349 = load ptr, ptr %1348, align 8, !tbaa !6
  %1350 = getelementptr inbounds i8, ptr %1349, i64 8
  %1351 = load ptr, ptr %1350, align 8, !tbaa !6
  %1352 = getelementptr inbounds i32, ptr %1351, i64 %1345
  %1353 = load i32, ptr %1352, align 4, !tbaa !38
  %1354 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 1, i64 %1345
  store i32 %1353, ptr %1354, align 4, !tbaa !38
  %1355 = add nuw nsw i64 %1345, 1
  %1356 = load i32, ptr %1318, align 4, !tbaa !94
  %1357 = add nsw i32 %1356, 3
  %1358 = sext i32 %1357 to i64
  %1359 = icmp slt i64 %1345, %1358
  br i1 %1359, label %1344, label %1360

1360:                                             ; preds = %1344
  %1361 = icmp sgt i32 %1356, -4
  br i1 %1361, label %1362, label %1400

1362:                                             ; preds = %1360
  %1363 = load ptr, ptr %1319, align 8, !tbaa !78
  br label %1364

1364:                                             ; preds = %1364, %1362
  %1365 = phi i64 [ 0, %1362 ], [ %1375, %1364 ]
  %1366 = load i32, ptr %1320, align 4, !tbaa !33
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds ptr, ptr %1363, i64 %1367
  %1369 = load ptr, ptr %1368, align 8, !tbaa !6
  %1370 = getelementptr inbounds i8, ptr %1369, i64 16
  %1371 = load ptr, ptr %1370, align 8, !tbaa !6
  %1372 = getelementptr inbounds i32, ptr %1371, i64 %1365
  %1373 = load i32, ptr %1372, align 4, !tbaa !38
  %1374 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 2, i64 %1365
  store i32 %1373, ptr %1374, align 4, !tbaa !38
  %1375 = add nuw nsw i64 %1365, 1
  %1376 = load i32, ptr %1318, align 4, !tbaa !94
  %1377 = add nsw i32 %1376, 3
  %1378 = sext i32 %1377 to i64
  %1379 = icmp slt i64 %1365, %1378
  br i1 %1379, label %1364, label %1380

1380:                                             ; preds = %1364
  %1381 = icmp sgt i32 %1376, -4
  br i1 %1381, label %1382, label %1400

1382:                                             ; preds = %1380
  %1383 = load ptr, ptr %1319, align 8, !tbaa !78
  br label %1384

1384:                                             ; preds = %1384, %1382
  %1385 = phi i64 [ 0, %1382 ], [ %1395, %1384 ]
  %1386 = load i32, ptr %1320, align 4, !tbaa !33
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds ptr, ptr %1383, i64 %1387
  %1389 = load ptr, ptr %1388, align 8, !tbaa !6
  %1390 = getelementptr inbounds i8, ptr %1389, i64 24
  %1391 = load ptr, ptr %1390, align 8, !tbaa !6
  %1392 = getelementptr inbounds i32, ptr %1391, i64 %1385
  %1393 = load i32, ptr %1392, align 4, !tbaa !38
  %1394 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 3, i64 %1385
  store i32 %1393, ptr %1394, align 4, !tbaa !38
  %1395 = add nuw nsw i64 %1385, 1
  %1396 = load i32, ptr %1318, align 4, !tbaa !94
  %1397 = add nsw i32 %1396, 3
  %1398 = sext i32 %1397 to i64
  %1399 = icmp slt i64 %1385, %1398
  br i1 %1399, label %1384, label %1400

1400:                                             ; preds = %1384, %1314, %1340, %1360, %41, %56, %61, %66, %71, %78, %82, %86, %90, %97, %101, %105, %109, %116, %120, %124, %1380, %1309, %1251, %1258, %206, %197, %202, %144, %155, %166
  %1401 = phi i32 [ 0, %166 ], [ 0, %155 ], [ 0, %144 ], [ 0, %202 ], [ 0, %197 ], [ 0, %206 ], [ 0, %1258 ], [ 0, %1251 ], [ 0, %1309 ], [ 1, %1380 ], [ 0, %124 ], [ 0, %120 ], [ 0, %116 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ], [ 0, %97 ], [ 0, %90 ], [ 0, %86 ], [ 0, %82 ], [ 0, %78 ], [ 0, %71 ], [ 0, %66 ], [ 0, %61 ], [ 0, %56 ], [ 0, %41 ], [ 1, %1360 ], [ 1, %1340 ], [ 1, %1314 ], [ 1, %1384 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret i32 %1401
}

declare dso_local signext i32 @FmoGetPreviousMBNr(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @LumaResidualCoding() local_unnamed_addr #1

declare dso_local signext i32 @dct_chroma_DC(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef, ptr noundef) local_unnamed_addr #1

declare dso_local void @compute_residue_mb(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @ChromaResidualCoding(ptr noundef) local_unnamed_addr #1

declare dso_local void @decode_one_mb(i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeMBLayer(i32 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @field_flag_inference() local_unnamed_addr #10 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 448
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %7, i64 452
  %13 = load i32, ptr %12, align 4, !tbaa !122
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %0
  %16 = phi i64 [ 432, %0 ], [ 436, %11 ]
  %17 = getelementptr inbounds i8, ptr %7, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %19, i32 19
  %21 = load i32, ptr %20, align 8, !tbaa !107
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ 0, %11 ], [ %21, %15 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @store_adaptive_rounding_parameters(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @img, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 14152
  %5 = icmp eq i32 %0, 9
  %6 = zext i1 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 23368
  %8 = getelementptr inbounds i8, ptr %3, i64 24392
  %9 = getelementptr inbounds i8, ptr %3, i64 19272
  %10 = getelementptr inbounds i8, ptr %3, i64 22344
  %11 = getelementptr inbounds i8, ptr %1, i64 468
  %12 = getelementptr inbounds i8, ptr %3, i64 20296
  %13 = getelementptr inbounds i8, ptr %3, i64 29512
  %14 = getelementptr inbounds i8, ptr %3, i64 30536
  %15 = getelementptr inbounds i8, ptr %3, i64 17224
  %16 = getelementptr inbounds i8, ptr %3, i64 25416
  %17 = getelementptr inbounds i8, ptr %3, i64 26440
  %18 = getelementptr inbounds i8, ptr %3, i64 18248
  %19 = getelementptr inbounds i8, ptr %3, i64 21320
  br label %20

20:                                               ; preds = %2, %77
  %21 = phi i64 [ 0, %2 ], [ %78, %77 ]
  br label %22

22:                                               ; preds = %20, %74
  %23 = phi i64 [ 0, %20 ], [ %75, %74 ]
  switch i32 %0, label %38 [
    i32 8, label %24
    i32 13, label %56
    i32 9, label %49
    i32 10, label %49
  ]

24:                                               ; preds = %22
  %25 = load i32, ptr %11, align 4, !tbaa !89
  %26 = icmp eq i32 %25, 0
  %27 = or i64 %23, %21
  %28 = and i64 %27, 4294967288
  %29 = icmp eq i64 %28, 0
  br i1 %26, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds [16 x [16 x i32]], ptr %12, i64 0, i64 %21, i64 %23
  %32 = load i32, ptr %31, align 4, !tbaa !38
  %33 = getelementptr inbounds [16 x [16 x i32]], ptr @bestInterFAdjust8x8, i64 0, i64 %21, i64 %23
  store i32 %32, ptr %33, align 4, !tbaa !38
  br i1 %29, label %63, label %74

34:                                               ; preds = %24
  %35 = getelementptr inbounds [16 x [16 x i32]], ptr %15, i64 0, i64 %21, i64 %23
  %36 = load i32, ptr %35, align 4, !tbaa !38
  %37 = getelementptr inbounds [16 x [16 x i32]], ptr @bestInterFAdjust4x4, i64 0, i64 %21, i64 %23
  store i32 %36, ptr %37, align 4, !tbaa !38
  br i1 %29, label %63, label %74

38:                                               ; preds = %22
  %39 = load i32, ptr %11, align 4, !tbaa !89
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr %4, ptr %18
  %42 = select i1 %40, ptr @bestInterFAdjust4x4, ptr @bestInterFAdjust8x8
  %43 = getelementptr inbounds [16 x [16 x i32]], ptr %41, i64 0, i64 %21, i64 %23
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = getelementptr inbounds [16 x [16 x i32]], ptr %42, i64 0, i64 %21, i64 %23
  store i32 %44, ptr %45, align 4, !tbaa !38
  %46 = or i64 %23, %21
  %47 = and i64 %46, 4294967288
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %63, label %74

49:                                               ; preds = %22, %22
  %50 = getelementptr inbounds [4 x [16 x [16 x i32]]], ptr %4, i64 0, i64 %6, i64 %21, i64 %23
  %51 = load i32, ptr %50, align 4, !tbaa !38
  %52 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4, i64 0, i64 %21, i64 %23
  store i32 %51, ptr %52, align 4, !tbaa !38
  %53 = or i64 %23, %21
  %54 = and i64 %53, 4294967288
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %63, label %74

56:                                               ; preds = %22
  %57 = getelementptr inbounds [16 x [16 x i32]], ptr %9, i64 0, i64 %21, i64 %23
  %58 = load i32, ptr %57, align 4, !tbaa !38
  %59 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust8x8, i64 0, i64 %21, i64 %23
  store i32 %58, ptr %59, align 4, !tbaa !38
  %60 = or i64 %23, %21
  %61 = and i64 %60, 4294967288
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56, %49, %38, %34, %30
  %64 = phi ptr [ %13, %30 ], [ %16, %34 ], [ %19, %38 ], [ %7, %49 ], [ %10, %56 ]
  %65 = phi ptr [ @bestInterFAdjust4x4Cr, %30 ], [ @bestInterFAdjust4x4Cr, %34 ], [ @bestInterFAdjust4x4Cr, %38 ], [ @bestIntraFAdjust4x4Cr, %49 ], [ @bestIntraFAdjust4x4Cr, %56 ]
  %66 = phi ptr [ %14, %30 ], [ %17, %34 ], [ %10, %38 ], [ %8, %49 ], [ %8, %56 ]
  %67 = phi ptr [ getelementptr inbounds (i8, ptr @bestInterFAdjust4x4Cr, i64 1024), %30 ], [ getelementptr inbounds (i8, ptr @bestInterFAdjust4x4Cr, i64 1024), %34 ], [ getelementptr inbounds (i8, ptr @bestInterFAdjust4x4Cr, i64 1024), %38 ], [ getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), %49 ], [ getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), %56 ]
  %68 = getelementptr inbounds [16 x [16 x i32]], ptr %64, i64 0, i64 %21, i64 %23
  %69 = load i32, ptr %68, align 4, !tbaa !38
  %70 = getelementptr inbounds [16 x [16 x i32]], ptr %65, i64 0, i64 %21, i64 %23
  store i32 %69, ptr %70, align 4, !tbaa !38
  %71 = getelementptr inbounds [16 x [16 x i32]], ptr %66, i64 0, i64 %21, i64 %23
  %72 = load i32, ptr %71, align 4, !tbaa !38
  %73 = getelementptr inbounds [16 x [16 x i32]], ptr %67, i64 0, i64 %21, i64 %23
  store i32 %72, ptr %73, align 4, !tbaa !38
  br label %74

74:                                               ; preds = %63, %34, %30, %49, %56, %38
  %75 = add nuw nsw i64 %23, 1
  %76 = icmp eq i64 %75, 16
  br i1 %76, label %77, label %22

77:                                               ; preds = %74
  %78 = add nuw nsw i64 %21, 1
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %80, label %20

80:                                               ; preds = %77
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @store_macroblock_parameters(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31576
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %2, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %7
  %9 = getelementptr inbounds i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, 1
  %12 = trunc i32 %0 to i16
  store i16 %12, ptr @best_mode, align 2, !tbaa !25
  %13 = getelementptr inbounds i8, ptr %8, i64 416
  %14 = load i32, ptr %13, align 8, !tbaa !61
  store i32 %14, ptr @best_c_imode, align 4, !tbaa !38
  %15 = getelementptr inbounds i8, ptr %2, i64 90196
  %16 = load i32, ptr %15, align 4, !tbaa !117
  store i32 %16, ptr @best_i16offset, align 4, !tbaa !38
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds i8, ptr %8, i64 476
  %20 = load i16, ptr %19, align 4, !tbaa !83
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i16 [ %20, %18 ], [ 0, %1 ]
  store i16 %22, ptr @bi_pred_me, align 2, !tbaa !25
  %23 = getelementptr inbounds i8, ptr %8, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @b8mode, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %24 = getelementptr inbounds i8, ptr %8, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @b8pdir, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false)
  %25 = getelementptr inbounds i8, ptr %8, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) @b4_intra_pred_modes, ptr noundef nonnull align 4 dereferenceable(16) %25, i64 16, i1 false)
  %26 = getelementptr inbounds i8, ptr %8, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) @b8_intra_pred_modes8x8, ptr noundef nonnull align 4 dereferenceable(16) %26, i64 16, i1 false)
  %27 = getelementptr inbounds i8, ptr %2, i64 104
  %28 = getelementptr inbounds i8, ptr %2, i64 148
  %29 = getelementptr inbounds i8, ptr %2, i64 144
  %30 = getelementptr inbounds i8, ptr %2, i64 112
  %31 = load ptr, ptr %27, align 8, !tbaa !68
  %32 = load i32, ptr %28, align 4, !tbaa !23
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load i32, ptr %29, align 8, !tbaa !24
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 1
  store i32 %39, ptr @b4_ipredmode, align 4
  %40 = load ptr, ptr %30, align 8, !tbaa !123
  %41 = getelementptr inbounds ptr, ptr %40, i64 %33
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 %37
  %44 = load i32, ptr %43, align 1
  store i32 %44, ptr @b8_ipredmode8x8, align 1
  %45 = add nsw i32 %32, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %31, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 %37
  %50 = load i32, ptr %49, align 1
  store i32 %50, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 4), align 4
  %51 = getelementptr inbounds ptr, ptr %40, i64 %46
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 %37
  %54 = load i32, ptr %53, align 1
  store i32 %54, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 4), align 1
  %55 = add nsw i32 %32, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %31, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 %37
  %60 = load i32, ptr %59, align 1
  store i32 %60, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 8), align 4
  %61 = getelementptr inbounds ptr, ptr %40, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %62, i64 %37
  %64 = load i32, ptr %63, align 1
  store i32 %64, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 8), align 1
  %65 = add nsw i32 %32, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %31, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 %37
  %70 = load i32, ptr %69, align 1
  store i32 %70, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 12), align 4
  %71 = getelementptr inbounds ptr, ptr %40, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 %37
  %74 = load i32, ptr %73, align 1
  store i32 %74, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 12), align 1
  %75 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %75, i64 6424
  %77 = getelementptr inbounds i8, ptr %2, i64 156
  %78 = getelementptr inbounds i8, ptr %2, i64 152
  %79 = load i32, ptr @si_frame_indicator, align 4
  %80 = icmp eq i32 %79, 0
  %81 = load i32, ptr @sp2_frame_indicator, align 4
  %82 = icmp eq i32 %81, 0
  %83 = load ptr, ptr @lrec, align 8
  br label %84

84:                                               ; preds = %21, %111
  %85 = phi i64 [ 0, %21 ], [ %112, %111 ]
  %86 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbY, i64 0, i64 %85
  %87 = load ptr, ptr %76, align 8, !tbaa !29
  %88 = load i32, ptr %77, align 4, !tbaa !27
  %89 = trunc nuw nsw i64 %85 to i32
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %87, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = load i32, ptr %78, align 8, !tbaa !26
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, ptr %93, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %86, ptr noundef nonnull align 2 dereferenceable(32) %96, i64 32, i1 false)
  %97 = load i32, ptr %9, align 8, !tbaa !14
  %98 = icmp eq i32 %97, 3
  %99 = select i1 %98, i1 %80, i1 false
  %100 = select i1 %99, i1 %82, i1 false
  br i1 %100, label %101, label %111

101:                                              ; preds = %84
  %102 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec, i64 0, i64 %85
  %103 = load i32, ptr %77, align 4, !tbaa !27
  %104 = add nsw i32 %103, %89
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %83, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = load i32, ptr %78, align 8, !tbaa !26
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %107, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %102, ptr noundef nonnull align 4 dereferenceable(64) %110, i64 64, i1 false)
  br label %111

111:                                              ; preds = %84, %101
  %112 = add nuw nsw i64 %85, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %84

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %2, i64 90212
  %116 = load i32, ptr %115, align 4, !tbaa !79
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  tail call void @store_adaptive_rounding_parameters(i32 noundef signext %0, ptr noundef %8)
  %119 = load ptr, ptr @img, align 8, !tbaa !6
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi ptr [ %119, %118 ], [ %2, %114 ]
  %122 = getelementptr inbounds i8, ptr %121, i64 90548
  %123 = load i32, ptr %122, align 4, !tbaa !110
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %210, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %121, i64 90560
  %127 = load i32, ptr %126, align 8, !tbaa !111
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %210

129:                                              ; preds = %125
  %130 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %130, i64 6464
  %132 = getelementptr inbounds i8, ptr %121, i64 164
  %133 = getelementptr inbounds i8, ptr %121, i64 160
  %134 = getelementptr inbounds i8, ptr %121, i64 90556
  %135 = getelementptr inbounds i8, ptr %121, i64 24
  %136 = load i32, ptr @si_frame_indicator, align 4
  %137 = icmp eq i32 %136, 0
  %138 = load i32, ptr @sp2_frame_indicator, align 4
  %139 = icmp eq i32 %138, 0
  %140 = load ptr, ptr @lrec_uv, align 8
  %141 = getelementptr inbounds i8, ptr %140, i64 8
  br label %142

142:                                              ; preds = %129, %205
  %143 = phi i64 [ 0, %129 ], [ %206, %205 ]
  %144 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %143
  %145 = load ptr, ptr %131, align 8, !tbaa !81
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = load i32, ptr %132, align 4, !tbaa !113
  %148 = trunc nuw nsw i64 %143 to i32
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %146, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = load i32, ptr %133, align 8, !tbaa !124
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16, ptr %152, i64 %154
  %156 = load i32, ptr %134, align 4, !tbaa !115
  %157 = sext i32 %156 to i64
  %158 = shl nsw i64 %157, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %144, ptr align 2 %155, i64 %158, i1 false)
  %159 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %143
  %160 = load ptr, ptr %131, align 8, !tbaa !81
  %161 = getelementptr inbounds i8, ptr %160, i64 8
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load i32, ptr %132, align 4, !tbaa !113
  %164 = add nsw i32 %163, %148
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = load i32, ptr %133, align 8, !tbaa !124
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, ptr %167, i64 %169
  %171 = load i32, ptr %134, align 4, !tbaa !115
  %172 = sext i32 %171 to i64
  %173 = shl nsw i64 %172, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %159, ptr align 2 %170, i64 %173, i1 false)
  %174 = load i32, ptr %135, align 8, !tbaa !14
  %175 = icmp eq i32 %174, 3
  %176 = select i1 %175, i1 %137, i1 false
  %177 = select i1 %176, i1 %139, i1 false
  br i1 %177, label %178, label %205

178:                                              ; preds = %142
  %179 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_U, i64 0, i64 %143
  %180 = load ptr, ptr %140, align 8, !tbaa !6
  %181 = load i32, ptr %132, align 4, !tbaa !113
  %182 = add nsw i32 %181, %148
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %180, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i32, ptr %133, align 8, !tbaa !124
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  %189 = load i32, ptr %134, align 4, !tbaa !115
  %190 = sext i32 %189 to i64
  %191 = shl nsw i64 %190, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %179, ptr align 4 %188, i64 %191, i1 false)
  %192 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_V, i64 0, i64 %143
  %193 = load ptr, ptr %141, align 8, !tbaa !6
  %194 = load i32, ptr %132, align 4, !tbaa !113
  %195 = add nsw i32 %194, %148
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %193, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !6
  %199 = load i32, ptr %133, align 8, !tbaa !124
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %198, i64 %200
  %202 = load i32, ptr %134, align 4, !tbaa !115
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %192, ptr align 4 %201, i64 %204, i1 false)
  br label %205

205:                                              ; preds = %142, %178
  %206 = add nuw nsw i64 %143, 1
  %207 = load i32, ptr %126, align 8, !tbaa !111
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %142, label %210

210:                                              ; preds = %205, %125, %120
  %211 = load ptr, ptr @input, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %211, i64 3136
  %213 = load i32, ptr %212, align 8, !tbaa !75
  %214 = icmp eq i32 %213, 3
  br i1 %214, label %215, label %318

215:                                              ; preds = %210
  %216 = getelementptr inbounds i8, ptr %121, i64 24
  %217 = load i32, ptr %216, align 8, !tbaa !14
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %318, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds i8, ptr %211, i64 3576
  %221 = load i32, ptr %220, align 8, !tbaa !84
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %318

223:                                              ; preds = %219
  %224 = getelementptr inbounds i8, ptr %121, i64 156
  %225 = load i32, ptr %224, align 4, !tbaa !27
  %226 = getelementptr inbounds i8, ptr %121, i64 152
  %227 = load i32, ptr %226, align 8, !tbaa !26
  %228 = load ptr, ptr @decs, align 8, !tbaa !6
  %229 = getelementptr inbounds i8, ptr %228, i64 8
  %230 = load ptr, ptr %229, align 8, !tbaa !85
  %231 = getelementptr inbounds i8, ptr %228, i64 24
  %232 = load ptr, ptr %231, align 8, !tbaa !125
  %233 = sext i32 %227 to i64
  %234 = sext i32 %225 to i64
  %235 = zext nneg i32 %221 to i64
  %236 = add nsw i32 %225, 15
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %233, 1
  %239 = add nsw i64 %233, 2
  %240 = add nsw i64 %233, 3
  %241 = add nsw i64 %233, 4
  %242 = add nsw i64 %233, 5
  %243 = add nsw i64 %233, 6
  %244 = add nsw i64 %233, 7
  %245 = add nsw i64 %233, 8
  %246 = add nsw i64 %233, 9
  %247 = add nsw i64 %233, 10
  %248 = add nsw i64 %233, 11
  %249 = add nsw i64 %233, 12
  %250 = add nsw i64 %233, 13
  %251 = add nsw i64 %233, 14
  %252 = add nsw i64 %233, 15
  br label %253

253:                                              ; preds = %223, %315
  %254 = phi i64 [ 0, %223 ], [ %316, %315 ]
  %255 = getelementptr inbounds ptr, ptr %230, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds ptr, ptr %232, i64 %254
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  br label %259

259:                                              ; preds = %253, %259
  %260 = phi i64 [ %234, %253 ], [ %313, %259 ]
  %261 = getelementptr inbounds ptr, ptr %258, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  %263 = getelementptr inbounds ptr, ptr %256, i64 %260
  %264 = load ptr, ptr %263, align 8, !tbaa !6
  %265 = getelementptr inbounds i16, ptr %264, i64 %233
  %266 = load i16, ptr %265, align 2, !tbaa !25
  %267 = getelementptr inbounds i16, ptr %262, i64 %233
  store i16 %266, ptr %267, align 2, !tbaa !25
  %268 = getelementptr inbounds i16, ptr %264, i64 %238
  %269 = load i16, ptr %268, align 2, !tbaa !25
  %270 = getelementptr inbounds i16, ptr %262, i64 %238
  store i16 %269, ptr %270, align 2, !tbaa !25
  %271 = getelementptr inbounds i16, ptr %264, i64 %239
  %272 = load i16, ptr %271, align 2, !tbaa !25
  %273 = getelementptr inbounds i16, ptr %262, i64 %239
  store i16 %272, ptr %273, align 2, !tbaa !25
  %274 = getelementptr inbounds i16, ptr %264, i64 %240
  %275 = load i16, ptr %274, align 2, !tbaa !25
  %276 = getelementptr inbounds i16, ptr %262, i64 %240
  store i16 %275, ptr %276, align 2, !tbaa !25
  %277 = getelementptr inbounds i16, ptr %264, i64 %241
  %278 = load i16, ptr %277, align 2, !tbaa !25
  %279 = getelementptr inbounds i16, ptr %262, i64 %241
  store i16 %278, ptr %279, align 2, !tbaa !25
  %280 = getelementptr inbounds i16, ptr %264, i64 %242
  %281 = load i16, ptr %280, align 2, !tbaa !25
  %282 = getelementptr inbounds i16, ptr %262, i64 %242
  store i16 %281, ptr %282, align 2, !tbaa !25
  %283 = getelementptr inbounds i16, ptr %264, i64 %243
  %284 = load i16, ptr %283, align 2, !tbaa !25
  %285 = getelementptr inbounds i16, ptr %262, i64 %243
  store i16 %284, ptr %285, align 2, !tbaa !25
  %286 = getelementptr inbounds i16, ptr %264, i64 %244
  %287 = load i16, ptr %286, align 2, !tbaa !25
  %288 = getelementptr inbounds i16, ptr %262, i64 %244
  store i16 %287, ptr %288, align 2, !tbaa !25
  %289 = getelementptr inbounds i16, ptr %264, i64 %245
  %290 = load i16, ptr %289, align 2, !tbaa !25
  %291 = getelementptr inbounds i16, ptr %262, i64 %245
  store i16 %290, ptr %291, align 2, !tbaa !25
  %292 = getelementptr inbounds i16, ptr %264, i64 %246
  %293 = load i16, ptr %292, align 2, !tbaa !25
  %294 = getelementptr inbounds i16, ptr %262, i64 %246
  store i16 %293, ptr %294, align 2, !tbaa !25
  %295 = getelementptr inbounds i16, ptr %264, i64 %247
  %296 = load i16, ptr %295, align 2, !tbaa !25
  %297 = getelementptr inbounds i16, ptr %262, i64 %247
  store i16 %296, ptr %297, align 2, !tbaa !25
  %298 = getelementptr inbounds i16, ptr %264, i64 %248
  %299 = load i16, ptr %298, align 2, !tbaa !25
  %300 = getelementptr inbounds i16, ptr %262, i64 %248
  store i16 %299, ptr %300, align 2, !tbaa !25
  %301 = getelementptr inbounds i16, ptr %264, i64 %249
  %302 = load i16, ptr %301, align 2, !tbaa !25
  %303 = getelementptr inbounds i16, ptr %262, i64 %249
  store i16 %302, ptr %303, align 2, !tbaa !25
  %304 = getelementptr inbounds i16, ptr %264, i64 %250
  %305 = load i16, ptr %304, align 2, !tbaa !25
  %306 = getelementptr inbounds i16, ptr %262, i64 %250
  store i16 %305, ptr %306, align 2, !tbaa !25
  %307 = getelementptr inbounds i16, ptr %264, i64 %251
  %308 = load i16, ptr %307, align 2, !tbaa !25
  %309 = getelementptr inbounds i16, ptr %262, i64 %251
  store i16 %308, ptr %309, align 2, !tbaa !25
  %310 = getelementptr inbounds i16, ptr %264, i64 %252
  %311 = load i16, ptr %310, align 2, !tbaa !25
  %312 = getelementptr inbounds i16, ptr %262, i64 %252
  store i16 %311, ptr %312, align 2, !tbaa !25
  %313 = add nsw i64 %260, 1
  %314 = icmp slt i64 %260, %237
  br i1 %314, label %259, label %315

315:                                              ; preds = %259
  %316 = add nuw nsw i64 %254, 1
  %317 = icmp eq i64 %316, %235
  br i1 %317, label %318, label %253

318:                                              ; preds = %315, %219, %215, %210
  %319 = icmp ne i32 %0, 0
  %320 = select i1 %319, i1 true, i1 %11
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load ptr, ptr @cofAC, align 8, !tbaa !6
  %323 = getelementptr inbounds i8, ptr %121, i64 14136
  %324 = load ptr, ptr %323, align 8, !tbaa !53
  store ptr %324, ptr @cofAC, align 8, !tbaa !6
  store ptr %322, ptr %323, align 8, !tbaa !53
  %325 = load ptr, ptr @cofDC, align 8, !tbaa !6
  %326 = getelementptr inbounds i8, ptr %121, i64 14144
  %327 = load ptr, ptr %326, align 8, !tbaa !126
  store ptr %327, ptr @cofDC, align 8, !tbaa !6
  store ptr %325, ptr %326, align 8, !tbaa !126
  %328 = getelementptr inbounds i8, ptr %8, i64 364
  %329 = load i32, ptr %328, align 4, !tbaa !93
  %330 = getelementptr inbounds i8, ptr %8, i64 368
  %331 = load i64, ptr %330, align 8, !tbaa !99
  br label %332

332:                                              ; preds = %318, %321
  %333 = phi i32 [ %329, %321 ], [ 0, %318 ]
  %334 = phi i64 [ %331, %321 ], [ 0, %318 ]
  store i32 %333, ptr @cbp, align 4
  store i64 %334, ptr @cbp_blk, align 8, !tbaa !62
  %335 = getelementptr inbounds i8, ptr %8, i64 468
  %336 = load i32, ptr %335, align 4, !tbaa !89
  store i32 %336, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !38
  %337 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %338 = getelementptr inbounds i8, ptr %337, i64 6480
  %339 = getelementptr inbounds i8, ptr %121, i64 148
  %340 = getelementptr inbounds i8, ptr %121, i64 144
  %341 = load ptr, ptr %338, align 8, !tbaa !90
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = load i32, ptr %339, align 4, !tbaa !23
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds ptr, ptr %342, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !6
  %347 = load i32, ptr %340, align 8, !tbaa !24
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %346, i64 %348
  %350 = load i32, ptr %349, align 1
  store i32 %350, ptr @frefframe, align 4
  %351 = load ptr, ptr %341, align 8, !tbaa !6
  %352 = add nsw i32 %343, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds ptr, ptr %351, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !6
  %356 = getelementptr inbounds i8, ptr %355, i64 %348
  %357 = load i32, ptr %356, align 1
  store i32 %357, ptr getelementptr inbounds (i8, ptr @frefframe, i64 4), align 4
  %358 = load ptr, ptr %341, align 8, !tbaa !6
  %359 = add nsw i32 %343, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %358, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  %363 = getelementptr inbounds i8, ptr %362, i64 %348
  %364 = load i32, ptr %363, align 1
  store i32 %364, ptr getelementptr inbounds (i8, ptr @frefframe, i64 8), align 4
  %365 = load ptr, ptr %341, align 8, !tbaa !6
  %366 = add nsw i32 %343, 3
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds ptr, ptr %365, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !6
  %370 = getelementptr inbounds i8, ptr %369, i64 %348
  %371 = load i32, ptr %370, align 1
  store i32 %371, ptr getelementptr inbounds (i8, ptr @frefframe, i64 12), align 4
  br i1 %11, label %372, label %392

372:                                              ; preds = %332
  %373 = getelementptr inbounds i8, ptr %341, i64 8
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = getelementptr inbounds ptr, ptr %374, i64 %344
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 %348
  %378 = load i32, ptr %377, align 1
  store i32 %378, ptr @brefframe, align 4
  %379 = getelementptr inbounds ptr, ptr %374, i64 %353
  %380 = load ptr, ptr %379, align 8, !tbaa !6
  %381 = getelementptr inbounds i8, ptr %380, i64 %348
  %382 = load i32, ptr %381, align 1
  store i32 %382, ptr getelementptr inbounds (i8, ptr @brefframe, i64 4), align 4
  %383 = getelementptr inbounds ptr, ptr %374, i64 %360
  %384 = load ptr, ptr %383, align 8, !tbaa !6
  %385 = getelementptr inbounds i8, ptr %384, i64 %348
  %386 = load i32, ptr %385, align 1
  store i32 %386, ptr getelementptr inbounds (i8, ptr @brefframe, i64 8), align 4
  %387 = load ptr, ptr %373, align 8, !tbaa !6
  %388 = getelementptr inbounds ptr, ptr %387, i64 %367
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  %390 = getelementptr inbounds i8, ptr %389, i64 %348
  %391 = load i32, ptr %390, align 1
  store i32 %391, ptr getelementptr inbounds (i8, ptr @brefframe, i64 12), align 4
  br label %392

392:                                              ; preds = %372, %332
  ret void
}

; Function Attrs: nounwind
define dso_local void @set_stored_macroblock_parameters() local_unnamed_addr #0 {
  %1 = alloca %struct.RD_8x8DATA, align 4
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31576
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %2, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = sext i32 %6 to i64
  %8 = load i16, ptr @best_mode, align 2, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %2, i64 104
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 6424
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds i8, ptr %13, i64 6464
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  br label %18

18:                                               ; preds = %0, %67
  %19 = phi ptr [ %2, %0 ], [ %68, %67 ]
  %20 = phi i64 [ 0, %0 ], [ %69, %67 ]
  %21 = getelementptr inbounds i8, ptr %19, i64 156
  %22 = load i32, ptr %21, align 4, !tbaa !27
  %23 = trunc nuw nsw i64 %20 to i32
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %15, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %19, i64 152
  %29 = load i32, ptr %28, align 8, !tbaa !26
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  %32 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbY, i64 0, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %31, ptr noundef nonnull align 2 dereferenceable(32) %32, i64 32, i1 false)
  %33 = load ptr, ptr @img, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 24
  %35 = load i32, ptr %34, align 8, !tbaa !14
  %36 = icmp eq i32 %35, 3
  %37 = load i32, ptr @si_frame_indicator, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  %40 = load i32, ptr @sp2_frame_indicator, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %57

43:                                               ; preds = %18
  %44 = load ptr, ptr @lrec, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %33, i64 156
  %46 = load i32, ptr %45, align 4, !tbaa !27
  %47 = add nsw i32 %46, %23
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %44, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %33, i64 152
  %52 = load i32, ptr %51, align 8, !tbaa !26
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %50, i64 %53
  %55 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec, i64 0, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %54, ptr noundef nonnull align 4 dereferenceable(64) %55, i64 64, i1 false)
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %43, %18
  %58 = phi ptr [ %56, %43 ], [ %33, %18 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 90220
  %60 = load i32, ptr %59, align 4, !tbaa !102
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  %65 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 2 dereferenceable(32) %32, i64 32, i1 false)
  %66 = load ptr, ptr @img, align 8, !tbaa !6
  br label %67

67:                                               ; preds = %57, %62
  %68 = phi ptr [ %58, %57 ], [ %66, %62 ]
  %69 = add nuw nsw i64 %20, 1
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %71, label %18

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %7
  %73 = sext i16 %8 to i32
  %74 = icmp eq i32 %10, 1
  %75 = getelementptr inbounds i8, ptr %68, i64 90212
  %76 = load i32, ptr %75, align 4, !tbaa !79
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !38
  tail call void @update_offset_params(i32 noundef signext %73, i32 noundef signext %79)
  %80 = load ptr, ptr @img, align 8, !tbaa !6
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi ptr [ %80, %78 ], [ %68, %71 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 90548
  %84 = load i32, ptr %83, align 4, !tbaa !110
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %206, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %82, i64 90560
  %88 = load i32, ptr %87, align 8, !tbaa !111
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %206

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %17, i64 8
  br label %92

92:                                               ; preds = %90, %199
  %93 = phi i64 [ 0, %90 ], [ %201, %199 ]
  %94 = phi ptr [ %82, %90 ], [ %200, %199 ]
  %95 = load ptr, ptr %17, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %94, i64 164
  %97 = load i32, ptr %96, align 4, !tbaa !113
  %98 = trunc nuw nsw i64 %93 to i32
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %95, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %94, i64 160
  %104 = load i32, ptr %103, align 8, !tbaa !124
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %102, i64 %105
  %107 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %93
  %108 = getelementptr inbounds i8, ptr %94, i64 90556
  %109 = load i32, ptr %108, align 4, !tbaa !115
  %110 = sext i32 %109 to i64
  %111 = shl nsw i64 %110, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr nonnull align 2 %107, i64 %111, i1 false)
  %112 = load ptr, ptr %91, align 8, !tbaa !6
  %113 = load ptr, ptr @img, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %113, i64 164
  %115 = load i32, ptr %114, align 4, !tbaa !113
  %116 = add nsw i32 %115, %98
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %112, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %113, i64 160
  %121 = load i32, ptr %120, align 8, !tbaa !124
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, ptr %119, i64 %122
  %124 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %93
  %125 = getelementptr inbounds i8, ptr %113, i64 90556
  %126 = load i32, ptr %125, align 4, !tbaa !115
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %123, ptr nonnull align 2 %124, i64 %128, i1 false)
  %129 = load ptr, ptr @img, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 24
  %131 = load i32, ptr %130, align 8, !tbaa !14
  %132 = icmp ne i32 %131, 3
  %133 = load i32, ptr @si_frame_indicator, align 4
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %132, i1 true, i1 %134
  %136 = load i32, ptr @sp2_frame_indicator, align 4
  %137 = icmp ne i32 %136, 0
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %177, label %139

139:                                              ; preds = %92
  %140 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %129, i64 164
  %143 = load i32, ptr %142, align 4, !tbaa !113
  %144 = add nsw i32 %143, %98
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %141, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %129, i64 160
  %149 = load i32, ptr %148, align 8, !tbaa !124
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %147, i64 %150
  %152 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_U, i64 0, i64 %93
  %153 = getelementptr inbounds i8, ptr %129, i64 90556
  %154 = load i32, ptr %153, align 4, !tbaa !115
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %151, ptr nonnull align 4 %152, i64 %156, i1 false)
  %157 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %157, i64 8
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load ptr, ptr @img, align 8, !tbaa !6
  %161 = getelementptr inbounds i8, ptr %160, i64 164
  %162 = load i32, ptr %161, align 4, !tbaa !113
  %163 = add nsw i32 %162, %98
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %159, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds i8, ptr %160, i64 160
  %168 = load i32, ptr %167, align 8, !tbaa !124
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %166, i64 %169
  %171 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_V, i64 0, i64 %93
  %172 = getelementptr inbounds i8, ptr %160, i64 90556
  %173 = load i32, ptr %172, align 4, !tbaa !115
  %174 = sext i32 %173 to i64
  %175 = shl nsw i64 %174, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %170, ptr nonnull align 4 %171, i64 %175, i1 false)
  %176 = load ptr, ptr @img, align 8, !tbaa !6
  br label %177

177:                                              ; preds = %139, %92
  %178 = phi ptr [ %176, %139 ], [ %129, %92 ]
  %179 = getelementptr inbounds i8, ptr %178, i64 90220
  %180 = load i32, ptr %179, align 4, !tbaa !102
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %177
  %183 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %184 = getelementptr inbounds i8, ptr %183, i64 520
  %185 = getelementptr inbounds [16 x [16 x i16]], ptr %184, i64 0, i64 %93
  %186 = getelementptr inbounds i8, ptr %178, i64 90556
  %187 = load i32, ptr %186, align 4, !tbaa !115
  %188 = sext i32 %187 to i64
  %189 = shl nsw i64 %188, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %185, ptr nonnull align 2 %107, i64 %189, i1 false)
  %190 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %191 = getelementptr inbounds i8, ptr %190, i64 1032
  %192 = getelementptr inbounds [16 x [16 x i16]], ptr %191, i64 0, i64 %93
  %193 = load ptr, ptr @img, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %193, i64 90556
  %195 = load i32, ptr %194, align 4, !tbaa !115
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %192, ptr nonnull align 2 %124, i64 %197, i1 false)
  %198 = load ptr, ptr @img, align 8, !tbaa !6
  br label %199

199:                                              ; preds = %177, %182
  %200 = phi ptr [ %178, %177 ], [ %198, %182 ]
  %201 = add nuw nsw i64 %93, 1
  %202 = getelementptr inbounds i8, ptr %200, i64 90560
  %203 = load i32, ptr %202, align 8, !tbaa !111
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %92, label %206

206:                                              ; preds = %199, %86, %81
  %207 = phi ptr [ %82, %86 ], [ %82, %81 ], [ %200, %199 ]
  %208 = load ptr, ptr @cofAC, align 8, !tbaa !6
  %209 = getelementptr inbounds i8, ptr %207, i64 14136
  %210 = load ptr, ptr %209, align 8, !tbaa !53
  store ptr %210, ptr @cofAC, align 8, !tbaa !6
  store ptr %208, ptr %209, align 8, !tbaa !53
  %211 = load ptr, ptr @cofDC, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %207, i64 14144
  %213 = load ptr, ptr %212, align 8, !tbaa !126
  store ptr %213, ptr @cofDC, align 8, !tbaa !6
  store ptr %211, ptr %212, align 8, !tbaa !126
  %214 = load i32, ptr @cbp, align 4, !tbaa !38
  %215 = getelementptr inbounds i8, ptr %72, i64 364
  store i32 %214, ptr %215, align 4, !tbaa !93
  %216 = load i64, ptr @cbp_blk, align 8, !tbaa !62
  %217 = getelementptr inbounds i8, ptr %72, i64 368
  store i64 %216, ptr %217, align 8, !tbaa !99
  %218 = getelementptr inbounds i8, ptr %72, i64 72
  store i32 %73, ptr %218, align 8, !tbaa !57
  %219 = getelementptr inbounds i8, ptr %207, i64 90220
  %220 = load i32, ptr %219, align 4, !tbaa !102
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %468, label %222

222:                                              ; preds = %206
  %223 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %224 = getelementptr inbounds i8, ptr %223, i64 1640
  store i32 %73, ptr %224, align 8, !tbaa !127
  %225 = getelementptr inbounds i8, ptr %207, i64 90196
  %226 = load i32, ptr %225, align 4, !tbaa !117
  %227 = getelementptr inbounds i8, ptr %223, i64 1696
  store i32 %226, ptr %227, align 8, !tbaa !128
  %228 = load i32, ptr @cbp, align 4, !tbaa !38
  %229 = getelementptr inbounds i8, ptr %223, i64 1624
  store i32 %228, ptr %229, align 8, !tbaa !129
  %230 = getelementptr inbounds i8, ptr %223, i64 1632
  store i64 %216, ptr %230, align 8, !tbaa !130
  %231 = getelementptr inbounds i8, ptr %223, i64 1560
  store i32 %73, ptr %231, align 8, !tbaa !131
  %232 = getelementptr inbounds i8, ptr %72, i64 488
  %233 = load i32, ptr %232, align 8, !tbaa !132
  %234 = getelementptr inbounds i8, ptr %223, i64 1716
  store i32 %233, ptr %234, align 4, !tbaa !133
  %235 = getelementptr inbounds i8, ptr %72, i64 492
  %236 = load i32, ptr %235, align 4, !tbaa !134
  %237 = getelementptr inbounds i8, ptr %223, i64 1720
  store i32 %236, ptr %237, align 8, !tbaa !135
  %238 = getelementptr inbounds i8, ptr %72, i64 8
  %239 = load i32, ptr %238, align 8, !tbaa !136
  %240 = getelementptr inbounds i8, ptr %223, i64 1724
  store i32 %239, ptr %240, align 4, !tbaa !137
  %241 = getelementptr inbounds i8, ptr %72, i64 12
  %242 = load i32, ptr %241, align 4, !tbaa !138
  %243 = getelementptr inbounds i8, ptr %223, i64 1712
  store i32 %242, ptr %243, align 8, !tbaa !139
  %244 = getelementptr inbounds i8, ptr %72, i64 496
  %245 = load i32, ptr %244, align 8, !tbaa !140
  %246 = getelementptr inbounds i8, ptr %223, i64 1728
  store i32 %245, ptr %246, align 8, !tbaa !141
  %247 = getelementptr inbounds i8, ptr %207, i64 90540
  %248 = load i32, ptr %247, align 4, !tbaa !94
  %249 = icmp sgt i32 %248, -4
  br i1 %249, label %250, label %395

250:                                              ; preds = %222, %250
  %251 = phi ptr [ %385, %250 ], [ %207, %222 ]
  %252 = phi i64 [ %384, %250 ], [ 0, %222 ]
  %253 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %254 = getelementptr inbounds i8, ptr %253, i64 1544
  %255 = load ptr, ptr %254, align 8, !tbaa !142
  %256 = getelementptr inbounds ptr, ptr %255, i64 %252
  %257 = load ptr, ptr %256, align 8, !tbaa !6
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  %260 = getelementptr inbounds i8, ptr %251, i64 14136
  %261 = load ptr, ptr %260, align 8, !tbaa !53
  %262 = getelementptr inbounds ptr, ptr %261, i64 %252
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = load ptr, ptr %263, align 8, !tbaa !6
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %259, ptr noundef nonnull align 4 dereferenceable(260) %265, i64 260, i1 false)
  %266 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %267 = getelementptr inbounds i8, ptr %266, i64 1544
  %268 = load ptr, ptr %267, align 8, !tbaa !142
  %269 = getelementptr inbounds ptr, ptr %268, i64 %252
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = load ptr, ptr %270, align 8, !tbaa !6
  %272 = getelementptr inbounds i8, ptr %271, i64 8
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = load ptr, ptr @img, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 14136
  %276 = load ptr, ptr %275, align 8, !tbaa !53
  %277 = getelementptr inbounds ptr, ptr %276, i64 %252
  %278 = load ptr, ptr %277, align 8, !tbaa !6
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %279, i64 8
  %281 = load ptr, ptr %280, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %273, ptr noundef nonnull align 4 dereferenceable(260) %281, i64 260, i1 false)
  %282 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %283 = getelementptr inbounds i8, ptr %282, i64 1544
  %284 = load ptr, ptr %283, align 8, !tbaa !142
  %285 = getelementptr inbounds ptr, ptr %284, i64 %252
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = getelementptr inbounds i8, ptr %286, i64 8
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = load ptr, ptr @img, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 14136
  %292 = load ptr, ptr %291, align 8, !tbaa !53
  %293 = getelementptr inbounds ptr, ptr %292, i64 %252
  %294 = load ptr, ptr %293, align 8, !tbaa !6
  %295 = getelementptr inbounds i8, ptr %294, i64 8
  %296 = load ptr, ptr %295, align 8, !tbaa !6
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %289, ptr noundef nonnull align 4 dereferenceable(260) %297, i64 260, i1 false)
  %298 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %299 = getelementptr inbounds i8, ptr %298, i64 1544
  %300 = load ptr, ptr %299, align 8, !tbaa !142
  %301 = getelementptr inbounds ptr, ptr %300, i64 %252
  %302 = load ptr, ptr %301, align 8, !tbaa !6
  %303 = getelementptr inbounds i8, ptr %302, i64 8
  %304 = load ptr, ptr %303, align 8, !tbaa !6
  %305 = getelementptr inbounds i8, ptr %304, i64 8
  %306 = load ptr, ptr %305, align 8, !tbaa !6
  %307 = load ptr, ptr @img, align 8, !tbaa !6
  %308 = getelementptr inbounds i8, ptr %307, i64 14136
  %309 = load ptr, ptr %308, align 8, !tbaa !53
  %310 = getelementptr inbounds ptr, ptr %309, i64 %252
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = getelementptr inbounds i8, ptr %311, i64 8
  %313 = load ptr, ptr %312, align 8, !tbaa !6
  %314 = getelementptr inbounds i8, ptr %313, i64 8
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %306, ptr noundef nonnull align 4 dereferenceable(260) %315, i64 260, i1 false)
  %316 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %317 = getelementptr inbounds i8, ptr %316, i64 1544
  %318 = load ptr, ptr %317, align 8, !tbaa !142
  %319 = getelementptr inbounds ptr, ptr %318, i64 %252
  %320 = load ptr, ptr %319, align 8, !tbaa !6
  %321 = getelementptr inbounds i8, ptr %320, i64 16
  %322 = load ptr, ptr %321, align 8, !tbaa !6
  %323 = load ptr, ptr %322, align 8, !tbaa !6
  %324 = load ptr, ptr @img, align 8, !tbaa !6
  %325 = getelementptr inbounds i8, ptr %324, i64 14136
  %326 = load ptr, ptr %325, align 8, !tbaa !53
  %327 = getelementptr inbounds ptr, ptr %326, i64 %252
  %328 = load ptr, ptr %327, align 8, !tbaa !6
  %329 = getelementptr inbounds i8, ptr %328, i64 16
  %330 = load ptr, ptr %329, align 8, !tbaa !6
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %323, ptr noundef nonnull align 4 dereferenceable(260) %331, i64 260, i1 false)
  %332 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %333 = getelementptr inbounds i8, ptr %332, i64 1544
  %334 = load ptr, ptr %333, align 8, !tbaa !142
  %335 = getelementptr inbounds ptr, ptr %334, i64 %252
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %336, i64 16
  %338 = load ptr, ptr %337, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 8
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = load ptr, ptr @img, align 8, !tbaa !6
  %342 = getelementptr inbounds i8, ptr %341, i64 14136
  %343 = load ptr, ptr %342, align 8, !tbaa !53
  %344 = getelementptr inbounds ptr, ptr %343, i64 %252
  %345 = load ptr, ptr %344, align 8, !tbaa !6
  %346 = getelementptr inbounds i8, ptr %345, i64 16
  %347 = load ptr, ptr %346, align 8, !tbaa !6
  %348 = getelementptr inbounds i8, ptr %347, i64 8
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %340, ptr noundef nonnull align 4 dereferenceable(260) %349, i64 260, i1 false)
  %350 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %351 = getelementptr inbounds i8, ptr %350, i64 1544
  %352 = load ptr, ptr %351, align 8, !tbaa !142
  %353 = getelementptr inbounds ptr, ptr %352, i64 %252
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds i8, ptr %354, i64 24
  %356 = load ptr, ptr %355, align 8, !tbaa !6
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = load ptr, ptr @img, align 8, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %358, i64 14136
  %360 = load ptr, ptr %359, align 8, !tbaa !53
  %361 = getelementptr inbounds ptr, ptr %360, i64 %252
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  %363 = getelementptr inbounds i8, ptr %362, i64 24
  %364 = load ptr, ptr %363, align 8, !tbaa !6
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %357, ptr noundef nonnull align 4 dereferenceable(260) %365, i64 260, i1 false)
  %366 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %367 = getelementptr inbounds i8, ptr %366, i64 1544
  %368 = load ptr, ptr %367, align 8, !tbaa !142
  %369 = getelementptr inbounds ptr, ptr %368, i64 %252
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 24
  %372 = load ptr, ptr %371, align 8, !tbaa !6
  %373 = getelementptr inbounds i8, ptr %372, i64 8
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = load ptr, ptr @img, align 8, !tbaa !6
  %376 = getelementptr inbounds i8, ptr %375, i64 14136
  %377 = load ptr, ptr %376, align 8, !tbaa !53
  %378 = getelementptr inbounds ptr, ptr %377, i64 %252
  %379 = load ptr, ptr %378, align 8, !tbaa !6
  %380 = getelementptr inbounds i8, ptr %379, i64 24
  %381 = load ptr, ptr %380, align 8, !tbaa !6
  %382 = getelementptr inbounds i8, ptr %381, i64 8
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %374, ptr noundef nonnull align 4 dereferenceable(260) %383, i64 260, i1 false)
  %384 = add nuw nsw i64 %252, 1
  %385 = load ptr, ptr @img, align 8, !tbaa !6
  %386 = getelementptr inbounds i8, ptr %385, i64 90540
  %387 = load i32, ptr %386, align 4, !tbaa !94
  %388 = add nsw i32 %387, 3
  %389 = sext i32 %388 to i64
  %390 = icmp slt i64 %252, %389
  br i1 %390, label %250, label %391

391:                                              ; preds = %250
  %392 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %393 = getelementptr inbounds i8, ptr %385, i64 14144
  %394 = load ptr, ptr %393, align 8, !tbaa !126
  br label %395

395:                                              ; preds = %391, %222
  %396 = phi ptr [ %394, %391 ], [ %211, %222 ]
  %397 = phi ptr [ %392, %391 ], [ %223, %222 ]
  %398 = getelementptr inbounds i8, ptr %397, i64 1552
  %399 = load ptr, ptr %398, align 8, !tbaa !143
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = load ptr, ptr %400, align 8, !tbaa !6
  %402 = load ptr, ptr %396, align 8, !tbaa !6
  %403 = load ptr, ptr %402, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %401, ptr noundef nonnull align 4 dereferenceable(72) %403, i64 72, i1 false)
  %404 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %405 = getelementptr inbounds i8, ptr %404, i64 1552
  %406 = load ptr, ptr %405, align 8, !tbaa !143
  %407 = load ptr, ptr %406, align 8, !tbaa !6
  %408 = getelementptr inbounds i8, ptr %407, i64 8
  %409 = load ptr, ptr %408, align 8, !tbaa !6
  %410 = load ptr, ptr @img, align 8, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %410, i64 14144
  %412 = load ptr, ptr %411, align 8, !tbaa !126
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %413, i64 8
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %409, ptr noundef nonnull align 4 dereferenceable(72) %415, i64 72, i1 false)
  %416 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %417 = getelementptr inbounds i8, ptr %416, i64 1552
  %418 = load ptr, ptr %417, align 8, !tbaa !143
  %419 = getelementptr inbounds i8, ptr %418, i64 8
  %420 = load ptr, ptr %419, align 8, !tbaa !6
  %421 = load ptr, ptr %420, align 8, !tbaa !6
  %422 = load ptr, ptr @img, align 8, !tbaa !6
  %423 = getelementptr inbounds i8, ptr %422, i64 14144
  %424 = load ptr, ptr %423, align 8, !tbaa !126
  %425 = getelementptr inbounds i8, ptr %424, i64 8
  %426 = load ptr, ptr %425, align 8, !tbaa !6
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %421, ptr noundef nonnull align 4 dereferenceable(72) %427, i64 72, i1 false)
  %428 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %429 = getelementptr inbounds i8, ptr %428, i64 1552
  %430 = load ptr, ptr %429, align 8, !tbaa !143
  %431 = getelementptr inbounds i8, ptr %430, i64 8
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  %433 = getelementptr inbounds i8, ptr %432, i64 8
  %434 = load ptr, ptr %433, align 8, !tbaa !6
  %435 = load ptr, ptr @img, align 8, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %435, i64 14144
  %437 = load ptr, ptr %436, align 8, !tbaa !126
  %438 = getelementptr inbounds i8, ptr %437, i64 8
  %439 = load ptr, ptr %438, align 8, !tbaa !6
  %440 = getelementptr inbounds i8, ptr %439, i64 8
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %434, ptr noundef nonnull align 4 dereferenceable(72) %441, i64 72, i1 false)
  %442 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %443 = getelementptr inbounds i8, ptr %442, i64 1552
  %444 = load ptr, ptr %443, align 8, !tbaa !143
  %445 = getelementptr inbounds i8, ptr %444, i64 16
  %446 = load ptr, ptr %445, align 8, !tbaa !6
  %447 = load ptr, ptr %446, align 8, !tbaa !6
  %448 = load ptr, ptr @img, align 8, !tbaa !6
  %449 = getelementptr inbounds i8, ptr %448, i64 14144
  %450 = load ptr, ptr %449, align 8, !tbaa !126
  %451 = getelementptr inbounds i8, ptr %450, i64 16
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = load ptr, ptr %452, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %447, ptr noundef nonnull align 4 dereferenceable(72) %453, i64 72, i1 false)
  %454 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %455 = getelementptr inbounds i8, ptr %454, i64 1552
  %456 = load ptr, ptr %455, align 8, !tbaa !143
  %457 = getelementptr inbounds i8, ptr %456, i64 16
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = getelementptr inbounds i8, ptr %458, i64 8
  %460 = load ptr, ptr %459, align 8, !tbaa !6
  %461 = load ptr, ptr @img, align 8, !tbaa !6
  %462 = getelementptr inbounds i8, ptr %461, i64 14144
  %463 = load ptr, ptr %462, align 8, !tbaa !126
  %464 = getelementptr inbounds i8, ptr %463, i64 16
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 8
  %467 = load ptr, ptr %466, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %460, ptr noundef nonnull align 4 dereferenceable(72) %467, i64 72, i1 false)
  br label %468

468:                                              ; preds = %395, %206
  %469 = getelementptr inbounds i8, ptr %72, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %469, ptr noundef nonnull align 4 dereferenceable(16) @b8mode, i64 16, i1 false)
  %470 = getelementptr inbounds i8, ptr %72, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %470, ptr noundef nonnull align 4 dereferenceable(16) @b8pdir, i64 16, i1 false)
  %471 = load ptr, ptr @img, align 8, !tbaa !6
  %472 = getelementptr inbounds i8, ptr %471, i64 90220
  %473 = load i32, ptr %472, align 4, !tbaa !102
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %479, label %475

475:                                              ; preds = %468
  %476 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %477 = getelementptr inbounds i8, ptr %476, i64 1568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %477, ptr noundef nonnull align 4 dereferenceable(16) @b8mode, i64 16, i1 false)
  %478 = getelementptr inbounds i8, ptr %476, i64 1584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %478, ptr noundef nonnull align 4 dereferenceable(16) @b8pdir, i64 16, i1 false)
  br label %479

479:                                              ; preds = %475, %468
  %480 = load i32, ptr %218, align 8, !tbaa !57
  %481 = icmp eq i32 %480, 1
  %482 = load i16, ptr @bi_pred_me, align 2
  %483 = select i1 %481, i16 %482, i16 0
  %484 = getelementptr inbounds i8, ptr %72, i64 476
  store i16 %483, ptr %484, align 4, !tbaa !83
  %485 = icmp ne i16 %8, 8
  %486 = load i32, ptr @luma_transform_size_8x8_flag, align 4
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %485, i1 true, i1 %487
  br i1 %488, label %499, label %489

489:                                              ; preds = %479
  %490 = load ptr, ptr @input, align 8, !tbaa !6
  %491 = getelementptr inbounds i8, ptr %490, i64 3892
  %492 = load i32, ptr %491, align 4, !tbaa !10
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = getelementptr inbounds i8, ptr %471, i64 24
  %496 = load i32, ptr %495, align 8, !tbaa !14
  %497 = icmp eq i32 %496, 1
  %498 = zext i1 %497 to i32
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %1, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 0, ptr noundef nonnull %1, i32 noundef signext %498)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %1, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 1, ptr noundef nonnull %1, i32 noundef signext %498)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %1, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 2, ptr noundef nonnull %1, i32 noundef signext %498)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8220, ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8220) %1, ptr noundef nonnull align 4 dereferenceable(8220) @tr8x8, i64 8220, i1 false), !tbaa.struct !95
  call void @RestoreMVBlock8x8(i32 noundef signext 1, i32 noundef signext 3, ptr noundef nonnull %1, i32 noundef signext %498)
  call void @llvm.lifetime.end.p0(i64 8220, ptr nonnull %1) #15
  br label %499

499:                                              ; preds = %494, %489, %479
  %500 = load i32, ptr %215, align 4, !tbaa !93
  %501 = and i32 %500, 15
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %499
  %504 = load i32, ptr %218, align 8, !tbaa !57
  switch i32 %504, label %507 [
    i32 9, label %505
    i32 13, label %505
  ]

505:                                              ; preds = %503, %503, %499
  %506 = load i32, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !38
  br label %507

507:                                              ; preds = %503, %505
  %508 = phi i32 [ %506, %505 ], [ 0, %503 ]
  %509 = getelementptr inbounds i8, ptr %72, i64 468
  store i32 %508, ptr %509, align 4, !tbaa !89
  %510 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %510, i64 1704
  store i32 %508, ptr %511, align 8, !tbaa !144
  %512 = load ptr, ptr @input, align 8, !tbaa !6
  %513 = getelementptr inbounds i8, ptr %512, i64 3136
  %514 = load i32, ptr %513, align 8, !tbaa !75
  %515 = icmp eq i32 %514, 3
  br i1 %515, label %516, label %535

516:                                              ; preds = %507
  %517 = load ptr, ptr @img, align 8, !tbaa !6
  %518 = getelementptr inbounds i8, ptr %517, i64 24
  %519 = load i32, ptr %518, align 8, !tbaa !14
  %520 = icmp eq i32 %519, 1
  br i1 %520, label %535, label %521

521:                                              ; preds = %516
  %522 = trunc i16 %8 to i8
  %523 = load ptr, ptr @decs, align 8, !tbaa !6
  %524 = getelementptr inbounds i8, ptr %523, i64 48
  %525 = load ptr, ptr %524, align 8, !tbaa !145
  %526 = getelementptr inbounds i8, ptr %517, i64 136
  %527 = load i32, ptr %526, align 8, !tbaa !146
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds ptr, ptr %525, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %517, i64 140
  %532 = load i32, ptr %531, align 4, !tbaa !147
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, ptr %530, i64 %533
  store i8 %522, ptr %534, align 1, !tbaa !20
  br label %535

535:                                              ; preds = %521, %516, %507
  %536 = getelementptr inbounds i8, ptr %72, i64 428
  br label %537

537:                                              ; preds = %535, %750
  %538 = phi i64 [ 0, %535 ], [ %751, %750 ]
  %539 = load ptr, ptr @img, align 8, !tbaa !6
  %540 = getelementptr inbounds i8, ptr %539, i64 148
  %541 = load i32, ptr %540, align 4, !tbaa !23
  %542 = trunc nuw nsw i64 %538 to i32
  %543 = add nsw i32 %541, %542
  %544 = and i64 %538, 2
  %545 = sext i32 %543 to i64
  br label %546

546:                                              ; preds = %537, %747
  %547 = phi i64 [ 0, %537 ], [ %748, %747 ]
  %548 = load ptr, ptr @img, align 8, !tbaa !6
  %549 = getelementptr inbounds i8, ptr %548, i64 144
  %550 = load i32, ptr %549, align 8, !tbaa !24
  %551 = trunc nuw nsw i64 %547 to i32
  %552 = add nsw i32 %550, %551
  %553 = lshr i64 %547, 1
  %554 = and i64 %553, 2147483647
  %555 = or i64 %554, %544
  %556 = getelementptr inbounds [4 x i32], ptr %470, i64 0, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !38
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %561, label %559

559:                                              ; preds = %546
  %560 = load i32, ptr %218, align 8, !tbaa !57
  switch i32 %560, label %589 [
    i32 9, label %561
    i32 10, label %561
    i32 13, label %561
    i32 14, label %561
  ]

561:                                              ; preds = %559, %559, %559, %559, %546
  %562 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %563 = getelementptr inbounds i8, ptr %562, i64 6480
  %564 = load ptr, ptr %563, align 8, !tbaa !90
  %565 = load ptr, ptr %564, align 8, !tbaa !6
  %566 = getelementptr inbounds ptr, ptr %565, i64 %545
  %567 = load ptr, ptr %566, align 8, !tbaa !6
  %568 = sext i32 %552 to i64
  %569 = getelementptr inbounds i8, ptr %567, i64 %568
  store i8 -1, ptr %569, align 1, !tbaa !20
  %570 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %571 = getelementptr inbounds i8, ptr %570, i64 6488
  %572 = load ptr, ptr %571, align 8, !tbaa !92
  %573 = load ptr, ptr %572, align 8, !tbaa !6
  %574 = getelementptr inbounds ptr, ptr %573, i64 %545
  %575 = load ptr, ptr %574, align 8, !tbaa !6
  %576 = getelementptr inbounds i64, ptr %575, i64 %568
  store i64 -1, ptr %576, align 8, !tbaa !62
  %577 = getelementptr inbounds i8, ptr %570, i64 6504
  %578 = load ptr, ptr %577, align 8, !tbaa !101
  %579 = load ptr, ptr %578, align 8, !tbaa !6
  %580 = getelementptr inbounds ptr, ptr %579, i64 %545
  %581 = load ptr, ptr %580, align 8, !tbaa !6
  %582 = getelementptr inbounds ptr, ptr %581, i64 %568
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  store i16 0, ptr %583, align 2, !tbaa !25
  %584 = getelementptr inbounds i8, ptr %583, i64 2
  store i16 0, ptr %584, align 2, !tbaa !25
  %585 = load ptr, ptr @img, align 8, !tbaa !6
  %586 = getelementptr inbounds i8, ptr %585, i64 90220
  %587 = load i32, ptr %586, align 4, !tbaa !102
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %707, label %702

589:                                              ; preds = %559
  %590 = load i16, ptr %484, align 4, !tbaa !83
  %591 = icmp ne i16 %590, 0
  %592 = icmp eq i32 %557, 2
  %593 = and i1 %592, %591
  %594 = icmp eq i32 %560, 1
  %595 = and i1 %594, %593
  br i1 %595, label %596, label %647

596:                                              ; preds = %589
  %597 = icmp eq i16 %590, 1
  %598 = getelementptr inbounds [4 x i32], ptr %469, i64 0, i64 %555
  %599 = load i32, ptr %598, align 4, !tbaa !38
  %600 = sext i32 %599 to i64
  %601 = select i1 %597, i64 89344, i64 89352
  %602 = getelementptr inbounds i8, ptr %548, i64 %601
  %603 = load ptr, ptr %602, align 8, !tbaa !6
  %604 = getelementptr inbounds ptr, ptr %603, i64 %538
  %605 = load ptr, ptr %604, align 8, !tbaa !6
  %606 = getelementptr inbounds ptr, ptr %605, i64 %547
  %607 = load ptr, ptr %606, align 8, !tbaa !6
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = load ptr, ptr %608, align 8, !tbaa !6
  %610 = getelementptr inbounds ptr, ptr %609, i64 %600
  %611 = load ptr, ptr %610, align 8, !tbaa !6
  %612 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %612, i64 6480
  %614 = load ptr, ptr %613, align 8, !tbaa !90
  %615 = load ptr, ptr %614, align 8, !tbaa !6
  %616 = getelementptr inbounds ptr, ptr %615, i64 %545
  %617 = load ptr, ptr %616, align 8, !tbaa !6
  %618 = sext i32 %552 to i64
  %619 = getelementptr inbounds i8, ptr %617, i64 %618
  store i8 0, ptr %619, align 1, !tbaa !20
  %620 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %621 = getelementptr inbounds i8, ptr %620, i64 24
  %622 = load i32, ptr %536, align 4, !tbaa !91
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [6 x [33 x i64]], ptr %621, i64 0, i64 %623
  %625 = load i64, ptr %624, align 8, !tbaa !62
  %626 = getelementptr inbounds i8, ptr %620, i64 6488
  %627 = load ptr, ptr %626, align 8, !tbaa !92
  %628 = load ptr, ptr %627, align 8, !tbaa !6
  %629 = getelementptr inbounds ptr, ptr %628, i64 %545
  %630 = load ptr, ptr %629, align 8, !tbaa !6
  %631 = getelementptr inbounds i64, ptr %630, i64 %618
  store i64 %625, ptr %631, align 8, !tbaa !62
  %632 = load i16, ptr %611, align 2, !tbaa !25
  %633 = getelementptr inbounds i8, ptr %620, i64 6504
  %634 = load ptr, ptr %633, align 8, !tbaa !101
  %635 = load ptr, ptr %634, align 8, !tbaa !6
  %636 = getelementptr inbounds ptr, ptr %635, i64 %545
  %637 = load ptr, ptr %636, align 8, !tbaa !6
  %638 = getelementptr inbounds ptr, ptr %637, i64 %618
  %639 = load ptr, ptr %638, align 8, !tbaa !6
  store i16 %632, ptr %639, align 2, !tbaa !25
  %640 = getelementptr inbounds i8, ptr %611, i64 2
  %641 = load i16, ptr %640, align 2, !tbaa !25
  %642 = getelementptr inbounds i8, ptr %639, i64 2
  store i16 %641, ptr %642, align 2, !tbaa !25
  %643 = load ptr, ptr @img, align 8, !tbaa !6
  %644 = getelementptr inbounds i8, ptr %643, i64 90220
  %645 = load i32, ptr %644, align 4, !tbaa !102
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %707, label %702

647:                                              ; preds = %589
  %648 = getelementptr inbounds i8, ptr %548, i64 89336
  %649 = load ptr, ptr %648, align 8, !tbaa !22
  %650 = getelementptr inbounds ptr, ptr %649, i64 %538
  %651 = load ptr, ptr %650, align 8, !tbaa !6
  %652 = getelementptr inbounds ptr, ptr %651, i64 %547
  %653 = load ptr, ptr %652, align 8, !tbaa !6
  %654 = load ptr, ptr %653, align 8, !tbaa !6
  %655 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %538, i64 %547
  %656 = load i8, ptr %655, align 1, !tbaa !20
  %657 = zext i8 %656 to i64
  %658 = getelementptr inbounds ptr, ptr %654, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !6
  %660 = getelementptr inbounds [4 x i32], ptr %469, i64 0, i64 %555
  %661 = load i32, ptr %660, align 4, !tbaa !38
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds ptr, ptr %659, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !6
  %665 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %665, i64 6480
  %667 = load ptr, ptr %666, align 8, !tbaa !90
  %668 = load ptr, ptr %667, align 8, !tbaa !6
  %669 = getelementptr inbounds ptr, ptr %668, i64 %545
  %670 = load ptr, ptr %669, align 8, !tbaa !6
  %671 = sext i32 %552 to i64
  %672 = getelementptr inbounds i8, ptr %670, i64 %671
  store i8 %656, ptr %672, align 1, !tbaa !20
  %673 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %674 = getelementptr inbounds i8, ptr %673, i64 24
  %675 = load i32, ptr %536, align 4, !tbaa !91
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [6 x [33 x i64]], ptr %674, i64 0, i64 %676, i64 %657
  %678 = load i64, ptr %677, align 8, !tbaa !62
  %679 = getelementptr inbounds i8, ptr %673, i64 6488
  %680 = load ptr, ptr %679, align 8, !tbaa !92
  %681 = load ptr, ptr %680, align 8, !tbaa !6
  %682 = getelementptr inbounds ptr, ptr %681, i64 %545
  %683 = load ptr, ptr %682, align 8, !tbaa !6
  %684 = getelementptr inbounds i64, ptr %683, i64 %671
  store i64 %678, ptr %684, align 8, !tbaa !62
  %685 = load i16, ptr %664, align 2, !tbaa !25
  %686 = getelementptr inbounds i8, ptr %673, i64 6504
  %687 = load ptr, ptr %686, align 8, !tbaa !101
  %688 = load ptr, ptr %687, align 8, !tbaa !6
  %689 = getelementptr inbounds ptr, ptr %688, i64 %545
  %690 = load ptr, ptr %689, align 8, !tbaa !6
  %691 = getelementptr inbounds ptr, ptr %690, i64 %671
  %692 = load ptr, ptr %691, align 8, !tbaa !6
  store i16 %685, ptr %692, align 2, !tbaa !25
  %693 = getelementptr inbounds i8, ptr %664, i64 2
  %694 = load i16, ptr %693, align 2, !tbaa !25
  %695 = getelementptr inbounds i8, ptr %692, i64 2
  store i16 %694, ptr %695, align 2, !tbaa !25
  %696 = load ptr, ptr @img, align 8, !tbaa !6
  %697 = getelementptr inbounds i8, ptr %696, i64 90220
  %698 = load i32, ptr %697, align 4, !tbaa !102
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %707, label %700

700:                                              ; preds = %647
  %701 = load i8, ptr %655, align 1, !tbaa !20
  br label %702

702:                                              ; preds = %596, %561, %700
  %703 = phi i8 [ %701, %700 ], [ -1, %561 ], [ 0, %596 ]
  %704 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %705 = getelementptr inbounds i8, ptr %704, i64 1664
  %706 = getelementptr inbounds [4 x [4 x i8]], ptr %705, i64 0, i64 %538, i64 %547
  store i8 %703, ptr %706, align 1, !tbaa !20
  br label %707

707:                                              ; preds = %702, %596, %647, %561
  %708 = load i32, ptr %556, align 4, !tbaa !38
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %712, label %710

710:                                              ; preds = %707
  %711 = load i32, ptr %218, align 8, !tbaa !57
  switch i32 %711, label %747 [
    i32 9, label %712
    i32 10, label %712
    i32 13, label %712
    i32 14, label %712
  ]

712:                                              ; preds = %710, %710, %710, %710, %707
  %713 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %714 = getelementptr inbounds i8, ptr %713, i64 6480
  %715 = load ptr, ptr %714, align 8, !tbaa !90
  %716 = getelementptr inbounds i8, ptr %715, i64 8
  %717 = load ptr, ptr %716, align 8, !tbaa !6
  %718 = getelementptr inbounds ptr, ptr %717, i64 %545
  %719 = load ptr, ptr %718, align 8, !tbaa !6
  %720 = sext i32 %552 to i64
  %721 = getelementptr inbounds i8, ptr %719, i64 %720
  store i8 -1, ptr %721, align 1, !tbaa !20
  %722 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %723 = getelementptr inbounds i8, ptr %722, i64 6488
  %724 = load ptr, ptr %723, align 8, !tbaa !92
  %725 = getelementptr inbounds i8, ptr %724, i64 8
  %726 = load ptr, ptr %725, align 8, !tbaa !6
  %727 = getelementptr inbounds ptr, ptr %726, i64 %545
  %728 = load ptr, ptr %727, align 8, !tbaa !6
  %729 = getelementptr inbounds i64, ptr %728, i64 %720
  store i64 -1, ptr %729, align 8, !tbaa !62
  %730 = getelementptr inbounds i8, ptr %722, i64 6504
  %731 = load ptr, ptr %730, align 8, !tbaa !101
  %732 = getelementptr inbounds i8, ptr %731, i64 8
  %733 = load ptr, ptr %732, align 8, !tbaa !6
  %734 = getelementptr inbounds ptr, ptr %733, i64 %545
  %735 = load ptr, ptr %734, align 8, !tbaa !6
  %736 = getelementptr inbounds ptr, ptr %735, i64 %720
  %737 = load ptr, ptr %736, align 8, !tbaa !6
  store i16 0, ptr %737, align 2, !tbaa !25
  %738 = getelementptr inbounds i8, ptr %737, i64 2
  store i16 0, ptr %738, align 2, !tbaa !25
  %739 = load ptr, ptr @img, align 8, !tbaa !6
  %740 = getelementptr inbounds i8, ptr %739, i64 90220
  %741 = load i32, ptr %740, align 4, !tbaa !102
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %747, label %743

743:                                              ; preds = %712
  %744 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %745 = getelementptr inbounds i8, ptr %744, i64 1680
  %746 = getelementptr inbounds [4 x [4 x i8]], ptr %745, i64 0, i64 %538, i64 %547
  store i8 -1, ptr %746, align 1, !tbaa !20
  br label %747

747:                                              ; preds = %710, %743, %712
  %748 = add nuw nsw i64 %547, 1
  %749 = icmp eq i64 %748, 4
  br i1 %749, label %750, label %546

750:                                              ; preds = %747
  %751 = add nuw nsw i64 %538, 1
  %752 = icmp eq i64 %751, 4
  br i1 %752, label %753, label %537

753:                                              ; preds = %750
  br i1 %74, label %754, label %943

754:                                              ; preds = %753, %940
  %755 = phi i64 [ %941, %940 ], [ 0, %753 ]
  %756 = load ptr, ptr @img, align 8, !tbaa !6
  %757 = getelementptr inbounds i8, ptr %756, i64 148
  %758 = load i32, ptr %757, align 4, !tbaa !23
  %759 = trunc nuw nsw i64 %755 to i32
  %760 = add nsw i32 %758, %759
  %761 = and i64 %755, 2
  %762 = sext i32 %760 to i64
  br label %763

763:                                              ; preds = %754, %937
  %764 = phi i64 [ 0, %754 ], [ %938, %937 ]
  %765 = load ptr, ptr @img, align 8, !tbaa !6
  %766 = getelementptr inbounds i8, ptr %765, i64 144
  %767 = load i32, ptr %766, align 8, !tbaa !24
  %768 = trunc nuw nsw i64 %764 to i32
  %769 = add nsw i32 %767, %768
  %770 = load i32, ptr %218, align 8, !tbaa !57
  switch i32 %770, label %771 [
    i32 9, label %778
    i32 10, label %778
    i32 13, label %778
    i32 14, label %778
  ]

771:                                              ; preds = %763
  %772 = lshr i64 %764, 1
  %773 = and i64 %772, 2147483647
  %774 = or i64 %773, %761
  %775 = getelementptr inbounds [4 x i32], ptr %470, i64 0, i64 %774
  %776 = load i32, ptr %775, align 4, !tbaa !38
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %809

778:                                              ; preds = %763, %763, %763, %763, %771
  %779 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %780 = getelementptr inbounds i8, ptr %779, i64 6480
  %781 = load ptr, ptr %780, align 8, !tbaa !90
  %782 = getelementptr inbounds i8, ptr %781, i64 8
  %783 = load ptr, ptr %782, align 8, !tbaa !6
  %784 = getelementptr inbounds ptr, ptr %783, i64 %762
  %785 = load ptr, ptr %784, align 8, !tbaa !6
  %786 = sext i32 %769 to i64
  %787 = getelementptr inbounds i8, ptr %785, i64 %786
  store i8 -1, ptr %787, align 1, !tbaa !20
  %788 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %789 = getelementptr inbounds i8, ptr %788, i64 6488
  %790 = load ptr, ptr %789, align 8, !tbaa !92
  %791 = getelementptr inbounds i8, ptr %790, i64 8
  %792 = load ptr, ptr %791, align 8, !tbaa !6
  %793 = getelementptr inbounds ptr, ptr %792, i64 %762
  %794 = load ptr, ptr %793, align 8, !tbaa !6
  %795 = getelementptr inbounds i64, ptr %794, i64 %786
  store i64 -1, ptr %795, align 8, !tbaa !62
  %796 = getelementptr inbounds i8, ptr %788, i64 6504
  %797 = load ptr, ptr %796, align 8, !tbaa !101
  %798 = getelementptr inbounds i8, ptr %797, i64 8
  %799 = load ptr, ptr %798, align 8, !tbaa !6
  %800 = getelementptr inbounds ptr, ptr %799, i64 %762
  %801 = load ptr, ptr %800, align 8, !tbaa !6
  %802 = getelementptr inbounds ptr, ptr %801, i64 %786
  %803 = load ptr, ptr %802, align 8, !tbaa !6
  store i16 0, ptr %803, align 2, !tbaa !25
  %804 = getelementptr inbounds i8, ptr %803, i64 2
  store i16 0, ptr %804, align 2, !tbaa !25
  %805 = load ptr, ptr @img, align 8, !tbaa !6
  %806 = getelementptr inbounds i8, ptr %805, i64 90220
  %807 = load i32, ptr %806, align 4, !tbaa !102
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %937, label %932

809:                                              ; preds = %771
  %810 = load i16, ptr %484, align 4, !tbaa !83
  %811 = icmp ne i16 %810, 0
  %812 = icmp eq i32 %776, 2
  %813 = and i1 %812, %811
  %814 = icmp eq i32 %770, 1
  %815 = and i1 %814, %813
  br i1 %815, label %816, label %872

816:                                              ; preds = %809
  %817 = icmp eq i16 %810, 1
  %818 = getelementptr inbounds [4 x i32], ptr %469, i64 0, i64 %774
  %819 = load i32, ptr %818, align 4, !tbaa !38
  %820 = sext i32 %819 to i64
  %821 = select i1 %817, i64 89344, i64 89352
  %822 = getelementptr inbounds i8, ptr %765, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !6
  %824 = getelementptr inbounds ptr, ptr %823, i64 %755
  %825 = load ptr, ptr %824, align 8, !tbaa !6
  %826 = getelementptr inbounds ptr, ptr %825, i64 %764
  %827 = load ptr, ptr %826, align 8, !tbaa !6
  %828 = getelementptr inbounds i8, ptr %827, i64 8
  %829 = load ptr, ptr %828, align 8, !tbaa !6
  %830 = load ptr, ptr %829, align 8, !tbaa !6
  %831 = getelementptr inbounds ptr, ptr %830, i64 %820
  %832 = load ptr, ptr %831, align 8, !tbaa !6
  %833 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %834 = getelementptr inbounds i8, ptr %833, i64 6480
  %835 = load ptr, ptr %834, align 8, !tbaa !90
  %836 = getelementptr inbounds i8, ptr %835, i64 8
  %837 = load ptr, ptr %836, align 8, !tbaa !6
  %838 = getelementptr inbounds ptr, ptr %837, i64 %762
  %839 = load ptr, ptr %838, align 8, !tbaa !6
  %840 = sext i32 %769 to i64
  %841 = getelementptr inbounds i8, ptr %839, i64 %840
  store i8 0, ptr %841, align 1, !tbaa !20
  %842 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %843 = getelementptr inbounds i8, ptr %842, i64 24
  %844 = load i32, ptr %536, align 4, !tbaa !91
  %845 = add nsw i32 %844, 1
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [6 x [33 x i64]], ptr %843, i64 0, i64 %846
  %848 = load i64, ptr %847, align 8, !tbaa !62
  %849 = getelementptr inbounds i8, ptr %842, i64 6488
  %850 = load ptr, ptr %849, align 8, !tbaa !92
  %851 = getelementptr inbounds i8, ptr %850, i64 8
  %852 = load ptr, ptr %851, align 8, !tbaa !6
  %853 = getelementptr inbounds ptr, ptr %852, i64 %762
  %854 = load ptr, ptr %853, align 8, !tbaa !6
  %855 = getelementptr inbounds i64, ptr %854, i64 %840
  store i64 %848, ptr %855, align 8, !tbaa !62
  %856 = load i16, ptr %832, align 2, !tbaa !25
  %857 = getelementptr inbounds i8, ptr %842, i64 6504
  %858 = load ptr, ptr %857, align 8, !tbaa !101
  %859 = getelementptr inbounds i8, ptr %858, i64 8
  %860 = load ptr, ptr %859, align 8, !tbaa !6
  %861 = getelementptr inbounds ptr, ptr %860, i64 %762
  %862 = load ptr, ptr %861, align 8, !tbaa !6
  %863 = getelementptr inbounds ptr, ptr %862, i64 %840
  %864 = load ptr, ptr %863, align 8, !tbaa !6
  store i16 %856, ptr %864, align 2, !tbaa !25
  %865 = getelementptr inbounds i8, ptr %832, i64 2
  %866 = load i16, ptr %865, align 2, !tbaa !25
  %867 = getelementptr inbounds i8, ptr %864, i64 2
  store i16 %866, ptr %867, align 2, !tbaa !25
  %868 = load ptr, ptr @img, align 8, !tbaa !6
  %869 = getelementptr inbounds i8, ptr %868, i64 90220
  %870 = load i32, ptr %869, align 4, !tbaa !102
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %937, label %932

872:                                              ; preds = %809
  %873 = getelementptr inbounds i8, ptr %765, i64 89336
  %874 = load ptr, ptr %873, align 8, !tbaa !22
  %875 = getelementptr inbounds ptr, ptr %874, i64 %755
  %876 = load ptr, ptr %875, align 8, !tbaa !6
  %877 = getelementptr inbounds ptr, ptr %876, i64 %764
  %878 = load ptr, ptr %877, align 8, !tbaa !6
  %879 = getelementptr inbounds i8, ptr %878, i64 8
  %880 = load ptr, ptr %879, align 8, !tbaa !6
  %881 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %755, i64 %764
  %882 = load i8, ptr %881, align 1, !tbaa !20
  %883 = zext i8 %882 to i64
  %884 = getelementptr inbounds ptr, ptr %880, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !6
  %886 = getelementptr inbounds [4 x i32], ptr %469, i64 0, i64 %774
  %887 = load i32, ptr %886, align 4, !tbaa !38
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds ptr, ptr %885, i64 %888
  %890 = load ptr, ptr %889, align 8, !tbaa !6
  %891 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %892 = getelementptr inbounds i8, ptr %891, i64 6480
  %893 = load ptr, ptr %892, align 8, !tbaa !90
  %894 = getelementptr inbounds i8, ptr %893, i64 8
  %895 = load ptr, ptr %894, align 8, !tbaa !6
  %896 = getelementptr inbounds ptr, ptr %895, i64 %762
  %897 = load ptr, ptr %896, align 8, !tbaa !6
  %898 = sext i32 %769 to i64
  %899 = getelementptr inbounds i8, ptr %897, i64 %898
  store i8 %882, ptr %899, align 1, !tbaa !20
  %900 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %901 = getelementptr inbounds i8, ptr %900, i64 24
  %902 = load i32, ptr %536, align 4, !tbaa !91
  %903 = add nsw i32 %902, 1
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [6 x [33 x i64]], ptr %901, i64 0, i64 %904, i64 %883
  %906 = load i64, ptr %905, align 8, !tbaa !62
  %907 = getelementptr inbounds i8, ptr %900, i64 6488
  %908 = load ptr, ptr %907, align 8, !tbaa !92
  %909 = getelementptr inbounds i8, ptr %908, i64 8
  %910 = load ptr, ptr %909, align 8, !tbaa !6
  %911 = getelementptr inbounds ptr, ptr %910, i64 %762
  %912 = load ptr, ptr %911, align 8, !tbaa !6
  %913 = getelementptr inbounds i64, ptr %912, i64 %898
  store i64 %906, ptr %913, align 8, !tbaa !62
  %914 = load i16, ptr %890, align 2, !tbaa !25
  %915 = getelementptr inbounds i8, ptr %900, i64 6504
  %916 = load ptr, ptr %915, align 8, !tbaa !101
  %917 = getelementptr inbounds i8, ptr %916, i64 8
  %918 = load ptr, ptr %917, align 8, !tbaa !6
  %919 = getelementptr inbounds ptr, ptr %918, i64 %762
  %920 = load ptr, ptr %919, align 8, !tbaa !6
  %921 = getelementptr inbounds ptr, ptr %920, i64 %898
  %922 = load ptr, ptr %921, align 8, !tbaa !6
  store i16 %914, ptr %922, align 2, !tbaa !25
  %923 = getelementptr inbounds i8, ptr %890, i64 2
  %924 = load i16, ptr %923, align 2, !tbaa !25
  %925 = getelementptr inbounds i8, ptr %922, i64 2
  store i16 %924, ptr %925, align 2, !tbaa !25
  %926 = load ptr, ptr @img, align 8, !tbaa !6
  %927 = getelementptr inbounds i8, ptr %926, i64 90220
  %928 = load i32, ptr %927, align 4, !tbaa !102
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %937, label %930

930:                                              ; preds = %872
  %931 = load i8, ptr %881, align 1, !tbaa !20
  br label %932

932:                                              ; preds = %816, %778, %930
  %933 = phi i8 [ %931, %930 ], [ -1, %778 ], [ 0, %816 ]
  %934 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %935 = getelementptr inbounds i8, ptr %934, i64 1680
  %936 = getelementptr inbounds [4 x [4 x i8]], ptr %935, i64 0, i64 %755, i64 %764
  store i8 %933, ptr %936, align 1, !tbaa !20
  br label %937

937:                                              ; preds = %932, %778, %872, %816
  %938 = add nuw nsw i64 %764, 1
  %939 = icmp eq i64 %938, 4
  br i1 %939, label %940, label %763

940:                                              ; preds = %937
  %941 = add nuw nsw i64 %755, 1
  %942 = icmp eq i64 %941, 4
  br i1 %942, label %943, label %754

943:                                              ; preds = %940, %753
  %944 = load i32, ptr @best_c_imode, align 4, !tbaa !38
  %945 = getelementptr inbounds i8, ptr %72, i64 416
  store i32 %944, ptr %945, align 8, !tbaa !61
  %946 = load i32, ptr @best_i16offset, align 4, !tbaa !38
  %947 = load ptr, ptr @img, align 8, !tbaa !6
  %948 = getelementptr inbounds i8, ptr %947, i64 90196
  store i32 %946, ptr %948, align 4, !tbaa !117
  %949 = load i32, ptr %218, align 8, !tbaa !57
  %950 = icmp eq i32 %949, 13
  br i1 %950, label %951, label %982

951:                                              ; preds = %943
  %952 = getelementptr inbounds i8, ptr %72, i64 332
  %953 = getelementptr inbounds i8, ptr %72, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %952, ptr noundef nonnull align 4 dereferenceable(16) %953, i64 16, i1 false)
  %954 = load ptr, ptr @img, align 8, !tbaa !6
  %955 = getelementptr inbounds i8, ptr %954, i64 148
  %956 = load i32, ptr %955, align 4, !tbaa !23
  %957 = sext i32 %956 to i64
  br label %958

958:                                              ; preds = %951, %958
  %959 = phi i64 [ %957, %951 ], [ %975, %958 ]
  %960 = phi ptr [ %954, %951 ], [ %976, %958 ]
  %961 = getelementptr inbounds i8, ptr %960, i64 104
  %962 = load ptr, ptr %961, align 8, !tbaa !68
  %963 = getelementptr inbounds ptr, ptr %962, i64 %959
  %964 = load ptr, ptr %963, align 8, !tbaa !6
  %965 = getelementptr inbounds i8, ptr %960, i64 144
  %966 = load i32, ptr %965, align 8, !tbaa !24
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i8, ptr %964, i64 %967
  %969 = getelementptr inbounds i8, ptr %960, i64 112
  %970 = load ptr, ptr %969, align 8, !tbaa !123
  %971 = getelementptr inbounds ptr, ptr %970, i64 %959
  %972 = load ptr, ptr %971, align 8, !tbaa !6
  %973 = getelementptr inbounds i8, ptr %972, i64 %967
  %974 = load i32, ptr %973, align 1
  store i32 %974, ptr %968, align 1
  %975 = add nsw i64 %959, 1
  %976 = load ptr, ptr @img, align 8, !tbaa !6
  %977 = getelementptr inbounds i8, ptr %976, i64 148
  %978 = load i32, ptr %977, align 4, !tbaa !23
  %979 = add nsw i32 %978, 3
  %980 = sext i32 %979 to i64
  %981 = icmp slt i64 %959, %980
  br i1 %981, label %958, label %1068

982:                                              ; preds = %943
  %983 = and i16 %8, -5
  %984 = icmp eq i16 %983, 9
  br i1 %984, label %1009, label %985

985:                                              ; preds = %982
  %986 = getelementptr inbounds i8, ptr %72, i64 332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %986, i8 2, i64 16, i1 false)
  %987 = load ptr, ptr @img, align 8, !tbaa !6
  %988 = getelementptr inbounds i8, ptr %987, i64 148
  %989 = load i32, ptr %988, align 4, !tbaa !23
  %990 = sext i32 %989 to i64
  br label %991

991:                                              ; preds = %985, %991
  %992 = phi i64 [ %990, %985 ], [ %1002, %991 ]
  %993 = phi ptr [ %987, %985 ], [ %1003, %991 ]
  %994 = getelementptr inbounds i8, ptr %993, i64 104
  %995 = load ptr, ptr %994, align 8, !tbaa !68
  %996 = getelementptr inbounds ptr, ptr %995, i64 %992
  %997 = load ptr, ptr %996, align 8, !tbaa !6
  %998 = getelementptr inbounds i8, ptr %993, i64 144
  %999 = load i32, ptr %998, align 8, !tbaa !24
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds i8, ptr %997, i64 %1000
  store i32 33686018, ptr %1001, align 1
  %1002 = add nsw i64 %992, 1
  %1003 = load ptr, ptr @img, align 8, !tbaa !6
  %1004 = getelementptr inbounds i8, ptr %1003, i64 148
  %1005 = load i32, ptr %1004, align 4, !tbaa !23
  %1006 = add nsw i32 %1005, 3
  %1007 = sext i32 %1006 to i64
  %1008 = icmp slt i64 %992, %1007
  br i1 %1008, label %991, label %1068

1009:                                             ; preds = %982
  %1010 = icmp eq i16 %8, 9
  br i1 %1010, label %1011, label %1068

1011:                                             ; preds = %1009
  %1012 = getelementptr inbounds i8, ptr %72, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1012, ptr noundef nonnull align 1 dereferenceable(16) @b4_intra_pred_modes, i64 16, i1 false)
  %1013 = load ptr, ptr @img, align 8, !tbaa !6
  %1014 = getelementptr inbounds i8, ptr %1013, i64 104
  %1015 = load ptr, ptr %1014, align 8, !tbaa !68
  %1016 = getelementptr inbounds i8, ptr %1013, i64 148
  %1017 = load i32, ptr %1016, align 4, !tbaa !23
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds ptr, ptr %1015, i64 %1018
  %1020 = load ptr, ptr %1019, align 8, !tbaa !6
  %1021 = getelementptr inbounds i8, ptr %1013, i64 144
  %1022 = load i32, ptr %1021, align 8, !tbaa !24
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, ptr %1020, i64 %1023
  %1025 = load i32, ptr @b4_ipredmode, align 4
  store i32 %1025, ptr %1024, align 1
  %1026 = load ptr, ptr @img, align 8, !tbaa !6
  %1027 = getelementptr inbounds i8, ptr %1026, i64 104
  %1028 = load ptr, ptr %1027, align 8, !tbaa !68
  %1029 = getelementptr inbounds i8, ptr %1026, i64 148
  %1030 = load i32, ptr %1029, align 4, !tbaa !23
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr ptr, ptr %1028, i64 %1031
  %1033 = getelementptr i8, ptr %1032, i64 8
  %1034 = load ptr, ptr %1033, align 8, !tbaa !6
  %1035 = getelementptr inbounds i8, ptr %1026, i64 144
  %1036 = load i32, ptr %1035, align 8, !tbaa !24
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i8, ptr %1034, i64 %1037
  %1039 = load i32, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 4), align 4
  store i32 %1039, ptr %1038, align 1
  %1040 = load ptr, ptr @img, align 8, !tbaa !6
  %1041 = getelementptr inbounds i8, ptr %1040, i64 104
  %1042 = load ptr, ptr %1041, align 8, !tbaa !68
  %1043 = getelementptr inbounds i8, ptr %1040, i64 148
  %1044 = load i32, ptr %1043, align 4, !tbaa !23
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr ptr, ptr %1042, i64 %1045
  %1047 = getelementptr i8, ptr %1046, i64 16
  %1048 = load ptr, ptr %1047, align 8, !tbaa !6
  %1049 = getelementptr inbounds i8, ptr %1040, i64 144
  %1050 = load i32, ptr %1049, align 8, !tbaa !24
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds i8, ptr %1048, i64 %1051
  %1053 = load i32, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 8), align 4
  store i32 %1053, ptr %1052, align 1
  %1054 = load ptr, ptr @img, align 8, !tbaa !6
  %1055 = getelementptr inbounds i8, ptr %1054, i64 104
  %1056 = load ptr, ptr %1055, align 8, !tbaa !68
  %1057 = getelementptr inbounds i8, ptr %1054, i64 148
  %1058 = load i32, ptr %1057, align 4, !tbaa !23
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr ptr, ptr %1056, i64 %1059
  %1061 = getelementptr i8, ptr %1060, i64 24
  %1062 = load ptr, ptr %1061, align 8, !tbaa !6
  %1063 = getelementptr inbounds i8, ptr %1054, i64 144
  %1064 = load i32, ptr %1063, align 8, !tbaa !24
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds i8, ptr %1062, i64 %1065
  %1067 = load i32, ptr getelementptr inbounds (i8, ptr @b4_ipredmode, i64 12), align 4
  store i32 %1067, ptr %1066, align 1
  br label %1068

1068:                                             ; preds = %991, %958, %1011, %1009
  %1069 = load i32, ptr %218, align 8, !tbaa !57
  %1070 = icmp eq i32 %1069, 13
  br i1 %1070, label %1071, label %1128

1071:                                             ; preds = %1068
  %1072 = getelementptr inbounds i8, ptr %72, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1072, ptr noundef nonnull align 1 dereferenceable(16) @b8_intra_pred_modes8x8, i64 16, i1 false)
  %1073 = load ptr, ptr @img, align 8, !tbaa !6
  %1074 = getelementptr inbounds i8, ptr %1073, i64 104
  %1075 = load ptr, ptr %1074, align 8, !tbaa !68
  %1076 = getelementptr inbounds i8, ptr %1073, i64 148
  %1077 = load i32, ptr %1076, align 4, !tbaa !23
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds ptr, ptr %1075, i64 %1078
  %1080 = load ptr, ptr %1079, align 8, !tbaa !6
  %1081 = getelementptr inbounds i8, ptr %1073, i64 144
  %1082 = load i32, ptr %1081, align 8, !tbaa !24
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds i8, ptr %1080, i64 %1083
  %1085 = load i32, ptr @b8_ipredmode8x8, align 1
  store i32 %1085, ptr %1084, align 1
  %1086 = load ptr, ptr @img, align 8, !tbaa !6
  %1087 = getelementptr inbounds i8, ptr %1086, i64 104
  %1088 = load ptr, ptr %1087, align 8, !tbaa !68
  %1089 = getelementptr inbounds i8, ptr %1086, i64 148
  %1090 = load i32, ptr %1089, align 4, !tbaa !23
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr ptr, ptr %1088, i64 %1091
  %1093 = getelementptr i8, ptr %1092, i64 8
  %1094 = load ptr, ptr %1093, align 8, !tbaa !6
  %1095 = getelementptr inbounds i8, ptr %1086, i64 144
  %1096 = load i32, ptr %1095, align 8, !tbaa !24
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds i8, ptr %1094, i64 %1097
  %1099 = load i32, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 4), align 1
  store i32 %1099, ptr %1098, align 1
  %1100 = load ptr, ptr @img, align 8, !tbaa !6
  %1101 = getelementptr inbounds i8, ptr %1100, i64 104
  %1102 = load ptr, ptr %1101, align 8, !tbaa !68
  %1103 = getelementptr inbounds i8, ptr %1100, i64 148
  %1104 = load i32, ptr %1103, align 4, !tbaa !23
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr ptr, ptr %1102, i64 %1105
  %1107 = getelementptr i8, ptr %1106, i64 16
  %1108 = load ptr, ptr %1107, align 8, !tbaa !6
  %1109 = getelementptr inbounds i8, ptr %1100, i64 144
  %1110 = load i32, ptr %1109, align 8, !tbaa !24
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds i8, ptr %1108, i64 %1111
  %1113 = load i32, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 8), align 1
  store i32 %1113, ptr %1112, align 1
  %1114 = load ptr, ptr @img, align 8, !tbaa !6
  %1115 = getelementptr inbounds i8, ptr %1114, i64 104
  %1116 = load ptr, ptr %1115, align 8, !tbaa !68
  %1117 = getelementptr inbounds i8, ptr %1114, i64 148
  %1118 = load i32, ptr %1117, align 4, !tbaa !23
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr ptr, ptr %1116, i64 %1119
  %1121 = getelementptr i8, ptr %1120, i64 24
  %1122 = load ptr, ptr %1121, align 8, !tbaa !6
  %1123 = getelementptr inbounds i8, ptr %1114, i64 144
  %1124 = load i32, ptr %1123, align 8, !tbaa !24
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds i8, ptr %1122, i64 %1125
  %1127 = load i32, ptr getelementptr inbounds (i8, ptr @b8_ipredmode8x8, i64 12), align 1
  store i32 %1127, ptr %1126, align 1
  br label %1128

1128:                                             ; preds = %1071, %1068
  %1129 = load ptr, ptr @img, align 8, !tbaa !6
  %1130 = getelementptr inbounds i8, ptr %1129, i64 90220
  %1131 = load i32, ptr %1130, align 4, !tbaa !102
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1168, label %1133

1133:                                             ; preds = %1128
  %1134 = load i32, ptr %945, align 8, !tbaa !61
  %1135 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %1136 = getelementptr inbounds i8, ptr %1135, i64 1700
  store i32 %1134, ptr %1136, align 4, !tbaa !148
  %1137 = getelementptr inbounds i8, ptr %1129, i64 90196
  %1138 = load i32, ptr %1137, align 4, !tbaa !117
  %1139 = getelementptr inbounds i8, ptr %1135, i64 1696
  store i32 %1138, ptr %1139, align 8, !tbaa !128
  %1140 = getelementptr inbounds i8, ptr %1135, i64 1608
  %1141 = getelementptr inbounds i8, ptr %72, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1140, ptr noundef nonnull align 4 dereferenceable(16) %1141, i64 16, i1 false)
  %1142 = getelementptr inbounds i8, ptr %1129, i64 148
  %1143 = load i32, ptr %1142, align 4, !tbaa !23
  %1144 = sext i32 %1143 to i64
  br label %1145

1145:                                             ; preds = %1133, %1145
  %1146 = phi i64 [ %1144, %1133 ], [ %1161, %1145 ]
  %1147 = phi ptr [ %1129, %1133 ], [ %1162, %1145 ]
  %1148 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %1149 = getelementptr inbounds i8, ptr %1148, i64 1600
  %1150 = load ptr, ptr %1149, align 8, !tbaa !149
  %1151 = getelementptr inbounds ptr, ptr %1150, i64 %1146
  %1152 = load ptr, ptr %1151, align 8, !tbaa !6
  %1153 = getelementptr inbounds i8, ptr %1147, i64 144
  %1154 = load i32, ptr %1153, align 8, !tbaa !24
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds i8, ptr %1152, i64 %1155
  %1157 = getelementptr inbounds ptr, ptr %12, i64 %1146
  %1158 = load ptr, ptr %1157, align 8, !tbaa !6
  %1159 = getelementptr inbounds i8, ptr %1158, i64 %1155
  %1160 = load i32, ptr %1159, align 1
  store i32 %1160, ptr %1156, align 1
  %1161 = add nsw i64 %1146, 1
  %1162 = load ptr, ptr @img, align 8, !tbaa !6
  %1163 = getelementptr inbounds i8, ptr %1162, i64 148
  %1164 = load i32, ptr %1163, align 4, !tbaa !23
  %1165 = add nsw i32 %1164, 3
  %1166 = sext i32 %1165 to i64
  %1167 = icmp slt i64 %1146, %1166
  br i1 %1167, label %1145, label %1168

1168:                                             ; preds = %1145, %1128
  %1169 = zext i1 %74 to i32
  tail call void @SetMotionVectorsMB(ptr noundef %72, i32 noundef signext %1169)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @update_offset_params(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @OffsetBits, align 4, !tbaa !38
  %4 = add nsw i32 %3, -1
  %5 = shl nuw i32 1, %4
  %6 = load ptr, ptr @img, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 24
  %8 = load ptr, ptr @input, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 4268
  %10 = icmp eq i32 %1, 0
  br label %11

11:                                               ; preds = %2, %323
  %12 = phi i64 [ 0, %2 ], [ %324, %323 ]
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 2
  %15 = and i32 %14, 12
  %16 = trunc i64 %12 to i32
  %17 = shl i32 %16, 3
  %18 = and i32 %17, 56
  br label %19

19:                                               ; preds = %11, %320
  %20 = phi i64 [ 0, %11 ], [ %321, %320 ]
  switch i32 %0, label %21 [
    i32 13, label %209
    i32 9, label %119
    i32 10, label %119
  ]

21:                                               ; preds = %19
  %22 = load i32, ptr %7, align 8, !tbaa !14
  %23 = icmp eq i32 %22, 1
  %24 = trunc nuw nsw i64 %20 to i32
  br i1 %23, label %25, label %72

25:                                               ; preds = %21
  br i1 %10, label %26, label %31

26:                                               ; preds = %25
  %27 = and i32 %24, 3
  %28 = or disjoint i32 %27, %15
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 384), i64 0, i64 %29
  br label %36

31:                                               ; preds = %25
  %32 = and i32 %24, 7
  %33 = or disjoint i32 %32, %18
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi ptr [ %35, %31 ], [ %30, %26 ]
  %38 = phi ptr [ @bestInterFAdjust8x8, %31 ], [ @bestInterFAdjust4x4, %26 ]
  %39 = getelementptr inbounds [16 x [16 x i32]], ptr %38, i64 0, i64 %12, i64 %20
  %40 = load i32, ptr %39, align 4, !tbaa !38
  %41 = load i16, ptr %37, align 2, !tbaa !25
  %42 = trunc i32 %40 to i16
  %43 = add i16 %41, %42
  %44 = sext i16 %43 to i32
  %45 = icmp slt i16 %43, 0
  %46 = tail call i32 @llvm.smin.i32(i32 %5, i32 %44)
  %47 = trunc i32 %46 to i16
  %48 = select i1 %45, i16 0, i16 %47
  store i16 %48, ptr %37, align 2, !tbaa !25
  %49 = load i32, ptr %9, align 4, !tbaa !150
  %50 = icmp ne i32 %49, 0
  %51 = or i64 %20, %12
  %52 = and i64 %51, 4294967288
  %53 = icmp eq i64 %52, 0
  %54 = and i1 %53, %50
  br i1 %54, label %55, label %320

55:                                               ; preds = %36
  %56 = and i32 %24, 3
  %57 = or disjoint i32 %56, %15
  %58 = getelementptr inbounds [16 x [16 x i32]], ptr @bestInterFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 416), i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !25
  %63 = trunc i32 %59 to i16
  %64 = add i16 %62, %63
  %65 = sext i16 %64 to i32
  %66 = icmp slt i16 %64, 0
  %67 = tail call i32 @llvm.smin.i32(i32 %5, i32 %65)
  %68 = trunc i32 %67 to i16
  %69 = select i1 %66, i16 0, i16 %68
  store i16 %69, ptr %61, align 2, !tbaa !25
  %70 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestInterFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %71 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 448), i64 0, i64 %60
  br label %308

72:                                               ; preds = %21
  br i1 %10, label %73, label %78

73:                                               ; preds = %72
  %74 = and i32 %24, 3
  %75 = or disjoint i32 %74, %15
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 288), i64 0, i64 %76
  br label %83

78:                                               ; preds = %72
  %79 = and i32 %24, 7
  %80 = or disjoint i32 %79, %18
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %81
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi ptr [ %82, %78 ], [ %77, %73 ]
  %85 = phi ptr [ @bestInterFAdjust8x8, %78 ], [ @bestInterFAdjust4x4, %73 ]
  %86 = getelementptr inbounds [16 x [16 x i32]], ptr %85, i64 0, i64 %12, i64 %20
  %87 = load i32, ptr %86, align 4, !tbaa !38
  %88 = load i16, ptr %84, align 2, !tbaa !25
  %89 = trunc i32 %87 to i16
  %90 = add i16 %88, %89
  %91 = sext i16 %90 to i32
  %92 = icmp slt i16 %90, 0
  %93 = tail call i32 @llvm.smin.i32(i32 %5, i32 %91)
  %94 = trunc i32 %93 to i16
  %95 = select i1 %92, i16 0, i16 %94
  store i16 %95, ptr %84, align 2, !tbaa !25
  %96 = load i32, ptr %9, align 4, !tbaa !150
  %97 = icmp ne i32 %96, 0
  %98 = or i64 %20, %12
  %99 = and i64 %98, 4294967288
  %100 = icmp eq i64 %99, 0
  %101 = and i1 %100, %97
  br i1 %101, label %102, label %320

102:                                              ; preds = %83
  %103 = and i32 %24, 3
  %104 = or disjoint i32 %103, %15
  %105 = getelementptr inbounds [16 x [16 x i32]], ptr @bestInterFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %106 = load i32, ptr %105, align 4, !tbaa !38
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 320), i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !25
  %110 = trunc i32 %106 to i16
  %111 = add i16 %109, %110
  %112 = sext i16 %111 to i32
  %113 = icmp slt i16 %111, 0
  %114 = tail call i32 @llvm.smin.i32(i32 %5, i32 %112)
  %115 = trunc i32 %114 to i16
  %116 = select i1 %113, i16 0, i16 %115
  store i16 %116, ptr %108, align 2, !tbaa !25
  %117 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestInterFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %118 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 352), i64 0, i64 %107
  br label %308

119:                                              ; preds = %19, %19
  %120 = load i32, ptr %7, align 8, !tbaa !14
  %121 = trunc nuw nsw i64 %20 to i32
  %122 = and i32 %121, 3
  %123 = or disjoint i32 %122, %15
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4, i64 0, i64 %12, i64 %20
  %125 = load i32, ptr %124, align 4, !tbaa !38
  %126 = zext nneg i32 %123 to i64
  %127 = trunc i32 %125 to i16
  %128 = or i64 %20, %12
  %129 = and i64 %128, 4294967288
  %130 = icmp eq i64 %129, 0
  switch i32 %120, label %183 [
    i32 2, label %131
    i32 1, label %157
  ]

131:                                              ; preds = %119
  %132 = getelementptr inbounds [16 x i16], ptr @OffsetList4x4, i64 0, i64 %126
  %133 = load i16, ptr %132, align 2, !tbaa !25
  %134 = add i16 %133, %127
  %135 = sext i16 %134 to i32
  %136 = icmp slt i16 %134, 0
  %137 = tail call i32 @llvm.smin.i32(i32 %5, i32 %135)
  %138 = trunc i32 %137 to i16
  %139 = select i1 %136, i16 0, i16 %138
  store i16 %139, ptr %132, align 2, !tbaa !25
  %140 = load i32, ptr %9, align 4, !tbaa !150
  %141 = icmp ne i32 %140, 0
  %142 = and i1 %130, %141
  br i1 %142, label %143, label %320

143:                                              ; preds = %131
  %144 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %145 = load i32, ptr %144, align 4, !tbaa !38
  %146 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 32), i64 0, i64 %126
  %147 = load i16, ptr %146, align 2, !tbaa !25
  %148 = trunc i32 %145 to i16
  %149 = add i16 %147, %148
  %150 = sext i16 %149 to i32
  %151 = icmp slt i16 %149, 0
  %152 = tail call i32 @llvm.smin.i32(i32 %5, i32 %150)
  %153 = trunc i32 %152 to i16
  %154 = select i1 %151, i16 0, i16 %153
  store i16 %154, ptr %146, align 2, !tbaa !25
  %155 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %156 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 64), i64 0, i64 %126
  br label %308

157:                                              ; preds = %119
  %158 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 192), i64 0, i64 %126
  %159 = load i16, ptr %158, align 2, !tbaa !25
  %160 = add i16 %159, %127
  %161 = sext i16 %160 to i32
  %162 = icmp slt i16 %160, 0
  %163 = tail call i32 @llvm.smin.i32(i32 %5, i32 %161)
  %164 = trunc i32 %163 to i16
  %165 = select i1 %162, i16 0, i16 %164
  store i16 %165, ptr %158, align 2, !tbaa !25
  %166 = load i32, ptr %9, align 4, !tbaa !150
  %167 = icmp ne i32 %166, 0
  %168 = and i1 %130, %167
  br i1 %168, label %169, label %320

169:                                              ; preds = %157
  %170 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %171 = load i32, ptr %170, align 4, !tbaa !38
  %172 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 224), i64 0, i64 %126
  %173 = load i16, ptr %172, align 2, !tbaa !25
  %174 = trunc i32 %171 to i16
  %175 = add i16 %173, %174
  %176 = sext i16 %175 to i32
  %177 = icmp slt i16 %175, 0
  %178 = tail call i32 @llvm.smin.i32(i32 %5, i32 %176)
  %179 = trunc i32 %178 to i16
  %180 = select i1 %177, i16 0, i16 %179
  store i16 %180, ptr %172, align 2, !tbaa !25
  %181 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %182 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 256), i64 0, i64 %126
  br label %308

183:                                              ; preds = %119
  %184 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 96), i64 0, i64 %126
  %185 = load i16, ptr %184, align 2, !tbaa !25
  %186 = add i16 %185, %127
  %187 = sext i16 %186 to i32
  %188 = icmp slt i16 %186, 0
  %189 = tail call i32 @llvm.smin.i32(i32 %5, i32 %187)
  %190 = trunc i32 %189 to i16
  %191 = select i1 %188, i16 0, i16 %190
  store i16 %191, ptr %184, align 2, !tbaa !25
  %192 = load i32, ptr %9, align 4, !tbaa !150
  %193 = icmp ne i32 %192, 0
  %194 = and i1 %130, %193
  br i1 %194, label %195, label %320

195:                                              ; preds = %183
  %196 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %197 = load i32, ptr %196, align 4, !tbaa !38
  %198 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 128), i64 0, i64 %126
  %199 = load i16, ptr %198, align 2, !tbaa !25
  %200 = trunc i32 %197 to i16
  %201 = add i16 %199, %200
  %202 = sext i16 %201 to i32
  %203 = icmp slt i16 %201, 0
  %204 = tail call i32 @llvm.smin.i32(i32 %5, i32 %202)
  %205 = trunc i32 %204 to i16
  %206 = select i1 %203, i16 0, i16 %205
  store i16 %206, ptr %198, align 2, !tbaa !25
  %207 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %208 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 160), i64 0, i64 %126
  br label %308

209:                                              ; preds = %19
  %210 = load i32, ptr %7, align 8, !tbaa !14
  %211 = trunc nuw nsw i64 %20 to i32
  %212 = and i32 %211, 7
  %213 = or disjoint i32 %212, %18
  %214 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust8x8, i64 0, i64 %12, i64 %20
  %215 = load i32, ptr %214, align 4, !tbaa !38
  %216 = zext nneg i32 %213 to i64
  %217 = trunc i32 %215 to i16
  %218 = or i64 %20, %12
  %219 = and i64 %218, 4294967288
  %220 = icmp eq i64 %219, 0
  switch i32 %210, label %279 [
    i32 2, label %221
    i32 1, label %250
  ]

221:                                              ; preds = %209
  %222 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %216
  %223 = load i16, ptr %222, align 2, !tbaa !25
  %224 = add i16 %223, %217
  %225 = sext i16 %224 to i32
  %226 = icmp slt i16 %224, 0
  %227 = tail call i32 @llvm.smin.i32(i32 %5, i32 %225)
  %228 = trunc i32 %227 to i16
  %229 = select i1 %226, i16 0, i16 %228
  store i16 %229, ptr %222, align 2, !tbaa !25
  %230 = load i32, ptr %9, align 4, !tbaa !150
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %220, %231
  br i1 %232, label %233, label %320

233:                                              ; preds = %221
  %234 = and i32 %211, 3
  %235 = or disjoint i32 %234, %15
  %236 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %237 = load i32, ptr %236, align 4, !tbaa !38
  %238 = zext nneg i32 %235 to i64
  %239 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 32), i64 0, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !25
  %241 = trunc i32 %237 to i16
  %242 = add i16 %240, %241
  %243 = sext i16 %242 to i32
  %244 = icmp slt i16 %242, 0
  %245 = tail call i32 @llvm.smin.i32(i32 %5, i32 %243)
  %246 = trunc i32 %245 to i16
  %247 = select i1 %244, i16 0, i16 %246
  store i16 %247, ptr %239, align 2, !tbaa !25
  %248 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %249 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 64), i64 0, i64 %238
  br label %308

250:                                              ; preds = %209
  %251 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %216
  %252 = load i16, ptr %251, align 2, !tbaa !25
  %253 = add i16 %252, %217
  %254 = sext i16 %253 to i32
  %255 = icmp slt i16 %253, 0
  %256 = tail call i32 @llvm.smin.i32(i32 %5, i32 %254)
  %257 = trunc i32 %256 to i16
  %258 = select i1 %255, i16 0, i16 %257
  store i16 %258, ptr %251, align 2, !tbaa !25
  %259 = load i32, ptr %9, align 4, !tbaa !150
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %220, %260
  br i1 %261, label %262, label %320

262:                                              ; preds = %250
  %263 = and i32 %211, 3
  %264 = or disjoint i32 %263, %15
  %265 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %266 = load i32, ptr %265, align 4, !tbaa !38
  %267 = zext nneg i32 %264 to i64
  %268 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 224), i64 0, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !25
  %270 = trunc i32 %266 to i16
  %271 = add i16 %269, %270
  %272 = sext i16 %271 to i32
  %273 = icmp slt i16 %271, 0
  %274 = tail call i32 @llvm.smin.i32(i32 %5, i32 %272)
  %275 = trunc i32 %274 to i16
  %276 = select i1 %273, i16 0, i16 %275
  store i16 %276, ptr %268, align 2, !tbaa !25
  %277 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %278 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 256), i64 0, i64 %267
  br label %308

279:                                              ; preds = %209
  %280 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %216
  %281 = load i16, ptr %280, align 2, !tbaa !25
  %282 = add i16 %281, %217
  %283 = sext i16 %282 to i32
  %284 = icmp slt i16 %282, 0
  %285 = tail call i32 @llvm.smin.i32(i32 %5, i32 %283)
  %286 = trunc i32 %285 to i16
  %287 = select i1 %284, i16 0, i16 %286
  store i16 %287, ptr %280, align 2, !tbaa !25
  %288 = load i32, ptr %9, align 4, !tbaa !150
  %289 = icmp ne i32 %288, 0
  %290 = and i1 %220, %289
  br i1 %290, label %291, label %320

291:                                              ; preds = %279
  %292 = and i32 %211, 3
  %293 = or disjoint i32 %292, %15
  %294 = getelementptr inbounds [16 x [16 x i32]], ptr @bestIntraFAdjust4x4Cr, i64 0, i64 %12, i64 %20
  %295 = load i32, ptr %294, align 4, !tbaa !38
  %296 = zext nneg i32 %293 to i64
  %297 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 128), i64 0, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !25
  %299 = trunc i32 %295 to i16
  %300 = add i16 %298, %299
  %301 = sext i16 %300 to i32
  %302 = icmp slt i16 %300, 0
  %303 = tail call i32 @llvm.smin.i32(i32 %5, i32 %301)
  %304 = trunc i32 %303 to i16
  %305 = select i1 %302, i16 0, i16 %304
  store i16 %305, ptr %297, align 2, !tbaa !25
  %306 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @bestIntraFAdjust4x4Cr, i64 1024), i64 0, i64 %12, i64 %20
  %307 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList4x4, i64 160), i64 0, i64 %296
  br label %308

308:                                              ; preds = %169, %195, %143, %262, %291, %233, %55, %102
  %309 = phi ptr [ %182, %169 ], [ %208, %195 ], [ %156, %143 ], [ %278, %262 ], [ %307, %291 ], [ %249, %233 ], [ %71, %55 ], [ %118, %102 ]
  %310 = phi ptr [ %181, %169 ], [ %207, %195 ], [ %155, %143 ], [ %277, %262 ], [ %306, %291 ], [ %248, %233 ], [ %70, %55 ], [ %117, %102 ]
  %311 = load i32, ptr %310, align 4, !tbaa !38
  %312 = load i16, ptr %309, align 2, !tbaa !25
  %313 = trunc i32 %311 to i16
  %314 = add i16 %312, %313
  %315 = sext i16 %314 to i32
  %316 = icmp slt i16 %314, 0
  %317 = tail call i32 @llvm.smin.i32(i32 %5, i32 %315)
  %318 = trunc i32 %317 to i16
  %319 = select i1 %316, i16 0, i16 %318
  store i16 %319, ptr %309, align 2, !tbaa !25
  br label %320

320:                                              ; preds = %308, %83, %36, %221, %279, %250, %131, %183, %157
  %321 = add nuw nsw i64 %20, 1
  %322 = icmp eq i64 %321, 16
  br i1 %322, label %323, label %19

323:                                              ; preds = %320
  %324 = add nuw nsw i64 %12, 1
  %325 = icmp eq i64 %324, 16
  br i1 %325, label %326, label %11

326:                                              ; preds = %323
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @SetRefAndMotionVectors(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = icmp eq i32 %1, 1
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %1, i32 4
  %11 = and i32 %0, -2
  %12 = shl i32 %0, 1
  %13 = and i32 %12, 2
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 148
  %16 = zext nneg i32 %10 to i64
  %17 = getelementptr inbounds [8 x [2 x i32]], ptr %15, i64 0, i64 %16
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = add nsw i32 %19, %11
  %21 = load i32, ptr %17, align 4, !tbaa !38
  %22 = add nsw i32 %21, %13
  %23 = getelementptr inbounds i8, ptr %6, i64 31576
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = getelementptr inbounds i8, ptr %6, i64 12
  %26 = load i32, ptr %25, align 4, !tbaa !33
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %27
  %29 = icmp slt i32 %2, 0
  br i1 %29, label %30, label %146

30:                                               ; preds = %5
  %31 = icmp sgt i32 %19, 0
  br i1 %31, label %32, label %539

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %6, i64 148
  %34 = load i32, ptr %33, align 4, !tbaa !23
  %35 = sext i32 %34 to i64
  %36 = sext i32 %11 to i64
  %37 = add nsw i64 %35, %36
  %38 = icmp sgt i32 %21, 0
  br label %39

39:                                               ; preds = %32, %67
  %40 = phi i64 [ %37, %32 ], [ %139, %67 ]
  %41 = phi ptr [ %6, %32 ], [ %140, %67 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 144
  %43 = load i32, ptr %42, align 8, !tbaa !24
  %44 = add i32 %43, %13
  %45 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br i1 %38, label %48, label %46

46:                                               ; preds = %39
  %47 = sext i32 %44 to i64
  br label %67

48:                                               ; preds = %39
  %49 = add nsw i32 %43, %22
  %50 = getelementptr inbounds i8, ptr %45, i64 6488
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %40
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %51, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds ptr, ptr %56, i64 %40
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = sext i32 %44 to i64
  %60 = sext i32 %49 to i64
  br label %61

61:                                               ; preds = %48, %61
  %62 = phi i64 [ %59, %48 ], [ %65, %61 ]
  %63 = getelementptr inbounds i64, ptr %54, i64 %62
  store i64 -1, ptr %63, align 8, !tbaa !62
  %64 = getelementptr inbounds i64, ptr %58, i64 %62
  store i64 -1, ptr %64, align 8, !tbaa !62
  %65 = add nsw i64 %62, 1
  %66 = icmp slt i64 %65, %60
  br i1 %66, label %61, label %67

67:                                               ; preds = %61, %46
  %68 = phi i64 [ %47, %46 ], [ %59, %61 ]
  %69 = getelementptr inbounds i8, ptr %45, i64 6480
  %70 = load ptr, ptr %69, align 8, !tbaa !90
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %40
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 %68
  %75 = load ptr, ptr @input, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %75, i64 148
  %77 = getelementptr inbounds [8 x [2 x i32]], ptr %76, i64 0, i64 %16
  %78 = load i32, ptr %77, align 4, !tbaa !38
  %79 = sext i32 %78 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %74, i8 -1, i64 %79, i1 false)
  %80 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 6480
  %82 = load ptr, ptr %81, align 8, !tbaa !90
  %83 = getelementptr inbounds i8, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds ptr, ptr %84, i64 %40
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = load ptr, ptr @img, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 144
  %89 = load i32, ptr %88, align 8, !tbaa !24
  %90 = add nsw i32 %89, %13
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %86, i64 %91
  %93 = load ptr, ptr @input, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 148
  %95 = getelementptr inbounds [8 x [2 x i32]], ptr %94, i64 0, i64 %16
  %96 = load i32, ptr %95, align 4, !tbaa !38
  %97 = sext i32 %96 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %92, i8 -1, i64 %97, i1 false)
  %98 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %98, i64 6504
  %100 = load ptr, ptr %99, align 8, !tbaa !101
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds ptr, ptr %101, i64 %40
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = load ptr, ptr @img, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 144
  %106 = load i32, ptr %105, align 8, !tbaa !24
  %107 = add nsw i32 %106, %13
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %103, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = load ptr, ptr @input, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %111, i64 148
  %113 = getelementptr inbounds [8 x [2 x i32]], ptr %112, i64 0, i64 %16
  %114 = load i32, ptr %113, align 4, !tbaa !38
  %115 = shl nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %110, i8 0, i64 %117, i1 false)
  %118 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %119 = getelementptr inbounds i8, ptr %118, i64 6504
  %120 = load ptr, ptr %119, align 8, !tbaa !101
  %121 = getelementptr inbounds i8, ptr %120, i64 8
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds ptr, ptr %122, i64 %40
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = load ptr, ptr @img, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 144
  %127 = load i32, ptr %126, align 8, !tbaa !24
  %128 = add nsw i32 %127, %13
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %124, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = load ptr, ptr @input, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 148
  %134 = getelementptr inbounds [8 x [2 x i32]], ptr %133, i64 0, i64 %16
  %135 = load i32, ptr %134, align 4, !tbaa !38
  %136 = shl nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %131, i8 0, i64 %138, i1 false)
  %139 = add nsw i64 %40, 1
  %140 = load ptr, ptr @img, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 148
  %142 = load i32, ptr %141, align 4, !tbaa !23
  %143 = add nsw i32 %142, %20
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %139, %144
  br i1 %145, label %39, label %539

146:                                              ; preds = %5
  %147 = getelementptr inbounds i8, ptr %6, i64 24
  %148 = load i32, ptr %147, align 8, !tbaa !14
  %149 = icmp eq i32 %148, 1
  %150 = icmp sgt i32 %19, 0
  br i1 %149, label %164, label %151

151:                                              ; preds = %146
  br i1 %150, label %152, label %539

152:                                              ; preds = %151
  %153 = trunc i32 %3 to i8
  %154 = icmp sgt i32 %21, 0
  %155 = sext i32 %3 to i64
  %156 = sext i32 %1 to i64
  %157 = getelementptr inbounds i8, ptr %28, i64 428
  %158 = shl i32 %0, 1
  %159 = and i32 %158, 2
  %160 = zext nneg i32 %159 to i64
  %161 = sext i32 %22 to i64
  %162 = sext i32 %11 to i64
  %163 = sext i32 %20 to i64
  br label %177

164:                                              ; preds = %146
  br i1 %150, label %165, label %539

165:                                              ; preds = %164
  %166 = icmp sgt i32 %21, 0
  %167 = icmp eq i32 %1, 0
  %168 = getelementptr inbounds i8, ptr %28, i64 476
  %169 = sext i32 %1 to i64
  %170 = getelementptr inbounds i8, ptr %28, i64 428
  %171 = shl i32 %0, 1
  %172 = and i32 %171, 2
  %173 = zext nneg i32 %172 to i64
  %174 = sext i32 %22 to i64
  %175 = sext i32 %11 to i64
  %176 = sext i32 %20 to i64
  br label %247

177:                                              ; preds = %152, %244
  %178 = phi i64 [ %162, %152 ], [ %245, %244 ]
  %179 = load ptr, ptr @img, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 148
  %181 = load i32, ptr %180, align 4, !tbaa !23
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 6480
  %186 = load ptr, ptr %185, align 8, !tbaa !90
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = getelementptr inbounds ptr, ptr %187, i64 %183
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = getelementptr inbounds i8, ptr %179, i64 144
  %191 = load i32, ptr %190, align 8, !tbaa !24
  %192 = add nsw i32 %191, %13
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %189, i64 %193
  %195 = load ptr, ptr @input, align 8, !tbaa !6
  %196 = getelementptr inbounds i8, ptr %195, i64 148
  %197 = getelementptr inbounds [8 x [2 x i32]], ptr %196, i64 0, i64 %16
  %198 = load i32, ptr %197, align 4, !tbaa !38
  %199 = sext i32 %198 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %194, i8 %153, i64 %199, i1 false)
  br i1 %154, label %200, label %244

200:                                              ; preds = %177
  %201 = load ptr, ptr @img, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 144
  %203 = load i32, ptr %202, align 8, !tbaa !24
  %204 = getelementptr inbounds i8, ptr %201, i64 89336
  %205 = load ptr, ptr %204, align 8, !tbaa !22
  %206 = getelementptr inbounds ptr, ptr %205, i64 %178
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %209 = getelementptr inbounds i8, ptr %208, i64 6504
  %210 = load ptr, ptr %209, align 8, !tbaa !101
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = getelementptr inbounds ptr, ptr %211, i64 %183
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = getelementptr inbounds i8, ptr %208, i64 24
  %215 = load i32, ptr %157, align 4, !tbaa !91
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [6 x [33 x i64]], ptr %214, i64 0, i64 %216, i64 %155
  %218 = getelementptr inbounds i8, ptr %208, i64 6488
  %219 = load ptr, ptr %218, align 8, !tbaa !92
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = getelementptr inbounds ptr, ptr %220, i64 %183
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = sext i32 %203 to i64
  %224 = load i64, ptr %217, align 8, !tbaa !62
  br label %225

225:                                              ; preds = %200, %225
  %226 = phi i64 [ %160, %200 ], [ %242, %225 ]
  %227 = add nsw i64 %226, %223
  %228 = getelementptr inbounds ptr, ptr %207, i64 %226
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = getelementptr inbounds ptr, ptr %230, i64 %155
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = getelementptr inbounds ptr, ptr %232, i64 %156
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = load i16, ptr %234, align 2, !tbaa !25
  %236 = getelementptr inbounds ptr, ptr %213, i64 %227
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  store i16 %235, ptr %237, align 2, !tbaa !25
  %238 = getelementptr inbounds i8, ptr %234, i64 2
  %239 = load i16, ptr %238, align 2, !tbaa !25
  %240 = getelementptr inbounds i8, ptr %237, i64 2
  store i16 %239, ptr %240, align 2, !tbaa !25
  %241 = getelementptr inbounds i64, ptr %222, i64 %227
  store i64 %224, ptr %241, align 8, !tbaa !62
  %242 = add nuw nsw i64 %226, 1
  %243 = icmp slt i64 %242, %161
  br i1 %243, label %225, label %244

244:                                              ; preds = %225, %177
  %245 = add nsw i64 %178, 1
  %246 = icmp slt i64 %245, %163
  br i1 %246, label %177, label %539

247:                                              ; preds = %165, %533
  %248 = phi i64 [ %175, %165 ], [ %537, %533 ]
  %249 = phi i32 [ %2, %165 ], [ %536, %533 ]
  %250 = phi i32 [ %3, %165 ], [ %535, %533 ]
  %251 = phi i32 [ %4, %165 ], [ %534, %533 ]
  br i1 %166, label %252, label %533

252:                                              ; preds = %247
  %253 = load ptr, ptr @img, align 8, !tbaa !6
  %254 = getelementptr inbounds i8, ptr %253, i64 148
  %255 = load i32, ptr %254, align 4, !tbaa !23
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %248, %256
  br label %258

258:                                              ; preds = %252, %520
  %259 = phi i64 [ %173, %252 ], [ %531, %520 ]
  %260 = phi i32 [ %249, %252 ], [ %293, %520 ]
  %261 = phi i32 [ %250, %252 ], [ %292, %520 ]
  %262 = phi i32 [ %251, %252 ], [ %291, %520 ]
  %263 = load ptr, ptr @img, align 8, !tbaa !6
  %264 = getelementptr inbounds i8, ptr %263, i64 144
  %265 = load i32, ptr %264, align 8, !tbaa !24
  %266 = trunc nuw nsw i64 %259 to i32
  %267 = add nsw i32 %265, %266
  br i1 %167, label %268, label %290

268:                                              ; preds = %258
  %269 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %270 = getelementptr inbounds ptr, ptr %269, i64 %257
  %271 = load ptr, ptr %270, align 8, !tbaa !6
  %272 = sext i32 %267 to i64
  %273 = getelementptr inbounds i16, ptr %271, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !25
  %275 = sext i16 %274 to i32
  %276 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = getelementptr inbounds ptr, ptr %277, i64 %257
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %279, i64 %272
  %281 = load i8, ptr %280, align 1, !tbaa !20
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds i8, ptr %276, i64 8
  %284 = load ptr, ptr %283, align 8, !tbaa !6
  %285 = getelementptr inbounds ptr, ptr %284, i64 %257
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = getelementptr inbounds i8, ptr %286, i64 %272
  %288 = load i8, ptr %287, align 1, !tbaa !20
  %289 = zext i8 %288 to i32
  br label %290

290:                                              ; preds = %268, %258
  %291 = phi i32 [ %289, %268 ], [ %262, %258 ]
  %292 = phi i32 [ %282, %268 ], [ %261, %258 ]
  %293 = phi i32 [ %275, %268 ], [ %260, %258 ]
  %294 = icmp eq i32 %293, 2
  switch i32 %293, label %381 [
    i32 2, label %295
    i32 0, label %295
  ]

295:                                              ; preds = %290, %290
  %296 = load i16, ptr %168, align 4, !tbaa !83
  %297 = icmp ne i16 %296, 0
  %298 = and i1 %294, %297
  %299 = and i1 %7, %298
  %300 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %300, i64 6504
  %302 = load ptr, ptr %301, align 8, !tbaa !101
  %303 = load ptr, ptr %302, align 8, !tbaa !6
  %304 = getelementptr inbounds ptr, ptr %303, i64 %257
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = sext i32 %267 to i64
  %307 = getelementptr inbounds ptr, ptr %305, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !6
  %309 = getelementptr inbounds i8, ptr %308, i64 2
  br i1 %299, label %310, label %344

310:                                              ; preds = %295
  %311 = icmp eq i16 %296, 1
  %312 = select i1 %311, i64 89344, i64 89352
  %313 = getelementptr inbounds i8, ptr %263, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !6
  %315 = getelementptr inbounds ptr, ptr %314, i64 %248
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = getelementptr inbounds ptr, ptr %316, i64 %259
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  %320 = load ptr, ptr %319, align 8, !tbaa !6
  %321 = getelementptr inbounds i8, ptr %320, i64 8
  %322 = load ptr, ptr %321, align 8, !tbaa !6
  %323 = load i16, ptr %322, align 2, !tbaa !25
  store i16 %323, ptr %308, align 2, !tbaa !25
  %324 = getelementptr inbounds i8, ptr %322, i64 2
  %325 = load i16, ptr %324, align 2, !tbaa !25
  store i16 %325, ptr %309, align 2, !tbaa !25
  %326 = getelementptr inbounds i8, ptr %300, i64 6480
  %327 = load ptr, ptr %326, align 8, !tbaa !90
  %328 = load ptr, ptr %327, align 8, !tbaa !6
  %329 = getelementptr inbounds ptr, ptr %328, i64 %257
  %330 = load ptr, ptr %329, align 8, !tbaa !6
  %331 = getelementptr inbounds i8, ptr %330, i64 %306
  store i8 0, ptr %331, align 1, !tbaa !20
  %332 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %333 = getelementptr inbounds i8, ptr %332, i64 24
  %334 = load i32, ptr %170, align 4, !tbaa !91
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [6 x [33 x i64]], ptr %333, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !62
  %338 = getelementptr inbounds i8, ptr %332, i64 6488
  %339 = load ptr, ptr %338, align 8, !tbaa !92
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = getelementptr inbounds ptr, ptr %340, i64 %257
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i64, ptr %342, i64 %306
  store i64 %337, ptr %343, align 8, !tbaa !62
  br label %411

344:                                              ; preds = %295
  %345 = getelementptr inbounds i8, ptr %263, i64 89336
  %346 = load ptr, ptr %345, align 8, !tbaa !22
  %347 = getelementptr inbounds ptr, ptr %346, i64 %248
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = getelementptr inbounds ptr, ptr %348, i64 %259
  %350 = load ptr, ptr %349, align 8, !tbaa !6
  %351 = load ptr, ptr %350, align 8, !tbaa !6
  %352 = sext i32 %292 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds ptr, ptr %354, i64 %169
  %356 = load ptr, ptr %355, align 8, !tbaa !6
  %357 = load i16, ptr %356, align 2, !tbaa !25
  store i16 %357, ptr %308, align 2, !tbaa !25
  %358 = getelementptr inbounds i8, ptr %356, i64 2
  %359 = load i16, ptr %358, align 2, !tbaa !25
  store i16 %359, ptr %309, align 2, !tbaa !25
  %360 = trunc i32 %292 to i8
  %361 = getelementptr inbounds i8, ptr %300, i64 6480
  %362 = load ptr, ptr %361, align 8, !tbaa !90
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = getelementptr inbounds ptr, ptr %363, i64 %257
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = getelementptr inbounds i8, ptr %365, i64 %306
  store i8 %360, ptr %366, align 1, !tbaa !20
  %367 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %368 = getelementptr inbounds i8, ptr %367, i64 24
  %369 = load i32, ptr %170, align 4, !tbaa !91
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, ptr %367, i64 6480
  %372 = load ptr, ptr %371, align 8, !tbaa !90
  %373 = load ptr, ptr %372, align 8, !tbaa !6
  %374 = getelementptr inbounds ptr, ptr %373, i64 %257
  %375 = load ptr, ptr %374, align 8, !tbaa !6
  %376 = getelementptr inbounds i8, ptr %375, i64 %306
  %377 = load i8, ptr %376, align 1, !tbaa !20
  %378 = zext i8 %377 to i64
  %379 = getelementptr inbounds [6 x [33 x i64]], ptr %368, i64 0, i64 %370, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !62
  br label %399

381:                                              ; preds = %290
  %382 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %383 = getelementptr inbounds i8, ptr %382, i64 6504
  %384 = load ptr, ptr %383, align 8, !tbaa !101
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = getelementptr inbounds ptr, ptr %385, i64 %257
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = sext i32 %267 to i64
  %389 = getelementptr inbounds ptr, ptr %387, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  store i16 0, ptr %390, align 2, !tbaa !25
  %391 = getelementptr inbounds i8, ptr %390, i64 2
  store i16 0, ptr %391, align 2, !tbaa !25
  %392 = getelementptr inbounds i8, ptr %382, i64 6480
  %393 = load ptr, ptr %392, align 8, !tbaa !90
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  %395 = getelementptr inbounds ptr, ptr %394, i64 %257
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = getelementptr inbounds i8, ptr %396, i64 %388
  store i8 -1, ptr %397, align 1, !tbaa !20
  %398 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %399

399:                                              ; preds = %344, %381
  %400 = phi ptr [ %367, %344 ], [ %398, %381 ]
  %401 = phi i64 [ %306, %344 ], [ %388, %381 ]
  %402 = phi i64 [ %380, %344 ], [ -1, %381 ]
  %403 = getelementptr inbounds i8, ptr %400, i64 6488
  %404 = load ptr, ptr %403, align 8, !tbaa !92
  %405 = load ptr, ptr %404, align 8, !tbaa !6
  %406 = getelementptr inbounds ptr, ptr %405, i64 %257
  %407 = load ptr, ptr %406, align 8, !tbaa !6
  %408 = getelementptr inbounds i64, ptr %407, i64 %401
  store i64 %402, ptr %408, align 8, !tbaa !62
  %409 = add i32 %293, -1
  %410 = icmp ult i32 %409, 2
  br i1 %410, label %411, label %501

411:                                              ; preds = %310, %399
  %412 = phi ptr [ %332, %310 ], [ %400, %399 ]
  %413 = load i16, ptr %168, align 4, !tbaa !83
  %414 = icmp ne i16 %413, 0
  %415 = and i1 %294, %414
  %416 = and i1 %7, %415
  %417 = getelementptr inbounds i8, ptr %412, i64 6504
  %418 = load ptr, ptr %417, align 8, !tbaa !101
  %419 = getelementptr inbounds i8, ptr %418, i64 8
  %420 = load ptr, ptr %419, align 8, !tbaa !6
  %421 = getelementptr inbounds ptr, ptr %420, i64 %257
  %422 = load ptr, ptr %421, align 8, !tbaa !6
  %423 = sext i32 %267 to i64
  %424 = getelementptr inbounds ptr, ptr %422, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !6
  %426 = getelementptr inbounds i8, ptr %425, i64 2
  br i1 %416, label %427, label %459

427:                                              ; preds = %411
  %428 = icmp eq i16 %413, 1
  %429 = load ptr, ptr @img, align 8, !tbaa !6
  %430 = select i1 %428, i64 89344, i64 89352
  %431 = getelementptr inbounds i8, ptr %429, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  %433 = getelementptr inbounds ptr, ptr %432, i64 %248
  %434 = load ptr, ptr %433, align 8, !tbaa !6
  %435 = getelementptr inbounds ptr, ptr %434, i64 %259
  %436 = load ptr, ptr %435, align 8, !tbaa !6
  %437 = getelementptr inbounds i8, ptr %436, i64 8
  %438 = load ptr, ptr %437, align 8, !tbaa !6
  %439 = load ptr, ptr %438, align 8, !tbaa !6
  %440 = getelementptr inbounds i8, ptr %439, i64 8
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  %442 = load i16, ptr %441, align 2, !tbaa !25
  store i16 %442, ptr %425, align 2, !tbaa !25
  %443 = getelementptr inbounds i8, ptr %441, i64 2
  %444 = load i16, ptr %443, align 2, !tbaa !25
  store i16 %444, ptr %426, align 2, !tbaa !25
  %445 = getelementptr inbounds i8, ptr %412, i64 6480
  %446 = load ptr, ptr %445, align 8, !tbaa !90
  %447 = getelementptr inbounds i8, ptr %446, i64 8
  %448 = load ptr, ptr %447, align 8, !tbaa !6
  %449 = getelementptr inbounds ptr, ptr %448, i64 %257
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %450, i64 %423
  store i8 0, ptr %451, align 1, !tbaa !20
  %452 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %453 = getelementptr inbounds i8, ptr %452, i64 24
  %454 = load i32, ptr %170, align 4, !tbaa !91
  %455 = add nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [6 x [33 x i64]], ptr %453, i64 0, i64 %456
  %458 = load i64, ptr %457, align 8, !tbaa !62
  br label %520

459:                                              ; preds = %411
  %460 = load ptr, ptr @img, align 8, !tbaa !6
  %461 = getelementptr inbounds i8, ptr %460, i64 89336
  %462 = load ptr, ptr %461, align 8, !tbaa !22
  %463 = getelementptr inbounds ptr, ptr %462, i64 %248
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = getelementptr inbounds ptr, ptr %464, i64 %259
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr inbounds i8, ptr %466, i64 8
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  %469 = sext i32 %291 to i64
  %470 = getelementptr inbounds ptr, ptr %468, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !6
  %472 = getelementptr inbounds ptr, ptr %471, i64 %169
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  %474 = load i16, ptr %473, align 2, !tbaa !25
  store i16 %474, ptr %425, align 2, !tbaa !25
  %475 = getelementptr inbounds i8, ptr %473, i64 2
  %476 = load i16, ptr %475, align 2, !tbaa !25
  store i16 %476, ptr %426, align 2, !tbaa !25
  %477 = trunc i32 %291 to i8
  %478 = getelementptr inbounds i8, ptr %412, i64 6480
  %479 = load ptr, ptr %478, align 8, !tbaa !90
  %480 = getelementptr inbounds i8, ptr %479, i64 8
  %481 = load ptr, ptr %480, align 8, !tbaa !6
  %482 = getelementptr inbounds ptr, ptr %481, i64 %257
  %483 = load ptr, ptr %482, align 8, !tbaa !6
  %484 = getelementptr inbounds i8, ptr %483, i64 %423
  store i8 %477, ptr %484, align 1, !tbaa !20
  %485 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %486 = getelementptr inbounds i8, ptr %485, i64 24
  %487 = load i32, ptr %170, align 4, !tbaa !91
  %488 = add nsw i32 %487, 1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %485, i64 6480
  %491 = load ptr, ptr %490, align 8, !tbaa !90
  %492 = getelementptr inbounds i8, ptr %491, i64 8
  %493 = load ptr, ptr %492, align 8, !tbaa !6
  %494 = getelementptr inbounds ptr, ptr %493, i64 %257
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  %496 = getelementptr inbounds i8, ptr %495, i64 %423
  %497 = load i8, ptr %496, align 1, !tbaa !20
  %498 = zext i8 %497 to i64
  %499 = getelementptr inbounds [6 x [33 x i64]], ptr %486, i64 0, i64 %489, i64 %498
  %500 = load i64, ptr %499, align 8, !tbaa !62
  br label %520

501:                                              ; preds = %399
  %502 = getelementptr inbounds i8, ptr %400, i64 6504
  %503 = load ptr, ptr %502, align 8, !tbaa !101
  %504 = getelementptr inbounds i8, ptr %503, i64 8
  %505 = load ptr, ptr %504, align 8, !tbaa !6
  %506 = getelementptr inbounds ptr, ptr %505, i64 %257
  %507 = load ptr, ptr %506, align 8, !tbaa !6
  %508 = sext i32 %267 to i64
  %509 = getelementptr inbounds ptr, ptr %507, i64 %508
  %510 = load ptr, ptr %509, align 8, !tbaa !6
  store i16 0, ptr %510, align 2, !tbaa !25
  %511 = getelementptr inbounds i8, ptr %510, i64 2
  store i16 0, ptr %511, align 2, !tbaa !25
  %512 = getelementptr inbounds i8, ptr %400, i64 6480
  %513 = load ptr, ptr %512, align 8, !tbaa !90
  %514 = getelementptr inbounds i8, ptr %513, i64 8
  %515 = load ptr, ptr %514, align 8, !tbaa !6
  %516 = getelementptr inbounds ptr, ptr %515, i64 %257
  %517 = load ptr, ptr %516, align 8, !tbaa !6
  %518 = getelementptr inbounds i8, ptr %517, i64 %508
  store i8 -1, ptr %518, align 1, !tbaa !20
  %519 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %520

520:                                              ; preds = %501, %459, %427
  %521 = phi ptr [ %519, %501 ], [ %485, %459 ], [ %452, %427 ]
  %522 = phi i64 [ %508, %501 ], [ %423, %459 ], [ %423, %427 ]
  %523 = phi i64 [ -1, %501 ], [ %500, %459 ], [ %458, %427 ]
  %524 = getelementptr inbounds i8, ptr %521, i64 6488
  %525 = load ptr, ptr %524, align 8, !tbaa !92
  %526 = getelementptr inbounds i8, ptr %525, i64 8
  %527 = load ptr, ptr %526, align 8, !tbaa !6
  %528 = getelementptr inbounds ptr, ptr %527, i64 %257
  %529 = load ptr, ptr %528, align 8, !tbaa !6
  %530 = getelementptr inbounds i64, ptr %529, i64 %522
  store i64 %523, ptr %530, align 8, !tbaa !62
  %531 = add nuw nsw i64 %259, 1
  %532 = icmp slt i64 %531, %174
  br i1 %532, label %258, label %533

533:                                              ; preds = %520, %247
  %534 = phi i32 [ %251, %247 ], [ %291, %520 ]
  %535 = phi i32 [ %250, %247 ], [ %292, %520 ]
  %536 = phi i32 [ %249, %247 ], [ %293, %520 ]
  %537 = add nsw i64 %248, 1
  %538 = icmp slt i64 %537, %176
  br i1 %538, label %247, label %539

539:                                              ; preds = %244, %533, %67, %151, %164, %30
  ret void
}

; Function Attrs: nounwind
define dso_local void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 89336
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, ptr %8, i64 89328
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = and i32 %1, -2
  %14 = add nsw i32 %13, 2
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %16, label %136

16:                                               ; preds = %7
  %17 = icmp sgt i32 %5, -1
  br i1 %17, label %18, label %497

18:                                               ; preds = %16
  %19 = sext i32 %3 to i64
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %20
  %22 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %20
  %23 = shl i32 %1, 1
  %24 = and i32 %23, 2
  %25 = zext nneg i32 %24 to i64
  %26 = sext i32 %13 to i64
  %27 = sext i32 %14 to i64
  %28 = getelementptr inbounds ptr, ptr %10, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds ptr, ptr %12, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds ptr, ptr %29, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds ptr, ptr %34, i64 %19
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 32
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = load i16, ptr %38, align 2, !tbaa !25
  %40 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %21, i64 0, i64 %26, i64 %25
  store i16 %39, ptr %40, align 2, !tbaa !25
  %41 = getelementptr inbounds i8, ptr %38, i64 2
  %42 = load i16, ptr %41, align 2, !tbaa !25
  %43 = getelementptr inbounds i8, ptr %40, i64 2
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = getelementptr inbounds ptr, ptr %31, i64 %25
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds ptr, ptr %46, i64 %19
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = load i16, ptr %50, align 2, !tbaa !25
  %52 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %26, i64 %25
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = getelementptr inbounds i8, ptr %50, i64 2
  %54 = load i16, ptr %53, align 2, !tbaa !25
  %55 = getelementptr inbounds i8, ptr %52, i64 2
  store i16 %54, ptr %55, align 2, !tbaa !25
  %56 = or disjoint i64 %25, 1
  %57 = getelementptr inbounds ptr, ptr %29, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds ptr, ptr %59, i64 %19
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 32
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = load i16, ptr %63, align 2, !tbaa !25
  %65 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %21, i64 0, i64 %26, i64 %56
  store i16 %64, ptr %65, align 2, !tbaa !25
  %66 = getelementptr inbounds i8, ptr %63, i64 2
  %67 = load i16, ptr %66, align 2, !tbaa !25
  %68 = getelementptr inbounds i8, ptr %65, i64 2
  store i16 %67, ptr %68, align 2, !tbaa !25
  %69 = getelementptr inbounds ptr, ptr %31, i64 %56
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %19
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 32
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = load i16, ptr %75, align 2, !tbaa !25
  %77 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %26, i64 %56
  store i16 %76, ptr %77, align 2, !tbaa !25
  %78 = getelementptr inbounds i8, ptr %75, i64 2
  %79 = load i16, ptr %78, align 2, !tbaa !25
  %80 = getelementptr inbounds i8, ptr %77, i64 2
  store i16 %79, ptr %80, align 2, !tbaa !25
  %81 = or disjoint i64 %26, 1
  %82 = icmp slt i64 %81, %27
  br i1 %82, label %83, label %497

83:                                               ; preds = %18
  %84 = getelementptr inbounds ptr, ptr %10, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds ptr, ptr %12, i64 %81
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %85, i64 %25
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %19
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %21, i64 0, i64 %81, i64 %25
  store i16 %95, ptr %96, align 2, !tbaa !25
  %97 = getelementptr inbounds i8, ptr %94, i64 2
  %98 = load i16, ptr %97, align 2, !tbaa !25
  %99 = getelementptr inbounds i8, ptr %96, i64 2
  store i16 %98, ptr %99, align 2, !tbaa !25
  %100 = getelementptr inbounds ptr, ptr %87, i64 %25
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %19
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 32
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = load i16, ptr %106, align 2, !tbaa !25
  %108 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %81, i64 %25
  store i16 %107, ptr %108, align 2, !tbaa !25
  %109 = getelementptr inbounds i8, ptr %106, i64 2
  %110 = load i16, ptr %109, align 2, !tbaa !25
  %111 = getelementptr inbounds i8, ptr %108, i64 2
  store i16 %110, ptr %111, align 2, !tbaa !25
  %112 = getelementptr inbounds ptr, ptr %85, i64 %56
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds ptr, ptr %114, i64 %19
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = load i16, ptr %118, align 2, !tbaa !25
  %120 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %21, i64 0, i64 %81, i64 %56
  store i16 %119, ptr %120, align 2, !tbaa !25
  %121 = getelementptr inbounds i8, ptr %118, i64 2
  %122 = load i16, ptr %121, align 2, !tbaa !25
  %123 = getelementptr inbounds i8, ptr %120, i64 2
  store i16 %122, ptr %123, align 2, !tbaa !25
  %124 = getelementptr inbounds ptr, ptr %87, i64 %56
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds ptr, ptr %126, i64 %19
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 32
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = load i16, ptr %130, align 2, !tbaa !25
  %132 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %81, i64 %56
  store i16 %131, ptr %132, align 2, !tbaa !25
  %133 = getelementptr inbounds i8, ptr %130, i64 2
  %134 = load i16, ptr %133, align 2, !tbaa !25
  %135 = getelementptr inbounds i8, ptr %132, i64 2
  store i16 %134, ptr %135, align 2, !tbaa !25
  br label %497

136:                                              ; preds = %7
  switch i32 %5, label %496 [
    i32 0, label %220
    i32 1, label %152
    i32 2, label %137
  ]

137:                                              ; preds = %136
  %138 = sext i32 %3 to i64
  %139 = sext i32 %2 to i64
  %140 = sext i32 %0 to i64
  %141 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %140
  %142 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %140
  %143 = sext i32 %4 to i64
  %144 = getelementptr inbounds i8, ptr %141, i64 64
  %145 = getelementptr inbounds i8, ptr %142, i64 64
  %146 = shl i32 %1, 1
  %147 = and i32 %146, 2
  %148 = zext nneg i32 %147 to i64
  %149 = sext i32 %13 to i64
  %150 = sext i32 %14 to i64
  %151 = or disjoint i64 %148, 1
  br label %396

152:                                              ; preds = %136
  %153 = sext i32 %4 to i64
  %154 = sext i32 %2 to i64
  %155 = sext i32 %0 to i64
  %156 = shl i32 %1, 1
  %157 = and i32 %156, 2
  %158 = zext nneg i32 %157 to i64
  %159 = sext i32 %13 to i64
  %160 = sext i32 %14 to i64
  %161 = getelementptr inbounds ptr, ptr %10, i64 %159
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = getelementptr inbounds ptr, ptr %12, i64 %159
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds ptr, ptr %162, i64 %158
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds i8, ptr %166, i64 8
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds ptr, ptr %168, i64 %153
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = getelementptr inbounds ptr, ptr %170, i64 %154
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = load i16, ptr %172, align 2, !tbaa !25
  %174 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %155, i64 1, i64 %159, i64 %158
  store i16 %173, ptr %174, align 2, !tbaa !25
  %175 = getelementptr inbounds i8, ptr %172, i64 2
  %176 = load i16, ptr %175, align 2, !tbaa !25
  %177 = getelementptr inbounds i8, ptr %174, i64 2
  store i16 %176, ptr %177, align 2, !tbaa !25
  %178 = getelementptr inbounds ptr, ptr %164, i64 %158
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 8
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr inbounds ptr, ptr %181, i64 %153
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = getelementptr inbounds ptr, ptr %183, i64 %154
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i16, ptr %185, align 2, !tbaa !25
  %187 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %155, i64 1, i64 %159, i64 %158
  store i16 %186, ptr %187, align 2, !tbaa !25
  %188 = getelementptr inbounds i8, ptr %185, i64 2
  %189 = load i16, ptr %188, align 2, !tbaa !25
  %190 = getelementptr inbounds i8, ptr %187, i64 2
  store i16 %189, ptr %190, align 2, !tbaa !25
  %191 = or disjoint i64 %158, 1
  %192 = getelementptr inbounds ptr, ptr %162, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %193, i64 8
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds ptr, ptr %195, i64 %153
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds ptr, ptr %197, i64 %154
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = load i16, ptr %199, align 2, !tbaa !25
  %201 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %155, i64 1, i64 %159, i64 %191
  store i16 %200, ptr %201, align 2, !tbaa !25
  %202 = getelementptr inbounds i8, ptr %199, i64 2
  %203 = load i16, ptr %202, align 2, !tbaa !25
  %204 = getelementptr inbounds i8, ptr %201, i64 2
  store i16 %203, ptr %204, align 2, !tbaa !25
  %205 = getelementptr inbounds ptr, ptr %164, i64 %191
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 8
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  %209 = getelementptr inbounds ptr, ptr %208, i64 %153
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds ptr, ptr %210, i64 %154
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = load i16, ptr %212, align 2, !tbaa !25
  %214 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %155, i64 1, i64 %159, i64 %191
  store i16 %213, ptr %214, align 2, !tbaa !25
  %215 = getelementptr inbounds i8, ptr %212, i64 2
  %216 = load i16, ptr %215, align 2, !tbaa !25
  %217 = getelementptr inbounds i8, ptr %214, i64 2
  store i16 %216, ptr %217, align 2, !tbaa !25
  %218 = or disjoint i64 %159, 1
  %219 = icmp slt i64 %218, %160
  br i1 %219, label %339, label %497

220:                                              ; preds = %136
  %221 = sext i32 %3 to i64
  %222 = sext i32 %2 to i64
  %223 = sext i32 %0 to i64
  %224 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %223
  %225 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %223
  %226 = shl i32 %1, 1
  %227 = and i32 %226, 2
  %228 = zext nneg i32 %227 to i64
  %229 = sext i32 %13 to i64
  %230 = sext i32 %14 to i64
  %231 = getelementptr inbounds ptr, ptr %10, i64 %229
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = getelementptr inbounds ptr, ptr %12, i64 %229
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = getelementptr inbounds ptr, ptr %232, i64 %228
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = getelementptr inbounds ptr, ptr %237, i64 %221
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  %240 = getelementptr inbounds ptr, ptr %239, i64 %222
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load i16, ptr %241, align 2, !tbaa !25
  %243 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %224, i64 0, i64 %229, i64 %228
  store i16 %242, ptr %243, align 2, !tbaa !25
  %244 = getelementptr inbounds i8, ptr %241, i64 2
  %245 = load i16, ptr %244, align 2, !tbaa !25
  %246 = getelementptr inbounds i8, ptr %243, i64 2
  store i16 %245, ptr %246, align 2, !tbaa !25
  %247 = getelementptr inbounds ptr, ptr %234, i64 %228
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = getelementptr inbounds ptr, ptr %249, i64 %221
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = getelementptr inbounds ptr, ptr %251, i64 %222
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = load i16, ptr %253, align 2, !tbaa !25
  %255 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %225, i64 0, i64 %229, i64 %228
  store i16 %254, ptr %255, align 2, !tbaa !25
  %256 = getelementptr inbounds i8, ptr %253, i64 2
  %257 = load i16, ptr %256, align 2, !tbaa !25
  %258 = getelementptr inbounds i8, ptr %255, i64 2
  store i16 %257, ptr %258, align 2, !tbaa !25
  %259 = or disjoint i64 %228, 1
  %260 = getelementptr inbounds ptr, ptr %232, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  %263 = getelementptr inbounds ptr, ptr %262, i64 %221
  %264 = load ptr, ptr %263, align 8, !tbaa !6
  %265 = getelementptr inbounds ptr, ptr %264, i64 %222
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = load i16, ptr %266, align 2, !tbaa !25
  %268 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %224, i64 0, i64 %229, i64 %259
  store i16 %267, ptr %268, align 2, !tbaa !25
  %269 = getelementptr inbounds i8, ptr %266, i64 2
  %270 = load i16, ptr %269, align 2, !tbaa !25
  %271 = getelementptr inbounds i8, ptr %268, i64 2
  store i16 %270, ptr %271, align 2, !tbaa !25
  %272 = getelementptr inbounds ptr, ptr %234, i64 %259
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  %275 = getelementptr inbounds ptr, ptr %274, i64 %221
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  %277 = getelementptr inbounds ptr, ptr %276, i64 %222
  %278 = load ptr, ptr %277, align 8, !tbaa !6
  %279 = load i16, ptr %278, align 2, !tbaa !25
  %280 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %225, i64 0, i64 %229, i64 %259
  store i16 %279, ptr %280, align 2, !tbaa !25
  %281 = getelementptr inbounds i8, ptr %278, i64 2
  %282 = load i16, ptr %281, align 2, !tbaa !25
  %283 = getelementptr inbounds i8, ptr %280, i64 2
  store i16 %282, ptr %283, align 2, !tbaa !25
  %284 = or disjoint i64 %229, 1
  %285 = icmp slt i64 %284, %230
  br i1 %285, label %286, label %497

286:                                              ; preds = %220
  %287 = getelementptr inbounds ptr, ptr %10, i64 %284
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = getelementptr inbounds ptr, ptr %12, i64 %284
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = getelementptr inbounds ptr, ptr %288, i64 %228
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = load ptr, ptr %292, align 8, !tbaa !6
  %294 = getelementptr inbounds ptr, ptr %293, i64 %221
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = getelementptr inbounds ptr, ptr %295, i64 %222
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  %298 = load i16, ptr %297, align 2, !tbaa !25
  %299 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %224, i64 0, i64 %284, i64 %228
  store i16 %298, ptr %299, align 2, !tbaa !25
  %300 = getelementptr inbounds i8, ptr %297, i64 2
  %301 = load i16, ptr %300, align 2, !tbaa !25
  %302 = getelementptr inbounds i8, ptr %299, i64 2
  store i16 %301, ptr %302, align 2, !tbaa !25
  %303 = getelementptr inbounds ptr, ptr %290, i64 %228
  %304 = load ptr, ptr %303, align 8, !tbaa !6
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = getelementptr inbounds ptr, ptr %305, i64 %221
  %307 = load ptr, ptr %306, align 8, !tbaa !6
  %308 = getelementptr inbounds ptr, ptr %307, i64 %222
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = load i16, ptr %309, align 2, !tbaa !25
  %311 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %225, i64 0, i64 %284, i64 %228
  store i16 %310, ptr %311, align 2, !tbaa !25
  %312 = getelementptr inbounds i8, ptr %309, i64 2
  %313 = load i16, ptr %312, align 2, !tbaa !25
  %314 = getelementptr inbounds i8, ptr %311, i64 2
  store i16 %313, ptr %314, align 2, !tbaa !25
  %315 = getelementptr inbounds ptr, ptr %288, i64 %259
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = load ptr, ptr %316, align 8, !tbaa !6
  %318 = getelementptr inbounds ptr, ptr %317, i64 %221
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  %320 = getelementptr inbounds ptr, ptr %319, i64 %222
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  %322 = load i16, ptr %321, align 2, !tbaa !25
  %323 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %224, i64 0, i64 %284, i64 %259
  store i16 %322, ptr %323, align 2, !tbaa !25
  %324 = getelementptr inbounds i8, ptr %321, i64 2
  %325 = load i16, ptr %324, align 2, !tbaa !25
  %326 = getelementptr inbounds i8, ptr %323, i64 2
  store i16 %325, ptr %326, align 2, !tbaa !25
  %327 = getelementptr inbounds ptr, ptr %290, i64 %259
  %328 = load ptr, ptr %327, align 8, !tbaa !6
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds ptr, ptr %329, i64 %221
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = getelementptr inbounds ptr, ptr %331, i64 %222
  %333 = load ptr, ptr %332, align 8, !tbaa !6
  %334 = load i16, ptr %333, align 2, !tbaa !25
  %335 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %225, i64 0, i64 %284, i64 %259
  store i16 %334, ptr %335, align 2, !tbaa !25
  %336 = getelementptr inbounds i8, ptr %333, i64 2
  %337 = load i16, ptr %336, align 2, !tbaa !25
  %338 = getelementptr inbounds i8, ptr %335, i64 2
  store i16 %337, ptr %338, align 2, !tbaa !25
  br label %497

339:                                              ; preds = %152
  %340 = getelementptr inbounds ptr, ptr %10, i64 %218
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds ptr, ptr %12, i64 %218
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  %344 = getelementptr inbounds ptr, ptr %341, i64 %158
  %345 = load ptr, ptr %344, align 8, !tbaa !6
  %346 = getelementptr inbounds i8, ptr %345, i64 8
  %347 = load ptr, ptr %346, align 8, !tbaa !6
  %348 = getelementptr inbounds ptr, ptr %347, i64 %153
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = getelementptr inbounds ptr, ptr %349, i64 %154
  %351 = load ptr, ptr %350, align 8, !tbaa !6
  %352 = load i16, ptr %351, align 2, !tbaa !25
  %353 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %155, i64 1, i64 %218, i64 %158
  store i16 %352, ptr %353, align 2, !tbaa !25
  %354 = getelementptr inbounds i8, ptr %351, i64 2
  %355 = load i16, ptr %354, align 2, !tbaa !25
  %356 = getelementptr inbounds i8, ptr %353, i64 2
  store i16 %355, ptr %356, align 2, !tbaa !25
  %357 = getelementptr inbounds ptr, ptr %343, i64 %158
  %358 = load ptr, ptr %357, align 8, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %358, i64 8
  %360 = load ptr, ptr %359, align 8, !tbaa !6
  %361 = getelementptr inbounds ptr, ptr %360, i64 %153
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  %363 = getelementptr inbounds ptr, ptr %362, i64 %154
  %364 = load ptr, ptr %363, align 8, !tbaa !6
  %365 = load i16, ptr %364, align 2, !tbaa !25
  %366 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %155, i64 1, i64 %218, i64 %158
  store i16 %365, ptr %366, align 2, !tbaa !25
  %367 = getelementptr inbounds i8, ptr %364, i64 2
  %368 = load i16, ptr %367, align 2, !tbaa !25
  %369 = getelementptr inbounds i8, ptr %366, i64 2
  store i16 %368, ptr %369, align 2, !tbaa !25
  %370 = getelementptr inbounds ptr, ptr %341, i64 %191
  %371 = load ptr, ptr %370, align 8, !tbaa !6
  %372 = getelementptr inbounds i8, ptr %371, i64 8
  %373 = load ptr, ptr %372, align 8, !tbaa !6
  %374 = getelementptr inbounds ptr, ptr %373, i64 %153
  %375 = load ptr, ptr %374, align 8, !tbaa !6
  %376 = getelementptr inbounds ptr, ptr %375, i64 %154
  %377 = load ptr, ptr %376, align 8, !tbaa !6
  %378 = load i16, ptr %377, align 2, !tbaa !25
  %379 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %155, i64 1, i64 %218, i64 %191
  store i16 %378, ptr %379, align 2, !tbaa !25
  %380 = getelementptr inbounds i8, ptr %377, i64 2
  %381 = load i16, ptr %380, align 2, !tbaa !25
  %382 = getelementptr inbounds i8, ptr %379, i64 2
  store i16 %381, ptr %382, align 2, !tbaa !25
  %383 = getelementptr inbounds ptr, ptr %343, i64 %191
  %384 = load ptr, ptr %383, align 8, !tbaa !6
  %385 = getelementptr inbounds i8, ptr %384, i64 8
  %386 = load ptr, ptr %385, align 8, !tbaa !6
  %387 = getelementptr inbounds ptr, ptr %386, i64 %153
  %388 = load ptr, ptr %387, align 8, !tbaa !6
  %389 = getelementptr inbounds ptr, ptr %388, i64 %154
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  %391 = load i16, ptr %390, align 2, !tbaa !25
  %392 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %155, i64 1, i64 %218, i64 %191
  store i16 %391, ptr %392, align 2, !tbaa !25
  %393 = getelementptr inbounds i8, ptr %390, i64 2
  %394 = load i16, ptr %393, align 2, !tbaa !25
  %395 = getelementptr inbounds i8, ptr %392, i64 2
  store i16 %394, ptr %395, align 2, !tbaa !25
  br label %497

396:                                              ; preds = %137, %396
  %397 = phi i64 [ %149, %137 ], [ %494, %396 ]
  %398 = getelementptr inbounds ptr, ptr %10, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !6
  %400 = getelementptr inbounds ptr, ptr %12, i64 %397
  %401 = load ptr, ptr %400, align 8, !tbaa !6
  %402 = getelementptr inbounds ptr, ptr %399, i64 %148
  %403 = load ptr, ptr %402, align 8, !tbaa !6
  %404 = load ptr, ptr %403, align 8, !tbaa !6
  %405 = getelementptr inbounds ptr, ptr %404, i64 %138
  %406 = load ptr, ptr %405, align 8, !tbaa !6
  %407 = getelementptr inbounds ptr, ptr %406, i64 %139
  %408 = load ptr, ptr %407, align 8, !tbaa !6
  %409 = load i16, ptr %408, align 2, !tbaa !25
  %410 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %141, i64 0, i64 %397, i64 %148
  store i16 %409, ptr %410, align 2, !tbaa !25
  %411 = getelementptr inbounds i8, ptr %408, i64 2
  %412 = load i16, ptr %411, align 2, !tbaa !25
  %413 = getelementptr inbounds i8, ptr %410, i64 2
  store i16 %412, ptr %413, align 2, !tbaa !25
  %414 = getelementptr inbounds ptr, ptr %401, i64 %148
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  %416 = load ptr, ptr %415, align 8, !tbaa !6
  %417 = getelementptr inbounds ptr, ptr %416, i64 %138
  %418 = load ptr, ptr %417, align 8, !tbaa !6
  %419 = getelementptr inbounds ptr, ptr %418, i64 %139
  %420 = load ptr, ptr %419, align 8, !tbaa !6
  %421 = load i16, ptr %420, align 2, !tbaa !25
  %422 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %142, i64 0, i64 %397, i64 %148
  store i16 %421, ptr %422, align 2, !tbaa !25
  %423 = getelementptr inbounds i8, ptr %420, i64 2
  %424 = load i16, ptr %423, align 2, !tbaa !25
  %425 = getelementptr inbounds i8, ptr %422, i64 2
  store i16 %424, ptr %425, align 2, !tbaa !25
  %426 = getelementptr inbounds i8, ptr %403, i64 8
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = getelementptr inbounds ptr, ptr %427, i64 %143
  %429 = load ptr, ptr %428, align 8, !tbaa !6
  %430 = getelementptr inbounds ptr, ptr %429, i64 %139
  %431 = load ptr, ptr %430, align 8, !tbaa !6
  %432 = load i16, ptr %431, align 2, !tbaa !25
  %433 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %144, i64 0, i64 %397, i64 %148
  store i16 %432, ptr %433, align 2, !tbaa !25
  %434 = getelementptr inbounds i8, ptr %431, i64 2
  %435 = load i16, ptr %434, align 2, !tbaa !25
  %436 = getelementptr inbounds i8, ptr %433, i64 2
  store i16 %435, ptr %436, align 2, !tbaa !25
  %437 = getelementptr inbounds i8, ptr %415, i64 8
  %438 = load ptr, ptr %437, align 8, !tbaa !6
  %439 = getelementptr inbounds ptr, ptr %438, i64 %143
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = getelementptr inbounds ptr, ptr %440, i64 %139
  %442 = load ptr, ptr %441, align 8, !tbaa !6
  %443 = load i16, ptr %442, align 2, !tbaa !25
  %444 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %145, i64 0, i64 %397, i64 %148
  store i16 %443, ptr %444, align 2, !tbaa !25
  %445 = getelementptr inbounds i8, ptr %442, i64 2
  %446 = load i16, ptr %445, align 2, !tbaa !25
  %447 = getelementptr inbounds i8, ptr %444, i64 2
  store i16 %446, ptr %447, align 2, !tbaa !25
  %448 = getelementptr inbounds ptr, ptr %399, i64 %151
  %449 = load ptr, ptr %448, align 8, !tbaa !6
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = getelementptr inbounds ptr, ptr %450, i64 %138
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = getelementptr inbounds ptr, ptr %452, i64 %139
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  %455 = load i16, ptr %454, align 2, !tbaa !25
  %456 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %141, i64 0, i64 %397, i64 %151
  store i16 %455, ptr %456, align 2, !tbaa !25
  %457 = getelementptr inbounds i8, ptr %454, i64 2
  %458 = load i16, ptr %457, align 2, !tbaa !25
  %459 = getelementptr inbounds i8, ptr %456, i64 2
  store i16 %458, ptr %459, align 2, !tbaa !25
  %460 = getelementptr inbounds ptr, ptr %401, i64 %151
  %461 = load ptr, ptr %460, align 8, !tbaa !6
  %462 = load ptr, ptr %461, align 8, !tbaa !6
  %463 = getelementptr inbounds ptr, ptr %462, i64 %138
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = getelementptr inbounds ptr, ptr %464, i64 %139
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = load i16, ptr %466, align 2, !tbaa !25
  %468 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %142, i64 0, i64 %397, i64 %151
  store i16 %467, ptr %468, align 2, !tbaa !25
  %469 = getelementptr inbounds i8, ptr %466, i64 2
  %470 = load i16, ptr %469, align 2, !tbaa !25
  %471 = getelementptr inbounds i8, ptr %468, i64 2
  store i16 %470, ptr %471, align 2, !tbaa !25
  %472 = getelementptr inbounds i8, ptr %449, i64 8
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  %474 = getelementptr inbounds ptr, ptr %473, i64 %143
  %475 = load ptr, ptr %474, align 8, !tbaa !6
  %476 = getelementptr inbounds ptr, ptr %475, i64 %139
  %477 = load ptr, ptr %476, align 8, !tbaa !6
  %478 = load i16, ptr %477, align 2, !tbaa !25
  %479 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %144, i64 0, i64 %397, i64 %151
  store i16 %478, ptr %479, align 2, !tbaa !25
  %480 = getelementptr inbounds i8, ptr %477, i64 2
  %481 = load i16, ptr %480, align 2, !tbaa !25
  %482 = getelementptr inbounds i8, ptr %479, i64 2
  store i16 %481, ptr %482, align 2, !tbaa !25
  %483 = getelementptr inbounds i8, ptr %461, i64 8
  %484 = load ptr, ptr %483, align 8, !tbaa !6
  %485 = getelementptr inbounds ptr, ptr %484, i64 %143
  %486 = load ptr, ptr %485, align 8, !tbaa !6
  %487 = getelementptr inbounds ptr, ptr %486, i64 %139
  %488 = load ptr, ptr %487, align 8, !tbaa !6
  %489 = load i16, ptr %488, align 2, !tbaa !25
  %490 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %145, i64 0, i64 %397, i64 %151
  store i16 %489, ptr %490, align 2, !tbaa !25
  %491 = getelementptr inbounds i8, ptr %488, i64 2
  %492 = load i16, ptr %491, align 2, !tbaa !25
  %493 = getelementptr inbounds i8, ptr %490, i64 2
  store i16 %492, ptr %493, align 2, !tbaa !25
  %494 = add nsw i64 %397, 1
  %495 = icmp slt i64 %494, %150
  br i1 %495, label %396, label %497

496:                                              ; preds = %136
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 255) #15
  br label %497

497:                                              ; preds = %396, %152, %339, %220, %286, %18, %83, %496, %16
  ret void
}

; Function Attrs: nounwind
define dso_local void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 89336
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, ptr %5, i64 89328
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds i8, ptr %2, i64 6156
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !25
  %14 = getelementptr inbounds i8, ptr %2, i64 6148
  %15 = getelementptr inbounds [4 x i16], ptr %14, i64 0, i64 %11
  %16 = load i16, ptr %15, align 2, !tbaa !25
  %17 = getelementptr inbounds i8, ptr %2, i64 6164
  %18 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 %11
  %19 = load i8, ptr %18, align 1, !tbaa !20
  %20 = getelementptr inbounds i8, ptr %2, i64 6168
  %21 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 %11
  %22 = load i8, ptr %21, align 1, !tbaa !20
  %23 = and i32 %1, -2
  %24 = add nsw i32 %23, 2
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %26, label %146

26:                                               ; preds = %4
  %27 = icmp sgt i16 %13, -1
  br i1 %27, label %28, label %507

28:                                               ; preds = %26
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %29
  %31 = zext i8 %19 to i64
  %32 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %29
  %33 = shl i32 %1, 1
  %34 = and i32 %33, 2
  %35 = zext nneg i32 %34 to i64
  %36 = sext i32 %23 to i64
  %37 = sext i32 %24 to i64
  %38 = getelementptr inbounds ptr, ptr %7, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds ptr, ptr %9, i64 %36
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %30, i64 0, i64 %36, i64 %35
  %43 = load i16, ptr %42, align 2, !tbaa !25
  %44 = getelementptr inbounds ptr, ptr %39, i64 %35
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds ptr, ptr %46, i64 %31
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  store i16 %43, ptr %50, align 2, !tbaa !25
  %51 = getelementptr inbounds i8, ptr %42, i64 2
  %52 = load i16, ptr %51, align 2, !tbaa !25
  %53 = getelementptr inbounds i8, ptr %50, i64 2
  store i16 %52, ptr %53, align 2, !tbaa !25
  %54 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %32, i64 0, i64 %36, i64 %35
  %55 = load i16, ptr %54, align 2, !tbaa !25
  %56 = getelementptr inbounds ptr, ptr %41, i64 %35
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds ptr, ptr %58, i64 %31
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %60, i64 32
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  store i16 %55, ptr %62, align 2, !tbaa !25
  %63 = getelementptr inbounds i8, ptr %54, i64 2
  %64 = load i16, ptr %63, align 2, !tbaa !25
  %65 = getelementptr inbounds i8, ptr %62, i64 2
  store i16 %64, ptr %65, align 2, !tbaa !25
  %66 = or disjoint i64 %35, 1
  %67 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %30, i64 0, i64 %36, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !25
  %69 = getelementptr inbounds ptr, ptr %39, i64 %66
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %31
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 32
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  store i16 %68, ptr %75, align 2, !tbaa !25
  %76 = getelementptr inbounds i8, ptr %67, i64 2
  %77 = load i16, ptr %76, align 2, !tbaa !25
  %78 = getelementptr inbounds i8, ptr %75, i64 2
  store i16 %77, ptr %78, align 2, !tbaa !25
  %79 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %32, i64 0, i64 %36, i64 %66
  %80 = load i16, ptr %79, align 2, !tbaa !25
  %81 = getelementptr inbounds ptr, ptr %41, i64 %66
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds ptr, ptr %83, i64 %31
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  store i16 %80, ptr %87, align 2, !tbaa !25
  %88 = getelementptr inbounds i8, ptr %79, i64 2
  %89 = load i16, ptr %88, align 2, !tbaa !25
  %90 = getelementptr inbounds i8, ptr %87, i64 2
  store i16 %89, ptr %90, align 2, !tbaa !25
  %91 = or disjoint i64 %36, 1
  %92 = icmp slt i64 %91, %37
  br i1 %92, label %93, label %507

93:                                               ; preds = %28
  %94 = getelementptr inbounds ptr, ptr %7, i64 %91
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds ptr, ptr %9, i64 %91
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %30, i64 0, i64 %91, i64 %35
  %99 = load i16, ptr %98, align 2, !tbaa !25
  %100 = getelementptr inbounds ptr, ptr %95, i64 %35
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %31
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 32
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  store i16 %99, ptr %106, align 2, !tbaa !25
  %107 = getelementptr inbounds i8, ptr %98, i64 2
  %108 = load i16, ptr %107, align 2, !tbaa !25
  %109 = getelementptr inbounds i8, ptr %106, i64 2
  store i16 %108, ptr %109, align 2, !tbaa !25
  %110 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %32, i64 0, i64 %91, i64 %35
  %111 = load i16, ptr %110, align 2, !tbaa !25
  %112 = getelementptr inbounds ptr, ptr %97, i64 %35
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds ptr, ptr %114, i64 %31
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  store i16 %111, ptr %118, align 2, !tbaa !25
  %119 = getelementptr inbounds i8, ptr %110, i64 2
  %120 = load i16, ptr %119, align 2, !tbaa !25
  %121 = getelementptr inbounds i8, ptr %118, i64 2
  store i16 %120, ptr %121, align 2, !tbaa !25
  %122 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %30, i64 0, i64 %91, i64 %66
  %123 = load i16, ptr %122, align 2, !tbaa !25
  %124 = getelementptr inbounds ptr, ptr %95, i64 %66
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds ptr, ptr %126, i64 %31
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 32
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  store i16 %123, ptr %130, align 2, !tbaa !25
  %131 = getelementptr inbounds i8, ptr %122, i64 2
  %132 = load i16, ptr %131, align 2, !tbaa !25
  %133 = getelementptr inbounds i8, ptr %130, i64 2
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %32, i64 0, i64 %91, i64 %66
  %135 = load i16, ptr %134, align 2, !tbaa !25
  %136 = getelementptr inbounds ptr, ptr %97, i64 %66
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load ptr, ptr %137, align 8, !tbaa !6
  %139 = getelementptr inbounds ptr, ptr %138, i64 %31
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  store i16 %135, ptr %142, align 2, !tbaa !25
  %143 = getelementptr inbounds i8, ptr %134, i64 2
  %144 = load i16, ptr %143, align 2, !tbaa !25
  %145 = getelementptr inbounds i8, ptr %142, i64 2
  store i16 %144, ptr %145, align 2, !tbaa !25
  br label %507

146:                                              ; preds = %4
  switch i16 %13, label %506 [
    i16 0, label %230
    i16 1, label %162
    i16 2, label %147
  ]

147:                                              ; preds = %146
  %148 = sext i32 %0 to i64
  %149 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %148
  %150 = zext i8 %19 to i64
  %151 = sext i16 %16 to i64
  %152 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %148
  %153 = getelementptr inbounds i8, ptr %149, i64 64
  %154 = zext i8 %22 to i64
  %155 = getelementptr inbounds i8, ptr %152, i64 64
  %156 = shl i32 %1, 1
  %157 = and i32 %156, 2
  %158 = zext nneg i32 %157 to i64
  %159 = sext i32 %23 to i64
  %160 = sext i32 %24 to i64
  %161 = or disjoint i64 %158, 1
  br label %406

162:                                              ; preds = %146
  %163 = sext i32 %0 to i64
  %164 = zext i8 %22 to i64
  %165 = sext i16 %16 to i64
  %166 = shl i32 %1, 1
  %167 = and i32 %166, 2
  %168 = zext nneg i32 %167 to i64
  %169 = sext i32 %23 to i64
  %170 = sext i32 %24 to i64
  %171 = getelementptr inbounds ptr, ptr %7, i64 %169
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds ptr, ptr %9, i64 %169
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %163, i64 1, i64 %169, i64 %168
  %176 = load i16, ptr %175, align 2, !tbaa !25
  %177 = getelementptr inbounds ptr, ptr %172, i64 %168
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = getelementptr inbounds i8, ptr %178, i64 8
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = getelementptr inbounds ptr, ptr %180, i64 %164
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds ptr, ptr %182, i64 %165
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  store i16 %176, ptr %184, align 2, !tbaa !25
  %185 = getelementptr inbounds i8, ptr %175, i64 2
  %186 = load i16, ptr %185, align 2, !tbaa !25
  %187 = getelementptr inbounds i8, ptr %184, i64 2
  store i16 %186, ptr %187, align 2, !tbaa !25
  %188 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %163, i64 1, i64 %169, i64 %168
  %189 = load i16, ptr %188, align 2, !tbaa !25
  %190 = getelementptr inbounds ptr, ptr %174, i64 %168
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = getelementptr inbounds i8, ptr %191, i64 8
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds ptr, ptr %193, i64 %164
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds ptr, ptr %195, i64 %165
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  store i16 %189, ptr %197, align 2, !tbaa !25
  %198 = getelementptr inbounds i8, ptr %188, i64 2
  %199 = load i16, ptr %198, align 2, !tbaa !25
  %200 = getelementptr inbounds i8, ptr %197, i64 2
  store i16 %199, ptr %200, align 2, !tbaa !25
  %201 = or disjoint i64 %168, 1
  %202 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %163, i64 1, i64 %169, i64 %201
  %203 = load i16, ptr %202, align 2, !tbaa !25
  %204 = getelementptr inbounds ptr, ptr %172, i64 %201
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %205, i64 8
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = getelementptr inbounds ptr, ptr %207, i64 %164
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = getelementptr inbounds ptr, ptr %209, i64 %165
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  store i16 %203, ptr %211, align 2, !tbaa !25
  %212 = getelementptr inbounds i8, ptr %202, i64 2
  %213 = load i16, ptr %212, align 2, !tbaa !25
  %214 = getelementptr inbounds i8, ptr %211, i64 2
  store i16 %213, ptr %214, align 2, !tbaa !25
  %215 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %163, i64 1, i64 %169, i64 %201
  %216 = load i16, ptr %215, align 2, !tbaa !25
  %217 = getelementptr inbounds ptr, ptr %174, i64 %201
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %218, i64 8
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = getelementptr inbounds ptr, ptr %220, i64 %164
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = getelementptr inbounds ptr, ptr %222, i64 %165
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  store i16 %216, ptr %224, align 2, !tbaa !25
  %225 = getelementptr inbounds i8, ptr %215, i64 2
  %226 = load i16, ptr %225, align 2, !tbaa !25
  %227 = getelementptr inbounds i8, ptr %224, i64 2
  store i16 %226, ptr %227, align 2, !tbaa !25
  %228 = or disjoint i64 %169, 1
  %229 = icmp slt i64 %228, %170
  br i1 %229, label %349, label %507

230:                                              ; preds = %146
  %231 = sext i32 %0 to i64
  %232 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %231
  %233 = zext i8 %19 to i64
  %234 = sext i16 %16 to i64
  %235 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %231
  %236 = shl i32 %1, 1
  %237 = and i32 %236, 2
  %238 = zext nneg i32 %237 to i64
  %239 = sext i32 %23 to i64
  %240 = sext i32 %24 to i64
  %241 = getelementptr inbounds ptr, ptr %7, i64 %239
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = getelementptr inbounds ptr, ptr %9, i64 %239
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %232, i64 0, i64 %239, i64 %238
  %246 = load i16, ptr %245, align 2, !tbaa !25
  %247 = getelementptr inbounds ptr, ptr %242, i64 %238
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = getelementptr inbounds ptr, ptr %249, i64 %233
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = getelementptr inbounds ptr, ptr %251, i64 %234
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  store i16 %246, ptr %253, align 2, !tbaa !25
  %254 = getelementptr inbounds i8, ptr %245, i64 2
  %255 = load i16, ptr %254, align 2, !tbaa !25
  %256 = getelementptr inbounds i8, ptr %253, i64 2
  store i16 %255, ptr %256, align 2, !tbaa !25
  %257 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %235, i64 0, i64 %239, i64 %238
  %258 = load i16, ptr %257, align 2, !tbaa !25
  %259 = getelementptr inbounds ptr, ptr %244, i64 %238
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = getelementptr inbounds ptr, ptr %261, i64 %233
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = getelementptr inbounds ptr, ptr %263, i64 %234
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  store i16 %258, ptr %265, align 2, !tbaa !25
  %266 = getelementptr inbounds i8, ptr %257, i64 2
  %267 = load i16, ptr %266, align 2, !tbaa !25
  %268 = getelementptr inbounds i8, ptr %265, i64 2
  store i16 %267, ptr %268, align 2, !tbaa !25
  %269 = or disjoint i64 %238, 1
  %270 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %232, i64 0, i64 %239, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !25
  %272 = getelementptr inbounds ptr, ptr %242, i64 %269
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  %275 = getelementptr inbounds ptr, ptr %274, i64 %233
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  %277 = getelementptr inbounds ptr, ptr %276, i64 %234
  %278 = load ptr, ptr %277, align 8, !tbaa !6
  store i16 %271, ptr %278, align 2, !tbaa !25
  %279 = getelementptr inbounds i8, ptr %270, i64 2
  %280 = load i16, ptr %279, align 2, !tbaa !25
  %281 = getelementptr inbounds i8, ptr %278, i64 2
  store i16 %280, ptr %281, align 2, !tbaa !25
  %282 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %235, i64 0, i64 %239, i64 %269
  %283 = load i16, ptr %282, align 2, !tbaa !25
  %284 = getelementptr inbounds ptr, ptr %244, i64 %269
  %285 = load ptr, ptr %284, align 8, !tbaa !6
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = getelementptr inbounds ptr, ptr %286, i64 %233
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = getelementptr inbounds ptr, ptr %288, i64 %234
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  store i16 %283, ptr %290, align 2, !tbaa !25
  %291 = getelementptr inbounds i8, ptr %282, i64 2
  %292 = load i16, ptr %291, align 2, !tbaa !25
  %293 = getelementptr inbounds i8, ptr %290, i64 2
  store i16 %292, ptr %293, align 2, !tbaa !25
  %294 = or disjoint i64 %239, 1
  %295 = icmp slt i64 %294, %240
  br i1 %295, label %296, label %507

296:                                              ; preds = %230
  %297 = getelementptr inbounds ptr, ptr %7, i64 %294
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = getelementptr inbounds ptr, ptr %9, i64 %294
  %300 = load ptr, ptr %299, align 8, !tbaa !6
  %301 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %232, i64 0, i64 %294, i64 %238
  %302 = load i16, ptr %301, align 2, !tbaa !25
  %303 = getelementptr inbounds ptr, ptr %298, i64 %238
  %304 = load ptr, ptr %303, align 8, !tbaa !6
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = getelementptr inbounds ptr, ptr %305, i64 %233
  %307 = load ptr, ptr %306, align 8, !tbaa !6
  %308 = getelementptr inbounds ptr, ptr %307, i64 %234
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  store i16 %302, ptr %309, align 2, !tbaa !25
  %310 = getelementptr inbounds i8, ptr %301, i64 2
  %311 = load i16, ptr %310, align 2, !tbaa !25
  %312 = getelementptr inbounds i8, ptr %309, i64 2
  store i16 %311, ptr %312, align 2, !tbaa !25
  %313 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %235, i64 0, i64 %294, i64 %238
  %314 = load i16, ptr %313, align 2, !tbaa !25
  %315 = getelementptr inbounds ptr, ptr %300, i64 %238
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = load ptr, ptr %316, align 8, !tbaa !6
  %318 = getelementptr inbounds ptr, ptr %317, i64 %233
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  %320 = getelementptr inbounds ptr, ptr %319, i64 %234
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  store i16 %314, ptr %321, align 2, !tbaa !25
  %322 = getelementptr inbounds i8, ptr %313, i64 2
  %323 = load i16, ptr %322, align 2, !tbaa !25
  %324 = getelementptr inbounds i8, ptr %321, i64 2
  store i16 %323, ptr %324, align 2, !tbaa !25
  %325 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %232, i64 0, i64 %294, i64 %269
  %326 = load i16, ptr %325, align 2, !tbaa !25
  %327 = getelementptr inbounds ptr, ptr %298, i64 %269
  %328 = load ptr, ptr %327, align 8, !tbaa !6
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds ptr, ptr %329, i64 %233
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = getelementptr inbounds ptr, ptr %331, i64 %234
  %333 = load ptr, ptr %332, align 8, !tbaa !6
  store i16 %326, ptr %333, align 2, !tbaa !25
  %334 = getelementptr inbounds i8, ptr %325, i64 2
  %335 = load i16, ptr %334, align 2, !tbaa !25
  %336 = getelementptr inbounds i8, ptr %333, i64 2
  store i16 %335, ptr %336, align 2, !tbaa !25
  %337 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %235, i64 0, i64 %294, i64 %269
  %338 = load i16, ptr %337, align 2, !tbaa !25
  %339 = getelementptr inbounds ptr, ptr %300, i64 %269
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds ptr, ptr %341, i64 %233
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  %344 = getelementptr inbounds ptr, ptr %343, i64 %234
  %345 = load ptr, ptr %344, align 8, !tbaa !6
  store i16 %338, ptr %345, align 2, !tbaa !25
  %346 = getelementptr inbounds i8, ptr %337, i64 2
  %347 = load i16, ptr %346, align 2, !tbaa !25
  %348 = getelementptr inbounds i8, ptr %345, i64 2
  store i16 %347, ptr %348, align 2, !tbaa !25
  br label %507

349:                                              ; preds = %162
  %350 = getelementptr inbounds ptr, ptr %7, i64 %228
  %351 = load ptr, ptr %350, align 8, !tbaa !6
  %352 = getelementptr inbounds ptr, ptr %9, i64 %228
  %353 = load ptr, ptr %352, align 8, !tbaa !6
  %354 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %163, i64 1, i64 %228, i64 %168
  %355 = load i16, ptr %354, align 2, !tbaa !25
  %356 = getelementptr inbounds ptr, ptr %351, i64 %168
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = getelementptr inbounds i8, ptr %357, i64 8
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds ptr, ptr %359, i64 %164
  %361 = load ptr, ptr %360, align 8, !tbaa !6
  %362 = getelementptr inbounds ptr, ptr %361, i64 %165
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  store i16 %355, ptr %363, align 2, !tbaa !25
  %364 = getelementptr inbounds i8, ptr %354, i64 2
  %365 = load i16, ptr %364, align 2, !tbaa !25
  %366 = getelementptr inbounds i8, ptr %363, i64 2
  store i16 %365, ptr %366, align 2, !tbaa !25
  %367 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %163, i64 1, i64 %228, i64 %168
  %368 = load i16, ptr %367, align 2, !tbaa !25
  %369 = getelementptr inbounds ptr, ptr %353, i64 %168
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 8
  %372 = load ptr, ptr %371, align 8, !tbaa !6
  %373 = getelementptr inbounds ptr, ptr %372, i64 %164
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = getelementptr inbounds ptr, ptr %374, i64 %165
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  store i16 %368, ptr %376, align 2, !tbaa !25
  %377 = getelementptr inbounds i8, ptr %367, i64 2
  %378 = load i16, ptr %377, align 2, !tbaa !25
  %379 = getelementptr inbounds i8, ptr %376, i64 2
  store i16 %378, ptr %379, align 2, !tbaa !25
  %380 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %163, i64 1, i64 %228, i64 %201
  %381 = load i16, ptr %380, align 2, !tbaa !25
  %382 = getelementptr inbounds ptr, ptr %351, i64 %201
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds i8, ptr %383, i64 8
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = getelementptr inbounds ptr, ptr %385, i64 %164
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = getelementptr inbounds ptr, ptr %387, i64 %165
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  store i16 %381, ptr %389, align 2, !tbaa !25
  %390 = getelementptr inbounds i8, ptr %380, i64 2
  %391 = load i16, ptr %390, align 2, !tbaa !25
  %392 = getelementptr inbounds i8, ptr %389, i64 2
  store i16 %391, ptr %392, align 2, !tbaa !25
  %393 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %163, i64 1, i64 %228, i64 %201
  %394 = load i16, ptr %393, align 2, !tbaa !25
  %395 = getelementptr inbounds ptr, ptr %353, i64 %201
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = getelementptr inbounds i8, ptr %396, i64 8
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = getelementptr inbounds ptr, ptr %398, i64 %164
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds ptr, ptr %400, i64 %165
  %402 = load ptr, ptr %401, align 8, !tbaa !6
  store i16 %394, ptr %402, align 2, !tbaa !25
  %403 = getelementptr inbounds i8, ptr %393, i64 2
  %404 = load i16, ptr %403, align 2, !tbaa !25
  %405 = getelementptr inbounds i8, ptr %402, i64 2
  store i16 %404, ptr %405, align 2, !tbaa !25
  br label %507

406:                                              ; preds = %147, %406
  %407 = phi i64 [ %159, %147 ], [ %504, %406 ]
  %408 = getelementptr inbounds ptr, ptr %7, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !6
  %410 = getelementptr inbounds ptr, ptr %9, i64 %407
  %411 = load ptr, ptr %410, align 8, !tbaa !6
  %412 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %149, i64 0, i64 %407, i64 %158
  %413 = load i16, ptr %412, align 2, !tbaa !25
  %414 = getelementptr inbounds ptr, ptr %409, i64 %158
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  %416 = load ptr, ptr %415, align 8, !tbaa !6
  %417 = getelementptr inbounds ptr, ptr %416, i64 %150
  %418 = load ptr, ptr %417, align 8, !tbaa !6
  %419 = getelementptr inbounds ptr, ptr %418, i64 %151
  %420 = load ptr, ptr %419, align 8, !tbaa !6
  store i16 %413, ptr %420, align 2, !tbaa !25
  %421 = getelementptr inbounds i8, ptr %412, i64 2
  %422 = load i16, ptr %421, align 2, !tbaa !25
  %423 = getelementptr inbounds i8, ptr %420, i64 2
  store i16 %422, ptr %423, align 2, !tbaa !25
  %424 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %152, i64 0, i64 %407, i64 %158
  %425 = load i16, ptr %424, align 2, !tbaa !25
  %426 = getelementptr inbounds ptr, ptr %411, i64 %158
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = getelementptr inbounds ptr, ptr %428, i64 %150
  %430 = load ptr, ptr %429, align 8, !tbaa !6
  %431 = getelementptr inbounds ptr, ptr %430, i64 %151
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  store i16 %425, ptr %432, align 2, !tbaa !25
  %433 = getelementptr inbounds i8, ptr %424, i64 2
  %434 = load i16, ptr %433, align 2, !tbaa !25
  %435 = getelementptr inbounds i8, ptr %432, i64 2
  store i16 %434, ptr %435, align 2, !tbaa !25
  %436 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %153, i64 0, i64 %407, i64 %158
  %437 = load i16, ptr %436, align 2, !tbaa !25
  %438 = getelementptr inbounds i8, ptr %415, i64 8
  %439 = load ptr, ptr %438, align 8, !tbaa !6
  %440 = getelementptr inbounds ptr, ptr %439, i64 %154
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  %442 = getelementptr inbounds ptr, ptr %441, i64 %151
  %443 = load ptr, ptr %442, align 8, !tbaa !6
  store i16 %437, ptr %443, align 2, !tbaa !25
  %444 = getelementptr inbounds i8, ptr %436, i64 2
  %445 = load i16, ptr %444, align 2, !tbaa !25
  %446 = getelementptr inbounds i8, ptr %443, i64 2
  store i16 %445, ptr %446, align 2, !tbaa !25
  %447 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %155, i64 0, i64 %407, i64 %158
  %448 = load i16, ptr %447, align 2, !tbaa !25
  %449 = getelementptr inbounds i8, ptr %427, i64 8
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = getelementptr inbounds ptr, ptr %450, i64 %154
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = getelementptr inbounds ptr, ptr %452, i64 %151
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  store i16 %448, ptr %454, align 2, !tbaa !25
  %455 = getelementptr inbounds i8, ptr %447, i64 2
  %456 = load i16, ptr %455, align 2, !tbaa !25
  %457 = getelementptr inbounds i8, ptr %454, i64 2
  store i16 %456, ptr %457, align 2, !tbaa !25
  %458 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %149, i64 0, i64 %407, i64 %161
  %459 = load i16, ptr %458, align 2, !tbaa !25
  %460 = getelementptr inbounds ptr, ptr %409, i64 %161
  %461 = load ptr, ptr %460, align 8, !tbaa !6
  %462 = load ptr, ptr %461, align 8, !tbaa !6
  %463 = getelementptr inbounds ptr, ptr %462, i64 %150
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = getelementptr inbounds ptr, ptr %464, i64 %151
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  store i16 %459, ptr %466, align 2, !tbaa !25
  %467 = getelementptr inbounds i8, ptr %458, i64 2
  %468 = load i16, ptr %467, align 2, !tbaa !25
  %469 = getelementptr inbounds i8, ptr %466, i64 2
  store i16 %468, ptr %469, align 2, !tbaa !25
  %470 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %152, i64 0, i64 %407, i64 %161
  %471 = load i16, ptr %470, align 2, !tbaa !25
  %472 = getelementptr inbounds ptr, ptr %411, i64 %161
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  %474 = load ptr, ptr %473, align 8, !tbaa !6
  %475 = getelementptr inbounds ptr, ptr %474, i64 %150
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = getelementptr inbounds ptr, ptr %476, i64 %151
  %478 = load ptr, ptr %477, align 8, !tbaa !6
  store i16 %471, ptr %478, align 2, !tbaa !25
  %479 = getelementptr inbounds i8, ptr %470, i64 2
  %480 = load i16, ptr %479, align 2, !tbaa !25
  %481 = getelementptr inbounds i8, ptr %478, i64 2
  store i16 %480, ptr %481, align 2, !tbaa !25
  %482 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %153, i64 0, i64 %407, i64 %161
  %483 = load i16, ptr %482, align 2, !tbaa !25
  %484 = getelementptr inbounds i8, ptr %461, i64 8
  %485 = load ptr, ptr %484, align 8, !tbaa !6
  %486 = getelementptr inbounds ptr, ptr %485, i64 %154
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = getelementptr inbounds ptr, ptr %487, i64 %151
  %489 = load ptr, ptr %488, align 8, !tbaa !6
  store i16 %483, ptr %489, align 2, !tbaa !25
  %490 = getelementptr inbounds i8, ptr %482, i64 2
  %491 = load i16, ptr %490, align 2, !tbaa !25
  %492 = getelementptr inbounds i8, ptr %489, i64 2
  store i16 %491, ptr %492, align 2, !tbaa !25
  %493 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %155, i64 0, i64 %407, i64 %161
  %494 = load i16, ptr %493, align 2, !tbaa !25
  %495 = getelementptr inbounds i8, ptr %473, i64 8
  %496 = load ptr, ptr %495, align 8, !tbaa !6
  %497 = getelementptr inbounds ptr, ptr %496, i64 %154
  %498 = load ptr, ptr %497, align 8, !tbaa !6
  %499 = getelementptr inbounds ptr, ptr %498, i64 %151
  %500 = load ptr, ptr %499, align 8, !tbaa !6
  store i16 %494, ptr %500, align 2, !tbaa !25
  %501 = getelementptr inbounds i8, ptr %493, i64 2
  %502 = load i16, ptr %501, align 2, !tbaa !25
  %503 = getelementptr inbounds i8, ptr %500, i64 2
  store i16 %502, ptr %503, align 2, !tbaa !25
  %504 = add nsw i64 %407, 1
  %505 = icmp slt i64 %504, %160
  br i1 %505, label %406, label %507

506:                                              ; preds = %146
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 255) #15
  br label %507

507:                                              ; preds = %406, %162, %349, %230, %296, %28, %93, %506, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @StoreNewMotionVectorsBlock8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #11 {
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 89336
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, ptr %8, i64 89328
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = shl i32 %1, 1
  %14 = and i32 %13, 2
  %15 = and i32 %1, -2
  %16 = add nsw i32 %15, 2
  %17 = icmp slt i32 %5, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %7
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %19
  %21 = zext nneg i32 %14 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 64
  %23 = sext i32 %15 to i64
  %24 = sext i32 %16 to i64
  %25 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %20, i64 0, i64 %23, i64 %21
  store i64 0, ptr %25, align 2
  %26 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %23, i64 %21
  store i64 0, ptr %26, align 2
  %27 = or disjoint i64 %23, 1
  %28 = icmp slt i64 %27, %24
  br i1 %28, label %29, label %423

29:                                               ; preds = %18
  %30 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %20, i64 0, i64 %27, i64 %21
  store i64 0, ptr %30, align 2
  %31 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %22, i64 0, i64 %27, i64 %21
  store i64 0, ptr %31, align 2
  br label %423

32:                                               ; preds = %7
  %33 = icmp eq i32 %6, 0
  br i1 %33, label %34, label %152

34:                                               ; preds = %32
  %35 = sext i32 %3 to i64
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %36
  %39 = shl i32 %1, 1
  %40 = and i32 %39, 2
  %41 = zext nneg i32 %40 to i64
  %42 = sext i32 %15 to i64
  %43 = sext i32 %16 to i64
  %44 = getelementptr inbounds ptr, ptr %10, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds ptr, ptr %12, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds ptr, ptr %45, i64 %41
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds ptr, ptr %50, i64 %35
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 32
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = load i16, ptr %54, align 2, !tbaa !25
  %56 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %37, i64 0, i64 %42, i64 %41
  store i16 %55, ptr %56, align 2, !tbaa !25
  %57 = getelementptr inbounds i8, ptr %54, i64 2
  %58 = load i16, ptr %57, align 2, !tbaa !25
  %59 = getelementptr inbounds i8, ptr %56, i64 2
  store i16 %58, ptr %59, align 2, !tbaa !25
  %60 = getelementptr inbounds ptr, ptr %47, i64 %41
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %35
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 32
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load i16, ptr %66, align 2, !tbaa !25
  %68 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %38, i64 0, i64 %42, i64 %41
  store i16 %67, ptr %68, align 2, !tbaa !25
  %69 = getelementptr inbounds i8, ptr %66, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !25
  %71 = getelementptr inbounds i8, ptr %68, i64 2
  store i16 %70, ptr %71, align 2, !tbaa !25
  %72 = or disjoint i64 %41, 1
  %73 = getelementptr inbounds ptr, ptr %45, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %35
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %77, i64 32
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i16, ptr %79, align 2, !tbaa !25
  %81 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %37, i64 0, i64 %42, i64 %72
  store i16 %80, ptr %81, align 2, !tbaa !25
  %82 = getelementptr inbounds i8, ptr %79, i64 2
  %83 = load i16, ptr %82, align 2, !tbaa !25
  %84 = getelementptr inbounds i8, ptr %81, i64 2
  store i16 %83, ptr %84, align 2, !tbaa !25
  %85 = getelementptr inbounds ptr, ptr %47, i64 %72
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %35
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 32
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load i16, ptr %91, align 2, !tbaa !25
  %93 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %38, i64 0, i64 %42, i64 %72
  store i16 %92, ptr %93, align 2, !tbaa !25
  %94 = getelementptr inbounds i8, ptr %91, i64 2
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = getelementptr inbounds i8, ptr %93, i64 2
  store i16 %95, ptr %96, align 2, !tbaa !25
  %97 = or disjoint i64 %42, 1
  %98 = icmp slt i64 %97, %43
  br i1 %98, label %99, label %423

99:                                               ; preds = %34
  %100 = getelementptr inbounds ptr, ptr %10, i64 %97
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds ptr, ptr %12, i64 %97
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = getelementptr inbounds ptr, ptr %101, i64 %41
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 %35
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 32
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = load i16, ptr %110, align 2, !tbaa !25
  %112 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %37, i64 0, i64 %97, i64 %41
  store i16 %111, ptr %112, align 2, !tbaa !25
  %113 = getelementptr inbounds i8, ptr %110, i64 2
  %114 = load i16, ptr %113, align 2, !tbaa !25
  %115 = getelementptr inbounds i8, ptr %112, i64 2
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = getelementptr inbounds ptr, ptr %103, i64 %41
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %35
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 32
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = load i16, ptr %122, align 2, !tbaa !25
  %124 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %38, i64 0, i64 %97, i64 %41
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = getelementptr inbounds i8, ptr %122, i64 2
  %126 = load i16, ptr %125, align 2, !tbaa !25
  %127 = getelementptr inbounds i8, ptr %124, i64 2
  store i16 %126, ptr %127, align 2, !tbaa !25
  %128 = getelementptr inbounds ptr, ptr %101, i64 %72
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = getelementptr inbounds ptr, ptr %130, i64 %35
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 32
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = load i16, ptr %134, align 2, !tbaa !25
  %136 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %37, i64 0, i64 %97, i64 %72
  store i16 %135, ptr %136, align 2, !tbaa !25
  %137 = getelementptr inbounds i8, ptr %134, i64 2
  %138 = load i16, ptr %137, align 2, !tbaa !25
  %139 = getelementptr inbounds i8, ptr %136, i64 2
  store i16 %138, ptr %139, align 2, !tbaa !25
  %140 = getelementptr inbounds ptr, ptr %103, i64 %72
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = getelementptr inbounds ptr, ptr %142, i64 %35
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 32
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = load i16, ptr %146, align 2, !tbaa !25
  %148 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %38, i64 0, i64 %97, i64 %72
  store i16 %147, ptr %148, align 2, !tbaa !25
  %149 = getelementptr inbounds i8, ptr %146, i64 2
  %150 = load i16, ptr %149, align 2, !tbaa !25
  %151 = getelementptr inbounds i8, ptr %148, i64 2
  store i16 %150, ptr %151, align 2, !tbaa !25
  br label %423

152:                                              ; preds = %32
  %153 = and i32 %5, 2147483645
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %152
  %156 = sext i32 %0 to i64
  %157 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %156
  %158 = zext nneg i32 %14 to i64
  %159 = sext i32 %15 to i64
  %160 = sext i32 %16 to i64
  %161 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %157, i64 0, i64 %159, i64 %158
  store i64 0, ptr %161, align 2
  %162 = or disjoint i64 %159, 1
  %163 = icmp slt i64 %162, %160
  br i1 %163, label %283, label %285

164:                                              ; preds = %152
  %165 = sext i32 %3 to i64
  %166 = sext i32 %2 to i64
  %167 = sext i32 %0 to i64
  %168 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %167
  %169 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %167
  %170 = shl i32 %1, 1
  %171 = and i32 %170, 2
  %172 = zext nneg i32 %171 to i64
  %173 = sext i32 %15 to i64
  %174 = sext i32 %16 to i64
  %175 = getelementptr inbounds ptr, ptr %10, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = getelementptr inbounds ptr, ptr %12, i64 %173
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = getelementptr inbounds ptr, ptr %176, i64 %172
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr inbounds ptr, ptr %181, i64 %165
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = getelementptr inbounds ptr, ptr %183, i64 %166
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i16, ptr %185, align 2, !tbaa !25
  %187 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %168, i64 0, i64 %173, i64 %172
  store i16 %186, ptr %187, align 2, !tbaa !25
  %188 = getelementptr inbounds i8, ptr %185, i64 2
  %189 = load i16, ptr %188, align 2, !tbaa !25
  %190 = getelementptr inbounds i8, ptr %187, i64 2
  store i16 %189, ptr %190, align 2, !tbaa !25
  %191 = getelementptr inbounds ptr, ptr %178, i64 %172
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds ptr, ptr %193, i64 %165
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds ptr, ptr %195, i64 %166
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = load i16, ptr %197, align 2, !tbaa !25
  %199 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %169, i64 0, i64 %173, i64 %172
  store i16 %198, ptr %199, align 2, !tbaa !25
  %200 = getelementptr inbounds i8, ptr %197, i64 2
  %201 = load i16, ptr %200, align 2, !tbaa !25
  %202 = getelementptr inbounds i8, ptr %199, i64 2
  store i16 %201, ptr %202, align 2, !tbaa !25
  %203 = or disjoint i64 %172, 1
  %204 = getelementptr inbounds ptr, ptr %176, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds ptr, ptr %206, i64 %165
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  %209 = getelementptr inbounds ptr, ptr %208, i64 %166
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = load i16, ptr %210, align 2, !tbaa !25
  %212 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %168, i64 0, i64 %173, i64 %203
  store i16 %211, ptr %212, align 2, !tbaa !25
  %213 = getelementptr inbounds i8, ptr %210, i64 2
  %214 = load i16, ptr %213, align 2, !tbaa !25
  %215 = getelementptr inbounds i8, ptr %212, i64 2
  store i16 %214, ptr %215, align 2, !tbaa !25
  %216 = getelementptr inbounds ptr, ptr %178, i64 %203
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  %219 = getelementptr inbounds ptr, ptr %218, i64 %165
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = getelementptr inbounds ptr, ptr %220, i64 %166
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = load i16, ptr %222, align 2, !tbaa !25
  %224 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %169, i64 0, i64 %173, i64 %203
  store i16 %223, ptr %224, align 2, !tbaa !25
  %225 = getelementptr inbounds i8, ptr %222, i64 2
  %226 = load i16, ptr %225, align 2, !tbaa !25
  %227 = getelementptr inbounds i8, ptr %224, i64 2
  store i16 %226, ptr %227, align 2, !tbaa !25
  %228 = or disjoint i64 %173, 1
  %229 = icmp slt i64 %228, %174
  br i1 %229, label %230, label %285

230:                                              ; preds = %164
  %231 = getelementptr inbounds ptr, ptr %10, i64 %228
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = getelementptr inbounds ptr, ptr %12, i64 %228
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = getelementptr inbounds ptr, ptr %232, i64 %172
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = getelementptr inbounds ptr, ptr %237, i64 %165
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  %240 = getelementptr inbounds ptr, ptr %239, i64 %166
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load i16, ptr %241, align 2, !tbaa !25
  %243 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %168, i64 0, i64 %228, i64 %172
  store i16 %242, ptr %243, align 2, !tbaa !25
  %244 = getelementptr inbounds i8, ptr %241, i64 2
  %245 = load i16, ptr %244, align 2, !tbaa !25
  %246 = getelementptr inbounds i8, ptr %243, i64 2
  store i16 %245, ptr %246, align 2, !tbaa !25
  %247 = getelementptr inbounds ptr, ptr %234, i64 %172
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = getelementptr inbounds ptr, ptr %249, i64 %165
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = getelementptr inbounds ptr, ptr %251, i64 %166
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = load i16, ptr %253, align 2, !tbaa !25
  %255 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %169, i64 0, i64 %228, i64 %172
  store i16 %254, ptr %255, align 2, !tbaa !25
  %256 = getelementptr inbounds i8, ptr %253, i64 2
  %257 = load i16, ptr %256, align 2, !tbaa !25
  %258 = getelementptr inbounds i8, ptr %255, i64 2
  store i16 %257, ptr %258, align 2, !tbaa !25
  %259 = getelementptr inbounds ptr, ptr %232, i64 %203
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = getelementptr inbounds ptr, ptr %261, i64 %165
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = getelementptr inbounds ptr, ptr %263, i64 %166
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  %266 = load i16, ptr %265, align 2, !tbaa !25
  %267 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %168, i64 0, i64 %228, i64 %203
  store i16 %266, ptr %267, align 2, !tbaa !25
  %268 = getelementptr inbounds i8, ptr %265, i64 2
  %269 = load i16, ptr %268, align 2, !tbaa !25
  %270 = getelementptr inbounds i8, ptr %267, i64 2
  store i16 %269, ptr %270, align 2, !tbaa !25
  %271 = getelementptr inbounds ptr, ptr %234, i64 %203
  %272 = load ptr, ptr %271, align 8, !tbaa !6
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = getelementptr inbounds ptr, ptr %273, i64 %165
  %275 = load ptr, ptr %274, align 8, !tbaa !6
  %276 = getelementptr inbounds ptr, ptr %275, i64 %166
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = load i16, ptr %277, align 2, !tbaa !25
  %279 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %169, i64 0, i64 %228, i64 %203
  store i16 %278, ptr %279, align 2, !tbaa !25
  %280 = getelementptr inbounds i8, ptr %277, i64 2
  %281 = load i16, ptr %280, align 2, !tbaa !25
  %282 = getelementptr inbounds i8, ptr %279, i64 2
  store i16 %281, ptr %282, align 2, !tbaa !25
  br label %285

283:                                              ; preds = %155
  %284 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %157, i64 0, i64 %162, i64 %158
  store i64 0, ptr %284, align 2
  br label %285

285:                                              ; preds = %155, %283, %164, %230
  %286 = add nsw i32 %5, -1
  %287 = icmp ult i32 %286, 2
  br i1 %287, label %296, label %288

288:                                              ; preds = %285
  %289 = sext i32 %0 to i64
  %290 = zext nneg i32 %14 to i64
  %291 = sext i32 %15 to i64
  %292 = sext i32 %16 to i64
  %293 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %289, i64 1, i64 %291, i64 %290
  store i64 0, ptr %293, align 2
  %294 = or disjoint i64 %291, 1
  %295 = icmp slt i64 %294, %292
  br i1 %295, label %421, label %423

296:                                              ; preds = %285
  %297 = sext i32 %4 to i64
  %298 = sext i32 %2 to i64
  %299 = sext i32 %0 to i64
  %300 = shl i32 %1, 1
  %301 = and i32 %300, 2
  %302 = zext nneg i32 %301 to i64
  %303 = sext i32 %15 to i64
  %304 = sext i32 %16 to i64
  %305 = getelementptr inbounds ptr, ptr %10, i64 %303
  %306 = load ptr, ptr %305, align 8, !tbaa !6
  %307 = getelementptr inbounds ptr, ptr %12, i64 %303
  %308 = load ptr, ptr %307, align 8, !tbaa !6
  %309 = getelementptr inbounds ptr, ptr %306, i64 %302
  %310 = load ptr, ptr %309, align 8, !tbaa !6
  %311 = getelementptr inbounds i8, ptr %310, i64 8
  %312 = load ptr, ptr %311, align 8, !tbaa !6
  %313 = getelementptr inbounds ptr, ptr %312, i64 %297
  %314 = load ptr, ptr %313, align 8, !tbaa !6
  %315 = getelementptr inbounds ptr, ptr %314, i64 %298
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = load i16, ptr %316, align 2, !tbaa !25
  %318 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %299, i64 1, i64 %303, i64 %302
  store i16 %317, ptr %318, align 2, !tbaa !25
  %319 = getelementptr inbounds i8, ptr %316, i64 2
  %320 = load i16, ptr %319, align 2, !tbaa !25
  %321 = getelementptr inbounds i8, ptr %318, i64 2
  store i16 %320, ptr %321, align 2, !tbaa !25
  %322 = getelementptr inbounds ptr, ptr %308, i64 %302
  %323 = load ptr, ptr %322, align 8, !tbaa !6
  %324 = getelementptr inbounds i8, ptr %323, i64 8
  %325 = load ptr, ptr %324, align 8, !tbaa !6
  %326 = getelementptr inbounds ptr, ptr %325, i64 %297
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds ptr, ptr %327, i64 %298
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = load i16, ptr %329, align 2, !tbaa !25
  %331 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %299, i64 1, i64 %303, i64 %302
  store i16 %330, ptr %331, align 2, !tbaa !25
  %332 = getelementptr inbounds i8, ptr %329, i64 2
  %333 = load i16, ptr %332, align 2, !tbaa !25
  %334 = getelementptr inbounds i8, ptr %331, i64 2
  store i16 %333, ptr %334, align 2, !tbaa !25
  %335 = or disjoint i64 %302, 1
  %336 = getelementptr inbounds ptr, ptr %306, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !6
  %338 = getelementptr inbounds i8, ptr %337, i64 8
  %339 = load ptr, ptr %338, align 8, !tbaa !6
  %340 = getelementptr inbounds ptr, ptr %339, i64 %297
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds ptr, ptr %341, i64 %298
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  %344 = load i16, ptr %343, align 2, !tbaa !25
  %345 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %299, i64 1, i64 %303, i64 %335
  store i16 %344, ptr %345, align 2, !tbaa !25
  %346 = getelementptr inbounds i8, ptr %343, i64 2
  %347 = load i16, ptr %346, align 2, !tbaa !25
  %348 = getelementptr inbounds i8, ptr %345, i64 2
  store i16 %347, ptr %348, align 2, !tbaa !25
  %349 = getelementptr inbounds ptr, ptr %308, i64 %335
  %350 = load ptr, ptr %349, align 8, !tbaa !6
  %351 = getelementptr inbounds i8, ptr %350, i64 8
  %352 = load ptr, ptr %351, align 8, !tbaa !6
  %353 = getelementptr inbounds ptr, ptr %352, i64 %297
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds ptr, ptr %354, i64 %298
  %356 = load ptr, ptr %355, align 8, !tbaa !6
  %357 = load i16, ptr %356, align 2, !tbaa !25
  %358 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %299, i64 1, i64 %303, i64 %335
  store i16 %357, ptr %358, align 2, !tbaa !25
  %359 = getelementptr inbounds i8, ptr %356, i64 2
  %360 = load i16, ptr %359, align 2, !tbaa !25
  %361 = getelementptr inbounds i8, ptr %358, i64 2
  store i16 %360, ptr %361, align 2, !tbaa !25
  %362 = or disjoint i64 %303, 1
  %363 = icmp slt i64 %362, %304
  br i1 %363, label %364, label %423

364:                                              ; preds = %296
  %365 = getelementptr inbounds ptr, ptr %10, i64 %362
  %366 = load ptr, ptr %365, align 8, !tbaa !6
  %367 = getelementptr inbounds ptr, ptr %12, i64 %362
  %368 = load ptr, ptr %367, align 8, !tbaa !6
  %369 = getelementptr inbounds ptr, ptr %366, i64 %302
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 8
  %372 = load ptr, ptr %371, align 8, !tbaa !6
  %373 = getelementptr inbounds ptr, ptr %372, i64 %297
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = getelementptr inbounds ptr, ptr %374, i64 %298
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = load i16, ptr %376, align 2, !tbaa !25
  %378 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %299, i64 1, i64 %362, i64 %302
  store i16 %377, ptr %378, align 2, !tbaa !25
  %379 = getelementptr inbounds i8, ptr %376, i64 2
  %380 = load i16, ptr %379, align 2, !tbaa !25
  %381 = getelementptr inbounds i8, ptr %378, i64 2
  store i16 %380, ptr %381, align 2, !tbaa !25
  %382 = getelementptr inbounds ptr, ptr %368, i64 %302
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds i8, ptr %383, i64 8
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = getelementptr inbounds ptr, ptr %385, i64 %297
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = getelementptr inbounds ptr, ptr %387, i64 %298
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  %390 = load i16, ptr %389, align 2, !tbaa !25
  %391 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %299, i64 1, i64 %362, i64 %302
  store i16 %390, ptr %391, align 2, !tbaa !25
  %392 = getelementptr inbounds i8, ptr %389, i64 2
  %393 = load i16, ptr %392, align 2, !tbaa !25
  %394 = getelementptr inbounds i8, ptr %391, i64 2
  store i16 %393, ptr %394, align 2, !tbaa !25
  %395 = getelementptr inbounds ptr, ptr %366, i64 %335
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = getelementptr inbounds i8, ptr %396, i64 8
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = getelementptr inbounds ptr, ptr %398, i64 %297
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds ptr, ptr %400, i64 %298
  %402 = load ptr, ptr %401, align 8, !tbaa !6
  %403 = load i16, ptr %402, align 2, !tbaa !25
  %404 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %299, i64 1, i64 %362, i64 %335
  store i16 %403, ptr %404, align 2, !tbaa !25
  %405 = getelementptr inbounds i8, ptr %402, i64 2
  %406 = load i16, ptr %405, align 2, !tbaa !25
  %407 = getelementptr inbounds i8, ptr %404, i64 2
  store i16 %406, ptr %407, align 2, !tbaa !25
  %408 = getelementptr inbounds ptr, ptr %368, i64 %335
  %409 = load ptr, ptr %408, align 8, !tbaa !6
  %410 = getelementptr inbounds i8, ptr %409, i64 8
  %411 = load ptr, ptr %410, align 8, !tbaa !6
  %412 = getelementptr inbounds ptr, ptr %411, i64 %297
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = getelementptr inbounds ptr, ptr %413, i64 %298
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  %416 = load i16, ptr %415, align 2, !tbaa !25
  %417 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %299, i64 1, i64 %362, i64 %335
  store i16 %416, ptr %417, align 2, !tbaa !25
  %418 = getelementptr inbounds i8, ptr %415, i64 2
  %419 = load i16, ptr %418, align 2, !tbaa !25
  %420 = getelementptr inbounds i8, ptr %417, i64 2
  store i16 %419, ptr %420, align 2, !tbaa !25
  br label %423

421:                                              ; preds = %288
  %422 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %289, i64 1, i64 %294, i64 %290
  store i64 0, ptr %422, align 2
  br label %423

423:                                              ; preds = %288, %421, %296, %364, %34, %99, %18, %29
  ret void
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @GetBestTransformP8x8() local_unnamed_addr #0 {
  %1 = alloca [64 x i32], align 4
  %2 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #15
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 3892
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %140, label %7

7:                                                ; preds = %0, %127
  %8 = phi i64 [ %135, %127 ], [ 0, %0 ]
  %9 = phi i1 [ %134, %127 ], [ false, %0 ]
  %10 = phi i32 [ %121, %127 ], [ 0, %0 ]
  %11 = phi i32 [ %132, %127 ], [ 0, %0 ]
  %12 = phi i32 [ %133, %127 ], [ 0, %0 ]
  %13 = and i64 %8, 9223372036854775800
  %14 = select i1 %9, i64 8, i64 0
  %15 = shl nuw nsw i32 %12, 2
  %16 = and i32 %15, 8
  %17 = shl nuw nsw i32 %12, 3
  %18 = and i32 %17, 8
  %19 = add nuw nsw i32 %16, 8
  %20 = add nuw nsw i32 %18, 8
  %21 = zext nneg i32 %20 to i64
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %7, %124
  %24 = phi i64 [ %13, %7 ], [ %125, %124 ]
  %25 = phi i32 [ %10, %7 ], [ %121, %124 ]
  %26 = phi i32 [ 0, %7 ], [ %112, %124 ]
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 172
  %29 = load i32, ptr %28, align 4, !tbaa !28
  %30 = sext i32 %29 to i64
  br label %31

31:                                               ; preds = %23, %115
  %32 = phi i64 [ %14, %23 ], [ %122, %115 ]
  %33 = phi i32 [ %25, %23 ], [ %121, %115 ]
  %34 = phi i32 [ %26, %23 ], [ %112, %115 ]
  %35 = load ptr, ptr @img, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 168
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %32, %38
  %40 = sext i32 %34 to i64
  %41 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %42 = getelementptr ptr, ptr %41, i64 %24
  %43 = getelementptr ptr, ptr %42, i64 %30
  %44 = or disjoint i64 %32, 1
  %45 = or disjoint i64 %32, 2
  %46 = or disjoint i64 %32, 3
  br label %47

47:                                               ; preds = %31, %47
  %48 = phi i64 [ 0, %31 ], [ %113, %47 ]
  %49 = phi i32 [ %34, %31 ], [ %112, %47 ]
  %50 = getelementptr ptr, ptr %43, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = or disjoint i64 %48, %24
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds i16, ptr %51, i64 %39
  %55 = load i16, ptr %54, align 2, !tbaa !25
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684), i64 0, i64 %52, i64 %32
  %58 = load i16, ptr %57, align 4, !tbaa !25
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %56, %59
  %61 = getelementptr inbounds [64 x i32], ptr %1, i64 0, i64 %53
  store i32 %60, ptr %61, align 4, !tbaa !38
  %62 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), i64 0, i64 %52, i64 %32
  %63 = load i16, ptr %62, align 4, !tbaa !25
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %56, %64
  %66 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %53
  store i32 %65, ptr %66, align 4, !tbaa !38
  %67 = add nsw i64 %53, 1
  %68 = getelementptr i16, ptr %51, i64 %39
  %69 = getelementptr i8, ptr %68, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !25
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684), i64 0, i64 %52, i64 %44
  %73 = load i16, ptr %72, align 2, !tbaa !25
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %71, %74
  %76 = getelementptr inbounds [64 x i32], ptr %1, i64 0, i64 %67
  store i32 %75, ptr %76, align 4, !tbaa !38
  %77 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), i64 0, i64 %52, i64 %44
  %78 = load i16, ptr %77, align 2, !tbaa !25
  %79 = zext i16 %78 to i32
  %80 = sub nsw i32 %71, %79
  %81 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %67
  store i32 %80, ptr %81, align 4, !tbaa !38
  %82 = add nsw i64 %53, 2
  %83 = getelementptr i16, ptr %51, i64 %39
  %84 = getelementptr i8, ptr %83, i64 4
  %85 = load i16, ptr %84, align 2, !tbaa !25
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684), i64 0, i64 %52, i64 %45
  %88 = load i16, ptr %87, align 4, !tbaa !25
  %89 = zext i16 %88 to i32
  %90 = sub nsw i32 %86, %89
  %91 = getelementptr inbounds [64 x i32], ptr %1, i64 0, i64 %82
  store i32 %90, ptr %91, align 4, !tbaa !38
  %92 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), i64 0, i64 %52, i64 %45
  %93 = load i16, ptr %92, align 4, !tbaa !25
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 %86, %94
  %96 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %82
  store i32 %95, ptr %96, align 4, !tbaa !38
  %97 = add nsw i64 %53, 3
  %98 = getelementptr i16, ptr %51, i64 %39
  %99 = getelementptr i8, ptr %98, i64 6
  %100 = load i16, ptr %99, align 2, !tbaa !25
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684), i64 0, i64 %52, i64 %46
  %103 = load i16, ptr %102, align 2, !tbaa !25
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %101, %104
  %106 = getelementptr inbounds [64 x i32], ptr %1, i64 0, i64 %97
  store i32 %105, ptr %106, align 4, !tbaa !38
  %107 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), i64 0, i64 %52, i64 %46
  %108 = load i16, ptr %107, align 2, !tbaa !25
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 %101, %109
  %111 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %97
  store i32 %110, ptr %111, align 4, !tbaa !38
  %112 = add i32 %49, 4
  %113 = add nuw nsw i64 %48, 1
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %47

115:                                              ; preds = %47
  %116 = getelementptr inbounds [64 x i32], ptr %1, i64 0, i64 %40
  %117 = load ptr, ptr @input, align 8, !tbaa !6
  %118 = getelementptr inbounds i8, ptr %117, i64 24
  %119 = load i32, ptr %118, align 8, !tbaa !76
  %120 = call signext i32 @SATD(ptr noundef nonnull %116, i32 noundef signext %119) #15
  %121 = add nsw i32 %120, %33
  %122 = add nuw nsw i64 %32, 4
  %123 = icmp ult i64 %122, %21
  br i1 %123, label %31, label %124

124:                                              ; preds = %115
  %125 = add nuw nsw i64 %24, 4
  %126 = icmp ult i64 %125, %22
  br i1 %126, label %23, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @input, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 24
  %130 = load i32, ptr %129, align 8, !tbaa !76
  %131 = call signext i32 @SATD8X8(ptr noundef nonnull %2, i32 noundef signext %130) #15
  %132 = add nsw i32 %131, %11
  %133 = add nuw nsw i32 %12, 1
  %134 = xor i1 %9, true
  %135 = add nuw nsw i64 %8, 4
  %136 = icmp eq i32 %133, 4
  br i1 %136, label %137, label %7

137:                                              ; preds = %127
  %138 = icmp slt i32 %132, %121
  %139 = zext i1 %138 to i32
  br label %140

140:                                              ; preds = %0, %137
  %141 = phi i32 [ %139, %137 ], [ 1, %0 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #15
  ret i32 %141
}

declare dso_local signext i32 @SATD8X8(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @set_mbaff_parameters() local_unnamed_addr #2 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %6 = sext i32 %5 to i64
  %7 = load i16, ptr @best_mode, align 2, !tbaa !25
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %1, i64 104
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %0, %12
  %13 = phi i64 [ 0, %0 ], [ %32, %12 ]
  %14 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %16 = getelementptr inbounds [16 x [16 x i16]], ptr %15, i64 0, i64 %13
  %17 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 6424
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = load ptr, ptr @img, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 156
  %22 = load i32, ptr %21, align 4, !tbaa !27
  %23 = trunc nuw nsw i64 %13 to i32
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %20, i64 152
  %29 = load i32, ptr %28, align 8, !tbaa !26
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 2 dereferenceable(32) %31, i64 32, i1 false)
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %12

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %36 = sext i16 %7 to i32
  %37 = icmp eq i32 %9, 1
  %38 = load ptr, ptr @img, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 90548
  %40 = load i32, ptr %39, align 4, !tbaa !110
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %100, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds i8, ptr %38, i64 90560
  %44 = load i32, ptr %43, align 8, !tbaa !111
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %42, %46
  %47 = phi i64 [ %94, %46 ], [ 0, %42 ]
  %48 = phi ptr [ %95, %46 ], [ %38, %42 ]
  %49 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 520
  %51 = getelementptr inbounds [16 x [16 x i16]], ptr %50, i64 0, i64 %47
  %52 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 6464
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %48, i64 164
  %57 = load i32, ptr %56, align 4, !tbaa !113
  %58 = trunc nuw nsw i64 %47 to i32
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %55, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %48, i64 160
  %64 = load i32, ptr %63, align 8, !tbaa !124
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %62, i64 %65
  %67 = getelementptr inbounds i8, ptr %48, i64 90556
  %68 = load i32, ptr %67, align 4, !tbaa !115
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %51, ptr align 2 %66, i64 %70, i1 false)
  %71 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 1032
  %73 = getelementptr inbounds [16 x [16 x i16]], ptr %72, i64 0, i64 %47
  %74 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 6464
  %76 = load ptr, ptr %75, align 8, !tbaa !81
  %77 = getelementptr inbounds i8, ptr %76, i64 8
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = load ptr, ptr @img, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %79, i64 164
  %81 = load i32, ptr %80, align 4, !tbaa !113
  %82 = add nsw i32 %81, %58
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %78, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %79, i64 160
  %87 = load i32, ptr %86, align 8, !tbaa !124
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %85, i64 %88
  %90 = getelementptr inbounds i8, ptr %79, i64 90556
  %91 = load i32, ptr %90, align 4, !tbaa !115
  %92 = sext i32 %91 to i64
  %93 = shl nsw i64 %92, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %73, ptr align 2 %89, i64 %93, i1 false)
  %94 = add nuw nsw i64 %47, 1
  %95 = load ptr, ptr @img, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 90560
  %97 = load i32, ptr %96, align 8, !tbaa !111
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %46, label %100

100:                                              ; preds = %46, %42, %34
  %101 = phi ptr [ %38, %42 ], [ %38, %34 ], [ %95, %46 ]
  %102 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %102, i64 1640
  store i32 %36, ptr %103, align 8, !tbaa !127
  %104 = getelementptr inbounds i8, ptr %101, i64 90196
  %105 = load i32, ptr %104, align 4, !tbaa !117
  %106 = getelementptr inbounds i8, ptr %102, i64 1696
  store i32 %105, ptr %106, align 8, !tbaa !128
  %107 = getelementptr inbounds i8, ptr %35, i64 364
  %108 = load i32, ptr %107, align 4, !tbaa !93
  %109 = getelementptr inbounds i8, ptr %102, i64 1624
  store i32 %108, ptr %109, align 8, !tbaa !129
  %110 = getelementptr inbounds i8, ptr %35, i64 368
  %111 = load i64, ptr %110, align 8, !tbaa !99
  %112 = getelementptr inbounds i8, ptr %102, i64 1632
  store i64 %111, ptr %112, align 8, !tbaa !130
  %113 = getelementptr inbounds i8, ptr %35, i64 72
  %114 = load i32, ptr %113, align 8, !tbaa !57
  %115 = getelementptr inbounds i8, ptr %102, i64 1560
  store i32 %114, ptr %115, align 8, !tbaa !131
  %116 = getelementptr inbounds i8, ptr %35, i64 468
  %117 = load i32, ptr %116, align 4, !tbaa !89
  %118 = getelementptr inbounds i8, ptr %102, i64 1704
  store i32 %117, ptr %118, align 8, !tbaa !144
  %119 = icmp eq i32 %114, 0
  %120 = icmp ne i16 %7, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %123

122:                                              ; preds = %100
  store i32 0, ptr %103, align 8, !tbaa !127
  br label %123

123:                                              ; preds = %122, %100
  %124 = getelementptr inbounds i8, ptr %101, i64 90540
  %125 = load i32, ptr %124, align 4, !tbaa !94
  %126 = icmp sgt i32 %125, -4
  br i1 %126, label %127, label %270

127:                                              ; preds = %123, %127
  %128 = phi ptr [ %262, %127 ], [ %101, %123 ]
  %129 = phi i64 [ %261, %127 ], [ 0, %123 ]
  %130 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %130, i64 1544
  %132 = load ptr, ptr %131, align 8, !tbaa !142
  %133 = getelementptr inbounds ptr, ptr %132, i64 %129
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = load ptr, ptr %134, align 8, !tbaa !6
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %128, i64 14136
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  %139 = getelementptr inbounds ptr, ptr %138, i64 %129
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %136, ptr noundef nonnull align 4 dereferenceable(260) %142, i64 260, i1 false)
  %143 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %144 = getelementptr inbounds i8, ptr %143, i64 1544
  %145 = load ptr, ptr %144, align 8, !tbaa !142
  %146 = getelementptr inbounds ptr, ptr %145, i64 %129
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 8
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = load ptr, ptr @img, align 8, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %151, i64 14136
  %153 = load ptr, ptr %152, align 8, !tbaa !53
  %154 = getelementptr inbounds ptr, ptr %153, i64 %129
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  %157 = getelementptr inbounds i8, ptr %156, i64 8
  %158 = load ptr, ptr %157, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %150, ptr noundef nonnull align 4 dereferenceable(260) %158, i64 260, i1 false)
  %159 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %159, i64 1544
  %161 = load ptr, ptr %160, align 8, !tbaa !142
  %162 = getelementptr inbounds ptr, ptr %161, i64 %129
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %163, i64 8
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = load ptr, ptr @img, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 14136
  %169 = load ptr, ptr %168, align 8, !tbaa !53
  %170 = getelementptr inbounds ptr, ptr %169, i64 %129
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = getelementptr inbounds i8, ptr %171, i64 8
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %166, ptr noundef nonnull align 4 dereferenceable(260) %174, i64 260, i1 false)
  %175 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 1544
  %177 = load ptr, ptr %176, align 8, !tbaa !142
  %178 = getelementptr inbounds ptr, ptr %177, i64 %129
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 8
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr inbounds i8, ptr %181, i64 8
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = load ptr, ptr @img, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 14136
  %186 = load ptr, ptr %185, align 8, !tbaa !53
  %187 = getelementptr inbounds ptr, ptr %186, i64 %129
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 8
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  %191 = getelementptr inbounds i8, ptr %190, i64 8
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %183, ptr noundef nonnull align 4 dereferenceable(260) %192, i64 260, i1 false)
  %193 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %193, i64 1544
  %195 = load ptr, ptr %194, align 8, !tbaa !142
  %196 = getelementptr inbounds ptr, ptr %195, i64 %129
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds i8, ptr %197, i64 16
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = load ptr, ptr @img, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 14136
  %203 = load ptr, ptr %202, align 8, !tbaa !53
  %204 = getelementptr inbounds ptr, ptr %203, i64 %129
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %205, i64 16
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %200, ptr noundef nonnull align 4 dereferenceable(260) %208, i64 260, i1 false)
  %209 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %210 = getelementptr inbounds i8, ptr %209, i64 1544
  %211 = load ptr, ptr %210, align 8, !tbaa !142
  %212 = getelementptr inbounds ptr, ptr %211, i64 %129
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = getelementptr inbounds i8, ptr %213, i64 16
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 8
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = load ptr, ptr @img, align 8, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %218, i64 14136
  %220 = load ptr, ptr %219, align 8, !tbaa !53
  %221 = getelementptr inbounds ptr, ptr %220, i64 %129
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = getelementptr inbounds i8, ptr %222, i64 16
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds i8, ptr %224, i64 8
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %217, ptr noundef nonnull align 4 dereferenceable(260) %226, i64 260, i1 false)
  %227 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %228 = getelementptr inbounds i8, ptr %227, i64 1544
  %229 = load ptr, ptr %228, align 8, !tbaa !142
  %230 = getelementptr inbounds ptr, ptr %229, i64 %129
  %231 = load ptr, ptr %230, align 8, !tbaa !6
  %232 = getelementptr inbounds i8, ptr %231, i64 24
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = load ptr, ptr @img, align 8, !tbaa !6
  %236 = getelementptr inbounds i8, ptr %235, i64 14136
  %237 = load ptr, ptr %236, align 8, !tbaa !53
  %238 = getelementptr inbounds ptr, ptr %237, i64 %129
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  %240 = getelementptr inbounds i8, ptr %239, i64 24
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %234, ptr noundef nonnull align 4 dereferenceable(260) %242, i64 260, i1 false)
  %243 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %244 = getelementptr inbounds i8, ptr %243, i64 1544
  %245 = load ptr, ptr %244, align 8, !tbaa !142
  %246 = getelementptr inbounds ptr, ptr %245, i64 %129
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = getelementptr inbounds i8, ptr %247, i64 24
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = getelementptr inbounds i8, ptr %249, i64 8
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = load ptr, ptr @img, align 8, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %252, i64 14136
  %254 = load ptr, ptr %253, align 8, !tbaa !53
  %255 = getelementptr inbounds ptr, ptr %254, i64 %129
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %256, i64 24
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = getelementptr inbounds i8, ptr %258, i64 8
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %251, ptr noundef nonnull align 4 dereferenceable(260) %260, i64 260, i1 false)
  %261 = add nuw nsw i64 %129, 1
  %262 = load ptr, ptr @img, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 90540
  %264 = load i32, ptr %263, align 4, !tbaa !94
  %265 = add nsw i32 %264, 3
  %266 = sext i32 %265 to i64
  %267 = icmp slt i64 %129, %266
  br i1 %267, label %127, label %268

268:                                              ; preds = %127
  %269 = load ptr, ptr @rdopt, align 8, !tbaa !6
  br label %270

270:                                              ; preds = %268, %123
  %271 = phi ptr [ %262, %268 ], [ %101, %123 ]
  %272 = phi ptr [ %269, %268 ], [ %102, %123 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 1552
  %274 = load ptr, ptr %273, align 8, !tbaa !143
  %275 = load ptr, ptr %274, align 8, !tbaa !6
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  %277 = getelementptr inbounds i8, ptr %271, i64 14144
  %278 = load ptr, ptr %277, align 8, !tbaa !126
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = load ptr, ptr %279, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %276, ptr noundef nonnull align 4 dereferenceable(72) %280, i64 72, i1 false)
  %281 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %282 = getelementptr inbounds i8, ptr %281, i64 1552
  %283 = load ptr, ptr %282, align 8, !tbaa !143
  %284 = load ptr, ptr %283, align 8, !tbaa !6
  %285 = getelementptr inbounds i8, ptr %284, i64 8
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = load ptr, ptr @img, align 8, !tbaa !6
  %288 = getelementptr inbounds i8, ptr %287, i64 14144
  %289 = load ptr, ptr %288, align 8, !tbaa !126
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 8
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %286, ptr noundef nonnull align 4 dereferenceable(72) %292, i64 72, i1 false)
  %293 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %294 = getelementptr inbounds i8, ptr %293, i64 1552
  %295 = load ptr, ptr %294, align 8, !tbaa !143
  %296 = getelementptr inbounds i8, ptr %295, i64 8
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = load ptr, ptr @img, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %299, i64 14144
  %301 = load ptr, ptr %300, align 8, !tbaa !126
  %302 = getelementptr inbounds i8, ptr %301, i64 8
  %303 = load ptr, ptr %302, align 8, !tbaa !6
  %304 = load ptr, ptr %303, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %298, ptr noundef nonnull align 4 dereferenceable(72) %304, i64 72, i1 false)
  %305 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %306 = getelementptr inbounds i8, ptr %305, i64 1552
  %307 = load ptr, ptr %306, align 8, !tbaa !143
  %308 = getelementptr inbounds i8, ptr %307, i64 8
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = getelementptr inbounds i8, ptr %309, i64 8
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = load ptr, ptr @img, align 8, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %312, i64 14144
  %314 = load ptr, ptr %313, align 8, !tbaa !126
  %315 = getelementptr inbounds i8, ptr %314, i64 8
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = getelementptr inbounds i8, ptr %316, i64 8
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %311, ptr noundef nonnull align 4 dereferenceable(72) %318, i64 72, i1 false)
  %319 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %320 = getelementptr inbounds i8, ptr %319, i64 1552
  %321 = load ptr, ptr %320, align 8, !tbaa !143
  %322 = getelementptr inbounds i8, ptr %321, i64 16
  %323 = load ptr, ptr %322, align 8, !tbaa !6
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  %325 = load ptr, ptr @img, align 8, !tbaa !6
  %326 = getelementptr inbounds i8, ptr %325, i64 14144
  %327 = load ptr, ptr %326, align 8, !tbaa !126
  %328 = getelementptr inbounds i8, ptr %327, i64 16
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = load ptr, ptr %329, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %324, ptr noundef nonnull align 4 dereferenceable(72) %330, i64 72, i1 false)
  %331 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %332 = getelementptr inbounds i8, ptr %331, i64 1552
  %333 = load ptr, ptr %332, align 8, !tbaa !143
  %334 = getelementptr inbounds i8, ptr %333, i64 16
  %335 = load ptr, ptr %334, align 8, !tbaa !6
  %336 = getelementptr inbounds i8, ptr %335, i64 8
  %337 = load ptr, ptr %336, align 8, !tbaa !6
  %338 = load ptr, ptr @img, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 14144
  %340 = load ptr, ptr %339, align 8, !tbaa !126
  %341 = getelementptr inbounds i8, ptr %340, i64 16
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %342, i64 8
  %344 = load ptr, ptr %343, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %337, ptr noundef nonnull align 4 dereferenceable(72) %344, i64 72, i1 false)
  %345 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %346 = getelementptr inbounds i8, ptr %345, i64 1568
  %347 = getelementptr inbounds i8, ptr %35, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %346, ptr noundef nonnull align 8 dereferenceable(16) %347, i64 16, i1 false)
  %348 = getelementptr inbounds i8, ptr %345, i64 1584
  %349 = getelementptr inbounds i8, ptr %35, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %348, ptr noundef nonnull align 8 dereferenceable(16) %349, i64 16, i1 false)
  %350 = getelementptr inbounds i8, ptr %345, i64 1664
  %351 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %352 = getelementptr inbounds i8, ptr %351, i64 6480
  %353 = load ptr, ptr %352, align 8, !tbaa !90
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = load ptr, ptr @img, align 8, !tbaa !6
  %356 = getelementptr inbounds i8, ptr %355, i64 148
  %357 = load i32, ptr %356, align 4, !tbaa !23
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds ptr, ptr %354, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !6
  %361 = getelementptr inbounds i8, ptr %355, i64 144
  %362 = load i32, ptr %361, align 8, !tbaa !24
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, ptr %360, i64 %363
  %365 = load i32, ptr %364, align 1
  store i32 %365, ptr %350, align 4
  %366 = load ptr, ptr %352, align 8, !tbaa !90
  %367 = load i32, ptr %361, align 8, !tbaa !24
  %368 = sext i32 %367 to i64
  br i1 %37, label %403, label %369

369:                                              ; preds = %270
  %370 = getelementptr inbounds i8, ptr %345, i64 1668
  %371 = load ptr, ptr %366, align 8, !tbaa !6
  %372 = load i32, ptr %356, align 4, !tbaa !23
  %373 = sext i32 %372 to i64
  %374 = getelementptr ptr, ptr %371, i64 %373
  %375 = getelementptr i8, ptr %374, i64 8
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 %368
  %378 = load i32, ptr %377, align 1
  store i32 %378, ptr %370, align 4
  %379 = getelementptr inbounds i8, ptr %345, i64 1672
  %380 = load ptr, ptr %352, align 8, !tbaa !90
  %381 = load ptr, ptr %380, align 8, !tbaa !6
  %382 = load i32, ptr %356, align 4, !tbaa !23
  %383 = sext i32 %382 to i64
  %384 = getelementptr ptr, ptr %381, i64 %383
  %385 = getelementptr i8, ptr %384, i64 16
  %386 = load ptr, ptr %385, align 8, !tbaa !6
  %387 = load i32, ptr %361, align 8, !tbaa !24
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %386, i64 %388
  %390 = load i32, ptr %389, align 1
  store i32 %390, ptr %379, align 4
  %391 = getelementptr inbounds i8, ptr %345, i64 1676
  %392 = load ptr, ptr %352, align 8, !tbaa !90
  %393 = load ptr, ptr %392, align 8, !tbaa !6
  %394 = load i32, ptr %356, align 4, !tbaa !23
  %395 = sext i32 %394 to i64
  %396 = getelementptr ptr, ptr %393, i64 %395
  %397 = getelementptr i8, ptr %396, i64 24
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = load i32, ptr %361, align 8, !tbaa !24
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, ptr %398, i64 %400
  %402 = load i32, ptr %401, align 1
  store i32 %402, ptr %391, align 4
  br label %493

403:                                              ; preds = %270
  %404 = getelementptr inbounds i8, ptr %345, i64 1680
  %405 = getelementptr inbounds i8, ptr %366, i64 8
  %406 = load ptr, ptr %405, align 8, !tbaa !6
  %407 = load i32, ptr %356, align 4, !tbaa !23
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds ptr, ptr %406, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %410, i64 %368
  %412 = load i32, ptr %411, align 1
  store i32 %412, ptr %404, align 4
  %413 = getelementptr inbounds i8, ptr %345, i64 1668
  %414 = load ptr, ptr %352, align 8, !tbaa !90
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  %416 = load i32, ptr %356, align 4, !tbaa !23
  %417 = sext i32 %416 to i64
  %418 = getelementptr ptr, ptr %415, i64 %417
  %419 = getelementptr i8, ptr %418, i64 8
  %420 = load ptr, ptr %419, align 8, !tbaa !6
  %421 = load i32, ptr %361, align 8, !tbaa !24
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %420, i64 %422
  %424 = load i32, ptr %423, align 1
  store i32 %424, ptr %413, align 4
  %425 = getelementptr inbounds i8, ptr %345, i64 1684
  %426 = load ptr, ptr %352, align 8, !tbaa !90
  %427 = getelementptr inbounds i8, ptr %426, i64 8
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = load i32, ptr %356, align 4, !tbaa !23
  %430 = sext i32 %429 to i64
  %431 = getelementptr ptr, ptr %428, i64 %430
  %432 = getelementptr i8, ptr %431, i64 8
  %433 = load ptr, ptr %432, align 8, !tbaa !6
  %434 = load i32, ptr %361, align 8, !tbaa !24
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, ptr %433, i64 %435
  %437 = load i32, ptr %436, align 1
  store i32 %437, ptr %425, align 4
  %438 = getelementptr inbounds i8, ptr %345, i64 1672
  %439 = load ptr, ptr %352, align 8, !tbaa !90
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = load i32, ptr %356, align 4, !tbaa !23
  %442 = sext i32 %441 to i64
  %443 = getelementptr ptr, ptr %440, i64 %442
  %444 = getelementptr i8, ptr %443, i64 16
  %445 = load ptr, ptr %444, align 8, !tbaa !6
  %446 = load i32, ptr %361, align 8, !tbaa !24
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, ptr %445, i64 %447
  %449 = load i32, ptr %448, align 1
  store i32 %449, ptr %438, align 4
  %450 = getelementptr inbounds i8, ptr %345, i64 1688
  %451 = load ptr, ptr %352, align 8, !tbaa !90
  %452 = getelementptr inbounds i8, ptr %451, i64 8
  %453 = load ptr, ptr %452, align 8, !tbaa !6
  %454 = load i32, ptr %356, align 4, !tbaa !23
  %455 = sext i32 %454 to i64
  %456 = getelementptr ptr, ptr %453, i64 %455
  %457 = getelementptr i8, ptr %456, i64 16
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = load i32, ptr %361, align 8, !tbaa !24
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  %462 = load i32, ptr %461, align 1
  store i32 %462, ptr %450, align 4
  %463 = getelementptr inbounds i8, ptr %345, i64 1676
  %464 = load ptr, ptr %352, align 8, !tbaa !90
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = load i32, ptr %356, align 4, !tbaa !23
  %467 = sext i32 %466 to i64
  %468 = getelementptr ptr, ptr %465, i64 %467
  %469 = getelementptr i8, ptr %468, i64 24
  %470 = load ptr, ptr %469, align 8, !tbaa !6
  %471 = load i32, ptr %361, align 8, !tbaa !24
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, ptr %470, i64 %472
  %474 = load i32, ptr %473, align 1
  store i32 %474, ptr %463, align 4
  %475 = getelementptr inbounds i8, ptr %345, i64 1692
  %476 = load ptr, ptr %352, align 8, !tbaa !90
  %477 = getelementptr inbounds i8, ptr %476, i64 8
  %478 = load ptr, ptr %477, align 8, !tbaa !6
  %479 = load i32, ptr %356, align 4, !tbaa !23
  %480 = sext i32 %479 to i64
  %481 = getelementptr ptr, ptr %478, i64 %480
  %482 = getelementptr i8, ptr %481, i64 24
  %483 = load ptr, ptr %482, align 8, !tbaa !6
  %484 = load i32, ptr %361, align 8, !tbaa !24
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, ptr %483, i64 %485
  %487 = load i32, ptr %486, align 1
  store i32 %487, ptr %475, align 4
  %488 = getelementptr inbounds i8, ptr %35, i64 476
  %489 = load i16, ptr %488, align 4, !tbaa !83
  %490 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %491 = getelementptr inbounds i8, ptr %490, i64 1564
  store i16 %489, ptr %491, align 4, !tbaa !151
  %492 = load ptr, ptr @img, align 8, !tbaa !6
  br label %493

493:                                              ; preds = %403, %369
  %494 = phi ptr [ %355, %369 ], [ %492, %403 ]
  %495 = phi ptr [ %345, %369 ], [ %490, %403 ]
  %496 = getelementptr inbounds i8, ptr %495, i64 1608
  %497 = getelementptr inbounds i8, ptr %35, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %496, ptr noundef nonnull align 4 dereferenceable(16) %497, i64 16, i1 false)
  %498 = getelementptr inbounds i8, ptr %494, i64 148
  %499 = load i32, ptr %498, align 4, !tbaa !23
  %500 = sext i32 %499 to i64
  br label %501

501:                                              ; preds = %493, %501
  %502 = phi i64 [ %500, %493 ], [ %517, %501 ]
  %503 = phi ptr [ %494, %493 ], [ %518, %501 ]
  %504 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %505 = getelementptr inbounds i8, ptr %504, i64 1600
  %506 = load ptr, ptr %505, align 8, !tbaa !149
  %507 = getelementptr inbounds ptr, ptr %506, i64 %502
  %508 = load ptr, ptr %507, align 8, !tbaa !6
  %509 = getelementptr inbounds i8, ptr %503, i64 144
  %510 = load i32, ptr %509, align 8, !tbaa !24
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, ptr %508, i64 %511
  %513 = getelementptr inbounds ptr, ptr %11, i64 %502
  %514 = load ptr, ptr %513, align 8, !tbaa !6
  %515 = getelementptr inbounds i8, ptr %514, i64 %511
  %516 = load i32, ptr %515, align 1
  store i32 %516, ptr %512, align 1
  %517 = add nsw i64 %502, 1
  %518 = load ptr, ptr @img, align 8, !tbaa !6
  %519 = getelementptr inbounds i8, ptr %518, i64 148
  %520 = load i32, ptr %519, align 4, !tbaa !23
  %521 = add nsw i32 %520, 3
  %522 = sext i32 %521 to i64
  %523 = icmp slt i64 %502, %522
  br i1 %523, label %501, label %524

524:                                              ; preds = %501
  ret void
}

; Function Attrs: nounwind
define dso_local void @store_coding_state_cs_cm() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  tail call void @store_coding_state(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind
define dso_local void @reset_coding_state_cs_cm() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  tail call void @reset_coding_state(ptr noundef %1) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @assign_enc_picture_params(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #2 {
  switch i32 %0, label %22 [
    i32 1, label %37
    i32 2, label %8
  ]

8:                                                ; preds = %7
  %9 = shl nsw i32 %2, 1
  %10 = icmp eq i32 %1, 1
  %11 = sext i32 %4 to i64
  %12 = trunc i32 %4 to i8
  %13 = sext i32 %3 to i64
  %14 = icmp eq i32 %6, 0
  %15 = icmp eq i32 %1, 0
  %16 = trunc i32 %5 to i8
  %17 = icmp sgt i32 %5, -1
  %18 = zext nneg i32 %5 to i64
  %19 = add nsw i32 %3, 1
  %20 = sext i32 %19 to i64
  %21 = sext i32 %9 to i64
  br label %706

22:                                               ; preds = %7
  %23 = shl nsw i32 %2, 1
  %24 = icmp eq i32 %1, 1
  %25 = sext i32 %4 to i64
  %26 = sext i32 %0 to i64
  %27 = trunc i32 %4 to i8
  %28 = sext i32 %3 to i64
  %29 = icmp eq i32 %6, 0
  %30 = icmp eq i32 %1, 0
  %31 = trunc i32 %5 to i8
  %32 = icmp sgt i32 %5, -1
  %33 = zext nneg i32 %5 to i64
  %34 = add nsw i32 %3, 1
  %35 = sext i32 %34 to i64
  %36 = sext i32 %23 to i64
  br label %868

37:                                               ; preds = %7
  %38 = icmp eq i32 %1, 1
  %39 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %38, label %40, label %108

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %39, i64 148
  %42 = load i32, ptr %41, align 4, !tbaa !23
  %43 = and i32 %2, 2
  %44 = add nsw i32 %42, %43
  %45 = or disjoint i32 %43, 4
  %46 = add i32 %45, %42
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %345

48:                                               ; preds = %40
  %49 = shl i32 %2, 1
  %50 = and i32 %49, 2
  %51 = shl i32 %2, 4
  %52 = and i32 %51, 16
  %53 = zext nneg i32 %52 to i64
  %54 = trunc i32 %2 to i1
  %55 = select i1 %54, i32 -2, i32 0
  %56 = add nuw nsw i32 %50, 3
  %57 = and i32 %2, 2
  %58 = zext nneg i32 %57 to i64
  %59 = sext i32 %42 to i64
  %60 = add nsw i64 %58, %59
  %61 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %48, %62
  %63 = phi ptr [ %61, %48 ], [ %84, %62 ]
  %64 = phi i64 [ %60, %48 ], [ %101, %62 ]
  %65 = phi ptr [ %39, %48 ], [ %102, %62 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 144
  %67 = load i32, ptr %66, align 8, !tbaa !24
  %68 = add nsw i32 %67, %50
  %69 = getelementptr inbounds i8, ptr %63, i64 6480
  %70 = load ptr, ptr %69, align 8, !tbaa !90
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %64
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = sext i32 %68 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  store i32 -1, ptr %75, align 1
  %76 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %76, i64 6504
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %64
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds ptr, ptr %81, i64 %74
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  %84 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 6488
  %86 = load ptr, ptr %85, align 8, !tbaa !92
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %64
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr i8, ptr %89, i64 %53
  %91 = sext i32 %67 to i64
  %92 = shl nsw i64 %91, 3
  %93 = getelementptr i8, ptr %90, i64 %92
  %94 = add i32 %56, %67
  %95 = tail call i32 @llvm.smax.i32(i32 %94, i32 %68)
  %96 = add i32 %55, %95
  %97 = sub i32 %96, %67
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 3
  %100 = add nuw nsw i64 %99, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %93, i8 -1, i64 %100, i1 false), !tbaa !62
  %101 = add nsw i64 %64, 1
  %102 = load ptr, ptr @img, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %102, i64 148
  %104 = load i32, ptr %103, align 4, !tbaa !23
  %105 = add i32 %45, %104
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %101, %106
  br i1 %107, label %62, label %342

108:                                              ; preds = %37
  %109 = getelementptr inbounds i8, ptr %39, i64 89362
  %110 = load i16, ptr %109, align 2, !tbaa !25
  %111 = icmp eq i16 %110, 0
  %112 = and i32 %2, 2
  %113 = shl i32 %2, 1
  %114 = and i32 %113, 2
  br i1 %111, label %118, label %115

115:                                              ; preds = %108
  %116 = sext i32 %3 to i64
  %117 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %123

118:                                              ; preds = %108
  %119 = trunc i32 %4 to i8
  %120 = sext i32 %4 to i64
  %121 = sext i32 %3 to i64
  %122 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %242

123:                                              ; preds = %115, %123
  %124 = phi ptr [ %117, %115 ], [ %145, %123 ]
  %125 = phi ptr [ %39, %115 ], [ %143, %123 ]
  %126 = phi i64 [ 0, %115 ], [ %240, %123 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 148
  %128 = load i32, ptr %127, align 4, !tbaa !23
  %129 = trunc i64 %126 to i32
  %130 = add i32 %112, %129
  %131 = add i32 %130, %128
  %132 = getelementptr inbounds i8, ptr %125, i64 144
  %133 = load i32, ptr %132, align 8, !tbaa !24
  %134 = add nsw i32 %133, %114
  %135 = getelementptr inbounds i8, ptr %124, i64 6480
  %136 = load ptr, ptr %135, align 8, !tbaa !90
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = sext i32 %131 to i64
  %139 = getelementptr inbounds ptr, ptr %137, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = sext i32 %134 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  store i32 0, ptr %142, align 1
  %143 = load ptr, ptr @img, align 8, !tbaa !6
  %144 = getelementptr inbounds i8, ptr %143, i64 89362
  %145 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %145, i64 24
  %147 = getelementptr inbounds [6 x [33 x i64]], ptr %146, i64 0, i64 %116
  %148 = getelementptr inbounds i8, ptr %145, i64 6488
  %149 = load ptr, ptr %148, align 8, !tbaa !92
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds ptr, ptr %150, i64 %138
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %145, i64 6504
  %154 = load ptr, ptr %153, align 8, !tbaa !101
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = getelementptr inbounds ptr, ptr %155, i64 %138
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %143, i64 89352
  %159 = getelementptr inbounds i8, ptr %143, i64 89344
  %160 = load i16, ptr %144, align 2, !tbaa !25
  %161 = icmp eq i16 %160, 1
  %162 = select i1 %161, ptr %159, ptr %158
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds ptr, ptr %164, i64 %126
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %168, i64 8
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = load i64, ptr %147, align 8, !tbaa !62
  %172 = getelementptr inbounds i64, ptr %152, i64 %141
  store i64 %171, ptr %172, align 8, !tbaa !62
  %173 = load i16, ptr %170, align 2, !tbaa !25
  %174 = getelementptr inbounds ptr, ptr %157, i64 %141
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  store i16 %173, ptr %175, align 2, !tbaa !25
  %176 = getelementptr inbounds i8, ptr %170, i64 2
  %177 = load i16, ptr %176, align 2, !tbaa !25
  %178 = getelementptr inbounds i8, ptr %175, i64 2
  store i16 %177, ptr %178, align 2, !tbaa !25
  %179 = load i16, ptr %144, align 2, !tbaa !25
  %180 = icmp eq i16 %179, 1
  %181 = select i1 %180, ptr %159, ptr %158
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %182, i64 8
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds ptr, ptr %184, i64 %126
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 8
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  %191 = add nsw i64 %141, 1
  %192 = getelementptr inbounds i64, ptr %152, i64 %191
  store i64 %171, ptr %192, align 8, !tbaa !62
  %193 = load i16, ptr %190, align 2, !tbaa !25
  %194 = getelementptr inbounds ptr, ptr %157, i64 %191
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  store i16 %193, ptr %195, align 2, !tbaa !25
  %196 = getelementptr inbounds i8, ptr %190, i64 2
  %197 = load i16, ptr %196, align 2, !tbaa !25
  %198 = getelementptr inbounds i8, ptr %195, i64 2
  store i16 %197, ptr %198, align 2, !tbaa !25
  %199 = load i16, ptr %144, align 2, !tbaa !25
  %200 = icmp eq i16 %199, 1
  %201 = select i1 %200, ptr %159, ptr %158
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %202, i64 16
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = getelementptr inbounds ptr, ptr %204, i64 %126
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  %209 = getelementptr inbounds i8, ptr %208, i64 8
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = load i64, ptr %147, align 8, !tbaa !62
  %212 = add nsw i64 %141, 2
  %213 = getelementptr inbounds i64, ptr %152, i64 %212
  store i64 %211, ptr %213, align 8, !tbaa !62
  %214 = load i16, ptr %210, align 2, !tbaa !25
  %215 = getelementptr inbounds ptr, ptr %157, i64 %212
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  store i16 %214, ptr %216, align 2, !tbaa !25
  %217 = getelementptr inbounds i8, ptr %210, i64 2
  %218 = load i16, ptr %217, align 2, !tbaa !25
  %219 = getelementptr inbounds i8, ptr %216, i64 2
  store i16 %218, ptr %219, align 2, !tbaa !25
  %220 = load i16, ptr %144, align 2, !tbaa !25
  %221 = icmp eq i16 %220, 1
  %222 = select i1 %221, ptr %159, ptr %158
  %223 = load ptr, ptr %222, align 8, !tbaa !6
  %224 = getelementptr inbounds i8, ptr %223, i64 24
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  %226 = getelementptr inbounds ptr, ptr %225, i64 %126
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = getelementptr inbounds i8, ptr %229, i64 8
  %231 = load ptr, ptr %230, align 8, !tbaa !6
  %232 = add nsw i64 %141, 3
  %233 = getelementptr inbounds i64, ptr %152, i64 %232
  store i64 %211, ptr %233, align 8, !tbaa !62
  %234 = load i16, ptr %231, align 2, !tbaa !25
  %235 = getelementptr inbounds ptr, ptr %157, i64 %232
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  store i16 %234, ptr %236, align 2, !tbaa !25
  %237 = getelementptr inbounds i8, ptr %231, i64 2
  %238 = load i16, ptr %237, align 2, !tbaa !25
  %239 = getelementptr inbounds i8, ptr %236, i64 2
  store i16 %238, ptr %239, align 2, !tbaa !25
  %240 = add nuw nsw i64 %126, 1
  %241 = icmp eq i64 %240, 4
  br i1 %241, label %342, label %123

242:                                              ; preds = %118, %242
  %243 = phi ptr [ %122, %118 ], [ %267, %242 ]
  %244 = phi ptr [ %39, %118 ], [ %262, %242 ]
  %245 = phi i64 [ 0, %118 ], [ %340, %242 ]
  %246 = getelementptr inbounds i8, ptr %244, i64 148
  %247 = load i32, ptr %246, align 4, !tbaa !23
  %248 = trunc i64 %245 to i32
  %249 = add i32 %112, %248
  %250 = add i32 %249, %247
  %251 = getelementptr inbounds i8, ptr %244, i64 144
  %252 = load i32, ptr %251, align 8, !tbaa !24
  %253 = add nsw i32 %252, %114
  %254 = getelementptr inbounds i8, ptr %243, i64 6480
  %255 = load ptr, ptr %254, align 8, !tbaa !90
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = sext i32 %250 to i64
  %258 = getelementptr inbounds ptr, ptr %256, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  %260 = sext i32 %253 to i64
  %261 = getelementptr inbounds i8, ptr %259, i64 %260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %261, i8 %119, i64 4, i1 false)
  %262 = load ptr, ptr @img, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 89336
  %264 = load ptr, ptr %263, align 8, !tbaa !22
  %265 = getelementptr inbounds ptr, ptr %264, i64 %245
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %268 = getelementptr inbounds i8, ptr %267, i64 24
  %269 = getelementptr inbounds [6 x [33 x i64]], ptr %268, i64 0, i64 %121, i64 %120
  %270 = getelementptr inbounds i8, ptr %267, i64 6488
  %271 = load ptr, ptr %270, align 8, !tbaa !92
  %272 = load ptr, ptr %271, align 8, !tbaa !6
  %273 = getelementptr inbounds ptr, ptr %272, i64 %257
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %267, i64 6504
  %276 = load ptr, ptr %275, align 8, !tbaa !101
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = getelementptr inbounds ptr, ptr %277, i64 %257
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = load ptr, ptr %266, align 8, !tbaa !6
  %281 = load ptr, ptr %280, align 8, !tbaa !6
  %282 = getelementptr inbounds ptr, ptr %281, i64 %120
  %283 = load ptr, ptr %282, align 8, !tbaa !6
  %284 = getelementptr inbounds i8, ptr %283, i64 8
  %285 = load ptr, ptr %284, align 8, !tbaa !6
  %286 = load i64, ptr %269, align 8, !tbaa !62
  %287 = getelementptr inbounds i64, ptr %274, i64 %260
  store i64 %286, ptr %287, align 8, !tbaa !62
  %288 = load i16, ptr %285, align 2, !tbaa !25
  %289 = getelementptr inbounds ptr, ptr %279, i64 %260
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  store i16 %288, ptr %290, align 2, !tbaa !25
  %291 = getelementptr inbounds i8, ptr %285, i64 2
  %292 = load i16, ptr %291, align 2, !tbaa !25
  %293 = getelementptr inbounds i8, ptr %290, i64 2
  store i16 %292, ptr %293, align 2, !tbaa !25
  %294 = getelementptr inbounds i8, ptr %266, i64 8
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = load ptr, ptr %295, align 8, !tbaa !6
  %297 = getelementptr inbounds ptr, ptr %296, i64 %120
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = getelementptr inbounds i8, ptr %298, i64 8
  %300 = load ptr, ptr %299, align 8, !tbaa !6
  %301 = add nsw i64 %260, 1
  %302 = getelementptr inbounds i64, ptr %274, i64 %301
  store i64 %286, ptr %302, align 8, !tbaa !62
  %303 = load i16, ptr %300, align 2, !tbaa !25
  %304 = getelementptr inbounds ptr, ptr %279, i64 %301
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  store i16 %303, ptr %305, align 2, !tbaa !25
  %306 = getelementptr inbounds i8, ptr %300, i64 2
  %307 = load i16, ptr %306, align 2, !tbaa !25
  %308 = getelementptr inbounds i8, ptr %305, i64 2
  store i16 %307, ptr %308, align 2, !tbaa !25
  %309 = getelementptr inbounds i8, ptr %266, i64 16
  %310 = load ptr, ptr %309, align 8, !tbaa !6
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = getelementptr inbounds ptr, ptr %311, i64 %120
  %313 = load ptr, ptr %312, align 8, !tbaa !6
  %314 = getelementptr inbounds i8, ptr %313, i64 8
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  %316 = load i64, ptr %269, align 8, !tbaa !62
  %317 = add nsw i64 %260, 2
  %318 = getelementptr inbounds i64, ptr %274, i64 %317
  store i64 %316, ptr %318, align 8, !tbaa !62
  %319 = load i16, ptr %315, align 2, !tbaa !25
  %320 = getelementptr inbounds ptr, ptr %279, i64 %317
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  store i16 %319, ptr %321, align 2, !tbaa !25
  %322 = getelementptr inbounds i8, ptr %315, i64 2
  %323 = load i16, ptr %322, align 2, !tbaa !25
  %324 = getelementptr inbounds i8, ptr %321, i64 2
  store i16 %323, ptr %324, align 2, !tbaa !25
  %325 = getelementptr inbounds i8, ptr %266, i64 24
  %326 = load ptr, ptr %325, align 8, !tbaa !6
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds ptr, ptr %327, i64 %120
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds i8, ptr %329, i64 8
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = add nsw i64 %260, 3
  %333 = getelementptr inbounds i64, ptr %274, i64 %332
  store i64 %316, ptr %333, align 8, !tbaa !62
  %334 = load i16, ptr %331, align 2, !tbaa !25
  %335 = getelementptr inbounds ptr, ptr %279, i64 %332
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  store i16 %334, ptr %336, align 2, !tbaa !25
  %337 = getelementptr inbounds i8, ptr %331, i64 2
  %338 = load i16, ptr %337, align 2, !tbaa !25
  %339 = getelementptr inbounds i8, ptr %336, i64 2
  store i16 %338, ptr %339, align 2, !tbaa !25
  %340 = add nuw nsw i64 %245, 1
  %341 = icmp eq i64 %340, 4
  br i1 %341, label %342, label %242

342:                                              ; preds = %123, %242, %62
  %343 = phi ptr [ %102, %62 ], [ %262, %242 ], [ %143, %123 ]
  %344 = icmp eq i32 %6, 0
  br i1 %344, label %1031, label %347

345:                                              ; preds = %40
  %346 = icmp eq i32 %6, 0
  br i1 %346, label %1031, label %420

347:                                              ; preds = %342
  %348 = icmp eq i32 %1, 0
  br i1 %348, label %349, label %420

349:                                              ; preds = %347
  %350 = getelementptr inbounds i8, ptr %343, i64 148
  %351 = load i32, ptr %350, align 4, !tbaa !23
  %352 = and i32 %2, 2
  %353 = add nsw i32 %351, %352
  %354 = or disjoint i32 %352, 4
  %355 = add i32 %354, %351
  %356 = icmp slt i32 %353, %355
  br i1 %356, label %357, label %1031

357:                                              ; preds = %349
  %358 = shl i32 %2, 1
  %359 = and i32 %358, 2
  %360 = shl i32 %2, 4
  %361 = and i32 %360, 16
  %362 = zext nneg i32 %361 to i64
  %363 = trunc i32 %2 to i1
  %364 = select i1 %363, i32 -2, i32 0
  %365 = add nuw nsw i32 %359, 3
  %366 = and i32 %2, 2
  %367 = zext nneg i32 %366 to i64
  %368 = sext i32 %351 to i64
  %369 = add nsw i64 %367, %368
  %370 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %371

371:                                              ; preds = %357, %371
  %372 = phi ptr [ %370, %357 ], [ %395, %371 ]
  %373 = phi i64 [ %369, %357 ], [ %413, %371 ]
  %374 = phi ptr [ %343, %357 ], [ %414, %371 ]
  %375 = getelementptr inbounds i8, ptr %374, i64 144
  %376 = load i32, ptr %375, align 8, !tbaa !24
  %377 = add nsw i32 %376, %359
  %378 = getelementptr inbounds i8, ptr %372, i64 6480
  %379 = load ptr, ptr %378, align 8, !tbaa !90
  %380 = getelementptr inbounds i8, ptr %379, i64 8
  %381 = load ptr, ptr %380, align 8, !tbaa !6
  %382 = getelementptr inbounds ptr, ptr %381, i64 %373
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = sext i32 %377 to i64
  %385 = getelementptr inbounds i8, ptr %383, i64 %384
  store i32 -1, ptr %385, align 1
  %386 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %387 = getelementptr inbounds i8, ptr %386, i64 6504
  %388 = load ptr, ptr %387, align 8, !tbaa !101
  %389 = getelementptr inbounds i8, ptr %388, i64 8
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  %391 = getelementptr inbounds ptr, ptr %390, i64 %373
  %392 = load ptr, ptr %391, align 8, !tbaa !6
  %393 = getelementptr inbounds ptr, ptr %392, i64 %384
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %394, i8 0, i64 16, i1 false)
  %395 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %396 = getelementptr inbounds i8, ptr %395, i64 6488
  %397 = load ptr, ptr %396, align 8, !tbaa !92
  %398 = getelementptr inbounds i8, ptr %397, i64 8
  %399 = load ptr, ptr %398, align 8, !tbaa !6
  %400 = getelementptr inbounds ptr, ptr %399, i64 %373
  %401 = load ptr, ptr %400, align 8, !tbaa !6
  %402 = getelementptr i8, ptr %401, i64 %362
  %403 = sext i32 %376 to i64
  %404 = shl nsw i64 %403, 3
  %405 = getelementptr i8, ptr %402, i64 %404
  %406 = add i32 %365, %376
  %407 = tail call i32 @llvm.smax.i32(i32 %406, i32 %377)
  %408 = add i32 %364, %407
  %409 = sub i32 %408, %376
  %410 = zext i32 %409 to i64
  %411 = shl nuw nsw i64 %410, 3
  %412 = add nuw nsw i64 %411, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %405, i8 -1, i64 %412, i1 false), !tbaa !62
  %413 = add nsw i64 %373, 1
  %414 = load ptr, ptr @img, align 8, !tbaa !6
  %415 = getelementptr inbounds i8, ptr %414, i64 148
  %416 = load i32, ptr %415, align 4, !tbaa !23
  %417 = add i32 %354, %416
  %418 = sext i32 %417 to i64
  %419 = icmp slt i64 %413, %418
  br i1 %419, label %371, label %1031

420:                                              ; preds = %345, %347
  %421 = phi ptr [ %343, %347 ], [ %39, %345 ]
  %422 = getelementptr inbounds i8, ptr %421, i64 89362
  %423 = load i16, ptr %422, align 2, !tbaa !25
  %424 = icmp eq i16 %423, 0
  %425 = and i32 %2, 2
  %426 = shl i32 %2, 1
  %427 = and i32 %426, 2
  br i1 %424, label %432, label %428

428:                                              ; preds = %420
  %429 = add nsw i32 %3, 1
  %430 = sext i32 %429 to i64
  %431 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %439

432:                                              ; preds = %420
  %433 = trunc i32 %5 to i8
  %434 = add nsw i32 %3, 1
  %435 = sext i32 %434 to i64
  %436 = sext i32 %5 to i64
  %437 = icmp sgt i32 %5, -1
  %438 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  br label %565

439:                                              ; preds = %428, %439
  %440 = phi ptr [ %431, %428 ], [ %462, %439 ]
  %441 = phi ptr [ %421, %428 ], [ %460, %439 ]
  %442 = phi i64 [ 0, %428 ], [ %563, %439 ]
  %443 = getelementptr inbounds i8, ptr %441, i64 148
  %444 = load i32, ptr %443, align 4, !tbaa !23
  %445 = trunc i64 %442 to i32
  %446 = add i32 %425, %445
  %447 = add i32 %446, %444
  %448 = getelementptr inbounds i8, ptr %441, i64 144
  %449 = load i32, ptr %448, align 8, !tbaa !24
  %450 = add nsw i32 %449, %427
  %451 = getelementptr inbounds i8, ptr %440, i64 6480
  %452 = load ptr, ptr %451, align 8, !tbaa !90
  %453 = getelementptr inbounds i8, ptr %452, i64 8
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  %455 = sext i32 %447 to i64
  %456 = getelementptr inbounds ptr, ptr %454, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = sext i32 %450 to i64
  %459 = getelementptr inbounds i8, ptr %457, i64 %458
  store i32 0, ptr %459, align 1
  %460 = load ptr, ptr @img, align 8, !tbaa !6
  %461 = getelementptr inbounds i8, ptr %460, i64 89362
  %462 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %463 = getelementptr inbounds i8, ptr %462, i64 24
  %464 = getelementptr inbounds [6 x [33 x i64]], ptr %463, i64 0, i64 %430
  %465 = getelementptr inbounds i8, ptr %462, i64 6488
  %466 = load ptr, ptr %465, align 8, !tbaa !92
  %467 = getelementptr inbounds i8, ptr %466, i64 8
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  %469 = getelementptr inbounds ptr, ptr %468, i64 %455
  %470 = load ptr, ptr %469, align 8, !tbaa !6
  %471 = getelementptr inbounds i8, ptr %462, i64 6504
  %472 = load ptr, ptr %471, align 8, !tbaa !101
  %473 = getelementptr inbounds i8, ptr %472, i64 8
  %474 = load ptr, ptr %473, align 8, !tbaa !6
  %475 = getelementptr inbounds ptr, ptr %474, i64 %455
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = getelementptr inbounds i8, ptr %460, i64 89352
  %478 = getelementptr inbounds i8, ptr %460, i64 89344
  %479 = load i16, ptr %461, align 2, !tbaa !25
  %480 = icmp eq i16 %479, 1
  %481 = select i1 %480, ptr %478, ptr %477
  %482 = load ptr, ptr %481, align 8, !tbaa !6
  %483 = load ptr, ptr %482, align 8, !tbaa !6
  %484 = getelementptr inbounds ptr, ptr %483, i64 %442
  %485 = load ptr, ptr %484, align 8, !tbaa !6
  %486 = getelementptr inbounds i8, ptr %485, i64 8
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = load ptr, ptr %487, align 8, !tbaa !6
  %489 = getelementptr inbounds i8, ptr %488, i64 8
  %490 = load ptr, ptr %489, align 8, !tbaa !6
  %491 = load i64, ptr %464, align 8, !tbaa !62
  %492 = getelementptr inbounds i64, ptr %470, i64 %458
  store i64 %491, ptr %492, align 8, !tbaa !62
  %493 = load i16, ptr %490, align 2, !tbaa !25
  %494 = getelementptr inbounds ptr, ptr %476, i64 %458
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  store i16 %493, ptr %495, align 2, !tbaa !25
  %496 = getelementptr inbounds i8, ptr %490, i64 2
  %497 = load i16, ptr %496, align 2, !tbaa !25
  %498 = getelementptr inbounds i8, ptr %495, i64 2
  store i16 %497, ptr %498, align 2, !tbaa !25
  %499 = load i16, ptr %461, align 2, !tbaa !25
  %500 = icmp eq i16 %499, 1
  %501 = select i1 %500, ptr %478, ptr %477
  %502 = load ptr, ptr %501, align 8, !tbaa !6
  %503 = getelementptr inbounds i8, ptr %502, i64 8
  %504 = load ptr, ptr %503, align 8, !tbaa !6
  %505 = getelementptr inbounds ptr, ptr %504, i64 %442
  %506 = load ptr, ptr %505, align 8, !tbaa !6
  %507 = getelementptr inbounds i8, ptr %506, i64 8
  %508 = load ptr, ptr %507, align 8, !tbaa !6
  %509 = load ptr, ptr %508, align 8, !tbaa !6
  %510 = getelementptr inbounds i8, ptr %509, i64 8
  %511 = load ptr, ptr %510, align 8, !tbaa !6
  %512 = add nsw i64 %458, 1
  %513 = getelementptr inbounds i64, ptr %470, i64 %512
  store i64 %491, ptr %513, align 8, !tbaa !62
  %514 = load i16, ptr %511, align 2, !tbaa !25
  %515 = getelementptr inbounds ptr, ptr %476, i64 %512
  %516 = load ptr, ptr %515, align 8, !tbaa !6
  store i16 %514, ptr %516, align 2, !tbaa !25
  %517 = getelementptr inbounds i8, ptr %511, i64 2
  %518 = load i16, ptr %517, align 2, !tbaa !25
  %519 = getelementptr inbounds i8, ptr %516, i64 2
  store i16 %518, ptr %519, align 2, !tbaa !25
  %520 = load i16, ptr %461, align 2, !tbaa !25
  %521 = icmp eq i16 %520, 1
  %522 = select i1 %521, ptr %478, ptr %477
  %523 = load ptr, ptr %522, align 8, !tbaa !6
  %524 = getelementptr inbounds i8, ptr %523, i64 16
  %525 = load ptr, ptr %524, align 8, !tbaa !6
  %526 = getelementptr inbounds ptr, ptr %525, i64 %442
  %527 = load ptr, ptr %526, align 8, !tbaa !6
  %528 = getelementptr inbounds i8, ptr %527, i64 8
  %529 = load ptr, ptr %528, align 8, !tbaa !6
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %530, i64 8
  %532 = load ptr, ptr %531, align 8, !tbaa !6
  %533 = load i64, ptr %464, align 8, !tbaa !62
  %534 = add nsw i64 %458, 2
  %535 = getelementptr inbounds i64, ptr %470, i64 %534
  store i64 %533, ptr %535, align 8, !tbaa !62
  %536 = load i16, ptr %532, align 2, !tbaa !25
  %537 = getelementptr inbounds ptr, ptr %476, i64 %534
  %538 = load ptr, ptr %537, align 8, !tbaa !6
  store i16 %536, ptr %538, align 2, !tbaa !25
  %539 = getelementptr inbounds i8, ptr %532, i64 2
  %540 = load i16, ptr %539, align 2, !tbaa !25
  %541 = getelementptr inbounds i8, ptr %538, i64 2
  store i16 %540, ptr %541, align 2, !tbaa !25
  %542 = load i16, ptr %461, align 2, !tbaa !25
  %543 = icmp eq i16 %542, 1
  %544 = select i1 %543, ptr %478, ptr %477
  %545 = load ptr, ptr %544, align 8, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %545, i64 24
  %547 = load ptr, ptr %546, align 8, !tbaa !6
  %548 = getelementptr inbounds ptr, ptr %547, i64 %442
  %549 = load ptr, ptr %548, align 8, !tbaa !6
  %550 = getelementptr inbounds i8, ptr %549, i64 8
  %551 = load ptr, ptr %550, align 8, !tbaa !6
  %552 = load ptr, ptr %551, align 8, !tbaa !6
  %553 = getelementptr inbounds i8, ptr %552, i64 8
  %554 = load ptr, ptr %553, align 8, !tbaa !6
  %555 = add nsw i64 %458, 3
  %556 = getelementptr inbounds i64, ptr %470, i64 %555
  store i64 %533, ptr %556, align 8, !tbaa !62
  %557 = load i16, ptr %554, align 2, !tbaa !25
  %558 = getelementptr inbounds ptr, ptr %476, i64 %555
  %559 = load ptr, ptr %558, align 8, !tbaa !6
  store i16 %557, ptr %559, align 2, !tbaa !25
  %560 = getelementptr inbounds i8, ptr %554, i64 2
  %561 = load i16, ptr %560, align 2, !tbaa !25
  %562 = getelementptr inbounds i8, ptr %559, i64 2
  store i16 %561, ptr %562, align 2, !tbaa !25
  %563 = add nuw nsw i64 %442, 1
  %564 = icmp eq i64 %563, 4
  br i1 %564, label %1031, label %439

565:                                              ; preds = %432, %703
  %566 = phi ptr [ %438, %432 ], [ %586, %703 ]
  %567 = phi ptr [ %421, %432 ], [ %595, %703 ]
  %568 = phi i64 [ 0, %432 ], [ %704, %703 ]
  %569 = getelementptr inbounds i8, ptr %567, i64 148
  %570 = load i32, ptr %569, align 4, !tbaa !23
  %571 = trunc i64 %568 to i32
  %572 = add i32 %425, %571
  %573 = add i32 %572, %570
  %574 = getelementptr inbounds i8, ptr %567, i64 144
  %575 = load i32, ptr %574, align 8, !tbaa !24
  %576 = add nsw i32 %575, %427
  %577 = getelementptr inbounds i8, ptr %566, i64 6480
  %578 = load ptr, ptr %577, align 8, !tbaa !90
  %579 = getelementptr inbounds i8, ptr %578, i64 8
  %580 = load ptr, ptr %579, align 8, !tbaa !6
  %581 = sext i32 %573 to i64
  %582 = getelementptr inbounds ptr, ptr %580, i64 %581
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  %584 = sext i32 %576 to i64
  %585 = getelementptr inbounds i8, ptr %583, i64 %584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %585, i8 %433, i64 4, i1 false)
  %586 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %587 = getelementptr inbounds i8, ptr %586, i64 24
  %588 = getelementptr inbounds [6 x [33 x i64]], ptr %587, i64 0, i64 %435, i64 %436
  %589 = getelementptr inbounds i8, ptr %586, i64 6488
  %590 = load ptr, ptr %589, align 8, !tbaa !92
  %591 = getelementptr inbounds i8, ptr %590, i64 8
  %592 = load ptr, ptr %591, align 8, !tbaa !6
  %593 = getelementptr inbounds ptr, ptr %592, i64 %581
  %594 = load ptr, ptr %593, align 8, !tbaa !6
  %595 = load ptr, ptr @img, align 8
  %596 = load i64, ptr %588, align 8, !tbaa !62
  %597 = getelementptr inbounds i64, ptr %594, i64 %584
  store i64 %596, ptr %597, align 8, !tbaa !62
  br i1 %437, label %606, label %598

598:                                              ; preds = %565
  %599 = getelementptr i64, ptr %594, i64 %584
  %600 = getelementptr i8, ptr %599, i64 8
  store i64 %596, ptr %600, align 8, !tbaa !62
  %601 = load i64, ptr %588, align 8, !tbaa !62
  %602 = getelementptr i64, ptr %594, i64 %584
  %603 = getelementptr i8, ptr %602, i64 16
  store i64 %601, ptr %603, align 8, !tbaa !62
  %604 = getelementptr i64, ptr %594, i64 %584
  %605 = getelementptr i8, ptr %604, i64 24
  store i64 %601, ptr %605, align 8, !tbaa !62
  br label %703

606:                                              ; preds = %565
  %607 = getelementptr inbounds i8, ptr %586, i64 6504
  %608 = getelementptr inbounds i8, ptr %595, i64 89336
  %609 = load ptr, ptr %608, align 8, !tbaa !22
  %610 = getelementptr inbounds ptr, ptr %609, i64 %568
  %611 = load ptr, ptr %610, align 8, !tbaa !6
  %612 = load ptr, ptr %611, align 8, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %612, i64 8
  %614 = load ptr, ptr %613, align 8, !tbaa !6
  %615 = getelementptr inbounds ptr, ptr %614, i64 %436
  %616 = load ptr, ptr %615, align 8, !tbaa !6
  %617 = getelementptr inbounds i8, ptr %616, i64 8
  %618 = load ptr, ptr %617, align 8, !tbaa !6
  %619 = load i16, ptr %618, align 2, !tbaa !25
  %620 = load ptr, ptr %607, align 8, !tbaa !101
  %621 = getelementptr inbounds i8, ptr %620, i64 8
  %622 = load ptr, ptr %621, align 8, !tbaa !6
  %623 = getelementptr inbounds ptr, ptr %622, i64 %581
  %624 = load ptr, ptr %623, align 8, !tbaa !6
  %625 = getelementptr inbounds ptr, ptr %624, i64 %584
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  store i16 %619, ptr %626, align 2, !tbaa !25
  %627 = getelementptr inbounds i8, ptr %618, i64 2
  %628 = load i16, ptr %627, align 2, !tbaa !25
  %629 = getelementptr inbounds i8, ptr %626, i64 2
  store i16 %628, ptr %629, align 2, !tbaa !25
  %630 = add nsw i64 %584, 1
  %631 = getelementptr inbounds i64, ptr %594, i64 %630
  store i64 %596, ptr %631, align 8, !tbaa !62
  %632 = load ptr, ptr %608, align 8, !tbaa !22
  %633 = getelementptr inbounds ptr, ptr %632, i64 %568
  %634 = load ptr, ptr %633, align 8, !tbaa !6
  %635 = getelementptr inbounds i8, ptr %634, i64 8
  %636 = load ptr, ptr %635, align 8, !tbaa !6
  %637 = getelementptr inbounds i8, ptr %636, i64 8
  %638 = load ptr, ptr %637, align 8, !tbaa !6
  %639 = getelementptr inbounds ptr, ptr %638, i64 %436
  %640 = load ptr, ptr %639, align 8, !tbaa !6
  %641 = getelementptr inbounds i8, ptr %640, i64 8
  %642 = load ptr, ptr %641, align 8, !tbaa !6
  %643 = load i16, ptr %642, align 2, !tbaa !25
  %644 = load ptr, ptr %607, align 8, !tbaa !101
  %645 = getelementptr inbounds i8, ptr %644, i64 8
  %646 = load ptr, ptr %645, align 8, !tbaa !6
  %647 = getelementptr inbounds ptr, ptr %646, i64 %581
  %648 = load ptr, ptr %647, align 8, !tbaa !6
  %649 = getelementptr inbounds ptr, ptr %648, i64 %630
  %650 = load ptr, ptr %649, align 8, !tbaa !6
  store i16 %643, ptr %650, align 2, !tbaa !25
  %651 = getelementptr inbounds i8, ptr %642, i64 2
  %652 = load i16, ptr %651, align 2, !tbaa !25
  %653 = getelementptr inbounds i8, ptr %650, i64 2
  store i16 %652, ptr %653, align 2, !tbaa !25
  %654 = load i64, ptr %588, align 8, !tbaa !62
  %655 = add nsw i64 %584, 2
  %656 = getelementptr inbounds i64, ptr %594, i64 %655
  store i64 %654, ptr %656, align 8, !tbaa !62
  %657 = load ptr, ptr %608, align 8, !tbaa !22
  %658 = getelementptr inbounds ptr, ptr %657, i64 %568
  %659 = load ptr, ptr %658, align 8, !tbaa !6
  %660 = getelementptr inbounds i8, ptr %659, i64 16
  %661 = load ptr, ptr %660, align 8, !tbaa !6
  %662 = getelementptr inbounds i8, ptr %661, i64 8
  %663 = load ptr, ptr %662, align 8, !tbaa !6
  %664 = getelementptr inbounds ptr, ptr %663, i64 %436
  %665 = load ptr, ptr %664, align 8, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %665, i64 8
  %667 = load ptr, ptr %666, align 8, !tbaa !6
  %668 = load i16, ptr %667, align 2, !tbaa !25
  %669 = load ptr, ptr %607, align 8, !tbaa !101
  %670 = getelementptr inbounds i8, ptr %669, i64 8
  %671 = load ptr, ptr %670, align 8, !tbaa !6
  %672 = getelementptr inbounds ptr, ptr %671, i64 %581
  %673 = load ptr, ptr %672, align 8, !tbaa !6
  %674 = getelementptr inbounds ptr, ptr %673, i64 %655
  %675 = load ptr, ptr %674, align 8, !tbaa !6
  store i16 %668, ptr %675, align 2, !tbaa !25
  %676 = getelementptr inbounds i8, ptr %667, i64 2
  %677 = load i16, ptr %676, align 2, !tbaa !25
  %678 = getelementptr inbounds i8, ptr %675, i64 2
  store i16 %677, ptr %678, align 2, !tbaa !25
  %679 = add nsw i64 %584, 3
  %680 = getelementptr inbounds i64, ptr %594, i64 %679
  store i64 %654, ptr %680, align 8, !tbaa !62
  %681 = load ptr, ptr %608, align 8, !tbaa !22
  %682 = getelementptr inbounds ptr, ptr %681, i64 %568
  %683 = load ptr, ptr %682, align 8, !tbaa !6
  %684 = getelementptr inbounds i8, ptr %683, i64 24
  %685 = load ptr, ptr %684, align 8, !tbaa !6
  %686 = getelementptr inbounds i8, ptr %685, i64 8
  %687 = load ptr, ptr %686, align 8, !tbaa !6
  %688 = getelementptr inbounds ptr, ptr %687, i64 %436
  %689 = load ptr, ptr %688, align 8, !tbaa !6
  %690 = getelementptr inbounds i8, ptr %689, i64 8
  %691 = load ptr, ptr %690, align 8, !tbaa !6
  %692 = load i16, ptr %691, align 2, !tbaa !25
  %693 = load ptr, ptr %607, align 8, !tbaa !101
  %694 = getelementptr inbounds i8, ptr %693, i64 8
  %695 = load ptr, ptr %694, align 8, !tbaa !6
  %696 = getelementptr inbounds ptr, ptr %695, i64 %581
  %697 = load ptr, ptr %696, align 8, !tbaa !6
  %698 = getelementptr inbounds ptr, ptr %697, i64 %679
  %699 = load ptr, ptr %698, align 8, !tbaa !6
  store i16 %692, ptr %699, align 2, !tbaa !25
  %700 = getelementptr inbounds i8, ptr %691, i64 2
  %701 = load i16, ptr %700, align 2, !tbaa !25
  %702 = getelementptr inbounds i8, ptr %699, i64 2
  store i16 %701, ptr %702, align 2, !tbaa !25
  br label %703

703:                                              ; preds = %598, %606
  %704 = add nuw nsw i64 %568, 1
  %705 = icmp eq i64 %704, 4
  br i1 %705, label %1031, label %565

706:                                              ; preds = %8, %867
  %707 = phi i1 [ true, %8 ], [ false, %867 ]
  %708 = phi i64 [ 0, %8 ], [ 1, %867 ]
  %709 = load ptr, ptr @img, align 8, !tbaa !6
  %710 = getelementptr inbounds i8, ptr %709, i64 148
  %711 = load i32, ptr %710, align 4, !tbaa !23
  %712 = trunc nuw nsw i64 %708 to i32
  %713 = or disjoint i32 %9, %712
  %714 = add i32 %713, %711
  %715 = or disjoint i64 %708, %21
  %716 = sext i32 %714 to i64
  br label %717

717:                                              ; preds = %706, %864
  %718 = phi i64 [ 0, %706 ], [ %865, %864 ]
  %719 = load ptr, ptr @img, align 8, !tbaa !6
  %720 = getelementptr inbounds i8, ptr %719, i64 144
  %721 = load i32, ptr %720, align 8, !tbaa !24
  %722 = trunc nuw nsw i64 %718 to i32
  %723 = add nsw i32 %721, %722
  br i1 %10, label %765, label %724

724:                                              ; preds = %717
  %725 = getelementptr inbounds i8, ptr %719, i64 89336
  %726 = load ptr, ptr %725, align 8, !tbaa !22
  %727 = getelementptr inbounds ptr, ptr %726, i64 %715
  %728 = load ptr, ptr %727, align 8, !tbaa !6
  %729 = getelementptr inbounds ptr, ptr %728, i64 %718
  %730 = load ptr, ptr %729, align 8, !tbaa !6
  %731 = load ptr, ptr %730, align 8, !tbaa !6
  %732 = getelementptr inbounds ptr, ptr %731, i64 %11
  %733 = load ptr, ptr %732, align 8, !tbaa !6
  %734 = getelementptr inbounds i8, ptr %733, i64 16
  %735 = load ptr, ptr %734, align 8, !tbaa !6
  %736 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %737 = getelementptr inbounds i8, ptr %736, i64 6480
  %738 = load ptr, ptr %737, align 8, !tbaa !90
  %739 = load ptr, ptr %738, align 8, !tbaa !6
  %740 = getelementptr inbounds ptr, ptr %739, i64 %716
  %741 = load ptr, ptr %740, align 8, !tbaa !6
  %742 = sext i32 %723 to i64
  %743 = getelementptr inbounds i8, ptr %741, i64 %742
  store i8 %12, ptr %743, align 1, !tbaa !20
  %744 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %745 = getelementptr inbounds i8, ptr %744, i64 24
  %746 = getelementptr inbounds [6 x [33 x i64]], ptr %745, i64 0, i64 %13, i64 %11
  %747 = load i64, ptr %746, align 8, !tbaa !62
  %748 = getelementptr inbounds i8, ptr %744, i64 6488
  %749 = load ptr, ptr %748, align 8, !tbaa !92
  %750 = load ptr, ptr %749, align 8, !tbaa !6
  %751 = getelementptr inbounds ptr, ptr %750, i64 %716
  %752 = load ptr, ptr %751, align 8, !tbaa !6
  %753 = getelementptr inbounds i64, ptr %752, i64 %742
  store i64 %747, ptr %753, align 8, !tbaa !62
  %754 = load i16, ptr %735, align 2, !tbaa !25
  %755 = getelementptr inbounds i8, ptr %744, i64 6504
  %756 = load ptr, ptr %755, align 8, !tbaa !101
  %757 = load ptr, ptr %756, align 8, !tbaa !6
  %758 = getelementptr inbounds ptr, ptr %757, i64 %716
  %759 = load ptr, ptr %758, align 8, !tbaa !6
  %760 = getelementptr inbounds ptr, ptr %759, i64 %742
  %761 = load ptr, ptr %760, align 8, !tbaa !6
  store i16 %754, ptr %761, align 2, !tbaa !25
  %762 = getelementptr inbounds i8, ptr %735, i64 2
  %763 = load i16, ptr %762, align 2, !tbaa !25
  %764 = getelementptr inbounds i8, ptr %761, i64 2
  store i16 %763, ptr %764, align 2, !tbaa !25
  br i1 %14, label %864, label %789

765:                                              ; preds = %717
  %766 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %767 = getelementptr inbounds i8, ptr %766, i64 6480
  %768 = load ptr, ptr %767, align 8, !tbaa !90
  %769 = load ptr, ptr %768, align 8, !tbaa !6
  %770 = getelementptr inbounds ptr, ptr %769, i64 %716
  %771 = load ptr, ptr %770, align 8, !tbaa !6
  %772 = sext i32 %723 to i64
  %773 = getelementptr inbounds i8, ptr %771, i64 %772
  store i8 -1, ptr %773, align 1, !tbaa !20
  %774 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %775 = getelementptr inbounds i8, ptr %774, i64 6488
  %776 = load ptr, ptr %775, align 8, !tbaa !92
  %777 = load ptr, ptr %776, align 8, !tbaa !6
  %778 = getelementptr inbounds ptr, ptr %777, i64 %716
  %779 = load ptr, ptr %778, align 8, !tbaa !6
  %780 = getelementptr inbounds i64, ptr %779, i64 %772
  store i64 -1, ptr %780, align 8, !tbaa !62
  %781 = getelementptr inbounds i8, ptr %774, i64 6504
  %782 = load ptr, ptr %781, align 8, !tbaa !101
  %783 = load ptr, ptr %782, align 8, !tbaa !6
  %784 = getelementptr inbounds ptr, ptr %783, i64 %716
  %785 = load ptr, ptr %784, align 8, !tbaa !6
  %786 = getelementptr inbounds ptr, ptr %785, i64 %772
  %787 = load ptr, ptr %786, align 8, !tbaa !6
  store i16 0, ptr %787, align 2, !tbaa !25
  %788 = getelementptr inbounds i8, ptr %787, i64 2
  store i16 0, ptr %788, align 2, !tbaa !25
  br i1 %14, label %864, label %814

789:                                              ; preds = %724
  br i1 %15, label %790, label %814

790:                                              ; preds = %789
  %791 = getelementptr inbounds i8, ptr %744, i64 6480
  %792 = load ptr, ptr %791, align 8, !tbaa !90
  %793 = getelementptr inbounds i8, ptr %792, i64 8
  %794 = load ptr, ptr %793, align 8, !tbaa !6
  %795 = getelementptr inbounds ptr, ptr %794, i64 %716
  %796 = load ptr, ptr %795, align 8, !tbaa !6
  %797 = getelementptr inbounds i8, ptr %796, i64 %742
  store i8 -1, ptr %797, align 1, !tbaa !20
  %798 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %799 = getelementptr inbounds i8, ptr %798, i64 6488
  %800 = load ptr, ptr %799, align 8, !tbaa !92
  %801 = getelementptr inbounds i8, ptr %800, i64 8
  %802 = load ptr, ptr %801, align 8, !tbaa !6
  %803 = getelementptr inbounds ptr, ptr %802, i64 %716
  %804 = load ptr, ptr %803, align 8, !tbaa !6
  %805 = getelementptr inbounds i64, ptr %804, i64 %742
  store i64 -1, ptr %805, align 8, !tbaa !62
  %806 = getelementptr inbounds i8, ptr %798, i64 6504
  %807 = load ptr, ptr %806, align 8, !tbaa !101
  %808 = getelementptr inbounds i8, ptr %807, i64 8
  %809 = load ptr, ptr %808, align 8, !tbaa !6
  %810 = getelementptr inbounds ptr, ptr %809, i64 %716
  %811 = load ptr, ptr %810, align 8, !tbaa !6
  %812 = getelementptr inbounds ptr, ptr %811, i64 %742
  %813 = load ptr, ptr %812, align 8, !tbaa !6
  store i16 0, ptr %813, align 2, !tbaa !25
  br label %860

814:                                              ; preds = %765, %789
  %815 = phi i64 [ %772, %765 ], [ %742, %789 ]
  %816 = phi ptr [ %774, %765 ], [ %744, %789 ]
  %817 = getelementptr inbounds i8, ptr %816, i64 6480
  %818 = load ptr, ptr %817, align 8, !tbaa !90
  %819 = getelementptr inbounds i8, ptr %818, i64 8
  %820 = load ptr, ptr %819, align 8, !tbaa !6
  %821 = getelementptr inbounds ptr, ptr %820, i64 %716
  %822 = load ptr, ptr %821, align 8, !tbaa !6
  %823 = getelementptr inbounds i8, ptr %822, i64 %815
  store i8 %16, ptr %823, align 1, !tbaa !20
  br i1 %17, label %824, label %864

824:                                              ; preds = %814
  %825 = load ptr, ptr @img, align 8, !tbaa !6
  %826 = getelementptr inbounds i8, ptr %825, i64 89336
  %827 = load ptr, ptr %826, align 8, !tbaa !22
  %828 = getelementptr inbounds ptr, ptr %827, i64 %715
  %829 = load ptr, ptr %828, align 8, !tbaa !6
  %830 = getelementptr inbounds ptr, ptr %829, i64 %718
  %831 = load ptr, ptr %830, align 8, !tbaa !6
  %832 = getelementptr inbounds i8, ptr %831, i64 8
  %833 = load ptr, ptr %832, align 8, !tbaa !6
  %834 = getelementptr inbounds ptr, ptr %833, i64 %18
  %835 = load ptr, ptr %834, align 8, !tbaa !6
  %836 = getelementptr inbounds i8, ptr %835, i64 16
  %837 = load ptr, ptr %836, align 8, !tbaa !6
  %838 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %839 = getelementptr inbounds i8, ptr %838, i64 24
  %840 = getelementptr inbounds [6 x [33 x i64]], ptr %839, i64 0, i64 %20, i64 %18
  %841 = load i64, ptr %840, align 8, !tbaa !62
  %842 = getelementptr inbounds i8, ptr %838, i64 6488
  %843 = load ptr, ptr %842, align 8, !tbaa !92
  %844 = getelementptr inbounds i8, ptr %843, i64 8
  %845 = load ptr, ptr %844, align 8, !tbaa !6
  %846 = getelementptr inbounds ptr, ptr %845, i64 %716
  %847 = load ptr, ptr %846, align 8, !tbaa !6
  %848 = getelementptr inbounds i64, ptr %847, i64 %815
  store i64 %841, ptr %848, align 8, !tbaa !62
  %849 = load i16, ptr %837, align 2, !tbaa !25
  %850 = getelementptr inbounds i8, ptr %838, i64 6504
  %851 = load ptr, ptr %850, align 8, !tbaa !101
  %852 = getelementptr inbounds i8, ptr %851, i64 8
  %853 = load ptr, ptr %852, align 8, !tbaa !6
  %854 = getelementptr inbounds ptr, ptr %853, i64 %716
  %855 = load ptr, ptr %854, align 8, !tbaa !6
  %856 = getelementptr inbounds ptr, ptr %855, i64 %815
  %857 = load ptr, ptr %856, align 8, !tbaa !6
  store i16 %849, ptr %857, align 2, !tbaa !25
  %858 = getelementptr inbounds i8, ptr %837, i64 2
  %859 = load i16, ptr %858, align 2, !tbaa !25
  br label %860

860:                                              ; preds = %790, %824
  %861 = phi ptr [ %857, %824 ], [ %813, %790 ]
  %862 = phi i16 [ %859, %824 ], [ 0, %790 ]
  %863 = getelementptr inbounds i8, ptr %861, i64 2
  store i16 %862, ptr %863, align 2, !tbaa !25
  br label %864

864:                                              ; preds = %860, %765, %724, %814
  %865 = add nuw nsw i64 %718, 1
  %866 = icmp eq i64 %865, 4
  br i1 %866, label %867, label %717

867:                                              ; preds = %864
  br i1 %707, label %706, label %1031

868:                                              ; preds = %22, %1028
  %869 = phi i64 [ 0, %22 ], [ %1029, %1028 ]
  %870 = load ptr, ptr @img, align 8, !tbaa !6
  %871 = getelementptr inbounds i8, ptr %870, i64 148
  %872 = load i32, ptr %871, align 4, !tbaa !23
  %873 = trunc nuw nsw i64 %869 to i32
  %874 = add nsw i32 %872, %873
  %875 = sext i32 %874 to i64
  br label %876

876:                                              ; preds = %868, %1027
  %877 = phi i1 [ true, %868 ], [ false, %1027 ]
  %878 = phi i64 [ 0, %868 ], [ 1, %1027 ]
  %879 = load ptr, ptr @img, align 8, !tbaa !6
  %880 = getelementptr inbounds i8, ptr %879, i64 144
  %881 = load i32, ptr %880, align 8, !tbaa !24
  %882 = trunc nuw nsw i64 %878 to i32
  %883 = or disjoint i32 %23, %882
  %884 = add i32 %883, %881
  br i1 %24, label %927, label %885

885:                                              ; preds = %876
  %886 = getelementptr inbounds i8, ptr %879, i64 89336
  %887 = load ptr, ptr %886, align 8, !tbaa !22
  %888 = getelementptr inbounds ptr, ptr %887, i64 %869
  %889 = load ptr, ptr %888, align 8, !tbaa !6
  %890 = or disjoint i64 %878, %36
  %891 = getelementptr inbounds ptr, ptr %889, i64 %890
  %892 = load ptr, ptr %891, align 8, !tbaa !6
  %893 = load ptr, ptr %892, align 8, !tbaa !6
  %894 = getelementptr inbounds ptr, ptr %893, i64 %25
  %895 = load ptr, ptr %894, align 8, !tbaa !6
  %896 = getelementptr inbounds ptr, ptr %895, i64 %26
  %897 = load ptr, ptr %896, align 8, !tbaa !6
  %898 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %899 = getelementptr inbounds i8, ptr %898, i64 6480
  %900 = load ptr, ptr %899, align 8, !tbaa !90
  %901 = load ptr, ptr %900, align 8, !tbaa !6
  %902 = getelementptr inbounds ptr, ptr %901, i64 %875
  %903 = load ptr, ptr %902, align 8, !tbaa !6
  %904 = sext i32 %884 to i64
  %905 = getelementptr inbounds i8, ptr %903, i64 %904
  store i8 %27, ptr %905, align 1, !tbaa !20
  %906 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %907 = getelementptr inbounds i8, ptr %906, i64 24
  %908 = getelementptr inbounds [6 x [33 x i64]], ptr %907, i64 0, i64 %28, i64 %25
  %909 = load i64, ptr %908, align 8, !tbaa !62
  %910 = getelementptr inbounds i8, ptr %906, i64 6488
  %911 = load ptr, ptr %910, align 8, !tbaa !92
  %912 = load ptr, ptr %911, align 8, !tbaa !6
  %913 = getelementptr inbounds ptr, ptr %912, i64 %875
  %914 = load ptr, ptr %913, align 8, !tbaa !6
  %915 = getelementptr inbounds i64, ptr %914, i64 %904
  store i64 %909, ptr %915, align 8, !tbaa !62
  %916 = load i16, ptr %897, align 2, !tbaa !25
  %917 = getelementptr inbounds i8, ptr %906, i64 6504
  %918 = load ptr, ptr %917, align 8, !tbaa !101
  %919 = load ptr, ptr %918, align 8, !tbaa !6
  %920 = getelementptr inbounds ptr, ptr %919, i64 %875
  %921 = load ptr, ptr %920, align 8, !tbaa !6
  %922 = getelementptr inbounds ptr, ptr %921, i64 %904
  %923 = load ptr, ptr %922, align 8, !tbaa !6
  store i16 %916, ptr %923, align 2, !tbaa !25
  %924 = getelementptr inbounds i8, ptr %897, i64 2
  %925 = load i16, ptr %924, align 2, !tbaa !25
  %926 = getelementptr inbounds i8, ptr %923, i64 2
  store i16 %925, ptr %926, align 2, !tbaa !25
  br i1 %29, label %1027, label %951

927:                                              ; preds = %876
  %928 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %929 = getelementptr inbounds i8, ptr %928, i64 6480
  %930 = load ptr, ptr %929, align 8, !tbaa !90
  %931 = load ptr, ptr %930, align 8, !tbaa !6
  %932 = getelementptr inbounds ptr, ptr %931, i64 %875
  %933 = load ptr, ptr %932, align 8, !tbaa !6
  %934 = sext i32 %884 to i64
  %935 = getelementptr inbounds i8, ptr %933, i64 %934
  store i8 -1, ptr %935, align 1, !tbaa !20
  %936 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %937 = getelementptr inbounds i8, ptr %936, i64 6488
  %938 = load ptr, ptr %937, align 8, !tbaa !92
  %939 = load ptr, ptr %938, align 8, !tbaa !6
  %940 = getelementptr inbounds ptr, ptr %939, i64 %875
  %941 = load ptr, ptr %940, align 8, !tbaa !6
  %942 = getelementptr inbounds i64, ptr %941, i64 %934
  store i64 -1, ptr %942, align 8, !tbaa !62
  %943 = getelementptr inbounds i8, ptr %936, i64 6504
  %944 = load ptr, ptr %943, align 8, !tbaa !101
  %945 = load ptr, ptr %944, align 8, !tbaa !6
  %946 = getelementptr inbounds ptr, ptr %945, i64 %875
  %947 = load ptr, ptr %946, align 8, !tbaa !6
  %948 = getelementptr inbounds ptr, ptr %947, i64 %934
  %949 = load ptr, ptr %948, align 8, !tbaa !6
  store i16 0, ptr %949, align 2, !tbaa !25
  %950 = getelementptr inbounds i8, ptr %949, i64 2
  store i16 0, ptr %950, align 2, !tbaa !25
  br i1 %29, label %1027, label %976

951:                                              ; preds = %885
  br i1 %30, label %952, label %976

952:                                              ; preds = %951
  %953 = getelementptr inbounds i8, ptr %906, i64 6480
  %954 = load ptr, ptr %953, align 8, !tbaa !90
  %955 = getelementptr inbounds i8, ptr %954, i64 8
  %956 = load ptr, ptr %955, align 8, !tbaa !6
  %957 = getelementptr inbounds ptr, ptr %956, i64 %875
  %958 = load ptr, ptr %957, align 8, !tbaa !6
  %959 = getelementptr inbounds i8, ptr %958, i64 %904
  store i8 -1, ptr %959, align 1, !tbaa !20
  %960 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %961 = getelementptr inbounds i8, ptr %960, i64 6488
  %962 = load ptr, ptr %961, align 8, !tbaa !92
  %963 = getelementptr inbounds i8, ptr %962, i64 8
  %964 = load ptr, ptr %963, align 8, !tbaa !6
  %965 = getelementptr inbounds ptr, ptr %964, i64 %875
  %966 = load ptr, ptr %965, align 8, !tbaa !6
  %967 = getelementptr inbounds i64, ptr %966, i64 %904
  store i64 -1, ptr %967, align 8, !tbaa !62
  %968 = getelementptr inbounds i8, ptr %960, i64 6504
  %969 = load ptr, ptr %968, align 8, !tbaa !101
  %970 = getelementptr inbounds i8, ptr %969, i64 8
  %971 = load ptr, ptr %970, align 8, !tbaa !6
  %972 = getelementptr inbounds ptr, ptr %971, i64 %875
  %973 = load ptr, ptr %972, align 8, !tbaa !6
  %974 = getelementptr inbounds ptr, ptr %973, i64 %904
  %975 = load ptr, ptr %974, align 8, !tbaa !6
  store i16 0, ptr %975, align 2, !tbaa !25
  br label %1023

976:                                              ; preds = %927, %951
  %977 = phi i64 [ %934, %927 ], [ %904, %951 ]
  %978 = phi ptr [ %936, %927 ], [ %906, %951 ]
  %979 = getelementptr inbounds i8, ptr %978, i64 6480
  %980 = load ptr, ptr %979, align 8, !tbaa !90
  %981 = getelementptr inbounds i8, ptr %980, i64 8
  %982 = load ptr, ptr %981, align 8, !tbaa !6
  %983 = getelementptr inbounds ptr, ptr %982, i64 %875
  %984 = load ptr, ptr %983, align 8, !tbaa !6
  %985 = getelementptr inbounds i8, ptr %984, i64 %977
  store i8 %31, ptr %985, align 1, !tbaa !20
  br i1 %32, label %986, label %1027

986:                                              ; preds = %976
  %987 = load ptr, ptr @img, align 8, !tbaa !6
  %988 = getelementptr inbounds i8, ptr %987, i64 89336
  %989 = load ptr, ptr %988, align 8, !tbaa !22
  %990 = getelementptr inbounds ptr, ptr %989, i64 %869
  %991 = load ptr, ptr %990, align 8, !tbaa !6
  %992 = or disjoint i64 %878, %36
  %993 = getelementptr inbounds ptr, ptr %991, i64 %992
  %994 = load ptr, ptr %993, align 8, !tbaa !6
  %995 = getelementptr inbounds i8, ptr %994, i64 8
  %996 = load ptr, ptr %995, align 8, !tbaa !6
  %997 = getelementptr inbounds ptr, ptr %996, i64 %33
  %998 = load ptr, ptr %997, align 8, !tbaa !6
  %999 = getelementptr inbounds ptr, ptr %998, i64 %26
  %1000 = load ptr, ptr %999, align 8, !tbaa !6
  %1001 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1002 = getelementptr inbounds i8, ptr %1001, i64 24
  %1003 = getelementptr inbounds [6 x [33 x i64]], ptr %1002, i64 0, i64 %35, i64 %33
  %1004 = load i64, ptr %1003, align 8, !tbaa !62
  %1005 = getelementptr inbounds i8, ptr %1001, i64 6488
  %1006 = load ptr, ptr %1005, align 8, !tbaa !92
  %1007 = getelementptr inbounds i8, ptr %1006, i64 8
  %1008 = load ptr, ptr %1007, align 8, !tbaa !6
  %1009 = getelementptr inbounds ptr, ptr %1008, i64 %875
  %1010 = load ptr, ptr %1009, align 8, !tbaa !6
  %1011 = getelementptr inbounds i64, ptr %1010, i64 %977
  store i64 %1004, ptr %1011, align 8, !tbaa !62
  %1012 = load i16, ptr %1000, align 2, !tbaa !25
  %1013 = getelementptr inbounds i8, ptr %1001, i64 6504
  %1014 = load ptr, ptr %1013, align 8, !tbaa !101
  %1015 = getelementptr inbounds i8, ptr %1014, i64 8
  %1016 = load ptr, ptr %1015, align 8, !tbaa !6
  %1017 = getelementptr inbounds ptr, ptr %1016, i64 %875
  %1018 = load ptr, ptr %1017, align 8, !tbaa !6
  %1019 = getelementptr inbounds ptr, ptr %1018, i64 %977
  %1020 = load ptr, ptr %1019, align 8, !tbaa !6
  store i16 %1012, ptr %1020, align 2, !tbaa !25
  %1021 = getelementptr inbounds i8, ptr %1000, i64 2
  %1022 = load i16, ptr %1021, align 2, !tbaa !25
  br label %1023

1023:                                             ; preds = %952, %986
  %1024 = phi ptr [ %1020, %986 ], [ %975, %952 ]
  %1025 = phi i16 [ %1022, %986 ], [ 0, %952 ]
  %1026 = getelementptr inbounds i8, ptr %1024, i64 2
  store i16 %1025, ptr %1026, align 2, !tbaa !25
  br label %1027

1027:                                             ; preds = %1023, %927, %885, %976
  br i1 %877, label %876, label %1028

1028:                                             ; preds = %1027
  %1029 = add nuw nsw i64 %869, 1
  %1030 = icmp eq i64 %1029, 4
  br i1 %1030, label %1031, label %868

1031:                                             ; preds = %867, %439, %703, %371, %1028, %345, %349, %342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @update_refresh_map(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 3580
  %6 = load i32, ptr %5, align 4, !tbaa !152
  switch i32 %6, label %208 [
    i32 1, label %7
    i32 2, label %132
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 3136
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = icmp ne i32 %0, 0
  %13 = zext i1 %12 to i8
  %14 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 140
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = shl nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %15, i64 136
  %23 = load i32, ptr %22, align 8, !tbaa !146
  %24 = shl nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %21, i64 %25
  store i8 %13, ptr %26, align 1, !tbaa !20
  %27 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %28 = load ptr, ptr @img, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 140
  %30 = load i32, ptr %29, align 4, !tbaa !147
  %31 = shl nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %27, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %28, i64 136
  %36 = load i32, ptr %35, align 8, !tbaa !146
  %37 = shl nsw i32 %36, 1
  %38 = or disjoint i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  store i8 %13, ptr %40, align 1, !tbaa !20
  %41 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %42 = load ptr, ptr @img, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 140
  %44 = load i32, ptr %43, align 4, !tbaa !147
  %45 = shl nsw i32 %44, 1
  %46 = or disjoint i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %41, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %42, i64 136
  %51 = load i32, ptr %50, align 8, !tbaa !146
  %52 = shl nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  store i8 %13, ptr %54, align 1, !tbaa !20
  br label %191

55:                                               ; preds = %7
  %56 = icmp eq i32 %9, 3
  br i1 %56, label %57, label %208

57:                                               ; preds = %55
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %2, i64 72
  %61 = load i32, ptr %60, align 8, !tbaa !57
  %62 = add i32 %61, -9
  %63 = icmp ult i32 %62, 2
  br label %64

64:                                               ; preds = %59, %57
  %65 = phi i1 [ false, %57 ], [ %63, %59 ]
  %66 = zext i1 %65 to i8
  %67 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %68 = load ptr, ptr @img, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 140
  %70 = load i32, ptr %69, align 4, !tbaa !147
  %71 = shl nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %67, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %68, i64 136
  %76 = load i32, ptr %75, align 8, !tbaa !146
  %77 = shl nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %74, i64 %78
  store i8 %66, ptr %79, align 1, !tbaa !20
  br i1 %58, label %80, label %85

80:                                               ; preds = %64
  %81 = getelementptr inbounds i8, ptr %2, i64 72
  %82 = load i32, ptr %81, align 8, !tbaa !57
  %83 = add i32 %82, -9
  %84 = icmp ult i32 %83, 2
  br label %85

85:                                               ; preds = %80, %64
  %86 = phi i1 [ false, %64 ], [ %84, %80 ]
  %87 = zext i1 %86 to i8
  %88 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %89 = load ptr, ptr @img, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 140
  %91 = load i32, ptr %90, align 4, !tbaa !147
  %92 = shl nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %88, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %89, i64 136
  %97 = load i32, ptr %96, align 8, !tbaa !146
  %98 = shl nsw i32 %97, 1
  %99 = or disjoint i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %95, i64 %100
  store i8 %87, ptr %101, align 1, !tbaa !20
  br i1 %58, label %102, label %107

102:                                              ; preds = %85
  %103 = getelementptr inbounds i8, ptr %2, i64 72
  %104 = load i32, ptr %103, align 8, !tbaa !57
  %105 = add i32 %104, -9
  %106 = icmp ult i32 %105, 2
  br label %107

107:                                              ; preds = %102, %85
  %108 = phi i1 [ false, %85 ], [ %106, %102 ]
  %109 = zext i1 %108 to i8
  %110 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %111 = load ptr, ptr @img, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %111, i64 140
  %113 = load i32, ptr %112, align 4, !tbaa !147
  %114 = shl nsw i32 %113, 1
  %115 = or disjoint i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %110, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds i8, ptr %111, i64 136
  %120 = load i32, ptr %119, align 8, !tbaa !146
  %121 = shl nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %118, i64 %122
  store i8 %109, ptr %123, align 1, !tbaa !20
  br i1 %58, label %124, label %129

124:                                              ; preds = %107
  %125 = getelementptr inbounds i8, ptr %2, i64 72
  %126 = load i32, ptr %125, align 8, !tbaa !57
  %127 = add i32 %126, -9
  %128 = icmp ult i32 %127, 2
  br label %129

129:                                              ; preds = %124, %107
  %130 = phi i1 [ false, %107 ], [ %128, %124 ]
  %131 = zext i1 %130 to i8
  br label %191

132:                                              ; preds = %3
  %133 = getelementptr inbounds i8, ptr %2, i64 72
  %134 = load i32, ptr %133, align 8, !tbaa !57
  %135 = add i32 %134, -9
  %136 = icmp ult i32 %135, 2
  %137 = zext i1 %136 to i8
  %138 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %139 = load ptr, ptr @img, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 140
  %141 = load i32, ptr %140, align 4, !tbaa !147
  %142 = shl nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %138, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %139, i64 136
  %147 = load i32, ptr %146, align 8, !tbaa !146
  %148 = shl nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %145, i64 %149
  store i8 %137, ptr %150, align 1, !tbaa !20
  %151 = load i32, ptr %133, align 8, !tbaa !57
  %152 = add i32 %151, -9
  %153 = icmp ult i32 %152, 2
  %154 = zext i1 %153 to i8
  %155 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %156 = load ptr, ptr @img, align 8, !tbaa !6
  %157 = getelementptr inbounds i8, ptr %156, i64 140
  %158 = load i32, ptr %157, align 4, !tbaa !147
  %159 = shl nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %155, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = getelementptr inbounds i8, ptr %156, i64 136
  %164 = load i32, ptr %163, align 8, !tbaa !146
  %165 = shl nsw i32 %164, 1
  %166 = or disjoint i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %162, i64 %167
  store i8 %154, ptr %168, align 1, !tbaa !20
  %169 = load i32, ptr %133, align 8, !tbaa !57
  %170 = add i32 %169, -9
  %171 = icmp ult i32 %170, 2
  %172 = zext i1 %171 to i8
  %173 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %174 = load ptr, ptr @img, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 140
  %176 = load i32, ptr %175, align 4, !tbaa !147
  %177 = shl nsw i32 %176, 1
  %178 = or disjoint i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %173, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr inbounds i8, ptr %174, i64 136
  %183 = load i32, ptr %182, align 8, !tbaa !146
  %184 = shl nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, ptr %181, i64 %185
  store i8 %172, ptr %186, align 1, !tbaa !20
  %187 = load i32, ptr %133, align 8, !tbaa !57
  %188 = add i32 %187, -9
  %189 = icmp ult i32 %188, 2
  %190 = zext i1 %189 to i8
  br label %191

191:                                              ; preds = %129, %11, %132
  %192 = phi i8 [ %190, %132 ], [ %13, %11 ], [ %131, %129 ]
  %193 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %194 = load ptr, ptr @img, align 8, !tbaa !6
  %195 = getelementptr inbounds i8, ptr %194, i64 140
  %196 = load i32, ptr %195, align 4, !tbaa !147
  %197 = shl nsw i32 %196, 1
  %198 = or disjoint i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %193, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %194, i64 136
  %203 = load i32, ptr %202, align 8, !tbaa !146
  %204 = shl nsw i32 %203, 1
  %205 = or disjoint i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %201, i64 %206
  store i8 %192, ptr %207, align 1, !tbaa !20
  br label %208

208:                                              ; preds = %191, %3, %55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

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
!10 = !{!11, !12, i64 3892}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !12, i64 24}
!15 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !16, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !17, i64 90584, !12, i64 90588, !12, i64 90592}
!16 = !{!"float", !8, i64 0}
!17 = !{!"short", !8, i64 0}
!18 = !{!15, !12, i64 60}
!19 = !{!15, !12, i64 52}
!20 = !{!8, !8, i64 0}
!21 = !{!11, !12, i64 36}
!22 = !{!15, !7, i64 89336}
!23 = !{!15, !12, i64 148}
!24 = !{!15, !12, i64 144}
!25 = !{!17, !17, i64 0}
!26 = !{!15, !12, i64 152}
!27 = !{!15, !12, i64 156}
!28 = !{!15, !12, i64 172}
!29 = !{!30, !7, i64 6424}
!30 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!31 = !{!15, !7, i64 31568}
!32 = !{!15, !7, i64 31576}
!33 = !{!15, !12, i64 12}
!34 = !{!35, !12, i64 0}
!35 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !36, i64 368, !8, i64 376, !8, i64 392, !36, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !17, i64 476, !13, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!36 = !{!"long long", !8, i64 0}
!37 = !{!11, !12, i64 2992}
!38 = !{!12, !12, i64 0}
!39 = !{!15, !12, i64 90572}
!40 = !{!15, !7, i64 89184}
!41 = !{!42, !12, i64 4}
!42 = !{!"syntaxelement", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32, !7, i64 40}
!43 = !{!42, !12, i64 24}
!44 = !{!42, !12, i64 0}
!45 = !{!11, !12, i64 2984}
!46 = !{!47, !7, i64 24}
!47 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!48 = !{!42, !7, i64 40}
!49 = !{!50, !7, i64 104}
!50 = !{!"datapartition", !7, i64 0, !51, i64 8, !7, i64 104}
!51 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!52 = !{!42, !12, i64 12}
!53 = !{!15, !7, i64 14136}
!54 = !{!15, !12, i64 76}
!55 = !{!15, !12, i64 72}
!56 = !{!42, !12, i64 8}
!57 = !{!35, !12, i64 72}
!58 = !{!15, !12, i64 80}
!59 = !{!15, !12, i64 84}
!60 = !{!15, !12, i64 168}
!61 = !{!35, !12, i64 416}
!62 = !{!36, !36, i64 0}
!63 = !{!11, !12, i64 220}
!64 = !{!65, !12, i64 0}
!65 = !{!"pix_pos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!66 = !{!15, !7, i64 89192}
!67 = !{!65, !12, i64 4}
!68 = !{!15, !7, i64 104}
!69 = !{!65, !12, i64 20}
!70 = !{!65, !12, i64 16}
!71 = !{!11, !12, i64 3024}
!72 = !{!11, !12, i64 3028}
!73 = !{!11, !12, i64 3032}
!74 = !{!11, !12, i64 3036}
!75 = !{!11, !12, i64 3136}
!76 = !{!11, !12, i64 24}
!77 = !{!35, !36, i64 408}
!78 = !{!15, !7, i64 128}
!79 = !{!15, !12, i64 90212}
!80 = !{!15, !12, i64 90536}
!81 = !{!30, !7, i64 6464}
!82 = !{!15, !12, i64 90532}
!83 = !{!35, !17, i64 476}
!84 = !{!11, !12, i64 3576}
!85 = !{!86, !7, i64 8}
!86 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!87 = !{!15, !12, i64 89408}
!88 = !{!15, !12, i64 89412}
!89 = !{!35, !12, i64 468}
!90 = !{!30, !7, i64 6480}
!91 = !{!35, !12, i64 428}
!92 = !{!30, !7, i64 6488}
!93 = !{!35, !12, i64 364}
!94 = !{!15, !12, i64 90540}
!95 = !{i64 0, i64 4, !38, i64 4, i64 1024, !20, i64 1028, i64 1024, !20, i64 2052, i64 1024, !20, i64 3076, i64 3072, !20, i64 6148, i64 8, !20, i64 6156, i64 8, !20, i64 6164, i64 4, !20, i64 6168, i64 4, !20, i64 6172, i64 512, !20, i64 6684, i64 512, !20, i64 7196, i64 1024, !20}
!96 = !{!15, !12, i64 40}
!97 = !{!15, !12, i64 90492}
!98 = !{!15, !12, i64 90552}
!99 = !{!35, !36, i64 368}
!100 = !{!15, !7, i64 89328}
!101 = !{!30, !7, i64 6504}
!102 = !{!15, !12, i64 90220}
!103 = !{!15, !12, i64 36}
!104 = !{!105, !7, i64 1656}
!105 = !{!"", !13, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !7, i64 1544, !7, i64 1552, !12, i64 1560, !17, i64 1564, !8, i64 1568, !8, i64 1584, !7, i64 1600, !8, i64 1608, !12, i64 1624, !36, i64 1632, !12, i64 1640, !7, i64 1648, !7, i64 1656, !8, i64 1664, !12, i64 1696, !12, i64 1700, !12, i64 1704, !12, i64 1708, !12, i64 1712, !12, i64 1716, !12, i64 1720, !12, i64 1724, !12, i64 1728}
!106 = !{!105, !7, i64 1648}
!107 = !{!35, !12, i64 424}
!108 = !{!15, !12, i64 8}
!109 = !{!15, !12, i64 90208}
!110 = !{!15, !12, i64 90548}
!111 = !{!15, !12, i64 90560}
!112 = !{!15, !12, i64 180}
!113 = !{!15, !12, i64 164}
!114 = !{!15, !12, i64 176}
!115 = !{!15, !12, i64 90556}
!116 = !{!11, !12, i64 3908}
!117 = !{!15, !12, i64 90196}
!118 = !{!15, !12, i64 120}
!119 = !{!13, !13, i64 0}
!120 = !{!11, !12, i64 0}
!121 = !{!35, !12, i64 448}
!122 = !{!35, !12, i64 452}
!123 = !{!15, !7, i64 112}
!124 = !{!15, !12, i64 160}
!125 = !{!86, !7, i64 24}
!126 = !{!15, !7, i64 14144}
!127 = !{!105, !12, i64 1640}
!128 = !{!105, !12, i64 1696}
!129 = !{!105, !12, i64 1624}
!130 = !{!105, !36, i64 1632}
!131 = !{!105, !12, i64 1560}
!132 = !{!35, !12, i64 488}
!133 = !{!105, !12, i64 1716}
!134 = !{!35, !12, i64 492}
!135 = !{!105, !12, i64 1720}
!136 = !{!35, !12, i64 8}
!137 = !{!105, !12, i64 1724}
!138 = !{!35, !12, i64 12}
!139 = !{!105, !12, i64 1712}
!140 = !{!35, !12, i64 496}
!141 = !{!105, !12, i64 1728}
!142 = !{!105, !7, i64 1544}
!143 = !{!105, !7, i64 1552}
!144 = !{!105, !12, i64 1704}
!145 = !{!86, !7, i64 48}
!146 = !{!15, !12, i64 136}
!147 = !{!15, !12, i64 140}
!148 = !{!105, !12, i64 1700}
!149 = !{!105, !7, i64 1600}
!150 = !{!11, !12, i64 4268}
!151 = !{!105, !17, i64 1564}
!152 = !{!11, !12, i64 3580}
