; ModuleID = 'src/block.c'
source_filename = "src/block.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@QP_SCALE_CR = dso_local local_unnamed_addr constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 1
@SNGL_SCAN = dso_local local_unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\03\03"], align 1
@FIELD_SCAN = dso_local local_unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03", [2 x i8] c"\02\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\03\00", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\03\03"], align 1
@COEFF_COST = dso_local local_unnamed_addr constant <{ <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, [16 x i8] }> <{ <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, [16 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09" }>, align 1
@COEFF_BIT_COST = dso_local local_unnamed_addr constant [3 x [16 x [16 x i8]]] [[16 x [16 x i8]] [[16 x i8] c"\03\05\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D", [16 x i8] c"\05\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D", [16 x i8] c"\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0F", [16 x i8] c"\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0F", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D"], [16 x [16 x i8]] [[16 x i8] c"\03\05\07\07\07\09\09\09\09\0B\0B\0D\0D\0D\0D\0F", [16 x i8] c"\05\09\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\07\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [16 x [16 x i8]] [[16 x i8] c"\03\07\09\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11", [16 x i8] c"\05\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11", [16 x i8] c"\05\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13"]], align 1
@SCAN_YUV422 = dso_local local_unnamed_addr constant [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03"], align 1
@hor_offset = dso_local local_unnamed_addr constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 1
@ver_offset = dso_local local_unnamed_addr constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 1
@quant_coef = dso_local local_unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 4
@dequant_coef = dso_local local_unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 4
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@qp_per_matrix = external dso_local local_unnamed_addr global ptr, align 8
@qp_rem_matrix = external dso_local local_unnamed_addr global ptr, align 8
@LevelScale4x4Luma = external dso_local local_unnamed_addr global ptr, align 8
@LevelOffset4x4Luma = external dso_local local_unnamed_addr global ptr, align 8
@InvLevelScale4x4Luma = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@AdaptRndWeight = external dso_local local_unnamed_addr global i32, align 4
@lrec = external dso_local local_unnamed_addr global ptr, align 8
@__const.dct_chroma.cbpblk_pattern = private unnamed_addr constant [4 x i64] [i64 0, i64 983040, i64 16711680, i64 4294901760], align 8
@LevelScale4x4Chroma = external dso_local local_unnamed_addr global ptr, align 8
@LevelOffset4x4Chroma = external dso_local local_unnamed_addr global ptr, align 8
@InvLevelScale4x4Chroma = external dso_local local_unnamed_addr global ptr, align 8
@cbp_blk_chroma = internal unnamed_addr constant [8 x [4 x i8]] [[4 x i8] c"\10\11\12\13", [4 x i8] c"\14\15\16\17", [4 x i8] c"\18\19\1A\1B", [4 x i8] c"\1C\1D\1E\1F", [4 x i8] c" !\22#", [4 x i8] c"$%&'", [4 x i8] c"()*+", [4 x i8] c",-./"], align 1
@dc_level_temp = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@dc_level = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@A = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 4
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@lrec_uv = external dso_local local_unnamed_addr global ptr, align 8
@stats = external dso_local local_unnamed_addr global ptr, align 8
@mb_adaptive = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @intrapred_luma(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [4 x %struct.pix_pos], align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 6424
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = and i32 %0, 15
  %14 = and i32 %1, 15
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %18 = add nsw i32 %13, -1
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %14, i32 noundef signext 1, ptr noundef nonnull %6) #7
  %19 = add nuw nsw i32 %14, 1
  %20 = getelementptr inbounds i8, ptr %6, i64 24
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext 1, ptr noundef nonnull %20) #7
  %21 = add nuw nsw i32 %14, 2
  %22 = getelementptr inbounds i8, ptr %6, i64 48
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %21, i32 noundef signext 1, ptr noundef nonnull %22) #7
  %23 = add nuw nsw i32 %14, 3
  %24 = getelementptr inbounds i8, ptr %6, i64 72
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %23, i32 noundef signext 1, ptr noundef nonnull %24) #7
  %25 = add nsw i32 %14, -1
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %13, i32 noundef signext %25, i32 noundef signext 1, ptr noundef nonnull %7) #7
  %26 = add nuw nsw i32 %13, 4
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %26, i32 noundef signext %25, i32 noundef signext 1, ptr noundef nonnull %8) #7
  call void @getNeighbour(i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %25, i32 noundef signext 1, ptr noundef nonnull %9) #7
  %27 = load i32, ptr %8, align 4, !tbaa !18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = and i32 %0, 7
  %31 = icmp ne i32 %30, 4
  %32 = and i32 %1, 7
  %33 = icmp ne i32 %32, 4
  %34 = or i1 %31, %33
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i1 [ false, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, ptr %8, align 4, !tbaa !18
  %38 = load ptr, ptr @input, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 220
  %40 = load i32, ptr %39, align 4, !tbaa !20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %122, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @img, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 89192
  %45 = load i32, ptr %6, align 4, !tbaa !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %44, align 8, !tbaa !22
  %49 = getelementptr inbounds i8, ptr %6, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %48, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !24
  br label %54

54:                                               ; preds = %42, %47
  %55 = phi i32 [ %53, %47 ], [ 0, %42 ]
  %56 = and i32 %55, 1
  %57 = load i32, ptr %20, align 4, !tbaa !18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %44, align 8, !tbaa !22
  %61 = getelementptr inbounds i8, ptr %6, i64 28
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !24
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi i32 [ %65, %59 ], [ 0, %54 ]
  %68 = and i32 %67, %56
  %69 = load i32, ptr %22, align 4, !tbaa !18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %44, align 8, !tbaa !22
  %73 = getelementptr inbounds i8, ptr %6, i64 52
  %74 = load i32, ptr %73, align 4, !tbaa !23
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %72, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !24
  br label %78

78:                                               ; preds = %71, %66
  %79 = phi i32 [ %77, %71 ], [ 0, %66 ]
  %80 = and i32 %79, %68
  %81 = load i32, ptr %24, align 4, !tbaa !18
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %44, align 8, !tbaa !22
  %85 = getelementptr inbounds i8, ptr %6, i64 76
  %86 = load i32, ptr %85, align 4, !tbaa !23
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %84, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !24
  br label %90

90:                                               ; preds = %83, %78
  %91 = phi i32 [ %89, %83 ], [ 0, %78 ]
  %92 = and i32 %91, %80
  %93 = load i32, ptr %7, align 4, !tbaa !18
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %44, align 8, !tbaa !22
  %97 = getelementptr inbounds i8, ptr %7, i64 4
  %98 = load i32, ptr %97, align 4, !tbaa !23
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %96, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !24
  br label %102

102:                                              ; preds = %90, %95
  %103 = phi i32 [ %101, %95 ], [ 0, %90 ]
  br i1 %36, label %104, label %111

104:                                              ; preds = %102
  %105 = load ptr, ptr %44, align 8, !tbaa !22
  %106 = getelementptr inbounds i8, ptr %8, i64 4
  %107 = load i32, ptr %106, align 4, !tbaa !23
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %105, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !24
  br label %111

111:                                              ; preds = %102, %104
  %112 = phi i32 [ %110, %104 ], [ 0, %102 ]
  %113 = load i32, ptr %9, align 4, !tbaa !18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %44, align 8, !tbaa !22
  %117 = getelementptr inbounds i8, ptr %9, i64 4
  %118 = load i32, ptr %117, align 4, !tbaa !23
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %116, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !24
  br label %126

122:                                              ; preds = %35
  %123 = load i32, ptr %6, align 4, !tbaa !18
  %124 = load i32, ptr %7, align 4, !tbaa !18
  %125 = load i32, ptr %9, align 4, !tbaa !18
  br label %126

126:                                              ; preds = %115, %111, %122
  %127 = phi i32 [ %124, %122 ], [ %103, %111 ], [ %103, %115 ]
  %128 = phi i32 [ %123, %122 ], [ %92, %111 ], [ %92, %115 ]
  %129 = phi i32 [ %125, %122 ], [ 0, %111 ], [ %121, %115 ]
  %130 = phi i32 [ %37, %122 ], [ %112, %111 ], [ %112, %115 ]
  store i32 %128, ptr %2, align 4, !tbaa !24
  store i32 %127, ptr %3, align 4, !tbaa !24
  %131 = icmp ne i32 %127, 0
  %132 = icmp ne i32 %128, 0
  %133 = select i1 %131, i1 %132, i1 false
  %134 = icmp ne i32 %129, 0
  %135 = select i1 %133, i1 %134, i1 false
  %136 = zext i1 %135 to i32
  store i32 %136, ptr %4, align 4, !tbaa !24
  br i1 %131, label %137, label %158

137:                                              ; preds = %126
  %138 = getelementptr inbounds i8, ptr %7, i64 20
  %139 = load i32, ptr %138, align 4, !tbaa !25
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %12, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = getelementptr inbounds i8, ptr %7, i64 16
  %144 = load i32, ptr %143, align 4, !tbaa !26
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, ptr %142, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !27
  %148 = zext i16 %147 to i32
  %149 = getelementptr i8, ptr %146, i64 2
  %150 = load i16, ptr %149, align 2, !tbaa !27
  %151 = zext i16 %150 to i32
  %152 = getelementptr i8, ptr %146, i64 4
  %153 = load i16, ptr %152, align 2, !tbaa !27
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %146, i64 6
  %156 = load i16, ptr %155, align 2, !tbaa !27
  %157 = zext i16 %156 to i32
  br label %162

158:                                              ; preds = %126
  %159 = load ptr, ptr @img, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %159, i64 90528
  %161 = load i32, ptr %160, align 8, !tbaa !28
  br label %162

162:                                              ; preds = %158, %137
  %163 = phi i32 [ %157, %137 ], [ %161, %158 ]
  %164 = phi i32 [ %154, %137 ], [ %161, %158 ]
  %165 = phi i32 [ %151, %137 ], [ %161, %158 ]
  %166 = phi i32 [ %148, %137 ], [ %161, %158 ]
  %167 = icmp eq i32 %130, 0
  br i1 %167, label %189, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds i8, ptr %8, i64 20
  %170 = load i32, ptr %169, align 4, !tbaa !25
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %12, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds i8, ptr %8, i64 16
  %175 = load i32, ptr %174, align 4, !tbaa !26
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i16, ptr %173, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !27
  %179 = zext i16 %178 to i32
  %180 = getelementptr i8, ptr %177, i64 2
  %181 = load i16, ptr %180, align 2, !tbaa !27
  %182 = zext i16 %181 to i32
  %183 = getelementptr i8, ptr %177, i64 4
  %184 = load i16, ptr %183, align 2, !tbaa !27
  %185 = zext i16 %184 to i32
  %186 = getelementptr i8, ptr %177, i64 6
  %187 = load i16, ptr %186, align 2, !tbaa !27
  %188 = zext i16 %187 to i32
  br label %189

189:                                              ; preds = %162, %168
  %190 = phi i32 [ %188, %168 ], [ %163, %162 ]
  %191 = phi i32 [ %185, %168 ], [ %163, %162 ]
  %192 = phi i32 [ %182, %168 ], [ %163, %162 ]
  %193 = phi i32 [ %179, %168 ], [ %163, %162 ]
  br i1 %132, label %194, label %239

194:                                              ; preds = %189
  %195 = getelementptr inbounds i8, ptr %6, i64 20
  %196 = load i32, ptr %195, align 4, !tbaa !25
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %12, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = getelementptr inbounds i8, ptr %6, i64 16
  %201 = load i32, ptr %200, align 4, !tbaa !26
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, ptr %199, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !27
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds i8, ptr %6, i64 44
  %207 = load i32, ptr %206, align 4, !tbaa !25
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %12, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds i8, ptr %6, i64 40
  %212 = load i32, ptr %211, align 4, !tbaa !26
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i16, ptr %210, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !27
  %216 = zext i16 %215 to i32
  %217 = getelementptr inbounds i8, ptr %6, i64 68
  %218 = load i32, ptr %217, align 4, !tbaa !25
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %12, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  %222 = getelementptr inbounds i8, ptr %6, i64 64
  %223 = load i32, ptr %222, align 4, !tbaa !26
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !27
  %227 = zext i16 %226 to i32
  %228 = getelementptr inbounds i8, ptr %6, i64 92
  %229 = load i32, ptr %228, align 4, !tbaa !25
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %12, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %6, i64 88
  %234 = load i32, ptr %233, align 4, !tbaa !26
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i16, ptr %232, i64 %235
  %237 = load i16, ptr %236, align 2, !tbaa !27
  %238 = zext i16 %237 to i32
  br label %243

239:                                              ; preds = %189
  %240 = load ptr, ptr @img, align 8, !tbaa !6
  %241 = getelementptr inbounds i8, ptr %240, i64 90528
  %242 = load i32, ptr %241, align 8, !tbaa !28
  br label %243

243:                                              ; preds = %239, %194
  %244 = phi i32 [ %227, %194 ], [ %242, %239 ]
  %245 = phi i32 [ %216, %194 ], [ %242, %239 ]
  %246 = phi i32 [ %205, %194 ], [ %242, %239 ]
  %247 = phi i32 [ %238, %194 ], [ %242, %239 ]
  br i1 %134, label %248, label %261

248:                                              ; preds = %243
  %249 = getelementptr inbounds i8, ptr %9, i64 20
  %250 = load i32, ptr %249, align 4, !tbaa !25
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %12, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = getelementptr inbounds i8, ptr %9, i64 16
  %255 = load i32, ptr %254, align 4, !tbaa !26
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i16, ptr %253, i64 %256
  %258 = load i16, ptr %257, align 2, !tbaa !27
  %259 = zext i16 %258 to i32
  %260 = load ptr, ptr @img, align 8, !tbaa !6
  br label %265

261:                                              ; preds = %243
  %262 = load ptr, ptr @img, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 90528
  %264 = load i32, ptr %263, align 8, !tbaa !28
  br label %265

265:                                              ; preds = %261, %248
  %266 = phi ptr [ %262, %261 ], [ %260, %248 ]
  %267 = phi i32 [ %264, %261 ], [ %259, %248 ]
  %268 = getelementptr inbounds i8, ptr %266, i64 184
  %269 = getelementptr inbounds i8, ptr %266, i64 1720
  store i16 -1, ptr %269, align 8, !tbaa !27
  %270 = getelementptr inbounds i8, ptr %266, i64 2232
  store i16 -1, ptr %270, align 8, !tbaa !27
  %271 = getelementptr inbounds i8, ptr %266, i64 2744
  store i16 -1, ptr %271, align 8, !tbaa !27
  %272 = getelementptr inbounds i8, ptr %266, i64 3256
  store i16 -1, ptr %272, align 8, !tbaa !27
  %273 = getelementptr inbounds i8, ptr %266, i64 3768
  store i16 -1, ptr %273, align 8, !tbaa !27
  %274 = getelementptr inbounds i8, ptr %266, i64 4280
  store i16 -1, ptr %274, align 8, !tbaa !27
  br i1 %133, label %275, label %285

275:                                              ; preds = %265
  %276 = add i32 %166, 4
  %277 = add i32 %276, %165
  %278 = add i32 %277, %164
  %279 = add i32 %278, %163
  %280 = add i32 %279, %246
  %281 = add i32 %280, %245
  %282 = add i32 %281, %244
  %283 = add i32 %282, %247
  %284 = ashr i32 %283, 3
  br label %305

285:                                              ; preds = %265
  %286 = icmp eq i32 %127, 0
  %287 = select i1 %286, i1 %132, i1 false
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = add i32 %246, 2
  %290 = add i32 %289, %245
  %291 = add i32 %290, %244
  %292 = add i32 %291, %247
  %293 = ashr i32 %292, 2
  br label %305

294:                                              ; preds = %285
  %295 = select i1 %286, i1 true, i1 %132
  br i1 %295, label %302, label %296

296:                                              ; preds = %294
  %297 = add i32 %166, 2
  %298 = add i32 %297, %165
  %299 = add i32 %298, %164
  %300 = add i32 %299, %163
  %301 = ashr i32 %300, 2
  br label %305

302:                                              ; preds = %294
  %303 = getelementptr inbounds i8, ptr %266, i64 90528
  %304 = load i32, ptr %303, align 8, !tbaa !28
  br label %305

305:                                              ; preds = %288, %302, %296, %275
  %306 = phi i32 [ %284, %275 ], [ %293, %288 ], [ %304, %302 ], [ %301, %296 ]
  %307 = trunc i32 %306 to i16
  %308 = getelementptr inbounds i8, ptr %266, i64 1208
  store i16 %307, ptr %308, align 2, !tbaa !27
  %309 = getelementptr inbounds i8, ptr %266, i64 1210
  store i16 %307, ptr %309, align 2, !tbaa !27
  %310 = getelementptr inbounds i8, ptr %266, i64 1212
  store i16 %307, ptr %310, align 2, !tbaa !27
  %311 = getelementptr inbounds i8, ptr %266, i64 1214
  store i16 %307, ptr %311, align 2, !tbaa !27
  %312 = getelementptr inbounds i8, ptr %266, i64 1240
  store i16 %307, ptr %312, align 2, !tbaa !27
  %313 = getelementptr inbounds i8, ptr %266, i64 1242
  store i16 %307, ptr %313, align 2, !tbaa !27
  %314 = getelementptr inbounds i8, ptr %266, i64 1244
  store i16 %307, ptr %314, align 2, !tbaa !27
  %315 = getelementptr inbounds i8, ptr %266, i64 1246
  store i16 %307, ptr %315, align 2, !tbaa !27
  %316 = getelementptr inbounds i8, ptr %266, i64 1272
  store i16 %307, ptr %316, align 2, !tbaa !27
  %317 = getelementptr inbounds i8, ptr %266, i64 1274
  store i16 %307, ptr %317, align 2, !tbaa !27
  %318 = getelementptr inbounds i8, ptr %266, i64 1276
  store i16 %307, ptr %318, align 2, !tbaa !27
  %319 = getelementptr inbounds i8, ptr %266, i64 1278
  store i16 %307, ptr %319, align 2, !tbaa !27
  %320 = getelementptr inbounds i8, ptr %266, i64 1304
  store i16 %307, ptr %320, align 2, !tbaa !27
  %321 = getelementptr inbounds i8, ptr %266, i64 1306
  store i16 %307, ptr %321, align 2, !tbaa !27
  %322 = getelementptr inbounds i8, ptr %266, i64 1308
  store i16 %307, ptr %322, align 2, !tbaa !27
  %323 = getelementptr inbounds i8, ptr %266, i64 1310
  store i16 %307, ptr %323, align 2, !tbaa !27
  %324 = getelementptr inbounds i8, ptr %266, i64 280
  %325 = getelementptr inbounds i8, ptr %266, i64 248
  %326 = getelementptr inbounds i8, ptr %266, i64 216
  %327 = getelementptr inbounds i8, ptr %266, i64 696
  %328 = trunc i32 %166 to i16
  store i16 %328, ptr %324, align 2, !tbaa !27
  store i16 %328, ptr %325, align 2, !tbaa !27
  store i16 %328, ptr %326, align 2, !tbaa !27
  store i16 %328, ptr %268, align 2, !tbaa !27
  %329 = trunc i32 %246 to i16
  %330 = getelementptr inbounds i8, ptr %266, i64 702
  store i16 %329, ptr %330, align 2, !tbaa !27
  %331 = getelementptr inbounds i8, ptr %266, i64 700
  store i16 %329, ptr %331, align 4, !tbaa !27
  %332 = getelementptr inbounds i8, ptr %266, i64 698
  store i16 %329, ptr %332, align 2, !tbaa !27
  store i16 %329, ptr %327, align 8, !tbaa !27
  %333 = trunc i32 %165 to i16
  %334 = getelementptr inbounds i8, ptr %266, i64 282
  store i16 %333, ptr %334, align 2, !tbaa !27
  %335 = getelementptr inbounds i8, ptr %266, i64 250
  store i16 %333, ptr %335, align 2, !tbaa !27
  %336 = getelementptr inbounds i8, ptr %266, i64 218
  store i16 %333, ptr %336, align 2, !tbaa !27
  %337 = getelementptr inbounds i8, ptr %266, i64 186
  store i16 %333, ptr %337, align 2, !tbaa !27
  %338 = trunc i32 %245 to i16
  %339 = getelementptr inbounds i8, ptr %266, i64 734
  store i16 %338, ptr %339, align 2, !tbaa !27
  %340 = getelementptr inbounds i8, ptr %266, i64 732
  store i16 %338, ptr %340, align 4, !tbaa !27
  %341 = getelementptr inbounds i8, ptr %266, i64 730
  store i16 %338, ptr %341, align 2, !tbaa !27
  %342 = getelementptr inbounds i8, ptr %266, i64 728
  store i16 %338, ptr %342, align 8, !tbaa !27
  %343 = trunc i32 %164 to i16
  %344 = getelementptr inbounds i8, ptr %266, i64 284
  store i16 %343, ptr %344, align 2, !tbaa !27
  %345 = getelementptr inbounds i8, ptr %266, i64 252
  store i16 %343, ptr %345, align 2, !tbaa !27
  %346 = getelementptr inbounds i8, ptr %266, i64 220
  store i16 %343, ptr %346, align 2, !tbaa !27
  %347 = getelementptr inbounds i8, ptr %266, i64 188
  store i16 %343, ptr %347, align 2, !tbaa !27
  %348 = trunc i32 %244 to i16
  %349 = getelementptr inbounds i8, ptr %266, i64 766
  store i16 %348, ptr %349, align 2, !tbaa !27
  %350 = getelementptr inbounds i8, ptr %266, i64 764
  store i16 %348, ptr %350, align 4, !tbaa !27
  %351 = getelementptr inbounds i8, ptr %266, i64 762
  store i16 %348, ptr %351, align 2, !tbaa !27
  %352 = getelementptr inbounds i8, ptr %266, i64 760
  store i16 %348, ptr %352, align 8, !tbaa !27
  %353 = trunc i32 %163 to i16
  %354 = getelementptr inbounds i8, ptr %266, i64 286
  store i16 %353, ptr %354, align 2, !tbaa !27
  %355 = getelementptr inbounds i8, ptr %266, i64 254
  store i16 %353, ptr %355, align 2, !tbaa !27
  %356 = getelementptr inbounds i8, ptr %266, i64 222
  store i16 %353, ptr %356, align 2, !tbaa !27
  %357 = getelementptr inbounds i8, ptr %266, i64 190
  store i16 %353, ptr %357, align 2, !tbaa !27
  %358 = trunc i32 %247 to i16
  %359 = getelementptr inbounds i8, ptr %266, i64 798
  store i16 %358, ptr %359, align 2, !tbaa !27
  %360 = getelementptr inbounds i8, ptr %266, i64 796
  store i16 %358, ptr %360, align 4, !tbaa !27
  %361 = getelementptr inbounds i8, ptr %266, i64 794
  store i16 %358, ptr %361, align 2, !tbaa !27
  %362 = getelementptr inbounds i8, ptr %266, i64 792
  store i16 %358, ptr %362, align 8, !tbaa !27
  br i1 %131, label %366, label %363

363:                                              ; preds = %305
  %364 = load ptr, ptr @img, align 8, !tbaa !6
  %365 = getelementptr inbounds i8, ptr %364, i64 184
  store i16 -1, ptr %365, align 8, !tbaa !27
  br label %366

366:                                              ; preds = %363, %305
  br i1 %132, label %370, label %367

367:                                              ; preds = %366
  %368 = load ptr, ptr @img, align 8, !tbaa !6
  %369 = getelementptr inbounds i8, ptr %368, i64 696
  store i16 -1, ptr %369, align 8, !tbaa !27
  br label %370

370:                                              ; preds = %367, %366
  br i1 %131, label %371, label %467

371:                                              ; preds = %370
  %372 = shl nsw i32 %165, 1
  %373 = add i32 %164, 2
  %374 = add i32 %373, %166
  %375 = add i32 %374, %372
  %376 = lshr i32 %375, 2
  %377 = trunc i32 %376 to i16
  %378 = load ptr, ptr @img, align 8, !tbaa !6
  %379 = getelementptr inbounds i8, ptr %378, i64 1720
  store i16 %377, ptr %379, align 8, !tbaa !27
  %380 = shl nsw i32 %164, 1
  %381 = add i32 %163, 2
  %382 = add i32 %381, %165
  %383 = add i32 %382, %380
  %384 = lshr i32 %383, 2
  %385 = trunc i32 %384 to i16
  %386 = getelementptr inbounds i8, ptr %378, i64 1752
  store i16 %385, ptr %386, align 8, !tbaa !27
  %387 = getelementptr inbounds i8, ptr %378, i64 1722
  store i16 %385, ptr %387, align 2, !tbaa !27
  %388 = shl nsw i32 %163, 1
  %389 = add i32 %373, %388
  %390 = add i32 %389, %193
  %391 = lshr i32 %390, 2
  %392 = trunc i32 %391 to i16
  %393 = getelementptr inbounds i8, ptr %378, i64 1784
  store i16 %392, ptr %393, align 8, !tbaa !27
  %394 = getelementptr inbounds i8, ptr %378, i64 1754
  store i16 %392, ptr %394, align 2, !tbaa !27
  %395 = getelementptr inbounds i8, ptr %378, i64 1724
  store i16 %392, ptr %395, align 4, !tbaa !27
  %396 = shl nsw i32 %193, 1
  %397 = add i32 %381, %396
  %398 = add i32 %397, %192
  %399 = lshr i32 %398, 2
  %400 = trunc i32 %399 to i16
  %401 = getelementptr inbounds i8, ptr %378, i64 1816
  store i16 %400, ptr %401, align 8, !tbaa !27
  %402 = getelementptr inbounds i8, ptr %378, i64 1786
  store i16 %400, ptr %402, align 2, !tbaa !27
  %403 = getelementptr inbounds i8, ptr %378, i64 1756
  store i16 %400, ptr %403, align 4, !tbaa !27
  %404 = getelementptr inbounds i8, ptr %378, i64 1726
  store i16 %400, ptr %404, align 2, !tbaa !27
  %405 = shl nsw i32 %192, 1
  %406 = add i32 %193, 2
  %407 = add i32 %406, %405
  %408 = add i32 %407, %191
  %409 = lshr i32 %408, 2
  %410 = trunc i32 %409 to i16
  %411 = getelementptr inbounds i8, ptr %378, i64 1818
  store i16 %410, ptr %411, align 2, !tbaa !27
  %412 = getelementptr inbounds i8, ptr %378, i64 1788
  store i16 %410, ptr %412, align 4, !tbaa !27
  %413 = getelementptr inbounds i8, ptr %378, i64 1758
  store i16 %410, ptr %413, align 2, !tbaa !27
  %414 = shl nsw i32 %191, 1
  %415 = add i32 %192, 2
  %416 = add i32 %415, %414
  %417 = add i32 %416, %190
  %418 = lshr i32 %417, 2
  %419 = trunc i32 %418 to i16
  %420 = getelementptr inbounds i8, ptr %378, i64 1820
  store i16 %419, ptr %420, align 4, !tbaa !27
  %421 = getelementptr inbounds i8, ptr %378, i64 1790
  store i16 %419, ptr %421, align 2, !tbaa !27
  %422 = mul nsw i32 %190, 3
  %423 = add i32 %191, 2
  %424 = add i32 %423, %422
  %425 = lshr i32 %424, 2
  %426 = trunc i32 %425 to i16
  %427 = getelementptr inbounds i8, ptr %378, i64 1822
  store i16 %426, ptr %427, align 2, !tbaa !27
  %428 = add i32 %165, 1
  %429 = add i32 %428, %166
  %430 = lshr i32 %429, 1
  %431 = trunc i32 %430 to i16
  %432 = getelementptr inbounds i8, ptr %378, i64 3768
  store i16 %431, ptr %432, align 8, !tbaa !27
  %433 = add i32 %164, 1
  %434 = add i32 %433, %165
  %435 = lshr i32 %434, 1
  %436 = trunc i32 %435 to i16
  %437 = getelementptr inbounds i8, ptr %378, i64 3832
  store i16 %436, ptr %437, align 8, !tbaa !27
  %438 = getelementptr inbounds i8, ptr %378, i64 3770
  store i16 %436, ptr %438, align 2, !tbaa !27
  %439 = add i32 %433, %163
  %440 = lshr i32 %439, 1
  %441 = trunc i32 %440 to i16
  %442 = getelementptr inbounds i8, ptr %378, i64 3834
  store i16 %441, ptr %442, align 2, !tbaa !27
  %443 = getelementptr inbounds i8, ptr %378, i64 3772
  store i16 %441, ptr %443, align 4, !tbaa !27
  %444 = add i32 %163, 1
  %445 = add i32 %444, %193
  %446 = lshr i32 %445, 1
  %447 = trunc i32 %446 to i16
  %448 = getelementptr inbounds i8, ptr %378, i64 3836
  store i16 %447, ptr %448, align 4, !tbaa !27
  %449 = getelementptr inbounds i8, ptr %378, i64 3774
  store i16 %447, ptr %449, align 2, !tbaa !27
  %450 = add i32 %193, 1
  %451 = add i32 %450, %192
  %452 = lshr i32 %451, 1
  %453 = trunc i32 %452 to i16
  %454 = getelementptr inbounds i8, ptr %378, i64 3838
  store i16 %453, ptr %454, align 2, !tbaa !27
  %455 = getelementptr inbounds i8, ptr %378, i64 3800
  store i16 %377, ptr %455, align 8, !tbaa !27
  %456 = add i32 %381, %380
  %457 = add i32 %456, %165
  %458 = lshr i32 %457, 2
  %459 = trunc i32 %458 to i16
  %460 = getelementptr inbounds i8, ptr %378, i64 3864
  store i16 %459, ptr %460, align 8, !tbaa !27
  %461 = getelementptr inbounds i8, ptr %378, i64 3802
  store i16 %459, ptr %461, align 2, !tbaa !27
  %462 = getelementptr inbounds i8, ptr %378, i64 3866
  store i16 %392, ptr %462, align 2, !tbaa !27
  %463 = getelementptr inbounds i8, ptr %378, i64 3804
  store i16 %392, ptr %463, align 4, !tbaa !27
  %464 = getelementptr inbounds i8, ptr %378, i64 3868
  store i16 %400, ptr %464, align 4, !tbaa !27
  %465 = getelementptr inbounds i8, ptr %378, i64 3806
  store i16 %400, ptr %465, align 2, !tbaa !27
  %466 = getelementptr inbounds i8, ptr %378, i64 3870
  store i16 %410, ptr %466, align 2, !tbaa !27
  br label %467

467:                                              ; preds = %371, %370
  br i1 %132, label %468, label %514

468:                                              ; preds = %467
  %469 = add i32 %245, 1
  %470 = add i32 %469, %246
  %471 = lshr i32 %470, 1
  %472 = trunc i32 %471 to i16
  %473 = load ptr, ptr @img, align 8, !tbaa !6
  %474 = getelementptr inbounds i8, ptr %473, i64 4280
  store i16 %472, ptr %474, align 8, !tbaa !27
  %475 = shl nsw i32 %245, 1
  %476 = add i32 %244, 2
  %477 = add i32 %476, %246
  %478 = add i32 %477, %475
  %479 = lshr i32 %478, 2
  %480 = trunc i32 %479 to i16
  %481 = getelementptr inbounds i8, ptr %473, i64 4282
  store i16 %480, ptr %481, align 2, !tbaa !27
  %482 = add i32 %469, %244
  %483 = lshr i32 %482, 1
  %484 = trunc i32 %483 to i16
  %485 = getelementptr inbounds i8, ptr %473, i64 4312
  store i16 %484, ptr %485, align 8, !tbaa !27
  %486 = getelementptr inbounds i8, ptr %473, i64 4284
  store i16 %484, ptr %486, align 4, !tbaa !27
  %487 = shl nsw i32 %244, 1
  %488 = add i32 %247, 2
  %489 = add i32 %488, %245
  %490 = add i32 %489, %487
  %491 = lshr i32 %490, 2
  %492 = trunc i32 %491 to i16
  %493 = getelementptr inbounds i8, ptr %473, i64 4314
  store i16 %492, ptr %493, align 2, !tbaa !27
  %494 = getelementptr inbounds i8, ptr %473, i64 4286
  store i16 %492, ptr %494, align 2, !tbaa !27
  %495 = add i32 %244, 1
  %496 = add i32 %495, %247
  %497 = lshr i32 %496, 1
  %498 = trunc i32 %497 to i16
  %499 = getelementptr inbounds i8, ptr %473, i64 4344
  store i16 %498, ptr %499, align 8, !tbaa !27
  %500 = getelementptr inbounds i8, ptr %473, i64 4316
  store i16 %498, ptr %500, align 4, !tbaa !27
  %501 = shl nsw i32 %247, 1
  %502 = add i32 %476, %247
  %503 = add i32 %502, %501
  %504 = lshr i32 %503, 2
  %505 = trunc i32 %504 to i16
  %506 = getelementptr inbounds i8, ptr %473, i64 4346
  store i16 %505, ptr %506, align 2, !tbaa !27
  %507 = getelementptr inbounds i8, ptr %473, i64 4318
  store i16 %505, ptr %507, align 2, !tbaa !27
  %508 = getelementptr inbounds i8, ptr %473, i64 4382
  store i16 %358, ptr %508, align 2, !tbaa !27
  %509 = getelementptr inbounds i8, ptr %473, i64 4380
  store i16 %358, ptr %509, align 4, !tbaa !27
  %510 = getelementptr inbounds i8, ptr %473, i64 4378
  store i16 %358, ptr %510, align 2, !tbaa !27
  %511 = getelementptr inbounds i8, ptr %473, i64 4350
  store i16 %358, ptr %511, align 2, !tbaa !27
  %512 = getelementptr inbounds i8, ptr %473, i64 4348
  store i16 %358, ptr %512, align 4, !tbaa !27
  %513 = getelementptr inbounds i8, ptr %473, i64 4376
  store i16 %358, ptr %513, align 8, !tbaa !27
  br label %514

514:                                              ; preds = %468, %467
  %515 = and i1 %133, %134
  br i1 %515, label %516, label %640

516:                                              ; preds = %514
  %517 = shl nsw i32 %244, 1
  %518 = add i32 %245, 2
  %519 = add i32 %518, %247
  %520 = add i32 %519, %517
  %521 = lshr i32 %520, 2
  %522 = trunc i32 %521 to i16
  %523 = load ptr, ptr @img, align 8, !tbaa !6
  %524 = getelementptr inbounds i8, ptr %523, i64 2328
  store i16 %522, ptr %524, align 8, !tbaa !27
  %525 = shl nsw i32 %245, 1
  %526 = add i32 %246, 2
  %527 = add i32 %526, %244
  %528 = add i32 %527, %525
  %529 = lshr i32 %528, 2
  %530 = trunc i32 %529 to i16
  %531 = getelementptr inbounds i8, ptr %523, i64 2330
  store i16 %530, ptr %531, align 2, !tbaa !27
  %532 = getelementptr inbounds i8, ptr %523, i64 2296
  store i16 %530, ptr %532, align 8, !tbaa !27
  %533 = shl nsw i32 %246, 1
  %534 = add i32 %267, 2
  %535 = add i32 %534, %245
  %536 = add i32 %535, %533
  %537 = lshr i32 %536, 2
  %538 = trunc i32 %537 to i16
  %539 = getelementptr inbounds i8, ptr %523, i64 2332
  store i16 %538, ptr %539, align 4, !tbaa !27
  %540 = getelementptr inbounds i8, ptr %523, i64 2298
  store i16 %538, ptr %540, align 2, !tbaa !27
  %541 = getelementptr inbounds i8, ptr %523, i64 2264
  store i16 %538, ptr %541, align 8, !tbaa !27
  %542 = shl nsw i32 %267, 1
  %543 = add i32 %526, %542
  %544 = add i32 %543, %166
  %545 = lshr i32 %544, 2
  %546 = trunc i32 %545 to i16
  %547 = getelementptr inbounds i8, ptr %523, i64 2334
  store i16 %546, ptr %547, align 2, !tbaa !27
  %548 = getelementptr inbounds i8, ptr %523, i64 2300
  store i16 %546, ptr %548, align 4, !tbaa !27
  %549 = getelementptr inbounds i8, ptr %523, i64 2266
  store i16 %546, ptr %549, align 2, !tbaa !27
  %550 = getelementptr inbounds i8, ptr %523, i64 2232
  store i16 %546, ptr %550, align 8, !tbaa !27
  %551 = shl nsw i32 %166, 1
  %552 = add i32 %534, %551
  %553 = add i32 %552, %165
  %554 = lshr i32 %553, 2
  %555 = trunc i32 %554 to i16
  %556 = getelementptr inbounds i8, ptr %523, i64 2302
  store i16 %555, ptr %556, align 2, !tbaa !27
  %557 = getelementptr inbounds i8, ptr %523, i64 2268
  store i16 %555, ptr %557, align 4, !tbaa !27
  %558 = getelementptr inbounds i8, ptr %523, i64 2234
  store i16 %555, ptr %558, align 2, !tbaa !27
  %559 = shl nsw i32 %165, 1
  %560 = add i32 %166, 2
  %561 = add i32 %560, %559
  %562 = add i32 %561, %164
  %563 = lshr i32 %562, 2
  %564 = trunc i32 %563 to i16
  %565 = getelementptr inbounds i8, ptr %523, i64 2270
  store i16 %564, ptr %565, align 2, !tbaa !27
  %566 = getelementptr inbounds i8, ptr %523, i64 2236
  store i16 %564, ptr %566, align 4, !tbaa !27
  %567 = shl nsw i32 %164, 1
  %568 = add i32 %165, 2
  %569 = add i32 %568, %567
  %570 = add i32 %569, %163
  %571 = lshr i32 %570, 2
  %572 = trunc i32 %571 to i16
  %573 = getelementptr inbounds i8, ptr %523, i64 2238
  store i16 %572, ptr %573, align 2, !tbaa !27
  %574 = add i32 %267, 1
  %575 = add i32 %574, %166
  %576 = lshr i32 %575, 1
  %577 = trunc i32 %576 to i16
  %578 = getelementptr inbounds i8, ptr %523, i64 2810
  store i16 %577, ptr %578, align 2, !tbaa !27
  %579 = getelementptr inbounds i8, ptr %523, i64 2744
  store i16 %577, ptr %579, align 8, !tbaa !27
  %580 = add i32 %166, 1
  %581 = add i32 %580, %165
  %582 = lshr i32 %581, 1
  %583 = trunc i32 %582 to i16
  %584 = getelementptr inbounds i8, ptr %523, i64 2812
  store i16 %583, ptr %584, align 4, !tbaa !27
  %585 = getelementptr inbounds i8, ptr %523, i64 2746
  store i16 %583, ptr %585, align 2, !tbaa !27
  %586 = add i32 %165, 1
  %587 = add i32 %586, %164
  %588 = lshr i32 %587, 1
  %589 = trunc i32 %588 to i16
  %590 = getelementptr inbounds i8, ptr %523, i64 2814
  store i16 %589, ptr %590, align 2, !tbaa !27
  %591 = getelementptr inbounds i8, ptr %523, i64 2748
  store i16 %589, ptr %591, align 4, !tbaa !27
  %592 = add i32 %164, 1
  %593 = add i32 %592, %163
  %594 = lshr i32 %593, 1
  %595 = trunc i32 %594 to i16
  %596 = getelementptr inbounds i8, ptr %523, i64 2750
  store i16 %595, ptr %596, align 2, !tbaa !27
  %597 = getelementptr inbounds i8, ptr %523, i64 2842
  store i16 %546, ptr %597, align 2, !tbaa !27
  %598 = getelementptr inbounds i8, ptr %523, i64 2776
  store i16 %546, ptr %598, align 8, !tbaa !27
  %599 = getelementptr inbounds i8, ptr %523, i64 2844
  store i16 %555, ptr %599, align 4, !tbaa !27
  %600 = getelementptr inbounds i8, ptr %523, i64 2778
  store i16 %555, ptr %600, align 2, !tbaa !27
  %601 = getelementptr inbounds i8, ptr %523, i64 2846
  store i16 %564, ptr %601, align 2, !tbaa !27
  %602 = getelementptr inbounds i8, ptr %523, i64 2780
  store i16 %564, ptr %602, align 4, !tbaa !27
  %603 = getelementptr inbounds i8, ptr %523, i64 2782
  store i16 %572, ptr %603, align 2, !tbaa !27
  %604 = getelementptr inbounds i8, ptr %523, i64 2808
  store i16 %538, ptr %604, align 8, !tbaa !27
  %605 = getelementptr inbounds i8, ptr %523, i64 2840
  store i16 %530, ptr %605, align 8, !tbaa !27
  %606 = add i32 %574, %246
  %607 = lshr i32 %606, 1
  %608 = trunc i32 %607 to i16
  %609 = getelementptr inbounds i8, ptr %523, i64 3292
  store i16 %608, ptr %609, align 4, !tbaa !27
  %610 = getelementptr inbounds i8, ptr %523, i64 3256
  store i16 %608, ptr %610, align 8, !tbaa !27
  %611 = getelementptr inbounds i8, ptr %523, i64 3294
  store i16 %546, ptr %611, align 2, !tbaa !27
  %612 = getelementptr inbounds i8, ptr %523, i64 3258
  store i16 %546, ptr %612, align 2, !tbaa !27
  %613 = getelementptr inbounds i8, ptr %523, i64 3260
  store i16 %555, ptr %613, align 4, !tbaa !27
  %614 = getelementptr inbounds i8, ptr %523, i64 3262
  store i16 %564, ptr %614, align 2, !tbaa !27
  %615 = add i32 %245, 1
  %616 = add i32 %615, %246
  %617 = lshr i32 %616, 1
  %618 = trunc i32 %617 to i16
  %619 = getelementptr inbounds i8, ptr %523, i64 3324
  store i16 %618, ptr %619, align 4, !tbaa !27
  %620 = getelementptr inbounds i8, ptr %523, i64 3288
  store i16 %618, ptr %620, align 8, !tbaa !27
  %621 = add i32 %518, %533
  %622 = add i32 %621, %267
  %623 = lshr i32 %622, 2
  %624 = trunc i32 %623 to i16
  %625 = getelementptr inbounds i8, ptr %523, i64 3326
  store i16 %624, ptr %625, align 2, !tbaa !27
  %626 = getelementptr inbounds i8, ptr %523, i64 3290
  store i16 %624, ptr %626, align 2, !tbaa !27
  %627 = add i32 %244, 1
  %628 = add i32 %627, %245
  %629 = lshr i32 %628, 1
  %630 = trunc i32 %629 to i16
  %631 = getelementptr inbounds i8, ptr %523, i64 3356
  store i16 %630, ptr %631, align 4, !tbaa !27
  %632 = getelementptr inbounds i8, ptr %523, i64 3320
  store i16 %630, ptr %632, align 8, !tbaa !27
  %633 = getelementptr inbounds i8, ptr %523, i64 3358
  store i16 %530, ptr %633, align 2, !tbaa !27
  %634 = getelementptr inbounds i8, ptr %523, i64 3322
  store i16 %530, ptr %634, align 2, !tbaa !27
  %635 = add i32 %627, %247
  %636 = lshr i32 %635, 1
  %637 = trunc i32 %636 to i16
  %638 = getelementptr inbounds i8, ptr %523, i64 3352
  store i16 %637, ptr %638, align 8, !tbaa !27
  %639 = getelementptr inbounds i8, ptr %523, i64 3354
  store i16 %522, ptr %639, align 2, !tbaa !27
  br label %640

640:                                              ; preds = %516, %514
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @intrapred_luma_16x16() local_unnamed_addr #0 {
  %1 = alloca [2 x [16 x i16]], align 2
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca [17 x %struct.pix_pos], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #7
  %4 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 6424
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %3) #7
  br label %10

10:                                               ; preds = %0, %10
  %11 = phi i64 [ 0, %0 ], [ %15, %10 ]
  %12 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %11
  %13 = trunc i64 %11 to i32
  %14 = add i32 %13, -1
  call void @getNeighbour(i32 noundef signext %9, i32 noundef signext -1, i32 noundef signext %14, i32 noundef signext 1, ptr noundef nonnull %12) #7
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 17
  br i1 %16, label %17, label %10

17:                                               ; preds = %10
  call void @getNeighbour(i32 noundef signext %9, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 1, ptr noundef nonnull %2) #7
  %18 = load ptr, ptr @input, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 220
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %2, align 4, !tbaa !18
  br i1 %21, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %3, i64 24
  %25 = load i32, ptr %24, align 4, !tbaa !18
  %26 = load i32, ptr %3, align 4, !tbaa !18
  br label %69

27:                                               ; preds = %17
  %28 = icmp eq i32 %22, 0
  %29 = load ptr, ptr @img, align 8
  br i1 %28, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %29, i64 89192
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = getelementptr inbounds i8, ptr %2, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !23
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %32, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !24
  br label %38

38:                                               ; preds = %27, %30
  %39 = phi i32 [ %37, %30 ], [ 0, %27 ]
  %40 = getelementptr inbounds i8, ptr %29, i64 89192
  br label %41

41:                                               ; preds = %38, %54
  %42 = phi i64 [ 1, %38 ], [ %57, %54 ]
  %43 = phi i32 [ 1, %38 ], [ %56, %54 ]
  %44 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %40, align 8, !tbaa !22
  %49 = getelementptr inbounds i8, ptr %44, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %48, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !24
  br label %54

54:                                               ; preds = %41, %47
  %55 = phi i32 [ %53, %47 ], [ 0, %41 ]
  %56 = and i32 %55, %43
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, 17
  br i1 %58, label %59, label %41

59:                                               ; preds = %54
  %60 = load i32, ptr %3, align 4, !tbaa !18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %40, align 8, !tbaa !22
  %64 = getelementptr inbounds i8, ptr %3, i64 4
  %65 = load i32, ptr %64, align 4, !tbaa !23
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %63, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !24
  br label %69

69:                                               ; preds = %62, %59, %23
  %70 = phi i32 [ %22, %23 ], [ %39, %59 ], [ %39, %62 ]
  %71 = phi i32 [ %25, %23 ], [ %56, %59 ], [ %56, %62 ]
  %72 = phi i32 [ %26, %23 ], [ 0, %59 ], [ %68, %62 ]
  %73 = icmp eq i32 %70, 0
  br i1 %73, label %161, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, ptr %2, i64 20
  %76 = load i32, ptr %75, align 4, !tbaa !25
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %6, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %2, i64 16
  %81 = load i32, ptr %80, align 4, !tbaa !26
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, ptr %79, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !27
  %85 = zext i16 %84 to i32
  %86 = getelementptr i16, ptr %79, i64 %82
  %87 = getelementptr i8, ptr %86, i64 2
  %88 = load i16, ptr %87, align 2, !tbaa !27
  %89 = zext i16 %88 to i32
  %90 = add nuw nsw i32 %85, %89
  %91 = getelementptr i16, ptr %79, i64 %82
  %92 = getelementptr i8, ptr %91, i64 4
  %93 = load i16, ptr %92, align 2, !tbaa !27
  %94 = zext i16 %93 to i32
  %95 = add nuw nsw i32 %90, %94
  %96 = getelementptr i16, ptr %79, i64 %82
  %97 = getelementptr i8, ptr %96, i64 6
  %98 = load i16, ptr %97, align 2, !tbaa !27
  %99 = zext i16 %98 to i32
  %100 = add nuw nsw i32 %95, %99
  %101 = getelementptr i16, ptr %79, i64 %82
  %102 = getelementptr i8, ptr %101, i64 8
  %103 = load i16, ptr %102, align 2, !tbaa !27
  %104 = zext i16 %103 to i32
  %105 = add nuw nsw i32 %100, %104
  %106 = getelementptr i16, ptr %79, i64 %82
  %107 = getelementptr i8, ptr %106, i64 10
  %108 = load i16, ptr %107, align 2, !tbaa !27
  %109 = zext i16 %108 to i32
  %110 = add nuw nsw i32 %105, %109
  %111 = getelementptr i16, ptr %79, i64 %82
  %112 = getelementptr i8, ptr %111, i64 12
  %113 = load i16, ptr %112, align 2, !tbaa !27
  %114 = zext i16 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = getelementptr i16, ptr %79, i64 %82
  %117 = getelementptr i8, ptr %116, i64 14
  %118 = load i16, ptr %117, align 2, !tbaa !27
  %119 = zext i16 %118 to i32
  %120 = add nuw nsw i32 %115, %119
  %121 = getelementptr i16, ptr %79, i64 %82
  %122 = getelementptr i8, ptr %121, i64 16
  %123 = load i16, ptr %122, align 2, !tbaa !27
  %124 = zext i16 %123 to i32
  %125 = add nuw nsw i32 %120, %124
  %126 = getelementptr i16, ptr %79, i64 %82
  %127 = getelementptr i8, ptr %126, i64 18
  %128 = load i16, ptr %127, align 2, !tbaa !27
  %129 = zext i16 %128 to i32
  %130 = add nuw nsw i32 %125, %129
  %131 = getelementptr i16, ptr %79, i64 %82
  %132 = getelementptr i8, ptr %131, i64 20
  %133 = load i16, ptr %132, align 2, !tbaa !27
  %134 = zext i16 %133 to i32
  %135 = add nuw nsw i32 %130, %134
  %136 = getelementptr i16, ptr %79, i64 %82
  %137 = getelementptr i8, ptr %136, i64 22
  %138 = load i16, ptr %137, align 2, !tbaa !27
  %139 = zext i16 %138 to i32
  %140 = add nuw nsw i32 %135, %139
  %141 = getelementptr i16, ptr %79, i64 %82
  %142 = getelementptr i8, ptr %141, i64 24
  %143 = load i16, ptr %142, align 2, !tbaa !27
  %144 = zext i16 %143 to i32
  %145 = add nuw nsw i32 %140, %144
  %146 = getelementptr i16, ptr %79, i64 %82
  %147 = getelementptr i8, ptr %146, i64 26
  %148 = load i16, ptr %147, align 2, !tbaa !27
  %149 = zext i16 %148 to i32
  %150 = add nuw nsw i32 %145, %149
  %151 = getelementptr i16, ptr %79, i64 %82
  %152 = getelementptr i8, ptr %151, i64 28
  %153 = load i16, ptr %152, align 2, !tbaa !27
  %154 = zext i16 %153 to i32
  %155 = add nuw nsw i32 %150, %154
  %156 = getelementptr i16, ptr %79, i64 %82
  %157 = getelementptr i8, ptr %156, i64 30
  %158 = load i16, ptr %157, align 2, !tbaa !27
  %159 = zext i16 %158 to i32
  %160 = add nuw nsw i32 %155, %159
  br label %161

161:                                              ; preds = %74, %69
  %162 = phi i32 [ 0, %69 ], [ %160, %74 ]
  %163 = icmp ne i32 %71, 0
  br i1 %163, label %164, label %363

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, ptr %3, i64 44
  %166 = load i32, ptr %165, align 4, !tbaa !25
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %6, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds i8, ptr %3, i64 40
  %171 = load i32, ptr %170, align 4, !tbaa !26
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i16, ptr %169, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !27
  %175 = zext i16 %174 to i32
  %176 = getelementptr inbounds i8, ptr %3, i64 68
  %177 = load i32, ptr %176, align 4, !tbaa !25
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %6, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = getelementptr inbounds i8, ptr %3, i64 64
  %182 = load i32, ptr %181, align 4, !tbaa !26
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, ptr %180, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !27
  %186 = zext i16 %185 to i32
  %187 = add nuw nsw i32 %175, %186
  %188 = getelementptr inbounds i8, ptr %3, i64 92
  %189 = load i32, ptr %188, align 4, !tbaa !25
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %6, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %3, i64 88
  %194 = load i32, ptr %193, align 4, !tbaa !26
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, ptr %192, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !27
  %198 = zext i16 %197 to i32
  %199 = add nuw nsw i32 %187, %198
  %200 = getelementptr inbounds i8, ptr %3, i64 116
  %201 = load i32, ptr %200, align 4, !tbaa !25
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %6, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = getelementptr inbounds i8, ptr %3, i64 112
  %206 = load i32, ptr %205, align 4, !tbaa !26
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i16, ptr %204, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !27
  %210 = zext i16 %209 to i32
  %211 = add nuw nsw i32 %199, %210
  %212 = getelementptr inbounds i8, ptr %3, i64 140
  %213 = load i32, ptr %212, align 4, !tbaa !25
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %6, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %3, i64 136
  %218 = load i32, ptr %217, align 4, !tbaa !26
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, ptr %216, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !27
  %222 = zext i16 %221 to i32
  %223 = add nuw nsw i32 %211, %222
  %224 = getelementptr inbounds i8, ptr %3, i64 164
  %225 = load i32, ptr %224, align 4, !tbaa !25
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds ptr, ptr %6, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = getelementptr inbounds i8, ptr %3, i64 160
  %230 = load i32, ptr %229, align 4, !tbaa !26
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i16, ptr %228, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !27
  %234 = zext i16 %233 to i32
  %235 = add nuw nsw i32 %223, %234
  %236 = getelementptr inbounds i8, ptr %3, i64 188
  %237 = load i32, ptr %236, align 4, !tbaa !25
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %6, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !6
  %241 = getelementptr inbounds i8, ptr %3, i64 184
  %242 = load i32, ptr %241, align 4, !tbaa !26
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, ptr %240, i64 %243
  %245 = load i16, ptr %244, align 2, !tbaa !27
  %246 = zext i16 %245 to i32
  %247 = add nuw nsw i32 %235, %246
  %248 = getelementptr inbounds i8, ptr %3, i64 212
  %249 = load i32, ptr %248, align 4, !tbaa !25
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %6, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %3, i64 208
  %254 = load i32, ptr %253, align 4, !tbaa !26
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i16, ptr %252, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !27
  %258 = zext i16 %257 to i32
  %259 = add nuw nsw i32 %247, %258
  %260 = getelementptr inbounds i8, ptr %3, i64 236
  %261 = load i32, ptr %260, align 4, !tbaa !25
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds ptr, ptr %6, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !6
  %265 = getelementptr inbounds i8, ptr %3, i64 232
  %266 = load i32, ptr %265, align 4, !tbaa !26
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i16, ptr %264, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !27
  %270 = zext i16 %269 to i32
  %271 = add nuw nsw i32 %259, %270
  %272 = getelementptr inbounds i8, ptr %3, i64 260
  %273 = load i32, ptr %272, align 4, !tbaa !25
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %6, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  %277 = getelementptr inbounds i8, ptr %3, i64 256
  %278 = load i32, ptr %277, align 4, !tbaa !26
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i16, ptr %276, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !27
  %282 = zext i16 %281 to i32
  %283 = add nuw nsw i32 %271, %282
  %284 = getelementptr inbounds i8, ptr %3, i64 284
  %285 = load i32, ptr %284, align 4, !tbaa !25
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %6, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = getelementptr inbounds i8, ptr %3, i64 280
  %290 = load i32, ptr %289, align 4, !tbaa !26
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i16, ptr %288, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !27
  %294 = zext i16 %293 to i32
  %295 = add nuw nsw i32 %283, %294
  %296 = getelementptr inbounds i8, ptr %3, i64 308
  %297 = load i32, ptr %296, align 4, !tbaa !25
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %6, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %3, i64 304
  %302 = load i32, ptr %301, align 4, !tbaa !26
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i16, ptr %300, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !27
  %306 = zext i16 %305 to i32
  %307 = add nuw nsw i32 %295, %306
  %308 = getelementptr inbounds i8, ptr %3, i64 332
  %309 = load i32, ptr %308, align 4, !tbaa !25
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds ptr, ptr %6, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %3, i64 328
  %314 = load i32, ptr %313, align 4, !tbaa !26
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i16, ptr %312, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !27
  %318 = zext i16 %317 to i32
  %319 = add nuw nsw i32 %307, %318
  %320 = getelementptr inbounds i8, ptr %3, i64 356
  %321 = load i32, ptr %320, align 4, !tbaa !25
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %6, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  %325 = getelementptr inbounds i8, ptr %3, i64 352
  %326 = load i32, ptr %325, align 4, !tbaa !26
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i16, ptr %324, i64 %327
  %329 = load i16, ptr %328, align 2, !tbaa !27
  %330 = zext i16 %329 to i32
  %331 = add nuw nsw i32 %319, %330
  %332 = getelementptr inbounds i8, ptr %3, i64 380
  %333 = load i32, ptr %332, align 4, !tbaa !25
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds ptr, ptr %6, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %3, i64 376
  %338 = load i32, ptr %337, align 4, !tbaa !26
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i16, ptr %336, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !27
  %342 = zext i16 %341 to i32
  %343 = add nuw nsw i32 %331, %342
  %344 = getelementptr inbounds i8, ptr %3, i64 404
  %345 = load i32, ptr %344, align 4, !tbaa !25
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %6, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = getelementptr inbounds i8, ptr %3, i64 400
  %350 = load i32, ptr %349, align 4, !tbaa !26
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i16, ptr %348, i64 %351
  %353 = load i16, ptr %352, align 2, !tbaa !27
  %354 = zext i16 %353 to i32
  %355 = add nuw nsw i32 %343, %354
  br i1 %73, label %360, label %356

356:                                              ; preds = %164
  %357 = add nuw nsw i32 %162, 16
  %358 = add nuw nsw i32 %357, %355
  %359 = lshr i32 %358, 5
  br label %368

360:                                              ; preds = %164
  %361 = add nuw nsw i32 %355, 8
  %362 = lshr i32 %361, 4
  br label %368

363:                                              ; preds = %161
  %364 = or i1 %163, %73
  br i1 %364, label %368, label %365

365:                                              ; preds = %363
  %366 = add nuw nsw i32 %162, 8
  %367 = lshr i32 %366, 4
  br label %368

368:                                              ; preds = %356, %360, %365, %363
  %369 = phi i1 [ false, %363 ], [ false, %365 ], [ false, %360 ], [ true, %356 ]
  %370 = phi i32 [ 0, %363 ], [ %367, %365 ], [ %362, %360 ], [ %359, %356 ]
  %371 = or i32 %71, %70
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %368
  %374 = load ptr, ptr @img, align 8, !tbaa !6
  %375 = getelementptr inbounds i8, ptr %374, i64 90528
  %376 = load i32, ptr %375, align 8, !tbaa !28
  br label %377

377:                                              ; preds = %373, %368
  %378 = phi i32 [ %370, %368 ], [ %376, %373 ]
  br i1 %73, label %389, label %379

379:                                              ; preds = %377
  %380 = getelementptr inbounds i8, ptr %2, i64 20
  %381 = load i32, ptr %380, align 4, !tbaa !25
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %6, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !6
  %385 = getelementptr inbounds i8, ptr %2, i64 16
  %386 = load i32, ptr %385, align 4, !tbaa !26
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i16, ptr %384, i64 %387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, ptr noundef nonnull align 2 dereferenceable(32) %388, i64 32, i1 false)
  br label %389

389:                                              ; preds = %379, %377
  br i1 %163, label %390, label %408

390:                                              ; preds = %389
  %391 = getelementptr inbounds i8, ptr %1, i64 32
  br label %392

392:                                              ; preds = %390, %392
  %393 = phi i64 [ 0, %390 ], [ %394, %392 ]
  %394 = add nuw nsw i64 %393, 1
  %395 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %394
  %396 = getelementptr inbounds i8, ptr %395, i64 20
  %397 = load i32, ptr %396, align 4, !tbaa !25
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %6, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds i8, ptr %395, i64 16
  %402 = load i32, ptr %401, align 4, !tbaa !26
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i16, ptr %400, i64 %403
  %405 = load i16, ptr %404, align 2, !tbaa !27
  %406 = getelementptr inbounds [16 x i16], ptr %391, i64 0, i64 %393
  store i16 %405, ptr %406, align 2, !tbaa !27
  %407 = icmp eq i64 %394, 16
  br i1 %407, label %408, label %392

408:                                              ; preds = %392, %389
  %409 = getelementptr inbounds i8, ptr %1, i64 32
  %410 = trunc i32 %378 to i16
  %411 = load ptr, ptr @img, align 8, !tbaa !6
  br label %412

412:                                              ; preds = %408, %412
  %413 = phi ptr [ %411, %408 ], [ %419, %412 ]
  %414 = phi i64 [ 0, %408 ], [ %454, %412 ]
  %415 = getelementptr inbounds i8, ptr %413, i64 4792
  %416 = getelementptr inbounds [16 x [16 x i16]], ptr %415, i64 0, i64 %414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %416, ptr noundef nonnull align 2 dereferenceable(32) %1, i64 32, i1 false)
  %417 = getelementptr inbounds [16 x i16], ptr %409, i64 0, i64 %414
  %418 = load i16, ptr %417, align 2, !tbaa !27
  %419 = load ptr, ptr @img, align 8, !tbaa !6
  %420 = getelementptr inbounds i8, ptr %419, i64 5304
  %421 = getelementptr inbounds i8, ptr %419, i64 5816
  %422 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 0
  store i16 %418, ptr %422, align 2, !tbaa !27
  %423 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 0
  store i16 %410, ptr %423, align 2, !tbaa !27
  %424 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 1
  store i16 %418, ptr %424, align 2, !tbaa !27
  %425 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 1
  store i16 %410, ptr %425, align 2, !tbaa !27
  %426 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 2
  store i16 %418, ptr %426, align 2, !tbaa !27
  %427 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 2
  store i16 %410, ptr %427, align 2, !tbaa !27
  %428 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 3
  store i16 %418, ptr %428, align 2, !tbaa !27
  %429 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 3
  store i16 %410, ptr %429, align 2, !tbaa !27
  %430 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 4
  store i16 %418, ptr %430, align 2, !tbaa !27
  %431 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 4
  store i16 %410, ptr %431, align 2, !tbaa !27
  %432 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 5
  store i16 %418, ptr %432, align 2, !tbaa !27
  %433 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 5
  store i16 %410, ptr %433, align 2, !tbaa !27
  %434 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 6
  store i16 %418, ptr %434, align 2, !tbaa !27
  %435 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 6
  store i16 %410, ptr %435, align 2, !tbaa !27
  %436 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 7
  store i16 %418, ptr %436, align 2, !tbaa !27
  %437 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 7
  store i16 %410, ptr %437, align 2, !tbaa !27
  %438 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 8
  store i16 %418, ptr %438, align 2, !tbaa !27
  %439 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 8
  store i16 %410, ptr %439, align 2, !tbaa !27
  %440 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 9
  store i16 %418, ptr %440, align 2, !tbaa !27
  %441 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 9
  store i16 %410, ptr %441, align 2, !tbaa !27
  %442 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 10
  store i16 %418, ptr %442, align 2, !tbaa !27
  %443 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 10
  store i16 %410, ptr %443, align 2, !tbaa !27
  %444 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 11
  store i16 %418, ptr %444, align 2, !tbaa !27
  %445 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 11
  store i16 %410, ptr %445, align 2, !tbaa !27
  %446 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 12
  store i16 %418, ptr %446, align 2, !tbaa !27
  %447 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 12
  store i16 %410, ptr %447, align 2, !tbaa !27
  %448 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 13
  store i16 %418, ptr %448, align 2, !tbaa !27
  %449 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 13
  store i16 %410, ptr %449, align 2, !tbaa !27
  %450 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 14
  store i16 %418, ptr %450, align 2, !tbaa !27
  %451 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 14
  store i16 %410, ptr %451, align 2, !tbaa !27
  %452 = getelementptr inbounds [16 x [16 x i16]], ptr %420, i64 0, i64 %414, i64 15
  store i16 %418, ptr %452, align 2, !tbaa !27
  %453 = getelementptr inbounds [16 x [16 x i16]], ptr %421, i64 0, i64 %414, i64 15
  store i16 %410, ptr %453, align 2, !tbaa !27
  %454 = add nuw nsw i64 %414, 1
  %455 = icmp eq i64 %454, 16
  br i1 %455, label %456, label %412

456:                                              ; preds = %412
  %457 = icmp ne i32 %72, 0
  %458 = select i1 %369, i1 %457, i1 false
  br i1 %458, label %459, label %785

459:                                              ; preds = %456
  %460 = getelementptr inbounds i8, ptr %2, i64 16
  %461 = load i32, ptr %460, align 4
  %462 = add nsw i32 %461, 7
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i8, ptr %3, i64 20
  %465 = load i32, ptr %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds ptr, ptr %6, i64 %466
  %468 = getelementptr inbounds i8, ptr %3, i64 16
  %469 = load i32, ptr %468, align 4
  %470 = sext i32 %469 to i64
  %471 = sext i32 %462 to i64
  %472 = getelementptr inbounds i8, ptr %2, i64 20
  %473 = load i32, ptr %472, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %6, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = getelementptr i16, ptr %476, i64 %471
  %478 = getelementptr i8, ptr %477, i64 2
  %479 = load i16, ptr %478, align 2, !tbaa !27
  %480 = zext i16 %479 to i32
  %481 = getelementptr i16, ptr %476, i64 %471
  %482 = getelementptr i8, ptr %481, i64 -2
  %483 = load i16, ptr %482, align 2, !tbaa !27
  %484 = zext i16 %483 to i32
  %485 = sub nsw i32 %480, %484
  %486 = getelementptr inbounds i8, ptr %3, i64 236
  %487 = load i32, ptr %486, align 4, !tbaa !25
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds ptr, ptr %6, i64 %488
  %490 = load ptr, ptr %489, align 8, !tbaa !6
  %491 = getelementptr inbounds i8, ptr %3, i64 232
  %492 = load i32, ptr %491, align 4, !tbaa !26
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i16, ptr %490, i64 %493
  %495 = load i16, ptr %494, align 2, !tbaa !27
  %496 = zext i16 %495 to i32
  %497 = getelementptr inbounds i8, ptr %3, i64 188
  %498 = load i32, ptr %497, align 4, !tbaa !25
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds ptr, ptr %6, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %3, i64 184
  %503 = load i32, ptr %502, align 4, !tbaa !26
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i16, ptr %501, i64 %504
  %506 = load i16, ptr %505, align 2, !tbaa !27
  %507 = zext i16 %506 to i32
  %508 = sub nsw i32 %496, %507
  %509 = getelementptr i16, ptr %476, i64 %471
  %510 = getelementptr i8, ptr %509, i64 4
  %511 = load i16, ptr %510, align 2, !tbaa !27
  %512 = zext i16 %511 to i32
  %513 = getelementptr i16, ptr %476, i64 %471
  %514 = getelementptr i8, ptr %513, i64 -4
  %515 = load i16, ptr %514, align 2, !tbaa !27
  %516 = zext i16 %515 to i32
  %517 = sub nsw i32 %512, %516
  %518 = shl nsw i32 %517, 1
  %519 = add nsw i32 %518, %485
  %520 = getelementptr inbounds i8, ptr %3, i64 260
  %521 = load i32, ptr %520, align 4, !tbaa !25
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds ptr, ptr %6, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = getelementptr inbounds i8, ptr %3, i64 256
  %526 = load i32, ptr %525, align 4, !tbaa !26
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i16, ptr %524, i64 %527
  %529 = load i16, ptr %528, align 2, !tbaa !27
  %530 = zext i16 %529 to i32
  %531 = getelementptr inbounds i8, ptr %3, i64 164
  %532 = load i32, ptr %531, align 4, !tbaa !25
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds ptr, ptr %6, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %3, i64 160
  %537 = load i32, ptr %536, align 4, !tbaa !26
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i16, ptr %535, i64 %538
  %540 = load i16, ptr %539, align 2, !tbaa !27
  %541 = zext i16 %540 to i32
  %542 = sub nsw i32 %530, %541
  %543 = shl nsw i32 %542, 1
  %544 = add nsw i32 %543, %508
  %545 = getelementptr i16, ptr %476, i64 %471
  %546 = getelementptr i8, ptr %545, i64 6
  %547 = load i16, ptr %546, align 2, !tbaa !27
  %548 = zext i16 %547 to i32
  %549 = getelementptr i16, ptr %476, i64 %471
  %550 = getelementptr i8, ptr %549, i64 -6
  %551 = load i16, ptr %550, align 2, !tbaa !27
  %552 = zext i16 %551 to i32
  %553 = sub nsw i32 %548, %552
  %554 = mul nsw i32 %553, 3
  %555 = add nsw i32 %554, %519
  %556 = getelementptr inbounds i8, ptr %3, i64 284
  %557 = load i32, ptr %556, align 4, !tbaa !25
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds ptr, ptr %6, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !6
  %561 = getelementptr inbounds i8, ptr %3, i64 280
  %562 = load i32, ptr %561, align 4, !tbaa !26
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i16, ptr %560, i64 %563
  %565 = load i16, ptr %564, align 2, !tbaa !27
  %566 = zext i16 %565 to i32
  %567 = getelementptr inbounds i8, ptr %3, i64 140
  %568 = load i32, ptr %567, align 4, !tbaa !25
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds ptr, ptr %6, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !6
  %572 = getelementptr inbounds i8, ptr %3, i64 136
  %573 = load i32, ptr %572, align 4, !tbaa !26
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i16, ptr %571, i64 %574
  %576 = load i16, ptr %575, align 2, !tbaa !27
  %577 = zext i16 %576 to i32
  %578 = sub nsw i32 %566, %577
  %579 = mul nsw i32 %578, 3
  %580 = add nsw i32 %579, %544
  %581 = getelementptr i16, ptr %476, i64 %471
  %582 = getelementptr i8, ptr %581, i64 8
  %583 = load i16, ptr %582, align 2, !tbaa !27
  %584 = zext i16 %583 to i32
  %585 = getelementptr i16, ptr %476, i64 %471
  %586 = getelementptr i8, ptr %585, i64 -8
  %587 = load i16, ptr %586, align 2, !tbaa !27
  %588 = zext i16 %587 to i32
  %589 = sub nsw i32 %584, %588
  %590 = shl nsw i32 %589, 2
  %591 = add nsw i32 %590, %555
  %592 = getelementptr inbounds i8, ptr %3, i64 308
  %593 = load i32, ptr %592, align 4, !tbaa !25
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds ptr, ptr %6, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !6
  %597 = getelementptr inbounds i8, ptr %3, i64 304
  %598 = load i32, ptr %597, align 4, !tbaa !26
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i16, ptr %596, i64 %599
  %601 = load i16, ptr %600, align 2, !tbaa !27
  %602 = zext i16 %601 to i32
  %603 = getelementptr inbounds i8, ptr %3, i64 116
  %604 = load i32, ptr %603, align 4, !tbaa !25
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds ptr, ptr %6, i64 %605
  %607 = load ptr, ptr %606, align 8, !tbaa !6
  %608 = getelementptr inbounds i8, ptr %3, i64 112
  %609 = load i32, ptr %608, align 4, !tbaa !26
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i16, ptr %607, i64 %610
  %612 = load i16, ptr %611, align 2, !tbaa !27
  %613 = zext i16 %612 to i32
  %614 = sub nsw i32 %602, %613
  %615 = shl nsw i32 %614, 2
  %616 = add nsw i32 %615, %580
  %617 = getelementptr i16, ptr %476, i64 %471
  %618 = getelementptr i8, ptr %617, i64 10
  %619 = load i16, ptr %618, align 2, !tbaa !27
  %620 = zext i16 %619 to i32
  %621 = getelementptr i16, ptr %476, i64 %471
  %622 = getelementptr i8, ptr %621, i64 -10
  %623 = load i16, ptr %622, align 2, !tbaa !27
  %624 = zext i16 %623 to i32
  %625 = sub nsw i32 %620, %624
  %626 = mul nsw i32 %625, 5
  %627 = add nsw i32 %626, %591
  %628 = getelementptr inbounds i8, ptr %3, i64 332
  %629 = load i32, ptr %628, align 4, !tbaa !25
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds ptr, ptr %6, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !6
  %633 = getelementptr inbounds i8, ptr %3, i64 328
  %634 = load i32, ptr %633, align 4, !tbaa !26
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i16, ptr %632, i64 %635
  %637 = load i16, ptr %636, align 2, !tbaa !27
  %638 = zext i16 %637 to i32
  %639 = getelementptr inbounds i8, ptr %3, i64 92
  %640 = load i32, ptr %639, align 4, !tbaa !25
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds ptr, ptr %6, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !6
  %644 = getelementptr inbounds i8, ptr %3, i64 88
  %645 = load i32, ptr %644, align 4, !tbaa !26
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i16, ptr %643, i64 %646
  %648 = load i16, ptr %647, align 2, !tbaa !27
  %649 = zext i16 %648 to i32
  %650 = sub nsw i32 %638, %649
  %651 = mul nsw i32 %650, 5
  %652 = add nsw i32 %651, %616
  %653 = getelementptr i16, ptr %476, i64 %471
  %654 = getelementptr i8, ptr %653, i64 12
  %655 = load i16, ptr %654, align 2, !tbaa !27
  %656 = zext i16 %655 to i32
  %657 = getelementptr i16, ptr %476, i64 %471
  %658 = getelementptr i8, ptr %657, i64 -12
  %659 = load i16, ptr %658, align 2, !tbaa !27
  %660 = zext i16 %659 to i32
  %661 = sub nsw i32 %656, %660
  %662 = mul nsw i32 %661, 6
  %663 = add nsw i32 %662, %627
  %664 = getelementptr inbounds i8, ptr %3, i64 356
  %665 = load i32, ptr %664, align 4, !tbaa !25
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds ptr, ptr %6, i64 %666
  %668 = load ptr, ptr %667, align 8, !tbaa !6
  %669 = getelementptr inbounds i8, ptr %3, i64 352
  %670 = load i32, ptr %669, align 4, !tbaa !26
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i16, ptr %668, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !27
  %674 = zext i16 %673 to i32
  %675 = getelementptr inbounds i8, ptr %3, i64 68
  %676 = load i32, ptr %675, align 4, !tbaa !25
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds ptr, ptr %6, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !6
  %680 = getelementptr inbounds i8, ptr %3, i64 64
  %681 = load i32, ptr %680, align 4, !tbaa !26
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i16, ptr %679, i64 %682
  %684 = load i16, ptr %683, align 2, !tbaa !27
  %685 = zext i16 %684 to i32
  %686 = sub nsw i32 %674, %685
  %687 = mul nsw i32 %686, 6
  %688 = add nsw i32 %687, %652
  %689 = getelementptr i16, ptr %476, i64 %471
  %690 = getelementptr i8, ptr %689, i64 14
  %691 = load i16, ptr %690, align 2, !tbaa !27
  %692 = zext i16 %691 to i32
  %693 = getelementptr i16, ptr %476, i64 %471
  %694 = getelementptr i8, ptr %693, i64 -14
  %695 = load i16, ptr %694, align 2, !tbaa !27
  %696 = zext i16 %695 to i32
  %697 = sub nsw i32 %692, %696
  %698 = mul nsw i32 %697, 7
  %699 = add nsw i32 %698, %663
  %700 = getelementptr inbounds i8, ptr %3, i64 380
  %701 = load i32, ptr %700, align 4, !tbaa !25
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds ptr, ptr %6, i64 %702
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  %705 = getelementptr inbounds i8, ptr %3, i64 376
  %706 = load i32, ptr %705, align 4, !tbaa !26
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i16, ptr %704, i64 %707
  %709 = load i16, ptr %708, align 2, !tbaa !27
  %710 = zext i16 %709 to i32
  %711 = getelementptr inbounds i8, ptr %3, i64 44
  %712 = load i32, ptr %711, align 4, !tbaa !25
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds ptr, ptr %6, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !6
  %716 = getelementptr inbounds i8, ptr %3, i64 40
  %717 = load i32, ptr %716, align 4, !tbaa !26
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i16, ptr %715, i64 %718
  %720 = load i16, ptr %719, align 2, !tbaa !27
  %721 = zext i16 %720 to i32
  %722 = sub nsw i32 %710, %721
  %723 = mul nsw i32 %722, 7
  %724 = add nsw i32 %723, %688
  %725 = getelementptr i16, ptr %476, i64 %463
  %726 = getelementptr i8, ptr %725, i64 30
  %727 = load i16, ptr %726, align 2, !tbaa !27
  %728 = zext i16 %727 to i32
  %729 = load ptr, ptr %467, align 8, !tbaa !6
  %730 = getelementptr inbounds i16, ptr %729, i64 %470
  %731 = load i16, ptr %730, align 2, !tbaa !27
  %732 = zext i16 %731 to i32
  %733 = sub nsw i32 %728, %732
  %734 = shl nsw i32 %733, 3
  %735 = add nsw i32 %734, %699
  %736 = getelementptr inbounds i8, ptr %3, i64 404
  %737 = load i32, ptr %736, align 4, !tbaa !25
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds ptr, ptr %6, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !6
  %741 = getelementptr inbounds i8, ptr %3, i64 400
  %742 = load i32, ptr %741, align 4, !tbaa !26
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i16, ptr %740, i64 %743
  %745 = load i16, ptr %744, align 2, !tbaa !27
  %746 = zext i16 %745 to i32
  %747 = zext i16 %731 to i32
  %748 = sub nsw i32 %746, %747
  %749 = shl nsw i32 %748, 3
  %750 = add nsw i32 %749, %724
  %751 = mul nsw i32 %735, 5
  %752 = add nsw i32 %751, 32
  %753 = ashr i32 %752, 6
  %754 = mul nsw i32 %750, 5
  %755 = add nsw i32 %754, 32
  %756 = ashr i32 %755, 6
  %757 = add nuw nsw i32 %746, %728
  %758 = shl nuw nsw i32 %757, 4
  %759 = getelementptr inbounds i8, ptr %419, i64 90532
  %760 = load i32, ptr %759, align 4, !tbaa !29
  %761 = add nuw nsw i32 %758, 16
  %762 = getelementptr inbounds i8, ptr %419, i64 6328
  br label %763

763:                                              ; preds = %459, %782
  %764 = phi i64 [ 0, %459 ], [ %783, %782 ]
  %765 = trunc i64 %764 to i32
  %766 = add i32 %765, -7
  %767 = mul i32 %766, %756
  %768 = add i32 %761, %767
  br label %769

769:                                              ; preds = %763, %769
  %770 = phi i64 [ 0, %763 ], [ %780, %769 ]
  %771 = trunc i64 %770 to i32
  %772 = add i32 %771, -7
  %773 = mul i32 %772, %753
  %774 = add i32 %768, %773
  %775 = sdiv i32 %774, 32
  %776 = call i32 @llvm.smin.i32(i32 %760, i32 %775)
  %777 = call i32 @llvm.smax.i32(i32 %776, i32 0)
  %778 = trunc i32 %777 to i16
  %779 = getelementptr inbounds [16 x [16 x i16]], ptr %762, i64 0, i64 %764, i64 %770
  store i16 %778, ptr %779, align 2, !tbaa !27
  %780 = add nuw nsw i64 %770, 1
  %781 = icmp eq i64 %780, 16
  br i1 %781, label %782, label %769

782:                                              ; preds = %769
  %783 = add nuw nsw i64 %764, 1
  %784 = icmp eq i64 %783, 16
  br i1 %784, label %785, label %763

785:                                              ; preds = %782, %456
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
define dso_local signext range(i32 0, 16) i32 @dct_luma_16x16(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [16 x [16 x i32]], align 4
  %3 = alloca [4 x [4 x i32]], align 4
  %4 = alloca [4 x [4 x [4 x [4 x i32]]]], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #7
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 31576
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds i8, ptr %5, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %5, i64 90264
  %13 = load i32, ptr %12, align 8, !tbaa !31
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %5, i64 90220
  %17 = load i32, ptr %16, align 4, !tbaa !32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %11, i64 424
  %21 = load i32, ptr %20, align 8, !tbaa !33
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %24

24:                                               ; preds = %15, %19, %1
  %25 = phi ptr [ @FIELD_SCAN, %1 ], [ @SNGL_SCAN, %15 ], [ %23, %19 ]
  %26 = getelementptr inbounds i8, ptr %5, i64 14144
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %28, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %11, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !37
  %34 = getelementptr inbounds i8, ptr %5, i64 90492
  %35 = load i32, ptr %34, align 4, !tbaa !38
  %36 = sub i32 0, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds i8, ptr %5, i64 90552
  %40 = load i32, ptr %39, align 8, !tbaa !39
  %41 = icmp eq i32 %40, 1
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi i1 [ false, %24 ], [ %41, %38 ]
  %44 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !6
  %45 = add nsw i32 %35, %33
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !24
  %49 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !6
  %50 = getelementptr inbounds i32, ptr %49, i64 %46
  %51 = load i32, ptr %50, align 4, !tbaa !24
  %52 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = sext i32 %48 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 8
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = getelementptr inbounds ptr, ptr %66, i64 %55
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %5, i64 172
  %70 = load i32, ptr %69, align 4, !tbaa !40
  %71 = getelementptr inbounds i8, ptr %5, i64 90572
  %72 = load i32, ptr %71, align 4, !tbaa !41
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds i8, ptr %5, i64 13112
  %75 = load ptr, ptr @imgY_org, align 8
  %76 = getelementptr inbounds i8, ptr %5, i64 168
  %77 = getelementptr inbounds i8, ptr %5, i64 4792
  %78 = sext i32 %0 to i64
  %79 = sext i32 %70 to i64
  %80 = getelementptr ptr, ptr %75, i64 %79
  br label %99

81:                                               ; preds = %132
  %82 = add nsw i32 %48, 15
  br i1 %43, label %138, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %3, i64 48
  %85 = getelementptr inbounds i8, ptr %3, i64 16
  %86 = getelementptr inbounds i8, ptr %3, i64 32
  %87 = getelementptr inbounds i8, ptr %3, i64 8
  %88 = getelementptr inbounds i8, ptr %3, i64 4
  %89 = getelementptr inbounds i8, ptr %3, i64 12
  %90 = getelementptr inbounds i8, ptr %3, i64 24
  %91 = getelementptr inbounds i8, ptr %3, i64 20
  %92 = getelementptr inbounds i8, ptr %3, i64 28
  %93 = getelementptr inbounds i8, ptr %3, i64 40
  %94 = getelementptr inbounds i8, ptr %3, i64 36
  %95 = getelementptr inbounds i8, ptr %3, i64 44
  %96 = getelementptr inbounds i8, ptr %3, i64 56
  %97 = getelementptr inbounds i8, ptr %3, i64 52
  %98 = getelementptr inbounds i8, ptr %3, i64 60
  br label %135

99:                                               ; preds = %42, %132
  %100 = phi i64 [ 0, %42 ], [ %133, %132 ]
  %101 = lshr i64 %100, 2
  %102 = and i64 %100, 3
  %103 = and i64 %101, 1073741823
  %104 = getelementptr ptr, ptr %80, i64 %100
  br label %105

105:                                              ; preds = %99, %123
  %106 = phi i64 [ 0, %99 ], [ %130, %123 ]
  br i1 %73, label %107, label %120

107:                                              ; preds = %105
  %108 = trunc nuw nsw i64 %106 to i32
  %109 = load ptr, ptr %104, align 8, !tbaa !6
  %110 = load i32, ptr %76, align 8, !tbaa !42
  %111 = add nsw i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %109, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !27
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %77, i64 0, i64 %78, i64 %100, i64 %106
  %117 = load i16, ptr %116, align 2, !tbaa !27
  %118 = zext i16 %117 to i32
  %119 = sub nsw i32 %115, %118
  br label %123

120:                                              ; preds = %105
  %121 = getelementptr inbounds [16 x [16 x i32]], ptr %74, i64 0, i64 %100, i64 %106
  %122 = load i32, ptr %121, align 4, !tbaa !24
  br label %123

123:                                              ; preds = %120, %107
  %124 = phi i32 [ %122, %120 ], [ %119, %107 ]
  %125 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %100, i64 %106
  store i32 %124, ptr %125, align 4
  %126 = lshr i64 %106, 2
  %127 = and i64 %126, 1073741823
  %128 = and i64 %106, 3
  %129 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %103, i64 %127, i64 %102, i64 %128
  store i32 %124, ptr %129, align 4, !tbaa !24
  %130 = add nuw nsw i64 %106, 1
  %131 = icmp eq i64 %130, 16
  br i1 %131, label %132, label %105

132:                                              ; preds = %123
  %133 = add nuw nsw i64 %100, 1
  %134 = icmp eq i64 %133, 16
  br i1 %134, label %81, label %99

135:                                              ; preds = %83, %313
  %136 = phi i64 [ 0, %83 ], [ %314, %313 ]
  br label %185

137:                                              ; preds = %313
  store i32 %199, ptr %3, align 4, !tbaa !24
  store i32 %200, ptr %87, align 4, !tbaa !24
  store i32 %202, ptr %88, align 4, !tbaa !24
  store i32 %204, ptr %89, align 4, !tbaa !24
  store i32 %217, ptr %85, align 4, !tbaa !24
  store i32 %218, ptr %90, align 4, !tbaa !24
  store i32 %220, ptr %91, align 4, !tbaa !24
  store i32 %222, ptr %92, align 4, !tbaa !24
  store i32 %235, ptr %86, align 4, !tbaa !24
  store i32 %236, ptr %93, align 4, !tbaa !24
  store i32 %238, ptr %94, align 4, !tbaa !24
  store i32 %240, ptr %95, align 4, !tbaa !24
  store i32 %253, ptr %84, align 4, !tbaa !24
  store i32 %254, ptr %96, align 4, !tbaa !24
  store i32 %256, ptr %97, align 4, !tbaa !24
  store i32 %258, ptr %98, align 4, !tbaa !24
  br label %138

138:                                              ; preds = %137, %81
  %139 = load i32, ptr %4, align 4, !tbaa !24
  store i32 %139, ptr %3, align 4, !tbaa !24
  %140 = getelementptr inbounds i8, ptr %4, i64 64
  %141 = load i32, ptr %140, align 4, !tbaa !24
  %142 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %141, ptr %142, align 4, !tbaa !24
  %143 = getelementptr inbounds i8, ptr %4, i64 128
  %144 = load i32, ptr %143, align 4, !tbaa !24
  %145 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %144, ptr %145, align 4, !tbaa !24
  %146 = getelementptr inbounds i8, ptr %4, i64 192
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %147, ptr %148, align 4, !tbaa !24
  %149 = getelementptr inbounds i8, ptr %4, i64 256
  %150 = load i32, ptr %149, align 4, !tbaa !24
  %151 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 %150, ptr %151, align 4, !tbaa !24
  %152 = getelementptr inbounds i8, ptr %4, i64 320
  %153 = load i32, ptr %152, align 4, !tbaa !24
  %154 = getelementptr inbounds i8, ptr %3, i64 20
  store i32 %153, ptr %154, align 4, !tbaa !24
  %155 = getelementptr inbounds i8, ptr %4, i64 384
  %156 = load i32, ptr %155, align 4, !tbaa !24
  %157 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 %156, ptr %157, align 4, !tbaa !24
  %158 = getelementptr inbounds i8, ptr %4, i64 448
  %159 = load i32, ptr %158, align 4, !tbaa !24
  %160 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 %159, ptr %160, align 4, !tbaa !24
  %161 = getelementptr inbounds i8, ptr %4, i64 512
  %162 = load i32, ptr %161, align 4, !tbaa !24
  %163 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 %162, ptr %163, align 4, !tbaa !24
  %164 = getelementptr inbounds i8, ptr %4, i64 576
  %165 = load i32, ptr %164, align 4, !tbaa !24
  %166 = getelementptr inbounds i8, ptr %3, i64 36
  store i32 %165, ptr %166, align 4, !tbaa !24
  %167 = getelementptr inbounds i8, ptr %4, i64 640
  %168 = load i32, ptr %167, align 4, !tbaa !24
  %169 = getelementptr inbounds i8, ptr %3, i64 40
  store i32 %168, ptr %169, align 4, !tbaa !24
  %170 = getelementptr inbounds i8, ptr %4, i64 704
  %171 = load i32, ptr %170, align 4, !tbaa !24
  %172 = getelementptr inbounds i8, ptr %3, i64 44
  store i32 %171, ptr %172, align 4, !tbaa !24
  %173 = getelementptr inbounds i8, ptr %4, i64 768
  %174 = load i32, ptr %173, align 4, !tbaa !24
  %175 = getelementptr inbounds i8, ptr %3, i64 48
  store i32 %174, ptr %175, align 4, !tbaa !24
  %176 = getelementptr inbounds i8, ptr %4, i64 832
  %177 = load i32, ptr %176, align 4, !tbaa !24
  %178 = getelementptr inbounds i8, ptr %3, i64 52
  store i32 %177, ptr %178, align 4, !tbaa !24
  %179 = getelementptr inbounds i8, ptr %4, i64 896
  %180 = load i32, ptr %179, align 4, !tbaa !24
  %181 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 %180, ptr %181, align 4, !tbaa !24
  %182 = getelementptr inbounds i8, ptr %4, i64 960
  %183 = load i32, ptr %182, align 4, !tbaa !24
  %184 = getelementptr inbounds i8, ptr %3, i64 60
  store i32 %183, ptr %184, align 4, !tbaa !24
  br i1 %43, label %406, label %316

185:                                              ; preds = %135, %185
  %186 = phi i64 [ 0, %135 ], [ %311, %185 ]
  %187 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %136, i64 %186, i64 0
  %188 = load i32, ptr %187, align 4, !tbaa !24
  %189 = getelementptr inbounds i8, ptr %187, i64 12
  %190 = load i32, ptr %189, align 4, !tbaa !24
  %191 = add nsw i32 %190, %188
  %192 = getelementptr inbounds i8, ptr %187, i64 4
  %193 = load i32, ptr %192, align 4, !tbaa !24
  %194 = getelementptr inbounds i8, ptr %187, i64 8
  %195 = load i32, ptr %194, align 4, !tbaa !24
  %196 = add nsw i32 %195, %193
  %197 = sub nsw i32 %193, %195
  %198 = sub nsw i32 %188, %190
  %199 = add nsw i32 %196, %191
  %200 = sub nsw i32 %191, %196
  %201 = shl nsw i32 %198, 1
  %202 = add nsw i32 %197, %201
  %203 = shl nsw i32 %197, 1
  %204 = sub nsw i32 %198, %203
  %205 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %136, i64 %186, i64 1
  %206 = load i32, ptr %205, align 4, !tbaa !24
  %207 = getelementptr inbounds i8, ptr %205, i64 12
  %208 = load i32, ptr %207, align 4, !tbaa !24
  %209 = add nsw i32 %208, %206
  %210 = getelementptr inbounds i8, ptr %205, i64 4
  %211 = load i32, ptr %210, align 4, !tbaa !24
  %212 = getelementptr inbounds i8, ptr %205, i64 8
  %213 = load i32, ptr %212, align 4, !tbaa !24
  %214 = add nsw i32 %213, %211
  %215 = sub nsw i32 %211, %213
  %216 = sub nsw i32 %206, %208
  %217 = add nsw i32 %214, %209
  %218 = sub nsw i32 %209, %214
  %219 = shl nsw i32 %216, 1
  %220 = add nsw i32 %215, %219
  %221 = shl nsw i32 %215, 1
  %222 = sub nsw i32 %216, %221
  %223 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %136, i64 %186, i64 2
  %224 = load i32, ptr %223, align 4, !tbaa !24
  %225 = getelementptr inbounds i8, ptr %223, i64 12
  %226 = load i32, ptr %225, align 4, !tbaa !24
  %227 = add nsw i32 %226, %224
  %228 = getelementptr inbounds i8, ptr %223, i64 4
  %229 = load i32, ptr %228, align 4, !tbaa !24
  %230 = getelementptr inbounds i8, ptr %223, i64 8
  %231 = load i32, ptr %230, align 4, !tbaa !24
  %232 = add nsw i32 %231, %229
  %233 = sub nsw i32 %229, %231
  %234 = sub nsw i32 %224, %226
  %235 = add nsw i32 %232, %227
  %236 = sub nsw i32 %227, %232
  %237 = shl nsw i32 %234, 1
  %238 = add nsw i32 %233, %237
  %239 = shl nsw i32 %233, 1
  %240 = sub nsw i32 %234, %239
  %241 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %136, i64 %186, i64 3
  %242 = load i32, ptr %241, align 4, !tbaa !24
  %243 = getelementptr inbounds i8, ptr %241, i64 12
  %244 = load i32, ptr %243, align 4, !tbaa !24
  %245 = add nsw i32 %244, %242
  %246 = getelementptr inbounds i8, ptr %241, i64 4
  %247 = load i32, ptr %246, align 4, !tbaa !24
  %248 = getelementptr inbounds i8, ptr %241, i64 8
  %249 = load i32, ptr %248, align 4, !tbaa !24
  %250 = add nsw i32 %249, %247
  %251 = sub nsw i32 %247, %249
  %252 = sub nsw i32 %242, %244
  %253 = add nsw i32 %250, %245
  %254 = sub nsw i32 %245, %250
  %255 = shl nsw i32 %252, 1
  %256 = add nsw i32 %251, %255
  %257 = shl nsw i32 %251, 1
  %258 = sub nsw i32 %252, %257
  %259 = getelementptr inbounds i8, ptr %187, i64 32
  %260 = getelementptr inbounds i8, ptr %187, i64 16
  %261 = getelementptr inbounds i8, ptr %187, i64 48
  %262 = add nsw i32 %253, %199
  %263 = add nsw i32 %235, %217
  %264 = sub nsw i32 %217, %235
  %265 = sub nsw i32 %199, %253
  %266 = add nsw i32 %263, %262
  store i32 %266, ptr %187, align 4, !tbaa !24
  %267 = sub nsw i32 %262, %263
  store i32 %267, ptr %259, align 4, !tbaa !24
  %268 = shl nsw i32 %265, 1
  %269 = add nsw i32 %264, %268
  store i32 %269, ptr %260, align 4, !tbaa !24
  %270 = shl nsw i32 %264, 1
  %271 = sub nsw i32 %265, %270
  store i32 %271, ptr %261, align 4, !tbaa !24
  %272 = add nsw i32 %256, %202
  %273 = add nsw i32 %238, %220
  %274 = sub nsw i32 %220, %238
  %275 = sub nsw i32 %202, %256
  %276 = add nsw i32 %273, %272
  store i32 %276, ptr %192, align 4, !tbaa !24
  %277 = sub nsw i32 %272, %273
  %278 = getelementptr inbounds i8, ptr %187, i64 36
  store i32 %277, ptr %278, align 4, !tbaa !24
  %279 = shl nsw i32 %275, 1
  %280 = add nsw i32 %274, %279
  %281 = getelementptr inbounds i8, ptr %187, i64 20
  store i32 %280, ptr %281, align 4, !tbaa !24
  %282 = shl nsw i32 %274, 1
  %283 = sub nsw i32 %275, %282
  %284 = getelementptr inbounds i8, ptr %187, i64 52
  store i32 %283, ptr %284, align 4, !tbaa !24
  %285 = add nsw i32 %254, %200
  %286 = add nsw i32 %236, %218
  %287 = sub nsw i32 %218, %236
  %288 = sub nsw i32 %200, %254
  %289 = add nsw i32 %286, %285
  store i32 %289, ptr %194, align 4, !tbaa !24
  %290 = sub nsw i32 %285, %286
  %291 = getelementptr inbounds i8, ptr %187, i64 40
  store i32 %290, ptr %291, align 4, !tbaa !24
  %292 = shl nsw i32 %288, 1
  %293 = add nsw i32 %287, %292
  %294 = getelementptr inbounds i8, ptr %187, i64 24
  store i32 %293, ptr %294, align 4, !tbaa !24
  %295 = shl nsw i32 %287, 1
  %296 = sub nsw i32 %288, %295
  %297 = getelementptr inbounds i8, ptr %187, i64 56
  store i32 %296, ptr %297, align 4, !tbaa !24
  %298 = add nsw i32 %258, %204
  %299 = add nsw i32 %240, %222
  %300 = sub nsw i32 %222, %240
  %301 = sub nsw i32 %204, %258
  %302 = add nsw i32 %299, %298
  store i32 %302, ptr %189, align 4, !tbaa !24
  %303 = sub nsw i32 %298, %299
  %304 = getelementptr inbounds i8, ptr %187, i64 44
  store i32 %303, ptr %304, align 4, !tbaa !24
  %305 = shl nsw i32 %301, 1
  %306 = add nsw i32 %300, %305
  %307 = getelementptr inbounds i8, ptr %187, i64 28
  store i32 %306, ptr %307, align 4, !tbaa !24
  %308 = shl nsw i32 %300, 1
  %309 = sub nsw i32 %301, %308
  %310 = getelementptr inbounds i8, ptr %187, i64 60
  store i32 %309, ptr %310, align 4, !tbaa !24
  %311 = add nuw nsw i64 %186, 1
  %312 = icmp eq i64 %311, 4
  br i1 %312, label %313, label %185

313:                                              ; preds = %185
  %314 = add nuw nsw i64 %136, 1
  %315 = icmp ugt i64 %136, 2
  br i1 %315, label %137, label %135

316:                                              ; preds = %138
  %317 = add nsw i32 %147, %139
  %318 = add nsw i32 %144, %141
  %319 = sub nsw i32 %141, %144
  %320 = sub nsw i32 %139, %147
  %321 = add nsw i32 %318, %317
  %322 = sub nsw i32 %317, %318
  %323 = add nsw i32 %319, %320
  %324 = sub nsw i32 %320, %319
  %325 = getelementptr inbounds i8, ptr %3, i64 28
  %326 = add nsw i32 %159, %150
  %327 = getelementptr inbounds i8, ptr %3, i64 20
  %328 = getelementptr inbounds i8, ptr %3, i64 24
  %329 = add nsw i32 %156, %153
  %330 = sub nsw i32 %153, %156
  %331 = sub nsw i32 %150, %159
  %332 = add nsw i32 %329, %326
  %333 = sub nsw i32 %326, %329
  %334 = add nsw i32 %330, %331
  %335 = sub nsw i32 %331, %330
  %336 = getelementptr inbounds i8, ptr %3, i64 44
  %337 = add nsw i32 %171, %162
  %338 = getelementptr inbounds i8, ptr %3, i64 36
  %339 = getelementptr inbounds i8, ptr %3, i64 40
  %340 = add nsw i32 %168, %165
  %341 = sub nsw i32 %165, %168
  %342 = sub nsw i32 %162, %171
  %343 = add nsw i32 %340, %337
  %344 = sub nsw i32 %337, %340
  %345 = add nsw i32 %341, %342
  %346 = sub nsw i32 %342, %341
  %347 = getelementptr inbounds i8, ptr %3, i64 60
  %348 = add nsw i32 %183, %174
  %349 = getelementptr inbounds i8, ptr %3, i64 52
  %350 = getelementptr inbounds i8, ptr %3, i64 56
  %351 = add nsw i32 %180, %177
  %352 = sub nsw i32 %177, %180
  %353 = sub nsw i32 %174, %183
  %354 = add nsw i32 %351, %348
  %355 = sub nsw i32 %348, %351
  %356 = add nsw i32 %352, %353
  %357 = sub nsw i32 %353, %352
  %358 = add nsw i32 %354, %321
  %359 = add nsw i32 %343, %332
  %360 = sub nsw i32 %332, %343
  %361 = sub nsw i32 %321, %354
  %362 = add nsw i32 %359, %358
  %363 = ashr i32 %362, 1
  store i32 %363, ptr %3, align 4, !tbaa !24
  %364 = sub nsw i32 %358, %359
  %365 = ashr i32 %364, 1
  store i32 %365, ptr %163, align 4, !tbaa !24
  %366 = add nsw i32 %360, %361
  %367 = ashr i32 %366, 1
  store i32 %367, ptr %151, align 4, !tbaa !24
  %368 = sub nsw i32 %361, %360
  %369 = ashr i32 %368, 1
  store i32 %369, ptr %175, align 4, !tbaa !24
  %370 = add nsw i32 %356, %323
  %371 = add nsw i32 %345, %334
  %372 = sub nsw i32 %334, %345
  %373 = sub nsw i32 %323, %356
  %374 = add nsw i32 %371, %370
  %375 = ashr i32 %374, 1
  store i32 %375, ptr %142, align 4, !tbaa !24
  %376 = sub nsw i32 %370, %371
  %377 = ashr i32 %376, 1
  store i32 %377, ptr %338, align 4, !tbaa !24
  %378 = add nsw i32 %372, %373
  %379 = ashr i32 %378, 1
  store i32 %379, ptr %327, align 4, !tbaa !24
  %380 = sub nsw i32 %373, %372
  %381 = ashr i32 %380, 1
  store i32 %381, ptr %349, align 4, !tbaa !24
  %382 = add nsw i32 %355, %322
  %383 = add nsw i32 %344, %333
  %384 = sub nsw i32 %333, %344
  %385 = sub nsw i32 %322, %355
  %386 = add nsw i32 %383, %382
  %387 = ashr i32 %386, 1
  store i32 %387, ptr %145, align 4, !tbaa !24
  %388 = sub nsw i32 %382, %383
  %389 = ashr i32 %388, 1
  store i32 %389, ptr %339, align 4, !tbaa !24
  %390 = add nsw i32 %384, %385
  %391 = ashr i32 %390, 1
  store i32 %391, ptr %328, align 4, !tbaa !24
  %392 = sub nsw i32 %385, %384
  %393 = ashr i32 %392, 1
  store i32 %393, ptr %350, align 4, !tbaa !24
  %394 = add nsw i32 %357, %324
  %395 = add nsw i32 %346, %335
  %396 = sub nsw i32 %335, %346
  %397 = sub nsw i32 %324, %357
  %398 = add nsw i32 %395, %394
  %399 = ashr i32 %398, 1
  store i32 %399, ptr %148, align 4, !tbaa !24
  %400 = sub nsw i32 %394, %395
  %401 = ashr i32 %400, 1
  store i32 %401, ptr %336, align 4, !tbaa !24
  %402 = add nsw i32 %396, %397
  %403 = ashr i32 %402, 1
  store i32 %403, ptr %325, align 4, !tbaa !24
  %404 = sub nsw i32 %397, %396
  %405 = ashr i32 %404, 1
  store i32 %405, ptr %347, align 4, !tbaa !24
  br label %406

406:                                              ; preds = %316, %138
  %407 = add nsw i32 %48, 16
  br label %408

408:                                              ; preds = %459, %406
  %409 = phi i64 [ 0, %406 ], [ %460, %459 ]
  %410 = phi i32 [ -1, %406 ], [ %455, %459 ]
  %411 = phi i32 [ 0, %406 ], [ %454, %459 ]
  %412 = getelementptr inbounds [2 x i8], ptr %25, i64 %409
  %413 = load i8, ptr %412, align 1, !tbaa !43
  %414 = getelementptr inbounds i8, ptr %412, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !43
  %416 = add nsw i32 %410, 1
  %417 = zext i8 %415 to i64
  %418 = zext i8 %413 to i64
  %419 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %417, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !24
  %421 = tail call i32 @llvm.abs.i32(i32 %420, i1 true)
  br i1 %43, label %431, label %422

422:                                              ; preds = %408
  %423 = load ptr, ptr %57, align 8, !tbaa !6
  %424 = load i32, ptr %423, align 4, !tbaa !24
  %425 = mul nsw i32 %424, %421
  %426 = load ptr, ptr %63, align 8, !tbaa !6
  %427 = load i32, ptr %426, align 4, !tbaa !24
  %428 = shl i32 %427, 1
  %429 = add nsw i32 %428, %425
  %430 = ashr i32 %429, %407
  br label %431

431:                                              ; preds = %408, %422
  %432 = phi i32 [ %430, %422 ], [ %421, %408 ]
  %433 = load ptr, ptr @input, align 8, !tbaa !6
  %434 = getelementptr inbounds i8, ptr %433, i64 2984
  %435 = load i32, ptr %434, align 8, !tbaa !44
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %431
  %438 = load ptr, ptr @img, align 8, !tbaa !6
  %439 = getelementptr inbounds i8, ptr %438, i64 40
  %440 = load i32, ptr %439, align 8, !tbaa !45
  %441 = icmp slt i32 %440, 10
  %442 = tail call i32 @llvm.smin.i32(i32 %432, i32 2063)
  %443 = select i1 %441, i32 %442, i32 %432
  br label %444

444:                                              ; preds = %437, %431
  %445 = phi i32 [ %432, %431 ], [ %443, %437 ]
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %444
  %448 = tail call signext i32 @sign(i32 noundef signext %445, i32 noundef signext %420) #7
  %449 = sext i32 %411 to i64
  %450 = getelementptr inbounds i32, ptr %29, i64 %449
  store i32 %448, ptr %450, align 4, !tbaa !24
  %451 = getelementptr inbounds i32, ptr %31, i64 %449
  store i32 %416, ptr %451, align 4, !tbaa !24
  %452 = add nsw i32 %411, 1
  br label %453

453:                                              ; preds = %447, %444
  %454 = phi i32 [ %452, %447 ], [ %411, %444 ]
  %455 = phi i32 [ -1, %447 ], [ %416, %444 ]
  br i1 %43, label %456, label %461

456:                                              ; preds = %453
  %457 = add nuw nsw i64 %409, 1
  %458 = icmp eq i64 %457, 16
  br i1 %458, label %469, label %459

459:                                              ; preds = %456, %461
  %460 = phi i64 [ %457, %456 ], [ %467, %461 ]
  br label %408

461:                                              ; preds = %453
  %462 = zext i8 %415 to i64
  %463 = zext i8 %413 to i64
  %464 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %462, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !24
  %466 = tail call signext i32 @sign(i32 noundef signext %445, i32 noundef signext %465) #7
  store i32 %466, ptr %464, align 4, !tbaa !24
  %467 = add nuw nsw i64 %409, 1
  %468 = icmp eq i64 %467, 16
  br i1 %468, label %472, label %459

469:                                              ; preds = %456
  %470 = sext i32 %454 to i64
  %471 = getelementptr inbounds i32, ptr %29, i64 %470
  store i32 0, ptr %471, align 4, !tbaa !24
  br label %555

472:                                              ; preds = %461
  %473 = sext i32 %454 to i64
  %474 = getelementptr inbounds i32, ptr %29, i64 %473
  store i32 0, ptr %474, align 4, !tbaa !24
  %475 = load i32, ptr %3, align 4, !tbaa !24
  %476 = getelementptr inbounds i8, ptr %3, i64 8
  %477 = load i32, ptr %476, align 4, !tbaa !24
  %478 = add nsw i32 %477, %475
  %479 = sub nsw i32 %475, %477
  %480 = getelementptr inbounds i8, ptr %3, i64 4
  %481 = load i32, ptr %480, align 4, !tbaa !24
  %482 = getelementptr inbounds i8, ptr %3, i64 12
  %483 = load i32, ptr %482, align 4, !tbaa !24
  %484 = sub nsw i32 %481, %483
  %485 = add nsw i32 %483, %481
  %486 = add nsw i32 %485, %478
  store i32 %486, ptr %3, align 4, !tbaa !24
  %487 = add nsw i32 %484, %479
  store i32 %487, ptr %480, align 4, !tbaa !24
  %488 = sub nsw i32 %479, %484
  store i32 %488, ptr %476, align 4, !tbaa !24
  %489 = sub nsw i32 %478, %485
  store i32 %489, ptr %482, align 4, !tbaa !24
  %490 = getelementptr inbounds i8, ptr %3, i64 16
  %491 = load i32, ptr %490, align 4, !tbaa !24
  %492 = getelementptr inbounds i8, ptr %3, i64 24
  %493 = load i32, ptr %492, align 4, !tbaa !24
  %494 = add nsw i32 %493, %491
  %495 = sub nsw i32 %491, %493
  %496 = getelementptr inbounds i8, ptr %3, i64 20
  %497 = load i32, ptr %496, align 4, !tbaa !24
  %498 = getelementptr inbounds i8, ptr %3, i64 28
  %499 = load i32, ptr %498, align 4, !tbaa !24
  %500 = sub nsw i32 %497, %499
  %501 = add nsw i32 %499, %497
  %502 = add nsw i32 %501, %494
  store i32 %502, ptr %490, align 4, !tbaa !24
  %503 = add nsw i32 %500, %495
  store i32 %503, ptr %496, align 4, !tbaa !24
  %504 = sub nsw i32 %495, %500
  store i32 %504, ptr %492, align 4, !tbaa !24
  %505 = sub nsw i32 %494, %501
  store i32 %505, ptr %498, align 4, !tbaa !24
  %506 = getelementptr inbounds i8, ptr %3, i64 32
  %507 = load i32, ptr %506, align 4, !tbaa !24
  %508 = getelementptr inbounds i8, ptr %3, i64 40
  %509 = load i32, ptr %508, align 4, !tbaa !24
  %510 = add nsw i32 %509, %507
  %511 = sub nsw i32 %507, %509
  %512 = getelementptr inbounds i8, ptr %3, i64 36
  %513 = load i32, ptr %512, align 4, !tbaa !24
  %514 = getelementptr inbounds i8, ptr %3, i64 44
  %515 = load i32, ptr %514, align 4, !tbaa !24
  %516 = sub nsw i32 %513, %515
  %517 = add nsw i32 %515, %513
  %518 = add nsw i32 %517, %510
  store i32 %518, ptr %506, align 4, !tbaa !24
  %519 = add nsw i32 %516, %511
  store i32 %519, ptr %512, align 4, !tbaa !24
  %520 = sub nsw i32 %511, %516
  store i32 %520, ptr %508, align 4, !tbaa !24
  %521 = sub nsw i32 %510, %517
  store i32 %521, ptr %514, align 4, !tbaa !24
  %522 = getelementptr inbounds i8, ptr %3, i64 48
  %523 = load i32, ptr %522, align 4, !tbaa !24
  %524 = getelementptr inbounds i8, ptr %3, i64 56
  %525 = load i32, ptr %524, align 4, !tbaa !24
  %526 = add nsw i32 %525, %523
  %527 = sub nsw i32 %523, %525
  %528 = getelementptr inbounds i8, ptr %3, i64 52
  %529 = load i32, ptr %528, align 4, !tbaa !24
  %530 = getelementptr inbounds i8, ptr %3, i64 60
  %531 = load i32, ptr %530, align 4, !tbaa !24
  %532 = sub nsw i32 %529, %531
  %533 = add nsw i32 %531, %529
  %534 = add nsw i32 %533, %526
  store i32 %534, ptr %522, align 4, !tbaa !24
  %535 = add nsw i32 %532, %527
  store i32 %535, ptr %528, align 4, !tbaa !24
  %536 = sub nsw i32 %527, %532
  store i32 %536, ptr %524, align 4, !tbaa !24
  %537 = sub nsw i32 %526, %533
  store i32 %537, ptr %530, align 4, !tbaa !24
  %538 = icmp slt i32 %48, 6
  %539 = add nsw i32 %48, -6
  %540 = sub nsw i32 5, %48
  %541 = shl nuw i32 1, %540
  %542 = sub nsw i32 6, %48
  %543 = load i32, ptr %3, align 4, !tbaa !24
  %544 = load i32, ptr %163, align 4, !tbaa !24
  %545 = add nsw i32 %544, %543
  %546 = sub nsw i32 %543, %544
  %547 = load i32, ptr %151, align 4, !tbaa !24
  %548 = load i32, ptr %175, align 4, !tbaa !24
  %549 = sub nsw i32 %547, %548
  %550 = add nsw i32 %548, %547
  %551 = add nsw i32 %550, %545
  %552 = load ptr, ptr %68, align 8, !tbaa !6
  %553 = load i32, ptr %552, align 4, !tbaa !24
  %554 = mul nsw i32 %553, %551
  br i1 %538, label %589, label %604

555:                                              ; preds = %767, %469
  %556 = shl nuw i32 1, %82
  %557 = icmp slt i32 %48, 4
  %558 = add nsw i32 %48, -4
  %559 = sub nsw i32 3, %48
  %560 = shl nuw i32 1, %559
  %561 = sub nsw i32 4, %48
  %562 = getelementptr inbounds i8, ptr %3, i64 8
  %563 = getelementptr inbounds i8, ptr %3, i64 4
  %564 = getelementptr inbounds i8, ptr %3, i64 12
  %565 = getelementptr inbounds i8, ptr %3, i64 16
  %566 = getelementptr inbounds i8, ptr %3, i64 24
  %567 = getelementptr inbounds i8, ptr %3, i64 20
  %568 = getelementptr inbounds i8, ptr %3, i64 28
  %569 = getelementptr inbounds i8, ptr %3, i64 32
  %570 = getelementptr inbounds i8, ptr %3, i64 40
  %571 = getelementptr inbounds i8, ptr %3, i64 36
  %572 = getelementptr inbounds i8, ptr %3, i64 44
  %573 = getelementptr inbounds i8, ptr %3, i64 48
  %574 = getelementptr inbounds i8, ptr %3, i64 56
  %575 = getelementptr inbounds i8, ptr %3, i64 52
  %576 = getelementptr inbounds i8, ptr %3, i64 60
  %577 = getelementptr inbounds i8, ptr %3, i64 4
  %578 = getelementptr inbounds i8, ptr %3, i64 36
  %579 = getelementptr inbounds i8, ptr %3, i64 20
  %580 = getelementptr inbounds i8, ptr %3, i64 52
  %581 = getelementptr inbounds i8, ptr %3, i64 8
  %582 = getelementptr inbounds i8, ptr %3, i64 40
  %583 = getelementptr inbounds i8, ptr %3, i64 24
  %584 = getelementptr inbounds i8, ptr %3, i64 56
  %585 = getelementptr inbounds i8, ptr %3, i64 12
  %586 = getelementptr inbounds i8, ptr %3, i64 44
  %587 = getelementptr inbounds i8, ptr %3, i64 28
  %588 = getelementptr inbounds i8, ptr %3, i64 60
  br label %770

589:                                              ; preds = %472
  %590 = add nsw i32 %554, %541
  %591 = ashr i32 %590, %542
  store i32 %591, ptr %4, align 4, !tbaa !24
  %592 = add nsw i32 %549, %546
  %593 = mul nsw i32 %553, %592
  %594 = add nsw i32 %593, %541
  %595 = ashr i32 %594, %542
  store i32 %595, ptr %149, align 4, !tbaa !24
  %596 = sub nsw i32 %546, %549
  %597 = mul nsw i32 %553, %596
  %598 = add nsw i32 %597, %541
  %599 = ashr i32 %598, %542
  store i32 %599, ptr %161, align 4, !tbaa !24
  %600 = sub nsw i32 %545, %550
  %601 = mul nsw i32 %553, %600
  %602 = add nsw i32 %601, %541
  %603 = ashr i32 %602, %542
  br label %615

604:                                              ; preds = %472
  %605 = shl i32 %554, %539
  store i32 %605, ptr %4, align 4, !tbaa !24
  %606 = add nsw i32 %549, %546
  %607 = mul nsw i32 %553, %606
  %608 = shl i32 %607, %539
  store i32 %608, ptr %149, align 4, !tbaa !24
  %609 = sub nsw i32 %546, %549
  %610 = mul nsw i32 %553, %609
  %611 = shl i32 %610, %539
  store i32 %611, ptr %161, align 4, !tbaa !24
  %612 = sub nsw i32 %545, %550
  %613 = mul nsw i32 %553, %612
  %614 = shl i32 %613, %539
  br label %615

615:                                              ; preds = %589, %604
  %616 = phi i32 [ %603, %589 ], [ %614, %604 ]
  store i32 %616, ptr %173, align 4, !tbaa !24
  %617 = getelementptr inbounds i8, ptr %3, i64 4
  %618 = load i32, ptr %617, align 4, !tbaa !24
  %619 = getelementptr inbounds i8, ptr %3, i64 36
  %620 = load i32, ptr %619, align 4, !tbaa !24
  %621 = add nsw i32 %620, %618
  %622 = sub nsw i32 %618, %620
  %623 = getelementptr inbounds i8, ptr %3, i64 20
  %624 = load i32, ptr %623, align 4, !tbaa !24
  %625 = getelementptr inbounds i8, ptr %3, i64 52
  %626 = load i32, ptr %625, align 4, !tbaa !24
  %627 = sub nsw i32 %624, %626
  %628 = add nsw i32 %626, %624
  %629 = add nsw i32 %628, %621
  %630 = load ptr, ptr %68, align 8, !tbaa !6
  %631 = load i32, ptr %630, align 4, !tbaa !24
  %632 = mul nsw i32 %631, %629
  br i1 %538, label %647, label %633

633:                                              ; preds = %615
  %634 = shl i32 %632, %539
  %635 = getelementptr inbounds i8, ptr %4, i64 64
  store i32 %634, ptr %635, align 4, !tbaa !24
  %636 = add nsw i32 %627, %622
  %637 = mul nsw i32 %631, %636
  %638 = shl i32 %637, %539
  %639 = getelementptr inbounds i8, ptr %4, i64 320
  store i32 %638, ptr %639, align 4, !tbaa !24
  %640 = sub nsw i32 %622, %627
  %641 = mul nsw i32 %631, %640
  %642 = shl i32 %641, %539
  %643 = getelementptr inbounds i8, ptr %4, i64 576
  store i32 %642, ptr %643, align 4, !tbaa !24
  %644 = sub nsw i32 %621, %628
  %645 = mul nsw i32 %631, %644
  %646 = shl i32 %645, %539
  br label %665

647:                                              ; preds = %615
  %648 = add nsw i32 %632, %541
  %649 = ashr i32 %648, %542
  %650 = getelementptr inbounds i8, ptr %4, i64 64
  store i32 %649, ptr %650, align 4, !tbaa !24
  %651 = add nsw i32 %627, %622
  %652 = mul nsw i32 %631, %651
  %653 = add nsw i32 %652, %541
  %654 = ashr i32 %653, %542
  %655 = getelementptr inbounds i8, ptr %4, i64 320
  store i32 %654, ptr %655, align 4, !tbaa !24
  %656 = sub nsw i32 %622, %627
  %657 = mul nsw i32 %631, %656
  %658 = add nsw i32 %657, %541
  %659 = ashr i32 %658, %542
  %660 = getelementptr inbounds i8, ptr %4, i64 576
  store i32 %659, ptr %660, align 4, !tbaa !24
  %661 = sub nsw i32 %621, %628
  %662 = mul nsw i32 %631, %661
  %663 = add nsw i32 %662, %541
  %664 = ashr i32 %663, %542
  br label %665

665:                                              ; preds = %647, %633
  %666 = phi i32 [ %664, %647 ], [ %646, %633 ]
  %667 = getelementptr inbounds i8, ptr %4, i64 832
  store i32 %666, ptr %667, align 4, !tbaa !24
  %668 = getelementptr inbounds i8, ptr %3, i64 8
  %669 = load i32, ptr %668, align 4, !tbaa !24
  %670 = getelementptr inbounds i8, ptr %3, i64 40
  %671 = load i32, ptr %670, align 4, !tbaa !24
  %672 = add nsw i32 %671, %669
  %673 = sub nsw i32 %669, %671
  %674 = getelementptr inbounds i8, ptr %3, i64 24
  %675 = load i32, ptr %674, align 4, !tbaa !24
  %676 = getelementptr inbounds i8, ptr %3, i64 56
  %677 = load i32, ptr %676, align 4, !tbaa !24
  %678 = sub nsw i32 %675, %677
  %679 = add nsw i32 %677, %675
  %680 = add nsw i32 %679, %672
  %681 = load ptr, ptr %68, align 8, !tbaa !6
  %682 = load i32, ptr %681, align 4, !tbaa !24
  %683 = mul nsw i32 %682, %680
  br i1 %538, label %698, label %684

684:                                              ; preds = %665
  %685 = shl i32 %683, %539
  %686 = getelementptr inbounds i8, ptr %4, i64 128
  store i32 %685, ptr %686, align 4, !tbaa !24
  %687 = add nsw i32 %678, %673
  %688 = mul nsw i32 %682, %687
  %689 = shl i32 %688, %539
  %690 = getelementptr inbounds i8, ptr %4, i64 384
  store i32 %689, ptr %690, align 4, !tbaa !24
  %691 = sub nsw i32 %673, %678
  %692 = mul nsw i32 %682, %691
  %693 = shl i32 %692, %539
  %694 = getelementptr inbounds i8, ptr %4, i64 640
  store i32 %693, ptr %694, align 4, !tbaa !24
  %695 = sub nsw i32 %672, %679
  %696 = mul nsw i32 %682, %695
  %697 = shl i32 %696, %539
  br label %716

698:                                              ; preds = %665
  %699 = add nsw i32 %683, %541
  %700 = ashr i32 %699, %542
  %701 = getelementptr inbounds i8, ptr %4, i64 128
  store i32 %700, ptr %701, align 4, !tbaa !24
  %702 = add nsw i32 %678, %673
  %703 = mul nsw i32 %682, %702
  %704 = add nsw i32 %703, %541
  %705 = ashr i32 %704, %542
  %706 = getelementptr inbounds i8, ptr %4, i64 384
  store i32 %705, ptr %706, align 4, !tbaa !24
  %707 = sub nsw i32 %673, %678
  %708 = mul nsw i32 %682, %707
  %709 = add nsw i32 %708, %541
  %710 = ashr i32 %709, %542
  %711 = getelementptr inbounds i8, ptr %4, i64 640
  store i32 %710, ptr %711, align 4, !tbaa !24
  %712 = sub nsw i32 %672, %679
  %713 = mul nsw i32 %682, %712
  %714 = add nsw i32 %713, %541
  %715 = ashr i32 %714, %542
  br label %716

716:                                              ; preds = %698, %684
  %717 = phi i32 [ %715, %698 ], [ %697, %684 ]
  %718 = getelementptr inbounds i8, ptr %4, i64 896
  store i32 %717, ptr %718, align 4, !tbaa !24
  %719 = getelementptr inbounds i8, ptr %3, i64 12
  %720 = load i32, ptr %719, align 4, !tbaa !24
  %721 = getelementptr inbounds i8, ptr %3, i64 44
  %722 = load i32, ptr %721, align 4, !tbaa !24
  %723 = add nsw i32 %722, %720
  %724 = sub nsw i32 %720, %722
  %725 = getelementptr inbounds i8, ptr %3, i64 28
  %726 = load i32, ptr %725, align 4, !tbaa !24
  %727 = getelementptr inbounds i8, ptr %3, i64 60
  %728 = load i32, ptr %727, align 4, !tbaa !24
  %729 = sub nsw i32 %726, %728
  %730 = add nsw i32 %728, %726
  %731 = add nsw i32 %730, %723
  %732 = load ptr, ptr %68, align 8, !tbaa !6
  %733 = load i32, ptr %732, align 4, !tbaa !24
  %734 = mul nsw i32 %733, %731
  br i1 %538, label %749, label %735

735:                                              ; preds = %716
  %736 = shl i32 %734, %539
  %737 = getelementptr inbounds i8, ptr %4, i64 192
  store i32 %736, ptr %737, align 4, !tbaa !24
  %738 = add nsw i32 %729, %724
  %739 = mul nsw i32 %733, %738
  %740 = shl i32 %739, %539
  %741 = getelementptr inbounds i8, ptr %4, i64 448
  store i32 %740, ptr %741, align 4, !tbaa !24
  %742 = sub nsw i32 %724, %729
  %743 = mul nsw i32 %733, %742
  %744 = shl i32 %743, %539
  %745 = getelementptr inbounds i8, ptr %4, i64 704
  store i32 %744, ptr %745, align 4, !tbaa !24
  %746 = sub nsw i32 %723, %730
  %747 = mul nsw i32 %733, %746
  %748 = shl i32 %747, %539
  br label %767

749:                                              ; preds = %716
  %750 = add nsw i32 %734, %541
  %751 = ashr i32 %750, %542
  %752 = getelementptr inbounds i8, ptr %4, i64 192
  store i32 %751, ptr %752, align 4, !tbaa !24
  %753 = add nsw i32 %729, %724
  %754 = mul nsw i32 %733, %753
  %755 = add nsw i32 %754, %541
  %756 = ashr i32 %755, %542
  %757 = getelementptr inbounds i8, ptr %4, i64 448
  store i32 %756, ptr %757, align 4, !tbaa !24
  %758 = sub nsw i32 %724, %729
  %759 = mul nsw i32 %733, %758
  %760 = add nsw i32 %759, %541
  %761 = ashr i32 %760, %542
  %762 = getelementptr inbounds i8, ptr %4, i64 704
  store i32 %761, ptr %762, align 4, !tbaa !24
  %763 = sub nsw i32 %723, %730
  %764 = mul nsw i32 %733, %763
  %765 = add nsw i32 %764, %541
  %766 = ashr i32 %765, %542
  br label %767

767:                                              ; preds = %749, %735
  %768 = phi i32 [ %766, %749 ], [ %748, %735 ]
  %769 = getelementptr inbounds i8, ptr %4, i64 960
  store i32 %768, ptr %769, align 4, !tbaa !24
  br label %555

770:                                              ; preds = %555, %1042
  %771 = phi i64 [ 0, %555 ], [ %1043, %1042 ]
  %772 = phi i32 [ 0, %555 ], [ %881, %1042 ]
  %773 = shl nuw nsw i64 %771, 8
  %774 = and i64 %771, 2
  %775 = shl nuw i64 %771, 1
  %776 = and i64 %775, 2
  %777 = shl nuw nsw i64 %771, 2
  %778 = getelementptr i8, ptr %4, i64 %773
  br label %779

779:                                              ; preds = %770, %1039
  %780 = phi i64 [ 0, %770 ], [ %1040, %1039 ]
  %781 = phi i32 [ %772, %770 ], [ %881, %1039 ]
  %782 = shl nuw nsw i64 %780, 6
  %783 = getelementptr i8, ptr %778, i64 %782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %783, i64 64, i1 false)
  %784 = lshr i64 %780, 1
  %785 = and i64 %780, 1
  %786 = or disjoint i64 %785, %776
  %787 = load ptr, ptr @img, align 8, !tbaa !6
  %788 = getelementptr inbounds i8, ptr %787, i64 14136
  %789 = load ptr, ptr %788, align 8, !tbaa !46
  %790 = and i64 %784, 2147483647
  %791 = or i64 %790, %774
  %792 = getelementptr inbounds ptr, ptr %789, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !6
  %794 = getelementptr inbounds ptr, ptr %793, i64 %786
  %795 = load ptr, ptr %794, align 8, !tbaa !6
  %796 = load ptr, ptr %795, align 8, !tbaa !6
  %797 = getelementptr inbounds i8, ptr %795, i64 8
  %798 = load ptr, ptr %797, align 8, !tbaa !6
  %799 = shl nuw nsw i64 %780, 2
  br label %800

800:                                              ; preds = %899, %779
  %801 = phi i64 [ 1, %779 ], [ %900, %899 ]
  %802 = phi i32 [ %781, %779 ], [ %881, %899 ]
  %803 = phi i32 [ -1, %779 ], [ %880, %899 ]
  %804 = phi i32 [ 0, %779 ], [ %879, %899 ]
  %805 = getelementptr inbounds [2 x i8], ptr %25, i64 %801
  %806 = load i8, ptr %805, align 1, !tbaa !43
  %807 = getelementptr inbounds i8, ptr %805, i64 1
  %808 = load i8, ptr %807, align 1, !tbaa !43
  %809 = add nsw i32 %803, 1
  %810 = zext i8 %808 to i64
  %811 = zext i8 %806 to i64
  %812 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %810, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !24
  %814 = tail call i32 @llvm.abs.i32(i32 %813, i1 true)
  br i1 %43, label %827, label %815

815:                                              ; preds = %800
  %816 = getelementptr inbounds ptr, ptr %57, i64 %811
  %817 = load ptr, ptr %816, align 8, !tbaa !6
  %818 = getelementptr inbounds i32, ptr %817, i64 %810
  %819 = load i32, ptr %818, align 4, !tbaa !24
  %820 = mul nsw i32 %819, %814
  %821 = getelementptr inbounds ptr, ptr %63, i64 %811
  %822 = load ptr, ptr %821, align 8, !tbaa !6
  %823 = getelementptr inbounds i32, ptr %822, i64 %810
  %824 = load i32, ptr %823, align 4, !tbaa !24
  %825 = add nsw i32 %824, %820
  %826 = ashr i32 %825, %82
  br label %827

827:                                              ; preds = %800, %815
  %828 = phi i32 [ %826, %815 ], [ %814, %800 ]
  %829 = load ptr, ptr @img, align 8, !tbaa !6
  %830 = getelementptr inbounds i8, ptr %829, i64 90212
  %831 = load i32, ptr %830, align 4, !tbaa !47
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %863, label %833

833:                                              ; preds = %827
  %834 = icmp eq i32 %828, 0
  %835 = select i1 %43, i1 true, i1 %834
  %836 = zext i8 %808 to i64
  br i1 %835, label %837, label %843

837:                                              ; preds = %833
  %838 = getelementptr inbounds i8, ptr %829, i64 16200
  %839 = add nuw nsw i64 %777, %836
  %840 = zext i8 %806 to i64
  %841 = add nuw nsw i64 %799, %840
  %842 = getelementptr inbounds [16 x [16 x i32]], ptr %838, i64 0, i64 %839, i64 %841
  store i32 0, ptr %842, align 4, !tbaa !24
  br label %863

843:                                              ; preds = %833
  %844 = load i32, ptr @AdaptRndWeight, align 4, !tbaa !24
  %845 = zext i8 %806 to i64
  %846 = tail call i32 @llvm.abs.i32(i32 %813, i1 true)
  %847 = getelementptr inbounds ptr, ptr %57, i64 %845
  %848 = load ptr, ptr %847, align 8, !tbaa !6
  %849 = getelementptr inbounds i32, ptr %848, i64 %836
  %850 = load i32, ptr %849, align 4, !tbaa !24
  %851 = mul nsw i32 %850, %846
  %852 = shl i32 %828, %82
  %853 = sub nsw i32 %851, %852
  %854 = mul nsw i32 %853, %844
  %855 = add nsw i32 %854, %556
  %856 = ashr i32 %855, %407
  %857 = getelementptr inbounds i8, ptr %829, i64 16200
  %858 = zext i8 %808 to i64
  %859 = add nuw nsw i64 %777, %858
  %860 = zext i8 %806 to i64
  %861 = add nuw nsw i64 %799, %860
  %862 = getelementptr inbounds [16 x [16 x i32]], ptr %857, i64 0, i64 %859, i64 %861
  store i32 %856, ptr %862, align 4, !tbaa !24
  br label %868

863:                                              ; preds = %837, %827
  %864 = icmp eq i32 %828, 0
  br i1 %864, label %878, label %865

865:                                              ; preds = %863
  %866 = zext i8 %808 to i64
  %867 = zext i8 %806 to i64
  br label %868

868:                                              ; preds = %865, %843
  %869 = phi i64 [ %867, %865 ], [ %845, %843 ]
  %870 = phi i64 [ %866, %865 ], [ %836, %843 ]
  %871 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %870, i64 %869
  %872 = load i32, ptr %871, align 4, !tbaa !24
  %873 = tail call signext i32 @sign(i32 noundef signext %828, i32 noundef signext %872) #7
  %874 = sext i32 %804 to i64
  %875 = getelementptr inbounds i32, ptr %796, i64 %874
  store i32 %873, ptr %875, align 4, !tbaa !24
  %876 = getelementptr inbounds i32, ptr %798, i64 %874
  store i32 %809, ptr %876, align 4, !tbaa !24
  %877 = add nsw i32 %804, 1
  br label %878

878:                                              ; preds = %868, %863
  %879 = phi i32 [ %877, %868 ], [ %804, %863 ]
  %880 = phi i32 [ -1, %868 ], [ %809, %863 ]
  %881 = phi i32 [ 15, %868 ], [ %802, %863 ]
  br i1 %43, label %901, label %882

882:                                              ; preds = %878
  %883 = zext i8 %808 to i64
  %884 = zext i8 %806 to i64
  %885 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %883, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !24
  %887 = tail call signext i32 @sign(i32 noundef signext %828, i32 noundef signext %886) #7
  %888 = getelementptr inbounds ptr, ptr %68, i64 %884
  %889 = load ptr, ptr %888, align 8, !tbaa !6
  %890 = getelementptr inbounds i32, ptr %889, i64 %883
  %891 = load i32, ptr %890, align 4, !tbaa !24
  %892 = mul nsw i32 %891, %887
  %893 = shl i32 %892, %558
  %894 = add nsw i32 %892, %560
  %895 = ashr i32 %894, %561
  %896 = select i1 %557, i32 %895, i32 %893
  store i32 %896, ptr %885, align 4, !tbaa !24
  %897 = add nuw nsw i64 %801, 1
  %898 = icmp eq i64 %897, 16
  br i1 %898, label %907, label %899

899:                                              ; preds = %882, %901
  %900 = phi i64 [ %897, %882 ], [ %902, %901 ]
  br label %800

901:                                              ; preds = %878
  %902 = add nuw nsw i64 %801, 1
  %903 = icmp eq i64 %902, 16
  br i1 %903, label %904, label %899

904:                                              ; preds = %901
  %905 = sext i32 %879 to i64
  %906 = getelementptr inbounds i32, ptr %796, i64 %905
  store i32 0, ptr %906, align 4, !tbaa !24
  br label %1039

907:                                              ; preds = %882
  %908 = sext i32 %879 to i64
  %909 = getelementptr inbounds i32, ptr %796, i64 %908
  store i32 0, ptr %909, align 4, !tbaa !24
  br i1 %43, label %1039, label %910

910:                                              ; preds = %907
  %911 = load i32, ptr %3, align 4, !tbaa !24
  %912 = load i32, ptr %562, align 4, !tbaa !24
  %913 = add nsw i32 %912, %911
  %914 = sub nsw i32 %911, %912
  %915 = load i32, ptr %563, align 4, !tbaa !24
  %916 = ashr i32 %915, 1
  %917 = load i32, ptr %564, align 4, !tbaa !24
  %918 = sub nsw i32 %916, %917
  %919 = ashr i32 %917, 1
  %920 = add nsw i32 %919, %915
  %921 = add nsw i32 %920, %913
  store i32 %921, ptr %3, align 4, !tbaa !24
  %922 = add nsw i32 %918, %914
  store i32 %922, ptr %563, align 4, !tbaa !24
  %923 = sub nsw i32 %914, %918
  store i32 %923, ptr %562, align 4, !tbaa !24
  %924 = sub nsw i32 %913, %920
  store i32 %924, ptr %564, align 4, !tbaa !24
  %925 = load i32, ptr %565, align 4, !tbaa !24
  %926 = load i32, ptr %566, align 4, !tbaa !24
  %927 = add nsw i32 %926, %925
  %928 = sub nsw i32 %925, %926
  %929 = load i32, ptr %567, align 4, !tbaa !24
  %930 = ashr i32 %929, 1
  %931 = load i32, ptr %568, align 4, !tbaa !24
  %932 = sub nsw i32 %930, %931
  %933 = ashr i32 %931, 1
  %934 = add nsw i32 %933, %929
  %935 = add nsw i32 %934, %927
  store i32 %935, ptr %565, align 4, !tbaa !24
  %936 = add nsw i32 %932, %928
  store i32 %936, ptr %567, align 4, !tbaa !24
  %937 = sub nsw i32 %928, %932
  store i32 %937, ptr %566, align 4, !tbaa !24
  %938 = sub nsw i32 %927, %934
  store i32 %938, ptr %568, align 4, !tbaa !24
  %939 = load i32, ptr %569, align 4, !tbaa !24
  %940 = load i32, ptr %570, align 4, !tbaa !24
  %941 = add nsw i32 %940, %939
  %942 = sub nsw i32 %939, %940
  %943 = load i32, ptr %571, align 4, !tbaa !24
  %944 = ashr i32 %943, 1
  %945 = load i32, ptr %572, align 4, !tbaa !24
  %946 = sub nsw i32 %944, %945
  %947 = ashr i32 %945, 1
  %948 = add nsw i32 %947, %943
  %949 = add nsw i32 %948, %941
  store i32 %949, ptr %569, align 4, !tbaa !24
  %950 = add nsw i32 %946, %942
  store i32 %950, ptr %571, align 4, !tbaa !24
  %951 = sub nsw i32 %942, %946
  store i32 %951, ptr %570, align 4, !tbaa !24
  %952 = sub nsw i32 %941, %948
  store i32 %952, ptr %572, align 4, !tbaa !24
  %953 = load i32, ptr %573, align 4, !tbaa !24
  %954 = load i32, ptr %574, align 4, !tbaa !24
  %955 = add nsw i32 %954, %953
  %956 = sub nsw i32 %953, %954
  %957 = load i32, ptr %575, align 4, !tbaa !24
  %958 = ashr i32 %957, 1
  %959 = load i32, ptr %576, align 4, !tbaa !24
  %960 = sub nsw i32 %958, %959
  %961 = ashr i32 %959, 1
  %962 = add nsw i32 %961, %957
  %963 = add nsw i32 %962, %955
  store i32 %963, ptr %573, align 4, !tbaa !24
  %964 = add nsw i32 %960, %956
  store i32 %964, ptr %575, align 4, !tbaa !24
  %965 = sub nsw i32 %956, %960
  store i32 %965, ptr %574, align 4, !tbaa !24
  %966 = sub nsw i32 %955, %962
  store i32 %966, ptr %576, align 4, !tbaa !24
  %967 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %771, i64 %780
  %968 = getelementptr inbounds i8, ptr %967, i64 48
  %969 = getelementptr inbounds i8, ptr %967, i64 32
  %970 = getelementptr inbounds i8, ptr %967, i64 16
  %971 = load i32, ptr %3, align 4, !tbaa !24
  %972 = load i32, ptr %163, align 4, !tbaa !24
  %973 = add nsw i32 %972, %971
  %974 = sub nsw i32 %971, %972
  %975 = load i32, ptr %151, align 4, !tbaa !24
  %976 = ashr i32 %975, 1
  %977 = load i32, ptr %175, align 4, !tbaa !24
  %978 = sub nsw i32 %976, %977
  %979 = ashr i32 %977, 1
  %980 = add nsw i32 %979, %975
  %981 = add nsw i32 %980, %973
  store i32 %981, ptr %967, align 4, !tbaa !24
  %982 = add nsw i32 %978, %974
  store i32 %982, ptr %970, align 4, !tbaa !24
  %983 = sub nsw i32 %974, %978
  store i32 %983, ptr %969, align 4, !tbaa !24
  %984 = sub nsw i32 %973, %980
  store i32 %984, ptr %968, align 4, !tbaa !24
  %985 = load i32, ptr %577, align 4, !tbaa !24
  %986 = load i32, ptr %578, align 4, !tbaa !24
  %987 = add nsw i32 %986, %985
  %988 = sub nsw i32 %985, %986
  %989 = load i32, ptr %579, align 4, !tbaa !24
  %990 = ashr i32 %989, 1
  %991 = load i32, ptr %580, align 4, !tbaa !24
  %992 = sub nsw i32 %990, %991
  %993 = ashr i32 %991, 1
  %994 = add nsw i32 %993, %989
  %995 = add nsw i32 %994, %987
  %996 = getelementptr inbounds i8, ptr %967, i64 4
  store i32 %995, ptr %996, align 4, !tbaa !24
  %997 = add nsw i32 %992, %988
  %998 = getelementptr inbounds i8, ptr %967, i64 20
  store i32 %997, ptr %998, align 4, !tbaa !24
  %999 = sub nsw i32 %988, %992
  %1000 = getelementptr inbounds i8, ptr %967, i64 36
  store i32 %999, ptr %1000, align 4, !tbaa !24
  %1001 = sub nsw i32 %987, %994
  %1002 = getelementptr inbounds i8, ptr %967, i64 52
  store i32 %1001, ptr %1002, align 4, !tbaa !24
  %1003 = load i32, ptr %581, align 4, !tbaa !24
  %1004 = load i32, ptr %582, align 4, !tbaa !24
  %1005 = add nsw i32 %1004, %1003
  %1006 = sub nsw i32 %1003, %1004
  %1007 = load i32, ptr %583, align 4, !tbaa !24
  %1008 = ashr i32 %1007, 1
  %1009 = load i32, ptr %584, align 4, !tbaa !24
  %1010 = sub nsw i32 %1008, %1009
  %1011 = ashr i32 %1009, 1
  %1012 = add nsw i32 %1011, %1007
  %1013 = add nsw i32 %1012, %1005
  %1014 = getelementptr inbounds i8, ptr %967, i64 8
  store i32 %1013, ptr %1014, align 4, !tbaa !24
  %1015 = add nsw i32 %1010, %1006
  %1016 = getelementptr inbounds i8, ptr %967, i64 24
  store i32 %1015, ptr %1016, align 4, !tbaa !24
  %1017 = sub nsw i32 %1006, %1010
  %1018 = getelementptr inbounds i8, ptr %967, i64 40
  store i32 %1017, ptr %1018, align 4, !tbaa !24
  %1019 = sub nsw i32 %1005, %1012
  %1020 = getelementptr inbounds i8, ptr %967, i64 56
  store i32 %1019, ptr %1020, align 4, !tbaa !24
  %1021 = load i32, ptr %585, align 4, !tbaa !24
  %1022 = load i32, ptr %586, align 4, !tbaa !24
  %1023 = add nsw i32 %1022, %1021
  %1024 = sub nsw i32 %1021, %1022
  %1025 = load i32, ptr %587, align 4, !tbaa !24
  %1026 = ashr i32 %1025, 1
  %1027 = load i32, ptr %588, align 4, !tbaa !24
  %1028 = sub nsw i32 %1026, %1027
  %1029 = ashr i32 %1027, 1
  %1030 = add nsw i32 %1029, %1025
  %1031 = add nsw i32 %1030, %1023
  %1032 = getelementptr inbounds i8, ptr %967, i64 12
  store i32 %1031, ptr %1032, align 4, !tbaa !24
  %1033 = add nsw i32 %1028, %1024
  %1034 = getelementptr inbounds i8, ptr %967, i64 28
  store i32 %1033, ptr %1034, align 4, !tbaa !24
  %1035 = sub nsw i32 %1024, %1028
  %1036 = getelementptr inbounds i8, ptr %967, i64 44
  store i32 %1035, ptr %1036, align 4, !tbaa !24
  %1037 = sub nsw i32 %1023, %1030
  %1038 = getelementptr inbounds i8, ptr %967, i64 60
  store i32 %1037, ptr %1038, align 4, !tbaa !24
  br label %1039

1039:                                             ; preds = %910, %904, %907
  %1040 = add nuw nsw i64 %780, 1
  %1041 = icmp eq i64 %1040, 4
  br i1 %1041, label %1042, label %779

1042:                                             ; preds = %1039
  %1043 = add nuw nsw i64 %771, 1
  %1044 = icmp eq i64 %1043, 4
  br i1 %1044, label %1045, label %770

1045:                                             ; preds = %1042
  %1046 = load ptr, ptr @img, align 8, !tbaa !6
  %1047 = getelementptr inbounds i8, ptr %1046, i64 90572
  %1048 = load i32, ptr %1047, align 4, !tbaa !41
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1090

1050:                                             ; preds = %1045, %1050
  %1051 = phi i64 [ %1088, %1050 ], [ 0, %1045 ]
  %1052 = shl nuw nsw i64 %1051, 2
  %1053 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1052, i64 0
  %1054 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1053, ptr noundef nonnull align 4 dereferenceable(16) %1054, i64 16, i1 false)
  %1055 = or disjoint i64 %1052, 1
  %1056 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1055, i64 0
  %1057 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1056, ptr noundef nonnull align 4 dereferenceable(16) %1057, i64 16, i1 false)
  %1058 = or disjoint i64 %1052, 2
  %1059 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1058, i64 0
  %1060 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1059, ptr noundef nonnull align 4 dereferenceable(16) %1060, i64 16, i1 false)
  %1061 = or disjoint i64 %1052, 3
  %1062 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1061, i64 0
  %1063 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1062, ptr noundef nonnull align 4 dereferenceable(16) %1063, i64 16, i1 false)
  %1064 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1052, i64 4
  %1065 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 1, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1064, ptr noundef nonnull align 4 dereferenceable(16) %1065, i64 16, i1 false)
  %1066 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1055, i64 4
  %1067 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1066, ptr noundef nonnull align 4 dereferenceable(16) %1067, i64 16, i1 false)
  %1068 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1058, i64 4
  %1069 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1068, ptr noundef nonnull align 4 dereferenceable(16) %1069, i64 16, i1 false)
  %1070 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1061, i64 4
  %1071 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 1, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1070, ptr noundef nonnull align 4 dereferenceable(16) %1071, i64 16, i1 false)
  %1072 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1052, i64 8
  %1073 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 2, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1072, ptr noundef nonnull align 4 dereferenceable(16) %1073, i64 16, i1 false)
  %1074 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1055, i64 8
  %1075 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1074, ptr noundef nonnull align 4 dereferenceable(16) %1075, i64 16, i1 false)
  %1076 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1058, i64 8
  %1077 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1076, ptr noundef nonnull align 4 dereferenceable(16) %1077, i64 16, i1 false)
  %1078 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1061, i64 8
  %1079 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 2, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1078, ptr noundef nonnull align 4 dereferenceable(16) %1079, i64 16, i1 false)
  %1080 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1052, i64 12
  %1081 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 3, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1080, ptr noundef nonnull align 4 dereferenceable(16) %1081, i64 16, i1 false)
  %1082 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1055, i64 12
  %1083 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1082, ptr noundef nonnull align 4 dereferenceable(16) %1083, i64 16, i1 false)
  %1084 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1058, i64 12
  %1085 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1084, ptr noundef nonnull align 4 dereferenceable(16) %1085, i64 16, i1 false)
  %1086 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1061, i64 12
  %1087 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1051, i64 3, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1086, ptr noundef nonnull align 4 dereferenceable(16) %1087, i64 16, i1 false)
  %1088 = add nuw nsw i64 %1051, 1
  %1089 = icmp eq i64 %1088, 4
  br i1 %1089, label %1167, label %1050

1090:                                             ; preds = %1045
  %1091 = getelementptr inbounds i8, ptr %1046, i64 13112
  br i1 %43, label %1092, label %1147

1092:                                             ; preds = %1090, %1092
  %1093 = phi i64 [ %1145, %1092 ], [ 0, %1090 ]
  %1094 = lshr i64 %1093, 2
  %1095 = and i64 %1093, 3
  %1096 = and i64 %1094, 1073741823
  %1097 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 0, i64 %1095, i64 0
  %1098 = load i32, ptr %1097, align 4, !tbaa !24
  %1099 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 0
  store i32 %1098, ptr %1099, align 4, !tbaa !24
  %1100 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 0, i64 %1095, i64 1
  %1101 = load i32, ptr %1100, align 4, !tbaa !24
  %1102 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 1
  store i32 %1101, ptr %1102, align 4, !tbaa !24
  %1103 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 0, i64 %1095, i64 2
  %1104 = load i32, ptr %1103, align 4, !tbaa !24
  %1105 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 2
  store i32 %1104, ptr %1105, align 4, !tbaa !24
  %1106 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 0, i64 %1095, i64 3
  %1107 = load i32, ptr %1106, align 4, !tbaa !24
  %1108 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 3
  store i32 %1107, ptr %1108, align 4, !tbaa !24
  %1109 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 1, i64 %1095, i64 0
  %1110 = load i32, ptr %1109, align 4, !tbaa !24
  %1111 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 4
  store i32 %1110, ptr %1111, align 4, !tbaa !24
  %1112 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 1, i64 %1095, i64 1
  %1113 = load i32, ptr %1112, align 4, !tbaa !24
  %1114 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 5
  store i32 %1113, ptr %1114, align 4, !tbaa !24
  %1115 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 1, i64 %1095, i64 2
  %1116 = load i32, ptr %1115, align 4, !tbaa !24
  %1117 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 6
  store i32 %1116, ptr %1117, align 4, !tbaa !24
  %1118 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 1, i64 %1095, i64 3
  %1119 = load i32, ptr %1118, align 4, !tbaa !24
  %1120 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 7
  store i32 %1119, ptr %1120, align 4, !tbaa !24
  %1121 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 2, i64 %1095, i64 0
  %1122 = load i32, ptr %1121, align 4, !tbaa !24
  %1123 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 8
  store i32 %1122, ptr %1123, align 4, !tbaa !24
  %1124 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 2, i64 %1095, i64 1
  %1125 = load i32, ptr %1124, align 4, !tbaa !24
  %1126 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 9
  store i32 %1125, ptr %1126, align 4, !tbaa !24
  %1127 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 2, i64 %1095, i64 2
  %1128 = load i32, ptr %1127, align 4, !tbaa !24
  %1129 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 10
  store i32 %1128, ptr %1129, align 4, !tbaa !24
  %1130 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 2, i64 %1095, i64 3
  %1131 = load i32, ptr %1130, align 4, !tbaa !24
  %1132 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 11
  store i32 %1131, ptr %1132, align 4, !tbaa !24
  %1133 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 3, i64 %1095, i64 0
  %1134 = load i32, ptr %1133, align 4, !tbaa !24
  %1135 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 12
  store i32 %1134, ptr %1135, align 4, !tbaa !24
  %1136 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 3, i64 %1095, i64 1
  %1137 = load i32, ptr %1136, align 4, !tbaa !24
  %1138 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 13
  store i32 %1137, ptr %1138, align 4, !tbaa !24
  %1139 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 3, i64 %1095, i64 2
  %1140 = load i32, ptr %1139, align 4, !tbaa !24
  %1141 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 14
  store i32 %1140, ptr %1141, align 4, !tbaa !24
  %1142 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1096, i64 3, i64 %1095, i64 3
  %1143 = load i32, ptr %1142, align 4, !tbaa !24
  %1144 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1093, i64 15
  store i32 %1143, ptr %1144, align 4, !tbaa !24
  %1145 = add nuw nsw i64 %1093, 1
  %1146 = icmp eq i64 %1145, 16
  br i1 %1146, label %1167, label %1092

1147:                                             ; preds = %1090, %1164
  %1148 = phi i64 [ %1165, %1164 ], [ 0, %1090 ]
  %1149 = lshr i64 %1148, 2
  %1150 = and i64 %1148, 3
  %1151 = and i64 %1149, 1073741823
  br label %1152

1152:                                             ; preds = %1147, %1152
  %1153 = phi i64 [ 0, %1147 ], [ %1162, %1152 ]
  %1154 = lshr i64 %1153, 2
  %1155 = and i64 %1154, 1073741823
  %1156 = and i64 %1153, 3
  %1157 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], ptr %4, i64 0, i64 %1151, i64 %1155, i64 %1150, i64 %1156
  %1158 = load i32, ptr %1157, align 4, !tbaa !24
  %1159 = add nsw i32 %1158, 32
  %1160 = ashr i32 %1159, 6
  %1161 = getelementptr inbounds [16 x [16 x i32]], ptr %1091, i64 0, i64 %1148, i64 %1153
  store i32 %1160, ptr %1161, align 4, !tbaa !24
  %1162 = add nuw nsw i64 %1153, 1
  %1163 = icmp eq i64 %1162, 16
  br i1 %1163, label %1164, label %1152

1164:                                             ; preds = %1152
  %1165 = add nuw nsw i64 %1148, 1
  %1166 = icmp eq i64 %1165, 16
  br i1 %1166, label %1167, label %1147

1167:                                             ; preds = %1164, %1092, %1050
  %1168 = load i32, ptr %1047, align 4, !tbaa !41
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1264

1170:                                             ; preds = %1167
  br i1 %43, label %1171, label %1213

1171:                                             ; preds = %1170
  %1172 = getelementptr inbounds i8, ptr %1046, i64 156
  %1173 = getelementptr inbounds i8, ptr %1046, i64 4792
  %1174 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1175 = getelementptr inbounds i8, ptr %1174, i64 6424
  %1176 = load ptr, ptr %1175, align 8, !tbaa !10
  %1177 = getelementptr inbounds i8, ptr %1046, i64 152
  %1178 = getelementptr inbounds i8, ptr %1046, i64 24
  br label %1179

1179:                                             ; preds = %1171, %1210
  %1180 = phi i64 [ 0, %1171 ], [ %1211, %1210 ]
  %1181 = load i32, ptr %1172, align 4, !tbaa !48
  %1182 = trunc nuw nsw i64 %1180 to i32
  %1183 = add nsw i32 %1181, %1182
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds ptr, ptr %1176, i64 %1184
  %1186 = load ptr, ptr %1185, align 8, !tbaa !6
  %1187 = load ptr, ptr @lrec, align 8
  %1188 = getelementptr inbounds ptr, ptr %1187, i64 %1184
  br label %1189

1189:                                             ; preds = %1179, %1207
  %1190 = phi i64 [ 0, %1179 ], [ %1208, %1207 ]
  %1191 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1180, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !24
  %1193 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %1173, i64 0, i64 %78, i64 %1180, i64 %1190
  %1194 = load i16, ptr %1193, align 2, !tbaa !27
  %1195 = trunc i32 %1192 to i16
  %1196 = add i16 %1194, %1195
  %1197 = load i32, ptr %1177, align 8, !tbaa !49
  %1198 = trunc nuw nsw i64 %1190 to i32
  %1199 = add nsw i32 %1197, %1198
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i16, ptr %1186, i64 %1200
  store i16 %1196, ptr %1201, align 2, !tbaa !27
  %1202 = load i32, ptr %1178, align 8, !tbaa !50
  %1203 = icmp eq i32 %1202, 3
  br i1 %1203, label %1204, label %1207

1204:                                             ; preds = %1189
  %1205 = load ptr, ptr %1188, align 8, !tbaa !6
  %1206 = getelementptr inbounds i32, ptr %1205, i64 %1200
  store i32 -16, ptr %1206, align 4, !tbaa !24
  br label %1207

1207:                                             ; preds = %1189, %1204
  %1208 = add nuw nsw i64 %1190, 1
  %1209 = icmp eq i64 %1208, 16
  br i1 %1209, label %1210, label %1189

1210:                                             ; preds = %1207
  %1211 = add nuw nsw i64 %1180, 1
  %1212 = icmp eq i64 %1211, 16
  br i1 %1212, label %1264, label %1179

1213:                                             ; preds = %1170, %1261
  %1214 = phi ptr [ %1243, %1261 ], [ %1046, %1170 ]
  %1215 = phi i64 [ %1262, %1261 ], [ 0, %1170 ]
  %1216 = getelementptr inbounds i8, ptr %1214, i64 156
  %1217 = load i32, ptr %1216, align 4, !tbaa !48
  %1218 = trunc nuw nsw i64 %1215 to i32
  %1219 = add nsw i32 %1217, %1218
  %1220 = sext i32 %1219 to i64
  br label %1221

1221:                                             ; preds = %1213, %1258
  %1222 = phi ptr [ %1214, %1213 ], [ %1243, %1258 ]
  %1223 = phi i64 [ 0, %1213 ], [ %1259, %1258 ]
  %1224 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %1215, i64 %1223
  %1225 = load i32, ptr %1224, align 4, !tbaa !24
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds i8, ptr %1222, i64 4792
  %1228 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %1227, i64 0, i64 %78, i64 %1215, i64 %1223
  %1229 = load i16, ptr %1228, align 2, !tbaa !27
  %1230 = zext i16 %1229 to i64
  %1231 = shl nuw nsw i64 %1230, 6
  %1232 = add nsw i64 %1226, 32
  %1233 = add nsw i64 %1232, %1231
  %1234 = ashr i64 %1233, 6
  %1235 = trunc nsw i64 %1234 to i32
  %1236 = tail call signext i32 @clip1a(i32 noundef signext %1235) #7
  %1237 = trunc i32 %1236 to i16
  %1238 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1239 = getelementptr inbounds i8, ptr %1238, i64 6424
  %1240 = load ptr, ptr %1239, align 8, !tbaa !10
  %1241 = getelementptr inbounds ptr, ptr %1240, i64 %1220
  %1242 = load ptr, ptr %1241, align 8, !tbaa !6
  %1243 = load ptr, ptr @img, align 8, !tbaa !6
  %1244 = getelementptr inbounds i8, ptr %1243, i64 152
  %1245 = load i32, ptr %1244, align 8, !tbaa !49
  %1246 = trunc nuw nsw i64 %1223 to i32
  %1247 = add nsw i32 %1245, %1246
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds i16, ptr %1242, i64 %1248
  store i16 %1237, ptr %1249, align 2, !tbaa !27
  %1250 = getelementptr inbounds i8, ptr %1243, i64 24
  %1251 = load i32, ptr %1250, align 8, !tbaa !50
  %1252 = icmp eq i32 %1251, 3
  br i1 %1252, label %1253, label %1258

1253:                                             ; preds = %1221
  %1254 = load ptr, ptr @lrec, align 8, !tbaa !6
  %1255 = getelementptr inbounds ptr, ptr %1254, i64 %1220
  %1256 = load ptr, ptr %1255, align 8, !tbaa !6
  %1257 = getelementptr inbounds i32, ptr %1256, i64 %1248
  store i32 -16, ptr %1257, align 4, !tbaa !24
  br label %1258

1258:                                             ; preds = %1221, %1253
  %1259 = add nuw nsw i64 %1223, 1
  %1260 = icmp eq i64 %1259, 16
  br i1 %1260, label %1261, label %1221

1261:                                             ; preds = %1258
  %1262 = add nuw nsw i64 %1215, 1
  %1263 = icmp eq i64 %1262, 16
  br i1 %1263, label %1264, label %1213

1264:                                             ; preds = %1261, %1210, %1167
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #7
  ret i32 %881
}

declare dso_local signext i32 @sign(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @clip1a(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @dct_luma(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %6 = lshr i32 %0, 2
  %7 = ashr i32 %1, 2
  %8 = and i32 %7, -2
  %9 = ashr i32 %0, 3
  %10 = add nsw i32 %8, %9
  %11 = lshr i32 %1, 1
  %12 = and i32 %11, 2
  %13 = and i32 %6, 1
  %14 = or disjoint i32 %12, %13
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 14136
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = zext nneg i32 %14 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %23, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %15, i64 31576
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  %29 = getelementptr inbounds i8, ptr %15, i64 12
  %30 = load i32, ptr %29, align 4, !tbaa !13
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.macroblock, ptr %28, i64 %31
  %33 = getelementptr inbounds i8, ptr %15, i64 90264
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = getelementptr inbounds i8, ptr %15, i64 90220
  %38 = load i32, ptr %37, align 4, !tbaa !32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %32, i64 424
  %42 = load i32, ptr %41, align 8, !tbaa !33
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %45

45:                                               ; preds = %36, %40, %4
  %46 = phi ptr [ @FIELD_SCAN, %4 ], [ @SNGL_SCAN, %36 ], [ %44, %40 ]
  %47 = getelementptr inbounds i8, ptr %32, i64 12
  %48 = load i32, ptr %47, align 4, !tbaa !37
  %49 = getelementptr inbounds i8, ptr %15, i64 90492
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = sub i32 0, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, ptr %15, i64 90552
  %55 = load i32, ptr %54, align 8, !tbaa !39
  %56 = icmp eq i32 %55, 1
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i1 [ false, %45 ], [ %56, %53 ]
  %59 = add nsw i32 %50, %48
  %60 = freeze i32 %59
  %61 = sdiv i32 %60, 6
  %62 = mul i32 %61, 6
  %63 = sub i32 %60, %62
  %64 = add nsw i32 %61, 15
  %65 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !6
  %66 = sext i32 %3 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = sext i32 %63 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %66
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = sext i32 %61 to i64
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !6
  %79 = getelementptr inbounds ptr, ptr %78, i64 %66
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds ptr, ptr %80, i64 %69
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  br i1 %58, label %213, label %83

83:                                               ; preds = %57
  %84 = getelementptr inbounds i8, ptr %15, i64 13112
  %85 = load i32, ptr %84, align 8, !tbaa !24
  %86 = getelementptr inbounds i8, ptr %15, i64 13124
  %87 = load i32, ptr %86, align 4, !tbaa !24
  %88 = add nsw i32 %87, %85
  %89 = getelementptr inbounds i8, ptr %15, i64 13116
  %90 = load i32, ptr %89, align 4, !tbaa !24
  %91 = getelementptr inbounds i8, ptr %15, i64 13120
  %92 = load i32, ptr %91, align 8, !tbaa !24
  %93 = add nsw i32 %92, %90
  %94 = sub nsw i32 %90, %92
  %95 = sub nsw i32 %85, %87
  %96 = add nsw i32 %93, %88
  %97 = sub nsw i32 %88, %93
  %98 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %97, ptr %98, align 4, !tbaa !24
  %99 = shl nsw i32 %95, 1
  %100 = add nsw i32 %94, %99
  %101 = getelementptr inbounds i8, ptr %5, i64 4
  %102 = shl nsw i32 %94, 1
  %103 = sub nsw i32 %95, %102
  %104 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %103, ptr %104, align 4, !tbaa !24
  %105 = getelementptr inbounds i8, ptr %15, i64 13176
  %106 = load i32, ptr %105, align 8, !tbaa !24
  %107 = getelementptr inbounds i8, ptr %15, i64 13188
  %108 = load i32, ptr %107, align 4, !tbaa !24
  %109 = add nsw i32 %108, %106
  %110 = getelementptr inbounds i8, ptr %15, i64 13180
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = getelementptr inbounds i8, ptr %15, i64 13184
  %113 = load i32, ptr %112, align 8, !tbaa !24
  %114 = add nsw i32 %113, %111
  %115 = sub nsw i32 %111, %113
  %116 = sub nsw i32 %106, %108
  %117 = add nsw i32 %114, %109
  %118 = getelementptr inbounds i8, ptr %5, i64 16
  %119 = sub nsw i32 %109, %114
  %120 = getelementptr inbounds i8, ptr %5, i64 24
  %121 = shl nsw i32 %116, 1
  %122 = add nsw i32 %115, %121
  %123 = getelementptr inbounds i8, ptr %5, i64 20
  %124 = shl nsw i32 %115, 1
  %125 = sub nsw i32 %116, %124
  %126 = getelementptr inbounds i8, ptr %5, i64 28
  %127 = getelementptr inbounds i8, ptr %15, i64 13240
  %128 = load i32, ptr %127, align 8, !tbaa !24
  %129 = getelementptr inbounds i8, ptr %15, i64 13252
  %130 = load i32, ptr %129, align 4, !tbaa !24
  %131 = add nsw i32 %130, %128
  %132 = getelementptr inbounds i8, ptr %15, i64 13244
  %133 = load i32, ptr %132, align 4, !tbaa !24
  %134 = getelementptr inbounds i8, ptr %15, i64 13248
  %135 = load i32, ptr %134, align 8, !tbaa !24
  %136 = add nsw i32 %135, %133
  %137 = sub nsw i32 %133, %135
  %138 = sub nsw i32 %128, %130
  %139 = add nsw i32 %136, %131
  %140 = getelementptr inbounds i8, ptr %5, i64 32
  %141 = sub nsw i32 %131, %136
  %142 = getelementptr inbounds i8, ptr %5, i64 40
  %143 = shl nsw i32 %138, 1
  %144 = add nsw i32 %137, %143
  %145 = getelementptr inbounds i8, ptr %5, i64 36
  %146 = shl nsw i32 %137, 1
  %147 = sub nsw i32 %138, %146
  %148 = getelementptr inbounds i8, ptr %5, i64 44
  %149 = getelementptr inbounds i8, ptr %15, i64 13304
  %150 = load i32, ptr %149, align 8, !tbaa !24
  %151 = getelementptr inbounds i8, ptr %15, i64 13316
  %152 = load i32, ptr %151, align 4, !tbaa !24
  %153 = add nsw i32 %152, %150
  %154 = getelementptr inbounds i8, ptr %15, i64 13308
  %155 = load i32, ptr %154, align 4, !tbaa !24
  %156 = getelementptr inbounds i8, ptr %15, i64 13312
  %157 = load i32, ptr %156, align 8, !tbaa !24
  %158 = add nsw i32 %157, %155
  %159 = sub nsw i32 %155, %157
  %160 = sub nsw i32 %150, %152
  %161 = add nsw i32 %158, %153
  %162 = getelementptr inbounds i8, ptr %5, i64 48
  %163 = sub nsw i32 %153, %158
  %164 = getelementptr inbounds i8, ptr %5, i64 56
  %165 = shl nsw i32 %160, 1
  %166 = add nsw i32 %159, %165
  %167 = getelementptr inbounds i8, ptr %5, i64 52
  %168 = shl nsw i32 %159, 1
  %169 = sub nsw i32 %160, %168
  %170 = getelementptr inbounds i8, ptr %5, i64 60
  %171 = add nsw i32 %161, %96
  %172 = add nsw i32 %139, %117
  %173 = sub nsw i32 %117, %139
  %174 = sub nsw i32 %96, %161
  %175 = add nsw i32 %172, %171
  store i32 %175, ptr %5, align 4, !tbaa !24
  %176 = sub nsw i32 %171, %172
  store i32 %176, ptr %140, align 4, !tbaa !24
  %177 = shl nsw i32 %174, 1
  %178 = add nsw i32 %173, %177
  store i32 %178, ptr %118, align 4, !tbaa !24
  %179 = shl nsw i32 %173, 1
  %180 = sub nsw i32 %174, %179
  store i32 %180, ptr %162, align 4, !tbaa !24
  %181 = add nsw i32 %166, %100
  %182 = add nsw i32 %144, %122
  %183 = sub nsw i32 %122, %144
  %184 = sub nsw i32 %100, %166
  %185 = add nsw i32 %182, %181
  store i32 %185, ptr %101, align 4, !tbaa !24
  %186 = sub nsw i32 %181, %182
  store i32 %186, ptr %145, align 4, !tbaa !24
  %187 = shl nsw i32 %184, 1
  %188 = add nsw i32 %183, %187
  store i32 %188, ptr %123, align 4, !tbaa !24
  %189 = shl nsw i32 %183, 1
  %190 = sub nsw i32 %184, %189
  store i32 %190, ptr %167, align 4, !tbaa !24
  %191 = load i32, ptr %98, align 4, !tbaa !24
  %192 = add nsw i32 %163, %191
  %193 = add nsw i32 %141, %119
  %194 = sub nsw i32 %119, %141
  %195 = sub nsw i32 %191, %163
  %196 = add nsw i32 %193, %192
  store i32 %196, ptr %98, align 4, !tbaa !24
  %197 = sub nsw i32 %192, %193
  store i32 %197, ptr %142, align 4, !tbaa !24
  %198 = shl nsw i32 %195, 1
  %199 = add nsw i32 %194, %198
  store i32 %199, ptr %120, align 4, !tbaa !24
  %200 = shl nsw i32 %194, 1
  %201 = sub nsw i32 %195, %200
  store i32 %201, ptr %164, align 4, !tbaa !24
  %202 = load i32, ptr %104, align 4, !tbaa !24
  %203 = add nsw i32 %169, %202
  %204 = add nsw i32 %147, %125
  %205 = sub nsw i32 %125, %147
  %206 = sub nsw i32 %202, %169
  %207 = add nsw i32 %204, %203
  store i32 %207, ptr %104, align 4, !tbaa !24
  %208 = sub nsw i32 %203, %204
  store i32 %208, ptr %148, align 4, !tbaa !24
  %209 = shl nsw i32 %206, 1
  %210 = add nsw i32 %205, %209
  store i32 %210, ptr %126, align 4, !tbaa !24
  %211 = shl nsw i32 %205, 1
  %212 = sub nsw i32 %206, %211
  store i32 %212, ptr %170, align 4, !tbaa !24
  br label %213

213:                                              ; preds = %83, %57
  %214 = shl nuw i32 1, %64
  %215 = add nsw i32 %61, 16
  br label %216

216:                                              ; preds = %348, %213
  %217 = phi i64 [ 0, %213 ], [ %349, %348 ]
  %218 = phi i32 [ 0, %213 ], [ %350, %348 ]
  %219 = phi i32 [ -1, %213 ], [ %351, %348 ]
  %220 = phi i32 [ 0, %213 ], [ %352, %348 ]
  %221 = getelementptr inbounds [2 x i8], ptr %46, i64 %217
  %222 = load i8, ptr %221, align 1, !tbaa !43
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds i8, ptr %221, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !43
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %219, 1
  br i1 %58, label %228, label %236

228:                                              ; preds = %216
  %229 = load ptr, ptr @img, align 8, !tbaa !6
  %230 = getelementptr inbounds i8, ptr %229, i64 13112
  %231 = zext i8 %225 to i64
  %232 = zext i8 %222 to i64
  %233 = getelementptr inbounds [16 x [16 x i32]], ptr %230, i64 0, i64 %231, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !24
  %235 = tail call i32 @llvm.abs.i32(i32 %234, i1 true)
  br label %254

236:                                              ; preds = %216
  %237 = zext i8 %225 to i64
  %238 = zext i8 %222 to i64
  %239 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %237, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !24
  %241 = tail call i32 @llvm.abs.i32(i32 %240, i1 true)
  %242 = getelementptr inbounds ptr, ptr %71, i64 %238
  %243 = load ptr, ptr %242, align 8, !tbaa !6
  %244 = getelementptr inbounds i32, ptr %243, i64 %237
  %245 = load i32, ptr %244, align 4, !tbaa !24
  %246 = mul nsw i32 %245, %241
  %247 = getelementptr inbounds ptr, ptr %77, i64 %238
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = getelementptr inbounds i32, ptr %248, i64 %237
  %250 = load i32, ptr %249, align 4, !tbaa !24
  %251 = add nsw i32 %250, %246
  %252 = ashr i32 %251, %64
  %253 = load ptr, ptr @img, align 8, !tbaa !6
  br label %254

254:                                              ; preds = %236, %228
  %255 = phi ptr [ %229, %228 ], [ %253, %236 ]
  %256 = phi i32 [ %235, %228 ], [ %252, %236 ]
  %257 = getelementptr inbounds i8, ptr %255, i64 90212
  %258 = load i32, ptr %257, align 4, !tbaa !47
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %293, label %260

260:                                              ; preds = %254
  %261 = icmp eq i32 %256, 0
  %262 = select i1 %58, i1 true, i1 %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = getelementptr inbounds i8, ptr %255, i64 14152
  %265 = add nsw i32 %226, %1
  %266 = sext i32 %265 to i64
  %267 = add nsw i32 %223, %0
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x [16 x [16 x i32]]], ptr %264, i64 0, i64 %66, i64 %266, i64 %268
  store i32 0, ptr %269, align 4, !tbaa !24
  br label %293

270:                                              ; preds = %260
  %271 = load i32, ptr @AdaptRndWeight, align 4, !tbaa !24
  %272 = zext i8 %225 to i64
  %273 = zext i8 %222 to i64
  %274 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %272, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !24
  %276 = tail call i32 @llvm.abs.i32(i32 %275, i1 true)
  %277 = getelementptr inbounds ptr, ptr %71, i64 %273
  %278 = load ptr, ptr %277, align 8, !tbaa !6
  %279 = getelementptr inbounds i32, ptr %278, i64 %272
  %280 = load i32, ptr %279, align 4, !tbaa !24
  %281 = mul nsw i32 %280, %276
  %282 = shl i32 %256, %64
  %283 = sub nsw i32 %281, %282
  %284 = mul nsw i32 %283, %271
  %285 = add nsw i32 %284, %214
  %286 = ashr i32 %285, %215
  %287 = getelementptr inbounds i8, ptr %255, i64 14152
  %288 = add nsw i32 %226, %1
  %289 = sext i32 %288 to i64
  %290 = add nsw i32 %223, %0
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x [16 x [16 x i32]]], ptr %287, i64 0, i64 %66, i64 %289, i64 %291
  store i32 %286, ptr %292, align 4, !tbaa !24
  br label %295

293:                                              ; preds = %263, %254
  %294 = icmp eq i32 %256, 0
  br i1 %294, label %339, label %295

295:                                              ; preds = %270, %293
  %296 = icmp sgt i32 %256, 1
  %297 = or i1 %58, %296
  br i1 %297, label %307, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr @input, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %299, i64 3140
  %301 = load i32, ptr %300, align 4, !tbaa !51
  %302 = sext i32 %301 to i64
  %303 = sext i32 %227 to i64
  %304 = getelementptr inbounds [2 x [16 x i8]], ptr @COEFF_COST, i64 0, i64 %302, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !43
  %306 = zext i8 %305 to i32
  br label %307

307:                                              ; preds = %295, %298
  %308 = phi i32 [ %306, %298 ], [ 999999, %295 ]
  %309 = load i32, ptr %2, align 4, !tbaa !24
  %310 = add nsw i32 %309, %308
  store i32 %310, ptr %2, align 4, !tbaa !24
  %311 = zext i8 %225 to i64
  %312 = zext i8 %222 to i64
  %313 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %311, i64 %312
  %314 = getelementptr inbounds i8, ptr %255, i64 13112
  %315 = zext i8 %225 to i64
  %316 = zext i8 %222 to i64
  %317 = getelementptr inbounds [16 x [16 x i32]], ptr %314, i64 0, i64 %315, i64 %316
  %318 = select i1 %58, ptr %317, ptr %313
  %319 = select i1 %58, i64 %315, i64 %311
  %320 = select i1 %58, i64 %316, i64 %312
  %321 = load i32, ptr %318, align 4, !tbaa !24
  %322 = tail call signext i32 @sign(i32 noundef signext %256, i32 noundef signext %321) #7
  %323 = sext i32 %218 to i64
  %324 = getelementptr inbounds i32, ptr %24, i64 %323
  store i32 %322, ptr %324, align 4, !tbaa !24
  %325 = getelementptr inbounds i32, ptr %26, i64 %323
  store i32 %227, ptr %325, align 4, !tbaa !24
  %326 = add nsw i32 %218, 1
  %327 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %319, i64 %320
  %328 = load i32, ptr %327, align 4, !tbaa !24
  %329 = tail call signext i32 @sign(i32 noundef signext %256, i32 noundef signext %328) #7
  br i1 %58, label %342, label %330

330:                                              ; preds = %307
  %331 = getelementptr inbounds ptr, ptr %82, i64 %320
  %332 = load ptr, ptr %331, align 8, !tbaa !6
  %333 = getelementptr inbounds i32, ptr %332, i64 %319
  %334 = load i32, ptr %333, align 4, !tbaa !24
  %335 = mul nsw i32 %334, %329
  %336 = shl i32 %335, %61
  %337 = add nsw i32 %336, 8
  %338 = ashr i32 %337, 4
  br label %353

339:                                              ; preds = %293
  br i1 %58, label %342, label %340

340:                                              ; preds = %339
  %341 = zext i8 %225 to i64
  br label %353

342:                                              ; preds = %307, %339
  %343 = phi i32 [ %218, %339 ], [ %326, %307 ]
  %344 = phi i32 [ %227, %339 ], [ -1, %307 ]
  %345 = phi i32 [ %220, %339 ], [ 1, %307 ]
  %346 = add nuw nsw i64 %217, 1
  %347 = icmp eq i64 %346, 16
  br i1 %347, label %367, label %348

348:                                              ; preds = %342, %353
  %349 = phi i64 [ %346, %342 ], [ %361, %353 ]
  %350 = phi i32 [ %343, %342 ], [ %356, %353 ]
  %351 = phi i32 [ %344, %342 ], [ %357, %353 ]
  %352 = phi i32 [ %345, %342 ], [ %358, %353 ]
  br label %216

353:                                              ; preds = %330, %340
  %354 = phi i64 [ %341, %340 ], [ %319, %330 ]
  %355 = phi i32 [ 0, %340 ], [ %338, %330 ]
  %356 = phi i32 [ %218, %340 ], [ %326, %330 ]
  %357 = phi i32 [ %227, %340 ], [ -1, %330 ]
  %358 = phi i32 [ %220, %340 ], [ 1, %330 ]
  %359 = zext i8 %222 to i64
  %360 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %354, i64 %359
  store i32 %355, ptr %360, align 4, !tbaa !24
  %361 = add nuw nsw i64 %217, 1
  %362 = icmp eq i64 %361, 16
  br i1 %362, label %363, label %348

363:                                              ; preds = %353
  %364 = sext i32 %356 to i64
  %365 = getelementptr inbounds i32, ptr %24, i64 %364
  store i32 0, ptr %365, align 4, !tbaa !24
  %366 = load ptr, ptr @img, align 8, !tbaa !6
  br label %371

367:                                              ; preds = %342
  %368 = sext i32 %343 to i64
  %369 = getelementptr inbounds i32, ptr %24, i64 %368
  store i32 0, ptr %369, align 4, !tbaa !24
  %370 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %58, label %564, label %371

371:                                              ; preds = %363, %367
  %372 = phi ptr [ %366, %363 ], [ %370, %367 ]
  %373 = phi i32 [ %358, %363 ], [ %345, %367 ]
  %374 = load i32, ptr %5, align 4, !tbaa !24
  %375 = getelementptr inbounds i8, ptr %5, i64 8
  %376 = load i32, ptr %375, align 4, !tbaa !24
  %377 = add nsw i32 %376, %374
  %378 = sub nsw i32 %374, %376
  %379 = getelementptr inbounds i8, ptr %5, i64 4
  %380 = load i32, ptr %379, align 4, !tbaa !24
  %381 = ashr i32 %380, 1
  %382 = getelementptr inbounds i8, ptr %5, i64 12
  %383 = load i32, ptr %382, align 4, !tbaa !24
  %384 = sub nsw i32 %381, %383
  %385 = ashr i32 %383, 1
  %386 = add nsw i32 %385, %380
  %387 = add nsw i32 %386, %377
  store i32 %387, ptr %5, align 4, !tbaa !24
  %388 = add nsw i32 %384, %378
  store i32 %388, ptr %379, align 4, !tbaa !24
  %389 = sub nsw i32 %378, %384
  store i32 %389, ptr %375, align 4, !tbaa !24
  %390 = sub nsw i32 %377, %386
  store i32 %390, ptr %382, align 4, !tbaa !24
  %391 = getelementptr inbounds i8, ptr %5, i64 16
  %392 = load i32, ptr %391, align 4, !tbaa !24
  %393 = getelementptr inbounds i8, ptr %5, i64 24
  %394 = load i32, ptr %393, align 4, !tbaa !24
  %395 = add nsw i32 %394, %392
  %396 = sub nsw i32 %392, %394
  %397 = getelementptr inbounds i8, ptr %5, i64 20
  %398 = load i32, ptr %397, align 4, !tbaa !24
  %399 = ashr i32 %398, 1
  %400 = getelementptr inbounds i8, ptr %5, i64 28
  %401 = load i32, ptr %400, align 4, !tbaa !24
  %402 = sub nsw i32 %399, %401
  %403 = ashr i32 %401, 1
  %404 = add nsw i32 %403, %398
  %405 = add nsw i32 %404, %395
  store i32 %405, ptr %391, align 4, !tbaa !24
  %406 = add nsw i32 %402, %396
  store i32 %406, ptr %397, align 4, !tbaa !24
  %407 = sub nsw i32 %396, %402
  store i32 %407, ptr %393, align 4, !tbaa !24
  %408 = sub nsw i32 %395, %404
  store i32 %408, ptr %400, align 4, !tbaa !24
  %409 = getelementptr inbounds i8, ptr %5, i64 32
  %410 = load i32, ptr %409, align 4, !tbaa !24
  %411 = getelementptr inbounds i8, ptr %5, i64 40
  %412 = load i32, ptr %411, align 4, !tbaa !24
  %413 = add nsw i32 %412, %410
  %414 = sub nsw i32 %410, %412
  %415 = getelementptr inbounds i8, ptr %5, i64 36
  %416 = load i32, ptr %415, align 4, !tbaa !24
  %417 = ashr i32 %416, 1
  %418 = getelementptr inbounds i8, ptr %5, i64 44
  %419 = load i32, ptr %418, align 4, !tbaa !24
  %420 = sub nsw i32 %417, %419
  %421 = ashr i32 %419, 1
  %422 = add nsw i32 %421, %416
  %423 = add nsw i32 %422, %413
  store i32 %423, ptr %409, align 4, !tbaa !24
  %424 = add nsw i32 %420, %414
  store i32 %424, ptr %415, align 4, !tbaa !24
  %425 = sub nsw i32 %414, %420
  store i32 %425, ptr %411, align 4, !tbaa !24
  %426 = sub nsw i32 %413, %422
  store i32 %426, ptr %418, align 4, !tbaa !24
  %427 = getelementptr inbounds i8, ptr %5, i64 48
  %428 = load i32, ptr %427, align 4, !tbaa !24
  %429 = getelementptr inbounds i8, ptr %5, i64 56
  %430 = load i32, ptr %429, align 4, !tbaa !24
  %431 = add nsw i32 %430, %428
  %432 = sub nsw i32 %428, %430
  %433 = getelementptr inbounds i8, ptr %5, i64 52
  %434 = load i32, ptr %433, align 4, !tbaa !24
  %435 = ashr i32 %434, 1
  %436 = getelementptr inbounds i8, ptr %5, i64 60
  %437 = load i32, ptr %436, align 4, !tbaa !24
  %438 = sub nsw i32 %435, %437
  %439 = ashr i32 %437, 1
  %440 = add nsw i32 %439, %434
  %441 = add nsw i32 %440, %431
  store i32 %441, ptr %427, align 4, !tbaa !24
  %442 = add nsw i32 %438, %432
  store i32 %442, ptr %433, align 4, !tbaa !24
  %443 = sub nsw i32 %432, %438
  store i32 %443, ptr %429, align 4, !tbaa !24
  %444 = sub nsw i32 %431, %440
  store i32 %444, ptr %436, align 4, !tbaa !24
  %445 = getelementptr inbounds i8, ptr %372, i64 90572
  %446 = getelementptr inbounds i8, ptr %372, i64 13112
  %447 = getelementptr inbounds i8, ptr %372, i64 13176
  %448 = getelementptr inbounds i8, ptr %372, i64 13240
  %449 = getelementptr inbounds i8, ptr %372, i64 13304
  %450 = getelementptr inbounds i8, ptr %372, i64 90532
  %451 = getelementptr inbounds i8, ptr %372, i64 12600
  %452 = sext i32 %1 to i64
  %453 = add nsw i32 %1, 1
  %454 = sext i32 %453 to i64
  %455 = add nsw i32 %1, 2
  %456 = sext i32 %455 to i64
  %457 = add nsw i32 %1, 3
  %458 = sext i32 %457 to i64
  %459 = sext i32 %0 to i64
  br label %460

460:                                              ; preds = %371, %555
  %461 = phi i64 [ 0, %371 ], [ %558, %555 ]
  %462 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !24
  %464 = getelementptr inbounds [4 x i32], ptr %409, i64 0, i64 %461
  %465 = load i32, ptr %464, align 4, !tbaa !24
  %466 = add nsw i32 %465, %463
  %467 = sub nsw i32 %463, %465
  %468 = getelementptr inbounds [4 x i32], ptr %391, i64 0, i64 %461
  %469 = load i32, ptr %468, align 4, !tbaa !24
  %470 = ashr i32 %469, 1
  %471 = getelementptr inbounds [4 x i32], ptr %427, i64 0, i64 %461
  %472 = load i32, ptr %471, align 4, !tbaa !24
  %473 = sub nsw i32 %470, %472
  %474 = ashr i32 %472, 1
  %475 = add nsw i32 %474, %469
  %476 = load i32, ptr %445, align 4, !tbaa !41
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %539

478:                                              ; preds = %460
  %479 = add nsw i64 %461, %459
  %480 = load i32, ptr %450, align 4, !tbaa !29
  %481 = sext i32 %480 to i64
  %482 = add nsw i32 %475, %466
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [16 x [16 x i16]], ptr %451, i64 0, i64 %452, i64 %479
  %485 = load i16, ptr %484, align 2, !tbaa !27
  %486 = zext i16 %485 to i64
  %487 = shl nuw nsw i64 %486, 6
  %488 = add nsw i64 %483, 32
  %489 = add nsw i64 %488, %487
  %490 = ashr i64 %489, 6
  %491 = tail call i64 @llvm.smax.i64(i64 %490, i64 0)
  %492 = tail call i64 @llvm.smin.i64(i64 %491, i64 %481)
  %493 = trunc nsw i64 %492 to i32
  %494 = getelementptr inbounds [16 x i32], ptr %446, i64 0, i64 %461
  store i32 %493, ptr %494, align 4, !tbaa !24
  %495 = load i32, ptr %450, align 4, !tbaa !29
  %496 = sext i32 %495 to i64
  %497 = add nsw i32 %473, %467
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [16 x [16 x i16]], ptr %451, i64 0, i64 %454, i64 %479
  %500 = load i16, ptr %499, align 2, !tbaa !27
  %501 = zext i16 %500 to i64
  %502 = shl nuw nsw i64 %501, 6
  %503 = add nsw i64 %498, 32
  %504 = add nsw i64 %503, %502
  %505 = ashr i64 %504, 6
  %506 = tail call i64 @llvm.smax.i64(i64 %505, i64 0)
  %507 = tail call i64 @llvm.smin.i64(i64 %506, i64 %496)
  %508 = trunc nsw i64 %507 to i32
  %509 = getelementptr inbounds [16 x i32], ptr %447, i64 0, i64 %461
  store i32 %508, ptr %509, align 4, !tbaa !24
  %510 = load i32, ptr %450, align 4, !tbaa !29
  %511 = sext i32 %510 to i64
  %512 = sub nsw i32 %467, %473
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [16 x [16 x i16]], ptr %451, i64 0, i64 %456, i64 %479
  %515 = load i16, ptr %514, align 2, !tbaa !27
  %516 = zext i16 %515 to i64
  %517 = shl nuw nsw i64 %516, 6
  %518 = add nsw i64 %513, 32
  %519 = add nsw i64 %518, %517
  %520 = ashr i64 %519, 6
  %521 = tail call i64 @llvm.smax.i64(i64 %520, i64 0)
  %522 = tail call i64 @llvm.smin.i64(i64 %521, i64 %511)
  %523 = trunc nsw i64 %522 to i32
  %524 = getelementptr inbounds [16 x i32], ptr %448, i64 0, i64 %461
  store i32 %523, ptr %524, align 4, !tbaa !24
  %525 = load i32, ptr %450, align 4, !tbaa !29
  %526 = sext i32 %525 to i64
  %527 = sub nsw i32 %466, %475
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [16 x [16 x i16]], ptr %451, i64 0, i64 %458, i64 %479
  %530 = load i16, ptr %529, align 2, !tbaa !27
  %531 = zext i16 %530 to i64
  %532 = shl nuw nsw i64 %531, 6
  %533 = add nsw i64 %528, 32
  %534 = add nsw i64 %533, %532
  %535 = ashr i64 %534, 6
  %536 = tail call i64 @llvm.smax.i64(i64 %535, i64 0)
  %537 = tail call i64 @llvm.smin.i64(i64 %536, i64 %526)
  %538 = trunc nsw i64 %537 to i32
  br label %555

539:                                              ; preds = %460
  %540 = add nsw i32 %475, %466
  %541 = add nsw i32 %540, 32
  %542 = ashr i32 %541, 6
  %543 = getelementptr inbounds [16 x i32], ptr %446, i64 0, i64 %461
  store i32 %542, ptr %543, align 4, !tbaa !24
  %544 = add nsw i32 %473, %467
  %545 = add nsw i32 %544, 32
  %546 = ashr i32 %545, 6
  %547 = getelementptr inbounds [16 x i32], ptr %447, i64 0, i64 %461
  store i32 %546, ptr %547, align 4, !tbaa !24
  %548 = add i32 %467, 32
  %549 = sub i32 %548, %473
  %550 = ashr i32 %549, 6
  %551 = getelementptr inbounds [16 x i32], ptr %448, i64 0, i64 %461
  store i32 %550, ptr %551, align 4, !tbaa !24
  %552 = add i32 %466, 32
  %553 = sub i32 %552, %475
  %554 = ashr i32 %553, 6
  br label %555

555:                                              ; preds = %478, %539
  %556 = phi i32 [ %538, %478 ], [ %554, %539 ]
  %557 = getelementptr inbounds [16 x i32], ptr %449, i64 0, i64 %461
  store i32 %556, ptr %557, align 4, !tbaa !24
  %558 = add nuw nsw i64 %461, 1
  %559 = icmp eq i64 %558, 4
  br i1 %559, label %560, label %460

560:                                              ; preds = %555
  %561 = getelementptr inbounds i8, ptr %372, i64 90572
  %562 = load i32, ptr %561, align 4, !tbaa !41
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %568, label %826

564:                                              ; preds = %367
  %565 = getelementptr inbounds i8, ptr %370, i64 90572
  %566 = load i32, ptr %565, align 4, !tbaa !41
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %665, label %826

568:                                              ; preds = %560
  br i1 %58, label %665, label %569

569:                                              ; preds = %568
  %570 = getelementptr inbounds i8, ptr %372, i64 156
  %571 = load i32, ptr %570, align 4, !tbaa !48
  %572 = getelementptr inbounds i8, ptr %372, i64 152
  %573 = load i32, ptr %572, align 8, !tbaa !49
  %574 = add nsw i32 %573, %0
  %575 = getelementptr inbounds i8, ptr %372, i64 13112
  %576 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %577 = getelementptr inbounds i8, ptr %576, i64 6424
  %578 = load ptr, ptr %577, align 8, !tbaa !10
  %579 = sext i32 %574 to i64
  %580 = add i32 %571, %1
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds ptr, ptr %578, i64 %581
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  %584 = load i32, ptr %575, align 4, !tbaa !24
  %585 = trunc i32 %584 to i16
  %586 = getelementptr inbounds i16, ptr %583, i64 %579
  store i16 %585, ptr %586, align 2, !tbaa !27
  %587 = getelementptr inbounds i8, ptr %372, i64 13116
  %588 = load i32, ptr %587, align 4, !tbaa !24
  %589 = trunc i32 %588 to i16
  %590 = add nsw i64 %579, 1
  %591 = getelementptr inbounds i16, ptr %583, i64 %590
  store i16 %589, ptr %591, align 2, !tbaa !27
  %592 = getelementptr inbounds i8, ptr %372, i64 13120
  %593 = load i32, ptr %592, align 4, !tbaa !24
  %594 = trunc i32 %593 to i16
  %595 = add nsw i64 %579, 2
  %596 = getelementptr inbounds i16, ptr %583, i64 %595
  store i16 %594, ptr %596, align 2, !tbaa !27
  %597 = getelementptr inbounds i8, ptr %372, i64 13124
  %598 = load i32, ptr %597, align 4, !tbaa !24
  %599 = trunc i32 %598 to i16
  %600 = add nsw i64 %579, 3
  %601 = getelementptr inbounds i16, ptr %583, i64 %600
  store i16 %599, ptr %601, align 2, !tbaa !27
  %602 = add i32 %1, 1
  %603 = add i32 %602, %571
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds ptr, ptr %578, i64 %604
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = getelementptr inbounds i8, ptr %372, i64 13176
  %608 = load i32, ptr %607, align 4, !tbaa !24
  %609 = trunc i32 %608 to i16
  %610 = getelementptr inbounds i16, ptr %606, i64 %579
  store i16 %609, ptr %610, align 2, !tbaa !27
  %611 = getelementptr inbounds i8, ptr %372, i64 13180
  %612 = load i32, ptr %611, align 4, !tbaa !24
  %613 = trunc i32 %612 to i16
  %614 = getelementptr inbounds i16, ptr %606, i64 %590
  store i16 %613, ptr %614, align 2, !tbaa !27
  %615 = getelementptr inbounds i8, ptr %372, i64 13184
  %616 = load i32, ptr %615, align 4, !tbaa !24
  %617 = trunc i32 %616 to i16
  %618 = getelementptr inbounds i16, ptr %606, i64 %595
  store i16 %617, ptr %618, align 2, !tbaa !27
  %619 = getelementptr inbounds i8, ptr %372, i64 13188
  %620 = load i32, ptr %619, align 4, !tbaa !24
  %621 = trunc i32 %620 to i16
  %622 = getelementptr inbounds i16, ptr %606, i64 %600
  store i16 %621, ptr %622, align 2, !tbaa !27
  %623 = add i32 %1, 2
  %624 = add i32 %623, %571
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds ptr, ptr %578, i64 %625
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  %628 = getelementptr inbounds i8, ptr %372, i64 13240
  %629 = load i32, ptr %628, align 4, !tbaa !24
  %630 = trunc i32 %629 to i16
  %631 = getelementptr inbounds i16, ptr %627, i64 %579
  store i16 %630, ptr %631, align 2, !tbaa !27
  %632 = getelementptr inbounds i8, ptr %372, i64 13244
  %633 = load i32, ptr %632, align 4, !tbaa !24
  %634 = trunc i32 %633 to i16
  %635 = getelementptr inbounds i16, ptr %627, i64 %590
  store i16 %634, ptr %635, align 2, !tbaa !27
  %636 = getelementptr inbounds i8, ptr %372, i64 13248
  %637 = load i32, ptr %636, align 4, !tbaa !24
  %638 = trunc i32 %637 to i16
  %639 = getelementptr inbounds i16, ptr %627, i64 %595
  store i16 %638, ptr %639, align 2, !tbaa !27
  %640 = getelementptr inbounds i8, ptr %372, i64 13252
  %641 = load i32, ptr %640, align 4, !tbaa !24
  %642 = trunc i32 %641 to i16
  %643 = getelementptr inbounds i16, ptr %627, i64 %600
  store i16 %642, ptr %643, align 2, !tbaa !27
  %644 = add i32 %1, 3
  %645 = add i32 %644, %571
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds ptr, ptr %578, i64 %646
  %648 = load ptr, ptr %647, align 8, !tbaa !6
  %649 = getelementptr inbounds i8, ptr %372, i64 13304
  %650 = load i32, ptr %649, align 4, !tbaa !24
  %651 = trunc i32 %650 to i16
  %652 = getelementptr inbounds i16, ptr %648, i64 %579
  store i16 %651, ptr %652, align 2, !tbaa !27
  %653 = getelementptr inbounds i8, ptr %372, i64 13308
  %654 = load i32, ptr %653, align 4, !tbaa !24
  %655 = trunc i32 %654 to i16
  %656 = getelementptr inbounds i16, ptr %648, i64 %590
  store i16 %655, ptr %656, align 2, !tbaa !27
  %657 = getelementptr inbounds i8, ptr %372, i64 13312
  %658 = load i32, ptr %657, align 4, !tbaa !24
  %659 = trunc i32 %658 to i16
  %660 = getelementptr inbounds i16, ptr %648, i64 %595
  store i16 %659, ptr %660, align 2, !tbaa !27
  %661 = getelementptr inbounds i8, ptr %372, i64 13316
  %662 = load i32, ptr %661, align 4, !tbaa !24
  %663 = trunc i32 %662 to i16
  %664 = getelementptr inbounds i16, ptr %648, i64 %600
  store i16 %663, ptr %664, align 2, !tbaa !27
  br label %826

665:                                              ; preds = %564, %568
  %666 = phi ptr [ %372, %568 ], [ %370, %564 ]
  %667 = phi i32 [ %373, %568 ], [ %345, %564 ]
  %668 = getelementptr inbounds i8, ptr %666, i64 156
  %669 = load i32, ptr %668, align 4, !tbaa !48
  %670 = getelementptr inbounds i8, ptr %666, i64 13112
  %671 = getelementptr inbounds i8, ptr %666, i64 12600
  %672 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %673 = getelementptr inbounds i8, ptr %672, i64 6424
  %674 = load ptr, ptr %673, align 8, !tbaa !10
  %675 = getelementptr inbounds i8, ptr %666, i64 152
  %676 = load i32, ptr %675, align 8, !tbaa !49
  %677 = sext i32 %0 to i64
  %678 = sext i32 %1 to i64
  %679 = add i32 %669, %1
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds ptr, ptr %674, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !6
  %683 = load i32, ptr %670, align 4, !tbaa !24
  %684 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %678, i64 %677
  %685 = load i16, ptr %684, align 2, !tbaa !27
  %686 = trunc i32 %683 to i16
  %687 = add i16 %685, %686
  %688 = add i32 %676, %0
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i16, ptr %682, i64 %689
  store i16 %687, ptr %690, align 2, !tbaa !27
  %691 = getelementptr inbounds i8, ptr %666, i64 13116
  %692 = load i32, ptr %691, align 4, !tbaa !24
  %693 = add nsw i64 %677, 1
  %694 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %678, i64 %693
  %695 = load i16, ptr %694, align 2, !tbaa !27
  %696 = trunc i32 %692 to i16
  %697 = add i16 %695, %696
  %698 = add i32 %0, 1
  %699 = add i32 %698, %676
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i16, ptr %682, i64 %700
  store i16 %697, ptr %701, align 2, !tbaa !27
  %702 = getelementptr inbounds i8, ptr %666, i64 13120
  %703 = load i32, ptr %702, align 4, !tbaa !24
  %704 = add nsw i64 %677, 2
  %705 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %678, i64 %704
  %706 = load i16, ptr %705, align 2, !tbaa !27
  %707 = trunc i32 %703 to i16
  %708 = add i16 %706, %707
  %709 = add i32 %0, 2
  %710 = add i32 %709, %676
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i16, ptr %682, i64 %711
  store i16 %708, ptr %712, align 2, !tbaa !27
  %713 = getelementptr inbounds i8, ptr %666, i64 13124
  %714 = load i32, ptr %713, align 4, !tbaa !24
  %715 = add nsw i64 %677, 3
  %716 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %678, i64 %715
  %717 = load i16, ptr %716, align 2, !tbaa !27
  %718 = trunc i32 %714 to i16
  %719 = add i16 %717, %718
  %720 = add i32 %0, 3
  %721 = add i32 %720, %676
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i16, ptr %682, i64 %722
  store i16 %719, ptr %723, align 2, !tbaa !27
  %724 = add nsw i64 %678, 1
  %725 = trunc nsw i64 %724 to i32
  %726 = add i32 %669, %725
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds ptr, ptr %674, i64 %727
  %729 = load ptr, ptr %728, align 8, !tbaa !6
  %730 = getelementptr inbounds i8, ptr %666, i64 13176
  %731 = load i32, ptr %730, align 4, !tbaa !24
  %732 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %724, i64 %677
  %733 = load i16, ptr %732, align 2, !tbaa !27
  %734 = trunc i32 %731 to i16
  %735 = add i16 %733, %734
  %736 = getelementptr inbounds i16, ptr %729, i64 %689
  store i16 %735, ptr %736, align 2, !tbaa !27
  %737 = getelementptr inbounds i8, ptr %666, i64 13180
  %738 = load i32, ptr %737, align 4, !tbaa !24
  %739 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %724, i64 %693
  %740 = load i16, ptr %739, align 2, !tbaa !27
  %741 = trunc i32 %738 to i16
  %742 = add i16 %740, %741
  %743 = getelementptr inbounds i16, ptr %729, i64 %700
  store i16 %742, ptr %743, align 2, !tbaa !27
  %744 = getelementptr inbounds i8, ptr %666, i64 13184
  %745 = load i32, ptr %744, align 4, !tbaa !24
  %746 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %724, i64 %704
  %747 = load i16, ptr %746, align 2, !tbaa !27
  %748 = trunc i32 %745 to i16
  %749 = add i16 %747, %748
  %750 = getelementptr inbounds i16, ptr %729, i64 %711
  store i16 %749, ptr %750, align 2, !tbaa !27
  %751 = getelementptr inbounds i8, ptr %666, i64 13188
  %752 = load i32, ptr %751, align 4, !tbaa !24
  %753 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %724, i64 %715
  %754 = load i16, ptr %753, align 2, !tbaa !27
  %755 = trunc i32 %752 to i16
  %756 = add i16 %754, %755
  %757 = getelementptr inbounds i16, ptr %729, i64 %722
  store i16 %756, ptr %757, align 2, !tbaa !27
  %758 = add nsw i64 %678, 2
  %759 = trunc nsw i64 %758 to i32
  %760 = add i32 %669, %759
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds ptr, ptr %674, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !6
  %764 = getelementptr inbounds i8, ptr %666, i64 13240
  %765 = load i32, ptr %764, align 4, !tbaa !24
  %766 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %758, i64 %677
  %767 = load i16, ptr %766, align 2, !tbaa !27
  %768 = trunc i32 %765 to i16
  %769 = add i16 %767, %768
  %770 = getelementptr inbounds i16, ptr %763, i64 %689
  store i16 %769, ptr %770, align 2, !tbaa !27
  %771 = getelementptr inbounds i8, ptr %666, i64 13244
  %772 = load i32, ptr %771, align 4, !tbaa !24
  %773 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %758, i64 %693
  %774 = load i16, ptr %773, align 2, !tbaa !27
  %775 = trunc i32 %772 to i16
  %776 = add i16 %774, %775
  %777 = getelementptr inbounds i16, ptr %763, i64 %700
  store i16 %776, ptr %777, align 2, !tbaa !27
  %778 = getelementptr inbounds i8, ptr %666, i64 13248
  %779 = load i32, ptr %778, align 4, !tbaa !24
  %780 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %758, i64 %704
  %781 = load i16, ptr %780, align 2, !tbaa !27
  %782 = trunc i32 %779 to i16
  %783 = add i16 %781, %782
  %784 = getelementptr inbounds i16, ptr %763, i64 %711
  store i16 %783, ptr %784, align 2, !tbaa !27
  %785 = getelementptr inbounds i8, ptr %666, i64 13252
  %786 = load i32, ptr %785, align 4, !tbaa !24
  %787 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %758, i64 %715
  %788 = load i16, ptr %787, align 2, !tbaa !27
  %789 = trunc i32 %786 to i16
  %790 = add i16 %788, %789
  %791 = getelementptr inbounds i16, ptr %763, i64 %722
  store i16 %790, ptr %791, align 2, !tbaa !27
  %792 = add nsw i64 %678, 3
  %793 = trunc nsw i64 %792 to i32
  %794 = add i32 %669, %793
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds ptr, ptr %674, i64 %795
  %797 = load ptr, ptr %796, align 8, !tbaa !6
  %798 = getelementptr inbounds i8, ptr %666, i64 13304
  %799 = load i32, ptr %798, align 4, !tbaa !24
  %800 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %792, i64 %677
  %801 = load i16, ptr %800, align 2, !tbaa !27
  %802 = trunc i32 %799 to i16
  %803 = add i16 %801, %802
  %804 = getelementptr inbounds i16, ptr %797, i64 %689
  store i16 %803, ptr %804, align 2, !tbaa !27
  %805 = getelementptr inbounds i8, ptr %666, i64 13308
  %806 = load i32, ptr %805, align 4, !tbaa !24
  %807 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %792, i64 %693
  %808 = load i16, ptr %807, align 2, !tbaa !27
  %809 = trunc i32 %806 to i16
  %810 = add i16 %808, %809
  %811 = getelementptr inbounds i16, ptr %797, i64 %700
  store i16 %810, ptr %811, align 2, !tbaa !27
  %812 = getelementptr inbounds i8, ptr %666, i64 13312
  %813 = load i32, ptr %812, align 4, !tbaa !24
  %814 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %792, i64 %704
  %815 = load i16, ptr %814, align 2, !tbaa !27
  %816 = trunc i32 %813 to i16
  %817 = add i16 %815, %816
  %818 = getelementptr inbounds i16, ptr %797, i64 %711
  store i16 %817, ptr %818, align 2, !tbaa !27
  %819 = getelementptr inbounds i8, ptr %666, i64 13316
  %820 = load i32, ptr %819, align 4, !tbaa !24
  %821 = getelementptr inbounds [16 x [16 x i16]], ptr %671, i64 0, i64 %792, i64 %715
  %822 = load i16, ptr %821, align 2, !tbaa !27
  %823 = trunc i32 %820 to i16
  %824 = add i16 %822, %823
  %825 = getelementptr inbounds i16, ptr %797, i64 %722
  store i16 %824, ptr %825, align 2, !tbaa !27
  br label %826

826:                                              ; preds = %564, %569, %665, %560
  %827 = phi i32 [ %345, %564 ], [ %373, %569 ], [ %667, %665 ], [ %373, %560 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret i32 %827
}

; Function Attrs: nounwind
define dso_local signext i32 @dct_chroma(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x [4 x i32]], align 4
  %5 = alloca [4 x [4 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %6, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %6, i64 14144
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = sext i32 %0 to i64
  %16 = getelementptr ptr, ptr %14, i64 %15
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %18, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %12, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = add i32 %23, -9
  %25 = and i32 %24, -6
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds i8, ptr %6, i64 90540
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = ashr i32 %28, 1
  %30 = mul nsw i32 %29, %0
  %31 = getelementptr inbounds i8, ptr %6, i64 90548
  %32 = load i32, ptr %31, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %33 = getelementptr inbounds i8, ptr %6, i64 90264
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = getelementptr inbounds i8, ptr %6, i64 90220
  %38 = load i32, ptr %37, align 4, !tbaa !32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %12, i64 424
  %42 = load i32, ptr %41, align 8, !tbaa !33
  %43 = freeze i32 %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %2, %40
  br label %46

46:                                               ; preds = %36, %40, %45
  %47 = phi ptr [ @FIELD_SCAN, %45 ], [ @SNGL_SCAN, %40 ], [ @SNGL_SCAN, %36 ]
  %48 = getelementptr inbounds i8, ptr %12, i64 12
  %49 = load i32, ptr %48, align 4, !tbaa !37
  %50 = getelementptr inbounds i8, ptr %6, i64 90492
  %51 = load i32, ptr %50, align 4, !tbaa !38
  %52 = sub i32 0, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %6, i64 90552
  %56 = load i32, ptr %55, align 8, !tbaa !39
  %57 = icmp eq i32 %56, 1
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi i1 [ false, %46 ], [ %57, %54 ]
  %60 = getelementptr inbounds i8, ptr %6, i64 90564
  %61 = getelementptr inbounds [2 x i32], ptr %60, i64 0, i64 %15
  %62 = load i32, ptr %61, align 4, !tbaa !24
  %63 = add nsw i32 %62, %49
  %64 = getelementptr inbounds i8, ptr %6, i64 90496
  %65 = load i32, ptr %64, align 8, !tbaa !55
  %66 = sub nsw i32 0, %65
  %67 = icmp slt i32 %63, %66
  %68 = tail call i32 @llvm.smin.i32(i32 %63, i32 51)
  %69 = select i1 %67, i32 %66, i32 %68
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %58
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !43
  %75 = zext i8 %74 to i32
  br label %76

76:                                               ; preds = %58, %71
  %77 = phi i32 [ %75, %71 ], [ %69, %58 ]
  %78 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !6
  %79 = add nsw i32 %77, %65
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !6
  %84 = getelementptr inbounds i32, ptr %83, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !24
  %86 = add nsw i32 %82, 15
  %87 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %15
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = zext i1 %26 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !6
  %94 = getelementptr inbounds ptr, ptr %93, i64 %15
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds ptr, ptr %95, i64 %90
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !6
  %99 = getelementptr inbounds ptr, ptr %98, i64 %15
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %90
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = icmp eq i32 %32, 2
  br i1 %103, label %104, label %112

104:                                              ; preds = %76
  %105 = add i32 %65, 3
  %106 = add i32 %105, %77
  %107 = freeze i32 %106
  %108 = sdiv i32 %107, 6
  %109 = mul i32 %108, 6
  %110 = sub i32 %107, %109
  %111 = add nsw i32 %108, 15
  br label %112

112:                                              ; preds = %104, %76
  %113 = phi i32 [ %108, %104 ], [ 0, %76 ]
  %114 = phi i32 [ %110, %104 ], [ 0, %76 ]
  %115 = phi i32 [ %111, %104 ], [ 0, %76 ]
  %116 = getelementptr inbounds i8, ptr %6, i64 90560
  %117 = load i32, ptr %116, align 8, !tbaa !56
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %301

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, ptr %6, i64 90556
  %121 = getelementptr inbounds i8, ptr %6, i64 13112
  %122 = load i32, ptr %120, align 4, !tbaa !57
  br label %123

123:                                              ; preds = %119, %295
  %124 = phi i32 [ %117, %119 ], [ %296, %295 ]
  %125 = phi i32 [ %122, %119 ], [ %297, %295 ]
  %126 = phi i64 [ 0, %119 ], [ %298, %295 ]
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %295

128:                                              ; preds = %123
  %129 = or disjoint i64 %126, 3
  %130 = or disjoint i64 %126, 1
  %131 = or disjoint i64 %126, 2
  %132 = or disjoint i64 %126, 1
  %133 = or disjoint i64 %126, 2
  %134 = or disjoint i64 %126, 3
  br label %135

135:                                              ; preds = %128, %288
  %136 = phi i64 [ 0, %128 ], [ %289, %288 ]
  br i1 %59, label %288, label %137

137:                                              ; preds = %135
  %138 = or disjoint i64 %136, 2
  %139 = or disjoint i64 %136, 1
  %140 = or disjoint i64 %136, 3
  %141 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %136
  %142 = load i32, ptr %141, align 4, !tbaa !24
  %143 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %140
  %144 = load i32, ptr %143, align 4, !tbaa !24
  %145 = add nsw i32 %144, %142
  %146 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %139
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %138
  %149 = load i32, ptr %148, align 4, !tbaa !24
  %150 = add nsw i32 %149, %147
  %151 = sub nsw i32 %147, %149
  %152 = sub nsw i32 %142, %144
  %153 = add nsw i32 %150, %145
  store i32 %153, ptr %141, align 4, !tbaa !24
  %154 = sub nsw i32 %145, %150
  store i32 %154, ptr %148, align 4, !tbaa !24
  %155 = shl nsw i32 %152, 1
  %156 = add nsw i32 %151, %155
  store i32 %156, ptr %146, align 4, !tbaa !24
  %157 = shl nsw i32 %151, 1
  %158 = sub nsw i32 %152, %157
  store i32 %158, ptr %143, align 4, !tbaa !24
  %159 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %132, i64 %136
  %160 = load i32, ptr %159, align 4, !tbaa !24
  %161 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %132, i64 %140
  %162 = load i32, ptr %161, align 4, !tbaa !24
  %163 = add nsw i32 %162, %160
  %164 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %132, i64 %139
  %165 = load i32, ptr %164, align 4, !tbaa !24
  %166 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %132, i64 %138
  %167 = load i32, ptr %166, align 4, !tbaa !24
  %168 = add nsw i32 %167, %165
  %169 = sub nsw i32 %165, %167
  %170 = sub nsw i32 %160, %162
  %171 = add nsw i32 %168, %163
  store i32 %171, ptr %159, align 4, !tbaa !24
  %172 = sub nsw i32 %163, %168
  store i32 %172, ptr %166, align 4, !tbaa !24
  %173 = shl nsw i32 %170, 1
  %174 = add nsw i32 %169, %173
  store i32 %174, ptr %164, align 4, !tbaa !24
  %175 = shl nsw i32 %169, 1
  %176 = sub nsw i32 %170, %175
  store i32 %176, ptr %161, align 4, !tbaa !24
  %177 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %133, i64 %136
  %178 = load i32, ptr %177, align 4, !tbaa !24
  %179 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %133, i64 %140
  %180 = load i32, ptr %179, align 4, !tbaa !24
  %181 = add nsw i32 %180, %178
  %182 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %133, i64 %139
  %183 = load i32, ptr %182, align 4, !tbaa !24
  %184 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %133, i64 %138
  %185 = load i32, ptr %184, align 4, !tbaa !24
  %186 = add nsw i32 %185, %183
  %187 = sub nsw i32 %183, %185
  %188 = sub nsw i32 %178, %180
  %189 = add nsw i32 %186, %181
  store i32 %189, ptr %177, align 4, !tbaa !24
  %190 = sub nsw i32 %181, %186
  store i32 %190, ptr %184, align 4, !tbaa !24
  %191 = shl nsw i32 %188, 1
  %192 = add nsw i32 %187, %191
  store i32 %192, ptr %182, align 4, !tbaa !24
  %193 = shl nsw i32 %187, 1
  %194 = sub nsw i32 %188, %193
  store i32 %194, ptr %179, align 4, !tbaa !24
  %195 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %134, i64 %136
  %196 = load i32, ptr %195, align 4, !tbaa !24
  %197 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %134, i64 %140
  %198 = load i32, ptr %197, align 4, !tbaa !24
  %199 = add nsw i32 %198, %196
  %200 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %134, i64 %139
  %201 = load i32, ptr %200, align 4, !tbaa !24
  %202 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %134, i64 %138
  %203 = load i32, ptr %202, align 4, !tbaa !24
  %204 = add nsw i32 %203, %201
  %205 = sub nsw i32 %201, %203
  %206 = sub nsw i32 %196, %198
  %207 = add nsw i32 %204, %199
  store i32 %207, ptr %195, align 4, !tbaa !24
  %208 = sub nsw i32 %199, %204
  store i32 %208, ptr %202, align 4, !tbaa !24
  %209 = shl nsw i32 %206, 1
  %210 = add nsw i32 %205, %209
  store i32 %210, ptr %200, align 4, !tbaa !24
  %211 = shl nsw i32 %205, 1
  %212 = sub nsw i32 %206, %211
  store i32 %212, ptr %197, align 4, !tbaa !24
  %213 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %136
  %214 = load i32, ptr %213, align 4, !tbaa !24
  %215 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %129, i64 %136
  %216 = load i32, ptr %215, align 4, !tbaa !24
  %217 = add nsw i32 %216, %214
  %218 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %130, i64 %136
  %219 = load i32, ptr %218, align 4, !tbaa !24
  %220 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %131, i64 %136
  %221 = load i32, ptr %220, align 4, !tbaa !24
  %222 = add nsw i32 %221, %219
  %223 = sub nsw i32 %219, %221
  %224 = sub nsw i32 %214, %216
  %225 = add nsw i32 %222, %217
  store i32 %225, ptr %213, align 4, !tbaa !24
  %226 = sub nsw i32 %217, %222
  store i32 %226, ptr %220, align 4, !tbaa !24
  %227 = shl nsw i32 %224, 1
  %228 = add nsw i32 %223, %227
  store i32 %228, ptr %218, align 4, !tbaa !24
  %229 = shl nsw i32 %223, 1
  %230 = sub nsw i32 %224, %229
  store i32 %230, ptr %215, align 4, !tbaa !24
  %231 = or disjoint i64 %136, 1
  %232 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !24
  %234 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %129, i64 %231
  %235 = load i32, ptr %234, align 4, !tbaa !24
  %236 = add nsw i32 %235, %233
  %237 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %130, i64 %231
  %238 = load i32, ptr %237, align 4, !tbaa !24
  %239 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %131, i64 %231
  %240 = load i32, ptr %239, align 4, !tbaa !24
  %241 = add nsw i32 %240, %238
  %242 = sub nsw i32 %238, %240
  %243 = sub nsw i32 %233, %235
  %244 = add nsw i32 %241, %236
  store i32 %244, ptr %232, align 4, !tbaa !24
  %245 = sub nsw i32 %236, %241
  store i32 %245, ptr %239, align 4, !tbaa !24
  %246 = shl nsw i32 %243, 1
  %247 = add nsw i32 %242, %246
  store i32 %247, ptr %237, align 4, !tbaa !24
  %248 = shl nsw i32 %242, 1
  %249 = sub nsw i32 %243, %248
  store i32 %249, ptr %234, align 4, !tbaa !24
  %250 = or disjoint i64 %136, 2
  %251 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !24
  %253 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %129, i64 %250
  %254 = load i32, ptr %253, align 4, !tbaa !24
  %255 = add nsw i32 %254, %252
  %256 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %130, i64 %250
  %257 = load i32, ptr %256, align 4, !tbaa !24
  %258 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %131, i64 %250
  %259 = load i32, ptr %258, align 4, !tbaa !24
  %260 = add nsw i32 %259, %257
  %261 = sub nsw i32 %257, %259
  %262 = sub nsw i32 %252, %254
  %263 = add nsw i32 %260, %255
  store i32 %263, ptr %251, align 4, !tbaa !24
  %264 = sub nsw i32 %255, %260
  store i32 %264, ptr %258, align 4, !tbaa !24
  %265 = shl nsw i32 %262, 1
  %266 = add nsw i32 %261, %265
  store i32 %266, ptr %256, align 4, !tbaa !24
  %267 = shl nsw i32 %261, 1
  %268 = sub nsw i32 %262, %267
  store i32 %268, ptr %253, align 4, !tbaa !24
  %269 = or disjoint i64 %136, 3
  %270 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %126, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !24
  %272 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %129, i64 %269
  %273 = load i32, ptr %272, align 4, !tbaa !24
  %274 = add nsw i32 %273, %271
  %275 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %130, i64 %269
  %276 = load i32, ptr %275, align 4, !tbaa !24
  %277 = getelementptr inbounds [16 x [16 x i32]], ptr %121, i64 0, i64 %131, i64 %269
  %278 = load i32, ptr %277, align 4, !tbaa !24
  %279 = add nsw i32 %278, %276
  %280 = sub nsw i32 %276, %278
  %281 = sub nsw i32 %271, %273
  %282 = add nsw i32 %279, %274
  store i32 %282, ptr %270, align 4, !tbaa !24
  %283 = sub nsw i32 %274, %279
  store i32 %283, ptr %277, align 4, !tbaa !24
  %284 = shl nsw i32 %281, 1
  %285 = add nsw i32 %280, %284
  store i32 %285, ptr %275, align 4, !tbaa !24
  %286 = shl nsw i32 %280, 1
  %287 = sub nsw i32 %281, %286
  store i32 %287, ptr %272, align 4, !tbaa !24
  br label %288

288:                                              ; preds = %137, %135
  %289 = add nuw nsw i64 %136, 4
  %290 = load i32, ptr %120, align 4, !tbaa !57
  %291 = sext i32 %290 to i64
  %292 = icmp slt i64 %289, %291
  br i1 %292, label %135, label %293

293:                                              ; preds = %288
  %294 = load i32, ptr %116, align 8, !tbaa !56
  br label %295

295:                                              ; preds = %293, %123
  %296 = phi i32 [ %124, %123 ], [ %294, %293 ]
  %297 = phi i32 [ %125, %123 ], [ %290, %293 ]
  %298 = add nuw nsw i64 %126, 4
  %299 = sext i32 %296 to i64
  %300 = icmp slt i64 %298, %299
  br i1 %300, label %123, label %301

301:                                              ; preds = %295, %112
  %302 = phi i32 [ %117, %112 ], [ %296, %295 ]
  switch i32 %32, label %1172 [
    i32 1, label %318
    i32 2, label %309
    i32 3, label %303
  ]

303:                                              ; preds = %301
  %304 = icmp sgt i32 %302, 0
  br i1 %304, label %305, label %786

305:                                              ; preds = %303
  %306 = getelementptr inbounds i8, ptr %6, i64 90556
  %307 = getelementptr inbounds i8, ptr %6, i64 13112
  %308 = load i32, ptr %306, align 4, !tbaa !57
  br label %777

309:                                              ; preds = %301
  %310 = icmp sgt i32 %302, 0
  br i1 %310, label %311, label %488

311:                                              ; preds = %309
  %312 = getelementptr inbounds i8, ptr %6, i64 90556
  %313 = load i32, ptr %312, align 4, !tbaa !57
  %314 = icmp sgt i32 %313, 0
  %315 = getelementptr inbounds i8, ptr %6, i64 13112
  %316 = sext i32 %313 to i64
  %317 = zext nneg i32 %302 to i64
  br label %473

318:                                              ; preds = %301
  %319 = getelementptr inbounds i8, ptr %6, i64 13112
  %320 = load i32, ptr %319, align 8, !tbaa !24
  %321 = getelementptr inbounds i8, ptr %6, i64 13128
  %322 = load i32, ptr %321, align 8, !tbaa !24
  br i1 %59, label %323, label %328

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %6, i64 13368
  %325 = load i32, ptr %324, align 8, !tbaa !24
  %326 = getelementptr inbounds i8, ptr %6, i64 13384
  %327 = load i32, ptr %326, align 8, !tbaa !24
  br label %343

328:                                              ; preds = %318
  %329 = add nsw i32 %322, %320
  %330 = getelementptr inbounds i8, ptr %6, i64 13368
  %331 = load i32, ptr %330, align 8, !tbaa !24
  %332 = getelementptr inbounds i8, ptr %6, i64 13384
  %333 = load i32, ptr %332, align 8, !tbaa !24
  %334 = add i32 %333, %331
  %335 = add i32 %334, %329
  %336 = add i32 %320, %331
  %337 = add i32 %322, %333
  %338 = sub i32 %336, %337
  %339 = sub i32 %329, %334
  %340 = add i32 %322, %331
  %341 = sub i32 %320, %340
  %342 = add nsw i32 %341, %333
  br label %343

343:                                              ; preds = %328, %323
  %344 = phi i32 [ %320, %323 ], [ %335, %328 ]
  %345 = phi i32 [ %322, %323 ], [ %338, %328 ]
  %346 = phi i32 [ %325, %323 ], [ %339, %328 ]
  %347 = phi i32 [ %327, %323 ], [ %342, %328 ]
  store i32 %344, ptr %3, align 4
  %348 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %345, ptr %348, align 4
  %349 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %346, ptr %349, align 4
  %350 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %347, ptr %350, align 4
  %351 = sext i32 %85 to i64
  %352 = getelementptr inbounds ptr, ptr %92, i64 %351
  %353 = sext i32 %82 to i64
  %354 = getelementptr inbounds ptr, ptr %97, i64 %353
  %355 = add nsw i32 %82, 16
  %356 = shl i32 %0, 2
  %357 = shl i32 983040, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %12, i64 368
  br label %360

360:                                              ; preds = %416, %343
  %361 = phi i64 [ 0, %343 ], [ %417, %416 ]
  %362 = phi i32 [ %1, %343 ], [ %412, %416 ]
  %363 = phi i32 [ 0, %343 ], [ %410, %416 ]
  %364 = phi i32 [ -1, %343 ], [ %409, %416 ]
  %365 = phi i32 [ 0, %343 ], [ %408, %416 ]
  %366 = add nsw i32 %364, 1
  %367 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %361
  %368 = load i32, ptr %367, align 4, !tbaa !24
  %369 = tail call i32 @llvm.abs.i32(i32 %368, i1 true)
  br i1 %59, label %381, label %370

370:                                              ; preds = %360
  %371 = load ptr, ptr %352, align 8, !tbaa !6
  %372 = load ptr, ptr %371, align 8, !tbaa !6
  %373 = load i32, ptr %372, align 4, !tbaa !24
  %374 = mul nsw i32 %373, %369
  %375 = load ptr, ptr %354, align 8, !tbaa !6
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = load i32, ptr %376, align 4, !tbaa !24
  %378 = shl i32 %377, 1
  %379 = add nsw i32 %378, %374
  %380 = ashr i32 %379, %355
  br label %381

381:                                              ; preds = %360, %370
  %382 = phi i32 [ %380, %370 ], [ %369, %360 ]
  %383 = load ptr, ptr @input, align 8, !tbaa !6
  %384 = getelementptr inbounds i8, ptr %383, i64 2984
  %385 = load i32, ptr %384, align 8, !tbaa !44
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %381
  %388 = load ptr, ptr @img, align 8, !tbaa !6
  %389 = getelementptr inbounds i8, ptr %388, i64 40
  %390 = load i32, ptr %389, align 8, !tbaa !45
  %391 = icmp slt i32 %390, 4
  %392 = tail call i32 @llvm.smin.i32(i32 %382, i32 2063)
  %393 = select i1 %391, i32 %392, i32 %382
  br label %394

394:                                              ; preds = %387, %381
  %395 = phi i32 [ %382, %381 ], [ %393, %387 ]
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %407, label %397

397:                                              ; preds = %394
  %398 = load i64, ptr %359, align 8, !tbaa !58
  %399 = or i64 %398, %358
  store i64 %399, ptr %359, align 8, !tbaa !58
  %400 = tail call i32 @llvm.smax.i32(i32 %362, i32 1)
  %401 = tail call signext i32 @sign(i32 noundef signext %395, i32 noundef signext %368) #7
  %402 = sext i32 %363 to i64
  %403 = getelementptr inbounds i32, ptr %19, i64 %402
  store i32 %401, ptr %403, align 4, !tbaa !24
  %404 = getelementptr inbounds i32, ptr %21, i64 %402
  store i32 %366, ptr %404, align 4, !tbaa !24
  %405 = add nsw i32 %363, 1
  %406 = tail call signext i32 @sign(i32 noundef signext %395, i32 noundef signext %368) #7
  br label %407

407:                                              ; preds = %397, %394
  %408 = phi i32 [ 1, %397 ], [ %365, %394 ]
  %409 = phi i32 [ -1, %397 ], [ %366, %394 ]
  %410 = phi i32 [ %405, %397 ], [ %363, %394 ]
  %411 = phi i32 [ %406, %397 ], [ 0, %394 ]
  %412 = phi i32 [ %400, %397 ], [ %362, %394 ]
  br i1 %59, label %413, label %418

413:                                              ; preds = %407
  %414 = add nuw nsw i64 %361, 1
  %415 = icmp eq i64 %414, 4
  br i1 %415, label %422, label %416

416:                                              ; preds = %413, %418
  %417 = phi i64 [ %414, %413 ], [ %420, %418 ]
  br label %360

418:                                              ; preds = %407
  %419 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %361
  store i32 %411, ptr %419, align 4, !tbaa !24
  %420 = add nuw nsw i64 %361, 1
  %421 = icmp eq i64 %420, 4
  br i1 %421, label %425, label %416

422:                                              ; preds = %413
  %423 = sext i32 %410 to i64
  %424 = getelementptr inbounds i32, ptr %19, i64 %423
  store i32 0, ptr %424, align 4, !tbaa !24
  br label %1172

425:                                              ; preds = %418
  %426 = sext i32 %410 to i64
  %427 = getelementptr inbounds i32, ptr %19, i64 %426
  store i32 0, ptr %427, align 4, !tbaa !24
  %428 = load i32, ptr %3, align 4, !tbaa !24
  %429 = load i32, ptr %348, align 4, !tbaa !24
  %430 = add nsw i32 %429, %428
  %431 = load i32, ptr %349, align 4, !tbaa !24
  %432 = load i32, ptr %350, align 4, !tbaa !24
  %433 = add i32 %432, %431
  %434 = add i32 %433, %430
  %435 = add i32 %428, %431
  %436 = add i32 %429, %432
  %437 = sub i32 %435, %436
  %438 = sub i32 %430, %433
  %439 = add i32 %429, %431
  %440 = sub i32 %428, %439
  %441 = add nsw i32 %440, %432
  %442 = icmp slt i32 %82, 5
  %443 = getelementptr inbounds ptr, ptr %102, i64 %351
  %444 = load ptr, ptr %443, align 8, !tbaa !6
  %445 = load ptr, ptr %444, align 8, !tbaa !6
  %446 = load i32, ptr %445, align 4, !tbaa !24
  %447 = mul nsw i32 %446, %434
  %448 = mul nsw i32 %446, %437
  %449 = mul nsw i32 %446, %438
  %450 = mul nsw i32 %446, %441
  br i1 %442, label %457, label %451

451:                                              ; preds = %425
  %452 = add nsw i32 %82, -5
  %453 = shl i32 %447, %452
  store i32 %453, ptr %3, align 4, !tbaa !24
  %454 = shl i32 %448, %452
  store i32 %454, ptr %348, align 4, !tbaa !24
  %455 = shl i32 %449, %452
  store i32 %455, ptr %349, align 4, !tbaa !24
  %456 = shl i32 %450, %452
  br label %463

457:                                              ; preds = %425
  %458 = sub nsw i32 5, %82
  %459 = ashr i32 %447, %458
  store i32 %459, ptr %3, align 4, !tbaa !24
  %460 = ashr i32 %448, %458
  store i32 %460, ptr %348, align 4, !tbaa !24
  %461 = ashr i32 %449, %458
  store i32 %461, ptr %349, align 4, !tbaa !24
  %462 = ashr i32 %450, %458
  br label %463

463:                                              ; preds = %451, %457
  %464 = phi i32 [ %456, %451 ], [ %462, %457 ]
  %465 = phi i32 [ %455, %451 ], [ %461, %457 ]
  %466 = phi i32 [ %454, %451 ], [ %460, %457 ]
  %467 = phi i32 [ %453, %451 ], [ %459, %457 ]
  store i32 %464, ptr %350, align 4, !tbaa !24
  %468 = load ptr, ptr @img, align 8, !tbaa !6
  %469 = getelementptr inbounds i8, ptr %468, i64 13112
  store i32 %467, ptr %469, align 8, !tbaa !24
  %470 = getelementptr inbounds i8, ptr %468, i64 13128
  store i32 %466, ptr %470, align 8, !tbaa !24
  %471 = getelementptr inbounds i8, ptr %468, i64 13368
  store i32 %465, ptr %471, align 8, !tbaa !24
  %472 = getelementptr inbounds i8, ptr %468, i64 13384
  store i32 %464, ptr %472, align 8, !tbaa !24
  br label %1172

473:                                              ; preds = %311, %485
  %474 = phi i64 [ 0, %311 ], [ %486, %485 ]
  br i1 %314, label %475, label %485

475:                                              ; preds = %473
  %476 = lshr exact i64 %474, 2
  br label %477

477:                                              ; preds = %475, %477
  %478 = phi i64 [ 0, %475 ], [ %483, %477 ]
  %479 = getelementptr inbounds [16 x [16 x i32]], ptr %315, i64 0, i64 %474, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !24
  %481 = lshr exact i64 %478, 2
  %482 = getelementptr inbounds [4 x [4 x i32]], ptr %4, i64 0, i64 %481, i64 %476
  store i32 %480, ptr %482, align 4, !tbaa !24
  %483 = add nuw nsw i64 %478, 4
  %484 = icmp slt i64 %483, %316
  br i1 %484, label %477, label %485

485:                                              ; preds = %477, %473
  %486 = add nuw nsw i64 %474, 4
  %487 = icmp ult i64 %486, %317
  br i1 %487, label %473, label %488

488:                                              ; preds = %485, %309
  br i1 %59, label %536, label %489

489:                                              ; preds = %488
  %490 = load i32, ptr %4, align 4, !tbaa !24
  %491 = getelementptr inbounds i8, ptr %4, i64 16
  %492 = load i32, ptr %491, align 4, !tbaa !24
  %493 = add nsw i32 %492, %490
  %494 = getelementptr inbounds i8, ptr %4, i64 4
  %495 = load i32, ptr %494, align 4, !tbaa !24
  %496 = getelementptr inbounds i8, ptr %4, i64 20
  %497 = load i32, ptr %496, align 4, !tbaa !24
  %498 = add nsw i32 %497, %495
  %499 = getelementptr inbounds i8, ptr %5, i64 4
  %500 = getelementptr inbounds i8, ptr %4, i64 8
  %501 = load i32, ptr %500, align 4, !tbaa !24
  %502 = getelementptr inbounds i8, ptr %4, i64 24
  %503 = load i32, ptr %502, align 4, !tbaa !24
  %504 = add nsw i32 %503, %501
  %505 = getelementptr inbounds i8, ptr %5, i64 8
  %506 = getelementptr inbounds i8, ptr %4, i64 12
  %507 = load i32, ptr %506, align 4, !tbaa !24
  %508 = getelementptr inbounds i8, ptr %4, i64 28
  %509 = load i32, ptr %508, align 4, !tbaa !24
  %510 = add nsw i32 %509, %507
  %511 = getelementptr inbounds i8, ptr %5, i64 12
  %512 = sub nsw i32 %490, %492
  %513 = getelementptr inbounds i8, ptr %5, i64 16
  %514 = sub nsw i32 %495, %497
  %515 = sub nsw i32 %501, %503
  %516 = sub nsw i32 %507, %509
  %517 = add nsw i32 %510, %493
  %518 = add nsw i32 %504, %498
  %519 = sub nsw i32 %498, %504
  %520 = sub nsw i32 %493, %510
  %521 = add nsw i32 %518, %517
  store i32 %521, ptr %5, align 4, !tbaa !24
  %522 = sub nsw i32 %517, %518
  store i32 %522, ptr %505, align 4, !tbaa !24
  %523 = add nsw i32 %519, %520
  store i32 %523, ptr %499, align 4, !tbaa !24
  %524 = sub nsw i32 %520, %519
  store i32 %524, ptr %511, align 4, !tbaa !24
  %525 = getelementptr inbounds i8, ptr %5, i64 28
  %526 = add nsw i32 %516, %512
  %527 = getelementptr inbounds i8, ptr %5, i64 20
  %528 = getelementptr inbounds i8, ptr %5, i64 24
  %529 = add nsw i32 %515, %514
  %530 = sub nsw i32 %514, %515
  %531 = sub nsw i32 %512, %516
  %532 = add nsw i32 %529, %526
  store i32 %532, ptr %513, align 4, !tbaa !24
  %533 = sub nsw i32 %526, %529
  store i32 %533, ptr %528, align 4, !tbaa !24
  %534 = add nsw i32 %530, %531
  store i32 %534, ptr %527, align 4, !tbaa !24
  %535 = sub nsw i32 %531, %530
  store i32 %535, ptr %525, align 4, !tbaa !24
  br label %536

536:                                              ; preds = %489, %488
  %537 = sext i32 %114 to i64
  %538 = getelementptr inbounds ptr, ptr %92, i64 %537
  %539 = sext i32 %113 to i64
  %540 = getelementptr inbounds ptr, ptr %97, i64 %539
  %541 = add nsw i32 %115, 1
  %542 = shl i32 %0, 3
  %543 = shl i32 16711680, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, ptr %12, i64 368
  br label %546

546:                                              ; preds = %599, %536
  %547 = phi i64 [ 0, %536 ], [ %600, %599 ]
  %548 = phi i32 [ %1, %536 ], [ %595, %599 ]
  %549 = phi i32 [ 0, %536 ], [ %594, %599 ]
  %550 = phi i32 [ -1, %536 ], [ %593, %599 ]
  %551 = phi i32 [ 0, %536 ], [ %592, %599 ]
  %552 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %547
  %553 = load i8, ptr %552, align 1, !tbaa !43
  %554 = getelementptr inbounds i8, ptr %552, i64 1
  %555 = load i8, ptr %554, align 1, !tbaa !43
  %556 = add nsw i32 %550, 1
  %557 = zext i8 %553 to i64
  %558 = zext i8 %555 to i64
  br i1 %59, label %559, label %564

559:                                              ; preds = %546
  %560 = getelementptr inbounds [4 x [4 x i32]], ptr %4, i64 0, i64 %557, i64 %558
  %561 = load i32, ptr %560, align 4, !tbaa !24
  %562 = tail call i32 @llvm.abs.i32(i32 %561, i1 true)
  %563 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %557, i64 %558
  store i32 %561, ptr %563, align 4, !tbaa !24
  br label %578

564:                                              ; preds = %546
  %565 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %557, i64 %558
  %566 = load i32, ptr %565, align 4, !tbaa !24
  %567 = tail call i32 @llvm.abs.i32(i32 %566, i1 true)
  %568 = load ptr, ptr %538, align 8, !tbaa !6
  %569 = load ptr, ptr %568, align 8, !tbaa !6
  %570 = load i32, ptr %569, align 4, !tbaa !24
  %571 = mul nsw i32 %570, %567
  %572 = load ptr, ptr %540, align 8, !tbaa !6
  %573 = load ptr, ptr %572, align 8, !tbaa !6
  %574 = load i32, ptr %573, align 4, !tbaa !24
  %575 = shl nsw i32 %574, 1
  %576 = add nsw i32 %575, %571
  %577 = ashr i32 %576, %541
  br label %578

578:                                              ; preds = %564, %559
  %579 = phi i32 [ %561, %559 ], [ %566, %564 ]
  %580 = phi i32 [ %562, %559 ], [ %577, %564 ]
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %591, label %582

582:                                              ; preds = %578
  %583 = load i64, ptr %545, align 8, !tbaa !58
  %584 = or i64 %583, %544
  store i64 %584, ptr %545, align 8, !tbaa !58
  %585 = tail call i32 @llvm.smax.i32(i32 %548, i32 1)
  %586 = tail call signext i32 @sign(i32 noundef signext %580, i32 noundef signext %579) #7
  %587 = sext i32 %549 to i64
  %588 = getelementptr inbounds i32, ptr %19, i64 %587
  store i32 %586, ptr %588, align 4, !tbaa !24
  %589 = getelementptr inbounds i32, ptr %21, i64 %587
  store i32 %556, ptr %589, align 4, !tbaa !24
  %590 = add nsw i32 %549, 1
  br label %591

591:                                              ; preds = %582, %578
  %592 = phi i32 [ 1, %582 ], [ %551, %578 ]
  %593 = phi i32 [ -1, %582 ], [ %556, %578 ]
  %594 = phi i32 [ %590, %582 ], [ %549, %578 ]
  %595 = phi i32 [ %585, %582 ], [ %548, %578 ]
  br i1 %59, label %596, label %601

596:                                              ; preds = %591
  %597 = add nuw nsw i64 %547, 1
  %598 = icmp eq i64 %597, 8
  br i1 %598, label %610, label %599

599:                                              ; preds = %596, %601
  %600 = phi i64 [ %597, %596 ], [ %608, %601 ]
  br label %546

601:                                              ; preds = %591
  %602 = zext i8 %553 to i64
  %603 = zext i8 %555 to i64
  %604 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %602, i64 %603
  %605 = load i32, ptr %604, align 4, !tbaa !24
  %606 = tail call signext i32 @sign(i32 noundef signext %580, i32 noundef signext %605) #7
  %607 = getelementptr inbounds [4 x [4 x i32]], ptr %4, i64 0, i64 %602, i64 %603
  store i32 %606, ptr %607, align 4, !tbaa !24
  %608 = add nuw nsw i64 %547, 1
  %609 = icmp eq i64 %608, 8
  br i1 %609, label %613, label %599

610:                                              ; preds = %596
  %611 = sext i32 %594 to i64
  %612 = getelementptr inbounds i32, ptr %19, i64 %611
  store i32 0, ptr %612, align 4, !tbaa !24
  br label %1172

613:                                              ; preds = %601
  %614 = sext i32 %594 to i64
  %615 = getelementptr inbounds i32, ptr %19, i64 %614
  store i32 0, ptr %615, align 4, !tbaa !24
  %616 = load i32, ptr %4, align 4, !tbaa !24
  %617 = getelementptr inbounds i8, ptr %4, i64 16
  %618 = load i32, ptr %617, align 4, !tbaa !24
  %619 = add nsw i32 %618, %616
  store i32 %619, ptr %5, align 4, !tbaa !24
  %620 = getelementptr inbounds i8, ptr %4, i64 4
  %621 = load i32, ptr %620, align 4, !tbaa !24
  %622 = getelementptr inbounds i8, ptr %4, i64 20
  %623 = load i32, ptr %622, align 4, !tbaa !24
  %624 = add nsw i32 %623, %621
  %625 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %624, ptr %625, align 4, !tbaa !24
  %626 = getelementptr inbounds i8, ptr %4, i64 8
  %627 = load i32, ptr %626, align 4, !tbaa !24
  %628 = getelementptr inbounds i8, ptr %4, i64 24
  %629 = load i32, ptr %628, align 4, !tbaa !24
  %630 = add nsw i32 %629, %627
  %631 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %630, ptr %631, align 4, !tbaa !24
  %632 = getelementptr inbounds i8, ptr %4, i64 12
  %633 = load i32, ptr %632, align 4, !tbaa !24
  %634 = getelementptr inbounds i8, ptr %4, i64 28
  %635 = load i32, ptr %634, align 4, !tbaa !24
  %636 = add nsw i32 %635, %633
  %637 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %636, ptr %637, align 4, !tbaa !24
  %638 = sub nsw i32 %616, %618
  %639 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 %638, ptr %639, align 4, !tbaa !24
  %640 = sub nsw i32 %621, %623
  %641 = getelementptr inbounds i8, ptr %5, i64 20
  store i32 %640, ptr %641, align 4, !tbaa !24
  %642 = sub nsw i32 %627, %629
  %643 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 %642, ptr %643, align 4, !tbaa !24
  %644 = sub nsw i32 %633, %635
  %645 = getelementptr inbounds i8, ptr %5, i64 28
  store i32 %644, ptr %645, align 4, !tbaa !24
  %646 = icmp slt i32 %113, 4
  %647 = getelementptr inbounds ptr, ptr %102, i64 %537
  %648 = add nsw i32 %113, -4
  %649 = load ptr, ptr @img, align 8
  %650 = getelementptr inbounds i8, ptr %649, i64 13112
  %651 = getelementptr inbounds i8, ptr %649, i64 13368
  %652 = getelementptr inbounds i8, ptr %649, i64 13624
  %653 = getelementptr inbounds i8, ptr %649, i64 13880
  %654 = sub nsw i32 3, %113
  %655 = shl nuw i32 1, %654
  %656 = sub nsw i32 4, %113
  %657 = add nsw i32 %630, %619
  %658 = sub nsw i32 %619, %630
  %659 = sub nsw i32 %624, %636
  %660 = add nsw i32 %636, %624
  %661 = add nsw i32 %660, %657
  %662 = load ptr, ptr %647, align 8, !tbaa !6
  %663 = load ptr, ptr %662, align 8, !tbaa !6
  %664 = load i32, ptr %663, align 4, !tbaa !24
  %665 = mul nsw i32 %664, %661
  br i1 %646, label %666, label %690

666:                                              ; preds = %613
  %667 = add nsw i32 %665, %655
  %668 = ashr i32 %667, %656
  %669 = add nsw i32 %668, 2
  %670 = ashr i32 %669, 2
  store i32 %670, ptr %650, align 4, !tbaa !24
  %671 = add nsw i32 %659, %658
  %672 = load i32, ptr %663, align 4, !tbaa !24
  %673 = mul nsw i32 %672, %671
  %674 = add nsw i32 %673, %655
  %675 = ashr i32 %674, %656
  %676 = add nsw i32 %675, 2
  %677 = ashr i32 %676, 2
  store i32 %677, ptr %651, align 4, !tbaa !24
  %678 = sub nsw i32 %658, %659
  %679 = load i32, ptr %663, align 4, !tbaa !24
  %680 = mul nsw i32 %679, %678
  %681 = add nsw i32 %680, %655
  %682 = ashr i32 %681, %656
  %683 = add nsw i32 %682, 2
  %684 = ashr i32 %683, 2
  store i32 %684, ptr %652, align 4, !tbaa !24
  %685 = sub nsw i32 %657, %660
  %686 = load i32, ptr %663, align 4, !tbaa !24
  %687 = mul nsw i32 %686, %685
  %688 = add nsw i32 %687, %655
  %689 = ashr i32 %688, %656
  br label %710

690:                                              ; preds = %613
  %691 = shl i32 %665, %648
  %692 = add nsw i32 %691, 2
  %693 = ashr i32 %692, 2
  store i32 %693, ptr %650, align 4, !tbaa !24
  %694 = add nsw i32 %659, %658
  %695 = load i32, ptr %663, align 4, !tbaa !24
  %696 = mul nsw i32 %695, %694
  %697 = shl i32 %696, %648
  %698 = add nsw i32 %697, 2
  %699 = ashr i32 %698, 2
  store i32 %699, ptr %651, align 4, !tbaa !24
  %700 = sub nsw i32 %658, %659
  %701 = load i32, ptr %663, align 4, !tbaa !24
  %702 = mul nsw i32 %701, %700
  %703 = shl i32 %702, %648
  %704 = add nsw i32 %703, 2
  %705 = ashr i32 %704, 2
  store i32 %705, ptr %652, align 4, !tbaa !24
  %706 = sub nsw i32 %657, %660
  %707 = load i32, ptr %663, align 4, !tbaa !24
  %708 = mul nsw i32 %707, %706
  %709 = shl i32 %708, %648
  br label %710

710:                                              ; preds = %666, %690
  %711 = phi i32 [ %709, %690 ], [ %689, %666 ]
  %712 = add nsw i32 %711, 2
  %713 = ashr i32 %712, 2
  store i32 %713, ptr %653, align 4, !tbaa !24
  %714 = add nsw i32 %642, %638
  %715 = sub nsw i32 %638, %642
  %716 = sub nsw i32 %640, %644
  %717 = add nsw i32 %644, %640
  %718 = add nsw i32 %717, %714
  %719 = load i32, ptr %663, align 4, !tbaa !24
  %720 = mul nsw i32 %719, %718
  br i1 %646, label %747, label %721

721:                                              ; preds = %710
  %722 = shl i32 %720, %648
  %723 = add nsw i32 %722, 2
  %724 = ashr i32 %723, 2
  %725 = getelementptr inbounds i8, ptr %649, i64 13128
  store i32 %724, ptr %725, align 4, !tbaa !24
  %726 = add nsw i32 %716, %715
  %727 = load i32, ptr %663, align 4, !tbaa !24
  %728 = mul nsw i32 %727, %726
  %729 = shl i32 %728, %648
  %730 = add nsw i32 %729, 2
  %731 = ashr i32 %730, 2
  %732 = getelementptr inbounds i8, ptr %649, i64 13384
  store i32 %731, ptr %732, align 4, !tbaa !24
  %733 = sub nsw i32 %715, %716
  %734 = load i32, ptr %663, align 4, !tbaa !24
  %735 = mul nsw i32 %734, %733
  %736 = shl i32 %735, %648
  %737 = add nsw i32 %736, 2
  %738 = ashr i32 %737, 2
  %739 = getelementptr inbounds i8, ptr %649, i64 13640
  store i32 %738, ptr %739, align 4, !tbaa !24
  %740 = sub nsw i32 %714, %717
  %741 = load i32, ptr %663, align 4, !tbaa !24
  %742 = mul nsw i32 %741, %740
  %743 = shl i32 %742, %648
  %744 = add nsw i32 %743, 2
  %745 = ashr i32 %744, 2
  %746 = getelementptr inbounds i8, ptr %649, i64 13896
  store i32 %745, ptr %746, align 4, !tbaa !24
  br label %1172

747:                                              ; preds = %710
  %748 = add nsw i32 %720, %655
  %749 = ashr i32 %748, %656
  %750 = add nsw i32 %749, 2
  %751 = ashr i32 %750, 2
  %752 = getelementptr inbounds i8, ptr %649, i64 13128
  store i32 %751, ptr %752, align 4, !tbaa !24
  %753 = add nsw i32 %716, %715
  %754 = load i32, ptr %663, align 4, !tbaa !24
  %755 = mul nsw i32 %754, %753
  %756 = add nsw i32 %755, %655
  %757 = ashr i32 %756, %656
  %758 = add nsw i32 %757, 2
  %759 = ashr i32 %758, 2
  %760 = getelementptr inbounds i8, ptr %649, i64 13384
  store i32 %759, ptr %760, align 4, !tbaa !24
  %761 = sub nsw i32 %715, %716
  %762 = load i32, ptr %663, align 4, !tbaa !24
  %763 = mul nsw i32 %762, %761
  %764 = add nsw i32 %763, %655
  %765 = ashr i32 %764, %656
  %766 = add nsw i32 %765, 2
  %767 = ashr i32 %766, 2
  %768 = getelementptr inbounds i8, ptr %649, i64 13640
  store i32 %767, ptr %768, align 4, !tbaa !24
  %769 = sub nsw i32 %714, %717
  %770 = load i32, ptr %663, align 4, !tbaa !24
  %771 = mul nsw i32 %770, %769
  %772 = add nsw i32 %771, %655
  %773 = ashr i32 %772, %656
  %774 = add nsw i32 %773, 2
  %775 = ashr i32 %774, 2
  %776 = getelementptr inbounds i8, ptr %649, i64 13896
  store i32 %775, ptr %776, align 4, !tbaa !24
  br label %1172

777:                                              ; preds = %305, %797
  %778 = phi i32 [ %302, %305 ], [ %798, %797 ]
  %779 = phi i32 [ %308, %305 ], [ %799, %797 ]
  %780 = phi i64 [ 0, %305 ], [ %800, %797 ]
  %781 = icmp sgt i32 %779, 0
  br i1 %781, label %782, label %797

782:                                              ; preds = %777
  %783 = lshr exact i64 %780, 2
  %784 = load i32, ptr %306, align 4, !tbaa !57
  %785 = sext i32 %784 to i64
  br label %787

786:                                              ; preds = %797, %303
  br i1 %59, label %946, label %803

787:                                              ; preds = %782, %787
  %788 = phi i64 [ 0, %782 ], [ %793, %787 ]
  %789 = getelementptr inbounds [16 x [16 x i32]], ptr %307, i64 0, i64 %780, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !24
  %791 = lshr exact i64 %788, 2
  %792 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %791, i64 %783
  store i32 %790, ptr %792, align 4, !tbaa !24
  %793 = add nuw nsw i64 %788, 4
  %794 = icmp slt i64 %793, %785
  br i1 %794, label %787, label %795

795:                                              ; preds = %787
  %796 = load i32, ptr %116, align 8, !tbaa !56
  br label %797

797:                                              ; preds = %795, %777
  %798 = phi i32 [ %796, %795 ], [ %778, %777 ]
  %799 = phi i32 [ %784, %795 ], [ %779, %777 ]
  %800 = add nuw nsw i64 %780, 4
  %801 = sext i32 %798 to i64
  %802 = icmp slt i64 %800, %801
  br i1 %802, label %777, label %786

803:                                              ; preds = %786
  %804 = getelementptr inbounds i8, ptr %5, i64 32
  %805 = getelementptr inbounds i8, ptr %5, i64 16
  %806 = getelementptr inbounds i8, ptr %5, i64 48
  %807 = load i32, ptr %5, align 4, !tbaa !24
  %808 = load i32, ptr %806, align 4, !tbaa !24
  %809 = add nsw i32 %808, %807
  %810 = load i32, ptr %805, align 4, !tbaa !24
  %811 = load i32, ptr %804, align 4, !tbaa !24
  %812 = add nsw i32 %811, %810
  %813 = sub nsw i32 %810, %811
  %814 = sub nsw i32 %807, %808
  %815 = add nsw i32 %812, %809
  store i32 %815, ptr %5, align 4, !tbaa !24
  %816 = sub nsw i32 %809, %812
  store i32 %816, ptr %804, align 4, !tbaa !24
  %817 = add nsw i32 %813, %814
  store i32 %817, ptr %805, align 4, !tbaa !24
  %818 = sub nsw i32 %814, %813
  store i32 %818, ptr %806, align 4, !tbaa !24
  %819 = getelementptr inbounds i8, ptr %5, i64 4
  %820 = load i32, ptr %819, align 4, !tbaa !24
  %821 = getelementptr inbounds i8, ptr %5, i64 52
  %822 = load i32, ptr %821, align 4, !tbaa !24
  %823 = add nsw i32 %822, %820
  %824 = getelementptr inbounds i8, ptr %5, i64 20
  %825 = load i32, ptr %824, align 4, !tbaa !24
  %826 = getelementptr inbounds i8, ptr %5, i64 36
  %827 = load i32, ptr %826, align 4, !tbaa !24
  %828 = add nsw i32 %827, %825
  %829 = sub nsw i32 %825, %827
  %830 = sub nsw i32 %820, %822
  %831 = add nsw i32 %828, %823
  store i32 %831, ptr %819, align 4, !tbaa !24
  %832 = sub nsw i32 %823, %828
  store i32 %832, ptr %826, align 4, !tbaa !24
  %833 = add nsw i32 %829, %830
  store i32 %833, ptr %824, align 4, !tbaa !24
  %834 = sub nsw i32 %830, %829
  store i32 %834, ptr %821, align 4, !tbaa !24
  %835 = getelementptr inbounds i8, ptr %5, i64 8
  %836 = load i32, ptr %835, align 4, !tbaa !24
  %837 = getelementptr inbounds i8, ptr %5, i64 56
  %838 = load i32, ptr %837, align 4, !tbaa !24
  %839 = add nsw i32 %838, %836
  %840 = getelementptr inbounds i8, ptr %5, i64 24
  %841 = load i32, ptr %840, align 4, !tbaa !24
  %842 = getelementptr inbounds i8, ptr %5, i64 40
  %843 = load i32, ptr %842, align 4, !tbaa !24
  %844 = add nsw i32 %843, %841
  %845 = sub nsw i32 %841, %843
  %846 = sub nsw i32 %836, %838
  %847 = add nsw i32 %844, %839
  store i32 %847, ptr %835, align 4, !tbaa !24
  %848 = sub nsw i32 %839, %844
  store i32 %848, ptr %842, align 4, !tbaa !24
  %849 = add nsw i32 %845, %846
  store i32 %849, ptr %840, align 4, !tbaa !24
  %850 = sub nsw i32 %846, %845
  store i32 %850, ptr %837, align 4, !tbaa !24
  %851 = getelementptr inbounds i8, ptr %5, i64 12
  %852 = load i32, ptr %851, align 4, !tbaa !24
  %853 = getelementptr inbounds i8, ptr %5, i64 60
  %854 = load i32, ptr %853, align 4, !tbaa !24
  %855 = add nsw i32 %854, %852
  %856 = getelementptr inbounds i8, ptr %5, i64 28
  %857 = load i32, ptr %856, align 4, !tbaa !24
  %858 = getelementptr inbounds i8, ptr %5, i64 44
  %859 = load i32, ptr %858, align 4, !tbaa !24
  %860 = add nsw i32 %859, %857
  %861 = sub nsw i32 %857, %859
  %862 = sub nsw i32 %852, %854
  %863 = add nsw i32 %860, %855
  store i32 %863, ptr %851, align 4, !tbaa !24
  %864 = sub nsw i32 %855, %860
  store i32 %864, ptr %858, align 4, !tbaa !24
  %865 = add nsw i32 %861, %862
  store i32 %865, ptr %856, align 4, !tbaa !24
  %866 = sub nsw i32 %862, %861
  store i32 %866, ptr %853, align 4, !tbaa !24
  %867 = load i32, ptr %5, align 4, !tbaa !24
  %868 = getelementptr inbounds i8, ptr %5, i64 12
  %869 = load i32, ptr %868, align 4, !tbaa !24
  %870 = add nsw i32 %869, %867
  %871 = getelementptr inbounds i8, ptr %5, i64 4
  %872 = load i32, ptr %871, align 4, !tbaa !24
  %873 = getelementptr inbounds i8, ptr %5, i64 8
  %874 = load i32, ptr %873, align 4, !tbaa !24
  %875 = add nsw i32 %874, %872
  %876 = sub nsw i32 %872, %874
  %877 = sub nsw i32 %867, %869
  %878 = add nsw i32 %875, %870
  %879 = ashr i32 %878, 1
  store i32 %879, ptr %5, align 4, !tbaa !24
  %880 = sub nsw i32 %870, %875
  %881 = ashr i32 %880, 1
  store i32 %881, ptr %873, align 4, !tbaa !24
  %882 = add nsw i32 %876, %877
  %883 = ashr i32 %882, 1
  store i32 %883, ptr %871, align 4, !tbaa !24
  %884 = sub nsw i32 %877, %876
  %885 = ashr i32 %884, 1
  store i32 %885, ptr %868, align 4, !tbaa !24
  %886 = getelementptr inbounds i8, ptr %5, i64 16
  %887 = load i32, ptr %886, align 4, !tbaa !24
  %888 = getelementptr inbounds i8, ptr %5, i64 28
  %889 = load i32, ptr %888, align 4, !tbaa !24
  %890 = add nsw i32 %889, %887
  %891 = getelementptr inbounds i8, ptr %5, i64 20
  %892 = load i32, ptr %891, align 4, !tbaa !24
  %893 = getelementptr inbounds i8, ptr %5, i64 24
  %894 = load i32, ptr %893, align 4, !tbaa !24
  %895 = add nsw i32 %894, %892
  %896 = sub nsw i32 %892, %894
  %897 = sub nsw i32 %887, %889
  %898 = add nsw i32 %895, %890
  %899 = ashr i32 %898, 1
  store i32 %899, ptr %886, align 4, !tbaa !24
  %900 = sub nsw i32 %890, %895
  %901 = ashr i32 %900, 1
  store i32 %901, ptr %893, align 4, !tbaa !24
  %902 = add nsw i32 %896, %897
  %903 = ashr i32 %902, 1
  store i32 %903, ptr %891, align 4, !tbaa !24
  %904 = sub nsw i32 %897, %896
  %905 = ashr i32 %904, 1
  store i32 %905, ptr %888, align 4, !tbaa !24
  %906 = getelementptr inbounds i8, ptr %5, i64 32
  %907 = load i32, ptr %906, align 4, !tbaa !24
  %908 = getelementptr inbounds i8, ptr %5, i64 44
  %909 = load i32, ptr %908, align 4, !tbaa !24
  %910 = add nsw i32 %909, %907
  %911 = getelementptr inbounds i8, ptr %5, i64 36
  %912 = load i32, ptr %911, align 4, !tbaa !24
  %913 = getelementptr inbounds i8, ptr %5, i64 40
  %914 = load i32, ptr %913, align 4, !tbaa !24
  %915 = add nsw i32 %914, %912
  %916 = sub nsw i32 %912, %914
  %917 = sub nsw i32 %907, %909
  %918 = add nsw i32 %915, %910
  %919 = ashr i32 %918, 1
  store i32 %919, ptr %906, align 4, !tbaa !24
  %920 = sub nsw i32 %910, %915
  %921 = ashr i32 %920, 1
  store i32 %921, ptr %913, align 4, !tbaa !24
  %922 = add nsw i32 %916, %917
  %923 = ashr i32 %922, 1
  store i32 %923, ptr %911, align 4, !tbaa !24
  %924 = sub nsw i32 %917, %916
  %925 = ashr i32 %924, 1
  store i32 %925, ptr %908, align 4, !tbaa !24
  %926 = getelementptr inbounds i8, ptr %5, i64 48
  %927 = load i32, ptr %926, align 4, !tbaa !24
  %928 = getelementptr inbounds i8, ptr %5, i64 60
  %929 = load i32, ptr %928, align 4, !tbaa !24
  %930 = add nsw i32 %929, %927
  %931 = getelementptr inbounds i8, ptr %5, i64 52
  %932 = load i32, ptr %931, align 4, !tbaa !24
  %933 = getelementptr inbounds i8, ptr %5, i64 56
  %934 = load i32, ptr %933, align 4, !tbaa !24
  %935 = add nsw i32 %934, %932
  %936 = sub nsw i32 %932, %934
  %937 = sub nsw i32 %927, %929
  %938 = add nsw i32 %935, %930
  %939 = ashr i32 %938, 1
  store i32 %939, ptr %926, align 4, !tbaa !24
  %940 = sub nsw i32 %930, %935
  %941 = ashr i32 %940, 1
  store i32 %941, ptr %933, align 4, !tbaa !24
  %942 = add nsw i32 %936, %937
  %943 = ashr i32 %942, 1
  store i32 %943, ptr %931, align 4, !tbaa !24
  %944 = sub nsw i32 %937, %936
  %945 = ashr i32 %944, 1
  store i32 %945, ptr %928, align 4, !tbaa !24
  br label %946

946:                                              ; preds = %803, %786
  %947 = sext i32 %85 to i64
  %948 = getelementptr inbounds ptr, ptr %92, i64 %947
  %949 = sext i32 %82 to i64
  %950 = getelementptr inbounds ptr, ptr %97, i64 %949
  %951 = add nsw i32 %82, 16
  %952 = shl i32 %0, 4
  %953 = zext nneg i32 %952 to i64
  %954 = shl i64 4294901760, %953
  %955 = getelementptr inbounds i8, ptr %12, i64 368
  br label %956

956:                                              ; preds = %1003, %946
  %957 = phi i64 [ 0, %946 ], [ %1004, %1003 ]
  %958 = phi i32 [ %1, %946 ], [ %999, %1003 ]
  %959 = phi i32 [ 0, %946 ], [ %998, %1003 ]
  %960 = phi i32 [ -1, %946 ], [ %997, %1003 ]
  %961 = phi i32 [ 0, %946 ], [ %996, %1003 ]
  %962 = getelementptr inbounds [16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 %957
  %963 = load i8, ptr %962, align 1, !tbaa !43
  %964 = getelementptr inbounds i8, ptr %962, i64 1
  %965 = load i8, ptr %964, align 1, !tbaa !43
  %966 = add nsw i32 %960, 1
  %967 = zext i8 %963 to i64
  %968 = zext i8 %965 to i64
  %969 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %967, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !24
  %971 = tail call i32 @llvm.abs.i32(i32 %970, i1 true)
  br i1 %59, label %983, label %972

972:                                              ; preds = %956
  %973 = load ptr, ptr %948, align 8, !tbaa !6
  %974 = load ptr, ptr %973, align 8, !tbaa !6
  %975 = load i32, ptr %974, align 4, !tbaa !24
  %976 = mul nsw i32 %975, %971
  %977 = load ptr, ptr %950, align 8, !tbaa !6
  %978 = load ptr, ptr %977, align 8, !tbaa !6
  %979 = load i32, ptr %978, align 4, !tbaa !24
  %980 = shl nsw i32 %979, 1
  %981 = add nsw i32 %980, %976
  %982 = ashr i32 %981, %951
  br label %983

983:                                              ; preds = %956, %972
  %984 = phi i32 [ %982, %972 ], [ %971, %956 ]
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %995, label %986

986:                                              ; preds = %983
  %987 = load i64, ptr %955, align 8, !tbaa !58
  %988 = or i64 %987, %954
  store i64 %988, ptr %955, align 8, !tbaa !58
  %989 = tail call i32 @llvm.smax.i32(i32 %958, i32 1)
  %990 = tail call signext i32 @sign(i32 noundef signext %984, i32 noundef signext %970) #7
  %991 = sext i32 %959 to i64
  %992 = getelementptr inbounds i32, ptr %19, i64 %991
  store i32 %990, ptr %992, align 4, !tbaa !24
  %993 = getelementptr inbounds i32, ptr %21, i64 %991
  store i32 %966, ptr %993, align 4, !tbaa !24
  %994 = add nsw i32 %959, 1
  br label %995

995:                                              ; preds = %986, %983
  %996 = phi i32 [ 1, %986 ], [ %961, %983 ]
  %997 = phi i32 [ -1, %986 ], [ %966, %983 ]
  %998 = phi i32 [ %994, %986 ], [ %959, %983 ]
  %999 = phi i32 [ %989, %986 ], [ %958, %983 ]
  br i1 %59, label %1000, label %1005

1000:                                             ; preds = %995
  %1001 = add nuw nsw i64 %957, 1
  %1002 = icmp eq i64 %1001, 16
  br i1 %1002, label %1013, label %1003

1003:                                             ; preds = %1000, %1005
  %1004 = phi i64 [ %1001, %1000 ], [ %1011, %1005 ]
  br label %956

1005:                                             ; preds = %995
  %1006 = zext i8 %963 to i64
  %1007 = zext i8 %965 to i64
  %1008 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %1006, i64 %1007
  %1009 = load i32, ptr %1008, align 4, !tbaa !24
  %1010 = tail call signext i32 @sign(i32 noundef signext %984, i32 noundef signext %1009) #7
  store i32 %1010, ptr %1008, align 4, !tbaa !24
  %1011 = add nuw nsw i64 %957, 1
  %1012 = icmp eq i64 %1011, 16
  br i1 %1012, label %1016, label %1003

1013:                                             ; preds = %1000
  %1014 = sext i32 %998 to i64
  %1015 = getelementptr inbounds i32, ptr %19, i64 %1014
  store i32 0, ptr %1015, align 4, !tbaa !24
  br label %1172

1016:                                             ; preds = %1005
  %1017 = sext i32 %998 to i64
  %1018 = getelementptr inbounds i32, ptr %19, i64 %1017
  store i32 0, ptr %1018, align 4, !tbaa !24
  %1019 = getelementptr inbounds i8, ptr %5, i64 48
  %1020 = getelementptr inbounds i8, ptr %5, i64 16
  %1021 = getelementptr inbounds i8, ptr %5, i64 32
  %1022 = load i32, ptr %5, align 4, !tbaa !24
  %1023 = load i32, ptr %1021, align 4, !tbaa !24
  %1024 = add nsw i32 %1023, %1022
  %1025 = sub nsw i32 %1022, %1023
  %1026 = load i32, ptr %1020, align 4, !tbaa !24
  %1027 = load i32, ptr %1019, align 4, !tbaa !24
  %1028 = sub nsw i32 %1026, %1027
  %1029 = add nsw i32 %1027, %1026
  %1030 = add nsw i32 %1029, %1024
  store i32 %1030, ptr %5, align 4, !tbaa !24
  %1031 = add nsw i32 %1028, %1025
  store i32 %1031, ptr %1020, align 4, !tbaa !24
  %1032 = sub nsw i32 %1025, %1028
  store i32 %1032, ptr %1021, align 4, !tbaa !24
  %1033 = sub nsw i32 %1024, %1029
  store i32 %1033, ptr %1019, align 4, !tbaa !24
  %1034 = getelementptr inbounds i8, ptr %5, i64 4
  %1035 = load i32, ptr %1034, align 4, !tbaa !24
  %1036 = getelementptr inbounds i8, ptr %5, i64 36
  %1037 = load i32, ptr %1036, align 4, !tbaa !24
  %1038 = add nsw i32 %1037, %1035
  %1039 = sub nsw i32 %1035, %1037
  %1040 = getelementptr inbounds i8, ptr %5, i64 20
  %1041 = load i32, ptr %1040, align 4, !tbaa !24
  %1042 = getelementptr inbounds i8, ptr %5, i64 52
  %1043 = load i32, ptr %1042, align 4, !tbaa !24
  %1044 = sub nsw i32 %1041, %1043
  %1045 = add nsw i32 %1043, %1041
  %1046 = add nsw i32 %1045, %1038
  store i32 %1046, ptr %1034, align 4, !tbaa !24
  %1047 = add nsw i32 %1044, %1039
  store i32 %1047, ptr %1040, align 4, !tbaa !24
  %1048 = sub nsw i32 %1039, %1044
  store i32 %1048, ptr %1036, align 4, !tbaa !24
  %1049 = sub nsw i32 %1038, %1045
  store i32 %1049, ptr %1042, align 4, !tbaa !24
  %1050 = getelementptr inbounds i8, ptr %5, i64 8
  %1051 = load i32, ptr %1050, align 4, !tbaa !24
  %1052 = getelementptr inbounds i8, ptr %5, i64 40
  %1053 = load i32, ptr %1052, align 4, !tbaa !24
  %1054 = add nsw i32 %1053, %1051
  %1055 = sub nsw i32 %1051, %1053
  %1056 = getelementptr inbounds i8, ptr %5, i64 24
  %1057 = load i32, ptr %1056, align 4, !tbaa !24
  %1058 = getelementptr inbounds i8, ptr %5, i64 56
  %1059 = load i32, ptr %1058, align 4, !tbaa !24
  %1060 = sub nsw i32 %1057, %1059
  %1061 = add nsw i32 %1059, %1057
  %1062 = add nsw i32 %1061, %1054
  store i32 %1062, ptr %1050, align 4, !tbaa !24
  %1063 = add nsw i32 %1060, %1055
  store i32 %1063, ptr %1056, align 4, !tbaa !24
  %1064 = sub nsw i32 %1055, %1060
  store i32 %1064, ptr %1052, align 4, !tbaa !24
  %1065 = sub nsw i32 %1054, %1061
  store i32 %1065, ptr %1058, align 4, !tbaa !24
  %1066 = getelementptr inbounds i8, ptr %5, i64 12
  %1067 = load i32, ptr %1066, align 4, !tbaa !24
  %1068 = getelementptr inbounds i8, ptr %5, i64 44
  %1069 = load i32, ptr %1068, align 4, !tbaa !24
  %1070 = add nsw i32 %1069, %1067
  %1071 = sub nsw i32 %1067, %1069
  %1072 = getelementptr inbounds i8, ptr %5, i64 28
  %1073 = load i32, ptr %1072, align 4, !tbaa !24
  %1074 = getelementptr inbounds i8, ptr %5, i64 60
  %1075 = load i32, ptr %1074, align 4, !tbaa !24
  %1076 = sub nsw i32 %1073, %1075
  %1077 = add nsw i32 %1075, %1073
  %1078 = add nsw i32 %1077, %1070
  store i32 %1078, ptr %1066, align 4, !tbaa !24
  %1079 = add nsw i32 %1076, %1071
  store i32 %1079, ptr %1072, align 4, !tbaa !24
  %1080 = sub nsw i32 %1071, %1076
  store i32 %1080, ptr %1068, align 4, !tbaa !24
  %1081 = sub nsw i32 %1070, %1077
  store i32 %1081, ptr %1074, align 4, !tbaa !24
  %1082 = icmp slt i32 %82, 4
  %1083 = getelementptr inbounds ptr, ptr %102, i64 %947
  %1084 = add nsw i32 %82, -4
  %1085 = load ptr, ptr @img, align 8
  %1086 = getelementptr inbounds i8, ptr %1085, i64 13112
  %1087 = getelementptr inbounds i8, ptr %1085, i64 13368
  %1088 = getelementptr inbounds i8, ptr %1085, i64 13624
  %1089 = getelementptr inbounds i8, ptr %1085, i64 13880
  %1090 = sub nsw i32 3, %82
  %1091 = shl nuw i32 1, %1090
  %1092 = sub nsw i32 4, %82
  %1093 = load ptr, ptr %1083, align 8, !tbaa !6
  %1094 = load ptr, ptr %1093, align 8, !tbaa !6
  br label %1095

1095:                                             ; preds = %1016, %1164
  %1096 = phi i64 [ 0, %1016 ], [ %1170, %1164 ]
  %1097 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %1096
  %1098 = load i32, ptr %1097, align 4, !tbaa !24
  %1099 = getelementptr inbounds i8, ptr %1097, i64 8
  %1100 = load i32, ptr %1099, align 4, !tbaa !24
  %1101 = add nsw i32 %1100, %1098
  %1102 = sub nsw i32 %1098, %1100
  %1103 = getelementptr inbounds i8, ptr %1097, i64 4
  %1104 = load i32, ptr %1103, align 4, !tbaa !24
  %1105 = getelementptr inbounds i8, ptr %1097, i64 12
  %1106 = load i32, ptr %1105, align 4, !tbaa !24
  %1107 = sub nsw i32 %1104, %1106
  %1108 = add nsw i32 %1106, %1104
  %1109 = add nsw i32 %1108, %1101
  %1110 = load i32, ptr %1094, align 4, !tbaa !24
  %1111 = mul nsw i32 %1110, %1109
  br i1 %1082, label %1112, label %1140

1112:                                             ; preds = %1095
  %1113 = add nsw i32 %1111, %1091
  %1114 = ashr i32 %1113, %1092
  %1115 = add nsw i32 %1114, 2
  %1116 = ashr i32 %1115, 2
  %1117 = shl nuw nsw i64 %1096, 2
  %1118 = getelementptr inbounds [16 x i32], ptr %1086, i64 0, i64 %1117
  store i32 %1116, ptr %1118, align 4, !tbaa !24
  %1119 = add nsw i32 %1107, %1102
  %1120 = load i32, ptr %1094, align 4, !tbaa !24
  %1121 = mul nsw i32 %1120, %1119
  %1122 = add nsw i32 %1121, %1091
  %1123 = ashr i32 %1122, %1092
  %1124 = add nsw i32 %1123, 2
  %1125 = ashr i32 %1124, 2
  %1126 = getelementptr inbounds [16 x i32], ptr %1087, i64 0, i64 %1117
  store i32 %1125, ptr %1126, align 4, !tbaa !24
  %1127 = sub nsw i32 %1102, %1107
  %1128 = load i32, ptr %1094, align 4, !tbaa !24
  %1129 = mul nsw i32 %1128, %1127
  %1130 = add nsw i32 %1129, %1091
  %1131 = ashr i32 %1130, %1092
  %1132 = add nsw i32 %1131, 2
  %1133 = ashr i32 %1132, 2
  %1134 = getelementptr inbounds [16 x i32], ptr %1088, i64 0, i64 %1117
  store i32 %1133, ptr %1134, align 4, !tbaa !24
  %1135 = sub nsw i32 %1101, %1108
  %1136 = load i32, ptr %1094, align 4, !tbaa !24
  %1137 = mul nsw i32 %1136, %1135
  %1138 = add nsw i32 %1137, %1091
  %1139 = ashr i32 %1138, %1092
  br label %1164

1140:                                             ; preds = %1095
  %1141 = shl i32 %1111, %1084
  %1142 = add nsw i32 %1141, 2
  %1143 = ashr i32 %1142, 2
  %1144 = shl nuw nsw i64 %1096, 2
  %1145 = getelementptr inbounds [16 x i32], ptr %1086, i64 0, i64 %1144
  store i32 %1143, ptr %1145, align 4, !tbaa !24
  %1146 = add nsw i32 %1107, %1102
  %1147 = load i32, ptr %1094, align 4, !tbaa !24
  %1148 = mul nsw i32 %1147, %1146
  %1149 = shl i32 %1148, %1084
  %1150 = add nsw i32 %1149, 2
  %1151 = ashr i32 %1150, 2
  %1152 = getelementptr inbounds [16 x i32], ptr %1087, i64 0, i64 %1144
  store i32 %1151, ptr %1152, align 4, !tbaa !24
  %1153 = sub nsw i32 %1102, %1107
  %1154 = load i32, ptr %1094, align 4, !tbaa !24
  %1155 = mul nsw i32 %1154, %1153
  %1156 = shl i32 %1155, %1084
  %1157 = add nsw i32 %1156, 2
  %1158 = ashr i32 %1157, 2
  %1159 = getelementptr inbounds [16 x i32], ptr %1088, i64 0, i64 %1144
  store i32 %1158, ptr %1159, align 4, !tbaa !24
  %1160 = sub nsw i32 %1101, %1108
  %1161 = load i32, ptr %1094, align 4, !tbaa !24
  %1162 = mul nsw i32 %1161, %1160
  %1163 = shl i32 %1162, %1084
  br label %1164

1164:                                             ; preds = %1112, %1140
  %1165 = phi i32 [ %1139, %1112 ], [ %1163, %1140 ]
  %1166 = phi i64 [ %1117, %1112 ], [ %1144, %1140 ]
  %1167 = add nsw i32 %1165, 2
  %1168 = ashr i32 %1167, 2
  %1169 = getelementptr inbounds [16 x i32], ptr %1089, i64 0, i64 %1166
  store i32 %1168, ptr %1169, align 4, !tbaa !24
  %1170 = add nuw nsw i64 %1096, 1
  %1171 = icmp ugt i64 %1096, 2
  br i1 %1171, label %1172, label %1095

1172:                                             ; preds = %1164, %1013, %721, %747, %610, %422, %301, %463
  %1173 = phi i32 [ %408, %422 ], [ %408, %463 ], [ %592, %610 ], [ 0, %301 ], [ %996, %1013 ], [ %592, %747 ], [ %592, %721 ], [ %996, %1164 ]
  %1174 = phi i32 [ %412, %422 ], [ %412, %463 ], [ %595, %610 ], [ %1, %301 ], [ %999, %1013 ], [ %595, %747 ], [ %595, %721 ], [ %999, %1164 ]
  %1175 = load ptr, ptr @img, align 8, !tbaa !6
  %1176 = getelementptr inbounds i8, ptr %1175, i64 90540
  %1177 = load i32, ptr %1176, align 4, !tbaa !53
  %1178 = icmp sgt i32 %1177, 1
  br i1 %1178, label %1179, label %1398

1179:                                             ; preds = %1172
  %1180 = sext i32 %32 to i64
  %1181 = add i32 %30, 4
  %1182 = sext i32 %85 to i64
  %1183 = getelementptr inbounds ptr, ptr %92, i64 %1182
  %1184 = sext i32 %82 to i64
  %1185 = getelementptr inbounds ptr, ptr %97, i64 %1184
  %1186 = shl nuw i32 1, %86
  %1187 = add nsw i32 %82, 16
  %1188 = getelementptr inbounds i8, ptr %12, i64 368
  %1189 = icmp slt i32 %82, 4
  %1190 = getelementptr inbounds ptr, ptr %102, i64 %1182
  %1191 = add nsw i32 %82, -4
  %1192 = sub nsw i32 3, %82
  %1193 = shl nuw i32 1, %1192
  %1194 = sub nsw i32 4, %82
  %1195 = sext i32 %30 to i64
  br label %1196

1196:                                             ; preds = %1179, %1385
  %1197 = phi i64 [ 0, %1179 ], [ %1386, %1385 ]
  %1198 = phi i32 [ 0, %1179 ], [ %1376, %1385 ]
  %1199 = phi i32 [ 0, %1179 ], [ %1377, %1385 ]
  %1200 = trunc nuw nsw i64 %1197 to i32
  %1201 = add i32 %1181, %1200
  %1202 = sext i32 %1201 to i64
  %1203 = add nsw i64 %1197, %1195
  br label %1204

1204:                                             ; preds = %1196, %1380
  %1205 = phi i64 [ 0, %1196 ], [ %1383, %1380 ]
  %1206 = phi i32 [ %1198, %1196 ], [ %1376, %1380 ]
  %1207 = phi i32 [ %1199, %1196 ], [ %1377, %1380 ]
  %1208 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @hor_offset, i64 0, i64 %1180, i64 %1197, i64 %1205
  %1209 = load i8, ptr %1208, align 1, !tbaa !43
  %1210 = zext i8 %1209 to i32
  %1211 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @ver_offset, i64 0, i64 %1180, i64 %1197, i64 %1205
  %1212 = load i8, ptr %1211, align 1, !tbaa !43
  %1213 = zext i8 %1212 to i32
  %1214 = load ptr, ptr @img, align 8, !tbaa !6
  %1215 = getelementptr inbounds i8, ptr %1214, i64 14136
  %1216 = load ptr, ptr %1215, align 8, !tbaa !46
  %1217 = getelementptr inbounds ptr, ptr %1216, i64 %1202
  %1218 = load ptr, ptr %1217, align 8, !tbaa !6
  %1219 = getelementptr inbounds ptr, ptr %1218, i64 %1205
  %1220 = load ptr, ptr %1219, align 8, !tbaa !6
  %1221 = load ptr, ptr %1220, align 8, !tbaa !6
  %1222 = getelementptr inbounds i8, ptr %1220, i64 8
  %1223 = load ptr, ptr %1222, align 8, !tbaa !6
  %1224 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %1203, i64 %1205
  br label %1225

1225:                                             ; preds = %1204, %1373
  %1226 = phi i64 [ 1, %1204 ], [ %1378, %1373 ]
  %1227 = phi i32 [ 0, %1204 ], [ %1374, %1373 ]
  %1228 = phi i32 [ -1, %1204 ], [ %1375, %1373 ]
  %1229 = phi i32 [ %1206, %1204 ], [ %1376, %1373 ]
  %1230 = phi i32 [ %1207, %1204 ], [ %1377, %1373 ]
  %1231 = getelementptr inbounds [2 x i8], ptr %47, i64 %1226
  %1232 = load i8, ptr %1231, align 1, !tbaa !43
  %1233 = zext i8 %1232 to i32
  %1234 = getelementptr inbounds i8, ptr %1231, i64 1
  %1235 = load i8, ptr %1234, align 1, !tbaa !43
  %1236 = zext i8 %1235 to i32
  %1237 = add nsw i32 %1228, 1
  %1238 = load ptr, ptr @img, align 8, !tbaa !6
  %1239 = getelementptr inbounds i8, ptr %1238, i64 13112
  %1240 = add nuw nsw i32 %1236, %1213
  %1241 = zext nneg i32 %1240 to i64
  %1242 = add nuw nsw i32 %1233, %1210
  %1243 = zext nneg i32 %1242 to i64
  %1244 = getelementptr inbounds [16 x [16 x i32]], ptr %1239, i64 0, i64 %1241, i64 %1243
  %1245 = load i32, ptr %1244, align 4, !tbaa !24
  %1246 = tail call i32 @llvm.abs.i32(i32 %1245, i1 true)
  br i1 %59, label %1263, label %1247

1247:                                             ; preds = %1225
  %1248 = load ptr, ptr %1183, align 8, !tbaa !6
  %1249 = zext i8 %1232 to i64
  %1250 = getelementptr inbounds ptr, ptr %1248, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !6
  %1252 = zext i8 %1235 to i64
  %1253 = getelementptr inbounds i32, ptr %1251, i64 %1252
  %1254 = load i32, ptr %1253, align 4, !tbaa !24
  %1255 = mul nsw i32 %1254, %1246
  %1256 = load ptr, ptr %1185, align 8, !tbaa !6
  %1257 = getelementptr inbounds ptr, ptr %1256, i64 %1249
  %1258 = load ptr, ptr %1257, align 8, !tbaa !6
  %1259 = getelementptr inbounds i32, ptr %1258, i64 %1252
  %1260 = load i32, ptr %1259, align 4, !tbaa !24
  %1261 = add nsw i32 %1260, %1255
  %1262 = ashr i32 %1261, %86
  br label %1263

1263:                                             ; preds = %1225, %1247
  %1264 = phi i32 [ %1262, %1247 ], [ %1246, %1225 ]
  %1265 = getelementptr inbounds i8, ptr %1238, i64 90212
  %1266 = load i32, ptr %1265, align 4, !tbaa !47
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1303, label %1268

1268:                                             ; preds = %1263
  %1269 = icmp eq i32 %1264, 0
  %1270 = select i1 %59, i1 true, i1 %1269
  br i1 %1270, label %1271, label %1278

1271:                                             ; preds = %1268
  %1272 = getelementptr inbounds i8, ptr %1238, i64 21320
  %1273 = add nuw nsw i32 %1236, %1213
  %1274 = zext nneg i32 %1273 to i64
  %1275 = add nuw nsw i32 %1233, %1210
  %1276 = zext nneg i32 %1275 to i64
  %1277 = getelementptr inbounds [4 x [2 x [16 x [16 x i32]]]], ptr %1272, i64 0, i64 %90, i64 %15, i64 %1274, i64 %1276
  store i32 0, ptr %1277, align 4, !tbaa !24
  br label %1303

1278:                                             ; preds = %1268
  %1279 = load i32, ptr @AdaptRndWeight, align 4, !tbaa !24
  %1280 = getelementptr inbounds i8, ptr %1238, i64 13112
  %1281 = add nuw nsw i32 %1236, %1213
  %1282 = zext nneg i32 %1281 to i64
  %1283 = add nuw nsw i32 %1233, %1210
  %1284 = zext nneg i32 %1283 to i64
  %1285 = getelementptr inbounds [16 x [16 x i32]], ptr %1280, i64 0, i64 %1282, i64 %1284
  %1286 = load i32, ptr %1285, align 4, !tbaa !24
  %1287 = tail call i32 @llvm.abs.i32(i32 %1286, i1 true)
  %1288 = load ptr, ptr %1183, align 8, !tbaa !6
  %1289 = zext i8 %1232 to i64
  %1290 = getelementptr inbounds ptr, ptr %1288, i64 %1289
  %1291 = load ptr, ptr %1290, align 8, !tbaa !6
  %1292 = zext i8 %1235 to i64
  %1293 = getelementptr inbounds i32, ptr %1291, i64 %1292
  %1294 = load i32, ptr %1293, align 4, !tbaa !24
  %1295 = mul nsw i32 %1294, %1287
  %1296 = shl i32 %1264, %86
  %1297 = sub nsw i32 %1295, %1296
  %1298 = mul nsw i32 %1297, %1279
  %1299 = add nsw i32 %1298, %1186
  %1300 = ashr i32 %1299, %1187
  %1301 = getelementptr inbounds i8, ptr %1238, i64 21320
  %1302 = getelementptr inbounds [4 x [2 x [16 x [16 x i32]]]], ptr %1301, i64 0, i64 %90, i64 %15, i64 %1282, i64 %1284
  store i32 %1300, ptr %1302, align 4, !tbaa !24
  br label %1305

1303:                                             ; preds = %1271, %1263
  %1304 = icmp eq i32 %1264, 0
  br i1 %1304, label %1356, label %1305

1305:                                             ; preds = %1278, %1303
  %1306 = load i8, ptr %1224, align 1, !tbaa !43
  %1307 = zext nneg i8 %1306 to i64
  %1308 = shl nuw i64 1, %1307
  %1309 = load i64, ptr %1188, align 8, !tbaa !58
  %1310 = or i64 %1308, %1309
  store i64 %1310, ptr %1188, align 8, !tbaa !58
  %1311 = icmp sgt i32 %1264, 1
  %1312 = select i1 %1311, i1 true, i1 %59
  br i1 %1312, label %1322, label %1313

1313:                                             ; preds = %1305
  %1314 = load ptr, ptr @input, align 8, !tbaa !6
  %1315 = getelementptr inbounds i8, ptr %1314, i64 3140
  %1316 = load i32, ptr %1315, align 4, !tbaa !51
  %1317 = sext i32 %1316 to i64
  %1318 = sext i32 %1237 to i64
  %1319 = getelementptr inbounds [2 x [16 x i8]], ptr @COEFF_COST, i64 0, i64 %1317, i64 %1318
  %1320 = load i8, ptr %1319, align 1, !tbaa !43
  %1321 = zext i8 %1320 to i32
  br label %1322

1322:                                             ; preds = %1305, %1313
  %1323 = phi i32 [ %1321, %1313 ], [ 999999, %1305 ]
  %1324 = add nsw i32 %1229, %1323
  %1325 = getelementptr inbounds i8, ptr %1238, i64 13112
  %1326 = add nuw nsw i32 %1236, %1213
  %1327 = zext nneg i32 %1326 to i64
  %1328 = add nuw nsw i32 %1233, %1210
  %1329 = zext nneg i32 %1328 to i64
  %1330 = getelementptr inbounds [16 x [16 x i32]], ptr %1325, i64 0, i64 %1327, i64 %1329
  %1331 = load i32, ptr %1330, align 4, !tbaa !24
  %1332 = tail call signext i32 @sign(i32 noundef signext %1264, i32 noundef signext %1331) #7
  %1333 = sext i32 %1227 to i64
  %1334 = getelementptr inbounds i32, ptr %1221, i64 %1333
  store i32 %1332, ptr %1334, align 4, !tbaa !24
  %1335 = getelementptr inbounds i32, ptr %1223, i64 %1333
  store i32 %1237, ptr %1335, align 4, !tbaa !24
  %1336 = add nsw i32 %1227, 1
  %1337 = load ptr, ptr @img, align 8, !tbaa !6
  %1338 = getelementptr inbounds i8, ptr %1337, i64 13112
  %1339 = getelementptr inbounds [16 x [16 x i32]], ptr %1338, i64 0, i64 %1327, i64 %1329
  %1340 = load i32, ptr %1339, align 4, !tbaa !24
  %1341 = tail call signext i32 @sign(i32 noundef signext %1264, i32 noundef signext %1340) #7
  br i1 %59, label %1373, label %1342

1342:                                             ; preds = %1322
  %1343 = load ptr, ptr %1190, align 8, !tbaa !6
  %1344 = zext i8 %1232 to i64
  %1345 = getelementptr inbounds ptr, ptr %1343, i64 %1344
  %1346 = load ptr, ptr %1345, align 8, !tbaa !6
  %1347 = zext i8 %1235 to i64
  %1348 = getelementptr inbounds i32, ptr %1346, i64 %1347
  %1349 = load i32, ptr %1348, align 4, !tbaa !24
  %1350 = mul nsw i32 %1349, %1341
  br i1 %1189, label %1351, label %1354

1351:                                             ; preds = %1342
  %1352 = add nsw i32 %1350, %1193
  %1353 = ashr i32 %1352, %1194
  br label %1362

1354:                                             ; preds = %1342
  %1355 = shl i32 %1350, %1191
  br label %1362

1356:                                             ; preds = %1303
  br i1 %59, label %1373, label %1357

1357:                                             ; preds = %1356
  %1358 = add nuw nsw i32 %1236, %1213
  %1359 = zext nneg i32 %1358 to i64
  %1360 = add nuw nsw i32 %1233, %1210
  %1361 = zext nneg i32 %1360 to i64
  br label %1362

1362:                                             ; preds = %1357, %1351, %1354
  %1363 = phi i64 [ %1361, %1357 ], [ %1329, %1351 ], [ %1329, %1354 ]
  %1364 = phi i64 [ %1359, %1357 ], [ %1327, %1351 ], [ %1327, %1354 ]
  %1365 = phi i32 [ 0, %1357 ], [ %1353, %1351 ], [ %1355, %1354 ]
  %1366 = phi i32 [ %1227, %1357 ], [ %1336, %1351 ], [ %1336, %1354 ]
  %1367 = phi i32 [ %1237, %1357 ], [ -1, %1351 ], [ -1, %1354 ]
  %1368 = phi i32 [ %1229, %1357 ], [ %1324, %1351 ], [ %1324, %1354 ]
  %1369 = phi i32 [ %1230, %1357 ], [ 2, %1351 ], [ 2, %1354 ]
  %1370 = load ptr, ptr @img, align 8, !tbaa !6
  %1371 = getelementptr inbounds i8, ptr %1370, i64 13112
  %1372 = getelementptr inbounds [16 x [16 x i32]], ptr %1371, i64 0, i64 %1364, i64 %1363
  store i32 %1365, ptr %1372, align 4, !tbaa !24
  br label %1373

1373:                                             ; preds = %1322, %1356, %1362
  %1374 = phi i32 [ %1227, %1356 ], [ %1366, %1362 ], [ %1336, %1322 ]
  %1375 = phi i32 [ %1237, %1356 ], [ %1367, %1362 ], [ -1, %1322 ]
  %1376 = phi i32 [ %1229, %1356 ], [ %1368, %1362 ], [ %1324, %1322 ]
  %1377 = phi i32 [ %1230, %1356 ], [ %1369, %1362 ], [ 2, %1322 ]
  %1378 = add nuw nsw i64 %1226, 1
  %1379 = icmp eq i64 %1378, 16
  br i1 %1379, label %1380, label %1225

1380:                                             ; preds = %1373
  %1381 = sext i32 %1374 to i64
  %1382 = getelementptr inbounds i32, ptr %1221, i64 %1381
  store i32 0, ptr %1382, align 4, !tbaa !24
  %1383 = add nuw nsw i64 %1205, 1
  %1384 = icmp eq i64 %1383, 4
  br i1 %1384, label %1385, label %1204

1385:                                             ; preds = %1380
  %1386 = add nuw nsw i64 %1197, 1
  %1387 = load ptr, ptr @img, align 8, !tbaa !6
  %1388 = getelementptr inbounds i8, ptr %1387, i64 90540
  %1389 = load i32, ptr %1388, align 4, !tbaa !53
  %1390 = ashr i32 %1389, 1
  %1391 = sext i32 %1390 to i64
  %1392 = icmp slt i64 %1386, %1391
  br i1 %1392, label %1196, label %1393

1393:                                             ; preds = %1385
  %1394 = icmp sgt i32 %1376, 3
  %1395 = select i1 %1394, i1 true, i1 %59
  %1396 = icmp sgt i32 %1389, 1
  %1397 = icmp eq i32 %1377, 2
  br label %1398

1398:                                             ; preds = %1393, %1172
  %1399 = phi i1 [ false, %1172 ], [ %1396, %1393 ]
  %1400 = phi i1 [ false, %1172 ], [ %1397, %1393 ]
  %1401 = phi i1 [ %59, %1172 ], [ %1395, %1393 ]
  %1402 = phi ptr [ %1175, %1172 ], [ %1387, %1393 ]
  %1403 = phi ptr [ %1176, %1172 ], [ %1388, %1393 ]
  br i1 %1401, label %1552, label %1404

1404:                                             ; preds = %1398
  br i1 %1399, label %1405, label %1554

1405:                                             ; preds = %1404
  %1406 = sext i32 %32 to i64
  %1407 = getelementptr inbounds i8, ptr %1402, i64 14136
  %1408 = load ptr, ptr %1407, align 8, !tbaa !46
  %1409 = add i32 %30, 4
  %1410 = icmp eq i32 %1173, 0
  %1411 = getelementptr inbounds i8, ptr %1402, i64 13112
  %1412 = getelementptr inbounds [4 x i64], ptr @__const.dct_chroma.cbpblk_pattern, i64 0, i64 %1406
  %1413 = add nsw i32 %32, 1
  %1414 = shl i32 %0, %1413
  %1415 = zext nneg i32 %1414 to i64
  %1416 = getelementptr inbounds i8, ptr %12, i64 368
  br label %1417

1417:                                             ; preds = %1405, %1546
  %1418 = phi i64 [ 0, %1405 ], [ %1547, %1546 ]
  %1419 = trunc nuw nsw i64 %1418 to i32
  %1420 = add i32 %1409, %1419
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds ptr, ptr %1408, i64 %1421
  %1423 = load ptr, ptr %1422, align 8, !tbaa !6
  %1424 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @hor_offset, i64 0, i64 %1406, i64 %1418, i64 0
  %1425 = load i8, ptr %1424, align 1, !tbaa !43
  %1426 = zext i8 %1425 to i64
  %1427 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @ver_offset, i64 0, i64 %1406, i64 %1418, i64 0
  %1428 = load i8, ptr %1427, align 1, !tbaa !43
  %1429 = zext i8 %1428 to i64
  %1430 = load ptr, ptr %1423, align 8, !tbaa !6
  %1431 = load ptr, ptr %1430, align 8, !tbaa !6
  br i1 %1410, label %1432, label %1438

1432:                                             ; preds = %1417
  %1433 = load i64, ptr %1412, align 8, !tbaa !59
  %1434 = shl i64 %1433, %1415
  %1435 = xor i64 %1434, -1
  %1436 = load i64, ptr %1416, align 8, !tbaa !58
  %1437 = and i64 %1436, %1435
  store i64 %1437, ptr %1416, align 8, !tbaa !58
  br label %1438

1438:                                             ; preds = %1432, %1417
  store i32 0, ptr %1431, align 4, !tbaa !24
  br label %1439

1439:                                             ; preds = %1438, %1439
  %1440 = phi i64 [ 1, %1438 ], [ %1451, %1439 ]
  %1441 = getelementptr inbounds [2 x i8], ptr %47, i64 %1440
  %1442 = load i8, ptr %1441, align 1, !tbaa !43
  %1443 = zext i8 %1442 to i64
  %1444 = getelementptr inbounds i8, ptr %1441, i64 1
  %1445 = load i8, ptr %1444, align 1, !tbaa !43
  %1446 = zext i8 %1445 to i64
  %1447 = add nuw nsw i64 %1446, %1429
  %1448 = add nuw nsw i64 %1443, %1426
  %1449 = getelementptr inbounds [16 x [16 x i32]], ptr %1411, i64 0, i64 %1447, i64 %1448
  store i32 0, ptr %1449, align 4, !tbaa !24
  %1450 = getelementptr inbounds i32, ptr %1431, i64 %1440
  store i32 0, ptr %1450, align 4, !tbaa !24
  %1451 = add nuw nsw i64 %1440, 1
  %1452 = icmp eq i64 %1451, 16
  br i1 %1452, label %1453, label %1439

1453:                                             ; preds = %1439
  %1454 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @hor_offset, i64 0, i64 %1406, i64 %1418, i64 1
  %1455 = load i8, ptr %1454, align 1, !tbaa !43
  %1456 = zext i8 %1455 to i64
  %1457 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @ver_offset, i64 0, i64 %1406, i64 %1418, i64 1
  %1458 = load i8, ptr %1457, align 1, !tbaa !43
  %1459 = zext i8 %1458 to i64
  %1460 = getelementptr inbounds i8, ptr %1423, i64 8
  %1461 = load ptr, ptr %1460, align 8, !tbaa !6
  %1462 = load ptr, ptr %1461, align 8, !tbaa !6
  br i1 %1410, label %1463, label %1469

1463:                                             ; preds = %1453
  %1464 = load i64, ptr %1412, align 8, !tbaa !59
  %1465 = shl i64 %1464, %1415
  %1466 = xor i64 %1465, -1
  %1467 = load i64, ptr %1416, align 8, !tbaa !58
  %1468 = and i64 %1467, %1466
  store i64 %1468, ptr %1416, align 8, !tbaa !58
  br label %1469

1469:                                             ; preds = %1463, %1453
  store i32 0, ptr %1462, align 4, !tbaa !24
  br label %1470

1470:                                             ; preds = %1470, %1469
  %1471 = phi i64 [ 1, %1469 ], [ %1482, %1470 ]
  %1472 = getelementptr inbounds [2 x i8], ptr %47, i64 %1471
  %1473 = load i8, ptr %1472, align 1, !tbaa !43
  %1474 = zext i8 %1473 to i64
  %1475 = getelementptr inbounds i8, ptr %1472, i64 1
  %1476 = load i8, ptr %1475, align 1, !tbaa !43
  %1477 = zext i8 %1476 to i64
  %1478 = add nuw nsw i64 %1477, %1459
  %1479 = add nuw nsw i64 %1474, %1456
  %1480 = getelementptr inbounds [16 x [16 x i32]], ptr %1411, i64 0, i64 %1478, i64 %1479
  store i32 0, ptr %1480, align 4, !tbaa !24
  %1481 = getelementptr inbounds i32, ptr %1462, i64 %1471
  store i32 0, ptr %1481, align 4, !tbaa !24
  %1482 = add nuw nsw i64 %1471, 1
  %1483 = icmp eq i64 %1482, 16
  br i1 %1483, label %1484, label %1470

1484:                                             ; preds = %1470
  %1485 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @hor_offset, i64 0, i64 %1406, i64 %1418, i64 2
  %1486 = load i8, ptr %1485, align 1, !tbaa !43
  %1487 = zext i8 %1486 to i64
  %1488 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @ver_offset, i64 0, i64 %1406, i64 %1418, i64 2
  %1489 = load i8, ptr %1488, align 1, !tbaa !43
  %1490 = zext i8 %1489 to i64
  %1491 = getelementptr inbounds i8, ptr %1423, i64 16
  %1492 = load ptr, ptr %1491, align 8, !tbaa !6
  %1493 = load ptr, ptr %1492, align 8, !tbaa !6
  br i1 %1410, label %1494, label %1500

1494:                                             ; preds = %1484
  %1495 = load i64, ptr %1412, align 8, !tbaa !59
  %1496 = shl i64 %1495, %1415
  %1497 = xor i64 %1496, -1
  %1498 = load i64, ptr %1416, align 8, !tbaa !58
  %1499 = and i64 %1498, %1497
  store i64 %1499, ptr %1416, align 8, !tbaa !58
  br label %1500

1500:                                             ; preds = %1494, %1484
  store i32 0, ptr %1493, align 4, !tbaa !24
  br label %1501

1501:                                             ; preds = %1501, %1500
  %1502 = phi i64 [ 1, %1500 ], [ %1513, %1501 ]
  %1503 = getelementptr inbounds [2 x i8], ptr %47, i64 %1502
  %1504 = load i8, ptr %1503, align 1, !tbaa !43
  %1505 = zext i8 %1504 to i64
  %1506 = getelementptr inbounds i8, ptr %1503, i64 1
  %1507 = load i8, ptr %1506, align 1, !tbaa !43
  %1508 = zext i8 %1507 to i64
  %1509 = add nuw nsw i64 %1508, %1490
  %1510 = add nuw nsw i64 %1505, %1487
  %1511 = getelementptr inbounds [16 x [16 x i32]], ptr %1411, i64 0, i64 %1509, i64 %1510
  store i32 0, ptr %1511, align 4, !tbaa !24
  %1512 = getelementptr inbounds i32, ptr %1493, i64 %1502
  store i32 0, ptr %1512, align 4, !tbaa !24
  %1513 = add nuw nsw i64 %1502, 1
  %1514 = icmp eq i64 %1513, 16
  br i1 %1514, label %1515, label %1501

1515:                                             ; preds = %1501
  %1516 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @hor_offset, i64 0, i64 %1406, i64 %1418, i64 3
  %1517 = load i8, ptr %1516, align 1, !tbaa !43
  %1518 = zext i8 %1517 to i64
  %1519 = getelementptr inbounds [4 x [4 x [4 x i8]]], ptr @ver_offset, i64 0, i64 %1406, i64 %1418, i64 3
  %1520 = load i8, ptr %1519, align 1, !tbaa !43
  %1521 = zext i8 %1520 to i64
  %1522 = getelementptr inbounds i8, ptr %1423, i64 24
  %1523 = load ptr, ptr %1522, align 8, !tbaa !6
  %1524 = load ptr, ptr %1523, align 8, !tbaa !6
  br i1 %1410, label %1525, label %1531

1525:                                             ; preds = %1515
  %1526 = load i64, ptr %1412, align 8, !tbaa !59
  %1527 = shl i64 %1526, %1415
  %1528 = xor i64 %1527, -1
  %1529 = load i64, ptr %1416, align 8, !tbaa !58
  %1530 = and i64 %1529, %1528
  store i64 %1530, ptr %1416, align 8, !tbaa !58
  br label %1531

1531:                                             ; preds = %1525, %1515
  store i32 0, ptr %1524, align 4, !tbaa !24
  br label %1532

1532:                                             ; preds = %1532, %1531
  %1533 = phi i64 [ 1, %1531 ], [ %1544, %1532 ]
  %1534 = getelementptr inbounds [2 x i8], ptr %47, i64 %1533
  %1535 = load i8, ptr %1534, align 1, !tbaa !43
  %1536 = zext i8 %1535 to i64
  %1537 = getelementptr inbounds i8, ptr %1534, i64 1
  %1538 = load i8, ptr %1537, align 1, !tbaa !43
  %1539 = zext i8 %1538 to i64
  %1540 = add nuw nsw i64 %1539, %1521
  %1541 = add nuw nsw i64 %1536, %1518
  %1542 = getelementptr inbounds [16 x [16 x i32]], ptr %1411, i64 0, i64 %1540, i64 %1541
  store i32 0, ptr %1542, align 4, !tbaa !24
  %1543 = getelementptr inbounds i32, ptr %1524, i64 %1533
  store i32 0, ptr %1543, align 4, !tbaa !24
  %1544 = add nuw nsw i64 %1533, 1
  %1545 = icmp eq i64 %1544, 16
  br i1 %1545, label %1546, label %1532

1546:                                             ; preds = %1532
  %1547 = add nuw nsw i64 %1418, 1
  %1548 = load i32, ptr %1403, align 4, !tbaa !53
  %1549 = ashr i32 %1548, 1
  %1550 = sext i32 %1549 to i64
  %1551 = icmp slt i64 %1547, %1550
  br i1 %1551, label %1417, label %1554

1552:                                             ; preds = %1398
  %1553 = select i1 %1400, i32 2, i32 %1174
  br label %1554

1554:                                             ; preds = %1546, %1404, %1552
  %1555 = phi i32 [ %1553, %1552 ], [ %1174, %1404 ], [ %1174, %1546 ]
  %1556 = getelementptr inbounds i8, ptr %1402, i64 90560
  %1557 = load i32, ptr %1556, align 8, !tbaa !56
  %1558 = icmp slt i32 %1557, 1
  %1559 = select i1 %1558, i1 true, i1 %59
  br i1 %1559, label %1759, label %1560

1560:                                             ; preds = %1554
  %1561 = getelementptr inbounds i8, ptr %1402, i64 90556
  %1562 = getelementptr inbounds i8, ptr %1402, i64 13112
  %1563 = getelementptr inbounds i8, ptr %1402, i64 90572
  %1564 = getelementptr inbounds i8, ptr %1402, i64 90536
  %1565 = getelementptr inbounds i8, ptr %1402, i64 12600
  %1566 = load i32, ptr %1561, align 4, !tbaa !57
  br label %1567

1567:                                             ; preds = %1560, %1753
  %1568 = phi i32 [ %1557, %1560 ], [ %1754, %1753 ]
  %1569 = phi i32 [ %1566, %1560 ], [ %1755, %1753 ]
  %1570 = phi i64 [ 0, %1560 ], [ %1756, %1753 ]
  %1571 = icmp sgt i32 %1569, 0
  br i1 %1571, label %1572, label %1753

1572:                                             ; preds = %1567
  %1573 = or disjoint i64 %1570, 1
  %1574 = or disjoint i64 %1570, 2
  %1575 = or disjoint i64 %1570, 3
  br label %1576

1576:                                             ; preds = %1572, %1746
  %1577 = phi i64 [ 0, %1572 ], [ %1747, %1746 ]
  %1578 = or disjoint i64 %1577, 1
  %1579 = or disjoint i64 %1577, 2
  %1580 = or disjoint i64 %1577, 3
  %1581 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1570, i64 %1577
  %1582 = load i32, ptr %1581, align 4, !tbaa !24
  %1583 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1570, i64 %1578
  %1584 = load i32, ptr %1583, align 4, !tbaa !24
  %1585 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1570, i64 %1579
  %1586 = load i32, ptr %1585, align 4, !tbaa !24
  %1587 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1570, i64 %1580
  %1588 = load i32, ptr %1587, align 4, !tbaa !24
  %1589 = add nsw i32 %1586, %1582
  %1590 = sub nsw i32 %1582, %1586
  %1591 = ashr i32 %1584, 1
  %1592 = sub nsw i32 %1591, %1588
  %1593 = ashr i32 %1588, 1
  %1594 = add nsw i32 %1593, %1584
  %1595 = add nsw i32 %1594, %1589
  store i32 %1595, ptr %1581, align 4, !tbaa !24
  %1596 = add nsw i32 %1592, %1590
  store i32 %1596, ptr %1583, align 4, !tbaa !24
  %1597 = sub nsw i32 %1590, %1592
  store i32 %1597, ptr %1585, align 4, !tbaa !24
  %1598 = sub nsw i32 %1589, %1594
  store i32 %1598, ptr %1587, align 4, !tbaa !24
  %1599 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1573, i64 %1577
  %1600 = load i32, ptr %1599, align 4, !tbaa !24
  %1601 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1573, i64 %1578
  %1602 = load i32, ptr %1601, align 4, !tbaa !24
  %1603 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1573, i64 %1579
  %1604 = load i32, ptr %1603, align 4, !tbaa !24
  %1605 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1573, i64 %1580
  %1606 = load i32, ptr %1605, align 4, !tbaa !24
  %1607 = add nsw i32 %1604, %1600
  %1608 = sub nsw i32 %1600, %1604
  %1609 = ashr i32 %1602, 1
  %1610 = sub nsw i32 %1609, %1606
  %1611 = ashr i32 %1606, 1
  %1612 = add nsw i32 %1611, %1602
  %1613 = add nsw i32 %1612, %1607
  store i32 %1613, ptr %1599, align 4, !tbaa !24
  %1614 = add nsw i32 %1610, %1608
  store i32 %1614, ptr %1601, align 4, !tbaa !24
  %1615 = sub nsw i32 %1608, %1610
  store i32 %1615, ptr %1603, align 4, !tbaa !24
  %1616 = sub nsw i32 %1607, %1612
  store i32 %1616, ptr %1605, align 4, !tbaa !24
  %1617 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1574, i64 %1577
  %1618 = load i32, ptr %1617, align 4, !tbaa !24
  %1619 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1574, i64 %1578
  %1620 = load i32, ptr %1619, align 4, !tbaa !24
  %1621 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1574, i64 %1579
  %1622 = load i32, ptr %1621, align 4, !tbaa !24
  %1623 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1574, i64 %1580
  %1624 = load i32, ptr %1623, align 4, !tbaa !24
  %1625 = add nsw i32 %1622, %1618
  %1626 = sub nsw i32 %1618, %1622
  %1627 = ashr i32 %1620, 1
  %1628 = sub nsw i32 %1627, %1624
  %1629 = ashr i32 %1624, 1
  %1630 = add nsw i32 %1629, %1620
  %1631 = add nsw i32 %1630, %1625
  store i32 %1631, ptr %1617, align 4, !tbaa !24
  %1632 = add nsw i32 %1628, %1626
  store i32 %1632, ptr %1619, align 4, !tbaa !24
  %1633 = sub nsw i32 %1626, %1628
  store i32 %1633, ptr %1621, align 4, !tbaa !24
  %1634 = sub nsw i32 %1625, %1630
  store i32 %1634, ptr %1623, align 4, !tbaa !24
  %1635 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1575, i64 %1577
  %1636 = load i32, ptr %1635, align 4, !tbaa !24
  %1637 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1575, i64 %1578
  %1638 = load i32, ptr %1637, align 4, !tbaa !24
  %1639 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1575, i64 %1579
  %1640 = load i32, ptr %1639, align 4, !tbaa !24
  %1641 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1575, i64 %1580
  %1642 = load i32, ptr %1641, align 4, !tbaa !24
  %1643 = add nsw i32 %1640, %1636
  %1644 = sub nsw i32 %1636, %1640
  %1645 = ashr i32 %1638, 1
  %1646 = sub nsw i32 %1645, %1642
  %1647 = ashr i32 %1642, 1
  %1648 = add nsw i32 %1647, %1638
  %1649 = add nsw i32 %1648, %1643
  store i32 %1649, ptr %1635, align 4, !tbaa !24
  %1650 = add nsw i32 %1646, %1644
  store i32 %1650, ptr %1637, align 4, !tbaa !24
  %1651 = sub nsw i32 %1644, %1646
  store i32 %1651, ptr %1639, align 4, !tbaa !24
  %1652 = sub nsw i32 %1643, %1648
  store i32 %1652, ptr %1641, align 4, !tbaa !24
  br label %1653

1653:                                             ; preds = %1576, %1742
  %1654 = phi i64 [ 0, %1576 ], [ %1744, %1742 ]
  %1655 = or disjoint i64 %1654, %1577
  %1656 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1570, i64 %1655
  %1657 = load i32, ptr %1656, align 4, !tbaa !24
  %1658 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1573, i64 %1655
  %1659 = load i32, ptr %1658, align 4, !tbaa !24
  %1660 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1574, i64 %1655
  %1661 = load i32, ptr %1660, align 4, !tbaa !24
  %1662 = getelementptr inbounds [16 x [16 x i32]], ptr %1562, i64 0, i64 %1575, i64 %1655
  %1663 = load i32, ptr %1662, align 4, !tbaa !24
  %1664 = add nsw i32 %1661, %1657
  %1665 = sub nsw i32 %1657, %1661
  %1666 = ashr i32 %1659, 1
  %1667 = sub nsw i32 %1666, %1663
  %1668 = ashr i32 %1663, 1
  %1669 = add nsw i32 %1668, %1659
  %1670 = load i32, ptr %1563, align 4, !tbaa !41
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1672, label %1729

1672:                                             ; preds = %1653
  %1673 = load i32, ptr %1564, align 8, !tbaa !60
  %1674 = sext i32 %1673 to i64
  %1675 = add nsw i32 %1669, %1664
  %1676 = sext i32 %1675 to i64
  %1677 = getelementptr inbounds [16 x [16 x i16]], ptr %1565, i64 0, i64 %1570, i64 %1655
  %1678 = load i16, ptr %1677, align 2, !tbaa !27
  %1679 = zext i16 %1678 to i64
  %1680 = shl nuw nsw i64 %1679, 6
  %1681 = add nsw i64 %1676, 32
  %1682 = add nsw i64 %1681, %1680
  %1683 = ashr i64 %1682, 6
  %1684 = tail call i64 @llvm.smax.i64(i64 %1683, i64 0)
  %1685 = tail call i64 @llvm.smin.i64(i64 %1684, i64 %1674)
  %1686 = trunc nsw i64 %1685 to i32
  store i32 %1686, ptr %1656, align 4, !tbaa !24
  %1687 = load i32, ptr %1564, align 8, !tbaa !60
  %1688 = sext i32 %1687 to i64
  %1689 = add nsw i32 %1667, %1665
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds [16 x [16 x i16]], ptr %1565, i64 0, i64 %1573, i64 %1655
  %1692 = load i16, ptr %1691, align 2, !tbaa !27
  %1693 = zext i16 %1692 to i64
  %1694 = shl nuw nsw i64 %1693, 6
  %1695 = add nsw i64 %1690, 32
  %1696 = add nsw i64 %1695, %1694
  %1697 = ashr i64 %1696, 6
  %1698 = tail call i64 @llvm.smax.i64(i64 %1697, i64 0)
  %1699 = tail call i64 @llvm.smin.i64(i64 %1698, i64 %1688)
  %1700 = trunc nsw i64 %1699 to i32
  store i32 %1700, ptr %1658, align 4, !tbaa !24
  %1701 = load i32, ptr %1564, align 8, !tbaa !60
  %1702 = sext i32 %1701 to i64
  %1703 = sub nsw i32 %1665, %1667
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds [16 x [16 x i16]], ptr %1565, i64 0, i64 %1574, i64 %1655
  %1706 = load i16, ptr %1705, align 2, !tbaa !27
  %1707 = zext i16 %1706 to i64
  %1708 = shl nuw nsw i64 %1707, 6
  %1709 = add nsw i64 %1704, 32
  %1710 = add nsw i64 %1709, %1708
  %1711 = ashr i64 %1710, 6
  %1712 = tail call i64 @llvm.smax.i64(i64 %1711, i64 0)
  %1713 = tail call i64 @llvm.smin.i64(i64 %1712, i64 %1702)
  %1714 = trunc nsw i64 %1713 to i32
  store i32 %1714, ptr %1660, align 4, !tbaa !24
  %1715 = load i32, ptr %1564, align 8, !tbaa !60
  %1716 = sext i32 %1715 to i64
  %1717 = sub nsw i32 %1664, %1669
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds [16 x [16 x i16]], ptr %1565, i64 0, i64 %1575, i64 %1655
  %1720 = load i16, ptr %1719, align 2, !tbaa !27
  %1721 = zext i16 %1720 to i64
  %1722 = shl nuw nsw i64 %1721, 6
  %1723 = add nsw i64 %1718, 32
  %1724 = add nsw i64 %1723, %1722
  %1725 = ashr i64 %1724, 6
  %1726 = tail call i64 @llvm.smax.i64(i64 %1725, i64 0)
  %1727 = tail call i64 @llvm.smin.i64(i64 %1726, i64 %1716)
  %1728 = trunc nsw i64 %1727 to i32
  br label %1742

1729:                                             ; preds = %1653
  %1730 = add nsw i32 %1669, %1664
  %1731 = add nsw i32 %1730, 32
  %1732 = ashr i32 %1731, 6
  store i32 %1732, ptr %1656, align 4, !tbaa !24
  %1733 = add nsw i32 %1667, %1665
  %1734 = add nsw i32 %1733, 32
  %1735 = ashr i32 %1734, 6
  store i32 %1735, ptr %1658, align 4, !tbaa !24
  %1736 = add i32 %1665, 32
  %1737 = sub i32 %1736, %1667
  %1738 = ashr i32 %1737, 6
  store i32 %1738, ptr %1660, align 4, !tbaa !24
  %1739 = add i32 %1664, 32
  %1740 = sub i32 %1739, %1669
  %1741 = ashr i32 %1740, 6
  br label %1742

1742:                                             ; preds = %1672, %1729
  %1743 = phi i32 [ %1741, %1729 ], [ %1728, %1672 ]
  store i32 %1743, ptr %1662, align 4, !tbaa !24
  %1744 = add nuw nsw i64 %1654, 1
  %1745 = icmp eq i64 %1744, 4
  br i1 %1745, label %1746, label %1653

1746:                                             ; preds = %1742
  %1747 = add nuw nsw i64 %1577, 4
  %1748 = load i32, ptr %1561, align 4, !tbaa !57
  %1749 = sext i32 %1748 to i64
  %1750 = icmp slt i64 %1747, %1749
  br i1 %1750, label %1576, label %1751

1751:                                             ; preds = %1746
  %1752 = load i32, ptr %1556, align 8, !tbaa !56
  br label %1753

1753:                                             ; preds = %1751, %1567
  %1754 = phi i32 [ %1752, %1751 ], [ %1568, %1567 ]
  %1755 = phi i32 [ %1748, %1751 ], [ %1569, %1567 ]
  %1756 = add nuw nsw i64 %1570, 4
  %1757 = sext i32 %1754 to i64
  %1758 = icmp slt i64 %1756, %1757
  br i1 %1758, label %1567, label %1759

1759:                                             ; preds = %1753, %1554
  %1760 = phi i32 [ %1557, %1554 ], [ %1754, %1753 ]
  %1761 = getelementptr inbounds i8, ptr %1402, i64 90572
  %1762 = load i32, ptr %1761, align 4, !tbaa !41
  %1763 = icmp eq i32 %1762, 0
  %1764 = icmp sgt i32 %1760, 0
  %1765 = and i1 %1763, %1764
  br i1 %1765, label %1766, label %1817

1766:                                             ; preds = %1759
  %1767 = getelementptr inbounds i8, ptr %1402, i64 164
  %1768 = load i32, ptr %1767, align 4, !tbaa !61
  %1769 = getelementptr inbounds i8, ptr %1402, i64 90556
  %1770 = load i32, ptr %1769, align 4, !tbaa !57
  %1771 = icmp sgt i32 %1770, 0
  %1772 = getelementptr inbounds i8, ptr %1402, i64 160
  %1773 = getelementptr inbounds i8, ptr %1402, i64 13112
  %1774 = getelementptr inbounds i8, ptr %1402, i64 12600
  %1775 = zext nneg i32 %1760 to i64
  %1776 = zext nneg i32 %1770 to i64
  br label %1777

1777:                                             ; preds = %1766, %1814
  %1778 = phi i64 [ 0, %1766 ], [ %1815, %1814 ]
  br i1 %1771, label %1779, label %1814

1779:                                             ; preds = %1777
  %1780 = trunc i64 %1778 to i32
  %1781 = add i32 %1768, %1780
  %1782 = zext i32 %1781 to i64
  %1783 = load i32, ptr %1772, align 8, !tbaa !62
  %1784 = load ptr, ptr @enc_picture, align 8
  %1785 = getelementptr inbounds i8, ptr %1784, i64 6464
  %1786 = shl i64 %1782, 48
  %1787 = ashr exact i64 %1786, 48
  %1788 = load ptr, ptr %1785, align 8, !tbaa !63
  %1789 = getelementptr inbounds ptr, ptr %1788, i64 %15
  %1790 = load ptr, ptr %1789, align 8, !tbaa !6
  %1791 = getelementptr inbounds ptr, ptr %1790, i64 %1787
  %1792 = load ptr, ptr %1791, align 8, !tbaa !6
  br label %1793

1793:                                             ; preds = %1779, %1807
  %1794 = phi i64 [ 0, %1779 ], [ %1812, %1807 ]
  %1795 = trunc i64 %1794 to i32
  %1796 = add i32 %1783, %1795
  %1797 = zext i32 %1796 to i64
  %1798 = getelementptr inbounds [16 x [16 x i32]], ptr %1773, i64 0, i64 %1778, i64 %1794
  %1799 = load i32, ptr %1798, align 4, !tbaa !24
  br i1 %59, label %1800, label %1805

1800:                                             ; preds = %1793
  %1801 = getelementptr inbounds [16 x [16 x i16]], ptr %1774, i64 0, i64 %1778, i64 %1794
  %1802 = load i16, ptr %1801, align 2, !tbaa !27
  %1803 = trunc i32 %1799 to i16
  %1804 = add i16 %1802, %1803
  br label %1807

1805:                                             ; preds = %1793
  %1806 = trunc i32 %1799 to i16
  br label %1807

1807:                                             ; preds = %1800, %1805
  %1808 = phi i16 [ %1804, %1800 ], [ %1806, %1805 ]
  %1809 = shl i64 %1797, 48
  %1810 = ashr exact i64 %1809, 48
  %1811 = getelementptr inbounds i16, ptr %1792, i64 %1810
  store i16 %1808, ptr %1811, align 2, !tbaa !27
  %1812 = add nuw nsw i64 %1794, 1
  %1813 = icmp eq i64 %1812, %1776
  br i1 %1813, label %1814, label %1793

1814:                                             ; preds = %1807, %1777
  %1815 = add nuw nsw i64 %1778, 1
  %1816 = icmp eq i64 %1815, %1775
  br i1 %1816, label %1817, label %1777

1817:                                             ; preds = %1814, %1759
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %1555
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @dct_chroma4x4(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %4, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 72
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = add i32 %12, -9
  %14 = and i32 %13, -6
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds i8, ptr %4, i64 14136
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %23, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %4, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds i8, ptr %4, i64 90492
  %30 = load i32, ptr %29, align 4, !tbaa !38
  %31 = sub i32 0, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = getelementptr inbounds i8, ptr %4, i64 90552
  %35 = load i32, ptr %34, align 8, !tbaa !39
  %36 = icmp eq i32 %35, 1
  br label %37

37:                                               ; preds = %33, %3
  %38 = phi i1 [ false, %3 ], [ %36, %33 ]
  %39 = getelementptr inbounds i8, ptr %10, i64 12
  %40 = load i32, ptr %39, align 4, !tbaa !37
  %41 = getelementptr inbounds i8, ptr %4, i64 90564
  %42 = sext i32 %0 to i64
  %43 = getelementptr inbounds [2 x i32], ptr %41, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = add nsw i32 %44, %40
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %37, %47
  %53 = phi i32 [ %51, %47 ], [ %45, %37 ]
  %54 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %4, i64 90496
  %56 = load i32, ptr %55, align 8, !tbaa !55
  %57 = add nsw i32 %56, %53
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !24
  %61 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !6
  %62 = getelementptr inbounds i32, ptr %61, i64 %58
  %63 = load i32, ptr %62, align 4, !tbaa !24
  %64 = add nsw i32 %60, 15
  %65 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %42
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = zext i1 %15 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = sext i32 %63 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !6
  %75 = getelementptr inbounds ptr, ptr %74, i64 %42
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds ptr, ptr %76, i64 %68
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = sext i32 %60 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !6
  %83 = getelementptr inbounds ptr, ptr %82, i64 %42
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds ptr, ptr %84, i64 %68
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = getelementptr inbounds ptr, ptr %86, i64 %71
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %4, i64 13112
  br i1 %38, label %90, label %93

90:                                               ; preds = %52
  %91 = load i32, ptr %89, align 8, !tbaa !24
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 true)
  br label %225

93:                                               ; preds = %52
  %94 = load i32, ptr %89, align 4, !tbaa !24
  %95 = getelementptr inbounds i8, ptr %4, i64 13124
  %96 = load i32, ptr %95, align 4, !tbaa !24
  %97 = add nsw i32 %96, %94
  %98 = sub nsw i32 %94, %96
  %99 = getelementptr inbounds i8, ptr %4, i64 13116
  %100 = load i32, ptr %99, align 4, !tbaa !24
  %101 = getelementptr inbounds i8, ptr %4, i64 13120
  %102 = load i32, ptr %101, align 4, !tbaa !24
  %103 = add nsw i32 %102, %100
  %104 = sub nsw i32 %100, %102
  %105 = add nsw i32 %103, %97
  %106 = sub nsw i32 %97, %103
  %107 = shl nsw i32 %98, 1
  %108 = add nsw i32 %107, %104
  %109 = shl nsw i32 %104, 1
  %110 = sub nsw i32 %98, %109
  %111 = getelementptr inbounds i8, ptr %4, i64 13176
  %112 = load i32, ptr %111, align 4, !tbaa !24
  %113 = getelementptr inbounds i8, ptr %4, i64 13188
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = add nsw i32 %114, %112
  %116 = sub nsw i32 %112, %114
  %117 = getelementptr inbounds i8, ptr %4, i64 13180
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = getelementptr inbounds i8, ptr %4, i64 13184
  %120 = load i32, ptr %119, align 4, !tbaa !24
  %121 = add nsw i32 %120, %118
  %122 = sub nsw i32 %118, %120
  %123 = add nsw i32 %121, %115
  %124 = sub nsw i32 %115, %121
  %125 = shl nsw i32 %116, 1
  %126 = add nsw i32 %125, %122
  %127 = shl nsw i32 %122, 1
  %128 = sub nsw i32 %116, %127
  %129 = getelementptr inbounds i8, ptr %4, i64 13240
  %130 = load i32, ptr %129, align 4, !tbaa !24
  %131 = getelementptr inbounds i8, ptr %4, i64 13252
  %132 = load i32, ptr %131, align 4, !tbaa !24
  %133 = add nsw i32 %132, %130
  %134 = sub nsw i32 %130, %132
  %135 = getelementptr inbounds i8, ptr %4, i64 13244
  %136 = load i32, ptr %135, align 4, !tbaa !24
  %137 = getelementptr inbounds i8, ptr %4, i64 13248
  %138 = load i32, ptr %137, align 4, !tbaa !24
  %139 = add nsw i32 %138, %136
  %140 = sub nsw i32 %136, %138
  %141 = add nsw i32 %139, %133
  %142 = sub nsw i32 %133, %139
  %143 = shl nsw i32 %134, 1
  %144 = add nsw i32 %143, %140
  %145 = shl nsw i32 %140, 1
  %146 = sub nsw i32 %134, %145
  %147 = getelementptr inbounds i8, ptr %4, i64 13304
  %148 = load i32, ptr %147, align 4, !tbaa !24
  %149 = getelementptr inbounds i8, ptr %4, i64 13316
  %150 = load i32, ptr %149, align 4, !tbaa !24
  %151 = add nsw i32 %150, %148
  %152 = sub nsw i32 %148, %150
  %153 = getelementptr inbounds i8, ptr %4, i64 13308
  %154 = load i32, ptr %153, align 4, !tbaa !24
  %155 = getelementptr inbounds i8, ptr %4, i64 13312
  %156 = load i32, ptr %155, align 4, !tbaa !24
  %157 = add nsw i32 %156, %154
  %158 = sub nsw i32 %154, %156
  %159 = add nsw i32 %157, %151
  %160 = sub nsw i32 %151, %157
  %161 = shl nsw i32 %152, 1
  %162 = add nsw i32 %161, %158
  %163 = shl nsw i32 %158, 1
  %164 = sub nsw i32 %152, %163
  %165 = getelementptr inbounds i8, ptr %4, i64 13240
  %166 = getelementptr inbounds i8, ptr %4, i64 13176
  %167 = getelementptr inbounds i8, ptr %4, i64 13304
  %168 = add nsw i32 %159, %105
  %169 = sub nsw i32 %105, %159
  %170 = add nsw i32 %141, %123
  %171 = sub nsw i32 %123, %141
  %172 = add nsw i32 %170, %168
  store i32 %172, ptr %89, align 4, !tbaa !24
  %173 = sub nsw i32 %168, %170
  store i32 %173, ptr %165, align 4, !tbaa !24
  %174 = shl nsw i32 %169, 1
  %175 = add nsw i32 %174, %171
  store i32 %175, ptr %166, align 4, !tbaa !24
  %176 = shl nsw i32 %171, 1
  %177 = sub nsw i32 %169, %176
  store i32 %177, ptr %167, align 4, !tbaa !24
  %178 = add nsw i32 %162, %108
  %179 = sub nsw i32 %108, %162
  %180 = add nsw i32 %144, %126
  %181 = sub nsw i32 %126, %144
  %182 = add nsw i32 %180, %178
  store i32 %182, ptr %99, align 4, !tbaa !24
  %183 = sub nsw i32 %178, %180
  %184 = getelementptr inbounds i8, ptr %4, i64 13244
  store i32 %183, ptr %184, align 4, !tbaa !24
  %185 = shl nsw i32 %179, 1
  %186 = add nsw i32 %185, %181
  %187 = getelementptr inbounds i8, ptr %4, i64 13180
  store i32 %186, ptr %187, align 4, !tbaa !24
  %188 = shl nsw i32 %181, 1
  %189 = sub nsw i32 %179, %188
  %190 = getelementptr inbounds i8, ptr %4, i64 13308
  store i32 %189, ptr %190, align 4, !tbaa !24
  %191 = add nsw i32 %160, %106
  %192 = sub nsw i32 %106, %160
  %193 = add nsw i32 %142, %124
  %194 = sub nsw i32 %124, %142
  %195 = add nsw i32 %193, %191
  store i32 %195, ptr %101, align 4, !tbaa !24
  %196 = sub nsw i32 %191, %193
  %197 = getelementptr inbounds i8, ptr %4, i64 13248
  store i32 %196, ptr %197, align 4, !tbaa !24
  %198 = shl nsw i32 %192, 1
  %199 = add nsw i32 %198, %194
  %200 = getelementptr inbounds i8, ptr %4, i64 13184
  store i32 %199, ptr %200, align 4, !tbaa !24
  %201 = shl nsw i32 %194, 1
  %202 = sub nsw i32 %192, %201
  %203 = getelementptr inbounds i8, ptr %4, i64 13312
  store i32 %202, ptr %203, align 4, !tbaa !24
  %204 = add nsw i32 %164, %110
  %205 = sub nsw i32 %110, %164
  %206 = add nsw i32 %146, %128
  %207 = sub nsw i32 %128, %146
  %208 = add nsw i32 %206, %204
  store i32 %208, ptr %95, align 4, !tbaa !24
  %209 = sub nsw i32 %204, %206
  %210 = getelementptr inbounds i8, ptr %4, i64 13252
  store i32 %209, ptr %210, align 4, !tbaa !24
  %211 = shl nsw i32 %205, 1
  %212 = add nsw i32 %211, %207
  %213 = getelementptr inbounds i8, ptr %4, i64 13188
  store i32 %212, ptr %213, align 4, !tbaa !24
  %214 = shl nsw i32 %207, 1
  %215 = sub nsw i32 %205, %214
  %216 = getelementptr inbounds i8, ptr %4, i64 13316
  store i32 %215, ptr %216, align 4, !tbaa !24
  %217 = tail call i32 @llvm.abs.i32(i32 %172, i1 true)
  %218 = load ptr, ptr %73, align 8, !tbaa !6
  %219 = load i32, ptr %218, align 4, !tbaa !24
  %220 = mul nsw i32 %219, %217
  %221 = load ptr, ptr %81, align 8, !tbaa !6
  %222 = load i32, ptr %221, align 4, !tbaa !24
  %223 = add nsw i32 %222, %220
  %224 = ashr i32 %223, %64
  br label %225

225:                                              ; preds = %93, %90
  %226 = phi i32 [ %91, %90 ], [ %172, %93 ]
  %227 = phi i32 [ %92, %90 ], [ %224, %93 ]
  %228 = shl i32 %0, 2
  %229 = sub i32 %1, %228
  %230 = tail call signext i32 @sign(i32 noundef signext %227, i32 noundef signext %226) #7
  %231 = shl i32 %1, 1
  %232 = and i32 %231, 2
  %233 = and i32 %2, 1
  %234 = or disjoint i32 %232, %233
  %235 = zext nneg i32 %234 to i64
  %236 = and i32 %229, -2
  %237 = add i32 %236, -4
  %238 = ashr i32 %2, 1
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level_temp, i64 0, i64 %42, i64 %235, i64 %240
  store i32 %230, ptr %241, align 4, !tbaa !24
  br i1 %38, label %256, label %242

242:                                              ; preds = %225
  %243 = icmp slt i32 %60, 4
  %244 = load ptr, ptr %88, align 8, !tbaa !6
  %245 = load i32, ptr %244, align 4, !tbaa !24
  %246 = mul nsw i32 %245, %227
  br i1 %243, label %247, label %253

247:                                              ; preds = %242
  %248 = sub nsw i32 3, %60
  %249 = shl nuw i32 1, %248
  %250 = add nsw i32 %246, %249
  %251 = sub nsw i32 4, %60
  %252 = ashr i32 %250, %251
  br label %256

253:                                              ; preds = %242
  %254 = add nsw i32 %60, -4
  %255 = shl i32 %246, %254
  br label %256

256:                                              ; preds = %225, %247, %253
  %257 = phi i32 [ %252, %247 ], [ %255, %253 ], [ %227, %225 ]
  %258 = load ptr, ptr @img, align 8, !tbaa !6
  %259 = getelementptr inbounds i8, ptr %258, i64 13112
  %260 = load i32, ptr %259, align 8, !tbaa !24
  %261 = tail call signext i32 @sign(i32 noundef signext %257, i32 noundef signext %260) #7
  %262 = load ptr, ptr @img, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 13112
  store i32 %261, ptr %263, align 8, !tbaa !24
  %264 = icmp slt i32 %60, 4
  %265 = add nsw i32 %60, -4
  %266 = sub nsw i32 3, %60
  %267 = shl nuw i32 1, %266
  %268 = sub nsw i32 4, %60
  br label %269

269:                                              ; preds = %333, %256
  %270 = phi i64 [ 1, %256 ], [ %334, %333 ]
  %271 = phi i32 [ 0, %256 ], [ %335, %333 ]
  %272 = phi i32 [ -1, %256 ], [ %336, %333 ]
  %273 = phi i32 [ 0, %256 ], [ %337, %333 ]
  %274 = getelementptr inbounds [16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 %270
  %275 = load i8, ptr %274, align 1, !tbaa !43
  %276 = getelementptr inbounds i8, ptr %274, i64 1
  %277 = load i8, ptr %276, align 1, !tbaa !43
  %278 = add nsw i32 %272, 1
  %279 = load ptr, ptr @img, align 8, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %279, i64 13112
  %281 = zext i8 %277 to i64
  %282 = zext i8 %275 to i64
  %283 = getelementptr inbounds [16 x [16 x i32]], ptr %280, i64 0, i64 %281, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !24
  %285 = tail call i32 @llvm.abs.i32(i32 %284, i1 true)
  br i1 %38, label %286, label %288

286:                                              ; preds = %269
  %287 = icmp eq i32 %284, 0
  br i1 %287, label %327, label %301

288:                                              ; preds = %269
  %289 = getelementptr inbounds ptr, ptr %73, i64 %282
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = getelementptr inbounds i32, ptr %290, i64 %281
  %292 = load i32, ptr %291, align 4, !tbaa !24
  %293 = mul nsw i32 %292, %285
  %294 = getelementptr inbounds ptr, ptr %81, i64 %282
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = getelementptr inbounds i32, ptr %295, i64 %281
  %297 = load i32, ptr %296, align 4, !tbaa !24
  %298 = add nsw i32 %297, %293
  %299 = ashr i32 %298, %64
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %338, label %301

301:                                              ; preds = %288, %286
  %302 = phi i32 [ %299, %288 ], [ %285, %286 ]
  %303 = or i8 %275, %277
  %304 = icmp eq i8 %303, 0
  %305 = select i1 %304, i32 %273, i32 1
  %306 = tail call signext i32 @sign(i32 noundef signext %302, i32 noundef signext %284) #7
  %307 = sext i32 %271 to i64
  %308 = getelementptr inbounds i32, ptr %24, i64 %307
  store i32 %306, ptr %308, align 4, !tbaa !24
  %309 = getelementptr inbounds i32, ptr %26, i64 %307
  store i32 %278, ptr %309, align 4, !tbaa !24
  %310 = add nsw i32 %271, 1
  %311 = load ptr, ptr @img, align 8, !tbaa !6
  %312 = getelementptr inbounds i8, ptr %311, i64 13112
  %313 = getelementptr inbounds [16 x [16 x i32]], ptr %312, i64 0, i64 %281, i64 %282
  %314 = load i32, ptr %313, align 4, !tbaa !24
  %315 = tail call signext i32 @sign(i32 noundef signext %302, i32 noundef signext %314) #7
  br i1 %38, label %327, label %316

316:                                              ; preds = %301
  %317 = getelementptr inbounds ptr, ptr %88, i64 %282
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  %319 = getelementptr inbounds i32, ptr %318, i64 %281
  %320 = load i32, ptr %319, align 4, !tbaa !24
  %321 = mul nsw i32 %320, %315
  br i1 %264, label %322, label %325

322:                                              ; preds = %316
  %323 = add nsw i32 %321, %267
  %324 = ashr i32 %323, %268
  br label %338

325:                                              ; preds = %316
  %326 = shl i32 %321, %265
  br label %338

327:                                              ; preds = %286, %301
  %328 = phi i32 [ %310, %301 ], [ %271, %286 ]
  %329 = phi i32 [ -1, %301 ], [ %278, %286 ]
  %330 = phi i32 [ %305, %301 ], [ %273, %286 ]
  %331 = add nuw nsw i64 %270, 1
  %332 = icmp eq i64 %331, 16
  br i1 %332, label %353, label %333

333:                                              ; preds = %327, %338
  %334 = phi i64 [ %331, %327 ], [ %348, %338 ]
  %335 = phi i32 [ %328, %327 ], [ %340, %338 ]
  %336 = phi i32 [ %329, %327 ], [ %341, %338 ]
  %337 = phi i32 [ %330, %327 ], [ %342, %338 ]
  br label %269

338:                                              ; preds = %288, %325, %322
  %339 = phi i32 [ 0, %288 ], [ %326, %325 ], [ %324, %322 ]
  %340 = phi i32 [ %271, %288 ], [ %310, %325 ], [ %310, %322 ]
  %341 = phi i32 [ %278, %288 ], [ -1, %325 ], [ -1, %322 ]
  %342 = phi i32 [ %273, %288 ], [ %305, %325 ], [ %305, %322 ]
  %343 = load ptr, ptr @img, align 8, !tbaa !6
  %344 = getelementptr inbounds i8, ptr %343, i64 13112
  %345 = zext i8 %277 to i64
  %346 = zext i8 %275 to i64
  %347 = getelementptr inbounds [16 x [16 x i32]], ptr %344, i64 0, i64 %345, i64 %346
  store i32 %339, ptr %347, align 4, !tbaa !24
  %348 = add nuw nsw i64 %270, 1
  %349 = icmp eq i64 %348, 16
  br i1 %349, label %350, label %333

350:                                              ; preds = %338
  %351 = sext i32 %340 to i64
  %352 = getelementptr inbounds i32, ptr %24, i64 %351
  store i32 0, ptr %352, align 4, !tbaa !24
  br label %356

353:                                              ; preds = %327
  %354 = sext i32 %328 to i64
  %355 = getelementptr inbounds i32, ptr %24, i64 %354
  store i32 0, ptr %355, align 4, !tbaa !24
  br i1 %38, label %495, label %356

356:                                              ; preds = %353, %350
  %357 = phi i32 [ %342, %350 ], [ %330, %353 ]
  %358 = load ptr, ptr @img, align 8, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %358, i64 13112
  %360 = load i32, ptr %359, align 4, !tbaa !24
  %361 = getelementptr inbounds i8, ptr %358, i64 13116
  %362 = load i32, ptr %361, align 4, !tbaa !24
  %363 = getelementptr inbounds i8, ptr %358, i64 13120
  %364 = load i32, ptr %363, align 4, !tbaa !24
  %365 = getelementptr inbounds i8, ptr %358, i64 13124
  %366 = load i32, ptr %365, align 4, !tbaa !24
  %367 = add nsw i32 %364, %360
  %368 = sub nsw i32 %360, %364
  %369 = ashr i32 %362, 1
  %370 = sub nsw i32 %369, %366
  %371 = ashr i32 %366, 1
  %372 = add nsw i32 %371, %362
  %373 = add nsw i32 %372, %367
  %374 = sub nsw i32 %367, %372
  %375 = add nsw i32 %370, %368
  %376 = sub nsw i32 %368, %370
  %377 = getelementptr inbounds i8, ptr %358, i64 13176
  %378 = load i32, ptr %377, align 4, !tbaa !24
  %379 = getelementptr inbounds i8, ptr %358, i64 13180
  %380 = load i32, ptr %379, align 4, !tbaa !24
  %381 = getelementptr inbounds i8, ptr %358, i64 13184
  %382 = load i32, ptr %381, align 4, !tbaa !24
  %383 = getelementptr inbounds i8, ptr %358, i64 13188
  %384 = load i32, ptr %383, align 4, !tbaa !24
  %385 = add nsw i32 %382, %378
  %386 = sub nsw i32 %378, %382
  %387 = ashr i32 %380, 1
  %388 = sub nsw i32 %387, %384
  %389 = ashr i32 %384, 1
  %390 = add nsw i32 %389, %380
  %391 = add nsw i32 %390, %385
  %392 = sub nsw i32 %385, %390
  %393 = add nsw i32 %388, %386
  %394 = sub nsw i32 %386, %388
  %395 = getelementptr inbounds i8, ptr %358, i64 13240
  %396 = load i32, ptr %395, align 4, !tbaa !24
  %397 = getelementptr inbounds i8, ptr %358, i64 13244
  %398 = load i32, ptr %397, align 4, !tbaa !24
  %399 = getelementptr inbounds i8, ptr %358, i64 13248
  %400 = load i32, ptr %399, align 4, !tbaa !24
  %401 = getelementptr inbounds i8, ptr %358, i64 13252
  %402 = load i32, ptr %401, align 4, !tbaa !24
  %403 = add nsw i32 %400, %396
  %404 = sub nsw i32 %396, %400
  %405 = ashr i32 %398, 1
  %406 = sub nsw i32 %405, %402
  %407 = ashr i32 %402, 1
  %408 = add nsw i32 %407, %398
  %409 = add nsw i32 %408, %403
  %410 = sub nsw i32 %403, %408
  %411 = add nsw i32 %406, %404
  %412 = sub nsw i32 %404, %406
  %413 = getelementptr inbounds i8, ptr %358, i64 13304
  %414 = load i32, ptr %413, align 4, !tbaa !24
  %415 = getelementptr inbounds i8, ptr %358, i64 13308
  %416 = load i32, ptr %415, align 4, !tbaa !24
  %417 = getelementptr inbounds i8, ptr %358, i64 13312
  %418 = load i32, ptr %417, align 4, !tbaa !24
  %419 = getelementptr inbounds i8, ptr %358, i64 13316
  %420 = load i32, ptr %419, align 4, !tbaa !24
  %421 = add nsw i32 %418, %414
  %422 = sub nsw i32 %414, %418
  %423 = ashr i32 %416, 1
  %424 = sub nsw i32 %423, %420
  %425 = ashr i32 %420, 1
  %426 = add nsw i32 %425, %416
  %427 = add nsw i32 %426, %421
  %428 = sub nsw i32 %421, %426
  %429 = add nsw i32 %424, %422
  %430 = sub nsw i32 %422, %424
  %431 = add nsw i32 %409, %373
  %432 = sub nsw i32 %373, %409
  %433 = ashr i32 %391, 1
  %434 = sub nsw i32 %433, %427
  %435 = ashr i32 %427, 1
  %436 = add nsw i32 %435, %391
  %437 = add i32 %431, 32
  %438 = add i32 %437, %436
  %439 = ashr i32 %438, 6
  store i32 %439, ptr %359, align 4, !tbaa !24
  %440 = sub i32 %437, %436
  %441 = ashr i32 %440, 6
  store i32 %441, ptr %413, align 4, !tbaa !24
  %442 = add i32 %432, 32
  %443 = add i32 %442, %434
  %444 = ashr i32 %443, 6
  store i32 %444, ptr %377, align 4, !tbaa !24
  %445 = sub i32 %442, %434
  %446 = ashr i32 %445, 6
  store i32 %446, ptr %395, align 4, !tbaa !24
  %447 = add nsw i32 %411, %375
  %448 = sub nsw i32 %375, %411
  %449 = ashr i32 %393, 1
  %450 = sub nsw i32 %449, %429
  %451 = ashr i32 %429, 1
  %452 = add nsw i32 %451, %393
  %453 = add i32 %447, 32
  %454 = add i32 %453, %452
  %455 = ashr i32 %454, 6
  store i32 %455, ptr %361, align 4, !tbaa !24
  %456 = sub i32 %453, %452
  %457 = ashr i32 %456, 6
  store i32 %457, ptr %415, align 4, !tbaa !24
  %458 = add i32 %448, 32
  %459 = add i32 %458, %450
  %460 = ashr i32 %459, 6
  store i32 %460, ptr %379, align 4, !tbaa !24
  %461 = sub i32 %458, %450
  %462 = ashr i32 %461, 6
  store i32 %462, ptr %397, align 4, !tbaa !24
  %463 = add nsw i32 %412, %376
  %464 = sub nsw i32 %376, %412
  %465 = ashr i32 %394, 1
  %466 = sub nsw i32 %465, %430
  %467 = ashr i32 %430, 1
  %468 = add nsw i32 %467, %394
  %469 = add i32 %463, 32
  %470 = add i32 %469, %468
  %471 = ashr i32 %470, 6
  store i32 %471, ptr %363, align 4, !tbaa !24
  %472 = sub i32 %469, %468
  %473 = ashr i32 %472, 6
  store i32 %473, ptr %417, align 4, !tbaa !24
  %474 = add i32 %464, 32
  %475 = add i32 %474, %466
  %476 = ashr i32 %475, 6
  store i32 %476, ptr %381, align 4, !tbaa !24
  %477 = sub i32 %474, %466
  %478 = ashr i32 %477, 6
  store i32 %478, ptr %399, align 4, !tbaa !24
  %479 = add nsw i32 %410, %374
  %480 = sub nsw i32 %374, %410
  %481 = ashr i32 %392, 1
  %482 = sub nsw i32 %481, %428
  %483 = ashr i32 %428, 1
  %484 = add nsw i32 %483, %392
  %485 = add i32 %479, 32
  %486 = add i32 %485, %484
  %487 = ashr i32 %486, 6
  store i32 %487, ptr %365, align 4, !tbaa !24
  %488 = sub i32 %485, %484
  %489 = ashr i32 %488, 6
  store i32 %489, ptr %419, align 4, !tbaa !24
  %490 = add i32 %480, 32
  %491 = add i32 %490, %482
  %492 = ashr i32 %491, 6
  store i32 %492, ptr %383, align 4, !tbaa !24
  %493 = sub i32 %490, %482
  %494 = ashr i32 %493, 6
  store i32 %494, ptr %401, align 4, !tbaa !24
  br label %495

495:                                              ; preds = %356, %353
  %496 = phi i32 [ %357, %356 ], [ %330, %353 ]
  ret i32 %496
}

; Function Attrs: nounwind
define dso_local signext i32 @dct_chroma_DC(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 14144
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = sext i32 %0 to i64
  %7 = getelementptr ptr, ptr %5, i64 %6
  %8 = getelementptr i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %2, %36
  %14 = phi i64 [ 0, %2 ], [ %40, %36 ]
  %15 = phi i32 [ %1, %2 ], [ %39, %36 ]
  %16 = phi i32 [ -1, %2 ], [ %38, %36 ]
  %17 = phi i32 [ 0, %2 ], [ %37, %36 ]
  %18 = getelementptr inbounds [16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !43
  %20 = getelementptr inbounds i8, ptr %18, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = add nsw i32 %16, 1
  %23 = zext i8 %19 to i64
  %24 = zext i8 %21 to i64
  %25 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level, i64 0, i64 %6, i64 %23, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %13
  %29 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %30 = tail call i32 @llvm.smax.i32(i32 %15, i32 1)
  %31 = tail call signext i32 @sign(i32 noundef signext %29, i32 noundef signext %26) #7
  %32 = sext i32 %17 to i64
  %33 = getelementptr inbounds i32, ptr %10, i64 %32
  store i32 %31, ptr %33, align 4, !tbaa !24
  %34 = getelementptr inbounds i32, ptr %12, i64 %32
  store i32 %22, ptr %34, align 4, !tbaa !24
  %35 = add nsw i32 %17, 1
  br label %36

36:                                               ; preds = %13, %28
  %37 = phi i32 [ %35, %28 ], [ %17, %13 ]
  %38 = phi i32 [ -1, %28 ], [ %22, %13 ]
  %39 = phi i32 [ %30, %28 ], [ %15, %13 ]
  %40 = add nuw nsw i64 %14, 1
  %41 = icmp eq i64 %40, 16
  br i1 %41, label %42, label %13

42:                                               ; preds = %36
  %43 = sext i32 %37 to i64
  %44 = getelementptr inbounds i32, ptr %10, i64 %43
  store i32 0, ptr %44, align 4, !tbaa !24
  ret i32 %39
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @dct_luma_sp(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x i32]], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %7 = lshr i32 %0, 2
  %8 = ashr i32 %1, 2
  %9 = and i32 %8, -2
  %10 = ashr i32 %0, 3
  %11 = add nsw i32 %9, %10
  %12 = lshr i32 %1, 1
  %13 = and i32 %12, 2
  %14 = and i32 %7, 1
  %15 = or disjoint i32 %13, %14
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 14136
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = zext nneg i32 %15 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %24, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %16, i64 31576
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = getelementptr inbounds i8, ptr %16, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %29, i64 %32
  %34 = getelementptr inbounds i8, ptr %16, i64 90264
  %35 = load i32, ptr %34, align 8, !tbaa !31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = getelementptr inbounds i8, ptr %16, i64 90220
  %39 = load i32, ptr %38, align 4, !tbaa !32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %33, i64 424
  %43 = load i32, ptr %42, align 8, !tbaa !33
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %37, %41, %3
  %46 = phi i1 [ true, %3 ], [ false, %37 ], [ %44, %41 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %47 = getelementptr inbounds i8, ptr %33, i64 12
  %48 = load i32, ptr %47, align 4, !tbaa !37
  %49 = add nsw i32 %48, -12
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 3.000000e+00
  %52 = tail call double @exp2(double %51) #7
  %53 = fmul double %52, 8.500000e-01
  %54 = load i32, ptr %47, align 4, !tbaa !37
  %55 = freeze i32 %54
  %56 = sdiv i32 %55, 6
  %57 = add nsw i32 %56, 15
  %58 = getelementptr inbounds i8, ptr %33, i64 16
  %59 = load i32, ptr %58, align 8, !tbaa !64
  %60 = freeze i32 %59
  %61 = sdiv i32 %60, 6
  %62 = add nsw i32 %61, 15
  %63 = shl nuw i32 1, %57
  %64 = shl nuw i32 1, %62
  %65 = load ptr, ptr @img, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 12600
  %67 = getelementptr inbounds i8, ptr %65, i64 13112
  %68 = sext i32 %0 to i64
  %69 = sext i32 %1 to i64
  %70 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %69, i64 %68
  %71 = load i16, ptr %70, align 2, !tbaa !27
  %72 = zext i16 %71 to i32
  %73 = load i32, ptr %67, align 4, !tbaa !24
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr %67, align 4, !tbaa !24
  store i32 %72, ptr %4, align 4, !tbaa !24
  %75 = add nsw i64 %68, 1
  %76 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %69, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !27
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds i8, ptr %65, i64 13116
  %80 = load i32, ptr %79, align 4, !tbaa !24
  %81 = add nsw i32 %80, %78
  store i32 %81, ptr %79, align 4, !tbaa !24
  %82 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %78, ptr %82, align 4, !tbaa !24
  %83 = add nsw i64 %68, 2
  %84 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %69, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !27
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds i8, ptr %65, i64 13120
  %88 = load i32, ptr %87, align 4, !tbaa !24
  %89 = add nsw i32 %88, %86
  store i32 %89, ptr %87, align 4, !tbaa !24
  %90 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %86, ptr %90, align 4, !tbaa !24
  %91 = add nsw i64 %68, 3
  %92 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %69, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !27
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds i8, ptr %65, i64 13124
  %96 = load i32, ptr %95, align 4, !tbaa !24
  %97 = add nsw i32 %96, %94
  store i32 %97, ptr %95, align 4, !tbaa !24
  %98 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 %94, ptr %98, align 4, !tbaa !24
  %99 = add nsw i64 %69, 1
  %100 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %99, i64 %68
  %101 = load i16, ptr %100, align 2, !tbaa !27
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds i8, ptr %65, i64 13176
  %104 = load i32, ptr %103, align 4, !tbaa !24
  %105 = add nsw i32 %104, %102
  store i32 %105, ptr %103, align 4, !tbaa !24
  %106 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %102, ptr %106, align 4, !tbaa !24
  %107 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %99, i64 %75
  %108 = load i16, ptr %107, align 2, !tbaa !27
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds i8, ptr %65, i64 13180
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = add nsw i32 %111, %109
  store i32 %112, ptr %110, align 4, !tbaa !24
  %113 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 %109, ptr %113, align 4, !tbaa !24
  %114 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %99, i64 %83
  %115 = load i16, ptr %114, align 2, !tbaa !27
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds i8, ptr %65, i64 13184
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = add nsw i32 %118, %116
  store i32 %119, ptr %117, align 4, !tbaa !24
  %120 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %116, ptr %120, align 4, !tbaa !24
  %121 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %99, i64 %91
  %122 = load i16, ptr %121, align 2, !tbaa !27
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds i8, ptr %65, i64 13188
  %125 = load i32, ptr %124, align 4, !tbaa !24
  %126 = add nsw i32 %125, %123
  store i32 %126, ptr %124, align 4, !tbaa !24
  %127 = getelementptr inbounds i8, ptr %4, i64 52
  store i32 %123, ptr %127, align 4, !tbaa !24
  %128 = add nsw i64 %69, 2
  %129 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %128, i64 %68
  %130 = load i16, ptr %129, align 2, !tbaa !27
  %131 = zext i16 %130 to i32
  %132 = getelementptr inbounds i8, ptr %65, i64 13240
  %133 = load i32, ptr %132, align 4, !tbaa !24
  %134 = add nsw i32 %133, %131
  store i32 %134, ptr %132, align 4, !tbaa !24
  %135 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %131, ptr %135, align 4, !tbaa !24
  %136 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %128, i64 %75
  %137 = load i16, ptr %136, align 2, !tbaa !27
  %138 = zext i16 %137 to i32
  %139 = getelementptr inbounds i8, ptr %65, i64 13244
  %140 = load i32, ptr %139, align 4, !tbaa !24
  %141 = add nsw i32 %140, %138
  store i32 %141, ptr %139, align 4, !tbaa !24
  %142 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %138, ptr %142, align 4, !tbaa !24
  %143 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %128, i64 %83
  %144 = load i16, ptr %143, align 2, !tbaa !27
  %145 = zext i16 %144 to i32
  %146 = getelementptr inbounds i8, ptr %65, i64 13248
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = add nsw i32 %147, %145
  store i32 %148, ptr %146, align 4, !tbaa !24
  %149 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 %145, ptr %149, align 4, !tbaa !24
  %150 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %128, i64 %91
  %151 = load i16, ptr %150, align 2, !tbaa !27
  %152 = zext i16 %151 to i32
  %153 = getelementptr inbounds i8, ptr %65, i64 13252
  %154 = load i32, ptr %153, align 4, !tbaa !24
  %155 = add nsw i32 %154, %152
  store i32 %155, ptr %153, align 4, !tbaa !24
  %156 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %152, ptr %156, align 4, !tbaa !24
  %157 = add nsw i64 %69, 3
  %158 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %157, i64 %68
  %159 = load i16, ptr %158, align 2, !tbaa !27
  %160 = zext i16 %159 to i32
  %161 = getelementptr inbounds i8, ptr %65, i64 13304
  %162 = load i32, ptr %161, align 4, !tbaa !24
  %163 = add nsw i32 %162, %160
  store i32 %163, ptr %161, align 4, !tbaa !24
  %164 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %160, ptr %164, align 4, !tbaa !24
  %165 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %157, i64 %75
  %166 = load i16, ptr %165, align 2, !tbaa !27
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds i8, ptr %65, i64 13308
  %169 = load i32, ptr %168, align 4, !tbaa !24
  %170 = add nsw i32 %169, %167
  store i32 %170, ptr %168, align 4, !tbaa !24
  %171 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %167, ptr %171, align 4, !tbaa !24
  %172 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %157, i64 %83
  %173 = load i16, ptr %172, align 2, !tbaa !27
  %174 = zext i16 %173 to i32
  %175 = getelementptr inbounds i8, ptr %65, i64 13312
  %176 = load i32, ptr %175, align 4, !tbaa !24
  %177 = add nsw i32 %176, %174
  store i32 %177, ptr %175, align 4, !tbaa !24
  %178 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %174, ptr %178, align 4, !tbaa !24
  %179 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 %157, i64 %91
  %180 = load i16, ptr %179, align 2, !tbaa !27
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds i8, ptr %65, i64 13316
  %183 = load i32, ptr %182, align 4, !tbaa !24
  %184 = add nsw i32 %183, %181
  store i32 %184, ptr %182, align 4, !tbaa !24
  %185 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 %181, ptr %185, align 4, !tbaa !24
  %186 = mul i32 %56, 6
  %187 = sub i32 %55, %186
  %188 = sdiv i32 %63, 6
  %189 = load ptr, ptr @img, align 8, !tbaa !6
  %190 = getelementptr inbounds i8, ptr %189, i64 13112
  %191 = load i32, ptr %190, align 4, !tbaa !24
  %192 = getelementptr inbounds i8, ptr %189, i64 13124
  %193 = load i32, ptr %192, align 4, !tbaa !24
  %194 = add nsw i32 %193, %191
  %195 = sub nsw i32 %191, %193
  %196 = getelementptr inbounds i8, ptr %189, i64 13116
  %197 = load i32, ptr %196, align 4, !tbaa !24
  %198 = getelementptr inbounds i8, ptr %189, i64 13120
  %199 = load i32, ptr %198, align 4, !tbaa !24
  %200 = add nsw i32 %199, %197
  %201 = sub nsw i32 %197, %199
  %202 = add nsw i32 %200, %194
  %203 = sub nsw i32 %194, %200
  store i32 %203, ptr %198, align 8, !tbaa !24
  %204 = shl nsw i32 %195, 1
  %205 = add nsw i32 %204, %201
  %206 = shl nsw i32 %201, 1
  %207 = sub nsw i32 %195, %206
  store i32 %207, ptr %192, align 4, !tbaa !24
  %208 = getelementptr inbounds i8, ptr %189, i64 13176
  %209 = load i32, ptr %208, align 4, !tbaa !24
  %210 = getelementptr inbounds i8, ptr %189, i64 13188
  %211 = load i32, ptr %210, align 4, !tbaa !24
  %212 = add nsw i32 %211, %209
  %213 = sub nsw i32 %209, %211
  %214 = getelementptr inbounds i8, ptr %189, i64 13180
  %215 = load i32, ptr %214, align 4, !tbaa !24
  %216 = getelementptr inbounds i8, ptr %189, i64 13184
  %217 = load i32, ptr %216, align 4, !tbaa !24
  %218 = add nsw i32 %217, %215
  %219 = sub nsw i32 %215, %217
  %220 = add nsw i32 %218, %212
  %221 = sub nsw i32 %212, %218
  %222 = shl nsw i32 %213, 1
  %223 = add nsw i32 %222, %219
  %224 = shl nsw i32 %219, 1
  %225 = sub nsw i32 %213, %224
  store i32 %225, ptr %210, align 4, !tbaa !24
  %226 = getelementptr inbounds i8, ptr %189, i64 13240
  %227 = load i32, ptr %226, align 4, !tbaa !24
  %228 = getelementptr inbounds i8, ptr %189, i64 13252
  %229 = load i32, ptr %228, align 4, !tbaa !24
  %230 = add nsw i32 %229, %227
  %231 = sub nsw i32 %227, %229
  %232 = getelementptr inbounds i8, ptr %189, i64 13244
  %233 = load i32, ptr %232, align 4, !tbaa !24
  %234 = getelementptr inbounds i8, ptr %189, i64 13248
  %235 = load i32, ptr %234, align 4, !tbaa !24
  %236 = add nsw i32 %235, %233
  %237 = sub nsw i32 %233, %235
  %238 = add nsw i32 %236, %230
  %239 = sub nsw i32 %230, %236
  %240 = shl nsw i32 %231, 1
  %241 = add nsw i32 %240, %237
  %242 = shl nsw i32 %237, 1
  %243 = sub nsw i32 %231, %242
  %244 = getelementptr inbounds i8, ptr %189, i64 13304
  %245 = load i32, ptr %244, align 4, !tbaa !24
  %246 = getelementptr inbounds i8, ptr %189, i64 13316
  %247 = load i32, ptr %246, align 4, !tbaa !24
  %248 = add nsw i32 %247, %245
  %249 = sub nsw i32 %245, %247
  %250 = getelementptr inbounds i8, ptr %189, i64 13308
  %251 = load i32, ptr %250, align 4, !tbaa !24
  %252 = getelementptr inbounds i8, ptr %189, i64 13312
  %253 = load i32, ptr %252, align 4, !tbaa !24
  %254 = add nsw i32 %253, %251
  %255 = sub nsw i32 %251, %253
  %256 = add nsw i32 %254, %248
  %257 = sub nsw i32 %248, %254
  %258 = shl nsw i32 %249, 1
  %259 = add nsw i32 %258, %255
  %260 = shl nsw i32 %255, 1
  %261 = sub nsw i32 %249, %260
  %262 = mul i32 %61, 6
  %263 = sub i32 %60, %262
  %264 = getelementptr inbounds i8, ptr %189, i64 13240
  %265 = getelementptr inbounds i8, ptr %189, i64 13176
  %266 = getelementptr inbounds i8, ptr %189, i64 13304
  %267 = add nsw i32 %256, %202
  %268 = sub nsw i32 %202, %256
  %269 = add nsw i32 %238, %220
  %270 = sub nsw i32 %220, %238
  %271 = add nsw i32 %269, %267
  store i32 %271, ptr %190, align 4, !tbaa !24
  %272 = sub nsw i32 %267, %269
  store i32 %272, ptr %264, align 4, !tbaa !24
  %273 = shl nsw i32 %268, 1
  %274 = add nsw i32 %273, %270
  store i32 %274, ptr %265, align 4, !tbaa !24
  %275 = shl nsw i32 %270, 1
  %276 = sub nsw i32 %268, %275
  store i32 %276, ptr %266, align 4, !tbaa !24
  %277 = add nsw i32 %259, %205
  %278 = sub nsw i32 %205, %259
  %279 = add nsw i32 %241, %223
  %280 = sub nsw i32 %223, %241
  %281 = add nsw i32 %279, %277
  store i32 %281, ptr %196, align 4, !tbaa !24
  %282 = sub nsw i32 %277, %279
  %283 = getelementptr inbounds i8, ptr %189, i64 13244
  store i32 %282, ptr %283, align 4, !tbaa !24
  %284 = shl nsw i32 %278, 1
  %285 = add nsw i32 %284, %280
  %286 = getelementptr inbounds i8, ptr %189, i64 13180
  store i32 %285, ptr %286, align 4, !tbaa !24
  %287 = shl nsw i32 %280, 1
  %288 = sub nsw i32 %278, %287
  %289 = getelementptr inbounds i8, ptr %189, i64 13308
  store i32 %288, ptr %289, align 4, !tbaa !24
  %290 = load i32, ptr %198, align 4, !tbaa !24
  %291 = add nsw i32 %257, %290
  %292 = sub nsw i32 %290, %257
  %293 = add nsw i32 %239, %221
  %294 = sub nsw i32 %221, %239
  %295 = add nsw i32 %293, %291
  store i32 %295, ptr %198, align 4, !tbaa !24
  %296 = sub nsw i32 %291, %293
  %297 = getelementptr inbounds i8, ptr %189, i64 13248
  store i32 %296, ptr %297, align 4, !tbaa !24
  %298 = shl nsw i32 %292, 1
  %299 = add nsw i32 %298, %294
  %300 = getelementptr inbounds i8, ptr %189, i64 13184
  store i32 %299, ptr %300, align 4, !tbaa !24
  %301 = shl nsw i32 %294, 1
  %302 = sub nsw i32 %292, %301
  %303 = getelementptr inbounds i8, ptr %189, i64 13312
  store i32 %302, ptr %303, align 4, !tbaa !24
  %304 = load i32, ptr %192, align 4, !tbaa !24
  %305 = add nsw i32 %261, %304
  %306 = sub nsw i32 %304, %261
  %307 = load i32, ptr %210, align 4, !tbaa !24
  %308 = add nsw i32 %243, %307
  %309 = sub nsw i32 %307, %243
  %310 = add nsw i32 %308, %305
  store i32 %310, ptr %192, align 4, !tbaa !24
  %311 = sub nsw i32 %305, %308
  %312 = getelementptr inbounds i8, ptr %189, i64 13252
  store i32 %311, ptr %312, align 4, !tbaa !24
  %313 = shl nsw i32 %306, 1
  %314 = add nsw i32 %313, %309
  %315 = getelementptr inbounds i8, ptr %189, i64 13188
  store i32 %314, ptr %315, align 4, !tbaa !24
  %316 = shl nsw i32 %309, 1
  %317 = sub nsw i32 %306, %316
  %318 = getelementptr inbounds i8, ptr %189, i64 13316
  store i32 %317, ptr %318, align 4, !tbaa !24
  %319 = fmul double %53, 4.000000e+00
  %320 = load i32, ptr %4, align 4, !tbaa !24
  %321 = load i32, ptr %98, align 4, !tbaa !24
  %322 = add nsw i32 %321, %320
  %323 = sub nsw i32 %320, %321
  %324 = load i32, ptr %82, align 4, !tbaa !24
  %325 = load i32, ptr %90, align 4, !tbaa !24
  %326 = add nsw i32 %325, %324
  %327 = sub nsw i32 %324, %325
  %328 = add nsw i32 %326, %322
  %329 = sub nsw i32 %322, %326
  %330 = shl nsw i32 %323, 1
  %331 = add nsw i32 %330, %327
  %332 = shl nsw i32 %327, 1
  %333 = sub nsw i32 %323, %332
  store i32 %333, ptr %98, align 4, !tbaa !24
  %334 = load i32, ptr %106, align 4, !tbaa !24
  %335 = load i32, ptr %127, align 4, !tbaa !24
  %336 = add nsw i32 %335, %334
  %337 = sub nsw i32 %334, %335
  %338 = load i32, ptr %113, align 4, !tbaa !24
  %339 = load i32, ptr %120, align 4, !tbaa !24
  %340 = add nsw i32 %339, %338
  %341 = sub nsw i32 %338, %339
  %342 = add nsw i32 %340, %336
  %343 = sub nsw i32 %336, %340
  %344 = getelementptr inbounds i8, ptr %4, i64 36
  %345 = shl nsw i32 %337, 1
  %346 = add nsw i32 %345, %341
  %347 = getelementptr inbounds i8, ptr %4, i64 20
  %348 = shl nsw i32 %341, 1
  %349 = sub nsw i32 %337, %348
  %350 = getelementptr inbounds i8, ptr %4, i64 52
  %351 = load i32, ptr %135, align 4, !tbaa !24
  %352 = load i32, ptr %156, align 4, !tbaa !24
  %353 = add nsw i32 %352, %351
  %354 = sub nsw i32 %351, %352
  %355 = load i32, ptr %142, align 4, !tbaa !24
  %356 = load i32, ptr %149, align 4, !tbaa !24
  %357 = add nsw i32 %356, %355
  %358 = sub nsw i32 %355, %356
  %359 = add nsw i32 %357, %353
  %360 = sub nsw i32 %353, %357
  %361 = getelementptr inbounds i8, ptr %4, i64 40
  %362 = shl nsw i32 %354, 1
  %363 = add nsw i32 %362, %358
  %364 = getelementptr inbounds i8, ptr %4, i64 24
  %365 = shl nsw i32 %358, 1
  %366 = sub nsw i32 %354, %365
  %367 = getelementptr inbounds i8, ptr %4, i64 56
  %368 = load i32, ptr %164, align 4, !tbaa !24
  %369 = load i32, ptr %185, align 4, !tbaa !24
  %370 = add nsw i32 %369, %368
  %371 = sub nsw i32 %368, %369
  %372 = load i32, ptr %171, align 4, !tbaa !24
  %373 = load i32, ptr %178, align 4, !tbaa !24
  %374 = add nsw i32 %373, %372
  %375 = sub nsw i32 %372, %373
  %376 = add nsw i32 %374, %370
  %377 = sub nsw i32 %370, %374
  %378 = getelementptr inbounds i8, ptr %4, i64 44
  %379 = shl nsw i32 %371, 1
  %380 = add nsw i32 %379, %375
  %381 = getelementptr inbounds i8, ptr %4, i64 28
  %382 = shl nsw i32 %375, 1
  %383 = sub nsw i32 %371, %382
  %384 = getelementptr inbounds i8, ptr %4, i64 60
  %385 = add nsw i32 %376, %328
  %386 = sub nsw i32 %328, %376
  %387 = add nsw i32 %359, %342
  %388 = sub nsw i32 %342, %359
  %389 = add nsw i32 %387, %385
  store i32 %389, ptr %4, align 4, !tbaa !24
  %390 = sub nsw i32 %385, %387
  store i32 %390, ptr %135, align 4, !tbaa !24
  %391 = shl nsw i32 %386, 1
  %392 = add nsw i32 %391, %388
  store i32 %392, ptr %106, align 4, !tbaa !24
  %393 = shl nsw i32 %388, 1
  %394 = sub nsw i32 %386, %393
  store i32 %394, ptr %164, align 4, !tbaa !24
  %395 = add nsw i32 %380, %331
  %396 = sub nsw i32 %331, %380
  %397 = add nsw i32 %363, %346
  %398 = sub nsw i32 %346, %363
  %399 = add nsw i32 %397, %395
  store i32 %399, ptr %82, align 4, !tbaa !24
  %400 = sub nsw i32 %395, %397
  store i32 %400, ptr %364, align 4, !tbaa !24
  %401 = shl nsw i32 %396, 1
  %402 = add nsw i32 %401, %398
  store i32 %402, ptr %347, align 4, !tbaa !24
  %403 = shl nsw i32 %398, 1
  %404 = sub nsw i32 %396, %403
  store i32 %404, ptr %381, align 4, !tbaa !24
  %405 = add nsw i32 %377, %329
  %406 = sub nsw i32 %329, %377
  %407 = add nsw i32 %360, %343
  %408 = sub nsw i32 %343, %360
  %409 = add nsw i32 %407, %405
  store i32 %409, ptr %90, align 4, !tbaa !24
  %410 = sub nsw i32 %405, %407
  store i32 %410, ptr %361, align 4, !tbaa !24
  %411 = shl nsw i32 %406, 1
  %412 = add nsw i32 %411, %408
  store i32 %412, ptr %344, align 4, !tbaa !24
  %413 = shl nsw i32 %408, 1
  %414 = sub nsw i32 %406, %413
  store i32 %414, ptr %378, align 4, !tbaa !24
  %415 = load i32, ptr %98, align 4, !tbaa !24
  %416 = add nsw i32 %383, %415
  %417 = sub nsw i32 %415, %383
  %418 = add nsw i32 %366, %349
  %419 = sub nsw i32 %349, %366
  %420 = add nsw i32 %418, %416
  store i32 %420, ptr %98, align 4, !tbaa !24
  %421 = sub nsw i32 %416, %418
  store i32 %421, ptr %367, align 4, !tbaa !24
  %422 = shl nsw i32 %417, 1
  %423 = add nsw i32 %422, %419
  store i32 %423, ptr %350, align 4, !tbaa !24
  %424 = shl nsw i32 %419, 1
  %425 = sub nsw i32 %417, %424
  store i32 %425, ptr %384, align 4, !tbaa !24
  %426 = sdiv i32 %64, 2
  %427 = sext i32 %263 to i64
  %428 = shl nsw i32 -1, %62
  %429 = sext i32 %187 to i64
  %430 = load ptr, ptr @img, align 8, !tbaa !6
  br label %431

431:                                              ; preds = %45, %597
  %432 = phi ptr [ %430, %45 ], [ %603, %597 ]
  %433 = phi i64 [ 0, %45 ], [ %606, %597 ]
  %434 = phi i32 [ 0, %45 ], [ %568, %597 ]
  %435 = phi i32 [ -1, %45 ], [ %567, %597 ]
  %436 = phi i32 [ 0, %45 ], [ %566, %597 ]
  %437 = getelementptr inbounds [16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 %433
  %438 = getelementptr inbounds [16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 %433
  %439 = select i1 %46, ptr %437, ptr %438
  %440 = load i8, ptr %439, align 1, !tbaa !43
  %441 = zext i8 %440 to i32
  %442 = getelementptr inbounds i8, ptr %439, i64 1
  %443 = load i8, ptr %442, align 1, !tbaa !43
  %444 = zext i8 %443 to i32
  %445 = add nsw i32 %435, 1
  %446 = zext i8 %440 to i64
  %447 = zext i8 %443 to i64
  %448 = getelementptr inbounds [4 x [4 x i32]], ptr %4, i64 0, i64 %446, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !24
  %450 = call i32 @llvm.abs.i32(i32 %449, i1 true)
  %451 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %427, i64 %446, i64 %447
  %452 = load i32, ptr %451, align 4, !tbaa !24
  %453 = mul nsw i32 %450, %452
  %454 = add nsw i32 %453, %426
  %455 = and i32 %454, %428
  %456 = sdiv i32 %455, %452
  %457 = getelementptr inbounds i8, ptr %432, i64 13112
  %458 = getelementptr inbounds [16 x [16 x i32]], ptr %457, i64 0, i64 %447, i64 %446
  %459 = load i32, ptr %458, align 4, !tbaa !24
  %460 = call signext i32 @sign(i32 noundef signext %456, i32 noundef signext %449) #7
  %461 = sub nsw i32 %459, %460
  %462 = call i32 @llvm.abs.i32(i32 %461, i1 true)
  %463 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %429, i64 %446, i64 %447
  %464 = load i32, ptr %463, align 4, !tbaa !24
  %465 = mul nsw i32 %462, %464
  %466 = add nsw i32 %465, %188
  %467 = ashr i32 %466, %57
  %468 = load ptr, ptr @img, align 8, !tbaa !6
  %469 = getelementptr inbounds i8, ptr %468, i64 13112
  %470 = getelementptr inbounds [16 x [16 x i32]], ptr %469, i64 0, i64 %447, i64 %446
  %471 = load i32, ptr %470, align 4, !tbaa !24
  %472 = sub nsw i32 %471, %449
  %473 = call i32 @llvm.abs.i32(i32 %472, i1 true)
  %474 = mul nsw i32 %473, %464
  %475 = add nsw i32 %474, %188
  %476 = ashr i32 %475, %57
  %477 = icmp ne i32 %467, %476
  %478 = icmp ne i32 %467, 0
  %479 = and i1 %478, %477
  %480 = icmp ne i32 %476, 0
  %481 = and i1 %480, %479
  br i1 %481, label %482, label %526

482:                                              ; preds = %431
  %483 = call signext i32 @sign(i32 noundef signext %467, i32 noundef signext %461) #7
  %484 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %429, i64 %446, i64 %447
  %485 = load i32, ptr %484, align 4, !tbaa !24
  %486 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %446, i64 %447
  %487 = load i32, ptr %486, align 4, !tbaa !24
  %488 = mul i32 %487, %485
  %489 = mul i32 %488, %483
  %490 = shl i32 %489, %56
  %491 = ashr i32 %490, 6
  %492 = add i32 %449, %491
  %493 = sub i32 %471, %492
  %494 = sitofp i32 %493 to double
  call void @levrun_linfo_inter(i32 noundef signext %467, i32 noundef signext %445, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %495 = load i32, ptr %5, align 4, !tbaa !24
  %496 = sitofp i32 %495 to double
  %497 = fmul double %319, %496
  %498 = call double @llvm.fmuladd.f64(double %494, double %494, double %497)
  %499 = load ptr, ptr @img, align 8, !tbaa !6
  %500 = getelementptr inbounds i8, ptr %499, i64 13112
  %501 = getelementptr inbounds [16 x [16 x i32]], ptr %500, i64 0, i64 %447, i64 %446
  %502 = load i32, ptr %501, align 4, !tbaa !24
  %503 = call signext i32 @sign(i32 noundef signext %476, i32 noundef signext %472) #7
  %504 = mul i32 %488, %503
  %505 = shl i32 %504, %56
  %506 = ashr i32 %505, 6
  %507 = add i32 %449, %506
  %508 = sub i32 %502, %507
  %509 = sitofp i32 %508 to double
  call void @levrun_linfo_inter(i32 noundef signext %476, i32 noundef signext %445, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %510 = load i32, ptr %5, align 4, !tbaa !24
  %511 = sitofp i32 %510 to double
  %512 = fmul double %319, %511
  %513 = call double @llvm.fmuladd.f64(double %509, double %509, double %512)
  %514 = fcmp oeq double %498, %513
  br i1 %514, label %515, label %519

515:                                              ; preds = %482
  %516 = call i32 @llvm.abs.i32(i32 %467, i1 true)
  %517 = call i32 @llvm.abs.i32(i32 %476, i1 true)
  %518 = icmp ult i32 %516, %517
  br label %521

519:                                              ; preds = %482
  %520 = fcmp olt double %498, %513
  br label %521

521:                                              ; preds = %515, %519
  %522 = phi i1 [ %518, %515 ], [ %520, %519 ]
  %523 = select i1 %522, i32 %467, i32 %476
  %524 = icmp eq i32 %523, %467
  %525 = select i1 %524, i32 %461, i32 %472
  br label %534

526:                                              ; preds = %431
  %527 = icmp eq i32 %467, %476
  br i1 %527, label %530, label %528

528:                                              ; preds = %526
  %529 = icmp eq i32 %467, 0
  br i1 %529, label %565, label %530

530:                                              ; preds = %528, %526
  %531 = phi i32 [ %472, %528 ], [ %461, %526 ]
  %532 = phi i32 [ %476, %528 ], [ %467, %526 ]
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %565, label %534

534:                                              ; preds = %521, %530
  %535 = phi i32 [ %523, %521 ], [ %532, %530 ]
  %536 = phi i32 [ %525, %521 ], [ %531, %530 ]
  %537 = icmp sgt i32 %535, 1
  br i1 %537, label %547, label %538

538:                                              ; preds = %534
  %539 = load ptr, ptr @input, align 8, !tbaa !6
  %540 = getelementptr inbounds i8, ptr %539, i64 3140
  %541 = load i32, ptr %540, align 4, !tbaa !51
  %542 = sext i32 %541 to i64
  %543 = sext i32 %445 to i64
  %544 = getelementptr inbounds [2 x [16 x i8]], ptr @COEFF_COST, i64 0, i64 %542, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !43
  %546 = zext i8 %545 to i32
  br label %547

547:                                              ; preds = %534, %538
  %548 = phi i32 [ %546, %538 ], [ 999999, %534 ]
  %549 = load i32, ptr %2, align 4, !tbaa !24
  %550 = add nsw i32 %549, %548
  store i32 %550, ptr %2, align 4, !tbaa !24
  %551 = call signext i32 @sign(i32 noundef signext %535, i32 noundef signext %536) #7
  %552 = sext i32 %434 to i64
  %553 = getelementptr inbounds i32, ptr %25, i64 %552
  store i32 %551, ptr %553, align 4, !tbaa !24
  %554 = getelementptr inbounds i32, ptr %27, i64 %552
  store i32 %445, ptr %554, align 4, !tbaa !24
  %555 = add nsw i32 %434, 1
  %556 = call signext i32 @sign(i32 noundef signext %535, i32 noundef signext %536) #7
  %557 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %429, i64 %446, i64 %447
  %558 = load i32, ptr %557, align 4, !tbaa !24
  %559 = mul nsw i32 %558, %556
  %560 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %446, i64 %447
  %561 = load i32, ptr %560, align 4, !tbaa !24
  %562 = mul nsw i32 %559, %561
  %563 = shl i32 %562, %56
  %564 = ashr i32 %563, 6
  br label %565

565:                                              ; preds = %528, %547, %530
  %566 = phi i32 [ 1, %547 ], [ %436, %530 ], [ %436, %528 ]
  %567 = phi i32 [ -1, %547 ], [ %445, %530 ], [ %445, %528 ]
  %568 = phi i32 [ %555, %547 ], [ %434, %530 ], [ %434, %528 ]
  %569 = phi i32 [ %564, %547 ], [ 0, %530 ], [ 0, %528 ]
  %570 = add nsw i32 %569, %449
  %571 = load i32, ptr @si_frame_indicator, align 4, !tbaa !24
  %572 = icmp ne i32 %571, 0
  %573 = load i32, ptr @sp2_frame_indicator, align 4
  %574 = icmp ne i32 %573, 0
  %575 = select i1 %572, i1 true, i1 %574
  %576 = call i32 @llvm.abs.i32(i32 %570, i1 true)
  %577 = mul nsw i32 %576, %452
  %578 = add nsw i32 %577, %426
  %579 = ashr i32 %578, %62
  br i1 %575, label %597, label %580

580:                                              ; preds = %565
  %581 = call signext i32 @sign(i32 noundef signext %579, i32 noundef signext %570) #7
  %582 = load ptr, ptr @lrec, align 8, !tbaa !6
  %583 = load ptr, ptr @img, align 8, !tbaa !6
  %584 = getelementptr inbounds i8, ptr %583, i64 156
  %585 = load i32, ptr %584, align 4, !tbaa !48
  %586 = add i32 %444, %1
  %587 = add i32 %586, %585
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds ptr, ptr %582, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !6
  %591 = getelementptr inbounds i8, ptr %583, i64 152
  %592 = load i32, ptr %591, align 8, !tbaa !49
  %593 = add i32 %441, %0
  %594 = add i32 %593, %592
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, ptr %590, i64 %595
  store i32 %581, ptr %596, align 4, !tbaa !24
  br label %597

597:                                              ; preds = %565, %580
  %598 = call signext i32 @sign(i32 noundef signext %579, i32 noundef signext %570) #7
  %599 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %427, i64 %446, i64 %447
  %600 = load i32, ptr %599, align 4, !tbaa !24
  %601 = mul nsw i32 %600, %598
  %602 = shl i32 %601, %61
  %603 = load ptr, ptr @img, align 8, !tbaa !6
  %604 = getelementptr inbounds i8, ptr %603, i64 13112
  %605 = getelementptr inbounds [16 x [16 x i32]], ptr %604, i64 0, i64 %447, i64 %446
  store i32 %602, ptr %605, align 4, !tbaa !24
  %606 = add nuw nsw i64 %433, 1
  %607 = icmp eq i64 %606, 16
  br i1 %607, label %608, label %431

608:                                              ; preds = %597
  %609 = sext i32 %568 to i64
  %610 = getelementptr inbounds i32, ptr %25, i64 %609
  store i32 0, ptr %610, align 4, !tbaa !24
  %611 = load i32, ptr %604, align 4, !tbaa !24
  %612 = getelementptr inbounds i8, ptr %603, i64 13116
  %613 = load i32, ptr %612, align 4, !tbaa !24
  %614 = getelementptr inbounds i8, ptr %603, i64 13120
  %615 = load i32, ptr %614, align 4, !tbaa !24
  %616 = getelementptr inbounds i8, ptr %603, i64 13124
  %617 = load i32, ptr %616, align 4, !tbaa !24
  %618 = add nsw i32 %615, %611
  %619 = sub nsw i32 %611, %615
  %620 = ashr i32 %613, 1
  %621 = sub nsw i32 %620, %617
  %622 = ashr i32 %617, 1
  %623 = add nsw i32 %622, %613
  %624 = add nsw i32 %623, %618
  store i32 %624, ptr %604, align 4, !tbaa !24
  %625 = sub nsw i32 %618, %623
  store i32 %625, ptr %616, align 4, !tbaa !24
  %626 = add nsw i32 %621, %619
  store i32 %626, ptr %612, align 4, !tbaa !24
  %627 = sub nsw i32 %619, %621
  store i32 %627, ptr %614, align 4, !tbaa !24
  %628 = getelementptr inbounds i8, ptr %603, i64 13176
  %629 = load i32, ptr %628, align 4, !tbaa !24
  %630 = getelementptr inbounds i8, ptr %603, i64 13180
  %631 = load i32, ptr %630, align 4, !tbaa !24
  %632 = getelementptr inbounds i8, ptr %603, i64 13184
  %633 = load i32, ptr %632, align 4, !tbaa !24
  %634 = getelementptr inbounds i8, ptr %603, i64 13188
  %635 = load i32, ptr %634, align 4, !tbaa !24
  %636 = add nsw i32 %633, %629
  %637 = sub nsw i32 %629, %633
  %638 = ashr i32 %631, 1
  %639 = sub nsw i32 %638, %635
  %640 = ashr i32 %635, 1
  %641 = add nsw i32 %640, %631
  %642 = add nsw i32 %641, %636
  store i32 %642, ptr %628, align 4, !tbaa !24
  %643 = sub nsw i32 %636, %641
  store i32 %643, ptr %634, align 4, !tbaa !24
  %644 = add nsw i32 %639, %637
  store i32 %644, ptr %630, align 4, !tbaa !24
  %645 = sub nsw i32 %637, %639
  store i32 %645, ptr %632, align 4, !tbaa !24
  %646 = getelementptr inbounds i8, ptr %603, i64 13240
  %647 = load i32, ptr %646, align 4, !tbaa !24
  %648 = getelementptr inbounds i8, ptr %603, i64 13244
  %649 = load i32, ptr %648, align 4, !tbaa !24
  %650 = getelementptr inbounds i8, ptr %603, i64 13248
  %651 = load i32, ptr %650, align 4, !tbaa !24
  %652 = getelementptr inbounds i8, ptr %603, i64 13252
  %653 = load i32, ptr %652, align 4, !tbaa !24
  %654 = add nsw i32 %651, %647
  %655 = sub nsw i32 %647, %651
  %656 = ashr i32 %649, 1
  %657 = sub nsw i32 %656, %653
  %658 = ashr i32 %653, 1
  %659 = add nsw i32 %658, %649
  %660 = add nsw i32 %659, %654
  store i32 %660, ptr %646, align 4, !tbaa !24
  %661 = sub nsw i32 %654, %659
  store i32 %661, ptr %652, align 4, !tbaa !24
  %662 = add nsw i32 %657, %655
  store i32 %662, ptr %648, align 4, !tbaa !24
  %663 = sub nsw i32 %655, %657
  store i32 %663, ptr %650, align 4, !tbaa !24
  %664 = getelementptr inbounds i8, ptr %603, i64 13304
  %665 = load i32, ptr %664, align 4, !tbaa !24
  %666 = getelementptr inbounds i8, ptr %603, i64 13308
  %667 = load i32, ptr %666, align 4, !tbaa !24
  %668 = getelementptr inbounds i8, ptr %603, i64 13312
  %669 = load i32, ptr %668, align 4, !tbaa !24
  %670 = getelementptr inbounds i8, ptr %603, i64 13316
  %671 = load i32, ptr %670, align 4, !tbaa !24
  %672 = add nsw i32 %669, %665
  %673 = sub nsw i32 %665, %669
  %674 = ashr i32 %667, 1
  %675 = sub nsw i32 %674, %671
  %676 = ashr i32 %671, 1
  %677 = add nsw i32 %676, %667
  %678 = add nsw i32 %677, %672
  store i32 %678, ptr %664, align 4, !tbaa !24
  %679 = sub nsw i32 %672, %677
  store i32 %679, ptr %670, align 4, !tbaa !24
  %680 = add nsw i32 %675, %673
  store i32 %680, ptr %666, align 4, !tbaa !24
  %681 = sub nsw i32 %673, %675
  store i32 %681, ptr %668, align 4, !tbaa !24
  %682 = getelementptr inbounds i8, ptr %603, i64 90532
  br label %683

683:                                              ; preds = %608, %683
  %684 = phi i64 [ 0, %608 ], [ %721, %683 ]
  %685 = getelementptr inbounds [16 x [16 x i32]], ptr %604, i64 0, i64 0, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !24
  %687 = getelementptr inbounds [16 x [16 x i32]], ptr %604, i64 0, i64 1, i64 %684
  %688 = load i32, ptr %687, align 4, !tbaa !24
  %689 = getelementptr inbounds [16 x [16 x i32]], ptr %604, i64 0, i64 2, i64 %684
  %690 = load i32, ptr %689, align 4, !tbaa !24
  %691 = getelementptr inbounds [16 x [16 x i32]], ptr %604, i64 0, i64 3, i64 %684
  %692 = load i32, ptr %691, align 4, !tbaa !24
  %693 = add nsw i32 %690, %686
  %694 = sub nsw i32 %686, %690
  %695 = ashr i32 %688, 1
  %696 = sub nsw i32 %695, %692
  %697 = ashr i32 %692, 1
  %698 = add nsw i32 %697, %688
  %699 = load i32, ptr %682, align 4, !tbaa !29
  %700 = add i32 %693, 32
  %701 = add i32 %700, %698
  %702 = ashr i32 %701, 6
  %703 = call i32 @llvm.smax.i32(i32 %702, i32 0)
  %704 = call i32 @llvm.smin.i32(i32 %699, i32 %703)
  store i32 %704, ptr %685, align 4, !tbaa !24
  %705 = load i32, ptr %682, align 4, !tbaa !29
  %706 = sub i32 %700, %698
  %707 = ashr i32 %706, 6
  %708 = call i32 @llvm.smax.i32(i32 %707, i32 0)
  %709 = call i32 @llvm.smin.i32(i32 %705, i32 %708)
  store i32 %709, ptr %691, align 4, !tbaa !24
  %710 = load i32, ptr %682, align 4, !tbaa !29
  %711 = add i32 %694, 32
  %712 = add i32 %711, %696
  %713 = ashr i32 %712, 6
  %714 = call i32 @llvm.smax.i32(i32 %713, i32 0)
  %715 = call i32 @llvm.smin.i32(i32 %710, i32 %714)
  store i32 %715, ptr %687, align 4, !tbaa !24
  %716 = load i32, ptr %682, align 4, !tbaa !29
  %717 = sub i32 %711, %696
  %718 = ashr i32 %717, 6
  %719 = call i32 @llvm.smax.i32(i32 %718, i32 0)
  %720 = call i32 @llvm.smin.i32(i32 %716, i32 %719)
  store i32 %720, ptr %689, align 4, !tbaa !24
  %721 = add nuw nsw i64 %684, 1
  %722 = icmp eq i64 %721, 4
  br i1 %722, label %723, label %683

723:                                              ; preds = %683
  %724 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %725 = getelementptr inbounds i8, ptr %724, i64 6424
  %726 = load ptr, ptr %725, align 8, !tbaa !10
  %727 = getelementptr inbounds i8, ptr %603, i64 156
  %728 = load i32, ptr %727, align 4, !tbaa !48
  %729 = getelementptr inbounds i8, ptr %603, i64 152
  %730 = load i32, ptr %729, align 8, !tbaa !49
  %731 = add i32 %728, %1
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds ptr, ptr %726, i64 %732
  %734 = load ptr, ptr %733, align 8, !tbaa !6
  %735 = load i32, ptr %604, align 4, !tbaa !24
  %736 = trunc i32 %735 to i16
  %737 = add i32 %730, %0
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i16, ptr %734, i64 %738
  store i16 %736, ptr %739, align 2, !tbaa !27
  %740 = load i32, ptr %612, align 4, !tbaa !24
  %741 = trunc i32 %740 to i16
  %742 = add i32 %0, 1
  %743 = add i32 %742, %730
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i16, ptr %734, i64 %744
  store i16 %741, ptr %745, align 2, !tbaa !27
  %746 = load i32, ptr %614, align 4, !tbaa !24
  %747 = trunc i32 %746 to i16
  %748 = add i32 %0, 2
  %749 = add i32 %748, %730
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i16, ptr %734, i64 %750
  store i16 %747, ptr %751, align 2, !tbaa !27
  %752 = load i32, ptr %616, align 4, !tbaa !24
  %753 = trunc i32 %752 to i16
  %754 = add i32 %0, 3
  %755 = add i32 %754, %730
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i16, ptr %734, i64 %756
  store i16 %753, ptr %757, align 2, !tbaa !27
  %758 = add i32 %1, 1
  %759 = add i32 %758, %728
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds ptr, ptr %726, i64 %760
  %762 = load ptr, ptr %761, align 8, !tbaa !6
  %763 = load i32, ptr %628, align 4, !tbaa !24
  %764 = trunc i32 %763 to i16
  %765 = getelementptr inbounds i16, ptr %762, i64 %738
  store i16 %764, ptr %765, align 2, !tbaa !27
  %766 = load i32, ptr %630, align 4, !tbaa !24
  %767 = trunc i32 %766 to i16
  %768 = getelementptr inbounds i16, ptr %762, i64 %744
  store i16 %767, ptr %768, align 2, !tbaa !27
  %769 = load i32, ptr %632, align 4, !tbaa !24
  %770 = trunc i32 %769 to i16
  %771 = getelementptr inbounds i16, ptr %762, i64 %750
  store i16 %770, ptr %771, align 2, !tbaa !27
  %772 = load i32, ptr %634, align 4, !tbaa !24
  %773 = trunc i32 %772 to i16
  %774 = getelementptr inbounds i16, ptr %762, i64 %756
  store i16 %773, ptr %774, align 2, !tbaa !27
  %775 = add i32 %1, 2
  %776 = add i32 %775, %728
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds ptr, ptr %726, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !6
  %780 = load i32, ptr %646, align 4, !tbaa !24
  %781 = trunc i32 %780 to i16
  %782 = getelementptr inbounds i16, ptr %779, i64 %738
  store i16 %781, ptr %782, align 2, !tbaa !27
  %783 = load i32, ptr %648, align 4, !tbaa !24
  %784 = trunc i32 %783 to i16
  %785 = getelementptr inbounds i16, ptr %779, i64 %744
  store i16 %784, ptr %785, align 2, !tbaa !27
  %786 = load i32, ptr %650, align 4, !tbaa !24
  %787 = trunc i32 %786 to i16
  %788 = getelementptr inbounds i16, ptr %779, i64 %750
  store i16 %787, ptr %788, align 2, !tbaa !27
  %789 = load i32, ptr %652, align 4, !tbaa !24
  %790 = trunc i32 %789 to i16
  %791 = getelementptr inbounds i16, ptr %779, i64 %756
  store i16 %790, ptr %791, align 2, !tbaa !27
  %792 = add i32 %1, 3
  %793 = add i32 %792, %728
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds ptr, ptr %726, i64 %794
  %796 = load ptr, ptr %795, align 8, !tbaa !6
  %797 = load i32, ptr %664, align 4, !tbaa !24
  %798 = trunc i32 %797 to i16
  %799 = getelementptr inbounds i16, ptr %796, i64 %738
  store i16 %798, ptr %799, align 2, !tbaa !27
  %800 = load i32, ptr %666, align 4, !tbaa !24
  %801 = trunc i32 %800 to i16
  %802 = getelementptr inbounds i16, ptr %796, i64 %744
  store i16 %801, ptr %802, align 2, !tbaa !27
  %803 = load i32, ptr %668, align 4, !tbaa !24
  %804 = trunc i32 %803 to i16
  %805 = getelementptr inbounds i16, ptr %796, i64 %750
  store i16 %804, ptr %805, align 2, !tbaa !27
  %806 = load i32, ptr %670, align 4, !tbaa !24
  %807 = trunc i32 %806 to i16
  %808 = getelementptr inbounds i16, ptr %796, i64 %756
  store i16 %807, ptr %808, align 2, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret i32 %566
}

declare dso_local void @levrun_linfo_inter(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
define dso_local signext i32 @dct_chroma_sp(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [8 x [8 x i32]], align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 31576
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = getelementptr inbounds i8, ptr %8, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %13
  %15 = getelementptr inbounds i8, ptr %8, i64 90264
  %16 = load i32, ptr %15, align 8, !tbaa !31
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, ptr %8, i64 90220
  %20 = load i32, ptr %19, align 4, !tbaa !32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %14, i64 424
  %24 = load i32, ptr %23, align 8, !tbaa !33
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %18, %22, %2
  %27 = phi i1 [ true, %2 ], [ false, %18 ], [ %25, %22 ]
  %28 = getelementptr inbounds i8, ptr %8, i64 14144
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = sext i32 %0 to i64
  %31 = getelementptr ptr, ptr %29, i64 %30
  %32 = getelementptr i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %33, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %37 = getelementptr inbounds i8, ptr %14, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !37
  %39 = add nsw i32 %38, -12
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 3.000000e+00
  %42 = tail call double @exp2(double %41) #7
  %43 = fmul double %42, 8.500000e-01
  %44 = load i32, ptr %37, align 4, !tbaa !37
  %45 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 208
  %47 = load i32, ptr %46, align 8, !tbaa !65
  %48 = add nsw i32 %47, %44
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 51)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = getelementptr inbounds i8, ptr %14, i64 16
  %52 = load i32, ptr %51, align 8, !tbaa !64
  %53 = add nsw i32 %52, %47
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 51)
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = zext nneg i32 %50 to i64
  %57 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !43
  %59 = freeze i8 %58
  %60 = udiv i8 %59, 6
  %61 = zext nneg i8 %60 to i32
  %62 = mul i8 %60, 6
  %63 = sub i8 %59, %62
  %64 = shl nuw i32 32768, %61
  %65 = zext nneg i32 %55 to i64
  %66 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !43
  %68 = freeze i8 %67
  %69 = udiv i8 %68, 6
  %70 = zext nneg i8 %69 to i32
  %71 = mul i8 %69, 6
  %72 = sub i8 %68, %71
  %73 = shl nuw i32 32768, %70
  %74 = load ptr, ptr @img, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 12600
  %76 = getelementptr inbounds i8, ptr %74, i64 13112
  br label %77

77:                                               ; preds = %26, %77
  %78 = phi i64 [ 0, %26 ], [ %135, %77 ]
  %79 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 0
  %80 = load i16, ptr %79, align 2, !tbaa !27
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 0
  %83 = load i32, ptr %82, align 4, !tbaa !24
  %84 = add nsw i32 %83, %81
  store i32 %84, ptr %82, align 4, !tbaa !24
  %85 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 0, i64 %78
  store i32 %81, ptr %85, align 4, !tbaa !24
  %86 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 1
  %87 = load i16, ptr %86, align 2, !tbaa !27
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !24
  %91 = add nsw i32 %90, %88
  store i32 %91, ptr %89, align 4, !tbaa !24
  %92 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 1, i64 %78
  store i32 %88, ptr %92, align 4, !tbaa !24
  %93 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 2
  %94 = load i16, ptr %93, align 2, !tbaa !27
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 2
  %97 = load i32, ptr %96, align 4, !tbaa !24
  %98 = add nsw i32 %97, %95
  store i32 %98, ptr %96, align 4, !tbaa !24
  %99 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 2, i64 %78
  store i32 %95, ptr %99, align 4, !tbaa !24
  %100 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 3
  %101 = load i16, ptr %100, align 2, !tbaa !27
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 3
  %104 = load i32, ptr %103, align 4, !tbaa !24
  %105 = add nsw i32 %104, %102
  store i32 %105, ptr %103, align 4, !tbaa !24
  %106 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 3, i64 %78
  store i32 %102, ptr %106, align 4, !tbaa !24
  %107 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 4
  %108 = load i16, ptr %107, align 2, !tbaa !27
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 4
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = add nsw i32 %111, %109
  store i32 %112, ptr %110, align 4, !tbaa !24
  %113 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 4, i64 %78
  store i32 %109, ptr %113, align 4, !tbaa !24
  %114 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 5
  %115 = load i16, ptr %114, align 2, !tbaa !27
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 5
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = add nsw i32 %118, %116
  store i32 %119, ptr %117, align 4, !tbaa !24
  %120 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 5, i64 %78
  store i32 %116, ptr %120, align 4, !tbaa !24
  %121 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 6
  %122 = load i16, ptr %121, align 2, !tbaa !27
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 6
  %125 = load i32, ptr %124, align 4, !tbaa !24
  %126 = add nsw i32 %125, %123
  store i32 %126, ptr %124, align 4, !tbaa !24
  %127 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 6, i64 %78
  store i32 %123, ptr %127, align 4, !tbaa !24
  %128 = getelementptr inbounds [16 x [16 x i16]], ptr %75, i64 0, i64 %78, i64 7
  %129 = load i16, ptr %128, align 2, !tbaa !27
  %130 = zext i16 %129 to i32
  %131 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %78, i64 7
  %132 = load i32, ptr %131, align 4, !tbaa !24
  %133 = add nsw i32 %132, %130
  store i32 %133, ptr %131, align 4, !tbaa !24
  %134 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 7, i64 %78
  store i32 %130, ptr %134, align 4, !tbaa !24
  %135 = add nuw nsw i64 %78, 1
  %136 = icmp eq i64 %135, 8
  br i1 %136, label %137, label %77

137:                                              ; preds = %77
  %138 = add nuw nsw i32 %61, 15
  %139 = add nuw nsw i32 %70, 15
  br label %140

140:                                              ; preds = %137, %268
  %141 = phi i1 [ true, %137 ], [ false, %268 ]
  %142 = phi i64 [ 0, %137 ], [ 4, %268 ]
  %143 = or disjoint i64 %142, 2
  %144 = or disjoint i64 %142, 1
  %145 = or disjoint i64 %142, 3
  br label %148

146:                                              ; preds = %268
  %147 = sdiv i32 %64, 6
  br label %269

148:                                              ; preds = %140, %148
  %149 = phi i1 [ true, %140 ], [ false, %148 ]
  %150 = phi i64 [ 0, %140 ], [ 4, %148 ]
  %151 = or disjoint i64 %150, 2
  %152 = or disjoint i64 %150, 1
  %153 = or disjoint i64 %150, 3
  %154 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %142, i64 %150
  %155 = load i32, ptr %154, align 4, !tbaa !24
  %156 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %142, i64 %153
  %157 = load i32, ptr %156, align 4, !tbaa !24
  %158 = add nsw i32 %157, %155
  %159 = sub nsw i32 %155, %157
  %160 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %142, i64 %152
  %161 = load i32, ptr %160, align 4, !tbaa !24
  %162 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %142, i64 %151
  %163 = load i32, ptr %162, align 4, !tbaa !24
  %164 = add nsw i32 %163, %161
  %165 = sub nsw i32 %161, %163
  %166 = add nsw i32 %164, %158
  %167 = sub nsw i32 %158, %164
  store i32 %167, ptr %162, align 4, !tbaa !24
  %168 = shl nsw i32 %159, 1
  %169 = add nsw i32 %168, %165
  %170 = shl nsw i32 %165, 1
  %171 = sub nsw i32 %159, %170
  store i32 %171, ptr %156, align 4, !tbaa !24
  %172 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %144, i64 %150
  %173 = load i32, ptr %172, align 4, !tbaa !24
  %174 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %144, i64 %153
  %175 = load i32, ptr %174, align 4, !tbaa !24
  %176 = add nsw i32 %175, %173
  %177 = sub nsw i32 %173, %175
  %178 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %144, i64 %152
  %179 = load i32, ptr %178, align 4, !tbaa !24
  %180 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %144, i64 %151
  %181 = load i32, ptr %180, align 4, !tbaa !24
  %182 = add nsw i32 %181, %179
  %183 = sub nsw i32 %179, %181
  %184 = add nsw i32 %182, %176
  %185 = sub nsw i32 %176, %182
  %186 = shl nsw i32 %177, 1
  %187 = add nsw i32 %186, %183
  %188 = shl nsw i32 %183, 1
  %189 = sub nsw i32 %177, %188
  %190 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %143, i64 %150
  %191 = load i32, ptr %190, align 4, !tbaa !24
  %192 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %143, i64 %153
  %193 = load i32, ptr %192, align 4, !tbaa !24
  %194 = add nsw i32 %193, %191
  %195 = sub nsw i32 %191, %193
  %196 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %143, i64 %152
  %197 = load i32, ptr %196, align 4, !tbaa !24
  %198 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %143, i64 %151
  %199 = load i32, ptr %198, align 4, !tbaa !24
  %200 = add nsw i32 %199, %197
  %201 = sub nsw i32 %197, %199
  %202 = add nsw i32 %200, %194
  %203 = sub nsw i32 %194, %200
  %204 = shl nsw i32 %195, 1
  %205 = add nsw i32 %204, %201
  %206 = shl nsw i32 %201, 1
  %207 = sub nsw i32 %195, %206
  %208 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %145, i64 %150
  %209 = load i32, ptr %208, align 4, !tbaa !24
  %210 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %145, i64 %153
  %211 = load i32, ptr %210, align 4, !tbaa !24
  %212 = add nsw i32 %211, %209
  %213 = sub nsw i32 %209, %211
  %214 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %145, i64 %152
  %215 = load i32, ptr %214, align 4, !tbaa !24
  %216 = getelementptr inbounds [16 x [16 x i32]], ptr %76, i64 0, i64 %145, i64 %151
  %217 = load i32, ptr %216, align 4, !tbaa !24
  %218 = add nsw i32 %217, %215
  %219 = sub nsw i32 %215, %217
  %220 = add nsw i32 %218, %212
  %221 = sub nsw i32 %212, %218
  %222 = shl nsw i32 %213, 1
  %223 = add nsw i32 %222, %219
  %224 = shl nsw i32 %219, 1
  %225 = sub nsw i32 %213, %224
  %226 = add nsw i32 %220, %166
  %227 = sub nsw i32 %166, %220
  %228 = add nsw i32 %202, %184
  %229 = sub nsw i32 %184, %202
  %230 = add nsw i32 %228, %226
  store i32 %230, ptr %154, align 4, !tbaa !24
  %231 = sub nsw i32 %226, %228
  store i32 %231, ptr %190, align 4, !tbaa !24
  %232 = shl nsw i32 %227, 1
  %233 = add nsw i32 %232, %229
  store i32 %233, ptr %172, align 4, !tbaa !24
  %234 = shl nsw i32 %229, 1
  %235 = sub nsw i32 %227, %234
  store i32 %235, ptr %208, align 4, !tbaa !24
  %236 = add nsw i32 %223, %169
  %237 = sub nsw i32 %169, %223
  %238 = add nsw i32 %205, %187
  %239 = sub nsw i32 %187, %205
  %240 = add nsw i32 %238, %236
  store i32 %240, ptr %160, align 4, !tbaa !24
  %241 = sub nsw i32 %236, %238
  store i32 %241, ptr %196, align 4, !tbaa !24
  %242 = shl nsw i32 %237, 1
  %243 = add nsw i32 %242, %239
  store i32 %243, ptr %178, align 4, !tbaa !24
  %244 = shl nsw i32 %239, 1
  %245 = sub nsw i32 %237, %244
  store i32 %245, ptr %214, align 4, !tbaa !24
  %246 = load i32, ptr %162, align 4, !tbaa !24
  %247 = add nsw i32 %221, %246
  %248 = sub nsw i32 %246, %221
  %249 = add nsw i32 %203, %185
  %250 = sub nsw i32 %185, %203
  %251 = add nsw i32 %249, %247
  store i32 %251, ptr %162, align 4, !tbaa !24
  %252 = sub nsw i32 %247, %249
  store i32 %252, ptr %198, align 4, !tbaa !24
  %253 = shl nsw i32 %248, 1
  %254 = add nsw i32 %253, %250
  store i32 %254, ptr %180, align 4, !tbaa !24
  %255 = shl nsw i32 %250, 1
  %256 = sub nsw i32 %248, %255
  store i32 %256, ptr %216, align 4, !tbaa !24
  %257 = load i32, ptr %156, align 4, !tbaa !24
  %258 = add nsw i32 %225, %257
  %259 = sub nsw i32 %257, %225
  %260 = add nsw i32 %207, %189
  %261 = sub nsw i32 %189, %207
  %262 = add nsw i32 %260, %258
  store i32 %262, ptr %156, align 4, !tbaa !24
  %263 = sub nsw i32 %258, %260
  store i32 %263, ptr %192, align 4, !tbaa !24
  %264 = shl nsw i32 %259, 1
  %265 = add nsw i32 %264, %261
  store i32 %265, ptr %174, align 4, !tbaa !24
  %266 = shl nsw i32 %261, 1
  %267 = sub nsw i32 %259, %266
  store i32 %267, ptr %210, align 4, !tbaa !24
  br i1 %149, label %148, label %268

268:                                              ; preds = %148
  br i1 %141, label %140, label %146

269:                                              ; preds = %146, %395
  %270 = phi i1 [ true, %146 ], [ false, %395 ]
  %271 = phi i64 [ 0, %146 ], [ 4, %395 ]
  %272 = or disjoint i64 %271, 2
  %273 = or disjoint i64 %271, 1
  %274 = or disjoint i64 %271, 3
  br label %275

275:                                              ; preds = %269, %275
  %276 = phi i1 [ true, %269 ], [ false, %275 ]
  %277 = phi i64 [ 0, %269 ], [ 4, %275 ]
  %278 = or disjoint i64 %277, 2
  %279 = or disjoint i64 %277, 1
  %280 = or disjoint i64 %277, 3
  %281 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %277, i64 %271
  %282 = load i32, ptr %281, align 4, !tbaa !24
  %283 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %280, i64 %271
  %284 = load i32, ptr %283, align 4, !tbaa !24
  %285 = add nsw i32 %284, %282
  %286 = sub nsw i32 %282, %284
  %287 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %279, i64 %271
  %288 = load i32, ptr %287, align 4, !tbaa !24
  %289 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %278, i64 %271
  %290 = load i32, ptr %289, align 4, !tbaa !24
  %291 = add nsw i32 %290, %288
  %292 = sub nsw i32 %288, %290
  %293 = add nsw i32 %291, %285
  %294 = sub nsw i32 %285, %291
  store i32 %294, ptr %289, align 4, !tbaa !24
  %295 = shl nsw i32 %286, 1
  %296 = add nsw i32 %295, %292
  %297 = shl nsw i32 %292, 1
  %298 = sub nsw i32 %286, %297
  store i32 %298, ptr %283, align 4, !tbaa !24
  %299 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %277, i64 %273
  %300 = load i32, ptr %299, align 4, !tbaa !24
  %301 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %280, i64 %273
  %302 = load i32, ptr %301, align 4, !tbaa !24
  %303 = add nsw i32 %302, %300
  %304 = sub nsw i32 %300, %302
  %305 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %279, i64 %273
  %306 = load i32, ptr %305, align 4, !tbaa !24
  %307 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %278, i64 %273
  %308 = load i32, ptr %307, align 4, !tbaa !24
  %309 = add nsw i32 %308, %306
  %310 = sub nsw i32 %306, %308
  %311 = add nsw i32 %309, %303
  %312 = sub nsw i32 %303, %309
  %313 = shl nsw i32 %304, 1
  %314 = add nsw i32 %313, %310
  %315 = shl nsw i32 %310, 1
  %316 = sub nsw i32 %304, %315
  %317 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %277, i64 %272
  %318 = load i32, ptr %317, align 4, !tbaa !24
  %319 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %280, i64 %272
  %320 = load i32, ptr %319, align 4, !tbaa !24
  %321 = add nsw i32 %320, %318
  %322 = sub nsw i32 %318, %320
  %323 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %279, i64 %272
  %324 = load i32, ptr %323, align 4, !tbaa !24
  %325 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %278, i64 %272
  %326 = load i32, ptr %325, align 4, !tbaa !24
  %327 = add nsw i32 %326, %324
  %328 = sub nsw i32 %324, %326
  %329 = add nsw i32 %327, %321
  %330 = sub nsw i32 %321, %327
  %331 = shl nsw i32 %322, 1
  %332 = add nsw i32 %331, %328
  %333 = shl nsw i32 %328, 1
  %334 = sub nsw i32 %322, %333
  %335 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %277, i64 %274
  %336 = load i32, ptr %335, align 4, !tbaa !24
  %337 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %280, i64 %274
  %338 = load i32, ptr %337, align 4, !tbaa !24
  %339 = add nsw i32 %338, %336
  %340 = sub nsw i32 %336, %338
  %341 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %279, i64 %274
  %342 = load i32, ptr %341, align 4, !tbaa !24
  %343 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %278, i64 %274
  %344 = load i32, ptr %343, align 4, !tbaa !24
  %345 = add nsw i32 %344, %342
  %346 = sub nsw i32 %342, %344
  %347 = add nsw i32 %345, %339
  %348 = sub nsw i32 %339, %345
  %349 = shl nsw i32 %340, 1
  %350 = add nsw i32 %349, %346
  %351 = shl nsw i32 %346, 1
  %352 = sub nsw i32 %340, %351
  %353 = add nsw i32 %347, %293
  %354 = sub nsw i32 %293, %347
  %355 = add nsw i32 %329, %311
  %356 = sub nsw i32 %311, %329
  %357 = add nsw i32 %355, %353
  store i32 %357, ptr %281, align 4, !tbaa !24
  %358 = sub nsw i32 %353, %355
  store i32 %358, ptr %317, align 4, !tbaa !24
  %359 = shl nsw i32 %354, 1
  %360 = add nsw i32 %359, %356
  store i32 %360, ptr %299, align 4, !tbaa !24
  %361 = shl nsw i32 %356, 1
  %362 = sub nsw i32 %354, %361
  store i32 %362, ptr %335, align 4, !tbaa !24
  %363 = add nsw i32 %350, %296
  %364 = sub nsw i32 %296, %350
  %365 = add nsw i32 %332, %314
  %366 = sub nsw i32 %314, %332
  %367 = add nsw i32 %365, %363
  store i32 %367, ptr %287, align 4, !tbaa !24
  %368 = sub nsw i32 %363, %365
  store i32 %368, ptr %323, align 4, !tbaa !24
  %369 = shl nsw i32 %364, 1
  %370 = add nsw i32 %369, %366
  store i32 %370, ptr %305, align 4, !tbaa !24
  %371 = shl nsw i32 %366, 1
  %372 = sub nsw i32 %364, %371
  store i32 %372, ptr %341, align 4, !tbaa !24
  %373 = load i32, ptr %289, align 4, !tbaa !24
  %374 = add nsw i32 %348, %373
  %375 = sub nsw i32 %373, %348
  %376 = add nsw i32 %330, %312
  %377 = sub nsw i32 %312, %330
  %378 = add nsw i32 %376, %374
  store i32 %378, ptr %289, align 4, !tbaa !24
  %379 = sub nsw i32 %374, %376
  store i32 %379, ptr %325, align 4, !tbaa !24
  %380 = shl nsw i32 %375, 1
  %381 = add nsw i32 %380, %377
  store i32 %381, ptr %307, align 4, !tbaa !24
  %382 = shl nsw i32 %377, 1
  %383 = sub nsw i32 %375, %382
  store i32 %383, ptr %343, align 4, !tbaa !24
  %384 = load i32, ptr %283, align 4, !tbaa !24
  %385 = add nsw i32 %352, %384
  %386 = sub nsw i32 %384, %352
  %387 = add nsw i32 %334, %316
  %388 = sub nsw i32 %316, %334
  %389 = add nsw i32 %387, %385
  store i32 %389, ptr %283, align 4, !tbaa !24
  %390 = sub nsw i32 %385, %387
  store i32 %390, ptr %319, align 4, !tbaa !24
  %391 = shl nsw i32 %386, 1
  %392 = add nsw i32 %391, %388
  store i32 %392, ptr %301, align 4, !tbaa !24
  %393 = shl nsw i32 %388, 1
  %394 = sub nsw i32 %386, %393
  store i32 %394, ptr %337, align 4, !tbaa !24
  br i1 %276, label %275, label %395

395:                                              ; preds = %275
  br i1 %270, label %269, label %396

396:                                              ; preds = %395
  %397 = fmul double %43, 4.000000e+00
  %398 = load ptr, ptr @img, align 8, !tbaa !6
  %399 = getelementptr inbounds i8, ptr %398, i64 13112
  %400 = load i32, ptr %399, align 8, !tbaa !24
  %401 = getelementptr inbounds i8, ptr %398, i64 13128
  %402 = load i32, ptr %401, align 8, !tbaa !24
  %403 = add nsw i32 %402, %400
  %404 = getelementptr inbounds i8, ptr %398, i64 13368
  %405 = load i32, ptr %404, align 8, !tbaa !24
  %406 = getelementptr inbounds i8, ptr %398, i64 13384
  %407 = load i32, ptr %406, align 8, !tbaa !24
  %408 = add i32 %407, %405
  %409 = add i32 %408, %403
  store i32 %409, ptr %3, align 4, !tbaa !24
  %410 = add i32 %400, %405
  %411 = add i32 %402, %407
  %412 = sub i32 %410, %411
  %413 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %412, ptr %413, align 4, !tbaa !24
  %414 = sub i32 %403, %408
  %415 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %414, ptr %415, align 4, !tbaa !24
  %416 = add i32 %402, %405
  %417 = sub i32 %400, %416
  %418 = add nsw i32 %417, %407
  %419 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %418, ptr %419, align 4, !tbaa !24
  %420 = load i32, ptr %4, align 4, !tbaa !24
  %421 = getelementptr inbounds i8, ptr %4, i64 128
  %422 = load i32, ptr %421, align 4, !tbaa !24
  %423 = add nsw i32 %422, %420
  %424 = getelementptr inbounds i8, ptr %4, i64 16
  %425 = load i32, ptr %424, align 4, !tbaa !24
  %426 = getelementptr inbounds i8, ptr %4, i64 144
  %427 = load i32, ptr %426, align 4, !tbaa !24
  %428 = add i32 %427, %425
  %429 = add i32 %428, %423
  store i32 %429, ptr %5, align 4, !tbaa !24
  %430 = add i32 %420, %425
  %431 = add i32 %422, %427
  %432 = sub i32 %430, %431
  %433 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %432, ptr %433, align 4, !tbaa !24
  %434 = sub i32 %423, %428
  %435 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %434, ptr %435, align 4, !tbaa !24
  %436 = add i32 %422, %425
  %437 = sub i32 %420, %436
  %438 = add nsw i32 %437, %427
  %439 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %438, ptr %439, align 4, !tbaa !24
  %440 = zext nneg i8 %72 to i64
  %441 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !24
  %443 = add nuw nsw i32 %70, 16
  %444 = shl i32 -65536, %70
  %445 = zext nneg i8 %63 to i64
  %446 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %445
  %447 = shl nsw i32 %147, 1
  %448 = add nuw nsw i32 %61, 16
  %449 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %445
  %450 = shl i32 %0, 2
  %451 = shl i32 983040, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, ptr %14, i64 368
  %454 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %440
  br label %455

455:                                              ; preds = %396, %605
  %456 = phi i64 [ 0, %396 ], [ %606, %605 ]
  %457 = phi i32 [ %1, %396 ], [ %567, %605 ]
  %458 = phi i32 [ 0, %396 ], [ %565, %605 ]
  %459 = phi i32 [ -1, %396 ], [ %564, %605 ]
  %460 = add nsw i32 %459, 1
  %461 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %456
  %462 = load i32, ptr %461, align 4, !tbaa !24
  %463 = call i32 @llvm.abs.i32(i32 %462, i1 true)
  %464 = mul nsw i32 %463, %442
  %465 = add nsw i32 %464, %73
  %466 = and i32 %465, %444
  %467 = sdiv i32 %466, %442
  %468 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %456
  %469 = load i32, ptr %468, align 4, !tbaa !24
  %470 = call signext i32 @sign(i32 noundef signext %467, i32 noundef signext %462) #7
  %471 = sub nsw i32 %469, %470
  %472 = call i32 @llvm.abs.i32(i32 %471, i1 true)
  %473 = load i32, ptr %446, align 4, !tbaa !24
  %474 = mul nsw i32 %472, %473
  %475 = add nsw i32 %474, %447
  %476 = ashr i32 %475, %448
  %477 = sub nsw i32 %469, %462
  %478 = call i32 @llvm.abs.i32(i32 %477, i1 true)
  %479 = mul nsw i32 %478, %473
  %480 = add nsw i32 %479, %447
  %481 = ashr i32 %480, %448
  %482 = icmp ne i32 %476, %481
  %483 = icmp ne i32 %476, 0
  %484 = and i1 %482, %483
  %485 = icmp ne i32 %481, 0
  %486 = and i1 %485, %484
  br i1 %486, label %487, label %525

487:                                              ; preds = %455
  %488 = call signext i32 @sign(i32 noundef signext %476, i32 noundef signext %471) #7
  %489 = load i32, ptr %449, align 4, !tbaa !24
  %490 = shl i32 %488, 4
  %491 = mul i32 %490, %489
  %492 = shl i32 %491, %61
  %493 = ashr i32 %492, 5
  %494 = add i32 %462, %493
  %495 = sub i32 %469, %494
  %496 = sitofp i32 %495 to double
  call void @levrun_linfo_c2x2(i32 noundef signext %476, i32 noundef signext %460, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %497 = load i32, ptr %6, align 4, !tbaa !24
  %498 = sitofp i32 %497 to double
  %499 = fmul double %397, %498
  %500 = call double @llvm.fmuladd.f64(double %496, double %496, double %499)
  %501 = call signext i32 @sign(i32 noundef signext %481, i32 noundef signext %477) #7
  %502 = shl i32 %489, 4
  %503 = mul i32 %502, %501
  %504 = shl i32 %503, %61
  %505 = ashr i32 %504, 5
  %506 = add i32 %462, %505
  %507 = sub i32 %469, %506
  %508 = sitofp i32 %507 to double
  call void @levrun_linfo_c2x2(i32 noundef signext %481, i32 noundef signext %460, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %509 = load i32, ptr %6, align 4, !tbaa !24
  %510 = sitofp i32 %509 to double
  %511 = fmul double %397, %510
  %512 = call double @llvm.fmuladd.f64(double %508, double %508, double %511)
  %513 = fcmp oeq double %500, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %487
  %515 = call i32 @llvm.abs.i32(i32 %476, i1 true)
  %516 = call i32 @llvm.abs.i32(i32 %481, i1 true)
  %517 = icmp ult i32 %515, %516
  br label %520

518:                                              ; preds = %487
  %519 = fcmp olt double %500, %512
  br label %520

520:                                              ; preds = %518, %514
  %521 = phi i1 [ %519, %518 ], [ %517, %514 ]
  %522 = select i1 %521, i32 %476, i32 %481
  %523 = icmp eq i32 %522, %476
  %524 = select i1 %523, i32 %471, i32 %477
  br label %531

525:                                              ; preds = %455
  %526 = icmp eq i32 %476, %481
  br i1 %526, label %531, label %527

527:                                              ; preds = %525
  %528 = icmp eq i32 %476, 0
  %529 = select i1 %528, i32 0, i32 %481
  %530 = select i1 %528, i32 %471, i32 %477
  br label %531

531:                                              ; preds = %525, %527, %520
  %532 = phi i32 [ %522, %520 ], [ %529, %527 ], [ %476, %525 ]
  %533 = phi i32 [ %524, %520 ], [ %530, %527 ], [ %471, %525 ]
  %534 = load ptr, ptr @input, align 8, !tbaa !6
  %535 = getelementptr inbounds i8, ptr %534, i64 2984
  %536 = load i32, ptr %535, align 8, !tbaa !44
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %531
  %539 = load ptr, ptr @img, align 8, !tbaa !6
  %540 = getelementptr inbounds i8, ptr %539, i64 40
  %541 = load i32, ptr %540, align 8, !tbaa !45
  %542 = icmp slt i32 %541, 4
  %543 = call i32 @llvm.smin.i32(i32 %532, i32 2063)
  %544 = select i1 %542, i32 %543, i32 %532
  br label %545

545:                                              ; preds = %538, %531
  %546 = phi i32 [ %532, %531 ], [ %544, %538 ]
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %563, label %548

548:                                              ; preds = %545
  %549 = load i64, ptr %453, align 8, !tbaa !58
  %550 = or i64 %549, %452
  store i64 %550, ptr %453, align 8, !tbaa !58
  %551 = call i32 @llvm.smax.i32(i32 %457, i32 1)
  %552 = call signext i32 @sign(i32 noundef signext %546, i32 noundef signext %533) #7
  %553 = sext i32 %458 to i64
  %554 = getelementptr inbounds i32, ptr %34, i64 %553
  store i32 %552, ptr %554, align 4, !tbaa !24
  %555 = getelementptr inbounds i32, ptr %36, i64 %553
  store i32 %460, ptr %555, align 4, !tbaa !24
  %556 = add nsw i32 %458, 1
  %557 = call signext i32 @sign(i32 noundef signext %546, i32 noundef signext %533) #7
  %558 = load i32, ptr %449, align 4, !tbaa !24
  %559 = shl i32 %557, 4
  %560 = mul i32 %559, %558
  %561 = shl i32 %560, %61
  %562 = ashr i32 %561, 5
  br label %563

563:                                              ; preds = %548, %545
  %564 = phi i32 [ -1, %548 ], [ %460, %545 ]
  %565 = phi i32 [ %556, %548 ], [ %458, %545 ]
  %566 = phi i32 [ %562, %548 ], [ 0, %545 ]
  %567 = phi i32 [ %551, %548 ], [ %457, %545 ]
  %568 = add nsw i32 %566, %462
  %569 = call i32 @llvm.abs.i32(i32 %568, i1 true)
  %570 = mul nsw i32 %569, %442
  %571 = add nsw i32 %570, %73
  %572 = ashr i32 %571, %443
  %573 = call signext i32 @sign(i32 noundef signext %572, i32 noundef signext %568) #7
  %574 = load i32, ptr %454, align 4, !tbaa !24
  %575 = mul nsw i32 %574, %573
  %576 = shl i32 %575, %70
  store i32 %576, ptr %468, align 4, !tbaa !24
  %577 = load i32, ptr @si_frame_indicator, align 4, !tbaa !24
  %578 = icmp ne i32 %577, 0
  %579 = load i32, ptr @sp2_frame_indicator, align 4
  %580 = icmp ne i32 %579, 0
  %581 = select i1 %578, i1 true, i1 %580
  br i1 %581, label %605, label %582

582:                                              ; preds = %563
  %583 = call signext i32 @sign(i32 noundef signext %572, i32 noundef signext %568) #7
  %584 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %585 = getelementptr inbounds ptr, ptr %584, i64 %30
  %586 = load ptr, ptr %585, align 8, !tbaa !6
  %587 = load ptr, ptr @img, align 8, !tbaa !6
  %588 = getelementptr inbounds i8, ptr %587, i64 164
  %589 = load i32, ptr %588, align 4, !tbaa !61
  %590 = trunc i64 %456 to i32
  %591 = shl i32 %590, 2
  %592 = and i32 %591, 4
  %593 = add nsw i32 %589, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds ptr, ptr %586, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !6
  %597 = getelementptr inbounds i8, ptr %587, i64 160
  %598 = load i32, ptr %597, align 8, !tbaa !62
  %599 = trunc i64 %456 to i32
  %600 = shl i32 %599, 1
  %601 = and i32 %600, 4
  %602 = add nsw i32 %598, %601
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, ptr %596, i64 %603
  store i32 %583, ptr %604, align 4, !tbaa !24
  br label %605

605:                                              ; preds = %563, %582
  %606 = add nuw nsw i64 %456, 1
  %607 = icmp eq i64 %606, 4
  br i1 %607, label %608, label %455

608:                                              ; preds = %605
  %609 = ashr exact i32 %73, 1
  %610 = sext i32 %565 to i64
  %611 = getelementptr inbounds i32, ptr %34, i64 %610
  store i32 0, ptr %611, align 4, !tbaa !24
  %612 = load i32, ptr %3, align 4, !tbaa !24
  %613 = load i32, ptr %413, align 4, !tbaa !24
  %614 = add nsw i32 %613, %612
  %615 = load i32, ptr %415, align 4, !tbaa !24
  %616 = load i32, ptr %419, align 4, !tbaa !24
  %617 = add i32 %616, %615
  %618 = add i32 %617, %614
  %619 = sdiv i32 %618, 2
  %620 = load ptr, ptr @img, align 8, !tbaa !6
  %621 = getelementptr inbounds i8, ptr %620, i64 13112
  store i32 %619, ptr %621, align 8, !tbaa !24
  %622 = add i32 %612, %615
  %623 = add i32 %613, %616
  %624 = sub i32 %622, %623
  %625 = sdiv i32 %624, 2
  %626 = getelementptr inbounds i8, ptr %620, i64 13128
  store i32 %625, ptr %626, align 8, !tbaa !24
  %627 = sub i32 %614, %617
  %628 = sdiv i32 %627, 2
  %629 = getelementptr inbounds i8, ptr %620, i64 13368
  store i32 %628, ptr %629, align 8, !tbaa !24
  %630 = add i32 %613, %615
  %631 = sub i32 %612, %630
  %632 = add nsw i32 %631, %616
  %633 = sdiv i32 %632, 2
  %634 = getelementptr inbounds i8, ptr %620, i64 13384
  store i32 %633, ptr %634, align 8, !tbaa !24
  %635 = shl i32 -32768, %70
  %636 = add nsw i32 %450, 16
  %637 = zext i32 %636 to i64
  br label %638

638:                                              ; preds = %608, %852
  %639 = phi ptr [ %620, %608 ], [ %844, %852 ]
  %640 = phi i1 [ true, %608 ], [ false, %852 ]
  %641 = phi i64 [ 0, %608 ], [ 4, %852 ]
  %642 = phi i32 [ 0, %608 ], [ %797, %852 ]
  %643 = lshr exact i64 %641, 1
  %644 = or disjoint i64 %643, %637
  %645 = trunc nuw nsw i64 %641 to i32
  br label %648

646:                                              ; preds = %852
  %647 = getelementptr inbounds i8, ptr %844, i64 90536
  br label %853

648:                                              ; preds = %638, %849
  %649 = phi ptr [ %639, %638 ], [ %844, %849 ]
  %650 = phi i1 [ true, %638 ], [ false, %849 ]
  %651 = phi i64 [ 0, %638 ], [ 4, %849 ]
  %652 = phi i32 [ %642, %638 ], [ %797, %849 ]
  %653 = lshr exact i64 %651, 2
  %654 = or disjoint i64 %653, %643
  %655 = getelementptr inbounds i8, ptr %649, i64 14136
  %656 = load ptr, ptr %655, align 8, !tbaa !46
  %657 = getelementptr ptr, ptr %656, i64 %30
  %658 = getelementptr i8, ptr %657, i64 32
  %659 = load ptr, ptr %658, align 8, !tbaa !6
  %660 = getelementptr inbounds ptr, ptr %659, i64 %654
  %661 = load ptr, ptr %660, align 8, !tbaa !6
  %662 = load ptr, ptr %661, align 8, !tbaa !6
  %663 = getelementptr inbounds i8, ptr %661, i64 8
  %664 = load ptr, ptr %663, align 8, !tbaa !6
  %665 = or disjoint i64 %653, %644
  %666 = trunc nuw i64 %665 to i32
  %667 = shl nuw i32 1, %666
  %668 = sext i32 %667 to i64
  %669 = trunc nuw nsw i64 %651 to i32
  br label %670

670:                                              ; preds = %648, %834
  %671 = phi ptr [ %649, %648 ], [ %844, %834 ]
  %672 = phi i64 [ 1, %648 ], [ %847, %834 ]
  %673 = phi i32 [ 0, %648 ], [ %799, %834 ]
  %674 = phi i32 [ -1, %648 ], [ %798, %834 ]
  %675 = phi i32 [ %652, %648 ], [ %797, %834 ]
  %676 = getelementptr inbounds [16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 %672
  %677 = getelementptr inbounds [16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 %672
  %678 = select i1 %27, ptr %676, ptr %677
  %679 = load i8, ptr %678, align 1, !tbaa !43
  %680 = zext i8 %679 to i32
  %681 = getelementptr inbounds i8, ptr %678, i64 1
  %682 = load i8, ptr %681, align 1, !tbaa !43
  %683 = zext i8 %682 to i32
  %684 = add nsw i32 %674, 1
  %685 = zext i8 %679 to i64
  %686 = add nuw nsw i64 %651, %685
  %687 = add nuw nsw i32 %645, %683
  %688 = zext nneg i32 %687 to i64
  %689 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %686, i64 %688
  %690 = load i32, ptr %689, align 4, !tbaa !24
  %691 = call i32 @llvm.abs.i32(i32 %690, i1 true)
  %692 = zext i8 %679 to i64
  %693 = zext i8 %682 to i64
  %694 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %440, i64 %692, i64 %693
  %695 = load i32, ptr %694, align 4, !tbaa !24
  %696 = mul nsw i32 %691, %695
  %697 = add nsw i32 %696, %609
  %698 = and i32 %697, %635
  %699 = sdiv i32 %698, %695
  %700 = getelementptr inbounds i8, ptr %671, i64 13112
  %701 = getelementptr inbounds [16 x [16 x i32]], ptr %700, i64 0, i64 %688, i64 %686
  %702 = load i32, ptr %701, align 4, !tbaa !24
  %703 = call signext i32 @sign(i32 noundef signext %699, i32 noundef signext %690) #7
  %704 = sub nsw i32 %702, %703
  %705 = call i32 @llvm.abs.i32(i32 %704, i1 true)
  %706 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %445, i64 %692, i64 %693
  %707 = load i32, ptr %706, align 4, !tbaa !24
  %708 = mul nsw i32 %705, %707
  %709 = add nsw i32 %708, %147
  %710 = ashr i32 %709, %138
  %711 = load ptr, ptr @img, align 8, !tbaa !6
  %712 = getelementptr inbounds i8, ptr %711, i64 13112
  %713 = getelementptr inbounds [16 x [16 x i32]], ptr %712, i64 0, i64 %688, i64 %686
  %714 = load i32, ptr %713, align 4, !tbaa !24
  %715 = sub nsw i32 %714, %690
  %716 = call i32 @llvm.abs.i32(i32 %715, i1 true)
  %717 = mul nsw i32 %716, %707
  %718 = add nsw i32 %717, %147
  %719 = ashr i32 %718, %138
  %720 = icmp ne i32 %710, %719
  %721 = icmp ne i32 %710, 0
  %722 = and i1 %721, %720
  %723 = icmp ne i32 %719, 0
  %724 = and i1 %723, %722
  br i1 %724, label %725, label %769

725:                                              ; preds = %670
  %726 = call signext i32 @sign(i32 noundef signext %710, i32 noundef signext %704) #7
  %727 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %445, i64 %692, i64 %693
  %728 = load i32, ptr %727, align 4, !tbaa !24
  %729 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %692, i64 %693
  %730 = load i32, ptr %729, align 4, !tbaa !24
  %731 = mul i32 %730, %728
  %732 = mul i32 %731, %726
  %733 = shl i32 %732, %61
  %734 = ashr i32 %733, 6
  %735 = add i32 %690, %734
  %736 = sub i32 %714, %735
  %737 = sitofp i32 %736 to double
  call void @levrun_linfo_inter(i32 noundef signext %710, i32 noundef signext %684, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %738 = load i32, ptr %6, align 4, !tbaa !24
  %739 = sitofp i32 %738 to double
  %740 = fmul double %397, %739
  %741 = call double @llvm.fmuladd.f64(double %737, double %737, double %740)
  %742 = load ptr, ptr @img, align 8, !tbaa !6
  %743 = getelementptr inbounds i8, ptr %742, i64 13112
  %744 = getelementptr inbounds [16 x [16 x i32]], ptr %743, i64 0, i64 %688, i64 %686
  %745 = load i32, ptr %744, align 4, !tbaa !24
  %746 = call signext i32 @sign(i32 noundef signext %719, i32 noundef signext %715) #7
  %747 = mul i32 %731, %746
  %748 = shl i32 %747, %61
  %749 = ashr i32 %748, 6
  %750 = add i32 %690, %749
  %751 = sub i32 %745, %750
  %752 = sitofp i32 %751 to double
  call void @levrun_linfo_inter(i32 noundef signext %719, i32 noundef signext %684, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %753 = load i32, ptr %6, align 4, !tbaa !24
  %754 = sitofp i32 %753 to double
  %755 = fmul double %397, %754
  %756 = call double @llvm.fmuladd.f64(double %752, double %752, double %755)
  %757 = fcmp oeq double %741, %756
  br i1 %757, label %758, label %762

758:                                              ; preds = %725
  %759 = call i32 @llvm.abs.i32(i32 %710, i1 true)
  %760 = call i32 @llvm.abs.i32(i32 %719, i1 true)
  %761 = icmp ult i32 %759, %760
  br label %764

762:                                              ; preds = %725
  %763 = fcmp olt double %741, %756
  br label %764

764:                                              ; preds = %758, %762
  %765 = phi i1 [ %761, %758 ], [ %763, %762 ]
  %766 = select i1 %765, i32 %710, i32 %719
  %767 = icmp eq i32 %766, %710
  %768 = select i1 %767, i32 %704, i32 %715
  br label %777

769:                                              ; preds = %670
  %770 = icmp eq i32 %710, %719
  br i1 %770, label %773, label %771

771:                                              ; preds = %769
  %772 = icmp eq i32 %710, 0
  br i1 %772, label %796, label %773

773:                                              ; preds = %771, %769
  %774 = phi i32 [ %719, %771 ], [ %710, %769 ]
  %775 = phi i32 [ %715, %771 ], [ %704, %769 ]
  %776 = icmp eq i32 %774, 0
  br i1 %776, label %796, label %777

777:                                              ; preds = %764, %773
  %778 = phi i32 [ %768, %764 ], [ %775, %773 ]
  %779 = phi i32 [ %766, %764 ], [ %774, %773 ]
  %780 = load i64, ptr %453, align 8, !tbaa !58
  %781 = or i64 %780, %668
  store i64 %781, ptr %453, align 8, !tbaa !58
  %782 = call signext i32 @sign(i32 noundef signext %779, i32 noundef signext %778) #7
  %783 = sext i32 %673 to i64
  %784 = getelementptr inbounds i32, ptr %662, i64 %783
  store i32 %782, ptr %784, align 4, !tbaa !24
  %785 = getelementptr inbounds i32, ptr %664, i64 %783
  store i32 %684, ptr %785, align 4, !tbaa !24
  %786 = add nsw i32 %673, 1
  %787 = call signext i32 @sign(i32 noundef signext %779, i32 noundef signext %778) #7
  %788 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %445, i64 %692, i64 %693
  %789 = load i32, ptr %788, align 4, !tbaa !24
  %790 = mul nsw i32 %789, %787
  %791 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %692, i64 %693
  %792 = load i32, ptr %791, align 4, !tbaa !24
  %793 = mul nsw i32 %790, %792
  %794 = shl i32 %793, %61
  %795 = ashr i32 %794, 6
  br label %796

796:                                              ; preds = %771, %777, %773
  %797 = phi i32 [ 2, %777 ], [ %675, %773 ], [ %675, %771 ]
  %798 = phi i32 [ -1, %777 ], [ %684, %773 ], [ %684, %771 ]
  %799 = phi i32 [ %786, %777 ], [ %673, %773 ], [ %673, %771 ]
  %800 = phi i32 [ %795, %777 ], [ 0, %773 ], [ 0, %771 ]
  %801 = add nsw i32 %800, %690
  %802 = load i32, ptr @si_frame_indicator, align 4, !tbaa !24
  %803 = icmp ne i32 %802, 0
  %804 = load i32, ptr @sp2_frame_indicator, align 4
  %805 = icmp ne i32 %804, 0
  %806 = select i1 %803, i1 true, i1 %805
  br i1 %806, label %834, label %807

807:                                              ; preds = %796
  %808 = or i32 %683, %680
  %809 = and i32 %808, 3
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %834, label %811

811:                                              ; preds = %807
  %812 = call i32 @llvm.abs.i32(i32 %801, i1 true)
  %813 = mul nsw i32 %812, %695
  %814 = add nsw i32 %813, %609
  %815 = ashr i32 %814, %139
  %816 = call signext i32 @sign(i32 noundef signext %815, i32 noundef signext %801) #7
  %817 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %818 = getelementptr inbounds ptr, ptr %817, i64 %30
  %819 = load ptr, ptr %818, align 8, !tbaa !6
  %820 = load ptr, ptr @img, align 8, !tbaa !6
  %821 = getelementptr inbounds i8, ptr %820, i64 164
  %822 = load i32, ptr %821, align 4, !tbaa !61
  %823 = add nuw nsw i32 %669, %683
  %824 = add i32 %823, %822
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds ptr, ptr %819, i64 %825
  %827 = load ptr, ptr %826, align 8, !tbaa !6
  %828 = getelementptr inbounds i8, ptr %820, i64 160
  %829 = load i32, ptr %828, align 8, !tbaa !62
  %830 = add nuw nsw i32 %645, %680
  %831 = add i32 %830, %829
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i32, ptr %827, i64 %832
  store i32 %816, ptr %833, align 4, !tbaa !24
  br label %834

834:                                              ; preds = %807, %811, %796
  %835 = call i32 @llvm.abs.i32(i32 %801, i1 true)
  %836 = mul nsw i32 %835, %695
  %837 = add nsw i32 %836, %609
  %838 = ashr i32 %837, %139
  %839 = call signext i32 @sign(i32 noundef signext %838, i32 noundef signext %801) #7
  %840 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %440, i64 %692, i64 %693
  %841 = load i32, ptr %840, align 4, !tbaa !24
  %842 = mul nsw i32 %841, %839
  %843 = shl i32 %842, %70
  %844 = load ptr, ptr @img, align 8, !tbaa !6
  %845 = getelementptr inbounds i8, ptr %844, i64 13112
  %846 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %688, i64 %686
  store i32 %843, ptr %846, align 4, !tbaa !24
  %847 = add nuw nsw i64 %672, 1
  %848 = icmp eq i64 %847, 16
  br i1 %848, label %849, label %670

849:                                              ; preds = %834
  %850 = sext i32 %799 to i64
  %851 = getelementptr inbounds i32, ptr %662, i64 %850
  store i32 0, ptr %851, align 4, !tbaa !24
  br i1 %650, label %648, label %852

852:                                              ; preds = %849
  br i1 %640, label %638, label %646

853:                                              ; preds = %646, %1281
  %854 = phi i1 [ true, %646 ], [ false, %1281 ]
  %855 = phi i64 [ 0, %646 ], [ 4, %1281 ]
  %856 = or disjoint i64 %855, 1
  %857 = or disjoint i64 %855, 2
  %858 = or disjoint i64 %855, 3
  %859 = or disjoint i64 %855, 1
  %860 = or disjoint i64 %855, 2
  %861 = or disjoint i64 %855, 3
  br label %1161

862:                                              ; preds = %1281
  %863 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %864 = getelementptr inbounds i8, ptr %863, i64 6464
  %865 = load ptr, ptr %864, align 8, !tbaa !63
  %866 = getelementptr inbounds ptr, ptr %865, i64 %30
  %867 = load ptr, ptr %866, align 8, !tbaa !6
  %868 = getelementptr inbounds i8, ptr %844, i64 164
  %869 = load i32, ptr %868, align 4, !tbaa !61
  %870 = getelementptr inbounds i8, ptr %844, i64 160
  %871 = load i32, ptr %870, align 8, !tbaa !62
  %872 = sext i32 %871 to i64
  %873 = sext i32 %869 to i64
  %874 = getelementptr inbounds ptr, ptr %867, i64 %873
  %875 = load ptr, ptr %874, align 8, !tbaa !6
  %876 = load i32, ptr %845, align 4, !tbaa !24
  %877 = trunc i32 %876 to i16
  %878 = getelementptr inbounds i16, ptr %875, i64 %872
  store i16 %877, ptr %878, align 2, !tbaa !27
  %879 = getelementptr inbounds i8, ptr %844, i64 13116
  %880 = load i32, ptr %879, align 4, !tbaa !24
  %881 = trunc i32 %880 to i16
  %882 = add nsw i64 %872, 1
  %883 = getelementptr inbounds i16, ptr %875, i64 %882
  store i16 %881, ptr %883, align 2, !tbaa !27
  %884 = getelementptr inbounds i8, ptr %844, i64 13120
  %885 = load i32, ptr %884, align 4, !tbaa !24
  %886 = trunc i32 %885 to i16
  %887 = add nsw i64 %872, 2
  %888 = getelementptr inbounds i16, ptr %875, i64 %887
  store i16 %886, ptr %888, align 2, !tbaa !27
  %889 = getelementptr inbounds i8, ptr %844, i64 13124
  %890 = load i32, ptr %889, align 4, !tbaa !24
  %891 = trunc i32 %890 to i16
  %892 = add nsw i64 %872, 3
  %893 = getelementptr inbounds i16, ptr %875, i64 %892
  store i16 %891, ptr %893, align 2, !tbaa !27
  %894 = getelementptr inbounds i8, ptr %844, i64 13128
  %895 = load i32, ptr %894, align 4, !tbaa !24
  %896 = trunc i32 %895 to i16
  %897 = add nsw i64 %872, 4
  %898 = getelementptr inbounds i16, ptr %875, i64 %897
  store i16 %896, ptr %898, align 2, !tbaa !27
  %899 = getelementptr inbounds i8, ptr %844, i64 13132
  %900 = load i32, ptr %899, align 4, !tbaa !24
  %901 = trunc i32 %900 to i16
  %902 = add nsw i64 %872, 5
  %903 = getelementptr inbounds i16, ptr %875, i64 %902
  store i16 %901, ptr %903, align 2, !tbaa !27
  %904 = getelementptr inbounds i8, ptr %844, i64 13136
  %905 = load i32, ptr %904, align 4, !tbaa !24
  %906 = trunc i32 %905 to i16
  %907 = add nsw i64 %872, 6
  %908 = getelementptr inbounds i16, ptr %875, i64 %907
  store i16 %906, ptr %908, align 2, !tbaa !27
  %909 = getelementptr inbounds i8, ptr %844, i64 13140
  %910 = load i32, ptr %909, align 4, !tbaa !24
  %911 = trunc i32 %910 to i16
  %912 = add nsw i64 %872, 7
  %913 = getelementptr inbounds i16, ptr %875, i64 %912
  store i16 %911, ptr %913, align 2, !tbaa !27
  %914 = getelementptr ptr, ptr %867, i64 %873
  %915 = getelementptr i8, ptr %914, i64 8
  %916 = load ptr, ptr %915, align 8, !tbaa !6
  %917 = getelementptr inbounds i8, ptr %844, i64 13176
  %918 = load i32, ptr %917, align 4, !tbaa !24
  %919 = trunc i32 %918 to i16
  %920 = getelementptr inbounds i16, ptr %916, i64 %872
  store i16 %919, ptr %920, align 2, !tbaa !27
  %921 = getelementptr inbounds i8, ptr %844, i64 13180
  %922 = load i32, ptr %921, align 4, !tbaa !24
  %923 = trunc i32 %922 to i16
  %924 = getelementptr inbounds i16, ptr %916, i64 %882
  store i16 %923, ptr %924, align 2, !tbaa !27
  %925 = getelementptr inbounds i8, ptr %844, i64 13184
  %926 = load i32, ptr %925, align 4, !tbaa !24
  %927 = trunc i32 %926 to i16
  %928 = getelementptr inbounds i16, ptr %916, i64 %887
  store i16 %927, ptr %928, align 2, !tbaa !27
  %929 = getelementptr inbounds i8, ptr %844, i64 13188
  %930 = load i32, ptr %929, align 4, !tbaa !24
  %931 = trunc i32 %930 to i16
  %932 = getelementptr inbounds i16, ptr %916, i64 %892
  store i16 %931, ptr %932, align 2, !tbaa !27
  %933 = getelementptr inbounds i8, ptr %844, i64 13192
  %934 = load i32, ptr %933, align 4, !tbaa !24
  %935 = trunc i32 %934 to i16
  %936 = getelementptr inbounds i16, ptr %916, i64 %897
  store i16 %935, ptr %936, align 2, !tbaa !27
  %937 = getelementptr inbounds i8, ptr %844, i64 13196
  %938 = load i32, ptr %937, align 4, !tbaa !24
  %939 = trunc i32 %938 to i16
  %940 = getelementptr inbounds i16, ptr %916, i64 %902
  store i16 %939, ptr %940, align 2, !tbaa !27
  %941 = getelementptr inbounds i8, ptr %844, i64 13200
  %942 = load i32, ptr %941, align 4, !tbaa !24
  %943 = trunc i32 %942 to i16
  %944 = getelementptr inbounds i16, ptr %916, i64 %907
  store i16 %943, ptr %944, align 2, !tbaa !27
  %945 = getelementptr inbounds i8, ptr %844, i64 13204
  %946 = load i32, ptr %945, align 4, !tbaa !24
  %947 = trunc i32 %946 to i16
  %948 = getelementptr inbounds i16, ptr %916, i64 %912
  store i16 %947, ptr %948, align 2, !tbaa !27
  %949 = getelementptr ptr, ptr %867, i64 %873
  %950 = getelementptr i8, ptr %949, i64 16
  %951 = load ptr, ptr %950, align 8, !tbaa !6
  %952 = getelementptr inbounds i8, ptr %844, i64 13240
  %953 = load i32, ptr %952, align 4, !tbaa !24
  %954 = trunc i32 %953 to i16
  %955 = getelementptr inbounds i16, ptr %951, i64 %872
  store i16 %954, ptr %955, align 2, !tbaa !27
  %956 = getelementptr inbounds i8, ptr %844, i64 13244
  %957 = load i32, ptr %956, align 4, !tbaa !24
  %958 = trunc i32 %957 to i16
  %959 = getelementptr inbounds i16, ptr %951, i64 %882
  store i16 %958, ptr %959, align 2, !tbaa !27
  %960 = getelementptr inbounds i8, ptr %844, i64 13248
  %961 = load i32, ptr %960, align 4, !tbaa !24
  %962 = trunc i32 %961 to i16
  %963 = getelementptr inbounds i16, ptr %951, i64 %887
  store i16 %962, ptr %963, align 2, !tbaa !27
  %964 = getelementptr inbounds i8, ptr %844, i64 13252
  %965 = load i32, ptr %964, align 4, !tbaa !24
  %966 = trunc i32 %965 to i16
  %967 = getelementptr inbounds i16, ptr %951, i64 %892
  store i16 %966, ptr %967, align 2, !tbaa !27
  %968 = getelementptr inbounds i8, ptr %844, i64 13256
  %969 = load i32, ptr %968, align 4, !tbaa !24
  %970 = trunc i32 %969 to i16
  %971 = getelementptr inbounds i16, ptr %951, i64 %897
  store i16 %970, ptr %971, align 2, !tbaa !27
  %972 = getelementptr inbounds i8, ptr %844, i64 13260
  %973 = load i32, ptr %972, align 4, !tbaa !24
  %974 = trunc i32 %973 to i16
  %975 = getelementptr inbounds i16, ptr %951, i64 %902
  store i16 %974, ptr %975, align 2, !tbaa !27
  %976 = getelementptr inbounds i8, ptr %844, i64 13264
  %977 = load i32, ptr %976, align 4, !tbaa !24
  %978 = trunc i32 %977 to i16
  %979 = getelementptr inbounds i16, ptr %951, i64 %907
  store i16 %978, ptr %979, align 2, !tbaa !27
  %980 = getelementptr inbounds i8, ptr %844, i64 13268
  %981 = load i32, ptr %980, align 4, !tbaa !24
  %982 = trunc i32 %981 to i16
  %983 = getelementptr inbounds i16, ptr %951, i64 %912
  store i16 %982, ptr %983, align 2, !tbaa !27
  %984 = getelementptr ptr, ptr %867, i64 %873
  %985 = getelementptr i8, ptr %984, i64 24
  %986 = load ptr, ptr %985, align 8, !tbaa !6
  %987 = getelementptr inbounds i8, ptr %844, i64 13304
  %988 = load i32, ptr %987, align 4, !tbaa !24
  %989 = trunc i32 %988 to i16
  %990 = getelementptr inbounds i16, ptr %986, i64 %872
  store i16 %989, ptr %990, align 2, !tbaa !27
  %991 = getelementptr inbounds i8, ptr %844, i64 13308
  %992 = load i32, ptr %991, align 4, !tbaa !24
  %993 = trunc i32 %992 to i16
  %994 = getelementptr inbounds i16, ptr %986, i64 %882
  store i16 %993, ptr %994, align 2, !tbaa !27
  %995 = getelementptr inbounds i8, ptr %844, i64 13312
  %996 = load i32, ptr %995, align 4, !tbaa !24
  %997 = trunc i32 %996 to i16
  %998 = getelementptr inbounds i16, ptr %986, i64 %887
  store i16 %997, ptr %998, align 2, !tbaa !27
  %999 = getelementptr inbounds i8, ptr %844, i64 13316
  %1000 = load i32, ptr %999, align 4, !tbaa !24
  %1001 = trunc i32 %1000 to i16
  %1002 = getelementptr inbounds i16, ptr %986, i64 %892
  store i16 %1001, ptr %1002, align 2, !tbaa !27
  %1003 = getelementptr inbounds i8, ptr %844, i64 13320
  %1004 = load i32, ptr %1003, align 4, !tbaa !24
  %1005 = trunc i32 %1004 to i16
  %1006 = getelementptr inbounds i16, ptr %986, i64 %897
  store i16 %1005, ptr %1006, align 2, !tbaa !27
  %1007 = getelementptr inbounds i8, ptr %844, i64 13324
  %1008 = load i32, ptr %1007, align 4, !tbaa !24
  %1009 = trunc i32 %1008 to i16
  %1010 = getelementptr inbounds i16, ptr %986, i64 %902
  store i16 %1009, ptr %1010, align 2, !tbaa !27
  %1011 = getelementptr inbounds i8, ptr %844, i64 13328
  %1012 = load i32, ptr %1011, align 4, !tbaa !24
  %1013 = trunc i32 %1012 to i16
  %1014 = getelementptr inbounds i16, ptr %986, i64 %907
  store i16 %1013, ptr %1014, align 2, !tbaa !27
  %1015 = getelementptr inbounds i8, ptr %844, i64 13332
  %1016 = load i32, ptr %1015, align 4, !tbaa !24
  %1017 = trunc i32 %1016 to i16
  %1018 = getelementptr inbounds i16, ptr %986, i64 %912
  store i16 %1017, ptr %1018, align 2, !tbaa !27
  %1019 = getelementptr ptr, ptr %867, i64 %873
  %1020 = getelementptr i8, ptr %1019, i64 32
  %1021 = load ptr, ptr %1020, align 8, !tbaa !6
  %1022 = getelementptr inbounds i8, ptr %844, i64 13368
  %1023 = load i32, ptr %1022, align 4, !tbaa !24
  %1024 = trunc i32 %1023 to i16
  %1025 = getelementptr inbounds i16, ptr %1021, i64 %872
  store i16 %1024, ptr %1025, align 2, !tbaa !27
  %1026 = getelementptr inbounds i8, ptr %844, i64 13372
  %1027 = load i32, ptr %1026, align 4, !tbaa !24
  %1028 = trunc i32 %1027 to i16
  %1029 = getelementptr inbounds i16, ptr %1021, i64 %882
  store i16 %1028, ptr %1029, align 2, !tbaa !27
  %1030 = getelementptr inbounds i8, ptr %844, i64 13376
  %1031 = load i32, ptr %1030, align 4, !tbaa !24
  %1032 = trunc i32 %1031 to i16
  %1033 = getelementptr inbounds i16, ptr %1021, i64 %887
  store i16 %1032, ptr %1033, align 2, !tbaa !27
  %1034 = getelementptr inbounds i8, ptr %844, i64 13380
  %1035 = load i32, ptr %1034, align 4, !tbaa !24
  %1036 = trunc i32 %1035 to i16
  %1037 = getelementptr inbounds i16, ptr %1021, i64 %892
  store i16 %1036, ptr %1037, align 2, !tbaa !27
  %1038 = getelementptr inbounds i8, ptr %844, i64 13384
  %1039 = load i32, ptr %1038, align 4, !tbaa !24
  %1040 = trunc i32 %1039 to i16
  %1041 = getelementptr inbounds i16, ptr %1021, i64 %897
  store i16 %1040, ptr %1041, align 2, !tbaa !27
  %1042 = getelementptr inbounds i8, ptr %844, i64 13388
  %1043 = load i32, ptr %1042, align 4, !tbaa !24
  %1044 = trunc i32 %1043 to i16
  %1045 = getelementptr inbounds i16, ptr %1021, i64 %902
  store i16 %1044, ptr %1045, align 2, !tbaa !27
  %1046 = getelementptr inbounds i8, ptr %844, i64 13392
  %1047 = load i32, ptr %1046, align 4, !tbaa !24
  %1048 = trunc i32 %1047 to i16
  %1049 = getelementptr inbounds i16, ptr %1021, i64 %907
  store i16 %1048, ptr %1049, align 2, !tbaa !27
  %1050 = getelementptr inbounds i8, ptr %844, i64 13396
  %1051 = load i32, ptr %1050, align 4, !tbaa !24
  %1052 = trunc i32 %1051 to i16
  %1053 = getelementptr inbounds i16, ptr %1021, i64 %912
  store i16 %1052, ptr %1053, align 2, !tbaa !27
  %1054 = getelementptr ptr, ptr %867, i64 %873
  %1055 = getelementptr i8, ptr %1054, i64 40
  %1056 = load ptr, ptr %1055, align 8, !tbaa !6
  %1057 = getelementptr inbounds i8, ptr %844, i64 13432
  %1058 = load i32, ptr %1057, align 4, !tbaa !24
  %1059 = trunc i32 %1058 to i16
  %1060 = getelementptr inbounds i16, ptr %1056, i64 %872
  store i16 %1059, ptr %1060, align 2, !tbaa !27
  %1061 = getelementptr inbounds i8, ptr %844, i64 13436
  %1062 = load i32, ptr %1061, align 4, !tbaa !24
  %1063 = trunc i32 %1062 to i16
  %1064 = getelementptr inbounds i16, ptr %1056, i64 %882
  store i16 %1063, ptr %1064, align 2, !tbaa !27
  %1065 = getelementptr inbounds i8, ptr %844, i64 13440
  %1066 = load i32, ptr %1065, align 4, !tbaa !24
  %1067 = trunc i32 %1066 to i16
  %1068 = getelementptr inbounds i16, ptr %1056, i64 %887
  store i16 %1067, ptr %1068, align 2, !tbaa !27
  %1069 = getelementptr inbounds i8, ptr %844, i64 13444
  %1070 = load i32, ptr %1069, align 4, !tbaa !24
  %1071 = trunc i32 %1070 to i16
  %1072 = getelementptr inbounds i16, ptr %1056, i64 %892
  store i16 %1071, ptr %1072, align 2, !tbaa !27
  %1073 = getelementptr inbounds i8, ptr %844, i64 13448
  %1074 = load i32, ptr %1073, align 4, !tbaa !24
  %1075 = trunc i32 %1074 to i16
  %1076 = getelementptr inbounds i16, ptr %1056, i64 %897
  store i16 %1075, ptr %1076, align 2, !tbaa !27
  %1077 = getelementptr inbounds i8, ptr %844, i64 13452
  %1078 = load i32, ptr %1077, align 4, !tbaa !24
  %1079 = trunc i32 %1078 to i16
  %1080 = getelementptr inbounds i16, ptr %1056, i64 %902
  store i16 %1079, ptr %1080, align 2, !tbaa !27
  %1081 = getelementptr inbounds i8, ptr %844, i64 13456
  %1082 = load i32, ptr %1081, align 4, !tbaa !24
  %1083 = trunc i32 %1082 to i16
  %1084 = getelementptr inbounds i16, ptr %1056, i64 %907
  store i16 %1083, ptr %1084, align 2, !tbaa !27
  %1085 = getelementptr inbounds i8, ptr %844, i64 13460
  %1086 = load i32, ptr %1085, align 4, !tbaa !24
  %1087 = trunc i32 %1086 to i16
  %1088 = getelementptr inbounds i16, ptr %1056, i64 %912
  store i16 %1087, ptr %1088, align 2, !tbaa !27
  %1089 = getelementptr ptr, ptr %867, i64 %873
  %1090 = getelementptr i8, ptr %1089, i64 48
  %1091 = load ptr, ptr %1090, align 8, !tbaa !6
  %1092 = getelementptr inbounds i8, ptr %844, i64 13496
  %1093 = load i32, ptr %1092, align 4, !tbaa !24
  %1094 = trunc i32 %1093 to i16
  %1095 = getelementptr inbounds i16, ptr %1091, i64 %872
  store i16 %1094, ptr %1095, align 2, !tbaa !27
  %1096 = getelementptr inbounds i8, ptr %844, i64 13500
  %1097 = load i32, ptr %1096, align 4, !tbaa !24
  %1098 = trunc i32 %1097 to i16
  %1099 = getelementptr inbounds i16, ptr %1091, i64 %882
  store i16 %1098, ptr %1099, align 2, !tbaa !27
  %1100 = getelementptr inbounds i8, ptr %844, i64 13504
  %1101 = load i32, ptr %1100, align 4, !tbaa !24
  %1102 = trunc i32 %1101 to i16
  %1103 = getelementptr inbounds i16, ptr %1091, i64 %887
  store i16 %1102, ptr %1103, align 2, !tbaa !27
  %1104 = getelementptr inbounds i8, ptr %844, i64 13508
  %1105 = load i32, ptr %1104, align 4, !tbaa !24
  %1106 = trunc i32 %1105 to i16
  %1107 = getelementptr inbounds i16, ptr %1091, i64 %892
  store i16 %1106, ptr %1107, align 2, !tbaa !27
  %1108 = getelementptr inbounds i8, ptr %844, i64 13512
  %1109 = load i32, ptr %1108, align 4, !tbaa !24
  %1110 = trunc i32 %1109 to i16
  %1111 = getelementptr inbounds i16, ptr %1091, i64 %897
  store i16 %1110, ptr %1111, align 2, !tbaa !27
  %1112 = getelementptr inbounds i8, ptr %844, i64 13516
  %1113 = load i32, ptr %1112, align 4, !tbaa !24
  %1114 = trunc i32 %1113 to i16
  %1115 = getelementptr inbounds i16, ptr %1091, i64 %902
  store i16 %1114, ptr %1115, align 2, !tbaa !27
  %1116 = getelementptr inbounds i8, ptr %844, i64 13520
  %1117 = load i32, ptr %1116, align 4, !tbaa !24
  %1118 = trunc i32 %1117 to i16
  %1119 = getelementptr inbounds i16, ptr %1091, i64 %907
  store i16 %1118, ptr %1119, align 2, !tbaa !27
  %1120 = getelementptr inbounds i8, ptr %844, i64 13524
  %1121 = load i32, ptr %1120, align 4, !tbaa !24
  %1122 = trunc i32 %1121 to i16
  %1123 = getelementptr inbounds i16, ptr %1091, i64 %912
  store i16 %1122, ptr %1123, align 2, !tbaa !27
  %1124 = getelementptr ptr, ptr %867, i64 %873
  %1125 = getelementptr i8, ptr %1124, i64 56
  %1126 = load ptr, ptr %1125, align 8, !tbaa !6
  %1127 = getelementptr inbounds i8, ptr %844, i64 13560
  %1128 = load i32, ptr %1127, align 4, !tbaa !24
  %1129 = trunc i32 %1128 to i16
  %1130 = getelementptr inbounds i16, ptr %1126, i64 %872
  store i16 %1129, ptr %1130, align 2, !tbaa !27
  %1131 = getelementptr inbounds i8, ptr %844, i64 13564
  %1132 = load i32, ptr %1131, align 4, !tbaa !24
  %1133 = trunc i32 %1132 to i16
  %1134 = getelementptr inbounds i16, ptr %1126, i64 %882
  store i16 %1133, ptr %1134, align 2, !tbaa !27
  %1135 = getelementptr inbounds i8, ptr %844, i64 13568
  %1136 = load i32, ptr %1135, align 4, !tbaa !24
  %1137 = trunc i32 %1136 to i16
  %1138 = getelementptr inbounds i16, ptr %1126, i64 %887
  store i16 %1137, ptr %1138, align 2, !tbaa !27
  %1139 = getelementptr inbounds i8, ptr %844, i64 13572
  %1140 = load i32, ptr %1139, align 4, !tbaa !24
  %1141 = trunc i32 %1140 to i16
  %1142 = getelementptr inbounds i16, ptr %1126, i64 %892
  store i16 %1141, ptr %1142, align 2, !tbaa !27
  %1143 = getelementptr inbounds i8, ptr %844, i64 13576
  %1144 = load i32, ptr %1143, align 4, !tbaa !24
  %1145 = trunc i32 %1144 to i16
  %1146 = getelementptr inbounds i16, ptr %1126, i64 %897
  store i16 %1145, ptr %1146, align 2, !tbaa !27
  %1147 = getelementptr inbounds i8, ptr %844, i64 13580
  %1148 = load i32, ptr %1147, align 4, !tbaa !24
  %1149 = trunc i32 %1148 to i16
  %1150 = getelementptr inbounds i16, ptr %1126, i64 %902
  store i16 %1149, ptr %1150, align 2, !tbaa !27
  %1151 = getelementptr inbounds i8, ptr %844, i64 13584
  %1152 = load i32, ptr %1151, align 4, !tbaa !24
  %1153 = trunc i32 %1152 to i16
  %1154 = getelementptr inbounds i16, ptr %1126, i64 %907
  store i16 %1153, ptr %1154, align 2, !tbaa !27
  %1155 = getelementptr inbounds i8, ptr %844, i64 13588
  %1156 = load i32, ptr %1155, align 4, !tbaa !24
  %1157 = trunc i32 %1156 to i16
  %1158 = getelementptr inbounds i16, ptr %1126, i64 %912
  store i16 %1157, ptr %1158, align 2, !tbaa !27
  %1159 = icmp eq i32 %797, 2
  %1160 = select i1 %1159, i32 2, i32 %567
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %1160

1161:                                             ; preds = %853, %1280
  %1162 = phi i1 [ true, %853 ], [ false, %1280 ]
  %1163 = phi i64 [ 0, %853 ], [ 4, %1280 ]
  %1164 = or disjoint i64 %1163, 3
  %1165 = or disjoint i64 %1163, 2
  %1166 = or disjoint i64 %1163, 1
  %1167 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %855, i64 %1163
  %1168 = load i32, ptr %1167, align 4, !tbaa !24
  %1169 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %855, i64 %1166
  %1170 = load i32, ptr %1169, align 4, !tbaa !24
  %1171 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %855, i64 %1165
  %1172 = load i32, ptr %1171, align 4, !tbaa !24
  %1173 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %855, i64 %1164
  %1174 = load i32, ptr %1173, align 4, !tbaa !24
  %1175 = add nsw i32 %1172, %1168
  %1176 = sub nsw i32 %1168, %1172
  %1177 = ashr i32 %1170, 1
  %1178 = sub nsw i32 %1177, %1174
  %1179 = ashr i32 %1174, 1
  %1180 = add nsw i32 %1179, %1170
  %1181 = add nsw i32 %1180, %1175
  store i32 %1181, ptr %1167, align 4, !tbaa !24
  %1182 = sub nsw i32 %1175, %1180
  store i32 %1182, ptr %1173, align 4, !tbaa !24
  %1183 = add nsw i32 %1178, %1176
  store i32 %1183, ptr %1169, align 4, !tbaa !24
  %1184 = sub nsw i32 %1176, %1178
  store i32 %1184, ptr %1171, align 4, !tbaa !24
  %1185 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %859, i64 %1163
  %1186 = load i32, ptr %1185, align 4, !tbaa !24
  %1187 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %859, i64 %1166
  %1188 = load i32, ptr %1187, align 4, !tbaa !24
  %1189 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %859, i64 %1165
  %1190 = load i32, ptr %1189, align 4, !tbaa !24
  %1191 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %859, i64 %1164
  %1192 = load i32, ptr %1191, align 4, !tbaa !24
  %1193 = add nsw i32 %1190, %1186
  %1194 = sub nsw i32 %1186, %1190
  %1195 = ashr i32 %1188, 1
  %1196 = sub nsw i32 %1195, %1192
  %1197 = ashr i32 %1192, 1
  %1198 = add nsw i32 %1197, %1188
  %1199 = add nsw i32 %1198, %1193
  store i32 %1199, ptr %1185, align 4, !tbaa !24
  %1200 = sub nsw i32 %1193, %1198
  store i32 %1200, ptr %1191, align 4, !tbaa !24
  %1201 = add nsw i32 %1196, %1194
  store i32 %1201, ptr %1187, align 4, !tbaa !24
  %1202 = sub nsw i32 %1194, %1196
  store i32 %1202, ptr %1189, align 4, !tbaa !24
  %1203 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %860, i64 %1163
  %1204 = load i32, ptr %1203, align 4, !tbaa !24
  %1205 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %860, i64 %1166
  %1206 = load i32, ptr %1205, align 4, !tbaa !24
  %1207 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %860, i64 %1165
  %1208 = load i32, ptr %1207, align 4, !tbaa !24
  %1209 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %860, i64 %1164
  %1210 = load i32, ptr %1209, align 4, !tbaa !24
  %1211 = add nsw i32 %1208, %1204
  %1212 = sub nsw i32 %1204, %1208
  %1213 = ashr i32 %1206, 1
  %1214 = sub nsw i32 %1213, %1210
  %1215 = ashr i32 %1210, 1
  %1216 = add nsw i32 %1215, %1206
  %1217 = add nsw i32 %1216, %1211
  store i32 %1217, ptr %1203, align 4, !tbaa !24
  %1218 = sub nsw i32 %1211, %1216
  store i32 %1218, ptr %1209, align 4, !tbaa !24
  %1219 = add nsw i32 %1214, %1212
  store i32 %1219, ptr %1205, align 4, !tbaa !24
  %1220 = sub nsw i32 %1212, %1214
  store i32 %1220, ptr %1207, align 4, !tbaa !24
  %1221 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %861, i64 %1163
  %1222 = load i32, ptr %1221, align 4, !tbaa !24
  %1223 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %861, i64 %1166
  %1224 = load i32, ptr %1223, align 4, !tbaa !24
  %1225 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %861, i64 %1165
  %1226 = load i32, ptr %1225, align 4, !tbaa !24
  %1227 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %861, i64 %1164
  %1228 = load i32, ptr %1227, align 4, !tbaa !24
  %1229 = add nsw i32 %1226, %1222
  %1230 = sub nsw i32 %1222, %1226
  %1231 = ashr i32 %1224, 1
  %1232 = sub nsw i32 %1231, %1228
  %1233 = ashr i32 %1228, 1
  %1234 = add nsw i32 %1233, %1224
  %1235 = add nsw i32 %1234, %1229
  store i32 %1235, ptr %1221, align 4, !tbaa !24
  %1236 = sub nsw i32 %1229, %1234
  store i32 %1236, ptr %1227, align 4, !tbaa !24
  %1237 = add nsw i32 %1232, %1230
  store i32 %1237, ptr %1223, align 4, !tbaa !24
  %1238 = sub nsw i32 %1230, %1232
  store i32 %1238, ptr %1225, align 4, !tbaa !24
  br label %1239

1239:                                             ; preds = %1161, %1239
  %1240 = phi i64 [ %1278, %1239 ], [ 0, %1161 ]
  %1241 = or disjoint i64 %1240, %1163
  %1242 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %855, i64 %1241
  %1243 = load i32, ptr %1242, align 4, !tbaa !24
  %1244 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %856, i64 %1241
  %1245 = load i32, ptr %1244, align 4, !tbaa !24
  %1246 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %857, i64 %1241
  %1247 = load i32, ptr %1246, align 4, !tbaa !24
  %1248 = getelementptr inbounds [16 x [16 x i32]], ptr %845, i64 0, i64 %858, i64 %1241
  %1249 = load i32, ptr %1248, align 4, !tbaa !24
  %1250 = add nsw i32 %1247, %1243
  %1251 = sub nsw i32 %1243, %1247
  %1252 = ashr i32 %1245, 1
  %1253 = sub nsw i32 %1252, %1249
  %1254 = ashr i32 %1249, 1
  %1255 = add nsw i32 %1254, %1245
  %1256 = load i32, ptr %647, align 8, !tbaa !60
  %1257 = add i32 %1250, 32
  %1258 = add i32 %1257, %1255
  %1259 = ashr i32 %1258, 6
  %1260 = call i32 @llvm.smax.i32(i32 %1259, i32 0)
  %1261 = call i32 @llvm.smin.i32(i32 %1256, i32 %1260)
  store i32 %1261, ptr %1242, align 4, !tbaa !24
  %1262 = load i32, ptr %647, align 8, !tbaa !60
  %1263 = sub i32 %1257, %1255
  %1264 = ashr i32 %1263, 6
  %1265 = call i32 @llvm.smax.i32(i32 %1264, i32 0)
  %1266 = call i32 @llvm.smin.i32(i32 %1262, i32 %1265)
  store i32 %1266, ptr %1248, align 4, !tbaa !24
  %1267 = load i32, ptr %647, align 8, !tbaa !60
  %1268 = add i32 %1251, 32
  %1269 = add i32 %1268, %1253
  %1270 = ashr i32 %1269, 6
  %1271 = call i32 @llvm.smax.i32(i32 %1270, i32 0)
  %1272 = call i32 @llvm.smin.i32(i32 %1267, i32 %1271)
  store i32 %1272, ptr %1244, align 4, !tbaa !24
  %1273 = load i32, ptr %647, align 8, !tbaa !60
  %1274 = sub i32 %1268, %1253
  %1275 = ashr i32 %1274, 6
  %1276 = call i32 @llvm.smax.i32(i32 %1275, i32 0)
  %1277 = call i32 @llvm.smin.i32(i32 %1273, i32 %1276)
  store i32 %1277, ptr %1246, align 4, !tbaa !24
  %1278 = add nuw nsw i64 %1240, 1
  %1279 = icmp eq i64 %1278, 4
  br i1 %1279, label %1280, label %1239

1280:                                             ; preds = %1239
  br i1 %1162, label %1161, label %1281

1281:                                             ; preds = %1280
  br i1 %854, label %853, label %862
}

declare dso_local void @levrun_linfo_c2x2(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @copyblock_sp(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x i32]], align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %4, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = sext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %10 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %9, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = freeze i32 %11
  %13 = sdiv i32 %12, 6
  %14 = add nsw i32 %13, 15
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds i8, ptr %4, i64 12600
  %17 = sext i32 %0 to i64
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %18, i64 %17
  %20 = load i16, ptr %19, align 2, !tbaa !27
  %21 = zext i16 %20 to i32
  %22 = add nsw i64 %17, 1
  %23 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %18, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !27
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds i8, ptr %3, i64 16
  %27 = add nsw i64 %17, 2
  %28 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %18, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !27
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds i8, ptr %3, i64 32
  %32 = add nsw i64 %17, 3
  %33 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %18, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !27
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds i8, ptr %3, i64 48
  %37 = add nsw i64 %18, 1
  %38 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %37, i64 %17
  %39 = load i16, ptr %38, align 2, !tbaa !27
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i8, ptr %3, i64 4
  %42 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %37, i64 %22
  %43 = load i16, ptr %42, align 2, !tbaa !27
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %37, i64 %27
  %46 = load i16, ptr %45, align 2, !tbaa !27
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %37, i64 %32
  %49 = load i16, ptr %48, align 2, !tbaa !27
  %50 = zext i16 %49 to i32
  %51 = add nsw i64 %18, 2
  %52 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %51, i64 %17
  %53 = load i16, ptr %52, align 2, !tbaa !27
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds i8, ptr %3, i64 8
  %56 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %51, i64 %22
  %57 = load i16, ptr %56, align 2, !tbaa !27
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %51, i64 %27
  %60 = load i16, ptr %59, align 2, !tbaa !27
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %51, i64 %32
  %63 = load i16, ptr %62, align 2, !tbaa !27
  %64 = zext i16 %63 to i32
  %65 = add nsw i64 %18, 3
  %66 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %65, i64 %17
  %67 = load i16, ptr %66, align 2, !tbaa !27
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds i8, ptr %3, i64 12
  %70 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %65, i64 %22
  %71 = load i16, ptr %70, align 2, !tbaa !27
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %65, i64 %27
  %74 = load i16, ptr %73, align 2, !tbaa !27
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds [16 x [16 x i16]], ptr %16, i64 0, i64 %65, i64 %32
  %77 = load i16, ptr %76, align 2, !tbaa !27
  %78 = zext i16 %77 to i32
  %79 = mul i32 %13, 6
  %80 = sub i32 %12, %79
  %81 = add nuw nsw i32 %35, %21
  %82 = sub nsw i32 %21, %35
  %83 = add nuw nsw i32 %30, %25
  %84 = sub nsw i32 %25, %30
  %85 = add nuw nsw i32 %83, %81
  %86 = sub nsw i32 %81, %83
  %87 = shl nsw i32 %82, 1
  %88 = add nsw i32 %87, %84
  %89 = shl nsw i32 %84, 1
  %90 = sub nsw i32 %82, %89
  %91 = add nuw nsw i32 %50, %40
  %92 = sub nsw i32 %40, %50
  %93 = add nuw nsw i32 %47, %44
  %94 = sub nsw i32 %44, %47
  %95 = add nuw nsw i32 %93, %91
  %96 = sub nsw i32 %91, %93
  %97 = getelementptr inbounds i8, ptr %3, i64 36
  %98 = shl nsw i32 %92, 1
  %99 = add nsw i32 %98, %94
  %100 = getelementptr inbounds i8, ptr %3, i64 20
  %101 = shl nsw i32 %94, 1
  %102 = sub nsw i32 %92, %101
  %103 = getelementptr inbounds i8, ptr %3, i64 52
  %104 = add nuw nsw i32 %64, %54
  %105 = sub nsw i32 %54, %64
  %106 = add nuw nsw i32 %61, %58
  %107 = sub nsw i32 %58, %61
  %108 = add nuw nsw i32 %106, %104
  %109 = sub nsw i32 %104, %106
  %110 = getelementptr inbounds i8, ptr %3, i64 40
  %111 = shl nsw i32 %105, 1
  %112 = add nsw i32 %111, %107
  %113 = getelementptr inbounds i8, ptr %3, i64 24
  %114 = shl nsw i32 %107, 1
  %115 = sub nsw i32 %105, %114
  %116 = getelementptr inbounds i8, ptr %3, i64 56
  %117 = add nuw nsw i32 %78, %68
  %118 = sub nsw i32 %68, %78
  %119 = add nuw nsw i32 %75, %72
  %120 = sub nsw i32 %72, %75
  %121 = add nuw nsw i32 %119, %117
  %122 = sub nsw i32 %117, %119
  %123 = getelementptr inbounds i8, ptr %3, i64 44
  %124 = shl nsw i32 %118, 1
  %125 = add nsw i32 %124, %120
  %126 = getelementptr inbounds i8, ptr %3, i64 28
  %127 = shl nsw i32 %120, 1
  %128 = sub nsw i32 %118, %127
  %129 = getelementptr inbounds i8, ptr %3, i64 60
  %130 = add nuw nsw i32 %121, %85
  %131 = sub nsw i32 %85, %121
  %132 = add nuw nsw i32 %108, %95
  %133 = sub nsw i32 %95, %108
  %134 = add nuw nsw i32 %132, %130
  store i32 %134, ptr %3, align 4, !tbaa !24
  %135 = sub nsw i32 %130, %132
  store i32 %135, ptr %55, align 4, !tbaa !24
  %136 = shl nsw i32 %131, 1
  %137 = add nsw i32 %136, %133
  store i32 %137, ptr %41, align 4, !tbaa !24
  %138 = shl nsw i32 %133, 1
  %139 = sub nsw i32 %131, %138
  store i32 %139, ptr %69, align 4, !tbaa !24
  %140 = add nsw i32 %125, %88
  %141 = sub nsw i32 %88, %125
  %142 = add nsw i32 %112, %99
  %143 = sub nsw i32 %99, %112
  %144 = add nsw i32 %142, %140
  store i32 %144, ptr %26, align 4, !tbaa !24
  %145 = sub nsw i32 %140, %142
  store i32 %145, ptr %113, align 4, !tbaa !24
  %146 = shl nsw i32 %141, 1
  %147 = add nsw i32 %146, %143
  store i32 %147, ptr %100, align 4, !tbaa !24
  %148 = shl nsw i32 %143, 1
  %149 = sub nsw i32 %141, %148
  store i32 %149, ptr %126, align 4, !tbaa !24
  %150 = add nsw i32 %122, %86
  %151 = sub nsw i32 %86, %122
  %152 = add nsw i32 %109, %96
  %153 = sub nsw i32 %96, %109
  %154 = add nsw i32 %152, %150
  store i32 %154, ptr %31, align 4, !tbaa !24
  %155 = sub nsw i32 %150, %152
  store i32 %155, ptr %110, align 4, !tbaa !24
  %156 = shl nsw i32 %151, 1
  %157 = add nsw i32 %156, %153
  store i32 %157, ptr %97, align 4, !tbaa !24
  %158 = shl nsw i32 %153, 1
  %159 = sub nsw i32 %151, %158
  store i32 %159, ptr %123, align 4, !tbaa !24
  %160 = add nsw i32 %128, %90
  %161 = sub nsw i32 %90, %128
  %162 = add nsw i32 %115, %102
  %163 = sub nsw i32 %102, %115
  %164 = add nsw i32 %162, %160
  store i32 %164, ptr %36, align 4, !tbaa !24
  %165 = sub nsw i32 %160, %162
  store i32 %165, ptr %116, align 4, !tbaa !24
  %166 = shl nsw i32 %161, 1
  %167 = add nsw i32 %166, %163
  store i32 %167, ptr %103, align 4, !tbaa !24
  %168 = shl nsw i32 %163, 1
  %169 = sub nsw i32 %161, %168
  store i32 %169, ptr %129, align 4, !tbaa !24
  %170 = sdiv i32 %15, 2
  %171 = sext i32 %80 to i64
  br label %172

172:                                              ; preds = %2, %294
  %173 = phi i64 [ 0, %2 ], [ %295, %294 ]
  %174 = trunc nuw nsw i64 %173 to i32
  %175 = add i32 %174, %1
  br label %250

176:                                              ; preds = %294
  %177 = getelementptr inbounds i8, ptr %291, i64 13112
  %178 = load i32, ptr %177, align 4, !tbaa !24
  %179 = getelementptr inbounds i8, ptr %291, i64 13116
  %180 = load i32, ptr %179, align 4, !tbaa !24
  %181 = getelementptr inbounds i8, ptr %291, i64 13120
  %182 = load i32, ptr %181, align 4, !tbaa !24
  %183 = getelementptr inbounds i8, ptr %291, i64 13124
  %184 = load i32, ptr %183, align 4, !tbaa !24
  %185 = add nsw i32 %182, %178
  %186 = sub nsw i32 %178, %182
  %187 = ashr i32 %180, 1
  %188 = sub nsw i32 %187, %184
  %189 = ashr i32 %184, 1
  %190 = add nsw i32 %189, %180
  %191 = add nsw i32 %190, %185
  store i32 %191, ptr %177, align 4, !tbaa !24
  %192 = sub nsw i32 %185, %190
  store i32 %192, ptr %183, align 4, !tbaa !24
  %193 = add nsw i32 %188, %186
  store i32 %193, ptr %179, align 4, !tbaa !24
  %194 = sub nsw i32 %186, %188
  store i32 %194, ptr %181, align 4, !tbaa !24
  %195 = getelementptr inbounds i8, ptr %291, i64 13176
  %196 = load i32, ptr %195, align 4, !tbaa !24
  %197 = getelementptr inbounds i8, ptr %291, i64 13180
  %198 = load i32, ptr %197, align 4, !tbaa !24
  %199 = getelementptr inbounds i8, ptr %291, i64 13184
  %200 = load i32, ptr %199, align 4, !tbaa !24
  %201 = getelementptr inbounds i8, ptr %291, i64 13188
  %202 = load i32, ptr %201, align 4, !tbaa !24
  %203 = add nsw i32 %200, %196
  %204 = sub nsw i32 %196, %200
  %205 = ashr i32 %198, 1
  %206 = sub nsw i32 %205, %202
  %207 = ashr i32 %202, 1
  %208 = add nsw i32 %207, %198
  %209 = add nsw i32 %208, %203
  store i32 %209, ptr %195, align 4, !tbaa !24
  %210 = sub nsw i32 %203, %208
  store i32 %210, ptr %201, align 4, !tbaa !24
  %211 = add nsw i32 %206, %204
  store i32 %211, ptr %197, align 4, !tbaa !24
  %212 = sub nsw i32 %204, %206
  store i32 %212, ptr %199, align 4, !tbaa !24
  %213 = getelementptr inbounds i8, ptr %291, i64 13240
  %214 = load i32, ptr %213, align 4, !tbaa !24
  %215 = getelementptr inbounds i8, ptr %291, i64 13244
  %216 = load i32, ptr %215, align 4, !tbaa !24
  %217 = getelementptr inbounds i8, ptr %291, i64 13248
  %218 = load i32, ptr %217, align 4, !tbaa !24
  %219 = getelementptr inbounds i8, ptr %291, i64 13252
  %220 = load i32, ptr %219, align 4, !tbaa !24
  %221 = add nsw i32 %218, %214
  %222 = sub nsw i32 %214, %218
  %223 = ashr i32 %216, 1
  %224 = sub nsw i32 %223, %220
  %225 = ashr i32 %220, 1
  %226 = add nsw i32 %225, %216
  %227 = add nsw i32 %226, %221
  store i32 %227, ptr %213, align 4, !tbaa !24
  %228 = sub nsw i32 %221, %226
  store i32 %228, ptr %219, align 4, !tbaa !24
  %229 = add nsw i32 %224, %222
  store i32 %229, ptr %215, align 4, !tbaa !24
  %230 = sub nsw i32 %222, %224
  store i32 %230, ptr %217, align 4, !tbaa !24
  %231 = getelementptr inbounds i8, ptr %291, i64 13304
  %232 = load i32, ptr %231, align 4, !tbaa !24
  %233 = getelementptr inbounds i8, ptr %291, i64 13308
  %234 = load i32, ptr %233, align 4, !tbaa !24
  %235 = getelementptr inbounds i8, ptr %291, i64 13312
  %236 = load i32, ptr %235, align 4, !tbaa !24
  %237 = getelementptr inbounds i8, ptr %291, i64 13316
  %238 = load i32, ptr %237, align 4, !tbaa !24
  %239 = add nsw i32 %236, %232
  %240 = sub nsw i32 %232, %236
  %241 = ashr i32 %234, 1
  %242 = sub nsw i32 %241, %238
  %243 = ashr i32 %238, 1
  %244 = add nsw i32 %243, %234
  %245 = add nsw i32 %244, %239
  store i32 %245, ptr %231, align 4, !tbaa !24
  %246 = sub nsw i32 %239, %244
  store i32 %246, ptr %237, align 4, !tbaa !24
  %247 = add nsw i32 %242, %240
  store i32 %247, ptr %233, align 4, !tbaa !24
  %248 = sub nsw i32 %240, %242
  store i32 %248, ptr %235, align 4, !tbaa !24
  %249 = getelementptr inbounds i8, ptr %291, i64 90532
  br label %297

250:                                              ; preds = %172, %290
  %251 = phi i64 [ 0, %172 ], [ %292, %290 ]
  %252 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %251, i64 %173
  %253 = load i32, ptr %252, align 4, !tbaa !24
  %254 = tail call i32 @llvm.abs.i32(i32 %253, i1 true)
  %255 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %171, i64 %251, i64 %173
  %256 = load i32, ptr %255, align 4, !tbaa !24
  %257 = mul nsw i32 %254, %256
  %258 = add nsw i32 %257, %170
  %259 = ashr i32 %258, %14
  %260 = tail call signext i32 @sign(i32 noundef signext %259, i32 noundef signext %253) #7
  %261 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %171, i64 %251, i64 %173
  %262 = load i32, ptr %261, align 4, !tbaa !24
  %263 = mul nsw i32 %262, %260
  %264 = shl i32 %263, %13
  %265 = load ptr, ptr @img, align 8, !tbaa !6
  %266 = getelementptr inbounds i8, ptr %265, i64 13112
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr %266, i64 0, i64 %173, i64 %251
  store i32 %264, ptr %267, align 4, !tbaa !24
  %268 = load i32, ptr @si_frame_indicator, align 4, !tbaa !24
  %269 = icmp ne i32 %268, 0
  %270 = load i32, ptr @sp2_frame_indicator, align 4
  %271 = icmp ne i32 %270, 0
  %272 = select i1 %269, i1 true, i1 %271
  br i1 %272, label %290, label %273

273:                                              ; preds = %250
  %274 = tail call signext i32 @sign(i32 noundef signext %259, i32 noundef signext %253) #7
  %275 = load ptr, ptr @lrec, align 8, !tbaa !6
  %276 = load ptr, ptr @img, align 8, !tbaa !6
  %277 = getelementptr inbounds i8, ptr %276, i64 156
  %278 = load i32, ptr %277, align 4, !tbaa !48
  %279 = add i32 %175, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %275, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !6
  %283 = getelementptr inbounds i8, ptr %276, i64 152
  %284 = load i32, ptr %283, align 8, !tbaa !49
  %285 = trunc nuw nsw i64 %251 to i32
  %286 = add i32 %285, %0
  %287 = add i32 %286, %284
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %282, i64 %288
  store i32 %274, ptr %289, align 4, !tbaa !24
  br label %290

290:                                              ; preds = %250, %273
  %291 = phi ptr [ %265, %250 ], [ %276, %273 ]
  %292 = add nuw nsw i64 %251, 1
  %293 = icmp eq i64 %292, 4
  br i1 %293, label %294, label %250

294:                                              ; preds = %290
  %295 = add nuw nsw i64 %173, 1
  %296 = icmp eq i64 %295, 4
  br i1 %296, label %176, label %172

297:                                              ; preds = %176, %297
  %298 = phi i64 [ 0, %176 ], [ %335, %297 ]
  %299 = getelementptr inbounds [16 x [16 x i32]], ptr %177, i64 0, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !24
  %301 = getelementptr inbounds [16 x [16 x i32]], ptr %177, i64 0, i64 1, i64 %298
  %302 = load i32, ptr %301, align 4, !tbaa !24
  %303 = getelementptr inbounds [16 x [16 x i32]], ptr %177, i64 0, i64 2, i64 %298
  %304 = load i32, ptr %303, align 4, !tbaa !24
  %305 = getelementptr inbounds [16 x [16 x i32]], ptr %177, i64 0, i64 3, i64 %298
  %306 = load i32, ptr %305, align 4, !tbaa !24
  %307 = add nsw i32 %304, %300
  %308 = sub nsw i32 %300, %304
  %309 = ashr i32 %302, 1
  %310 = sub nsw i32 %309, %306
  %311 = ashr i32 %306, 1
  %312 = add nsw i32 %311, %302
  %313 = load i32, ptr %249, align 4, !tbaa !29
  %314 = add i32 %307, 32
  %315 = add i32 %314, %312
  %316 = ashr i32 %315, 6
  %317 = tail call i32 @llvm.smax.i32(i32 %316, i32 0)
  %318 = tail call i32 @llvm.smin.i32(i32 %313, i32 %317)
  store i32 %318, ptr %299, align 4, !tbaa !24
  %319 = load i32, ptr %249, align 4, !tbaa !29
  %320 = sub i32 %314, %312
  %321 = ashr i32 %320, 6
  %322 = tail call i32 @llvm.smax.i32(i32 %321, i32 0)
  %323 = tail call i32 @llvm.smin.i32(i32 %319, i32 %322)
  store i32 %323, ptr %305, align 4, !tbaa !24
  %324 = load i32, ptr %249, align 4, !tbaa !29
  %325 = add i32 %308, 32
  %326 = add i32 %325, %310
  %327 = ashr i32 %326, 6
  %328 = tail call i32 @llvm.smax.i32(i32 %327, i32 0)
  %329 = tail call i32 @llvm.smin.i32(i32 %324, i32 %328)
  store i32 %329, ptr %301, align 4, !tbaa !24
  %330 = load i32, ptr %249, align 4, !tbaa !29
  %331 = sub i32 %325, %310
  %332 = ashr i32 %331, 6
  %333 = tail call i32 @llvm.smax.i32(i32 %332, i32 0)
  %334 = tail call i32 @llvm.smin.i32(i32 %330, i32 %333)
  store i32 %334, ptr %303, align 4, !tbaa !24
  %335 = add nuw nsw i64 %298, 1
  %336 = icmp eq i64 %335, 4
  br i1 %336, label %337, label %297

337:                                              ; preds = %297
  %338 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 6424
  %340 = load ptr, ptr %339, align 8, !tbaa !10
  %341 = getelementptr inbounds i8, ptr %291, i64 156
  %342 = load i32, ptr %341, align 4, !tbaa !48
  %343 = getelementptr inbounds i8, ptr %291, i64 152
  %344 = load i32, ptr %343, align 8, !tbaa !49
  %345 = add i32 %342, %1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %340, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = load i32, ptr %177, align 4, !tbaa !24
  %350 = trunc i32 %349 to i16
  %351 = add i32 %344, %0
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i16, ptr %348, i64 %352
  store i16 %350, ptr %353, align 2, !tbaa !27
  %354 = load i32, ptr %179, align 4, !tbaa !24
  %355 = trunc i32 %354 to i16
  %356 = add i32 %0, 1
  %357 = add i32 %356, %344
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i16, ptr %348, i64 %358
  store i16 %355, ptr %359, align 2, !tbaa !27
  %360 = load i32, ptr %181, align 4, !tbaa !24
  %361 = trunc i32 %360 to i16
  %362 = add i32 %0, 2
  %363 = add i32 %362, %344
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i16, ptr %348, i64 %364
  store i16 %361, ptr %365, align 2, !tbaa !27
  %366 = load i32, ptr %183, align 4, !tbaa !24
  %367 = trunc i32 %366 to i16
  %368 = add i32 %0, 3
  %369 = add i32 %368, %344
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i16, ptr %348, i64 %370
  store i16 %367, ptr %371, align 2, !tbaa !27
  %372 = add i32 %1, 1
  %373 = add i32 %372, %342
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %340, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = load i32, ptr %195, align 4, !tbaa !24
  %378 = trunc i32 %377 to i16
  %379 = getelementptr inbounds i16, ptr %376, i64 %352
  store i16 %378, ptr %379, align 2, !tbaa !27
  %380 = load i32, ptr %197, align 4, !tbaa !24
  %381 = trunc i32 %380 to i16
  %382 = getelementptr inbounds i16, ptr %376, i64 %358
  store i16 %381, ptr %382, align 2, !tbaa !27
  %383 = load i32, ptr %199, align 4, !tbaa !24
  %384 = trunc i32 %383 to i16
  %385 = getelementptr inbounds i16, ptr %376, i64 %364
  store i16 %384, ptr %385, align 2, !tbaa !27
  %386 = load i32, ptr %201, align 4, !tbaa !24
  %387 = trunc i32 %386 to i16
  %388 = getelementptr inbounds i16, ptr %376, i64 %370
  store i16 %387, ptr %388, align 2, !tbaa !27
  %389 = add i32 %1, 2
  %390 = add i32 %389, %342
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds ptr, ptr %340, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !6
  %394 = load i32, ptr %213, align 4, !tbaa !24
  %395 = trunc i32 %394 to i16
  %396 = getelementptr inbounds i16, ptr %393, i64 %352
  store i16 %395, ptr %396, align 2, !tbaa !27
  %397 = load i32, ptr %215, align 4, !tbaa !24
  %398 = trunc i32 %397 to i16
  %399 = getelementptr inbounds i16, ptr %393, i64 %358
  store i16 %398, ptr %399, align 2, !tbaa !27
  %400 = load i32, ptr %217, align 4, !tbaa !24
  %401 = trunc i32 %400 to i16
  %402 = getelementptr inbounds i16, ptr %393, i64 %364
  store i16 %401, ptr %402, align 2, !tbaa !27
  %403 = load i32, ptr %219, align 4, !tbaa !24
  %404 = trunc i32 %403 to i16
  %405 = getelementptr inbounds i16, ptr %393, i64 %370
  store i16 %404, ptr %405, align 2, !tbaa !27
  %406 = add i32 %1, 3
  %407 = add i32 %406, %342
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds ptr, ptr %340, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !6
  %411 = load i32, ptr %231, align 4, !tbaa !24
  %412 = trunc i32 %411 to i16
  %413 = getelementptr inbounds i16, ptr %410, i64 %352
  store i16 %412, ptr %413, align 2, !tbaa !27
  %414 = load i32, ptr %233, align 4, !tbaa !24
  %415 = trunc i32 %414 to i16
  %416 = getelementptr inbounds i16, ptr %410, i64 %358
  store i16 %415, ptr %416, align 2, !tbaa !27
  %417 = load i32, ptr %235, align 4, !tbaa !24
  %418 = trunc i32 %417 to i16
  %419 = getelementptr inbounds i16, ptr %410, i64 %364
  store i16 %418, ptr %419, align 2, !tbaa !27
  %420 = load i32, ptr %237, align 4, !tbaa !24
  %421 = trunc i32 %420 to i16
  %422 = getelementptr inbounds i16, ptr %410, i64 %370
  store i16 %421, ptr %422, align 2, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @writeIPCMBytes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !13
  %5 = getelementptr inbounds i8, ptr %2, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %7
  %9 = getelementptr inbounds i8, ptr %2, i64 31584
  %10 = load i32, ptr %8, align 8, !tbaa !67
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %9, i64 0, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 12
  %14 = getelementptr inbounds i8, ptr %12, i64 20
  br label %20

15:                                               ; preds = %50
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 90560
  %18 = load i32, ptr %17, align 8, !tbaa !56
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %53, label %146

20:                                               ; preds = %1, %50
  %21 = phi i32 [ 0, %1 ], [ %51, %50 ]
  %22 = phi i32 [ 0, %1 ], [ %34, %50 ]
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 156
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = add nsw i32 %25, %21
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %20, %28
  %29 = phi i32 [ 0, %20 ], [ %48, %28 ]
  %30 = phi i32 [ %22, %20 ], [ %34, %28 ]
  %31 = load ptr, ptr @img, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 90484
  %33 = load i32, ptr %32, align 4, !tbaa !68
  store i32 %33, ptr %13, align 4, !tbaa !69
  %34 = add nsw i32 %33, %30
  %35 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 6424
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %31, i64 152
  %41 = load i32, ptr %40, align 8, !tbaa !49
  %42 = add nsw i32 %41, %29
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %39, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !27
  %46 = zext i16 %45 to i32
  store i32 %46, ptr %14, align 4, !tbaa !71
  %47 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %12, ptr noundef %0) #7
  %48 = add nuw nsw i32 %29, 1
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %28

50:                                               ; preds = %28
  %51 = add nuw nsw i32 %21, 1
  %52 = icmp eq i32 %51, 16
  br i1 %52, label %15, label %20

53:                                               ; preds = %15, %91
  %54 = phi ptr [ %92, %91 ], [ %16, %15 ]
  %55 = phi i32 [ %94, %91 ], [ 0, %15 ]
  %56 = phi i32 [ %93, %91 ], [ %34, %15 ]
  %57 = getelementptr inbounds i8, ptr %54, i64 90556
  %58 = load i32, ptr %57, align 4, !tbaa !57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %54, i64 164
  %62 = load i32, ptr %61, align 4, !tbaa !61
  %63 = add nsw i32 %62, %55
  %64 = sext i32 %63 to i64
  br label %65

65:                                               ; preds = %60, %65
  %66 = phi ptr [ %54, %60 ], [ %87, %65 ]
  %67 = phi i32 [ 0, %60 ], [ %86, %65 ]
  %68 = phi i32 [ %56, %60 ], [ %71, %65 ]
  %69 = getelementptr inbounds i8, ptr %66, i64 90488
  %70 = load i32, ptr %69, align 8, !tbaa !72
  store i32 %70, ptr %13, align 4, !tbaa !69
  %71 = add nsw i32 %70, %68
  %72 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 6464
  %74 = load ptr, ptr %73, align 8, !tbaa !63
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %64
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %66, i64 160
  %79 = load i32, ptr %78, align 8, !tbaa !62
  %80 = add nsw i32 %79, %67
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %77, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !27
  %84 = zext i16 %83 to i32
  store i32 %84, ptr %14, align 4, !tbaa !71
  %85 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %12, ptr noundef %0) #7
  %86 = add nuw nsw i32 %67, 1
  %87 = load ptr, ptr @img, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 90556
  %89 = load i32, ptr %88, align 4, !tbaa !57
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %65, label %91

91:                                               ; preds = %65, %53
  %92 = phi ptr [ %54, %53 ], [ %87, %65 ]
  %93 = phi i32 [ %56, %53 ], [ %71, %65 ]
  %94 = add nuw nsw i32 %55, 1
  %95 = getelementptr inbounds i8, ptr %92, i64 90560
  %96 = load i32, ptr %95, align 8, !tbaa !56
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %53, label %98

98:                                               ; preds = %91
  %99 = icmp sgt i32 %96, 0
  br i1 %99, label %100, label %146

100:                                              ; preds = %98, %139
  %101 = phi ptr [ %140, %139 ], [ %92, %98 ]
  %102 = phi i32 [ %142, %139 ], [ 0, %98 ]
  %103 = phi i32 [ %141, %139 ], [ %93, %98 ]
  %104 = getelementptr inbounds i8, ptr %101, i64 90556
  %105 = load i32, ptr %104, align 4, !tbaa !57
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %100
  %108 = getelementptr inbounds i8, ptr %101, i64 164
  %109 = load i32, ptr %108, align 4, !tbaa !61
  %110 = add nsw i32 %109, %102
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %112, %107
  %113 = phi ptr [ %101, %107 ], [ %135, %112 ]
  %114 = phi i32 [ 0, %107 ], [ %134, %112 ]
  %115 = phi i32 [ %103, %107 ], [ %118, %112 ]
  %116 = getelementptr inbounds i8, ptr %113, i64 90488
  %117 = load i32, ptr %116, align 8, !tbaa !72
  store i32 %117, ptr %13, align 4, !tbaa !69
  %118 = add nsw i32 %117, %115
  %119 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %119, i64 6464
  %121 = load ptr, ptr %120, align 8, !tbaa !63
  %122 = getelementptr inbounds i8, ptr %121, i64 8
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = getelementptr inbounds ptr, ptr %123, i64 %111
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %113, i64 160
  %127 = load i32, ptr %126, align 8, !tbaa !62
  %128 = add nsw i32 %127, %114
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %125, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !27
  %132 = zext i16 %131 to i32
  store i32 %132, ptr %14, align 4, !tbaa !71
  %133 = tail call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %12, ptr noundef %0) #7
  %134 = add nuw nsw i32 %114, 1
  %135 = load ptr, ptr @img, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 90556
  %137 = load i32, ptr %136, align 4, !tbaa !57
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %112, label %139

139:                                              ; preds = %112, %100
  %140 = phi ptr [ %101, %100 ], [ %135, %112 ]
  %141 = phi i32 [ %103, %100 ], [ %118, %112 ]
  %142 = add nuw nsw i32 %102, 1
  %143 = getelementptr inbounds i8, ptr %140, i64 90560
  %144 = load i32, ptr %143, align 8, !tbaa !56
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %100, label %146

146:                                              ; preds = %139, %15, %98
  %147 = phi i32 [ %93, %98 ], [ %34, %15 ], [ %141, %139 ]
  ret i32 %147
}

declare dso_local signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local signext range(i32 0, -2147483648) i32 @writePCMByteAlign(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !73
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = sub nsw i32 8, %3
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i8, ptr %7, align 8, !tbaa !75
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, %3
  %11 = lshr i32 255, %6
  %12 = or i32 %10, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %7, align 8, !tbaa !75
  %14 = load ptr, ptr @stats, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 1336
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 24
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], ptr %15, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !24
  %22 = add nsw i32 %21, %3
  store i32 %22, ptr %20, align 4, !tbaa !24
  %23 = getelementptr inbounds i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = load i32, ptr %0, align 8, !tbaa !77
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %0, align 8, !tbaa !77
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  store i8 %13, ptr %28, align 1, !tbaa !43
  store i32 8, ptr %2, align 4, !tbaa !73
  br label %29

29:                                               ; preds = %5, %1
  %30 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @dct_luma_sp2(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = lshr i32 %0, 2
  %6 = ashr i32 %1, 2
  %7 = and i32 %6, -2
  %8 = ashr i32 %0, 3
  %9 = add nsw i32 %7, %8
  %10 = lshr i32 %1, 1
  %11 = and i32 %10, 2
  %12 = and i32 %5, 1
  %13 = or disjoint i32 %11, %12
  %14 = load ptr, ptr @img, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 14136
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %22, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %14, i64 44
  %27 = load i32, ptr %26, align 4, !tbaa !78
  %28 = freeze i32 %27
  %29 = sdiv i32 %28, 6
  %30 = add nsw i32 %29, 15
  %31 = add i32 %0, 1
  %32 = add i32 %0, 2
  %33 = add i32 %0, 3
  %34 = sext i32 %0 to i64
  %35 = add nsw i64 %34, 3
  %36 = getelementptr inbounds i8, ptr %14, i64 152
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = add i32 %33, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, 2
  %41 = add i32 %32, %37
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %14, i64 156
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = add nsw i64 %34, 1
  %46 = load i32, ptr %36, align 8, !tbaa !49
  %47 = add i32 %31, %46
  %48 = sext i32 %47 to i64
  %49 = add i32 %46, %0
  %50 = sext i32 %49 to i64
  %51 = load i32, ptr %43, align 4, !tbaa !48
  %52 = sext i32 %1 to i64
  %53 = getelementptr inbounds i8, ptr %14, i64 12600
  %54 = getelementptr inbounds i8, ptr %14, i64 13112
  %55 = load ptr, ptr @lrec, align 8, !tbaa !6
  %56 = shl nuw i32 1, %30
  %57 = add i32 %51, %1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %55, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds i32, ptr %60, i64 %50
  %62 = load i32, ptr %61, align 4, !tbaa !24
  store i32 %62, ptr %54, align 4, !tbaa !24
  %63 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %52, i64 %34
  %64 = load i16, ptr %63, align 2, !tbaa !27
  %65 = zext i16 %64 to i32
  store i32 %65, ptr %4, align 4, !tbaa !24
  %66 = add i32 %51, %1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %55, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = getelementptr inbounds i32, ptr %69, i64 %48
  %71 = load i32, ptr %70, align 4, !tbaa !24
  %72 = getelementptr inbounds i8, ptr %14, i64 13116
  store i32 %71, ptr %72, align 4, !tbaa !24
  %73 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %52, i64 %45
  %74 = load i16, ptr %73, align 2, !tbaa !27
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %75, ptr %76, align 4, !tbaa !24
  %77 = add i32 %44, %1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %55, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds i32, ptr %80, i64 %42
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = getelementptr inbounds i8, ptr %14, i64 13120
  store i32 %82, ptr %83, align 4, !tbaa !24
  %84 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %52, i64 %40
  %85 = load i16, ptr %84, align 2, !tbaa !27
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %86, ptr %87, align 4, !tbaa !24
  %88 = add i32 %44, %1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %55, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds i32, ptr %91, i64 %39
  %93 = load i32, ptr %92, align 4, !tbaa !24
  %94 = getelementptr inbounds i8, ptr %14, i64 13124
  store i32 %93, ptr %94, align 4, !tbaa !24
  %95 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %52, i64 %35
  %96 = load i16, ptr %95, align 2, !tbaa !27
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 %97, ptr %98, align 4, !tbaa !24
  %99 = add nsw i64 %52, 1
  %100 = trunc nsw i64 %99 to i32
  %101 = add i32 %51, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %55, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds i32, ptr %104, i64 %50
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = getelementptr inbounds i8, ptr %14, i64 13176
  store i32 %106, ptr %107, align 4, !tbaa !24
  %108 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %99, i64 %34
  %109 = load i16, ptr %108, align 2, !tbaa !27
  %110 = zext i16 %109 to i32
  %111 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %110, ptr %111, align 4, !tbaa !24
  %112 = add i32 %51, %100
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %55, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds i32, ptr %115, i64 %48
  %117 = load i32, ptr %116, align 4, !tbaa !24
  %118 = getelementptr inbounds i8, ptr %14, i64 13180
  store i32 %117, ptr %118, align 4, !tbaa !24
  %119 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %99, i64 %45
  %120 = load i16, ptr %119, align 2, !tbaa !27
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 %121, ptr %122, align 4, !tbaa !24
  %123 = add i32 %44, %100
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %55, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds i32, ptr %126, i64 %42
  %128 = load i32, ptr %127, align 4, !tbaa !24
  %129 = getelementptr inbounds i8, ptr %14, i64 13184
  store i32 %128, ptr %129, align 4, !tbaa !24
  %130 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %99, i64 %40
  %131 = load i16, ptr %130, align 2, !tbaa !27
  %132 = zext i16 %131 to i32
  %133 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %132, ptr %133, align 4, !tbaa !24
  %134 = add i32 %44, %100
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %55, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr inbounds i32, ptr %137, i64 %39
  %139 = load i32, ptr %138, align 4, !tbaa !24
  %140 = getelementptr inbounds i8, ptr %14, i64 13188
  store i32 %139, ptr %140, align 4, !tbaa !24
  %141 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %99, i64 %35
  %142 = load i16, ptr %141, align 2, !tbaa !27
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds i8, ptr %4, i64 52
  store i32 %143, ptr %144, align 4, !tbaa !24
  %145 = add nsw i64 %52, 2
  %146 = trunc nsw i64 %145 to i32
  %147 = add i32 %51, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %55, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds i32, ptr %150, i64 %50
  %152 = load i32, ptr %151, align 4, !tbaa !24
  %153 = getelementptr inbounds i8, ptr %14, i64 13240
  store i32 %152, ptr %153, align 4, !tbaa !24
  %154 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %145, i64 %34
  %155 = load i16, ptr %154, align 2, !tbaa !27
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %156, ptr %157, align 4, !tbaa !24
  %158 = add i32 %51, %146
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %55, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = getelementptr inbounds i32, ptr %161, i64 %48
  %163 = load i32, ptr %162, align 4, !tbaa !24
  %164 = getelementptr inbounds i8, ptr %14, i64 13244
  store i32 %163, ptr %164, align 4, !tbaa !24
  %165 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %145, i64 %45
  %166 = load i16, ptr %165, align 2, !tbaa !27
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %167, ptr %168, align 4, !tbaa !24
  %169 = add i32 %44, %146
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %55, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds i32, ptr %172, i64 %42
  %174 = load i32, ptr %173, align 4, !tbaa !24
  %175 = getelementptr inbounds i8, ptr %14, i64 13248
  store i32 %174, ptr %175, align 4, !tbaa !24
  %176 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %145, i64 %40
  %177 = load i16, ptr %176, align 2, !tbaa !27
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 %178, ptr %179, align 4, !tbaa !24
  %180 = add i32 %44, %146
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds ptr, ptr %55, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = getelementptr inbounds i32, ptr %183, i64 %39
  %185 = load i32, ptr %184, align 4, !tbaa !24
  %186 = getelementptr inbounds i8, ptr %14, i64 13252
  store i32 %185, ptr %186, align 4, !tbaa !24
  %187 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %145, i64 %35
  %188 = load i16, ptr %187, align 2, !tbaa !27
  %189 = zext i16 %188 to i32
  %190 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %189, ptr %190, align 4, !tbaa !24
  %191 = add nsw i64 %52, 3
  %192 = trunc nsw i64 %191 to i32
  %193 = add i32 %51, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %55, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i32, ptr %196, i64 %50
  %198 = load i32, ptr %197, align 4, !tbaa !24
  %199 = getelementptr inbounds i8, ptr %14, i64 13304
  store i32 %198, ptr %199, align 4, !tbaa !24
  %200 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %191, i64 %34
  %201 = load i16, ptr %200, align 2, !tbaa !27
  %202 = zext i16 %201 to i32
  %203 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %202, ptr %203, align 4, !tbaa !24
  %204 = add i32 %51, %192
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %55, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = getelementptr inbounds i32, ptr %207, i64 %48
  %209 = load i32, ptr %208, align 4, !tbaa !24
  %210 = getelementptr inbounds i8, ptr %14, i64 13308
  store i32 %209, ptr %210, align 4, !tbaa !24
  %211 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %191, i64 %45
  %212 = load i16, ptr %211, align 2, !tbaa !27
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %213, ptr %214, align 4, !tbaa !24
  %215 = add i32 %44, %192
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %55, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  %219 = getelementptr inbounds i32, ptr %218, i64 %42
  %220 = load i32, ptr %219, align 4, !tbaa !24
  %221 = getelementptr inbounds i8, ptr %14, i64 13312
  store i32 %220, ptr %221, align 4, !tbaa !24
  %222 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %191, i64 %40
  %223 = load i16, ptr %222, align 2, !tbaa !27
  %224 = zext i16 %223 to i32
  %225 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %224, ptr %225, align 4, !tbaa !24
  %226 = add i32 %44, %192
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds ptr, ptr %55, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = getelementptr inbounds i32, ptr %229, i64 %39
  %231 = load i32, ptr %230, align 4, !tbaa !24
  %232 = getelementptr inbounds i8, ptr %14, i64 13316
  store i32 %231, ptr %232, align 4, !tbaa !24
  %233 = getelementptr inbounds [16 x [16 x i16]], ptr %53, i64 0, i64 %191, i64 %35
  %234 = load i16, ptr %233, align 2, !tbaa !27
  %235 = zext i16 %234 to i32
  %236 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 %235, ptr %236, align 4, !tbaa !24
  %237 = mul i32 %29, 6
  %238 = sub i32 %28, %237
  %239 = getelementptr inbounds i8, ptr %4, i64 32
  %240 = getelementptr inbounds i8, ptr %4, i64 16
  %241 = getelementptr inbounds i8, ptr %4, i64 48
  %242 = load i32, ptr %4, align 4, !tbaa !24
  %243 = load i32, ptr %241, align 4, !tbaa !24
  %244 = add nsw i32 %243, %242
  %245 = sub nsw i32 %242, %243
  %246 = load i32, ptr %240, align 4, !tbaa !24
  %247 = load i32, ptr %239, align 4, !tbaa !24
  %248 = add nsw i32 %247, %246
  %249 = sub nsw i32 %246, %247
  %250 = add nsw i32 %248, %244
  %251 = sub nsw i32 %244, %248
  store i32 %251, ptr %239, align 4, !tbaa !24
  %252 = shl nsw i32 %245, 1
  %253 = add nsw i32 %252, %249
  %254 = shl nsw i32 %249, 1
  %255 = sub nsw i32 %245, %254
  store i32 %255, ptr %241, align 4, !tbaa !24
  %256 = getelementptr inbounds i8, ptr %4, i64 4
  %257 = load i32, ptr %256, align 4, !tbaa !24
  %258 = getelementptr inbounds i8, ptr %4, i64 52
  %259 = load i32, ptr %258, align 4, !tbaa !24
  %260 = add nsw i32 %259, %257
  %261 = sub nsw i32 %257, %259
  %262 = getelementptr inbounds i8, ptr %4, i64 20
  %263 = load i32, ptr %262, align 4, !tbaa !24
  %264 = getelementptr inbounds i8, ptr %4, i64 36
  %265 = load i32, ptr %264, align 4, !tbaa !24
  %266 = add nsw i32 %265, %263
  %267 = sub nsw i32 %263, %265
  %268 = add nsw i32 %266, %260
  %269 = sub nsw i32 %260, %266
  %270 = getelementptr inbounds i8, ptr %4, i64 36
  %271 = shl nsw i32 %261, 1
  %272 = add nsw i32 %271, %267
  %273 = getelementptr inbounds i8, ptr %4, i64 20
  %274 = shl nsw i32 %267, 1
  %275 = sub nsw i32 %261, %274
  %276 = getelementptr inbounds i8, ptr %4, i64 52
  %277 = getelementptr inbounds i8, ptr %4, i64 8
  %278 = load i32, ptr %277, align 4, !tbaa !24
  %279 = getelementptr inbounds i8, ptr %4, i64 56
  %280 = load i32, ptr %279, align 4, !tbaa !24
  %281 = add nsw i32 %280, %278
  %282 = sub nsw i32 %278, %280
  %283 = getelementptr inbounds i8, ptr %4, i64 24
  %284 = load i32, ptr %283, align 4, !tbaa !24
  %285 = getelementptr inbounds i8, ptr %4, i64 40
  %286 = load i32, ptr %285, align 4, !tbaa !24
  %287 = add nsw i32 %286, %284
  %288 = sub nsw i32 %284, %286
  %289 = add nsw i32 %287, %281
  %290 = sub nsw i32 %281, %287
  %291 = getelementptr inbounds i8, ptr %4, i64 40
  %292 = shl nsw i32 %282, 1
  %293 = add nsw i32 %292, %288
  %294 = getelementptr inbounds i8, ptr %4, i64 24
  %295 = shl nsw i32 %288, 1
  %296 = sub nsw i32 %282, %295
  %297 = getelementptr inbounds i8, ptr %4, i64 56
  %298 = getelementptr inbounds i8, ptr %4, i64 12
  %299 = load i32, ptr %298, align 4, !tbaa !24
  %300 = getelementptr inbounds i8, ptr %4, i64 60
  %301 = load i32, ptr %300, align 4, !tbaa !24
  %302 = add nsw i32 %301, %299
  %303 = sub nsw i32 %299, %301
  %304 = getelementptr inbounds i8, ptr %4, i64 28
  %305 = load i32, ptr %304, align 4, !tbaa !24
  %306 = getelementptr inbounds i8, ptr %4, i64 44
  %307 = load i32, ptr %306, align 4, !tbaa !24
  %308 = add nsw i32 %307, %305
  %309 = sub nsw i32 %305, %307
  %310 = add nsw i32 %308, %302
  %311 = sub nsw i32 %302, %308
  %312 = getelementptr inbounds i8, ptr %4, i64 44
  %313 = shl nsw i32 %303, 1
  %314 = add nsw i32 %313, %309
  %315 = getelementptr inbounds i8, ptr %4, i64 28
  %316 = shl nsw i32 %309, 1
  %317 = sub nsw i32 %303, %316
  %318 = getelementptr inbounds i8, ptr %4, i64 60
  %319 = add nsw i32 %310, %250
  %320 = sub nsw i32 %250, %310
  %321 = add nsw i32 %289, %268
  %322 = sub nsw i32 %268, %289
  %323 = add nsw i32 %321, %319
  store i32 %323, ptr %4, align 4, !tbaa !24
  %324 = sub nsw i32 %319, %321
  store i32 %324, ptr %277, align 4, !tbaa !24
  %325 = shl nsw i32 %320, 1
  %326 = add nsw i32 %325, %322
  store i32 %326, ptr %256, align 4, !tbaa !24
  %327 = shl nsw i32 %322, 1
  %328 = sub nsw i32 %320, %327
  store i32 %328, ptr %298, align 4, !tbaa !24
  %329 = add nsw i32 %314, %253
  %330 = sub nsw i32 %253, %314
  %331 = add nsw i32 %293, %272
  %332 = sub nsw i32 %272, %293
  %333 = add nsw i32 %331, %329
  store i32 %333, ptr %240, align 4, !tbaa !24
  %334 = sub nsw i32 %329, %331
  store i32 %334, ptr %294, align 4, !tbaa !24
  %335 = shl nsw i32 %330, 1
  %336 = add nsw i32 %335, %332
  store i32 %336, ptr %273, align 4, !tbaa !24
  %337 = shl nsw i32 %332, 1
  %338 = sub nsw i32 %330, %337
  store i32 %338, ptr %315, align 4, !tbaa !24
  %339 = load i32, ptr %239, align 4, !tbaa !24
  %340 = add nsw i32 %311, %339
  %341 = sub nsw i32 %339, %311
  %342 = add nsw i32 %290, %269
  %343 = sub nsw i32 %269, %290
  %344 = add nsw i32 %342, %340
  store i32 %344, ptr %239, align 4, !tbaa !24
  %345 = sub nsw i32 %340, %342
  store i32 %345, ptr %291, align 4, !tbaa !24
  %346 = shl nsw i32 %341, 1
  %347 = add nsw i32 %346, %343
  store i32 %347, ptr %270, align 4, !tbaa !24
  %348 = shl nsw i32 %343, 1
  %349 = sub nsw i32 %341, %348
  store i32 %349, ptr %312, align 4, !tbaa !24
  %350 = load i32, ptr %241, align 4, !tbaa !24
  %351 = add nsw i32 %317, %350
  %352 = sub nsw i32 %350, %317
  %353 = add nsw i32 %296, %275
  %354 = sub nsw i32 %275, %296
  %355 = add nsw i32 %353, %351
  store i32 %355, ptr %241, align 4, !tbaa !24
  %356 = sub nsw i32 %351, %353
  store i32 %356, ptr %297, align 4, !tbaa !24
  %357 = shl nsw i32 %352, 1
  %358 = add nsw i32 %357, %354
  store i32 %358, ptr %276, align 4, !tbaa !24
  %359 = shl nsw i32 %354, 1
  %360 = sub nsw i32 %352, %359
  store i32 %360, ptr %318, align 4, !tbaa !24
  %361 = sdiv i32 %56, 2
  %362 = sext i32 %238 to i64
  %363 = load ptr, ptr @img, align 8, !tbaa !6
  br label %364

364:                                              ; preds = %3, %425
  %365 = phi ptr [ %363, %3 ], [ %435, %425 ]
  %366 = phi i64 [ 0, %3 ], [ %438, %425 ]
  %367 = phi i32 [ 0, %3 ], [ %428, %425 ]
  %368 = phi i32 [ -1, %3 ], [ %427, %425 ]
  %369 = phi i32 [ 0, %3 ], [ %426, %425 ]
  %370 = getelementptr inbounds i8, ptr %365, i64 90264
  %371 = load i32, ptr %370, align 8, !tbaa !31
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %364
  %374 = load i32, ptr @mb_adaptive, align 4, !tbaa !24
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %380, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds i8, ptr %365, i64 89416
  %378 = load i32, ptr %377, align 8, !tbaa !79
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %376, %373
  br label %381

381:                                              ; preds = %364, %376, %380
  %382 = phi ptr [ @SNGL_SCAN, %380 ], [ @FIELD_SCAN, %376 ], [ @FIELD_SCAN, %364 ]
  %383 = getelementptr inbounds [16 x [2 x i8]], ptr %382, i64 0, i64 %366
  %384 = load i8, ptr %383, align 1, !tbaa !43
  %385 = getelementptr inbounds i8, ptr %383, i64 1
  %386 = load i8, ptr %385, align 1, !tbaa !43
  %387 = add nsw i32 %368, 1
  %388 = zext i8 %384 to i64
  %389 = zext i8 %386 to i64
  %390 = getelementptr inbounds [4 x [4 x i32]], ptr %4, i64 0, i64 %388, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !24
  %392 = tail call i32 @llvm.abs.i32(i32 %391, i1 true)
  %393 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %362, i64 %388, i64 %389
  %394 = load i32, ptr %393, align 4, !tbaa !24
  %395 = mul nsw i32 %392, %394
  %396 = add nsw i32 %395, %361
  %397 = ashr i32 %396, %30
  %398 = getelementptr inbounds i8, ptr %365, i64 13112
  %399 = getelementptr inbounds [16 x [16 x i32]], ptr %398, i64 0, i64 %389, i64 %388
  %400 = load i32, ptr %399, align 4, !tbaa !24
  %401 = tail call signext i32 @sign(i32 noundef signext %397, i32 noundef signext %391) #7
  %402 = sub nsw i32 %400, %401
  %403 = tail call i32 @llvm.abs.i32(i32 %402, i1 true)
  %404 = icmp eq i32 %400, %401
  br i1 %404, label %425, label %405

405:                                              ; preds = %381
  %406 = icmp ugt i32 %403, 1
  br i1 %406, label %416, label %407

407:                                              ; preds = %405
  %408 = load ptr, ptr @input, align 8, !tbaa !6
  %409 = getelementptr inbounds i8, ptr %408, i64 3140
  %410 = load i32, ptr %409, align 4, !tbaa !51
  %411 = sext i32 %410 to i64
  %412 = sext i32 %387 to i64
  %413 = getelementptr inbounds [2 x [16 x i8]], ptr @COEFF_COST, i64 0, i64 %411, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !43
  %415 = zext i8 %414 to i32
  br label %416

416:                                              ; preds = %405, %407
  %417 = phi i32 [ %415, %407 ], [ 999999, %405 ]
  %418 = load i32, ptr %2, align 4, !tbaa !24
  %419 = add nsw i32 %418, %417
  store i32 %419, ptr %2, align 4, !tbaa !24
  %420 = tail call signext i32 @sign(i32 noundef signext %403, i32 noundef signext %402) #7
  %421 = sext i32 %367 to i64
  %422 = getelementptr inbounds i32, ptr %23, i64 %421
  store i32 %420, ptr %422, align 4, !tbaa !24
  %423 = getelementptr inbounds i32, ptr %25, i64 %421
  store i32 %387, ptr %423, align 4, !tbaa !24
  %424 = add nsw i32 %367, 1
  br label %425

425:                                              ; preds = %416, %381
  %426 = phi i32 [ 1, %416 ], [ %369, %381 ]
  %427 = phi i32 [ -1, %416 ], [ %387, %381 ]
  %428 = phi i32 [ %424, %416 ], [ %367, %381 ]
  %429 = tail call signext i32 @sign(i32 noundef signext %397, i32 noundef signext %391) #7
  %430 = add nsw i32 %429, %402
  %431 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %362, i64 %388, i64 %389
  %432 = load i32, ptr %431, align 4, !tbaa !24
  %433 = mul nsw i32 %430, %432
  %434 = shl i32 %433, %29
  %435 = load ptr, ptr @img, align 8, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %435, i64 13112
  %437 = getelementptr inbounds [16 x [16 x i32]], ptr %436, i64 0, i64 %389, i64 %388
  store i32 %434, ptr %437, align 4, !tbaa !24
  %438 = add nuw nsw i64 %366, 1
  %439 = icmp eq i64 %438, 16
  br i1 %439, label %440, label %364

440:                                              ; preds = %425
  %441 = sext i32 %428 to i64
  %442 = getelementptr inbounds i32, ptr %23, i64 %441
  store i32 0, ptr %442, align 4, !tbaa !24
  %443 = load i32, ptr %436, align 4, !tbaa !24
  %444 = getelementptr inbounds i8, ptr %435, i64 13116
  %445 = load i32, ptr %444, align 4, !tbaa !24
  %446 = getelementptr inbounds i8, ptr %435, i64 13120
  %447 = load i32, ptr %446, align 4, !tbaa !24
  %448 = getelementptr inbounds i8, ptr %435, i64 13124
  %449 = load i32, ptr %448, align 4, !tbaa !24
  %450 = add nsw i32 %447, %443
  %451 = sub nsw i32 %443, %447
  %452 = ashr i32 %445, 1
  %453 = sub nsw i32 %452, %449
  %454 = ashr i32 %449, 1
  %455 = add nsw i32 %454, %445
  %456 = add nsw i32 %455, %450
  store i32 %456, ptr %436, align 4, !tbaa !24
  %457 = sub nsw i32 %450, %455
  store i32 %457, ptr %448, align 4, !tbaa !24
  %458 = add nsw i32 %453, %451
  store i32 %458, ptr %444, align 4, !tbaa !24
  %459 = sub nsw i32 %451, %453
  store i32 %459, ptr %446, align 4, !tbaa !24
  %460 = getelementptr inbounds i8, ptr %435, i64 13176
  %461 = load i32, ptr %460, align 4, !tbaa !24
  %462 = getelementptr inbounds i8, ptr %435, i64 13180
  %463 = load i32, ptr %462, align 4, !tbaa !24
  %464 = getelementptr inbounds i8, ptr %435, i64 13184
  %465 = load i32, ptr %464, align 4, !tbaa !24
  %466 = getelementptr inbounds i8, ptr %435, i64 13188
  %467 = load i32, ptr %466, align 4, !tbaa !24
  %468 = add nsw i32 %465, %461
  %469 = sub nsw i32 %461, %465
  %470 = ashr i32 %463, 1
  %471 = sub nsw i32 %470, %467
  %472 = ashr i32 %467, 1
  %473 = add nsw i32 %472, %463
  %474 = add nsw i32 %473, %468
  store i32 %474, ptr %460, align 4, !tbaa !24
  %475 = sub nsw i32 %468, %473
  store i32 %475, ptr %466, align 4, !tbaa !24
  %476 = add nsw i32 %471, %469
  store i32 %476, ptr %462, align 4, !tbaa !24
  %477 = sub nsw i32 %469, %471
  store i32 %477, ptr %464, align 4, !tbaa !24
  %478 = getelementptr inbounds i8, ptr %435, i64 13240
  %479 = load i32, ptr %478, align 4, !tbaa !24
  %480 = getelementptr inbounds i8, ptr %435, i64 13244
  %481 = load i32, ptr %480, align 4, !tbaa !24
  %482 = getelementptr inbounds i8, ptr %435, i64 13248
  %483 = load i32, ptr %482, align 4, !tbaa !24
  %484 = getelementptr inbounds i8, ptr %435, i64 13252
  %485 = load i32, ptr %484, align 4, !tbaa !24
  %486 = add nsw i32 %483, %479
  %487 = sub nsw i32 %479, %483
  %488 = ashr i32 %481, 1
  %489 = sub nsw i32 %488, %485
  %490 = ashr i32 %485, 1
  %491 = add nsw i32 %490, %481
  %492 = add nsw i32 %491, %486
  store i32 %492, ptr %478, align 4, !tbaa !24
  %493 = sub nsw i32 %486, %491
  store i32 %493, ptr %484, align 4, !tbaa !24
  %494 = add nsw i32 %489, %487
  store i32 %494, ptr %480, align 4, !tbaa !24
  %495 = sub nsw i32 %487, %489
  store i32 %495, ptr %482, align 4, !tbaa !24
  %496 = getelementptr inbounds i8, ptr %435, i64 13304
  %497 = load i32, ptr %496, align 4, !tbaa !24
  %498 = getelementptr inbounds i8, ptr %435, i64 13308
  %499 = load i32, ptr %498, align 4, !tbaa !24
  %500 = getelementptr inbounds i8, ptr %435, i64 13312
  %501 = load i32, ptr %500, align 4, !tbaa !24
  %502 = getelementptr inbounds i8, ptr %435, i64 13316
  %503 = load i32, ptr %502, align 4, !tbaa !24
  %504 = add nsw i32 %501, %497
  %505 = sub nsw i32 %497, %501
  %506 = ashr i32 %499, 1
  %507 = sub nsw i32 %506, %503
  %508 = ashr i32 %503, 1
  %509 = add nsw i32 %508, %499
  %510 = add nsw i32 %509, %504
  store i32 %510, ptr %496, align 4, !tbaa !24
  %511 = sub nsw i32 %504, %509
  store i32 %511, ptr %502, align 4, !tbaa !24
  %512 = add nsw i32 %507, %505
  store i32 %512, ptr %498, align 4, !tbaa !24
  %513 = sub nsw i32 %505, %507
  store i32 %513, ptr %500, align 4, !tbaa !24
  %514 = load i32, ptr %436, align 4, !tbaa !24
  %515 = getelementptr inbounds i8, ptr %435, i64 13176
  %516 = load i32, ptr %515, align 4, !tbaa !24
  %517 = getelementptr inbounds i8, ptr %435, i64 13240
  %518 = load i32, ptr %517, align 4, !tbaa !24
  %519 = getelementptr inbounds i8, ptr %435, i64 13304
  %520 = load i32, ptr %519, align 4, !tbaa !24
  %521 = add nsw i32 %518, %514
  %522 = sub nsw i32 %514, %518
  %523 = ashr i32 %516, 1
  %524 = sub nsw i32 %523, %520
  %525 = ashr i32 %520, 1
  %526 = add nsw i32 %525, %516
  %527 = add i32 %521, 32
  %528 = add i32 %527, %526
  %529 = ashr i32 %528, 6
  %530 = tail call i32 @llvm.smax.i32(i32 %529, i32 0)
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 255)
  store i32 %531, ptr %436, align 4, !tbaa !24
  %532 = sub i32 %527, %526
  %533 = ashr i32 %532, 6
  %534 = tail call i32 @llvm.smax.i32(i32 %533, i32 0)
  %535 = tail call i32 @llvm.umin.i32(i32 %534, i32 255)
  store i32 %535, ptr %519, align 4, !tbaa !24
  %536 = add i32 %522, 32
  %537 = add i32 %536, %524
  %538 = ashr i32 %537, 6
  %539 = tail call i32 @llvm.smax.i32(i32 %538, i32 0)
  %540 = tail call i32 @llvm.umin.i32(i32 %539, i32 255)
  store i32 %540, ptr %515, align 4, !tbaa !24
  %541 = sub i32 %536, %524
  %542 = ashr i32 %541, 6
  %543 = tail call i32 @llvm.smax.i32(i32 %542, i32 0)
  %544 = tail call i32 @llvm.umin.i32(i32 %543, i32 255)
  store i32 %544, ptr %517, align 4, !tbaa !24
  %545 = getelementptr inbounds i8, ptr %435, i64 13116
  %546 = load i32, ptr %545, align 4, !tbaa !24
  %547 = getelementptr inbounds i8, ptr %435, i64 13180
  %548 = load i32, ptr %547, align 4, !tbaa !24
  %549 = getelementptr inbounds i8, ptr %435, i64 13244
  %550 = load i32, ptr %549, align 4, !tbaa !24
  %551 = getelementptr inbounds i8, ptr %435, i64 13308
  %552 = load i32, ptr %551, align 4, !tbaa !24
  %553 = add nsw i32 %550, %546
  %554 = sub nsw i32 %546, %550
  %555 = ashr i32 %548, 1
  %556 = sub nsw i32 %555, %552
  %557 = ashr i32 %552, 1
  %558 = add nsw i32 %557, %548
  %559 = add i32 %553, 32
  %560 = add i32 %559, %558
  %561 = ashr i32 %560, 6
  %562 = tail call i32 @llvm.smax.i32(i32 %561, i32 0)
  %563 = tail call i32 @llvm.umin.i32(i32 %562, i32 255)
  store i32 %563, ptr %545, align 4, !tbaa !24
  %564 = sub i32 %559, %558
  %565 = ashr i32 %564, 6
  %566 = tail call i32 @llvm.smax.i32(i32 %565, i32 0)
  %567 = tail call i32 @llvm.umin.i32(i32 %566, i32 255)
  store i32 %567, ptr %551, align 4, !tbaa !24
  %568 = add i32 %554, 32
  %569 = add i32 %568, %556
  %570 = ashr i32 %569, 6
  %571 = tail call i32 @llvm.smax.i32(i32 %570, i32 0)
  %572 = tail call i32 @llvm.umin.i32(i32 %571, i32 255)
  store i32 %572, ptr %547, align 4, !tbaa !24
  %573 = sub i32 %568, %556
  %574 = ashr i32 %573, 6
  %575 = tail call i32 @llvm.smax.i32(i32 %574, i32 0)
  %576 = tail call i32 @llvm.umin.i32(i32 %575, i32 255)
  store i32 %576, ptr %549, align 4, !tbaa !24
  %577 = getelementptr inbounds i8, ptr %435, i64 13120
  %578 = load i32, ptr %577, align 4, !tbaa !24
  %579 = getelementptr inbounds i8, ptr %435, i64 13184
  %580 = load i32, ptr %579, align 4, !tbaa !24
  %581 = getelementptr inbounds i8, ptr %435, i64 13248
  %582 = load i32, ptr %581, align 4, !tbaa !24
  %583 = getelementptr inbounds i8, ptr %435, i64 13312
  %584 = load i32, ptr %583, align 4, !tbaa !24
  %585 = add nsw i32 %582, %578
  %586 = sub nsw i32 %578, %582
  %587 = ashr i32 %580, 1
  %588 = sub nsw i32 %587, %584
  %589 = ashr i32 %584, 1
  %590 = add nsw i32 %589, %580
  %591 = add i32 %585, 32
  %592 = add i32 %591, %590
  %593 = ashr i32 %592, 6
  %594 = tail call i32 @llvm.smax.i32(i32 %593, i32 0)
  %595 = tail call i32 @llvm.umin.i32(i32 %594, i32 255)
  store i32 %595, ptr %577, align 4, !tbaa !24
  %596 = sub i32 %591, %590
  %597 = ashr i32 %596, 6
  %598 = tail call i32 @llvm.smax.i32(i32 %597, i32 0)
  %599 = tail call i32 @llvm.umin.i32(i32 %598, i32 255)
  store i32 %599, ptr %583, align 4, !tbaa !24
  %600 = add i32 %586, 32
  %601 = add i32 %600, %588
  %602 = ashr i32 %601, 6
  %603 = tail call i32 @llvm.smax.i32(i32 %602, i32 0)
  %604 = tail call i32 @llvm.umin.i32(i32 %603, i32 255)
  store i32 %604, ptr %579, align 4, !tbaa !24
  %605 = sub i32 %600, %588
  %606 = ashr i32 %605, 6
  %607 = tail call i32 @llvm.smax.i32(i32 %606, i32 0)
  %608 = tail call i32 @llvm.umin.i32(i32 %607, i32 255)
  store i32 %608, ptr %581, align 4, !tbaa !24
  %609 = getelementptr inbounds i8, ptr %435, i64 13124
  %610 = load i32, ptr %609, align 4, !tbaa !24
  %611 = getelementptr inbounds i8, ptr %435, i64 13188
  %612 = load i32, ptr %611, align 4, !tbaa !24
  %613 = getelementptr inbounds i8, ptr %435, i64 13252
  %614 = load i32, ptr %613, align 4, !tbaa !24
  %615 = getelementptr inbounds i8, ptr %435, i64 13316
  %616 = load i32, ptr %615, align 4, !tbaa !24
  %617 = add nsw i32 %614, %610
  %618 = sub nsw i32 %610, %614
  %619 = ashr i32 %612, 1
  %620 = sub nsw i32 %619, %616
  %621 = ashr i32 %616, 1
  %622 = add nsw i32 %621, %612
  %623 = add i32 %617, 32
  %624 = add i32 %623, %622
  %625 = ashr i32 %624, 6
  %626 = tail call i32 @llvm.smax.i32(i32 %625, i32 0)
  %627 = tail call i32 @llvm.umin.i32(i32 %626, i32 255)
  store i32 %627, ptr %609, align 4, !tbaa !24
  %628 = sub i32 %623, %622
  %629 = ashr i32 %628, 6
  %630 = tail call i32 @llvm.smax.i32(i32 %629, i32 0)
  %631 = tail call i32 @llvm.umin.i32(i32 %630, i32 255)
  store i32 %631, ptr %615, align 4, !tbaa !24
  %632 = add i32 %618, 32
  %633 = add i32 %632, %620
  %634 = ashr i32 %633, 6
  %635 = tail call i32 @llvm.smax.i32(i32 %634, i32 0)
  %636 = tail call i32 @llvm.umin.i32(i32 %635, i32 255)
  store i32 %636, ptr %611, align 4, !tbaa !24
  %637 = sub i32 %632, %620
  %638 = ashr i32 %637, 6
  %639 = tail call i32 @llvm.smax.i32(i32 %638, i32 0)
  %640 = tail call i32 @llvm.umin.i32(i32 %639, i32 255)
  store i32 %640, ptr %613, align 4, !tbaa !24
  %641 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %642 = getelementptr inbounds i8, ptr %641, i64 6424
  %643 = load ptr, ptr %642, align 8, !tbaa !10
  %644 = getelementptr inbounds i8, ptr %435, i64 156
  %645 = load i32, ptr %644, align 4, !tbaa !48
  %646 = getelementptr inbounds i8, ptr %435, i64 152
  %647 = load i32, ptr %646, align 8, !tbaa !49
  %648 = add i32 %647, %0
  %649 = sext i32 %648 to i64
  %650 = load i32, ptr %436, align 4, !tbaa !24
  %651 = trunc i32 %650 to i16
  %652 = add i32 %645, %1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds ptr, ptr %643, i64 %653
  %655 = load ptr, ptr %654, align 8, !tbaa !6
  %656 = getelementptr inbounds i16, ptr %655, i64 %649
  store i16 %651, ptr %656, align 2, !tbaa !27
  %657 = load i32, ptr %460, align 4, !tbaa !24
  %658 = trunc i32 %657 to i16
  %659 = add i32 %1, 1
  %660 = add i32 %659, %645
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds ptr, ptr %643, i64 %661
  %663 = load ptr, ptr %662, align 8, !tbaa !6
  %664 = getelementptr inbounds i16, ptr %663, i64 %649
  store i16 %658, ptr %664, align 2, !tbaa !27
  %665 = load i32, ptr %478, align 4, !tbaa !24
  %666 = trunc i32 %665 to i16
  %667 = add i32 %1, 2
  %668 = add i32 %667, %645
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds ptr, ptr %643, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !6
  %672 = getelementptr inbounds i16, ptr %671, i64 %649
  store i16 %666, ptr %672, align 2, !tbaa !27
  %673 = load i32, ptr %496, align 4, !tbaa !24
  %674 = trunc i32 %673 to i16
  %675 = add i32 %1, 3
  %676 = add i32 %675, %645
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds ptr, ptr %643, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !6
  %680 = getelementptr inbounds i16, ptr %679, i64 %649
  store i16 %674, ptr %680, align 2, !tbaa !27
  %681 = add i32 %31, %647
  %682 = sext i32 %681 to i64
  %683 = load i32, ptr %444, align 4, !tbaa !24
  %684 = trunc i32 %683 to i16
  %685 = getelementptr inbounds i16, ptr %655, i64 %682
  store i16 %684, ptr %685, align 2, !tbaa !27
  %686 = load i32, ptr %462, align 4, !tbaa !24
  %687 = trunc i32 %686 to i16
  %688 = getelementptr inbounds i16, ptr %663, i64 %682
  store i16 %687, ptr %688, align 2, !tbaa !27
  %689 = load i32, ptr %480, align 4, !tbaa !24
  %690 = trunc i32 %689 to i16
  %691 = getelementptr inbounds i16, ptr %671, i64 %682
  store i16 %690, ptr %691, align 2, !tbaa !27
  %692 = load i32, ptr %498, align 4, !tbaa !24
  %693 = trunc i32 %692 to i16
  %694 = getelementptr inbounds i16, ptr %679, i64 %682
  store i16 %693, ptr %694, align 2, !tbaa !27
  %695 = add i32 %32, %647
  %696 = sext i32 %695 to i64
  %697 = load i32, ptr %446, align 4, !tbaa !24
  %698 = trunc i32 %697 to i16
  %699 = getelementptr inbounds i16, ptr %655, i64 %696
  store i16 %698, ptr %699, align 2, !tbaa !27
  %700 = load i32, ptr %464, align 4, !tbaa !24
  %701 = trunc i32 %700 to i16
  %702 = getelementptr inbounds i16, ptr %663, i64 %696
  store i16 %701, ptr %702, align 2, !tbaa !27
  %703 = load i32, ptr %482, align 4, !tbaa !24
  %704 = trunc i32 %703 to i16
  %705 = getelementptr inbounds i16, ptr %671, i64 %696
  store i16 %704, ptr %705, align 2, !tbaa !27
  %706 = load i32, ptr %500, align 4, !tbaa !24
  %707 = trunc i32 %706 to i16
  %708 = getelementptr inbounds i16, ptr %679, i64 %696
  store i16 %707, ptr %708, align 2, !tbaa !27
  %709 = add i32 %33, %647
  %710 = sext i32 %709 to i64
  %711 = load i32, ptr %448, align 4, !tbaa !24
  %712 = trunc i32 %711 to i16
  %713 = getelementptr inbounds i16, ptr %655, i64 %710
  store i16 %712, ptr %713, align 2, !tbaa !27
  %714 = load i32, ptr %466, align 4, !tbaa !24
  %715 = trunc i32 %714 to i16
  %716 = getelementptr inbounds i16, ptr %663, i64 %710
  store i16 %715, ptr %716, align 2, !tbaa !27
  %717 = load i32, ptr %484, align 4, !tbaa !24
  %718 = trunc i32 %717 to i16
  %719 = getelementptr inbounds i16, ptr %671, i64 %710
  store i16 %718, ptr %719, align 2, !tbaa !27
  %720 = load i32, ptr %502, align 4, !tbaa !24
  %721 = trunc i32 %720 to i16
  %722 = getelementptr inbounds i16, ptr %679, i64 %710
  store i16 %721, ptr %722, align 2, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret i32 %426
}

; Function Attrs: nounwind
define dso_local signext i32 @dct_chroma_sp2(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [8 x [8 x i32]], align 4
  %5 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %6, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %6, i64 14144
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = sext i32 %0 to i64
  %15 = getelementptr ptr, ptr %13, i64 %14
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %6, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = sub i32 0, %22
  %26 = udiv i32 %25, 6
  %27 = sub nsw i32 0, %26
  br label %35

28:                                               ; preds = %2
  %29 = zext nneg i32 %22 to i64
  %30 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = udiv i8 %31, 6
  %33 = zext nneg i8 %32 to i32
  %34 = zext i8 %31 to i32
  br label %35

35:                                               ; preds = %24, %28
  %36 = phi i32 [ %33, %28 ], [ %27, %24 ]
  %37 = phi i32 [ %34, %28 ], [ %22, %24 ]
  %38 = add nsw i32 %36, 15
  %39 = shl nuw i32 1, %38
  %40 = getelementptr inbounds i8, ptr %6, i64 12600
  %41 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %42 = getelementptr inbounds ptr, ptr %41, i64 %14
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %6, i64 164
  %45 = getelementptr inbounds i8, ptr %6, i64 160
  %46 = getelementptr inbounds i8, ptr %6, i64 13112
  br label %47

47:                                               ; preds = %35, %47
  %48 = phi i64 [ 0, %35 ], [ %169, %47 ]
  %49 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 0
  %50 = load i16, ptr %49, align 2, !tbaa !27
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 0, i64 %48
  store i32 %51, ptr %52, align 4, !tbaa !24
  %53 = load i32, ptr %44, align 4, !tbaa !61
  %54 = trunc nuw nsw i64 %48 to i32
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %43, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load i32, ptr %45, align 8, !tbaa !62
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !24
  %63 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 0
  store i32 %62, ptr %63, align 4, !tbaa !24
  %64 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 1
  %65 = load i16, ptr %64, align 2, !tbaa !27
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 1, i64 %48
  store i32 %66, ptr %67, align 4, !tbaa !24
  %68 = load i32, ptr %44, align 4, !tbaa !61
  %69 = add nsw i32 %68, %54
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %43, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = load i32, ptr %45, align 8, !tbaa !62
  %74 = sext i32 %73 to i64
  %75 = getelementptr i32, ptr %72, i64 %74
  %76 = getelementptr i8, ptr %75, i64 4
  %77 = load i32, ptr %76, align 4, !tbaa !24
  %78 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 1
  store i32 %77, ptr %78, align 4, !tbaa !24
  %79 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 2
  %80 = load i16, ptr %79, align 2, !tbaa !27
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 2, i64 %48
  store i32 %81, ptr %82, align 4, !tbaa !24
  %83 = load i32, ptr %44, align 4, !tbaa !61
  %84 = add nsw i32 %83, %54
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %43, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = load i32, ptr %45, align 8, !tbaa !62
  %89 = sext i32 %88 to i64
  %90 = getelementptr i32, ptr %87, i64 %89
  %91 = getelementptr i8, ptr %90, i64 8
  %92 = load i32, ptr %91, align 4, !tbaa !24
  %93 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 2
  store i32 %92, ptr %93, align 4, !tbaa !24
  %94 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 3
  %95 = load i16, ptr %94, align 2, !tbaa !27
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 3, i64 %48
  store i32 %96, ptr %97, align 4, !tbaa !24
  %98 = load i32, ptr %44, align 4, !tbaa !61
  %99 = add nsw i32 %98, %54
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %43, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = load i32, ptr %45, align 8, !tbaa !62
  %104 = sext i32 %103 to i64
  %105 = getelementptr i32, ptr %102, i64 %104
  %106 = getelementptr i8, ptr %105, i64 12
  %107 = load i32, ptr %106, align 4, !tbaa !24
  %108 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 3
  store i32 %107, ptr %108, align 4, !tbaa !24
  %109 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 4
  %110 = load i16, ptr %109, align 2, !tbaa !27
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 4, i64 %48
  store i32 %111, ptr %112, align 4, !tbaa !24
  %113 = load i32, ptr %44, align 4, !tbaa !61
  %114 = add nsw i32 %113, %54
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %43, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = load i32, ptr %45, align 8, !tbaa !62
  %119 = sext i32 %118 to i64
  %120 = getelementptr i32, ptr %117, i64 %119
  %121 = getelementptr i8, ptr %120, i64 16
  %122 = load i32, ptr %121, align 4, !tbaa !24
  %123 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !24
  %124 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 5
  %125 = load i16, ptr %124, align 2, !tbaa !27
  %126 = zext i16 %125 to i32
  %127 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 5, i64 %48
  store i32 %126, ptr %127, align 4, !tbaa !24
  %128 = load i32, ptr %44, align 4, !tbaa !61
  %129 = add nsw i32 %128, %54
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %43, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = load i32, ptr %45, align 8, !tbaa !62
  %134 = sext i32 %133 to i64
  %135 = getelementptr i32, ptr %132, i64 %134
  %136 = getelementptr i8, ptr %135, i64 20
  %137 = load i32, ptr %136, align 4, !tbaa !24
  %138 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 5
  store i32 %137, ptr %138, align 4, !tbaa !24
  %139 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 6
  %140 = load i16, ptr %139, align 2, !tbaa !27
  %141 = zext i16 %140 to i32
  %142 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 6, i64 %48
  store i32 %141, ptr %142, align 4, !tbaa !24
  %143 = load i32, ptr %44, align 4, !tbaa !61
  %144 = add nsw i32 %143, %54
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %43, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = load i32, ptr %45, align 8, !tbaa !62
  %149 = sext i32 %148 to i64
  %150 = getelementptr i32, ptr %147, i64 %149
  %151 = getelementptr i8, ptr %150, i64 24
  %152 = load i32, ptr %151, align 4, !tbaa !24
  %153 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 6
  store i32 %152, ptr %153, align 4, !tbaa !24
  %154 = getelementptr inbounds [16 x [16 x i16]], ptr %40, i64 0, i64 %48, i64 7
  %155 = load i16, ptr %154, align 2, !tbaa !27
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 7, i64 %48
  store i32 %156, ptr %157, align 4, !tbaa !24
  %158 = load i32, ptr %44, align 4, !tbaa !61
  %159 = add nsw i32 %158, %54
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %43, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load i32, ptr %45, align 8, !tbaa !62
  %164 = sext i32 %163 to i64
  %165 = getelementptr i32, ptr %162, i64 %164
  %166 = getelementptr i8, ptr %165, i64 28
  %167 = load i32, ptr %166, align 4, !tbaa !24
  %168 = getelementptr inbounds [16 x [16 x i32]], ptr %46, i64 0, i64 %48, i64 7
  store i32 %167, ptr %168, align 4, !tbaa !24
  %169 = add nuw nsw i64 %48, 1
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %47

171:                                              ; preds = %47
  %172 = srem i32 %37, 6
  br label %173

173:                                              ; preds = %171, %299
  %174 = phi i1 [ true, %171 ], [ false, %299 ]
  %175 = phi i64 [ 0, %171 ], [ 4, %299 ]
  %176 = or disjoint i64 %175, 2
  %177 = or disjoint i64 %175, 1
  %178 = or disjoint i64 %175, 3
  br label %179

179:                                              ; preds = %173, %179
  %180 = phi i1 [ true, %173 ], [ false, %179 ]
  %181 = phi i64 [ 0, %173 ], [ 4, %179 ]
  %182 = or disjoint i64 %181, 2
  %183 = or disjoint i64 %181, 1
  %184 = or disjoint i64 %181, 3
  %185 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %181, i64 %175
  %186 = load i32, ptr %185, align 4, !tbaa !24
  %187 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %184, i64 %175
  %188 = load i32, ptr %187, align 4, !tbaa !24
  %189 = add nsw i32 %188, %186
  %190 = sub nsw i32 %186, %188
  %191 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %183, i64 %175
  %192 = load i32, ptr %191, align 4, !tbaa !24
  %193 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %182, i64 %175
  %194 = load i32, ptr %193, align 4, !tbaa !24
  %195 = add nsw i32 %194, %192
  %196 = sub nsw i32 %192, %194
  %197 = add nsw i32 %195, %189
  %198 = sub nsw i32 %189, %195
  store i32 %198, ptr %193, align 4, !tbaa !24
  %199 = shl nsw i32 %190, 1
  %200 = add nsw i32 %199, %196
  %201 = shl nsw i32 %196, 1
  %202 = sub nsw i32 %190, %201
  store i32 %202, ptr %187, align 4, !tbaa !24
  %203 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %181, i64 %177
  %204 = load i32, ptr %203, align 4, !tbaa !24
  %205 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %184, i64 %177
  %206 = load i32, ptr %205, align 4, !tbaa !24
  %207 = add nsw i32 %206, %204
  %208 = sub nsw i32 %204, %206
  %209 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %183, i64 %177
  %210 = load i32, ptr %209, align 4, !tbaa !24
  %211 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %182, i64 %177
  %212 = load i32, ptr %211, align 4, !tbaa !24
  %213 = add nsw i32 %212, %210
  %214 = sub nsw i32 %210, %212
  %215 = add nsw i32 %213, %207
  %216 = sub nsw i32 %207, %213
  %217 = shl nsw i32 %208, 1
  %218 = add nsw i32 %217, %214
  %219 = shl nsw i32 %214, 1
  %220 = sub nsw i32 %208, %219
  %221 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %181, i64 %176
  %222 = load i32, ptr %221, align 4, !tbaa !24
  %223 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %184, i64 %176
  %224 = load i32, ptr %223, align 4, !tbaa !24
  %225 = add nsw i32 %224, %222
  %226 = sub nsw i32 %222, %224
  %227 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %183, i64 %176
  %228 = load i32, ptr %227, align 4, !tbaa !24
  %229 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %182, i64 %176
  %230 = load i32, ptr %229, align 4, !tbaa !24
  %231 = add nsw i32 %230, %228
  %232 = sub nsw i32 %228, %230
  %233 = add nsw i32 %231, %225
  %234 = sub nsw i32 %225, %231
  %235 = shl nsw i32 %226, 1
  %236 = add nsw i32 %235, %232
  %237 = shl nsw i32 %232, 1
  %238 = sub nsw i32 %226, %237
  %239 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %181, i64 %178
  %240 = load i32, ptr %239, align 4, !tbaa !24
  %241 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %184, i64 %178
  %242 = load i32, ptr %241, align 4, !tbaa !24
  %243 = add nsw i32 %242, %240
  %244 = sub nsw i32 %240, %242
  %245 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %183, i64 %178
  %246 = load i32, ptr %245, align 4, !tbaa !24
  %247 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %182, i64 %178
  %248 = load i32, ptr %247, align 4, !tbaa !24
  %249 = add nsw i32 %248, %246
  %250 = sub nsw i32 %246, %248
  %251 = add nsw i32 %249, %243
  %252 = sub nsw i32 %243, %249
  %253 = shl nsw i32 %244, 1
  %254 = add nsw i32 %253, %250
  %255 = shl nsw i32 %250, 1
  %256 = sub nsw i32 %244, %255
  %257 = add nsw i32 %251, %197
  %258 = sub nsw i32 %197, %251
  %259 = add nsw i32 %233, %215
  %260 = sub nsw i32 %215, %233
  %261 = add nsw i32 %259, %257
  store i32 %261, ptr %185, align 4, !tbaa !24
  %262 = sub nsw i32 %257, %259
  store i32 %262, ptr %221, align 4, !tbaa !24
  %263 = shl nsw i32 %258, 1
  %264 = add nsw i32 %263, %260
  store i32 %264, ptr %203, align 4, !tbaa !24
  %265 = shl nsw i32 %260, 1
  %266 = sub nsw i32 %258, %265
  store i32 %266, ptr %239, align 4, !tbaa !24
  %267 = add nsw i32 %254, %200
  %268 = sub nsw i32 %200, %254
  %269 = add nsw i32 %236, %218
  %270 = sub nsw i32 %218, %236
  %271 = add nsw i32 %269, %267
  store i32 %271, ptr %191, align 4, !tbaa !24
  %272 = sub nsw i32 %267, %269
  store i32 %272, ptr %227, align 4, !tbaa !24
  %273 = shl nsw i32 %268, 1
  %274 = add nsw i32 %273, %270
  store i32 %274, ptr %209, align 4, !tbaa !24
  %275 = shl nsw i32 %270, 1
  %276 = sub nsw i32 %268, %275
  store i32 %276, ptr %245, align 4, !tbaa !24
  %277 = load i32, ptr %193, align 4, !tbaa !24
  %278 = add nsw i32 %252, %277
  %279 = sub nsw i32 %277, %252
  %280 = add nsw i32 %234, %216
  %281 = sub nsw i32 %216, %234
  %282 = add nsw i32 %280, %278
  store i32 %282, ptr %193, align 4, !tbaa !24
  %283 = sub nsw i32 %278, %280
  store i32 %283, ptr %229, align 4, !tbaa !24
  %284 = shl nsw i32 %279, 1
  %285 = add nsw i32 %284, %281
  store i32 %285, ptr %211, align 4, !tbaa !24
  %286 = shl nsw i32 %281, 1
  %287 = sub nsw i32 %279, %286
  store i32 %287, ptr %247, align 4, !tbaa !24
  %288 = load i32, ptr %187, align 4, !tbaa !24
  %289 = add nsw i32 %256, %288
  %290 = sub nsw i32 %288, %256
  %291 = add nsw i32 %238, %220
  %292 = sub nsw i32 %220, %238
  %293 = add nsw i32 %291, %289
  store i32 %293, ptr %187, align 4, !tbaa !24
  %294 = sub nsw i32 %289, %291
  store i32 %294, ptr %223, align 4, !tbaa !24
  %295 = shl nsw i32 %290, 1
  %296 = add nsw i32 %295, %292
  store i32 %296, ptr %205, align 4, !tbaa !24
  %297 = shl nsw i32 %292, 1
  %298 = sub nsw i32 %290, %297
  store i32 %298, ptr %241, align 4, !tbaa !24
  br i1 %180, label %179, label %299

299:                                              ; preds = %179
  br i1 %174, label %173, label %300

300:                                              ; preds = %299
  %301 = sdiv i32 %39, 2
  %302 = load i32, ptr %46, align 8, !tbaa !24
  store i32 %302, ptr %3, align 4, !tbaa !24
  %303 = getelementptr inbounds i8, ptr %6, i64 13368
  %304 = load i32, ptr %303, align 8, !tbaa !24
  %305 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %304, ptr %305, align 4, !tbaa !24
  %306 = getelementptr inbounds i8, ptr %6, i64 13128
  %307 = load i32, ptr %306, align 8, !tbaa !24
  %308 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %307, ptr %308, align 4, !tbaa !24
  %309 = getelementptr inbounds i8, ptr %6, i64 13384
  %310 = load i32, ptr %309, align 8, !tbaa !24
  %311 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %310, ptr %311, align 4, !tbaa !24
  %312 = load i32, ptr %4, align 4, !tbaa !24
  %313 = getelementptr inbounds i8, ptr %4, i64 128
  %314 = load i32, ptr %313, align 4, !tbaa !24
  %315 = add nsw i32 %314, %312
  %316 = getelementptr inbounds i8, ptr %4, i64 16
  %317 = load i32, ptr %316, align 4, !tbaa !24
  %318 = getelementptr inbounds i8, ptr %4, i64 144
  %319 = load i32, ptr %318, align 4, !tbaa !24
  %320 = add i32 %319, %317
  %321 = add i32 %320, %315
  store i32 %321, ptr %5, align 4, !tbaa !24
  %322 = add i32 %312, %317
  %323 = add i32 %314, %319
  %324 = sub i32 %322, %323
  %325 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %324, ptr %325, align 4, !tbaa !24
  %326 = sub i32 %315, %320
  %327 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %326, ptr %327, align 4, !tbaa !24
  %328 = add i32 %314, %317
  %329 = sub i32 %312, %328
  %330 = add nsw i32 %329, %319
  %331 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %330, ptr %331, align 4, !tbaa !24
  %332 = sext i32 %172 to i64
  %333 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !24
  %335 = shl nsw i32 %301, 1
  %336 = add nsw i32 %36, 16
  %337 = shl i32 %0, 2
  %338 = shl i32 983040, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11, i32 13
  %341 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %332
  br label %342

342:                                              ; preds = %300, %369
  %343 = phi i64 [ 0, %300 ], [ %378, %369 ]
  %344 = phi i32 [ %1, %300 ], [ %372, %369 ]
  %345 = phi i32 [ 0, %300 ], [ %371, %369 ]
  %346 = phi i32 [ -1, %300 ], [ %370, %369 ]
  %347 = add nsw i32 %346, 1
  %348 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %343
  %349 = load i32, ptr %348, align 4, !tbaa !24
  %350 = tail call i32 @llvm.abs.i32(i32 %349, i1 true)
  %351 = mul nsw i32 %350, %334
  %352 = add nsw i32 %351, %335
  %353 = ashr i32 %352, %336
  %354 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %343
  %355 = load i32, ptr %354, align 4, !tbaa !24
  %356 = tail call signext i32 @sign(i32 noundef signext %353, i32 noundef signext %349) #7
  %357 = sub nsw i32 %355, %356
  %358 = icmp eq i32 %355, %356
  br i1 %358, label %369, label %359

359:                                              ; preds = %342
  %360 = tail call i32 @llvm.abs.i32(i32 %357, i1 true)
  %361 = load i64, ptr %340, align 8, !tbaa !58
  %362 = or i64 %361, %339
  store i64 %362, ptr %340, align 8, !tbaa !58
  %363 = tail call i32 @llvm.smax.i32(i32 %344, i32 1)
  %364 = tail call signext i32 @sign(i32 noundef signext %360, i32 noundef signext %357) #7
  %365 = sext i32 %345 to i64
  %366 = getelementptr inbounds i32, ptr %18, i64 %365
  store i32 %364, ptr %366, align 4, !tbaa !24
  %367 = getelementptr inbounds i32, ptr %20, i64 %365
  store i32 %347, ptr %367, align 4, !tbaa !24
  %368 = add nsw i32 %345, 1
  br label %369

369:                                              ; preds = %359, %342
  %370 = phi i32 [ -1, %359 ], [ %347, %342 ]
  %371 = phi i32 [ %368, %359 ], [ %345, %342 ]
  %372 = phi i32 [ %363, %359 ], [ %344, %342 ]
  %373 = tail call signext i32 @sign(i32 noundef signext %353, i32 noundef signext %349) #7
  %374 = add nsw i32 %373, %357
  %375 = load i32, ptr %341, align 4, !tbaa !24
  %376 = mul nsw i32 %374, %375
  %377 = shl i32 %376, %36
  store i32 %377, ptr %354, align 4, !tbaa !24
  %378 = add nuw nsw i64 %343, 1
  %379 = icmp eq i64 %378, 4
  br i1 %379, label %380, label %342

380:                                              ; preds = %369
  %381 = sext i32 %371 to i64
  %382 = getelementptr inbounds i32, ptr %18, i64 %381
  store i32 0, ptr %382, align 4, !tbaa !24
  %383 = load i32, ptr %3, align 4, !tbaa !24
  %384 = load i32, ptr %305, align 4, !tbaa !24
  %385 = add nsw i32 %384, %383
  %386 = load i32, ptr %308, align 4, !tbaa !24
  %387 = load i32, ptr %311, align 4, !tbaa !24
  %388 = add i32 %387, %386
  %389 = add i32 %388, %385
  %390 = sdiv i32 %389, 2
  %391 = load ptr, ptr @img, align 8, !tbaa !6
  %392 = getelementptr inbounds i8, ptr %391, i64 13112
  store i32 %390, ptr %392, align 8, !tbaa !24
  %393 = add i32 %383, %386
  %394 = add i32 %384, %387
  %395 = sub i32 %393, %394
  %396 = sdiv i32 %395, 2
  %397 = getelementptr inbounds i8, ptr %391, i64 13368
  store i32 %396, ptr %397, align 8, !tbaa !24
  %398 = sub i32 %385, %388
  %399 = sdiv i32 %398, 2
  %400 = getelementptr inbounds i8, ptr %391, i64 13128
  store i32 %399, ptr %400, align 8, !tbaa !24
  %401 = add i32 %384, %386
  %402 = sub i32 %383, %401
  %403 = add nsw i32 %402, %387
  %404 = sdiv i32 %403, 2
  %405 = getelementptr inbounds i8, ptr %391, i64 13384
  store i32 %404, ptr %405, align 8, !tbaa !24
  %406 = add nsw i32 %337, 16
  br label %407

407:                                              ; preds = %380, %509
  %408 = phi ptr [ %391, %380 ], [ %501, %509 ]
  %409 = phi i1 [ true, %380 ], [ false, %509 ]
  %410 = phi i64 [ 0, %380 ], [ 4, %509 ]
  %411 = phi i32 [ 0, %380 ], [ %492, %509 ]
  %412 = lshr exact i64 %410, 1
  br label %413

413:                                              ; preds = %407, %506
  %414 = phi ptr [ %408, %407 ], [ %501, %506 ]
  %415 = phi i1 [ true, %407 ], [ false, %506 ]
  %416 = phi i64 [ 0, %407 ], [ 4, %506 ]
  %417 = phi i32 [ %411, %407 ], [ %492, %506 ]
  %418 = lshr exact i64 %416, 2
  %419 = or disjoint i64 %418, %412
  %420 = getelementptr inbounds i8, ptr %414, i64 14136
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = getelementptr ptr, ptr %421, i64 %14
  %423 = getelementptr i8, ptr %422, i64 32
  %424 = load ptr, ptr %423, align 8, !tbaa !6
  %425 = getelementptr inbounds ptr, ptr %424, i64 %419
  %426 = load ptr, ptr %425, align 8, !tbaa !6
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = getelementptr inbounds i8, ptr %426, i64 8
  %429 = load ptr, ptr %428, align 8, !tbaa !6
  %430 = trunc nuw nsw i64 %419 to i32
  %431 = or disjoint i32 %406, %430
  %432 = shl nuw i32 1, %431
  %433 = sext i32 %432 to i64
  br label %434

434:                                              ; preds = %413, %491
  %435 = phi ptr [ %414, %413 ], [ %501, %491 ]
  %436 = phi i64 [ 1, %413 ], [ %504, %491 ]
  %437 = phi i32 [ 0, %413 ], [ %494, %491 ]
  %438 = phi i32 [ -1, %413 ], [ %493, %491 ]
  %439 = phi i32 [ %417, %413 ], [ %492, %491 ]
  %440 = getelementptr inbounds i8, ptr %435, i64 90264
  %441 = load i32, ptr %440, align 8, !tbaa !31
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %434
  %444 = load i32, ptr @mb_adaptive, align 4, !tbaa !24
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %450, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds i8, ptr %435, i64 89416
  %448 = load i32, ptr %447, align 8, !tbaa !79
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %446, %443
  br label %451

451:                                              ; preds = %434, %446, %450
  %452 = phi ptr [ @SNGL_SCAN, %450 ], [ @FIELD_SCAN, %446 ], [ @FIELD_SCAN, %434 ]
  %453 = getelementptr inbounds [16 x [2 x i8]], ptr %452, i64 0, i64 %436
  %454 = getelementptr inbounds i8, ptr %453, i64 1
  %455 = load i8, ptr %454, align 1, !tbaa !43
  %456 = zext i8 %455 to i64
  %457 = load i8, ptr %453, align 1, !tbaa !43
  %458 = zext i8 %457 to i64
  %459 = add nsw i32 %438, 1
  %460 = zext i8 %457 to i64
  %461 = add nuw nsw i64 %416, %460
  %462 = add nuw nsw i64 %410, %456
  %463 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %461, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !24
  %465 = tail call i32 @llvm.abs.i32(i32 %464, i1 true)
  %466 = zext i8 %455 to i64
  %467 = zext i8 %457 to i64
  %468 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %332, i64 %466, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !24
  %470 = mul nsw i32 %465, %469
  %471 = add nsw i32 %470, %301
  %472 = ashr i32 %471, %38
  %473 = getelementptr inbounds i8, ptr %435, i64 13112
  %474 = zext i8 %455 to i64
  %475 = add nuw nsw i64 %416, %474
  %476 = add nuw nsw i64 %410, %458
  %477 = getelementptr inbounds [16 x [16 x i32]], ptr %473, i64 0, i64 %475, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !24
  %479 = tail call signext i32 @sign(i32 noundef signext %472, i32 noundef signext %464) #7
  %480 = sub nsw i32 %478, %479
  %481 = icmp eq i32 %478, %479
  br i1 %481, label %491, label %482

482:                                              ; preds = %451
  %483 = tail call i32 @llvm.abs.i32(i32 %480, i1 true)
  %484 = load i64, ptr %340, align 8, !tbaa !58
  %485 = or i64 %484, %433
  store i64 %485, ptr %340, align 8, !tbaa !58
  %486 = tail call signext i32 @sign(i32 noundef signext %483, i32 noundef signext %480) #7
  %487 = sext i32 %437 to i64
  %488 = getelementptr inbounds i32, ptr %427, i64 %487
  store i32 %486, ptr %488, align 4, !tbaa !24
  %489 = getelementptr inbounds i32, ptr %429, i64 %487
  store i32 %459, ptr %489, align 4, !tbaa !24
  %490 = add nsw i32 %437, 1
  br label %491

491:                                              ; preds = %482, %451
  %492 = phi i32 [ 2, %482 ], [ %439, %451 ]
  %493 = phi i32 [ -1, %482 ], [ %459, %451 ]
  %494 = phi i32 [ %490, %482 ], [ %437, %451 ]
  %495 = tail call signext i32 @sign(i32 noundef signext %472, i32 noundef signext %464) #7
  %496 = add nsw i32 %495, %480
  %497 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %332, i64 %466, i64 %467
  %498 = load i32, ptr %497, align 4, !tbaa !24
  %499 = mul nsw i32 %496, %498
  %500 = shl i32 %499, %36
  %501 = load ptr, ptr @img, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %501, i64 13112
  %503 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %475, i64 %476
  store i32 %500, ptr %503, align 4, !tbaa !24
  %504 = add nuw nsw i64 %436, 1
  %505 = icmp eq i64 %504, 16
  br i1 %505, label %506, label %434

506:                                              ; preds = %491
  %507 = sext i32 %494 to i64
  %508 = getelementptr inbounds i32, ptr %427, i64 %507
  store i32 0, ptr %508, align 4, !tbaa !24
  br i1 %415, label %413, label %509

509:                                              ; preds = %506
  br i1 %409, label %407, label %510

510:                                              ; preds = %509, %934
  %511 = phi i1 [ false, %934 ], [ true, %509 ]
  %512 = phi i64 [ 4, %934 ], [ 0, %509 ]
  %513 = or disjoint i64 %512, 1
  %514 = or disjoint i64 %512, 2
  %515 = or disjoint i64 %512, 3
  %516 = or disjoint i64 %512, 1
  %517 = or disjoint i64 %512, 2
  %518 = or disjoint i64 %512, 3
  br label %818

519:                                              ; preds = %934
  %520 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %521 = getelementptr inbounds i8, ptr %520, i64 6464
  %522 = load ptr, ptr %521, align 8, !tbaa !63
  %523 = getelementptr inbounds ptr, ptr %522, i64 %14
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = getelementptr inbounds i8, ptr %501, i64 164
  %526 = load i32, ptr %525, align 4, !tbaa !61
  %527 = getelementptr inbounds i8, ptr %501, i64 160
  %528 = load i32, ptr %527, align 8, !tbaa !62
  %529 = sext i32 %526 to i64
  %530 = sext i32 %528 to i64
  %531 = load i32, ptr %502, align 4, !tbaa !24
  %532 = trunc i32 %531 to i16
  %533 = getelementptr inbounds ptr, ptr %524, i64 %529
  %534 = load ptr, ptr %533, align 8, !tbaa !6
  %535 = getelementptr inbounds i16, ptr %534, i64 %530
  store i16 %532, ptr %535, align 2, !tbaa !27
  %536 = getelementptr inbounds i8, ptr %501, i64 13368
  %537 = load i32, ptr %536, align 4, !tbaa !24
  %538 = trunc i32 %537 to i16
  %539 = getelementptr i8, ptr %535, i64 8
  store i16 %538, ptr %539, align 2, !tbaa !27
  %540 = getelementptr inbounds i8, ptr %501, i64 13128
  %541 = load i32, ptr %540, align 4, !tbaa !24
  %542 = trunc i32 %541 to i16
  %543 = getelementptr i8, ptr %533, i64 32
  %544 = load ptr, ptr %543, align 8, !tbaa !6
  %545 = getelementptr inbounds i16, ptr %544, i64 %530
  store i16 %542, ptr %545, align 2, !tbaa !27
  %546 = getelementptr inbounds i8, ptr %501, i64 13384
  %547 = load i32, ptr %546, align 4, !tbaa !24
  %548 = trunc i32 %547 to i16
  %549 = getelementptr i8, ptr %545, i64 8
  store i16 %548, ptr %549, align 2, !tbaa !27
  %550 = getelementptr inbounds i8, ptr %501, i64 13176
  %551 = load i32, ptr %550, align 4, !tbaa !24
  %552 = trunc i32 %551 to i16
  %553 = getelementptr ptr, ptr %524, i64 %529
  %554 = getelementptr i8, ptr %553, i64 8
  %555 = load ptr, ptr %554, align 8, !tbaa !6
  %556 = getelementptr inbounds i16, ptr %555, i64 %530
  store i16 %552, ptr %556, align 2, !tbaa !27
  %557 = getelementptr inbounds i8, ptr %501, i64 13432
  %558 = load i32, ptr %557, align 4, !tbaa !24
  %559 = trunc i32 %558 to i16
  %560 = getelementptr i8, ptr %556, i64 8
  store i16 %559, ptr %560, align 2, !tbaa !27
  %561 = getelementptr inbounds i8, ptr %501, i64 13192
  %562 = load i32, ptr %561, align 4, !tbaa !24
  %563 = trunc i32 %562 to i16
  %564 = getelementptr i8, ptr %553, i64 40
  %565 = load ptr, ptr %564, align 8, !tbaa !6
  %566 = getelementptr inbounds i16, ptr %565, i64 %530
  store i16 %563, ptr %566, align 2, !tbaa !27
  %567 = getelementptr inbounds i8, ptr %501, i64 13448
  %568 = load i32, ptr %567, align 4, !tbaa !24
  %569 = trunc i32 %568 to i16
  %570 = getelementptr i8, ptr %566, i64 8
  store i16 %569, ptr %570, align 2, !tbaa !27
  %571 = getelementptr inbounds i8, ptr %501, i64 13240
  %572 = load i32, ptr %571, align 4, !tbaa !24
  %573 = trunc i32 %572 to i16
  %574 = getelementptr ptr, ptr %524, i64 %529
  %575 = getelementptr i8, ptr %574, i64 16
  %576 = load ptr, ptr %575, align 8, !tbaa !6
  %577 = getelementptr inbounds i16, ptr %576, i64 %530
  store i16 %573, ptr %577, align 2, !tbaa !27
  %578 = getelementptr inbounds i8, ptr %501, i64 13496
  %579 = load i32, ptr %578, align 4, !tbaa !24
  %580 = trunc i32 %579 to i16
  %581 = getelementptr i8, ptr %577, i64 8
  store i16 %580, ptr %581, align 2, !tbaa !27
  %582 = getelementptr inbounds i8, ptr %501, i64 13256
  %583 = load i32, ptr %582, align 4, !tbaa !24
  %584 = trunc i32 %583 to i16
  %585 = getelementptr i8, ptr %574, i64 48
  %586 = load ptr, ptr %585, align 8, !tbaa !6
  %587 = getelementptr inbounds i16, ptr %586, i64 %530
  store i16 %584, ptr %587, align 2, !tbaa !27
  %588 = getelementptr inbounds i8, ptr %501, i64 13512
  %589 = load i32, ptr %588, align 4, !tbaa !24
  %590 = trunc i32 %589 to i16
  %591 = getelementptr i8, ptr %587, i64 8
  store i16 %590, ptr %591, align 2, !tbaa !27
  %592 = getelementptr inbounds i8, ptr %501, i64 13304
  %593 = load i32, ptr %592, align 4, !tbaa !24
  %594 = trunc i32 %593 to i16
  %595 = getelementptr ptr, ptr %524, i64 %529
  %596 = getelementptr i8, ptr %595, i64 24
  %597 = load ptr, ptr %596, align 8, !tbaa !6
  %598 = getelementptr inbounds i16, ptr %597, i64 %530
  store i16 %594, ptr %598, align 2, !tbaa !27
  %599 = getelementptr inbounds i8, ptr %501, i64 13560
  %600 = load i32, ptr %599, align 4, !tbaa !24
  %601 = trunc i32 %600 to i16
  %602 = getelementptr i8, ptr %598, i64 8
  store i16 %601, ptr %602, align 2, !tbaa !27
  %603 = getelementptr inbounds i8, ptr %501, i64 13320
  %604 = load i32, ptr %603, align 4, !tbaa !24
  %605 = trunc i32 %604 to i16
  %606 = getelementptr i8, ptr %595, i64 56
  %607 = load ptr, ptr %606, align 8, !tbaa !6
  %608 = getelementptr inbounds i16, ptr %607, i64 %530
  store i16 %605, ptr %608, align 2, !tbaa !27
  %609 = getelementptr inbounds i8, ptr %501, i64 13576
  %610 = load i32, ptr %609, align 4, !tbaa !24
  %611 = trunc i32 %610 to i16
  %612 = getelementptr i8, ptr %608, i64 8
  store i16 %611, ptr %612, align 2, !tbaa !27
  %613 = add nsw i64 %530, 1
  %614 = getelementptr inbounds i8, ptr %501, i64 13116
  %615 = load i32, ptr %614, align 4, !tbaa !24
  %616 = trunc i32 %615 to i16
  %617 = getelementptr inbounds i16, ptr %534, i64 %613
  store i16 %616, ptr %617, align 2, !tbaa !27
  %618 = getelementptr inbounds i8, ptr %501, i64 13372
  %619 = load i32, ptr %618, align 4, !tbaa !24
  %620 = trunc i32 %619 to i16
  %621 = getelementptr i8, ptr %617, i64 8
  store i16 %620, ptr %621, align 2, !tbaa !27
  %622 = getelementptr inbounds i8, ptr %501, i64 13132
  %623 = load i32, ptr %622, align 4, !tbaa !24
  %624 = trunc i32 %623 to i16
  %625 = getelementptr inbounds i16, ptr %544, i64 %613
  store i16 %624, ptr %625, align 2, !tbaa !27
  %626 = getelementptr inbounds i8, ptr %501, i64 13388
  %627 = load i32, ptr %626, align 4, !tbaa !24
  %628 = trunc i32 %627 to i16
  %629 = getelementptr i8, ptr %625, i64 8
  store i16 %628, ptr %629, align 2, !tbaa !27
  %630 = getelementptr inbounds i8, ptr %501, i64 13180
  %631 = load i32, ptr %630, align 4, !tbaa !24
  %632 = trunc i32 %631 to i16
  %633 = getelementptr inbounds i16, ptr %555, i64 %613
  store i16 %632, ptr %633, align 2, !tbaa !27
  %634 = getelementptr inbounds i8, ptr %501, i64 13436
  %635 = load i32, ptr %634, align 4, !tbaa !24
  %636 = trunc i32 %635 to i16
  %637 = getelementptr i8, ptr %633, i64 8
  store i16 %636, ptr %637, align 2, !tbaa !27
  %638 = getelementptr inbounds i8, ptr %501, i64 13196
  %639 = load i32, ptr %638, align 4, !tbaa !24
  %640 = trunc i32 %639 to i16
  %641 = getelementptr inbounds i16, ptr %565, i64 %613
  store i16 %640, ptr %641, align 2, !tbaa !27
  %642 = getelementptr inbounds i8, ptr %501, i64 13452
  %643 = load i32, ptr %642, align 4, !tbaa !24
  %644 = trunc i32 %643 to i16
  %645 = getelementptr i8, ptr %641, i64 8
  store i16 %644, ptr %645, align 2, !tbaa !27
  %646 = getelementptr inbounds i8, ptr %501, i64 13244
  %647 = load i32, ptr %646, align 4, !tbaa !24
  %648 = trunc i32 %647 to i16
  %649 = getelementptr inbounds i16, ptr %576, i64 %613
  store i16 %648, ptr %649, align 2, !tbaa !27
  %650 = getelementptr inbounds i8, ptr %501, i64 13500
  %651 = load i32, ptr %650, align 4, !tbaa !24
  %652 = trunc i32 %651 to i16
  %653 = getelementptr i8, ptr %649, i64 8
  store i16 %652, ptr %653, align 2, !tbaa !27
  %654 = getelementptr inbounds i8, ptr %501, i64 13260
  %655 = load i32, ptr %654, align 4, !tbaa !24
  %656 = trunc i32 %655 to i16
  %657 = getelementptr inbounds i16, ptr %586, i64 %613
  store i16 %656, ptr %657, align 2, !tbaa !27
  %658 = getelementptr inbounds i8, ptr %501, i64 13516
  %659 = load i32, ptr %658, align 4, !tbaa !24
  %660 = trunc i32 %659 to i16
  %661 = getelementptr i8, ptr %657, i64 8
  store i16 %660, ptr %661, align 2, !tbaa !27
  %662 = getelementptr inbounds i8, ptr %501, i64 13308
  %663 = load i32, ptr %662, align 4, !tbaa !24
  %664 = trunc i32 %663 to i16
  %665 = getelementptr inbounds i16, ptr %597, i64 %613
  store i16 %664, ptr %665, align 2, !tbaa !27
  %666 = getelementptr inbounds i8, ptr %501, i64 13564
  %667 = load i32, ptr %666, align 4, !tbaa !24
  %668 = trunc i32 %667 to i16
  %669 = getelementptr i8, ptr %665, i64 8
  store i16 %668, ptr %669, align 2, !tbaa !27
  %670 = getelementptr inbounds i8, ptr %501, i64 13324
  %671 = load i32, ptr %670, align 4, !tbaa !24
  %672 = trunc i32 %671 to i16
  %673 = getelementptr inbounds i16, ptr %607, i64 %613
  store i16 %672, ptr %673, align 2, !tbaa !27
  %674 = getelementptr inbounds i8, ptr %501, i64 13580
  %675 = load i32, ptr %674, align 4, !tbaa !24
  %676 = trunc i32 %675 to i16
  %677 = getelementptr i8, ptr %673, i64 8
  store i16 %676, ptr %677, align 2, !tbaa !27
  %678 = add nsw i64 %530, 2
  %679 = getelementptr inbounds i8, ptr %501, i64 13120
  %680 = load i32, ptr %679, align 4, !tbaa !24
  %681 = trunc i32 %680 to i16
  %682 = load ptr, ptr %533, align 8, !tbaa !6
  %683 = getelementptr inbounds i16, ptr %682, i64 %678
  store i16 %681, ptr %683, align 2, !tbaa !27
  %684 = getelementptr inbounds i8, ptr %501, i64 13376
  %685 = load i32, ptr %684, align 4, !tbaa !24
  %686 = trunc i32 %685 to i16
  %687 = getelementptr i8, ptr %683, i64 8
  store i16 %686, ptr %687, align 2, !tbaa !27
  %688 = getelementptr inbounds i8, ptr %501, i64 13136
  %689 = load i32, ptr %688, align 4, !tbaa !24
  %690 = trunc i32 %689 to i16
  %691 = load ptr, ptr %543, align 8, !tbaa !6
  %692 = getelementptr inbounds i16, ptr %691, i64 %678
  store i16 %690, ptr %692, align 2, !tbaa !27
  %693 = getelementptr inbounds i8, ptr %501, i64 13392
  %694 = load i32, ptr %693, align 4, !tbaa !24
  %695 = trunc i32 %694 to i16
  %696 = getelementptr i8, ptr %692, i64 8
  store i16 %695, ptr %696, align 2, !tbaa !27
  %697 = getelementptr inbounds i8, ptr %501, i64 13184
  %698 = load i32, ptr %697, align 4, !tbaa !24
  %699 = trunc i32 %698 to i16
  %700 = load ptr, ptr %554, align 8, !tbaa !6
  %701 = getelementptr inbounds i16, ptr %700, i64 %678
  store i16 %699, ptr %701, align 2, !tbaa !27
  %702 = getelementptr inbounds i8, ptr %501, i64 13440
  %703 = load i32, ptr %702, align 4, !tbaa !24
  %704 = trunc i32 %703 to i16
  %705 = getelementptr i8, ptr %701, i64 8
  store i16 %704, ptr %705, align 2, !tbaa !27
  %706 = getelementptr inbounds i8, ptr %501, i64 13200
  %707 = load i32, ptr %706, align 4, !tbaa !24
  %708 = trunc i32 %707 to i16
  %709 = load ptr, ptr %564, align 8, !tbaa !6
  %710 = getelementptr inbounds i16, ptr %709, i64 %678
  store i16 %708, ptr %710, align 2, !tbaa !27
  %711 = getelementptr inbounds i8, ptr %501, i64 13456
  %712 = load i32, ptr %711, align 4, !tbaa !24
  %713 = trunc i32 %712 to i16
  %714 = getelementptr i8, ptr %710, i64 8
  store i16 %713, ptr %714, align 2, !tbaa !27
  %715 = getelementptr inbounds i8, ptr %501, i64 13248
  %716 = load i32, ptr %715, align 4, !tbaa !24
  %717 = trunc i32 %716 to i16
  %718 = load ptr, ptr %575, align 8, !tbaa !6
  %719 = getelementptr inbounds i16, ptr %718, i64 %678
  store i16 %717, ptr %719, align 2, !tbaa !27
  %720 = getelementptr inbounds i8, ptr %501, i64 13504
  %721 = load i32, ptr %720, align 4, !tbaa !24
  %722 = trunc i32 %721 to i16
  %723 = getelementptr i8, ptr %719, i64 8
  store i16 %722, ptr %723, align 2, !tbaa !27
  %724 = getelementptr inbounds i8, ptr %501, i64 13264
  %725 = load i32, ptr %724, align 4, !tbaa !24
  %726 = trunc i32 %725 to i16
  %727 = load ptr, ptr %585, align 8, !tbaa !6
  %728 = getelementptr inbounds i16, ptr %727, i64 %678
  store i16 %726, ptr %728, align 2, !tbaa !27
  %729 = getelementptr inbounds i8, ptr %501, i64 13520
  %730 = load i32, ptr %729, align 4, !tbaa !24
  %731 = trunc i32 %730 to i16
  %732 = getelementptr i8, ptr %728, i64 8
  store i16 %731, ptr %732, align 2, !tbaa !27
  %733 = getelementptr inbounds i8, ptr %501, i64 13312
  %734 = load i32, ptr %733, align 4, !tbaa !24
  %735 = trunc i32 %734 to i16
  %736 = load ptr, ptr %596, align 8, !tbaa !6
  %737 = getelementptr inbounds i16, ptr %736, i64 %678
  store i16 %735, ptr %737, align 2, !tbaa !27
  %738 = getelementptr inbounds i8, ptr %501, i64 13568
  %739 = load i32, ptr %738, align 4, !tbaa !24
  %740 = trunc i32 %739 to i16
  %741 = getelementptr i8, ptr %737, i64 8
  store i16 %740, ptr %741, align 2, !tbaa !27
  %742 = getelementptr inbounds i8, ptr %501, i64 13328
  %743 = load i32, ptr %742, align 4, !tbaa !24
  %744 = trunc i32 %743 to i16
  %745 = load ptr, ptr %606, align 8, !tbaa !6
  %746 = getelementptr inbounds i16, ptr %745, i64 %678
  store i16 %744, ptr %746, align 2, !tbaa !27
  %747 = getelementptr inbounds i8, ptr %501, i64 13584
  %748 = load i32, ptr %747, align 4, !tbaa !24
  %749 = trunc i32 %748 to i16
  %750 = getelementptr i8, ptr %746, i64 8
  store i16 %749, ptr %750, align 2, !tbaa !27
  %751 = add nsw i64 %530, 3
  %752 = getelementptr inbounds i8, ptr %501, i64 13124
  %753 = load i32, ptr %752, align 4, !tbaa !24
  %754 = trunc i32 %753 to i16
  %755 = getelementptr inbounds i16, ptr %682, i64 %751
  store i16 %754, ptr %755, align 2, !tbaa !27
  %756 = getelementptr inbounds i8, ptr %501, i64 13380
  %757 = load i32, ptr %756, align 4, !tbaa !24
  %758 = trunc i32 %757 to i16
  %759 = getelementptr i8, ptr %755, i64 8
  store i16 %758, ptr %759, align 2, !tbaa !27
  %760 = getelementptr inbounds i8, ptr %501, i64 13140
  %761 = load i32, ptr %760, align 4, !tbaa !24
  %762 = trunc i32 %761 to i16
  %763 = getelementptr inbounds i16, ptr %691, i64 %751
  store i16 %762, ptr %763, align 2, !tbaa !27
  %764 = getelementptr inbounds i8, ptr %501, i64 13396
  %765 = load i32, ptr %764, align 4, !tbaa !24
  %766 = trunc i32 %765 to i16
  %767 = getelementptr i8, ptr %763, i64 8
  store i16 %766, ptr %767, align 2, !tbaa !27
  %768 = getelementptr inbounds i8, ptr %501, i64 13188
  %769 = load i32, ptr %768, align 4, !tbaa !24
  %770 = trunc i32 %769 to i16
  %771 = getelementptr inbounds i16, ptr %700, i64 %751
  store i16 %770, ptr %771, align 2, !tbaa !27
  %772 = getelementptr inbounds i8, ptr %501, i64 13444
  %773 = load i32, ptr %772, align 4, !tbaa !24
  %774 = trunc i32 %773 to i16
  %775 = getelementptr i8, ptr %771, i64 8
  store i16 %774, ptr %775, align 2, !tbaa !27
  %776 = getelementptr inbounds i8, ptr %501, i64 13204
  %777 = load i32, ptr %776, align 4, !tbaa !24
  %778 = trunc i32 %777 to i16
  %779 = getelementptr inbounds i16, ptr %709, i64 %751
  store i16 %778, ptr %779, align 2, !tbaa !27
  %780 = getelementptr inbounds i8, ptr %501, i64 13460
  %781 = load i32, ptr %780, align 4, !tbaa !24
  %782 = trunc i32 %781 to i16
  %783 = getelementptr i8, ptr %779, i64 8
  store i16 %782, ptr %783, align 2, !tbaa !27
  %784 = getelementptr inbounds i8, ptr %501, i64 13252
  %785 = load i32, ptr %784, align 4, !tbaa !24
  %786 = trunc i32 %785 to i16
  %787 = getelementptr inbounds i16, ptr %718, i64 %751
  store i16 %786, ptr %787, align 2, !tbaa !27
  %788 = getelementptr inbounds i8, ptr %501, i64 13508
  %789 = load i32, ptr %788, align 4, !tbaa !24
  %790 = trunc i32 %789 to i16
  %791 = getelementptr i8, ptr %787, i64 8
  store i16 %790, ptr %791, align 2, !tbaa !27
  %792 = getelementptr inbounds i8, ptr %501, i64 13268
  %793 = load i32, ptr %792, align 4, !tbaa !24
  %794 = trunc i32 %793 to i16
  %795 = getelementptr inbounds i16, ptr %727, i64 %751
  store i16 %794, ptr %795, align 2, !tbaa !27
  %796 = getelementptr inbounds i8, ptr %501, i64 13524
  %797 = load i32, ptr %796, align 4, !tbaa !24
  %798 = trunc i32 %797 to i16
  %799 = getelementptr i8, ptr %795, i64 8
  store i16 %798, ptr %799, align 2, !tbaa !27
  %800 = getelementptr inbounds i8, ptr %501, i64 13316
  %801 = load i32, ptr %800, align 4, !tbaa !24
  %802 = trunc i32 %801 to i16
  %803 = getelementptr inbounds i16, ptr %736, i64 %751
  store i16 %802, ptr %803, align 2, !tbaa !27
  %804 = getelementptr inbounds i8, ptr %501, i64 13572
  %805 = load i32, ptr %804, align 4, !tbaa !24
  %806 = trunc i32 %805 to i16
  %807 = getelementptr i8, ptr %803, i64 8
  store i16 %806, ptr %807, align 2, !tbaa !27
  %808 = getelementptr inbounds i8, ptr %501, i64 13332
  %809 = load i32, ptr %808, align 4, !tbaa !24
  %810 = trunc i32 %809 to i16
  %811 = getelementptr inbounds i16, ptr %745, i64 %751
  store i16 %810, ptr %811, align 2, !tbaa !27
  %812 = getelementptr inbounds i8, ptr %501, i64 13588
  %813 = load i32, ptr %812, align 4, !tbaa !24
  %814 = trunc i32 %813 to i16
  %815 = getelementptr i8, ptr %811, i64 8
  store i16 %814, ptr %815, align 2, !tbaa !27
  %816 = icmp eq i32 %492, 2
  %817 = select i1 %816, i32 2, i32 %372
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %817

818:                                              ; preds = %510, %933
  %819 = phi i1 [ true, %510 ], [ false, %933 ]
  %820 = phi i64 [ 0, %510 ], [ 4, %933 ]
  %821 = or disjoint i64 %820, 3
  %822 = or disjoint i64 %820, 2
  %823 = or disjoint i64 %820, 1
  %824 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %820, i64 %512
  %825 = load i32, ptr %824, align 4, !tbaa !24
  %826 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %823, i64 %512
  %827 = load i32, ptr %826, align 4, !tbaa !24
  %828 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %822, i64 %512
  %829 = load i32, ptr %828, align 4, !tbaa !24
  %830 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %821, i64 %512
  %831 = load i32, ptr %830, align 4, !tbaa !24
  %832 = add nsw i32 %829, %825
  %833 = sub nsw i32 %825, %829
  %834 = ashr i32 %827, 1
  %835 = sub nsw i32 %834, %831
  %836 = ashr i32 %831, 1
  %837 = add nsw i32 %836, %827
  %838 = add nsw i32 %837, %832
  store i32 %838, ptr %824, align 4, !tbaa !24
  %839 = sub nsw i32 %832, %837
  store i32 %839, ptr %830, align 4, !tbaa !24
  %840 = add nsw i32 %835, %833
  store i32 %840, ptr %826, align 4, !tbaa !24
  %841 = sub nsw i32 %833, %835
  store i32 %841, ptr %828, align 4, !tbaa !24
  %842 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %820, i64 %516
  %843 = load i32, ptr %842, align 4, !tbaa !24
  %844 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %823, i64 %516
  %845 = load i32, ptr %844, align 4, !tbaa !24
  %846 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %822, i64 %516
  %847 = load i32, ptr %846, align 4, !tbaa !24
  %848 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %821, i64 %516
  %849 = load i32, ptr %848, align 4, !tbaa !24
  %850 = add nsw i32 %847, %843
  %851 = sub nsw i32 %843, %847
  %852 = ashr i32 %845, 1
  %853 = sub nsw i32 %852, %849
  %854 = ashr i32 %849, 1
  %855 = add nsw i32 %854, %845
  %856 = add nsw i32 %855, %850
  store i32 %856, ptr %842, align 4, !tbaa !24
  %857 = sub nsw i32 %850, %855
  store i32 %857, ptr %848, align 4, !tbaa !24
  %858 = add nsw i32 %853, %851
  store i32 %858, ptr %844, align 4, !tbaa !24
  %859 = sub nsw i32 %851, %853
  store i32 %859, ptr %846, align 4, !tbaa !24
  %860 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %820, i64 %517
  %861 = load i32, ptr %860, align 4, !tbaa !24
  %862 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %823, i64 %517
  %863 = load i32, ptr %862, align 4, !tbaa !24
  %864 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %822, i64 %517
  %865 = load i32, ptr %864, align 4, !tbaa !24
  %866 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %821, i64 %517
  %867 = load i32, ptr %866, align 4, !tbaa !24
  %868 = add nsw i32 %865, %861
  %869 = sub nsw i32 %861, %865
  %870 = ashr i32 %863, 1
  %871 = sub nsw i32 %870, %867
  %872 = ashr i32 %867, 1
  %873 = add nsw i32 %872, %863
  %874 = add nsw i32 %873, %868
  store i32 %874, ptr %860, align 4, !tbaa !24
  %875 = sub nsw i32 %868, %873
  store i32 %875, ptr %866, align 4, !tbaa !24
  %876 = add nsw i32 %871, %869
  store i32 %876, ptr %862, align 4, !tbaa !24
  %877 = sub nsw i32 %869, %871
  store i32 %877, ptr %864, align 4, !tbaa !24
  %878 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %820, i64 %518
  %879 = load i32, ptr %878, align 4, !tbaa !24
  %880 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %823, i64 %518
  %881 = load i32, ptr %880, align 4, !tbaa !24
  %882 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %822, i64 %518
  %883 = load i32, ptr %882, align 4, !tbaa !24
  %884 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %821, i64 %518
  %885 = load i32, ptr %884, align 4, !tbaa !24
  %886 = add nsw i32 %883, %879
  %887 = sub nsw i32 %879, %883
  %888 = ashr i32 %881, 1
  %889 = sub nsw i32 %888, %885
  %890 = ashr i32 %885, 1
  %891 = add nsw i32 %890, %881
  %892 = add nsw i32 %891, %886
  store i32 %892, ptr %878, align 4, !tbaa !24
  %893 = sub nsw i32 %886, %891
  store i32 %893, ptr %884, align 4, !tbaa !24
  %894 = add nsw i32 %889, %887
  store i32 %894, ptr %880, align 4, !tbaa !24
  %895 = sub nsw i32 %887, %889
  store i32 %895, ptr %882, align 4, !tbaa !24
  br label %896

896:                                              ; preds = %818, %896
  %897 = phi i64 [ %931, %896 ], [ 0, %818 ]
  %898 = or disjoint i64 %897, %820
  %899 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %898, i64 %512
  %900 = load i32, ptr %899, align 4, !tbaa !24
  %901 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %898, i64 %513
  %902 = load i32, ptr %901, align 4, !tbaa !24
  %903 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %898, i64 %514
  %904 = load i32, ptr %903, align 4, !tbaa !24
  %905 = getelementptr inbounds [16 x [16 x i32]], ptr %502, i64 0, i64 %898, i64 %515
  %906 = load i32, ptr %905, align 4, !tbaa !24
  %907 = add nsw i32 %904, %900
  %908 = sub nsw i32 %900, %904
  %909 = ashr i32 %902, 1
  %910 = sub nsw i32 %909, %906
  %911 = ashr i32 %906, 1
  %912 = add nsw i32 %911, %902
  %913 = add i32 %907, 32
  %914 = add i32 %913, %912
  %915 = ashr i32 %914, 6
  %916 = tail call i32 @llvm.smax.i32(i32 %915, i32 0)
  %917 = tail call i32 @llvm.umin.i32(i32 %916, i32 255)
  store i32 %917, ptr %899, align 4, !tbaa !24
  %918 = sub i32 %913, %912
  %919 = ashr i32 %918, 6
  %920 = tail call i32 @llvm.smax.i32(i32 %919, i32 0)
  %921 = tail call i32 @llvm.umin.i32(i32 %920, i32 255)
  store i32 %921, ptr %905, align 4, !tbaa !24
  %922 = add i32 %908, 32
  %923 = add i32 %922, %910
  %924 = ashr i32 %923, 6
  %925 = tail call i32 @llvm.smax.i32(i32 %924, i32 0)
  %926 = tail call i32 @llvm.umin.i32(i32 %925, i32 255)
  store i32 %926, ptr %901, align 4, !tbaa !24
  %927 = sub i32 %922, %910
  %928 = ashr i32 %927, 6
  %929 = tail call i32 @llvm.smax.i32(i32 %928, i32 0)
  %930 = tail call i32 @llvm.umin.i32(i32 %929, i32 255)
  store i32 %930, ptr %903, align 4, !tbaa !24
  %931 = add nuw nsw i64 %897, 1
  %932 = icmp eq i64 %931, 4
  br i1 %932, label %933, label %896

933:                                              ; preds = %896
  br i1 %819, label %818, label %934

934:                                              ; preds = %933
  br i1 %511, label %510, label %519
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!10 = !{!11, !7, i64 6424}
!11 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !12, i64 12}
!14 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !15, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !16, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !16, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !17, i64 90584, !12, i64 90588, !12, i64 90592}
!15 = !{!"float", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!"short", !8, i64 0}
!18 = !{!19, !12, i64 0}
!19 = !{!"pix_pos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!20 = !{!21, !12, i64 220}
!21 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !16, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!22 = !{!14, !7, i64 89192}
!23 = !{!19, !12, i64 4}
!24 = !{!12, !12, i64 0}
!25 = !{!19, !12, i64 20}
!26 = !{!19, !12, i64 16}
!27 = !{!17, !17, i64 0}
!28 = !{!14, !12, i64 90528}
!29 = !{!14, !12, i64 90532}
!30 = !{!14, !7, i64 31576}
!31 = !{!14, !12, i64 90264}
!32 = !{!14, !12, i64 90220}
!33 = !{!34, !12, i64 424}
!34 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !35, i64 368, !8, i64 376, !8, i64 392, !35, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !17, i64 476, !16, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!35 = !{!"long long", !8, i64 0}
!36 = !{!14, !7, i64 14144}
!37 = !{!34, !12, i64 12}
!38 = !{!14, !12, i64 90492}
!39 = !{!14, !12, i64 90552}
!40 = !{!14, !12, i64 172}
!41 = !{!14, !12, i64 90572}
!42 = !{!14, !12, i64 168}
!43 = !{!8, !8, i64 0}
!44 = !{!21, !12, i64 2984}
!45 = !{!14, !12, i64 40}
!46 = !{!14, !7, i64 14136}
!47 = !{!14, !12, i64 90212}
!48 = !{!14, !12, i64 156}
!49 = !{!14, !12, i64 152}
!50 = !{!14, !12, i64 24}
!51 = !{!21, !12, i64 3140}
!52 = !{!34, !12, i64 72}
!53 = !{!14, !12, i64 90540}
!54 = !{!14, !12, i64 90548}
!55 = !{!14, !12, i64 90496}
!56 = !{!14, !12, i64 90560}
!57 = !{!14, !12, i64 90556}
!58 = !{!34, !35, i64 368}
!59 = !{!35, !35, i64 0}
!60 = !{!14, !12, i64 90536}
!61 = !{!14, !12, i64 164}
!62 = !{!14, !12, i64 160}
!63 = !{!11, !7, i64 6464}
!64 = !{!34, !12, i64 16}
!65 = !{!66, !12, i64 208}
!66 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!67 = !{!34, !12, i64 0}
!68 = !{!14, !12, i64 90484}
!69 = !{!70, !12, i64 12}
!70 = !{!"syntaxelement", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32, !7, i64 40}
!71 = !{!70, !12, i64 20}
!72 = !{!14, !12, i64 90488}
!73 = !{!74, !12, i64 4}
!74 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !7, i64 32, !12, i64 40}
!75 = !{!74, !8, i64 8}
!76 = !{!74, !7, i64 32}
!77 = !{!74, !12, i64 0}
!78 = !{!14, !12, i64 44}
!79 = !{!14, !12, i64 89416}
