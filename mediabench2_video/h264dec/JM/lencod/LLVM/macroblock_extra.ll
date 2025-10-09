; ModuleID = 'src/macroblock.c'
source_filename = "src/macroblock.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@MODTAB = dso_local local_unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 0, i32 4], [2 x i32] [i32 16, i32 12], [2 x i32] [i32 8, i32 20]], align 4
@NCBP = dso_local local_unnamed_addr constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\0A\01", [2 x i8] c"\0B\02", [2 x i8] c"\06\05", [2 x i8] c"\0C\03", [2 x i8] c"\07\06", [2 x i8] c"\0E\0E", [2 x i8] c"\02\0A", [2 x i8] c"\0D\04", [2 x i8] c"\0F\0F", [2 x i8] c"\08\07", [2 x i8] c"\03\0B", [2 x i8] c"\09\08", [2 x i8] c"\04\0C", [2 x i8] c"\05\0D", [2 x i8] c"\00\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\1D\02", [2 x i8] c"\1E\03", [2 x i8] c"\11\07", [2 x i8] c"\1F\04", [2 x i8] c"\12\08", [2 x i8] c"%\11", [2 x i8] c"\08\0D", [2 x i8] c" \05", [2 x i8] c"&\12", [2 x i8] c"\13\09", [2 x i8] c"\09\0E", [2 x i8] c"\14\0A", [2 x i8] c"\0A\0F", [2 x i8] c"\0B\10", [2 x i8] c"\02\0B", [2 x i8] c"\10\01", [2 x i8] c"! ", [2 x i8] c"\22!", [2 x i8] c"\15$", [2 x i8] c"#\22", [2 x i8] c"\16%", [2 x i8] c"',", [2 x i8] c"\04(", [2 x i8] c"$#", [2 x i8] c"(-", [2 x i8] c"\17&", [2 x i8] c"\05)", [2 x i8] c"\18'", [2 x i8] c"\06*", [2 x i8] c"\07+", [2 x i8] c"\01\13", [2 x i8] c")\06", [2 x i8] c"*\18", [2 x i8] c"+\19", [2 x i8] c"\19\14", [2 x i8] c",\1A", [2 x i8] c"\1A\15", [2 x i8] c"..", [2 x i8] c"\0C\1C", [2 x i8] c"-\1B", [2 x i8] c"//", [2 x i8] c"\1B\16", [2 x i8] c"\0D\1D", [2 x i8] c"\1C\17", [2 x i8] c"\0E\1E", [2 x i8] c"\0F\1F", [2 x i8] c"\00\0C"] }>, align 1
@subblk_offset_x = dso_local local_unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 1
@subblk_offset_y = dso_local local_unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org_bot = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org_top = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_bot = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_top = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org_frm = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_frm = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [90 x i8] c"Warning!!! Number of bits (%d) of macroblock_layer() data seems to exceed defined limit.\0A\00", align 1
@stats = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@DELTA_QP2 = external dso_local local_unnamed_addr global i32, align 4
@DELTA_QP = external dso_local local_unnamed_addr global i32, align 4
@QP2 = external dso_local local_unnamed_addr global i32, align 4
@QP = external dso_local local_unnamed_addr global i32, align 4
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@dq = dso_local local_unnamed_addr global i32 0, align 4
@predict_error = dso_local local_unnamed_addr global i32 0, align 4
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@assignSE2partition = external dso_local local_unnamed_addr global [2 x ptr], align 8
@terminate_macroblock.skip = internal unnamed_addr global i1 false, align 4
@errortext = external dso_local global [300 x i8], align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Slice Mode %d not supported\00", align 1
@get_line = internal unnamed_addr global ptr null, align 8
@LumaPrediction4x4.fw_pred = internal global [16 x i32] zeroinitializer, align 4
@LumaPrediction4x4.bw_pred = internal global [16 x i32] zeroinitializer, align 4
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@wbp_weight = external dso_local local_unnamed_addr global ptr, align 8
@wp_luma_round = external dso_local local_unnamed_addr global i32, align 4
@luma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@wp_offset = external dso_local local_unnamed_addr global ptr, align 8
@wp_weight = external dso_local local_unnamed_addr global ptr, align 8
@LumaPrediction4x4Bi.fw_pred = internal global [16 x i32] zeroinitializer, align 4
@LumaPrediction4x4Bi.bw_pred = internal global [16 x i32] zeroinitializer, align 4
@mprRGB = external dso_local local_unnamed_addr global [3 x [16 x [16 x i32]]], align 4
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@resTrans_R = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_B = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_G = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resG = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@ChromaPrediction4x4.fw_pred = internal global [16 x i32] zeroinitializer, align 4
@ChromaPrediction4x4.bw_pred = internal global [16 x i32] zeroinitializer, align 4
@wp_chroma_round = external dso_local local_unnamed_addr global i32, align 4
@chroma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@__const.ChromaResidualCoding.block8x8_idx = private unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3], [4 x i32] [i32 2, i32 2, i32 3, i32 3]]], align 4
@rec_resB = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resR = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@IntraChromaPrediction.block_pos = internal unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 4
@MBType2Value.dir1offset = internal unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@MBType2Value.dir2offset = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 0, i32 4, i32 8], [3 x i32] [i32 6, i32 2, i32 10], [3 x i32] [i32 12, i32 14, i32 16]], align 4
@B8Mode2Value.b8start = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 5, i32 10], align 4
@B8Mode2Value.b8inc = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1], align 4
@last_dquant = external dso_local local_unnamed_addr global i32, align 4
@intras = external dso_local local_unnamed_addr global i32, align 4
@cabac_encoding = external dso_local local_unnamed_addr global i32, align 4
@listXsize = external dso_local local_unnamed_addr global [6 x i32], align 4
@__const.writeChromaCoeff.chroma_dc_context = private unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 9], align 4
@writeChromaCoeff.chroma_ac_param = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"\06\16\07\17", [4 x i8] c"$4%5", [4 x i8] c"&6'7", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] c"\06\16\07\17", [4 x i8] c"&6'7", [4 x i8] c"\08\18\09\19", [4 x i8] c"(8)9", [4 x i8] c"\0A\1A\0B\1B", [4 x i8] c"*:+;"]], align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"transform_size_flag == 1\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"src/macroblock.c\00", align 1
@__PRETTY_FUNCTION__.writeLumaCoeff8x8 = private unnamed_addr constant [37 x i8] c"int writeLumaCoeff8x8(int, int, int)\00", align 1
@predict_nnz_chroma.j_off_tab = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8], align 4
@writeCoeff4x4_CAVLC.incVlc = internal unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 32768], align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"writeCoeff4x4_CAVLC: Invalid block type\00", align 1
@str = private unnamed_addr constant [17 x i8] c"ERROR: level > 1\00", align 1
@switch.table.writeCBPandLumaCoeff = private unnamed_addr constant [5 x i32] [i32 17, i32 17, i32 16, i32 16, i32 17], align 4

; Function Attrs: nounwind
define dso_local void @set_MB_parameters(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 12
  store i32 %0, ptr %3, align 4, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %2, i64 136
  %5 = getelementptr inbounds i8, ptr %2, i64 140
  tail call void @get_mb_block_pos(i32 noundef signext %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 136
  %8 = load i32, ptr %7, align 8, !tbaa !16
  %9 = shl i32 %8, 2
  %10 = getelementptr inbounds i8, ptr %6, i64 144
  store i32 %9, ptr %10, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %6, i64 140
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = shl i32 %12, 2
  %14 = getelementptr inbounds i8, ptr %6, i64 148
  store i32 %13, ptr %14, align 4, !tbaa !19
  %15 = shl i32 %8, 4
  %16 = getelementptr inbounds i8, ptr %6, i64 152
  store i32 %15, ptr %16, align 8, !tbaa !20
  %17 = shl i32 %12, 4
  %18 = getelementptr inbounds i8, ptr %6, i64 156
  store i32 %17, ptr %18, align 4, !tbaa !21
  %19 = getelementptr inbounds i8, ptr %6, i64 168
  store i32 %15, ptr %19, align 8, !tbaa !22
  %20 = getelementptr inbounds i8, ptr %6, i64 90220
  %21 = load i32, ptr %20, align 4, !tbaa !23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds i8, ptr %6, i64 31576
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = sext i32 %0 to i64
  %27 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %26, i32 19
  %28 = load i32, ptr %27, align 8, !tbaa !25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = and i32 %0, 1
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr @imgY_org_bot, align 8
  %34 = load ptr, ptr @imgY_org_top, align 8
  %35 = select i1 %32, ptr %34, ptr %33
  store ptr %35, ptr @imgY_org, align 8, !tbaa !6
  %36 = load ptr, ptr @imgUV_org_bot, align 8
  %37 = load ptr, ptr @imgUV_org_top, align 8
  %38 = select i1 %32, ptr %37, ptr %36
  store ptr %38, ptr @imgUV_org, align 8, !tbaa !6
  %39 = shl i32 %12, 3
  %40 = and i32 %39, -16
  %41 = getelementptr inbounds i8, ptr %6, i64 172
  store i32 %40, ptr %41, align 4, !tbaa !28
  %42 = select i1 %32, i32 2, i32 4
  %43 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %26, i32 20
  store i32 %42, ptr %43, align 4, !tbaa !29
  br label %55

44:                                               ; preds = %23
  %45 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %45, ptr @imgY_org, align 8, !tbaa !6
  %46 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %46, ptr @imgUV_org, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %6, i64 172
  store i32 %17, ptr %47, align 4, !tbaa !28
  %48 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %26, i32 20
  store i32 0, ptr %48, align 4, !tbaa !29
  br label %55

49:                                               ; preds = %1
  %50 = getelementptr inbounds i8, ptr %6, i64 172
  store i32 %17, ptr %50, align 4, !tbaa !28
  %51 = getelementptr inbounds i8, ptr %6, i64 31576
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = sext i32 %0 to i64
  %54 = getelementptr inbounds %struct.macroblock, ptr %52, i64 %53, i32 20
  store i32 0, ptr %54, align 4, !tbaa !29
  br label %55

55:                                               ; preds = %30, %44, %49
  %56 = phi i32 [ %40, %30 ], [ %17, %44 ], [ %17, %49 ]
  %57 = getelementptr inbounds i8, ptr %6, i64 90548
  %58 = load i32, ptr %57, align 4, !tbaa !30
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, ptr %6, i64 90556
  %62 = load i32, ptr %61, align 4, !tbaa !31
  %63 = mul nsw i32 %62, %15
  %64 = ashr exact i32 %63, 4
  %65 = getelementptr inbounds i8, ptr %6, i64 160
  store i32 %64, ptr %65, align 8, !tbaa !32
  %66 = getelementptr inbounds i8, ptr %6, i64 90560
  %67 = load i32, ptr %66, align 8, !tbaa !33
  %68 = mul nsw i32 %67, %17
  %69 = ashr exact i32 %68, 4
  %70 = getelementptr inbounds i8, ptr %6, i64 164
  store i32 %69, ptr %70, align 4, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %6, i64 176
  store i32 %64, ptr %71, align 8, !tbaa !35
  %72 = mul nsw i32 %56, %67
  %73 = ashr exact i32 %72, 4
  %74 = getelementptr inbounds i8, ptr %6, i64 180
  store i32 %73, ptr %74, align 4, !tbaa !36
  br label %75

75:                                               ; preds = %60, %55
  ret void
}

declare dso_local void @get_mb_block_pos(i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @clip1a(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90532
  %4 = load i32, ptr %3, align 4, !tbaa !37
  %5 = icmp slt i32 %4, %0
  %6 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %7 = select i1 %5, i32 %4, i32 %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @clip1a_chr(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90536
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = icmp slt i32 %4, %0
  %6 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %7 = select i1 %5, i32 %4, i32 %6
  ret i32 %7
}

; Function Attrs: nofree nounwind
define dso_local void @proceed2nextMacroblock() local_unnamed_addr #3 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 24
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = getelementptr inbounds i8, ptr %1, i64 90484
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = shl nsw i32 %11, 8
  %13 = or disjoint i32 %12, 128
  %14 = getelementptr inbounds i8, ptr %1, i64 90560
  %15 = load i32, ptr %14, align 8, !tbaa !33
  %16 = shl nsw i32 %15, 1
  %17 = getelementptr inbounds i8, ptr %1, i64 90556
  %18 = load i32, ptr %17, align 4, !tbaa !31
  %19 = mul nsw i32 %16, %18
  %20 = getelementptr inbounds i8, ptr %1, i64 90488
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = mul nsw i32 %19, %21
  %23 = add nsw i32 %13, %22
  %24 = icmp sgt i32 %9, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %0
  %26 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %9)
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %25, %0
  %29 = phi ptr [ %27, %25 ], [ %1, %0 ]
  %30 = getelementptr inbounds i8, ptr %7, i64 28
  %31 = load i32, ptr %30, align 4, !tbaa !39
  %32 = load ptr, ptr @stats, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 1356
  %34 = getelementptr inbounds i8, ptr %29, i64 24
  %35 = load i32, ptr %34, align 8, !tbaa !42
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x i32], ptr %33, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = add nsw i32 %38, %31
  store i32 %39, ptr %37, align 4, !tbaa !39
  %40 = getelementptr inbounds i8, ptr %7, i64 40
  %41 = load i32, ptr %40, align 4, !tbaa !39
  %42 = getelementptr inbounds i8, ptr %32, i64 1416
  %43 = load i32, ptr %34, align 8, !tbaa !42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], ptr %42, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !39
  %47 = add nsw i32 %46, %41
  store i32 %47, ptr %45, align 4, !tbaa !39
  %48 = getelementptr inbounds i8, ptr %7, i64 36
  %49 = load i32, ptr %48, align 4, !tbaa !39
  %50 = getelementptr inbounds i8, ptr %32, i64 1396
  %51 = load i32, ptr %34, align 8, !tbaa !42
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x i32], ptr %50, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !39
  %55 = add nsw i32 %54, %49
  store i32 %55, ptr %53, align 4, !tbaa !39
  %56 = getelementptr inbounds i8, ptr %7, i64 44
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = getelementptr inbounds i8, ptr %32, i64 1436
  %59 = load i32, ptr %34, align 8, !tbaa !42
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i32], ptr %58, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !39
  %63 = add nsw i32 %62, %57
  store i32 %63, ptr %61, align 4, !tbaa !39
  %64 = getelementptr inbounds i8, ptr %7, i64 48
  %65 = load i32, ptr %64, align 4, !tbaa !39
  %66 = getelementptr inbounds i8, ptr %32, i64 1456
  %67 = load i32, ptr %34, align 8, !tbaa !42
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i32], ptr %66, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = add nsw i32 %70, %65
  store i32 %71, ptr %69, align 4, !tbaa !39
  %72 = getelementptr inbounds i8, ptr %7, i64 72
  %73 = load i32, ptr %72, align 8, !tbaa !43
  switch i32 %73, label %99 [
    i32 9, label %74
    i32 10, label %74
    i32 13, label %74
    i32 14, label %74
  ]

74:                                               ; preds = %28, %28, %28, %28
  %75 = getelementptr inbounds i8, ptr %32, i64 672
  %76 = getelementptr inbounds i8, ptr %7, i64 416
  %77 = load i32, ptr %76, align 8, !tbaa !44
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !39
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !39
  %82 = getelementptr inbounds i8, ptr %7, i64 364
  %83 = load i32, ptr %82, align 4, !tbaa !45
  %84 = and i32 %83, 15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %74
  %87 = getelementptr inbounds i8, ptr %7, i64 468
  %88 = load i32, ptr %87, align 4, !tbaa !46
  %89 = icmp eq i32 %88, 0
  %90 = load i32, ptr %34, align 8, !tbaa !42
  %91 = sext i32 %90 to i64
  %92 = load i32, ptr %72, align 8, !tbaa !43
  %93 = sext i32 %92 to i64
  %94 = select i1 %89, i64 372, i64 72
  %95 = getelementptr inbounds i8, ptr %32, i64 %94
  %96 = getelementptr inbounds [5 x [15 x i32]], ptr %95, i64 0, i64 %91, i64 %93
  %97 = load i32, ptr %96, align 4, !tbaa !39
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %96, align 4, !tbaa !39
  br label %99

99:                                               ; preds = %86, %28, %74
  %100 = getelementptr inbounds i8, ptr %32, i64 736
  %101 = load i32, ptr %34, align 8, !tbaa !42
  %102 = sext i32 %101 to i64
  %103 = load i32, ptr %72, align 8, !tbaa !43
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [5 x [15 x i32]], ptr %100, i64 0, i64 %102, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !39
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !39
  %108 = getelementptr inbounds i8, ptr %7, i64 32
  %109 = load i32, ptr %108, align 4, !tbaa !39
  %110 = getelementptr inbounds i8, ptr %32, i64 1036
  %111 = load i32, ptr %34, align 8, !tbaa !42
  %112 = sext i32 %111 to i64
  %113 = load i32, ptr %72, align 8, !tbaa !43
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x [15 x i32]], ptr %110, i64 0, i64 %112, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !39
  %117 = add nsw i32 %116, %109
  store i32 %117, ptr %115, align 4, !tbaa !39
  %118 = load i32, ptr %34, align 8, !tbaa !42
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %306, label %120

120:                                              ; preds = %99
  %121 = load i32, ptr %72, align 8, !tbaa !43
  %122 = icmp eq i32 %121, 8
  br i1 %122, label %123, label %278

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %7, i64 376
  %125 = getelementptr inbounds i8, ptr %32, i64 32
  %126 = getelementptr inbounds i8, ptr %7, i64 468
  %127 = getelementptr inbounds i8, ptr %7, i64 364
  %128 = load ptr, ptr @input, align 8
  %129 = getelementptr inbounds i8, ptr %128, i64 3892
  %130 = getelementptr inbounds i8, ptr %32, i64 372
  %131 = getelementptr inbounds i8, ptr %32, i64 72
  %132 = load i32, ptr %124, align 4, !tbaa !39
  %133 = icmp sgt i32 %132, 0
  %134 = load i32, ptr %34, align 8, !tbaa !42
  %135 = sext i32 %134 to i64
  br i1 %133, label %136, label %139

136:                                              ; preds = %123
  %137 = zext nneg i32 %132 to i64
  %138 = getelementptr inbounds [5 x [15 x i32]], ptr %100, i64 0, i64 %135, i64 %137
  br label %143

139:                                              ; preds = %123
  %140 = load i32, ptr %126, align 4, !tbaa !46
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [5 x [2 x i32]], ptr %125, i64 0, i64 %135, i64 %141
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi ptr [ %142, %139 ], [ %138, %136 ]
  %145 = load i32, ptr %144, align 4, !tbaa !39
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %144, align 4, !tbaa !39
  %147 = load i32, ptr %124, align 4, !tbaa !39
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  %150 = load i32, ptr %126, align 4, !tbaa !46
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i32, ptr %127, align 4, !tbaa !45
  %154 = and i32 %153, 15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152, %149
  %157 = load i32, ptr %129, align 4, !tbaa !47
  %158 = icmp eq i32 %157, 2
  %159 = select i1 %158, ptr %131, ptr %130
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi ptr [ %131, %152 ], [ %159, %156 ]
  %162 = load i32, ptr %34, align 8, !tbaa !42
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [5 x [15 x i32]], ptr %161, i64 0, i64 %163, i64 4
  %165 = load i32, ptr %164, align 4, !tbaa !39
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %164, align 4, !tbaa !39
  br label %167

167:                                              ; preds = %160, %143
  %168 = getelementptr inbounds i8, ptr %7, i64 380
  %169 = load i32, ptr %168, align 4, !tbaa !39
  %170 = icmp sgt i32 %169, 0
  %171 = load i32, ptr %34, align 8, !tbaa !42
  %172 = sext i32 %171 to i64
  br i1 %170, label %177, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %126, align 4, !tbaa !46
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x [2 x i32]], ptr %125, i64 0, i64 %172, i64 %175
  br label %180

177:                                              ; preds = %167
  %178 = zext nneg i32 %169 to i64
  %179 = getelementptr inbounds [5 x [15 x i32]], ptr %100, i64 0, i64 %172, i64 %178
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %176, %173 ], [ %179, %177 ]
  %182 = load i32, ptr %181, align 4, !tbaa !39
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %181, align 4, !tbaa !39
  %184 = load i32, ptr %168, align 4, !tbaa !39
  %185 = icmp eq i32 %184, 4
  br i1 %185, label %186, label %204

186:                                              ; preds = %180
  %187 = load i32, ptr %126, align 4, !tbaa !46
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = load i32, ptr %127, align 4, !tbaa !45
  %191 = and i32 %190, 15
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189, %186
  %194 = load i32, ptr %129, align 4, !tbaa !47
  %195 = icmp eq i32 %194, 2
  %196 = select i1 %195, ptr %131, ptr %130
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi ptr [ %131, %189 ], [ %196, %193 ]
  %199 = load i32, ptr %34, align 8, !tbaa !42
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [5 x [15 x i32]], ptr %198, i64 0, i64 %200, i64 4
  %202 = load i32, ptr %201, align 4, !tbaa !39
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %201, align 4, !tbaa !39
  br label %204

204:                                              ; preds = %197, %180
  %205 = getelementptr inbounds i8, ptr %7, i64 384
  %206 = load i32, ptr %205, align 4, !tbaa !39
  %207 = icmp sgt i32 %206, 0
  %208 = load i32, ptr %34, align 8, !tbaa !42
  %209 = sext i32 %208 to i64
  br i1 %207, label %214, label %210

210:                                              ; preds = %204
  %211 = load i32, ptr %126, align 4, !tbaa !46
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [5 x [2 x i32]], ptr %125, i64 0, i64 %209, i64 %212
  br label %217

214:                                              ; preds = %204
  %215 = zext nneg i32 %206 to i64
  %216 = getelementptr inbounds [5 x [15 x i32]], ptr %100, i64 0, i64 %209, i64 %215
  br label %217

217:                                              ; preds = %214, %210
  %218 = phi ptr [ %213, %210 ], [ %216, %214 ]
  %219 = load i32, ptr %218, align 4, !tbaa !39
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %218, align 4, !tbaa !39
  %221 = load i32, ptr %205, align 4, !tbaa !39
  %222 = icmp eq i32 %221, 4
  br i1 %222, label %223, label %241

223:                                              ; preds = %217
  %224 = load i32, ptr %126, align 4, !tbaa !46
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load i32, ptr %127, align 4, !tbaa !45
  %228 = and i32 %227, 15
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226, %223
  %231 = load i32, ptr %129, align 4, !tbaa !47
  %232 = icmp eq i32 %231, 2
  %233 = select i1 %232, ptr %131, ptr %130
  br label %234

234:                                              ; preds = %230, %226
  %235 = phi ptr [ %131, %226 ], [ %233, %230 ]
  %236 = load i32, ptr %34, align 8, !tbaa !42
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [5 x [15 x i32]], ptr %235, i64 0, i64 %237, i64 4
  %239 = load i32, ptr %238, align 4, !tbaa !39
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %238, align 4, !tbaa !39
  br label %241

241:                                              ; preds = %234, %217
  %242 = getelementptr inbounds i8, ptr %7, i64 388
  %243 = load i32, ptr %242, align 4, !tbaa !39
  %244 = icmp sgt i32 %243, 0
  %245 = load i32, ptr %34, align 8, !tbaa !42
  %246 = sext i32 %245 to i64
  br i1 %244, label %251, label %247

247:                                              ; preds = %241
  %248 = load i32, ptr %126, align 4, !tbaa !46
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [5 x [2 x i32]], ptr %125, i64 0, i64 %246, i64 %249
  br label %254

251:                                              ; preds = %241
  %252 = zext nneg i32 %243 to i64
  %253 = getelementptr inbounds [5 x [15 x i32]], ptr %100, i64 0, i64 %246, i64 %252
  br label %254

254:                                              ; preds = %251, %247
  %255 = phi ptr [ %250, %247 ], [ %253, %251 ]
  %256 = load i32, ptr %255, align 4, !tbaa !39
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %255, align 4, !tbaa !39
  %258 = load i32, ptr %242, align 4, !tbaa !39
  %259 = icmp eq i32 %258, 4
  br i1 %259, label %260, label %296

260:                                              ; preds = %254
  %261 = load i32, ptr %126, align 4, !tbaa !46
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %127, align 4, !tbaa !45
  %265 = and i32 %264, 15
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %263, %260
  %268 = load i32, ptr %129, align 4, !tbaa !47
  %269 = icmp eq i32 %268, 2
  %270 = select i1 %269, ptr %131, ptr %130
  br label %271

271:                                              ; preds = %267, %263
  %272 = phi ptr [ %131, %263 ], [ %270, %267 ]
  %273 = load i32, ptr %34, align 8, !tbaa !42
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [5 x [15 x i32]], ptr %272, i64 0, i64 %274, i64 4
  %276 = load i32, ptr %275, align 4, !tbaa !39
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %275, align 4, !tbaa !39
  br label %296

278:                                              ; preds = %120
  %279 = icmp ult i32 %121, 4
  br i1 %279, label %280, label %296

280:                                              ; preds = %278
  %281 = getelementptr inbounds i8, ptr %7, i64 364
  %282 = load i32, ptr %281, align 4, !tbaa !45
  %283 = and i32 %282, 15
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds i8, ptr %7, i64 468
  %287 = load i32, ptr %286, align 4, !tbaa !46
  %288 = icmp eq i32 %287, 0
  %289 = sext i32 %118 to i64
  %290 = zext nneg i32 %121 to i64
  %291 = select i1 %288, i64 372, i64 72
  %292 = getelementptr inbounds i8, ptr %32, i64 %291
  %293 = getelementptr inbounds [5 x [15 x i32]], ptr %292, i64 0, i64 %289, i64 %290
  %294 = load i32, ptr %293, align 4, !tbaa !39
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr %293, align 4, !tbaa !39
  br label %296

296:                                              ; preds = %254, %271, %285, %280, %278
  %297 = load i32, ptr %34, align 8, !tbaa !42
  switch i32 %297, label %306 [
    i32 0, label %298
    i32 3, label %298
  ]

298:                                              ; preds = %296, %296
  %299 = load i32, ptr %32, align 8, !tbaa !49
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %32, align 8, !tbaa !49
  %301 = getelementptr inbounds i8, ptr %7, i64 12
  %302 = load i32, ptr %301, align 4, !tbaa !51
  %303 = getelementptr inbounds i8, ptr %32, i64 4
  %304 = load i32, ptr %303, align 4, !tbaa !52
  %305 = add nsw i32 %304, %302
  store i32 %305, ptr %303, align 4, !tbaa !52
  br label %306

306:                                              ; preds = %99, %296, %298
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
define dso_local void @start_macroblock(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 212
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %9
  %11 = getelementptr inbounds i8, ptr %6, i64 31568
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds i8, ptr %6, i64 90492
  %14 = load i32, ptr %13, align 4, !tbaa !55
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 25
  %17 = getelementptr inbounds i8, ptr %10, i64 424
  store i32 %1, ptr %17, align 8, !tbaa !25
  %18 = trunc i32 %1 to i8
  %19 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 6472
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds i8, ptr %21, i64 %9
  store i8 %18, ptr %22, align 1, !tbaa !58
  tail call void @set_MB_parameters(i32 noundef signext %0)
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 12
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %25) #17
  %27 = and i32 %5, -2
  %28 = icmp eq i32 %27, 2
  %29 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %28, label %30, label %99

30:                                               ; preds = %2
  %31 = getelementptr inbounds i8, ptr %29, i64 3556
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %0, 1
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %35, %33
  br i1 %36, label %37, label %99

37:                                               ; preds = %30
  %38 = load ptr, ptr @img, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 120
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %12, i64 16
  %44 = load i32, ptr %43, align 8, !tbaa !61
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %12, i64 24
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = zext nneg i32 %44 to i64
  br label %50

50:                                               ; preds = %46, %95
  %51 = phi ptr [ %29, %46 ], [ %96, %95 ]
  %52 = phi i64 [ 0, %46 ], [ %97, %95 ]
  %53 = getelementptr inbounds %struct.datapartition, ptr %48, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = getelementptr inbounds i8, ptr %54, i64 4
  %56 = load i32, ptr %55, align 4, !tbaa !67
  %57 = getelementptr inbounds i8, ptr %54, i64 16
  store i32 %56, ptr %57, align 8, !tbaa !69
  %58 = load i32, ptr %54, align 8, !tbaa !70
  %59 = getelementptr inbounds i8, ptr %54, i64 12
  store i32 %58, ptr %59, align 4, !tbaa !71
  %60 = getelementptr inbounds i8, ptr %54, i64 8
  %61 = load i8, ptr %60, align 8, !tbaa !72
  %62 = getelementptr inbounds i8, ptr %54, i64 20
  store i8 %61, ptr %62, align 4, !tbaa !73
  %63 = getelementptr inbounds i8, ptr %51, i64 2984
  %64 = load i32, ptr %63, align 8, !tbaa !74
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %95

66:                                               ; preds = %50
  %67 = getelementptr inbounds i8, ptr %53, i64 8
  %68 = load i32, ptr %67, align 8, !tbaa !75
  %69 = getelementptr inbounds i8, ptr %53, i64 56
  store i32 %68, ptr %69, align 8, !tbaa !76
  %70 = getelementptr inbounds i8, ptr %53, i64 12
  %71 = load i32, ptr %70, align 4, !tbaa !77
  %72 = getelementptr inbounds i8, ptr %53, i64 60
  store i32 %71, ptr %72, align 4, !tbaa !78
  %73 = getelementptr inbounds i8, ptr %53, i64 16
  %74 = load i32, ptr %73, align 8, !tbaa !79
  %75 = getelementptr inbounds i8, ptr %53, i64 64
  store i32 %74, ptr %75, align 8, !tbaa !80
  %76 = getelementptr inbounds i8, ptr %53, i64 20
  %77 = load i32, ptr %76, align 4, !tbaa !81
  %78 = getelementptr inbounds i8, ptr %53, i64 68
  store i32 %77, ptr %78, align 4, !tbaa !82
  %79 = getelementptr inbounds i8, ptr %53, i64 24
  %80 = load i32, ptr %79, align 8, !tbaa !83
  %81 = getelementptr inbounds i8, ptr %53, i64 72
  store i32 %80, ptr %81, align 8, !tbaa !84
  %82 = getelementptr inbounds i8, ptr %53, i64 32
  %83 = load ptr, ptr %82, align 8, !tbaa !85
  %84 = getelementptr inbounds i8, ptr %53, i64 80
  store ptr %83, ptr %84, align 8, !tbaa !86
  %85 = getelementptr inbounds i8, ptr %53, i64 40
  %86 = load ptr, ptr %85, align 8, !tbaa !87
  %87 = getelementptr inbounds i8, ptr %53, i64 88
  store ptr %86, ptr %87, align 8, !tbaa !88
  %88 = getelementptr inbounds i8, ptr %53, i64 48
  %89 = load i32, ptr %88, align 8, !tbaa !89
  %90 = getelementptr inbounds i8, ptr %53, i64 96
  store i32 %89, ptr %90, align 8, !tbaa !90
  %91 = getelementptr inbounds i8, ptr %53, i64 52
  %92 = load i32, ptr %91, align 4, !tbaa !91
  %93 = getelementptr inbounds i8, ptr %53, i64 100
  store i32 %92, ptr %93, align 4, !tbaa !92
  %94 = load ptr, ptr @input, align 8, !tbaa !6
  br label %95

95:                                               ; preds = %50, %66
  %96 = phi ptr [ %51, %50 ], [ %94, %66 ]
  %97 = add nuw nsw i64 %52, 1
  %98 = icmp eq i64 %97, %49
  br i1 %98, label %99, label %50

99:                                               ; preds = %95, %42, %2, %30, %37
  %100 = phi ptr [ %29, %42 ], [ %29, %2 ], [ %29, %30 ], [ %29, %37 ], [ %96, %95 ]
  %101 = load ptr, ptr @img, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 20
  %103 = load i32, ptr %102, align 4, !tbaa !93
  %104 = getelementptr inbounds i8, ptr %10, i64 4
  store i32 %103, ptr %104, align 4, !tbaa !94
  %105 = getelementptr inbounds i8, ptr %101, i64 44
  %106 = load i32, ptr %105, align 4, !tbaa !95
  %107 = getelementptr inbounds i8, ptr %10, i64 16
  store i32 %106, ptr %107, align 8, !tbaa !96
  %108 = getelementptr inbounds i8, ptr %100, i64 3908
  %109 = load i32, ptr %108, align 4, !tbaa !97
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %371, label %111

111:                                              ; preds = %99
  %112 = icmp sgt i32 %26, -1
  br i1 %112, label %113, label %127

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %101, i64 31576
  %115 = load ptr, ptr %114, align 8, !tbaa !24
  %116 = zext nneg i32 %26 to i64
  %117 = getelementptr inbounds %struct.macroblock, ptr %115, i64 %116, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !51
  %119 = getelementptr inbounds i8, ptr %10, i64 488
  store i32 %118, ptr %119, align 8, !tbaa !98
  %120 = getelementptr inbounds %struct.macroblock, ptr %115, i64 %116
  %121 = getelementptr inbounds i8, ptr %120, i64 4
  %122 = load i32, ptr %121, align 4, !tbaa !94
  %123 = icmp eq i32 %122, %103
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = getelementptr inbounds i8, ptr %120, i64 8
  %126 = load i32, ptr %125, align 8, !tbaa !99
  br label %131

127:                                              ; preds = %111
  %128 = getelementptr inbounds i8, ptr %12, i64 4
  %129 = load i32, ptr %128, align 4, !tbaa !100
  %130 = getelementptr inbounds i8, ptr %10, i64 488
  store i32 %129, ptr %130, align 8, !tbaa !98
  br label %131

131:                                              ; preds = %113, %124, %127
  %132 = phi i32 [ %126, %124 ], [ 0, %127 ], [ 0, %113 ]
  %133 = getelementptr inbounds i8, ptr %10, i64 492
  store i32 %132, ptr %133, align 4, !tbaa !101
  %134 = getelementptr inbounds i8, ptr %100, i64 3920
  %135 = load i32, ptr %134, align 8, !tbaa !102
  %136 = getelementptr inbounds i8, ptr %101, i64 90432
  %137 = load i32, ptr %136, align 8, !tbaa !103
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %140, align 8, !tbaa !99
  %141 = getelementptr inbounds i8, ptr %101, i64 40
  %142 = load i32, ptr %141, align 8, !tbaa !104
  %143 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %142, ptr %143, align 4, !tbaa !51
  br label %403

144:                                              ; preds = %131
  %145 = getelementptr inbounds i8, ptr %101, i64 24
  %146 = load i32, ptr %145, align 8, !tbaa !42
  switch i32 %146, label %403 [
    i32 2, label %147
    i32 1, label %147
    i32 0, label %152
  ]

147:                                              ; preds = %144, %144
  %148 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %148, align 8, !tbaa !99
  %149 = getelementptr inbounds i8, ptr %101, i64 40
  %150 = load i32, ptr %149, align 8, !tbaa !104
  %151 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %150, ptr %151, align 4, !tbaa !51
  br label %403

152:                                              ; preds = %144
  %153 = getelementptr inbounds i8, ptr %101, i64 90448
  %154 = load i32, ptr %153, align 8, !tbaa !105
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %219

156:                                              ; preds = %152
  %157 = load i32, ptr %17, align 8, !tbaa !25
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %204

159:                                              ; preds = %156
  %160 = icmp slt i32 %26, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %162, align 8, !tbaa !99
  %163 = getelementptr inbounds i8, ptr %101, i64 40
  %164 = load i32, ptr %163, align 8, !tbaa !104
  %165 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %164, ptr %165, align 4, !tbaa !51
  store i32 0, ptr @DELTA_QP2, align 4, !tbaa !39
  store i32 0, ptr @DELTA_QP, align 4, !tbaa !39
  %166 = load i32, ptr %165, align 4, !tbaa !51
  store i32 %166, ptr @QP2, align 4, !tbaa !39
  store i32 %166, ptr @QP, align 4, !tbaa !39
  br label %240

167:                                              ; preds = %159
  %168 = getelementptr inbounds i8, ptr %100, i64 3556
  %169 = load i32, ptr %168, align 4, !tbaa !59
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %101, i64 90452
  %173 = load i32, ptr %172, align 4, !tbaa !106
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %171, %167
  %176 = getelementptr inbounds i8, ptr %101, i64 31576
  %177 = load ptr, ptr %176, align 8, !tbaa !24
  %178 = zext nneg i32 %26 to i64
  %179 = getelementptr inbounds %struct.macroblock, ptr %177, i64 %178
  %180 = getelementptr inbounds i8, ptr %179, i64 496
  %181 = load i32, ptr %180, align 8, !tbaa !107
  %182 = icmp eq i32 %181, 1
  %183 = getelementptr inbounds i8, ptr %10, i64 12
  br i1 %182, label %184, label %187

184:                                              ; preds = %175
  %185 = getelementptr inbounds i8, ptr %101, i64 40
  %186 = load i32, ptr %185, align 8, !tbaa !104
  store i32 %186, ptr %183, align 4, !tbaa !51
  br label %194

187:                                              ; preds = %175
  %188 = getelementptr inbounds i8, ptr %179, i64 488
  %189 = load i32, ptr %188, align 8, !tbaa !98
  store i32 %189, ptr %183, align 4, !tbaa !51
  %190 = getelementptr inbounds %struct.macroblock, ptr %177, i64 %178, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !51
  %192 = sub nsw i32 %189, %191
  %193 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %189, ptr %193, align 8, !tbaa !104
  br label %194

194:                                              ; preds = %187, %184
  %195 = phi i32 [ 0, %184 ], [ %192, %187 ]
  %196 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 %195, ptr %196, align 8
  store i32 %195, ptr @DELTA_QP2, align 4, !tbaa !39
  store i32 %195, ptr @DELTA_QP, align 4, !tbaa !39
  %197 = getelementptr inbounds i8, ptr %10, i64 12
  %198 = load i32, ptr %197, align 4, !tbaa !51
  store i32 %198, ptr @QP2, align 4, !tbaa !39
  store i32 %198, ptr @QP, align 4, !tbaa !39
  br label %240

199:                                              ; preds = %171
  %200 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %200, align 8, !tbaa !99
  %201 = getelementptr inbounds i8, ptr %101, i64 40
  %202 = load i32, ptr %201, align 8, !tbaa !104
  %203 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %202, ptr %203, align 4, !tbaa !51
  br label %240

204:                                              ; preds = %156
  %205 = getelementptr inbounds i8, ptr %101, i64 90452
  %206 = load i32, ptr %205, align 4, !tbaa !106
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i32, ptr @DELTA_QP2, align 4, !tbaa !39
  %210 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 %209, ptr %210, align 8, !tbaa !99
  %211 = load i32, ptr @QP2, align 4, !tbaa !39
  %212 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %211, ptr %212, align 8, !tbaa !104
  %213 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %211, ptr %213, align 4, !tbaa !51
  br label %240

214:                                              ; preds = %204
  %215 = getelementptr inbounds i8, ptr %101, i64 40
  %216 = load i32, ptr %215, align 8, !tbaa !104
  %217 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %216, ptr %217, align 4, !tbaa !51
  %218 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %218, align 8, !tbaa !99
  br label %240

219:                                              ; preds = %152
  %220 = getelementptr inbounds i8, ptr %101, i64 90452
  %221 = load i32, ptr %220, align 4, !tbaa !106
  %222 = icmp eq i32 %221, 0
  %223 = getelementptr inbounds i8, ptr %10, i64 12
  br i1 %222, label %224, label %236

224:                                              ; preds = %219
  %225 = getelementptr inbounds i8, ptr %101, i64 90456
  %226 = load i32, ptr %225, align 8, !tbaa !108
  %227 = icmp eq i32 %226, 0
  %228 = getelementptr inbounds i8, ptr %10, i64 8
  %229 = getelementptr inbounds i8, ptr %101, i64 40
  br i1 %227, label %233, label %230

230:                                              ; preds = %224
  %231 = load i32, ptr @DELTA_QP, align 4, !tbaa !39
  store i32 %231, ptr %228, align 8, !tbaa !99
  %232 = load i32, ptr @QP, align 4, !tbaa !39
  store i32 %232, ptr %223, align 4, !tbaa !51
  store i32 %232, ptr %229, align 8, !tbaa !104
  br label %240

233:                                              ; preds = %224
  %234 = load i32, ptr @DELTA_QP2, align 4, !tbaa !39
  store i32 %234, ptr %228, align 8, !tbaa !99
  %235 = load i32, ptr @QP2, align 4, !tbaa !39
  store i32 %235, ptr %223, align 4, !tbaa !51
  store i32 %235, ptr %229, align 8, !tbaa !104
  br label %240

236:                                              ; preds = %219
  %237 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %237, align 8, !tbaa !99
  %238 = getelementptr inbounds i8, ptr %101, i64 40
  %239 = load i32, ptr %238, align 8, !tbaa !104
  store i32 %239, ptr %223, align 4, !tbaa !51
  br label %240

240:                                              ; preds = %236, %233, %230, %194, %199, %161, %214, %208
  %241 = getelementptr inbounds i8, ptr %100, i64 3556
  %242 = load i32, ptr %241, align 4, !tbaa !59
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds i8, ptr %101, i64 90452
  %246 = load i32, ptr %245, align 4, !tbaa !106
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %367

248:                                              ; preds = %244, %240
  %249 = load i32, ptr %17, align 8, !tbaa !25
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %364

251:                                              ; preds = %248
  %252 = getelementptr inbounds i8, ptr %101, i64 90440
  %253 = load i32, ptr %252, align 8, !tbaa !109
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %298

255:                                              ; preds = %251
  %256 = getelementptr inbounds i8, ptr %101, i64 90444
  %257 = load i32, ptr %256, align 4, !tbaa !110
  %258 = srem i32 %253, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %298

260:                                              ; preds = %255
  %261 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 1148
  %263 = load i32, ptr %262, align 4, !tbaa !111
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %260
  %266 = getelementptr inbounds i8, ptr %100, i64 3552
  %267 = load i32, ptr %266, align 8, !tbaa !115
  switch i32 %267, label %278 [
    i32 2, label %268
    i32 1, label %273
  ]

268:                                              ; preds = %265
  br i1 %243, label %269, label %279

269:                                              ; preds = %268
  %270 = getelementptr inbounds i8, ptr %101, i64 90436
  %271 = load i32, ptr %270, align 4, !tbaa !116
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %291, label %298

273:                                              ; preds = %265
  br i1 %243, label %274, label %279

274:                                              ; preds = %273
  %275 = getelementptr inbounds i8, ptr %101, i64 90436
  %276 = load i32, ptr %275, align 4, !tbaa !116
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %291, label %298

278:                                              ; preds = %265
  br i1 %243, label %298, label %279

279:                                              ; preds = %268, %273, %278
  %280 = getelementptr inbounds i8, ptr %101, i64 90436
  %281 = load i32, ptr %280, align 4, !tbaa !116
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %279
  %284 = getelementptr inbounds i8, ptr %101, i64 90424
  %285 = load i32, ptr %284, align 8, !tbaa !117
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, ptr %101, i64 90424
  %289 = load i32, ptr %288, align 8, !tbaa !117
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %287, %283, %274, %269, %260
  tail call void @updateRCModel() #17
  %292 = load ptr, ptr @img, align 8, !tbaa !6
  %293 = getelementptr inbounds i8, ptr %292, i64 90420
  %294 = load i32, ptr %293, align 4, !tbaa !118
  %295 = tail call signext i32 @updateQuantizationParameter(i32 noundef signext %294) #17
  %296 = load ptr, ptr @img, align 8, !tbaa !6
  %297 = getelementptr inbounds i8, ptr %296, i64 90416
  store i32 %295, ptr %297, align 8, !tbaa !119
  br label %298

298:                                              ; preds = %291, %279, %269, %274, %278, %287, %255, %251
  %299 = load ptr, ptr @img, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %299, i64 12
  %301 = load i32, ptr %300, align 4, !tbaa !10
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds i8, ptr %299, i64 90416
  %305 = load i32, ptr %304, align 8, !tbaa !119
  br label %310

306:                                              ; preds = %298
  %307 = getelementptr inbounds i8, ptr %299, i64 40
  %308 = load i32, ptr %307, align 8, !tbaa !104
  %309 = getelementptr inbounds i8, ptr %299, i64 90416
  store i32 %308, ptr %309, align 8, !tbaa !119
  br label %310

310:                                              ; preds = %303, %306
  %311 = phi i32 [ %305, %303 ], [ %308, %306 ]
  %312 = getelementptr inbounds i8, ptr %10, i64 500
  store i32 %311, ptr %312, align 4, !tbaa !120
  %313 = getelementptr inbounds i8, ptr %10, i64 12
  %314 = load i32, ptr %313, align 4, !tbaa !51
  %315 = add nsw i32 %314, %16
  %316 = icmp sgt i32 %311, %315
  br i1 %316, label %321, label %317

317:                                              ; preds = %310
  %318 = sub i32 %314, %15
  %319 = add i32 %318, -26
  %320 = icmp slt i32 %311, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317, %310
  %322 = phi i32 [ %315, %310 ], [ %319, %317 ]
  store i32 %322, ptr %312, align 4, !tbaa !120
  br label %323

323:                                              ; preds = %321, %317
  %324 = phi i32 [ %311, %317 ], [ %322, %321 ]
  %325 = getelementptr inbounds i8, ptr %10, i64 8
  %326 = load i32, ptr %325, align 8, !tbaa !99
  %327 = sub i32 %326, %314
  %328 = add i32 %327, %324
  store i32 %328, ptr @dq, align 4, !tbaa !39
  %329 = sub nsw i32 -26, %15
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %323
  store i32 %329, ptr @dq, align 4, !tbaa !39
  %332 = load i32, ptr %325, align 8, !tbaa !99
  %333 = sub nsw i32 %329, %332
  store i32 %333, ptr @predict_error, align 4, !tbaa !39
  %334 = getelementptr inbounds i8, ptr %299, i64 40
  %335 = load i32, ptr %334, align 8, !tbaa !104
  %336 = add nsw i32 %335, %333
  store i32 %336, ptr %334, align 8, !tbaa !104
  store i32 %329, ptr %325, align 8, !tbaa !99
  br label %351

337:                                              ; preds = %323
  %338 = icmp sgt i32 %328, %16
  br i1 %338, label %339, label %345

339:                                              ; preds = %337
  store i32 %16, ptr @dq, align 4, !tbaa !39
  %340 = load i32, ptr %325, align 8, !tbaa !99
  %341 = sub nsw i32 %16, %340
  store i32 %341, ptr @predict_error, align 4, !tbaa !39
  %342 = getelementptr inbounds i8, ptr %299, i64 40
  %343 = load i32, ptr %342, align 8, !tbaa !104
  %344 = add nsw i32 %343, %341
  store i32 %344, ptr %342, align 8, !tbaa !104
  store i32 %16, ptr %325, align 8, !tbaa !99
  br label %351

345:                                              ; preds = %337
  store i32 %328, ptr %325, align 8, !tbaa !99
  %346 = load i32, ptr %312, align 4, !tbaa !120
  %347 = load i32, ptr %313, align 4, !tbaa !51
  %348 = sub nsw i32 %346, %347
  store i32 %348, ptr @predict_error, align 4, !tbaa !39
  %349 = load i32, ptr %312, align 4, !tbaa !120
  %350 = getelementptr inbounds i8, ptr %299, i64 40
  store i32 %349, ptr %350, align 8, !tbaa !104
  br label %351

351:                                              ; preds = %339, %345, %331
  %352 = phi i32 [ %344, %339 ], [ %349, %345 ], [ %336, %331 ]
  store i32 %352, ptr %313, align 4, !tbaa !51
  %353 = load ptr, ptr @input, align 8, !tbaa !6
  %354 = getelementptr inbounds i8, ptr %353, i64 3556
  %355 = load i32, ptr %354, align 4, !tbaa !59
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %351
  %358 = load i32, ptr %325, align 8, !tbaa !99
  store i32 %358, ptr @DELTA_QP2, align 4, !tbaa !39
  store i32 %358, ptr @DELTA_QP, align 4, !tbaa !39
  %359 = load i32, ptr %313, align 4, !tbaa !51
  store i32 %359, ptr @QP2, align 4, !tbaa !39
  store i32 %359, ptr @QP, align 4, !tbaa !39
  %360 = load i32, ptr %325, align 8, !tbaa !99
  store i32 %360, ptr @DELTA_QP2, align 4, !tbaa !39
  br label %361

361:                                              ; preds = %357, %351
  %362 = load i32, ptr @predict_error, align 4, !tbaa !39
  %363 = getelementptr inbounds i8, ptr %10, i64 504
  store i32 %362, ptr %363, align 8, !tbaa !121
  br label %403

364:                                              ; preds = %248
  %365 = getelementptr inbounds i8, ptr %10, i64 504
  %366 = load i32, ptr %365, align 8, !tbaa !121
  store i32 %366, ptr @predict_error, align 4, !tbaa !39
  br label %403

367:                                              ; preds = %244
  %368 = getelementptr inbounds i8, ptr %101, i64 40
  %369 = load i32, ptr %368, align 8, !tbaa !104
  %370 = getelementptr inbounds i8, ptr %10, i64 488
  store i32 %369, ptr %370, align 8, !tbaa !98
  br label %403

371:                                              ; preds = %99
  %372 = getelementptr inbounds i8, ptr %101, i64 31568
  %373 = load ptr, ptr %372, align 8, !tbaa !54
  %374 = icmp sgt i32 %26, -1
  br i1 %374, label %375, label %389

375:                                              ; preds = %371
  %376 = getelementptr inbounds i8, ptr %101, i64 31576
  %377 = load ptr, ptr %376, align 8, !tbaa !24
  %378 = zext nneg i32 %26 to i64
  %379 = getelementptr inbounds %struct.macroblock, ptr %377, i64 %378, i32 3
  %380 = load i32, ptr %379, align 4, !tbaa !51
  %381 = getelementptr inbounds i8, ptr %10, i64 488
  store i32 %380, ptr %381, align 8, !tbaa !98
  %382 = getelementptr inbounds %struct.macroblock, ptr %377, i64 %378
  %383 = getelementptr inbounds i8, ptr %382, i64 4
  %384 = load i32, ptr %383, align 4, !tbaa !94
  %385 = icmp eq i32 %384, %103
  br i1 %385, label %386, label %393

386:                                              ; preds = %375
  %387 = getelementptr inbounds i8, ptr %382, i64 8
  %388 = load i32, ptr %387, align 8, !tbaa !99
  br label %393

389:                                              ; preds = %371
  %390 = getelementptr inbounds i8, ptr %373, i64 4
  %391 = load i32, ptr %390, align 4, !tbaa !100
  %392 = getelementptr inbounds i8, ptr %10, i64 488
  store i32 %391, ptr %392, align 8, !tbaa !98
  br label %393

393:                                              ; preds = %375, %386, %389
  %394 = phi i32 [ %388, %386 ], [ 0, %389 ], [ 0, %375 ]
  %395 = phi i32 [ %380, %386 ], [ %391, %389 ], [ %380, %375 ]
  %396 = getelementptr inbounds i8, ptr %10, i64 492
  store i32 %394, ptr %396, align 4, !tbaa !101
  %397 = getelementptr inbounds i8, ptr %373, i64 4
  %398 = load i32, ptr %397, align 4, !tbaa !100
  %399 = getelementptr inbounds i8, ptr %10, i64 12
  store i32 %398, ptr %399, align 4, !tbaa !51
  %400 = sub nsw i32 %398, %395
  %401 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 %400, ptr %401, align 8, !tbaa !99
  store i32 %400, ptr @DELTA_QP2, align 4, !tbaa !39
  store i32 %400, ptr @DELTA_QP, align 4, !tbaa !39
  %402 = load i32, ptr %399, align 4, !tbaa !51
  store i32 %402, ptr @QP2, align 4, !tbaa !39
  store i32 %402, ptr @QP, align 4, !tbaa !39
  br label %403

403:                                              ; preds = %144, %139, %361, %364, %367, %147, %393
  store i32 0, ptr %10, align 8, !tbaa !122
  %404 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %405 = getelementptr inbounds i8, ptr %404, i64 220
  %406 = load i32, ptr %405, align 4, !tbaa !123
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %416, label %408

408:                                              ; preds = %403
  %409 = load ptr, ptr @img, align 8, !tbaa !6
  %410 = getelementptr inbounds i8, ptr %409, i64 89392
  %411 = load i32, ptr %410, align 8, !tbaa !125
  %412 = getelementptr inbounds i8, ptr %409, i64 89396
  %413 = load i32, ptr %412, align 4, !tbaa !126
  %414 = getelementptr inbounds i8, ptr %409, i64 89400
  %415 = load i32, ptr %414, align 8, !tbaa !127
  br label %416

416:                                              ; preds = %403, %408
  %417 = phi i32 [ %411, %408 ], [ 0, %403 ]
  %418 = phi i32 [ %413, %408 ], [ 0, %403 ]
  %419 = phi i32 [ %415, %408 ], [ 0, %403 ]
  %420 = getelementptr inbounds i8, ptr %10, i64 508
  store i32 %417, ptr %420, align 4
  %421 = getelementptr inbounds i8, ptr %10, i64 512
  store i32 %418, ptr %421, align 8
  %422 = getelementptr inbounds i8, ptr %10, i64 516
  store i32 %419, ptr %422, align 4
  tail call void @CheckAvailabilityOfNeighbors() #17
  %423 = load ptr, ptr @input, align 8, !tbaa !6
  %424 = getelementptr inbounds i8, ptr %423, i64 2984
  %425 = load i32, ptr %424, align 8, !tbaa !74
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %427, label %428

427:                                              ; preds = %416
  tail call void @CheckAvailabilityOfNeighborsCABAC() #17
  br label %428

428:                                              ; preds = %416, %427
  %429 = load ptr, ptr @img, align 8, !tbaa !6
  %430 = getelementptr inbounds i8, ptr %429, i64 148
  %431 = load i32, ptr %430, align 4, !tbaa !19
  %432 = sext i32 %431 to i64
  %433 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %434 = getelementptr inbounds i8, ptr %429, i64 144
  %435 = load i32, ptr %434, align 8, !tbaa !17
  br label %436

436:                                              ; preds = %428, %436
  %437 = phi i32 [ %435, %428 ], [ %461, %436 ]
  %438 = phi ptr [ %433, %428 ], [ %462, %436 ]
  %439 = phi i64 [ %432, %428 ], [ %471, %436 ]
  %440 = getelementptr inbounds i8, ptr %438, i64 6480
  %441 = load ptr, ptr %440, align 8, !tbaa !128
  %442 = load ptr, ptr %441, align 8, !tbaa !6
  %443 = getelementptr inbounds ptr, ptr %442, i64 %439
  %444 = load ptr, ptr %443, align 8, !tbaa !6
  %445 = sext i32 %437 to i64
  %446 = getelementptr inbounds i8, ptr %444, i64 %445
  store i32 -1, ptr %446, align 1
  %447 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %448 = getelementptr inbounds i8, ptr %447, i64 6504
  %449 = load ptr, ptr %448, align 8, !tbaa !129
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = getelementptr inbounds ptr, ptr %450, i64 %439
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = load ptr, ptr @img, align 8, !tbaa !6
  %454 = getelementptr inbounds i8, ptr %453, i64 144
  %455 = load i32, ptr %454, align 8, !tbaa !17
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds ptr, ptr %452, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %458, i8 0, i64 16, i1 false)
  %459 = load ptr, ptr @img, align 8, !tbaa !6
  %460 = getelementptr inbounds i8, ptr %459, i64 144
  %461 = load i32, ptr %460, align 8, !tbaa !17
  %462 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %463 = getelementptr inbounds i8, ptr %462, i64 6488
  %464 = load ptr, ptr %463, align 8, !tbaa !130
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = getelementptr inbounds ptr, ptr %465, i64 %439
  %467 = load ptr, ptr %466, align 8, !tbaa !6
  %468 = sext i32 %461 to i64
  %469 = shl nsw i64 %468, 3
  %470 = getelementptr i8, ptr %467, i64 %469
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %470, i8 -1, i64 32, i1 false), !tbaa !131
  %471 = add nsw i64 %439, 1
  %472 = getelementptr inbounds i8, ptr %459, i64 148
  %473 = load i32, ptr %472, align 4, !tbaa !19
  %474 = add nsw i32 %473, 3
  %475 = sext i32 %474 to i64
  %476 = icmp slt i64 %439, %475
  br i1 %476, label %436, label %477

477:                                              ; preds = %436
  %478 = load ptr, ptr @img, align 8, !tbaa !6
  %479 = getelementptr inbounds i8, ptr %478, i64 148
  %480 = load i32, ptr %479, align 4, !tbaa !19
  %481 = sext i32 %480 to i64
  %482 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %483 = getelementptr inbounds i8, ptr %478, i64 144
  %484 = load i32, ptr %483, align 8, !tbaa !17
  br label %485

485:                                              ; preds = %485, %477
  %486 = phi i32 [ %484, %477 ], [ %512, %485 ]
  %487 = phi ptr [ %482, %477 ], [ %513, %485 ]
  %488 = phi i64 [ %481, %477 ], [ %523, %485 ]
  %489 = getelementptr inbounds i8, ptr %487, i64 6480
  %490 = load ptr, ptr %489, align 8, !tbaa !128
  %491 = getelementptr inbounds i8, ptr %490, i64 8
  %492 = load ptr, ptr %491, align 8, !tbaa !6
  %493 = getelementptr inbounds ptr, ptr %492, i64 %488
  %494 = load ptr, ptr %493, align 8, !tbaa !6
  %495 = sext i32 %486 to i64
  %496 = getelementptr inbounds i8, ptr %494, i64 %495
  store i32 -1, ptr %496, align 1
  %497 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %498 = getelementptr inbounds i8, ptr %497, i64 6504
  %499 = load ptr, ptr %498, align 8, !tbaa !129
  %500 = getelementptr inbounds i8, ptr %499, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds ptr, ptr %501, i64 %488
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  %504 = load ptr, ptr @img, align 8, !tbaa !6
  %505 = getelementptr inbounds i8, ptr %504, i64 144
  %506 = load i32, ptr %505, align 8, !tbaa !17
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %503, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %509, i8 0, i64 16, i1 false)
  %510 = load ptr, ptr @img, align 8, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %510, i64 144
  %512 = load i32, ptr %511, align 8, !tbaa !17
  %513 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %514 = getelementptr inbounds i8, ptr %513, i64 6488
  %515 = load ptr, ptr %514, align 8, !tbaa !130
  %516 = getelementptr inbounds i8, ptr %515, i64 8
  %517 = load ptr, ptr %516, align 8, !tbaa !6
  %518 = getelementptr inbounds ptr, ptr %517, i64 %488
  %519 = load ptr, ptr %518, align 8, !tbaa !6
  %520 = sext i32 %512 to i64
  %521 = shl nsw i64 %520, 3
  %522 = getelementptr i8, ptr %519, i64 %521
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %522, i8 -1, i64 32, i1 false), !tbaa !131
  %523 = add nsw i64 %488, 1
  %524 = getelementptr inbounds i8, ptr %510, i64 148
  %525 = load i32, ptr %524, align 4, !tbaa !19
  %526 = add nsw i32 %525, 3
  %527 = sext i32 %526 to i64
  %528 = icmp slt i64 %488, %527
  br i1 %528, label %485, label %529

529:                                              ; preds = %485
  %530 = getelementptr inbounds i8, ptr %10, i64 72
  %531 = getelementptr inbounds i8, ptr %10, i64 368
  store i64 0, ptr %531, align 8, !tbaa !132
  %532 = getelementptr inbounds i8, ptr %10, i64 364
  store i32 0, ptr %532, align 4, !tbaa !45
  %533 = getelementptr inbounds i8, ptr %10, i64 408
  store i64 0, ptr %533, align 8, !tbaa !133
  %534 = getelementptr inbounds i8, ptr %10, i64 416
  store i32 0, ptr %534, align 8, !tbaa !44
  %535 = getelementptr inbounds i8, ptr %10, i64 332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %530, i8 0, i64 260, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %535, i8 2, i64 32, i1 false)
  %536 = load ptr, ptr @input, align 8, !tbaa !6
  %537 = getelementptr inbounds i8, ptr %536, i64 220
  %538 = load i32, ptr %537, align 4, !tbaa !134
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %548, label %540

540:                                              ; preds = %529
  %541 = load ptr, ptr @img, align 8, !tbaa !6
  %542 = getelementptr inbounds i8, ptr %541, i64 89192
  %543 = load ptr, ptr %542, align 8, !tbaa !135
  %544 = getelementptr inbounds i8, ptr %541, i64 12
  %545 = load i32, ptr %544, align 4, !tbaa !10
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, ptr %543, i64 %546
  store i32 1, ptr %547, align 4, !tbaa !39
  br label %548

548:                                              ; preds = %540, %529
  %549 = icmp slt i32 %26, 0
  br i1 %549, label %559, label %550

550:                                              ; preds = %548
  %551 = load i32, ptr %104, align 4, !tbaa !94
  %552 = load ptr, ptr @img, align 8, !tbaa !6
  %553 = getelementptr inbounds i8, ptr %552, i64 31576
  %554 = load ptr, ptr %553, align 8, !tbaa !24
  %555 = zext nneg i32 %26 to i64
  %556 = getelementptr inbounds %struct.macroblock, ptr %554, i64 %555, i32 1
  %557 = load i32, ptr %556, align 4, !tbaa !94
  %558 = icmp eq i32 %551, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %550, %548
  %560 = getelementptr inbounds i8, ptr %10, i64 20
  store i32 0, ptr %560, align 4, !tbaa !39
  br label %561

561:                                              ; preds = %559, %550
  %562 = getelementptr inbounds i8, ptr %10, i64 28
  %563 = getelementptr inbounds i8, ptr %536, i64 3964
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %562, i8 0, i64 24, i1 false)
  %564 = load i32, ptr %563, align 4, !tbaa !136
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %561
  tail call void @ResetFastFullIntegerSearch() #17
  br label %567

567:                                              ; preds = %566, %561
  ret void
}

declare dso_local signext i32 @FmoGetPreviousMBNr(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @updateRCModel() local_unnamed_addr #1

declare dso_local signext i32 @updateQuantizationParameter(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @CheckAvailabilityOfNeighbors() local_unnamed_addr #1

declare dso_local void @CheckAvailabilityOfNeighborsCABAC() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local void @ResetFastFullIntegerSearch() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @terminate_macroblock(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds i8, ptr %3, i64 31576
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds i8, ptr %3, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %3, i64 31584
  %13 = load i32, ptr %11, align 8, !tbaa !122
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %12, i64 0, i64 %14
  %16 = load ptr, ptr @input, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 2992
  %18 = load i32, ptr %17, align 8, !tbaa !137
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %16, i64 212
  %23 = load i32, ptr %22, align 4, !tbaa !53
  %24 = and i32 %23, -2
  %25 = icmp eq i32 %24, 2
  %26 = icmp eq i32 %9, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %2
  %28 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %9) #17
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @img, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 31576
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds i8, ptr %31, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !10
  %36 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %35) #17
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.macroblock, ptr %33, i64 %37, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !94
  %40 = load ptr, ptr @img, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 20
  %42 = load i32, ptr %41, align 4, !tbaa !93
  %43 = icmp eq i32 %39, %42
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %30, %2, %27
  %46 = phi i1 [ true, %27 ], [ true, %2 ], [ %44, %30 ]
  %47 = phi i1 [ false, %27 ], [ false, %2 ], [ %43, %30 ]
  store i32 0, ptr %1, align 4, !tbaa !39
  %48 = load ptr, ptr @input, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 212
  %50 = load i32, ptr %49, align 4, !tbaa !53
  switch i32 %50, label %297 [
    i32 0, label %51
    i32 1, label %70
    i32 2, label %88
    i32 3, label %274
  ]

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %5, i64 20
  %53 = load i32, ptr %52, align 4, !tbaa !138
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %52, align 4, !tbaa !138
  store i32 0, ptr %1, align 4, !tbaa !39
  %55 = load i32, ptr %52, align 4, !tbaa !138
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 90304
  %58 = load i32, ptr %57, align 8, !tbaa !139
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, ptr %0, align 4, !tbaa !39
  br label %61

61:                                               ; preds = %60, %51
  %62 = getelementptr inbounds i8, ptr %56, i64 12
  %63 = load i32, ptr %62, align 4, !tbaa !10
  %64 = tail call signext i32 @FmoMB2SliceGroup(i32 noundef signext %63) #17
  %65 = tail call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %64) #17
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, ptr %0, align 4, !tbaa !39
  %69 = or i32 %68, %67
  store i32 %69, ptr %0, align 4, !tbaa !39
  br label %299

70:                                               ; preds = %45
  %71 = getelementptr inbounds i8, ptr %5, i64 20
  %72 = load i32, ptr %71, align 4, !tbaa !138
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !138
  store i32 0, ptr %1, align 4, !tbaa !39
  %74 = load ptr, ptr @img, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !10
  %77 = tail call signext i32 @FmoMB2SliceGroup(i32 noundef signext %76) #17
  %78 = tail call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %77) #17
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  store i32 %80, ptr %0, align 4, !tbaa !39
  %81 = load i32, ptr %71, align 4, !tbaa !138
  %82 = load ptr, ptr @input, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 216
  %84 = load i32, ptr %83, align 8, !tbaa !140
  %85 = icmp sge i32 %81, %84
  %86 = or i1 %79, %85
  %87 = zext i1 %86 to i32
  store i32 %87, ptr %0, align 4, !tbaa !39
  br label %299

88:                                               ; preds = %45
  %89 = load ptr, ptr @img, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 120
  %91 = load i32, ptr %90, align 8, !tbaa !60
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %91, ptr %94, align 4, !tbaa !141
  %95 = getelementptr inbounds i8, ptr %15, i64 8
  store i32 0, ptr %95, align 8, !tbaa !143
  %96 = getelementptr inbounds i8, ptr %15, i64 32
  store ptr @ue_linfo, ptr %96, align 8, !tbaa !144
  store i32 2, ptr %15, align 8, !tbaa !145
  %97 = getelementptr inbounds i8, ptr %5, i64 24
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = getelementptr inbounds i8, ptr %21, i64 8
  %100 = load i32, ptr %99, align 4, !tbaa !39
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.datapartition, ptr %98, i64 %101
  %103 = getelementptr inbounds i8, ptr %102, i64 104
  %104 = load ptr, ptr %103, align 8, !tbaa !146
  %105 = tail call signext i32 %104(ptr noundef nonnull %15, ptr noundef %102) #17
  %106 = getelementptr inbounds i8, ptr %15, i64 12
  %107 = load i32, ptr %106, align 4, !tbaa !147
  %108 = load ptr, ptr %102, align 8, !tbaa !64
  %109 = getelementptr inbounds i8, ptr %108, i64 4
  %110 = load i32, ptr %109, align 4, !tbaa !67
  %111 = getelementptr inbounds i8, ptr %108, i64 28
  store i32 %110, ptr %111, align 4, !tbaa !148
  %112 = load i32, ptr %108, align 8, !tbaa !70
  %113 = getelementptr inbounds i8, ptr %108, i64 24
  store i32 %112, ptr %113, align 8, !tbaa !149
  %114 = getelementptr inbounds i8, ptr %108, i64 8
  %115 = load i8, ptr %114, align 8, !tbaa !72
  %116 = getelementptr inbounds i8, ptr %108, i64 21
  store i8 %115, ptr %116, align 1, !tbaa !150
  %117 = getelementptr inbounds i8, ptr %108, i64 16
  %118 = load i32, ptr %117, align 8, !tbaa !69
  store i32 %118, ptr %109, align 4, !tbaa !67
  %119 = getelementptr inbounds i8, ptr %108, i64 12
  %120 = load i32, ptr %119, align 4, !tbaa !71
  store i32 %120, ptr %108, align 8, !tbaa !70
  %121 = getelementptr inbounds i8, ptr %108, i64 20
  %122 = load i8, ptr %121, align 4, !tbaa !73
  store i8 %122, ptr %114, align 8, !tbaa !72
  store i1 true, ptr @terminate_macroblock.skip, align 4
  br label %123

123:                                              ; preds = %93, %88
  %124 = phi i32 [ %107, %93 ], [ 0, %88 ]
  br i1 %47, label %125, label %188

125:                                              ; preds = %123
  %126 = load ptr, ptr @img, align 8, !tbaa !6
  %127 = getelementptr inbounds i8, ptr %126, i64 31568
  %128 = load ptr, ptr %127, align 8, !tbaa !54
  %129 = load ptr, ptr @input, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 2984
  %131 = load i32, ptr %130, align 8, !tbaa !74
  switch i32 %131, label %182 [
    i32 0, label %132
    i32 1, label %159
  ]

132:                                              ; preds = %125
  %133 = getelementptr inbounds i8, ptr %128, i64 16
  %134 = load i32, ptr %133, align 8, !tbaa !61
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %182

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, ptr %128, i64 24
  %138 = load ptr, ptr %137, align 8, !tbaa !63
  %139 = getelementptr inbounds i8, ptr %129, i64 216
  %140 = load i32, ptr %139, align 8, !tbaa !140
  %141 = zext nneg i32 %134 to i64
  br label %145

142:                                              ; preds = %145
  %143 = add nuw nsw i64 %146, 1
  %144 = icmp eq i64 %143, %141
  br i1 %144, label %182, label %145

145:                                              ; preds = %142, %136
  %146 = phi i64 [ 0, %136 ], [ %143, %142 ]
  %147 = getelementptr inbounds %struct.datapartition, ptr %138, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !64
  %149 = load i32, ptr %148, align 8, !tbaa !70
  %150 = getelementptr inbounds i8, ptr %148, i64 4
  %151 = load i32, ptr %150, align 4, !tbaa !67
  %152 = icmp slt i32 %151, 8
  %153 = zext i1 %152 to i32
  %154 = add nsw i32 %149, %153
  %155 = icmp slt i32 %151, %124
  %156 = zext i1 %155 to i32
  %157 = add nsw i32 %154, %156
  %158 = icmp sgt i32 %157, %140
  br i1 %158, label %179, label %142

159:                                              ; preds = %125
  %160 = getelementptr inbounds i8, ptr %128, i64 24
  %161 = getelementptr inbounds i8, ptr %128, i64 16
  %162 = load i32, ptr %161, align 8, !tbaa !61
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %169, label %182

164:                                              ; preds = %169
  %165 = add nuw nsw i64 %170, 1
  %166 = load i32, ptr %161, align 8, !tbaa !61
  %167 = sext i32 %166 to i64
  %168 = icmp slt i64 %165, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %159, %164
  %170 = phi i64 [ %165, %164 ], [ 0, %159 ]
  %171 = load ptr, ptr %160, align 8, !tbaa !63
  %172 = getelementptr inbounds %struct.datapartition, ptr %171, i64 %170, i32 1
  %173 = tail call signext i32 @arienco_bits_written(ptr noundef nonnull %172) #17
  %174 = load ptr, ptr @input, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 216
  %176 = load i32, ptr %175, align 8, !tbaa !140
  %177 = shl nsw i32 %176, 3
  %178 = icmp sgt i32 %173, %177
  br i1 %178, label %179, label %164

179:                                              ; preds = %169, %145
  store i32 1, ptr %1, align 4, !tbaa !39
  store i32 1, ptr %0, align 4, !tbaa !39
  br label %188

180:                                              ; preds = %164
  %181 = load ptr, ptr @img, align 8, !tbaa !6
  br label %182

182:                                              ; preds = %142, %180, %125, %132, %159
  %183 = phi ptr [ %181, %180 ], [ %126, %125 ], [ %126, %132 ], [ %126, %159 ], [ %126, %142 ]
  %184 = getelementptr inbounds i8, ptr %183, i64 120
  %185 = load i32, ptr %184, align 8, !tbaa !60
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i1 false, ptr @terminate_macroblock.skip, align 4
  br label %188

188:                                              ; preds = %179, %187, %182, %123
  %189 = load i32, ptr %1, align 4, !tbaa !39
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load ptr, ptr @img, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %192, i64 12
  %194 = load i32, ptr %193, align 4, !tbaa !10
  %195 = tail call signext i32 @FmoMB2SliceGroup(i32 noundef signext %194) #17
  %196 = tail call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %195) #17
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  store i32 1, ptr %0, align 4, !tbaa !39
  %199 = load ptr, ptr @img, align 8, !tbaa !6
  %200 = getelementptr inbounds i8, ptr %199, i64 120
  %201 = load i32, ptr %200, align 8, !tbaa !60
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i1 false, ptr @terminate_macroblock.skip, align 4
  br label %204

204:                                              ; preds = %198, %203, %191, %188
  br i1 %47, label %267, label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr @img, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 31568
  %208 = load ptr, ptr %207, align 8, !tbaa !54
  %209 = load ptr, ptr @input, align 8, !tbaa !6
  %210 = getelementptr inbounds i8, ptr %209, i64 2984
  %211 = load i32, ptr %210, align 8, !tbaa !74
  switch i32 %211, label %267 [
    i32 0, label %212
    i32 1, label %239
  ]

212:                                              ; preds = %205
  %213 = getelementptr inbounds i8, ptr %208, i64 16
  %214 = load i32, ptr %213, align 8, !tbaa !61
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %267

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %208, i64 24
  %218 = load ptr, ptr %217, align 8, !tbaa !63
  %219 = getelementptr inbounds i8, ptr %209, i64 216
  %220 = load i32, ptr %219, align 8, !tbaa !140
  %221 = zext nneg i32 %214 to i64
  br label %225

222:                                              ; preds = %225
  %223 = add nuw nsw i64 %226, 1
  %224 = icmp eq i64 %223, %221
  br i1 %224, label %267, label %225

225:                                              ; preds = %222, %216
  %226 = phi i64 [ 0, %216 ], [ %223, %222 ]
  %227 = getelementptr inbounds %struct.datapartition, ptr %218, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !64
  %229 = load i32, ptr %228, align 8, !tbaa !70
  %230 = getelementptr inbounds i8, ptr %228, i64 4
  %231 = load i32, ptr %230, align 4, !tbaa !67
  %232 = icmp slt i32 %231, 8
  %233 = zext i1 %232 to i32
  %234 = add nsw i32 %229, %233
  %235 = icmp slt i32 %231, %124
  %236 = zext i1 %235 to i32
  %237 = add nsw i32 %234, %236
  %238 = icmp sgt i32 %237, %220
  br i1 %238, label %261, label %222

239:                                              ; preds = %205
  %240 = getelementptr inbounds i8, ptr %208, i64 24
  %241 = getelementptr inbounds i8, ptr %208, i64 16
  %242 = load i32, ptr %241, align 8, !tbaa !61
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %249, label %267

244:                                              ; preds = %249
  %245 = add nuw nsw i64 %250, 1
  %246 = load i32, ptr %241, align 8, !tbaa !61
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %245, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %239, %244
  %250 = phi i64 [ %245, %244 ], [ 0, %239 ]
  %251 = load ptr, ptr %240, align 8, !tbaa !63
  %252 = getelementptr inbounds %struct.datapartition, ptr %251, i64 %250, i32 1
  %253 = tail call signext i32 @arienco_bits_written(ptr noundef nonnull %252) #17
  %254 = load ptr, ptr @input, align 8, !tbaa !6
  %255 = getelementptr inbounds i8, ptr %254, i64 216
  %256 = load i32, ptr %255, align 8, !tbaa !140
  %257 = shl nsw i32 %256, 3
  %258 = icmp sgt i32 %253, %257
  br i1 %258, label %259, label %244

259:                                              ; preds = %249
  %260 = load ptr, ptr @img, align 8, !tbaa !6
  br label %261

261:                                              ; preds = %225, %259
  %262 = phi ptr [ %260, %259 ], [ %206, %225 ]
  store i32 1, ptr %0, align 4, !tbaa !39
  %263 = getelementptr inbounds i8, ptr %262, i64 120
  %264 = load i32, ptr %263, align 8, !tbaa !60
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i1 false, ptr @terminate_macroblock.skip, align 4
  br label %267

267:                                              ; preds = %244, %222, %239, %212, %205, %261, %266, %204
  %268 = load i32, ptr %1, align 4, !tbaa !39
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %301

270:                                              ; preds = %267
  %271 = getelementptr inbounds i8, ptr %5, i64 20
  %272 = load i32, ptr %271, align 4, !tbaa !138
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %271, align 4, !tbaa !138
  br label %299

274:                                              ; preds = %45
  %275 = load ptr, ptr @img, align 8, !tbaa !6
  %276 = getelementptr inbounds i8, ptr %275, i64 12
  %277 = load i32, ptr %276, align 4, !tbaa !10
  %278 = icmp slt i32 %277, 1
  %279 = or i1 %46, %278
  br i1 %279, label %286, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds i8, ptr %5, i64 120
  %282 = load ptr, ptr %281, align 8, !tbaa !151
  %283 = tail call signext i32 %282(i32 noundef signext 0) #17
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  store i32 1, ptr %1, align 4, !tbaa !39
  store i32 1, ptr %0, align 4, !tbaa !39
  br label %286

286:                                              ; preds = %280, %285, %274
  %287 = load i32, ptr %1, align 4, !tbaa !39
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %286
  %290 = load ptr, ptr @img, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 12
  %292 = load i32, ptr %291, align 4, !tbaa !10
  %293 = tail call signext i32 @FmoMB2SliceGroup(i32 noundef signext %292) #17
  %294 = tail call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %293) #17
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  store i32 1, ptr %0, align 4, !tbaa !39
  br label %299

297:                                              ; preds = %45
  %298 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.1, i32 noundef signext %50) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 600) #17
  br label %299

299:                                              ; preds = %61, %70, %297, %270, %296, %289
  %300 = load i32, ptr %1, align 4, !tbaa !39
  br label %301

301:                                              ; preds = %299, %286, %267
  %302 = phi i32 [ %300, %299 ], [ %287, %286 ], [ %268, %267 ]
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %362

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %5, i64 16
  %306 = load i32, ptr %305, align 8, !tbaa !61
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %362

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, ptr %5, i64 24
  %310 = load ptr, ptr %309, align 8, !tbaa !63
  %311 = zext nneg i32 %306 to i64
  %312 = load ptr, ptr @input, align 8, !tbaa !6
  br label %313

313:                                              ; preds = %308, %358
  %314 = phi ptr [ %312, %308 ], [ %359, %358 ]
  %315 = phi i64 [ 0, %308 ], [ %360, %358 ]
  %316 = getelementptr inbounds %struct.datapartition, ptr %310, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !64
  %318 = getelementptr inbounds i8, ptr %317, i64 16
  %319 = load i32, ptr %318, align 8, !tbaa !69
  %320 = getelementptr inbounds i8, ptr %317, i64 4
  store i32 %319, ptr %320, align 4, !tbaa !67
  %321 = getelementptr inbounds i8, ptr %317, i64 12
  %322 = load i32, ptr %321, align 4, !tbaa !71
  store i32 %322, ptr %317, align 8, !tbaa !70
  %323 = getelementptr inbounds i8, ptr %317, i64 20
  %324 = load i8, ptr %323, align 4, !tbaa !73
  %325 = getelementptr inbounds i8, ptr %317, i64 8
  store i8 %324, ptr %325, align 8, !tbaa !72
  %326 = getelementptr inbounds i8, ptr %314, i64 2984
  %327 = load i32, ptr %326, align 8, !tbaa !74
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %358

329:                                              ; preds = %313
  %330 = getelementptr inbounds i8, ptr %316, i64 8
  %331 = getelementptr inbounds i8, ptr %316, i64 56
  %332 = load i32, ptr %331, align 8, !tbaa !76
  store i32 %332, ptr %330, align 8, !tbaa !75
  %333 = getelementptr inbounds i8, ptr %316, i64 60
  %334 = load i32, ptr %333, align 4, !tbaa !78
  %335 = getelementptr inbounds i8, ptr %316, i64 12
  store i32 %334, ptr %335, align 4, !tbaa !77
  %336 = getelementptr inbounds i8, ptr %316, i64 64
  %337 = load i32, ptr %336, align 8, !tbaa !80
  %338 = getelementptr inbounds i8, ptr %316, i64 16
  store i32 %337, ptr %338, align 8, !tbaa !79
  %339 = getelementptr inbounds i8, ptr %316, i64 68
  %340 = load i32, ptr %339, align 4, !tbaa !82
  %341 = getelementptr inbounds i8, ptr %316, i64 20
  store i32 %340, ptr %341, align 4, !tbaa !81
  %342 = getelementptr inbounds i8, ptr %316, i64 72
  %343 = load i32, ptr %342, align 8, !tbaa !84
  %344 = getelementptr inbounds i8, ptr %316, i64 24
  store i32 %343, ptr %344, align 8, !tbaa !83
  %345 = getelementptr inbounds i8, ptr %316, i64 80
  %346 = load ptr, ptr %345, align 8, !tbaa !86
  %347 = getelementptr inbounds i8, ptr %316, i64 32
  store ptr %346, ptr %347, align 8, !tbaa !85
  %348 = getelementptr inbounds i8, ptr %316, i64 88
  %349 = load ptr, ptr %348, align 8, !tbaa !88
  %350 = getelementptr inbounds i8, ptr %316, i64 40
  store ptr %349, ptr %350, align 8, !tbaa !87
  %351 = getelementptr inbounds i8, ptr %316, i64 96
  %352 = load i32, ptr %351, align 8, !tbaa !90
  %353 = getelementptr inbounds i8, ptr %316, i64 48
  store i32 %352, ptr %353, align 8, !tbaa !89
  %354 = getelementptr inbounds i8, ptr %316, i64 100
  %355 = load i32, ptr %354, align 4, !tbaa !92
  %356 = getelementptr inbounds i8, ptr %316, i64 52
  store i32 %355, ptr %356, align 4, !tbaa !91
  %357 = load ptr, ptr @input, align 8, !tbaa !6
  br label %358

358:                                              ; preds = %313, %329
  %359 = phi ptr [ %314, %313 ], [ %357, %329 ]
  %360 = add nuw nsw i64 %315, 1
  %361 = icmp eq i64 %360, %311
  br i1 %361, label %362, label %313

362:                                              ; preds = %358, %304, %301
  %363 = load i32, ptr %0, align 4, !tbaa !39
  %364 = icmp eq i32 %363, 1
  %365 = load i1, ptr @terminate_macroblock.skip, align 4
  %366 = select i1 %364, i1 %365, i1 false
  br i1 %366, label %367, label %416

367:                                              ; preds = %362
  %368 = load ptr, ptr @img, align 8, !tbaa !6
  %369 = getelementptr inbounds i8, ptr %368, i64 120
  %370 = load i32, ptr %369, align 8, !tbaa !60
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %398, label %372

372:                                              ; preds = %367
  %373 = load i32, ptr %1, align 4, !tbaa !39
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %398

375:                                              ; preds = %372
  %376 = add nsw i32 %370, -1
  store i32 %376, ptr %369, align 8, !tbaa !60
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %414, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %376, ptr %379, align 4, !tbaa !141
  %380 = getelementptr inbounds i8, ptr %15, i64 8
  store i32 0, ptr %380, align 8, !tbaa !143
  %381 = getelementptr inbounds i8, ptr %15, i64 32
  store ptr @ue_linfo, ptr %381, align 8, !tbaa !144
  store i32 2, ptr %15, align 8, !tbaa !145
  %382 = getelementptr inbounds i8, ptr %5, i64 24
  %383 = load ptr, ptr %382, align 8, !tbaa !63
  %384 = getelementptr inbounds i8, ptr %21, i64 8
  %385 = load i32, ptr %384, align 4, !tbaa !39
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.datapartition, ptr %383, i64 %386
  %388 = getelementptr inbounds i8, ptr %387, i64 104
  %389 = load ptr, ptr %388, align 8, !tbaa !146
  %390 = tail call signext i32 %389(ptr noundef nonnull %15, ptr noundef %387) #17
  %391 = getelementptr inbounds i8, ptr %15, i64 12
  %392 = load i32, ptr %391, align 4, !tbaa !147
  %393 = getelementptr inbounds i8, ptr %11, i64 28
  %394 = load i32, ptr %393, align 4, !tbaa !39
  %395 = add nsw i32 %394, %392
  store i32 %395, ptr %393, align 4, !tbaa !39
  %396 = load ptr, ptr @img, align 8, !tbaa !6
  %397 = getelementptr inbounds i8, ptr %396, i64 120
  store i32 0, ptr %397, align 8, !tbaa !60
  br label %414

398:                                              ; preds = %372, %367
  %399 = getelementptr inbounds i8, ptr %5, i64 24
  %400 = load ptr, ptr %399, align 8, !tbaa !63
  %401 = getelementptr inbounds i8, ptr %21, i64 8
  %402 = load i32, ptr %401, align 4, !tbaa !39
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.datapartition, ptr %400, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !64
  %406 = getelementptr inbounds i8, ptr %405, i64 28
  %407 = load i32, ptr %406, align 4, !tbaa !148
  %408 = getelementptr inbounds i8, ptr %405, i64 4
  store i32 %407, ptr %408, align 4, !tbaa !67
  %409 = getelementptr inbounds i8, ptr %405, i64 24
  %410 = load i32, ptr %409, align 8, !tbaa !149
  store i32 %410, ptr %405, align 8, !tbaa !70
  %411 = getelementptr inbounds i8, ptr %405, i64 21
  %412 = load i8, ptr %411, align 1, !tbaa !150
  %413 = getelementptr inbounds i8, ptr %405, i64 8
  store i8 %412, ptr %413, align 8, !tbaa !72
  store i32 0, ptr %369, align 8, !tbaa !60
  store i1 false, ptr @terminate_macroblock.skip, align 4
  br label %414

414:                                              ; preds = %375, %378, %398
  %415 = load i32, ptr %0, align 4, !tbaa !39
  br label %416

416:                                              ; preds = %414, %362
  %417 = phi i32 [ %415, %414 ], [ %363, %362 ]
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %447

419:                                              ; preds = %416
  %420 = load ptr, ptr @img, align 8, !tbaa !6
  %421 = getelementptr inbounds i8, ptr %420, i64 120
  %422 = load i32, ptr %421, align 8, !tbaa !60
  %423 = icmp eq i32 %422, 0
  %424 = or i1 %25, %423
  br i1 %424, label %447, label %425

425:                                              ; preds = %419
  %426 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %422, ptr %426, align 4, !tbaa !141
  %427 = getelementptr inbounds i8, ptr %15, i64 8
  store i32 0, ptr %427, align 8, !tbaa !143
  %428 = getelementptr inbounds i8, ptr %15, i64 32
  store ptr @ue_linfo, ptr %428, align 8, !tbaa !144
  store i32 2, ptr %15, align 8, !tbaa !145
  %429 = getelementptr inbounds i8, ptr %5, i64 24
  %430 = load ptr, ptr %429, align 8, !tbaa !63
  %431 = getelementptr inbounds i8, ptr %21, i64 8
  %432 = load i32, ptr %431, align 4, !tbaa !39
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.datapartition, ptr %430, i64 %433
  %435 = getelementptr inbounds i8, ptr %434, i64 104
  %436 = load ptr, ptr %435, align 8, !tbaa !146
  %437 = tail call signext i32 %436(ptr noundef nonnull %15, ptr noundef %434) #17
  %438 = load i32, ptr %11, align 8, !tbaa !122
  %439 = add nsw i32 %438, 1
  store i32 %439, ptr %11, align 8, !tbaa !122
  %440 = getelementptr inbounds i8, ptr %15, i64 12
  %441 = load i32, ptr %440, align 4, !tbaa !147
  %442 = getelementptr inbounds i8, ptr %11, i64 28
  %443 = load i32, ptr %442, align 4, !tbaa !39
  %444 = add nsw i32 %443, %441
  store i32 %444, ptr %442, align 4, !tbaa !39
  %445 = load ptr, ptr @img, align 8, !tbaa !6
  %446 = getelementptr inbounds i8, ptr %445, i64 120
  store i32 0, ptr %446, align 8, !tbaa !60
  br label %447

447:                                              ; preds = %425, %419, %416
  ret void
}

declare dso_local signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @FmoMB2SliceGroup(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @slice_too_big(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31568
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr @input, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 2984
  %7 = load i32, ptr %6, align 8, !tbaa !74
  switch i32 %7, label %55 [
    i32 0, label %8
    i32 1, label %35
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 16
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %4, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds i8, ptr %5, i64 216
  %16 = load i32, ptr %15, align 8, !tbaa !140
  %17 = zext nneg i32 %10 to i64
  br label %21

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1
  %20 = icmp eq i64 %19, %17
  br i1 %20, label %55, label %21

21:                                               ; preds = %12, %18
  %22 = phi i64 [ 0, %12 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.datapartition, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = load i32, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds i8, ptr %24, i64 4
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = icmp slt i32 %27, 8
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %25, %29
  %31 = icmp slt i32 %27, %0
  %32 = zext i1 %31 to i32
  %33 = add nsw i32 %30, %32
  %34 = icmp sgt i32 %33, %16
  br i1 %34, label %55, label %18

35:                                               ; preds = %1
  %36 = getelementptr inbounds i8, ptr %4, i64 24
  %37 = getelementptr inbounds i8, ptr %4, i64 16
  %38 = load i32, ptr %37, align 8, !tbaa !61
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %45, label %55

40:                                               ; preds = %45
  %41 = add nuw nsw i64 %46, 1
  %42 = load i32, ptr %37, align 8, !tbaa !61
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %35, %40
  %46 = phi i64 [ %41, %40 ], [ 0, %35 ]
  %47 = load ptr, ptr %36, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct.datapartition, ptr %47, i64 %46, i32 1
  %49 = tail call signext i32 @arienco_bits_written(ptr noundef nonnull %48) #17
  %50 = load ptr, ptr @input, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 216
  %52 = load i32, ptr %51, align 8, !tbaa !140
  %53 = shl nsw i32 %52, 3
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %40

55:                                               ; preds = %45, %40, %21, %18, %35, %8, %1
  %56 = phi i32 [ 0, %1 ], [ 0, %8 ], [ 0, %35 ], [ 0, %18 ], [ 1, %21 ], [ 1, %45 ], [ 0, %40 ]
  ret i32 %56
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @arienco_bits_written(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @OneComponentLumaPrediction4x4(ptr nocapture noundef writeonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = sext i16 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 6448
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = shl i32 %2, 2
  %13 = getelementptr inbounds i8, ptr %3, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !153
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %12, %15
  %17 = add nsw i32 %16, 16
  %18 = shl i32 %1, 2
  %19 = load i16, ptr %3, align 2, !tbaa !153
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 16
  %23 = getelementptr inbounds i8, ptr %9, i64 6392
  %24 = load i32, ptr %23, align 8, !tbaa !154
  %25 = shl i32 %24, 2
  %26 = getelementptr inbounds i8, ptr %9, i64 6396
  %27 = load i32, ptr %26, align 4, !tbaa !155
  %28 = shl i32 %27, 2
  %29 = icmp sgt i32 %21, -16
  br i1 %29, label %30, label %38

30:                                               ; preds = %6
  %31 = add i32 %25, 11
  %32 = icmp slt i32 %22, %31
  %33 = icmp sgt i32 %16, -16
  %34 = select i1 %32, i1 %33, i1 false
  %35 = add i32 %28, 11
  %36 = icmp slt i32 %17, %35
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %39, label %38

38:                                               ; preds = %30, %6
  br label %39

39:                                               ; preds = %30, %38
  %40 = phi ptr [ @UMVLine4X, %38 ], [ @FastLine4X, %30 ]
  %41 = add i32 %28, 28
  %42 = add i32 %25, 28
  store ptr %40, ptr @get_line, align 8, !tbaa !6
  %43 = tail call ptr %40(ptr noundef %11, i32 noundef signext %17, i32 noundef signext %22, i32 noundef signext %41, i32 noundef signext %42) #17, !callees !156
  %44 = load i16, ptr %43, align 2, !tbaa !153
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %45, ptr %0, align 4, !tbaa !39
  %47 = getelementptr inbounds i8, ptr %43, i64 8
  %48 = load i16, ptr %47, align 2, !tbaa !153
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %49, ptr %46, align 4, !tbaa !39
  %51 = getelementptr inbounds i8, ptr %43, i64 16
  %52 = load i16, ptr %51, align 2, !tbaa !153
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %53, ptr %50, align 4, !tbaa !39
  %55 = getelementptr inbounds i8, ptr %43, i64 24
  %56 = load i16, ptr %55, align 2, !tbaa !153
  %57 = zext i16 %56 to i32
  store i32 %57, ptr %54, align 4, !tbaa !39
  %58 = add nsw i32 %16, 20
  %59 = getelementptr inbounds i8, ptr %0, i64 16
  %60 = load ptr, ptr @get_line, align 8, !tbaa !6
  %61 = tail call ptr %60(ptr noundef %11, i32 noundef signext %58, i32 noundef signext %22, i32 noundef signext %41, i32 noundef signext %42) #17, !callees !156
  %62 = load i16, ptr %61, align 2, !tbaa !153
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %63, ptr %59, align 4, !tbaa !39
  %65 = getelementptr inbounds i8, ptr %61, i64 8
  %66 = load i16, ptr %65, align 2, !tbaa !153
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %67, ptr %64, align 4, !tbaa !39
  %69 = getelementptr inbounds i8, ptr %61, i64 16
  %70 = load i16, ptr %69, align 2, !tbaa !153
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %71, ptr %68, align 4, !tbaa !39
  %73 = getelementptr inbounds i8, ptr %61, i64 24
  %74 = load i16, ptr %73, align 2, !tbaa !153
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %75, ptr %72, align 4, !tbaa !39
  %77 = add nsw i32 %16, 24
  %78 = load ptr, ptr @get_line, align 8, !tbaa !6
  %79 = tail call ptr %78(ptr noundef %11, i32 noundef signext %77, i32 noundef signext %22, i32 noundef signext %41, i32 noundef signext %42) #17, !callees !156
  %80 = load i16, ptr %79, align 2, !tbaa !153
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %81, ptr %76, align 4, !tbaa !39
  %83 = getelementptr inbounds i8, ptr %79, i64 8
  %84 = load i16, ptr %83, align 2, !tbaa !153
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 %85, ptr %82, align 4, !tbaa !39
  %87 = getelementptr inbounds i8, ptr %79, i64 16
  %88 = load i16, ptr %87, align 2, !tbaa !153
  %89 = zext i16 %88 to i32
  %90 = getelementptr inbounds i8, ptr %0, i64 44
  store i32 %89, ptr %86, align 4, !tbaa !39
  %91 = getelementptr inbounds i8, ptr %79, i64 24
  %92 = load i16, ptr %91, align 2, !tbaa !153
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %93, ptr %90, align 4, !tbaa !39
  %95 = add nsw i32 %16, 28
  %96 = load ptr, ptr @get_line, align 8, !tbaa !6
  %97 = tail call ptr %96(ptr noundef %11, i32 noundef signext %95, i32 noundef signext %22, i32 noundef signext %41, i32 noundef signext %42) #17, !callees !156
  %98 = load i16, ptr %97, align 2, !tbaa !153
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %99, ptr %94, align 4, !tbaa !39
  %101 = getelementptr inbounds i8, ptr %97, i64 8
  %102 = load i16, ptr %101, align 2, !tbaa !153
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %103, ptr %100, align 4, !tbaa !39
  %105 = getelementptr inbounds i8, ptr %97, i64 16
  %106 = load i16, ptr %105, align 2, !tbaa !153
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %107, ptr %104, align 4, !tbaa !39
  %109 = getelementptr inbounds i8, ptr %97, i64 24
  %110 = load i16, ptr %109, align 2, !tbaa !153
  %111 = zext i16 %110 to i32
  store i32 %111, ptr %108, align 4, !tbaa !39
  ret void
}

declare dso_local ptr @FastLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare dso_local ptr @UMVLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @copyblock4x4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %3, ptr %0, align 4, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %1, i64 16
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %6, ptr %4, align 4, !tbaa !39
  %8 = getelementptr inbounds i8, ptr %1, i64 32
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %9, ptr %7, align 4, !tbaa !39
  %11 = getelementptr inbounds i8, ptr %1, i64 48
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %12, ptr %10, align 4, !tbaa !39
  %14 = getelementptr inbounds i8, ptr %1, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !39
  %16 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %15, ptr %13, align 4, !tbaa !39
  %17 = getelementptr inbounds i8, ptr %1, i64 20
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %18, ptr %16, align 4, !tbaa !39
  %20 = getelementptr inbounds i8, ptr %1, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa !39
  %22 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %21, ptr %19, align 4, !tbaa !39
  %23 = getelementptr inbounds i8, ptr %1, i64 52
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %24, ptr %22, align 4, !tbaa !39
  %26 = getelementptr inbounds i8, ptr %1, i64 8
  %27 = load i32, ptr %26, align 4, !tbaa !39
  %28 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %27, ptr %25, align 4, !tbaa !39
  %29 = getelementptr inbounds i8, ptr %1, i64 24
  %30 = load i32, ptr %29, align 4, !tbaa !39
  %31 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 %30, ptr %28, align 4, !tbaa !39
  %32 = getelementptr inbounds i8, ptr %1, i64 40
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = getelementptr inbounds i8, ptr %0, i64 44
  store i32 %33, ptr %31, align 4, !tbaa !39
  %35 = getelementptr inbounds i8, ptr %1, i64 56
  %36 = load i32, ptr %35, align 4, !tbaa !39
  %37 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %36, ptr %34, align 4, !tbaa !39
  %38 = getelementptr inbounds i8, ptr %1, i64 12
  %39 = load i32, ptr %38, align 4, !tbaa !39
  %40 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %39, ptr %37, align 4, !tbaa !39
  %41 = getelementptr inbounds i8, ptr %1, i64 28
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %42, ptr %40, align 4, !tbaa !39
  %44 = getelementptr inbounds i8, ptr %1, i64 44
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %45, ptr %43, align 4, !tbaa !39
  %47 = getelementptr inbounds i8, ptr %1, i64 60
  %48 = load i32, ptr %47, align 4, !tbaa !39
  store i32 %48, ptr %46, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind
define dso_local void @LumaPrediction4x4(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = add nsw i32 %0, 4
  %9 = add nsw i32 %1, 4
  %10 = load ptr, ptr @img, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 168
  %12 = load i32, ptr %11, align 8, !tbaa !22
  %13 = add nsw i32 %12, %0
  %14 = getelementptr inbounds i8, ptr %10, i64 172
  %15 = load i32, ptr %14, align 4, !tbaa !28
  %16 = add nsw i32 %15, %1
  %17 = ashr i32 %0, 2
  %18 = ashr i32 %1, 2
  %19 = getelementptr inbounds i8, ptr %10, i64 31576
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds i8, ptr %10, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %23
  %25 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 192
  %27 = load i32, ptr %26, align 8, !tbaa !157
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds i8, ptr %10, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !42
  switch i32 %31, label %32 [
    i32 0, label %40
    i32 3, label %40
  ]

32:                                               ; preds = %29, %7
  %33 = getelementptr inbounds i8, ptr %25, i64 196
  %34 = load i32, ptr %33, align 4, !tbaa !158
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %10, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !42
  %39 = icmp eq i32 %38, 1
  br label %40

40:                                               ; preds = %29, %29, %32, %36
  %41 = phi i1 [ true, %29 ], [ false, %32 ], [ %39, %36 ], [ true, %29 ]
  %42 = sext i32 %18 to i64
  %43 = sext i32 %17 to i64
  %44 = getelementptr inbounds i8, ptr %24, i64 476
  %45 = load i16, ptr %44, align 4, !tbaa !159
  %46 = icmp ne i16 %45, 0
  %47 = or i16 %6, %5
  %48 = icmp eq i16 %47, 0
  %49 = and i1 %48, %46
  %50 = icmp eq i32 %2, 2
  %51 = icmp eq i32 %3, 1
  %52 = and i1 %51, %49
  %53 = icmp eq i32 %4, 1
  %54 = and i1 %53, %52
  %55 = and i1 %50, %54
  %56 = icmp eq i16 %45, 1
  %57 = select i1 %56, i64 89344, i64 89352
  %58 = select i1 %55, i64 %57, i64 89336
  %59 = getelementptr inbounds i8, ptr %10, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds ptr, ptr %60, i64 %42
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %43
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = icmp eq i32 %2, 0
  switch i32 %2, label %79 [
    i32 2, label %66
    i32 0, label %66
  ]

66:                                               ; preds = %40, %40
  %67 = load ptr, ptr %64, align 8, !tbaa !6
  %68 = sext i16 %5 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = sext i32 %3 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %24, i64 428
  %75 = load i32, ptr %74, align 4, !tbaa !29
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  tail call void @OneComponentLumaPrediction4x4(ptr noundef nonnull @LumaPrediction4x4.fw_pred, i32 noundef signext %13, i32 noundef signext %16, ptr noundef %73, i16 noundef signext %5, ptr noundef %78)
  br label %79

79:                                               ; preds = %40, %66
  %80 = add i32 %2, -1
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, ptr %64, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = sext i16 %6 to i64
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = sext i32 %4 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %24, i64 428
  %92 = load i32, ptr %91, align 4, !tbaa !29
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  tail call void @OneComponentLumaPrediction4x4(ptr noundef nonnull @LumaPrediction4x4.bw_pred, i32 noundef signext %13, i32 noundef signext %16, ptr noundef %90, i16 noundef signext %6, ptr noundef %96)
  br label %97

97:                                               ; preds = %79, %82
  br i1 %41, label %98, label %373

98:                                               ; preds = %97
  br i1 %50, label %99, label %215

99:                                               ; preds = %98
  %100 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = sext i16 %5 to i64
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = sext i16 %6 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = load i32, ptr %107, align 4, !tbaa !39
  %109 = getelementptr inbounds i8, ptr %100, i64 8
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %102
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds ptr, ptr %112, i64 %105
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = load i32, ptr %114, align 4, !tbaa !39
  %116 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %117 = shl nsw i32 %116, 1
  %118 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %119 = add nsw i32 %118, 1
  %120 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds ptr, ptr %121, i64 %102
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = load i32, ptr %123, align 4, !tbaa !39
  %125 = getelementptr inbounds i8, ptr %120, i64 8
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds ptr, ptr %126, i64 %105
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = load i32, ptr %128, align 4, !tbaa !39
  %130 = add i32 %124, 1
  %131 = add i32 %130, %129
  %132 = ashr i32 %131, 1
  %133 = load ptr, ptr @img, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %133, i64 90532
  %135 = load i32, ptr %134, align 4, !tbaa !37
  %136 = getelementptr inbounds i8, ptr %133, i64 12600
  %137 = sext i32 %0 to i64
  %138 = sext i32 %8 to i64
  %139 = sext i32 %1 to i64
  %140 = sext i32 %9 to i64
  %141 = add nsw i64 %137, 1
  %142 = icmp slt i64 %141, %138
  %143 = add nsw i64 %137, 2
  %144 = add nsw i64 %137, 3
  br label %145

145:                                              ; preds = %99, %210
  %146 = phi i64 [ %139, %99 ], [ %213, %210 ]
  %147 = phi ptr [ @LumaPrediction4x4.bw_pred, %99 ], [ %212, %210 ]
  %148 = phi ptr [ @LumaPrediction4x4.fw_pred, %99 ], [ %211, %210 ]
  %149 = getelementptr inbounds i8, ptr %148, i64 4
  %150 = load i32, ptr %148, align 4, !tbaa !39
  %151 = mul nsw i32 %150, %108
  %152 = getelementptr inbounds i8, ptr %147, i64 4
  %153 = load i32, ptr %147, align 4, !tbaa !39
  %154 = mul nsw i32 %153, %115
  %155 = add nsw i32 %154, %151
  %156 = add nsw i32 %155, %117
  %157 = ashr i32 %156, %119
  %158 = add nsw i32 %132, %157
  %159 = icmp slt i32 %135, %158
  %160 = tail call i32 @llvm.smax.i32(i32 %158, i32 0)
  %161 = select i1 %159, i32 %135, i32 %160
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [16 x [16 x i16]], ptr %136, i64 0, i64 %146, i64 %137
  store i16 %162, ptr %163, align 2, !tbaa !153
  br i1 %142, label %164, label %210

164:                                              ; preds = %145
  %165 = getelementptr inbounds i8, ptr %148, i64 8
  %166 = load i32, ptr %149, align 4, !tbaa !39
  %167 = mul nsw i32 %166, %108
  %168 = getelementptr inbounds i8, ptr %147, i64 8
  %169 = load i32, ptr %152, align 4, !tbaa !39
  %170 = mul nsw i32 %169, %115
  %171 = add nsw i32 %170, %167
  %172 = add nsw i32 %171, %117
  %173 = ashr i32 %172, %119
  %174 = add nsw i32 %132, %173
  %175 = icmp slt i32 %135, %174
  %176 = tail call i32 @llvm.smax.i32(i32 %174, i32 0)
  %177 = select i1 %175, i32 %135, i32 %176
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds [16 x [16 x i16]], ptr %136, i64 0, i64 %146, i64 %141
  store i16 %178, ptr %179, align 2, !tbaa !153
  %180 = getelementptr inbounds i8, ptr %148, i64 12
  %181 = load i32, ptr %165, align 4, !tbaa !39
  %182 = mul nsw i32 %181, %108
  %183 = getelementptr inbounds i8, ptr %147, i64 12
  %184 = load i32, ptr %168, align 4, !tbaa !39
  %185 = mul nsw i32 %184, %115
  %186 = add nsw i32 %185, %182
  %187 = add nsw i32 %186, %117
  %188 = ashr i32 %187, %119
  %189 = add nsw i32 %132, %188
  %190 = icmp slt i32 %135, %189
  %191 = tail call i32 @llvm.smax.i32(i32 %189, i32 0)
  %192 = select i1 %190, i32 %135, i32 %191
  %193 = trunc i32 %192 to i16
  %194 = getelementptr inbounds [16 x [16 x i16]], ptr %136, i64 0, i64 %146, i64 %143
  store i16 %193, ptr %194, align 2, !tbaa !153
  %195 = getelementptr inbounds i8, ptr %148, i64 16
  %196 = load i32, ptr %180, align 4, !tbaa !39
  %197 = mul nsw i32 %196, %108
  %198 = getelementptr inbounds i8, ptr %147, i64 16
  %199 = load i32, ptr %183, align 4, !tbaa !39
  %200 = mul nsw i32 %199, %115
  %201 = add nsw i32 %200, %197
  %202 = add nsw i32 %201, %117
  %203 = ashr i32 %202, %119
  %204 = add nsw i32 %132, %203
  %205 = icmp slt i32 %135, %204
  %206 = tail call i32 @llvm.smax.i32(i32 %204, i32 0)
  %207 = select i1 %205, i32 %135, i32 %206
  %208 = trunc i32 %207 to i16
  %209 = getelementptr inbounds [16 x [16 x i16]], ptr %136, i64 0, i64 %146, i64 %144
  store i16 %208, ptr %209, align 2, !tbaa !153
  br label %210

210:                                              ; preds = %164, %145
  %211 = phi ptr [ %149, %145 ], [ %195, %164 ]
  %212 = phi ptr [ %152, %145 ], [ %198, %164 ]
  %213 = add nsw i64 %146, 1
  %214 = icmp slt i64 %213, %140
  br i1 %214, label %145, label %701

215:                                              ; preds = %98
  %216 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  br i1 %65, label %244, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds i8, ptr %216, i64 8
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = sext i16 %6 to i64
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = load i32, ptr %222, align 4, !tbaa !39
  %224 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %225 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %226 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %227 = getelementptr inbounds i8, ptr %226, i64 8
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = getelementptr inbounds ptr, ptr %228, i64 %220
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = load i32, ptr %230, align 4, !tbaa !39
  %232 = load ptr, ptr @img, align 8, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %232, i64 90532
  %234 = load i32, ptr %233, align 4, !tbaa !37
  %235 = getelementptr inbounds i8, ptr %232, i64 12600
  %236 = sext i32 %0 to i64
  %237 = sext i32 %8 to i64
  %238 = sext i32 %1 to i64
  %239 = sext i32 %9 to i64
  %240 = add nsw i64 %236, 1
  %241 = icmp slt i64 %240, %237
  %242 = add nsw i64 %236, 2
  %243 = add nsw i64 %236, 3
  br label %321

244:                                              ; preds = %215
  %245 = load ptr, ptr %216, align 8, !tbaa !6
  %246 = sext i16 %5 to i64
  %247 = getelementptr inbounds ptr, ptr %245, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = load i32, ptr %248, align 4, !tbaa !39
  %250 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %251 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %252 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = getelementptr inbounds ptr, ptr %253, i64 %246
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = load i32, ptr %255, align 4, !tbaa !39
  %257 = load ptr, ptr @img, align 8, !tbaa !6
  %258 = getelementptr inbounds i8, ptr %257, i64 90532
  %259 = load i32, ptr %258, align 4, !tbaa !37
  %260 = getelementptr inbounds i8, ptr %257, i64 12600
  %261 = sext i32 %0 to i64
  %262 = sext i32 %8 to i64
  %263 = sext i32 %1 to i64
  %264 = sext i32 %9 to i64
  %265 = add nsw i64 %261, 1
  %266 = icmp slt i64 %265, %262
  %267 = add nsw i64 %261, 2
  %268 = add nsw i64 %261, 3
  br label %269

269:                                              ; preds = %244, %317
  %270 = phi i64 [ %263, %244 ], [ %319, %317 ]
  %271 = phi ptr [ @LumaPrediction4x4.fw_pred, %244 ], [ %318, %317 ]
  %272 = getelementptr inbounds i8, ptr %271, i64 4
  %273 = load i32, ptr %271, align 4, !tbaa !39
  %274 = mul nsw i32 %273, %249
  %275 = add nsw i32 %274, %250
  %276 = ashr i32 %275, %251
  %277 = add nsw i32 %256, %276
  %278 = icmp slt i32 %259, %277
  %279 = tail call i32 @llvm.smax.i32(i32 %277, i32 0)
  %280 = select i1 %278, i32 %259, i32 %279
  %281 = trunc i32 %280 to i16
  %282 = getelementptr inbounds [16 x [16 x i16]], ptr %260, i64 0, i64 %270, i64 %261
  store i16 %281, ptr %282, align 2, !tbaa !153
  br i1 %266, label %283, label %317

283:                                              ; preds = %269
  %284 = getelementptr inbounds i8, ptr %271, i64 8
  %285 = load i32, ptr %272, align 4, !tbaa !39
  %286 = mul nsw i32 %285, %249
  %287 = add nsw i32 %286, %250
  %288 = ashr i32 %287, %251
  %289 = add nsw i32 %256, %288
  %290 = icmp slt i32 %259, %289
  %291 = tail call i32 @llvm.smax.i32(i32 %289, i32 0)
  %292 = select i1 %290, i32 %259, i32 %291
  %293 = trunc i32 %292 to i16
  %294 = getelementptr inbounds [16 x [16 x i16]], ptr %260, i64 0, i64 %270, i64 %265
  store i16 %293, ptr %294, align 2, !tbaa !153
  %295 = getelementptr inbounds i8, ptr %271, i64 12
  %296 = load i32, ptr %284, align 4, !tbaa !39
  %297 = mul nsw i32 %296, %249
  %298 = add nsw i32 %297, %250
  %299 = ashr i32 %298, %251
  %300 = add nsw i32 %256, %299
  %301 = icmp slt i32 %259, %300
  %302 = tail call i32 @llvm.smax.i32(i32 %300, i32 0)
  %303 = select i1 %301, i32 %259, i32 %302
  %304 = trunc i32 %303 to i16
  %305 = getelementptr inbounds [16 x [16 x i16]], ptr %260, i64 0, i64 %270, i64 %267
  store i16 %304, ptr %305, align 2, !tbaa !153
  %306 = getelementptr inbounds i8, ptr %271, i64 16
  %307 = load i32, ptr %295, align 4, !tbaa !39
  %308 = mul nsw i32 %307, %249
  %309 = add nsw i32 %308, %250
  %310 = ashr i32 %309, %251
  %311 = add nsw i32 %256, %310
  %312 = icmp slt i32 %259, %311
  %313 = tail call i32 @llvm.smax.i32(i32 %311, i32 0)
  %314 = select i1 %312, i32 %259, i32 %313
  %315 = trunc i32 %314 to i16
  %316 = getelementptr inbounds [16 x [16 x i16]], ptr %260, i64 0, i64 %270, i64 %268
  store i16 %315, ptr %316, align 2, !tbaa !153
  br label %317

317:                                              ; preds = %283, %269
  %318 = phi ptr [ %272, %269 ], [ %306, %283 ]
  %319 = add nsw i64 %270, 1
  %320 = icmp slt i64 %319, %264
  br i1 %320, label %269, label %701

321:                                              ; preds = %217, %369
  %322 = phi i64 [ %238, %217 ], [ %371, %369 ]
  %323 = phi ptr [ @LumaPrediction4x4.bw_pred, %217 ], [ %370, %369 ]
  %324 = getelementptr inbounds i8, ptr %323, i64 4
  %325 = load i32, ptr %323, align 4, !tbaa !39
  %326 = mul nsw i32 %325, %223
  %327 = add nsw i32 %326, %224
  %328 = ashr i32 %327, %225
  %329 = add nsw i32 %231, %328
  %330 = icmp slt i32 %234, %329
  %331 = tail call i32 @llvm.smax.i32(i32 %329, i32 0)
  %332 = select i1 %330, i32 %234, i32 %331
  %333 = trunc i32 %332 to i16
  %334 = getelementptr inbounds [16 x [16 x i16]], ptr %235, i64 0, i64 %322, i64 %236
  store i16 %333, ptr %334, align 2, !tbaa !153
  br i1 %241, label %335, label %369

335:                                              ; preds = %321
  %336 = getelementptr inbounds i8, ptr %323, i64 8
  %337 = load i32, ptr %324, align 4, !tbaa !39
  %338 = mul nsw i32 %337, %223
  %339 = add nsw i32 %338, %224
  %340 = ashr i32 %339, %225
  %341 = add nsw i32 %231, %340
  %342 = icmp slt i32 %234, %341
  %343 = tail call i32 @llvm.smax.i32(i32 %341, i32 0)
  %344 = select i1 %342, i32 %234, i32 %343
  %345 = trunc i32 %344 to i16
  %346 = getelementptr inbounds [16 x [16 x i16]], ptr %235, i64 0, i64 %322, i64 %240
  store i16 %345, ptr %346, align 2, !tbaa !153
  %347 = getelementptr inbounds i8, ptr %323, i64 12
  %348 = load i32, ptr %336, align 4, !tbaa !39
  %349 = mul nsw i32 %348, %223
  %350 = add nsw i32 %349, %224
  %351 = ashr i32 %350, %225
  %352 = add nsw i32 %231, %351
  %353 = icmp slt i32 %234, %352
  %354 = tail call i32 @llvm.smax.i32(i32 %352, i32 0)
  %355 = select i1 %353, i32 %234, i32 %354
  %356 = trunc i32 %355 to i16
  %357 = getelementptr inbounds [16 x [16 x i16]], ptr %235, i64 0, i64 %322, i64 %242
  store i16 %356, ptr %357, align 2, !tbaa !153
  %358 = getelementptr inbounds i8, ptr %323, i64 16
  %359 = load i32, ptr %347, align 4, !tbaa !39
  %360 = mul nsw i32 %359, %223
  %361 = add nsw i32 %360, %224
  %362 = ashr i32 %361, %225
  %363 = add nsw i32 %231, %362
  %364 = icmp slt i32 %234, %363
  %365 = tail call i32 @llvm.smax.i32(i32 %363, i32 0)
  %366 = select i1 %364, i32 %234, i32 %365
  %367 = trunc i32 %366 to i16
  %368 = getelementptr inbounds [16 x [16 x i16]], ptr %235, i64 0, i64 %322, i64 %243
  store i16 %367, ptr %368, align 2, !tbaa !153
  br label %369

369:                                              ; preds = %335, %321
  %370 = phi ptr [ %324, %321 ], [ %358, %335 ]
  %371 = add nsw i64 %322, 1
  %372 = icmp slt i64 %371, %239
  br i1 %372, label %321, label %701

373:                                              ; preds = %97
  %374 = load ptr, ptr @img, align 8, !tbaa !6
  %375 = getelementptr inbounds i8, ptr %374, i64 12600
  %376 = sext i32 %0 to i64
  %377 = sext i32 %8 to i64
  %378 = sext i32 %1 to i64
  %379 = sext i32 %9 to i64
  br i1 %50, label %380, label %543

380:                                              ; preds = %373
  %381 = load i32, ptr @LumaPrediction4x4.fw_pred, align 4, !tbaa !39
  %382 = load i32, ptr @LumaPrediction4x4.bw_pred, align 4, !tbaa !39
  %383 = add i32 %381, 1
  %384 = add i32 %383, %382
  %385 = lshr i32 %384, 1
  %386 = trunc i32 %385 to i16
  %387 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %376
  store i16 %386, ptr %387, align 2, !tbaa !153
  %388 = add nsw i64 %376, 1
  %389 = icmp slt i64 %388, %377
  br i1 %389, label %390, label %414

390:                                              ; preds = %380
  %391 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %392 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %393 = add i32 %391, 1
  %394 = add i32 %393, %392
  %395 = lshr i32 %394, 1
  %396 = trunc i32 %395 to i16
  %397 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %388
  store i16 %396, ptr %397, align 2, !tbaa !153
  %398 = add nsw i64 %376, 2
  %399 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %400 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %401 = add i32 %399, 1
  %402 = add i32 %401, %400
  %403 = lshr i32 %402, 1
  %404 = trunc i32 %403 to i16
  %405 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %398
  store i16 %404, ptr %405, align 2, !tbaa !153
  %406 = add nsw i64 %376, 3
  %407 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %408 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %409 = add i32 %407, 1
  %410 = add i32 %409, %408
  %411 = lshr i32 %410, 1
  %412 = trunc i32 %411 to i16
  %413 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %406
  store i16 %412, ptr %413, align 2, !tbaa !153
  br label %414

414:                                              ; preds = %390, %380
  %415 = phi ptr [ getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 4), %380 ], [ getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 16), %390 ]
  %416 = phi ptr [ getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 4), %380 ], [ getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 16), %390 ]
  %417 = add nsw i64 %378, 1
  %418 = icmp slt i64 %417, %379
  br i1 %418, label %419, label %701

419:                                              ; preds = %414
  %420 = getelementptr inbounds i8, ptr %415, i64 4
  %421 = load i32, ptr %415, align 4, !tbaa !39
  %422 = getelementptr inbounds i8, ptr %416, i64 4
  %423 = load i32, ptr %416, align 4, !tbaa !39
  %424 = add i32 %421, 1
  %425 = add i32 %424, %423
  %426 = lshr i32 %425, 1
  %427 = trunc i32 %426 to i16
  %428 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %417, i64 %376
  store i16 %427, ptr %428, align 2, !tbaa !153
  br i1 %389, label %429, label %459

429:                                              ; preds = %419
  %430 = getelementptr inbounds i8, ptr %415, i64 8
  %431 = load i32, ptr %420, align 4, !tbaa !39
  %432 = getelementptr inbounds i8, ptr %416, i64 8
  %433 = load i32, ptr %422, align 4, !tbaa !39
  %434 = add i32 %431, 1
  %435 = add i32 %434, %433
  %436 = lshr i32 %435, 1
  %437 = trunc i32 %436 to i16
  %438 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %417, i64 %388
  store i16 %437, ptr %438, align 2, !tbaa !153
  %439 = add nsw i64 %376, 2
  %440 = getelementptr inbounds i8, ptr %415, i64 12
  %441 = load i32, ptr %430, align 4, !tbaa !39
  %442 = getelementptr inbounds i8, ptr %416, i64 12
  %443 = load i32, ptr %432, align 4, !tbaa !39
  %444 = add i32 %441, 1
  %445 = add i32 %444, %443
  %446 = lshr i32 %445, 1
  %447 = trunc i32 %446 to i16
  %448 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %417, i64 %439
  store i16 %447, ptr %448, align 2, !tbaa !153
  %449 = add nsw i64 %376, 3
  %450 = getelementptr inbounds i8, ptr %415, i64 16
  %451 = load i32, ptr %440, align 4, !tbaa !39
  %452 = getelementptr inbounds i8, ptr %416, i64 16
  %453 = load i32, ptr %442, align 4, !tbaa !39
  %454 = add i32 %451, 1
  %455 = add i32 %454, %453
  %456 = lshr i32 %455, 1
  %457 = trunc i32 %456 to i16
  %458 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %417, i64 %449
  store i16 %457, ptr %458, align 2, !tbaa !153
  br label %459

459:                                              ; preds = %429, %419
  %460 = phi ptr [ %420, %419 ], [ %450, %429 ]
  %461 = phi ptr [ %422, %419 ], [ %452, %429 ]
  %462 = add nsw i64 %378, 2
  %463 = getelementptr inbounds i8, ptr %460, i64 4
  %464 = load i32, ptr %460, align 4, !tbaa !39
  %465 = getelementptr inbounds i8, ptr %461, i64 4
  %466 = load i32, ptr %461, align 4, !tbaa !39
  %467 = add i32 %464, 1
  %468 = add i32 %467, %466
  %469 = lshr i32 %468, 1
  %470 = trunc i32 %469 to i16
  %471 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %462, i64 %376
  store i16 %470, ptr %471, align 2, !tbaa !153
  br i1 %389, label %472, label %502

472:                                              ; preds = %459
  %473 = getelementptr inbounds i8, ptr %460, i64 8
  %474 = load i32, ptr %463, align 4, !tbaa !39
  %475 = getelementptr inbounds i8, ptr %461, i64 8
  %476 = load i32, ptr %465, align 4, !tbaa !39
  %477 = add i32 %474, 1
  %478 = add i32 %477, %476
  %479 = lshr i32 %478, 1
  %480 = trunc i32 %479 to i16
  %481 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %462, i64 %388
  store i16 %480, ptr %481, align 2, !tbaa !153
  %482 = add nsw i64 %376, 2
  %483 = getelementptr inbounds i8, ptr %460, i64 12
  %484 = load i32, ptr %473, align 4, !tbaa !39
  %485 = getelementptr inbounds i8, ptr %461, i64 12
  %486 = load i32, ptr %475, align 4, !tbaa !39
  %487 = add i32 %484, 1
  %488 = add i32 %487, %486
  %489 = lshr i32 %488, 1
  %490 = trunc i32 %489 to i16
  %491 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %462, i64 %482
  store i16 %490, ptr %491, align 2, !tbaa !153
  %492 = add nsw i64 %376, 3
  %493 = getelementptr inbounds i8, ptr %460, i64 16
  %494 = load i32, ptr %483, align 4, !tbaa !39
  %495 = getelementptr inbounds i8, ptr %461, i64 16
  %496 = load i32, ptr %485, align 4, !tbaa !39
  %497 = add i32 %494, 1
  %498 = add i32 %497, %496
  %499 = lshr i32 %498, 1
  %500 = trunc i32 %499 to i16
  %501 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %462, i64 %492
  store i16 %500, ptr %501, align 2, !tbaa !153
  br label %502

502:                                              ; preds = %472, %459
  %503 = phi ptr [ %463, %459 ], [ %493, %472 ]
  %504 = phi ptr [ %465, %459 ], [ %495, %472 ]
  %505 = add nsw i64 %378, 3
  %506 = load i32, ptr %503, align 4, !tbaa !39
  %507 = load i32, ptr %504, align 4, !tbaa !39
  %508 = add i32 %506, 1
  %509 = add i32 %508, %507
  %510 = lshr i32 %509, 1
  %511 = trunc i32 %510 to i16
  %512 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %505, i64 %376
  store i16 %511, ptr %512, align 2, !tbaa !153
  br i1 %389, label %513, label %701

513:                                              ; preds = %502
  %514 = getelementptr inbounds i8, ptr %504, i64 4
  %515 = getelementptr inbounds i8, ptr %503, i64 4
  %516 = getelementptr inbounds i8, ptr %503, i64 8
  %517 = load i32, ptr %515, align 4, !tbaa !39
  %518 = getelementptr inbounds i8, ptr %504, i64 8
  %519 = load i32, ptr %514, align 4, !tbaa !39
  %520 = add i32 %517, 1
  %521 = add i32 %520, %519
  %522 = lshr i32 %521, 1
  %523 = trunc i32 %522 to i16
  %524 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %505, i64 %388
  store i16 %523, ptr %524, align 2, !tbaa !153
  %525 = add nsw i64 %376, 2
  %526 = getelementptr inbounds i8, ptr %503, i64 12
  %527 = load i32, ptr %516, align 4, !tbaa !39
  %528 = getelementptr inbounds i8, ptr %504, i64 12
  %529 = load i32, ptr %518, align 4, !tbaa !39
  %530 = add i32 %527, 1
  %531 = add i32 %530, %529
  %532 = lshr i32 %531, 1
  %533 = trunc i32 %532 to i16
  %534 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %505, i64 %525
  store i16 %533, ptr %534, align 2, !tbaa !153
  %535 = add nsw i64 %376, 3
  %536 = load i32, ptr %526, align 4, !tbaa !39
  %537 = load i32, ptr %528, align 4, !tbaa !39
  %538 = add i32 %536, 1
  %539 = add i32 %538, %537
  %540 = lshr i32 %539, 1
  %541 = trunc i32 %540 to i16
  %542 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %505, i64 %535
  store i16 %541, ptr %542, align 2, !tbaa !153
  br label %701

543:                                              ; preds = %373
  %544 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %376
  %545 = add nsw i64 %376, 1
  %546 = icmp slt i64 %545, %377
  br i1 %65, label %550, label %547

547:                                              ; preds = %543
  %548 = load i32, ptr @LumaPrediction4x4.bw_pred, align 4, !tbaa !39
  %549 = trunc i32 %548 to i16
  store i16 %549, ptr %544, align 2, !tbaa !153
  br i1 %546, label %627, label %641

550:                                              ; preds = %543
  %551 = load i32, ptr @LumaPrediction4x4.fw_pred, align 4, !tbaa !39
  %552 = trunc i32 %551 to i16
  store i16 %552, ptr %544, align 2, !tbaa !153
  br i1 %546, label %553, label %567

553:                                              ; preds = %550
  %554 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %555 = trunc i32 %554 to i16
  %556 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %545
  store i16 %555, ptr %556, align 2, !tbaa !153
  %557 = add nsw i64 %376, 2
  %558 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %559 = trunc i32 %558 to i16
  %560 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %557
  store i16 %559, ptr %560, align 2, !tbaa !153
  %561 = add nsw i64 %376, 3
  %562 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %563 = trunc i32 %562 to i16
  %564 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %561
  store i16 %563, ptr %564, align 2, !tbaa !153
  %565 = add nsw i64 %378, 1
  %566 = icmp slt i64 %565, %379
  br i1 %566, label %582, label %701

567:                                              ; preds = %550
  %568 = add nsw i64 %378, 1
  %569 = icmp slt i64 %568, %379
  br i1 %569, label %570, label %701

570:                                              ; preds = %567
  %571 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %572 = trunc i32 %571 to i16
  %573 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %568, i64 %376
  store i16 %572, ptr %573, align 2, !tbaa !153
  %574 = add nsw i64 %378, 2
  %575 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %576 = trunc i32 %575 to i16
  %577 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %574, i64 %376
  store i16 %576, ptr %577, align 2, !tbaa !153
  %578 = add nsw i64 %378, 3
  %579 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %580 = trunc i32 %579 to i16
  %581 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %578, i64 %376
  store i16 %580, ptr %581, align 2, !tbaa !153
  br label %701

582:                                              ; preds = %553
  %583 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 16), align 4, !tbaa !39
  %584 = trunc i32 %583 to i16
  %585 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %565, i64 %376
  store i16 %584, ptr %585, align 2, !tbaa !153
  %586 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 20), align 4, !tbaa !39
  %587 = trunc i32 %586 to i16
  %588 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %565, i64 %545
  store i16 %587, ptr %588, align 2, !tbaa !153
  %589 = add nsw i64 %376, 2
  %590 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 24), align 4, !tbaa !39
  %591 = trunc i32 %590 to i16
  %592 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %565, i64 %589
  store i16 %591, ptr %592, align 2, !tbaa !153
  %593 = add nsw i64 %376, 3
  %594 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 28), align 4, !tbaa !39
  %595 = trunc i32 %594 to i16
  %596 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %565, i64 %593
  store i16 %595, ptr %596, align 2, !tbaa !153
  %597 = add nsw i64 %378, 2
  %598 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 32), align 4, !tbaa !39
  %599 = trunc i32 %598 to i16
  %600 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %597, i64 %376
  store i16 %599, ptr %600, align 2, !tbaa !153
  %601 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 36), align 4, !tbaa !39
  %602 = trunc i32 %601 to i16
  %603 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %597, i64 %545
  store i16 %602, ptr %603, align 2, !tbaa !153
  %604 = add nsw i64 %376, 2
  %605 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 40), align 4, !tbaa !39
  %606 = trunc i32 %605 to i16
  %607 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %597, i64 %604
  store i16 %606, ptr %607, align 2, !tbaa !153
  %608 = add nsw i64 %376, 3
  %609 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 44), align 4, !tbaa !39
  %610 = trunc i32 %609 to i16
  %611 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %597, i64 %608
  store i16 %610, ptr %611, align 2, !tbaa !153
  %612 = add nsw i64 %378, 3
  %613 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 48), align 4, !tbaa !39
  %614 = trunc i32 %613 to i16
  %615 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %612, i64 %376
  store i16 %614, ptr %615, align 2, !tbaa !153
  %616 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 52), align 4, !tbaa !39
  %617 = trunc i32 %616 to i16
  %618 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %612, i64 %545
  store i16 %617, ptr %618, align 2, !tbaa !153
  %619 = add nsw i64 %376, 2
  %620 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 56), align 4, !tbaa !39
  %621 = trunc i32 %620 to i16
  %622 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %612, i64 %619
  store i16 %621, ptr %622, align 2, !tbaa !153
  %623 = add nsw i64 %376, 3
  %624 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.fw_pred, i64 60), align 4, !tbaa !39
  %625 = trunc i32 %624 to i16
  %626 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %612, i64 %623
  store i16 %625, ptr %626, align 2, !tbaa !153
  br label %701

627:                                              ; preds = %547
  %628 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %629 = trunc i32 %628 to i16
  %630 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %545
  store i16 %629, ptr %630, align 2, !tbaa !153
  %631 = add nsw i64 %376, 2
  %632 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %633 = trunc i32 %632 to i16
  %634 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %631
  store i16 %633, ptr %634, align 2, !tbaa !153
  %635 = add nsw i64 %376, 3
  %636 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %637 = trunc i32 %636 to i16
  %638 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %378, i64 %635
  store i16 %637, ptr %638, align 2, !tbaa !153
  %639 = add nsw i64 %378, 1
  %640 = icmp slt i64 %639, %379
  br i1 %640, label %656, label %701

641:                                              ; preds = %547
  %642 = add nsw i64 %378, 1
  %643 = icmp slt i64 %642, %379
  br i1 %643, label %644, label %701

644:                                              ; preds = %641
  %645 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %646 = trunc i32 %645 to i16
  %647 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %642, i64 %376
  store i16 %646, ptr %647, align 2, !tbaa !153
  %648 = add nsw i64 %378, 2
  %649 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %650 = trunc i32 %649 to i16
  %651 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %648, i64 %376
  store i16 %650, ptr %651, align 2, !tbaa !153
  %652 = add nsw i64 %378, 3
  %653 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %654 = trunc i32 %653 to i16
  %655 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %652, i64 %376
  store i16 %654, ptr %655, align 2, !tbaa !153
  br label %701

656:                                              ; preds = %627
  %657 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 16), align 4, !tbaa !39
  %658 = trunc i32 %657 to i16
  %659 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %639, i64 %376
  store i16 %658, ptr %659, align 2, !tbaa !153
  %660 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 20), align 4, !tbaa !39
  %661 = trunc i32 %660 to i16
  %662 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %639, i64 %545
  store i16 %661, ptr %662, align 2, !tbaa !153
  %663 = add nsw i64 %376, 2
  %664 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 24), align 4, !tbaa !39
  %665 = trunc i32 %664 to i16
  %666 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %639, i64 %663
  store i16 %665, ptr %666, align 2, !tbaa !153
  %667 = add nsw i64 %376, 3
  %668 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 28), align 4, !tbaa !39
  %669 = trunc i32 %668 to i16
  %670 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %639, i64 %667
  store i16 %669, ptr %670, align 2, !tbaa !153
  %671 = add nsw i64 %378, 2
  %672 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 32), align 4, !tbaa !39
  %673 = trunc i32 %672 to i16
  %674 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %671, i64 %376
  store i16 %673, ptr %674, align 2, !tbaa !153
  %675 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 36), align 4, !tbaa !39
  %676 = trunc i32 %675 to i16
  %677 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %671, i64 %545
  store i16 %676, ptr %677, align 2, !tbaa !153
  %678 = add nsw i64 %376, 2
  %679 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 40), align 4, !tbaa !39
  %680 = trunc i32 %679 to i16
  %681 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %671, i64 %678
  store i16 %680, ptr %681, align 2, !tbaa !153
  %682 = add nsw i64 %376, 3
  %683 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 44), align 4, !tbaa !39
  %684 = trunc i32 %683 to i16
  %685 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %671, i64 %682
  store i16 %684, ptr %685, align 2, !tbaa !153
  %686 = add nsw i64 %378, 3
  %687 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 48), align 4, !tbaa !39
  %688 = trunc i32 %687 to i16
  %689 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %686, i64 %376
  store i16 %688, ptr %689, align 2, !tbaa !153
  %690 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 52), align 4, !tbaa !39
  %691 = trunc i32 %690 to i16
  %692 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %686, i64 %545
  store i16 %691, ptr %692, align 2, !tbaa !153
  %693 = add nsw i64 %376, 2
  %694 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 56), align 4, !tbaa !39
  %695 = trunc i32 %694 to i16
  %696 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %686, i64 %693
  store i16 %695, ptr %696, align 2, !tbaa !153
  %697 = add nsw i64 %376, 3
  %698 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4.bw_pred, i64 60), align 4, !tbaa !39
  %699 = trunc i32 %698 to i16
  %700 = getelementptr inbounds [16 x [16 x i16]], ptr %375, i64 0, i64 %686, i64 %697
  store i16 %699, ptr %700, align 2, !tbaa !153
  br label %701

701:                                              ; preds = %369, %317, %210, %627, %641, %644, %656, %553, %567, %570, %582, %414, %513, %502
  ret void
}

; Function Attrs: nounwind
define dso_local void @LumaPrediction4x4Bi(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i32 noundef signext %7) local_unnamed_addr #0 {
  %9 = add nsw i32 %0, 4
  %10 = add nsw i32 %1, 4
  %11 = load ptr, ptr @img, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 168
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = add nsw i32 %13, %0
  %15 = getelementptr inbounds i8, ptr %11, i64 172
  %16 = load i32, ptr %15, align 4, !tbaa !28
  %17 = add nsw i32 %16, %1
  %18 = ashr i32 %0, 2
  %19 = ashr i32 %1, 2
  %20 = getelementptr inbounds i8, ptr %11, i64 31576
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds i8, ptr %11, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %21, i64 %24
  %26 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 192
  %28 = load i32, ptr %27, align 8, !tbaa !157
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %8
  %31 = getelementptr inbounds i8, ptr %11, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !42
  switch i32 %32, label %33 [
    i32 0, label %41
    i32 3, label %41
  ]

33:                                               ; preds = %30, %8
  %34 = getelementptr inbounds i8, ptr %26, i64 196
  %35 = load i32, ptr %34, align 4, !tbaa !158
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %11, i64 24
  %39 = load i32, ptr %38, align 8, !tbaa !42
  %40 = icmp eq i32 %39, 1
  br label %41

41:                                               ; preds = %30, %30, %33, %37
  %42 = phi i1 [ true, %30 ], [ false, %33 ], [ %40, %37 ], [ true, %30 ]
  %43 = icmp eq i32 %7, 0
  %44 = sext i32 %19 to i64
  %45 = sext i32 %18 to i64
  %46 = select i1 %43, i64 89352, i64 89344
  %47 = getelementptr inbounds i8, ptr %11, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds ptr, ptr %48, i64 %44
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds ptr, ptr %50, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = icmp eq i32 %2, 0
  %54 = icmp eq i32 %2, 2
  switch i32 %2, label %68 [
    i32 2, label %55
    i32 0, label %55
  ]

55:                                               ; preds = %41, %41
  %56 = load ptr, ptr %52, align 8, !tbaa !6
  %57 = sext i16 %5 to i64
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = sext i32 %3 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %25, i64 428
  %64 = load i32, ptr %63, align 4, !tbaa !29
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  tail call void @OneComponentLumaPrediction4x4(ptr noundef nonnull @LumaPrediction4x4Bi.fw_pred, i32 noundef signext %14, i32 noundef signext %17, ptr noundef %62, i16 noundef signext %5, ptr noundef %67)
  br label %68

68:                                               ; preds = %41, %55
  %69 = add i32 %2, -1
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %52, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = sext i16 %6 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = sext i32 %4 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %25, i64 428
  %81 = load i32, ptr %80, align 4, !tbaa !29
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  tail call void @OneComponentLumaPrediction4x4(ptr noundef nonnull @LumaPrediction4x4Bi.bw_pred, i32 noundef signext %14, i32 noundef signext %17, ptr noundef %79, i16 noundef signext %6, ptr noundef %85)
  br label %86

86:                                               ; preds = %68, %71
  br i1 %42, label %87, label %362

87:                                               ; preds = %86
  br i1 %54, label %88, label %204

88:                                               ; preds = %87
  %89 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = sext i16 %5 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = sext i16 %6 to i64
  %95 = getelementptr inbounds ptr, ptr %93, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = load i32, ptr %96, align 4, !tbaa !39
  %98 = getelementptr inbounds i8, ptr %89, i64 8
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = getelementptr inbounds ptr, ptr %99, i64 %91
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds ptr, ptr %101, i64 %94
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = load i32, ptr %103, align 4, !tbaa !39
  %105 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %106 = shl nsw i32 %105, 1
  %107 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %108 = add nsw i32 %107, 1
  %109 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %91
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = getelementptr inbounds i8, ptr %109, i64 8
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds ptr, ptr %115, i64 %94
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = load i32, ptr %117, align 4, !tbaa !39
  %119 = add i32 %113, 1
  %120 = add i32 %119, %118
  %121 = ashr i32 %120, 1
  %122 = load ptr, ptr @img, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 90532
  %124 = load i32, ptr %123, align 4, !tbaa !37
  %125 = getelementptr inbounds i8, ptr %122, i64 12600
  %126 = sext i32 %0 to i64
  %127 = sext i32 %9 to i64
  %128 = sext i32 %1 to i64
  %129 = sext i32 %10 to i64
  %130 = add nsw i64 %126, 1
  %131 = icmp slt i64 %130, %127
  %132 = add nsw i64 %126, 2
  %133 = add nsw i64 %126, 3
  br label %134

134:                                              ; preds = %88, %199
  %135 = phi i64 [ %128, %88 ], [ %202, %199 ]
  %136 = phi ptr [ @LumaPrediction4x4Bi.fw_pred, %88 ], [ %200, %199 ]
  %137 = phi ptr [ @LumaPrediction4x4Bi.bw_pred, %88 ], [ %201, %199 ]
  %138 = getelementptr inbounds i8, ptr %136, i64 4
  %139 = load i32, ptr %136, align 4, !tbaa !39
  %140 = mul nsw i32 %139, %97
  %141 = getelementptr inbounds i8, ptr %137, i64 4
  %142 = load i32, ptr %137, align 4, !tbaa !39
  %143 = mul nsw i32 %142, %104
  %144 = add nsw i32 %143, %140
  %145 = add nsw i32 %144, %106
  %146 = ashr i32 %145, %108
  %147 = add nsw i32 %121, %146
  %148 = icmp slt i32 %124, %147
  %149 = tail call i32 @llvm.smax.i32(i32 %147, i32 0)
  %150 = select i1 %148, i32 %124, i32 %149
  %151 = trunc i32 %150 to i16
  %152 = getelementptr inbounds [16 x [16 x i16]], ptr %125, i64 0, i64 %135, i64 %126
  store i16 %151, ptr %152, align 2, !tbaa !153
  br i1 %131, label %153, label %199

153:                                              ; preds = %134
  %154 = getelementptr inbounds i8, ptr %136, i64 8
  %155 = load i32, ptr %138, align 4, !tbaa !39
  %156 = mul nsw i32 %155, %97
  %157 = getelementptr inbounds i8, ptr %137, i64 8
  %158 = load i32, ptr %141, align 4, !tbaa !39
  %159 = mul nsw i32 %158, %104
  %160 = add nsw i32 %159, %156
  %161 = add nsw i32 %160, %106
  %162 = ashr i32 %161, %108
  %163 = add nsw i32 %121, %162
  %164 = icmp slt i32 %124, %163
  %165 = tail call i32 @llvm.smax.i32(i32 %163, i32 0)
  %166 = select i1 %164, i32 %124, i32 %165
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds [16 x [16 x i16]], ptr %125, i64 0, i64 %135, i64 %130
  store i16 %167, ptr %168, align 2, !tbaa !153
  %169 = getelementptr inbounds i8, ptr %136, i64 12
  %170 = load i32, ptr %154, align 4, !tbaa !39
  %171 = mul nsw i32 %170, %97
  %172 = getelementptr inbounds i8, ptr %137, i64 12
  %173 = load i32, ptr %157, align 4, !tbaa !39
  %174 = mul nsw i32 %173, %104
  %175 = add nsw i32 %174, %171
  %176 = add nsw i32 %175, %106
  %177 = ashr i32 %176, %108
  %178 = add nsw i32 %121, %177
  %179 = icmp slt i32 %124, %178
  %180 = tail call i32 @llvm.smax.i32(i32 %178, i32 0)
  %181 = select i1 %179, i32 %124, i32 %180
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds [16 x [16 x i16]], ptr %125, i64 0, i64 %135, i64 %132
  store i16 %182, ptr %183, align 2, !tbaa !153
  %184 = getelementptr inbounds i8, ptr %136, i64 16
  %185 = load i32, ptr %169, align 4, !tbaa !39
  %186 = mul nsw i32 %185, %97
  %187 = getelementptr inbounds i8, ptr %137, i64 16
  %188 = load i32, ptr %172, align 4, !tbaa !39
  %189 = mul nsw i32 %188, %104
  %190 = add nsw i32 %189, %186
  %191 = add nsw i32 %190, %106
  %192 = ashr i32 %191, %108
  %193 = add nsw i32 %121, %192
  %194 = icmp slt i32 %124, %193
  %195 = tail call i32 @llvm.smax.i32(i32 %193, i32 0)
  %196 = select i1 %194, i32 %124, i32 %195
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds [16 x [16 x i16]], ptr %125, i64 0, i64 %135, i64 %133
  store i16 %197, ptr %198, align 2, !tbaa !153
  br label %199

199:                                              ; preds = %153, %134
  %200 = phi ptr [ %138, %134 ], [ %184, %153 ]
  %201 = phi ptr [ %141, %134 ], [ %187, %153 ]
  %202 = add nsw i64 %135, 1
  %203 = icmp slt i64 %202, %129
  br i1 %203, label %134, label %573

204:                                              ; preds = %87
  %205 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  br i1 %53, label %233, label %206

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, ptr %205, i64 8
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  %209 = sext i16 %6 to i64
  %210 = getelementptr inbounds ptr, ptr %208, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load i32, ptr %211, align 4, !tbaa !39
  %213 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %214 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %215 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 8
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = getelementptr inbounds ptr, ptr %217, i64 %209
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = load i32, ptr %219, align 4, !tbaa !39
  %221 = load ptr, ptr @img, align 8, !tbaa !6
  %222 = getelementptr inbounds i8, ptr %221, i64 90532
  %223 = load i32, ptr %222, align 4, !tbaa !37
  %224 = getelementptr inbounds i8, ptr %221, i64 12600
  %225 = sext i32 %0 to i64
  %226 = sext i32 %9 to i64
  %227 = sext i32 %1 to i64
  %228 = sext i32 %10 to i64
  %229 = add nsw i64 %225, 1
  %230 = icmp slt i64 %229, %226
  %231 = add nsw i64 %225, 2
  %232 = add nsw i64 %225, 3
  br label %310

233:                                              ; preds = %204
  %234 = load ptr, ptr %205, align 8, !tbaa !6
  %235 = sext i16 %5 to i64
  %236 = getelementptr inbounds ptr, ptr %234, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = load i32, ptr %237, align 4, !tbaa !39
  %239 = load i32, ptr @wp_luma_round, align 4, !tbaa !39
  %240 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !39
  %241 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = getelementptr inbounds ptr, ptr %242, i64 %235
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = load i32, ptr %244, align 4, !tbaa !39
  %246 = load ptr, ptr @img, align 8, !tbaa !6
  %247 = getelementptr inbounds i8, ptr %246, i64 90532
  %248 = load i32, ptr %247, align 4, !tbaa !37
  %249 = getelementptr inbounds i8, ptr %246, i64 12600
  %250 = sext i32 %0 to i64
  %251 = sext i32 %9 to i64
  %252 = sext i32 %1 to i64
  %253 = sext i32 %10 to i64
  %254 = add nsw i64 %250, 1
  %255 = icmp slt i64 %254, %251
  %256 = add nsw i64 %250, 2
  %257 = add nsw i64 %250, 3
  br label %258

258:                                              ; preds = %233, %306
  %259 = phi i64 [ %252, %233 ], [ %308, %306 ]
  %260 = phi ptr [ @LumaPrediction4x4Bi.fw_pred, %233 ], [ %307, %306 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 4
  %262 = load i32, ptr %260, align 4, !tbaa !39
  %263 = mul nsw i32 %262, %238
  %264 = add nsw i32 %263, %239
  %265 = ashr i32 %264, %240
  %266 = add nsw i32 %245, %265
  %267 = icmp slt i32 %248, %266
  %268 = tail call i32 @llvm.smax.i32(i32 %266, i32 0)
  %269 = select i1 %267, i32 %248, i32 %268
  %270 = trunc i32 %269 to i16
  %271 = getelementptr inbounds [16 x [16 x i16]], ptr %249, i64 0, i64 %259, i64 %250
  store i16 %270, ptr %271, align 2, !tbaa !153
  br i1 %255, label %272, label %306

272:                                              ; preds = %258
  %273 = getelementptr inbounds i8, ptr %260, i64 8
  %274 = load i32, ptr %261, align 4, !tbaa !39
  %275 = mul nsw i32 %274, %238
  %276 = add nsw i32 %275, %239
  %277 = ashr i32 %276, %240
  %278 = add nsw i32 %245, %277
  %279 = icmp slt i32 %248, %278
  %280 = tail call i32 @llvm.smax.i32(i32 %278, i32 0)
  %281 = select i1 %279, i32 %248, i32 %280
  %282 = trunc i32 %281 to i16
  %283 = getelementptr inbounds [16 x [16 x i16]], ptr %249, i64 0, i64 %259, i64 %254
  store i16 %282, ptr %283, align 2, !tbaa !153
  %284 = getelementptr inbounds i8, ptr %260, i64 12
  %285 = load i32, ptr %273, align 4, !tbaa !39
  %286 = mul nsw i32 %285, %238
  %287 = add nsw i32 %286, %239
  %288 = ashr i32 %287, %240
  %289 = add nsw i32 %245, %288
  %290 = icmp slt i32 %248, %289
  %291 = tail call i32 @llvm.smax.i32(i32 %289, i32 0)
  %292 = select i1 %290, i32 %248, i32 %291
  %293 = trunc i32 %292 to i16
  %294 = getelementptr inbounds [16 x [16 x i16]], ptr %249, i64 0, i64 %259, i64 %256
  store i16 %293, ptr %294, align 2, !tbaa !153
  %295 = getelementptr inbounds i8, ptr %260, i64 16
  %296 = load i32, ptr %284, align 4, !tbaa !39
  %297 = mul nsw i32 %296, %238
  %298 = add nsw i32 %297, %239
  %299 = ashr i32 %298, %240
  %300 = add nsw i32 %245, %299
  %301 = icmp slt i32 %248, %300
  %302 = tail call i32 @llvm.smax.i32(i32 %300, i32 0)
  %303 = select i1 %301, i32 %248, i32 %302
  %304 = trunc i32 %303 to i16
  %305 = getelementptr inbounds [16 x [16 x i16]], ptr %249, i64 0, i64 %259, i64 %257
  store i16 %304, ptr %305, align 2, !tbaa !153
  br label %306

306:                                              ; preds = %272, %258
  %307 = phi ptr [ %261, %258 ], [ %295, %272 ]
  %308 = add nsw i64 %259, 1
  %309 = icmp slt i64 %308, %253
  br i1 %309, label %258, label %573

310:                                              ; preds = %206, %358
  %311 = phi i64 [ %227, %206 ], [ %360, %358 ]
  %312 = phi ptr [ @LumaPrediction4x4Bi.bw_pred, %206 ], [ %359, %358 ]
  %313 = getelementptr inbounds i8, ptr %312, i64 4
  %314 = load i32, ptr %312, align 4, !tbaa !39
  %315 = mul nsw i32 %314, %212
  %316 = add nsw i32 %315, %213
  %317 = ashr i32 %316, %214
  %318 = add nsw i32 %220, %317
  %319 = icmp slt i32 %223, %318
  %320 = tail call i32 @llvm.smax.i32(i32 %318, i32 0)
  %321 = select i1 %319, i32 %223, i32 %320
  %322 = trunc i32 %321 to i16
  %323 = getelementptr inbounds [16 x [16 x i16]], ptr %224, i64 0, i64 %311, i64 %225
  store i16 %322, ptr %323, align 2, !tbaa !153
  br i1 %230, label %324, label %358

324:                                              ; preds = %310
  %325 = getelementptr inbounds i8, ptr %312, i64 8
  %326 = load i32, ptr %313, align 4, !tbaa !39
  %327 = mul nsw i32 %326, %212
  %328 = add nsw i32 %327, %213
  %329 = ashr i32 %328, %214
  %330 = add nsw i32 %220, %329
  %331 = icmp slt i32 %223, %330
  %332 = tail call i32 @llvm.smax.i32(i32 %330, i32 0)
  %333 = select i1 %331, i32 %223, i32 %332
  %334 = trunc i32 %333 to i16
  %335 = getelementptr inbounds [16 x [16 x i16]], ptr %224, i64 0, i64 %311, i64 %229
  store i16 %334, ptr %335, align 2, !tbaa !153
  %336 = getelementptr inbounds i8, ptr %312, i64 12
  %337 = load i32, ptr %325, align 4, !tbaa !39
  %338 = mul nsw i32 %337, %212
  %339 = add nsw i32 %338, %213
  %340 = ashr i32 %339, %214
  %341 = add nsw i32 %220, %340
  %342 = icmp slt i32 %223, %341
  %343 = tail call i32 @llvm.smax.i32(i32 %341, i32 0)
  %344 = select i1 %342, i32 %223, i32 %343
  %345 = trunc i32 %344 to i16
  %346 = getelementptr inbounds [16 x [16 x i16]], ptr %224, i64 0, i64 %311, i64 %231
  store i16 %345, ptr %346, align 2, !tbaa !153
  %347 = getelementptr inbounds i8, ptr %312, i64 16
  %348 = load i32, ptr %336, align 4, !tbaa !39
  %349 = mul nsw i32 %348, %212
  %350 = add nsw i32 %349, %213
  %351 = ashr i32 %350, %214
  %352 = add nsw i32 %220, %351
  %353 = icmp slt i32 %223, %352
  %354 = tail call i32 @llvm.smax.i32(i32 %352, i32 0)
  %355 = select i1 %353, i32 %223, i32 %354
  %356 = trunc i32 %355 to i16
  %357 = getelementptr inbounds [16 x [16 x i16]], ptr %224, i64 0, i64 %311, i64 %232
  store i16 %356, ptr %357, align 2, !tbaa !153
  br label %358

358:                                              ; preds = %324, %310
  %359 = phi ptr [ %313, %310 ], [ %347, %324 ]
  %360 = add nsw i64 %311, 1
  %361 = icmp slt i64 %360, %228
  br i1 %361, label %310, label %573

362:                                              ; preds = %86
  %363 = load ptr, ptr @img, align 8, !tbaa !6
  %364 = getelementptr inbounds i8, ptr %363, i64 12600
  %365 = sext i32 %0 to i64
  %366 = sext i32 %9 to i64
  %367 = sext i32 %1 to i64
  %368 = sext i32 %10 to i64
  br i1 %54, label %369, label %420

369:                                              ; preds = %362
  %370 = add nsw i64 %365, 1
  %371 = icmp slt i64 %370, %366
  %372 = add nsw i64 %365, 2
  %373 = add nsw i64 %365, 3
  br label %374

374:                                              ; preds = %369, %415
  %375 = phi i64 [ %367, %369 ], [ %418, %415 ]
  %376 = phi ptr [ @LumaPrediction4x4Bi.fw_pred, %369 ], [ %416, %415 ]
  %377 = phi ptr [ @LumaPrediction4x4Bi.bw_pred, %369 ], [ %417, %415 ]
  %378 = getelementptr inbounds i8, ptr %376, i64 4
  %379 = load i32, ptr %376, align 4, !tbaa !39
  %380 = getelementptr inbounds i8, ptr %377, i64 4
  %381 = load i32, ptr %377, align 4, !tbaa !39
  %382 = add i32 %379, 1
  %383 = add i32 %382, %381
  %384 = sdiv i32 %383, 2
  %385 = trunc i32 %384 to i16
  %386 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %375, i64 %365
  store i16 %385, ptr %386, align 2, !tbaa !153
  br i1 %371, label %387, label %415

387:                                              ; preds = %374
  %388 = getelementptr inbounds i8, ptr %376, i64 8
  %389 = load i32, ptr %378, align 4, !tbaa !39
  %390 = getelementptr inbounds i8, ptr %377, i64 8
  %391 = load i32, ptr %380, align 4, !tbaa !39
  %392 = add i32 %389, 1
  %393 = add i32 %392, %391
  %394 = sdiv i32 %393, 2
  %395 = trunc i32 %394 to i16
  %396 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %375, i64 %370
  store i16 %395, ptr %396, align 2, !tbaa !153
  %397 = getelementptr inbounds i8, ptr %376, i64 12
  %398 = load i32, ptr %388, align 4, !tbaa !39
  %399 = getelementptr inbounds i8, ptr %377, i64 12
  %400 = load i32, ptr %390, align 4, !tbaa !39
  %401 = add i32 %398, 1
  %402 = add i32 %401, %400
  %403 = sdiv i32 %402, 2
  %404 = trunc i32 %403 to i16
  %405 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %375, i64 %372
  store i16 %404, ptr %405, align 2, !tbaa !153
  %406 = getelementptr inbounds i8, ptr %376, i64 16
  %407 = load i32, ptr %397, align 4, !tbaa !39
  %408 = getelementptr inbounds i8, ptr %377, i64 16
  %409 = load i32, ptr %399, align 4, !tbaa !39
  %410 = add i32 %407, 1
  %411 = add i32 %410, %409
  %412 = sdiv i32 %411, 2
  %413 = trunc i32 %412 to i16
  %414 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %375, i64 %373
  store i16 %413, ptr %414, align 2, !tbaa !153
  br label %415

415:                                              ; preds = %387, %374
  %416 = phi ptr [ %378, %374 ], [ %406, %387 ]
  %417 = phi ptr [ %380, %374 ], [ %408, %387 ]
  %418 = add nsw i64 %375, 1
  %419 = icmp slt i64 %418, %368
  br i1 %419, label %374, label %573

420:                                              ; preds = %362
  %421 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %365
  %422 = add nsw i64 %365, 1
  %423 = icmp slt i64 %422, %366
  br i1 %53, label %427, label %424

424:                                              ; preds = %420
  %425 = load i32, ptr @LumaPrediction4x4Bi.bw_pred, align 4, !tbaa !39
  %426 = trunc i32 %425 to i16
  store i16 %426, ptr %421, align 2, !tbaa !153
  br i1 %423, label %498, label %512

427:                                              ; preds = %420
  %428 = load i32, ptr @LumaPrediction4x4Bi.fw_pred, align 4, !tbaa !39
  %429 = trunc i32 %428 to i16
  store i16 %429, ptr %421, align 2, !tbaa !153
  br i1 %423, label %430, label %444

430:                                              ; preds = %427
  %431 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 4), align 4, !tbaa !39
  %432 = trunc i32 %431 to i16
  %433 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %422
  store i16 %432, ptr %433, align 2, !tbaa !153
  %434 = add nsw i64 %365, 2
  %435 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 8), align 4, !tbaa !39
  %436 = trunc i32 %435 to i16
  %437 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %434
  store i16 %436, ptr %437, align 2, !tbaa !153
  %438 = add nsw i64 %365, 3
  %439 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 12), align 4, !tbaa !39
  %440 = trunc i32 %439 to i16
  %441 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %438
  store i16 %440, ptr %441, align 2, !tbaa !153
  %442 = add nsw i64 %367, 1
  %443 = icmp slt i64 %442, %368
  br i1 %443, label %456, label %573

444:                                              ; preds = %427
  %445 = add nsw i64 %367, 1
  %446 = icmp slt i64 %445, %368
  br i1 %446, label %447, label %573

447:                                              ; preds = %444
  %448 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 4), align 4, !tbaa !39
  %449 = trunc i32 %448 to i16
  %450 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %445, i64 %365
  store i16 %449, ptr %450, align 2, !tbaa !153
  %451 = add nsw i64 %367, 2
  %452 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 8), align 4, !tbaa !39
  %453 = trunc i32 %452 to i16
  %454 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %451, i64 %365
  store i16 %453, ptr %454, align 2, !tbaa !153
  %455 = add nsw i64 %367, 3
  br label %566

456:                                              ; preds = %430
  %457 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 16), align 4, !tbaa !39
  %458 = trunc i32 %457 to i16
  %459 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %442, i64 %365
  store i16 %458, ptr %459, align 2, !tbaa !153
  %460 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 20), align 4, !tbaa !39
  %461 = trunc i32 %460 to i16
  %462 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %442, i64 %422
  store i16 %461, ptr %462, align 2, !tbaa !153
  %463 = add nsw i64 %365, 2
  %464 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 24), align 4, !tbaa !39
  %465 = trunc i32 %464 to i16
  %466 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %442, i64 %463
  store i16 %465, ptr %466, align 2, !tbaa !153
  %467 = add nsw i64 %365, 3
  %468 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 28), align 4, !tbaa !39
  %469 = trunc i32 %468 to i16
  %470 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %442, i64 %467
  store i16 %469, ptr %470, align 2, !tbaa !153
  %471 = add nsw i64 %367, 2
  %472 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 32), align 4, !tbaa !39
  %473 = trunc i32 %472 to i16
  %474 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %471, i64 %365
  store i16 %473, ptr %474, align 2, !tbaa !153
  %475 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 36), align 4, !tbaa !39
  %476 = trunc i32 %475 to i16
  %477 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %471, i64 %422
  store i16 %476, ptr %477, align 2, !tbaa !153
  %478 = add nsw i64 %365, 2
  %479 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 40), align 4, !tbaa !39
  %480 = trunc i32 %479 to i16
  %481 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %471, i64 %478
  store i16 %480, ptr %481, align 2, !tbaa !153
  %482 = add nsw i64 %365, 3
  %483 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 44), align 4, !tbaa !39
  %484 = trunc i32 %483 to i16
  %485 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %471, i64 %482
  store i16 %484, ptr %485, align 2, !tbaa !153
  %486 = add nsw i64 %367, 3
  %487 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 48), align 4, !tbaa !39
  %488 = trunc i32 %487 to i16
  %489 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %486, i64 %365
  store i16 %488, ptr %489, align 2, !tbaa !153
  %490 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 52), align 4, !tbaa !39
  %491 = trunc i32 %490 to i16
  %492 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %486, i64 %422
  store i16 %491, ptr %492, align 2, !tbaa !153
  %493 = add nsw i64 %365, 2
  %494 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 56), align 4, !tbaa !39
  %495 = trunc i32 %494 to i16
  %496 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %486, i64 %493
  store i16 %495, ptr %496, align 2, !tbaa !153
  %497 = add nsw i64 %365, 3
  br label %566

498:                                              ; preds = %424
  %499 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 4), align 4, !tbaa !39
  %500 = trunc i32 %499 to i16
  %501 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %422
  store i16 %500, ptr %501, align 2, !tbaa !153
  %502 = add nsw i64 %365, 2
  %503 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 8), align 4, !tbaa !39
  %504 = trunc i32 %503 to i16
  %505 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %502
  store i16 %504, ptr %505, align 2, !tbaa !153
  %506 = add nsw i64 %365, 3
  %507 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 12), align 4, !tbaa !39
  %508 = trunc i32 %507 to i16
  %509 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %367, i64 %506
  store i16 %508, ptr %509, align 2, !tbaa !153
  %510 = add nsw i64 %367, 1
  %511 = icmp slt i64 %510, %368
  br i1 %511, label %524, label %573

512:                                              ; preds = %424
  %513 = add nsw i64 %367, 1
  %514 = icmp slt i64 %513, %368
  br i1 %514, label %515, label %573

515:                                              ; preds = %512
  %516 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 4), align 4, !tbaa !39
  %517 = trunc i32 %516 to i16
  %518 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %513, i64 %365
  store i16 %517, ptr %518, align 2, !tbaa !153
  %519 = add nsw i64 %367, 2
  %520 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 8), align 4, !tbaa !39
  %521 = trunc i32 %520 to i16
  %522 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %519, i64 %365
  store i16 %521, ptr %522, align 2, !tbaa !153
  %523 = add nsw i64 %367, 3
  br label %566

524:                                              ; preds = %498
  %525 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 16), align 4, !tbaa !39
  %526 = trunc i32 %525 to i16
  %527 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %510, i64 %365
  store i16 %526, ptr %527, align 2, !tbaa !153
  %528 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 20), align 4, !tbaa !39
  %529 = trunc i32 %528 to i16
  %530 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %510, i64 %422
  store i16 %529, ptr %530, align 2, !tbaa !153
  %531 = add nsw i64 %365, 2
  %532 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 24), align 4, !tbaa !39
  %533 = trunc i32 %532 to i16
  %534 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %510, i64 %531
  store i16 %533, ptr %534, align 2, !tbaa !153
  %535 = add nsw i64 %365, 3
  %536 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 28), align 4, !tbaa !39
  %537 = trunc i32 %536 to i16
  %538 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %510, i64 %535
  store i16 %537, ptr %538, align 2, !tbaa !153
  %539 = add nsw i64 %367, 2
  %540 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 32), align 4, !tbaa !39
  %541 = trunc i32 %540 to i16
  %542 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %539, i64 %365
  store i16 %541, ptr %542, align 2, !tbaa !153
  %543 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 36), align 4, !tbaa !39
  %544 = trunc i32 %543 to i16
  %545 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %539, i64 %422
  store i16 %544, ptr %545, align 2, !tbaa !153
  %546 = add nsw i64 %365, 2
  %547 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 40), align 4, !tbaa !39
  %548 = trunc i32 %547 to i16
  %549 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %539, i64 %546
  store i16 %548, ptr %549, align 2, !tbaa !153
  %550 = add nsw i64 %365, 3
  %551 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 44), align 4, !tbaa !39
  %552 = trunc i32 %551 to i16
  %553 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %539, i64 %550
  store i16 %552, ptr %553, align 2, !tbaa !153
  %554 = add nsw i64 %367, 3
  %555 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 48), align 4, !tbaa !39
  %556 = trunc i32 %555 to i16
  %557 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %554, i64 %365
  store i16 %556, ptr %557, align 2, !tbaa !153
  %558 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 52), align 4, !tbaa !39
  %559 = trunc i32 %558 to i16
  %560 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %554, i64 %422
  store i16 %559, ptr %560, align 2, !tbaa !153
  %561 = add nsw i64 %365, 2
  %562 = load i32, ptr getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 56), align 4, !tbaa !39
  %563 = trunc i32 %562 to i16
  %564 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %554, i64 %561
  store i16 %563, ptr %564, align 2, !tbaa !153
  %565 = add nsw i64 %365, 3
  br label %566

566:                                              ; preds = %456, %447, %524, %515
  %567 = phi ptr [ getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 12), %515 ], [ getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.bw_pred, i64 60), %524 ], [ getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 12), %447 ], [ getelementptr inbounds (i8, ptr @LumaPrediction4x4Bi.fw_pred, i64 60), %456 ]
  %568 = phi i64 [ %365, %515 ], [ %565, %524 ], [ %365, %447 ], [ %497, %456 ]
  %569 = phi i64 [ %523, %515 ], [ %554, %524 ], [ %455, %447 ], [ %486, %456 ]
  %570 = load i32, ptr %567, align 4, !tbaa !39
  %571 = trunc i32 %570 to i16
  %572 = getelementptr inbounds [16 x [16 x i16]], ptr %364, i64 0, i64 %569, i64 %568
  store i16 %571, ptr %572, align 2, !tbaa !153
  br label %573

573:                                              ; preds = %415, %358, %306, %199, %566, %498, %512, %430, %444
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @LumaResidualCoding8x8(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef signext %2, i16 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !tbaa !39
  %10 = shl i32 %2, 2
  %11 = and i32 %10, -8
  %12 = and i32 %2, 1
  %13 = shl nuw nsw i32 %12, 3
  %14 = shl nuw i32 1, %2
  %15 = or i32 %5, %4
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %16, label %18, label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds i8, ptr %17, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !42
  %21 = icmp ne i32 %20, 1
  br label %22

22:                                               ; preds = %18, %8
  %23 = phi i1 [ false, %8 ], [ %21, %18 ]
  %24 = getelementptr inbounds i8, ptr %17, i64 31576
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds i8, ptr %17, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 30
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = add nsw i32 %11, 8
  %32 = add nuw nsw i32 %13, 8
  %33 = sext i16 %3 to i32
  %34 = icmp eq i32 %30, 0
  %35 = icmp ne i32 %30, 0
  %36 = shl i32 %2, 3
  %37 = and i32 %36, 8
  %38 = zext nneg i32 %37 to i64
  %39 = zext nneg i32 %32 to i64
  %40 = sext i32 %11 to i64
  %41 = sext i32 %31 to i64
  br label %42

42:                                               ; preds = %22, %860
  %43 = phi i64 [ 0, %22 ], [ %861, %860 ]
  %44 = phi i64 [ %40, %22 ], [ %862, %860 ]
  %45 = phi i32 [ 0, %22 ], [ %856, %860 ]
  %46 = load ptr, ptr @img, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 172
  %48 = load i32, ptr %47, align 4, !tbaa !28
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = trunc nsw i64 %44 to i32
  %52 = or disjoint i64 %44, 1
  %53 = or disjoint i64 %44, 2
  %54 = or disjoint i64 %44, 3
  %55 = trunc nsw i64 %44 to i32
  %56 = or disjoint i64 %44, 1
  %57 = or disjoint i64 %44, 2
  %58 = or disjoint i64 %44, 3
  %59 = or disjoint i64 %44, 1
  %60 = or disjoint i64 %43, 1
  %61 = or disjoint i64 %44, 2
  %62 = or disjoint i64 %43, 2
  %63 = or disjoint i64 %44, 3
  %64 = or disjoint i64 %43, 3
  %65 = or disjoint i64 %44, 1
  %66 = or disjoint i64 %44, 2
  %67 = or disjoint i64 %44, 3
  br label %68

68:                                               ; preds = %42, %855
  %69 = phi i64 [ 0, %42 ], [ %857, %855 ]
  %70 = phi i64 [ %38, %42 ], [ %858, %855 ]
  %71 = phi i32 [ %45, %42 ], [ %856, %855 ]
  %72 = load ptr, ptr @img, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 168
  %74 = load i32, ptr %73, align 8, !tbaa !22
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %70, %75
  %77 = lshr exact i64 %70, 2
  %78 = add nsw i64 %77, %44
  %79 = getelementptr inbounds i8, ptr %72, i64 90572
  %80 = load i32, ptr %79, align 4, !tbaa !160
  %81 = icmp eq i32 %80, 0
  %82 = trunc nuw nsw i64 %70 to i32
  br i1 %81, label %219, label %83

83:                                               ; preds = %68
  call void @ChromaPrediction4x4(i32 noundef signext 0, i32 noundef signext %82, i32 noundef signext %51, i32 noundef signext %33, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  %84 = load ptr, ptr @img, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 12600
  %86 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %44, i64 %70
  %87 = load i16, ptr %86, align 2, !tbaa !153
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %44, i64 %70
  store i32 %88, ptr %89, align 4, !tbaa !39
  %90 = or disjoint i64 %70, 1
  %91 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %44, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !153
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %44, i64 %90
  store i32 %93, ptr %94, align 4, !tbaa !39
  %95 = or disjoint i64 %70, 2
  %96 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %44, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !153
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %44, i64 %95
  store i32 %98, ptr %99, align 4, !tbaa !39
  %100 = or disjoint i64 %70, 3
  %101 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %44, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !153
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %44, i64 %100
  store i32 %103, ptr %104, align 4, !tbaa !39
  %105 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %52, i64 %70
  %106 = load i16, ptr %105, align 2, !tbaa !153
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %52, i64 %70
  store i32 %107, ptr %108, align 4, !tbaa !39
  %109 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %52, i64 %90
  %110 = load i16, ptr %109, align 2, !tbaa !153
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %52, i64 %90
  store i32 %111, ptr %112, align 4, !tbaa !39
  %113 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %52, i64 %95
  %114 = load i16, ptr %113, align 2, !tbaa !153
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %52, i64 %95
  store i32 %115, ptr %116, align 4, !tbaa !39
  %117 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %52, i64 %100
  %118 = load i16, ptr %117, align 2, !tbaa !153
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %52, i64 %100
  store i32 %119, ptr %120, align 4, !tbaa !39
  %121 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %53, i64 %70
  %122 = load i16, ptr %121, align 2, !tbaa !153
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %53, i64 %70
  store i32 %123, ptr %124, align 4, !tbaa !39
  %125 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %53, i64 %90
  %126 = load i16, ptr %125, align 2, !tbaa !153
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %53, i64 %90
  store i32 %127, ptr %128, align 4, !tbaa !39
  %129 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %53, i64 %95
  %130 = load i16, ptr %129, align 2, !tbaa !153
  %131 = zext i16 %130 to i32
  %132 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %53, i64 %95
  store i32 %131, ptr %132, align 4, !tbaa !39
  %133 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %53, i64 %100
  %134 = load i16, ptr %133, align 2, !tbaa !153
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %53, i64 %100
  store i32 %135, ptr %136, align 4, !tbaa !39
  %137 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %54, i64 %70
  %138 = load i16, ptr %137, align 2, !tbaa !153
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %54, i64 %70
  store i32 %139, ptr %140, align 4, !tbaa !39
  %141 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %54, i64 %90
  %142 = load i16, ptr %141, align 2, !tbaa !153
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %54, i64 %90
  store i32 %143, ptr %144, align 4, !tbaa !39
  %145 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %54, i64 %95
  %146 = load i16, ptr %145, align 2, !tbaa !153
  %147 = zext i16 %146 to i32
  %148 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %54, i64 %95
  store i32 %147, ptr %148, align 4, !tbaa !39
  %149 = getelementptr inbounds [16 x [16 x i16]], ptr %85, i64 0, i64 %54, i64 %100
  %150 = load i16, ptr %149, align 2, !tbaa !153
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %54, i64 %100
  store i32 %151, ptr %152, align 4, !tbaa !39
  call void @ChromaPrediction4x4(i32 noundef signext 1, i32 noundef signext %82, i32 noundef signext %51, i32 noundef signext %33, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  %153 = load ptr, ptr @img, align 8, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %153, i64 12600
  %155 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %44, i64 %70
  %156 = load i16, ptr %155, align 2, !tbaa !153
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %44, i64 %70
  store i32 %157, ptr %158, align 4, !tbaa !39
  %159 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %44, i64 %90
  %160 = load i16, ptr %159, align 2, !tbaa !153
  %161 = zext i16 %160 to i32
  %162 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %44, i64 %90
  store i32 %161, ptr %162, align 4, !tbaa !39
  %163 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %44, i64 %95
  %164 = load i16, ptr %163, align 2, !tbaa !153
  %165 = zext i16 %164 to i32
  %166 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %44, i64 %95
  store i32 %165, ptr %166, align 4, !tbaa !39
  %167 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %44, i64 %100
  %168 = load i16, ptr %167, align 2, !tbaa !153
  %169 = zext i16 %168 to i32
  %170 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %44, i64 %100
  store i32 %169, ptr %170, align 4, !tbaa !39
  %171 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %52, i64 %70
  %172 = load i16, ptr %171, align 2, !tbaa !153
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %52, i64 %70
  store i32 %173, ptr %174, align 4, !tbaa !39
  %175 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %52, i64 %90
  %176 = load i16, ptr %175, align 2, !tbaa !153
  %177 = zext i16 %176 to i32
  %178 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %52, i64 %90
  store i32 %177, ptr %178, align 4, !tbaa !39
  %179 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %52, i64 %95
  %180 = load i16, ptr %179, align 2, !tbaa !153
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %52, i64 %95
  store i32 %181, ptr %182, align 4, !tbaa !39
  %183 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %52, i64 %100
  %184 = load i16, ptr %183, align 2, !tbaa !153
  %185 = zext i16 %184 to i32
  %186 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %52, i64 %100
  store i32 %185, ptr %186, align 4, !tbaa !39
  %187 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %53, i64 %70
  %188 = load i16, ptr %187, align 2, !tbaa !153
  %189 = zext i16 %188 to i32
  %190 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %53, i64 %70
  store i32 %189, ptr %190, align 4, !tbaa !39
  %191 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %53, i64 %90
  %192 = load i16, ptr %191, align 2, !tbaa !153
  %193 = zext i16 %192 to i32
  %194 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %53, i64 %90
  store i32 %193, ptr %194, align 4, !tbaa !39
  %195 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %53, i64 %95
  %196 = load i16, ptr %195, align 2, !tbaa !153
  %197 = zext i16 %196 to i32
  %198 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %53, i64 %95
  store i32 %197, ptr %198, align 4, !tbaa !39
  %199 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %53, i64 %100
  %200 = load i16, ptr %199, align 2, !tbaa !153
  %201 = zext i16 %200 to i32
  %202 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %53, i64 %100
  store i32 %201, ptr %202, align 4, !tbaa !39
  %203 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %54, i64 %70
  %204 = load i16, ptr %203, align 2, !tbaa !153
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %54, i64 %70
  store i32 %205, ptr %206, align 4, !tbaa !39
  %207 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %54, i64 %90
  %208 = load i16, ptr %207, align 2, !tbaa !153
  %209 = zext i16 %208 to i32
  %210 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %54, i64 %90
  store i32 %209, ptr %210, align 4, !tbaa !39
  %211 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %54, i64 %95
  %212 = load i16, ptr %211, align 2, !tbaa !153
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %54, i64 %95
  store i32 %213, ptr %214, align 4, !tbaa !39
  %215 = getelementptr inbounds [16 x [16 x i16]], ptr %154, i64 0, i64 %54, i64 %100
  %216 = load i16, ptr %215, align 2, !tbaa !153
  %217 = zext i16 %216 to i32
  %218 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %54, i64 %100
  store i32 %217, ptr %218, align 4, !tbaa !39
  br label %219

219:                                              ; preds = %68, %83
  %220 = phi i32 [ %51, %83 ], [ %55, %68 ]
  call void @LumaPrediction4x4(i32 noundef signext %82, i32 noundef signext %220, i32 noundef signext %33, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  %221 = load ptr, ptr @img, align 8, !tbaa !6
  %222 = getelementptr inbounds i8, ptr %221, i64 90572
  %223 = load i32, ptr %222, align 4, !tbaa !160
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %309, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds i8, ptr %221, i64 12600
  %227 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %44, i64 %70
  %228 = load i16, ptr %227, align 2, !tbaa !153
  %229 = zext i16 %228 to i32
  %230 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %44, i64 %70
  store i32 %229, ptr %230, align 4, !tbaa !39
  %231 = or disjoint i64 %70, 1
  %232 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %44, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !153
  %234 = zext i16 %233 to i32
  %235 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %44, i64 %231
  store i32 %234, ptr %235, align 4, !tbaa !39
  %236 = or disjoint i64 %70, 2
  %237 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %44, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !153
  %239 = zext i16 %238 to i32
  %240 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %44, i64 %236
  store i32 %239, ptr %240, align 4, !tbaa !39
  %241 = or disjoint i64 %70, 3
  %242 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %44, i64 %241
  %243 = load i16, ptr %242, align 2, !tbaa !153
  %244 = zext i16 %243 to i32
  %245 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %44, i64 %241
  store i32 %244, ptr %245, align 4, !tbaa !39
  %246 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %56, i64 %70
  %247 = load i16, ptr %246, align 2, !tbaa !153
  %248 = zext i16 %247 to i32
  %249 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %56, i64 %70
  store i32 %248, ptr %249, align 4, !tbaa !39
  %250 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %56, i64 %231
  %251 = load i16, ptr %250, align 2, !tbaa !153
  %252 = zext i16 %251 to i32
  %253 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %56, i64 %231
  store i32 %252, ptr %253, align 4, !tbaa !39
  %254 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %56, i64 %236
  %255 = load i16, ptr %254, align 2, !tbaa !153
  %256 = zext i16 %255 to i32
  %257 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %56, i64 %236
  store i32 %256, ptr %257, align 4, !tbaa !39
  %258 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %56, i64 %241
  %259 = load i16, ptr %258, align 2, !tbaa !153
  %260 = zext i16 %259 to i32
  %261 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %56, i64 %241
  store i32 %260, ptr %261, align 4, !tbaa !39
  %262 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %57, i64 %70
  %263 = load i16, ptr %262, align 2, !tbaa !153
  %264 = zext i16 %263 to i32
  %265 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %57, i64 %70
  store i32 %264, ptr %265, align 4, !tbaa !39
  %266 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %57, i64 %231
  %267 = load i16, ptr %266, align 2, !tbaa !153
  %268 = zext i16 %267 to i32
  %269 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %57, i64 %231
  store i32 %268, ptr %269, align 4, !tbaa !39
  %270 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %57, i64 %236
  %271 = load i16, ptr %270, align 2, !tbaa !153
  %272 = zext i16 %271 to i32
  %273 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %57, i64 %236
  store i32 %272, ptr %273, align 4, !tbaa !39
  %274 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %57, i64 %241
  %275 = load i16, ptr %274, align 2, !tbaa !153
  %276 = zext i16 %275 to i32
  %277 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %57, i64 %241
  store i32 %276, ptr %277, align 4, !tbaa !39
  %278 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %58, i64 %70
  %279 = load i16, ptr %278, align 2, !tbaa !153
  %280 = zext i16 %279 to i32
  %281 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %58, i64 %70
  store i32 %280, ptr %281, align 4, !tbaa !39
  %282 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %58, i64 %231
  %283 = load i16, ptr %282, align 2, !tbaa !153
  %284 = zext i16 %283 to i32
  %285 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %58, i64 %231
  store i32 %284, ptr %285, align 4, !tbaa !39
  %286 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %58, i64 %236
  %287 = load i16, ptr %286, align 2, !tbaa !153
  %288 = zext i16 %287 to i32
  %289 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %58, i64 %236
  store i32 %288, ptr %289, align 4, !tbaa !39
  %290 = getelementptr inbounds [16 x [16 x i16]], ptr %226, i64 0, i64 %58, i64 %241
  %291 = load i16, ptr %290, align 2, !tbaa !153
  %292 = zext i16 %291 to i32
  %293 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %58, i64 %241
  store i32 %292, ptr %293, align 4, !tbaa !39
  %294 = load i32, ptr %222, align 4, !tbaa !160
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %309, label %296

296:                                              ; preds = %225
  %297 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %297, i64 8
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = getelementptr inbounds i8, ptr %221, i64 13112
  %303 = add nsw i64 %76, 1
  %304 = or disjoint i64 %69, 1
  %305 = add nsw i64 %76, 2
  %306 = or disjoint i64 %69, 2
  %307 = add nsw i64 %76, 3
  %308 = or disjoint i64 %69, 3
  br label %640

309:                                              ; preds = %219, %225
  %310 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %311 = getelementptr inbounds i8, ptr %221, i64 12600
  %312 = getelementptr inbounds i8, ptr %221, i64 13112
  %313 = getelementptr inbounds ptr, ptr %310, i64 %50
  %314 = load ptr, ptr %313, align 8, !tbaa !6
  %315 = getelementptr inbounds i16, ptr %314, i64 %76
  %316 = load i16, ptr %315, align 2, !tbaa !153
  %317 = zext i16 %316 to i32
  %318 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %70
  %319 = load i16, ptr %318, align 2, !tbaa !153
  %320 = zext i16 %319 to i32
  %321 = sub nsw i32 %317, %320
  br i1 %34, label %462, label %322

322:                                              ; preds = %309
  %323 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %43, i64 %69
  store i32 %321, ptr %323, align 4, !tbaa !39
  %324 = add nsw i64 %76, 1
  %325 = getelementptr inbounds i16, ptr %314, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !153
  %327 = zext i16 %326 to i32
  %328 = or disjoint i64 %70, 1
  %329 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %328
  %330 = load i16, ptr %329, align 2, !tbaa !153
  %331 = zext i16 %330 to i32
  %332 = sub nsw i32 %327, %331
  %333 = or disjoint i64 %69, 1
  %334 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %43, i64 %333
  store i32 %332, ptr %334, align 4, !tbaa !39
  %335 = add nsw i64 %76, 2
  %336 = getelementptr inbounds i16, ptr %314, i64 %335
  %337 = load i16, ptr %336, align 2, !tbaa !153
  %338 = zext i16 %337 to i32
  %339 = or disjoint i64 %70, 2
  %340 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !153
  %342 = zext i16 %341 to i32
  %343 = sub nsw i32 %338, %342
  %344 = or disjoint i64 %69, 2
  %345 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %43, i64 %344
  store i32 %343, ptr %345, align 4, !tbaa !39
  %346 = add nsw i64 %76, 3
  %347 = getelementptr inbounds i16, ptr %314, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !153
  %349 = zext i16 %348 to i32
  %350 = or disjoint i64 %70, 3
  %351 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !153
  %353 = zext i16 %352 to i32
  %354 = sub nsw i32 %349, %353
  %355 = or disjoint i64 %69, 3
  %356 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %43, i64 %355
  store i32 %354, ptr %356, align 4, !tbaa !39
  %357 = getelementptr ptr, ptr %310, i64 %50
  %358 = getelementptr i8, ptr %357, i64 8
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds i16, ptr %359, i64 %76
  %361 = load i16, ptr %360, align 2, !tbaa !153
  %362 = zext i16 %361 to i32
  %363 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %59, i64 %70
  %364 = load i16, ptr %363, align 2, !tbaa !153
  %365 = zext i16 %364 to i32
  %366 = sub nsw i32 %362, %365
  %367 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %60, i64 %69
  store i32 %366, ptr %367, align 4, !tbaa !39
  %368 = getelementptr inbounds i16, ptr %359, i64 %324
  %369 = load i16, ptr %368, align 2, !tbaa !153
  %370 = zext i16 %369 to i32
  %371 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %59, i64 %328
  %372 = load i16, ptr %371, align 2, !tbaa !153
  %373 = zext i16 %372 to i32
  %374 = sub nsw i32 %370, %373
  %375 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %60, i64 %333
  store i32 %374, ptr %375, align 4, !tbaa !39
  %376 = getelementptr inbounds i16, ptr %359, i64 %335
  %377 = load i16, ptr %376, align 2, !tbaa !153
  %378 = zext i16 %377 to i32
  %379 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %59, i64 %339
  %380 = load i16, ptr %379, align 2, !tbaa !153
  %381 = zext i16 %380 to i32
  %382 = sub nsw i32 %378, %381
  %383 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %60, i64 %344
  store i32 %382, ptr %383, align 4, !tbaa !39
  %384 = getelementptr inbounds i16, ptr %359, i64 %346
  %385 = load i16, ptr %384, align 2, !tbaa !153
  %386 = zext i16 %385 to i32
  %387 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %59, i64 %350
  %388 = load i16, ptr %387, align 2, !tbaa !153
  %389 = zext i16 %388 to i32
  %390 = sub nsw i32 %386, %389
  %391 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %60, i64 %355
  store i32 %390, ptr %391, align 4, !tbaa !39
  %392 = getelementptr ptr, ptr %310, i64 %50
  %393 = getelementptr i8, ptr %392, i64 16
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  %395 = getelementptr inbounds i16, ptr %394, i64 %76
  %396 = load i16, ptr %395, align 2, !tbaa !153
  %397 = zext i16 %396 to i32
  %398 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %61, i64 %70
  %399 = load i16, ptr %398, align 2, !tbaa !153
  %400 = zext i16 %399 to i32
  %401 = sub nsw i32 %397, %400
  %402 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %62, i64 %69
  store i32 %401, ptr %402, align 4, !tbaa !39
  %403 = getelementptr inbounds i16, ptr %394, i64 %324
  %404 = load i16, ptr %403, align 2, !tbaa !153
  %405 = zext i16 %404 to i32
  %406 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %61, i64 %328
  %407 = load i16, ptr %406, align 2, !tbaa !153
  %408 = zext i16 %407 to i32
  %409 = sub nsw i32 %405, %408
  %410 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %62, i64 %333
  store i32 %409, ptr %410, align 4, !tbaa !39
  %411 = getelementptr inbounds i16, ptr %394, i64 %335
  %412 = load i16, ptr %411, align 2, !tbaa !153
  %413 = zext i16 %412 to i32
  %414 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %61, i64 %339
  %415 = load i16, ptr %414, align 2, !tbaa !153
  %416 = zext i16 %415 to i32
  %417 = sub nsw i32 %413, %416
  %418 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %62, i64 %344
  store i32 %417, ptr %418, align 4, !tbaa !39
  %419 = getelementptr inbounds i16, ptr %394, i64 %346
  %420 = load i16, ptr %419, align 2, !tbaa !153
  %421 = zext i16 %420 to i32
  %422 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %61, i64 %350
  %423 = load i16, ptr %422, align 2, !tbaa !153
  %424 = zext i16 %423 to i32
  %425 = sub nsw i32 %421, %424
  %426 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %62, i64 %355
  store i32 %425, ptr %426, align 4, !tbaa !39
  %427 = getelementptr ptr, ptr %310, i64 %50
  %428 = getelementptr i8, ptr %427, i64 24
  %429 = load ptr, ptr %428, align 8, !tbaa !6
  %430 = getelementptr inbounds i16, ptr %429, i64 %76
  %431 = load i16, ptr %430, align 2, !tbaa !153
  %432 = zext i16 %431 to i32
  %433 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %63, i64 %70
  %434 = load i16, ptr %433, align 2, !tbaa !153
  %435 = zext i16 %434 to i32
  %436 = sub nsw i32 %432, %435
  %437 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %64, i64 %69
  store i32 %436, ptr %437, align 4, !tbaa !39
  %438 = getelementptr inbounds i16, ptr %429, i64 %324
  %439 = load i16, ptr %438, align 2, !tbaa !153
  %440 = zext i16 %439 to i32
  %441 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %63, i64 %328
  %442 = load i16, ptr %441, align 2, !tbaa !153
  %443 = zext i16 %442 to i32
  %444 = sub nsw i32 %440, %443
  %445 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %64, i64 %333
  store i32 %444, ptr %445, align 4, !tbaa !39
  %446 = getelementptr inbounds i16, ptr %429, i64 %335
  %447 = load i16, ptr %446, align 2, !tbaa !153
  %448 = zext i16 %447 to i32
  %449 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %63, i64 %339
  %450 = load i16, ptr %449, align 2, !tbaa !153
  %451 = zext i16 %450 to i32
  %452 = sub nsw i32 %448, %451
  %453 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %64, i64 %344
  store i32 %452, ptr %453, align 4, !tbaa !39
  %454 = getelementptr inbounds i16, ptr %429, i64 %346
  %455 = load i16, ptr %454, align 2, !tbaa !153
  %456 = zext i16 %455 to i32
  %457 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %63, i64 %350
  %458 = load i16, ptr %457, align 2, !tbaa !153
  %459 = zext i16 %458 to i32
  %460 = sub nsw i32 %456, %459
  %461 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %64, i64 %355
  store i32 %460, ptr %461, align 4, !tbaa !39
  br label %855

462:                                              ; preds = %309
  store i32 %321, ptr %312, align 4, !tbaa !39
  %463 = add nsw i64 %76, 1
  %464 = getelementptr inbounds i16, ptr %314, i64 %463
  %465 = load i16, ptr %464, align 2, !tbaa !153
  %466 = zext i16 %465 to i32
  %467 = or disjoint i64 %70, 1
  %468 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %467
  %469 = load i16, ptr %468, align 2, !tbaa !153
  %470 = zext i16 %469 to i32
  %471 = sub nsw i32 %466, %470
  %472 = getelementptr inbounds i8, ptr %221, i64 13116
  store i32 %471, ptr %472, align 4, !tbaa !39
  %473 = add nsw i64 %76, 2
  %474 = getelementptr inbounds i16, ptr %314, i64 %473
  %475 = load i16, ptr %474, align 2, !tbaa !153
  %476 = zext i16 %475 to i32
  %477 = or disjoint i64 %70, 2
  %478 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %477
  %479 = load i16, ptr %478, align 2, !tbaa !153
  %480 = zext i16 %479 to i32
  %481 = sub nsw i32 %476, %480
  %482 = getelementptr inbounds i8, ptr %221, i64 13120
  store i32 %481, ptr %482, align 4, !tbaa !39
  %483 = add nsw i64 %76, 3
  %484 = getelementptr inbounds i16, ptr %314, i64 %483
  %485 = load i16, ptr %484, align 2, !tbaa !153
  %486 = zext i16 %485 to i32
  %487 = or disjoint i64 %70, 3
  %488 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %44, i64 %487
  %489 = load i16, ptr %488, align 2, !tbaa !153
  %490 = zext i16 %489 to i32
  %491 = sub nsw i32 %486, %490
  %492 = getelementptr inbounds i8, ptr %221, i64 13124
  store i32 %491, ptr %492, align 4, !tbaa !39
  %493 = getelementptr ptr, ptr %310, i64 %50
  %494 = getelementptr i8, ptr %493, i64 8
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  %496 = getelementptr inbounds i16, ptr %495, i64 %76
  %497 = load i16, ptr %496, align 2, !tbaa !153
  %498 = zext i16 %497 to i32
  %499 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %65, i64 %70
  %500 = load i16, ptr %499, align 2, !tbaa !153
  %501 = zext i16 %500 to i32
  %502 = sub nsw i32 %498, %501
  %503 = getelementptr inbounds i8, ptr %221, i64 13176
  store i32 %502, ptr %503, align 4, !tbaa !39
  %504 = getelementptr inbounds i16, ptr %495, i64 %463
  %505 = load i16, ptr %504, align 2, !tbaa !153
  %506 = zext i16 %505 to i32
  %507 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %65, i64 %467
  %508 = load i16, ptr %507, align 2, !tbaa !153
  %509 = zext i16 %508 to i32
  %510 = sub nsw i32 %506, %509
  %511 = getelementptr inbounds i8, ptr %221, i64 13180
  store i32 %510, ptr %511, align 4, !tbaa !39
  %512 = getelementptr inbounds i16, ptr %495, i64 %473
  %513 = load i16, ptr %512, align 2, !tbaa !153
  %514 = zext i16 %513 to i32
  %515 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %65, i64 %477
  %516 = load i16, ptr %515, align 2, !tbaa !153
  %517 = zext i16 %516 to i32
  %518 = sub nsw i32 %514, %517
  %519 = getelementptr inbounds i8, ptr %221, i64 13184
  store i32 %518, ptr %519, align 4, !tbaa !39
  %520 = getelementptr inbounds i16, ptr %495, i64 %483
  %521 = load i16, ptr %520, align 2, !tbaa !153
  %522 = zext i16 %521 to i32
  %523 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %65, i64 %487
  %524 = load i16, ptr %523, align 2, !tbaa !153
  %525 = zext i16 %524 to i32
  %526 = sub nsw i32 %522, %525
  %527 = getelementptr inbounds i8, ptr %221, i64 13188
  store i32 %526, ptr %527, align 4, !tbaa !39
  %528 = getelementptr ptr, ptr %310, i64 %50
  %529 = getelementptr i8, ptr %528, i64 16
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds i16, ptr %530, i64 %76
  %532 = load i16, ptr %531, align 2, !tbaa !153
  %533 = zext i16 %532 to i32
  %534 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %66, i64 %70
  %535 = load i16, ptr %534, align 2, !tbaa !153
  %536 = zext i16 %535 to i32
  %537 = sub nsw i32 %533, %536
  %538 = getelementptr inbounds i8, ptr %221, i64 13240
  store i32 %537, ptr %538, align 4, !tbaa !39
  %539 = getelementptr inbounds i16, ptr %530, i64 %463
  %540 = load i16, ptr %539, align 2, !tbaa !153
  %541 = zext i16 %540 to i32
  %542 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %66, i64 %467
  %543 = load i16, ptr %542, align 2, !tbaa !153
  %544 = zext i16 %543 to i32
  %545 = sub nsw i32 %541, %544
  %546 = getelementptr inbounds i8, ptr %221, i64 13244
  store i32 %545, ptr %546, align 4, !tbaa !39
  %547 = getelementptr inbounds i16, ptr %530, i64 %473
  %548 = load i16, ptr %547, align 2, !tbaa !153
  %549 = zext i16 %548 to i32
  %550 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %66, i64 %477
  %551 = load i16, ptr %550, align 2, !tbaa !153
  %552 = zext i16 %551 to i32
  %553 = sub nsw i32 %549, %552
  %554 = getelementptr inbounds i8, ptr %221, i64 13248
  store i32 %553, ptr %554, align 4, !tbaa !39
  %555 = getelementptr inbounds i16, ptr %530, i64 %483
  %556 = load i16, ptr %555, align 2, !tbaa !153
  %557 = zext i16 %556 to i32
  %558 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %66, i64 %487
  %559 = load i16, ptr %558, align 2, !tbaa !153
  %560 = zext i16 %559 to i32
  %561 = sub nsw i32 %557, %560
  %562 = getelementptr inbounds i8, ptr %221, i64 13252
  store i32 %561, ptr %562, align 4, !tbaa !39
  %563 = getelementptr ptr, ptr %310, i64 %50
  %564 = getelementptr i8, ptr %563, i64 24
  %565 = load ptr, ptr %564, align 8, !tbaa !6
  %566 = getelementptr inbounds i16, ptr %565, i64 %76
  %567 = load i16, ptr %566, align 2, !tbaa !153
  %568 = zext i16 %567 to i32
  %569 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %67, i64 %70
  %570 = load i16, ptr %569, align 2, !tbaa !153
  %571 = zext i16 %570 to i32
  %572 = sub nsw i32 %568, %571
  %573 = getelementptr inbounds i8, ptr %221, i64 13304
  store i32 %572, ptr %573, align 4, !tbaa !39
  %574 = getelementptr inbounds i16, ptr %565, i64 %463
  %575 = load i16, ptr %574, align 2, !tbaa !153
  %576 = zext i16 %575 to i32
  %577 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %67, i64 %467
  %578 = load i16, ptr %577, align 2, !tbaa !153
  %579 = zext i16 %578 to i32
  %580 = sub nsw i32 %576, %579
  %581 = getelementptr inbounds i8, ptr %221, i64 13308
  store i32 %580, ptr %581, align 4, !tbaa !39
  %582 = getelementptr inbounds i16, ptr %565, i64 %473
  %583 = load i16, ptr %582, align 2, !tbaa !153
  %584 = zext i16 %583 to i32
  %585 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %67, i64 %477
  %586 = load i16, ptr %585, align 2, !tbaa !153
  %587 = zext i16 %586 to i32
  %588 = sub nsw i32 %584, %587
  %589 = getelementptr inbounds i8, ptr %221, i64 13312
  store i32 %588, ptr %589, align 4, !tbaa !39
  %590 = getelementptr inbounds i16, ptr %565, i64 %483
  %591 = load i16, ptr %590, align 2, !tbaa !153
  %592 = zext i16 %591 to i32
  %593 = getelementptr inbounds [16 x [16 x i16]], ptr %311, i64 0, i64 %67, i64 %487
  %594 = load i16, ptr %593, align 2, !tbaa !153
  %595 = zext i16 %594 to i32
  %596 = sub nsw i32 %592, %595
  %597 = getelementptr inbounds i8, ptr %221, i64 13316
  store i32 %596, ptr %597, align 4, !tbaa !39
  %598 = getelementptr inbounds i8, ptr %221, i64 90208
  %599 = load i32, ptr %598, align 8, !tbaa !161
  %600 = icmp eq i32 %599, 1
  %601 = select i1 %600, i1 true, i1 %23
  br i1 %601, label %602, label %613

602:                                              ; preds = %462
  %603 = getelementptr inbounds i8, ptr %221, i64 40
  %604 = load i32, ptr %603, align 8, !tbaa !104
  %605 = getelementptr inbounds i8, ptr %221, i64 90492
  %606 = load i32, ptr %605, align 4, !tbaa !55
  %607 = sub i32 0, %606
  %608 = icmp eq i32 %604, %607
  br i1 %608, label %609, label %855

609:                                              ; preds = %602
  %610 = getelementptr inbounds i8, ptr %221, i64 90552
  %611 = load i32, ptr %610, align 8, !tbaa !162
  %612 = icmp eq i32 %611, 1
  br i1 %612, label %613, label %855

613:                                              ; preds = %462, %609
  %614 = getelementptr inbounds i8, ptr %221, i64 24
  %615 = load i32, ptr %614, align 8, !tbaa !42
  %616 = icmp eq i32 %615, 3
  br i1 %616, label %619, label %617

617:                                              ; preds = %613
  %618 = call signext i32 @dct_luma(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9, i32 noundef signext 0) #17
  br label %629

619:                                              ; preds = %613
  %620 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %621 = icmp ne i32 %620, 0
  %622 = load i32, ptr @sp2_frame_indicator, align 4
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %621, i1 true, i1 %623
  br i1 %624, label %627, label %625

625:                                              ; preds = %619
  %626 = call signext i32 @dct_luma_sp(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9) #17
  br label %629

627:                                              ; preds = %619
  %628 = call signext i32 @dct_luma_sp2(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9) #17
  br label %629

629:                                              ; preds = %625, %627, %617
  %630 = phi i32 [ %618, %617 ], [ %628, %627 ], [ %626, %625 ]
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %855, label %632

632:                                              ; preds = %629
  %633 = trunc nsw i64 %78 to i32
  %634 = shl nuw i32 1, %633
  %635 = sext i32 %634 to i64
  %636 = load i64, ptr %1, align 8, !tbaa !131
  %637 = or i64 %636, %635
  store i64 %637, ptr %1, align 8, !tbaa !131
  %638 = load i32, ptr %0, align 4, !tbaa !39
  %639 = or i32 %638, %14
  store i32 %639, ptr %0, align 4, !tbaa !39
  br label %855

640:                                              ; preds = %296, %640
  %641 = phi i64 [ 0, %296 ], [ %771, %640 ]
  %642 = add nsw i64 %641, %50
  %643 = getelementptr inbounds ptr, ptr %298, i64 %642
  %644 = load ptr, ptr %643, align 8, !tbaa !6
  %645 = or disjoint i64 %641, %44
  %646 = getelementptr inbounds ptr, ptr %299, i64 %642
  %647 = load ptr, ptr %646, align 8, !tbaa !6
  %648 = getelementptr inbounds ptr, ptr %301, i64 %642
  %649 = load ptr, ptr %648, align 8, !tbaa !6
  %650 = or disjoint i64 %641, %43
  %651 = getelementptr inbounds i16, ptr %644, i64 %76
  %652 = load i16, ptr %651, align 2, !tbaa !153
  %653 = zext i16 %652 to i32
  %654 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %645, i64 %70
  %655 = load i32, ptr %654, align 4, !tbaa !39
  %656 = sub nsw i32 %653, %655
  %657 = getelementptr inbounds i16, ptr %647, i64 %76
  %658 = load i16, ptr %657, align 2, !tbaa !153
  %659 = zext i16 %658 to i32
  %660 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %645, i64 %70
  %661 = load i32, ptr %660, align 4, !tbaa !39
  %662 = getelementptr inbounds i16, ptr %649, i64 %76
  %663 = load i16, ptr %662, align 2, !tbaa !153
  %664 = zext i16 %663 to i32
  %665 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %645, i64 %70
  %666 = load i32, ptr %665, align 4, !tbaa !39
  %667 = add i32 %666, %656
  %668 = sub i32 %664, %667
  %669 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %645, i64 %70
  store i32 %668, ptr %669, align 4, !tbaa !39
  %670 = ashr i32 %668, 1
  %671 = add nsw i32 %670, %656
  %672 = add i32 %661, %671
  %673 = sub i32 %659, %672
  %674 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %645, i64 %70
  store i32 %673, ptr %674, align 4, !tbaa !39
  %675 = ashr i32 %673, 1
  %676 = add nsw i32 %675, %671
  %677 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %645, i64 %70
  store i32 %676, ptr %677, align 4, !tbaa !39
  %678 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %641, i64 0
  %679 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %650, i64 %69
  %680 = select i1 %34, ptr %678, ptr %679
  store i32 %676, ptr %680, align 4, !tbaa !39
  %681 = getelementptr inbounds i16, ptr %644, i64 %303
  %682 = load i16, ptr %681, align 2, !tbaa !153
  %683 = zext i16 %682 to i32
  %684 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %645, i64 %231
  %685 = load i32, ptr %684, align 4, !tbaa !39
  %686 = sub nsw i32 %683, %685
  %687 = getelementptr inbounds i16, ptr %647, i64 %303
  %688 = load i16, ptr %687, align 2, !tbaa !153
  %689 = zext i16 %688 to i32
  %690 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %645, i64 %231
  %691 = load i32, ptr %690, align 4, !tbaa !39
  %692 = getelementptr inbounds i16, ptr %649, i64 %303
  %693 = load i16, ptr %692, align 2, !tbaa !153
  %694 = zext i16 %693 to i32
  %695 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %645, i64 %231
  %696 = load i32, ptr %695, align 4, !tbaa !39
  %697 = add i32 %696, %686
  %698 = sub i32 %694, %697
  %699 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %645, i64 %231
  store i32 %698, ptr %699, align 4, !tbaa !39
  %700 = ashr i32 %698, 1
  %701 = add nsw i32 %700, %686
  %702 = add i32 %691, %701
  %703 = sub i32 %689, %702
  %704 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %645, i64 %231
  store i32 %703, ptr %704, align 4, !tbaa !39
  %705 = ashr i32 %703, 1
  %706 = add nsw i32 %705, %701
  %707 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %645, i64 %231
  store i32 %706, ptr %707, align 4, !tbaa !39
  %708 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %641, i64 1
  %709 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %650, i64 %304
  %710 = select i1 %34, ptr %708, ptr %709
  store i32 %706, ptr %710, align 4, !tbaa !39
  %711 = getelementptr inbounds i16, ptr %644, i64 %305
  %712 = load i16, ptr %711, align 2, !tbaa !153
  %713 = zext i16 %712 to i32
  %714 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %645, i64 %236
  %715 = load i32, ptr %714, align 4, !tbaa !39
  %716 = sub nsw i32 %713, %715
  %717 = getelementptr inbounds i16, ptr %647, i64 %305
  %718 = load i16, ptr %717, align 2, !tbaa !153
  %719 = zext i16 %718 to i32
  %720 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %645, i64 %236
  %721 = load i32, ptr %720, align 4, !tbaa !39
  %722 = getelementptr inbounds i16, ptr %649, i64 %305
  %723 = load i16, ptr %722, align 2, !tbaa !153
  %724 = zext i16 %723 to i32
  %725 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %645, i64 %236
  %726 = load i32, ptr %725, align 4, !tbaa !39
  %727 = add i32 %726, %716
  %728 = sub i32 %724, %727
  %729 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %645, i64 %236
  store i32 %728, ptr %729, align 4, !tbaa !39
  %730 = ashr i32 %728, 1
  %731 = add nsw i32 %730, %716
  %732 = add i32 %721, %731
  %733 = sub i32 %719, %732
  %734 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %645, i64 %236
  store i32 %733, ptr %734, align 4, !tbaa !39
  %735 = ashr i32 %733, 1
  %736 = add nsw i32 %735, %731
  %737 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %645, i64 %236
  store i32 %736, ptr %737, align 4, !tbaa !39
  %738 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %641, i64 2
  %739 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %650, i64 %306
  %740 = select i1 %34, ptr %738, ptr %739
  store i32 %736, ptr %740, align 4, !tbaa !39
  %741 = getelementptr inbounds i16, ptr %644, i64 %307
  %742 = load i16, ptr %741, align 2, !tbaa !153
  %743 = zext i16 %742 to i32
  %744 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %645, i64 %241
  %745 = load i32, ptr %744, align 4, !tbaa !39
  %746 = sub nsw i32 %743, %745
  %747 = getelementptr inbounds i16, ptr %647, i64 %307
  %748 = load i16, ptr %747, align 2, !tbaa !153
  %749 = zext i16 %748 to i32
  %750 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %645, i64 %241
  %751 = load i32, ptr %750, align 4, !tbaa !39
  %752 = getelementptr inbounds i16, ptr %649, i64 %307
  %753 = load i16, ptr %752, align 2, !tbaa !153
  %754 = zext i16 %753 to i32
  %755 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %645, i64 %241
  %756 = load i32, ptr %755, align 4, !tbaa !39
  %757 = add i32 %756, %746
  %758 = sub i32 %754, %757
  %759 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %645, i64 %241
  store i32 %758, ptr %759, align 4, !tbaa !39
  %760 = ashr i32 %758, 1
  %761 = add nsw i32 %760, %746
  %762 = add i32 %751, %761
  %763 = sub i32 %749, %762
  %764 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %645, i64 %241
  store i32 %763, ptr %764, align 4, !tbaa !39
  %765 = ashr i32 %763, 1
  %766 = add nsw i32 %765, %761
  %767 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %645, i64 %241
  store i32 %766, ptr %767, align 4, !tbaa !39
  %768 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %641, i64 3
  %769 = getelementptr inbounds [16 x [16 x i32]], ptr %302, i64 0, i64 %650, i64 %308
  %770 = select i1 %34, ptr %768, ptr %769
  store i32 %766, ptr %770, align 4, !tbaa !39
  %771 = add nuw nsw i64 %641, 1
  %772 = icmp eq i64 %771, 4
  br i1 %772, label %773, label %640

773:                                              ; preds = %640
  %774 = getelementptr inbounds i8, ptr %221, i64 90208
  %775 = load i32, ptr %774, align 8, !tbaa !161
  %776 = icmp eq i32 %775, 1
  %777 = select i1 %776, i1 true, i1 %23
  %778 = select i1 %777, i1 true, i1 %35
  br i1 %778, label %855, label %779

779:                                              ; preds = %773
  %780 = getelementptr inbounds i8, ptr %221, i64 24
  %781 = load i32, ptr %780, align 8, !tbaa !42
  %782 = icmp eq i32 %781, 3
  br i1 %782, label %785, label %783

783:                                              ; preds = %779
  %784 = call signext i32 @dct_luma(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9, i32 noundef signext 0) #17
  br label %795

785:                                              ; preds = %779
  %786 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %787 = icmp ne i32 %786, 0
  %788 = load i32, ptr @sp2_frame_indicator, align 4
  %789 = icmp ne i32 %788, 0
  %790 = select i1 %787, i1 true, i1 %789
  br i1 %790, label %793, label %791

791:                                              ; preds = %785
  %792 = call signext i32 @dct_luma_sp(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9) #17
  br label %795

793:                                              ; preds = %785
  %794 = call signext i32 @dct_luma_sp2(i32 noundef signext %82, i32 noundef signext %220, ptr noundef nonnull %9) #17
  br label %795

795:                                              ; preds = %791, %793, %783
  %796 = phi i32 [ %784, %783 ], [ %794, %793 ], [ %792, %791 ]
  %797 = load ptr, ptr @img, align 8, !tbaa !6
  %798 = getelementptr inbounds i8, ptr %797, i64 13112
  %799 = load i32, ptr %798, align 4, !tbaa !39
  %800 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %44, i64 %70
  store i32 %799, ptr %800, align 4, !tbaa !39
  %801 = getelementptr inbounds i8, ptr %797, i64 13116
  %802 = load i32, ptr %801, align 4, !tbaa !39
  %803 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %44, i64 %231
  store i32 %802, ptr %803, align 4, !tbaa !39
  %804 = getelementptr inbounds i8, ptr %797, i64 13120
  %805 = load i32, ptr %804, align 4, !tbaa !39
  %806 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %44, i64 %236
  store i32 %805, ptr %806, align 4, !tbaa !39
  %807 = getelementptr inbounds i8, ptr %797, i64 13124
  %808 = load i32, ptr %807, align 4, !tbaa !39
  %809 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %44, i64 %241
  store i32 %808, ptr %809, align 4, !tbaa !39
  %810 = getelementptr inbounds i8, ptr %797, i64 13176
  %811 = load i32, ptr %810, align 4, !tbaa !39
  %812 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %56, i64 %70
  store i32 %811, ptr %812, align 4, !tbaa !39
  %813 = getelementptr inbounds i8, ptr %797, i64 13180
  %814 = load i32, ptr %813, align 4, !tbaa !39
  %815 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %56, i64 %231
  store i32 %814, ptr %815, align 4, !tbaa !39
  %816 = getelementptr inbounds i8, ptr %797, i64 13184
  %817 = load i32, ptr %816, align 4, !tbaa !39
  %818 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %56, i64 %236
  store i32 %817, ptr %818, align 4, !tbaa !39
  %819 = getelementptr inbounds i8, ptr %797, i64 13188
  %820 = load i32, ptr %819, align 4, !tbaa !39
  %821 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %56, i64 %241
  store i32 %820, ptr %821, align 4, !tbaa !39
  %822 = getelementptr inbounds i8, ptr %797, i64 13240
  %823 = load i32, ptr %822, align 4, !tbaa !39
  %824 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %57, i64 %70
  store i32 %823, ptr %824, align 4, !tbaa !39
  %825 = getelementptr inbounds i8, ptr %797, i64 13244
  %826 = load i32, ptr %825, align 4, !tbaa !39
  %827 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %57, i64 %231
  store i32 %826, ptr %827, align 4, !tbaa !39
  %828 = getelementptr inbounds i8, ptr %797, i64 13248
  %829 = load i32, ptr %828, align 4, !tbaa !39
  %830 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %57, i64 %236
  store i32 %829, ptr %830, align 4, !tbaa !39
  %831 = getelementptr inbounds i8, ptr %797, i64 13252
  %832 = load i32, ptr %831, align 4, !tbaa !39
  %833 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %57, i64 %241
  store i32 %832, ptr %833, align 4, !tbaa !39
  %834 = getelementptr inbounds i8, ptr %797, i64 13304
  %835 = load i32, ptr %834, align 4, !tbaa !39
  %836 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %58, i64 %70
  store i32 %835, ptr %836, align 4, !tbaa !39
  %837 = getelementptr inbounds i8, ptr %797, i64 13308
  %838 = load i32, ptr %837, align 4, !tbaa !39
  %839 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %58, i64 %231
  store i32 %838, ptr %839, align 4, !tbaa !39
  %840 = getelementptr inbounds i8, ptr %797, i64 13312
  %841 = load i32, ptr %840, align 4, !tbaa !39
  %842 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %58, i64 %236
  store i32 %841, ptr %842, align 4, !tbaa !39
  %843 = getelementptr inbounds i8, ptr %797, i64 13316
  %844 = load i32, ptr %843, align 4, !tbaa !39
  %845 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %58, i64 %241
  store i32 %844, ptr %845, align 4, !tbaa !39
  %846 = icmp eq i32 %796, 0
  br i1 %846, label %855, label %847

847:                                              ; preds = %795
  %848 = trunc nsw i64 %78 to i32
  %849 = shl nuw i32 1, %848
  %850 = sext i32 %849 to i64
  %851 = load i64, ptr %1, align 8, !tbaa !131
  %852 = or i64 %851, %850
  store i64 %852, ptr %1, align 8, !tbaa !131
  %853 = load i32, ptr %0, align 4, !tbaa !39
  %854 = or i32 %853, %14
  store i32 %854, ptr %0, align 4, !tbaa !39
  br label %855

855:                                              ; preds = %322, %602, %609, %632, %629, %795, %847, %773
  %856 = phi i32 [ %71, %773 ], [ %796, %847 ], [ 0, %795 ], [ %630, %632 ], [ 0, %629 ], [ %71, %609 ], [ %71, %602 ], [ %71, %322 ]
  %857 = add nuw nsw i64 %69, 4
  %858 = add nuw nsw i64 %70, 4
  %859 = icmp ult i64 %858, %39
  br i1 %859, label %68, label %860

860:                                              ; preds = %855
  %861 = add nuw nsw i64 %43, 4
  %862 = add nsw i64 %44, 4
  %863 = icmp slt i64 %862, %41
  br i1 %863, label %42, label %864

864:                                              ; preds = %860
  br i1 %34, label %1103, label %865

865:                                              ; preds = %864
  %866 = load ptr, ptr @img, align 8, !tbaa !6
  %867 = getelementptr inbounds i8, ptr %866, i64 90208
  %868 = load i32, ptr %867, align 8, !tbaa !161
  %869 = icmp eq i32 %868, 1
  %870 = select i1 %869, i1 true, i1 %23
  br i1 %870, label %1103, label %871

871:                                              ; preds = %865
  %872 = getelementptr inbounds i8, ptr %866, i64 24
  %873 = load i32, ptr %872, align 8, !tbaa !42
  %874 = icmp eq i32 %873, 3
  br i1 %874, label %878, label %875

875:                                              ; preds = %871
  %876 = call signext i32 @dct_luma8x8(i32 noundef signext %2, ptr noundef nonnull %9, i32 noundef signext 0) #17
  %877 = load ptr, ptr @img, align 8, !tbaa !6
  br label %878

878:                                              ; preds = %875, %871
  %879 = phi ptr [ %877, %875 ], [ %866, %871 ]
  %880 = phi i32 [ %876, %875 ], [ %856, %871 ]
  %881 = getelementptr inbounds i8, ptr %879, i64 90572
  %882 = load i32, ptr %881, align 4, !tbaa !160
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %1092, label %884

884:                                              ; preds = %878
  %885 = getelementptr inbounds i8, ptr %879, i64 13112
  %886 = zext nneg i32 %13 to i64
  %887 = load i32, ptr %885, align 4, !tbaa !39
  %888 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %886
  store i32 %887, ptr %888, align 4, !tbaa !39
  %889 = getelementptr inbounds i8, ptr %879, i64 13116
  %890 = load i32, ptr %889, align 4, !tbaa !39
  %891 = or disjoint i64 %886, 1
  %892 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %891
  store i32 %890, ptr %892, align 4, !tbaa !39
  %893 = getelementptr inbounds i8, ptr %879, i64 13120
  %894 = load i32, ptr %893, align 4, !tbaa !39
  %895 = or disjoint i64 %886, 2
  %896 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %895
  store i32 %894, ptr %896, align 4, !tbaa !39
  %897 = getelementptr inbounds i8, ptr %879, i64 13124
  %898 = load i32, ptr %897, align 4, !tbaa !39
  %899 = or disjoint i64 %886, 3
  %900 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %899
  store i32 %898, ptr %900, align 4, !tbaa !39
  %901 = getelementptr inbounds i8, ptr %879, i64 13128
  %902 = load i32, ptr %901, align 4, !tbaa !39
  %903 = or disjoint i64 %886, 4
  %904 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %903
  store i32 %902, ptr %904, align 4, !tbaa !39
  %905 = getelementptr inbounds i8, ptr %879, i64 13132
  %906 = load i32, ptr %905, align 4, !tbaa !39
  %907 = or disjoint i64 %886, 5
  %908 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %907
  store i32 %906, ptr %908, align 4, !tbaa !39
  %909 = getelementptr inbounds i8, ptr %879, i64 13136
  %910 = load i32, ptr %909, align 4, !tbaa !39
  %911 = or disjoint i64 %886, 6
  %912 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %911
  store i32 %910, ptr %912, align 4, !tbaa !39
  %913 = getelementptr inbounds i8, ptr %879, i64 13140
  %914 = load i32, ptr %913, align 4, !tbaa !39
  %915 = or disjoint i64 %886, 7
  %916 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %915
  store i32 %914, ptr %916, align 4, !tbaa !39
  %917 = or disjoint i64 %40, 1
  %918 = getelementptr inbounds i8, ptr %879, i64 13176
  %919 = load i32, ptr %918, align 4, !tbaa !39
  %920 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %886
  store i32 %919, ptr %920, align 4, !tbaa !39
  %921 = getelementptr inbounds i8, ptr %879, i64 13180
  %922 = load i32, ptr %921, align 4, !tbaa !39
  %923 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %891
  store i32 %922, ptr %923, align 4, !tbaa !39
  %924 = getelementptr inbounds i8, ptr %879, i64 13184
  %925 = load i32, ptr %924, align 4, !tbaa !39
  %926 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %895
  store i32 %925, ptr %926, align 4, !tbaa !39
  %927 = getelementptr inbounds i8, ptr %879, i64 13188
  %928 = load i32, ptr %927, align 4, !tbaa !39
  %929 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %899
  store i32 %928, ptr %929, align 4, !tbaa !39
  %930 = getelementptr inbounds i8, ptr %879, i64 13192
  %931 = load i32, ptr %930, align 4, !tbaa !39
  %932 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %903
  store i32 %931, ptr %932, align 4, !tbaa !39
  %933 = getelementptr inbounds i8, ptr %879, i64 13196
  %934 = load i32, ptr %933, align 4, !tbaa !39
  %935 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %907
  store i32 %934, ptr %935, align 4, !tbaa !39
  %936 = getelementptr inbounds i8, ptr %879, i64 13200
  %937 = load i32, ptr %936, align 4, !tbaa !39
  %938 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %911
  store i32 %937, ptr %938, align 4, !tbaa !39
  %939 = getelementptr inbounds i8, ptr %879, i64 13204
  %940 = load i32, ptr %939, align 4, !tbaa !39
  %941 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %917, i64 %915
  store i32 %940, ptr %941, align 4, !tbaa !39
  %942 = or disjoint i64 %40, 2
  %943 = getelementptr inbounds i8, ptr %879, i64 13240
  %944 = load i32, ptr %943, align 4, !tbaa !39
  %945 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %886
  store i32 %944, ptr %945, align 4, !tbaa !39
  %946 = getelementptr inbounds i8, ptr %879, i64 13244
  %947 = load i32, ptr %946, align 4, !tbaa !39
  %948 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %891
  store i32 %947, ptr %948, align 4, !tbaa !39
  %949 = getelementptr inbounds i8, ptr %879, i64 13248
  %950 = load i32, ptr %949, align 4, !tbaa !39
  %951 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %895
  store i32 %950, ptr %951, align 4, !tbaa !39
  %952 = getelementptr inbounds i8, ptr %879, i64 13252
  %953 = load i32, ptr %952, align 4, !tbaa !39
  %954 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %899
  store i32 %953, ptr %954, align 4, !tbaa !39
  %955 = getelementptr inbounds i8, ptr %879, i64 13256
  %956 = load i32, ptr %955, align 4, !tbaa !39
  %957 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %903
  store i32 %956, ptr %957, align 4, !tbaa !39
  %958 = getelementptr inbounds i8, ptr %879, i64 13260
  %959 = load i32, ptr %958, align 4, !tbaa !39
  %960 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %907
  store i32 %959, ptr %960, align 4, !tbaa !39
  %961 = getelementptr inbounds i8, ptr %879, i64 13264
  %962 = load i32, ptr %961, align 4, !tbaa !39
  %963 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %911
  store i32 %962, ptr %963, align 4, !tbaa !39
  %964 = getelementptr inbounds i8, ptr %879, i64 13268
  %965 = load i32, ptr %964, align 4, !tbaa !39
  %966 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %942, i64 %915
  store i32 %965, ptr %966, align 4, !tbaa !39
  %967 = or disjoint i64 %40, 3
  %968 = getelementptr inbounds i8, ptr %879, i64 13304
  %969 = load i32, ptr %968, align 4, !tbaa !39
  %970 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %886
  store i32 %969, ptr %970, align 4, !tbaa !39
  %971 = getelementptr inbounds i8, ptr %879, i64 13308
  %972 = load i32, ptr %971, align 4, !tbaa !39
  %973 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %891
  store i32 %972, ptr %973, align 4, !tbaa !39
  %974 = getelementptr inbounds i8, ptr %879, i64 13312
  %975 = load i32, ptr %974, align 4, !tbaa !39
  %976 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %895
  store i32 %975, ptr %976, align 4, !tbaa !39
  %977 = getelementptr inbounds i8, ptr %879, i64 13316
  %978 = load i32, ptr %977, align 4, !tbaa !39
  %979 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %899
  store i32 %978, ptr %979, align 4, !tbaa !39
  %980 = getelementptr inbounds i8, ptr %879, i64 13320
  %981 = load i32, ptr %980, align 4, !tbaa !39
  %982 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %903
  store i32 %981, ptr %982, align 4, !tbaa !39
  %983 = getelementptr inbounds i8, ptr %879, i64 13324
  %984 = load i32, ptr %983, align 4, !tbaa !39
  %985 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %907
  store i32 %984, ptr %985, align 4, !tbaa !39
  %986 = getelementptr inbounds i8, ptr %879, i64 13328
  %987 = load i32, ptr %986, align 4, !tbaa !39
  %988 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %911
  store i32 %987, ptr %988, align 4, !tbaa !39
  %989 = getelementptr inbounds i8, ptr %879, i64 13332
  %990 = load i32, ptr %989, align 4, !tbaa !39
  %991 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %967, i64 %915
  store i32 %990, ptr %991, align 4, !tbaa !39
  %992 = or disjoint i64 %40, 4
  %993 = getelementptr inbounds i8, ptr %879, i64 13368
  %994 = load i32, ptr %993, align 4, !tbaa !39
  %995 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %886
  store i32 %994, ptr %995, align 4, !tbaa !39
  %996 = getelementptr inbounds i8, ptr %879, i64 13372
  %997 = load i32, ptr %996, align 4, !tbaa !39
  %998 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %891
  store i32 %997, ptr %998, align 4, !tbaa !39
  %999 = getelementptr inbounds i8, ptr %879, i64 13376
  %1000 = load i32, ptr %999, align 4, !tbaa !39
  %1001 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %895
  store i32 %1000, ptr %1001, align 4, !tbaa !39
  %1002 = getelementptr inbounds i8, ptr %879, i64 13380
  %1003 = load i32, ptr %1002, align 4, !tbaa !39
  %1004 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %899
  store i32 %1003, ptr %1004, align 4, !tbaa !39
  %1005 = getelementptr inbounds i8, ptr %879, i64 13384
  %1006 = load i32, ptr %1005, align 4, !tbaa !39
  %1007 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %903
  store i32 %1006, ptr %1007, align 4, !tbaa !39
  %1008 = getelementptr inbounds i8, ptr %879, i64 13388
  %1009 = load i32, ptr %1008, align 4, !tbaa !39
  %1010 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %907
  store i32 %1009, ptr %1010, align 4, !tbaa !39
  %1011 = getelementptr inbounds i8, ptr %879, i64 13392
  %1012 = load i32, ptr %1011, align 4, !tbaa !39
  %1013 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %911
  store i32 %1012, ptr %1013, align 4, !tbaa !39
  %1014 = getelementptr inbounds i8, ptr %879, i64 13396
  %1015 = load i32, ptr %1014, align 4, !tbaa !39
  %1016 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %992, i64 %915
  store i32 %1015, ptr %1016, align 4, !tbaa !39
  %1017 = or disjoint i64 %40, 5
  %1018 = getelementptr inbounds i8, ptr %879, i64 13432
  %1019 = load i32, ptr %1018, align 4, !tbaa !39
  %1020 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %886
  store i32 %1019, ptr %1020, align 4, !tbaa !39
  %1021 = getelementptr inbounds i8, ptr %879, i64 13436
  %1022 = load i32, ptr %1021, align 4, !tbaa !39
  %1023 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %891
  store i32 %1022, ptr %1023, align 4, !tbaa !39
  %1024 = getelementptr inbounds i8, ptr %879, i64 13440
  %1025 = load i32, ptr %1024, align 4, !tbaa !39
  %1026 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %895
  store i32 %1025, ptr %1026, align 4, !tbaa !39
  %1027 = getelementptr inbounds i8, ptr %879, i64 13444
  %1028 = load i32, ptr %1027, align 4, !tbaa !39
  %1029 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %899
  store i32 %1028, ptr %1029, align 4, !tbaa !39
  %1030 = getelementptr inbounds i8, ptr %879, i64 13448
  %1031 = load i32, ptr %1030, align 4, !tbaa !39
  %1032 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %903
  store i32 %1031, ptr %1032, align 4, !tbaa !39
  %1033 = getelementptr inbounds i8, ptr %879, i64 13452
  %1034 = load i32, ptr %1033, align 4, !tbaa !39
  %1035 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %907
  store i32 %1034, ptr %1035, align 4, !tbaa !39
  %1036 = getelementptr inbounds i8, ptr %879, i64 13456
  %1037 = load i32, ptr %1036, align 4, !tbaa !39
  %1038 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %911
  store i32 %1037, ptr %1038, align 4, !tbaa !39
  %1039 = getelementptr inbounds i8, ptr %879, i64 13460
  %1040 = load i32, ptr %1039, align 4, !tbaa !39
  %1041 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1017, i64 %915
  store i32 %1040, ptr %1041, align 4, !tbaa !39
  %1042 = or disjoint i64 %40, 6
  %1043 = getelementptr inbounds i8, ptr %879, i64 13496
  %1044 = load i32, ptr %1043, align 4, !tbaa !39
  %1045 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %886
  store i32 %1044, ptr %1045, align 4, !tbaa !39
  %1046 = getelementptr inbounds i8, ptr %879, i64 13500
  %1047 = load i32, ptr %1046, align 4, !tbaa !39
  %1048 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %891
  store i32 %1047, ptr %1048, align 4, !tbaa !39
  %1049 = getelementptr inbounds i8, ptr %879, i64 13504
  %1050 = load i32, ptr %1049, align 4, !tbaa !39
  %1051 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %895
  store i32 %1050, ptr %1051, align 4, !tbaa !39
  %1052 = getelementptr inbounds i8, ptr %879, i64 13508
  %1053 = load i32, ptr %1052, align 4, !tbaa !39
  %1054 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %899
  store i32 %1053, ptr %1054, align 4, !tbaa !39
  %1055 = getelementptr inbounds i8, ptr %879, i64 13512
  %1056 = load i32, ptr %1055, align 4, !tbaa !39
  %1057 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %903
  store i32 %1056, ptr %1057, align 4, !tbaa !39
  %1058 = getelementptr inbounds i8, ptr %879, i64 13516
  %1059 = load i32, ptr %1058, align 4, !tbaa !39
  %1060 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %907
  store i32 %1059, ptr %1060, align 4, !tbaa !39
  %1061 = getelementptr inbounds i8, ptr %879, i64 13520
  %1062 = load i32, ptr %1061, align 4, !tbaa !39
  %1063 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %911
  store i32 %1062, ptr %1063, align 4, !tbaa !39
  %1064 = getelementptr inbounds i8, ptr %879, i64 13524
  %1065 = load i32, ptr %1064, align 4, !tbaa !39
  %1066 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1042, i64 %915
  store i32 %1065, ptr %1066, align 4, !tbaa !39
  %1067 = or disjoint i64 %40, 7
  %1068 = getelementptr inbounds i8, ptr %879, i64 13560
  %1069 = load i32, ptr %1068, align 4, !tbaa !39
  %1070 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %886
  store i32 %1069, ptr %1070, align 4, !tbaa !39
  %1071 = getelementptr inbounds i8, ptr %879, i64 13564
  %1072 = load i32, ptr %1071, align 4, !tbaa !39
  %1073 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %891
  store i32 %1072, ptr %1073, align 4, !tbaa !39
  %1074 = getelementptr inbounds i8, ptr %879, i64 13568
  %1075 = load i32, ptr %1074, align 4, !tbaa !39
  %1076 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %895
  store i32 %1075, ptr %1076, align 4, !tbaa !39
  %1077 = getelementptr inbounds i8, ptr %879, i64 13572
  %1078 = load i32, ptr %1077, align 4, !tbaa !39
  %1079 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %899
  store i32 %1078, ptr %1079, align 4, !tbaa !39
  %1080 = getelementptr inbounds i8, ptr %879, i64 13576
  %1081 = load i32, ptr %1080, align 4, !tbaa !39
  %1082 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %903
  store i32 %1081, ptr %1082, align 4, !tbaa !39
  %1083 = getelementptr inbounds i8, ptr %879, i64 13580
  %1084 = load i32, ptr %1083, align 4, !tbaa !39
  %1085 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %907
  store i32 %1084, ptr %1085, align 4, !tbaa !39
  %1086 = getelementptr inbounds i8, ptr %879, i64 13584
  %1087 = load i32, ptr %1086, align 4, !tbaa !39
  %1088 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %911
  store i32 %1087, ptr %1088, align 4, !tbaa !39
  %1089 = getelementptr inbounds i8, ptr %879, i64 13588
  %1090 = load i32, ptr %1089, align 4, !tbaa !39
  %1091 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1067, i64 %915
  store i32 %1090, ptr %1091, align 4, !tbaa !39
  br label %1092

1092:                                             ; preds = %884, %878
  %1093 = icmp eq i32 %880, 0
  br i1 %1093, label %1103, label %1094

1094:                                             ; preds = %1092
  %1095 = shl nuw nsw i32 %12, 1
  %1096 = sub nsw i32 %10, %1095
  %1097 = shl i32 51, %1096
  %1098 = sext i32 %1097 to i64
  %1099 = load i64, ptr %1, align 8, !tbaa !131
  %1100 = or i64 %1099, %1098
  store i64 %1100, ptr %1, align 8, !tbaa !131
  %1101 = load i32, ptr %0, align 4, !tbaa !39
  %1102 = or i32 %1101, %14
  store i32 %1102, ptr %0, align 4, !tbaa !39
  br label %1103

1103:                                             ; preds = %865, %1094, %1092, %864
  %1104 = load ptr, ptr @img, align 8, !tbaa !6
  %1105 = getelementptr inbounds i8, ptr %1104, i64 90208
  %1106 = load i32, ptr %1105, align 8, !tbaa !161
  %1107 = icmp eq i32 %1106, 1
  %1108 = select i1 %1107, i1 true, i1 %23
  %1109 = load i32, ptr %9, align 4
  %1110 = icmp sgt i32 %1109, 4
  %1111 = select i1 %1108, i1 true, i1 %1110
  br i1 %1111, label %1204, label %1112

1112:                                             ; preds = %1103
  %1113 = getelementptr inbounds i8, ptr %1104, i64 40
  %1114 = load i32, ptr %1113, align 8, !tbaa !104
  %1115 = getelementptr inbounds i8, ptr %1104, i64 90492
  %1116 = load i32, ptr %1115, align 4, !tbaa !55
  %1117 = sub i32 0, %1116
  %1118 = icmp eq i32 %1114, %1117
  br i1 %1118, label %1119, label %1123

1119:                                             ; preds = %1112
  %1120 = getelementptr inbounds i8, ptr %1104, i64 90552
  %1121 = load i32, ptr %1120, align 8, !tbaa !162
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1123, label %1204

1123:                                             ; preds = %1119, %1112
  %1124 = getelementptr inbounds i8, ptr %1104, i64 24
  %1125 = load i32, ptr %1124, align 8, !tbaa !42
  %1126 = icmp eq i32 %1125, 3
  br i1 %1126, label %1127, label %1133

1127:                                             ; preds = %1123
  %1128 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %1129 = icmp eq i32 %1128, 1
  %1130 = load i32, ptr @sp2_frame_indicator, align 4
  %1131 = icmp eq i32 %1130, 1
  %1132 = select i1 %1129, i1 true, i1 %1131
  br i1 %1132, label %1204, label %1133

1133:                                             ; preds = %1127, %1123
  store i32 0, ptr %9, align 4, !tbaa !39
  %1134 = sub nsw i32 63, %14
  %1135 = load i32, ptr %0, align 4, !tbaa !39
  %1136 = and i32 %1135, %1134
  store i32 %1136, ptr %0, align 4, !tbaa !39
  %1137 = shl nuw nsw i32 %12, 1
  %1138 = sub nsw i32 %10, %1137
  %1139 = shl i32 51, %1138
  %1140 = xor i32 %1139, -1
  %1141 = sext i32 %1140 to i64
  %1142 = load i64, ptr %1, align 8, !tbaa !131
  %1143 = and i64 %1142, %1141
  store i64 %1143, ptr %1, align 8, !tbaa !131
  %1144 = getelementptr inbounds i8, ptr %1104, i64 90572
  %1145 = load i32, ptr %1144, align 4, !tbaa !160
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1156, label %1147

1147:                                             ; preds = %1133
  %1148 = or disjoint i64 %40, 1
  %1149 = icmp slt i64 %1148, %41
  %1150 = or disjoint i64 %40, 2
  %1151 = or disjoint i64 %40, 3
  %1152 = or disjoint i64 %40, 4
  %1153 = or disjoint i64 %40, 5
  %1154 = or disjoint i64 %40, 6
  %1155 = or disjoint i64 %40, 7
  br label %1179

1156:                                             ; preds = %1133
  %1157 = zext nneg i32 %13 to i64
  br label %1158

1158:                                             ; preds = %1156, %1158
  %1159 = phi i64 [ %40, %1156 ], [ %1177, %1158 ]
  %1160 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1161 = getelementptr inbounds i8, ptr %1160, i64 6424
  %1162 = load ptr, ptr %1161, align 8, !tbaa !163
  %1163 = load ptr, ptr @img, align 8, !tbaa !6
  %1164 = getelementptr inbounds i8, ptr %1163, i64 156
  %1165 = load i32, ptr %1164, align 4, !tbaa !21
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr ptr, ptr %1162, i64 %1159
  %1168 = getelementptr ptr, ptr %1167, i64 %1166
  %1169 = load ptr, ptr %1168, align 8, !tbaa !6
  %1170 = getelementptr inbounds i8, ptr %1163, i64 152
  %1171 = load i32, ptr %1170, align 8, !tbaa !20
  %1172 = add nsw i32 %1171, %13
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds i16, ptr %1169, i64 %1173
  %1175 = getelementptr inbounds i8, ptr %1163, i64 12600
  %1176 = getelementptr inbounds [16 x [16 x i16]], ptr %1175, i64 0, i64 %1159, i64 %1157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1174, ptr noundef nonnull align 2 dereferenceable(16) %1176, i64 16, i1 false)
  %1177 = add nsw i64 %1159, 1
  %1178 = icmp slt i64 %1177, %41
  br i1 %1178, label %1158, label %1193

1179:                                             ; preds = %1147, %1190
  %1180 = phi i64 [ %38, %1147 ], [ %1191, %1190 ]
  %1181 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %40, i64 %1180
  store i32 0, ptr %1181, align 4, !tbaa !39
  br i1 %1149, label %1182, label %1190

1182:                                             ; preds = %1179
  %1183 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1148, i64 %1180
  store i32 0, ptr %1183, align 4, !tbaa !39
  %1184 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1150, i64 %1180
  store i32 0, ptr %1184, align 4, !tbaa !39
  %1185 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1151, i64 %1180
  store i32 0, ptr %1185, align 4, !tbaa !39
  %1186 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1152, i64 %1180
  store i32 0, ptr %1186, align 4, !tbaa !39
  %1187 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1153, i64 %1180
  store i32 0, ptr %1187, align 4, !tbaa !39
  %1188 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1154, i64 %1180
  store i32 0, ptr %1188, align 4, !tbaa !39
  %1189 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1155, i64 %1180
  store i32 0, ptr %1189, align 4, !tbaa !39
  br label %1190

1190:                                             ; preds = %1182, %1179
  %1191 = add nuw nsw i64 %1180, 1
  %1192 = icmp eq i64 %1191, %39
  br i1 %1192, label %1195, label %1179

1193:                                             ; preds = %1158
  %1194 = load ptr, ptr @img, align 8, !tbaa !6
  br label %1195

1195:                                             ; preds = %1190, %1193
  %1196 = phi ptr [ %1194, %1193 ], [ %1104, %1190 ]
  %1197 = getelementptr inbounds i8, ptr %1196, i64 24
  %1198 = load i32, ptr %1197, align 8, !tbaa !42
  %1199 = icmp eq i32 %1198, 3
  br i1 %1199, label %1200, label %1204

1200:                                             ; preds = %1195
  call void @copyblock_sp(i32 noundef signext %13, i32 noundef signext %11) #17
  %1201 = or i32 %10, 4
  call void @copyblock_sp(i32 noundef signext %13, i32 noundef signext %1201) #17
  %1202 = or disjoint i32 %13, 4
  call void @copyblock_sp(i32 noundef signext %1202, i32 noundef signext %11) #17
  call void @copyblock_sp(i32 noundef signext %1202, i32 noundef signext %1201) #17
  %1203 = load i32, ptr %9, align 4, !tbaa !39
  br label %1204

1204:                                             ; preds = %1200, %1195, %1127, %1119, %1103
  %1205 = phi i32 [ %1203, %1200 ], [ 0, %1195 ], [ %1109, %1127 ], [ %1109, %1119 ], [ %1109, %1103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  ret i32 %1205
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @ChromaPrediction4x4(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #7 {
  %9 = add nsw i32 %1, 4
  %10 = add nsw i32 %2, 4
  %11 = load ptr, ptr @img, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 89336
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = getelementptr inbounds i8, ptr %11, i64 31576
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds i8, ptr %11, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !10
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 192
  %21 = load i32, ptr %20, align 8, !tbaa !157
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds i8, ptr %11, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa !42
  switch i32 %25, label %26 [
    i32 0, label %34
    i32 3, label %34
  ]

26:                                               ; preds = %23, %8
  %27 = getelementptr inbounds i8, ptr %19, i64 196
  %28 = load i32, ptr %27, align 4, !tbaa !158
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %11, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !42
  %33 = icmp eq i32 %32, 1
  br label %34

34:                                               ; preds = %23, %23, %26, %30
  %35 = phi i1 [ true, %23 ], [ false, %26 ], [ %33, %30 ], [ true, %23 ]
  %36 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18, i32 32
  %37 = load i16, ptr %36, align 4, !tbaa !159
  %38 = icmp ne i16 %37, 0
  %39 = or i16 %7, %6
  %40 = icmp eq i16 %39, 0
  %41 = and i1 %40, %38
  %42 = icmp eq i32 %3, 2
  %43 = icmp eq i32 %4, 1
  %44 = and i1 %43, %41
  %45 = icmp eq i32 %5, 1
  %46 = and i1 %45, %44
  %47 = and i1 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = icmp eq i16 %37, 1
  %50 = select i1 %49, i64 89344, i64 89352
  %51 = getelementptr inbounds i8, ptr %11, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  br label %90

53:                                               ; preds = %34
  %54 = icmp eq i32 %3, -1
  br i1 %54, label %55, label %88

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18, i32 17
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = sext i32 %1 to i64
  %59 = sext i32 %0 to i64
  %60 = sext i32 %57 to i64
  %61 = sext i32 %2 to i64
  %62 = getelementptr inbounds i8, ptr %11, i64 12600
  %63 = getelementptr inbounds [16 x [16 x i16]], ptr %62, i64 0, i64 %61, i64 %58
  %64 = getelementptr inbounds i8, ptr %11, i64 8504
  %65 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %64, i64 0, i64 %59, i64 %60, i64 %61, i64 %58
  %66 = load i64, ptr %65, align 2
  store i64 %66, ptr %63, align 2
  %67 = add nsw i64 %61, 1
  %68 = load ptr, ptr @img, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 12600
  %70 = getelementptr inbounds [16 x [16 x i16]], ptr %69, i64 0, i64 %67, i64 %58
  %71 = getelementptr inbounds i8, ptr %68, i64 8504
  %72 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %71, i64 0, i64 %59, i64 %60, i64 %67, i64 %58
  %73 = load i64, ptr %72, align 2
  store i64 %73, ptr %70, align 2
  %74 = add nsw i64 %61, 2
  %75 = load ptr, ptr @img, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %75, i64 12600
  %77 = getelementptr inbounds [16 x [16 x i16]], ptr %76, i64 0, i64 %74, i64 %58
  %78 = getelementptr inbounds i8, ptr %75, i64 8504
  %79 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %78, i64 0, i64 %59, i64 %60, i64 %74, i64 %58
  %80 = load i64, ptr %79, align 2
  store i64 %80, ptr %77, align 2
  %81 = add nsw i64 %61, 3
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 12600
  %84 = getelementptr inbounds [16 x [16 x i16]], ptr %83, i64 0, i64 %81, i64 %58
  %85 = getelementptr inbounds i8, ptr %82, i64 8504
  %86 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %85, i64 0, i64 %59, i64 %60, i64 %81, i64 %58
  %87 = load i64, ptr %86, align 2
  store i64 %87, ptr %84, align 2
  br label %717

88:                                               ; preds = %53
  %89 = icmp eq i32 %3, 0
  switch i32 %3, label %93 [
    i32 2, label %90
    i32 0, label %90
  ]

90:                                               ; preds = %48, %88, %88
  %91 = phi i1 [ false, %48 ], [ %89, %88 ], [ %89, %88 ]
  %92 = phi ptr [ %52, %48 ], [ %13, %88 ], [ %13, %88 ]
  tail call void @OneComponentChromaPrediction4x4(ptr noundef nonnull @ChromaPrediction4x4.fw_pred, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %92, i32 noundef signext 0, i16 noundef signext %6, i32 noundef signext %4, i32 noundef signext %0)
  br label %93

93:                                               ; preds = %88, %90
  %94 = phi i1 [ %89, %88 ], [ %91, %90 ]
  %95 = phi ptr [ %13, %88 ], [ %92, %90 ]
  %96 = add i32 %3, -1
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  tail call void @OneComponentChromaPrediction4x4(ptr noundef nonnull @ChromaPrediction4x4.bw_pred, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %95, i32 noundef signext 1, i16 noundef signext %7, i32 noundef signext %5, i32 noundef signext %0)
  br label %99

99:                                               ; preds = %93, %98
  br i1 %35, label %100, label %389

100:                                              ; preds = %99
  br i1 %42, label %101, label %223

101:                                              ; preds = %100
  %102 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = sext i16 %6 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = sext i16 %7 to i64
  %108 = getelementptr inbounds ptr, ptr %106, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = add nsw i32 %0, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %109, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = getelementptr inbounds i8, ptr %102, i64 8
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds ptr, ptr %115, i64 %104
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds ptr, ptr %117, i64 %107
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds i32, ptr %119, i64 %111
  %121 = load i32, ptr %120, align 4, !tbaa !39
  %122 = load i32, ptr @wp_chroma_round, align 4, !tbaa !39
  %123 = shl nsw i32 %122, 1
  %124 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !39
  %125 = add nsw i32 %124, 1
  %126 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = getelementptr inbounds ptr, ptr %127, i64 %104
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = getelementptr inbounds i32, ptr %129, i64 %111
  %131 = load i32, ptr %130, align 4, !tbaa !39
  %132 = getelementptr inbounds i8, ptr %126, i64 8
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  %134 = getelementptr inbounds ptr, ptr %133, i64 %107
  %135 = load ptr, ptr %134, align 8, !tbaa !6
  %136 = getelementptr inbounds i32, ptr %135, i64 %111
  %137 = load i32, ptr %136, align 4, !tbaa !39
  %138 = add i32 %131, 1
  %139 = add i32 %138, %137
  %140 = ashr i32 %139, 1
  %141 = load ptr, ptr @img, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 90536
  %143 = load i32, ptr %142, align 8, !tbaa !38
  %144 = getelementptr inbounds i8, ptr %141, i64 12600
  %145 = sext i32 %1 to i64
  %146 = sext i32 %9 to i64
  %147 = sext i32 %2 to i64
  %148 = sext i32 %10 to i64
  %149 = add nsw i64 %145, 1
  %150 = icmp slt i64 %149, %146
  %151 = add nsw i64 %145, 2
  %152 = add nsw i64 %145, 3
  br label %153

153:                                              ; preds = %101, %218
  %154 = phi i64 [ %147, %101 ], [ %221, %218 ]
  %155 = phi ptr [ @ChromaPrediction4x4.bw_pred, %101 ], [ %220, %218 ]
  %156 = phi ptr [ @ChromaPrediction4x4.fw_pred, %101 ], [ %219, %218 ]
  %157 = getelementptr inbounds i8, ptr %156, i64 4
  %158 = load i32, ptr %156, align 4, !tbaa !39
  %159 = mul nsw i32 %158, %113
  %160 = getelementptr inbounds i8, ptr %155, i64 4
  %161 = load i32, ptr %155, align 4, !tbaa !39
  %162 = mul nsw i32 %161, %121
  %163 = add nsw i32 %162, %159
  %164 = add nsw i32 %163, %123
  %165 = ashr i32 %164, %125
  %166 = add nsw i32 %140, %165
  %167 = icmp slt i32 %143, %166
  %168 = tail call i32 @llvm.smax.i32(i32 %166, i32 0)
  %169 = select i1 %167, i32 %143, i32 %168
  %170 = trunc i32 %169 to i16
  %171 = getelementptr inbounds [16 x [16 x i16]], ptr %144, i64 0, i64 %154, i64 %145
  store i16 %170, ptr %171, align 2, !tbaa !153
  br i1 %150, label %172, label %218

172:                                              ; preds = %153
  %173 = getelementptr inbounds i8, ptr %156, i64 8
  %174 = load i32, ptr %157, align 4, !tbaa !39
  %175 = mul nsw i32 %174, %113
  %176 = getelementptr inbounds i8, ptr %155, i64 8
  %177 = load i32, ptr %160, align 4, !tbaa !39
  %178 = mul nsw i32 %177, %121
  %179 = add nsw i32 %178, %175
  %180 = add nsw i32 %179, %123
  %181 = ashr i32 %180, %125
  %182 = add nsw i32 %140, %181
  %183 = icmp slt i32 %143, %182
  %184 = tail call i32 @llvm.smax.i32(i32 %182, i32 0)
  %185 = select i1 %183, i32 %143, i32 %184
  %186 = trunc i32 %185 to i16
  %187 = getelementptr inbounds [16 x [16 x i16]], ptr %144, i64 0, i64 %154, i64 %149
  store i16 %186, ptr %187, align 2, !tbaa !153
  %188 = getelementptr inbounds i8, ptr %156, i64 12
  %189 = load i32, ptr %173, align 4, !tbaa !39
  %190 = mul nsw i32 %189, %113
  %191 = getelementptr inbounds i8, ptr %155, i64 12
  %192 = load i32, ptr %176, align 4, !tbaa !39
  %193 = mul nsw i32 %192, %121
  %194 = add nsw i32 %193, %190
  %195 = add nsw i32 %194, %123
  %196 = ashr i32 %195, %125
  %197 = add nsw i32 %140, %196
  %198 = icmp slt i32 %143, %197
  %199 = tail call i32 @llvm.smax.i32(i32 %197, i32 0)
  %200 = select i1 %198, i32 %143, i32 %199
  %201 = trunc i32 %200 to i16
  %202 = getelementptr inbounds [16 x [16 x i16]], ptr %144, i64 0, i64 %154, i64 %151
  store i16 %201, ptr %202, align 2, !tbaa !153
  %203 = getelementptr inbounds i8, ptr %156, i64 16
  %204 = load i32, ptr %188, align 4, !tbaa !39
  %205 = mul nsw i32 %204, %113
  %206 = getelementptr inbounds i8, ptr %155, i64 16
  %207 = load i32, ptr %191, align 4, !tbaa !39
  %208 = mul nsw i32 %207, %121
  %209 = add nsw i32 %208, %205
  %210 = add nsw i32 %209, %123
  %211 = ashr i32 %210, %125
  %212 = add nsw i32 %140, %211
  %213 = icmp slt i32 %143, %212
  %214 = tail call i32 @llvm.smax.i32(i32 %212, i32 0)
  %215 = select i1 %213, i32 %143, i32 %214
  %216 = trunc i32 %215 to i16
  %217 = getelementptr inbounds [16 x [16 x i16]], ptr %144, i64 0, i64 %154, i64 %152
  store i16 %216, ptr %217, align 2, !tbaa !153
  br label %218

218:                                              ; preds = %172, %153
  %219 = phi ptr [ %157, %153 ], [ %203, %172 ]
  %220 = phi ptr [ %160, %153 ], [ %206, %172 ]
  %221 = add nsw i64 %154, 1
  %222 = icmp slt i64 %221, %148
  br i1 %222, label %153, label %717

223:                                              ; preds = %100
  %224 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  br i1 %94, label %256, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %224, i64 8
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = sext i16 %7 to i64
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = add nsw i32 %0, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !39
  %235 = load i32, ptr @wp_chroma_round, align 4, !tbaa !39
  %236 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !39
  %237 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %238 = getelementptr inbounds i8, ptr %237, i64 8
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  %240 = getelementptr inbounds ptr, ptr %239, i64 %228
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = getelementptr inbounds i32, ptr %241, i64 %232
  %243 = load i32, ptr %242, align 4, !tbaa !39
  %244 = load ptr, ptr @img, align 8, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %244, i64 90536
  %246 = load i32, ptr %245, align 8, !tbaa !38
  %247 = getelementptr inbounds i8, ptr %244, i64 12600
  %248 = sext i32 %1 to i64
  %249 = sext i32 %9 to i64
  %250 = sext i32 %2 to i64
  %251 = sext i32 %10 to i64
  %252 = add nsw i64 %248, 1
  %253 = icmp slt i64 %252, %249
  %254 = add nsw i64 %248, 2
  %255 = add nsw i64 %248, 3
  br label %337

256:                                              ; preds = %223
  %257 = load ptr, ptr %224, align 8, !tbaa !6
  %258 = sext i16 %6 to i64
  %259 = getelementptr inbounds ptr, ptr %257, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = add nsw i32 %0, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %260, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !39
  %265 = load i32, ptr @wp_chroma_round, align 4, !tbaa !39
  %266 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !39
  %267 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds ptr, ptr %268, i64 %258
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = getelementptr inbounds i32, ptr %270, i64 %262
  %272 = load i32, ptr %271, align 4, !tbaa !39
  %273 = load ptr, ptr @img, align 8, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %273, i64 90536
  %275 = load i32, ptr %274, align 8, !tbaa !38
  %276 = getelementptr inbounds i8, ptr %273, i64 12600
  %277 = sext i32 %1 to i64
  %278 = sext i32 %9 to i64
  %279 = sext i32 %2 to i64
  %280 = sext i32 %10 to i64
  %281 = add nsw i64 %277, 1
  %282 = icmp slt i64 %281, %278
  %283 = add nsw i64 %277, 2
  %284 = add nsw i64 %277, 3
  br label %285

285:                                              ; preds = %256, %333
  %286 = phi i64 [ %279, %256 ], [ %335, %333 ]
  %287 = phi ptr [ @ChromaPrediction4x4.fw_pred, %256 ], [ %334, %333 ]
  %288 = getelementptr inbounds i8, ptr %287, i64 4
  %289 = load i32, ptr %287, align 4, !tbaa !39
  %290 = mul nsw i32 %289, %264
  %291 = add nsw i32 %290, %265
  %292 = ashr i32 %291, %266
  %293 = add nsw i32 %272, %292
  %294 = icmp slt i32 %275, %293
  %295 = tail call i32 @llvm.smax.i32(i32 %293, i32 0)
  %296 = select i1 %294, i32 %275, i32 %295
  %297 = trunc i32 %296 to i16
  %298 = getelementptr inbounds [16 x [16 x i16]], ptr %276, i64 0, i64 %286, i64 %277
  store i16 %297, ptr %298, align 2, !tbaa !153
  br i1 %282, label %299, label %333

299:                                              ; preds = %285
  %300 = getelementptr inbounds i8, ptr %287, i64 8
  %301 = load i32, ptr %288, align 4, !tbaa !39
  %302 = mul nsw i32 %301, %264
  %303 = add nsw i32 %302, %265
  %304 = ashr i32 %303, %266
  %305 = add nsw i32 %272, %304
  %306 = icmp slt i32 %275, %305
  %307 = tail call i32 @llvm.smax.i32(i32 %305, i32 0)
  %308 = select i1 %306, i32 %275, i32 %307
  %309 = trunc i32 %308 to i16
  %310 = getelementptr inbounds [16 x [16 x i16]], ptr %276, i64 0, i64 %286, i64 %281
  store i16 %309, ptr %310, align 2, !tbaa !153
  %311 = getelementptr inbounds i8, ptr %287, i64 12
  %312 = load i32, ptr %300, align 4, !tbaa !39
  %313 = mul nsw i32 %312, %264
  %314 = add nsw i32 %313, %265
  %315 = ashr i32 %314, %266
  %316 = add nsw i32 %272, %315
  %317 = icmp slt i32 %275, %316
  %318 = tail call i32 @llvm.smax.i32(i32 %316, i32 0)
  %319 = select i1 %317, i32 %275, i32 %318
  %320 = trunc i32 %319 to i16
  %321 = getelementptr inbounds [16 x [16 x i16]], ptr %276, i64 0, i64 %286, i64 %283
  store i16 %320, ptr %321, align 2, !tbaa !153
  %322 = getelementptr inbounds i8, ptr %287, i64 16
  %323 = load i32, ptr %311, align 4, !tbaa !39
  %324 = mul nsw i32 %323, %264
  %325 = add nsw i32 %324, %265
  %326 = ashr i32 %325, %266
  %327 = add nsw i32 %272, %326
  %328 = icmp slt i32 %275, %327
  %329 = tail call i32 @llvm.smax.i32(i32 %327, i32 0)
  %330 = select i1 %328, i32 %275, i32 %329
  %331 = trunc i32 %330 to i16
  %332 = getelementptr inbounds [16 x [16 x i16]], ptr %276, i64 0, i64 %286, i64 %284
  store i16 %331, ptr %332, align 2, !tbaa !153
  br label %333

333:                                              ; preds = %299, %285
  %334 = phi ptr [ %288, %285 ], [ %322, %299 ]
  %335 = add nsw i64 %286, 1
  %336 = icmp slt i64 %335, %280
  br i1 %336, label %285, label %717

337:                                              ; preds = %225, %385
  %338 = phi i64 [ %250, %225 ], [ %387, %385 ]
  %339 = phi ptr [ @ChromaPrediction4x4.bw_pred, %225 ], [ %386, %385 ]
  %340 = getelementptr inbounds i8, ptr %339, i64 4
  %341 = load i32, ptr %339, align 4, !tbaa !39
  %342 = mul nsw i32 %341, %234
  %343 = add nsw i32 %342, %235
  %344 = ashr i32 %343, %236
  %345 = add nsw i32 %243, %344
  %346 = icmp slt i32 %246, %345
  %347 = tail call i32 @llvm.smax.i32(i32 %345, i32 0)
  %348 = select i1 %346, i32 %246, i32 %347
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds [16 x [16 x i16]], ptr %247, i64 0, i64 %338, i64 %248
  store i16 %349, ptr %350, align 2, !tbaa !153
  br i1 %253, label %351, label %385

351:                                              ; preds = %337
  %352 = getelementptr inbounds i8, ptr %339, i64 8
  %353 = load i32, ptr %340, align 4, !tbaa !39
  %354 = mul nsw i32 %353, %234
  %355 = add nsw i32 %354, %235
  %356 = ashr i32 %355, %236
  %357 = add nsw i32 %243, %356
  %358 = icmp slt i32 %246, %357
  %359 = tail call i32 @llvm.smax.i32(i32 %357, i32 0)
  %360 = select i1 %358, i32 %246, i32 %359
  %361 = trunc i32 %360 to i16
  %362 = getelementptr inbounds [16 x [16 x i16]], ptr %247, i64 0, i64 %338, i64 %252
  store i16 %361, ptr %362, align 2, !tbaa !153
  %363 = getelementptr inbounds i8, ptr %339, i64 12
  %364 = load i32, ptr %352, align 4, !tbaa !39
  %365 = mul nsw i32 %364, %234
  %366 = add nsw i32 %365, %235
  %367 = ashr i32 %366, %236
  %368 = add nsw i32 %243, %367
  %369 = icmp slt i32 %246, %368
  %370 = tail call i32 @llvm.smax.i32(i32 %368, i32 0)
  %371 = select i1 %369, i32 %246, i32 %370
  %372 = trunc i32 %371 to i16
  %373 = getelementptr inbounds [16 x [16 x i16]], ptr %247, i64 0, i64 %338, i64 %254
  store i16 %372, ptr %373, align 2, !tbaa !153
  %374 = getelementptr inbounds i8, ptr %339, i64 16
  %375 = load i32, ptr %363, align 4, !tbaa !39
  %376 = mul nsw i32 %375, %234
  %377 = add nsw i32 %376, %235
  %378 = ashr i32 %377, %236
  %379 = add nsw i32 %243, %378
  %380 = icmp slt i32 %246, %379
  %381 = tail call i32 @llvm.smax.i32(i32 %379, i32 0)
  %382 = select i1 %380, i32 %246, i32 %381
  %383 = trunc i32 %382 to i16
  %384 = getelementptr inbounds [16 x [16 x i16]], ptr %247, i64 0, i64 %338, i64 %255
  store i16 %383, ptr %384, align 2, !tbaa !153
  br label %385

385:                                              ; preds = %351, %337
  %386 = phi ptr [ %340, %337 ], [ %374, %351 ]
  %387 = add nsw i64 %338, 1
  %388 = icmp slt i64 %387, %251
  br i1 %388, label %337, label %717

389:                                              ; preds = %99
  %390 = load ptr, ptr @img, align 8, !tbaa !6
  %391 = getelementptr inbounds i8, ptr %390, i64 12600
  %392 = sext i32 %1 to i64
  %393 = sext i32 %9 to i64
  %394 = sext i32 %2 to i64
  %395 = sext i32 %10 to i64
  br i1 %42, label %396, label %559

396:                                              ; preds = %389
  %397 = load i32, ptr @ChromaPrediction4x4.fw_pred, align 4, !tbaa !39
  %398 = load i32, ptr @ChromaPrediction4x4.bw_pred, align 4, !tbaa !39
  %399 = add i32 %397, 1
  %400 = add i32 %399, %398
  %401 = lshr i32 %400, 1
  %402 = trunc i32 %401 to i16
  %403 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %392
  store i16 %402, ptr %403, align 2, !tbaa !153
  %404 = add nsw i64 %392, 1
  %405 = icmp slt i64 %404, %393
  br i1 %405, label %406, label %430

406:                                              ; preds = %396
  %407 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %408 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %409 = add i32 %407, 1
  %410 = add i32 %409, %408
  %411 = lshr i32 %410, 1
  %412 = trunc i32 %411 to i16
  %413 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %404
  store i16 %412, ptr %413, align 2, !tbaa !153
  %414 = add nsw i64 %392, 2
  %415 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %416 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %417 = add i32 %415, 1
  %418 = add i32 %417, %416
  %419 = lshr i32 %418, 1
  %420 = trunc i32 %419 to i16
  %421 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %414
  store i16 %420, ptr %421, align 2, !tbaa !153
  %422 = add nsw i64 %392, 3
  %423 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %424 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %425 = add i32 %423, 1
  %426 = add i32 %425, %424
  %427 = lshr i32 %426, 1
  %428 = trunc i32 %427 to i16
  %429 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %422
  store i16 %428, ptr %429, align 2, !tbaa !153
  br label %430

430:                                              ; preds = %406, %396
  %431 = phi ptr [ getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 4), %396 ], [ getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 16), %406 ]
  %432 = phi ptr [ getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 4), %396 ], [ getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 16), %406 ]
  %433 = add nsw i64 %394, 1
  %434 = icmp slt i64 %433, %395
  br i1 %434, label %435, label %717

435:                                              ; preds = %430
  %436 = getelementptr inbounds i8, ptr %431, i64 4
  %437 = load i32, ptr %431, align 4, !tbaa !39
  %438 = getelementptr inbounds i8, ptr %432, i64 4
  %439 = load i32, ptr %432, align 4, !tbaa !39
  %440 = add i32 %437, 1
  %441 = add i32 %440, %439
  %442 = lshr i32 %441, 1
  %443 = trunc i32 %442 to i16
  %444 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %433, i64 %392
  store i16 %443, ptr %444, align 2, !tbaa !153
  br i1 %405, label %445, label %475

445:                                              ; preds = %435
  %446 = getelementptr inbounds i8, ptr %431, i64 8
  %447 = load i32, ptr %436, align 4, !tbaa !39
  %448 = getelementptr inbounds i8, ptr %432, i64 8
  %449 = load i32, ptr %438, align 4, !tbaa !39
  %450 = add i32 %447, 1
  %451 = add i32 %450, %449
  %452 = lshr i32 %451, 1
  %453 = trunc i32 %452 to i16
  %454 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %433, i64 %404
  store i16 %453, ptr %454, align 2, !tbaa !153
  %455 = add nsw i64 %392, 2
  %456 = getelementptr inbounds i8, ptr %431, i64 12
  %457 = load i32, ptr %446, align 4, !tbaa !39
  %458 = getelementptr inbounds i8, ptr %432, i64 12
  %459 = load i32, ptr %448, align 4, !tbaa !39
  %460 = add i32 %457, 1
  %461 = add i32 %460, %459
  %462 = lshr i32 %461, 1
  %463 = trunc i32 %462 to i16
  %464 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %433, i64 %455
  store i16 %463, ptr %464, align 2, !tbaa !153
  %465 = add nsw i64 %392, 3
  %466 = getelementptr inbounds i8, ptr %431, i64 16
  %467 = load i32, ptr %456, align 4, !tbaa !39
  %468 = getelementptr inbounds i8, ptr %432, i64 16
  %469 = load i32, ptr %458, align 4, !tbaa !39
  %470 = add i32 %467, 1
  %471 = add i32 %470, %469
  %472 = lshr i32 %471, 1
  %473 = trunc i32 %472 to i16
  %474 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %433, i64 %465
  store i16 %473, ptr %474, align 2, !tbaa !153
  br label %475

475:                                              ; preds = %445, %435
  %476 = phi ptr [ %436, %435 ], [ %466, %445 ]
  %477 = phi ptr [ %438, %435 ], [ %468, %445 ]
  %478 = add nsw i64 %394, 2
  %479 = getelementptr inbounds i8, ptr %476, i64 4
  %480 = load i32, ptr %476, align 4, !tbaa !39
  %481 = getelementptr inbounds i8, ptr %477, i64 4
  %482 = load i32, ptr %477, align 4, !tbaa !39
  %483 = add i32 %480, 1
  %484 = add i32 %483, %482
  %485 = lshr i32 %484, 1
  %486 = trunc i32 %485 to i16
  %487 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %478, i64 %392
  store i16 %486, ptr %487, align 2, !tbaa !153
  br i1 %405, label %488, label %518

488:                                              ; preds = %475
  %489 = getelementptr inbounds i8, ptr %476, i64 8
  %490 = load i32, ptr %479, align 4, !tbaa !39
  %491 = getelementptr inbounds i8, ptr %477, i64 8
  %492 = load i32, ptr %481, align 4, !tbaa !39
  %493 = add i32 %490, 1
  %494 = add i32 %493, %492
  %495 = lshr i32 %494, 1
  %496 = trunc i32 %495 to i16
  %497 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %478, i64 %404
  store i16 %496, ptr %497, align 2, !tbaa !153
  %498 = add nsw i64 %392, 2
  %499 = getelementptr inbounds i8, ptr %476, i64 12
  %500 = load i32, ptr %489, align 4, !tbaa !39
  %501 = getelementptr inbounds i8, ptr %477, i64 12
  %502 = load i32, ptr %491, align 4, !tbaa !39
  %503 = add i32 %500, 1
  %504 = add i32 %503, %502
  %505 = lshr i32 %504, 1
  %506 = trunc i32 %505 to i16
  %507 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %478, i64 %498
  store i16 %506, ptr %507, align 2, !tbaa !153
  %508 = add nsw i64 %392, 3
  %509 = getelementptr inbounds i8, ptr %476, i64 16
  %510 = load i32, ptr %499, align 4, !tbaa !39
  %511 = getelementptr inbounds i8, ptr %477, i64 16
  %512 = load i32, ptr %501, align 4, !tbaa !39
  %513 = add i32 %510, 1
  %514 = add i32 %513, %512
  %515 = lshr i32 %514, 1
  %516 = trunc i32 %515 to i16
  %517 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %478, i64 %508
  store i16 %516, ptr %517, align 2, !tbaa !153
  br label %518

518:                                              ; preds = %488, %475
  %519 = phi ptr [ %479, %475 ], [ %509, %488 ]
  %520 = phi ptr [ %481, %475 ], [ %511, %488 ]
  %521 = add nsw i64 %394, 3
  %522 = load i32, ptr %519, align 4, !tbaa !39
  %523 = load i32, ptr %520, align 4, !tbaa !39
  %524 = add i32 %522, 1
  %525 = add i32 %524, %523
  %526 = lshr i32 %525, 1
  %527 = trunc i32 %526 to i16
  %528 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %521, i64 %392
  store i16 %527, ptr %528, align 2, !tbaa !153
  br i1 %405, label %529, label %717

529:                                              ; preds = %518
  %530 = getelementptr inbounds i8, ptr %520, i64 4
  %531 = getelementptr inbounds i8, ptr %519, i64 4
  %532 = getelementptr inbounds i8, ptr %519, i64 8
  %533 = load i32, ptr %531, align 4, !tbaa !39
  %534 = getelementptr inbounds i8, ptr %520, i64 8
  %535 = load i32, ptr %530, align 4, !tbaa !39
  %536 = add i32 %533, 1
  %537 = add i32 %536, %535
  %538 = lshr i32 %537, 1
  %539 = trunc i32 %538 to i16
  %540 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %521, i64 %404
  store i16 %539, ptr %540, align 2, !tbaa !153
  %541 = add nsw i64 %392, 2
  %542 = getelementptr inbounds i8, ptr %519, i64 12
  %543 = load i32, ptr %532, align 4, !tbaa !39
  %544 = getelementptr inbounds i8, ptr %520, i64 12
  %545 = load i32, ptr %534, align 4, !tbaa !39
  %546 = add i32 %543, 1
  %547 = add i32 %546, %545
  %548 = lshr i32 %547, 1
  %549 = trunc i32 %548 to i16
  %550 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %521, i64 %541
  store i16 %549, ptr %550, align 2, !tbaa !153
  %551 = add nsw i64 %392, 3
  %552 = load i32, ptr %542, align 4, !tbaa !39
  %553 = load i32, ptr %544, align 4, !tbaa !39
  %554 = add i32 %552, 1
  %555 = add i32 %554, %553
  %556 = lshr i32 %555, 1
  %557 = trunc i32 %556 to i16
  %558 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %521, i64 %551
  store i16 %557, ptr %558, align 2, !tbaa !153
  br label %717

559:                                              ; preds = %389
  %560 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %392
  %561 = add nsw i64 %392, 1
  %562 = icmp slt i64 %561, %393
  br i1 %94, label %566, label %563

563:                                              ; preds = %559
  %564 = load i32, ptr @ChromaPrediction4x4.bw_pred, align 4, !tbaa !39
  %565 = trunc i32 %564 to i16
  store i16 %565, ptr %560, align 2, !tbaa !153
  br i1 %562, label %643, label %657

566:                                              ; preds = %559
  %567 = load i32, ptr @ChromaPrediction4x4.fw_pred, align 4, !tbaa !39
  %568 = trunc i32 %567 to i16
  store i16 %568, ptr %560, align 2, !tbaa !153
  br i1 %562, label %569, label %583

569:                                              ; preds = %566
  %570 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %571 = trunc i32 %570 to i16
  %572 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %561
  store i16 %571, ptr %572, align 2, !tbaa !153
  %573 = add nsw i64 %392, 2
  %574 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %575 = trunc i32 %574 to i16
  %576 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %573
  store i16 %575, ptr %576, align 2, !tbaa !153
  %577 = add nsw i64 %392, 3
  %578 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %579 = trunc i32 %578 to i16
  %580 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %577
  store i16 %579, ptr %580, align 2, !tbaa !153
  %581 = add nsw i64 %394, 1
  %582 = icmp slt i64 %581, %395
  br i1 %582, label %598, label %717

583:                                              ; preds = %566
  %584 = add nsw i64 %394, 1
  %585 = icmp slt i64 %584, %395
  br i1 %585, label %586, label %717

586:                                              ; preds = %583
  %587 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 4), align 4, !tbaa !39
  %588 = trunc i32 %587 to i16
  %589 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %584, i64 %392
  store i16 %588, ptr %589, align 2, !tbaa !153
  %590 = add nsw i64 %394, 2
  %591 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 8), align 4, !tbaa !39
  %592 = trunc i32 %591 to i16
  %593 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %590, i64 %392
  store i16 %592, ptr %593, align 2, !tbaa !153
  %594 = add nsw i64 %394, 3
  %595 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 12), align 4, !tbaa !39
  %596 = trunc i32 %595 to i16
  %597 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %594, i64 %392
  store i16 %596, ptr %597, align 2, !tbaa !153
  br label %717

598:                                              ; preds = %569
  %599 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 16), align 4, !tbaa !39
  %600 = trunc i32 %599 to i16
  %601 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %581, i64 %392
  store i16 %600, ptr %601, align 2, !tbaa !153
  %602 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 20), align 4, !tbaa !39
  %603 = trunc i32 %602 to i16
  %604 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %581, i64 %561
  store i16 %603, ptr %604, align 2, !tbaa !153
  %605 = add nsw i64 %392, 2
  %606 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 24), align 4, !tbaa !39
  %607 = trunc i32 %606 to i16
  %608 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %581, i64 %605
  store i16 %607, ptr %608, align 2, !tbaa !153
  %609 = add nsw i64 %392, 3
  %610 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 28), align 4, !tbaa !39
  %611 = trunc i32 %610 to i16
  %612 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %581, i64 %609
  store i16 %611, ptr %612, align 2, !tbaa !153
  %613 = add nsw i64 %394, 2
  %614 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 32), align 4, !tbaa !39
  %615 = trunc i32 %614 to i16
  %616 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %613, i64 %392
  store i16 %615, ptr %616, align 2, !tbaa !153
  %617 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 36), align 4, !tbaa !39
  %618 = trunc i32 %617 to i16
  %619 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %613, i64 %561
  store i16 %618, ptr %619, align 2, !tbaa !153
  %620 = add nsw i64 %392, 2
  %621 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 40), align 4, !tbaa !39
  %622 = trunc i32 %621 to i16
  %623 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %613, i64 %620
  store i16 %622, ptr %623, align 2, !tbaa !153
  %624 = add nsw i64 %392, 3
  %625 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 44), align 4, !tbaa !39
  %626 = trunc i32 %625 to i16
  %627 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %613, i64 %624
  store i16 %626, ptr %627, align 2, !tbaa !153
  %628 = add nsw i64 %394, 3
  %629 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 48), align 4, !tbaa !39
  %630 = trunc i32 %629 to i16
  %631 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %628, i64 %392
  store i16 %630, ptr %631, align 2, !tbaa !153
  %632 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 52), align 4, !tbaa !39
  %633 = trunc i32 %632 to i16
  %634 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %628, i64 %561
  store i16 %633, ptr %634, align 2, !tbaa !153
  %635 = add nsw i64 %392, 2
  %636 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 56), align 4, !tbaa !39
  %637 = trunc i32 %636 to i16
  %638 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %628, i64 %635
  store i16 %637, ptr %638, align 2, !tbaa !153
  %639 = add nsw i64 %392, 3
  %640 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.fw_pred, i64 60), align 4, !tbaa !39
  %641 = trunc i32 %640 to i16
  %642 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %628, i64 %639
  store i16 %641, ptr %642, align 2, !tbaa !153
  br label %717

643:                                              ; preds = %563
  %644 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %645 = trunc i32 %644 to i16
  %646 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %561
  store i16 %645, ptr %646, align 2, !tbaa !153
  %647 = add nsw i64 %392, 2
  %648 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %649 = trunc i32 %648 to i16
  %650 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %647
  store i16 %649, ptr %650, align 2, !tbaa !153
  %651 = add nsw i64 %392, 3
  %652 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %653 = trunc i32 %652 to i16
  %654 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %394, i64 %651
  store i16 %653, ptr %654, align 2, !tbaa !153
  %655 = add nsw i64 %394, 1
  %656 = icmp slt i64 %655, %395
  br i1 %656, label %672, label %717

657:                                              ; preds = %563
  %658 = add nsw i64 %394, 1
  %659 = icmp slt i64 %658, %395
  br i1 %659, label %660, label %717

660:                                              ; preds = %657
  %661 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 4), align 4, !tbaa !39
  %662 = trunc i32 %661 to i16
  %663 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %658, i64 %392
  store i16 %662, ptr %663, align 2, !tbaa !153
  %664 = add nsw i64 %394, 2
  %665 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 8), align 4, !tbaa !39
  %666 = trunc i32 %665 to i16
  %667 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %664, i64 %392
  store i16 %666, ptr %667, align 2, !tbaa !153
  %668 = add nsw i64 %394, 3
  %669 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 12), align 4, !tbaa !39
  %670 = trunc i32 %669 to i16
  %671 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %668, i64 %392
  store i16 %670, ptr %671, align 2, !tbaa !153
  br label %717

672:                                              ; preds = %643
  %673 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 16), align 4, !tbaa !39
  %674 = trunc i32 %673 to i16
  %675 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %655, i64 %392
  store i16 %674, ptr %675, align 2, !tbaa !153
  %676 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 20), align 4, !tbaa !39
  %677 = trunc i32 %676 to i16
  %678 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %655, i64 %561
  store i16 %677, ptr %678, align 2, !tbaa !153
  %679 = add nsw i64 %392, 2
  %680 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 24), align 4, !tbaa !39
  %681 = trunc i32 %680 to i16
  %682 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %655, i64 %679
  store i16 %681, ptr %682, align 2, !tbaa !153
  %683 = add nsw i64 %392, 3
  %684 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 28), align 4, !tbaa !39
  %685 = trunc i32 %684 to i16
  %686 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %655, i64 %683
  store i16 %685, ptr %686, align 2, !tbaa !153
  %687 = add nsw i64 %394, 2
  %688 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 32), align 4, !tbaa !39
  %689 = trunc i32 %688 to i16
  %690 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %687, i64 %392
  store i16 %689, ptr %690, align 2, !tbaa !153
  %691 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 36), align 4, !tbaa !39
  %692 = trunc i32 %691 to i16
  %693 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %687, i64 %561
  store i16 %692, ptr %693, align 2, !tbaa !153
  %694 = add nsw i64 %392, 2
  %695 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 40), align 4, !tbaa !39
  %696 = trunc i32 %695 to i16
  %697 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %687, i64 %694
  store i16 %696, ptr %697, align 2, !tbaa !153
  %698 = add nsw i64 %392, 3
  %699 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 44), align 4, !tbaa !39
  %700 = trunc i32 %699 to i16
  %701 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %687, i64 %698
  store i16 %700, ptr %701, align 2, !tbaa !153
  %702 = add nsw i64 %394, 3
  %703 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 48), align 4, !tbaa !39
  %704 = trunc i32 %703 to i16
  %705 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %702, i64 %392
  store i16 %704, ptr %705, align 2, !tbaa !153
  %706 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 52), align 4, !tbaa !39
  %707 = trunc i32 %706 to i16
  %708 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %702, i64 %561
  store i16 %707, ptr %708, align 2, !tbaa !153
  %709 = add nsw i64 %392, 2
  %710 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 56), align 4, !tbaa !39
  %711 = trunc i32 %710 to i16
  %712 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %702, i64 %709
  store i16 %711, ptr %712, align 2, !tbaa !153
  %713 = add nsw i64 %392, 3
  %714 = load i32, ptr getelementptr inbounds (i8, ptr @ChromaPrediction4x4.bw_pred, i64 60), align 4, !tbaa !39
  %715 = trunc i32 %714 to i16
  %716 = getelementptr inbounds [16 x [16 x i16]], ptr %391, i64 0, i64 %702, i64 %713
  store i16 %715, ptr %716, align 2, !tbaa !153
  br label %717

717:                                              ; preds = %385, %333, %218, %643, %657, %660, %672, %569, %583, %586, %598, %430, %529, %518, %55
  ret void
}

declare dso_local signext i32 @dct_luma(i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma_sp(i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma_sp2(i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @dct_luma8x8(i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local void @copyblock_sp(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @SetModesAndRefframe(i32 noundef signext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds i8, ptr %7, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = and i32 %0, -2
  %15 = shl i32 %0, 1
  %16 = and i32 %15, 2
  store i16 -1, ptr %5, align 2, !tbaa !153
  store i16 -1, ptr %4, align 2, !tbaa !153
  store i32 -1, ptr %3, align 4, !tbaa !39
  store i32 -1, ptr %2, align 4, !tbaa !39
  %17 = getelementptr inbounds i8, ptr %13, i64 392
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %1, align 2, !tbaa !153
  %22 = getelementptr inbounds i8, ptr %7, i64 24
  %23 = load i32, ptr %22, align 8, !tbaa !42
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %46, label %25

25:                                               ; preds = %6
  %26 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 6480
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %7, i64 148
  %31 = load i32, ptr %30, align 4, !tbaa !19
  %32 = add nsw i32 %31, %14
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %7, i64 144
  %37 = load i32, ptr %36, align 8, !tbaa !17
  %38 = add nsw i32 %37, %16
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %35, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !58
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %4, align 2, !tbaa !153
  store i16 0, ptr %5, align 2, !tbaa !153
  %43 = getelementptr inbounds i8, ptr %13, i64 376
  %44 = getelementptr inbounds [4 x i32], ptr %43, i64 0, i64 %18
  %45 = load i32, ptr %44, align 4, !tbaa !39
  store i32 %45, ptr %2, align 4, !tbaa !39
  br label %119

46:                                               ; preds = %6
  switch i32 %20, label %91 [
    i32 -1, label %47
    i32 0, label %48
    i32 1, label %69
  ]

47:                                               ; preds = %46
  store i16 -1, ptr %4, align 2, !tbaa !153
  store i16 -1, ptr %5, align 2, !tbaa !153
  store i32 0, ptr %2, align 4, !tbaa !39
  br label %119

48:                                               ; preds = %46
  %49 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 6480
  %51 = load ptr, ptr %50, align 8, !tbaa !128
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %7, i64 148
  %54 = load i32, ptr %53, align 4, !tbaa !19
  %55 = add nsw i32 %54, %14
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %52, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %7, i64 144
  %60 = load i32, ptr %59, align 8, !tbaa !17
  %61 = add nsw i32 %60, %16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %58, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !58
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %4, align 2, !tbaa !153
  store i16 0, ptr %5, align 2, !tbaa !153
  %66 = getelementptr inbounds i8, ptr %13, i64 376
  %67 = getelementptr inbounds [4 x i32], ptr %66, i64 0, i64 %18
  %68 = load i32, ptr %67, align 4, !tbaa !39
  store i32 %68, ptr %2, align 4, !tbaa !39
  br label %119

69:                                               ; preds = %46
  store i16 0, ptr %4, align 2, !tbaa !153
  %70 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %70, i64 6480
  %72 = load ptr, ptr %71, align 8, !tbaa !128
  %73 = getelementptr inbounds i8, ptr %72, i64 8
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %7, i64 148
  %76 = load i32, ptr %75, align 4, !tbaa !19
  %77 = add nsw i32 %76, %14
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %74, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %7, i64 144
  %82 = load i32, ptr %81, align 8, !tbaa !17
  %83 = add nsw i32 %82, %16
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %80, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !58
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %5, align 2, !tbaa !153
  store i32 0, ptr %2, align 4, !tbaa !39
  %88 = getelementptr inbounds i8, ptr %13, i64 376
  %89 = getelementptr inbounds [4 x i32], ptr %88, i64 0, i64 %18
  %90 = load i32, ptr %89, align 4, !tbaa !39
  br label %119

91:                                               ; preds = %46
  %92 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 6480
  %94 = load ptr, ptr %93, align 8, !tbaa !128
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %7, i64 148
  %97 = load i32, ptr %96, align 4, !tbaa !19
  %98 = add nsw i32 %97, %14
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %95, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %7, i64 144
  %103 = load i32, ptr %102, align 8, !tbaa !17
  %104 = add nsw i32 %103, %16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %101, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !58
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %4, align 2, !tbaa !153
  %109 = getelementptr inbounds i8, ptr %94, i64 8
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %99
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %112, i64 %105
  %114 = load i8, ptr %113, align 1, !tbaa !58
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %5, align 2, !tbaa !153
  %116 = getelementptr inbounds i8, ptr %13, i64 376
  %117 = getelementptr inbounds [4 x i32], ptr %116, i64 0, i64 %18
  %118 = load i32, ptr %117, align 4, !tbaa !39
  store i32 %118, ptr %2, align 4, !tbaa !39
  br label %119

119:                                              ; preds = %47, %69, %91, %48, %25
  %120 = phi i32 [ 0, %47 ], [ %90, %69 ], [ %118, %91 ], [ 0, %48 ], [ 0, %25 ]
  store i32 %120, ptr %3, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind
define dso_local void @LumaResidualCoding() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #17
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, ptr %6, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 364
  store i32 0, ptr %13, align 4, !tbaa !45
  %14 = getelementptr inbounds i8, ptr %12, i64 368
  store i64 0, ptr %14, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @SetModesAndRefframe(i32 noundef signext 0, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %15 = load i16, ptr %3, align 2, !tbaa !153
  %16 = load i32, ptr %1, align 4, !tbaa !39
  %17 = load i32, ptr %2, align 4, !tbaa !39
  %18 = load i16, ptr %4, align 2, !tbaa !153
  %19 = load i16, ptr %5, align 2, !tbaa !153
  %20 = tail call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef signext 0, i16 noundef signext %15, i32 noundef signext %16, i32 noundef signext %17, i16 noundef signext %18, i16 noundef signext %19)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @SetModesAndRefframe(i32 noundef signext 1, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %21 = load i16, ptr %3, align 2, !tbaa !153
  %22 = load i32, ptr %1, align 4, !tbaa !39
  %23 = load i32, ptr %2, align 4, !tbaa !39
  %24 = load i16, ptr %4, align 2, !tbaa !153
  %25 = load i16, ptr %5, align 2, !tbaa !153
  %26 = tail call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef signext 1, i16 noundef signext %21, i32 noundef signext %22, i32 noundef signext %23, i16 noundef signext %24, i16 noundef signext %25)
  %27 = add nsw i32 %26, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @SetModesAndRefframe(i32 noundef signext 2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %28 = load i16, ptr %3, align 2, !tbaa !153
  %29 = load i32, ptr %1, align 4, !tbaa !39
  %30 = load i32, ptr %2, align 4, !tbaa !39
  %31 = load i16, ptr %4, align 2, !tbaa !153
  %32 = load i16, ptr %5, align 2, !tbaa !153
  %33 = tail call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef signext 2, i16 noundef signext %28, i32 noundef signext %29, i32 noundef signext %30, i16 noundef signext %31, i16 noundef signext %32)
  %34 = add nsw i32 %33, %27
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @SetModesAndRefframe(i32 noundef signext 3, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %35 = load i16, ptr %3, align 2, !tbaa !153
  %36 = load i32, ptr %1, align 4, !tbaa !39
  %37 = load i32, ptr %2, align 4, !tbaa !39
  %38 = load i16, ptr %4, align 2, !tbaa !153
  %39 = load i16, ptr %5, align 2, !tbaa !153
  %40 = tail call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef signext 3, i16 noundef signext %35, i32 noundef signext %36, i32 noundef signext %37, i16 noundef signext %38, i16 noundef signext %39)
  %41 = add nsw i32 %40, %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %43, label %103

43:                                               ; preds = %0
  %44 = load ptr, ptr @img, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 40
  %46 = load i32, ptr %45, align 8, !tbaa !104
  %47 = getelementptr inbounds i8, ptr %44, i64 90492
  %48 = load i32, ptr %47, align 4, !tbaa !55
  %49 = sub i32 0, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, ptr %44, i64 90552
  %53 = load i32, ptr %52, align 8, !tbaa !162
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %51, %43
  %56 = getelementptr inbounds i8, ptr %44, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !42
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %61 = icmp eq i32 %60, 1
  %62 = load i32, ptr @sp2_frame_indicator, align 4
  %63 = icmp eq i32 %62, 1
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %103, label %65

65:                                               ; preds = %59, %55
  %66 = load i32, ptr %13, align 4, !tbaa !45
  %67 = and i32 %66, 16777200
  store i32 %67, ptr %13, align 4, !tbaa !45
  %68 = load i64, ptr %14, align 8, !tbaa !132
  %69 = and i64 %68, 16711680
  store i64 %69, ptr %14, align 8, !tbaa !132
  %70 = getelementptr inbounds i8, ptr %44, i64 90572
  %71 = load i32, ptr %70, align 4, !tbaa !160
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @rec_resG, i8 0, i64 1024, i1 false)
  br label %97

74:                                               ; preds = %65, %74
  %75 = phi i64 [ %93, %74 ], [ 0, %65 ]
  %76 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %76, i64 6424
  %78 = load ptr, ptr %77, align 8, !tbaa !163
  %79 = load ptr, ptr @img, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %79, i64 156
  %81 = load i32, ptr %80, align 4, !tbaa !21
  %82 = trunc nuw nsw i64 %75 to i32
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %78, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %79, i64 152
  %88 = load i32, ptr %87, align 8, !tbaa !20
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %86, i64 %89
  %91 = getelementptr inbounds i8, ptr %79, i64 12600
  %92 = getelementptr inbounds [16 x [16 x i16]], ptr %91, i64 0, i64 %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %92, i64 32, i1 false)
  %93 = add nuw nsw i64 %75, 1
  %94 = icmp eq i64 %93, 16
  br i1 %94, label %95, label %74

95:                                               ; preds = %74
  %96 = load ptr, ptr @img, align 8, !tbaa !6
  br label %97

97:                                               ; preds = %73, %95
  %98 = phi ptr [ %44, %73 ], [ %96, %95 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 24
  %100 = load i32, ptr %99, align 8, !tbaa !42
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  tail call void @copyblock_sp(i32 noundef signext 0, i32 noundef signext 0) #17
  tail call void @copyblock_sp(i32 noundef signext 0, i32 noundef signext 4) #17
  tail call void @copyblock_sp(i32 noundef signext 4, i32 noundef signext 0) #17
  tail call void @copyblock_sp(i32 noundef signext 4, i32 noundef signext 4) #17
  tail call void @copyblock_sp(i32 noundef signext 8, i32 noundef signext 0) #17
  tail call void @copyblock_sp(i32 noundef signext 8, i32 noundef signext 4) #17
  tail call void @copyblock_sp(i32 noundef signext 12, i32 noundef signext 0) #17
  tail call void @copyblock_sp(i32 noundef signext 12, i32 noundef signext 4) #17
  tail call void @copyblock_sp(i32 noundef signext 0, i32 noundef signext 8) #17
  tail call void @copyblock_sp(i32 noundef signext 0, i32 noundef signext 12) #17
  tail call void @copyblock_sp(i32 noundef signext 4, i32 noundef signext 8) #17
  tail call void @copyblock_sp(i32 noundef signext 4, i32 noundef signext 12) #17
  tail call void @copyblock_sp(i32 noundef signext 8, i32 noundef signext 8) #17
  tail call void @copyblock_sp(i32 noundef signext 8, i32 noundef signext 12) #17
  tail call void @copyblock_sp(i32 noundef signext 12, i32 noundef signext 8) #17
  tail call void @copyblock_sp(i32 noundef signext 12, i32 noundef signext 12) #17
  br label %103

103:                                              ; preds = %102, %97, %59, %51, %0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @TransformDecision(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #17
  %9 = icmp eq i32 %0, -1
  %10 = add nuw nsw i32 %0, 1
  %11 = select i1 %9, i32 0, i32 %0
  %12 = select i1 %9, i32 4, i32 %10
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %253

14:                                               ; preds = %2
  %15 = shl i32 %11, 3
  %16 = shl i32 %11, 2
  br label %17

17:                                               ; preds = %14, %243
  %18 = phi i32 [ %16, %14 ], [ %251, %243 ]
  %19 = phi i32 [ %15, %14 ], [ %250, %243 ]
  %20 = phi i32 [ 0, %14 ], [ %237, %243 ]
  %21 = phi i32 [ 0, %14 ], [ %248, %243 ]
  %22 = phi i32 [ %11, %14 ], [ %249, %243 ]
  %23 = and i32 %18, -8
  %24 = sext i32 %23 to i64
  %25 = and i32 %19, 8
  %26 = zext nneg i32 %25 to i64
  call void @SetModesAndRefframe(i32 noundef signext %22, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %27 = shl i32 %22, 2
  %28 = shl i32 %22, 3
  %29 = and i32 %28, 8
  %30 = add nuw nsw i32 %29, 8
  %31 = load i16, ptr %5, align 2, !tbaa !153
  %32 = sext i16 %31 to i32
  %33 = load i32, ptr %3, align 4, !tbaa !39
  %34 = load i32, ptr %4, align 4, !tbaa !39
  %35 = load i16, ptr %6, align 2, !tbaa !153
  %36 = load i16, ptr %7, align 2, !tbaa !153
  %37 = zext nneg i32 %30 to i64
  %38 = or i32 %27, 4
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %17, %240
  %41 = phi i64 [ %24, %17 ], [ %241, %240 ]
  %42 = phi i32 [ %20, %17 ], [ %237, %240 ]
  %43 = phi i64 [ 0, %17 ], [ %232, %240 ]
  %44 = load ptr, ptr @img, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 172
  %46 = load i32, ptr %45, align 4, !tbaa !28
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  %49 = trunc nsw i64 %41 to i32
  %50 = or disjoint i64 %41, 1
  %51 = or disjoint i64 %41, 2
  %52 = or disjoint i64 %41, 3
  br label %53

53:                                               ; preds = %40, %53
  %54 = phi i64 [ %26, %40 ], [ %238, %53 ]
  %55 = phi i32 [ %42, %40 ], [ %237, %53 ]
  %56 = phi i64 [ %43, %40 ], [ %232, %53 ]
  %57 = load ptr, ptr @img, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 168
  %59 = load i32, ptr %58, align 8, !tbaa !22
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %54, %60
  %62 = trunc nuw nsw i64 %54 to i32
  call void @LumaPrediction4x4(i32 noundef signext %62, i32 noundef signext %49, i32 noundef signext %32, i32 noundef signext %33, i32 noundef signext %34, i16 noundef signext %35, i16 noundef signext %36)
  %63 = shl i64 %56, 32
  %64 = ashr exact i64 %63, 32
  %65 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %66 = load ptr, ptr @img, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 12600
  %68 = getelementptr inbounds ptr, ptr %65, i64 %48
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = getelementptr inbounds i16, ptr %69, i64 %61
  %71 = load i16, ptr %70, align 2, !tbaa !153
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %41, i64 %54
  %74 = load i16, ptr %73, align 2, !tbaa !153
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 %72, %75
  %77 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %64
  store i32 %76, ptr %77, align 4, !tbaa !39
  %78 = add nsw i64 %64, 1
  %79 = add nsw i64 %61, 1
  %80 = getelementptr inbounds i16, ptr %69, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !153
  %82 = zext i16 %81 to i32
  %83 = or disjoint i64 %54, 1
  %84 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %41, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !153
  %86 = zext i16 %85 to i32
  %87 = sub nsw i32 %82, %86
  %88 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %78
  store i32 %87, ptr %88, align 4, !tbaa !39
  %89 = add nsw i64 %64, 2
  %90 = add nsw i64 %61, 2
  %91 = getelementptr inbounds i16, ptr %69, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !153
  %93 = zext i16 %92 to i32
  %94 = or disjoint i64 %54, 2
  %95 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %41, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !153
  %97 = zext i16 %96 to i32
  %98 = sub nsw i32 %93, %97
  %99 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %89
  store i32 %98, ptr %99, align 4, !tbaa !39
  %100 = add nsw i64 %64, 3
  %101 = add nsw i64 %61, 3
  %102 = getelementptr inbounds i16, ptr %69, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !153
  %104 = zext i16 %103 to i32
  %105 = or disjoint i64 %54, 3
  %106 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %41, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !153
  %108 = zext i16 %107 to i32
  %109 = sub nsw i32 %104, %108
  %110 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %100
  store i32 %109, ptr %110, align 4, !tbaa !39
  %111 = getelementptr ptr, ptr %65, i64 %48
  %112 = getelementptr i8, ptr %111, i64 8
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = shl i64 %56, 32
  %115 = add i64 %114, 17179869184
  %116 = ashr exact i64 %115, 32
  %117 = getelementptr inbounds i16, ptr %113, i64 %61
  %118 = load i16, ptr %117, align 2, !tbaa !153
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %50, i64 %54
  %121 = load i16, ptr %120, align 2, !tbaa !153
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %119, %122
  %124 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %116
  store i32 %123, ptr %124, align 4, !tbaa !39
  %125 = add nsw i64 %116, 1
  %126 = getelementptr inbounds i16, ptr %113, i64 %79
  %127 = load i16, ptr %126, align 2, !tbaa !153
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %50, i64 %83
  %130 = load i16, ptr %129, align 2, !tbaa !153
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %128, %131
  %133 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %125
  store i32 %132, ptr %133, align 4, !tbaa !39
  %134 = add nsw i64 %116, 2
  %135 = getelementptr inbounds i16, ptr %113, i64 %90
  %136 = load i16, ptr %135, align 2, !tbaa !153
  %137 = zext i16 %136 to i32
  %138 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %50, i64 %94
  %139 = load i16, ptr %138, align 2, !tbaa !153
  %140 = zext i16 %139 to i32
  %141 = sub nsw i32 %137, %140
  %142 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %134
  store i32 %141, ptr %142, align 4, !tbaa !39
  %143 = add nsw i64 %116, 3
  %144 = getelementptr inbounds i16, ptr %113, i64 %101
  %145 = load i16, ptr %144, align 2, !tbaa !153
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %50, i64 %105
  %148 = load i16, ptr %147, align 2, !tbaa !153
  %149 = zext i16 %148 to i32
  %150 = sub nsw i32 %146, %149
  %151 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %143
  store i32 %150, ptr %151, align 4, !tbaa !39
  %152 = getelementptr ptr, ptr %65, i64 %48
  %153 = getelementptr i8, ptr %152, i64 16
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = add i64 %114, 34359738368
  %156 = ashr exact i64 %155, 32
  %157 = getelementptr inbounds i16, ptr %154, i64 %61
  %158 = load i16, ptr %157, align 2, !tbaa !153
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %51, i64 %54
  %161 = load i16, ptr %160, align 2, !tbaa !153
  %162 = zext i16 %161 to i32
  %163 = sub nsw i32 %159, %162
  %164 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %156
  store i32 %163, ptr %164, align 4, !tbaa !39
  %165 = add nsw i64 %156, 1
  %166 = getelementptr inbounds i16, ptr %154, i64 %79
  %167 = load i16, ptr %166, align 2, !tbaa !153
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %51, i64 %83
  %170 = load i16, ptr %169, align 2, !tbaa !153
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %168, %171
  %173 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %165
  store i32 %172, ptr %173, align 4, !tbaa !39
  %174 = add nsw i64 %156, 2
  %175 = getelementptr inbounds i16, ptr %154, i64 %90
  %176 = load i16, ptr %175, align 2, !tbaa !153
  %177 = zext i16 %176 to i32
  %178 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %51, i64 %94
  %179 = load i16, ptr %178, align 2, !tbaa !153
  %180 = zext i16 %179 to i32
  %181 = sub nsw i32 %177, %180
  %182 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %174
  store i32 %181, ptr %182, align 4, !tbaa !39
  %183 = add nsw i64 %156, 3
  %184 = getelementptr inbounds i16, ptr %154, i64 %101
  %185 = load i16, ptr %184, align 2, !tbaa !153
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %51, i64 %105
  %188 = load i16, ptr %187, align 2, !tbaa !153
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %186, %189
  %191 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %183
  store i32 %190, ptr %191, align 4, !tbaa !39
  %192 = getelementptr ptr, ptr %65, i64 %48
  %193 = getelementptr i8, ptr %192, i64 24
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = add i64 %114, 51539607552
  %196 = ashr exact i64 %195, 32
  %197 = getelementptr inbounds i16, ptr %194, i64 %61
  %198 = load i16, ptr %197, align 2, !tbaa !153
  %199 = zext i16 %198 to i32
  %200 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %52, i64 %54
  %201 = load i16, ptr %200, align 2, !tbaa !153
  %202 = zext i16 %201 to i32
  %203 = sub nsw i32 %199, %202
  %204 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %196
  store i32 %203, ptr %204, align 4, !tbaa !39
  %205 = add nsw i64 %196, 1
  %206 = getelementptr inbounds i16, ptr %194, i64 %79
  %207 = load i16, ptr %206, align 2, !tbaa !153
  %208 = zext i16 %207 to i32
  %209 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %52, i64 %83
  %210 = load i16, ptr %209, align 2, !tbaa !153
  %211 = zext i16 %210 to i32
  %212 = sub nsw i32 %208, %211
  %213 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %205
  store i32 %212, ptr %213, align 4, !tbaa !39
  %214 = add nsw i64 %196, 2
  %215 = getelementptr inbounds i16, ptr %194, i64 %90
  %216 = load i16, ptr %215, align 2, !tbaa !153
  %217 = zext i16 %216 to i32
  %218 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %52, i64 %94
  %219 = load i16, ptr %218, align 2, !tbaa !153
  %220 = zext i16 %219 to i32
  %221 = sub nsw i32 %217, %220
  %222 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %214
  store i32 %221, ptr %222, align 4, !tbaa !39
  %223 = add nsw i64 %196, 3
  %224 = getelementptr inbounds i16, ptr %194, i64 %101
  %225 = load i16, ptr %224, align 2, !tbaa !153
  %226 = zext i16 %225 to i32
  %227 = getelementptr inbounds [16 x [16 x i16]], ptr %67, i64 0, i64 %52, i64 %105
  %228 = load i16, ptr %227, align 2, !tbaa !153
  %229 = zext i16 %228 to i32
  %230 = sub nsw i32 %226, %229
  %231 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %223
  store i32 %230, ptr %231, align 4, !tbaa !39
  %232 = add nsw i64 %196, 4
  %233 = load ptr, ptr @input, align 8, !tbaa !6
  %234 = getelementptr inbounds i8, ptr %233, i64 24
  %235 = load i32, ptr %234, align 8, !tbaa !165
  %236 = call signext i32 @SATD(ptr noundef nonnull %77, i32 noundef signext %235) #17
  %237 = add nsw i32 %236, %55
  %238 = add nuw nsw i64 %54, 4
  %239 = icmp ult i64 %238, %37
  br i1 %239, label %53, label %240

240:                                              ; preds = %53
  %241 = add nsw i64 %41, 4
  %242 = icmp slt i64 %41, %39
  br i1 %242, label %40, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr @input, align 8, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %244, i64 24
  %246 = load i32, ptr %245, align 8, !tbaa !165
  %247 = call signext i32 @SATD8X8(ptr noundef nonnull %8, i32 noundef signext %246) #17
  %248 = add nsw i32 %247, %21
  %249 = add i32 %22, 1
  %250 = add i32 %19, 8
  %251 = add i32 %18, 4
  %252 = icmp eq i32 %249, %12
  br i1 %252, label %253, label %17

253:                                              ; preds = %243, %2
  %254 = phi i32 [ 0, %2 ], [ %248, %243 ]
  %255 = phi i32 [ 0, %2 ], [ %237, %243 ]
  %256 = load ptr, ptr @input, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %256, i64 3892
  %258 = load i32, ptr %257, align 4, !tbaa !47
  %259 = icmp eq i32 %258, 2
  %260 = icmp slt i32 %254, %255
  %261 = select i1 %259, i1 true, i1 %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %253
  %263 = load i32, ptr %1, align 4, !tbaa !39
  %264 = sub i32 %255, %254
  %265 = add i32 %264, %263
  store i32 %265, ptr %1, align 4, !tbaa !39
  br label %266

266:                                              ; preds = %253, %262
  %267 = phi i32 [ 0, %262 ], [ 1, %253 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %267
}

declare dso_local signext i32 @SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @SATD8X8(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @OneComponentChromaPrediction4x4(ptr nocapture noundef writeonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4, i16 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7) local_unnamed_addr #7 {
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90556
  %11 = load i32, ptr %10, align 4, !tbaa !31
  %12 = sdiv i32 64, %11
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds i8, ptr %9, i64 90560
  %15 = load i32, ptr %14, align 8, !tbaa !33
  %16 = sdiv i32 64, %15
  %17 = add nsw i32 %16, -1
  %18 = mul nsw i32 %16, %12
  %19 = ashr i32 %18, 1
  %20 = getelementptr inbounds i8, ptr %9, i64 31576
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds i8, ptr %9, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %21, i64 %24, i32 20
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds i8, ptr %9, i64 64
  %29 = load i32, ptr %28, align 8, !tbaa !166
  %30 = zext i1 %27 to i32
  %31 = ashr i32 %29, %30
  %32 = add nsw i32 %31, -1
  %33 = getelementptr inbounds i8, ptr %9, i64 56
  %34 = load i32, ptr %33, align 8, !tbaa !167
  %35 = add nsw i32 %34, -1
  %36 = ashr i32 %15, 2
  %37 = ashr i32 %11, 2
  %38 = add nsw i32 %26, %4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = sext i16 %5 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 6464
  %46 = load ptr, ptr %45, align 8, !tbaa !168
  %47 = sext i32 %7 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %9, i64 180
  %51 = sext i32 %4 to i64
  %52 = sext i32 %6 to i64
  %53 = getelementptr inbounds i8, ptr %9, i64 176
  %54 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 32
  %56 = getelementptr inbounds i8, ptr %44, i64 6408
  %57 = add nsw i32 %1, 3
  %58 = add nsw i32 %2, 3
  br label %59

59:                                               ; preds = %8, %159
  %60 = phi ptr [ %0, %8 ], [ %156, %159 ]
  %61 = phi i32 [ %2, %8 ], [ %160, %159 ]
  %62 = sdiv i32 %61, %36
  %63 = load i32, ptr %50, align 4, !tbaa !36
  %64 = add nsw i32 %63, %61
  %65 = mul nsw i32 %64, %16
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %3, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  br label %69

69:                                               ; preds = %59, %97
  %70 = phi ptr [ %60, %59 ], [ %156, %97 ]
  %71 = phi i32 [ %1, %59 ], [ %157, %97 ]
  %72 = sdiv i32 %71, %37
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %68, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %51
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %42
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %52
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load i32, ptr %53, align 8, !tbaa !35
  %83 = add nsw i32 %82, %71
  %84 = mul nsw i32 %83, %12
  %85 = load i16, ptr %81, align 2, !tbaa !153
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %84, %86
  %88 = getelementptr inbounds i8, ptr %81, i64 2
  %89 = load i16, ptr %88, align 2, !tbaa !153
  %90 = sext i16 %89 to i32
  %91 = add nsw i32 %65, %90
  %92 = load i32, ptr %55, align 4, !tbaa !169
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %69
  %95 = load i32, ptr %56, align 8, !tbaa !170
  %96 = add nsw i32 %95, %91
  br label %97

97:                                               ; preds = %94, %69
  %98 = phi i32 [ %96, %94 ], [ %91, %69 ]
  %99 = sdiv i32 %87, %12
  %100 = icmp slt i32 %99, 0
  %101 = icmp slt i32 %99, %34
  %102 = select i1 %101, i32 %99, i32 %35
  %103 = select i1 %100, i32 0, i32 %102
  %104 = sdiv i32 %98, %16
  %105 = icmp slt i32 %104, 0
  %106 = icmp slt i32 %104, %31
  %107 = select i1 %106, i32 %104, i32 %32
  %108 = select i1 %105, i32 0, i32 %107
  %109 = add nsw i32 %87, %13
  %110 = sdiv i32 %109, %12
  %111 = icmp slt i32 %110, 0
  %112 = icmp slt i32 %110, %34
  %113 = select i1 %112, i32 %110, i32 %35
  %114 = select i1 %111, i32 0, i32 %113
  %115 = add nsw i32 %98, %17
  %116 = sdiv i32 %115, %16
  %117 = icmp slt i32 %116, 0
  %118 = icmp slt i32 %116, %31
  %119 = select i1 %118, i32 %116, i32 %32
  %120 = select i1 %117, i32 0, i32 %119
  %121 = and i32 %87, %13
  %122 = sub nsw i32 %12, %121
  %123 = and i32 %98, %17
  %124 = sub nsw i32 %16, %123
  %125 = sext i32 %108 to i64
  %126 = getelementptr inbounds ptr, ptr %49, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = sext i32 %103 to i64
  %129 = getelementptr inbounds i16, ptr %127, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !153
  %131 = zext i16 %130 to i32
  %132 = mul i32 %122, %131
  %133 = sext i32 %114 to i64
  %134 = getelementptr inbounds i16, ptr %127, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !153
  %136 = zext i16 %135 to i32
  %137 = mul i32 %121, %136
  %138 = sext i32 %120 to i64
  %139 = getelementptr inbounds ptr, ptr %49, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = getelementptr inbounds i16, ptr %140, i64 %128
  %142 = load i16, ptr %141, align 2, !tbaa !153
  %143 = zext i16 %142 to i32
  %144 = mul i32 %122, %143
  %145 = getelementptr inbounds i16, ptr %140, i64 %133
  %146 = load i16, ptr %145, align 2, !tbaa !153
  %147 = zext i16 %146 to i32
  %148 = mul i32 %121, %147
  %149 = add i32 %148, %144
  %150 = mul i32 %149, %123
  %151 = add i32 %137, %132
  %152 = mul i32 %151, %124
  %153 = add i32 %152, %19
  %154 = add i32 %153, %150
  %155 = sdiv i32 %154, %18
  %156 = getelementptr inbounds i8, ptr %70, i64 4
  store i32 %155, ptr %70, align 4, !tbaa !39
  %157 = add nsw i32 %71, 1
  %158 = icmp slt i32 %71, %57
  br i1 %158, label %69, label %159

159:                                              ; preds = %97
  %160 = add nsw i32 %61, 1
  %161 = icmp slt i32 %61, %58
  br i1 %161, label %59, label %162

162:                                              ; preds = %159
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @IntraChromaPrediction4x4(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds i8, ptr %4, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %9, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = sext i32 %1 to i64
  %13 = sext i32 %0 to i64
  %14 = sext i32 %11 to i64
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds i8, ptr %4, i64 12600
  %17 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %15, i64 %12
  %18 = getelementptr inbounds i8, ptr %4, i64 8504
  %19 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %18, i64 0, i64 %13, i64 %14, i64 %15, i64 %12
  %20 = load i64, ptr %19, align 2
  store i64 %20, ptr %17, align 2
  %21 = add nsw i64 %15, 1
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 12600
  %24 = getelementptr inbounds [16 x [16 x i16]], ptr %23, i64 0, i64 %21, i64 %12
  %25 = getelementptr inbounds i8, ptr %22, i64 8504
  %26 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %25, i64 0, i64 %13, i64 %14, i64 %21, i64 %12
  %27 = load i64, ptr %26, align 2
  store i64 %27, ptr %24, align 2
  %28 = add nsw i64 %15, 2
  %29 = load ptr, ptr @img, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 12600
  %31 = getelementptr inbounds [16 x [16 x i16]], ptr %30, i64 0, i64 %28, i64 %12
  %32 = getelementptr inbounds i8, ptr %29, i64 8504
  %33 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %32, i64 0, i64 %13, i64 %14, i64 %28, i64 %12
  %34 = load i64, ptr %33, align 2
  store i64 %34, ptr %31, align 2
  %35 = add nsw i64 %15, 3
  %36 = load ptr, ptr @img, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 12600
  %38 = getelementptr inbounds [16 x [16 x i16]], ptr %37, i64 0, i64 %35, i64 %12
  %39 = getelementptr inbounds i8, ptr %36, i64 8504
  %40 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %39, i64 0, i64 %13, i64 %14, i64 %35, i64 %12
  %41 = load i64, ptr %40, align 2
  store i64 %41, ptr %38, align 2
  ret void
}

; Function Attrs: nounwind
define dso_local void @ChromaResidualCoding(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #17
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds i8, ptr %7, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds i8, ptr %7, i64 24
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %18, 3
  %21 = or i1 %19, %20
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ false, %1 ], [ %21, %16 ]
  %24 = getelementptr inbounds i8, ptr %7, i64 90548
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = add nsw i32 %25, -1
  store i32 0, ptr %0, align 4, !tbaa !39
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %22, %375
  %29 = phi i1 [ true, %22 ], [ false, %375 ]
  %30 = phi i64 [ 0, %22 ], [ 1, %375 ]
  %31 = load ptr, ptr @img, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 90560
  %33 = load i32, ptr %32, align 8, !tbaa !33
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %28
  %36 = trunc nuw nsw i64 %30 to i32
  br label %37

37:                                               ; preds = %35, %64
  %38 = phi ptr [ %31, %35 ], [ %65, %64 ]
  %39 = phi i64 [ 0, %35 ], [ %66, %64 ]
  %40 = getelementptr inbounds i8, ptr %38, i64 90556
  %41 = load i32, ptr %40, align 4, !tbaa !31
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = lshr exact i64 %39, 2
  %45 = trunc nuw nsw i64 %39 to i32
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %58, %46 ]
  %48 = lshr exact i64 %47, 2
  %49 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @__const.ChromaResidualCoding.block8x8_idx, i64 0, i64 %27, i64 %44, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !39
  call void @SetModesAndRefframe(i32 noundef signext %50, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %51 = load i16, ptr %4, align 2, !tbaa !153
  %52 = sext i16 %51 to i32
  %53 = load i32, ptr %2, align 4, !tbaa !39
  %54 = load i32, ptr %3, align 4, !tbaa !39
  %55 = load i16, ptr %5, align 2, !tbaa !153
  %56 = load i16, ptr %6, align 2, !tbaa !153
  %57 = trunc nuw nsw i64 %47 to i32
  tail call void @ChromaPrediction4x4(i32 noundef signext %36, i32 noundef signext %57, i32 noundef signext %45, i32 noundef signext %52, i32 noundef signext %53, i32 noundef signext %54, i16 noundef signext %55, i16 noundef signext %56)
  %58 = add nuw nsw i64 %47, 4
  %59 = load ptr, ptr @img, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 90556
  %61 = load i32, ptr %60, align 4, !tbaa !31
  %62 = trunc nuw i64 %58 to i32
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %46, label %64

64:                                               ; preds = %46, %37
  %65 = phi ptr [ %38, %37 ], [ %59, %46 ]
  %66 = add nuw nsw i64 %39, 4
  %67 = getelementptr inbounds i8, ptr %65, i64 90560
  %68 = load i32, ptr %67, align 8, !tbaa !33
  %69 = trunc nuw i64 %66 to i32
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %37, label %71

71:                                               ; preds = %64, %28
  %72 = phi i32 [ %33, %28 ], [ %68, %64 ]
  %73 = phi ptr [ %31, %28 ], [ %65, %64 ]
  %74 = phi ptr [ %32, %28 ], [ %67, %64 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 90208
  %76 = load i32, ptr %75, align 8, !tbaa !161
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %142, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds i8, ptr %73, i64 90572
  %80 = load i32, ptr %79, align 4, !tbaa !160
  %81 = icmp eq i32 %80, 0
  %82 = icmp sgt i32 %72, 0
  br i1 %81, label %83, label %115

83:                                               ; preds = %78
  br i1 %82, label %84, label %283

84:                                               ; preds = %83, %84
  %85 = phi i64 [ %109, %84 ], [ 0, %83 ]
  %86 = phi ptr [ %110, %84 ], [ %73, %83 ]
  %87 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 6464
  %89 = load ptr, ptr %88, align 8, !tbaa !168
  %90 = getelementptr inbounds ptr, ptr %89, i64 %30
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %86, i64 164
  %93 = load i32, ptr %92, align 4, !tbaa !34
  %94 = trunc nuw nsw i64 %85 to i32
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %91, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %86, i64 160
  %100 = load i32, ptr %99, align 8, !tbaa !32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %98, i64 %101
  %103 = getelementptr inbounds i8, ptr %86, i64 12600
  %104 = getelementptr inbounds [16 x [16 x i16]], ptr %103, i64 0, i64 %85
  %105 = getelementptr inbounds i8, ptr %86, i64 90556
  %106 = load i32, ptr %105, align 4, !tbaa !31
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr nonnull align 8 %104, i64 %108, i1 false)
  %109 = add nuw nsw i64 %85, 1
  %110 = load ptr, ptr @img, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %110, i64 90560
  %112 = load i32, ptr %111, align 8, !tbaa !33
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %84, label %283

115:                                              ; preds = %78
  br i1 %29, label %119, label %116

116:                                              ; preds = %115
  br i1 %82, label %117, label %283

117:                                              ; preds = %116
  %118 = getelementptr inbounds i8, ptr %73, i64 90556
  br label %132

119:                                              ; preds = %115
  br i1 %82, label %120, label %283

120:                                              ; preds = %119
  %121 = getelementptr inbounds i8, ptr %73, i64 90556
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ 0, %120 ], [ %128, %122 ]
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %123
  %125 = load i32, ptr %121, align 4, !tbaa !31
  %126 = sext i32 %125 to i64
  %127 = shl nsw i64 %126, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %124, i8 0, i64 %127, i1 false)
  %128 = add nuw nsw i64 %123, 1
  %129 = load i32, ptr %74, align 8, !tbaa !33
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %122, label %283

132:                                              ; preds = %117, %132
  %133 = phi i64 [ 0, %117 ], [ %138, %132 ]
  %134 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %133
  %135 = load i32, ptr %118, align 4, !tbaa !31
  %136 = sext i32 %135 to i64
  %137 = shl nsw i64 %136, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %134, i8 0, i64 %137, i1 false)
  %138 = add nuw nsw i64 %133, 1
  %139 = load i32, ptr %74, align 8, !tbaa !33
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %132, label %283

142:                                              ; preds = %71
  br i1 %23, label %153, label %143

143:                                              ; preds = %142
  %144 = icmp sgt i32 %72, 0
  br i1 %144, label %145, label %302

145:                                              ; preds = %143
  %146 = getelementptr inbounds i8, ptr %73, i64 90556
  %147 = getelementptr inbounds i8, ptr %73, i64 90572
  %148 = getelementptr inbounds i8, ptr %73, i64 13112
  %149 = getelementptr inbounds i8, ptr %73, i64 180
  %150 = getelementptr inbounds i8, ptr %73, i64 176
  %151 = getelementptr inbounds i8, ptr %73, i64 12600
  %152 = load i32, ptr %146, align 4, !tbaa !31
  br label %230

153:                                              ; preds = %142
  %154 = getelementptr inbounds i8, ptr %73, i64 24
  %155 = load i32, ptr %154, align 8, !tbaa !42
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %73, i64 13112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %158, i8 0, i64 32, i1 false)
  %159 = getelementptr inbounds i8, ptr %73, i64 13176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %159, i8 0, i64 32, i1 false)
  %160 = getelementptr inbounds i8, ptr %73, i64 13240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %160, i8 0, i64 32, i1 false)
  %161 = getelementptr inbounds i8, ptr %73, i64 13304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %161, i8 0, i64 32, i1 false)
  %162 = getelementptr inbounds i8, ptr %73, i64 13368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %162, i8 0, i64 32, i1 false)
  %163 = getelementptr inbounds i8, ptr %73, i64 13432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %163, i8 0, i64 32, i1 false)
  %164 = getelementptr inbounds i8, ptr %73, i64 13496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %164, i8 0, i64 32, i1 false)
  %165 = getelementptr inbounds i8, ptr %73, i64 13560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %165, i8 0, i64 32, i1 false)
  br label %285

166:                                              ; preds = %153
  %167 = getelementptr inbounds i8, ptr %73, i64 90572
  %168 = load i32, ptr %167, align 4, !tbaa !160
  %169 = icmp eq i32 %168, 0
  %170 = icmp sgt i32 %72, 0
  br i1 %169, label %171, label %203

171:                                              ; preds = %166
  br i1 %170, label %172, label %285

172:                                              ; preds = %171, %172
  %173 = phi i64 [ %197, %172 ], [ 0, %171 ]
  %174 = phi ptr [ %198, %172 ], [ %73, %171 ]
  %175 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 6464
  %177 = load ptr, ptr %176, align 8, !tbaa !168
  %178 = getelementptr inbounds ptr, ptr %177, i64 %30
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %174, i64 164
  %181 = load i32, ptr %180, align 4, !tbaa !34
  %182 = trunc nuw nsw i64 %173 to i32
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %179, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = getelementptr inbounds i8, ptr %174, i64 160
  %188 = load i32, ptr %187, align 8, !tbaa !32
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i16, ptr %186, i64 %189
  %191 = getelementptr inbounds i8, ptr %174, i64 12600
  %192 = getelementptr inbounds [16 x [16 x i16]], ptr %191, i64 0, i64 %173
  %193 = getelementptr inbounds i8, ptr %174, i64 90556
  %194 = load i32, ptr %193, align 4, !tbaa !31
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %190, ptr nonnull align 8 %192, i64 %196, i1 false)
  %197 = add nuw nsw i64 %173, 1
  %198 = load ptr, ptr @img, align 8, !tbaa !6
  %199 = getelementptr inbounds i8, ptr %198, i64 90560
  %200 = load i32, ptr %199, align 8, !tbaa !33
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %197, %201
  br i1 %202, label %172, label %283

203:                                              ; preds = %166
  br i1 %29, label %207, label %204

204:                                              ; preds = %203
  br i1 %170, label %205, label %285

205:                                              ; preds = %204
  %206 = getelementptr inbounds i8, ptr %73, i64 90556
  br label %220

207:                                              ; preds = %203
  br i1 %170, label %208, label %285

208:                                              ; preds = %207
  %209 = getelementptr inbounds i8, ptr %73, i64 90556
  br label %210

210:                                              ; preds = %208, %210
  %211 = phi i64 [ 0, %208 ], [ %216, %210 ]
  %212 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %211
  %213 = load i32, ptr %209, align 4, !tbaa !31
  %214 = sext i32 %213 to i64
  %215 = shl nsw i64 %214, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %212, i8 0, i64 %215, i1 false)
  %216 = add nuw nsw i64 %211, 1
  %217 = load i32, ptr %74, align 8, !tbaa !33
  %218 = sext i32 %217 to i64
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %210, label %283

220:                                              ; preds = %205, %220
  %221 = phi i64 [ 0, %205 ], [ %226, %220 ]
  %222 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %221
  %223 = load i32, ptr %206, align 4, !tbaa !31
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %222, i8 0, i64 %225, i1 false)
  %226 = add nuw nsw i64 %221, 1
  %227 = load i32, ptr %74, align 8, !tbaa !33
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %226, %228
  br i1 %229, label %220, label %283

230:                                              ; preds = %145, %277
  %231 = phi i32 [ %72, %145 ], [ %278, %277 ]
  %232 = phi i32 [ %152, %145 ], [ %279, %277 ]
  %233 = phi i64 [ 0, %145 ], [ %280, %277 ]
  %234 = icmp sgt i32 %232, 0
  br i1 %234, label %235, label %277

235:                                              ; preds = %230
  %236 = load ptr, ptr @imgUV_org, align 8
  %237 = getelementptr inbounds ptr, ptr %236, i64 %30
  %238 = trunc nuw nsw i64 %233 to i32
  br label %239

239:                                              ; preds = %235, %270
  %240 = phi i64 [ 0, %235 ], [ %271, %270 ]
  %241 = load i32, ptr %147, align 4, !tbaa !160
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = load ptr, ptr %237, align 8, !tbaa !6
  %245 = load i32, ptr %149, align 4, !tbaa !36
  %246 = add nsw i32 %245, %238
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %244, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = load i32, ptr %150, align 8, !tbaa !35
  %251 = trunc nuw nsw i64 %240 to i32
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i16, ptr %249, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !153
  %256 = zext i16 %255 to i32
  %257 = getelementptr inbounds [16 x [16 x i16]], ptr %151, i64 0, i64 %233, i64 %240
  %258 = load i16, ptr %257, align 2, !tbaa !153
  %259 = zext i16 %258 to i32
  %260 = sub nsw i32 %256, %259
  %261 = getelementptr inbounds [16 x [16 x i32]], ptr %148, i64 0, i64 %233, i64 %240
  store i32 %260, ptr %261, align 4, !tbaa !39
  br label %270

262:                                              ; preds = %239
  %263 = getelementptr inbounds [16 x [16 x i32]], ptr %148, i64 0, i64 %233, i64 %240
  br i1 %29, label %264, label %267

264:                                              ; preds = %262
  %265 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %233, i64 %240
  %266 = load i32, ptr %265, align 4, !tbaa !39
  store i32 %266, ptr %263, align 4, !tbaa !39
  br label %270

267:                                              ; preds = %262
  %268 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %233, i64 %240
  %269 = load i32, ptr %268, align 4, !tbaa !39
  store i32 %269, ptr %263, align 4, !tbaa !39
  br label %270

270:                                              ; preds = %243, %267, %264
  %271 = add nuw nsw i64 %240, 1
  %272 = load i32, ptr %146, align 4, !tbaa !31
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %271, %273
  br i1 %274, label %239, label %275

275:                                              ; preds = %270
  %276 = load i32, ptr %74, align 8, !tbaa !33
  br label %277

277:                                              ; preds = %275, %230
  %278 = phi i32 [ %276, %275 ], [ %231, %230 ]
  %279 = phi i32 [ %272, %275 ], [ %232, %230 ]
  %280 = add nuw nsw i64 %233, 1
  %281 = sext i32 %278 to i64
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %230, label %283

283:                                              ; preds = %132, %122, %84, %277, %220, %210, %172, %116, %119, %83
  %284 = phi ptr [ %73, %116 ], [ %73, %119 ], [ %73, %83 ], [ %198, %172 ], [ %73, %210 ], [ %73, %220 ], [ %73, %277 ], [ %110, %84 ], [ %73, %122 ], [ %73, %132 ]
  br i1 %23, label %285, label %302

285:                                              ; preds = %171, %207, %204, %157, %283
  %286 = phi ptr [ %284, %283 ], [ %73, %157 ], [ %73, %204 ], [ %73, %207 ], [ %73, %171 ]
  %287 = getelementptr inbounds i8, ptr %286, i64 24
  %288 = load i32, ptr %287, align 8, !tbaa !42
  %289 = icmp eq i32 %288, 3
  br i1 %289, label %290, label %375

290:                                              ; preds = %285
  %291 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %292 = icmp ne i32 %291, 0
  %293 = load i32, ptr @sp2_frame_indicator, align 4
  %294 = icmp ne i32 %293, 0
  %295 = select i1 %292, i1 true, i1 %294
  %296 = load i32, ptr %0, align 4, !tbaa !39
  %297 = trunc nuw nsw i64 %30 to i32
  br i1 %295, label %298, label %300

298:                                              ; preds = %290
  %299 = tail call signext i32 @dct_chroma_sp2(i32 noundef signext %297, i32 noundef signext %296) #17
  br label %373

300:                                              ; preds = %290
  %301 = tail call signext i32 @dct_chroma_sp(i32 noundef signext %297, i32 noundef signext %296) #17
  br label %373

302:                                              ; preds = %143, %283
  %303 = phi ptr [ %284, %283 ], [ %73, %143 ]
  %304 = getelementptr inbounds i8, ptr %303, i64 90208
  %305 = load i32, ptr %304, align 8, !tbaa !161
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %375

307:                                              ; preds = %302
  %308 = getelementptr inbounds i8, ptr %303, i64 24
  %309 = load i32, ptr %308, align 8, !tbaa !42
  %310 = icmp eq i32 %309, 3
  br i1 %310, label %311, label %320

311:                                              ; preds = %307
  %312 = getelementptr inbounds i8, ptr %303, i64 31576
  %313 = load ptr, ptr %312, align 8, !tbaa !24
  %314 = getelementptr inbounds i8, ptr %303, i64 12
  %315 = load i32, ptr %314, align 4, !tbaa !10
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.macroblock, ptr %313, i64 %316, i32 8
  %318 = load i32, ptr %317, align 8, !tbaa !43
  %319 = icmp eq i32 %318, 10
  br i1 %319, label %320, label %324

320:                                              ; preds = %311, %307
  %321 = load i32, ptr %0, align 4, !tbaa !39
  %322 = trunc nuw nsw i64 %30 to i32
  %323 = tail call signext i32 @dct_chroma(i32 noundef signext %322, i32 noundef signext %321) #17
  br label %336

324:                                              ; preds = %311
  %325 = load i32, ptr @si_frame_indicator, align 4, !tbaa !39
  %326 = icmp ne i32 %325, 0
  %327 = load i32, ptr @sp2_frame_indicator, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 true, i1 %328
  %330 = load i32, ptr %0, align 4, !tbaa !39
  %331 = trunc nuw nsw i64 %30 to i32
  br i1 %329, label %332, label %334

332:                                              ; preds = %324
  %333 = tail call signext i32 @dct_chroma_sp2(i32 noundef signext %331, i32 noundef signext %330) #17
  br label %336

334:                                              ; preds = %324
  %335 = tail call signext i32 @dct_chroma_sp(i32 noundef signext %331, i32 noundef signext %330) #17
  br label %336

336:                                              ; preds = %332, %334, %320
  %337 = phi i32 [ %333, %332 ], [ %335, %334 ], [ %323, %320 ]
  store i32 %337, ptr %0, align 4, !tbaa !39
  %338 = load ptr, ptr @img, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 90572
  %340 = load i32, ptr %339, align 4, !tbaa !160
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %375, label %342

342:                                              ; preds = %336
  %343 = getelementptr inbounds i8, ptr %338, i64 90560
  %344 = load i32, ptr %343, align 8, !tbaa !33
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %342
  %347 = getelementptr inbounds i8, ptr %338, i64 90556
  %348 = getelementptr inbounds i8, ptr %338, i64 13112
  %349 = load i32, ptr %347, align 4, !tbaa !31
  %350 = select i1 %29, ptr @rec_resB, ptr @rec_resR
  br label %351

351:                                              ; preds = %346, %367
  %352 = phi i32 [ %344, %346 ], [ %368, %367 ]
  %353 = phi i32 [ %349, %346 ], [ %369, %367 ]
  %354 = phi i64 [ 0, %346 ], [ %370, %367 ]
  %355 = icmp sgt i32 %353, 0
  br i1 %355, label %356, label %367

356:                                              ; preds = %351, %356
  %357 = phi i64 [ %361, %356 ], [ 0, %351 ]
  %358 = getelementptr inbounds [16 x [16 x i32]], ptr %348, i64 0, i64 %354, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !39
  %360 = getelementptr inbounds [16 x [16 x i32]], ptr %350, i64 0, i64 %354, i64 %357
  store i32 %359, ptr %360, align 4, !tbaa !39
  %361 = add nuw nsw i64 %357, 1
  %362 = load i32, ptr %347, align 4, !tbaa !31
  %363 = sext i32 %362 to i64
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %356, label %365

365:                                              ; preds = %356
  %366 = load i32, ptr %343, align 8, !tbaa !33
  br label %367

367:                                              ; preds = %365, %351
  %368 = phi i32 [ %366, %365 ], [ %352, %351 ]
  %369 = phi i32 [ %362, %365 ], [ %353, %351 ]
  %370 = add nuw nsw i64 %354, 1
  %371 = sext i32 %368 to i64
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %351, label %375

373:                                              ; preds = %298, %300
  %374 = phi i32 [ %301, %300 ], [ %299, %298 ]
  store i32 %374, ptr %0, align 4, !tbaa !39
  br label %375

375:                                              ; preds = %367, %373, %342, %285, %336, %302
  br i1 %29, label %28, label %376

376:                                              ; preds = %375
  %377 = load i32, ptr %0, align 4, !tbaa !39
  %378 = shl i32 %377, 4
  %379 = load ptr, ptr @img, align 8, !tbaa !6
  %380 = getelementptr inbounds i8, ptr %379, i64 31576
  %381 = load ptr, ptr %380, align 8, !tbaa !24
  %382 = getelementptr inbounds i8, ptr %379, i64 12
  %383 = load i32, ptr %382, align 4, !tbaa !10
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.macroblock, ptr %381, i64 %384, i32 12
  %386 = load i32, ptr %385, align 4, !tbaa !45
  %387 = add nsw i32 %386, %378
  store i32 %387, ptr %385, align 4, !tbaa !45
  %388 = getelementptr inbounds i8, ptr %379, i64 90572
  %389 = load i32, ptr %388, align 4, !tbaa !160
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %460, label %391

391:                                              ; preds = %376
  %392 = getelementptr inbounds i8, ptr %379, i64 90536
  %393 = load i32, ptr %392, align 8, !tbaa !38
  %394 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %395 = getelementptr inbounds i8, ptr %394, i64 6464
  %396 = load ptr, ptr %395, align 8, !tbaa !168
  %397 = load ptr, ptr %396, align 8, !tbaa !6
  %398 = getelementptr inbounds i8, ptr %379, i64 156
  %399 = load i32, ptr %398, align 4, !tbaa !21
  %400 = getelementptr inbounds i8, ptr %379, i64 152
  %401 = load i32, ptr %400, align 8, !tbaa !20
  %402 = getelementptr inbounds i8, ptr %379, i64 90532
  %403 = load i32, ptr %402, align 4, !tbaa !37
  %404 = getelementptr inbounds i8, ptr %394, i64 6424
  %405 = load ptr, ptr %404, align 8, !tbaa !163
  %406 = getelementptr inbounds i8, ptr %396, i64 8
  %407 = load ptr, ptr %406, align 8, !tbaa !6
  %408 = sext i32 %401 to i64
  %409 = sext i32 %399 to i64
  br label %410

410:                                              ; preds = %391, %457
  %411 = phi i64 [ 0, %391 ], [ %458, %457 ]
  %412 = add nsw i64 %411, %409
  %413 = getelementptr inbounds ptr, ptr %397, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !6
  %415 = getelementptr inbounds ptr, ptr %405, i64 %412
  %416 = load ptr, ptr %415, align 8, !tbaa !6
  %417 = getelementptr inbounds ptr, ptr %407, i64 %412
  %418 = load ptr, ptr %417, align 8, !tbaa !6
  br label %419

419:                                              ; preds = %410, %419
  %420 = phi i64 [ 0, %410 ], [ %455, %419 ]
  %421 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %411, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !39
  %423 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %411, i64 %420
  %424 = load i32, ptr %423, align 4, !tbaa !39
  %425 = ashr i32 %424, 1
  %426 = sub nsw i32 %422, %425
  %427 = add nsw i32 %426, %424
  %428 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %411, i64 %420
  %429 = load i32, ptr %428, align 4, !tbaa !39
  %430 = ashr i32 %429, 1
  %431 = sub nsw i32 %426, %430
  %432 = add nsw i32 %431, %429
  %433 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %411, i64 %420
  %434 = load i32, ptr %433, align 4, !tbaa !39
  %435 = add nsw i32 %431, %434
  %436 = tail call i32 @llvm.smax.i32(i32 %435, i32 0)
  %437 = tail call i32 @llvm.smin.i32(i32 %393, i32 %436)
  %438 = trunc i32 %437 to i16
  %439 = add nsw i64 %420, %408
  %440 = getelementptr inbounds i16, ptr %414, i64 %439
  store i16 %438, ptr %440, align 2, !tbaa !153
  %441 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %411, i64 %420
  %442 = load i32, ptr %441, align 4, !tbaa !39
  %443 = add nsw i32 %427, %442
  %444 = tail call i32 @llvm.smax.i32(i32 %443, i32 0)
  %445 = tail call i32 @llvm.smin.i32(i32 %403, i32 %444)
  %446 = trunc i32 %445 to i16
  %447 = getelementptr inbounds i16, ptr %416, i64 %439
  store i16 %446, ptr %447, align 2, !tbaa !153
  %448 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %411, i64 %420
  %449 = load i32, ptr %448, align 4, !tbaa !39
  %450 = add nsw i32 %432, %449
  %451 = tail call i32 @llvm.smax.i32(i32 %450, i32 0)
  %452 = tail call i32 @llvm.smin.i32(i32 %393, i32 %451)
  %453 = trunc i32 %452 to i16
  %454 = getelementptr inbounds i16, ptr %418, i64 %439
  store i16 %453, ptr %454, align 2, !tbaa !153
  %455 = add nuw nsw i64 %420, 1
  %456 = icmp eq i64 %455, 16
  br i1 %456, label %457, label %419

457:                                              ; preds = %419
  %458 = add nuw nsw i64 %411, 1
  %459 = icmp eq i64 %458, 16
  br i1 %459, label %460, label %410

460:                                              ; preds = %457, %376
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

declare dso_local signext i32 @dct_chroma_sp2(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @dct_chroma_sp(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @dct_chroma(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @IntraChromaPrediction(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i16], align 2
  %5 = alloca [16 x i16], align 2
  %6 = alloca [16 x i32], align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca [17 x %struct.pix_pos], align 4
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 31576
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds i8, ptr %9, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !10
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %8) #17
  %15 = getelementptr inbounds i8, ptr %9, i64 90556
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = getelementptr inbounds i8, ptr %9, i64 90560
  %18 = load i32, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds i8, ptr %9, i64 90548
  %20 = load i32, ptr %19, align 4, !tbaa !30
  %21 = add nsw i32 %20, -1
  %22 = icmp slt i32 %18, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = add nuw i32 %18, 1
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %31, %26 ]
  %28 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %27
  %29 = trunc i64 %27 to i32
  %30 = add i32 %29, -1
  call void @getNeighbour(i32 noundef signext %13, i32 noundef signext -1, i32 noundef signext %30, i32 noundef signext 0, ptr noundef nonnull %28) #17
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, %25
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %3
  call void @getNeighbour(i32 noundef signext %13, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %7) #17
  %34 = load i32, ptr %7, align 4, !tbaa !171
  %35 = load i32, ptr %8, align 4, !tbaa !171
  %36 = getelementptr inbounds i8, ptr %8, i64 24
  %37 = load i32, ptr %36, align 4, !tbaa !171
  %38 = load ptr, ptr @input, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 220
  %40 = load i32, ptr %39, align 4, !tbaa !134
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %117, label %42

42:                                               ; preds = %33
  %43 = icmp eq i32 %34, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @img, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 89192
  %47 = load ptr, ptr %46, align 8, !tbaa !135
  %48 = getelementptr inbounds i8, ptr %7, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !173
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !39
  br label %53

53:                                               ; preds = %42, %44
  %54 = phi i32 [ %52, %44 ], [ 0, %42 ]
  %55 = ashr i32 %18, 1
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr @img, align 8
  %59 = getelementptr inbounds i8, ptr %58, i64 89192
  %60 = zext nneg i32 %55 to i64
  br label %68

61:                                               ; preds = %82, %53
  %62 = phi i32 [ 1, %53 ], [ %84, %82 ]
  %63 = icmp sgt i32 %18, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %61
  %65 = load ptr, ptr @img, align 8
  %66 = getelementptr inbounds i8, ptr %65, i64 89192
  %67 = zext nneg i32 %55 to i64
  br label %86

68:                                               ; preds = %57, %82
  %69 = phi i64 [ 0, %57 ], [ %71, %82 ]
  %70 = phi i32 [ 1, %57 ], [ %84, %82 ]
  %71 = add nuw nsw i64 %69, 1
  %72 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !171
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %59, align 8, !tbaa !135
  %77 = getelementptr inbounds i8, ptr %72, i64 4
  %78 = load i32, ptr %77, align 4, !tbaa !173
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %76, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !39
  br label %82

82:                                               ; preds = %68, %75
  %83 = phi i32 [ %81, %75 ], [ 0, %68 ]
  %84 = and i32 %83, %70
  %85 = icmp eq i64 %71, %60
  br i1 %85, label %61, label %68

86:                                               ; preds = %64, %100
  %87 = phi i64 [ %67, %64 ], [ %89, %100 ]
  %88 = phi i32 [ 1, %64 ], [ %102, %100 ]
  %89 = add nuw nsw i64 %87, 1
  %90 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !171
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %66, align 8, !tbaa !135
  %95 = getelementptr inbounds i8, ptr %90, i64 4
  %96 = load i32, ptr %95, align 4, !tbaa !173
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %94, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !39
  br label %100

100:                                              ; preds = %86, %93
  %101 = phi i32 [ %99, %93 ], [ 0, %86 ]
  %102 = and i32 %101, %88
  %103 = trunc nuw i64 %89 to i32
  %104 = icmp sgt i32 %18, %103
  br i1 %104, label %86, label %105

105:                                              ; preds = %100, %61
  %106 = phi i32 [ 1, %61 ], [ %102, %100 ]
  %107 = icmp eq i32 %35, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @img, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 89192
  %111 = load ptr, ptr %110, align 8, !tbaa !135
  %112 = getelementptr inbounds i8, ptr %8, i64 4
  %113 = load i32, ptr %112, align 4, !tbaa !173
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %111, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !39
  br label %117

117:                                              ; preds = %108, %105, %33
  %118 = phi i32 [ %34, %33 ], [ %54, %105 ], [ %54, %108 ]
  %119 = phi i32 [ %37, %33 ], [ %106, %105 ], [ %106, %108 ]
  %120 = phi i32 [ %37, %33 ], [ %62, %105 ], [ %62, %108 ]
  %121 = phi i32 [ %35, %33 ], [ 0, %105 ], [ %116, %108 ]
  %122 = icmp eq ptr %0, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  store i32 %118, ptr %0, align 4, !tbaa !39
  br label %124

124:                                              ; preds = %123, %117
  %125 = icmp eq ptr %1, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %124
  %127 = icmp ne i32 %120, 0
  %128 = icmp ne i32 %119, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = zext i1 %129 to i32
  store i32 %130, ptr %1, align 4, !tbaa !39
  br label %131

131:                                              ; preds = %126, %124
  %132 = icmp eq ptr %2, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %131
  store i32 %121, ptr %2, align 4, !tbaa !39
  br label %134

134:                                              ; preds = %133, %131
  %135 = icmp ne i32 %118, 0
  %136 = icmp ne i32 %120, 0
  %137 = icmp ne i32 %119, 0
  %138 = select i1 %136, i1 %137, i1 false
  %139 = sext i32 %21 to i64
  %140 = icmp eq i32 %118, 0
  %141 = getelementptr inbounds i8, ptr %7, i64 20
  %142 = getelementptr inbounds i8, ptr %7, i64 16
  %143 = icmp eq i32 %119, 0
  %144 = icmp eq i32 %120, 0
  %145 = sext i32 %16 to i64
  %146 = shl nsw i64 %145, 1
  %147 = icmp sgt i32 %18, 0
  %148 = icmp sgt i32 %16, 0
  %149 = and i1 %135, %138
  %150 = icmp ne i32 %121, 0
  %151 = select i1 %149, i1 %150, i1 false
  %152 = ashr i32 %16, 1
  %153 = add nsw i32 %16, -1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %154
  %156 = getelementptr inbounds i8, ptr %8, i64 20
  %157 = getelementptr inbounds i8, ptr %8, i64 16
  %158 = add nsw i32 %152, -1
  %159 = icmp sgt i32 %152, 1
  %160 = add nsw i32 %152, -2
  %161 = ashr i32 %18, 1
  %162 = add nsw i32 %18, -1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %163
  %165 = add nsw i32 %161, -1
  %166 = icmp sgt i32 %161, 1
  %167 = add nsw i32 %161, -2
  %168 = icmp eq i32 %16, 8
  %169 = select i1 %168, i32 17, i32 5
  %170 = shl nsw i32 %16, 1
  %171 = select i1 %168, i32 5, i32 6
  %172 = icmp eq i32 %18, 8
  %173 = select i1 %172, i32 17, i32 5
  %174 = shl nsw i32 %18, 1
  %175 = select i1 %172, i32 5, i32 6
  %176 = sext i32 %152 to i64
  %177 = sext i32 %160 to i64
  %178 = sext i32 %161 to i64
  %179 = sext i32 %167 to i64
  %180 = zext nneg i32 %18 to i64
  %181 = zext nneg i32 %18 to i64
  %182 = zext nneg i32 %16 to i64
  %183 = zext nneg i32 %18 to i64
  %184 = zext nneg i32 %158 to i64
  %185 = zext nneg i32 %165 to i64
  %186 = zext nneg i32 %18 to i64
  %187 = zext nneg i32 %16 to i64
  br label %188

188:                                              ; preds = %134, %1959
  %189 = phi i1 [ true, %134 ], [ false, %1959 ]
  %190 = phi i64 [ 0, %134 ], [ 1, %1959 ]
  %191 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %192 = getelementptr inbounds i8, ptr %191, i64 6464
  %193 = load ptr, ptr %192, align 8, !tbaa !168
  %194 = getelementptr inbounds ptr, ptr %193, i64 %190
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = load ptr, ptr @img, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 90540
  %198 = load i32, ptr %197, align 4, !tbaa !174
  %199 = ashr i32 %198, 1
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %1812

201:                                              ; preds = %188
  %202 = getelementptr inbounds i8, ptr %196, i64 90528
  %203 = load i32, ptr %202, align 8, !tbaa !175
  %204 = getelementptr inbounds i8, ptr %196, i64 8504
  %205 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %204, i64 0, i64 %190
  %206 = zext nneg i32 %199 to i64
  br label %207

207:                                              ; preds = %201, %1783
  %208 = phi i64 [ 0, %201 ], [ %1810, %1783 ]
  %209 = load i32, ptr %141, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %195, i64 %210
  %212 = load i32, ptr %142, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %139, i64 %208, i64 0
  %215 = load i8, ptr %214, align 1, !tbaa !58
  %216 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %139, i64 %208, i64 0
  %217 = load i8, ptr %216, align 1, !tbaa !58
  %218 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @IntraChromaPrediction.block_pos, i64 0, i64 %139, i64 %208, i64 0
  %219 = load i32, ptr %218, align 4, !tbaa !39
  switch i32 %219, label %586 [
    i32 0, label %220
    i32 1, label %315
    i32 2, label %403
    i32 3, label %491
  ]

220:                                              ; preds = %207
  br i1 %140, label %246, label %221

221:                                              ; preds = %220
  %222 = load ptr, ptr %211, align 8, !tbaa !6
  %223 = zext i8 %217 to i64
  %224 = getelementptr i16, ptr %222, i64 %213
  %225 = getelementptr i16, ptr %224, i64 %223
  %226 = load i16, ptr %225, align 2, !tbaa !153
  %227 = zext i16 %226 to i32
  %228 = getelementptr i16, ptr %222, i64 %223
  %229 = getelementptr i8, ptr %228, i64 2
  %230 = getelementptr i16, ptr %229, i64 %213
  %231 = load i16, ptr %230, align 2, !tbaa !153
  %232 = zext i16 %231 to i32
  %233 = add nuw nsw i32 %227, %232
  %234 = getelementptr i16, ptr %222, i64 %223
  %235 = getelementptr i8, ptr %234, i64 4
  %236 = getelementptr i16, ptr %235, i64 %213
  %237 = load i16, ptr %236, align 2, !tbaa !153
  %238 = zext i16 %237 to i32
  %239 = add nuw nsw i32 %233, %238
  %240 = getelementptr i16, ptr %222, i64 %223
  %241 = getelementptr i8, ptr %240, i64 6
  %242 = getelementptr i16, ptr %241, i64 %213
  %243 = load i16, ptr %242, align 2, !tbaa !153
  %244 = zext i16 %243 to i32
  %245 = add nuw nsw i32 %239, %244
  br i1 %144, label %309, label %247

246:                                              ; preds = %220
  br i1 %144, label %586, label %247

247:                                              ; preds = %221, %246
  %248 = phi i32 [ 0, %246 ], [ %245, %221 ]
  %249 = zext i8 %215 to i64
  %250 = add nuw nsw i64 %249, 1
  %251 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %250
  %252 = getelementptr inbounds i8, ptr %251, i64 20
  %253 = load i32, ptr %252, align 4, !tbaa !176
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %195, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %251, i64 16
  %258 = load i32, ptr %257, align 4, !tbaa !177
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i16, ptr %256, i64 %259
  %261 = load i16, ptr %260, align 2, !tbaa !153
  %262 = zext i16 %261 to i32
  %263 = add nuw nsw i64 %249, 2
  %264 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %263
  %265 = getelementptr inbounds i8, ptr %264, i64 20
  %266 = load i32, ptr %265, align 4, !tbaa !176
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds ptr, ptr %195, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  %270 = getelementptr inbounds i8, ptr %264, i64 16
  %271 = load i32, ptr %270, align 4, !tbaa !177
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i16, ptr %269, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !153
  %275 = zext i16 %274 to i32
  %276 = add nuw nsw i32 %262, %275
  %277 = add nuw nsw i64 %249, 3
  %278 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %277
  %279 = getelementptr inbounds i8, ptr %278, i64 20
  %280 = load i32, ptr %279, align 4, !tbaa !176
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds ptr, ptr %195, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !6
  %284 = getelementptr inbounds i8, ptr %278, i64 16
  %285 = load i32, ptr %284, align 4, !tbaa !177
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i16, ptr %283, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !153
  %289 = zext i16 %288 to i32
  %290 = add nuw nsw i32 %276, %289
  %291 = add nuw nsw i64 %249, 4
  %292 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %291
  %293 = getelementptr inbounds i8, ptr %292, i64 20
  %294 = load i32, ptr %293, align 4, !tbaa !176
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds ptr, ptr %195, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  %298 = getelementptr inbounds i8, ptr %292, i64 16
  %299 = load i32, ptr %298, align 4, !tbaa !177
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i16, ptr %297, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !153
  %303 = zext i16 %302 to i32
  %304 = add nuw nsw i32 %290, %303
  br i1 %140, label %312, label %305

305:                                              ; preds = %247
  %306 = add nuw nsw i32 %248, 4
  %307 = add nuw nsw i32 %306, %304
  %308 = lshr i32 %307, 3
  br label %586

309:                                              ; preds = %221
  %310 = add nuw nsw i32 %245, 2
  %311 = lshr i32 %310, 2
  br label %586

312:                                              ; preds = %247
  %313 = add nuw nsw i32 %304, 2
  %314 = lshr i32 %313, 2
  br label %586

315:                                              ; preds = %207
  br i1 %140, label %316, label %317

316:                                              ; preds = %315
  br i1 %144, label %586, label %344

317:                                              ; preds = %315
  %318 = load ptr, ptr %211, align 8, !tbaa !6
  %319 = zext i8 %217 to i64
  %320 = getelementptr i16, ptr %318, i64 %213
  %321 = getelementptr i16, ptr %320, i64 %319
  %322 = load i16, ptr %321, align 2, !tbaa !153
  %323 = zext i16 %322 to i32
  %324 = getelementptr i16, ptr %318, i64 %319
  %325 = getelementptr i8, ptr %324, i64 2
  %326 = getelementptr i16, ptr %325, i64 %213
  %327 = load i16, ptr %326, align 2, !tbaa !153
  %328 = zext i16 %327 to i32
  %329 = add nuw nsw i32 %323, %328
  %330 = getelementptr i16, ptr %318, i64 %319
  %331 = getelementptr i8, ptr %330, i64 4
  %332 = getelementptr i16, ptr %331, i64 %213
  %333 = load i16, ptr %332, align 2, !tbaa !153
  %334 = zext i16 %333 to i32
  %335 = add nuw nsw i32 %329, %334
  %336 = getelementptr i16, ptr %318, i64 %319
  %337 = getelementptr i8, ptr %336, i64 6
  %338 = getelementptr i16, ptr %337, i64 %213
  %339 = load i16, ptr %338, align 2, !tbaa !153
  %340 = zext i16 %339 to i32
  %341 = add nuw nsw i32 %335, %340
  %342 = add nuw nsw i32 %341, 2
  %343 = lshr i32 %342, 2
  br label %586

344:                                              ; preds = %316
  %345 = zext i8 %215 to i64
  %346 = add nuw nsw i64 %345, 1
  %347 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %346
  %348 = getelementptr inbounds i8, ptr %347, i64 20
  %349 = load i32, ptr %348, align 4, !tbaa !176
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds ptr, ptr %195, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !6
  %353 = getelementptr inbounds i8, ptr %347, i64 16
  %354 = load i32, ptr %353, align 4, !tbaa !177
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i16, ptr %352, i64 %355
  %357 = load i16, ptr %356, align 2, !tbaa !153
  %358 = zext i16 %357 to i32
  %359 = add nuw nsw i64 %345, 2
  %360 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %359
  %361 = getelementptr inbounds i8, ptr %360, i64 20
  %362 = load i32, ptr %361, align 4, !tbaa !176
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds ptr, ptr %195, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = getelementptr inbounds i8, ptr %360, i64 16
  %367 = load i32, ptr %366, align 4, !tbaa !177
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i16, ptr %365, i64 %368
  %370 = load i16, ptr %369, align 2, !tbaa !153
  %371 = zext i16 %370 to i32
  %372 = add nuw nsw i32 %358, %371
  %373 = add nuw nsw i64 %345, 3
  %374 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %373
  %375 = getelementptr inbounds i8, ptr %374, i64 20
  %376 = load i32, ptr %375, align 4, !tbaa !176
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds ptr, ptr %195, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !6
  %380 = getelementptr inbounds i8, ptr %374, i64 16
  %381 = load i32, ptr %380, align 4, !tbaa !177
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i16, ptr %379, i64 %382
  %384 = load i16, ptr %383, align 2, !tbaa !153
  %385 = zext i16 %384 to i32
  %386 = add nuw nsw i32 %372, %385
  %387 = add nuw nsw i64 %345, 4
  %388 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %387
  %389 = getelementptr inbounds i8, ptr %388, i64 20
  %390 = load i32, ptr %389, align 4, !tbaa !176
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds ptr, ptr %195, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !6
  %394 = getelementptr inbounds i8, ptr %388, i64 16
  %395 = load i32, ptr %394, align 4, !tbaa !177
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i16, ptr %393, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !153
  %399 = zext i16 %398 to i32
  %400 = add nuw nsw i32 %386, %399
  %401 = add nuw nsw i32 %400, 2
  %402 = lshr i32 %401, 2
  br label %586

403:                                              ; preds = %207
  br i1 %143, label %404, label %405

404:                                              ; preds = %403
  br i1 %140, label %586, label %464

405:                                              ; preds = %403
  %406 = zext i8 %215 to i64
  %407 = add nuw nsw i64 %406, 1
  %408 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %407
  %409 = getelementptr inbounds i8, ptr %408, i64 20
  %410 = load i32, ptr %409, align 4, !tbaa !176
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds ptr, ptr %195, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %408, i64 16
  %415 = load i32, ptr %414, align 4, !tbaa !177
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i16, ptr %413, i64 %416
  %418 = load i16, ptr %417, align 2, !tbaa !153
  %419 = zext i16 %418 to i32
  %420 = add nuw nsw i64 %406, 2
  %421 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %420
  %422 = getelementptr inbounds i8, ptr %421, i64 20
  %423 = load i32, ptr %422, align 4, !tbaa !176
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %195, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !6
  %427 = getelementptr inbounds i8, ptr %421, i64 16
  %428 = load i32, ptr %427, align 4, !tbaa !177
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i16, ptr %426, i64 %429
  %431 = load i16, ptr %430, align 2, !tbaa !153
  %432 = zext i16 %431 to i32
  %433 = add nuw nsw i32 %419, %432
  %434 = add nuw nsw i64 %406, 3
  %435 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %434
  %436 = getelementptr inbounds i8, ptr %435, i64 20
  %437 = load i32, ptr %436, align 4, !tbaa !176
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds ptr, ptr %195, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = getelementptr inbounds i8, ptr %435, i64 16
  %442 = load i32, ptr %441, align 4, !tbaa !177
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i16, ptr %440, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !153
  %446 = zext i16 %445 to i32
  %447 = add nuw nsw i32 %433, %446
  %448 = add nuw nsw i64 %406, 4
  %449 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %448
  %450 = getelementptr inbounds i8, ptr %449, i64 20
  %451 = load i32, ptr %450, align 4, !tbaa !176
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds ptr, ptr %195, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  %455 = getelementptr inbounds i8, ptr %449, i64 16
  %456 = load i32, ptr %455, align 4, !tbaa !177
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i16, ptr %454, i64 %457
  %459 = load i16, ptr %458, align 2, !tbaa !153
  %460 = zext i16 %459 to i32
  %461 = add nuw nsw i32 %447, %460
  %462 = add nuw nsw i32 %461, 2
  %463 = lshr i32 %462, 2
  br label %586

464:                                              ; preds = %404
  %465 = load ptr, ptr %211, align 8, !tbaa !6
  %466 = zext i8 %217 to i64
  %467 = getelementptr i16, ptr %465, i64 %213
  %468 = getelementptr i16, ptr %467, i64 %466
  %469 = load i16, ptr %468, align 2, !tbaa !153
  %470 = zext i16 %469 to i32
  %471 = getelementptr i16, ptr %465, i64 %466
  %472 = getelementptr i8, ptr %471, i64 2
  %473 = getelementptr i16, ptr %472, i64 %213
  %474 = load i16, ptr %473, align 2, !tbaa !153
  %475 = zext i16 %474 to i32
  %476 = add nuw nsw i32 %470, %475
  %477 = getelementptr i16, ptr %465, i64 %466
  %478 = getelementptr i8, ptr %477, i64 4
  %479 = getelementptr i16, ptr %478, i64 %213
  %480 = load i16, ptr %479, align 2, !tbaa !153
  %481 = zext i16 %480 to i32
  %482 = add nuw nsw i32 %476, %481
  %483 = getelementptr i16, ptr %465, i64 %466
  %484 = getelementptr i8, ptr %483, i64 6
  %485 = getelementptr i16, ptr %484, i64 %213
  %486 = load i16, ptr %485, align 2, !tbaa !153
  %487 = zext i16 %486 to i32
  %488 = add nuw nsw i32 %482, %487
  %489 = add nuw nsw i32 %488, 2
  %490 = lshr i32 %489, 2
  br label %586

491:                                              ; preds = %207
  br i1 %140, label %517, label %492

492:                                              ; preds = %491
  %493 = load ptr, ptr %211, align 8, !tbaa !6
  %494 = zext i8 %217 to i64
  %495 = getelementptr i16, ptr %493, i64 %213
  %496 = getelementptr i16, ptr %495, i64 %494
  %497 = load i16, ptr %496, align 2, !tbaa !153
  %498 = zext i16 %497 to i32
  %499 = getelementptr i16, ptr %493, i64 %494
  %500 = getelementptr i8, ptr %499, i64 2
  %501 = getelementptr i16, ptr %500, i64 %213
  %502 = load i16, ptr %501, align 2, !tbaa !153
  %503 = zext i16 %502 to i32
  %504 = add nuw nsw i32 %498, %503
  %505 = getelementptr i16, ptr %493, i64 %494
  %506 = getelementptr i8, ptr %505, i64 4
  %507 = getelementptr i16, ptr %506, i64 %213
  %508 = load i16, ptr %507, align 2, !tbaa !153
  %509 = zext i16 %508 to i32
  %510 = add nuw nsw i32 %504, %509
  %511 = getelementptr i16, ptr %493, i64 %494
  %512 = getelementptr i8, ptr %511, i64 6
  %513 = getelementptr i16, ptr %512, i64 %213
  %514 = load i16, ptr %513, align 2, !tbaa !153
  %515 = zext i16 %514 to i32
  %516 = add nuw nsw i32 %510, %515
  br i1 %143, label %580, label %518

517:                                              ; preds = %491
  br i1 %143, label %586, label %518

518:                                              ; preds = %492, %517
  %519 = phi i32 [ 0, %517 ], [ %516, %492 ]
  %520 = zext i8 %215 to i64
  %521 = add nuw nsw i64 %520, 1
  %522 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %521
  %523 = getelementptr inbounds i8, ptr %522, i64 20
  %524 = load i32, ptr %523, align 4, !tbaa !176
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds ptr, ptr %195, i64 %525
  %527 = load ptr, ptr %526, align 8, !tbaa !6
  %528 = getelementptr inbounds i8, ptr %522, i64 16
  %529 = load i32, ptr %528, align 4, !tbaa !177
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i16, ptr %527, i64 %530
  %532 = load i16, ptr %531, align 2, !tbaa !153
  %533 = zext i16 %532 to i32
  %534 = add nuw nsw i64 %520, 2
  %535 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %534
  %536 = getelementptr inbounds i8, ptr %535, i64 20
  %537 = load i32, ptr %536, align 4, !tbaa !176
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds ptr, ptr %195, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !6
  %541 = getelementptr inbounds i8, ptr %535, i64 16
  %542 = load i32, ptr %541, align 4, !tbaa !177
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i16, ptr %540, i64 %543
  %545 = load i16, ptr %544, align 2, !tbaa !153
  %546 = zext i16 %545 to i32
  %547 = add nuw nsw i32 %533, %546
  %548 = add nuw nsw i64 %520, 3
  %549 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %548
  %550 = getelementptr inbounds i8, ptr %549, i64 20
  %551 = load i32, ptr %550, align 4, !tbaa !176
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds ptr, ptr %195, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !6
  %555 = getelementptr inbounds i8, ptr %549, i64 16
  %556 = load i32, ptr %555, align 4, !tbaa !177
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i16, ptr %554, i64 %557
  %559 = load i16, ptr %558, align 2, !tbaa !153
  %560 = zext i16 %559 to i32
  %561 = add nuw nsw i32 %547, %560
  %562 = add nuw nsw i64 %520, 4
  %563 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %562
  %564 = getelementptr inbounds i8, ptr %563, i64 20
  %565 = load i32, ptr %564, align 4, !tbaa !176
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds ptr, ptr %195, i64 %566
  %568 = load ptr, ptr %567, align 8, !tbaa !6
  %569 = getelementptr inbounds i8, ptr %563, i64 16
  %570 = load i32, ptr %569, align 4, !tbaa !177
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i16, ptr %568, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !153
  %574 = zext i16 %573 to i32
  %575 = add nuw nsw i32 %561, %574
  br i1 %140, label %583, label %576

576:                                              ; preds = %518
  %577 = add nuw nsw i32 %519, 4
  %578 = add nuw nsw i32 %577, %575
  %579 = lshr i32 %578, 3
  br label %586

580:                                              ; preds = %492
  %581 = add nuw nsw i32 %516, 2
  %582 = lshr i32 %581, 2
  br label %586

583:                                              ; preds = %518
  %584 = add nuw nsw i32 %575, 2
  %585 = lshr i32 %584, 2
  br label %586

586:                                              ; preds = %517, %246, %404, %316, %576, %583, %580, %405, %464, %317, %344, %305, %312, %309, %207
  %587 = phi i32 [ %203, %207 ], [ %579, %576 ], [ %582, %580 ], [ %585, %583 ], [ %463, %405 ], [ %490, %464 ], [ %343, %317 ], [ %402, %344 ], [ %308, %305 ], [ %311, %309 ], [ %314, %312 ], [ %203, %316 ], [ %203, %404 ], [ %203, %246 ], [ %203, %517 ]
  %588 = trunc i32 %587 to i16
  %589 = zext i8 %217 to i64
  %590 = zext i8 %215 to i64
  %591 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %590, i64 %589
  store i16 %588, ptr %591, align 2, !tbaa !153
  %592 = add nuw nsw i64 %589, 1
  %593 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %590, i64 %592
  store i16 %588, ptr %593, align 2, !tbaa !153
  %594 = add nuw nsw i64 %589, 2
  %595 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %590, i64 %594
  store i16 %588, ptr %595, align 2, !tbaa !153
  %596 = add nuw nsw i64 %589, 3
  %597 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %590, i64 %596
  store i16 %588, ptr %597, align 2, !tbaa !153
  %598 = add nuw nsw i64 %590, 1
  %599 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %598, i64 %589
  store i16 %588, ptr %599, align 2, !tbaa !153
  %600 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %598, i64 %592
  store i16 %588, ptr %600, align 2, !tbaa !153
  %601 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %598, i64 %594
  store i16 %588, ptr %601, align 2, !tbaa !153
  %602 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %598, i64 %596
  store i16 %588, ptr %602, align 2, !tbaa !153
  %603 = add nuw nsw i64 %590, 2
  %604 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %603, i64 %589
  store i16 %588, ptr %604, align 2, !tbaa !153
  %605 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %603, i64 %592
  store i16 %588, ptr %605, align 2, !tbaa !153
  %606 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %603, i64 %594
  store i16 %588, ptr %606, align 2, !tbaa !153
  %607 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %603, i64 %596
  store i16 %588, ptr %607, align 2, !tbaa !153
  %608 = add nuw nsw i64 %590, 3
  %609 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %608, i64 %589
  store i16 %588, ptr %609, align 2, !tbaa !153
  %610 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %608, i64 %592
  store i16 %588, ptr %610, align 2, !tbaa !153
  %611 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %608, i64 %594
  store i16 %588, ptr %611, align 2, !tbaa !153
  %612 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %608, i64 %596
  store i16 %588, ptr %612, align 2, !tbaa !153
  %613 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %139, i64 %208, i64 1
  %614 = load i8, ptr %613, align 1, !tbaa !58
  %615 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %139, i64 %208, i64 1
  %616 = load i8, ptr %615, align 1, !tbaa !58
  %617 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @IntraChromaPrediction.block_pos, i64 0, i64 %139, i64 %208, i64 1
  %618 = load i32, ptr %617, align 4, !tbaa !39
  switch i32 %618, label %985 [
    i32 0, label %890
    i32 1, label %802
    i32 2, label %714
    i32 3, label %619
  ]

619:                                              ; preds = %586
  br i1 %140, label %648, label %620

620:                                              ; preds = %619
  %621 = load ptr, ptr %211, align 8, !tbaa !6
  %622 = zext i8 %616 to i64
  %623 = getelementptr i16, ptr %621, i64 %213
  %624 = getelementptr i16, ptr %623, i64 %622
  %625 = load i16, ptr %624, align 2, !tbaa !153
  %626 = zext i16 %625 to i32
  %627 = getelementptr i16, ptr %621, i64 %622
  %628 = getelementptr i8, ptr %627, i64 2
  %629 = getelementptr i16, ptr %628, i64 %213
  %630 = load i16, ptr %629, align 2, !tbaa !153
  %631 = zext i16 %630 to i32
  %632 = add nuw nsw i32 %626, %631
  %633 = getelementptr i16, ptr %621, i64 %622
  %634 = getelementptr i8, ptr %633, i64 4
  %635 = getelementptr i16, ptr %634, i64 %213
  %636 = load i16, ptr %635, align 2, !tbaa !153
  %637 = zext i16 %636 to i32
  %638 = add nuw nsw i32 %632, %637
  %639 = getelementptr i16, ptr %621, i64 %622
  %640 = getelementptr i8, ptr %639, i64 6
  %641 = getelementptr i16, ptr %640, i64 %213
  %642 = load i16, ptr %641, align 2, !tbaa !153
  %643 = zext i16 %642 to i32
  %644 = add nuw nsw i32 %638, %643
  br i1 %143, label %645, label %649

645:                                              ; preds = %620
  %646 = add nuw nsw i32 %644, 2
  %647 = lshr i32 %646, 2
  br label %985

648:                                              ; preds = %619
  br i1 %143, label %985, label %649

649:                                              ; preds = %648, %620
  %650 = phi i32 [ 0, %648 ], [ %644, %620 ]
  %651 = zext i8 %614 to i64
  %652 = add nuw nsw i64 %651, 1
  %653 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %652
  %654 = getelementptr inbounds i8, ptr %653, i64 20
  %655 = load i32, ptr %654, align 4, !tbaa !176
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds ptr, ptr %195, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !6
  %659 = getelementptr inbounds i8, ptr %653, i64 16
  %660 = load i32, ptr %659, align 4, !tbaa !177
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i16, ptr %658, i64 %661
  %663 = load i16, ptr %662, align 2, !tbaa !153
  %664 = zext i16 %663 to i32
  %665 = add nuw nsw i64 %651, 2
  %666 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %665
  %667 = getelementptr inbounds i8, ptr %666, i64 20
  %668 = load i32, ptr %667, align 4, !tbaa !176
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds ptr, ptr %195, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !6
  %672 = getelementptr inbounds i8, ptr %666, i64 16
  %673 = load i32, ptr %672, align 4, !tbaa !177
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i16, ptr %671, i64 %674
  %676 = load i16, ptr %675, align 2, !tbaa !153
  %677 = zext i16 %676 to i32
  %678 = add nuw nsw i32 %664, %677
  %679 = add nuw nsw i64 %651, 3
  %680 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %679
  %681 = getelementptr inbounds i8, ptr %680, i64 20
  %682 = load i32, ptr %681, align 4, !tbaa !176
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds ptr, ptr %195, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !6
  %686 = getelementptr inbounds i8, ptr %680, i64 16
  %687 = load i32, ptr %686, align 4, !tbaa !177
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i16, ptr %685, i64 %688
  %690 = load i16, ptr %689, align 2, !tbaa !153
  %691 = zext i16 %690 to i32
  %692 = add nuw nsw i32 %678, %691
  %693 = add nuw nsw i64 %651, 4
  %694 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %693
  %695 = getelementptr inbounds i8, ptr %694, i64 20
  %696 = load i32, ptr %695, align 4, !tbaa !176
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds ptr, ptr %195, i64 %697
  %699 = load ptr, ptr %698, align 8, !tbaa !6
  %700 = getelementptr inbounds i8, ptr %694, i64 16
  %701 = load i32, ptr %700, align 4, !tbaa !177
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i16, ptr %699, i64 %702
  %704 = load i16, ptr %703, align 2, !tbaa !153
  %705 = zext i16 %704 to i32
  %706 = add nuw nsw i32 %692, %705
  br i1 %140, label %711, label %707

707:                                              ; preds = %649
  %708 = add nuw nsw i32 %650, 4
  %709 = add nuw nsw i32 %708, %706
  %710 = lshr i32 %709, 3
  br label %985

711:                                              ; preds = %649
  %712 = add nuw nsw i32 %706, 2
  %713 = lshr i32 %712, 2
  br label %985

714:                                              ; preds = %586
  br i1 %143, label %715, label %716

715:                                              ; preds = %714
  br i1 %140, label %985, label %775

716:                                              ; preds = %714
  %717 = zext i8 %614 to i64
  %718 = add nuw nsw i64 %717, 1
  %719 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %718
  %720 = getelementptr inbounds i8, ptr %719, i64 20
  %721 = load i32, ptr %720, align 4, !tbaa !176
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds ptr, ptr %195, i64 %722
  %724 = load ptr, ptr %723, align 8, !tbaa !6
  %725 = getelementptr inbounds i8, ptr %719, i64 16
  %726 = load i32, ptr %725, align 4, !tbaa !177
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i16, ptr %724, i64 %727
  %729 = load i16, ptr %728, align 2, !tbaa !153
  %730 = zext i16 %729 to i32
  %731 = add nuw nsw i64 %717, 2
  %732 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %731
  %733 = getelementptr inbounds i8, ptr %732, i64 20
  %734 = load i32, ptr %733, align 4, !tbaa !176
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds ptr, ptr %195, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !6
  %738 = getelementptr inbounds i8, ptr %732, i64 16
  %739 = load i32, ptr %738, align 4, !tbaa !177
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i16, ptr %737, i64 %740
  %742 = load i16, ptr %741, align 2, !tbaa !153
  %743 = zext i16 %742 to i32
  %744 = add nuw nsw i32 %730, %743
  %745 = add nuw nsw i64 %717, 3
  %746 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %745
  %747 = getelementptr inbounds i8, ptr %746, i64 20
  %748 = load i32, ptr %747, align 4, !tbaa !176
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds ptr, ptr %195, i64 %749
  %751 = load ptr, ptr %750, align 8, !tbaa !6
  %752 = getelementptr inbounds i8, ptr %746, i64 16
  %753 = load i32, ptr %752, align 4, !tbaa !177
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i16, ptr %751, i64 %754
  %756 = load i16, ptr %755, align 2, !tbaa !153
  %757 = zext i16 %756 to i32
  %758 = add nuw nsw i32 %744, %757
  %759 = add nuw nsw i64 %717, 4
  %760 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %759
  %761 = getelementptr inbounds i8, ptr %760, i64 20
  %762 = load i32, ptr %761, align 4, !tbaa !176
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds ptr, ptr %195, i64 %763
  %765 = load ptr, ptr %764, align 8, !tbaa !6
  %766 = getelementptr inbounds i8, ptr %760, i64 16
  %767 = load i32, ptr %766, align 4, !tbaa !177
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i16, ptr %765, i64 %768
  %770 = load i16, ptr %769, align 2, !tbaa !153
  %771 = zext i16 %770 to i32
  %772 = add nuw nsw i32 %758, %771
  %773 = add nuw nsw i32 %772, 2
  %774 = lshr i32 %773, 2
  br label %985

775:                                              ; preds = %715
  %776 = load ptr, ptr %211, align 8, !tbaa !6
  %777 = zext i8 %616 to i64
  %778 = getelementptr i16, ptr %776, i64 %213
  %779 = getelementptr i16, ptr %778, i64 %777
  %780 = load i16, ptr %779, align 2, !tbaa !153
  %781 = zext i16 %780 to i32
  %782 = getelementptr i16, ptr %776, i64 %777
  %783 = getelementptr i8, ptr %782, i64 2
  %784 = getelementptr i16, ptr %783, i64 %213
  %785 = load i16, ptr %784, align 2, !tbaa !153
  %786 = zext i16 %785 to i32
  %787 = add nuw nsw i32 %781, %786
  %788 = getelementptr i16, ptr %776, i64 %777
  %789 = getelementptr i8, ptr %788, i64 4
  %790 = getelementptr i16, ptr %789, i64 %213
  %791 = load i16, ptr %790, align 2, !tbaa !153
  %792 = zext i16 %791 to i32
  %793 = add nuw nsw i32 %787, %792
  %794 = getelementptr i16, ptr %776, i64 %777
  %795 = getelementptr i8, ptr %794, i64 6
  %796 = getelementptr i16, ptr %795, i64 %213
  %797 = load i16, ptr %796, align 2, !tbaa !153
  %798 = zext i16 %797 to i32
  %799 = add nuw nsw i32 %793, %798
  %800 = add nuw nsw i32 %799, 2
  %801 = lshr i32 %800, 2
  br label %985

802:                                              ; preds = %586
  br i1 %140, label %803, label %804

803:                                              ; preds = %802
  br i1 %144, label %985, label %831

804:                                              ; preds = %802
  %805 = load ptr, ptr %211, align 8, !tbaa !6
  %806 = zext i8 %616 to i64
  %807 = getelementptr i16, ptr %805, i64 %213
  %808 = getelementptr i16, ptr %807, i64 %806
  %809 = load i16, ptr %808, align 2, !tbaa !153
  %810 = zext i16 %809 to i32
  %811 = getelementptr i16, ptr %805, i64 %806
  %812 = getelementptr i8, ptr %811, i64 2
  %813 = getelementptr i16, ptr %812, i64 %213
  %814 = load i16, ptr %813, align 2, !tbaa !153
  %815 = zext i16 %814 to i32
  %816 = add nuw nsw i32 %810, %815
  %817 = getelementptr i16, ptr %805, i64 %806
  %818 = getelementptr i8, ptr %817, i64 4
  %819 = getelementptr i16, ptr %818, i64 %213
  %820 = load i16, ptr %819, align 2, !tbaa !153
  %821 = zext i16 %820 to i32
  %822 = add nuw nsw i32 %816, %821
  %823 = getelementptr i16, ptr %805, i64 %806
  %824 = getelementptr i8, ptr %823, i64 6
  %825 = getelementptr i16, ptr %824, i64 %213
  %826 = load i16, ptr %825, align 2, !tbaa !153
  %827 = zext i16 %826 to i32
  %828 = add nuw nsw i32 %822, %827
  %829 = add nuw nsw i32 %828, 2
  %830 = lshr i32 %829, 2
  br label %985

831:                                              ; preds = %803
  %832 = zext i8 %614 to i64
  %833 = add nuw nsw i64 %832, 1
  %834 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %833
  %835 = getelementptr inbounds i8, ptr %834, i64 20
  %836 = load i32, ptr %835, align 4, !tbaa !176
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds ptr, ptr %195, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !6
  %840 = getelementptr inbounds i8, ptr %834, i64 16
  %841 = load i32, ptr %840, align 4, !tbaa !177
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i16, ptr %839, i64 %842
  %844 = load i16, ptr %843, align 2, !tbaa !153
  %845 = zext i16 %844 to i32
  %846 = add nuw nsw i64 %832, 2
  %847 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %846
  %848 = getelementptr inbounds i8, ptr %847, i64 20
  %849 = load i32, ptr %848, align 4, !tbaa !176
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds ptr, ptr %195, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !6
  %853 = getelementptr inbounds i8, ptr %847, i64 16
  %854 = load i32, ptr %853, align 4, !tbaa !177
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds i16, ptr %852, i64 %855
  %857 = load i16, ptr %856, align 2, !tbaa !153
  %858 = zext i16 %857 to i32
  %859 = add nuw nsw i32 %845, %858
  %860 = add nuw nsw i64 %832, 3
  %861 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %860
  %862 = getelementptr inbounds i8, ptr %861, i64 20
  %863 = load i32, ptr %862, align 4, !tbaa !176
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds ptr, ptr %195, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !6
  %867 = getelementptr inbounds i8, ptr %861, i64 16
  %868 = load i32, ptr %867, align 4, !tbaa !177
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i16, ptr %866, i64 %869
  %871 = load i16, ptr %870, align 2, !tbaa !153
  %872 = zext i16 %871 to i32
  %873 = add nuw nsw i32 %859, %872
  %874 = add nuw nsw i64 %832, 4
  %875 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %874
  %876 = getelementptr inbounds i8, ptr %875, i64 20
  %877 = load i32, ptr %876, align 4, !tbaa !176
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds ptr, ptr %195, i64 %878
  %880 = load ptr, ptr %879, align 8, !tbaa !6
  %881 = getelementptr inbounds i8, ptr %875, i64 16
  %882 = load i32, ptr %881, align 4, !tbaa !177
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds i16, ptr %880, i64 %883
  %885 = load i16, ptr %884, align 2, !tbaa !153
  %886 = zext i16 %885 to i32
  %887 = add nuw nsw i32 %873, %886
  %888 = add nuw nsw i32 %887, 2
  %889 = lshr i32 %888, 2
  br label %985

890:                                              ; preds = %586
  br i1 %140, label %919, label %891

891:                                              ; preds = %890
  %892 = load ptr, ptr %211, align 8, !tbaa !6
  %893 = zext i8 %616 to i64
  %894 = getelementptr i16, ptr %892, i64 %213
  %895 = getelementptr i16, ptr %894, i64 %893
  %896 = load i16, ptr %895, align 2, !tbaa !153
  %897 = zext i16 %896 to i32
  %898 = getelementptr i16, ptr %892, i64 %893
  %899 = getelementptr i8, ptr %898, i64 2
  %900 = getelementptr i16, ptr %899, i64 %213
  %901 = load i16, ptr %900, align 2, !tbaa !153
  %902 = zext i16 %901 to i32
  %903 = add nuw nsw i32 %897, %902
  %904 = getelementptr i16, ptr %892, i64 %893
  %905 = getelementptr i8, ptr %904, i64 4
  %906 = getelementptr i16, ptr %905, i64 %213
  %907 = load i16, ptr %906, align 2, !tbaa !153
  %908 = zext i16 %907 to i32
  %909 = add nuw nsw i32 %903, %908
  %910 = getelementptr i16, ptr %892, i64 %893
  %911 = getelementptr i8, ptr %910, i64 6
  %912 = getelementptr i16, ptr %911, i64 %213
  %913 = load i16, ptr %912, align 2, !tbaa !153
  %914 = zext i16 %913 to i32
  %915 = add nuw nsw i32 %909, %914
  br i1 %144, label %916, label %920

916:                                              ; preds = %891
  %917 = add nuw nsw i32 %915, 2
  %918 = lshr i32 %917, 2
  br label %985

919:                                              ; preds = %890
  br i1 %144, label %985, label %920

920:                                              ; preds = %919, %891
  %921 = phi i32 [ 0, %919 ], [ %915, %891 ]
  %922 = zext i8 %614 to i64
  %923 = add nuw nsw i64 %922, 1
  %924 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %923
  %925 = getelementptr inbounds i8, ptr %924, i64 20
  %926 = load i32, ptr %925, align 4, !tbaa !176
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds ptr, ptr %195, i64 %927
  %929 = load ptr, ptr %928, align 8, !tbaa !6
  %930 = getelementptr inbounds i8, ptr %924, i64 16
  %931 = load i32, ptr %930, align 4, !tbaa !177
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds i16, ptr %929, i64 %932
  %934 = load i16, ptr %933, align 2, !tbaa !153
  %935 = zext i16 %934 to i32
  %936 = add nuw nsw i64 %922, 2
  %937 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %936
  %938 = getelementptr inbounds i8, ptr %937, i64 20
  %939 = load i32, ptr %938, align 4, !tbaa !176
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds ptr, ptr %195, i64 %940
  %942 = load ptr, ptr %941, align 8, !tbaa !6
  %943 = getelementptr inbounds i8, ptr %937, i64 16
  %944 = load i32, ptr %943, align 4, !tbaa !177
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds i16, ptr %942, i64 %945
  %947 = load i16, ptr %946, align 2, !tbaa !153
  %948 = zext i16 %947 to i32
  %949 = add nuw nsw i32 %935, %948
  %950 = add nuw nsw i64 %922, 3
  %951 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %950
  %952 = getelementptr inbounds i8, ptr %951, i64 20
  %953 = load i32, ptr %952, align 4, !tbaa !176
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds ptr, ptr %195, i64 %954
  %956 = load ptr, ptr %955, align 8, !tbaa !6
  %957 = getelementptr inbounds i8, ptr %951, i64 16
  %958 = load i32, ptr %957, align 4, !tbaa !177
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds i16, ptr %956, i64 %959
  %961 = load i16, ptr %960, align 2, !tbaa !153
  %962 = zext i16 %961 to i32
  %963 = add nuw nsw i32 %949, %962
  %964 = add nuw nsw i64 %922, 4
  %965 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %964
  %966 = getelementptr inbounds i8, ptr %965, i64 20
  %967 = load i32, ptr %966, align 4, !tbaa !176
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds ptr, ptr %195, i64 %968
  %970 = load ptr, ptr %969, align 8, !tbaa !6
  %971 = getelementptr inbounds i8, ptr %965, i64 16
  %972 = load i32, ptr %971, align 4, !tbaa !177
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds i16, ptr %970, i64 %973
  %975 = load i16, ptr %974, align 2, !tbaa !153
  %976 = zext i16 %975 to i32
  %977 = add nuw nsw i32 %963, %976
  br i1 %140, label %982, label %978

978:                                              ; preds = %920
  %979 = add nuw nsw i32 %921, 4
  %980 = add nuw nsw i32 %979, %977
  %981 = lshr i32 %980, 3
  br label %985

982:                                              ; preds = %920
  %983 = add nuw nsw i32 %977, 2
  %984 = lshr i32 %983, 2
  br label %985

985:                                              ; preds = %982, %978, %919, %916, %831, %804, %803, %775, %716, %715, %711, %707, %648, %645, %586
  %986 = phi i32 [ %203, %586 ], [ %710, %707 ], [ %647, %645 ], [ %713, %711 ], [ %774, %716 ], [ %801, %775 ], [ %830, %804 ], [ %889, %831 ], [ %981, %978 ], [ %918, %916 ], [ %984, %982 ], [ %203, %803 ], [ %203, %715 ], [ %203, %919 ], [ %203, %648 ]
  %987 = trunc i32 %986 to i16
  %988 = zext i8 %616 to i64
  %989 = zext i8 %614 to i64
  %990 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %989, i64 %988
  store i16 %987, ptr %990, align 2, !tbaa !153
  %991 = add nuw nsw i64 %988, 1
  %992 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %989, i64 %991
  store i16 %987, ptr %992, align 2, !tbaa !153
  %993 = add nuw nsw i64 %988, 2
  %994 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %989, i64 %993
  store i16 %987, ptr %994, align 2, !tbaa !153
  %995 = add nuw nsw i64 %988, 3
  %996 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %989, i64 %995
  store i16 %987, ptr %996, align 2, !tbaa !153
  %997 = add nuw nsw i64 %989, 1
  %998 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %997, i64 %988
  store i16 %987, ptr %998, align 2, !tbaa !153
  %999 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %997, i64 %991
  store i16 %987, ptr %999, align 2, !tbaa !153
  %1000 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %997, i64 %993
  store i16 %987, ptr %1000, align 2, !tbaa !153
  %1001 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %997, i64 %995
  store i16 %987, ptr %1001, align 2, !tbaa !153
  %1002 = add nuw nsw i64 %989, 2
  %1003 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1002, i64 %988
  store i16 %987, ptr %1003, align 2, !tbaa !153
  %1004 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1002, i64 %991
  store i16 %987, ptr %1004, align 2, !tbaa !153
  %1005 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1002, i64 %993
  store i16 %987, ptr %1005, align 2, !tbaa !153
  %1006 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1002, i64 %995
  store i16 %987, ptr %1006, align 2, !tbaa !153
  %1007 = add nuw nsw i64 %989, 3
  %1008 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1007, i64 %988
  store i16 %987, ptr %1008, align 2, !tbaa !153
  %1009 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1007, i64 %991
  store i16 %987, ptr %1009, align 2, !tbaa !153
  %1010 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1007, i64 %993
  store i16 %987, ptr %1010, align 2, !tbaa !153
  %1011 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1007, i64 %995
  store i16 %987, ptr %1011, align 2, !tbaa !153
  %1012 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %139, i64 %208, i64 2
  %1013 = load i8, ptr %1012, align 1, !tbaa !58
  %1014 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %139, i64 %208, i64 2
  %1015 = load i8, ptr %1014, align 1, !tbaa !58
  %1016 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @IntraChromaPrediction.block_pos, i64 0, i64 %139, i64 %208, i64 2
  %1017 = load i32, ptr %1016, align 4, !tbaa !39
  switch i32 %1017, label %1384 [
    i32 0, label %1289
    i32 1, label %1201
    i32 2, label %1113
    i32 3, label %1018
  ]

1018:                                             ; preds = %985
  br i1 %140, label %1047, label %1019

1019:                                             ; preds = %1018
  %1020 = load ptr, ptr %211, align 8, !tbaa !6
  %1021 = zext i8 %1015 to i64
  %1022 = getelementptr i16, ptr %1020, i64 %213
  %1023 = getelementptr i16, ptr %1022, i64 %1021
  %1024 = load i16, ptr %1023, align 2, !tbaa !153
  %1025 = zext i16 %1024 to i32
  %1026 = getelementptr i16, ptr %1020, i64 %1021
  %1027 = getelementptr i8, ptr %1026, i64 2
  %1028 = getelementptr i16, ptr %1027, i64 %213
  %1029 = load i16, ptr %1028, align 2, !tbaa !153
  %1030 = zext i16 %1029 to i32
  %1031 = add nuw nsw i32 %1025, %1030
  %1032 = getelementptr i16, ptr %1020, i64 %1021
  %1033 = getelementptr i8, ptr %1032, i64 4
  %1034 = getelementptr i16, ptr %1033, i64 %213
  %1035 = load i16, ptr %1034, align 2, !tbaa !153
  %1036 = zext i16 %1035 to i32
  %1037 = add nuw nsw i32 %1031, %1036
  %1038 = getelementptr i16, ptr %1020, i64 %1021
  %1039 = getelementptr i8, ptr %1038, i64 6
  %1040 = getelementptr i16, ptr %1039, i64 %213
  %1041 = load i16, ptr %1040, align 2, !tbaa !153
  %1042 = zext i16 %1041 to i32
  %1043 = add nuw nsw i32 %1037, %1042
  br i1 %143, label %1044, label %1048

1044:                                             ; preds = %1019
  %1045 = add nuw nsw i32 %1043, 2
  %1046 = lshr i32 %1045, 2
  br label %1384

1047:                                             ; preds = %1018
  br i1 %143, label %1384, label %1048

1048:                                             ; preds = %1047, %1019
  %1049 = phi i32 [ 0, %1047 ], [ %1043, %1019 ]
  %1050 = zext i8 %1013 to i64
  %1051 = add nuw nsw i64 %1050, 1
  %1052 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1051
  %1053 = getelementptr inbounds i8, ptr %1052, i64 20
  %1054 = load i32, ptr %1053, align 4, !tbaa !176
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds ptr, ptr %195, i64 %1055
  %1057 = load ptr, ptr %1056, align 8, !tbaa !6
  %1058 = getelementptr inbounds i8, ptr %1052, i64 16
  %1059 = load i32, ptr %1058, align 4, !tbaa !177
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i16, ptr %1057, i64 %1060
  %1062 = load i16, ptr %1061, align 2, !tbaa !153
  %1063 = zext i16 %1062 to i32
  %1064 = add nuw nsw i64 %1050, 2
  %1065 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1064
  %1066 = getelementptr inbounds i8, ptr %1065, i64 20
  %1067 = load i32, ptr %1066, align 4, !tbaa !176
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds ptr, ptr %195, i64 %1068
  %1070 = load ptr, ptr %1069, align 8, !tbaa !6
  %1071 = getelementptr inbounds i8, ptr %1065, i64 16
  %1072 = load i32, ptr %1071, align 4, !tbaa !177
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds i16, ptr %1070, i64 %1073
  %1075 = load i16, ptr %1074, align 2, !tbaa !153
  %1076 = zext i16 %1075 to i32
  %1077 = add nuw nsw i32 %1063, %1076
  %1078 = add nuw nsw i64 %1050, 3
  %1079 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1078
  %1080 = getelementptr inbounds i8, ptr %1079, i64 20
  %1081 = load i32, ptr %1080, align 4, !tbaa !176
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds ptr, ptr %195, i64 %1082
  %1084 = load ptr, ptr %1083, align 8, !tbaa !6
  %1085 = getelementptr inbounds i8, ptr %1079, i64 16
  %1086 = load i32, ptr %1085, align 4, !tbaa !177
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds i16, ptr %1084, i64 %1087
  %1089 = load i16, ptr %1088, align 2, !tbaa !153
  %1090 = zext i16 %1089 to i32
  %1091 = add nuw nsw i32 %1077, %1090
  %1092 = add nuw nsw i64 %1050, 4
  %1093 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1092
  %1094 = getelementptr inbounds i8, ptr %1093, i64 20
  %1095 = load i32, ptr %1094, align 4, !tbaa !176
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds ptr, ptr %195, i64 %1096
  %1098 = load ptr, ptr %1097, align 8, !tbaa !6
  %1099 = getelementptr inbounds i8, ptr %1093, i64 16
  %1100 = load i32, ptr %1099, align 4, !tbaa !177
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds i16, ptr %1098, i64 %1101
  %1103 = load i16, ptr %1102, align 2, !tbaa !153
  %1104 = zext i16 %1103 to i32
  %1105 = add nuw nsw i32 %1091, %1104
  br i1 %140, label %1110, label %1106

1106:                                             ; preds = %1048
  %1107 = add nuw nsw i32 %1049, 4
  %1108 = add nuw nsw i32 %1107, %1105
  %1109 = lshr i32 %1108, 3
  br label %1384

1110:                                             ; preds = %1048
  %1111 = add nuw nsw i32 %1105, 2
  %1112 = lshr i32 %1111, 2
  br label %1384

1113:                                             ; preds = %985
  br i1 %143, label %1114, label %1115

1114:                                             ; preds = %1113
  br i1 %140, label %1384, label %1174

1115:                                             ; preds = %1113
  %1116 = zext i8 %1013 to i64
  %1117 = add nuw nsw i64 %1116, 1
  %1118 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1117
  %1119 = getelementptr inbounds i8, ptr %1118, i64 20
  %1120 = load i32, ptr %1119, align 4, !tbaa !176
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds ptr, ptr %195, i64 %1121
  %1123 = load ptr, ptr %1122, align 8, !tbaa !6
  %1124 = getelementptr inbounds i8, ptr %1118, i64 16
  %1125 = load i32, ptr %1124, align 4, !tbaa !177
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds i16, ptr %1123, i64 %1126
  %1128 = load i16, ptr %1127, align 2, !tbaa !153
  %1129 = zext i16 %1128 to i32
  %1130 = add nuw nsw i64 %1116, 2
  %1131 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1130
  %1132 = getelementptr inbounds i8, ptr %1131, i64 20
  %1133 = load i32, ptr %1132, align 4, !tbaa !176
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds ptr, ptr %195, i64 %1134
  %1136 = load ptr, ptr %1135, align 8, !tbaa !6
  %1137 = getelementptr inbounds i8, ptr %1131, i64 16
  %1138 = load i32, ptr %1137, align 4, !tbaa !177
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds i16, ptr %1136, i64 %1139
  %1141 = load i16, ptr %1140, align 2, !tbaa !153
  %1142 = zext i16 %1141 to i32
  %1143 = add nuw nsw i32 %1129, %1142
  %1144 = add nuw nsw i64 %1116, 3
  %1145 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1144
  %1146 = getelementptr inbounds i8, ptr %1145, i64 20
  %1147 = load i32, ptr %1146, align 4, !tbaa !176
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds ptr, ptr %195, i64 %1148
  %1150 = load ptr, ptr %1149, align 8, !tbaa !6
  %1151 = getelementptr inbounds i8, ptr %1145, i64 16
  %1152 = load i32, ptr %1151, align 4, !tbaa !177
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds i16, ptr %1150, i64 %1153
  %1155 = load i16, ptr %1154, align 2, !tbaa !153
  %1156 = zext i16 %1155 to i32
  %1157 = add nuw nsw i32 %1143, %1156
  %1158 = add nuw nsw i64 %1116, 4
  %1159 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1158
  %1160 = getelementptr inbounds i8, ptr %1159, i64 20
  %1161 = load i32, ptr %1160, align 4, !tbaa !176
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds ptr, ptr %195, i64 %1162
  %1164 = load ptr, ptr %1163, align 8, !tbaa !6
  %1165 = getelementptr inbounds i8, ptr %1159, i64 16
  %1166 = load i32, ptr %1165, align 4, !tbaa !177
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds i16, ptr %1164, i64 %1167
  %1169 = load i16, ptr %1168, align 2, !tbaa !153
  %1170 = zext i16 %1169 to i32
  %1171 = add nuw nsw i32 %1157, %1170
  %1172 = add nuw nsw i32 %1171, 2
  %1173 = lshr i32 %1172, 2
  br label %1384

1174:                                             ; preds = %1114
  %1175 = load ptr, ptr %211, align 8, !tbaa !6
  %1176 = zext i8 %1015 to i64
  %1177 = getelementptr i16, ptr %1175, i64 %213
  %1178 = getelementptr i16, ptr %1177, i64 %1176
  %1179 = load i16, ptr %1178, align 2, !tbaa !153
  %1180 = zext i16 %1179 to i32
  %1181 = getelementptr i16, ptr %1175, i64 %1176
  %1182 = getelementptr i8, ptr %1181, i64 2
  %1183 = getelementptr i16, ptr %1182, i64 %213
  %1184 = load i16, ptr %1183, align 2, !tbaa !153
  %1185 = zext i16 %1184 to i32
  %1186 = add nuw nsw i32 %1180, %1185
  %1187 = getelementptr i16, ptr %1175, i64 %1176
  %1188 = getelementptr i8, ptr %1187, i64 4
  %1189 = getelementptr i16, ptr %1188, i64 %213
  %1190 = load i16, ptr %1189, align 2, !tbaa !153
  %1191 = zext i16 %1190 to i32
  %1192 = add nuw nsw i32 %1186, %1191
  %1193 = getelementptr i16, ptr %1175, i64 %1176
  %1194 = getelementptr i8, ptr %1193, i64 6
  %1195 = getelementptr i16, ptr %1194, i64 %213
  %1196 = load i16, ptr %1195, align 2, !tbaa !153
  %1197 = zext i16 %1196 to i32
  %1198 = add nuw nsw i32 %1192, %1197
  %1199 = add nuw nsw i32 %1198, 2
  %1200 = lshr i32 %1199, 2
  br label %1384

1201:                                             ; preds = %985
  br i1 %140, label %1202, label %1203

1202:                                             ; preds = %1201
  br i1 %144, label %1384, label %1230

1203:                                             ; preds = %1201
  %1204 = load ptr, ptr %211, align 8, !tbaa !6
  %1205 = zext i8 %1015 to i64
  %1206 = getelementptr i16, ptr %1204, i64 %213
  %1207 = getelementptr i16, ptr %1206, i64 %1205
  %1208 = load i16, ptr %1207, align 2, !tbaa !153
  %1209 = zext i16 %1208 to i32
  %1210 = getelementptr i16, ptr %1204, i64 %1205
  %1211 = getelementptr i8, ptr %1210, i64 2
  %1212 = getelementptr i16, ptr %1211, i64 %213
  %1213 = load i16, ptr %1212, align 2, !tbaa !153
  %1214 = zext i16 %1213 to i32
  %1215 = add nuw nsw i32 %1209, %1214
  %1216 = getelementptr i16, ptr %1204, i64 %1205
  %1217 = getelementptr i8, ptr %1216, i64 4
  %1218 = getelementptr i16, ptr %1217, i64 %213
  %1219 = load i16, ptr %1218, align 2, !tbaa !153
  %1220 = zext i16 %1219 to i32
  %1221 = add nuw nsw i32 %1215, %1220
  %1222 = getelementptr i16, ptr %1204, i64 %1205
  %1223 = getelementptr i8, ptr %1222, i64 6
  %1224 = getelementptr i16, ptr %1223, i64 %213
  %1225 = load i16, ptr %1224, align 2, !tbaa !153
  %1226 = zext i16 %1225 to i32
  %1227 = add nuw nsw i32 %1221, %1226
  %1228 = add nuw nsw i32 %1227, 2
  %1229 = lshr i32 %1228, 2
  br label %1384

1230:                                             ; preds = %1202
  %1231 = zext i8 %1013 to i64
  %1232 = add nuw nsw i64 %1231, 1
  %1233 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1232
  %1234 = getelementptr inbounds i8, ptr %1233, i64 20
  %1235 = load i32, ptr %1234, align 4, !tbaa !176
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds ptr, ptr %195, i64 %1236
  %1238 = load ptr, ptr %1237, align 8, !tbaa !6
  %1239 = getelementptr inbounds i8, ptr %1233, i64 16
  %1240 = load i32, ptr %1239, align 4, !tbaa !177
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds i16, ptr %1238, i64 %1241
  %1243 = load i16, ptr %1242, align 2, !tbaa !153
  %1244 = zext i16 %1243 to i32
  %1245 = add nuw nsw i64 %1231, 2
  %1246 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1245
  %1247 = getelementptr inbounds i8, ptr %1246, i64 20
  %1248 = load i32, ptr %1247, align 4, !tbaa !176
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds ptr, ptr %195, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !6
  %1252 = getelementptr inbounds i8, ptr %1246, i64 16
  %1253 = load i32, ptr %1252, align 4, !tbaa !177
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds i16, ptr %1251, i64 %1254
  %1256 = load i16, ptr %1255, align 2, !tbaa !153
  %1257 = zext i16 %1256 to i32
  %1258 = add nuw nsw i32 %1244, %1257
  %1259 = add nuw nsw i64 %1231, 3
  %1260 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1259
  %1261 = getelementptr inbounds i8, ptr %1260, i64 20
  %1262 = load i32, ptr %1261, align 4, !tbaa !176
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds ptr, ptr %195, i64 %1263
  %1265 = load ptr, ptr %1264, align 8, !tbaa !6
  %1266 = getelementptr inbounds i8, ptr %1260, i64 16
  %1267 = load i32, ptr %1266, align 4, !tbaa !177
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i16, ptr %1265, i64 %1268
  %1270 = load i16, ptr %1269, align 2, !tbaa !153
  %1271 = zext i16 %1270 to i32
  %1272 = add nuw nsw i32 %1258, %1271
  %1273 = add nuw nsw i64 %1231, 4
  %1274 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1273
  %1275 = getelementptr inbounds i8, ptr %1274, i64 20
  %1276 = load i32, ptr %1275, align 4, !tbaa !176
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds ptr, ptr %195, i64 %1277
  %1279 = load ptr, ptr %1278, align 8, !tbaa !6
  %1280 = getelementptr inbounds i8, ptr %1274, i64 16
  %1281 = load i32, ptr %1280, align 4, !tbaa !177
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds i16, ptr %1279, i64 %1282
  %1284 = load i16, ptr %1283, align 2, !tbaa !153
  %1285 = zext i16 %1284 to i32
  %1286 = add nuw nsw i32 %1272, %1285
  %1287 = add nuw nsw i32 %1286, 2
  %1288 = lshr i32 %1287, 2
  br label %1384

1289:                                             ; preds = %985
  br i1 %140, label %1318, label %1290

1290:                                             ; preds = %1289
  %1291 = load ptr, ptr %211, align 8, !tbaa !6
  %1292 = zext i8 %1015 to i64
  %1293 = getelementptr i16, ptr %1291, i64 %213
  %1294 = getelementptr i16, ptr %1293, i64 %1292
  %1295 = load i16, ptr %1294, align 2, !tbaa !153
  %1296 = zext i16 %1295 to i32
  %1297 = getelementptr i16, ptr %1291, i64 %1292
  %1298 = getelementptr i8, ptr %1297, i64 2
  %1299 = getelementptr i16, ptr %1298, i64 %213
  %1300 = load i16, ptr %1299, align 2, !tbaa !153
  %1301 = zext i16 %1300 to i32
  %1302 = add nuw nsw i32 %1296, %1301
  %1303 = getelementptr i16, ptr %1291, i64 %1292
  %1304 = getelementptr i8, ptr %1303, i64 4
  %1305 = getelementptr i16, ptr %1304, i64 %213
  %1306 = load i16, ptr %1305, align 2, !tbaa !153
  %1307 = zext i16 %1306 to i32
  %1308 = add nuw nsw i32 %1302, %1307
  %1309 = getelementptr i16, ptr %1291, i64 %1292
  %1310 = getelementptr i8, ptr %1309, i64 6
  %1311 = getelementptr i16, ptr %1310, i64 %213
  %1312 = load i16, ptr %1311, align 2, !tbaa !153
  %1313 = zext i16 %1312 to i32
  %1314 = add nuw nsw i32 %1308, %1313
  br i1 %144, label %1315, label %1319

1315:                                             ; preds = %1290
  %1316 = add nuw nsw i32 %1314, 2
  %1317 = lshr i32 %1316, 2
  br label %1384

1318:                                             ; preds = %1289
  br i1 %144, label %1384, label %1319

1319:                                             ; preds = %1318, %1290
  %1320 = phi i32 [ 0, %1318 ], [ %1314, %1290 ]
  %1321 = zext i8 %1013 to i64
  %1322 = add nuw nsw i64 %1321, 1
  %1323 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1322
  %1324 = getelementptr inbounds i8, ptr %1323, i64 20
  %1325 = load i32, ptr %1324, align 4, !tbaa !176
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds ptr, ptr %195, i64 %1326
  %1328 = load ptr, ptr %1327, align 8, !tbaa !6
  %1329 = getelementptr inbounds i8, ptr %1323, i64 16
  %1330 = load i32, ptr %1329, align 4, !tbaa !177
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds i16, ptr %1328, i64 %1331
  %1333 = load i16, ptr %1332, align 2, !tbaa !153
  %1334 = zext i16 %1333 to i32
  %1335 = add nuw nsw i64 %1321, 2
  %1336 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1335
  %1337 = getelementptr inbounds i8, ptr %1336, i64 20
  %1338 = load i32, ptr %1337, align 4, !tbaa !176
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds ptr, ptr %195, i64 %1339
  %1341 = load ptr, ptr %1340, align 8, !tbaa !6
  %1342 = getelementptr inbounds i8, ptr %1336, i64 16
  %1343 = load i32, ptr %1342, align 4, !tbaa !177
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds i16, ptr %1341, i64 %1344
  %1346 = load i16, ptr %1345, align 2, !tbaa !153
  %1347 = zext i16 %1346 to i32
  %1348 = add nuw nsw i32 %1334, %1347
  %1349 = add nuw nsw i64 %1321, 3
  %1350 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1349
  %1351 = getelementptr inbounds i8, ptr %1350, i64 20
  %1352 = load i32, ptr %1351, align 4, !tbaa !176
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds ptr, ptr %195, i64 %1353
  %1355 = load ptr, ptr %1354, align 8, !tbaa !6
  %1356 = getelementptr inbounds i8, ptr %1350, i64 16
  %1357 = load i32, ptr %1356, align 4, !tbaa !177
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds i16, ptr %1355, i64 %1358
  %1360 = load i16, ptr %1359, align 2, !tbaa !153
  %1361 = zext i16 %1360 to i32
  %1362 = add nuw nsw i32 %1348, %1361
  %1363 = add nuw nsw i64 %1321, 4
  %1364 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1363
  %1365 = getelementptr inbounds i8, ptr %1364, i64 20
  %1366 = load i32, ptr %1365, align 4, !tbaa !176
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds ptr, ptr %195, i64 %1367
  %1369 = load ptr, ptr %1368, align 8, !tbaa !6
  %1370 = getelementptr inbounds i8, ptr %1364, i64 16
  %1371 = load i32, ptr %1370, align 4, !tbaa !177
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds i16, ptr %1369, i64 %1372
  %1374 = load i16, ptr %1373, align 2, !tbaa !153
  %1375 = zext i16 %1374 to i32
  %1376 = add nuw nsw i32 %1362, %1375
  br i1 %140, label %1381, label %1377

1377:                                             ; preds = %1319
  %1378 = add nuw nsw i32 %1320, 4
  %1379 = add nuw nsw i32 %1378, %1376
  %1380 = lshr i32 %1379, 3
  br label %1384

1381:                                             ; preds = %1319
  %1382 = add nuw nsw i32 %1376, 2
  %1383 = lshr i32 %1382, 2
  br label %1384

1384:                                             ; preds = %1381, %1377, %1318, %1315, %1230, %1203, %1202, %1174, %1115, %1114, %1110, %1106, %1047, %1044, %985
  %1385 = phi i32 [ %203, %985 ], [ %1109, %1106 ], [ %1046, %1044 ], [ %1112, %1110 ], [ %1173, %1115 ], [ %1200, %1174 ], [ %1229, %1203 ], [ %1288, %1230 ], [ %1380, %1377 ], [ %1317, %1315 ], [ %1383, %1381 ], [ %203, %1202 ], [ %203, %1114 ], [ %203, %1318 ], [ %203, %1047 ]
  %1386 = trunc i32 %1385 to i16
  %1387 = zext i8 %1015 to i64
  %1388 = zext i8 %1013 to i64
  %1389 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1388, i64 %1387
  store i16 %1386, ptr %1389, align 2, !tbaa !153
  %1390 = add nuw nsw i64 %1387, 1
  %1391 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1388, i64 %1390
  store i16 %1386, ptr %1391, align 2, !tbaa !153
  %1392 = add nuw nsw i64 %1387, 2
  %1393 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1388, i64 %1392
  store i16 %1386, ptr %1393, align 2, !tbaa !153
  %1394 = add nuw nsw i64 %1387, 3
  %1395 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1388, i64 %1394
  store i16 %1386, ptr %1395, align 2, !tbaa !153
  %1396 = add nuw nsw i64 %1388, 1
  %1397 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1396, i64 %1387
  store i16 %1386, ptr %1397, align 2, !tbaa !153
  %1398 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1396, i64 %1390
  store i16 %1386, ptr %1398, align 2, !tbaa !153
  %1399 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1396, i64 %1392
  store i16 %1386, ptr %1399, align 2, !tbaa !153
  %1400 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1396, i64 %1394
  store i16 %1386, ptr %1400, align 2, !tbaa !153
  %1401 = add nuw nsw i64 %1388, 2
  %1402 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1401, i64 %1387
  store i16 %1386, ptr %1402, align 2, !tbaa !153
  %1403 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1401, i64 %1390
  store i16 %1386, ptr %1403, align 2, !tbaa !153
  %1404 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1401, i64 %1392
  store i16 %1386, ptr %1404, align 2, !tbaa !153
  %1405 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1401, i64 %1394
  store i16 %1386, ptr %1405, align 2, !tbaa !153
  %1406 = add nuw nsw i64 %1388, 3
  %1407 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1406, i64 %1387
  store i16 %1386, ptr %1407, align 2, !tbaa !153
  %1408 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1406, i64 %1390
  store i16 %1386, ptr %1408, align 2, !tbaa !153
  %1409 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1406, i64 %1392
  store i16 %1386, ptr %1409, align 2, !tbaa !153
  %1410 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1406, i64 %1394
  store i16 %1386, ptr %1410, align 2, !tbaa !153
  %1411 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %139, i64 %208, i64 3
  %1412 = load i8, ptr %1411, align 1, !tbaa !58
  %1413 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %139, i64 %208, i64 3
  %1414 = load i8, ptr %1413, align 1, !tbaa !58
  %1415 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @IntraChromaPrediction.block_pos, i64 0, i64 %139, i64 %208, i64 3
  %1416 = load i32, ptr %1415, align 4, !tbaa !39
  switch i32 %1416, label %1783 [
    i32 0, label %1688
    i32 1, label %1600
    i32 2, label %1512
    i32 3, label %1417
  ]

1417:                                             ; preds = %1384
  br i1 %140, label %1446, label %1418

1418:                                             ; preds = %1417
  %1419 = load ptr, ptr %211, align 8, !tbaa !6
  %1420 = zext i8 %1414 to i64
  %1421 = getelementptr i16, ptr %1419, i64 %213
  %1422 = getelementptr i16, ptr %1421, i64 %1420
  %1423 = load i16, ptr %1422, align 2, !tbaa !153
  %1424 = zext i16 %1423 to i32
  %1425 = getelementptr i16, ptr %1419, i64 %1420
  %1426 = getelementptr i8, ptr %1425, i64 2
  %1427 = getelementptr i16, ptr %1426, i64 %213
  %1428 = load i16, ptr %1427, align 2, !tbaa !153
  %1429 = zext i16 %1428 to i32
  %1430 = add nuw nsw i32 %1424, %1429
  %1431 = getelementptr i16, ptr %1419, i64 %1420
  %1432 = getelementptr i8, ptr %1431, i64 4
  %1433 = getelementptr i16, ptr %1432, i64 %213
  %1434 = load i16, ptr %1433, align 2, !tbaa !153
  %1435 = zext i16 %1434 to i32
  %1436 = add nuw nsw i32 %1430, %1435
  %1437 = getelementptr i16, ptr %1419, i64 %1420
  %1438 = getelementptr i8, ptr %1437, i64 6
  %1439 = getelementptr i16, ptr %1438, i64 %213
  %1440 = load i16, ptr %1439, align 2, !tbaa !153
  %1441 = zext i16 %1440 to i32
  %1442 = add nuw nsw i32 %1436, %1441
  br i1 %143, label %1443, label %1447

1443:                                             ; preds = %1418
  %1444 = add nuw nsw i32 %1442, 2
  %1445 = lshr i32 %1444, 2
  br label %1783

1446:                                             ; preds = %1417
  br i1 %143, label %1783, label %1447

1447:                                             ; preds = %1446, %1418
  %1448 = phi i32 [ 0, %1446 ], [ %1442, %1418 ]
  %1449 = zext i8 %1412 to i64
  %1450 = add nuw nsw i64 %1449, 1
  %1451 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1450
  %1452 = getelementptr inbounds i8, ptr %1451, i64 20
  %1453 = load i32, ptr %1452, align 4, !tbaa !176
  %1454 = sext i32 %1453 to i64
  %1455 = getelementptr inbounds ptr, ptr %195, i64 %1454
  %1456 = load ptr, ptr %1455, align 8, !tbaa !6
  %1457 = getelementptr inbounds i8, ptr %1451, i64 16
  %1458 = load i32, ptr %1457, align 4, !tbaa !177
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds i16, ptr %1456, i64 %1459
  %1461 = load i16, ptr %1460, align 2, !tbaa !153
  %1462 = zext i16 %1461 to i32
  %1463 = add nuw nsw i64 %1449, 2
  %1464 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1463
  %1465 = getelementptr inbounds i8, ptr %1464, i64 20
  %1466 = load i32, ptr %1465, align 4, !tbaa !176
  %1467 = sext i32 %1466 to i64
  %1468 = getelementptr inbounds ptr, ptr %195, i64 %1467
  %1469 = load ptr, ptr %1468, align 8, !tbaa !6
  %1470 = getelementptr inbounds i8, ptr %1464, i64 16
  %1471 = load i32, ptr %1470, align 4, !tbaa !177
  %1472 = sext i32 %1471 to i64
  %1473 = getelementptr inbounds i16, ptr %1469, i64 %1472
  %1474 = load i16, ptr %1473, align 2, !tbaa !153
  %1475 = zext i16 %1474 to i32
  %1476 = add nuw nsw i32 %1462, %1475
  %1477 = add nuw nsw i64 %1449, 3
  %1478 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1477
  %1479 = getelementptr inbounds i8, ptr %1478, i64 20
  %1480 = load i32, ptr %1479, align 4, !tbaa !176
  %1481 = sext i32 %1480 to i64
  %1482 = getelementptr inbounds ptr, ptr %195, i64 %1481
  %1483 = load ptr, ptr %1482, align 8, !tbaa !6
  %1484 = getelementptr inbounds i8, ptr %1478, i64 16
  %1485 = load i32, ptr %1484, align 4, !tbaa !177
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds i16, ptr %1483, i64 %1486
  %1488 = load i16, ptr %1487, align 2, !tbaa !153
  %1489 = zext i16 %1488 to i32
  %1490 = add nuw nsw i32 %1476, %1489
  %1491 = add nuw nsw i64 %1449, 4
  %1492 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1491
  %1493 = getelementptr inbounds i8, ptr %1492, i64 20
  %1494 = load i32, ptr %1493, align 4, !tbaa !176
  %1495 = sext i32 %1494 to i64
  %1496 = getelementptr inbounds ptr, ptr %195, i64 %1495
  %1497 = load ptr, ptr %1496, align 8, !tbaa !6
  %1498 = getelementptr inbounds i8, ptr %1492, i64 16
  %1499 = load i32, ptr %1498, align 4, !tbaa !177
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds i16, ptr %1497, i64 %1500
  %1502 = load i16, ptr %1501, align 2, !tbaa !153
  %1503 = zext i16 %1502 to i32
  %1504 = add nuw nsw i32 %1490, %1503
  br i1 %140, label %1509, label %1505

1505:                                             ; preds = %1447
  %1506 = add nuw nsw i32 %1448, 4
  %1507 = add nuw nsw i32 %1506, %1504
  %1508 = lshr i32 %1507, 3
  br label %1783

1509:                                             ; preds = %1447
  %1510 = add nuw nsw i32 %1504, 2
  %1511 = lshr i32 %1510, 2
  br label %1783

1512:                                             ; preds = %1384
  br i1 %143, label %1513, label %1514

1513:                                             ; preds = %1512
  br i1 %140, label %1783, label %1573

1514:                                             ; preds = %1512
  %1515 = zext i8 %1412 to i64
  %1516 = add nuw nsw i64 %1515, 1
  %1517 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1516
  %1518 = getelementptr inbounds i8, ptr %1517, i64 20
  %1519 = load i32, ptr %1518, align 4, !tbaa !176
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds ptr, ptr %195, i64 %1520
  %1522 = load ptr, ptr %1521, align 8, !tbaa !6
  %1523 = getelementptr inbounds i8, ptr %1517, i64 16
  %1524 = load i32, ptr %1523, align 4, !tbaa !177
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds i16, ptr %1522, i64 %1525
  %1527 = load i16, ptr %1526, align 2, !tbaa !153
  %1528 = zext i16 %1527 to i32
  %1529 = add nuw nsw i64 %1515, 2
  %1530 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1529
  %1531 = getelementptr inbounds i8, ptr %1530, i64 20
  %1532 = load i32, ptr %1531, align 4, !tbaa !176
  %1533 = sext i32 %1532 to i64
  %1534 = getelementptr inbounds ptr, ptr %195, i64 %1533
  %1535 = load ptr, ptr %1534, align 8, !tbaa !6
  %1536 = getelementptr inbounds i8, ptr %1530, i64 16
  %1537 = load i32, ptr %1536, align 4, !tbaa !177
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds i16, ptr %1535, i64 %1538
  %1540 = load i16, ptr %1539, align 2, !tbaa !153
  %1541 = zext i16 %1540 to i32
  %1542 = add nuw nsw i32 %1528, %1541
  %1543 = add nuw nsw i64 %1515, 3
  %1544 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1543
  %1545 = getelementptr inbounds i8, ptr %1544, i64 20
  %1546 = load i32, ptr %1545, align 4, !tbaa !176
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds ptr, ptr %195, i64 %1547
  %1549 = load ptr, ptr %1548, align 8, !tbaa !6
  %1550 = getelementptr inbounds i8, ptr %1544, i64 16
  %1551 = load i32, ptr %1550, align 4, !tbaa !177
  %1552 = sext i32 %1551 to i64
  %1553 = getelementptr inbounds i16, ptr %1549, i64 %1552
  %1554 = load i16, ptr %1553, align 2, !tbaa !153
  %1555 = zext i16 %1554 to i32
  %1556 = add nuw nsw i32 %1542, %1555
  %1557 = add nuw nsw i64 %1515, 4
  %1558 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1557
  %1559 = getelementptr inbounds i8, ptr %1558, i64 20
  %1560 = load i32, ptr %1559, align 4, !tbaa !176
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds ptr, ptr %195, i64 %1561
  %1563 = load ptr, ptr %1562, align 8, !tbaa !6
  %1564 = getelementptr inbounds i8, ptr %1558, i64 16
  %1565 = load i32, ptr %1564, align 4, !tbaa !177
  %1566 = sext i32 %1565 to i64
  %1567 = getelementptr inbounds i16, ptr %1563, i64 %1566
  %1568 = load i16, ptr %1567, align 2, !tbaa !153
  %1569 = zext i16 %1568 to i32
  %1570 = add nuw nsw i32 %1556, %1569
  %1571 = add nuw nsw i32 %1570, 2
  %1572 = lshr i32 %1571, 2
  br label %1783

1573:                                             ; preds = %1513
  %1574 = load ptr, ptr %211, align 8, !tbaa !6
  %1575 = zext i8 %1414 to i64
  %1576 = getelementptr i16, ptr %1574, i64 %213
  %1577 = getelementptr i16, ptr %1576, i64 %1575
  %1578 = load i16, ptr %1577, align 2, !tbaa !153
  %1579 = zext i16 %1578 to i32
  %1580 = getelementptr i16, ptr %1574, i64 %1575
  %1581 = getelementptr i8, ptr %1580, i64 2
  %1582 = getelementptr i16, ptr %1581, i64 %213
  %1583 = load i16, ptr %1582, align 2, !tbaa !153
  %1584 = zext i16 %1583 to i32
  %1585 = add nuw nsw i32 %1579, %1584
  %1586 = getelementptr i16, ptr %1574, i64 %1575
  %1587 = getelementptr i8, ptr %1586, i64 4
  %1588 = getelementptr i16, ptr %1587, i64 %213
  %1589 = load i16, ptr %1588, align 2, !tbaa !153
  %1590 = zext i16 %1589 to i32
  %1591 = add nuw nsw i32 %1585, %1590
  %1592 = getelementptr i16, ptr %1574, i64 %1575
  %1593 = getelementptr i8, ptr %1592, i64 6
  %1594 = getelementptr i16, ptr %1593, i64 %213
  %1595 = load i16, ptr %1594, align 2, !tbaa !153
  %1596 = zext i16 %1595 to i32
  %1597 = add nuw nsw i32 %1591, %1596
  %1598 = add nuw nsw i32 %1597, 2
  %1599 = lshr i32 %1598, 2
  br label %1783

1600:                                             ; preds = %1384
  br i1 %140, label %1601, label %1602

1601:                                             ; preds = %1600
  br i1 %144, label %1783, label %1629

1602:                                             ; preds = %1600
  %1603 = load ptr, ptr %211, align 8, !tbaa !6
  %1604 = zext i8 %1414 to i64
  %1605 = getelementptr i16, ptr %1603, i64 %213
  %1606 = getelementptr i16, ptr %1605, i64 %1604
  %1607 = load i16, ptr %1606, align 2, !tbaa !153
  %1608 = zext i16 %1607 to i32
  %1609 = getelementptr i16, ptr %1603, i64 %1604
  %1610 = getelementptr i8, ptr %1609, i64 2
  %1611 = getelementptr i16, ptr %1610, i64 %213
  %1612 = load i16, ptr %1611, align 2, !tbaa !153
  %1613 = zext i16 %1612 to i32
  %1614 = add nuw nsw i32 %1608, %1613
  %1615 = getelementptr i16, ptr %1603, i64 %1604
  %1616 = getelementptr i8, ptr %1615, i64 4
  %1617 = getelementptr i16, ptr %1616, i64 %213
  %1618 = load i16, ptr %1617, align 2, !tbaa !153
  %1619 = zext i16 %1618 to i32
  %1620 = add nuw nsw i32 %1614, %1619
  %1621 = getelementptr i16, ptr %1603, i64 %1604
  %1622 = getelementptr i8, ptr %1621, i64 6
  %1623 = getelementptr i16, ptr %1622, i64 %213
  %1624 = load i16, ptr %1623, align 2, !tbaa !153
  %1625 = zext i16 %1624 to i32
  %1626 = add nuw nsw i32 %1620, %1625
  %1627 = add nuw nsw i32 %1626, 2
  %1628 = lshr i32 %1627, 2
  br label %1783

1629:                                             ; preds = %1601
  %1630 = zext i8 %1412 to i64
  %1631 = add nuw nsw i64 %1630, 1
  %1632 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1631
  %1633 = getelementptr inbounds i8, ptr %1632, i64 20
  %1634 = load i32, ptr %1633, align 4, !tbaa !176
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds ptr, ptr %195, i64 %1635
  %1637 = load ptr, ptr %1636, align 8, !tbaa !6
  %1638 = getelementptr inbounds i8, ptr %1632, i64 16
  %1639 = load i32, ptr %1638, align 4, !tbaa !177
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i16, ptr %1637, i64 %1640
  %1642 = load i16, ptr %1641, align 2, !tbaa !153
  %1643 = zext i16 %1642 to i32
  %1644 = add nuw nsw i64 %1630, 2
  %1645 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1644
  %1646 = getelementptr inbounds i8, ptr %1645, i64 20
  %1647 = load i32, ptr %1646, align 4, !tbaa !176
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds ptr, ptr %195, i64 %1648
  %1650 = load ptr, ptr %1649, align 8, !tbaa !6
  %1651 = getelementptr inbounds i8, ptr %1645, i64 16
  %1652 = load i32, ptr %1651, align 4, !tbaa !177
  %1653 = sext i32 %1652 to i64
  %1654 = getelementptr inbounds i16, ptr %1650, i64 %1653
  %1655 = load i16, ptr %1654, align 2, !tbaa !153
  %1656 = zext i16 %1655 to i32
  %1657 = add nuw nsw i32 %1643, %1656
  %1658 = add nuw nsw i64 %1630, 3
  %1659 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1658
  %1660 = getelementptr inbounds i8, ptr %1659, i64 20
  %1661 = load i32, ptr %1660, align 4, !tbaa !176
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds ptr, ptr %195, i64 %1662
  %1664 = load ptr, ptr %1663, align 8, !tbaa !6
  %1665 = getelementptr inbounds i8, ptr %1659, i64 16
  %1666 = load i32, ptr %1665, align 4, !tbaa !177
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds i16, ptr %1664, i64 %1667
  %1669 = load i16, ptr %1668, align 2, !tbaa !153
  %1670 = zext i16 %1669 to i32
  %1671 = add nuw nsw i32 %1657, %1670
  %1672 = add nuw nsw i64 %1630, 4
  %1673 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1672
  %1674 = getelementptr inbounds i8, ptr %1673, i64 20
  %1675 = load i32, ptr %1674, align 4, !tbaa !176
  %1676 = sext i32 %1675 to i64
  %1677 = getelementptr inbounds ptr, ptr %195, i64 %1676
  %1678 = load ptr, ptr %1677, align 8, !tbaa !6
  %1679 = getelementptr inbounds i8, ptr %1673, i64 16
  %1680 = load i32, ptr %1679, align 4, !tbaa !177
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds i16, ptr %1678, i64 %1681
  %1683 = load i16, ptr %1682, align 2, !tbaa !153
  %1684 = zext i16 %1683 to i32
  %1685 = add nuw nsw i32 %1671, %1684
  %1686 = add nuw nsw i32 %1685, 2
  %1687 = lshr i32 %1686, 2
  br label %1783

1688:                                             ; preds = %1384
  br i1 %140, label %1717, label %1689

1689:                                             ; preds = %1688
  %1690 = load ptr, ptr %211, align 8, !tbaa !6
  %1691 = zext i8 %1414 to i64
  %1692 = getelementptr i16, ptr %1690, i64 %213
  %1693 = getelementptr i16, ptr %1692, i64 %1691
  %1694 = load i16, ptr %1693, align 2, !tbaa !153
  %1695 = zext i16 %1694 to i32
  %1696 = getelementptr i16, ptr %1690, i64 %1691
  %1697 = getelementptr i8, ptr %1696, i64 2
  %1698 = getelementptr i16, ptr %1697, i64 %213
  %1699 = load i16, ptr %1698, align 2, !tbaa !153
  %1700 = zext i16 %1699 to i32
  %1701 = add nuw nsw i32 %1695, %1700
  %1702 = getelementptr i16, ptr %1690, i64 %1691
  %1703 = getelementptr i8, ptr %1702, i64 4
  %1704 = getelementptr i16, ptr %1703, i64 %213
  %1705 = load i16, ptr %1704, align 2, !tbaa !153
  %1706 = zext i16 %1705 to i32
  %1707 = add nuw nsw i32 %1701, %1706
  %1708 = getelementptr i16, ptr %1690, i64 %1691
  %1709 = getelementptr i8, ptr %1708, i64 6
  %1710 = getelementptr i16, ptr %1709, i64 %213
  %1711 = load i16, ptr %1710, align 2, !tbaa !153
  %1712 = zext i16 %1711 to i32
  %1713 = add nuw nsw i32 %1707, %1712
  br i1 %144, label %1714, label %1718

1714:                                             ; preds = %1689
  %1715 = add nuw nsw i32 %1713, 2
  %1716 = lshr i32 %1715, 2
  br label %1783

1717:                                             ; preds = %1688
  br i1 %144, label %1783, label %1718

1718:                                             ; preds = %1717, %1689
  %1719 = phi i32 [ 0, %1717 ], [ %1713, %1689 ]
  %1720 = zext i8 %1412 to i64
  %1721 = add nuw nsw i64 %1720, 1
  %1722 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1721
  %1723 = getelementptr inbounds i8, ptr %1722, i64 20
  %1724 = load i32, ptr %1723, align 4, !tbaa !176
  %1725 = sext i32 %1724 to i64
  %1726 = getelementptr inbounds ptr, ptr %195, i64 %1725
  %1727 = load ptr, ptr %1726, align 8, !tbaa !6
  %1728 = getelementptr inbounds i8, ptr %1722, i64 16
  %1729 = load i32, ptr %1728, align 4, !tbaa !177
  %1730 = sext i32 %1729 to i64
  %1731 = getelementptr inbounds i16, ptr %1727, i64 %1730
  %1732 = load i16, ptr %1731, align 2, !tbaa !153
  %1733 = zext i16 %1732 to i32
  %1734 = add nuw nsw i64 %1720, 2
  %1735 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1734
  %1736 = getelementptr inbounds i8, ptr %1735, i64 20
  %1737 = load i32, ptr %1736, align 4, !tbaa !176
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds ptr, ptr %195, i64 %1738
  %1740 = load ptr, ptr %1739, align 8, !tbaa !6
  %1741 = getelementptr inbounds i8, ptr %1735, i64 16
  %1742 = load i32, ptr %1741, align 4, !tbaa !177
  %1743 = sext i32 %1742 to i64
  %1744 = getelementptr inbounds i16, ptr %1740, i64 %1743
  %1745 = load i16, ptr %1744, align 2, !tbaa !153
  %1746 = zext i16 %1745 to i32
  %1747 = add nuw nsw i32 %1733, %1746
  %1748 = add nuw nsw i64 %1720, 3
  %1749 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1748
  %1750 = getelementptr inbounds i8, ptr %1749, i64 20
  %1751 = load i32, ptr %1750, align 4, !tbaa !176
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds ptr, ptr %195, i64 %1752
  %1754 = load ptr, ptr %1753, align 8, !tbaa !6
  %1755 = getelementptr inbounds i8, ptr %1749, i64 16
  %1756 = load i32, ptr %1755, align 4, !tbaa !177
  %1757 = sext i32 %1756 to i64
  %1758 = getelementptr inbounds i16, ptr %1754, i64 %1757
  %1759 = load i16, ptr %1758, align 2, !tbaa !153
  %1760 = zext i16 %1759 to i32
  %1761 = add nuw nsw i32 %1747, %1760
  %1762 = add nuw nsw i64 %1720, 4
  %1763 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1762
  %1764 = getelementptr inbounds i8, ptr %1763, i64 20
  %1765 = load i32, ptr %1764, align 4, !tbaa !176
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds ptr, ptr %195, i64 %1766
  %1768 = load ptr, ptr %1767, align 8, !tbaa !6
  %1769 = getelementptr inbounds i8, ptr %1763, i64 16
  %1770 = load i32, ptr %1769, align 4, !tbaa !177
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds i16, ptr %1768, i64 %1771
  %1773 = load i16, ptr %1772, align 2, !tbaa !153
  %1774 = zext i16 %1773 to i32
  %1775 = add nuw nsw i32 %1761, %1774
  br i1 %140, label %1780, label %1776

1776:                                             ; preds = %1718
  %1777 = add nuw nsw i32 %1719, 4
  %1778 = add nuw nsw i32 %1777, %1775
  %1779 = lshr i32 %1778, 3
  br label %1783

1780:                                             ; preds = %1718
  %1781 = add nuw nsw i32 %1775, 2
  %1782 = lshr i32 %1781, 2
  br label %1783

1783:                                             ; preds = %1780, %1776, %1717, %1714, %1629, %1602, %1601, %1573, %1514, %1513, %1509, %1505, %1446, %1443, %1384
  %1784 = phi i32 [ %203, %1384 ], [ %1508, %1505 ], [ %1445, %1443 ], [ %1511, %1509 ], [ %1572, %1514 ], [ %1599, %1573 ], [ %1628, %1602 ], [ %1687, %1629 ], [ %1779, %1776 ], [ %1716, %1714 ], [ %1782, %1780 ], [ %203, %1601 ], [ %203, %1513 ], [ %203, %1717 ], [ %203, %1446 ]
  %1785 = trunc i32 %1784 to i16
  %1786 = zext i8 %1414 to i64
  %1787 = zext i8 %1412 to i64
  %1788 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1787, i64 %1786
  store i16 %1785, ptr %1788, align 2, !tbaa !153
  %1789 = add nuw nsw i64 %1786, 1
  %1790 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1787, i64 %1789
  store i16 %1785, ptr %1790, align 2, !tbaa !153
  %1791 = add nuw nsw i64 %1786, 2
  %1792 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1787, i64 %1791
  store i16 %1785, ptr %1792, align 2, !tbaa !153
  %1793 = add nuw nsw i64 %1786, 3
  %1794 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1787, i64 %1793
  store i16 %1785, ptr %1794, align 2, !tbaa !153
  %1795 = add nuw nsw i64 %1787, 1
  %1796 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1795, i64 %1786
  store i16 %1785, ptr %1796, align 2, !tbaa !153
  %1797 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1795, i64 %1789
  store i16 %1785, ptr %1797, align 2, !tbaa !153
  %1798 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1795, i64 %1791
  store i16 %1785, ptr %1798, align 2, !tbaa !153
  %1799 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1795, i64 %1793
  store i16 %1785, ptr %1799, align 2, !tbaa !153
  %1800 = add nuw nsw i64 %1787, 2
  %1801 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1800, i64 %1786
  store i16 %1785, ptr %1801, align 2, !tbaa !153
  %1802 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1800, i64 %1789
  store i16 %1785, ptr %1802, align 2, !tbaa !153
  %1803 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1800, i64 %1791
  store i16 %1785, ptr %1803, align 2, !tbaa !153
  %1804 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1800, i64 %1793
  store i16 %1785, ptr %1804, align 2, !tbaa !153
  %1805 = add nuw nsw i64 %1787, 3
  %1806 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1805, i64 %1786
  store i16 %1785, ptr %1806, align 2, !tbaa !153
  %1807 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1805, i64 %1789
  store i16 %1785, ptr %1807, align 2, !tbaa !153
  %1808 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1805, i64 %1791
  store i16 %1785, ptr %1808, align 2, !tbaa !153
  %1809 = getelementptr inbounds [16 x [16 x i16]], ptr %205, i64 0, i64 %1805, i64 %1793
  store i16 %1785, ptr %1809, align 2, !tbaa !153
  %1810 = add nuw nsw i64 %208, 1
  %1811 = icmp eq i64 %1810, %206
  br i1 %1811, label %1812, label %207

1812:                                             ; preds = %1783, %188
  br i1 %135, label %1813, label %1828

1813:                                             ; preds = %1812
  %1814 = load i32, ptr %141, align 4, !tbaa !176
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds ptr, ptr %195, i64 %1815
  %1817 = load ptr, ptr %1816, align 8, !tbaa !6
  %1818 = load i32, ptr %142, align 4, !tbaa !177
  %1819 = sext i32 %1818 to i64
  %1820 = getelementptr inbounds i16, ptr %1817, i64 %1819
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %4, ptr align 2 %1820, i64 %146, i1 false)
  br i1 %147, label %1821, label %1829

1821:                                             ; preds = %1813, %1821
  %1822 = phi i64 [ %1826, %1821 ], [ 0, %1813 ]
  %1823 = load ptr, ptr @img, align 8, !tbaa !6
  %1824 = getelementptr inbounds i8, ptr %1823, i64 8504
  %1825 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %1824, i64 0, i64 %190, i64 2, i64 %1822
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1825, ptr nonnull align 2 %4, i64 %146, i1 false)
  %1826 = add nuw nsw i64 %1822, 1
  %1827 = icmp eq i64 %1826, %180
  br i1 %1827, label %1828, label %1821

1828:                                             ; preds = %1821, %1812
  br i1 %138, label %1830, label %1959

1829:                                             ; preds = %1813
  br i1 %138, label %1831, label %1959

1830:                                             ; preds = %1828
  br i1 %147, label %1835, label %1831

1831:                                             ; preds = %1835, %1829, %1830
  br i1 %148, label %1832, label %1863

1832:                                             ; preds = %1831
  %1833 = load ptr, ptr @img, align 8
  %1834 = getelementptr inbounds i8, ptr %1833, i64 8504
  br label %1851

1835:                                             ; preds = %1830, %1835
  %1836 = phi i64 [ %1837, %1835 ], [ 0, %1830 ]
  %1837 = add nuw nsw i64 %1836, 1
  %1838 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1837
  %1839 = getelementptr inbounds i8, ptr %1838, i64 20
  %1840 = load i32, ptr %1839, align 4, !tbaa !176
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds ptr, ptr %195, i64 %1841
  %1843 = load ptr, ptr %1842, align 8, !tbaa !6
  %1844 = getelementptr inbounds i8, ptr %1838, i64 16
  %1845 = load i32, ptr %1844, align 4, !tbaa !177
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds i16, ptr %1843, i64 %1846
  %1848 = load i16, ptr %1847, align 2, !tbaa !153
  %1849 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %1836
  store i16 %1848, ptr %1849, align 2, !tbaa !153
  %1850 = icmp eq i64 %1837, %181
  br i1 %1850, label %1831, label %1835

1851:                                             ; preds = %1832, %1860
  %1852 = phi i64 [ 0, %1832 ], [ %1861, %1860 ]
  br i1 %147, label %1853, label %1860

1853:                                             ; preds = %1851, %1853
  %1854 = phi i64 [ %1858, %1853 ], [ 0, %1851 ]
  %1855 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %1854
  %1856 = load i16, ptr %1855, align 2, !tbaa !153
  %1857 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %1834, i64 0, i64 %190, i64 1, i64 %1854, i64 %1852
  store i16 %1856, ptr %1857, align 2, !tbaa !153
  %1858 = add nuw nsw i64 %1854, 1
  %1859 = icmp eq i64 %1858, %183
  br i1 %1859, label %1860, label %1853

1860:                                             ; preds = %1853, %1851
  %1861 = add nuw nsw i64 %1852, 1
  %1862 = icmp eq i64 %1861, %182
  br i1 %1862, label %1863, label %1851

1863:                                             ; preds = %1860, %1831
  br i1 %151, label %1864, label %1959

1864:                                             ; preds = %1863
  %1865 = load i16, ptr %155, align 2, !tbaa !153
  %1866 = zext i16 %1865 to i32
  %1867 = load i32, ptr %156, align 4, !tbaa !176
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds ptr, ptr %195, i64 %1868
  %1870 = load ptr, ptr %1869, align 8, !tbaa !6
  %1871 = load i32, ptr %157, align 4, !tbaa !177
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds i16, ptr %1870, i64 %1872
  %1874 = load i16, ptr %1873, align 2, !tbaa !153
  %1875 = zext i16 %1874 to i32
  %1876 = sub nsw i32 %1866, %1875
  %1877 = mul nsw i32 %1876, %152
  br i1 %159, label %1878, label %1895

1878:                                             ; preds = %1864, %1878
  %1879 = phi i64 [ %1881, %1878 ], [ 0, %1864 ]
  %1880 = phi i32 [ %1893, %1878 ], [ %1877, %1864 ]
  %1881 = add nuw nsw i64 %1879, 1
  %1882 = add nuw nsw i64 %1879, %176
  %1883 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %1882
  %1884 = load i16, ptr %1883, align 2, !tbaa !153
  %1885 = zext i16 %1884 to i32
  %1886 = sub nsw i64 %177, %1879
  %1887 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %1886
  %1888 = load i16, ptr %1887, align 2, !tbaa !153
  %1889 = zext i16 %1888 to i32
  %1890 = sub nsw i32 %1885, %1889
  %1891 = trunc nuw nsw i64 %1881 to i32
  %1892 = mul nsw i32 %1890, %1891
  %1893 = add nsw i32 %1892, %1880
  %1894 = icmp eq i64 %1881, %184
  br i1 %1894, label %1895, label %1878

1895:                                             ; preds = %1878, %1864
  %1896 = phi i32 [ %1877, %1864 ], [ %1893, %1878 ]
  %1897 = load i16, ptr %164, align 2, !tbaa !153
  %1898 = zext i16 %1897 to i32
  %1899 = sub nsw i32 %1898, %1875
  %1900 = mul nsw i32 %1899, %161
  br i1 %166, label %1901, label %1918

1901:                                             ; preds = %1895, %1901
  %1902 = phi i64 [ %1904, %1901 ], [ 0, %1895 ]
  %1903 = phi i32 [ %1916, %1901 ], [ %1900, %1895 ]
  %1904 = add nuw nsw i64 %1902, 1
  %1905 = add nuw nsw i64 %1902, %178
  %1906 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %1905
  %1907 = load i16, ptr %1906, align 2, !tbaa !153
  %1908 = zext i16 %1907 to i32
  %1909 = sub nsw i64 %179, %1902
  %1910 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %1909
  %1911 = load i16, ptr %1910, align 2, !tbaa !153
  %1912 = zext i16 %1911 to i32
  %1913 = sub nsw i32 %1908, %1912
  %1914 = trunc nuw nsw i64 %1904 to i32
  %1915 = mul nsw i32 %1913, %1914
  %1916 = add nsw i32 %1915, %1903
  %1917 = icmp eq i64 %1904, %185
  br i1 %1917, label %1918, label %1901

1918:                                             ; preds = %1901, %1895
  %1919 = phi i32 [ %1900, %1895 ], [ %1916, %1901 ]
  %1920 = mul nsw i32 %1896, %169
  %1921 = add nsw i32 %1920, %170
  %1922 = ashr i32 %1921, %171
  %1923 = mul nsw i32 %1919, %173
  %1924 = add nsw i32 %1923, %174
  %1925 = ashr i32 %1924, %175
  br i1 %147, label %1926, label %1959

1926:                                             ; preds = %1918
  %1927 = add nuw nsw i32 %1898, %1866
  %1928 = shl nuw nsw i32 %1927, 4
  %1929 = load ptr, ptr @img, align 8
  %1930 = getelementptr inbounds i8, ptr %1929, i64 90536
  %1931 = add nuw nsw i32 %1928, 16
  %1932 = getelementptr inbounds i8, ptr %1929, i64 8504
  br label %1933

1933:                                             ; preds = %1926, %1956
  %1934 = phi i64 [ 0, %1926 ], [ %1957, %1956 ]
  br i1 %148, label %1935, label %1956

1935:                                             ; preds = %1933
  %1936 = load i32, ptr %1930, align 8, !tbaa !38
  %1937 = trunc i64 %1934 to i32
  %1938 = sub i32 %1937, %161
  %1939 = add i32 %1938, 1
  %1940 = mul nsw i32 %1939, %1925
  %1941 = add i32 %1931, %1940
  br label %1942

1942:                                             ; preds = %1935, %1942
  %1943 = phi i64 [ 0, %1935 ], [ %1954, %1942 ]
  %1944 = trunc i64 %1943 to i32
  %1945 = sub i32 %1944, %152
  %1946 = add i32 %1945, 1
  %1947 = mul nsw i32 %1946, %1922
  %1948 = add i32 %1941, %1947
  %1949 = ashr i32 %1948, 5
  %1950 = call i32 @llvm.smin.i32(i32 %1936, i32 %1949)
  %1951 = call i32 @llvm.smax.i32(i32 %1950, i32 0)
  %1952 = trunc i32 %1951 to i16
  %1953 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %1932, i64 0, i64 %190, i64 3, i64 %1934, i64 %1943
  store i16 %1952, ptr %1953, align 2, !tbaa !153
  %1954 = add nuw nsw i64 %1943, 1
  %1955 = icmp eq i64 %1954, %187
  br i1 %1955, label %1956, label %1942

1956:                                             ; preds = %1942, %1933
  %1957 = add nuw nsw i64 %1934, 1
  %1958 = icmp eq i64 %1957, %186
  br i1 %1958, label %1959, label %1933

1959:                                             ; preds = %1956, %1829, %1918, %1828, %1863
  br i1 %189, label %188, label %1960

1960:                                             ; preds = %1959
  %1961 = load ptr, ptr @input, align 8, !tbaa !6
  %1962 = getelementptr inbounds i8, ptr %1961, i64 3136
  %1963 = load i32, ptr %1962, align 8, !tbaa !178
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %1965, label %2236

1965:                                             ; preds = %1960
  br i1 %147, label %1966, label %1968

1966:                                             ; preds = %1965
  %1967 = zext nneg i32 %18 to i64
  br label %1986

1968:                                             ; preds = %1986, %1965
  %1969 = select i1 %138, i1 %135, i1 false
  %1970 = select i1 %1969, i1 %150, i1 false
  %1971 = getelementptr inbounds i8, ptr %6, i64 4
  %1972 = getelementptr inbounds i8, ptr %6, i64 8
  %1973 = getelementptr inbounds i8, ptr %6, i64 12
  %1974 = getelementptr inbounds i8, ptr %6, i64 16
  %1975 = getelementptr inbounds i8, ptr %6, i64 20
  %1976 = getelementptr inbounds i8, ptr %6, i64 24
  %1977 = getelementptr inbounds i8, ptr %6, i64 28
  %1978 = getelementptr inbounds i8, ptr %6, i64 32
  %1979 = getelementptr inbounds i8, ptr %6, i64 36
  %1980 = getelementptr inbounds i8, ptr %6, i64 40
  %1981 = getelementptr inbounds i8, ptr %6, i64 44
  %1982 = getelementptr inbounds i8, ptr %6, i64 48
  %1983 = getelementptr inbounds i8, ptr %6, i64 52
  %1984 = getelementptr inbounds i8, ptr %6, i64 56
  %1985 = getelementptr inbounds i8, ptr %6, i64 60
  br label %1992

1986:                                             ; preds = %1966, %1986
  %1987 = phi i64 [ 0, %1966 ], [ %1990, %1986 ]
  %1988 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %1987
  %1989 = trunc nuw nsw i64 %1987 to i32
  call void @getNeighbour(i32 noundef signext %13, i32 noundef signext 0, i32 noundef signext %1989, i32 noundef signext 0, ptr noundef nonnull %1988) #17
  %1990 = add nuw nsw i64 %1987, 1
  %1991 = icmp eq i64 %1990, %1967
  br i1 %1991, label %1968, label %1986

1992:                                             ; preds = %1968, %2229
  %1993 = phi i64 [ 0, %1968 ], [ %2232, %2229 ]
  %1994 = phi i32 [ 2147483647, %1968 ], [ %2231, %2229 ]
  %1995 = phi i32 [ 0, %1968 ], [ %2230, %2229 ]
  %1996 = load ptr, ptr @img, align 8, !tbaa !6
  %1997 = getelementptr inbounds i8, ptr %1996, i64 24
  %1998 = load i32, ptr %1997, align 8, !tbaa !42
  %1999 = icmp eq i32 %1998, 2
  %2000 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %1999, label %2001, label %2005

2001:                                             ; preds = %1992
  %2002 = getelementptr inbounds i8, ptr %2000, i64 3024
  %2003 = load i32, ptr %2002, align 8, !tbaa !179
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2005, label %2014

2005:                                             ; preds = %2001, %1992
  %2006 = getelementptr inbounds i8, ptr %2000, i64 3048
  %2007 = load i32, ptr %2006, align 8, !tbaa !180
  %2008 = icmp ne i32 %2007, 1
  %2009 = icmp eq i64 %1993, 0
  %2010 = or i1 %2009, %2008
  %2011 = icmp ne i64 %1993, 2
  %2012 = select i1 %2011, i1 true, i1 %135
  %2013 = select i1 %2010, i1 %2012, i1 false
  br i1 %2013, label %2017, label %2229

2014:                                             ; preds = %2001
  %2015 = icmp ne i64 %1993, 2
  %2016 = select i1 %2015, i1 true, i1 %135
  br i1 %2016, label %2017, label %2229

2017:                                             ; preds = %2005, %2014
  %2018 = trunc nuw nsw i64 %1993 to i32
  switch i32 %2018, label %2021 [
    i32 1, label %2019
    i32 3, label %2020
  ]

2019:                                             ; preds = %2017
  br i1 %138, label %2021, label %2229

2020:                                             ; preds = %2017
  br i1 %1970, label %2021, label %2229

2021:                                             ; preds = %2019, %2017, %2020
  br label %2022

2022:                                             ; preds = %2021, %2223
  %2023 = phi i1 [ false, %2223 ], [ true, %2021 ]
  %2024 = phi i64 [ 1, %2223 ], [ 0, %2021 ]
  %2025 = phi i32 [ %2224, %2223 ], [ 0, %2021 ]
  %2026 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %2027 = getelementptr inbounds ptr, ptr %2026, i64 %2024
  %2028 = load ptr, ptr %2027, align 8, !tbaa !6
  br i1 %147, label %2029, label %2223

2029:                                             ; preds = %2022, %2218
  %2030 = phi i64 [ %2222, %2218 ], [ 0, %2022 ]
  %2031 = phi i32 [ %2219, %2218 ], [ %2025, %2022 ]
  %2032 = phi i32 [ %2220, %2218 ], [ 0, %2022 ]
  br i1 %148, label %2033, label %2218

2033:                                             ; preds = %2029
  %2034 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %2030
  %2035 = getelementptr inbounds i8, ptr %2034, i64 20
  %2036 = getelementptr inbounds i8, ptr %2034, i64 16
  %2037 = or disjoint i64 %2030, 1
  %2038 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %2037
  %2039 = getelementptr inbounds i8, ptr %2038, i64 20
  %2040 = getelementptr inbounds i8, ptr %2038, i64 16
  %2041 = or disjoint i64 %2030, 2
  %2042 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %2041
  %2043 = getelementptr inbounds i8, ptr %2042, i64 20
  %2044 = getelementptr inbounds i8, ptr %2042, i64 16
  %2045 = or disjoint i64 %2030, 3
  %2046 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %2045
  %2047 = getelementptr inbounds i8, ptr %2046, i64 20
  %2048 = getelementptr inbounds i8, ptr %2046, i64 16
  br label %2049

2049:                                             ; preds = %2033, %2049
  %2050 = phi i64 [ 0, %2033 ], [ %2217, %2049 ]
  %2051 = phi i32 [ %2031, %2033 ], [ %2214, %2049 ]
  %2052 = phi i32 [ 0, %2033 ], [ %2215, %2049 ]
  %2053 = load ptr, ptr @img, align 8, !tbaa !6
  %2054 = getelementptr inbounds i8, ptr %2053, i64 8504
  %2055 = load i32, ptr %2035, align 4, !tbaa !176
  %2056 = sext i32 %2055 to i64
  %2057 = getelementptr inbounds ptr, ptr %2028, i64 %2056
  %2058 = load ptr, ptr %2057, align 8, !tbaa !6
  %2059 = load i32, ptr %2036, align 4, !tbaa !177
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr i16, ptr %2058, i64 %2050
  %2062 = getelementptr i16, ptr %2061, i64 %2060
  %2063 = load i16, ptr %2062, align 2, !tbaa !153
  %2064 = zext i16 %2063 to i32
  %2065 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2030, i64 %2050
  %2066 = load i16, ptr %2065, align 2, !tbaa !153
  %2067 = zext i16 %2066 to i32
  %2068 = sub nsw i32 %2064, %2067
  store i32 %2068, ptr %6, align 4, !tbaa !39
  %2069 = or disjoint i64 %2050, 1
  %2070 = getelementptr i16, ptr %2058, i64 %2069
  %2071 = getelementptr i16, ptr %2070, i64 %2060
  %2072 = load i16, ptr %2071, align 2, !tbaa !153
  %2073 = zext i16 %2072 to i32
  %2074 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2030, i64 %2069
  %2075 = load i16, ptr %2074, align 2, !tbaa !153
  %2076 = zext i16 %2075 to i32
  %2077 = sub nsw i32 %2073, %2076
  store i32 %2077, ptr %1971, align 4, !tbaa !39
  %2078 = or disjoint i64 %2050, 2
  %2079 = getelementptr i16, ptr %2058, i64 %2078
  %2080 = getelementptr i16, ptr %2079, i64 %2060
  %2081 = load i16, ptr %2080, align 2, !tbaa !153
  %2082 = zext i16 %2081 to i32
  %2083 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2030, i64 %2078
  %2084 = load i16, ptr %2083, align 2, !tbaa !153
  %2085 = zext i16 %2084 to i32
  %2086 = sub nsw i32 %2082, %2085
  store i32 %2086, ptr %1972, align 4, !tbaa !39
  %2087 = or disjoint i64 %2050, 3
  %2088 = getelementptr i16, ptr %2058, i64 %2087
  %2089 = getelementptr i16, ptr %2088, i64 %2060
  %2090 = load i16, ptr %2089, align 2, !tbaa !153
  %2091 = zext i16 %2090 to i32
  %2092 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2030, i64 %2087
  %2093 = load i16, ptr %2092, align 2, !tbaa !153
  %2094 = zext i16 %2093 to i32
  %2095 = sub nsw i32 %2091, %2094
  store i32 %2095, ptr %1973, align 4, !tbaa !39
  %2096 = load i32, ptr %2039, align 4, !tbaa !176
  %2097 = sext i32 %2096 to i64
  %2098 = getelementptr inbounds ptr, ptr %2028, i64 %2097
  %2099 = load ptr, ptr %2098, align 8, !tbaa !6
  %2100 = load i32, ptr %2040, align 4, !tbaa !177
  %2101 = sext i32 %2100 to i64
  %2102 = getelementptr i16, ptr %2099, i64 %2050
  %2103 = getelementptr i16, ptr %2102, i64 %2101
  %2104 = load i16, ptr %2103, align 2, !tbaa !153
  %2105 = zext i16 %2104 to i32
  %2106 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2037, i64 %2050
  %2107 = load i16, ptr %2106, align 2, !tbaa !153
  %2108 = zext i16 %2107 to i32
  %2109 = sub nsw i32 %2105, %2108
  store i32 %2109, ptr %1974, align 4, !tbaa !39
  %2110 = getelementptr i16, ptr %2099, i64 %2069
  %2111 = getelementptr i16, ptr %2110, i64 %2101
  %2112 = load i16, ptr %2111, align 2, !tbaa !153
  %2113 = zext i16 %2112 to i32
  %2114 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2037, i64 %2069
  %2115 = load i16, ptr %2114, align 2, !tbaa !153
  %2116 = zext i16 %2115 to i32
  %2117 = sub nsw i32 %2113, %2116
  store i32 %2117, ptr %1975, align 4, !tbaa !39
  %2118 = getelementptr i16, ptr %2099, i64 %2078
  %2119 = getelementptr i16, ptr %2118, i64 %2101
  %2120 = load i16, ptr %2119, align 2, !tbaa !153
  %2121 = zext i16 %2120 to i32
  %2122 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2037, i64 %2078
  %2123 = load i16, ptr %2122, align 2, !tbaa !153
  %2124 = zext i16 %2123 to i32
  %2125 = sub nsw i32 %2121, %2124
  store i32 %2125, ptr %1976, align 4, !tbaa !39
  %2126 = getelementptr i16, ptr %2099, i64 %2087
  %2127 = getelementptr i16, ptr %2126, i64 %2101
  %2128 = load i16, ptr %2127, align 2, !tbaa !153
  %2129 = zext i16 %2128 to i32
  %2130 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2037, i64 %2087
  %2131 = load i16, ptr %2130, align 2, !tbaa !153
  %2132 = zext i16 %2131 to i32
  %2133 = sub nsw i32 %2129, %2132
  store i32 %2133, ptr %1977, align 4, !tbaa !39
  %2134 = load i32, ptr %2043, align 4, !tbaa !176
  %2135 = sext i32 %2134 to i64
  %2136 = getelementptr inbounds ptr, ptr %2028, i64 %2135
  %2137 = load ptr, ptr %2136, align 8, !tbaa !6
  %2138 = load i32, ptr %2044, align 4, !tbaa !177
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr i16, ptr %2137, i64 %2050
  %2141 = getelementptr i16, ptr %2140, i64 %2139
  %2142 = load i16, ptr %2141, align 2, !tbaa !153
  %2143 = zext i16 %2142 to i32
  %2144 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2041, i64 %2050
  %2145 = load i16, ptr %2144, align 2, !tbaa !153
  %2146 = zext i16 %2145 to i32
  %2147 = sub nsw i32 %2143, %2146
  store i32 %2147, ptr %1978, align 4, !tbaa !39
  %2148 = getelementptr i16, ptr %2137, i64 %2069
  %2149 = getelementptr i16, ptr %2148, i64 %2139
  %2150 = load i16, ptr %2149, align 2, !tbaa !153
  %2151 = zext i16 %2150 to i32
  %2152 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2041, i64 %2069
  %2153 = load i16, ptr %2152, align 2, !tbaa !153
  %2154 = zext i16 %2153 to i32
  %2155 = sub nsw i32 %2151, %2154
  store i32 %2155, ptr %1979, align 4, !tbaa !39
  %2156 = getelementptr i16, ptr %2137, i64 %2078
  %2157 = getelementptr i16, ptr %2156, i64 %2139
  %2158 = load i16, ptr %2157, align 2, !tbaa !153
  %2159 = zext i16 %2158 to i32
  %2160 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2041, i64 %2078
  %2161 = load i16, ptr %2160, align 2, !tbaa !153
  %2162 = zext i16 %2161 to i32
  %2163 = sub nsw i32 %2159, %2162
  store i32 %2163, ptr %1980, align 4, !tbaa !39
  %2164 = getelementptr i16, ptr %2137, i64 %2087
  %2165 = getelementptr i16, ptr %2164, i64 %2139
  %2166 = load i16, ptr %2165, align 2, !tbaa !153
  %2167 = zext i16 %2166 to i32
  %2168 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2041, i64 %2087
  %2169 = load i16, ptr %2168, align 2, !tbaa !153
  %2170 = zext i16 %2169 to i32
  %2171 = sub nsw i32 %2167, %2170
  store i32 %2171, ptr %1981, align 4, !tbaa !39
  %2172 = load i32, ptr %2047, align 4, !tbaa !176
  %2173 = sext i32 %2172 to i64
  %2174 = getelementptr inbounds ptr, ptr %2028, i64 %2173
  %2175 = load ptr, ptr %2174, align 8, !tbaa !6
  %2176 = load i32, ptr %2048, align 4, !tbaa !177
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr i16, ptr %2175, i64 %2050
  %2179 = getelementptr i16, ptr %2178, i64 %2177
  %2180 = load i16, ptr %2179, align 2, !tbaa !153
  %2181 = zext i16 %2180 to i32
  %2182 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2045, i64 %2050
  %2183 = load i16, ptr %2182, align 2, !tbaa !153
  %2184 = zext i16 %2183 to i32
  %2185 = sub nsw i32 %2181, %2184
  store i32 %2185, ptr %1982, align 4, !tbaa !39
  %2186 = getelementptr i16, ptr %2175, i64 %2069
  %2187 = getelementptr i16, ptr %2186, i64 %2177
  %2188 = load i16, ptr %2187, align 2, !tbaa !153
  %2189 = zext i16 %2188 to i32
  %2190 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2045, i64 %2069
  %2191 = load i16, ptr %2190, align 2, !tbaa !153
  %2192 = zext i16 %2191 to i32
  %2193 = sub nsw i32 %2189, %2192
  store i32 %2193, ptr %1983, align 4, !tbaa !39
  %2194 = getelementptr i16, ptr %2175, i64 %2078
  %2195 = getelementptr i16, ptr %2194, i64 %2177
  %2196 = load i16, ptr %2195, align 2, !tbaa !153
  %2197 = zext i16 %2196 to i32
  %2198 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2045, i64 %2078
  %2199 = load i16, ptr %2198, align 2, !tbaa !153
  %2200 = zext i16 %2199 to i32
  %2201 = sub nsw i32 %2197, %2200
  store i32 %2201, ptr %1984, align 4, !tbaa !39
  %2202 = getelementptr i16, ptr %2175, i64 %2087
  %2203 = getelementptr i16, ptr %2202, i64 %2177
  %2204 = load i16, ptr %2203, align 2, !tbaa !153
  %2205 = zext i16 %2204 to i32
  %2206 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], ptr %2054, i64 0, i64 %2024, i64 %1993, i64 %2045, i64 %2087
  %2207 = load i16, ptr %2206, align 2, !tbaa !153
  %2208 = zext i16 %2207 to i32
  %2209 = sub nsw i32 %2205, %2208
  store i32 %2209, ptr %1985, align 4, !tbaa !39
  %2210 = load ptr, ptr @input, align 8, !tbaa !6
  %2211 = getelementptr inbounds i8, ptr %2210, i64 24
  %2212 = load i32, ptr %2211, align 8, !tbaa !165
  %2213 = call signext i32 @SATD(ptr noundef nonnull %6, i32 noundef signext %2212) #17
  %2214 = add nsw i32 %2213, %2051
  %2215 = add nuw nsw i32 %2052, 4
  %2216 = icmp slt i32 %2215, %16
  %2217 = add nuw nsw i64 %2050, 4
  br i1 %2216, label %2049, label %2218

2218:                                             ; preds = %2049, %2029
  %2219 = phi i32 [ %2031, %2029 ], [ %2214, %2049 ]
  %2220 = add nuw nsw i32 %2032, 4
  %2221 = icmp slt i32 %2220, %18
  %2222 = add nuw i64 %2030, 4
  br i1 %2221, label %2029, label %2223

2223:                                             ; preds = %2218, %2022
  %2224 = phi i32 [ %2025, %2022 ], [ %2219, %2218 ]
  br i1 %2023, label %2022, label %2225

2225:                                             ; preds = %2223
  %2226 = icmp slt i32 %2224, %1994
  %2227 = select i1 %2226, i32 %2018, i32 %1995
  %2228 = call i32 @llvm.smin.i32(i32 %2224, i32 %1994)
  br label %2229

2229:                                             ; preds = %2225, %2019, %2020, %2014, %2005
  %2230 = phi i32 [ %1995, %2005 ], [ %1995, %2020 ], [ %1995, %2019 ], [ %1995, %2014 ], [ %2227, %2225 ]
  %2231 = phi i32 [ %1994, %2005 ], [ %1994, %2020 ], [ %1994, %2019 ], [ %1994, %2014 ], [ %2228, %2225 ]
  %2232 = add nuw nsw i64 %1993, 1
  %2233 = icmp eq i64 %2232, 4
  br i1 %2233, label %2234, label %1992

2234:                                             ; preds = %2229
  %2235 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %14, i32 17
  store i32 %2230, ptr %2235, align 8, !tbaa !44
  br label %2236

2236:                                             ; preds = %2234, %1960
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  ret void
}

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @ZeroRef(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 148
  %4 = load i32, ptr %3, align 4, !tbaa !19
  %5 = getelementptr inbounds i8, ptr %2, i64 144
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 6480
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = sext i32 %6 to i64
  %12 = sext i32 %4 to i64
  %13 = add nsw i32 %6, 3
  %14 = sext i32 %13 to i64
  %15 = add nsw i32 %4, 3
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %1, %29
  %18 = phi i64 [ %12, %1 ], [ %30, %29 ]
  %19 = getelementptr inbounds ptr, ptr %10, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  br label %24

21:                                               ; preds = %24
  %22 = add nsw i64 %25, 1
  %23 = icmp slt i64 %25, %14
  br i1 %23, label %24, label %29

24:                                               ; preds = %17, %21
  %25 = phi i64 [ %11, %17 ], [ %22, %21 ]
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !58
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %21, label %32

29:                                               ; preds = %21
  %30 = add nsw i64 %18, 1
  %31 = icmp slt i64 %18, %16
  br i1 %31, label %17, label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ 0, %24 ], [ 1, %29 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @MBType2Value(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds i8, ptr %0, i64 72
  %7 = load i32, ptr %6, align 8, !tbaa !43
  br i1 %5, label %58, label %8

8:                                                ; preds = %1
  switch i32 %7, label %89 [
    i32 13, label %9
    i32 9, label %9
    i32 10, label %12
    i32 14, label %18
    i32 8, label %21
  ]

9:                                                ; preds = %8, %8
  %10 = icmp eq i32 %4, 2
  %11 = select i1 %10, i32 0, i32 6
  br label %89

12:                                               ; preds = %8
  %13 = icmp eq i32 %4, 2
  %14 = select i1 %13, i32 0, i32 6
  %15 = getelementptr inbounds i8, ptr %2, i64 90196
  %16 = load i32, ptr %15, align 4, !tbaa !181
  %17 = add nsw i32 %16, %14
  br label %89

18:                                               ; preds = %8
  %19 = icmp eq i32 %4, 2
  %20 = select i1 %19, i32 25, i32 31
  br label %89

21:                                               ; preds = %8
  %22 = load ptr, ptr @input, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 2984
  %24 = load i32, ptr %23, align 8, !tbaa !74
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %2, i64 148
  %28 = load i32, ptr %27, align 4, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %2, i64 144
  %30 = load i32, ptr %29, align 8, !tbaa !17
  %31 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 6480
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = sext i32 %30 to i64
  %36 = sext i32 %28 to i64
  %37 = add i32 %30, 3
  %38 = add i32 %28, 3
  %39 = tail call i32 @llvm.smax.i32(i32 %30, i32 %37)
  %40 = sext i32 %39 to i64
  %41 = tail call i32 @llvm.smax.i32(i32 %28, i32 %38)
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %55, %26
  %44 = phi i64 [ %36, %26 ], [ %56, %55 ]
  %45 = getelementptr inbounds ptr, ptr %34, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  br label %50

47:                                               ; preds = %50
  %48 = add nsw i64 %51, 1
  %49 = icmp eq i64 %51, %40
  br i1 %49, label %55, label %50

50:                                               ; preds = %47, %43
  %51 = phi i64 [ %35, %43 ], [ %48, %47 ]
  %52 = getelementptr inbounds i8, ptr %46, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !58
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %47, label %89

55:                                               ; preds = %47
  %56 = add nsw i64 %44, 1
  %57 = icmp eq i64 %44, %42
  br i1 %57, label %89, label %43

58:                                               ; preds = %1
  %59 = getelementptr inbounds i8, ptr %0, i64 392
  %60 = load i32, ptr %59, align 8, !tbaa !39
  %61 = getelementptr inbounds i8, ptr %0, i64 404
  %62 = load i32, ptr %61, align 4, !tbaa !39
  %63 = icmp eq i32 %7, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %58
  %65 = and i32 %7, -5
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  switch i32 %7, label %83 [
    i32 10, label %68
    i32 14, label %89
    i32 8, label %72
    i32 1, label %73
    i32 2, label %77
  ]

68:                                               ; preds = %67
  %69 = getelementptr inbounds i8, ptr %2, i64 90196
  %70 = load i32, ptr %69, align 4, !tbaa !181
  %71 = add nsw i32 %70, 23
  br label %89

72:                                               ; preds = %67
  br label %89

73:                                               ; preds = %67
  %74 = sext i32 %60 to i64
  %75 = getelementptr inbounds [3 x i32], ptr @MBType2Value.dir1offset, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !39
  br label %89

77:                                               ; preds = %67
  %78 = sext i32 %60 to i64
  %79 = sext i32 %62 to i64
  %80 = getelementptr inbounds [3 x [3 x i32]], ptr @MBType2Value.dir2offset, i64 0, i64 %78, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !39
  %82 = add nsw i32 %81, 4
  br label %89

83:                                               ; preds = %67
  %84 = sext i32 %60 to i64
  %85 = sext i32 %62 to i64
  %86 = getelementptr inbounds [3 x [3 x i32]], ptr @MBType2Value.dir2offset, i64 0, i64 %84, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !39
  %88 = add nsw i32 %87, 5
  br label %89

89:                                               ; preds = %55, %50, %21, %67, %64, %58, %8, %83, %77, %73, %72, %68, %18, %12, %9
  %90 = phi i32 [ %11, %9 ], [ %17, %12 ], [ %20, %18 ], [ %71, %68 ], [ 22, %72 ], [ %76, %73 ], [ %82, %77 ], [ %88, %83 ], [ %7, %8 ], [ 0, %58 ], [ 23, %64 ], [ 48, %67 ], [ 4, %21 ], [ 4, %50 ], [ 5, %55 ]
  ret i32 %90
}

; Function Attrs: nounwind
define dso_local signext i32 @writeIntra4x4Modes(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds i8, ptr %4, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %4, i64 31568
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = load ptr, ptr @input, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 2992
  %17 = load i32, ptr %16, align 8, !tbaa !137
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %10, i64 376
  %22 = icmp slt i32 %0, 0
  %23 = getelementptr inbounds i8, ptr %10, i64 332
  %24 = load i32, ptr %21, align 4, !tbaa !39
  switch i32 %24, label %63 [
    i32 11, label %33
    i32 13, label %35
  ]

25:                                               ; preds = %168
  %26 = getelementptr inbounds i8, ptr %4, i64 31584
  %27 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %26, i64 0, i64 %12
  %28 = getelementptr inbounds i8, ptr %10, i64 420
  %29 = getelementptr inbounds i8, ptr %14, i64 24
  %30 = getelementptr inbounds i8, ptr %20, i64 16
  %31 = getelementptr inbounds i8, ptr %10, i64 40
  %32 = zext nneg i32 %169 to i64
  br label %171

33:                                               ; preds = %1
  %34 = icmp slt i32 %0, 1
  br i1 %34, label %37, label %63

35:                                               ; preds = %1
  %36 = icmp slt i32 %0, 1
  br i1 %36, label %37, label %63

37:                                               ; preds = %35, %33
  %38 = icmp eq i32 %24, 13
  %39 = select i1 %38, i64 2, i64 1
  %40 = shl nuw nsw i64 %39, 1
  br label %41

41:                                               ; preds = %37, %58
  %42 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %43 = phi i64 [ 0, %37 ], [ %55, %58 ]
  %44 = shl i64 %43, 32
  %45 = ashr exact i64 %44, 32
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %45, %41 ], [ %55, %46 ]
  %48 = phi i64 [ 0, %41 ], [ %56, %46 ]
  %49 = add nuw nsw i64 %48, %42
  %50 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !58
  %52 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %47
  store i8 %51, ptr %52, align 1, !tbaa !58
  %53 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %47
  %54 = trunc nuw nsw i64 %49 to i32
  store i32 %54, ptr %53, align 4, !tbaa !39
  %55 = add nsw i64 %47, 1
  %56 = add nuw nsw i64 %48, %39
  %57 = icmp ult i64 %56, 2
  br i1 %57, label %46, label %58

58:                                               ; preds = %46
  %59 = add nuw nsw i64 %42, %40
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %41, label %61

61:                                               ; preds = %58
  %62 = trunc nsw i64 %55 to i32
  br label %63

63:                                               ; preds = %61, %1, %33, %35
  %64 = phi i32 [ 0, %35 ], [ 0, %33 ], [ 0, %1 ], [ %62, %61 ]
  %65 = getelementptr inbounds i8, ptr %10, i64 380
  %66 = load i32, ptr %65, align 4, !tbaa !39
  switch i32 %66, label %98 [
    i32 11, label %70
    i32 13, label %67
  ]

67:                                               ; preds = %63
  %68 = icmp eq i32 %0, 1
  %69 = or i1 %22, %68
  br i1 %69, label %73, label %98

70:                                               ; preds = %63
  %71 = icmp eq i32 %0, 1
  %72 = or i1 %22, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %70, %67
  %74 = icmp eq i32 %66, 13
  %75 = select i1 %74, i64 2, i64 1
  %76 = shl nuw nsw i64 %75, 1
  br label %77

77:                                               ; preds = %94, %73
  %78 = phi i64 [ 0, %73 ], [ %96, %94 ]
  %79 = phi i32 [ %64, %73 ], [ %95, %94 ]
  %80 = add nuw nsw i64 %78, 4
  %81 = sext i32 %79 to i64
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi i64 [ %81, %77 ], [ %91, %82 ]
  %84 = phi i64 [ 0, %77 ], [ %92, %82 ]
  %85 = add nuw nsw i64 %84, %80
  %86 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !58
  %88 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %83
  store i8 %87, ptr %88, align 1, !tbaa !58
  %89 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %83
  %90 = trunc nuw nsw i64 %85 to i32
  store i32 %90, ptr %89, align 4, !tbaa !39
  %91 = add nsw i64 %83, 1
  %92 = add nuw nsw i64 %84, %75
  %93 = icmp ult i64 %92, 2
  br i1 %93, label %82, label %94

94:                                               ; preds = %82
  %95 = trunc nsw i64 %91 to i32
  %96 = add nuw nsw i64 %78, %76
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %77, label %98

98:                                               ; preds = %94, %70, %67, %63
  %99 = phi i32 [ %64, %67 ], [ %64, %70 ], [ %64, %63 ], [ %95, %94 ]
  %100 = getelementptr inbounds i8, ptr %10, i64 384
  %101 = load i32, ptr %100, align 4, !tbaa !39
  switch i32 %101, label %133 [
    i32 11, label %105
    i32 13, label %102
  ]

102:                                              ; preds = %98
  %103 = icmp eq i32 %0, 2
  %104 = or i1 %22, %103
  br i1 %104, label %108, label %133

105:                                              ; preds = %98
  %106 = icmp eq i32 %0, 2
  %107 = or i1 %22, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %105, %102
  %109 = icmp eq i32 %101, 13
  %110 = select i1 %109, i64 2, i64 1
  %111 = shl nuw nsw i64 %110, 1
  br label %112

112:                                              ; preds = %129, %108
  %113 = phi i64 [ 0, %108 ], [ %131, %129 ]
  %114 = phi i32 [ %99, %108 ], [ %130, %129 ]
  %115 = add nuw nsw i64 %113, 8
  %116 = sext i32 %114 to i64
  br label %117

117:                                              ; preds = %117, %112
  %118 = phi i64 [ %116, %112 ], [ %126, %117 ]
  %119 = phi i64 [ 0, %112 ], [ %127, %117 ]
  %120 = add nuw nsw i64 %119, %115
  %121 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !58
  %123 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %118
  store i8 %122, ptr %123, align 1, !tbaa !58
  %124 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %118
  %125 = trunc nuw nsw i64 %120 to i32
  store i32 %125, ptr %124, align 4, !tbaa !39
  %126 = add nsw i64 %118, 1
  %127 = add nuw nsw i64 %119, %110
  %128 = icmp ult i64 %127, 2
  br i1 %128, label %117, label %129

129:                                              ; preds = %117
  %130 = trunc nsw i64 %126 to i32
  %131 = add nuw nsw i64 %113, %111
  %132 = icmp ult i64 %131, 4
  br i1 %132, label %112, label %133

133:                                              ; preds = %129, %105, %102, %98
  %134 = phi i32 [ %99, %102 ], [ %99, %105 ], [ %99, %98 ], [ %130, %129 ]
  %135 = getelementptr inbounds i8, ptr %10, i64 388
  %136 = load i32, ptr %135, align 4, !tbaa !39
  switch i32 %136, label %168 [
    i32 11, label %140
    i32 13, label %137
  ]

137:                                              ; preds = %133
  %138 = icmp eq i32 %0, 3
  %139 = or i1 %22, %138
  br i1 %139, label %143, label %168

140:                                              ; preds = %133
  %141 = icmp eq i32 %0, 3
  %142 = or i1 %22, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %140, %137
  %144 = icmp eq i32 %136, 13
  %145 = select i1 %144, i64 2, i64 1
  %146 = shl nuw nsw i64 %145, 1
  br label %147

147:                                              ; preds = %164, %143
  %148 = phi i64 [ 0, %143 ], [ %166, %164 ]
  %149 = phi i32 [ %134, %143 ], [ %165, %164 ]
  %150 = add nuw nsw i64 %148, 12
  %151 = sext i32 %149 to i64
  br label %152

152:                                              ; preds = %152, %147
  %153 = phi i64 [ %151, %147 ], [ %161, %152 ]
  %154 = phi i64 [ 0, %147 ], [ %162, %152 ]
  %155 = add nuw nsw i64 %154, %150
  %156 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !58
  %158 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %153
  store i8 %157, ptr %158, align 1, !tbaa !58
  %159 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %153
  %160 = trunc nuw nsw i64 %155 to i32
  store i32 %160, ptr %159, align 4, !tbaa !39
  %161 = add nsw i64 %153, 1
  %162 = add nuw nsw i64 %154, %145
  %163 = icmp ult i64 %162, 2
  br i1 %163, label %152, label %164

164:                                              ; preds = %152
  %165 = trunc nsw i64 %161 to i32
  %166 = add nuw nsw i64 %148, %146
  %167 = icmp ult i64 %166, 4
  br i1 %167, label %147, label %168

168:                                              ; preds = %164, %140, %137, %133
  %169 = phi i32 [ %134, %137 ], [ %134, %140 ], [ %134, %133 ], [ %165, %164 ]
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %25, label %214

171:                                              ; preds = %25, %202
  %172 = phi i64 [ 0, %25 ], [ %212, %202 ]
  %173 = phi i32 [ 0, %25 ], [ %208, %202 ]
  %174 = phi ptr [ %27, %25 ], [ %209, %202 ]
  store i32 1, ptr %28, align 4, !tbaa !182
  %175 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %172
  %176 = load i32, ptr %175, align 4, !tbaa !39
  %177 = getelementptr inbounds i8, ptr %174, i64 24
  store i32 %176, ptr %177, align 8, !tbaa !183
  %178 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %172
  %179 = load i8, ptr %178, align 1, !tbaa !58
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds i8, ptr %174, i64 4
  store i32 %180, ptr %181, align 4, !tbaa !141
  %182 = getelementptr inbounds i8, ptr %174, i64 8
  store i32 0, ptr %182, align 8, !tbaa !143
  %183 = load ptr, ptr @input, align 8, !tbaa !6
  %184 = getelementptr inbounds i8, ptr %183, i64 2984
  %185 = load i32, ptr %184, align 8, !tbaa !74
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %171
  store i32 4, ptr %174, align 8, !tbaa !145
  %188 = load ptr, ptr %29, align 8, !tbaa !63
  %189 = load i32, ptr %30, align 4, !tbaa !39
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.datapartition, ptr %188, i64 %190
  %192 = tail call signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef nonnull %174, ptr noundef %191) #17
  br label %202

193:                                              ; preds = %171
  %194 = getelementptr inbounds i8, ptr %174, i64 40
  store ptr @writeIntraPredMode_CABAC, ptr %194, align 8, !tbaa !184
  store i32 4, ptr %174, align 8, !tbaa !145
  %195 = load ptr, ptr %29, align 8, !tbaa !63
  %196 = load i32, ptr %30, align 4, !tbaa !39
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.datapartition, ptr %195, i64 %197
  %199 = getelementptr inbounds i8, ptr %198, i64 104
  %200 = load ptr, ptr %199, align 8, !tbaa !146
  %201 = tail call signext i32 %200(ptr noundef nonnull %174, ptr noundef %198) #17
  br label %202

202:                                              ; preds = %193, %187
  %203 = getelementptr inbounds i8, ptr %174, i64 12
  %204 = load i32, ptr %203, align 4, !tbaa !147
  %205 = load i32, ptr %31, align 4, !tbaa !39
  %206 = add nsw i32 %205, %204
  store i32 %206, ptr %31, align 4, !tbaa !39
  %207 = load i32, ptr %203, align 4, !tbaa !147
  %208 = add nsw i32 %207, %173
  %209 = getelementptr inbounds i8, ptr %174, i64 48
  %210 = load i32, ptr %10, align 8, !tbaa !122
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %10, align 8, !tbaa !122
  %212 = add nuw nsw i64 %172, 1
  %213 = icmp eq i64 %212, %32
  br i1 %213, label %214, label %171

214:                                              ; preds = %202, %168
  %215 = phi i32 [ 0, %168 ], [ %208, %202 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret i32 %215
}

declare dso_local void @writeIntraPredMode_CABAC(ptr noundef, ptr noundef) #1

declare dso_local signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @B8Mode2Value(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %0, -4
  br label %17

9:                                                ; preds = %2
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [8 x i32], ptr @B8Mode2Value.b8start, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds [8 x i32], ptr @B8Mode2Value.b8inc, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = mul nsw i32 %14, %1
  %16 = add nsw i32 %15, %12
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind
define dso_local signext i32 @writeMBLayer(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %5) #17
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = getelementptr inbounds i8, ptr %7, i64 31584
  %15 = load i32, ptr %11, align 8, !tbaa !122
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %14, i64 0, i64 %16
  %18 = getelementptr inbounds i8, ptr %7, i64 31568
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = load ptr, ptr @input, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 2992
  %22 = load i32, ptr %21, align 8, !tbaa !137
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %11, i64 72
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = getelementptr inbounds i8, ptr %7, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !42
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %11, i64 364
  %35 = load i32, ptr %34, align 4, !tbaa !45
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %33, %29, %2
  %38 = phi i1 [ false, %2 ], [ %36, %33 ], [ true, %29 ]
  %39 = getelementptr inbounds i8, ptr %7, i64 90220
  %40 = load i32, ptr %39, align 4, !tbaa !23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %37
  %43 = and i32 %5, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %13, i64 72
  %47 = load i32, ptr %46, align 8, !tbaa !43
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %7, i64 24
  %51 = load i32, ptr %50, align 8, !tbaa !42
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %13, i64 364
  %55 = load i32, ptr %54, align 4, !tbaa !45
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %53
  br label %58

58:                                               ; preds = %45, %57, %53
  %59 = phi i32 [ 0, %45 ], [ 0, %53 ], [ 1, %57 ]
  %60 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12, i32 42
  %61 = load i32, ptr %60, align 8, !tbaa !185
  br label %62

62:                                               ; preds = %42, %58, %37
  %63 = phi i32 [ %61, %58 ], [ 0, %37 ], [ 0, %42 ]
  %64 = phi i32 [ %59, %58 ], [ 0, %37 ], [ 1, %42 ]
  %65 = add i32 %27, -9
  %66 = and i32 %65, -6
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds i8, ptr %11, i64 420
  store i32 %68, ptr %69, align 4, !tbaa !182
  %70 = getelementptr inbounds i8, ptr %19, i64 24
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds i8, ptr %25, i64 8
  %73 = load i32, ptr %72, align 4, !tbaa !39
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.datapartition, ptr %71, i64 %74
  %76 = getelementptr inbounds i8, ptr %7, i64 24
  %77 = load i32, ptr %76, align 8, !tbaa !42
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %139

79:                                               ; preds = %62
  %80 = icmp eq i32 %64, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %11, i64 424
  %83 = load i32, ptr %82, align 8, !tbaa !25
  %84 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %83, ptr %84, align 4, !tbaa !141
  %85 = getelementptr inbounds i8, ptr %17, i64 8
  store i32 0, ptr %85, align 8, !tbaa !143
  store i32 2, ptr %17, align 8, !tbaa !145
  %86 = getelementptr inbounds i8, ptr %20, i64 2984
  %87 = load i32, ptr %86, align 8, !tbaa !74
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = getelementptr inbounds i8, ptr %17, i64 32
  store ptr @ue_linfo, ptr %90, align 8, !tbaa !144
  %91 = icmp ne i32 %83, 0
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds i8, ptr %17, i64 20
  store i32 %92, ptr %93, align 4, !tbaa !186
  %94 = getelementptr inbounds i8, ptr %17, i64 12
  store i32 1, ptr %94, align 4, !tbaa !147
  %95 = load ptr, ptr %75, align 8, !tbaa !64
  %96 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %17, ptr noundef %95) #17
  br label %102

97:                                               ; preds = %81
  %98 = getelementptr inbounds i8, ptr %17, i64 40
  store ptr @writeFieldModeInfo_CABAC, ptr %98, align 8, !tbaa !184
  %99 = getelementptr inbounds i8, ptr %75, i64 104
  %100 = load ptr, ptr %99, align 8, !tbaa !146
  %101 = tail call signext i32 %100(ptr noundef nonnull %17, ptr noundef %75) #17
  br label %102

102:                                              ; preds = %97, %89
  %103 = getelementptr inbounds i8, ptr %17, i64 12
  %104 = load i32, ptr %103, align 4, !tbaa !147
  %105 = getelementptr inbounds i8, ptr %11, i64 28
  %106 = load i32, ptr %105, align 4, !tbaa !39
  %107 = add nsw i32 %106, %104
  store i32 %107, ptr %105, align 4, !tbaa !39
  %108 = load i32, ptr %103, align 4, !tbaa !147
  %109 = getelementptr inbounds i8, ptr %17, i64 48
  %110 = load i32, ptr %11, align 8, !tbaa !122
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %11, align 8, !tbaa !122
  %112 = load ptr, ptr @input, align 8, !tbaa !6
  br label %113

113:                                              ; preds = %102, %79
  %114 = phi ptr [ %112, %102 ], [ %20, %79 ]
  %115 = phi ptr [ %109, %102 ], [ %17, %79 ]
  %116 = phi i32 [ %108, %102 ], [ 0, %79 ]
  %117 = tail call signext i32 @MBType2Value(ptr noundef nonnull %11)
  %118 = getelementptr inbounds i8, ptr %115, i64 4
  store i32 %117, ptr %118, align 4, !tbaa !141
  %119 = getelementptr inbounds i8, ptr %115, i64 8
  store i32 0, ptr %119, align 8, !tbaa !143
  store i32 2, ptr %115, align 8, !tbaa !145
  %120 = getelementptr inbounds i8, ptr %114, i64 2984
  %121 = load i32, ptr %120, align 8, !tbaa !74
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i64 32, i64 40
  %124 = select i1 %122, ptr @ue_linfo, ptr @writeMB_typeInfo_CABAC
  %125 = getelementptr inbounds i8, ptr %115, i64 %123
  store ptr %124, ptr %125, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %75, i64 104
  %127 = load ptr, ptr %126, align 8, !tbaa !146
  %128 = tail call signext i32 %127(ptr noundef nonnull %115, ptr noundef %75) #17
  %129 = getelementptr inbounds i8, ptr %115, i64 12
  %130 = load i32, ptr %129, align 4, !tbaa !147
  %131 = getelementptr inbounds i8, ptr %11, i64 28
  %132 = load i32, ptr %131, align 4, !tbaa !39
  %133 = add nsw i32 %132, %130
  store i32 %133, ptr %131, align 4, !tbaa !39
  %134 = load i32, ptr %129, align 4, !tbaa !147
  %135 = add nsw i32 %134, %116
  %136 = getelementptr inbounds i8, ptr %115, i64 48
  %137 = load i32, ptr %11, align 8, !tbaa !122
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %11, align 8, !tbaa !122
  br label %378

139:                                              ; preds = %62
  %140 = getelementptr inbounds i8, ptr %20, i64 2984
  %141 = load i32, ptr %140, align 8, !tbaa !74
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %226

143:                                              ; preds = %139
  br i1 %41, label %155, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds i8, ptr %7, i64 12
  %146 = load i32, ptr %145, align 4, !tbaa !10
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  %149 = icmp ne i32 %63, 0
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = getelementptr inbounds i8, ptr %11, i64 424
  %153 = load i32, ptr %152, align 8, !tbaa !25
  %154 = tail call signext i32 @field_flag_inference() #17
  store i32 %154, ptr %152, align 8, !tbaa !25
  tail call void @CheckAvailabilityOfNeighborsCABAC() #17
  store i32 %153, ptr %152, align 8, !tbaa !25
  br label %155

155:                                              ; preds = %144, %151, %143
  %156 = tail call signext i32 @MBType2Value(ptr noundef nonnull %11)
  %157 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %156, ptr %157, align 4, !tbaa !141
  %158 = getelementptr inbounds i8, ptr %11, i64 364
  %159 = load i32, ptr %158, align 4, !tbaa !45
  %160 = getelementptr inbounds i8, ptr %17, i64 8
  store i32 %159, ptr %160, align 8, !tbaa !143
  store i32 2, ptr %17, align 8, !tbaa !145
  %161 = getelementptr inbounds i8, ptr %17, i64 40
  store ptr @writeMB_skip_flagInfo_CABAC, ptr %161, align 8, !tbaa !184
  %162 = getelementptr inbounds i8, ptr %75, i64 104
  %163 = load ptr, ptr %162, align 8, !tbaa !146
  %164 = tail call signext i32 %163(ptr noundef nonnull %17, ptr noundef %75) #17
  %165 = getelementptr inbounds i8, ptr %17, i64 12
  %166 = load i32, ptr %165, align 4, !tbaa !147
  %167 = getelementptr inbounds i8, ptr %11, i64 28
  %168 = load i32, ptr %167, align 4, !tbaa !39
  %169 = add nsw i32 %168, %166
  store i32 %169, ptr %167, align 4, !tbaa !39
  %170 = load i32, ptr %165, align 4, !tbaa !147
  %171 = getelementptr inbounds i8, ptr %17, i64 48
  %172 = load i32, ptr %11, align 8, !tbaa !122
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %11, align 8, !tbaa !122
  tail call void @CheckAvailabilityOfNeighborsCABAC() #17
  %174 = load ptr, ptr @img, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 90220
  %176 = load i32, ptr %175, align 4, !tbaa !23
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i1 true, i1 %38
  %179 = icmp eq i32 %64, 0
  %180 = or i1 %179, %178
  br i1 %180, label %198, label %181

181:                                              ; preds = %155
  %182 = getelementptr inbounds i8, ptr %11, i64 424
  %183 = load i32, ptr %182, align 8, !tbaa !25
  %184 = getelementptr inbounds i8, ptr %17, i64 52
  store i32 %183, ptr %184, align 4, !tbaa !141
  %185 = getelementptr inbounds i8, ptr %17, i64 56
  store i32 0, ptr %185, align 8, !tbaa !143
  store i32 2, ptr %171, align 8, !tbaa !145
  %186 = getelementptr inbounds i8, ptr %17, i64 88
  store ptr @writeFieldModeInfo_CABAC, ptr %186, align 8, !tbaa !184
  %187 = load ptr, ptr %162, align 8, !tbaa !146
  %188 = tail call signext i32 %187(ptr noundef nonnull %171, ptr noundef nonnull %75) #17
  %189 = getelementptr inbounds i8, ptr %17, i64 60
  %190 = load i32, ptr %189, align 4, !tbaa !147
  %191 = load i32, ptr %167, align 4, !tbaa !39
  %192 = add nsw i32 %191, %190
  store i32 %192, ptr %167, align 4, !tbaa !39
  %193 = load i32, ptr %189, align 4, !tbaa !147
  %194 = add nsw i32 %193, %170
  %195 = getelementptr inbounds i8, ptr %17, i64 96
  %196 = load i32, ptr %11, align 8, !tbaa !122
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %11, align 8, !tbaa !122
  br label %198

198:                                              ; preds = %181, %155
  %199 = phi ptr [ %195, %181 ], [ %171, %155 ]
  %200 = phi i32 [ %194, %181 ], [ %170, %155 ]
  %201 = load i32, ptr %26, align 8, !tbaa !43
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load ptr, ptr @img, align 8, !tbaa !6
  %205 = getelementptr inbounds i8, ptr %204, i64 24
  %206 = load i32, ptr %205, align 8, !tbaa !42
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %378

208:                                              ; preds = %203
  %209 = load i32, ptr %158, align 4, !tbaa !45
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %378, label %211

211:                                              ; preds = %208, %198
  %212 = getelementptr inbounds i8, ptr %199, i64 4
  store i32 %156, ptr %212, align 4, !tbaa !141
  %213 = getelementptr inbounds i8, ptr %199, i64 8
  store i32 0, ptr %213, align 8, !tbaa !143
  store i32 2, ptr %199, align 8, !tbaa !145
  %214 = getelementptr inbounds i8, ptr %199, i64 40
  store ptr @writeMB_typeInfo_CABAC, ptr %214, align 8, !tbaa !184
  %215 = load ptr, ptr %162, align 8, !tbaa !146
  %216 = tail call signext i32 %215(ptr noundef nonnull %199, ptr noundef nonnull %75) #17
  %217 = getelementptr inbounds i8, ptr %199, i64 12
  %218 = load i32, ptr %217, align 4, !tbaa !147
  %219 = load i32, ptr %167, align 4, !tbaa !39
  %220 = add nsw i32 %219, %218
  store i32 %220, ptr %167, align 4, !tbaa !39
  %221 = load i32, ptr %217, align 4, !tbaa !147
  %222 = add nsw i32 %221, %200
  %223 = getelementptr inbounds i8, ptr %199, i64 48
  %224 = load i32, ptr %11, align 8, !tbaa !122
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %11, align 8, !tbaa !122
  br label %378

226:                                              ; preds = %139
  br i1 %28, label %227, label %233

227:                                              ; preds = %226
  %228 = icmp eq i32 %77, 1
  br i1 %228, label %229, label %304

229:                                              ; preds = %227
  %230 = getelementptr inbounds i8, ptr %11, i64 364
  %231 = load i32, ptr %230, align 4, !tbaa !45
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %304, label %233

233:                                              ; preds = %229, %226
  %234 = getelementptr inbounds i8, ptr %7, i64 120
  %235 = load i32, ptr %234, align 8, !tbaa !60
  %236 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %235, ptr %236, align 4, !tbaa !141
  %237 = getelementptr inbounds i8, ptr %17, i64 8
  store i32 0, ptr %237, align 8, !tbaa !143
  %238 = getelementptr inbounds i8, ptr %17, i64 32
  store ptr @ue_linfo, ptr %238, align 8, !tbaa !144
  store i32 2, ptr %17, align 8, !tbaa !145
  %239 = getelementptr inbounds i8, ptr %75, i64 104
  %240 = load ptr, ptr %239, align 8, !tbaa !146
  %241 = tail call signext i32 %240(ptr noundef nonnull %17, ptr noundef %75) #17
  %242 = getelementptr inbounds i8, ptr %17, i64 12
  %243 = load i32, ptr %242, align 4, !tbaa !147
  %244 = getelementptr inbounds i8, ptr %11, i64 28
  %245 = load i32, ptr %244, align 4, !tbaa !39
  %246 = add nsw i32 %245, %243
  store i32 %246, ptr %244, align 4, !tbaa !39
  %247 = load i32, ptr %242, align 4, !tbaa !147
  %248 = getelementptr inbounds i8, ptr %17, i64 48
  %249 = load i32, ptr %11, align 8, !tbaa !122
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %11, align 8, !tbaa !122
  %251 = load ptr, ptr @img, align 8, !tbaa !6
  %252 = getelementptr inbounds i8, ptr %251, i64 120
  store i32 0, ptr %252, align 8, !tbaa !60
  %253 = getelementptr inbounds i8, ptr %251, i64 90220
  %254 = load i32, ptr %253, align 4, !tbaa !23
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i1 true, i1 %38
  %257 = icmp eq i32 %64, 0
  %258 = or i1 %257, %256
  br i1 %258, label %279, label %259

259:                                              ; preds = %233
  %260 = getelementptr inbounds i8, ptr %11, i64 424
  %261 = load i32, ptr %260, align 8, !tbaa !25
  %262 = getelementptr inbounds i8, ptr %17, i64 52
  store i32 %261, ptr %262, align 4, !tbaa !141
  store i32 2, ptr %248, align 8, !tbaa !145
  %263 = getelementptr inbounds i8, ptr %17, i64 80
  store ptr @ue_linfo, ptr %263, align 8, !tbaa !144
  %264 = icmp ne i32 %261, 0
  %265 = zext i1 %264 to i32
  %266 = getelementptr inbounds i8, ptr %17, i64 68
  store i32 %265, ptr %266, align 4, !tbaa !186
  %267 = getelementptr inbounds i8, ptr %17, i64 60
  store i32 1, ptr %267, align 4, !tbaa !147
  %268 = load ptr, ptr %75, align 8, !tbaa !64
  %269 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %248, ptr noundef %268) #17
  %270 = load i32, ptr %267, align 4, !tbaa !147
  %271 = load i32, ptr %244, align 4, !tbaa !39
  %272 = add nsw i32 %271, %270
  store i32 %272, ptr %244, align 4, !tbaa !39
  %273 = load i32, ptr %267, align 4, !tbaa !147
  %274 = add nsw i32 %273, %247
  %275 = getelementptr inbounds i8, ptr %17, i64 96
  %276 = load i32, ptr %11, align 8, !tbaa !122
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %11, align 8, !tbaa !122
  %278 = load ptr, ptr @img, align 8, !tbaa !6
  br label %279

279:                                              ; preds = %259, %233
  %280 = phi ptr [ %278, %259 ], [ %251, %233 ]
  %281 = phi ptr [ %275, %259 ], [ %248, %233 ]
  %282 = phi i32 [ %274, %259 ], [ %247, %233 ]
  %283 = tail call signext i32 @MBType2Value(ptr noundef nonnull %11)
  %284 = getelementptr inbounds i8, ptr %281, i64 4
  store i32 %283, ptr %284, align 4, !tbaa !141
  %285 = getelementptr inbounds i8, ptr %280, i64 24
  %286 = load i32, ptr %285, align 8, !tbaa !42
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %290, label %288

288:                                              ; preds = %279
  %289 = add nsw i32 %283, -1
  store i32 %289, ptr %284, align 4, !tbaa !141
  br label %290

290:                                              ; preds = %288, %279
  %291 = getelementptr inbounds i8, ptr %281, i64 32
  store ptr @ue_linfo, ptr %291, align 8, !tbaa !144
  store i32 2, ptr %281, align 8, !tbaa !145
  %292 = getelementptr inbounds i8, ptr %281, i64 8
  store i32 0, ptr %292, align 8, !tbaa !143
  %293 = load ptr, ptr %239, align 8, !tbaa !146
  %294 = tail call signext i32 %293(ptr noundef nonnull %281, ptr noundef nonnull %75) #17
  %295 = getelementptr inbounds i8, ptr %281, i64 12
  %296 = load i32, ptr %295, align 4, !tbaa !147
  %297 = load i32, ptr %244, align 4, !tbaa !39
  %298 = add nsw i32 %297, %296
  store i32 %298, ptr %244, align 4, !tbaa !39
  %299 = load i32, ptr %295, align 4, !tbaa !147
  %300 = add nsw i32 %299, %282
  %301 = getelementptr inbounds i8, ptr %281, i64 48
  %302 = load i32, ptr %11, align 8, !tbaa !122
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %11, align 8, !tbaa !122
  br label %378

304:                                              ; preds = %229, %227
  %305 = getelementptr inbounds i8, ptr %7, i64 120
  %306 = load i32, ptr %305, align 8, !tbaa !60
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %305, align 8, !tbaa !60
  %308 = getelementptr inbounds i8, ptr %11, i64 520
  store i32 1, ptr %308, align 8, !tbaa !185
  %309 = getelementptr inbounds i8, ptr %7, i64 90540
  %310 = load i32, ptr %309, align 4, !tbaa !174
  %311 = icmp sgt i32 %310, -4
  br i1 %311, label %312, label %350

312:                                              ; preds = %304
  %313 = getelementptr inbounds i8, ptr %7, i64 128
  %314 = load ptr, ptr %313, align 8, !tbaa !187
  %315 = getelementptr inbounds i8, ptr %7, i64 12
  br label %316

316:                                              ; preds = %312, %316
  %317 = phi i64 [ 0, %312 ], [ %345, %316 ]
  %318 = load i32, ptr %315, align 4, !tbaa !10
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %314, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  %322 = load ptr, ptr %321, align 8, !tbaa !6
  %323 = getelementptr inbounds i32, ptr %322, i64 %317
  store i32 0, ptr %323, align 4, !tbaa !39
  %324 = load i32, ptr %315, align 4, !tbaa !10
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds ptr, ptr %314, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds i8, ptr %327, i64 8
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds i32, ptr %329, i64 %317
  store i32 0, ptr %330, align 4, !tbaa !39
  %331 = load i32, ptr %315, align 4, !tbaa !10
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds ptr, ptr %314, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = getelementptr inbounds i8, ptr %334, i64 16
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i32, ptr %336, i64 %317
  store i32 0, ptr %337, align 4, !tbaa !39
  %338 = load i32, ptr %315, align 4, !tbaa !10
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %314, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds i8, ptr %341, i64 24
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  %344 = getelementptr inbounds i32, ptr %343, i64 %317
  store i32 0, ptr %344, align 4, !tbaa !39
  %345 = add nuw nsw i64 %317, 1
  %346 = load i32, ptr %309, align 4, !tbaa !174
  %347 = add nsw i32 %346, 3
  %348 = sext i32 %347 to i64
  %349 = icmp slt i64 %317, %348
  br i1 %349, label %316, label %350

350:                                              ; preds = %316, %304
  %351 = getelementptr inbounds i8, ptr %7, i64 12
  %352 = load i32, ptr %351, align 4, !tbaa !10
  %353 = tail call signext i32 @FmoGetNextMBNr(i32 noundef signext %352) #17
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %355, label %378

355:                                              ; preds = %350
  %356 = load ptr, ptr @img, align 8, !tbaa !6
  %357 = getelementptr inbounds i8, ptr %356, i64 120
  %358 = load i32, ptr %357, align 8, !tbaa !60
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %378

360:                                              ; preds = %355
  %361 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %358, ptr %361, align 4, !tbaa !141
  %362 = getelementptr inbounds i8, ptr %17, i64 8
  store i32 0, ptr %362, align 8, !tbaa !143
  %363 = getelementptr inbounds i8, ptr %17, i64 32
  store ptr @ue_linfo, ptr %363, align 8, !tbaa !144
  store i32 2, ptr %17, align 8, !tbaa !145
  %364 = getelementptr inbounds i8, ptr %75, i64 104
  %365 = load ptr, ptr %364, align 8, !tbaa !146
  %366 = tail call signext i32 %365(ptr noundef nonnull %17, ptr noundef %75) #17
  %367 = getelementptr inbounds i8, ptr %17, i64 12
  %368 = load i32, ptr %367, align 4, !tbaa !147
  %369 = getelementptr inbounds i8, ptr %11, i64 28
  %370 = load i32, ptr %369, align 4, !tbaa !39
  %371 = add nsw i32 %370, %368
  store i32 %371, ptr %369, align 4, !tbaa !39
  %372 = load i32, ptr %367, align 4, !tbaa !147
  %373 = getelementptr inbounds i8, ptr %17, i64 48
  %374 = load i32, ptr %11, align 8, !tbaa !122
  %375 = add nsw i32 %374, 1
  store i32 %375, ptr %11, align 8, !tbaa !122
  %376 = load ptr, ptr @img, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 120
  store i32 0, ptr %377, align 8, !tbaa !60
  br label %378

378:                                              ; preds = %211, %208, %203, %350, %355, %360, %290, %113
  %379 = phi ptr [ %136, %113 ], [ %223, %211 ], [ %199, %208 ], [ %199, %203 ], [ %301, %290 ], [ %373, %360 ], [ %17, %355 ], [ %17, %350 ]
  %380 = phi i32 [ %135, %113 ], [ %222, %211 ], [ %200, %208 ], [ %200, %203 ], [ %300, %290 ], [ %372, %360 ], [ 0, %355 ], [ 0, %350 ]
  %381 = load i32, ptr %26, align 8, !tbaa !43
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %378
  %384 = load ptr, ptr @img, align 8, !tbaa !6
  %385 = getelementptr inbounds i8, ptr %384, i64 24
  %386 = load i32, ptr %385, align 8, !tbaa !42
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %390 = getelementptr inbounds i8, ptr %389, i64 1156
  %391 = load i32, ptr %390, align 4, !tbaa !188
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i32
  br label %394

394:                                              ; preds = %383, %388
  %395 = phi i32 [ %393, %388 ], [ 1, %383 ]
  %396 = getelementptr inbounds i8, ptr %11, i64 472
  store i32 %395, ptr %396, align 8, !tbaa !189
  br label %767

397:                                              ; preds = %378
  %398 = getelementptr inbounds i8, ptr %11, i64 472
  store i32 1, ptr %398, align 8, !tbaa !189
  switch i32 %381, label %729 [
    i32 14, label %399
    i32 8, label %647
  ]

399:                                              ; preds = %397
  %400 = load ptr, ptr %75, align 8, !tbaa !64
  %401 = getelementptr inbounds i8, ptr %400, i64 4
  %402 = load i32, ptr %401, align 4, !tbaa !67
  %403 = icmp slt i32 %402, 8
  %404 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %403, label %405, label %422

405:                                              ; preds = %399
  %406 = getelementptr inbounds i8, ptr %404, i64 2984
  %407 = load i32, ptr %406, align 8, !tbaa !74
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %422, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds i8, ptr %379, i64 12
  store i32 %402, ptr %410, align 4, !tbaa !147
  %411 = add nsw i32 %402, %380
  %412 = getelementptr inbounds i8, ptr %379, i64 20
  store i32 0, ptr %412, align 4, !tbaa !186
  %413 = getelementptr inbounds i8, ptr %11, i64 40
  %414 = load i32, ptr %413, align 4, !tbaa !39
  %415 = add nsw i32 %414, %402
  store i32 %415, ptr %413, align 4, !tbaa !39
  %416 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %379, ptr noundef nonnull %400) #17
  %417 = getelementptr inbounds i8, ptr %379, i64 32
  store ptr @ue_linfo, ptr %417, align 8, !tbaa !144
  %418 = getelementptr inbounds i8, ptr %379, i64 48
  %419 = load i32, ptr %11, align 8, !tbaa !122
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %11, align 8, !tbaa !122
  %421 = load ptr, ptr @input, align 8, !tbaa !6
  br label %422

422:                                              ; preds = %409, %405, %399
  %423 = phi ptr [ %404, %405 ], [ %421, %409 ], [ %404, %399 ]
  %424 = phi ptr [ %379, %405 ], [ %418, %409 ], [ %379, %399 ]
  %425 = phi i32 [ %380, %405 ], [ %411, %409 ], [ %380, %399 ]
  %426 = getelementptr inbounds i8, ptr %11, i64 40
  br label %427

427:                                              ; preds = %422, %481
  %428 = phi ptr [ %423, %422 ], [ %475, %481 ]
  %429 = phi i32 [ 0, %422 ], [ %482, %481 ]
  %430 = phi i32 [ %425, %422 ], [ %478, %481 ]
  %431 = phi ptr [ %424, %422 ], [ %477, %481 ]
  %432 = load ptr, ptr @img, align 8, !tbaa !6
  %433 = getelementptr inbounds i8, ptr %432, i64 156
  %434 = load i32, ptr %433, align 4, !tbaa !21
  %435 = add nsw i32 %434, %429
  %436 = sext i32 %435 to i64
  br label %437

437:                                              ; preds = %427, %474
  %438 = phi ptr [ %428, %427 ], [ %475, %474 ]
  %439 = phi ptr [ %428, %427 ], [ %476, %474 ]
  %440 = phi i32 [ 0, %427 ], [ %479, %474 ]
  %441 = phi i32 [ %430, %427 ], [ %478, %474 ]
  %442 = phi ptr [ %431, %427 ], [ %477, %474 ]
  %443 = getelementptr inbounds i8, ptr %439, i64 2984
  %444 = load i32, ptr %443, align 8, !tbaa !74
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %474, label %446

446:                                              ; preds = %437
  %447 = getelementptr inbounds i8, ptr %442, i64 32
  store ptr @ue_linfo, ptr %447, align 8, !tbaa !144
  %448 = load ptr, ptr @img, align 8, !tbaa !6
  %449 = getelementptr inbounds i8, ptr %448, i64 90484
  %450 = load i32, ptr %449, align 4, !tbaa !40
  %451 = getelementptr inbounds i8, ptr %442, i64 12
  store i32 %450, ptr %451, align 4, !tbaa !147
  %452 = add nsw i32 %450, %441
  %453 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %454 = getelementptr inbounds i8, ptr %453, i64 6424
  %455 = load ptr, ptr %454, align 8, !tbaa !163
  %456 = getelementptr inbounds ptr, ptr %455, i64 %436
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %448, i64 152
  %459 = load i32, ptr %458, align 8, !tbaa !20
  %460 = add nsw i32 %459, %440
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i16, ptr %457, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !153
  %464 = zext i16 %463 to i32
  %465 = getelementptr inbounds i8, ptr %442, i64 20
  store i32 %464, ptr %465, align 4, !tbaa !186
  %466 = load i32, ptr %426, align 4, !tbaa !39
  %467 = add nsw i32 %466, %450
  store i32 %467, ptr %426, align 4, !tbaa !39
  %468 = load ptr, ptr %75, align 8, !tbaa !64
  %469 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %442, ptr noundef %468) #17
  %470 = getelementptr inbounds i8, ptr %442, i64 48
  %471 = load i32, ptr %11, align 8, !tbaa !122
  %472 = add nsw i32 %471, 1
  store i32 %472, ptr %11, align 8, !tbaa !122
  %473 = load ptr, ptr @input, align 8, !tbaa !6
  br label %474

474:                                              ; preds = %446, %437
  %475 = phi ptr [ %438, %437 ], [ %473, %446 ]
  %476 = phi ptr [ %439, %437 ], [ %473, %446 ]
  %477 = phi ptr [ %442, %437 ], [ %470, %446 ]
  %478 = phi i32 [ %441, %437 ], [ %452, %446 ]
  %479 = add nuw nsw i32 %440, 1
  %480 = icmp eq i32 %479, 16
  br i1 %480, label %481, label %437

481:                                              ; preds = %474
  %482 = add nuw nsw i32 %429, 1
  %483 = icmp eq i32 %482, 16
  br i1 %483, label %484, label %427

484:                                              ; preds = %481
  %485 = load ptr, ptr @img, align 8, !tbaa !6
  %486 = getelementptr inbounds i8, ptr %485, i64 90548
  %487 = load i32, ptr %486, align 4, !tbaa !30
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %862, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds i8, ptr %11, i64 44
  %491 = getelementptr inbounds i8, ptr %485, i64 90560
  %492 = load i32, ptr %491, align 8, !tbaa !33
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %862

494:                                              ; preds = %489, %560
  %495 = phi ptr [ %561, %560 ], [ %475, %489 ]
  %496 = phi ptr [ %562, %560 ], [ %485, %489 ]
  %497 = phi i32 [ %565, %560 ], [ 0, %489 ]
  %498 = phi i32 [ %564, %560 ], [ %478, %489 ]
  %499 = phi ptr [ %563, %560 ], [ %477, %489 ]
  %500 = getelementptr inbounds i8, ptr %496, i64 90556
  %501 = load i32, ptr %500, align 4, !tbaa !31
  %502 = icmp sgt i32 %501, 0
  br i1 %502, label %503, label %560

503:                                              ; preds = %494
  %504 = getelementptr inbounds i8, ptr %496, i64 164
  %505 = load i32, ptr %504, align 4, !tbaa !34
  %506 = add nsw i32 %505, %497
  %507 = sext i32 %506 to i64
  br label %508

508:                                              ; preds = %503, %549
  %509 = phi ptr [ %495, %503 ], [ %550, %549 ]
  %510 = phi ptr [ %496, %503 ], [ %551, %549 ]
  %511 = phi ptr [ %496, %503 ], [ %552, %549 ]
  %512 = phi ptr [ %495, %503 ], [ %553, %549 ]
  %513 = phi i32 [ 0, %503 ], [ %556, %549 ]
  %514 = phi i32 [ %498, %503 ], [ %555, %549 ]
  %515 = phi ptr [ %499, %503 ], [ %554, %549 ]
  %516 = getelementptr inbounds i8, ptr %512, i64 2984
  %517 = load i32, ptr %516, align 8, !tbaa !74
  %518 = icmp eq i32 %517, 1
  br i1 %518, label %549, label %519

519:                                              ; preds = %508
  %520 = getelementptr inbounds i8, ptr %515, i64 32
  store ptr @ue_linfo, ptr %520, align 8, !tbaa !144
  %521 = getelementptr inbounds i8, ptr %511, i64 90488
  %522 = load i32, ptr %521, align 8, !tbaa !41
  %523 = getelementptr inbounds i8, ptr %515, i64 12
  store i32 %522, ptr %523, align 4, !tbaa !147
  %524 = add nsw i32 %522, %514
  %525 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %526 = getelementptr inbounds i8, ptr %525, i64 6464
  %527 = load ptr, ptr %526, align 8, !tbaa !168
  %528 = load ptr, ptr %527, align 8, !tbaa !6
  %529 = getelementptr inbounds ptr, ptr %528, i64 %507
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %511, i64 160
  %532 = load i32, ptr %531, align 8, !tbaa !32
  %533 = add nsw i32 %532, %513
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i16, ptr %530, i64 %534
  %536 = load i16, ptr %535, align 2, !tbaa !153
  %537 = zext i16 %536 to i32
  %538 = getelementptr inbounds i8, ptr %515, i64 20
  store i32 %537, ptr %538, align 4, !tbaa !186
  %539 = load ptr, ptr %75, align 8, !tbaa !64
  %540 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %515, ptr noundef %539) #17
  %541 = load i32, ptr %523, align 4, !tbaa !147
  %542 = load i32, ptr %490, align 4, !tbaa !39
  %543 = add nsw i32 %542, %541
  store i32 %543, ptr %490, align 4, !tbaa !39
  %544 = getelementptr inbounds i8, ptr %515, i64 48
  %545 = load i32, ptr %11, align 8, !tbaa !122
  %546 = add nsw i32 %545, 1
  store i32 %546, ptr %11, align 8, !tbaa !122
  %547 = load ptr, ptr @input, align 8, !tbaa !6
  %548 = load ptr, ptr @img, align 8, !tbaa !6
  br label %549

549:                                              ; preds = %519, %508
  %550 = phi ptr [ %509, %508 ], [ %547, %519 ]
  %551 = phi ptr [ %510, %508 ], [ %548, %519 ]
  %552 = phi ptr [ %511, %508 ], [ %548, %519 ]
  %553 = phi ptr [ %512, %508 ], [ %547, %519 ]
  %554 = phi ptr [ %515, %508 ], [ %544, %519 ]
  %555 = phi i32 [ %514, %508 ], [ %524, %519 ]
  %556 = add nuw nsw i32 %513, 1
  %557 = getelementptr inbounds i8, ptr %552, i64 90556
  %558 = load i32, ptr %557, align 4, !tbaa !31
  %559 = icmp slt i32 %556, %558
  br i1 %559, label %508, label %560

560:                                              ; preds = %549, %494
  %561 = phi ptr [ %495, %494 ], [ %550, %549 ]
  %562 = phi ptr [ %496, %494 ], [ %551, %549 ]
  %563 = phi ptr [ %499, %494 ], [ %554, %549 ]
  %564 = phi i32 [ %498, %494 ], [ %555, %549 ]
  %565 = add nuw nsw i32 %497, 1
  %566 = getelementptr inbounds i8, ptr %562, i64 90560
  %567 = load i32, ptr %566, align 8, !tbaa !33
  %568 = icmp slt i32 %565, %567
  br i1 %568, label %494, label %569

569:                                              ; preds = %560
  %570 = icmp sgt i32 %567, 0
  br i1 %570, label %571, label %862

571:                                              ; preds = %569, %638
  %572 = phi ptr [ %639, %638 ], [ %561, %569 ]
  %573 = phi ptr [ %640, %638 ], [ %562, %569 ]
  %574 = phi i32 [ %643, %638 ], [ 0, %569 ]
  %575 = phi i32 [ %642, %638 ], [ %564, %569 ]
  %576 = phi ptr [ %641, %638 ], [ %563, %569 ]
  %577 = getelementptr inbounds i8, ptr %573, i64 90556
  %578 = load i32, ptr %577, align 4, !tbaa !31
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %638

580:                                              ; preds = %571
  %581 = getelementptr inbounds i8, ptr %573, i64 164
  %582 = load i32, ptr %581, align 4, !tbaa !34
  %583 = add nsw i32 %582, %574
  %584 = sext i32 %583 to i64
  br label %585

585:                                              ; preds = %627, %580
  %586 = phi ptr [ %572, %580 ], [ %628, %627 ]
  %587 = phi ptr [ %573, %580 ], [ %629, %627 ]
  %588 = phi ptr [ %573, %580 ], [ %630, %627 ]
  %589 = phi ptr [ %572, %580 ], [ %631, %627 ]
  %590 = phi i32 [ 0, %580 ], [ %634, %627 ]
  %591 = phi i32 [ %575, %580 ], [ %633, %627 ]
  %592 = phi ptr [ %576, %580 ], [ %632, %627 ]
  %593 = getelementptr inbounds i8, ptr %589, i64 2984
  %594 = load i32, ptr %593, align 8, !tbaa !74
  %595 = icmp eq i32 %594, 1
  br i1 %595, label %627, label %596

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %592, i64 32
  store ptr @ue_linfo, ptr %597, align 8, !tbaa !144
  %598 = getelementptr inbounds i8, ptr %588, i64 90488
  %599 = load i32, ptr %598, align 8, !tbaa !41
  %600 = getelementptr inbounds i8, ptr %592, i64 12
  store i32 %599, ptr %600, align 4, !tbaa !147
  %601 = add nsw i32 %599, %591
  %602 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %603 = getelementptr inbounds i8, ptr %602, i64 6464
  %604 = load ptr, ptr %603, align 8, !tbaa !168
  %605 = getelementptr inbounds i8, ptr %604, i64 8
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = getelementptr inbounds ptr, ptr %606, i64 %584
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = getelementptr inbounds i8, ptr %588, i64 160
  %610 = load i32, ptr %609, align 8, !tbaa !32
  %611 = add nsw i32 %610, %590
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i16, ptr %608, i64 %612
  %614 = load i16, ptr %613, align 2, !tbaa !153
  %615 = zext i16 %614 to i32
  %616 = getelementptr inbounds i8, ptr %592, i64 20
  store i32 %615, ptr %616, align 4, !tbaa !186
  %617 = load ptr, ptr %75, align 8, !tbaa !64
  %618 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %592, ptr noundef %617) #17
  %619 = load i32, ptr %600, align 4, !tbaa !147
  %620 = load i32, ptr %490, align 4, !tbaa !39
  %621 = add nsw i32 %620, %619
  store i32 %621, ptr %490, align 4, !tbaa !39
  %622 = getelementptr inbounds i8, ptr %592, i64 48
  %623 = load i32, ptr %11, align 8, !tbaa !122
  %624 = add nsw i32 %623, 1
  store i32 %624, ptr %11, align 8, !tbaa !122
  %625 = load ptr, ptr @input, align 8, !tbaa !6
  %626 = load ptr, ptr @img, align 8, !tbaa !6
  br label %627

627:                                              ; preds = %596, %585
  %628 = phi ptr [ %586, %585 ], [ %625, %596 ]
  %629 = phi ptr [ %587, %585 ], [ %626, %596 ]
  %630 = phi ptr [ %588, %585 ], [ %626, %596 ]
  %631 = phi ptr [ %589, %585 ], [ %625, %596 ]
  %632 = phi ptr [ %592, %585 ], [ %622, %596 ]
  %633 = phi i32 [ %591, %585 ], [ %601, %596 ]
  %634 = add nuw nsw i32 %590, 1
  %635 = getelementptr inbounds i8, ptr %630, i64 90556
  %636 = load i32, ptr %635, align 4, !tbaa !31
  %637 = icmp slt i32 %634, %636
  br i1 %637, label %585, label %638

638:                                              ; preds = %627, %571
  %639 = phi ptr [ %572, %571 ], [ %628, %627 ]
  %640 = phi ptr [ %573, %571 ], [ %629, %627 ]
  %641 = phi ptr [ %576, %571 ], [ %632, %627 ]
  %642 = phi i32 [ %575, %571 ], [ %633, %627 ]
  %643 = add nuw nsw i32 %574, 1
  %644 = getelementptr inbounds i8, ptr %640, i64 90560
  %645 = load i32, ptr %644, align 8, !tbaa !33
  %646 = icmp slt i32 %643, %645
  br i1 %646, label %571, label %862

647:                                              ; preds = %397
  %648 = load ptr, ptr %70, align 8, !tbaa !63
  %649 = load i32, ptr %72, align 4, !tbaa !39
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.datapartition, ptr %648, i64 %650
  %652 = getelementptr inbounds i8, ptr %11, i64 376
  %653 = getelementptr inbounds i8, ptr %651, i64 104
  %654 = getelementptr inbounds i8, ptr %11, i64 392
  %655 = getelementptr inbounds i8, ptr %11, i64 28
  br label %656

656:                                              ; preds = %647, %716
  %657 = phi i64 [ 0, %647 ], [ %718, %716 ]
  %658 = phi i32 [ %380, %647 ], [ %696, %716 ]
  %659 = phi ptr [ %379, %647 ], [ %697, %716 ]
  %660 = load ptr, ptr @input, align 8, !tbaa !6
  %661 = getelementptr inbounds i8, ptr %660, i64 2984
  %662 = load i32, ptr %661, align 8, !tbaa !74
  %663 = icmp eq i32 %662, 0
  %664 = select i1 %663, i64 32, i64 40
  %665 = select i1 %663, ptr @ue_linfo, ptr @writeB8_typeInfo_CABAC
  %666 = getelementptr inbounds i8, ptr %659, i64 %664
  store ptr %665, ptr %666, align 8, !tbaa !6
  %667 = getelementptr inbounds [4 x i32], ptr %652, i64 0, i64 %657
  %668 = load i32, ptr %667, align 4, !tbaa !39
  %669 = load ptr, ptr @img, align 8, !tbaa !6
  %670 = getelementptr inbounds i8, ptr %669, i64 24
  %671 = load i32, ptr %670, align 8, !tbaa !42
  %672 = icmp eq i32 %671, 1
  br i1 %672, label %675, label %673

673:                                              ; preds = %656
  %674 = add nsw i32 %668, -4
  br label %685

675:                                              ; preds = %656
  %676 = getelementptr inbounds [4 x i32], ptr %654, i64 0, i64 %657
  %677 = load i32, ptr %676, align 4, !tbaa !39
  %678 = sext i32 %668 to i64
  %679 = getelementptr inbounds [8 x i32], ptr @B8Mode2Value.b8start, i64 0, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !39
  %681 = getelementptr inbounds [8 x i32], ptr @B8Mode2Value.b8inc, i64 0, i64 %678
  %682 = load i32, ptr %681, align 4, !tbaa !39
  %683 = mul nsw i32 %682, %677
  %684 = add nsw i32 %683, %680
  br label %685

685:                                              ; preds = %673, %675
  %686 = phi i32 [ %674, %673 ], [ %684, %675 ]
  %687 = getelementptr inbounds i8, ptr %659, i64 4
  store i32 %686, ptr %687, align 4, !tbaa !141
  %688 = getelementptr inbounds i8, ptr %659, i64 8
  store i32 0, ptr %688, align 8, !tbaa !143
  store i32 2, ptr %659, align 8, !tbaa !145
  %689 = load ptr, ptr %653, align 8, !tbaa !146
  %690 = tail call signext i32 %689(ptr noundef nonnull %659, ptr noundef %651) #17
  %691 = getelementptr inbounds i8, ptr %659, i64 12
  %692 = load i32, ptr %691, align 4, !tbaa !147
  %693 = load i32, ptr %655, align 4, !tbaa !39
  %694 = add nsw i32 %693, %692
  store i32 %694, ptr %655, align 4, !tbaa !39
  %695 = load i32, ptr %691, align 4, !tbaa !147
  %696 = add nsw i32 %695, %658
  %697 = getelementptr inbounds i8, ptr %659, i64 48
  %698 = load i32, ptr %11, align 8, !tbaa !122
  %699 = add nsw i32 %698, 1
  store i32 %699, ptr %11, align 8, !tbaa !122
  %700 = load i32, ptr %667, align 4, !tbaa !39
  %701 = freeze i32 %700
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %711

703:                                              ; preds = %685
  %704 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %705 = getelementptr inbounds i8, ptr %704, i64 1156
  %706 = load i32, ptr %705, align 4, !tbaa !188
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %716, label %708

708:                                              ; preds = %703
  %709 = load i32, ptr %398, align 8, !tbaa !189
  %710 = and i32 %709, 1
  br label %716

711:                                              ; preds = %685
  %712 = icmp eq i32 %701, 4
  %713 = load i32, ptr %398, align 8, !tbaa !189
  %714 = and i32 %713, 1
  %715 = select i1 %712, i32 %714, i32 0
  br label %716

716:                                              ; preds = %711, %703, %708
  %717 = phi i32 [ %710, %708 ], [ 0, %703 ], [ %715, %711 ]
  store i32 %717, ptr %398, align 8, !tbaa !189
  %718 = add nuw nsw i64 %657, 1
  %719 = icmp eq i64 %718, 4
  br i1 %719, label %720, label %656

720:                                              ; preds = %716
  %721 = tail call signext i32 @writeMotionInfo2NAL()
  %722 = add nsw i32 %721, %696
  %723 = load ptr, ptr @img, align 8, !tbaa !6
  %724 = getelementptr inbounds i8, ptr %723, i64 31584
  %725 = load i32, ptr %11, align 8, !tbaa !122
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %724, i64 0, i64 %726
  %728 = load i32, ptr %26, align 8, !tbaa !43
  br label %729

729:                                              ; preds = %397, %720
  %730 = phi i32 [ %728, %720 ], [ %381, %397 ]
  %731 = phi ptr [ %651, %720 ], [ %75, %397 ]
  %732 = phi ptr [ %727, %720 ], [ %379, %397 ]
  %733 = phi i32 [ %722, %720 ], [ %380, %397 ]
  switch i32 %730, label %767 [
    i32 13, label %734
    i32 9, label %734
  ]

734:                                              ; preds = %729, %729
  %735 = load ptr, ptr @input, align 8, !tbaa !6
  %736 = getelementptr inbounds i8, ptr %735, i64 3892
  %737 = load i32, ptr %736, align 4, !tbaa !47
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %767, label %739

739:                                              ; preds = %734
  %740 = getelementptr inbounds i8, ptr %11, i64 468
  %741 = load i32, ptr %740, align 4, !tbaa !46
  %742 = getelementptr inbounds i8, ptr %732, i64 4
  store i32 %741, ptr %742, align 4, !tbaa !141
  store i32 0, ptr %732, align 8, !tbaa !145
  %743 = getelementptr inbounds i8, ptr %735, i64 2984
  %744 = load i32, ptr %743, align 8, !tbaa !74
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %752

746:                                              ; preds = %739
  %747 = getelementptr inbounds i8, ptr %732, i64 32
  store ptr @ue_linfo, ptr %747, align 8, !tbaa !144
  %748 = getelementptr inbounds i8, ptr %732, i64 20
  store i32 %741, ptr %748, align 4, !tbaa !186
  %749 = getelementptr inbounds i8, ptr %732, i64 12
  store i32 1, ptr %749, align 4, !tbaa !147
  %750 = load ptr, ptr %731, align 8, !tbaa !64
  %751 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %732, ptr noundef %750) #17
  br label %757

752:                                              ; preds = %739
  %753 = getelementptr inbounds i8, ptr %732, i64 40
  store ptr @writeMB_transform_size_CABAC, ptr %753, align 8, !tbaa !184
  %754 = getelementptr inbounds i8, ptr %731, i64 104
  %755 = load ptr, ptr %754, align 8, !tbaa !146
  %756 = tail call signext i32 %755(ptr noundef nonnull %732, ptr noundef %731) #17
  br label %757

757:                                              ; preds = %752, %746
  %758 = getelementptr inbounds i8, ptr %732, i64 12
  %759 = load i32, ptr %758, align 4, !tbaa !147
  %760 = getelementptr inbounds i8, ptr %11, i64 28
  %761 = load i32, ptr %760, align 4, !tbaa !39
  %762 = add nsw i32 %761, %759
  store i32 %762, ptr %760, align 4, !tbaa !39
  %763 = load i32, ptr %758, align 4, !tbaa !147
  %764 = add nsw i32 %763, %733
  %765 = load i32, ptr %11, align 8, !tbaa !122
  %766 = add nsw i32 %765, 1
  store i32 %766, ptr %11, align 8, !tbaa !122
  br label %767

767:                                              ; preds = %394, %729, %757, %734
  %768 = phi i32 [ %764, %757 ], [ %733, %734 ], [ %733, %729 ], [ %380, %394 ]
  %769 = tail call signext i32 @writeIntra4x4Modes(i32 noundef signext -1)
  %770 = add nsw i32 %769, %768
  %771 = load i32, ptr %69, align 4, !tbaa !182
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %825, label %773

773:                                              ; preds = %767
  %774 = load ptr, ptr @img, align 8, !tbaa !6
  %775 = getelementptr inbounds i8, ptr %774, i64 90548
  %776 = load i32, ptr %775, align 4, !tbaa !30
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %825, label %778

778:                                              ; preds = %773
  %779 = getelementptr inbounds i8, ptr %774, i64 31576
  %780 = load ptr, ptr %779, align 8, !tbaa !24
  %781 = getelementptr inbounds i8, ptr %774, i64 12
  %782 = load i32, ptr %781, align 4, !tbaa !10
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.macroblock, ptr %780, i64 %783
  %785 = getelementptr inbounds i8, ptr %774, i64 31584
  %786 = load i32, ptr %784, align 8, !tbaa !122
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %785, i64 0, i64 %787
  %789 = getelementptr inbounds i8, ptr %774, i64 31568
  %790 = load ptr, ptr %789, align 8, !tbaa !54
  %791 = load ptr, ptr @input, align 8, !tbaa !6
  %792 = getelementptr inbounds i8, ptr %791, i64 2992
  %793 = load i32, ptr %792, align 8, !tbaa !137
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %794
  %796 = load ptr, ptr %795, align 8, !tbaa !6
  %797 = getelementptr inbounds i8, ptr %791, i64 2984
  %798 = load i32, ptr %797, align 8, !tbaa !74
  %799 = icmp eq i32 %798, 0
  %800 = select i1 %799, i64 32, i64 40
  %801 = select i1 %799, ptr @ue_linfo, ptr @writeCIPredMode_CABAC
  %802 = getelementptr inbounds i8, ptr %788, i64 %800
  store ptr %801, ptr %802, align 8, !tbaa !6
  %803 = getelementptr inbounds i8, ptr %784, i64 416
  %804 = load i32, ptr %803, align 8, !tbaa !44
  %805 = getelementptr inbounds i8, ptr %788, i64 4
  store i32 %804, ptr %805, align 4, !tbaa !141
  %806 = getelementptr inbounds i8, ptr %788, i64 8
  store i32 0, ptr %806, align 8, !tbaa !143
  store i32 4, ptr %788, align 8, !tbaa !145
  %807 = getelementptr inbounds i8, ptr %790, i64 24
  %808 = load ptr, ptr %807, align 8, !tbaa !63
  %809 = getelementptr inbounds i8, ptr %796, i64 16
  %810 = load i32, ptr %809, align 4, !tbaa !39
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.datapartition, ptr %808, i64 %811
  %813 = getelementptr inbounds i8, ptr %812, i64 104
  %814 = load ptr, ptr %813, align 8, !tbaa !146
  %815 = tail call signext i32 %814(ptr noundef nonnull %788, ptr noundef %812) #17
  %816 = getelementptr inbounds i8, ptr %788, i64 12
  %817 = load i32, ptr %816, align 4, !tbaa !147
  %818 = getelementptr inbounds i8, ptr %784, i64 44
  %819 = load i32, ptr %818, align 4, !tbaa !39
  %820 = add nsw i32 %819, %817
  store i32 %820, ptr %818, align 4, !tbaa !39
  %821 = load i32, ptr %816, align 4, !tbaa !147
  %822 = load i32, ptr %784, align 8, !tbaa !122
  %823 = add nsw i32 %822, 1
  store i32 %823, ptr %784, align 8, !tbaa !122
  %824 = add nsw i32 %821, %770
  br label %829

825:                                              ; preds = %773, %767
  %826 = icmp eq i32 %0, 0
  br i1 %826, label %827, label %829

827:                                              ; preds = %825
  %828 = getelementptr inbounds i8, ptr %11, i64 416
  store i32 0, ptr %828, align 8, !tbaa !44
  br label %829

829:                                              ; preds = %825, %827, %778
  %830 = phi i32 [ %824, %778 ], [ %770, %825 ], [ %770, %827 ]
  %831 = load i32, ptr %26, align 8, !tbaa !43
  switch i32 %831, label %832 [
    i32 0, label %836
    i32 8, label %836
  ]

832:                                              ; preds = %829
  %833 = tail call signext i32 @writeMotionInfo2NAL()
  %834 = add nsw i32 %833, %830
  %835 = load i32, ptr %26, align 8, !tbaa !43
  br label %836

836:                                              ; preds = %829, %829, %832
  %837 = phi i32 [ %831, %829 ], [ %831, %829 ], [ %835, %832 ]
  %838 = phi i32 [ %830, %829 ], [ %830, %829 ], [ %834, %832 ]
  %839 = icmp eq i32 %837, 0
  br i1 %839, label %840, label %849

840:                                              ; preds = %836
  %841 = load ptr, ptr @img, align 8, !tbaa !6
  %842 = getelementptr inbounds i8, ptr %841, i64 24
  %843 = load i32, ptr %842, align 8, !tbaa !42
  %844 = icmp eq i32 %843, 1
  br i1 %844, label %845, label %862

845:                                              ; preds = %840
  %846 = getelementptr inbounds i8, ptr %11, i64 364
  %847 = load i32, ptr %846, align 4, !tbaa !45
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %862, label %849

849:                                              ; preds = %845, %836
  %850 = tail call signext i32 @writeCBPandLumaCoeff()
  store i32 %850, ptr %1, align 4, !tbaa !39
  %851 = load ptr, ptr @img, align 8, !tbaa !6
  %852 = getelementptr inbounds i8, ptr %851, i64 90548
  %853 = load i32, ptr %852, align 4, !tbaa !30
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %859, label %855

855:                                              ; preds = %849
  %856 = tail call signext i32 @writeChromaCoeff()
  %857 = load i32, ptr %1, align 4, !tbaa !39
  %858 = add nsw i32 %857, %856
  store i32 %858, ptr %1, align 4, !tbaa !39
  br label %859

859:                                              ; preds = %855, %849
  %860 = phi i32 [ %858, %855 ], [ %850, %849 ]
  %861 = add nsw i32 %860, %838
  br label %862

862:                                              ; preds = %638, %489, %569, %840, %845, %859, %484
  %863 = phi i32 [ %478, %484 ], [ %861, %859 ], [ %838, %845 ], [ %838, %840 ], [ %564, %569 ], [ %478, %489 ], [ %642, %638 ]
  ret i32 %863
}

declare dso_local signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local void @writeFieldModeInfo_CABAC(ptr noundef, ptr noundef) #1

declare dso_local void @writeMB_typeInfo_CABAC(ptr noundef, ptr noundef) #1

declare dso_local signext i32 @field_flag_inference() local_unnamed_addr #1

declare dso_local void @writeMB_skip_flagInfo_CABAC(ptr noundef, ptr noundef) #1

declare dso_local signext i32 @FmoGetNextMBNr(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @writeB8_typeInfo_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @writeMotionInfo2NAL() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 1
  %11 = load ptr, ptr @input, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 84
  %13 = getelementptr inbounds i8, ptr %7, i64 72
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 8
  %16 = select i1 %15, i32 4, i32 %14
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x [2 x i32]], ptr %12, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = ashr i32 %19, 2
  %21 = getelementptr inbounds [8 x [2 x i32]], ptr %12, i64 0, i64 %17, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !39
  %23 = ashr i32 %22, 2
  switch i32 %14, label %61 [
    i32 9, label %157
    i32 10, label %157
    i32 13, label %157
    i32 0, label %157
    i32 8, label %24
  ]

24:                                               ; preds = %0
  %25 = getelementptr inbounds i8, ptr %1, i64 148
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = getelementptr inbounds i8, ptr %1, i64 144
  %28 = load i32, ptr %27, align 8, !tbaa !17
  %29 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 6480
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = sext i32 %28 to i64
  %34 = sext i32 %26 to i64
  %35 = add i32 %28, 3
  %36 = add i32 %26, 3
  %37 = tail call i32 @llvm.smax.i32(i32 %28, i32 %35)
  %38 = sext i32 %37 to i64
  %39 = tail call i32 @llvm.smax.i32(i32 %26, i32 %36)
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %53, %24
  %42 = phi i64 [ %34, %24 ], [ %54, %53 ]
  %43 = getelementptr inbounds ptr, ptr %32, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  br label %48

45:                                               ; preds = %48
  %46 = add nsw i64 %49, 1
  %47 = icmp eq i64 %49, %38
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %33, %41 ], [ %46, %45 ]
  %50 = getelementptr inbounds i8, ptr %44, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !58
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %45, label %61

53:                                               ; preds = %45
  %54 = add nsw i64 %42, 1
  %55 = icmp eq i64 %42, %40
  br i1 %55, label %56, label %41

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %11, i64 2984
  %58 = load i32, ptr %57, align 8, !tbaa !74
  %59 = icmp eq i32 %58, 1
  %60 = select i1 %59, i1 true, i1 %10
  br i1 %60, label %61, label %160

61:                                               ; preds = %48, %0, %56
  %62 = getelementptr inbounds i8, ptr %7, i64 392
  %63 = getelementptr inbounds i8, ptr %7, i64 376
  br label %64

64:                                               ; preds = %61, %105
  %65 = phi i32 [ 0, %61 ], [ %106, %105 ]
  %66 = phi i32 [ 0, %61 ], [ %102, %105 ]
  %67 = load ptr, ptr @img, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 148
  %69 = load i32, ptr %68, align 4, !tbaa !19
  %70 = add nsw i32 %69, %65
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %64, %101
  %73 = phi i32 [ 0, %64 ], [ %103, %101 ]
  %74 = phi i32 [ %66, %64 ], [ %102, %101 ]
  %75 = ashr i32 %73, 1
  %76 = add nsw i32 %75, %65
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], ptr %62, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !39
  switch i32 %79, label %101 [
    i32 0, label %80
    i32 2, label %80
  ]

80:                                               ; preds = %72, %72
  %81 = getelementptr inbounds [4 x i32], ptr %63, i64 0, i64 %77
  %82 = load i32, ptr %81, align 4, !tbaa !39
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 6480
  %87 = load ptr, ptr %86, align 8, !tbaa !128
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds ptr, ptr %88, i64 %71
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = load ptr, ptr @img, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %91, i64 144
  %93 = load i32, ptr %92, align 8, !tbaa !17
  %94 = add nsw i32 %93, %73
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %90, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !58
  %98 = zext i8 %97 to i32
  %99 = tail call signext i32 @writeReferenceFrame(i32 noundef signext %82, i32 noundef signext %73, i32 noundef signext %65, i32 noundef signext 1, i32 noundef signext %98)
  %100 = add nsw i32 %99, %74
  br label %101

101:                                              ; preds = %72, %80, %84
  %102 = phi i32 [ %100, %84 ], [ %74, %80 ], [ %74, %72 ]
  %103 = add nsw i32 %73, %20
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %72, label %105

105:                                              ; preds = %101
  %106 = add nsw i32 %65, %23
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %64, label %108

108:                                              ; preds = %105, %152
  %109 = phi i32 [ %153, %152 ], [ 0, %105 ]
  %110 = phi i32 [ %149, %152 ], [ %102, %105 ]
  %111 = load ptr, ptr @img, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %111, i64 148
  %113 = load i32, ptr %112, align 4, !tbaa !19
  %114 = add nsw i32 %113, %109
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %108, %148
  %117 = phi i32 [ 0, %108 ], [ %150, %148 ]
  %118 = phi i32 [ %110, %108 ], [ %149, %148 ]
  %119 = ashr i32 %117, 1
  %120 = add nsw i32 %119, %109
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], ptr %62, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !39
  %124 = add i32 %123, -1
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %126, label %148

126:                                              ; preds = %116
  %127 = getelementptr inbounds [4 x i32], ptr %63, i64 0, i64 %121
  %128 = load i32, ptr %127, align 4, !tbaa !39
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %131, i64 6480
  %133 = load ptr, ptr %132, align 8, !tbaa !128
  %134 = getelementptr inbounds i8, ptr %133, i64 8
  %135 = load ptr, ptr %134, align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %115
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load ptr, ptr @img, align 8, !tbaa !6
  %139 = getelementptr inbounds i8, ptr %138, i64 144
  %140 = load i32, ptr %139, align 8, !tbaa !17
  %141 = add nsw i32 %140, %117
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %137, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !58
  %145 = zext i8 %144 to i32
  %146 = tail call signext i32 @writeReferenceFrame(i32 noundef signext %128, i32 noundef signext %117, i32 noundef signext %109, i32 noundef signext 0, i32 noundef signext %145)
  %147 = add nsw i32 %146, %118
  br label %148

148:                                              ; preds = %116, %126, %130
  %149 = phi i32 [ %147, %130 ], [ %118, %126 ], [ %118, %116 ]
  %150 = add nsw i32 %117, %20
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %116, label %152

152:                                              ; preds = %148
  %153 = add nsw i32 %109, %23
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %108, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %13, align 8, !tbaa !43
  br label %157

157:                                              ; preds = %155, %0, %0, %0, %0
  %158 = phi i32 [ %14, %0 ], [ %14, %0 ], [ %14, %0 ], [ %14, %0 ], [ %156, %155 ]
  %159 = phi i32 [ 0, %0 ], [ 0, %0 ], [ 0, %0 ], [ 0, %0 ], [ %149, %155 ]
  switch i32 %158, label %160 [
    i32 9, label %211
    i32 10, label %211
    i32 13, label %211
    i32 0, label %211
  ]

160:                                              ; preds = %56, %157
  %161 = phi i32 [ %159, %157 ], [ 0, %56 ]
  %162 = getelementptr inbounds i8, ptr %7, i64 392
  %163 = getelementptr inbounds i8, ptr %7, i64 376
  br label %164

164:                                              ; preds = %160, %207
  %165 = phi i32 [ 0, %160 ], [ %172, %207 ]
  %166 = phi i32 [ %161, %160 ], [ %204, %207 ]
  %167 = load ptr, ptr @img, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 148
  %169 = load i32, ptr %168, align 4, !tbaa !19
  %170 = add nsw i32 %169, %165
  %171 = sext i32 %170 to i64
  %172 = add nsw i32 %165, %23
  br label %173

173:                                              ; preds = %164, %203
  %174 = phi i32 [ 0, %164 ], [ %205, %203 ]
  %175 = phi i32 [ %166, %164 ], [ %204, %203 ]
  %176 = ashr i32 %174, 1
  %177 = add nsw i32 %176, %165
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i32], ptr %162, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !39
  switch i32 %180, label %203 [
    i32 0, label %181
    i32 2, label %181
  ]

181:                                              ; preds = %173, %173
  %182 = getelementptr inbounds [4 x i32], ptr %163, i64 0, i64 %178
  %183 = load i32, ptr %182, align 4, !tbaa !39
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %187 = getelementptr inbounds i8, ptr %186, i64 6480
  %188 = load ptr, ptr %187, align 8, !tbaa !128
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = getelementptr inbounds ptr, ptr %189, i64 %171
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = load ptr, ptr @img, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %192, i64 144
  %194 = load i32, ptr %193, align 8, !tbaa !17
  %195 = add nsw i32 %194, %174
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %191, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !58
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %174, %20
  %201 = tail call signext i32 @writeMotionVector8x8(i32 noundef signext %174, i32 noundef signext %165, i32 noundef signext %200, i32 noundef signext %172, i32 noundef signext %199, i32 noundef signext 0, i32 noundef signext %183)
  %202 = add nsw i32 %201, %175
  br label %203

203:                                              ; preds = %173, %181, %185
  %204 = phi i32 [ %202, %185 ], [ %175, %181 ], [ %175, %173 ]
  %205 = add nsw i32 %174, %20
  %206 = icmp slt i32 %205, 4
  br i1 %206, label %173, label %207

207:                                              ; preds = %203
  %208 = icmp slt i32 %172, 4
  br i1 %208, label %164, label %209

209:                                              ; preds = %207
  %210 = load i32, ptr %13, align 8, !tbaa !43
  br label %211

211:                                              ; preds = %209, %157, %157, %157, %157
  %212 = phi i32 [ %210, %209 ], [ %158, %157 ], [ %158, %157 ], [ %158, %157 ], [ %158, %157 ]
  %213 = phi i32 [ %204, %209 ], [ %159, %157 ], [ %159, %157 ], [ %159, %157 ], [ %159, %157 ]
  switch i32 %212, label %214 [
    i32 9, label %268
    i32 10, label %268
    i32 13, label %268
  ]

214:                                              ; preds = %211
  %215 = icmp ne i32 %212, 0
  %216 = select i1 %215, i1 %10, i1 false
  br i1 %216, label %217, label %268

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %7, i64 392
  %219 = getelementptr inbounds i8, ptr %7, i64 376
  br label %220

220:                                              ; preds = %217, %266
  %221 = phi i32 [ 0, %217 ], [ %228, %266 ]
  %222 = phi i32 [ %213, %217 ], [ %263, %266 ]
  %223 = load ptr, ptr @img, align 8, !tbaa !6
  %224 = getelementptr inbounds i8, ptr %223, i64 148
  %225 = load i32, ptr %224, align 4, !tbaa !19
  %226 = add nsw i32 %225, %221
  %227 = sext i32 %226 to i64
  %228 = add nsw i32 %221, %23
  br label %229

229:                                              ; preds = %220, %262
  %230 = phi i32 [ 0, %220 ], [ %264, %262 ]
  %231 = phi i32 [ %222, %220 ], [ %263, %262 ]
  %232 = ashr i32 %230, 1
  %233 = add nsw i32 %232, %221
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i32], ptr %218, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !39
  %237 = add i32 %236, -1
  %238 = icmp ult i32 %237, 2
  br i1 %238, label %239, label %262

239:                                              ; preds = %229
  %240 = getelementptr inbounds [4 x i32], ptr %219, i64 0, i64 %234
  %241 = load i32, ptr %240, align 4, !tbaa !39
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %262, label %243

243:                                              ; preds = %239
  %244 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %244, i64 6480
  %246 = load ptr, ptr %245, align 8, !tbaa !128
  %247 = getelementptr inbounds i8, ptr %246, i64 8
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = getelementptr inbounds ptr, ptr %248, i64 %227
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = load ptr, ptr @img, align 8, !tbaa !6
  %252 = getelementptr inbounds i8, ptr %251, i64 144
  %253 = load i32, ptr %252, align 8, !tbaa !17
  %254 = add nsw i32 %253, %230
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, ptr %250, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !58
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %230, %20
  %260 = tail call signext i32 @writeMotionVector8x8(i32 noundef signext %230, i32 noundef signext %221, i32 noundef signext %259, i32 noundef signext %228, i32 noundef signext %258, i32 noundef signext 1, i32 noundef signext %241)
  %261 = add nsw i32 %260, %231
  br label %262

262:                                              ; preds = %229, %239, %243
  %263 = phi i32 [ %261, %243 ], [ %231, %239 ], [ %231, %229 ]
  %264 = add nsw i32 %230, %20
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %229, label %266

266:                                              ; preds = %262
  %267 = icmp slt i32 %228, 4
  br i1 %267, label %220, label %268

268:                                              ; preds = %266, %211, %211, %211, %214
  %269 = phi i32 [ %213, %214 ], [ %213, %211 ], [ %213, %211 ], [ %213, %211 ], [ %263, %266 ]
  ret i32 %269
}

declare dso_local void @writeMB_transform_size_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @writeChromaIntraPredMode() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %1, i64 31584
  %9 = load i32, ptr %7, align 8, !tbaa !122
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %8, i64 0, i64 %10
  %12 = getelementptr inbounds i8, ptr %1, i64 31568
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 2992
  %16 = load i32, ptr %15, align 8, !tbaa !137
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %14, i64 2984
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i64 32, i64 40
  %24 = select i1 %22, ptr @ue_linfo, ptr @writeCIPredMode_CABAC
  %25 = getelementptr inbounds i8, ptr %11, i64 %23
  store ptr %24, ptr %25, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %7, i64 416
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds i8, ptr %11, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !141
  %29 = getelementptr inbounds i8, ptr %11, i64 8
  store i32 0, ptr %29, align 8, !tbaa !143
  store i32 4, ptr %11, align 8, !tbaa !145
  %30 = getelementptr inbounds i8, ptr %13, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = getelementptr inbounds i8, ptr %19, i64 16
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.datapartition, ptr %31, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 104
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = tail call signext i32 %37(ptr noundef nonnull %11, ptr noundef %35) #17
  %39 = getelementptr inbounds i8, ptr %11, i64 12
  %40 = load i32, ptr %39, align 4, !tbaa !147
  %41 = getelementptr inbounds i8, ptr %7, i64 44
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = add nsw i32 %42, %40
  store i32 %43, ptr %41, align 4, !tbaa !39
  %44 = load i32, ptr %39, align 4, !tbaa !147
  %45 = load i32, ptr %7, align 8, !tbaa !122
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 8, !tbaa !122
  ret i32 %44
}

; Function Attrs: nounwind
define dso_local signext i32 @writeCBPandLumaCoeff() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %1, i64 31584
  %9 = load i32, ptr %7, align 8, !tbaa !122
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %8, i64 0, i64 %10
  %12 = getelementptr inbounds i8, ptr %1, i64 31568
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 2992
  %16 = load i32, ptr %15, align 8, !tbaa !137
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %7, i64 364
  %21 = load i32, ptr %20, align 4, !tbaa !45
  %22 = getelementptr inbounds i8, ptr %1, i64 14144
  %23 = load ptr, ptr %22, align 8, !tbaa !190
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %24, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %7, i64 72
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %135, label %31

31:                                               ; preds = %0
  %32 = getelementptr inbounds i8, ptr %11, i64 4
  store i32 %21, ptr %32, align 4, !tbaa !141
  switch i32 %29, label %37 [
    i32 9, label %33
    i32 12, label %33
    i32 13, label %33
  ]

33:                                               ; preds = %31, %31, %31
  %34 = getelementptr inbounds i8, ptr %14, i64 2984
  %35 = load i32, ptr %34, align 8, !tbaa !74
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %14, i64 2984
  %39 = load i32, ptr %38, align 8, !tbaa !74
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = phi ptr [ @cbp_linfo_intra, %33 ], [ @cbp_linfo_inter, %37 ]
  %43 = phi i32 [ 6, %33 ], [ 11, %37 ]
  %44 = getelementptr inbounds i8, ptr %11, i64 32
  store ptr %42, ptr %44, align 8, !tbaa !144
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = phi i32 [ 6, %33 ], [ 11, %37 ], [ %43, %41 ]
  store i32 %46, ptr %11, align 8, !tbaa !145
  %47 = load ptr, ptr @input, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 2984
  %49 = load i32, ptr %48, align 8, !tbaa !74
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %11, i64 40
  store ptr @writeCBP_CABAC, ptr %52, align 8, !tbaa !184
  br label %53

53:                                               ; preds = %51, %45
  %54 = getelementptr inbounds i8, ptr %13, i64 24
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = zext nneg i32 %46 to i64
  %57 = getelementptr inbounds i32, ptr %19, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !39
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.datapartition, ptr %55, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 104
  %62 = load ptr, ptr %61, align 8, !tbaa !146
  %63 = tail call signext i32 %62(ptr noundef nonnull %11, ptr noundef %60) #17
  %64 = getelementptr inbounds i8, ptr %11, i64 12
  %65 = load i32, ptr %64, align 4, !tbaa !147
  %66 = getelementptr inbounds i8, ptr %7, i64 36
  %67 = load i32, ptr %66, align 4, !tbaa !39
  %68 = add nsw i32 %67, %65
  store i32 %68, ptr %66, align 4, !tbaa !39
  %69 = load i32, ptr %64, align 4, !tbaa !147
  %70 = getelementptr inbounds i8, ptr %11, i64 48
  %71 = load i32, ptr %7, align 8, !tbaa !122
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %7, align 8, !tbaa !122
  %73 = load i32, ptr %28, align 8, !tbaa !43
  %74 = add i32 %73, -1
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %92, label %76

76:                                               ; preds = %53
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %76
  %79 = load ptr, ptr @img, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %79, i64 24
  %81 = load i32, ptr %80, align 8, !tbaa !42
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 1156
  %86 = load i32, ptr %85, align 4, !tbaa !188
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83, %78, %76
  %89 = getelementptr inbounds i8, ptr %7, i64 472
  %90 = load i32, ptr %89, align 8, !tbaa !189
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %135, label %92

92:                                               ; preds = %53, %88
  switch i32 %73, label %93 [
    i32 13, label %135
    i32 9, label %135
  ]

93:                                               ; preds = %83, %92
  %94 = load i32, ptr %20, align 4, !tbaa !45
  %95 = and i32 %94, 15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %135, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @input, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %98, i64 3892
  %100 = load i32, ptr %99, align 4, !tbaa !47
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %135, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %7, i64 468
  %104 = load i32, ptr %103, align 4, !tbaa !46
  %105 = getelementptr inbounds i8, ptr %11, i64 52
  store i32 %104, ptr %105, align 4, !tbaa !141
  store i32 0, ptr %70, align 8, !tbaa !145
  %106 = getelementptr inbounds i8, ptr %98, i64 2984
  %107 = load i32, ptr %106, align 8, !tbaa !74
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i64 80, i64 88
  %110 = select i1 %108, ptr @ue_linfo, ptr @writeMB_transform_size_CABAC
  %111 = getelementptr inbounds i8, ptr %11, i64 %109
  store ptr %110, ptr %111, align 8, !tbaa !6
  %112 = load ptr, ptr @input, align 8, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %112, i64 2984
  %114 = load i32, ptr %113, align 8, !tbaa !74
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = getelementptr inbounds i8, ptr %11, i64 68
  store i32 %104, ptr %117, align 4, !tbaa !186
  %118 = getelementptr inbounds i8, ptr %11, i64 60
  store i32 1, ptr %118, align 4, !tbaa !147
  %119 = load ptr, ptr %60, align 8, !tbaa !64
  %120 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %70, ptr noundef %119) #17
  br label %124

121:                                              ; preds = %102
  %122 = load ptr, ptr %61, align 8, !tbaa !146
  %123 = tail call signext i32 %122(ptr noundef nonnull %70, ptr noundef nonnull %60) #17
  br label %124

124:                                              ; preds = %121, %116
  %125 = getelementptr inbounds i8, ptr %11, i64 60
  %126 = load i32, ptr %125, align 4, !tbaa !147
  %127 = getelementptr inbounds i8, ptr %7, i64 28
  %128 = load i32, ptr %127, align 4, !tbaa !39
  %129 = add nsw i32 %128, %126
  store i32 %129, ptr %127, align 4, !tbaa !39
  %130 = load i32, ptr %125, align 4, !tbaa !147
  %131 = add nsw i32 %130, %69
  %132 = getelementptr inbounds i8, ptr %11, i64 96
  %133 = load i32, ptr %7, align 8, !tbaa !122
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %7, align 8, !tbaa !122
  br label %135

135:                                              ; preds = %93, %92, %92, %88, %97, %124, %0
  %136 = phi ptr [ %11, %0 ], [ %132, %124 ], [ %70, %97 ], [ %70, %88 ], [ %70, %92 ], [ %70, %92 ], [ %70, %93 ]
  %137 = phi i32 [ 0, %0 ], [ %131, %124 ], [ %69, %97 ], [ %69, %88 ], [ %69, %92 ], [ %69, %92 ], [ %69, %93 ]
  %138 = icmp eq i32 %21, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, ptr %28, align 8, !tbaa !43
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %185

142:                                              ; preds = %139, %135
  %143 = getelementptr inbounds i8, ptr %7, i64 8
  %144 = load i32, ptr %143, align 8, !tbaa !99
  %145 = getelementptr inbounds i8, ptr %136, i64 4
  store i32 %144, ptr %145, align 4, !tbaa !141
  %146 = load ptr, ptr @input, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 2984
  %148 = load i32, ptr %147, align 8, !tbaa !74
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i64 32, i64 40
  %151 = select i1 %149, ptr @se_linfo, ptr @writeDquant_CABAC
  %152 = getelementptr inbounds i8, ptr %136, i64 %150
  store ptr %151, ptr %152, align 8, !tbaa !6
  %153 = load i32, ptr %28, align 8, !tbaa !43
  %154 = add i32 %153, -9
  %155 = icmp ult i32 %154, 5
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds [5 x i32], ptr @switch.table.writeCBPandLumaCoeff, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4
  br label %160

160:                                              ; preds = %156, %142
  %161 = phi i32 [ 16, %142 ], [ %159, %156 ]
  store i32 %161, ptr %136, align 8, !tbaa !145
  %162 = load ptr, ptr @img, align 8, !tbaa !6
  %163 = getelementptr inbounds i8, ptr %162, i64 31568
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = getelementptr inbounds i8, ptr %164, i64 24
  %166 = load ptr, ptr %165, align 8, !tbaa !63
  %167 = zext nneg i32 %161 to i64
  %168 = getelementptr inbounds i32, ptr %19, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !39
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.datapartition, ptr %166, i64 %170
  %172 = getelementptr inbounds i8, ptr %171, i64 104
  %173 = load ptr, ptr %172, align 8, !tbaa !146
  %174 = tail call signext i32 %173(ptr noundef nonnull %136, ptr noundef %171) #17
  %175 = getelementptr inbounds i8, ptr %136, i64 12
  %176 = load i32, ptr %175, align 4, !tbaa !147
  %177 = getelementptr inbounds i8, ptr %7, i64 48
  %178 = load i32, ptr %177, align 4, !tbaa !39
  %179 = add nsw i32 %178, %176
  store i32 %179, ptr %177, align 4, !tbaa !39
  %180 = load i32, ptr %175, align 4, !tbaa !147
  %181 = add nsw i32 %180, %137
  %182 = getelementptr inbounds i8, ptr %136, i64 48
  %183 = load i32, ptr %7, align 8, !tbaa !122
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %7, align 8, !tbaa !122
  br label %185

185:                                              ; preds = %160, %139
  %186 = phi ptr [ %182, %160 ], [ %136, %139 ]
  %187 = phi i32 [ %181, %160 ], [ %137, %139 ]
  %188 = load ptr, ptr @img, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 128
  %190 = load ptr, ptr %189, align 8, !tbaa !187
  %191 = getelementptr inbounds i8, ptr %188, i64 12
  %192 = load i32, ptr %191, align 4, !tbaa !10
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %190, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %188, i64 90540
  %198 = load i32, ptr %197, align 4, !tbaa !174
  %199 = add nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = shl nsw i64 %200, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %196, i8 0, i64 %201, i1 false)
  %202 = load ptr, ptr @img, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %202, i64 128
  %204 = load ptr, ptr %203, align 8, !tbaa !187
  %205 = getelementptr inbounds i8, ptr %202, i64 12
  %206 = load i32, ptr %205, align 4, !tbaa !10
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %204, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = getelementptr inbounds i8, ptr %209, i64 8
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %202, i64 90540
  %213 = load i32, ptr %212, align 4, !tbaa !174
  %214 = add nsw i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = shl nsw i64 %215, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %211, i8 0, i64 %216, i1 false)
  %217 = load ptr, ptr @img, align 8, !tbaa !6
  %218 = getelementptr inbounds i8, ptr %217, i64 128
  %219 = load ptr, ptr %218, align 8, !tbaa !187
  %220 = getelementptr inbounds i8, ptr %217, i64 12
  %221 = load i32, ptr %220, align 4, !tbaa !10
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %219, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds i8, ptr %224, i64 16
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = getelementptr inbounds i8, ptr %217, i64 90540
  %228 = load i32, ptr %227, align 4, !tbaa !174
  %229 = add nsw i32 %228, 4
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %226, i8 0, i64 %231, i1 false)
  %232 = load ptr, ptr @img, align 8, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %232, i64 128
  %234 = load ptr, ptr %233, align 8, !tbaa !187
  %235 = getelementptr inbounds i8, ptr %232, i64 12
  %236 = load i32, ptr %235, align 4, !tbaa !10
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %234, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  %240 = getelementptr inbounds i8, ptr %239, i64 24
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = getelementptr inbounds i8, ptr %232, i64 90540
  %243 = load i32, ptr %242, align 4, !tbaa !174
  %244 = add nsw i32 %243, 4
  %245 = sext i32 %244 to i64
  %246 = shl nsw i64 %245, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %241, i8 0, i64 %246, i1 false)
  %247 = load i32, ptr %28, align 8, !tbaa !43
  %248 = icmp eq i32 %247, 10
  br i1 %248, label %289, label %249

249:                                              ; preds = %185
  %250 = getelementptr inbounds i8, ptr %7, i64 468
  %251 = and i32 %21, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %7, i64 376
  %255 = load i32, ptr %254, align 4, !tbaa !39
  %256 = load i32, ptr %250, align 4, !tbaa !46
  %257 = tail call signext i32 @writeLumaCoeff8x8(i32 noundef signext 0, i32 noundef signext %255, i32 noundef signext %256)
  %258 = add nsw i32 %257, %187
  br label %259

259:                                              ; preds = %249, %253
  %260 = phi i32 [ %258, %253 ], [ %187, %249 ]
  %261 = and i32 %21, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %7, i64 380
  %265 = load i32, ptr %264, align 4, !tbaa !39
  %266 = load i32, ptr %250, align 4, !tbaa !46
  %267 = tail call signext i32 @writeLumaCoeff8x8(i32 noundef signext 1, i32 noundef signext %265, i32 noundef signext %266)
  %268 = add nsw i32 %267, %260
  br label %269

269:                                              ; preds = %263, %259
  %270 = phi i32 [ %268, %263 ], [ %260, %259 ]
  %271 = and i32 %21, 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds i8, ptr %7, i64 384
  %275 = load i32, ptr %274, align 4, !tbaa !39
  %276 = load i32, ptr %250, align 4, !tbaa !46
  %277 = tail call signext i32 @writeLumaCoeff8x8(i32 noundef signext 2, i32 noundef signext %275, i32 noundef signext %276)
  %278 = add nsw i32 %277, %270
  br label %279

279:                                              ; preds = %273, %269
  %280 = phi i32 [ %278, %273 ], [ %270, %269 ]
  %281 = and i32 %21, 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %514, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds i8, ptr %7, i64 388
  %285 = load i32, ptr %284, align 4, !tbaa !39
  %286 = load i32, ptr %250, align 4, !tbaa !46
  %287 = tail call signext i32 @writeLumaCoeff8x8(i32 noundef signext 3, i32 noundef signext %285, i32 noundef signext %286)
  %288 = add nsw i32 %287, %280
  br label %514

289:                                              ; preds = %185
  %290 = load ptr, ptr @input, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 2984
  %292 = load i32, ptr %291, align 8, !tbaa !74
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds i8, ptr %13, i64 24
  %296 = getelementptr inbounds i8, ptr %19, i64 28
  %297 = getelementptr inbounds i8, ptr %7, i64 40
  br label %301

298:                                              ; preds = %289
  %299 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0)
  %300 = add nsw i32 %299, %187
  br label %341

301:                                              ; preds = %294, %301
  %302 = phi i64 [ 0, %294 ], [ %337, %301 ]
  %303 = phi i32 [ %187, %294 ], [ %333, %301 ]
  %304 = phi ptr [ %186, %294 ], [ %334, %301 ]
  %305 = getelementptr inbounds i32, ptr %25, i64 %302
  %306 = load i32, ptr %305, align 4, !tbaa !39
  %307 = getelementptr inbounds i8, ptr %304, i64 4
  store i32 %306, ptr %307, align 4, !tbaa !141
  %308 = getelementptr inbounds i32, ptr %27, i64 %302
  %309 = load i32, ptr %308, align 4, !tbaa !39
  %310 = getelementptr inbounds i8, ptr %304, i64 8
  store i32 %309, ptr %310, align 8, !tbaa !143
  %311 = load ptr, ptr @input, align 8, !tbaa !6
  %312 = getelementptr inbounds i8, ptr %311, i64 2984
  %313 = load i32, ptr %312, align 8, !tbaa !74
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %314, i64 32, i64 40
  %316 = select i1 %314, ptr @levrun_linfo_inter, ptr @writeRunLevel_CABAC
  %317 = getelementptr inbounds i8, ptr %304, i64 %315
  store ptr %316, ptr %317, align 8, !tbaa !6
  %318 = getelementptr inbounds i8, ptr %304, i64 24
  store i32 0, ptr %318, align 8, !tbaa !183
  store i32 7, ptr %304, align 8, !tbaa !145
  %319 = load ptr, ptr @img, align 8, !tbaa !6
  %320 = getelementptr inbounds i8, ptr %319, i64 80
  store i32 1, ptr %320, align 8, !tbaa !191
  %321 = load ptr, ptr %295, align 8, !tbaa !63
  %322 = load i32, ptr %296, align 4, !tbaa !39
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.datapartition, ptr %321, i64 %323
  %325 = getelementptr inbounds i8, ptr %324, i64 104
  %326 = load ptr, ptr %325, align 8, !tbaa !146
  %327 = tail call signext i32 %326(ptr noundef nonnull %304, ptr noundef %324) #17
  %328 = getelementptr inbounds i8, ptr %304, i64 12
  %329 = load i32, ptr %328, align 4, !tbaa !147
  %330 = load i32, ptr %297, align 4, !tbaa !39
  %331 = add nsw i32 %330, %329
  store i32 %331, ptr %297, align 4, !tbaa !39
  %332 = load i32, ptr %328, align 4, !tbaa !147
  %333 = add nsw i32 %332, %303
  %334 = getelementptr inbounds i8, ptr %304, i64 48
  %335 = load i32, ptr %7, align 8, !tbaa !122
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %7, align 8, !tbaa !122
  %337 = add nuw nsw i64 %302, 1
  %338 = icmp ult i64 %302, 16
  %339 = icmp ne i32 %306, 0
  %340 = select i1 %338, i1 %339, i1 false
  br i1 %340, label %301, label %341

341:                                              ; preds = %301, %298
  %342 = phi ptr [ %186, %298 ], [ %334, %301 ]
  %343 = phi i32 [ %300, %298 ], [ %333, %301 ]
  %344 = and i32 %21, 15
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %514, label %346

346:                                              ; preds = %341
  %347 = getelementptr inbounds i8, ptr %13, i64 24
  %348 = getelementptr inbounds i8, ptr %19, i64 36
  %349 = getelementptr inbounds i8, ptr %7, i64 40
  br label %350

350:                                              ; preds = %346, %511
  %351 = phi i64 [ 2, %346 ], [ %513, %511 ]
  %352 = phi i64 [ 0, %346 ], [ %512, %511 ]
  %353 = phi i1 [ true, %346 ], [ false, %511 ]
  %354 = phi i32 [ %343, %346 ], [ %506, %511 ]
  %355 = phi ptr [ %342, %346 ], [ %505, %511 ]
  br label %356

356:                                              ; preds = %350, %509
  %357 = phi i64 [ 0, %350 ], [ %510, %509 ]
  %358 = phi i1 [ true, %350 ], [ false, %509 ]
  %359 = phi i32 [ %354, %350 ], [ %506, %509 ]
  %360 = phi ptr [ %355, %350 ], [ %505, %509 ]
  %361 = trunc nuw nsw i64 %357 to i32
  %362 = lshr exact i32 %361, 1
  %363 = trunc i64 %357 to i32
  %364 = lshr exact i32 %363, 1
  %365 = or disjoint i32 %363, 1
  br label %366

366:                                              ; preds = %356, %504
  %367 = phi i64 [ %352, %356 ], [ %507, %504 ]
  %368 = phi i32 [ %359, %356 ], [ %506, %504 ]
  %369 = phi ptr [ %360, %356 ], [ %505, %504 ]
  %370 = trunc nuw nsw i64 %367 to i32
  %371 = and i32 %370, 2147483646
  %372 = shl nuw i64 %367, 1
  %373 = and i64 %372, 2
  %374 = add nuw nsw i32 %362, %371
  %375 = load ptr, ptr @input, align 8, !tbaa !6
  %376 = getelementptr inbounds i8, ptr %375, i64 2984
  %377 = load i32, ptr %376, align 8, !tbaa !74
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %366
  %380 = trunc nuw nsw i64 %373 to i32
  %381 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 2, i32 noundef signext %374, i32 noundef signext %380, i32 noundef signext 0)
  %382 = add nsw i32 %381, %368
  br label %437

383:                                              ; preds = %366
  %384 = load ptr, ptr @img, align 8, !tbaa !6
  %385 = getelementptr inbounds i8, ptr %384, i64 14136
  %386 = load ptr, ptr %385, align 8, !tbaa !192
  %387 = zext nneg i32 %374 to i64
  %388 = getelementptr inbounds ptr, ptr %386, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  %390 = getelementptr inbounds ptr, ptr %389, i64 %373
  %391 = load ptr, ptr %390, align 8, !tbaa !6
  %392 = load ptr, ptr %391, align 8, !tbaa !6
  %393 = getelementptr inbounds i8, ptr %391, i64 8
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  %395 = getelementptr inbounds i8, ptr %384, i64 76
  store i32 %370, ptr %395, align 4, !tbaa !193
  %396 = getelementptr inbounds i8, ptr %384, i64 72
  store i32 %361, ptr %396, align 8, !tbaa !194
  br label %397

397:                                              ; preds = %383, %397
  %398 = phi i64 [ 0, %383 ], [ %433, %397 ]
  %399 = phi i32 [ %368, %383 ], [ %429, %397 ]
  %400 = phi ptr [ %369, %383 ], [ %430, %397 ]
  %401 = getelementptr inbounds i32, ptr %392, i64 %398
  %402 = load i32, ptr %401, align 4, !tbaa !39
  %403 = getelementptr inbounds i8, ptr %400, i64 4
  store i32 %402, ptr %403, align 4, !tbaa !141
  %404 = getelementptr inbounds i32, ptr %394, i64 %398
  %405 = load i32, ptr %404, align 4, !tbaa !39
  %406 = getelementptr inbounds i8, ptr %400, i64 8
  store i32 %405, ptr %406, align 8, !tbaa !143
  %407 = load ptr, ptr @input, align 8, !tbaa !6
  %408 = getelementptr inbounds i8, ptr %407, i64 2984
  %409 = load i32, ptr %408, align 8, !tbaa !74
  %410 = icmp eq i32 %409, 0
  %411 = select i1 %410, i64 32, i64 40
  %412 = select i1 %410, ptr @levrun_linfo_inter, ptr @writeRunLevel_CABAC
  %413 = getelementptr inbounds i8, ptr %400, i64 %411
  store ptr %412, ptr %413, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %400, i64 24
  store i32 1, ptr %414, align 8, !tbaa !183
  store i32 9, ptr %400, align 8, !tbaa !145
  %415 = load ptr, ptr @img, align 8, !tbaa !6
  %416 = getelementptr inbounds i8, ptr %415, i64 80
  store i32 1, ptr %416, align 8, !tbaa !191
  %417 = load ptr, ptr %347, align 8, !tbaa !63
  %418 = load i32, ptr %348, align 4, !tbaa !39
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.datapartition, ptr %417, i64 %419
  %421 = getelementptr inbounds i8, ptr %420, i64 104
  %422 = load ptr, ptr %421, align 8, !tbaa !146
  %423 = tail call signext i32 %422(ptr noundef nonnull %400, ptr noundef %420) #17
  %424 = getelementptr inbounds i8, ptr %400, i64 12
  %425 = load i32, ptr %424, align 4, !tbaa !147
  %426 = load i32, ptr %349, align 4, !tbaa !39
  %427 = add nsw i32 %426, %425
  store i32 %427, ptr %349, align 4, !tbaa !39
  %428 = load i32, ptr %424, align 4, !tbaa !147
  %429 = add nsw i32 %428, %399
  %430 = getelementptr inbounds i8, ptr %400, i64 48
  %431 = load i32, ptr %7, align 8, !tbaa !122
  %432 = add nsw i32 %431, 1
  store i32 %432, ptr %7, align 8, !tbaa !122
  %433 = add nuw nsw i64 %398, 1
  %434 = icmp ult i64 %398, 15
  %435 = icmp ne i32 %402, 0
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %397, label %437

437:                                              ; preds = %397, %379
  %438 = phi ptr [ %369, %379 ], [ %430, %397 ]
  %439 = phi i32 [ %382, %379 ], [ %429, %397 ]
  %440 = add nuw nsw i32 %364, %371
  %441 = or disjoint i64 %373, 1
  %442 = load ptr, ptr @input, align 8, !tbaa !6
  %443 = getelementptr inbounds i8, ptr %442, i64 2984
  %444 = load i32, ptr %443, align 8, !tbaa !74
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %500, label %446

446:                                              ; preds = %437
  %447 = load ptr, ptr @img, align 8, !tbaa !6
  %448 = getelementptr inbounds i8, ptr %447, i64 14136
  %449 = load ptr, ptr %448, align 8, !tbaa !192
  %450 = zext nneg i32 %440 to i64
  %451 = getelementptr inbounds ptr, ptr %449, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = getelementptr inbounds ptr, ptr %452, i64 %441
  %454 = load ptr, ptr %453, align 8, !tbaa !6
  %455 = load ptr, ptr %454, align 8, !tbaa !6
  %456 = getelementptr inbounds i8, ptr %454, i64 8
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %447, i64 76
  store i32 %370, ptr %458, align 4, !tbaa !193
  %459 = getelementptr inbounds i8, ptr %447, i64 72
  store i32 %365, ptr %459, align 8, !tbaa !194
  br label %460

460:                                              ; preds = %460, %446
  %461 = phi i64 [ 0, %446 ], [ %496, %460 ]
  %462 = phi i32 [ %439, %446 ], [ %492, %460 ]
  %463 = phi ptr [ %438, %446 ], [ %493, %460 ]
  %464 = getelementptr inbounds i32, ptr %455, i64 %461
  %465 = load i32, ptr %464, align 4, !tbaa !39
  %466 = getelementptr inbounds i8, ptr %463, i64 4
  store i32 %465, ptr %466, align 4, !tbaa !141
  %467 = getelementptr inbounds i32, ptr %457, i64 %461
  %468 = load i32, ptr %467, align 4, !tbaa !39
  %469 = getelementptr inbounds i8, ptr %463, i64 8
  store i32 %468, ptr %469, align 8, !tbaa !143
  %470 = load ptr, ptr @input, align 8, !tbaa !6
  %471 = getelementptr inbounds i8, ptr %470, i64 2984
  %472 = load i32, ptr %471, align 8, !tbaa !74
  %473 = icmp eq i32 %472, 0
  %474 = select i1 %473, i64 32, i64 40
  %475 = select i1 %473, ptr @levrun_linfo_inter, ptr @writeRunLevel_CABAC
  %476 = getelementptr inbounds i8, ptr %463, i64 %474
  store ptr %475, ptr %476, align 8, !tbaa !6
  %477 = getelementptr inbounds i8, ptr %463, i64 24
  store i32 1, ptr %477, align 8, !tbaa !183
  store i32 9, ptr %463, align 8, !tbaa !145
  %478 = load ptr, ptr @img, align 8, !tbaa !6
  %479 = getelementptr inbounds i8, ptr %478, i64 80
  store i32 1, ptr %479, align 8, !tbaa !191
  %480 = load ptr, ptr %347, align 8, !tbaa !63
  %481 = load i32, ptr %348, align 4, !tbaa !39
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.datapartition, ptr %480, i64 %482
  %484 = getelementptr inbounds i8, ptr %483, i64 104
  %485 = load ptr, ptr %484, align 8, !tbaa !146
  %486 = tail call signext i32 %485(ptr noundef nonnull %463, ptr noundef %483) #17
  %487 = getelementptr inbounds i8, ptr %463, i64 12
  %488 = load i32, ptr %487, align 4, !tbaa !147
  %489 = load i32, ptr %349, align 4, !tbaa !39
  %490 = add nsw i32 %489, %488
  store i32 %490, ptr %349, align 4, !tbaa !39
  %491 = load i32, ptr %487, align 4, !tbaa !147
  %492 = add nsw i32 %491, %462
  %493 = getelementptr inbounds i8, ptr %463, i64 48
  %494 = load i32, ptr %7, align 8, !tbaa !122
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr %7, align 8, !tbaa !122
  %496 = add nuw nsw i64 %461, 1
  %497 = icmp ult i64 %461, 15
  %498 = icmp ne i32 %465, 0
  %499 = select i1 %497, i1 %498, i1 false
  br i1 %499, label %460, label %504

500:                                              ; preds = %437
  %501 = trunc nuw nsw i64 %441 to i32
  %502 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 2, i32 noundef signext %440, i32 noundef signext %501, i32 noundef signext 0)
  %503 = add nsw i32 %502, %439
  br label %504

504:                                              ; preds = %460, %500
  %505 = phi ptr [ %438, %500 ], [ %493, %460 ]
  %506 = phi i32 [ %503, %500 ], [ %492, %460 ]
  %507 = add nuw nsw i64 %367, 1
  %508 = icmp eq i64 %507, %351
  br i1 %508, label %509, label %366

509:                                              ; preds = %504
  %510 = add nuw nsw i64 %357, 2
  br i1 %358, label %356, label %511

511:                                              ; preds = %509
  %512 = add nuw nsw i64 %352, 2
  %513 = add nuw nsw i64 %351, 2
  br i1 %353, label %350, label %514

514:                                              ; preds = %511, %279, %283, %341
  %515 = phi i32 [ %343, %341 ], [ %288, %283 ], [ %280, %279 ], [ %506, %511 ]
  ret i32 %515
}

; Function Attrs: nounwind
define dso_local signext i32 @writeChromaCoeff() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %1, i64 31584
  %9 = load i32, ptr %7, align 8, !tbaa !122
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %8, i64 0, i64 %10
  %12 = getelementptr inbounds i8, ptr %1, i64 31568
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 2992
  %16 = load i32, ptr %15, align 8, !tbaa !137
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %7, i64 364
  %21 = load i32, ptr %20, align 4, !tbaa !45
  %22 = getelementptr inbounds i8, ptr %1, i64 90548
  %23 = load i32, ptr %22, align 4, !tbaa !30
  %24 = add nsw i32 %23, -1
  %25 = icmp sgt i32 %21, 15
  br i1 %25, label %26, label %117

26:                                               ; preds = %0
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [3 x i32], ptr @__const.writeChromaCoeff.chroma_dc_context, i64 0, i64 %27
  %29 = getelementptr inbounds i8, ptr %7, i64 72
  %30 = getelementptr inbounds i8, ptr %13, i64 24
  %31 = getelementptr inbounds i8, ptr %7, i64 44
  br label %32

32:                                               ; preds = %26, %114
  %33 = phi i1 [ true, %26 ], [ false, %114 ]
  %34 = phi i64 [ 0, %26 ], [ 1, %114 ]
  %35 = phi i32 [ 0, %26 ], [ %116, %114 ]
  %36 = phi ptr [ %11, %26 ], [ %115, %114 ]
  %37 = load ptr, ptr @input, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 2984
  %39 = load i32, ptr %38, align 8, !tbaa !74
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = trunc nuw nsw i64 %34 to i32
  %43 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 6, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %42)
  %44 = add nsw i32 %43, %35
  br label %114

45:                                               ; preds = %32
  %46 = load ptr, ptr @img, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 14144
  %48 = load ptr, ptr %47, align 8, !tbaa !190
  %49 = getelementptr inbounds ptr, ptr %48, i64 %34
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %51, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %46, i64 90544
  %56 = load i32, ptr %55, align 8, !tbaa !195
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %114

58:                                               ; preds = %45
  %59 = load i32, ptr %28, align 4, !tbaa !39
  %60 = trunc nuw nsw i64 %34 to i32
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %106, %61 ]
  %63 = phi ptr [ %46, %58 ], [ %107, %61 ]
  %64 = phi i32 [ %35, %58 ], [ %102, %61 ]
  %65 = phi ptr [ %36, %58 ], [ %103, %61 ]
  %66 = getelementptr inbounds i32, ptr %52, i64 %62
  %67 = load i32, ptr %66, align 4, !tbaa !39
  %68 = getelementptr inbounds i8, ptr %65, i64 4
  store i32 %67, ptr %68, align 4, !tbaa !141
  %69 = getelementptr inbounds i32, ptr %54, i64 %62
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = getelementptr inbounds i8, ptr %65, i64 8
  store i32 %70, ptr %71, align 8, !tbaa !143
  %72 = load ptr, ptr @input, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 2984
  %74 = load i32, ptr %73, align 8, !tbaa !74
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i64 32, i64 40
  %77 = select i1 %75, ptr @levrun_linfo_c2x2, ptr @writeRunLevel_CABAC
  %78 = getelementptr inbounds i8, ptr %65, i64 %76
  store ptr %77, ptr %78, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %65, i64 24
  store i32 %59, ptr %79, align 8, !tbaa !183
  %80 = load i32, ptr %29, align 8, !tbaa !43
  %81 = add i32 %80, -9
  %82 = and i32 %81, -6
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 8, i32 13
  store i32 %84, ptr %65, align 8, !tbaa !145
  %85 = zext i1 %83 to i32
  %86 = getelementptr inbounds i8, ptr %63, i64 80
  store i32 %85, ptr %86, align 8, !tbaa !191
  %87 = getelementptr inbounds i8, ptr %63, i64 84
  store i32 %60, ptr %87, align 4, !tbaa !196
  %88 = load ptr, ptr %30, align 8, !tbaa !63
  %89 = zext nneg i32 %84 to i64
  %90 = getelementptr inbounds i32, ptr %19, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !39
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.datapartition, ptr %88, i64 %92
  %94 = getelementptr inbounds i8, ptr %93, i64 104
  %95 = load ptr, ptr %94, align 8, !tbaa !146
  %96 = tail call signext i32 %95(ptr noundef nonnull %65, ptr noundef %93) #17
  %97 = getelementptr inbounds i8, ptr %65, i64 12
  %98 = load i32, ptr %97, align 4, !tbaa !147
  %99 = load i32, ptr %31, align 4, !tbaa !39
  %100 = add nsw i32 %99, %98
  store i32 %100, ptr %31, align 4, !tbaa !39
  %101 = load i32, ptr %97, align 4, !tbaa !147
  %102 = add nsw i32 %101, %64
  %103 = getelementptr inbounds i8, ptr %65, i64 48
  %104 = load i32, ptr %7, align 8, !tbaa !122
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %7, align 8, !tbaa !122
  %106 = add nuw nsw i64 %62, 1
  %107 = load ptr, ptr @img, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 90544
  %109 = load i32, ptr %108, align 8, !tbaa !195
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %62, %110
  %112 = icmp ne i32 %67, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %61, label %114

114:                                              ; preds = %61, %45, %41
  %115 = phi ptr [ %36, %41 ], [ %36, %45 ], [ %103, %61 ]
  %116 = phi i32 [ %44, %41 ], [ %35, %45 ], [ %102, %61 ]
  br i1 %33, label %32, label %117

117:                                              ; preds = %114, %0
  %118 = phi ptr [ %11, %0 ], [ %115, %114 ]
  %119 = phi i32 [ 0, %0 ], [ %116, %114 ]
  %120 = and i32 %21, -16
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %245

122:                                              ; preds = %117
  %123 = load ptr, ptr @img, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 90540
  %125 = load i32, ptr %124, align 4, !tbaa !174
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %245

127:                                              ; preds = %122
  %128 = sext i32 %24 to i64
  %129 = getelementptr inbounds i8, ptr %7, i64 72
  %130 = getelementptr inbounds i8, ptr %13, i64 24
  %131 = getelementptr inbounds i8, ptr %7, i64 44
  br label %132

132:                                              ; preds = %127, %237
  %133 = phi i64 [ 4, %127 ], [ %238, %237 ]
  %134 = phi i32 [ %119, %127 ], [ %234, %237 ]
  %135 = phi ptr [ %118, %127 ], [ %233, %237 ]
  %136 = phi i32 [ -1, %127 ], [ %232, %237 ]
  %137 = add nsw i64 %133, -4
  %138 = trunc nuw nsw i64 %133 to i32
  br label %139

139:                                              ; preds = %132, %231
  %140 = phi i64 [ 0, %132 ], [ %235, %231 ]
  %141 = phi i32 [ %134, %132 ], [ %234, %231 ]
  %142 = phi ptr [ %135, %132 ], [ %233, %231 ]
  %143 = phi i32 [ %136, %132 ], [ %232, %231 ]
  %144 = load ptr, ptr @input, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 2984
  %146 = load i32, ptr %145, align 8, !tbaa !74
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @writeChromaCoeff.chroma_ac_param, i64 0, i64 %128, i64 %137, i64 %140
  %150 = load i8, ptr %149, align 1, !tbaa !58
  %151 = zext i8 %150 to i32
  %152 = trunc nuw nsw i64 %140 to i32
  %153 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 7, i32 noundef signext %138, i32 noundef signext %152, i32 noundef signext %151)
  %154 = add nsw i32 %153, %141
  br label %231

155:                                              ; preds = %139
  %156 = load ptr, ptr @img, align 8, !tbaa !6
  %157 = getelementptr inbounds i8, ptr %156, i64 14136
  %158 = load ptr, ptr %157, align 8, !tbaa !192
  %159 = getelementptr inbounds ptr, ptr %158, i64 %133
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds ptr, ptr %160, i64 %140
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %162, i64 8
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = add nsw i32 %143, 1
  %167 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %128, i64 %137, i64 %140
  %168 = load i8, ptr %167, align 1, !tbaa !58
  %169 = lshr i8 %168, 2
  %170 = zext nneg i8 %169 to i32
  %171 = getelementptr inbounds i8, ptr %156, i64 76
  store i32 %170, ptr %171, align 4, !tbaa !193
  %172 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %128, i64 %137, i64 %140
  %173 = load i8, ptr %172, align 1, !tbaa !58
  %174 = lshr i8 %173, 2
  %175 = zext nneg i8 %174 to i32
  %176 = getelementptr inbounds i8, ptr %156, i64 72
  store i32 %175, ptr %176, align 8, !tbaa !194
  br label %177

177:                                              ; preds = %155, %177
  %178 = phi i64 [ 0, %155 ], [ %227, %177 ]
  %179 = phi i32 [ %141, %155 ], [ %223, %177 ]
  %180 = phi ptr [ %142, %155 ], [ %224, %177 ]
  %181 = getelementptr inbounds i32, ptr %163, i64 %178
  %182 = load i32, ptr %181, align 4, !tbaa !39
  %183 = getelementptr inbounds i8, ptr %180, i64 4
  store i32 %182, ptr %183, align 4, !tbaa !141
  %184 = getelementptr inbounds i32, ptr %165, i64 %178
  %185 = load i32, ptr %184, align 4, !tbaa !39
  %186 = getelementptr inbounds i8, ptr %180, i64 8
  store i32 %185, ptr %186, align 8, !tbaa !143
  %187 = load ptr, ptr @input, align 8, !tbaa !6
  %188 = getelementptr inbounds i8, ptr %187, i64 2984
  %189 = load i32, ptr %188, align 8, !tbaa !74
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i64 32, i64 40
  %192 = select i1 %190, ptr @levrun_linfo_inter, ptr @writeRunLevel_CABAC
  %193 = getelementptr inbounds i8, ptr %180, i64 %191
  store ptr %192, ptr %193, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %180, i64 24
  store i32 7, ptr %194, align 8, !tbaa !183
  %195 = load i32, ptr %129, align 8, !tbaa !43
  %196 = add i32 %195, -9
  %197 = and i32 %196, -6
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 10, i32 15
  store i32 %199, ptr %180, align 8, !tbaa !145
  %200 = zext i1 %198 to i32
  %201 = load ptr, ptr @img, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 80
  store i32 %200, ptr %202, align 8, !tbaa !191
  %203 = getelementptr inbounds i8, ptr %201, i64 90540
  %204 = load i32, ptr %203, align 4, !tbaa !174
  %205 = shl i32 %204, 1
  %206 = icmp sge i32 %166, %205
  %207 = zext i1 %206 to i32
  %208 = getelementptr inbounds i8, ptr %201, i64 84
  store i32 %207, ptr %208, align 4, !tbaa !196
  %209 = load ptr, ptr %130, align 8, !tbaa !63
  %210 = zext nneg i32 %199 to i64
  %211 = getelementptr inbounds i32, ptr %19, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !39
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.datapartition, ptr %209, i64 %213
  %215 = getelementptr inbounds i8, ptr %214, i64 104
  %216 = load ptr, ptr %215, align 8, !tbaa !146
  %217 = tail call signext i32 %216(ptr noundef nonnull %180, ptr noundef %214) #17
  %218 = getelementptr inbounds i8, ptr %180, i64 12
  %219 = load i32, ptr %218, align 4, !tbaa !147
  %220 = load i32, ptr %131, align 4, !tbaa !39
  %221 = add nsw i32 %220, %219
  store i32 %221, ptr %131, align 4, !tbaa !39
  %222 = load i32, ptr %218, align 4, !tbaa !147
  %223 = add nsw i32 %222, %179
  %224 = getelementptr inbounds i8, ptr %180, i64 48
  %225 = load i32, ptr %7, align 8, !tbaa !122
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %7, align 8, !tbaa !122
  %227 = add nuw nsw i64 %178, 1
  %228 = icmp ult i64 %178, 15
  %229 = icmp ne i32 %182, 0
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %177, label %231

231:                                              ; preds = %177, %148
  %232 = phi i32 [ %143, %148 ], [ %166, %177 ]
  %233 = phi ptr [ %142, %148 ], [ %224, %177 ]
  %234 = phi i32 [ %154, %148 ], [ %223, %177 ]
  %235 = add nuw nsw i64 %140, 1
  %236 = icmp eq i64 %235, 4
  br i1 %236, label %237, label %139

237:                                              ; preds = %231
  %238 = add nuw nsw i64 %133, 1
  %239 = load ptr, ptr @img, align 8, !tbaa !6
  %240 = getelementptr inbounds i8, ptr %239, i64 90540
  %241 = load i32, ptr %240, align 4, !tbaa !174
  %242 = add nsw i32 %241, 3
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %133, %243
  br i1 %244, label %132, label %245

245:                                              ; preds = %237, %122, %117
  %246 = phi i32 [ %119, %117 ], [ %119, %122 ], [ %234, %237 ]
  ret i32 %246
}

; Function Attrs: nounwind
define dso_local void @write_terminating_bit(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @input, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2992
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 31568
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds i8, ptr %10, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds i8, ptr %7, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.datapartition, ptr %12, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 1, ptr %18, align 8, !tbaa !197
  %19 = getelementptr inbounds i8, ptr %16, i64 8
  tail call void @biari_encode_symbol_final(ptr noundef nonnull %19, i16 noundef signext %0) #17
  ret void
}

declare dso_local void @biari_encode_symbol_final(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare dso_local void @writeCIPredMode_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @set_last_dquant() local_unnamed_addr #12 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31576
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds i8, ptr %1, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 24
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %7, i64 364
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %0, %15
  %20 = getelementptr inbounds i8, ptr %7, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !99
  br label %22

22:                                               ; preds = %11, %15, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %15 ], [ 0, %11 ]
  store i32 %23, ptr @last_dquant, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind
define dso_local void @write_one_macroblock(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 31576
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds i8, ptr %3, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %10 = load ptr, ptr @input, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 220
  %12 = load i32, ptr %11, align 4, !tbaa !134
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %3, i64 24
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %9, i64 72
  %20 = load i32, ptr %19, align 8, !tbaa !43
  %21 = add i32 %20, -9
  %22 = and i32 %21, -6
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds i8, ptr %3, i64 89192
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  %27 = getelementptr inbounds i32, ptr %26, i64 %8
  store i32 %24, ptr %27, align 4, !tbaa !39
  br label %28

28:                                               ; preds = %18, %14, %1
  %29 = load i32, ptr %6, align 4, !tbaa !10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, ptr @intras, align 4, !tbaa !39
  br label %32

32:                                               ; preds = %31, %28
  %33 = getelementptr inbounds i8, ptr %9, i64 72
  %34 = load i32, ptr %33, align 8, !tbaa !43
  switch i32 %34, label %38 [
    i32 9, label %35
    i32 10, label %35
    i32 13, label %35
    i32 14, label %35
  ]

35:                                               ; preds = %32, %32, %32, %32
  %36 = load i32, ptr @intras, align 4, !tbaa !39
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @intras, align 4, !tbaa !39
  br label %38

38:                                               ; preds = %32, %35
  %39 = getelementptr inbounds i8, ptr %10, i64 2984
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %3, i64 31568
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !198
  %47 = icmp ne i32 %29, %46
  %48 = icmp ne i32 %0, 0
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %65

50:                                               ; preds = %42
  %51 = getelementptr inbounds i8, ptr %10, i64 2992
  %52 = load i32, ptr %51, align 8, !tbaa !137
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %44, i64 24
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds i8, ptr %55, i64 8
  %59 = load i32, ptr %58, align 4, !tbaa !39
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.datapartition, ptr %57, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = getelementptr inbounds i8, ptr %62, i64 40
  store i32 1, ptr %63, align 8, !tbaa !197
  %64 = getelementptr inbounds i8, ptr %61, i64 8
  tail call void @biari_encode_symbol_final(ptr noundef nonnull %64, i16 noundef signext 0) #17
  br label %65

65:                                               ; preds = %50, %42, %38
  store i32 1, ptr @cabac_encoding, align 4, !tbaa !39
  %66 = call signext i32 @writeMBLayer(i32 noundef signext 0, ptr noundef nonnull %2)
  %67 = load i32, ptr %33, align 8, !tbaa !43
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %68, label %70, label %138

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, ptr %69, i64 24
  %72 = load i32, ptr %71, align 8, !tbaa !42
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %9, i64 364
  %76 = load i32, ptr %75, align 4, !tbaa !45
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %74, %70
  %79 = getelementptr inbounds i8, ptr %69, i64 128
  %80 = load ptr, ptr %79, align 8, !tbaa !187
  %81 = getelementptr inbounds i8, ptr %69, i64 12
  %82 = load i32, ptr %81, align 4, !tbaa !10
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %80, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %69, i64 90540
  %88 = load i32, ptr %87, align 4, !tbaa !174
  %89 = add nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %86, i8 0, i64 %91, i1 false)
  %92 = load ptr, ptr @img, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 128
  %94 = load ptr, ptr %93, align 8, !tbaa !187
  %95 = getelementptr inbounds i8, ptr %92, i64 12
  %96 = load i32, ptr %95, align 4, !tbaa !10
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = getelementptr inbounds i8, ptr %99, i64 8
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %92, i64 90540
  %103 = load i32, ptr %102, align 4, !tbaa !174
  %104 = add nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %101, i8 0, i64 %106, i1 false)
  %107 = load ptr, ptr @img, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 128
  %109 = load ptr, ptr %108, align 8, !tbaa !187
  %110 = getelementptr inbounds i8, ptr %107, i64 12
  %111 = load i32, ptr %110, align 4, !tbaa !10
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %109, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %114, i64 16
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %107, i64 90540
  %118 = load i32, ptr %117, align 4, !tbaa !174
  %119 = add nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %116, i8 0, i64 %121, i1 false)
  %122 = load ptr, ptr @img, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 128
  %124 = load ptr, ptr %123, align 8, !tbaa !187
  %125 = getelementptr inbounds i8, ptr %122, i64 12
  %126 = load i32, ptr %125, align 4, !tbaa !10
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %124, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 24
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %122, i64 90540
  %133 = load i32, ptr %132, align 4, !tbaa !174
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = shl nsw i64 %135, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %131, i8 0, i64 %136, i1 false)
  %137 = load ptr, ptr @img, align 8, !tbaa !6
  br label %138

138:                                              ; preds = %78, %74, %65
  %139 = phi ptr [ %137, %78 ], [ %69, %74 ], [ %69, %65 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 31576
  %141 = load ptr, ptr %140, align 8, !tbaa !24
  %142 = getelementptr inbounds i8, ptr %139, i64 12
  %143 = load i32, ptr %142, align 4, !tbaa !10
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.macroblock, ptr %141, i64 %144
  %146 = getelementptr inbounds i8, ptr %145, i64 72
  %147 = load i32, ptr %146, align 8, !tbaa !43
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %138
  %150 = getelementptr inbounds i8, ptr %139, i64 24
  %151 = load i32, ptr %150, align 8, !tbaa !42
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %145, i64 364
  %155 = load i32, ptr %154, align 4, !tbaa !45
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153, %138
  %158 = getelementptr inbounds i8, ptr %145, i64 8
  %159 = load i32, ptr %158, align 8, !tbaa !99
  br label %160

160:                                              ; preds = %149, %153, %157
  %161 = phi i32 [ %159, %157 ], [ 0, %153 ], [ 0, %149 ]
  store i32 %161, ptr @last_dquant, align 4, !tbaa !39
  %162 = getelementptr inbounds i8, ptr %9, i64 28
  %163 = load i32, ptr %162, align 4, !tbaa !39
  %164 = getelementptr inbounds i8, ptr %9, i64 40
  %165 = load i32, ptr %164, align 4, !tbaa !39
  %166 = getelementptr inbounds i8, ptr %9, i64 32
  %167 = load i32, ptr %166, align 4, !tbaa !39
  %168 = getelementptr inbounds i8, ptr %9, i64 36
  %169 = load i32, ptr %168, align 4, !tbaa !39
  %170 = getelementptr inbounds i8, ptr %9, i64 48
  %171 = load i32, ptr %170, align 4, !tbaa !39
  %172 = getelementptr inbounds i8, ptr %9, i64 44
  %173 = load i32, ptr %172, align 4, !tbaa !39
  %174 = add i32 %167, %163
  %175 = add i32 %174, %165
  %176 = add nsw i32 %175, %169
  %177 = add nsw i32 %176, %171
  %178 = add nsw i32 %177, %173
  %179 = getelementptr inbounds i8, ptr %9, i64 24
  store i32 %178, ptr %179, align 4, !tbaa !39
  %180 = add nsw i32 %174, %169
  %181 = add nsw i32 %180, %171
  %182 = getelementptr inbounds i8, ptr %139, i64 90380
  store i32 %181, ptr %182, align 4, !tbaa !199
  %183 = load i32, ptr %164, align 4, !tbaa !39
  %184 = load i32, ptr %172, align 4, !tbaa !39
  %185 = add nsw i32 %184, %183
  %186 = getelementptr inbounds i8, ptr %139, i64 90376
  store i32 %185, ptr %186, align 8, !tbaa !200
  %187 = getelementptr inbounds i8, ptr %139, i64 90352
  %188 = load i32, ptr %187, align 8, !tbaa !201
  %189 = add nsw i32 %188, %185
  store i32 %189, ptr %187, align 8, !tbaa !201
  %190 = getelementptr inbounds i8, ptr %139, i64 90348
  %191 = load i32, ptr %190, align 4, !tbaa !202
  %192 = add nsw i32 %191, %181
  store i32 %192, ptr %190, align 4, !tbaa !202
  %193 = getelementptr inbounds i8, ptr %139, i64 90444
  %194 = load i32, ptr %193, align 4, !tbaa !110
  %195 = getelementptr inbounds i8, ptr %139, i64 90432
  %196 = load i32, ptr %195, align 8, !tbaa !103
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %160
  %199 = getelementptr inbounds i8, ptr %139, i64 90356
  %200 = load i32, ptr %199, align 4, !tbaa !203
  %201 = add nsw i32 %200, %181
  store i32 %201, ptr %199, align 4, !tbaa !203
  %202 = getelementptr inbounds i8, ptr %139, i64 90360
  %203 = load i32, ptr %202, align 8, !tbaa !204
  %204 = add nsw i32 %203, %185
  store i32 %204, ptr %202, align 8, !tbaa !204
  br label %205

205:                                              ; preds = %198, %160
  %206 = getelementptr inbounds i8, ptr %139, i64 90440
  %207 = load i32, ptr %206, align 8, !tbaa !109
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %206, align 8, !tbaa !109
  %209 = load i32, ptr %179, align 4, !tbaa !39
  %210 = load ptr, ptr @stats, align 8, !tbaa !6
  %211 = getelementptr inbounds i8, ptr %210, i64 24
  %212 = load i32, ptr %211, align 8, !tbaa !205
  %213 = add nsw i32 %212, %209
  store i32 %213, ptr %211, align 8, !tbaa !205
  store i32 0, ptr @cabac_encoding, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext range(i32 0, 2) i32 @BType2CtxRef(i32 noundef signext %0) local_unnamed_addr #13 {
  %2 = icmp sgt i32 %0, 3
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind
define dso_local signext i32 @writeReferenceFrame(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, ptr %6, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %6, i64 31584
  %14 = load i32, ptr %12, align 8, !tbaa !122
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %13, i64 0, i64 %15
  %17 = icmp eq i32 %3, 0
  %18 = getelementptr inbounds i8, ptr %12, i64 428
  %19 = load i32, ptr %18, align 4, !tbaa !29
  %20 = zext i1 %17 to i32
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %79, label %26

26:                                               ; preds = %5
  %27 = load ptr, ptr @input, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 2992
  %29 = load i32, ptr %28, align 8, !tbaa !137
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %6, i64 31568
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 %4, ptr %35, align 4, !tbaa !141
  %36 = getelementptr inbounds i8, ptr %16, i64 8
  store i32 0, ptr %36, align 8, !tbaa !143
  store i32 3, ptr %16, align 8, !tbaa !145
  %37 = getelementptr inbounds i8, ptr %34, i64 24
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = getelementptr inbounds i8, ptr %32, i64 12
  %40 = load i32, ptr %39, align 4, !tbaa !39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.datapartition, ptr %38, i64 %41
  %43 = getelementptr inbounds i8, ptr %27, i64 2984
  %44 = load i32, ptr %43, align 8, !tbaa !74
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %26
  %47 = icmp eq i32 %24, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = sub nsw i32 1, %4
  %50 = getelementptr inbounds i8, ptr %16, i64 20
  store i32 %49, ptr %50, align 4, !tbaa !186
  %51 = getelementptr inbounds i8, ptr %16, i64 12
  store i32 1, ptr %51, align 4, !tbaa !147
  %52 = load ptr, ptr %42, align 8, !tbaa !64
  %53 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %16, ptr noundef %52) #17
  br label %70

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %16, i64 32
  store ptr @ue_linfo, ptr %55, align 8, !tbaa !144
  %56 = getelementptr inbounds i8, ptr %42, i64 104
  %57 = load ptr, ptr %56, align 8, !tbaa !146
  %58 = tail call signext i32 %57(ptr noundef nonnull %16, ptr noundef %42) #17
  br label %70

59:                                               ; preds = %26
  %60 = icmp sgt i32 %0, 3
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds i8, ptr %16, i64 24
  store i32 %61, ptr %62, align 8, !tbaa !183
  %63 = getelementptr inbounds i8, ptr %6, i64 72
  store i32 %1, ptr %63, align 8, !tbaa !194
  %64 = getelementptr inbounds i8, ptr %6, i64 76
  store i32 %2, ptr %64, align 4, !tbaa !193
  %65 = getelementptr inbounds i8, ptr %16, i64 40
  store ptr @writeRefFrame_CABAC, ptr %65, align 8, !tbaa !184
  %66 = zext i1 %17 to i32
  store i32 %66, ptr %36, align 8, !tbaa !143
  %67 = getelementptr inbounds i8, ptr %42, i64 104
  %68 = load ptr, ptr %67, align 8, !tbaa !146
  %69 = tail call signext i32 %68(ptr noundef nonnull %16, ptr noundef %42) #17
  br label %70

70:                                               ; preds = %48, %54, %59
  %71 = getelementptr inbounds i8, ptr %16, i64 12
  %72 = load i32, ptr %71, align 4, !tbaa !147
  %73 = getelementptr inbounds i8, ptr %12, i64 32
  %74 = load i32, ptr %73, align 4, !tbaa !39
  %75 = add nsw i32 %74, %72
  store i32 %75, ptr %73, align 4, !tbaa !39
  %76 = load i32, ptr %71, align 4, !tbaa !147
  %77 = load i32, ptr %12, align 8, !tbaa !122
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %12, align 8, !tbaa !122
  br label %79

79:                                               ; preds = %5, %70
  %80 = phi i32 [ %76, %70 ], [ 0, %5 ]
  ret i32 %80
}

declare dso_local void @writeRefFrame_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @writeMotionVector8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 148
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds [8 x [2 x i32]], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds i8, ptr %11, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 31576
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds i8, ptr %15, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !10
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %20
  %22 = getelementptr inbounds i8, ptr %15, i64 31584
  %23 = load i32, ptr %21, align 8, !tbaa !122
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %22, i64 0, i64 %24
  %26 = getelementptr inbounds i8, ptr %15, i64 31568
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds i8, ptr %8, i64 2992
  %29 = load i32, ptr %28, align 8, !tbaa !137
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %15, i64 89336
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = getelementptr inbounds i8, ptr %15, i64 89328
  %36 = load ptr, ptr %35, align 8, !tbaa !206
  %37 = getelementptr inbounds i8, ptr %21, i64 476
  %38 = load i16, ptr %37, align 4, !tbaa !159
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %7
  %41 = getelementptr inbounds i8, ptr %21, i64 392
  %42 = load i32, ptr %41, align 8, !tbaa !39
  %43 = icmp eq i32 %42, 2
  %44 = icmp eq i32 %6, 1
  %45 = and i1 %44, %43
  %46 = icmp eq i32 %4, 0
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = icmp eq i16 %38, 1
  %50 = select i1 %49, i64 89344, i64 89352
  %51 = getelementptr inbounds i8, ptr %15, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  br label %53

53:                                               ; preds = %48, %40, %7
  %54 = phi ptr [ %52, %48 ], [ %34, %40 ], [ %34, %7 ]
  %55 = icmp slt i32 %1, %3
  br i1 %55, label %56, label %231

56:                                               ; preds = %53
  %57 = icmp slt i32 %0, %2
  %58 = sext i32 %5 to i64
  %59 = sext i32 %4 to i64
  %60 = icmp sgt i32 %14, 0
  %61 = getelementptr inbounds i8, ptr %27, i64 24
  %62 = getelementptr inbounds i8, ptr %32, i64 20
  %63 = icmp sgt i32 %12, 0
  %64 = getelementptr inbounds i8, ptr %21, i64 76
  %65 = getelementptr inbounds i8, ptr %21, i64 32
  %66 = sext i32 %0 to i64
  %67 = sext i32 %12 to i64
  %68 = sext i32 %2 to i64
  %69 = sext i32 %1 to i64
  %70 = sext i32 %14 to i64
  %71 = sext i32 %3 to i64
  %72 = zext nneg i32 %14 to i64
  %73 = zext nneg i32 %12 to i64
  %74 = add i32 %5, 2
  br label %75

75:                                               ; preds = %56, %226
  %76 = phi i64 [ %69, %56 ], [ %229, %226 ]
  %77 = phi ptr [ %25, %56 ], [ %228, %226 ]
  %78 = phi i32 [ 0, %56 ], [ %227, %226 ]
  br i1 %57, label %79, label %226

79:                                               ; preds = %75
  %80 = getelementptr inbounds ptr, ptr %54, i64 %76
  %81 = getelementptr inbounds ptr, ptr %36, i64 %76
  %82 = trunc nsw i64 %76 to i32
  br label %83

83:                                               ; preds = %79, %204
  %84 = phi i64 [ %66, %79 ], [ %224, %204 ]
  %85 = phi ptr [ %77, %79 ], [ %221, %204 ]
  %86 = phi i32 [ %78, %79 ], [ %220, %204 ]
  %87 = trunc nsw i64 %84 to i32
  %88 = load ptr, ptr %80, align 8, !tbaa !6
  %89 = getelementptr inbounds ptr, ptr %88, i64 %84
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %58
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds ptr, ptr %92, i64 %59
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds ptr, ptr %94, i64 %10
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = load i16, ptr %96, align 2, !tbaa !153
  %98 = sext i16 %97 to i32
  %99 = load ptr, ptr %81, align 8, !tbaa !6
  %100 = getelementptr inbounds ptr, ptr %99, i64 %84
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds ptr, ptr %101, i64 %58
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = getelementptr inbounds ptr, ptr %103, i64 %59
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = getelementptr inbounds ptr, ptr %105, i64 %10
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = load i16, ptr %107, align 2, !tbaa !153
  %109 = sext i16 %108 to i32
  %110 = sub nsw i32 %98, %109
  br i1 %60, label %111, label %124

111:                                              ; preds = %83, %121
  %112 = phi i64 [ %122, %121 ], [ 0, %83 ]
  br i1 %63, label %113, label %121

113:                                              ; preds = %111
  %114 = add nsw i64 %112, %76
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %119, %115 ]
  %117 = add nsw i64 %116, %84
  %118 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %64, i64 0, i64 %58, i64 %114, i64 %117, i64 0
  store i32 %110, ptr %118, align 4, !tbaa !39
  %119 = add nuw nsw i64 %116, 1
  %120 = icmp eq i64 %119, %73
  br i1 %120, label %121, label %115

121:                                              ; preds = %115, %111
  %122 = add nuw nsw i64 %112, 1
  %123 = icmp eq i64 %122, %72
  br i1 %123, label %124, label %111

124:                                              ; preds = %121, %83
  %125 = getelementptr inbounds i8, ptr %85, i64 4
  store i32 %110, ptr %125, align 4, !tbaa !141
  %126 = getelementptr inbounds i8, ptr %85, i64 8
  store i32 0, ptr %126, align 8, !tbaa !143
  store i32 5, ptr %85, align 8, !tbaa !145
  %127 = load ptr, ptr @input, align 8, !tbaa !6
  %128 = getelementptr inbounds i8, ptr %127, i64 2984
  %129 = load i32, ptr %128, align 8, !tbaa !74
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr @img, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 72
  store i32 %87, ptr %133, align 8, !tbaa !194
  %134 = getelementptr inbounds i8, ptr %132, i64 76
  store i32 %82, ptr %134, align 4, !tbaa !193
  store i32 %5, ptr %126, align 8, !tbaa !143
  br label %135

135:                                              ; preds = %124, %131
  %136 = phi i64 [ 40, %131 ], [ 32, %124 ]
  %137 = phi ptr [ @writeMVD_CABAC, %131 ], [ @se_linfo, %124 ]
  %138 = getelementptr inbounds i8, ptr %85, i64 %136
  store ptr %137, ptr %138, align 8, !tbaa !6
  %139 = load ptr, ptr %61, align 8, !tbaa !63
  %140 = load i32, ptr %62, align 4, !tbaa !39
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.datapartition, ptr %139, i64 %141
  %143 = getelementptr inbounds i8, ptr %142, i64 104
  %144 = load ptr, ptr %143, align 8, !tbaa !146
  %145 = tail call signext i32 %144(ptr noundef nonnull %85, ptr noundef %142) #17
  %146 = getelementptr inbounds i8, ptr %85, i64 12
  %147 = load i32, ptr %146, align 4, !tbaa !147
  %148 = load i32, ptr %65, align 4, !tbaa !39
  %149 = add nsw i32 %148, %147
  store i32 %149, ptr %65, align 4, !tbaa !39
  %150 = load i32, ptr %146, align 4, !tbaa !147
  %151 = add nsw i32 %150, %86
  %152 = getelementptr inbounds i8, ptr %85, i64 48
  %153 = load i32, ptr %21, align 8, !tbaa !122
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %21, align 8, !tbaa !122
  %155 = load ptr, ptr %80, align 8, !tbaa !6
  %156 = getelementptr inbounds ptr, ptr %155, i64 %84
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = getelementptr inbounds ptr, ptr %157, i64 %58
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds ptr, ptr %159, i64 %59
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = getelementptr inbounds ptr, ptr %161, i64 %10
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %163, i64 2
  %165 = load i16, ptr %164, align 2, !tbaa !153
  %166 = sext i16 %165 to i32
  %167 = load ptr, ptr %81, align 8, !tbaa !6
  %168 = getelementptr inbounds ptr, ptr %167, i64 %84
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds ptr, ptr %169, i64 %58
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = getelementptr inbounds ptr, ptr %171, i64 %59
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds ptr, ptr %173, i64 %10
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 2
  %177 = load i16, ptr %176, align 2, !tbaa !153
  %178 = sext i16 %177 to i32
  %179 = sub nsw i32 %166, %178
  br i1 %60, label %180, label %193

180:                                              ; preds = %135, %190
  %181 = phi i64 [ %191, %190 ], [ 0, %135 ]
  br i1 %63, label %182, label %190

182:                                              ; preds = %180
  %183 = add nsw i64 %181, %76
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %188, %184 ]
  %186 = add nsw i64 %185, %84
  %187 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %64, i64 0, i64 %58, i64 %183, i64 %186, i64 1
  store i32 %179, ptr %187, align 4, !tbaa !39
  %188 = add nuw nsw i64 %185, 1
  %189 = icmp eq i64 %188, %73
  br i1 %189, label %190, label %184

190:                                              ; preds = %184, %180
  %191 = add nuw nsw i64 %181, 1
  %192 = icmp eq i64 %191, %72
  br i1 %192, label %193, label %180

193:                                              ; preds = %190, %135
  %194 = getelementptr inbounds i8, ptr %85, i64 52
  store i32 %179, ptr %194, align 4, !tbaa !141
  %195 = getelementptr inbounds i8, ptr %85, i64 56
  store i32 0, ptr %195, align 8, !tbaa !143
  store i32 5, ptr %152, align 8, !tbaa !145
  %196 = load ptr, ptr @input, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 2984
  %198 = load i32, ptr %197, align 8, !tbaa !74
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = load ptr, ptr @img, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 72
  store i32 %87, ptr %202, align 8, !tbaa !194
  %203 = getelementptr inbounds i8, ptr %201, i64 76
  store i32 %82, ptr %203, align 4, !tbaa !193
  store i32 %74, ptr %195, align 8, !tbaa !143
  br label %204

204:                                              ; preds = %200, %193
  %205 = phi i64 [ 40, %200 ], [ 32, %193 ]
  %206 = phi ptr [ @writeMVD_CABAC, %200 ], [ @se_linfo, %193 ]
  %207 = getelementptr inbounds i8, ptr %152, i64 %205
  store ptr %206, ptr %207, align 8, !tbaa !6
  %208 = load ptr, ptr %61, align 8, !tbaa !63
  %209 = load i32, ptr %62, align 4, !tbaa !39
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.datapartition, ptr %208, i64 %210
  %212 = getelementptr inbounds i8, ptr %211, i64 104
  %213 = load ptr, ptr %212, align 8, !tbaa !146
  %214 = tail call signext i32 %213(ptr noundef nonnull %152, ptr noundef %211) #17
  %215 = getelementptr inbounds i8, ptr %85, i64 60
  %216 = load i32, ptr %215, align 4, !tbaa !147
  %217 = load i32, ptr %65, align 4, !tbaa !39
  %218 = add nsw i32 %217, %216
  store i32 %218, ptr %65, align 4, !tbaa !39
  %219 = load i32, ptr %215, align 4, !tbaa !147
  %220 = add nsw i32 %219, %151
  %221 = getelementptr inbounds i8, ptr %85, i64 96
  %222 = load i32, ptr %21, align 8, !tbaa !122
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %21, align 8, !tbaa !122
  %224 = add nsw i64 %84, %67
  %225 = icmp slt i64 %224, %68
  br i1 %225, label %83, label %226

226:                                              ; preds = %204, %75
  %227 = phi i32 [ %78, %75 ], [ %220, %204 ]
  %228 = phi ptr [ %77, %75 ], [ %221, %204 ]
  %229 = add nsw i64 %76, %70
  %230 = icmp slt i64 %229, %71
  br i1 %230, label %75, label %231

231:                                              ; preds = %226, %53
  %232 = phi i32 [ 0, %53 ], [ %227, %226 ]
  ret i32 %232
}

declare dso_local void @se_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare dso_local void @writeMVD_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @img, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 31576
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds i8, ptr %5, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %5, i64 31584
  %13 = load i32, ptr %11, align 8, !tbaa !122
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %12, i64 0, i64 %14
  %16 = getelementptr inbounds i8, ptr %11, i64 20
  %17 = getelementptr inbounds i8, ptr %5, i64 31568
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 2992
  %21 = load i32, ptr %20, align 8, !tbaa !137
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  switch i32 %0, label %89 [
    i32 0, label %25
    i32 1, label %40
    i32 2, label %47
    i32 6, label %59
    i32 7, label %74
  ]

25:                                               ; preds = %4
  %26 = getelementptr inbounds i8, ptr %5, i64 14136
  %27 = load ptr, ptr %26, align 8, !tbaa !192
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %33, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %11, i64 72
  %38 = load i32, ptr %37, align 8, !tbaa !43
  switch i32 %38, label %39 [
    i32 9, label %91
    i32 10, label %91
    i32 13, label %91
    i32 14, label %91
  ]

39:                                               ; preds = %25
  br label %91

40:                                               ; preds = %4
  %41 = getelementptr inbounds i8, ptr %5, i64 14144
  %42 = load ptr, ptr %41, align 8, !tbaa !190
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %43, i64 8
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  br label %91

47:                                               ; preds = %4
  %48 = getelementptr inbounds i8, ptr %5, i64 14136
  %49 = load ptr, ptr %48, align 8, !tbaa !192
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = sext i32 %2 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %55, i64 8
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  br label %91

59:                                               ; preds = %4
  %60 = getelementptr inbounds i8, ptr %5, i64 90544
  %61 = load i32, ptr %60, align 8, !tbaa !195
  %62 = getelementptr inbounds i8, ptr %5, i64 14144
  %63 = load ptr, ptr %62, align 8, !tbaa !190
  %64 = sext i32 %3 to i64
  %65 = getelementptr ptr, ptr %63, i64 %64
  %66 = getelementptr i8, ptr %65, i64 8
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %67, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %11, i64 72
  %72 = load i32, ptr %71, align 8, !tbaa !43
  switch i32 %72, label %73 [
    i32 9, label %91
    i32 10, label %91
    i32 13, label %91
    i32 14, label %91
  ]

73:                                               ; preds = %59
  br label %91

74:                                               ; preds = %4
  %75 = getelementptr inbounds i8, ptr %5, i64 14136
  %76 = load ptr, ptr %75, align 8, !tbaa !192
  %77 = sext i32 %1 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = sext i32 %2 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %82, i64 8
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %11, i64 72
  %87 = load i32, ptr %86, align 8, !tbaa !43
  switch i32 %87, label %88 [
    i32 9, label %91
    i32 10, label %91
    i32 13, label %91
    i32 14, label %91
  ]

88:                                               ; preds = %74
  br label %91

89:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.10, i32 noundef signext 600) #17
  %90 = load ptr, ptr @img, align 8
  br label %91

91:                                               ; preds = %74, %74, %74, %74, %59, %59, %59, %59, %25, %25, %25, %25, %88, %73, %39, %89, %47, %40
  %92 = phi ptr [ %90, %89 ], [ %5, %88 ], [ %5, %73 ], [ %5, %47 ], [ %5, %40 ], [ %5, %39 ], [ %5, %25 ], [ %5, %25 ], [ %5, %25 ], [ %5, %25 ], [ %5, %59 ], [ %5, %59 ], [ %5, %59 ], [ %5, %59 ], [ %5, %74 ], [ %5, %74 ], [ %5, %74 ], [ %5, %74 ]
  %93 = phi i32 [ 0, %89 ], [ 15, %88 ], [ 13, %73 ], [ 9, %47 ], [ 7, %40 ], [ 14, %39 ], [ 9, %25 ], [ 9, %25 ], [ 9, %25 ], [ 9, %25 ], [ 8, %59 ], [ 8, %59 ], [ 8, %59 ], [ 8, %59 ], [ 10, %74 ], [ 10, %74 ], [ 10, %74 ], [ 10, %74 ]
  %94 = phi i64 [ 0, %89 ], [ 6, %88 ], [ 6, %73 ], [ 5, %47 ], [ 5, %40 ], [ 5, %39 ], [ 5, %25 ], [ 5, %25 ], [ 5, %25 ], [ 5, %25 ], [ 6, %59 ], [ 6, %59 ], [ 6, %59 ], [ 6, %59 ], [ 6, %74 ], [ 6, %74 ], [ 6, %74 ], [ 6, %74 ]
  %95 = phi i32 [ 0, %89 ], [ 15, %88 ], [ %61, %73 ], [ 15, %47 ], [ 16, %40 ], [ 16, %39 ], [ 16, %25 ], [ 16, %25 ], [ 16, %25 ], [ 16, %25 ], [ %61, %59 ], [ %61, %59 ], [ %61, %59 ], [ %61, %59 ], [ 15, %74 ], [ 15, %74 ], [ 15, %74 ], [ 15, %74 ]
  %96 = phi i1 [ true, %89 ], [ true, %88 ], [ false, %73 ], [ true, %47 ], [ true, %40 ], [ true, %39 ], [ true, %25 ], [ true, %25 ], [ true, %25 ], [ true, %25 ], [ false, %59 ], [ false, %59 ], [ false, %59 ], [ false, %59 ], [ true, %74 ], [ true, %74 ], [ true, %74 ], [ true, %74 ]
  %97 = phi i1 [ true, %89 ], [ false, %88 ], [ true, %73 ], [ true, %47 ], [ true, %40 ], [ true, %39 ], [ true, %25 ], [ true, %25 ], [ true, %25 ], [ true, %25 ], [ true, %59 ], [ true, %59 ], [ true, %59 ], [ true, %59 ], [ false, %74 ], [ false, %74 ], [ false, %74 ], [ false, %74 ]
  %98 = phi ptr [ null, %89 ], [ %83, %88 ], [ %68, %73 ], [ %56, %47 ], [ %44, %40 ], [ %34, %39 ], [ %34, %25 ], [ %34, %25 ], [ %34, %25 ], [ %34, %25 ], [ %68, %59 ], [ %68, %59 ], [ %68, %59 ], [ %68, %59 ], [ %83, %74 ], [ %83, %74 ], [ %83, %74 ], [ %83, %74 ]
  %99 = phi ptr [ null, %89 ], [ %85, %88 ], [ %70, %73 ], [ %58, %47 ], [ %46, %40 ], [ %36, %39 ], [ %36, %25 ], [ %36, %25 ], [ %36, %25 ], [ %36, %25 ], [ %70, %59 ], [ %70, %59 ], [ %70, %59 ], [ %70, %59 ], [ %85, %74 ], [ %85, %74 ], [ %85, %74 ], [ %85, %74 ]
  %100 = getelementptr inbounds i8, ptr %18, i64 24
  %101 = load ptr, ptr %100, align 8, !tbaa !63
  %102 = zext nneg i32 %93 to i64
  %103 = getelementptr inbounds i32, ptr %24, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !39
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.datapartition, ptr %101, i64 %105
  %107 = getelementptr inbounds i8, ptr %92, i64 90544
  br label %108

108:                                              ; preds = %140, %91
  %109 = phi i64 [ %145, %140 ], [ 0, %91 ]
  %110 = phi i32 [ %127, %140 ], [ 1, %91 ]
  %111 = phi i32 [ %141, %140 ], [ 0, %91 ]
  %112 = phi i32 [ %142, %140 ], [ 0, %91 ]
  %113 = phi i32 [ %143, %140 ], [ 0, %91 ]
  %114 = phi i32 [ %144, %140 ], [ 0, %91 ]
  br i1 %96, label %115, label %119

115:                                              ; preds = %108
  %116 = icmp ult i64 %109, 17
  %117 = icmp ne i32 %110, 0
  %118 = and i1 %116, %117
  br i1 %118, label %125, label %146

119:                                              ; preds = %108
  %120 = load i32, ptr %107, align 8, !tbaa !195
  %121 = sext i32 %120 to i64
  %122 = icmp sle i64 %109, %121
  %123 = icmp ne i32 %110, 0
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %192

125:                                              ; preds = %119, %115
  %126 = getelementptr inbounds i32, ptr %98, i64 %109
  %127 = load i32, ptr %126, align 4, !tbaa !39
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds i32, ptr %99, i64 %109
  %131 = load i32, ptr %130, align 4, !tbaa !39
  %132 = add nsw i32 %131, %114
  %133 = tail call i32 @llvm.abs.i32(i32 %127, i1 true)
  %134 = icmp eq i32 %133, 1
  %135 = tail call i32 @llvm.smin.i32(i32 %113, i32 2)
  %136 = add nsw i32 %135, 1
  %137 = select i1 %134, i32 %136, i32 0
  %138 = add nsw i32 %111, 1
  %139 = trunc nuw nsw i64 %109 to i32
  br label %140

140:                                              ; preds = %125, %129
  %141 = phi i32 [ %138, %129 ], [ %111, %125 ]
  %142 = phi i32 [ %139, %129 ], [ %112, %125 ]
  %143 = phi i32 [ %137, %129 ], [ %113, %125 ]
  %144 = phi i32 [ %132, %129 ], [ %114, %125 ]
  %145 = add nuw nsw i64 %109, 1
  br label %108

146:                                              ; preds = %115
  br i1 %97, label %147, label %159

147:                                              ; preds = %146
  %148 = and i32 %2, 1
  %149 = shl i32 %1, 1
  %150 = and i32 %149, 2
  %151 = or disjoint i32 %148, %150
  %152 = icmp slt i32 %1, 2
  %153 = icmp sgt i32 %2, 1
  %154 = zext i1 %153 to i32
  %155 = icmp slt i32 %2, 2
  %156 = select i1 %155, i32 2, i32 3
  %157 = select i1 %152, i32 %154, i32 %156
  %158 = tail call signext i32 @predict_nnz(i32 noundef signext %151, i32 noundef signext %157)
  br label %163

159:                                              ; preds = %146
  %160 = ashr i32 %3, 4
  %161 = and i32 %3, 15
  %162 = tail call signext i32 @predict_nnz_chroma(i32 noundef signext %160, i32 noundef signext %161)
  br label %163

163:                                              ; preds = %159, %147
  %164 = phi i32 [ %162, %159 ], [ %158, %147 ]
  %165 = phi i32 [ %160, %159 ], [ %151, %147 ]
  %166 = phi i32 [ %161, %159 ], [ %157, %147 ]
  %167 = load ptr, ptr @img, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 128
  %169 = load ptr, ptr %168, align 8, !tbaa !187
  %170 = getelementptr inbounds i8, ptr %167, i64 12
  %171 = load i32, ptr %170, align 4, !tbaa !10
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %169, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = sext i32 %165 to i64
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = zext nneg i32 %166 to i64
  %179 = getelementptr inbounds i32, ptr %177, i64 %178
  store i32 %111, ptr %179, align 4, !tbaa !39
  %180 = icmp slt i32 %164, 2
  br i1 %180, label %186, label %181

181:                                              ; preds = %163
  %182 = icmp ult i32 %164, 4
  br i1 %182, label %186, label %183

183:                                              ; preds = %181
  %184 = icmp ult i32 %164, 8
  %185 = select i1 %184, i32 2, i32 3
  br label %186

186:                                              ; preds = %163, %181, %183
  %187 = phi i32 [ 0, %163 ], [ 1, %181 ], [ %185, %183 ]
  store i32 %93, ptr %15, align 8, !tbaa !145
  %188 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %111, ptr %188, align 4, !tbaa !141
  %189 = getelementptr inbounds i8, ptr %15, i64 8
  store i32 %113, ptr %189, align 8, !tbaa !143
  %190 = getelementptr inbounds i8, ptr %15, i64 12
  store i32 %187, ptr %190, align 4, !tbaa !147
  %191 = tail call signext i32 @writeSyntaxElement_NumCoeffTrailingOnes(ptr noundef nonnull %15, ptr noundef %106) #17
  br label %197

192:                                              ; preds = %119
  store i32 %93, ptr %15, align 8, !tbaa !145
  %193 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %111, ptr %193, align 4, !tbaa !141
  %194 = getelementptr inbounds i8, ptr %15, i64 8
  store i32 %113, ptr %194, align 8, !tbaa !143
  %195 = getelementptr inbounds i8, ptr %15, i64 12
  store i32 0, ptr %195, align 4, !tbaa !147
  %196 = tail call signext i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef nonnull %15, ptr noundef %106) #17
  br label %197

197:                                              ; preds = %192, %186
  %198 = phi ptr [ %195, %192 ], [ %190, %186 ]
  %199 = load i32, ptr %198, align 4, !tbaa !147
  %200 = getelementptr inbounds i32, ptr %16, i64 %94
  %201 = load i32, ptr %200, align 4, !tbaa !39
  %202 = add nsw i32 %201, %199
  store i32 %202, ptr %200, align 4, !tbaa !39
  %203 = load i32, ptr %198, align 4, !tbaa !147
  %204 = getelementptr inbounds i8, ptr %15, i64 48
  %205 = load i32, ptr %11, align 8, !tbaa !122
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %11, align 8, !tbaa !122
  %207 = icmp eq i32 %111, 0
  br i1 %207, label %385, label %208

208:                                              ; preds = %197
  %209 = sub i32 %112, %113
  %210 = icmp sgt i32 %113, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = sext i32 %112 to i64
  %213 = sext i32 %209 to i64
  br label %214

214:                                              ; preds = %211, %223
  %215 = phi i64 [ %212, %211 ], [ %225, %223 ]
  %216 = phi i32 [ 0, %211 ], [ %224, %223 ]
  %217 = getelementptr inbounds i32, ptr %98, i64 %215
  %218 = load i32, ptr %217, align 4, !tbaa !39
  %219 = tail call i32 @llvm.abs.i32(i32 %218, i1 true)
  %220 = icmp ugt i32 %219, 1
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

223:                                              ; preds = %214
  %224 = tail call i32 @llvm.fshl.i32(i32 %216, i32 %218, i32 1)
  %225 = add nsw i64 %215, -1
  %226 = icmp sgt i64 %225, %213
  br i1 %226, label %214, label %227

227:                                              ; preds = %223, %208
  %228 = phi i32 [ 0, %208 ], [ %224, %223 ]
  %229 = icmp eq i32 %113, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %227
  store i32 %93, ptr %204, align 8, !tbaa !145
  %231 = getelementptr inbounds i8, ptr %15, i64 56
  store i32 %113, ptr %231, align 8, !tbaa !143
  %232 = getelementptr inbounds i8, ptr %15, i64 52
  store i32 %228, ptr %232, align 4, !tbaa !141
  %233 = tail call signext i32 @writeSyntaxElement_VLC(ptr noundef nonnull %204, ptr noundef %106) #17
  %234 = getelementptr inbounds i8, ptr %15, i64 60
  %235 = load i32, ptr %234, align 4, !tbaa !147
  %236 = load i32, ptr %200, align 4, !tbaa !39
  %237 = add nsw i32 %236, %235
  store i32 %237, ptr %200, align 4, !tbaa !39
  %238 = load i32, ptr %234, align 4, !tbaa !147
  %239 = add nsw i32 %238, %203
  %240 = getelementptr inbounds i8, ptr %15, i64 96
  %241 = load i32, ptr %11, align 8, !tbaa !122
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %11, align 8, !tbaa !122
  br label %243

243:                                              ; preds = %230, %227
  %244 = phi ptr [ %240, %230 ], [ %204, %227 ]
  %245 = phi i32 [ %239, %230 ], [ %203, %227 ]
  %246 = icmp sgt i32 %111, 10
  %247 = icmp slt i32 %113, 3
  %248 = select i1 %246, i1 %247, i1 false
  %249 = zext i1 %248 to i32
  %250 = icmp sgt i32 %209, -1
  br i1 %250, label %251, label %322

251:                                              ; preds = %243
  %252 = icmp sgt i32 %111, 3
  %253 = icmp eq i32 %113, 3
  %254 = select i1 %252, i1 %253, i1 false
  %255 = zext nneg i32 %209 to i64
  %256 = getelementptr inbounds i32, ptr %98, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !39
  %258 = getelementptr inbounds i8, ptr %244, i64 4
  store i32 %257, ptr %258, align 4, !tbaa !141
  store i32 %93, ptr %244, align 8, !tbaa !145
  br i1 %254, label %263, label %259

259:                                              ; preds = %251
  %260 = icmp slt i32 %257, 1
  %261 = select i1 %260, i32 1, i32 -1
  %262 = add nsw i32 %261, %257
  store i32 %262, ptr %258, align 4, !tbaa !141
  br label %263

263:                                              ; preds = %259, %251
  br i1 %248, label %264, label %266

264:                                              ; preds = %263
  %265 = tail call signext i32 @writeSyntaxElement_Level_VLCN(ptr noundef nonnull %244, i32 noundef signext %249, ptr noundef %106) #17
  br label %268

266:                                              ; preds = %263
  %267 = tail call signext i32 @writeSyntaxElement_Level_VLC1(ptr noundef nonnull %244, ptr noundef %106) #17
  br label %268

268:                                              ; preds = %266, %264
  %269 = zext i1 %248 to i64
  %270 = getelementptr inbounds [7 x i32], ptr @writeCoeff4x4_CAVLC.incVlc, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !39
  %272 = getelementptr inbounds i8, ptr %244, i64 12
  %273 = load i32, ptr %272, align 4, !tbaa !147
  %274 = load i32, ptr %200, align 4, !tbaa !39
  %275 = add nsw i32 %274, %273
  store i32 %275, ptr %200, align 4, !tbaa !39
  %276 = load i32, ptr %272, align 4, !tbaa !147
  %277 = add nsw i32 %276, %245
  %278 = getelementptr inbounds i8, ptr %244, i64 48
  %279 = load i32, ptr %11, align 8, !tbaa !122
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr %11, align 8, !tbaa !122
  %281 = icmp eq i32 %112, %113
  br i1 %281, label %322, label %282

282:                                              ; preds = %268
  %283 = tail call i32 @llvm.abs.i32(i32 %257, i1 true)
  %284 = icmp ugt i32 %283, 3
  %285 = icmp sgt i32 %283, %271
  %286 = zext i1 %285 to i32
  %287 = add nuw nsw i32 %249, %286
  %288 = select i1 %284, i32 2, i32 %287
  br label %289

289:                                              ; preds = %282, %303
  %290 = phi i64 [ %294, %303 ], [ %255, %282 ]
  %291 = phi i32 [ %310, %303 ], [ %288, %282 ]
  %292 = phi i32 [ %316, %303 ], [ %277, %282 ]
  %293 = phi ptr [ %317, %303 ], [ %278, %282 ]
  %294 = add nsw i64 %290, -1
  %295 = getelementptr inbounds i32, ptr %98, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !39
  %297 = getelementptr inbounds i8, ptr %293, i64 4
  store i32 %296, ptr %297, align 4, !tbaa !141
  store i32 %93, ptr %293, align 8, !tbaa !145
  %298 = icmp eq i32 %291, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = tail call signext i32 @writeSyntaxElement_Level_VLC1(ptr noundef nonnull %293, ptr noundef %106) #17
  br label %303

301:                                              ; preds = %289
  %302 = tail call signext i32 @writeSyntaxElement_Level_VLCN(ptr noundef nonnull %293, i32 noundef signext %291, ptr noundef %106) #17
  br label %303

303:                                              ; preds = %301, %299
  %304 = tail call i32 @llvm.abs.i32(i32 %296, i1 true)
  %305 = zext nneg i32 %291 to i64
  %306 = getelementptr inbounds [7 x i32], ptr @writeCoeff4x4_CAVLC.incVlc, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !39
  %308 = icmp sgt i32 %304, %307
  %309 = zext i1 %308 to i32
  %310 = add nuw nsw i32 %291, %309
  %311 = getelementptr inbounds i8, ptr %293, i64 12
  %312 = load i32, ptr %311, align 4, !tbaa !147
  %313 = load i32, ptr %200, align 4, !tbaa !39
  %314 = add nsw i32 %313, %312
  store i32 %314, ptr %200, align 4, !tbaa !39
  %315 = load i32, ptr %311, align 4, !tbaa !147
  %316 = add nsw i32 %315, %292
  %317 = getelementptr inbounds i8, ptr %293, i64 48
  %318 = load i32, ptr %11, align 8, !tbaa !122
  %319 = add nsw i32 %318, 1
  store i32 %319, ptr %11, align 8, !tbaa !122
  %320 = trunc nuw i64 %294 to i32
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %289, label %322, !llvm.loop !207

322:                                              ; preds = %303, %268, %243
  %323 = phi ptr [ %244, %243 ], [ %278, %268 ], [ %317, %303 ]
  %324 = phi i32 [ %245, %243 ], [ %277, %268 ], [ %316, %303 ]
  %325 = icmp slt i32 %111, %95
  br i1 %325, label %326, label %343

326:                                              ; preds = %322
  store i32 %93, ptr %323, align 8, !tbaa !145
  %327 = getelementptr inbounds i8, ptr %323, i64 4
  store i32 %114, ptr %327, align 4, !tbaa !141
  %328 = add nsw i32 %111, -1
  %329 = getelementptr inbounds i8, ptr %323, i64 12
  store i32 %328, ptr %329, align 4, !tbaa !147
  br i1 %96, label %330, label %332

330:                                              ; preds = %326
  %331 = tail call signext i32 @writeSyntaxElement_TotalZeros(ptr noundef nonnull %323, ptr noundef %106) #17
  br label %334

332:                                              ; preds = %326
  %333 = tail call signext i32 @writeSyntaxElement_TotalZerosChromaDC(ptr noundef nonnull %323, ptr noundef %106) #17
  br label %334

334:                                              ; preds = %332, %330
  %335 = load i32, ptr %329, align 4, !tbaa !147
  %336 = load i32, ptr %200, align 4, !tbaa !39
  %337 = add nsw i32 %336, %335
  store i32 %337, ptr %200, align 4, !tbaa !39
  %338 = load i32, ptr %329, align 4, !tbaa !147
  %339 = add nsw i32 %338, %324
  %340 = getelementptr inbounds i8, ptr %323, i64 48
  %341 = load i32, ptr %11, align 8, !tbaa !122
  %342 = add nsw i32 %341, 1
  store i32 %342, ptr %11, align 8, !tbaa !122
  br label %343

343:                                              ; preds = %334, %322
  %344 = phi ptr [ %340, %334 ], [ %323, %322 ]
  %345 = phi i32 [ %339, %334 ], [ %324, %322 ]
  %346 = icmp sgt i32 %112, -1
  br i1 %346, label %347, label %385

347:                                              ; preds = %343
  %348 = icmp sgt i32 %111, 1
  %349 = zext nneg i32 %112 to i64
  br label %350

350:                                              ; preds = %347, %378
  %351 = phi i64 [ %349, %347 ], [ %383, %378 ]
  %352 = phi i32 [ %111, %347 ], [ %382, %378 ]
  %353 = phi i32 [ %114, %347 ], [ %381, %378 ]
  %354 = phi i32 [ %345, %347 ], [ %380, %378 ]
  %355 = phi ptr [ %344, %347 ], [ %379, %378 ]
  %356 = getelementptr inbounds i32, ptr %99, i64 %351
  %357 = load i32, ptr %356, align 4, !tbaa !39
  %358 = getelementptr inbounds i8, ptr %355, i64 4
  store i32 %357, ptr %358, align 4, !tbaa !141
  store i32 %93, ptr %355, align 8, !tbaa !145
  %359 = icmp ne i32 %353, 0
  %360 = select i1 %348, i1 %359, i1 false
  br i1 %360, label %361, label %385

361:                                              ; preds = %350
  %362 = icmp sgt i32 %352, 1
  br i1 %362, label %363, label %378

363:                                              ; preds = %361
  %364 = tail call i32 @llvm.smin.i32(i32 %353, i32 7)
  %365 = add nsw i32 %364, -1
  %366 = getelementptr inbounds i8, ptr %355, i64 12
  store i32 %365, ptr %366, align 4, !tbaa !147
  %367 = tail call signext i32 @writeSyntaxElement_Run(ptr noundef nonnull %355, ptr noundef %106) #17
  %368 = load i32, ptr %366, align 4, !tbaa !147
  %369 = load i32, ptr %200, align 4, !tbaa !39
  %370 = add nsw i32 %369, %368
  store i32 %370, ptr %200, align 4, !tbaa !39
  %371 = load i32, ptr %366, align 4, !tbaa !147
  %372 = add nsw i32 %371, %354
  %373 = sub nsw i32 %353, %357
  %374 = add nsw i32 %352, -1
  %375 = getelementptr inbounds i8, ptr %355, i64 48
  %376 = load i32, ptr %11, align 8, !tbaa !122
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %11, align 8, !tbaa !122
  br label %378

378:                                              ; preds = %361, %363
  %379 = phi ptr [ %375, %363 ], [ %355, %361 ]
  %380 = phi i32 [ %372, %363 ], [ %354, %361 ]
  %381 = phi i32 [ %373, %363 ], [ %353, %361 ]
  %382 = phi i32 [ %374, %363 ], [ %352, %361 ]
  %383 = add nsw i64 %351, -1
  %384 = icmp sgt i64 %351, 0
  br i1 %384, label %350, label %385

385:                                              ; preds = %378, %350, %343, %197
  %386 = phi i32 [ %203, %197 ], [ %345, %343 ], [ %380, %378 ], [ %354, %350 ]
  ret i32 %386
}

declare dso_local void @levrun_linfo_c2x2(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare dso_local void @writeRunLevel_CABAC(ptr noundef, ptr noundef) #1

declare dso_local void @levrun_linfo_inter(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds i8, ptr %4, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %9
  %11 = getelementptr inbounds i8, ptr %4, i64 31584
  %12 = load i32, ptr %10, align 8, !tbaa !122
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %11, i64 0, i64 %13
  %15 = getelementptr inbounds i8, ptr %4, i64 31568
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = load ptr, ptr @input, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 2992
  %19 = load i32, ptr %18, align 8, !tbaa !137
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %4, i64 14136
  %24 = load ptr, ptr %23, align 8, !tbaa !192
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %30, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = and i32 %1, 1
  %35 = shl i32 %0, 1
  %36 = and i32 %35, 2
  %37 = or disjoint i32 %34, %36
  %38 = getelementptr inbounds i8, ptr %4, i64 72
  store i32 %37, ptr %38, align 8, !tbaa !194
  %39 = icmp slt i32 %0, 2
  %40 = icmp sgt i32 %1, 1
  %41 = zext i1 %40 to i32
  %42 = icmp slt i32 %1, 2
  %43 = select i1 %42, i32 2, i32 3
  %44 = select i1 %39, i32 %41, i32 %43
  %45 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 %44, ptr %45, align 4, !tbaa !193
  %46 = icmp eq i32 %2, 0
  %47 = select i1 %46, i32 12, i32 7
  %48 = select i1 %46, i32 14, i32 9
  %49 = getelementptr inbounds i8, ptr %16, i64 24
  %50 = getelementptr inbounds i8, ptr %10, i64 40
  %51 = load i32, ptr %31, align 4, !tbaa !39
  %52 = getelementptr inbounds i8, ptr %14, i64 4
  store i32 %51, ptr %52, align 4, !tbaa !141
  %53 = load i32, ptr %33, align 4, !tbaa !39
  %54 = getelementptr inbounds i8, ptr %14, i64 8
  store i32 %53, ptr %54, align 8, !tbaa !143
  %55 = getelementptr inbounds i8, ptr %14, i64 40
  store ptr @writeRunLevel_CABAC, ptr %55, align 8, !tbaa !184
  %56 = getelementptr inbounds i8, ptr %14, i64 24
  store i32 5, ptr %56, align 8, !tbaa !183
  store i32 %47, ptr %14, align 8, !tbaa !145
  %57 = load ptr, ptr @img, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 80
  store i32 %2, ptr %58, align 8, !tbaa !191
  %59 = load ptr, ptr %49, align 8, !tbaa !63
  %60 = zext nneg i32 %47 to i64
  %61 = getelementptr inbounds i32, ptr %22, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !39
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.datapartition, ptr %59, i64 %63
  %65 = getelementptr inbounds i8, ptr %64, i64 104
  %66 = load ptr, ptr %65, align 8, !tbaa !146
  %67 = tail call signext i32 %66(ptr noundef nonnull %14, ptr noundef %64) #17
  %68 = getelementptr inbounds i8, ptr %14, i64 12
  %69 = load i32, ptr %68, align 4, !tbaa !147
  %70 = load i32, ptr %50, align 4, !tbaa !39
  %71 = add nsw i32 %70, %69
  store i32 %71, ptr %50, align 4, !tbaa !39
  %72 = load i32, ptr %68, align 4, !tbaa !147
  %73 = load i32, ptr %10, align 8, !tbaa !122
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %10, align 8, !tbaa !122
  %75 = icmp eq i32 %51, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %3
  %77 = zext nneg i32 %48 to i64
  %78 = getelementptr inbounds i32, ptr %22, i64 %77
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi i64 [ 1, %76 ], [ %109, %79 ]
  %81 = phi i32 [ %72, %76 ], [ %106, %79 ]
  %82 = phi ptr [ %14, %76 ], [ %83, %79 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 48
  %84 = getelementptr inbounds i32, ptr %31, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !39
  %86 = getelementptr inbounds i8, ptr %82, i64 52
  store i32 %85, ptr %86, align 4, !tbaa !141
  %87 = getelementptr inbounds i32, ptr %33, i64 %80
  %88 = load i32, ptr %87, align 4, !tbaa !39
  %89 = getelementptr inbounds i8, ptr %82, i64 56
  store i32 %88, ptr %89, align 8, !tbaa !143
  %90 = getelementptr inbounds i8, ptr %82, i64 88
  store ptr @writeRunLevel_CABAC, ptr %90, align 8, !tbaa !184
  %91 = getelementptr inbounds i8, ptr %82, i64 72
  store i32 5, ptr %91, align 8, !tbaa !183
  store i32 %48, ptr %83, align 8, !tbaa !145
  %92 = load ptr, ptr @img, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 80
  store i32 %2, ptr %93, align 8, !tbaa !191
  %94 = load ptr, ptr %49, align 8, !tbaa !63
  %95 = load i32, ptr %78, align 4, !tbaa !39
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.datapartition, ptr %94, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 104
  %99 = load ptr, ptr %98, align 8, !tbaa !146
  %100 = tail call signext i32 %99(ptr noundef nonnull %83, ptr noundef %97) #17
  %101 = getelementptr inbounds i8, ptr %82, i64 60
  %102 = load i32, ptr %101, align 4, !tbaa !147
  %103 = load i32, ptr %50, align 4, !tbaa !39
  %104 = add nsw i32 %103, %102
  store i32 %104, ptr %50, align 4, !tbaa !39
  %105 = load i32, ptr %101, align 4, !tbaa !147
  %106 = add nsw i32 %105, %81
  %107 = load i32, ptr %10, align 8, !tbaa !122
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %10, align 8, !tbaa !122
  %109 = add nuw nsw i64 %80, 1
  %110 = icmp ult i64 %80, 16
  %111 = icmp ne i32 %85, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %79, label %113, !llvm.loop !209

113:                                              ; preds = %79, %3
  %114 = phi i32 [ %72, %3 ], [ %106, %79 ]
  ret i32 %114
}

; Function Attrs: nounwind
define dso_local signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 31576
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds i8, ptr %3, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %8
  %10 = getelementptr inbounds i8, ptr %3, i64 31584
  %11 = load i32, ptr %9, align 8, !tbaa !122
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %10, i64 0, i64 %12
  %14 = getelementptr inbounds i8, ptr %3, i64 31568
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load ptr, ptr @input, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 2992
  %18 = load i32, ptr %17, align 8, !tbaa !137
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %3, i64 14136
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %27, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = shl i32 %0, 1
  %32 = and i32 %31, 2
  %33 = getelementptr inbounds i8, ptr %3, i64 72
  store i32 %32, ptr %33, align 8, !tbaa !194
  %34 = icmp slt i32 %0, 2
  %35 = select i1 %34, i32 0, i32 2
  %36 = getelementptr inbounds i8, ptr %3, i64 76
  store i32 %35, ptr %36, align 4, !tbaa !193
  %37 = icmp eq i32 %1, 0
  %38 = select i1 %37, i32 12, i32 7
  %39 = select i1 %37, i32 14, i32 9
  %40 = getelementptr inbounds i8, ptr %15, i64 24
  %41 = getelementptr inbounds i8, ptr %9, i64 40
  %42 = load i32, ptr %28, align 4, !tbaa !39
  %43 = getelementptr inbounds i8, ptr %13, i64 4
  store i32 %42, ptr %43, align 4, !tbaa !141
  %44 = load i32, ptr %30, align 4, !tbaa !39
  %45 = getelementptr inbounds i8, ptr %13, i64 8
  store i32 %44, ptr %45, align 8, !tbaa !143
  %46 = getelementptr inbounds i8, ptr %13, i64 40
  store ptr @writeRunLevel_CABAC, ptr %46, align 8, !tbaa !184
  %47 = getelementptr inbounds i8, ptr %13, i64 24
  store i32 2, ptr %47, align 8, !tbaa !183
  store i32 %38, ptr %13, align 8, !tbaa !145
  %48 = load ptr, ptr @img, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 80
  store i32 %1, ptr %49, align 8, !tbaa !191
  %50 = load ptr, ptr %40, align 8, !tbaa !63
  %51 = getelementptr inbounds i8, ptr %48, i64 24
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = icmp eq i32 %52, 1
  %54 = select i1 %53, i32 18, i32 %38
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %21, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.datapartition, ptr %50, i64 %58
  %60 = getelementptr inbounds i8, ptr %59, i64 104
  %61 = load ptr, ptr %60, align 8, !tbaa !146
  %62 = tail call signext i32 %61(ptr noundef nonnull %13, ptr noundef %59) #17
  %63 = getelementptr inbounds i8, ptr %13, i64 12
  %64 = load i32, ptr %63, align 4, !tbaa !147
  %65 = load i32, ptr %41, align 4, !tbaa !39
  %66 = add nsw i32 %65, %64
  store i32 %66, ptr %41, align 4, !tbaa !39
  %67 = load i32, ptr %63, align 4, !tbaa !147
  %68 = load i32, ptr %9, align 8, !tbaa !122
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %9, align 8, !tbaa !122
  %70 = icmp eq i32 %42, 0
  br i1 %70, label %111, label %71

71:                                               ; preds = %2, %71
  %72 = phi i64 [ %107, %71 ], [ 1, %2 ]
  %73 = phi i32 [ %104, %71 ], [ %67, %2 ]
  %74 = phi ptr [ %75, %71 ], [ %13, %2 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 48
  %76 = getelementptr inbounds i32, ptr %28, i64 %72
  %77 = load i32, ptr %76, align 4, !tbaa !39
  %78 = getelementptr inbounds i8, ptr %74, i64 52
  store i32 %77, ptr %78, align 4, !tbaa !141
  %79 = getelementptr inbounds i32, ptr %30, i64 %72
  %80 = load i32, ptr %79, align 4, !tbaa !39
  %81 = getelementptr inbounds i8, ptr %74, i64 56
  store i32 %80, ptr %81, align 8, !tbaa !143
  %82 = getelementptr inbounds i8, ptr %74, i64 88
  store ptr @writeRunLevel_CABAC, ptr %82, align 8, !tbaa !184
  %83 = getelementptr inbounds i8, ptr %74, i64 72
  store i32 2, ptr %83, align 8, !tbaa !183
  store i32 %39, ptr %75, align 8, !tbaa !145
  %84 = load ptr, ptr @img, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 80
  store i32 %1, ptr %85, align 8, !tbaa !191
  %86 = load ptr, ptr %40, align 8, !tbaa !63
  %87 = getelementptr inbounds i8, ptr %84, i64 24
  %88 = load i32, ptr %87, align 8, !tbaa !42
  %89 = icmp eq i32 %88, 1
  %90 = select i1 %89, i32 18, i32 %39
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %21, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !39
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %94
  %96 = getelementptr inbounds i8, ptr %95, i64 104
  %97 = load ptr, ptr %96, align 8, !tbaa !146
  %98 = tail call signext i32 %97(ptr noundef nonnull %75, ptr noundef %95) #17
  %99 = getelementptr inbounds i8, ptr %74, i64 60
  %100 = load i32, ptr %99, align 4, !tbaa !147
  %101 = load i32, ptr %41, align 4, !tbaa !39
  %102 = add nsw i32 %101, %100
  store i32 %102, ptr %41, align 4, !tbaa !39
  %103 = load i32, ptr %99, align 4, !tbaa !147
  %104 = add nsw i32 %103, %73
  %105 = load i32, ptr %9, align 8, !tbaa !122
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %9, align 8, !tbaa !122
  %107 = add nuw nsw i64 %72, 1
  %108 = icmp ult i64 %72, 64
  %109 = icmp ne i32 %77, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %71, label %111, !llvm.loop !210

111:                                              ; preds = %71, %2
  %112 = phi i32 [ %67, %2 ], [ %104, %71 ]
  ret i32 %112
}

; Function Attrs: nounwind
define dso_local signext i32 @writeLumaCoeff8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 11
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %1, 13
  %7 = icmp eq i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef signext 3504, ptr noundef nonnull @__PRETTY_FUNCTION__.writeLumaCoeff8x8) #18
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  %12 = load ptr, ptr @input, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 2984
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i32 %14, 0
  br i1 %11, label %17, label %16

16:                                               ; preds = %10
  br i1 %15, label %26, label %37

17:                                               ; preds = %10
  br i1 %15, label %26, label %18

18:                                               ; preds = %17
  %19 = tail call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %0, i32 noundef signext 0, i32 noundef signext %5)
  %20 = tail call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %0, i32 noundef signext 1, i32 noundef signext %5)
  %21 = add nsw i32 %20, %19
  %22 = tail call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %0, i32 noundef signext 2, i32 noundef signext %5)
  %23 = add nsw i32 %22, %21
  %24 = tail call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %0, i32 noundef signext 3, i32 noundef signext %5)
  %25 = add nsw i32 %24, %23
  br label %41

26:                                               ; preds = %16, %17
  %27 = icmp eq i32 %1, 13
  %28 = zext i1 %27 to i32
  %29 = select i1 %11, i32 %5, i32 %28
  %30 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %0, i32 noundef signext 0, i32 noundef signext %29)
  %31 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %0, i32 noundef signext 1, i32 noundef signext %29)
  %32 = add nsw i32 %31, %30
  %33 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %0, i32 noundef signext 2, i32 noundef signext %29)
  %34 = add nsw i32 %33, %32
  %35 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %0, i32 noundef signext 3, i32 noundef signext %29)
  %36 = add nsw i32 %35, %34
  br label %41

37:                                               ; preds = %16
  %38 = icmp eq i32 %1, 13
  %39 = zext i1 %38 to i32
  %40 = tail call signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext %0, i32 noundef signext %39)
  br label %41

41:                                               ; preds = %18, %26, %37
  %42 = phi i32 [ %40, %37 ], [ %36, %26 ], [ %25, %18 ]
  ret i32 %42
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #14

declare dso_local void @cbp_linfo_intra(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare dso_local void @cbp_linfo_inter(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare dso_local void @writeCBP_CABAC(ptr noundef, ptr noundef) #1

declare dso_local void @writeDquant_CABAC(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @predict_nnz(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !10
  call void @getLuma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #17
  %7 = load i32, ptr %3, align 4, !tbaa !171
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 224
  %12 = load i32, ptr %11, align 8, !tbaa !211
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @input, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 2992
  %17 = load i32, ptr %16, align 8, !tbaa !137
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @img, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 31560
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !213
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, ptr %20, i64 89192
  %28 = load ptr, ptr %27, align 8, !tbaa !135
  %29 = getelementptr inbounds i8, ptr %3, i64 4
  %30 = load i32, ptr %29, align 4, !tbaa !173
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %28, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = and i32 %33, %7
  store i32 %34, ptr %3, align 4, !tbaa !171
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %19, %14, %9, %26
  %37 = load ptr, ptr @img, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 128
  %39 = load ptr, ptr %38, align 8, !tbaa !187
  %40 = getelementptr inbounds i8, ptr %3, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !173
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %3, i64 8
  %46 = load i32, ptr %45, align 4, !tbaa !215
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %44, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %3, i64 12
  %51 = load i32, ptr %50, align 4, !tbaa !216
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %49, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !39
  br label %55

55:                                               ; preds = %2, %36, %26
  %56 = phi i1 [ true, %36 ], [ false, %26 ], [ false, %2 ]
  %57 = phi i32 [ %54, %36 ], [ 0, %26 ], [ 0, %2 ]
  call void @getLuma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %3) #17
  %58 = load i32, ptr %3, align 4, !tbaa !171
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %110, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 224
  %63 = load i32, ptr %62, align 8, !tbaa !211
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr @input, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 2992
  %68 = load i32, ptr %67, align 8, !tbaa !137
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @img, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 31560
  %73 = load ptr, ptr %72, align 8, !tbaa !212
  %74 = getelementptr inbounds i8, ptr %73, i64 4
  %75 = load i32, ptr %74, align 4, !tbaa !213
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = getelementptr inbounds i8, ptr %71, i64 89192
  %79 = load ptr, ptr %78, align 8, !tbaa !135
  %80 = getelementptr inbounds i8, ptr %3, i64 4
  %81 = load i32, ptr %80, align 4, !tbaa !173
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %79, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !39
  %85 = and i32 %84, %58
  store i32 %85, ptr %3, align 4, !tbaa !171
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %70, %65, %60, %77
  %88 = load ptr, ptr @img, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 128
  %90 = load ptr, ptr %89, align 8, !tbaa !187
  %91 = getelementptr inbounds i8, ptr %3, i64 4
  %92 = load i32, ptr %91, align 4, !tbaa !173
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %90, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %3, i64 8
  %97 = load i32, ptr %96, align 4, !tbaa !215
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %3, i64 12
  %102 = load i32, ptr %101, align 4, !tbaa !216
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %100, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !39
  %106 = add nsw i32 %105, %57
  br i1 %56, label %107, label %110

107:                                              ; preds = %87
  %108 = add nsw i32 %106, 1
  %109 = sdiv i32 %108, 2
  br label %110

110:                                              ; preds = %55, %77, %107, %87
  %111 = phi i32 [ %109, %107 ], [ %106, %87 ], [ %57, %77 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %111
}

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @predict_nnz_chroma(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [12 x i32], ptr @predict_nnz_chroma.j_off_tab, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = getelementptr inbounds i8, ptr %4, i64 90548
  %11 = load i32, ptr %10, align 4, !tbaa !30
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %120, label %13

13:                                               ; preds = %2
  %14 = and i32 %0, 1
  %15 = add nsw i32 %1, -4
  call void @getChroma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #17
  %16 = load i32, ptr %3, align 4, !tbaa !171
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 224
  %21 = load i32, ptr %20, align 8, !tbaa !211
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @input, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 2992
  %26 = load i32, ptr %25, align 8, !tbaa !137
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @img, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 31560
  %31 = load ptr, ptr %30, align 8, !tbaa !212
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !213
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %29, i64 89192
  %37 = load ptr, ptr %36, align 8, !tbaa !135
  %38 = getelementptr inbounds i8, ptr %3, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !173
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = and i32 %42, %16
  store i32 %43, ptr %3, align 4, !tbaa !171
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %28, %23, %18, %35
  %46 = load ptr, ptr @img, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 128
  %48 = load ptr, ptr %47, align 8, !tbaa !187
  %49 = getelementptr inbounds i8, ptr %3, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !173
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %48, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = and i32 %0, -2
  %55 = getelementptr inbounds i8, ptr %3, i64 8
  %56 = load i32, ptr %55, align 4, !tbaa !215
  %57 = add nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %53, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %3, i64 12
  %62 = load i32, ptr %61, align 4, !tbaa !216
  %63 = sext i32 %62 to i64
  %64 = getelementptr i32, ptr %60, i64 %63
  %65 = getelementptr i8, ptr %64, i64 16
  %66 = load i32, ptr %65, align 4, !tbaa !39
  br label %67

67:                                               ; preds = %13, %45, %35
  %68 = phi i32 [ 2, %45 ], [ 1, %35 ], [ 1, %13 ]
  %69 = phi i32 [ %66, %45 ], [ 0, %35 ], [ 0, %13 ]
  call void @getChroma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %3) #17
  %70 = load i32, ptr %3, align 4, !tbaa !171
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %232, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 224
  %75 = load i32, ptr %74, align 8, !tbaa !211
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr @input, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %78, i64 2992
  %80 = load i32, ptr %79, align 8, !tbaa !137
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr @img, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 31560
  %85 = load ptr, ptr %84, align 8, !tbaa !212
  %86 = getelementptr inbounds i8, ptr %85, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !213
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = getelementptr inbounds i8, ptr %83, i64 89192
  %91 = load ptr, ptr %90, align 8, !tbaa !135
  %92 = getelementptr inbounds i8, ptr %3, i64 4
  %93 = load i32, ptr %92, align 4, !tbaa !173
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !39
  %97 = and i32 %96, %70
  store i32 %97, ptr %3, align 4, !tbaa !171
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %232, label %99

99:                                               ; preds = %82, %77, %72, %89
  %100 = load ptr, ptr @img, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 128
  %102 = load ptr, ptr %101, align 8, !tbaa !187
  %103 = getelementptr inbounds i8, ptr %3, i64 4
  %104 = load i32, ptr %103, align 4, !tbaa !173
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = and i32 %0, -2
  %109 = getelementptr inbounds i8, ptr %3, i64 8
  %110 = load i32, ptr %109, align 4, !tbaa !215
  %111 = add nsw i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %107, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %3, i64 12
  %116 = load i32, ptr %115, align 4, !tbaa !216
  %117 = sext i32 %116 to i64
  %118 = getelementptr i32, ptr %114, i64 %117
  %119 = getelementptr i8, ptr %118, i64 16
  br label %222

120:                                              ; preds = %2
  %121 = sub nsw i32 %1, %9
  call void @getChroma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %0, i32 noundef signext %121, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #17
  %122 = load i32, ptr %3, align 4, !tbaa !171
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %171, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 224
  %127 = load i32, ptr %126, align 8, !tbaa !211
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %151, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr @input, align 8, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %130, i64 2992
  %132 = load i32, ptr %131, align 8, !tbaa !137
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr @img, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 31560
  %137 = load ptr, ptr %136, align 8, !tbaa !212
  %138 = getelementptr inbounds i8, ptr %137, i64 4
  %139 = load i32, ptr %138, align 4, !tbaa !213
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = getelementptr inbounds i8, ptr %135, i64 89192
  %143 = load ptr, ptr %142, align 8, !tbaa !135
  %144 = getelementptr inbounds i8, ptr %3, i64 4
  %145 = load i32, ptr %144, align 4, !tbaa !173
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %143, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !39
  %149 = and i32 %148, %122
  store i32 %149, ptr %3, align 4, !tbaa !171
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %171, label %151

151:                                              ; preds = %134, %129, %124, %141
  %152 = load ptr, ptr @img, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %152, i64 128
  %154 = load ptr, ptr %153, align 8, !tbaa !187
  %155 = getelementptr inbounds i8, ptr %3, i64 4
  %156 = load i32, ptr %155, align 4, !tbaa !173
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %3, i64 8
  %161 = load i32, ptr %160, align 4, !tbaa !215
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %159, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %3, i64 12
  %166 = load i32, ptr %165, align 4, !tbaa !216
  %167 = add nsw i32 %166, %9
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %164, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !39
  br label %171

171:                                              ; preds = %120, %151, %141
  %172 = phi i32 [ 2, %151 ], [ 1, %141 ], [ 1, %120 ]
  %173 = phi i32 [ %170, %151 ], [ 0, %141 ], [ 0, %120 ]
  call void @getChroma4x4Neighbour(i32 noundef signext %6, i32 noundef signext %0, i32 noundef signext %121, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %3) #17
  %174 = load i32, ptr %3, align 4, !tbaa !171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %232, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %177, i64 224
  %179 = load i32, ptr %178, align 8, !tbaa !211
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %203, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr @input, align 8, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %182, i64 2992
  %184 = load i32, ptr %183, align 8, !tbaa !137
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %203, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr @img, align 8, !tbaa !6
  %188 = getelementptr inbounds i8, ptr %187, i64 31560
  %189 = load ptr, ptr %188, align 8, !tbaa !212
  %190 = getelementptr inbounds i8, ptr %189, i64 4
  %191 = load i32, ptr %190, align 4, !tbaa !213
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %186
  %194 = getelementptr inbounds i8, ptr %187, i64 89192
  %195 = load ptr, ptr %194, align 8, !tbaa !135
  %196 = getelementptr inbounds i8, ptr %3, i64 4
  %197 = load i32, ptr %196, align 4, !tbaa !173
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %195, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !39
  %201 = and i32 %200, %174
  store i32 %201, ptr %3, align 4, !tbaa !171
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %232, label %203

203:                                              ; preds = %186, %181, %176, %193
  %204 = load ptr, ptr @img, align 8, !tbaa !6
  %205 = getelementptr inbounds i8, ptr %204, i64 128
  %206 = load ptr, ptr %205, align 8, !tbaa !187
  %207 = getelementptr inbounds i8, ptr %3, i64 4
  %208 = load i32, ptr %207, align 4, !tbaa !173
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds ptr, ptr %206, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %3, i64 8
  %213 = load i32, ptr %212, align 4, !tbaa !215
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %211, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %3, i64 12
  %218 = load i32, ptr %217, align 4, !tbaa !216
  %219 = add nsw i32 %218, %9
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, ptr %216, i64 %220
  br label %222

222:                                              ; preds = %203, %99
  %223 = phi ptr [ %221, %203 ], [ %119, %99 ]
  %224 = phi i32 [ %173, %203 ], [ %69, %99 ]
  %225 = phi i32 [ %172, %203 ], [ %68, %99 ]
  %226 = load i32, ptr %223, align 4, !tbaa !39
  %227 = add nsw i32 %226, %224
  %228 = icmp eq i32 %225, 2
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = add nsw i32 %227, 1
  %231 = sdiv i32 %230, 2
  br label %232

232:                                              ; preds = %171, %67, %193, %89, %229, %222
  %233 = phi i32 [ %231, %229 ], [ %227, %222 ], [ %173, %193 ], [ %69, %89 ], [ %69, %67 ], [ %173, %171 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %233
}

declare dso_local void @getChroma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #14

declare dso_local signext i32 @writeSyntaxElement_VLC(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_Level_VLC1(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_Level_VLCN(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_TotalZeros(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_TotalZerosChromaDC(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @writeSyntaxElement_Run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 500000) i32 @find_sad_16x16(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x [4 x [4 x i32]]]], align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca [17 x %struct.pix_pos], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #17
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %4) #17
  br label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %13, %8 ]
  %10 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %9
  %11 = trunc i64 %9 to i32
  %12 = add i32 %11, -1
  call void @getNeighbour(i32 noundef signext %7, i32 noundef signext -1, i32 noundef signext %12, i32 noundef signext 1, ptr noundef nonnull %10) #17
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 17
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  call void @getNeighbour(i32 noundef signext %7, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 1, ptr noundef nonnull %3) #17
  %16 = load ptr, ptr @input, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 220
  %18 = load i32, ptr %17, align 4, !tbaa !134
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %3, align 4, !tbaa !171
  br i1 %19, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %4, i64 24
  %23 = load i32, ptr %22, align 4, !tbaa !171
  %24 = load i32, ptr %4, align 4, !tbaa !171
  br label %67

25:                                               ; preds = %15
  %26 = icmp eq i32 %20, 0
  %27 = load ptr, ptr @img, align 8
  br i1 %26, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %27, i64 89192
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = getelementptr inbounds i8, ptr %3, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !173
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !39
  br label %36

36:                                               ; preds = %25, %28
  %37 = phi i32 [ %35, %28 ], [ 0, %25 ]
  %38 = getelementptr inbounds i8, ptr %27, i64 89192
  br label %39

39:                                               ; preds = %36, %52
  %40 = phi i64 [ 1, %36 ], [ %55, %52 ]
  %41 = phi i32 [ 1, %36 ], [ %54, %52 ]
  %42 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !171
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %38, align 8, !tbaa !135
  %47 = getelementptr inbounds i8, ptr %42, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !173
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %46, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !39
  br label %52

52:                                               ; preds = %39, %45
  %53 = phi i32 [ %51, %45 ], [ 0, %39 ]
  %54 = and i32 %53, %41
  %55 = add nuw nsw i64 %40, 1
  %56 = icmp eq i64 %55, 17
  br i1 %56, label %57, label %39

57:                                               ; preds = %52
  %58 = load i32, ptr %4, align 4, !tbaa !171
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %38, align 8, !tbaa !135
  %62 = getelementptr inbounds i8, ptr %4, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !173
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !39
  br label %67

67:                                               ; preds = %60, %57, %21
  %68 = phi i32 [ %20, %21 ], [ %37, %57 ], [ %37, %60 ]
  %69 = phi i32 [ %23, %21 ], [ %54, %57 ], [ %54, %60 ]
  %70 = phi i32 [ %24, %21 ], [ 0, %57 ], [ %66, %60 ]
  store i32 2, ptr %0, align 4, !tbaa !39
  %71 = getelementptr inbounds i8, ptr %16, i64 3024
  %72 = load ptr, ptr @img, align 8
  %73 = getelementptr inbounds i8, ptr %72, i64 24
  %74 = getelementptr inbounds i8, ptr %16, i64 3040
  %75 = getelementptr inbounds i8, ptr %16, i64 3044
  %76 = icmp ne i32 %68, 0
  %77 = icmp ne i32 %69, 0
  %78 = select i1 %77, i1 %76, i1 false
  %79 = icmp ne i32 %70, 0
  %80 = select i1 %78, i1 %79, i1 false
  %81 = load ptr, ptr @imgY_org, align 8
  %82 = getelementptr inbounds i8, ptr %72, i64 172
  %83 = getelementptr inbounds i8, ptr %72, i64 168
  %84 = getelementptr inbounds i8, ptr %72, i64 4792
  %85 = getelementptr inbounds i8, ptr %2, i64 768
  %86 = getelementptr inbounds i8, ptr %2, i64 256
  %87 = getelementptr inbounds i8, ptr %2, i64 512
  %88 = getelementptr inbounds i8, ptr %2, i64 64
  %89 = getelementptr inbounds i8, ptr %2, i64 128
  %90 = getelementptr inbounds i8, ptr %2, i64 192
  %91 = getelementptr inbounds i8, ptr %2, i64 4
  %92 = getelementptr inbounds i8, ptr %2, i64 68
  %93 = getelementptr inbounds i8, ptr %2, i64 132
  %94 = getelementptr inbounds i8, ptr %2, i64 196
  %95 = getelementptr inbounds i8, ptr %2, i64 8
  %96 = getelementptr inbounds i8, ptr %2, i64 72
  %97 = getelementptr inbounds i8, ptr %2, i64 136
  %98 = getelementptr inbounds i8, ptr %2, i64 200
  %99 = getelementptr inbounds i8, ptr %2, i64 12
  %100 = getelementptr inbounds i8, ptr %2, i64 76
  %101 = getelementptr inbounds i8, ptr %2, i64 140
  %102 = getelementptr inbounds i8, ptr %2, i64 204
  br label %103

103:                                              ; preds = %67, %478
  %104 = phi i64 [ 0, %67 ], [ %480, %478 ]
  %105 = phi i32 [ 999999, %67 ], [ %479, %478 ]
  %106 = load i32, ptr %71, align 8, !tbaa !179
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %73, align 8, !tbaa !42
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %124, label %111

111:                                              ; preds = %108, %103
  %112 = load i32, ptr %74, align 8, !tbaa !217
  %113 = icmp ne i32 %112, 0
  %114 = icmp ult i64 %104, 2
  %115 = and i1 %114, %113
  br i1 %115, label %478, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %75, align 4, !tbaa !218
  %118 = icmp eq i32 %117, 0
  %119 = icmp ne i64 %104, 3
  %120 = or i1 %119, %118
  %121 = icmp ne i64 %104, 0
  %122 = select i1 %121, i1 true, i1 %76
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %127, label %478

124:                                              ; preds = %108
  %125 = icmp ne i64 %104, 0
  %126 = select i1 %125, i1 true, i1 %76
  br i1 %126, label %127, label %478

127:                                              ; preds = %116, %124
  %128 = icmp ne i64 %104, 1
  %129 = select i1 %128, i1 true, i1 %77
  br i1 %129, label %130, label %478

130:                                              ; preds = %127
  %131 = icmp ne i64 %104, 3
  %132 = select i1 %131, i1 true, i1 %80
  br i1 %132, label %133, label %482

133:                                              ; preds = %130
  %134 = load i32, ptr %82, align 4, !tbaa !28
  %135 = load i32, ptr %83, align 8, !tbaa !22
  %136 = sext i32 %135 to i64
  %137 = sext i32 %134 to i64
  %138 = getelementptr ptr, ptr %81, i64 %137
  br label %139

139:                                              ; preds = %133, %162
  %140 = phi i64 [ 0, %133 ], [ %163, %162 ]
  %141 = getelementptr ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = and i64 %140, 3
  %144 = lshr i64 %140, 2
  %145 = and i64 %144, 1073741823
  %146 = getelementptr i16, ptr %142, i64 %136
  br label %147

147:                                              ; preds = %139, %147
  %148 = phi i64 [ 0, %139 ], [ %160, %147 ]
  %149 = getelementptr i16, ptr %146, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !153
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %84, i64 0, i64 %104, i64 %140, i64 %148
  %153 = load i16, ptr %152, align 2, !tbaa !153
  %154 = zext i16 %153 to i32
  %155 = sub nsw i32 %151, %154
  %156 = and i64 %148, 3
  %157 = lshr i64 %148, 2
  %158 = and i64 %157, 1073741823
  %159 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %2, i64 0, i64 %156, i64 %158, i64 %143, i64 %145
  store i32 %155, ptr %159, align 4, !tbaa !39
  %160 = add nuw nsw i64 %148, 1
  %161 = icmp eq i64 %160, 16
  br i1 %161, label %162, label %147

162:                                              ; preds = %147
  %163 = add nuw nsw i64 %140, 1
  %164 = icmp eq i64 %163, 16
  br i1 %164, label %295, label %139

165:                                              ; preds = %473
  %166 = load i32, ptr %2, align 4, !tbaa !39
  %167 = sdiv i32 %166, 4
  %168 = load i32, ptr %88, align 4, !tbaa !39
  %169 = sdiv i32 %168, 4
  %170 = load i32, ptr %89, align 4, !tbaa !39
  %171 = sdiv i32 %170, 4
  %172 = load i32, ptr %90, align 4, !tbaa !39
  %173 = sdiv i32 %172, 4
  %174 = load i32, ptr %91, align 4, !tbaa !39
  %175 = sdiv i32 %174, 4
  %176 = load i32, ptr %92, align 4, !tbaa !39
  %177 = sdiv i32 %176, 4
  %178 = load i32, ptr %93, align 4, !tbaa !39
  %179 = sdiv i32 %178, 4
  %180 = load i32, ptr %94, align 4, !tbaa !39
  %181 = sdiv i32 %180, 4
  %182 = load i32, ptr %95, align 4, !tbaa !39
  %183 = sdiv i32 %182, 4
  %184 = load i32, ptr %96, align 4, !tbaa !39
  %185 = sdiv i32 %184, 4
  %186 = load i32, ptr %97, align 4, !tbaa !39
  %187 = sdiv i32 %186, 4
  %188 = load i32, ptr %98, align 4, !tbaa !39
  %189 = sdiv i32 %188, 4
  %190 = load i32, ptr %99, align 4, !tbaa !39
  %191 = sdiv i32 %190, 4
  %192 = load i32, ptr %100, align 4, !tbaa !39
  %193 = sdiv i32 %192, 4
  %194 = load i32, ptr %101, align 4, !tbaa !39
  %195 = sdiv i32 %194, 4
  %196 = load i32, ptr %102, align 4, !tbaa !39
  %197 = sdiv i32 %196, 4
  %198 = add nsw i32 %173, %167
  %199 = add nsw i32 %171, %169
  %200 = sub nsw i32 %169, %171
  %201 = sub nsw i32 %167, %173
  %202 = add nsw i32 %199, %198
  %203 = sub nsw i32 %198, %199
  %204 = add nsw i32 %200, %201
  %205 = sub nsw i32 %201, %200
  %206 = add nsw i32 %181, %175
  %207 = add nsw i32 %179, %177
  %208 = sub nsw i32 %177, %179
  %209 = sub nsw i32 %175, %181
  %210 = add nsw i32 %207, %206
  %211 = sub nsw i32 %206, %207
  %212 = add nsw i32 %208, %209
  %213 = sub nsw i32 %209, %208
  %214 = add nsw i32 %189, %183
  %215 = add nsw i32 %187, %185
  %216 = sub nsw i32 %185, %187
  %217 = sub nsw i32 %183, %189
  %218 = add nsw i32 %215, %214
  %219 = sub nsw i32 %214, %215
  %220 = add nsw i32 %216, %217
  %221 = sub nsw i32 %217, %216
  %222 = add nsw i32 %197, %191
  %223 = add nsw i32 %195, %193
  %224 = sub nsw i32 %193, %195
  %225 = sub nsw i32 %191, %197
  %226 = add nsw i32 %223, %222
  %227 = sub nsw i32 %222, %223
  %228 = add nsw i32 %224, %225
  %229 = sub nsw i32 %225, %224
  %230 = add nsw i32 %226, %202
  %231 = add nsw i32 %218, %210
  %232 = sub nsw i32 %210, %218
  %233 = sub nsw i32 %202, %226
  %234 = add nsw i32 %231, %230
  %235 = sub nsw i32 %230, %231
  %236 = add nsw i32 %232, %233
  %237 = sub nsw i32 %233, %232
  %238 = call i32 @llvm.abs.i32(i32 %234, i1 true)
  %239 = add nuw nsw i32 %238, %470
  %240 = call i32 @llvm.abs.i32(i32 %236, i1 true)
  %241 = add nuw nsw i32 %240, %239
  %242 = call i32 @llvm.abs.i32(i32 %235, i1 true)
  %243 = add nuw nsw i32 %242, %241
  %244 = call i32 @llvm.abs.i32(i32 %237, i1 true)
  %245 = add nuw nsw i32 %244, %243
  %246 = add nsw i32 %228, %204
  %247 = add nsw i32 %220, %212
  %248 = sub nsw i32 %212, %220
  %249 = sub nsw i32 %204, %228
  %250 = add nsw i32 %247, %246
  %251 = sub nsw i32 %246, %247
  %252 = add nsw i32 %248, %249
  %253 = sub nsw i32 %249, %248
  %254 = call i32 @llvm.abs.i32(i32 %250, i1 true)
  %255 = add nuw nsw i32 %254, %245
  %256 = call i32 @llvm.abs.i32(i32 %252, i1 true)
  %257 = add nuw nsw i32 %256, %255
  %258 = call i32 @llvm.abs.i32(i32 %251, i1 true)
  %259 = add nuw nsw i32 %258, %257
  %260 = call i32 @llvm.abs.i32(i32 %253, i1 true)
  %261 = add nuw nsw i32 %260, %259
  %262 = add nsw i32 %227, %203
  %263 = add nsw i32 %219, %211
  %264 = sub nsw i32 %211, %219
  %265 = sub nsw i32 %203, %227
  %266 = add nsw i32 %263, %262
  %267 = sub nsw i32 %262, %263
  %268 = add nsw i32 %264, %265
  %269 = sub nsw i32 %265, %264
  %270 = call i32 @llvm.abs.i32(i32 %266, i1 true)
  %271 = add nuw nsw i32 %270, %261
  %272 = call i32 @llvm.abs.i32(i32 %268, i1 true)
  %273 = add nuw nsw i32 %272, %271
  %274 = call i32 @llvm.abs.i32(i32 %267, i1 true)
  %275 = add nuw nsw i32 %274, %273
  %276 = call i32 @llvm.abs.i32(i32 %269, i1 true)
  %277 = add nuw nsw i32 %276, %275
  %278 = add nsw i32 %229, %205
  %279 = add nsw i32 %221, %213
  %280 = sub nsw i32 %213, %221
  %281 = sub nsw i32 %205, %229
  %282 = add nsw i32 %279, %278
  %283 = sub nsw i32 %278, %279
  %284 = add nsw i32 %280, %281
  %285 = sub nsw i32 %281, %280
  %286 = call i32 @llvm.abs.i32(i32 %282, i1 true)
  %287 = add nuw nsw i32 %286, %277
  %288 = call i32 @llvm.abs.i32(i32 %284, i1 true)
  %289 = add nuw nsw i32 %288, %287
  %290 = call i32 @llvm.abs.i32(i32 %283, i1 true)
  %291 = add nuw nsw i32 %290, %289
  %292 = call i32 @llvm.abs.i32(i32 %285, i1 true)
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp slt i32 %293, %105
  br i1 %294, label %476, label %478

295:                                              ; preds = %162, %473
  %296 = phi i64 [ %474, %473 ], [ 0, %162 ]
  %297 = phi i32 [ %470, %473 ], [ 0, %162 ]
  br label %298

298:                                              ; preds = %295, %298
  %299 = phi i64 [ 0, %295 ], [ %471, %298 ]
  %300 = phi i32 [ %297, %295 ], [ %470, %298 ]
  %301 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %2, i64 0, i64 %299, i64 0, i64 %296
  %302 = load i32, ptr %301, align 4, !tbaa !39
  %303 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %85, i64 0, i64 %299, i64 0, i64 %296
  %304 = load i32, ptr %303, align 4, !tbaa !39
  %305 = add nsw i32 %304, %302
  %306 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %86, i64 0, i64 %299, i64 0, i64 %296
  %307 = load i32, ptr %306, align 4, !tbaa !39
  %308 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %87, i64 0, i64 %299, i64 0, i64 %296
  %309 = load i32, ptr %308, align 4, !tbaa !39
  %310 = add nsw i32 %309, %307
  %311 = sub nsw i32 %307, %309
  %312 = sub nsw i32 %302, %304
  %313 = add nsw i32 %310, %305
  %314 = sub nsw i32 %305, %310
  store i32 %314, ptr %308, align 4, !tbaa !39
  %315 = add nsw i32 %311, %312
  store i32 %315, ptr %306, align 4, !tbaa !39
  %316 = sub nsw i32 %312, %311
  store i32 %316, ptr %303, align 4, !tbaa !39
  %317 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %2, i64 0, i64 %299, i64 1, i64 %296
  %318 = load i32, ptr %317, align 4, !tbaa !39
  %319 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %85, i64 0, i64 %299, i64 1, i64 %296
  %320 = load i32, ptr %319, align 4, !tbaa !39
  %321 = add nsw i32 %320, %318
  %322 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %86, i64 0, i64 %299, i64 1, i64 %296
  %323 = load i32, ptr %322, align 4, !tbaa !39
  %324 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %87, i64 0, i64 %299, i64 1, i64 %296
  %325 = load i32, ptr %324, align 4, !tbaa !39
  %326 = add nsw i32 %325, %323
  %327 = sub nsw i32 %323, %325
  %328 = sub nsw i32 %318, %320
  %329 = add nsw i32 %326, %321
  %330 = sub nsw i32 %321, %326
  store i32 %330, ptr %324, align 4, !tbaa !39
  %331 = add nsw i32 %327, %328
  store i32 %331, ptr %322, align 4, !tbaa !39
  %332 = sub nsw i32 %328, %327
  store i32 %332, ptr %319, align 4, !tbaa !39
  %333 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %2, i64 0, i64 %299, i64 2, i64 %296
  %334 = load i32, ptr %333, align 4, !tbaa !39
  %335 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %85, i64 0, i64 %299, i64 2, i64 %296
  %336 = load i32, ptr %335, align 4, !tbaa !39
  %337 = add nsw i32 %336, %334
  %338 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %86, i64 0, i64 %299, i64 2, i64 %296
  %339 = load i32, ptr %338, align 4, !tbaa !39
  %340 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %87, i64 0, i64 %299, i64 2, i64 %296
  %341 = load i32, ptr %340, align 4, !tbaa !39
  %342 = add nsw i32 %341, %339
  %343 = sub nsw i32 %339, %341
  %344 = sub nsw i32 %334, %336
  %345 = add nsw i32 %342, %337
  %346 = sub nsw i32 %337, %342
  store i32 %346, ptr %340, align 4, !tbaa !39
  %347 = add nsw i32 %343, %344
  store i32 %347, ptr %338, align 4, !tbaa !39
  %348 = sub nsw i32 %344, %343
  store i32 %348, ptr %335, align 4, !tbaa !39
  %349 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %2, i64 0, i64 %299, i64 3, i64 %296
  %350 = load i32, ptr %349, align 4, !tbaa !39
  %351 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %85, i64 0, i64 %299, i64 3, i64 %296
  %352 = load i32, ptr %351, align 4, !tbaa !39
  %353 = add nsw i32 %352, %350
  %354 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %86, i64 0, i64 %299, i64 3, i64 %296
  %355 = load i32, ptr %354, align 4, !tbaa !39
  %356 = getelementptr inbounds [4 x [4 x [4 x i32]]], ptr %87, i64 0, i64 %299, i64 3, i64 %296
  %357 = load i32, ptr %356, align 4, !tbaa !39
  %358 = add nsw i32 %357, %355
  %359 = sub nsw i32 %355, %357
  %360 = sub nsw i32 %350, %352
  %361 = add nsw i32 %358, %353
  %362 = sub nsw i32 %353, %358
  store i32 %362, ptr %356, align 4, !tbaa !39
  %363 = add nsw i32 %359, %360
  store i32 %363, ptr %354, align 4, !tbaa !39
  %364 = sub nsw i32 %360, %359
  store i32 %364, ptr %351, align 4, !tbaa !39
  %365 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %2, i64 0, i64 0, i64 %299
  %366 = getelementptr inbounds [4 x i32], ptr %365, i64 0, i64 %296
  %367 = getelementptr inbounds i8, ptr %365, i64 48
  %368 = getelementptr inbounds [4 x i32], ptr %367, i64 0, i64 %296
  %369 = add nsw i32 %361, %313
  %370 = getelementptr inbounds i8, ptr %365, i64 16
  %371 = getelementptr inbounds [4 x i32], ptr %370, i64 0, i64 %296
  %372 = getelementptr inbounds i8, ptr %365, i64 32
  %373 = getelementptr inbounds [4 x i32], ptr %372, i64 0, i64 %296
  %374 = add nsw i32 %345, %329
  %375 = sub nsw i32 %329, %345
  %376 = sub nsw i32 %313, %361
  %377 = add nsw i32 %374, %369
  store i32 %377, ptr %366, align 4, !tbaa !39
  %378 = sub nsw i32 %369, %374
  store i32 %378, ptr %373, align 4, !tbaa !39
  %379 = add nsw i32 %375, %376
  store i32 %379, ptr %371, align 4, !tbaa !39
  %380 = sub nsw i32 %376, %375
  store i32 %380, ptr %368, align 4, !tbaa !39
  %381 = call i32 @llvm.abs.i32(i32 %380, i1 true)
  %382 = call i32 @llvm.abs.i32(i32 %378, i1 true)
  %383 = call i32 @llvm.abs.i32(i32 %379, i1 true)
  %384 = add nuw nsw i32 %383, %300
  %385 = add nuw nsw i32 %382, %384
  %386 = add nuw nsw i32 %381, %385
  %387 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %2, i64 0, i64 1, i64 %299
  %388 = getelementptr inbounds [4 x i32], ptr %387, i64 0, i64 %296
  %389 = load i32, ptr %388, align 4, !tbaa !39
  %390 = getelementptr inbounds i8, ptr %387, i64 48
  %391 = getelementptr inbounds [4 x i32], ptr %390, i64 0, i64 %296
  %392 = load i32, ptr %391, align 4, !tbaa !39
  %393 = add nsw i32 %392, %389
  %394 = getelementptr inbounds i8, ptr %387, i64 16
  %395 = getelementptr inbounds [4 x i32], ptr %394, i64 0, i64 %296
  %396 = load i32, ptr %395, align 4, !tbaa !39
  %397 = getelementptr inbounds i8, ptr %387, i64 32
  %398 = getelementptr inbounds [4 x i32], ptr %397, i64 0, i64 %296
  %399 = load i32, ptr %398, align 4, !tbaa !39
  %400 = add nsw i32 %399, %396
  %401 = sub nsw i32 %396, %399
  %402 = sub nsw i32 %389, %392
  %403 = add nsw i32 %400, %393
  store i32 %403, ptr %388, align 4, !tbaa !39
  %404 = sub nsw i32 %393, %400
  store i32 %404, ptr %398, align 4, !tbaa !39
  %405 = add nsw i32 %401, %402
  store i32 %405, ptr %395, align 4, !tbaa !39
  %406 = sub nsw i32 %402, %401
  store i32 %406, ptr %391, align 4, !tbaa !39
  %407 = call i32 @llvm.abs.i32(i32 %403, i1 true)
  %408 = add nuw nsw i32 %407, %386
  %409 = call i32 @llvm.abs.i32(i32 %405, i1 true)
  %410 = add nuw nsw i32 %409, %408
  %411 = call i32 @llvm.abs.i32(i32 %404, i1 true)
  %412 = add nuw nsw i32 %411, %410
  %413 = call i32 @llvm.abs.i32(i32 %406, i1 true)
  %414 = add nuw nsw i32 %413, %412
  %415 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %2, i64 0, i64 2, i64 %299
  %416 = getelementptr inbounds [4 x i32], ptr %415, i64 0, i64 %296
  %417 = load i32, ptr %416, align 4, !tbaa !39
  %418 = getelementptr inbounds i8, ptr %415, i64 48
  %419 = getelementptr inbounds [4 x i32], ptr %418, i64 0, i64 %296
  %420 = load i32, ptr %419, align 4, !tbaa !39
  %421 = add nsw i32 %420, %417
  %422 = getelementptr inbounds i8, ptr %415, i64 16
  %423 = getelementptr inbounds [4 x i32], ptr %422, i64 0, i64 %296
  %424 = load i32, ptr %423, align 4, !tbaa !39
  %425 = getelementptr inbounds i8, ptr %415, i64 32
  %426 = getelementptr inbounds [4 x i32], ptr %425, i64 0, i64 %296
  %427 = load i32, ptr %426, align 4, !tbaa !39
  %428 = add nsw i32 %427, %424
  %429 = sub nsw i32 %424, %427
  %430 = sub nsw i32 %417, %420
  %431 = add nsw i32 %428, %421
  store i32 %431, ptr %416, align 4, !tbaa !39
  %432 = sub nsw i32 %421, %428
  store i32 %432, ptr %426, align 4, !tbaa !39
  %433 = add nsw i32 %429, %430
  store i32 %433, ptr %423, align 4, !tbaa !39
  %434 = sub nsw i32 %430, %429
  store i32 %434, ptr %419, align 4, !tbaa !39
  %435 = call i32 @llvm.abs.i32(i32 %431, i1 true)
  %436 = add nuw nsw i32 %435, %414
  %437 = call i32 @llvm.abs.i32(i32 %433, i1 true)
  %438 = add nuw nsw i32 %437, %436
  %439 = call i32 @llvm.abs.i32(i32 %432, i1 true)
  %440 = add nuw nsw i32 %439, %438
  %441 = call i32 @llvm.abs.i32(i32 %434, i1 true)
  %442 = add nuw nsw i32 %441, %440
  %443 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %2, i64 0, i64 3, i64 %299
  %444 = getelementptr inbounds [4 x i32], ptr %443, i64 0, i64 %296
  %445 = load i32, ptr %444, align 4, !tbaa !39
  %446 = getelementptr inbounds i8, ptr %443, i64 48
  %447 = getelementptr inbounds [4 x i32], ptr %446, i64 0, i64 %296
  %448 = load i32, ptr %447, align 4, !tbaa !39
  %449 = add nsw i32 %448, %445
  %450 = getelementptr inbounds i8, ptr %443, i64 16
  %451 = getelementptr inbounds [4 x i32], ptr %450, i64 0, i64 %296
  %452 = load i32, ptr %451, align 4, !tbaa !39
  %453 = getelementptr inbounds i8, ptr %443, i64 32
  %454 = getelementptr inbounds [4 x i32], ptr %453, i64 0, i64 %296
  %455 = load i32, ptr %454, align 4, !tbaa !39
  %456 = add nsw i32 %455, %452
  %457 = sub nsw i32 %452, %455
  %458 = sub nsw i32 %445, %448
  %459 = add nsw i32 %456, %449
  store i32 %459, ptr %444, align 4, !tbaa !39
  %460 = sub nsw i32 %449, %456
  store i32 %460, ptr %454, align 4, !tbaa !39
  %461 = add nsw i32 %457, %458
  store i32 %461, ptr %451, align 4, !tbaa !39
  %462 = sub nsw i32 %458, %457
  store i32 %462, ptr %447, align 4, !tbaa !39
  %463 = call i32 @llvm.abs.i32(i32 %459, i1 true)
  %464 = add nuw nsw i32 %463, %442
  %465 = call i32 @llvm.abs.i32(i32 %461, i1 true)
  %466 = add nuw nsw i32 %465, %464
  %467 = call i32 @llvm.abs.i32(i32 %460, i1 true)
  %468 = add nuw nsw i32 %467, %466
  %469 = call i32 @llvm.abs.i32(i32 %462, i1 true)
  %470 = add nuw nsw i32 %469, %468
  %471 = add nuw nsw i64 %299, 1
  %472 = icmp eq i64 %471, 4
  br i1 %472, label %473, label %298

473:                                              ; preds = %298
  %474 = add nuw nsw i64 %296, 1
  %475 = icmp eq i64 %474, 4
  br i1 %475, label %165, label %295

476:                                              ; preds = %165
  %477 = trunc nuw nsw i64 %104 to i32
  store i32 %477, ptr %0, align 4, !tbaa !39
  br label %478

478:                                              ; preds = %111, %127, %124, %476, %165, %116
  %479 = phi i32 [ %105, %116 ], [ %293, %476 ], [ %105, %165 ], [ %105, %127 ], [ %105, %124 ], [ %105, %111 ]
  %480 = add nuw nsw i64 %104, 1
  %481 = icmp eq i64 %480, 4
  br i1 %481, label %482, label %103

482:                                              ; preds = %130, %478
  %483 = phi i32 [ %479, %478 ], [ %105, %130 ]
  %484 = lshr i32 %483, 1
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #17
  ret i32 %484
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

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
!10 = !{!11, !12, i64 12}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !12, i64 136}
!17 = !{!11, !12, i64 144}
!18 = !{!11, !12, i64 140}
!19 = !{!11, !12, i64 148}
!20 = !{!11, !12, i64 152}
!21 = !{!11, !12, i64 156}
!22 = !{!11, !12, i64 168}
!23 = !{!11, !12, i64 90220}
!24 = !{!11, !7, i64 31576}
!25 = !{!26, !12, i64 424}
!26 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !27, i64 368, !8, i64 376, !8, i64 392, !27, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !15, i64 476, !14, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!27 = !{!"long long", !8, i64 0}
!28 = !{!11, !12, i64 172}
!29 = !{!26, !12, i64 428}
!30 = !{!11, !12, i64 90548}
!31 = !{!11, !12, i64 90556}
!32 = !{!11, !12, i64 160}
!33 = !{!11, !12, i64 90560}
!34 = !{!11, !12, i64 164}
!35 = !{!11, !12, i64 176}
!36 = !{!11, !12, i64 180}
!37 = !{!11, !12, i64 90532}
!38 = !{!11, !12, i64 90536}
!39 = !{!12, !12, i64 0}
!40 = !{!11, !12, i64 90484}
!41 = !{!11, !12, i64 90488}
!42 = !{!11, !12, i64 24}
!43 = !{!26, !12, i64 72}
!44 = !{!26, !12, i64 416}
!45 = !{!26, !12, i64 364}
!46 = !{!26, !12, i64 468}
!47 = !{!48, !12, i64 3892}
!48 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !14, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!49 = !{!50, !12, i64 0}
!50 = !{!"", !12, i64 0, !12, i64 4, !13, i64 8, !13, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 72, !8, i64 372, !8, i64 672, !12, i64 688, !7, i64 696, !7, i64 704, !12, i64 712, !12, i64 716, !12, i64 720, !13, i64 724, !13, i64 728, !13, i64 732, !8, i64 736, !8, i64 1036, !8, i64 1336, !8, i64 1356, !8, i64 1376, !8, i64 1396, !8, i64 1416, !8, i64 1436, !8, i64 1456, !12, i64 1476, !12, i64 1480, !7, i64 1488, !12, i64 1496, !12, i64 1500}
!51 = !{!26, !12, i64 12}
!52 = !{!50, !12, i64 4}
!53 = !{!48, !12, i64 212}
!54 = !{!11, !7, i64 31568}
!55 = !{!11, !12, i64 90492}
!56 = !{!57, !7, i64 6472}
!57 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!58 = !{!8, !8, i64 0}
!59 = !{!48, !12, i64 3556}
!60 = !{!11, !12, i64 120}
!61 = !{!62, !12, i64 16}
!62 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!63 = !{!62, !7, i64 24}
!64 = !{!65, !7, i64 0}
!65 = !{!"datapartition", !7, i64 0, !66, i64 8, !7, i64 104}
!66 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!67 = !{!68, !12, i64 4}
!68 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !7, i64 32, !12, i64 40}
!69 = !{!68, !12, i64 16}
!70 = !{!68, !12, i64 0}
!71 = !{!68, !12, i64 12}
!72 = !{!68, !8, i64 8}
!73 = !{!68, !8, i64 20}
!74 = !{!48, !12, i64 2984}
!75 = !{!66, !12, i64 0}
!76 = !{!66, !12, i64 48}
!77 = !{!66, !12, i64 4}
!78 = !{!66, !12, i64 52}
!79 = !{!66, !12, i64 8}
!80 = !{!66, !12, i64 56}
!81 = !{!66, !12, i64 12}
!82 = !{!66, !12, i64 60}
!83 = !{!66, !12, i64 16}
!84 = !{!66, !12, i64 64}
!85 = !{!66, !7, i64 24}
!86 = !{!66, !7, i64 72}
!87 = !{!66, !7, i64 32}
!88 = !{!66, !7, i64 80}
!89 = !{!66, !12, i64 40}
!90 = !{!66, !12, i64 88}
!91 = !{!66, !12, i64 44}
!92 = !{!66, !12, i64 92}
!93 = !{!11, !12, i64 20}
!94 = !{!26, !12, i64 4}
!95 = !{!11, !12, i64 44}
!96 = !{!26, !12, i64 16}
!97 = !{!48, !12, i64 3908}
!98 = !{!26, !12, i64 488}
!99 = !{!26, !12, i64 8}
!100 = !{!62, !12, i64 4}
!101 = !{!26, !12, i64 492}
!102 = !{!48, !12, i64 3920}
!103 = !{!11, !12, i64 90432}
!104 = !{!11, !12, i64 40}
!105 = !{!11, !12, i64 90448}
!106 = !{!11, !12, i64 90452}
!107 = !{!26, !12, i64 496}
!108 = !{!11, !12, i64 90456}
!109 = !{!11, !12, i64 90440}
!110 = !{!11, !12, i64 90444}
!111 = !{!112, !12, i64 1148}
!112 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !113, i64 1184}
!113 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !114, i64 84, !12, i64 496, !114, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!114 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!115 = !{!48, !12, i64 3552}
!116 = !{!11, !12, i64 90436}
!117 = !{!11, !12, i64 90424}
!118 = !{!11, !12, i64 90420}
!119 = !{!11, !12, i64 90416}
!120 = !{!26, !12, i64 500}
!121 = !{!26, !12, i64 504}
!122 = !{!26, !12, i64 0}
!123 = !{!124, !12, i64 220}
!124 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!125 = !{!11, !12, i64 89392}
!126 = !{!11, !12, i64 89396}
!127 = !{!11, !12, i64 89400}
!128 = !{!57, !7, i64 6480}
!129 = !{!57, !7, i64 6504}
!130 = !{!57, !7, i64 6488}
!131 = !{!27, !27, i64 0}
!132 = !{!26, !27, i64 368}
!133 = !{!26, !27, i64 408}
!134 = !{!48, !12, i64 220}
!135 = !{!11, !7, i64 89192}
!136 = !{!48, !12, i64 3964}
!137 = !{!48, !12, i64 2992}
!138 = !{!62, !12, i64 20}
!139 = !{!11, !12, i64 90304}
!140 = !{!48, !12, i64 216}
!141 = !{!142, !12, i64 4}
!142 = !{!"syntaxelement", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32, !7, i64 40}
!143 = !{!142, !12, i64 8}
!144 = !{!142, !7, i64 32}
!145 = !{!142, !12, i64 0}
!146 = !{!65, !7, i64 104}
!147 = !{!142, !12, i64 12}
!148 = !{!68, !12, i64 28}
!149 = !{!68, !12, i64 24}
!150 = !{!68, !8, i64 21}
!151 = !{!62, !7, i64 120}
!152 = !{!57, !7, i64 6448}
!153 = !{!15, !15, i64 0}
!154 = !{!57, !12, i64 6392}
!155 = !{!57, !12, i64 6396}
!156 = !{ptr @FastLine4X, ptr @UMVLine4X}
!157 = !{!124, !12, i64 192}
!158 = !{!124, !12, i64 196}
!159 = !{!26, !15, i64 476}
!160 = !{!11, !12, i64 90572}
!161 = !{!11, !12, i64 90208}
!162 = !{!11, !12, i64 90552}
!163 = !{!57, !7, i64 6424}
!164 = !{!11, !7, i64 89336}
!165 = !{!48, !12, i64 24}
!166 = !{!11, !12, i64 64}
!167 = !{!11, !12, i64 56}
!168 = !{!57, !7, i64 6464}
!169 = !{!112, !12, i64 32}
!170 = !{!57, !12, i64 6408}
!171 = !{!172, !12, i64 0}
!172 = !{!"pix_pos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!173 = !{!172, !12, i64 4}
!174 = !{!11, !12, i64 90540}
!175 = !{!11, !12, i64 90528}
!176 = !{!172, !12, i64 20}
!177 = !{!172, !12, i64 16}
!178 = !{!48, !12, i64 3136}
!179 = !{!48, !12, i64 3024}
!180 = !{!48, !12, i64 3048}
!181 = !{!11, !12, i64 90196}
!182 = !{!26, !12, i64 420}
!183 = !{!142, !12, i64 24}
!184 = !{!142, !7, i64 40}
!185 = !{!26, !12, i64 520}
!186 = !{!142, !12, i64 20}
!187 = !{!11, !7, i64 128}
!188 = !{!112, !12, i64 1156}
!189 = !{!26, !12, i64 472}
!190 = !{!11, !7, i64 14144}
!191 = !{!11, !12, i64 80}
!192 = !{!11, !7, i64 14136}
!193 = !{!11, !12, i64 76}
!194 = !{!11, !12, i64 72}
!195 = !{!11, !12, i64 90544}
!196 = !{!11, !12, i64 84}
!197 = !{!68, !12, i64 40}
!198 = !{!62, !12, i64 12}
!199 = !{!11, !12, i64 90380}
!200 = !{!11, !12, i64 90376}
!201 = !{!11, !12, i64 90352}
!202 = !{!11, !12, i64 90348}
!203 = !{!11, !12, i64 90356}
!204 = !{!11, !12, i64 90360}
!205 = !{!50, !12, i64 24}
!206 = !{!11, !7, i64 89328}
!207 = distinct !{!207, !208}
!208 = !{!"llvm.loop.peeled.count", i32 1}
!209 = distinct !{!209, !208}
!210 = distinct !{!210, !208}
!211 = !{!124, !12, i64 224}
!212 = !{!11, !7, i64 31560}
!213 = !{!214, !12, i64 4}
!214 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 808, !13, i64 812, !13, i64 816, !13, i64 820}
!215 = !{!172, !12, i64 8}
!216 = !{!172, !12, i64 12}
!217 = !{!48, !12, i64 3040}
!218 = !{!48, !12, i64 3044}
