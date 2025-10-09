; ModuleID = 'getpic.c'
source_filename = "getpic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@oldrefframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@refframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@newframe = external dso_local global [3 x ptr], align 8
@mv_outside_frame = external dso_local local_unnamed_addr global i32, align 4
@edgeframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@coded_picture_width = external dso_local local_unnamed_addr global i32, align 4
@coded_picture_height = external dso_local local_unnamed_addr global i32, align 4
@chrom_width = external dso_local local_unnamed_addr global i32, align 4
@chrom_height = external dso_local local_unnamed_addr global i32, align 4
@pb_frame = external dso_local local_unnamed_addr global i32, align 4
@expand = external dso_local local_unnamed_addr global i32, align 4
@outtype = external dso_local local_unnamed_addr global i32, align 4
@bframe = external dso_local global [3 x ptr], align 8
@exnewframe = external dso_local global [3 x ptr], align 8
@__const.getMBs.DQ_tab = private unnamed_addr constant [4 x i32] [i32 -1, i32 -2, i32 1, i32 2], align 4
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@mb_height = external dso_local local_unnamed_addr global i32, align 4
@newgob = external dso_local local_unnamed_addr global i32, align 4
@MV = external dso_local local_unnamed_addr global [2 x [5 x [73 x [90 x i32]]]], align 4
@modemap = external dso_local local_unnamed_addr global [73 x [90 x i32]], align 4
@fault = external dso_local local_unnamed_addr global i32, align 4
@trace = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"frame %d, MB %d\0A\00", align 1
@syntax_arith_coding = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@quant = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"GQUANT: %d\0A\00", align 1
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@cumf_COD = external dso_local global [0 x i32], align 4
@codtab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"COD Index: %d COD: %d \0A\00", align 1
@cumf_MCBPC = external dso_local global [0 x i32], align 4
@mcbpctab = external dso_local local_unnamed_addr global [0 x i32], align 4
@cumf_MCBPC_intra = external dso_local global [0 x i32], align 4
@mcbpc_intratab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"MCBPC Index: %d MCBPC: %d \0A\00", align 1
@cumf_MODB = external dso_local global [0 x i32], align 4
@modb_tab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"MODB: %d\0A\00", align 1
@cumf_YCBPB = external dso_local global [0 x i32], align 4
@ycbpb_tab = external dso_local local_unnamed_addr global [0 x i32], align 4
@cumf_UVCBPB = external dso_local global [0 x i32], align 4
@uvcbpb_tab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"CBPB = %d\0A\00", align 1
@cumf_CBPY_intra = external dso_local global [0 x i32], align 4
@cbpy_intratab = external dso_local local_unnamed_addr global [0 x i32], align 4
@cumf_CBPY = external dso_local global [0 x i32], align 4
@cbpytab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"CBPY Index: %d CBPY %d \0A\00", align 1
@adv_pred_mode = external dso_local local_unnamed_addr global i32, align 4
@cumf_DQUANT = external dso_local global [0 x i32], align 4
@dquanttab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"DQUANT Index: %d DQUANT %d \0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"DQUANT (\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"): %d = %d\0A\00", align 1
@cumf_MVD = external dso_local global [0 x i32], align 4
@mvdtab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"mvx_index: %d mvy_index: %d \0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"mvx: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"mvy: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"MVDB x: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"MVDB y: %d\0A\00", align 1
@blk_cnt = external dso_local local_unnamed_addr global i32, align 4
@refidct = external dso_local local_unnamed_addr global i32, align 4
@ld = external dso_local local_unnamed_addr global ptr, align 8
@cumf_INTRADC = external dso_local global [0 x i32], align 4
@intradctab = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.22 = private unnamed_addr constant [32 x i8] c"INTRADC Index: %d INTRADC: %d \0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DC[%d]: (\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"): %d\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [27 x i8] c"Illegal DC-coeff: 1000000\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [45 x i8] c"Illegal block number in find_pmv (getpic.c)\0A\00", align 1
@long_vectors = external dso_local local_unnamed_addr global i32, align 4
@clp = external dso_local local_unnamed_addr global ptr, align 8
@trb = external dso_local local_unnamed_addr global i32, align 4
@trd = external dso_local local_unnamed_addr global i32, align 4
@roundtab = external dso_local local_unnamed_addr global [16 x i32], align 4
@str = private unnamed_addr constant [53 x i8] c"Warning: A Fault Condition Has Occurred - Resyncing \00", align 1
@str.27 = private unnamed_addr constant [16 x i8] c"GN out of range\00", align 1
@str.28 = private unnamed_addr constant [27 x i8] c"Arithmetic Decoding Debug \00", align 1
@str.29 = private unnamed_addr constant [50 x i8] c"8x8 vectors not allowed in normal prediction mode\00", align 1
@str.30 = private unnamed_addr constant [33 x i8] c"Quantizer out of range: clipping\00", align 1
@str.31 = private unnamed_addr constant [37 x i8] c"mvx out of range: searching for sync\00", align 1
@str.32 = private unnamed_addr constant [37 x i8] c"mvy out of range: searching for sync\00", align 1

; Function Attrs: nounwind
define dso_local void @getpicture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @oldrefframe, align 8, !tbaa !6
  %3 = load ptr, ptr @refframe, align 8, !tbaa !6
  store ptr %3, ptr @oldrefframe, align 8, !tbaa !6
  store ptr %2, ptr @refframe, align 8, !tbaa !6
  store ptr %2, ptr @newframe, align 8, !tbaa !6
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !6
  %5 = load ptr, ptr getelementptr inbounds (i8, ptr @refframe, i64 8), align 8, !tbaa !6
  store ptr %5, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !6
  store ptr %4, ptr getelementptr inbounds (i8, ptr @refframe, i64 8), align 8, !tbaa !6
  store ptr %4, ptr getelementptr inbounds (i8, ptr @newframe, i64 8), align 8, !tbaa !6
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !6
  %7 = load ptr, ptr getelementptr inbounds (i8, ptr @refframe, i64 16), align 8, !tbaa !6
  store ptr %7, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !6
  store ptr %6, ptr getelementptr inbounds (i8, ptr @refframe, i64 16), align 8, !tbaa !6
  store ptr %6, ptr getelementptr inbounds (i8, ptr @newframe, i64 16), align 8, !tbaa !6
  %8 = load i32, ptr @mv_outside_frame, align 4, !tbaa !10
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %0, align 4, !tbaa !10
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load ptr, ptr @edgeframe, align 8, !tbaa !6
  %15 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %16 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  tail call fastcc void @make_edge_image(ptr noundef %3, ptr noundef %14, i32 noundef signext %15, i32 noundef signext %16, i32 noundef signext 32)
  %17 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !6
  %18 = load ptr, ptr getelementptr inbounds (i8, ptr @edgeframe, i64 8), align 8, !tbaa !6
  %19 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %20 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call fastcc void @make_edge_image(ptr noundef %17, ptr noundef %18, i32 noundef signext %19, i32 noundef signext %20, i32 noundef signext 16)
  %21 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !6
  %22 = load ptr, ptr getelementptr inbounds (i8, ptr @edgeframe, i64 16), align 8, !tbaa !6
  %23 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %24 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call fastcc void @make_edge_image(ptr noundef %21, ptr noundef %22, i32 noundef signext %23, i32 noundef signext %24, i32 noundef signext 16)
  %25 = load i32, ptr %0, align 4, !tbaa !10
  br label %26

26:                                               ; preds = %13, %1
  %27 = phi i32 [ %25, %13 ], [ %10, %1 ]
  %28 = load i32, ptr @mb_width, align 4, !tbaa !10
  %29 = load i32, ptr @mb_height, align 4, !tbaa !10
  %30 = mul nsw i32 %29, %28
  store i32 0, ptr @newgob, align 4, !tbaa !10
  %31 = icmp slt i32 %28, 1
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = add nuw i32 %28, 1
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 1, %32 ], [ %48, %35 ]
  %37 = getelementptr inbounds [90 x i32], ptr @MV, i64 0, i64 %36
  %38 = getelementptr inbounds [90 x i32], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %36
  store i32 999, ptr %37, align 4, !tbaa !10
  store i32 999, ptr %38, align 4, !tbaa !10
  %39 = getelementptr inbounds i8, ptr %37, i64 26280
  store i32 999, ptr %39, align 4, !tbaa !10
  %40 = getelementptr inbounds i8, ptr %38, i64 26280
  store i32 999, ptr %40, align 4, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %37, i64 52560
  store i32 999, ptr %41, align 4, !tbaa !10
  %42 = getelementptr inbounds i8, ptr %38, i64 52560
  store i32 999, ptr %42, align 4, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %37, i64 78840
  store i32 999, ptr %43, align 4, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %38, i64 78840
  store i32 999, ptr %44, align 4, !tbaa !10
  %45 = getelementptr inbounds i8, ptr %37, i64 105120
  store i32 999, ptr %45, align 4, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %38, i64 105120
  store i32 999, ptr %46, align 4, !tbaa !10
  %47 = getelementptr inbounds [90 x i32], ptr @modemap, i64 0, i64 %36
  store i32 3, ptr %47, align 4, !tbaa !10
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, %34
  br i1 %49, label %50, label %35

50:                                               ; preds = %35, %26
  %51 = icmp slt i32 %29, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %28, 1
  %54 = sext i32 %53 to i64
  %55 = add nuw i32 %29, 1
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %57, %52
  %58 = phi i64 [ 0, %52 ], [ %81, %57 ]
  %59 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 0, i64 %58
  store i32 0, ptr %59, align 4, !tbaa !10
  %60 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 0, i64 %58
  store i32 0, ptr %60, align 4, !tbaa !10
  %61 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 0, i64 %58, i64 %54
  store i32 0, ptr %61, align 4, !tbaa !10
  %62 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 0, i64 %58, i64 %54
  store i32 0, ptr %62, align 4, !tbaa !10
  %63 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 1, i64 %58
  store i32 0, ptr %63, align 4, !tbaa !10
  %64 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 1, i64 %58
  store i32 0, ptr %64, align 4, !tbaa !10
  %65 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 1, i64 %58, i64 %54
  store i32 0, ptr %65, align 4, !tbaa !10
  %66 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 1, i64 %58, i64 %54
  store i32 0, ptr %66, align 4, !tbaa !10
  %67 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 2, i64 %58
  store i32 0, ptr %67, align 4, !tbaa !10
  %68 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 2, i64 %58
  store i32 0, ptr %68, align 4, !tbaa !10
  %69 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 2, i64 %58, i64 %54
  store i32 0, ptr %69, align 4, !tbaa !10
  %70 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 2, i64 %58, i64 %54
  store i32 0, ptr %70, align 4, !tbaa !10
  %71 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 3, i64 %58
  store i32 0, ptr %71, align 4, !tbaa !10
  %72 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 3, i64 %58
  store i32 0, ptr %72, align 4, !tbaa !10
  %73 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 3, i64 %58, i64 %54
  store i32 0, ptr %73, align 4, !tbaa !10
  %74 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 3, i64 %58, i64 %54
  store i32 0, ptr %74, align 4, !tbaa !10
  %75 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 4, i64 %58
  store i32 0, ptr %75, align 4, !tbaa !10
  %76 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 4, i64 %58
  store i32 0, ptr %76, align 4, !tbaa !10
  %77 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 4, i64 %58, i64 %54
  store i32 0, ptr %77, align 4, !tbaa !10
  %78 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 4, i64 %58, i64 %54
  store i32 0, ptr %78, align 4, !tbaa !10
  %79 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %58
  store i32 3, ptr %79, align 4, !tbaa !10
  %80 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %58, i64 %54
  store i32 3, ptr %80, align 4, !tbaa !10
  %81 = add nuw nsw i64 %58, 1
  %82 = icmp eq i64 %81, %56
  br i1 %82, label %83, label %57

83:                                               ; preds = %57, %50
  store i32 0, ptr @fault, align 4, !tbaa !10
  br label %84

84:                                               ; preds = %1977, %83
  %85 = phi i32 [ 0, %83 ], [ %730, %1977 ]
  %86 = phi i32 [ 0, %83 ], [ %733, %1977 ]
  %87 = phi i32 [ 0, %83 ], [ %734, %1977 ]
  %88 = phi i32 [ undef, %83 ], [ %733, %1977 ]
  %89 = phi i32 [ undef, %83 ], [ %734, %1977 ]
  %90 = phi i32 [ 0, %83 ], [ %1979, %1977 ]
  %91 = phi i32 [ 0, %83 ], [ %753, %1977 ]
  %92 = phi i32 [ 0, %83 ], [ %732, %1977 ]
  %93 = phi i32 [ 0, %83 ], [ %731, %1977 ]
  %94 = phi i32 [ 0, %83 ], [ %751, %1977 ]
  %95 = load i32, ptr @trace, align 4, !tbaa !10
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %27, i32 noundef signext %90)
  br label %99

99:                                               ; preds = %97, %84
  %100 = load i32, ptr @fault, align 4, !tbaa !10
  br label %103

101:                                              ; preds = %1942, %1974
  %102 = phi i32 [ %1975, %1974 ], [ %1943, %1942 ]
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = phi i32 [ %85, %99 ], [ %730, %101 ]
  %106 = phi i32 [ %93, %99 ], [ %731, %101 ]
  %107 = phi i32 [ %86, %99 ], [ %733, %101 ]
  %108 = phi i32 [ %87, %99 ], [ %734, %101 ]
  %109 = phi i32 [ %88, %99 ], [ %749, %101 ]
  %110 = phi i32 [ %89, %99 ], [ %750, %101 ]
  %111 = phi i32 [ %90, %99 ], [ %752, %101 ]
  %112 = phi i32 [ %91, %99 ], [ %753, %101 ]
  %113 = phi i32 [ %92, %99 ], [ %754, %101 ]
  %114 = phi i32 [ %93, %99 ], [ %755, %101 ]
  %115 = phi i32 [ %94, %99 ], [ %756, %101 ]
  br label %116

116:                                              ; preds = %696, %103
  %117 = phi i32 [ %699, %696 ], [ %104, %103 ]
  %118 = phi i32 [ %324, %696 ], [ %105, %103 ]
  %119 = phi i32 [ %325, %696 ], [ %106, %103 ]
  %120 = phi i32 [ %697, %696 ], [ %107, %103 ]
  %121 = phi i32 [ %698, %696 ], [ %108, %103 ]
  %122 = phi i32 [ %195, %696 ], [ %111, %103 ]
  br label %123

123:                                              ; preds = %249, %116
  %124 = phi i32 [ %117, %116 ], [ 1, %249 ]
  %125 = phi i32 [ %122, %116 ], [ %195, %249 ]
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @startcode() #9
  store i32 0, ptr @fault, align 4, !tbaa !10
  br label %129

129:                                              ; preds = %127, %123
  %130 = tail call signext i32 @showbits(i32 noundef signext 22) #9
  %131 = icmp ult i32 %130, 64
  br i1 %131, label %132, label %183

132:                                              ; preds = %129
  tail call void @startcode() #9
  %133 = tail call signext i32 @showbits(i32 noundef signext 22) #9
  %134 = icmp eq i32 %133, 63
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %137 = icmp ne i32 %136, 0
  %138 = icmp slt i32 %125, %30
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %183, label %1985

140:                                              ; preds = %132
  %141 = tail call signext i32 @showbits(i32 noundef signext 22) #9
  %142 = icmp eq i32 %141, 32
  %143 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  br i1 %142, label %144, label %148

144:                                              ; preds = %140
  %145 = icmp ne i32 %143, 0
  %146 = icmp slt i32 %125, %30
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %183, label %1985

148:                                              ; preds = %140
  %149 = icmp eq i32 %143, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %148
  %151 = load i32, ptr @mb_width, align 4, !tbaa !10
  %152 = srem i32 %125, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = tail call signext i32 @showbits(i32 noundef signext 22) #9
  %156 = and i32 %155, 31
  %157 = load i32, ptr @mb_width, align 4, !tbaa !10
  %158 = mul nsw i32 %156, %157
  %159 = icmp eq i32 %158, %125
  br i1 %159, label %160, label %183

160:                                              ; preds = %154, %148
  %161 = tail call signext i32 @getheader() #9
  %162 = add nsw i32 %161, -1
  %163 = load i32, ptr @mb_height, align 4, !tbaa !10
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i32, ptr @quiet, align 4, !tbaa !10
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %1985

168:                                              ; preds = %165
  %169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %1985

170:                                              ; preds = %160
  %171 = tail call signext i32 @getbits(i32 noundef signext 2) #9
  %172 = tail call signext i32 @getbits(i32 noundef signext 5) #9
  store i32 %172, ptr @quant, align 4, !tbaa !10
  %173 = load i32, ptr @trace, align 4, !tbaa !10
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %172)
  br label %177

177:                                              ; preds = %175, %170
  %178 = load i32, ptr @mb_width, align 4, !tbaa !10
  %179 = mul nsw i32 %178, %162
  store i32 1, ptr @newgob, align 4, !tbaa !10
  %180 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %177
  tail call void @decoder_reset() #9
  br label %194

183:                                              ; preds = %154, %150, %144, %135, %129
  %184 = load i32, ptr @mb_width, align 4, !tbaa !10
  %185 = freeze i32 %125
  %186 = freeze i32 %184
  %187 = sdiv i32 %185, %186
  %188 = mul i32 %187, %186
  %189 = sub i32 %185, %188
  %190 = icmp eq i32 %189, 0
  %191 = icmp sgt i32 %187, 0
  %192 = and i1 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  store i32 0, ptr @newgob, align 4, !tbaa !10
  br label %194

194:                                              ; preds = %193, %183, %182, %177
  %195 = phi i32 [ %125, %193 ], [ %125, %183 ], [ %179, %182 ], [ %179, %177 ]
  %196 = phi i32 [ 0, %193 ], [ %189, %183 ], [ 0, %182 ], [ 0, %177 ]
  %197 = phi i32 [ %187, %193 ], [ %187, %183 ], [ %162, %182 ], [ %162, %177 ]
  %198 = icmp slt i32 %195, %30
  br i1 %198, label %199, label %1985

199:                                              ; preds = %194, %253
  %200 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %201 = icmp eq i32 %200, 0
  %202 = load i32, ptr @pict_type, align 4, !tbaa !10
  %203 = icmp eq i32 %202, 1
  br i1 %201, label %215, label %204

204:                                              ; preds = %199
  br i1 %203, label %205, label %227

205:                                              ; preds = %204
  %206 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_COD) #9
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i32], ptr @codtab, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !10
  %210 = load i32, ptr @trace, align 4, !tbaa !10
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %205
  %213 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %214 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef signext %206, i32 noundef signext %209)
  br label %218

215:                                              ; preds = %199
  br i1 %203, label %216, label %242

216:                                              ; preds = %215
  %217 = tail call signext i32 @showbits(i32 noundef signext 1) #9
  br label %218

218:                                              ; preds = %216, %212, %205
  %219 = phi i32 [ %209, %212 ], [ %209, %205 ], [ %217, %216 ]
  %220 = icmp eq i32 %219, 0
  %221 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %222 = icmp eq i32 %221, 0
  %223 = load i32, ptr @pict_type, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %220, label %225, label %701

225:                                              ; preds = %218
  br i1 %222, label %239, label %226

226:                                              ; preds = %225
  br i1 %224, label %228, label %227

227:                                              ; preds = %226, %204
  br label %228

228:                                              ; preds = %226, %227
  %229 = phi ptr [ @cumf_MCBPC_intra, %227 ], [ @cumf_MCBPC, %226 ]
  %230 = phi ptr [ @mcbpc_intratab, %227 ], [ @mcbpctab, %226 ]
  %231 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull %229) #9
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [0 x i32], ptr %230, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !10
  %235 = load i32, ptr @trace, align 4, !tbaa !10
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %228
  %238 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef signext %231, i32 noundef signext %234)
  br label %249

239:                                              ; preds = %225
  br i1 %224, label %240, label %242

240:                                              ; preds = %239
  tail call void @flushbits(i32 noundef signext 1) #9
  %241 = load i32, ptr @pict_type, align 4, !tbaa !10
  br label %242

242:                                              ; preds = %240, %239, %215
  %243 = phi i32 [ %241, %240 ], [ %223, %239 ], [ %202, %215 ]
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = tail call signext i32 @getMCBPCintra() #9
  br label %249

247:                                              ; preds = %242
  %248 = tail call signext i32 @getMCBPC() #9
  br label %249

249:                                              ; preds = %247, %245, %237, %228
  %250 = phi i32 [ %234, %237 ], [ %234, %228 ], [ %246, %245 ], [ %248, %247 ]
  %251 = load i32, ptr @fault, align 4, !tbaa !10
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %123

253:                                              ; preds = %249
  %254 = icmp eq i32 %250, 255
  br i1 %254, label %199, label %255

255:                                              ; preds = %253
  %256 = and i32 %250, 7
  %257 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %323, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_MODB) #9
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [0 x i32], ptr @modb_tab, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !10
  br label %269

267:                                              ; preds = %259
  %268 = tail call signext i32 @getMODB() #9
  br label %269

269:                                              ; preds = %267, %262
  %270 = phi i32 [ %266, %262 ], [ %268, %267 ]
  %271 = load i32, ptr @trace, align 4, !tbaa !10
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef signext %270)
  br label %275

275:                                              ; preds = %273, %269
  %276 = icmp eq i32 %270, 2
  br i1 %276, label %277, label %323

277:                                              ; preds = %275
  %278 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %315, label %280

280:                                              ; preds = %277
  %281 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_YCBPB) #9
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [0 x i32], ptr @ycbpb_tab, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !10
  %285 = shl i32 %284, 5
  %286 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_YCBPB) #9
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [0 x i32], ptr @ycbpb_tab, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !10
  %290 = shl i32 %289, 4
  %291 = or i32 %290, %285
  %292 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_YCBPB) #9
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [0 x i32], ptr @ycbpb_tab, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !10
  %296 = shl i32 %295, 3
  %297 = or i32 %291, %296
  %298 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_YCBPB) #9
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [0 x i32], ptr @ycbpb_tab, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !10
  %302 = shl i32 %301, 2
  %303 = or i32 %297, %302
  %304 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_UVCBPB) #9
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @uvcbpb_tab, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !10
  %308 = shl i32 %307, 1
  %309 = or i32 %303, %308
  %310 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_UVCBPB) #9
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [0 x i32], ptr @uvcbpb_tab, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !10
  %314 = or i32 %309, %313
  br label %317

315:                                              ; preds = %277
  %316 = tail call signext i32 @getbits(i32 noundef signext 6) #9
  br label %317

317:                                              ; preds = %315, %280
  %318 = phi i32 [ %316, %315 ], [ %314, %280 ]
  %319 = load i32, ptr @trace, align 4, !tbaa !10
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %317
  %322 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef signext %318)
  br label %323

323:                                              ; preds = %321, %317, %275, %255
  %324 = phi i32 [ 2, %321 ], [ 2, %317 ], [ %270, %275 ], [ %118, %255 ]
  %325 = phi i32 [ %318, %321 ], [ %318, %317 ], [ 0, %275 ], [ %119, %255 ]
  %326 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %341, label %328

328:                                              ; preds = %323
  %329 = add nsw i32 %256, -3
  %330 = icmp ult i32 %329, 2
  %331 = select i1 %330, ptr @cumf_CBPY_intra, ptr @cumf_CBPY
  %332 = select i1 %330, ptr @cbpy_intratab, ptr @cbpytab
  %333 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull %331) #9
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [0 x i32], ptr %332, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !10
  %337 = load i32, ptr @trace, align 4, !tbaa !10
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %328
  %340 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef signext %333, i32 noundef signext %336)
  br label %343

341:                                              ; preds = %323
  %342 = tail call signext i32 @getCBPY() #9
  br label %343

343:                                              ; preds = %341, %339, %328
  %344 = phi i32 [ %336, %339 ], [ %336, %328 ], [ %342, %341 ]
  %345 = load i32, ptr @syntax_arith_coding, align 4
  %346 = icmp ne i32 %256, 2
  %347 = load i32, ptr @adv_pred_mode, align 4
  %348 = icmp ne i32 %347, 0
  %349 = select i1 %346, i1 true, i1 %348
  %350 = load i32, ptr @quiet, align 4
  %351 = icmp ne i32 %350, 0
  %352 = select i1 %349, i1 true, i1 %351
  br i1 %352, label %355, label %353

353:                                              ; preds = %343
  %354 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  br label %401

355:                                              ; preds = %343
  switch i32 %256, label %396 [
    i32 4, label %356
    i32 1, label %356
  ]

356:                                              ; preds = %355, %355
  %357 = icmp eq i32 %345, 0
  br i1 %357, label %370, label %358

358:                                              ; preds = %356
  %359 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_DQUANT) #9
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [0 x i32], ptr @dquanttab, i64 0, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !10
  %363 = add nsw i32 %362, -2
  %364 = load i32, ptr @quant, align 4, !tbaa !10
  %365 = add nsw i32 %364, %363
  store i32 %365, ptr @quant, align 4, !tbaa !10
  %366 = load i32, ptr @trace, align 4, !tbaa !10
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %382, label %368

368:                                              ; preds = %358
  %369 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef signext %359, i32 noundef signext %363)
  br label %382

370:                                              ; preds = %356
  %371 = tail call signext i32 @getbits(i32 noundef signext 2) #9
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [4 x i32], ptr @__const.getMBs.DQ_tab, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !10
  %375 = load i32, ptr @quant, align 4, !tbaa !10
  %376 = add nsw i32 %375, %374
  store i32 %376, ptr @quant, align 4, !tbaa !10
  %377 = load i32, ptr @trace, align 4, !tbaa !10
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %370
  %380 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12)
  tail call void @printbits(i32 noundef signext %371, i32 noundef signext 2, i32 noundef signext 2) #9
  %381 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef signext %371, i32 noundef signext %374)
  br label %382

382:                                              ; preds = %379, %370, %368, %358
  %383 = load i32, ptr @quant, align 4
  %384 = add i32 %383, -32
  %385 = icmp ult i32 %384, -31
  br i1 %385, label %386, label %396

386:                                              ; preds = %382
  %387 = load i32, ptr @quiet, align 4, !tbaa !10
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  %391 = load i32, ptr @quant, align 4
  br label %392

392:                                              ; preds = %389, %386
  %393 = phi i32 [ %391, %389 ], [ %383, %386 ]
  %394 = tail call i32 @llvm.smin.i32(i32 %393, i32 31)
  %395 = tail call i32 @llvm.smax.i32(i32 %394, i32 1)
  store i32 %395, ptr @quant, align 4, !tbaa !10
  br label %396

396:                                              ; preds = %392, %382, %355
  %397 = icmp ult i32 %256, 3
  %398 = load i32, ptr @pb_frame, align 4
  %399 = icmp ne i32 %398, 0
  %400 = select i1 %397, i1 true, i1 %399
  br i1 %400, label %401, label %696

401:                                              ; preds = %396, %353
  %402 = icmp eq i32 %256, 2
  %403 = add nsw i32 %196, 1
  %404 = add nsw i32 %197, 1
  %405 = sext i32 %404 to i64
  %406 = sext i32 %196 to i64
  %407 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %405, i64 %406
  %408 = sext i32 %197 to i64
  %409 = sext i32 %403 to i64
  %410 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %408, i64 %409
  %411 = add nsw i32 %196, 2
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %408, i64 %412
  %414 = shl i32 %196, 4
  %415 = shl i32 %197, 4
  %416 = zext i1 %402 to i64
  br label %417

417:                                              ; preds = %633, %401
  %418 = phi i64 [ %416, %401 ], [ %636, %633 ]
  %419 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %434, label %421

421:                                              ; preds = %417
  %422 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_MVD) #9
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [0 x i32], ptr @mvdtab, i64 0, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !10
  %426 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_MVD) #9
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [0 x i32], ptr @mvdtab, i64 0, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !10
  %430 = load i32, ptr @trace, align 4, !tbaa !10
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %421
  %433 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef signext %426, i32 noundef signext %422)
  br label %437

434:                                              ; preds = %417
  %435 = tail call signext i32 @getTMNMV() #9
  %436 = tail call signext i32 @getTMNMV() #9
  br label %437

437:                                              ; preds = %434, %432, %421
  %438 = phi i32 [ %425, %432 ], [ %425, %421 ], [ %435, %434 ]
  %439 = phi i32 [ %429, %432 ], [ %429, %421 ], [ %436, %434 ]
  %440 = load i32, ptr %407, align 4, !tbaa !10
  %441 = icmp eq i32 %440, 2
  %442 = load i32, ptr %410, align 4, !tbaa !10
  %443 = icmp eq i32 %442, 2
  %444 = load i32, ptr %413, align 4, !tbaa !10
  %445 = icmp eq i32 %444, 2
  %446 = trunc i64 %418 to i32
  switch i32 %446, label %460 [
    i32 0, label %447
    i32 1, label %451
    i32 2, label %455
    i32 3, label %458
    i32 4, label %463
  ]

447:                                              ; preds = %437
  %448 = select i1 %441, i64 2, i64 0
  %449 = select i1 %443, i64 3, i64 0
  %450 = select i1 %445, i64 3, i64 0
  br label %463

451:                                              ; preds = %437
  %452 = select i1 %441, i64 2, i64 0
  %453 = select i1 %443, i64 3, i64 0
  %454 = select i1 %445, i64 3, i64 0
  br label %463

455:                                              ; preds = %437
  %456 = select i1 %443, i64 4, i64 0
  %457 = select i1 %445, i64 3, i64 0
  br label %463

458:                                              ; preds = %437
  %459 = select i1 %441, i64 4, i64 0
  br label %463

460:                                              ; preds = %437
  %461 = load ptr, ptr @stderr, align 8, !tbaa !6
  %462 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 44, i64 1, ptr %461) #10
  tail call void @exit(i32 noundef signext 1) #11
  unreachable

463:                                              ; preds = %458, %455, %451, %447, %437
  %464 = phi i64 [ %409, %437 ], [ %409, %458 ], [ %412, %455 ], [ %412, %451 ], [ %412, %447 ]
  %465 = phi i64 [ %405, %437 ], [ %405, %458 ], [ %408, %455 ], [ %408, %451 ], [ %408, %447 ]
  %466 = phi i64 [ %409, %437 ], [ %406, %458 ], [ %409, %455 ], [ %406, %451 ], [ %406, %447 ]
  %467 = phi i64 [ 3, %437 ], [ %459, %458 ], [ 1, %455 ], [ %452, %451 ], [ %448, %447 ]
  %468 = phi i64 [ 1, %437 ], [ 1, %458 ], [ %456, %455 ], [ %453, %451 ], [ %449, %447 ]
  %469 = phi i64 [ 2, %437 ], [ 2, %458 ], [ %457, %455 ], [ %454, %451 ], [ %450, %447 ]
  %470 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 0, i64 %467, i64 %405, i64 %466
  %471 = load i32, ptr %470, align 4, !tbaa !10
  %472 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 0, i64 %468, i64 %465, i64 %409
  %473 = load i32, ptr %472, align 4, !tbaa !10
  %474 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 0, i64 %469, i64 %465, i64 %464
  %475 = load i32, ptr %474, align 4, !tbaa !10
  %476 = load i32, ptr @newgob, align 4, !tbaa !10
  %477 = icmp ne i32 %476, 0
  %478 = icmp ult i64 %418, 3
  %479 = and i1 %478, %477
  %480 = select i1 %479, i32 999, i32 %473
  %481 = icmp eq i32 %480, 999
  %482 = select i1 %481, i32 %471, i32 %475
  %483 = select i1 %481, i32 %471, i32 %480
  %484 = tail call i32 @llvm.smax.i32(i32 %483, i32 %482)
  %485 = tail call i32 @llvm.smax.i32(i32 %471, i32 %484)
  %486 = tail call i32 @llvm.smin.i32(i32 %483, i32 %482)
  %487 = tail call i32 @llvm.smin.i32(i32 %471, i32 %486)
  %488 = add i32 %483, %471
  %489 = add i32 %488, %482
  %490 = add i32 %487, %485
  %491 = sub i32 %489, %490
  switch i32 %446, label %505 [
    i32 0, label %492
    i32 1, label %496
    i32 2, label %500
    i32 3, label %503
    i32 4, label %508
  ]

492:                                              ; preds = %463
  %493 = select i1 %441, i64 2, i64 0
  %494 = select i1 %443, i64 3, i64 0
  %495 = select i1 %445, i64 3, i64 0
  br label %508

496:                                              ; preds = %463
  %497 = select i1 %441, i64 2, i64 0
  %498 = select i1 %443, i64 3, i64 0
  %499 = select i1 %445, i64 3, i64 0
  br label %508

500:                                              ; preds = %463
  %501 = select i1 %443, i64 4, i64 0
  %502 = select i1 %445, i64 3, i64 0
  br label %508

503:                                              ; preds = %463
  %504 = select i1 %441, i64 4, i64 0
  br label %508

505:                                              ; preds = %463
  %506 = load ptr, ptr @stderr, align 8, !tbaa !6
  %507 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 44, i64 1, ptr %506) #10
  tail call void @exit(i32 noundef signext 1) #11
  unreachable

508:                                              ; preds = %503, %500, %496, %492, %463
  %509 = phi i64 [ %409, %463 ], [ %409, %503 ], [ %412, %500 ], [ %412, %496 ], [ %412, %492 ]
  %510 = phi i64 [ %405, %463 ], [ %405, %503 ], [ %408, %500 ], [ %408, %496 ], [ %408, %492 ]
  %511 = phi i64 [ %409, %463 ], [ %406, %503 ], [ %409, %500 ], [ %406, %496 ], [ %406, %492 ]
  %512 = phi i64 [ 3, %463 ], [ %504, %503 ], [ 1, %500 ], [ %497, %496 ], [ %493, %492 ]
  %513 = phi i64 [ 1, %463 ], [ 1, %503 ], [ %501, %500 ], [ %498, %496 ], [ %494, %492 ]
  %514 = phi i64 [ 2, %463 ], [ 2, %503 ], [ %502, %500 ], [ %499, %496 ], [ %495, %492 ]
  %515 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 1, i64 %512, i64 %405, i64 %511
  %516 = load i32, ptr %515, align 4, !tbaa !10
  %517 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 1, i64 %513, i64 %510, i64 %409
  %518 = load i32, ptr %517, align 4, !tbaa !10
  %519 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], ptr @MV, i64 0, i64 1, i64 %514, i64 %510, i64 %509
  %520 = load i32, ptr %519, align 4, !tbaa !10
  %521 = select i1 %479, i32 999, i32 %518
  %522 = icmp eq i32 %521, 999
  %523 = select i1 %522, i32 %516, i32 %520
  %524 = select i1 %522, i32 %516, i32 %521
  %525 = tail call i32 @llvm.smax.i32(i32 %524, i32 %523)
  %526 = tail call i32 @llvm.smax.i32(i32 %516, i32 %525)
  %527 = tail call i32 @llvm.smin.i32(i32 %524, i32 %523)
  %528 = tail call i32 @llvm.smin.i32(i32 %516, i32 %527)
  %529 = add i32 %524, %516
  %530 = add i32 %529, %523
  %531 = add i32 %528, %526
  %532 = sub i32 %530, %531
  %533 = icmp sgt i32 %438, 31
  %534 = add nsw i32 %438, -64
  %535 = select i1 %533, i32 %534, i32 %438
  %536 = add nsw i32 %491, %535
  %537 = load i32, ptr @long_vectors, align 4, !tbaa !10
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %508
  %540 = icmp sgt i32 %536, 31
  %541 = add nsw i32 %536, -64
  %542 = select i1 %540, i32 %541, i32 %536
  %543 = icmp slt i32 %542, -32
  %544 = add nsw i32 %542, 64
  %545 = select i1 %543, i32 %544, i32 %542
  %546 = icmp sgt i32 %439, 31
  %547 = add nsw i32 %439, -64
  %548 = select i1 %546, i32 %547, i32 %439
  %549 = add nsw i32 %532, %548
  %550 = icmp sgt i32 %549, 31
  %551 = add nsw i32 %549, -64
  %552 = select i1 %550, i32 %551, i32 %549
  %553 = icmp slt i32 %552, -32
  %554 = add nsw i32 %552, 64
  %555 = select i1 %553, i32 %554, i32 %552
  br label %581

556:                                              ; preds = %508
  %557 = icmp slt i32 %491, -31
  %558 = icmp slt i32 %536, -63
  %559 = select i1 %557, i1 %558, i1 false
  %560 = add nsw i32 %536, 64
  %561 = select i1 %559, i32 %560, i32 %536
  %562 = icmp sgt i32 %491, 32
  %563 = icmp sgt i32 %561, 63
  %564 = select i1 %562, i1 %563, i1 false
  %565 = add nsw i32 %561, -64
  %566 = select i1 %564, i32 %565, i32 %561
  %567 = icmp sgt i32 %439, 31
  %568 = add nsw i32 %439, -64
  %569 = select i1 %567, i32 %568, i32 %439
  %570 = add nsw i32 %532, %569
  %571 = icmp slt i32 %532, -31
  %572 = icmp slt i32 %570, -63
  %573 = select i1 %571, i1 %572, i1 false
  %574 = add nsw i32 %570, 64
  %575 = select i1 %573, i32 %574, i32 %570
  %576 = icmp sgt i32 %532, 32
  %577 = icmp sgt i32 %575, 63
  %578 = select i1 %576, i1 %577, i1 false
  %579 = add nsw i32 %575, -64
  %580 = select i1 %578, i32 %579, i32 %575
  br label %581

581:                                              ; preds = %556, %539
  %582 = phi i32 [ %545, %539 ], [ %566, %556 ]
  %583 = phi i32 [ %555, %539 ], [ %580, %556 ]
  %584 = load i32, ptr @trace, align 4, !tbaa !10
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %589, label %586

586:                                              ; preds = %581
  %587 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef signext %582)
  %588 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef signext %583)
  br label %589

589:                                              ; preds = %586, %581
  %590 = load i32, ptr @mv_outside_frame, align 4, !tbaa !10
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %633

592:                                              ; preds = %589
  %593 = icmp eq i64 %418, 0
  %594 = select i1 %593, i32 16, i32 8
  %595 = add nsw i32 %446, -1
  %596 = shl nsw i32 %595, 3
  %597 = and i32 %596, 8
  %598 = select i1 %593, i32 0, i32 %597
  %599 = sdiv i32 %582, 2
  %600 = or disjoint i32 %598, %414
  %601 = add i32 %600, %599
  %602 = icmp slt i32 %601, 0
  br i1 %602, label %608, label %603

603:                                              ; preds = %592
  %604 = load i32, ptr @mb_width, align 4, !tbaa !10
  %605 = shl i32 %604, 4
  %606 = sub nsw i32 %605, %594
  %607 = icmp sgt i32 %601, %606
  br i1 %607, label %608, label %614

608:                                              ; preds = %603, %592
  %609 = load i32, ptr @quiet, align 4, !tbaa !10
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %608
  %612 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %613

613:                                              ; preds = %611, %608
  store i32 1, ptr @fault, align 4, !tbaa !10
  br label %614

614:                                              ; preds = %613, %603
  %615 = shl nsw i32 %595, 2
  %616 = and i32 %615, 8
  %617 = select i1 %593, i32 0, i32 %616
  %618 = sdiv i32 %583, 2
  %619 = or disjoint i32 %617, %415
  %620 = add i32 %619, %618
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %627, label %622

622:                                              ; preds = %614
  %623 = load i32, ptr @mb_height, align 4, !tbaa !10
  %624 = shl i32 %623, 4
  %625 = sub nsw i32 %624, %594
  %626 = icmp sgt i32 %620, %625
  br i1 %626, label %627, label %633

627:                                              ; preds = %622, %614
  %628 = load i32, ptr @quiet, align 4, !tbaa !10
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %627
  %631 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %632

632:                                              ; preds = %630, %627
  store i32 1, ptr @fault, align 4, !tbaa !10
  br label %633

633:                                              ; preds = %632, %622, %589
  %634 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %418, i64 %405, i64 %409
  store i32 %582, ptr %634, align 4, !tbaa !10
  %635 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %418, i64 %405, i64 %409
  store i32 %583, ptr %635, align 4, !tbaa !10
  %636 = add nuw nsw i64 %418, 1
  %637 = icmp ult i64 %418, 4
  %638 = select i1 %402, i1 %637, i1 false
  br i1 %638, label %417, label %639

639:                                              ; preds = %633
  %640 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %696, label %642

642:                                              ; preds = %639
  %643 = add i32 %324, -1
  %644 = icmp ult i32 %643, 2
  br i1 %644, label %645, label %696

645:                                              ; preds = %642
  %646 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %657, label %648

648:                                              ; preds = %645
  %649 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_MVD) #9
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [0 x i32], ptr @mvdtab, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !10
  %653 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_MVD) #9
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [0 x i32], ptr @mvdtab, i64 0, i64 %654
  %656 = load i32, ptr %655, align 4, !tbaa !10
  br label %660

657:                                              ; preds = %645
  %658 = tail call signext i32 @getTMNMV() #9
  %659 = tail call signext i32 @getTMNMV() #9
  br label %660

660:                                              ; preds = %657, %648
  %661 = phi i32 [ %652, %648 ], [ %658, %657 ]
  %662 = phi i32 [ %656, %648 ], [ %659, %657 ]
  %663 = icmp sgt i32 %661, 31
  %664 = add nsw i32 %661, -64
  %665 = select i1 %663, i32 %664, i32 %661
  %666 = load i32, ptr @long_vectors, align 4, !tbaa !10
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %684

668:                                              ; preds = %660
  %669 = icmp sgt i32 %665, 31
  %670 = add nsw i32 %665, -64
  %671 = select i1 %669, i32 %670, i32 %665
  %672 = icmp slt i32 %671, -32
  %673 = add nsw i32 %671, 64
  %674 = select i1 %672, i32 %673, i32 %671
  %675 = icmp sgt i32 %662, 31
  %676 = add nsw i32 %662, -64
  %677 = select i1 %675, i32 %676, i32 %662
  %678 = icmp sgt i32 %677, 31
  %679 = add nsw i32 %677, -64
  %680 = select i1 %678, i32 %679, i32 %677
  %681 = icmp slt i32 %680, -32
  %682 = add nsw i32 %680, 64
  %683 = select i1 %681, i32 %682, i32 %680
  br label %688

684:                                              ; preds = %660
  %685 = icmp sgt i32 %662, 31
  %686 = add nsw i32 %662, -64
  %687 = select i1 %685, i32 %686, i32 %662
  br label %688

688:                                              ; preds = %684, %668
  %689 = phi i32 [ %674, %668 ], [ %665, %684 ]
  %690 = phi i32 [ %683, %668 ], [ %687, %684 ]
  %691 = load i32, ptr @trace, align 4, !tbaa !10
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %696, label %693

693:                                              ; preds = %688
  %694 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef signext %689)
  %695 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef signext %690)
  br label %696

696:                                              ; preds = %693, %688, %642, %639, %396
  %697 = phi i32 [ %689, %693 ], [ %689, %688 ], [ %120, %639 ], [ %120, %396 ], [ 0, %642 ]
  %698 = phi i32 [ %690, %693 ], [ %690, %688 ], [ %121, %639 ], [ %121, %396 ], [ 0, %642 ]
  %699 = load i32, ptr @fault, align 4, !tbaa !10
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %711, label %116

701:                                              ; preds = %218
  %702 = select i1 %222, i1 %224, i1 false
  br i1 %702, label %703, label %704

703:                                              ; preds = %701
  tail call void @flushbits(i32 noundef signext 1) #9
  br label %704

704:                                              ; preds = %703, %701
  %705 = add nsw i32 %197, 1
  %706 = sext i32 %705 to i64
  %707 = add nsw i32 %196, 1
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %706, i64 %708
  store i32 0, ptr %709, align 4, !tbaa !10
  %710 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %706, i64 %708
  store i32 0, ptr %710, align 4, !tbaa !10
  br label %725

711:                                              ; preds = %696
  %712 = add nsw i32 %256, -5
  %713 = icmp ult i32 %712, -2
  %714 = icmp ne i32 %345, 0
  %715 = select i1 %713, i1 true, i1 %714
  %716 = shl i32 %344, 2
  %717 = xor i32 %716, 60
  %718 = select i1 %715, i32 %716, i32 %717
  %719 = ashr i32 %250, 4
  %720 = or i32 %718, %719
  %721 = add nsw i32 %197, 1
  %722 = sext i32 %721 to i64
  %723 = add nsw i32 %196, 1
  %724 = sext i32 %723 to i64
  br label %725

725:                                              ; preds = %711, %704
  %726 = phi i64 [ %724, %711 ], [ %708, %704 ]
  %727 = phi i64 [ %722, %711 ], [ %706, %704 ]
  %728 = phi i32 [ 0, %711 ], [ %219, %704 ]
  %729 = phi i32 [ %256, %711 ], [ 0, %704 ]
  %730 = phi i32 [ %324, %711 ], [ %118, %704 ]
  %731 = phi i32 [ %325, %711 ], [ 0, %704 ]
  %732 = phi i32 [ %720, %711 ], [ 0, %704 ]
  %733 = phi i32 [ %697, %711 ], [ 0, %704 ]
  %734 = phi i32 [ %698, %711 ], [ 0, %704 ]
  %735 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %727, i64 %726
  store i32 %729, ptr %735, align 4, !tbaa !10
  %736 = add nsw i32 %729, -5
  %737 = icmp ult i32 %736, -2
  %738 = load i32, ptr @pb_frame, align 4
  %739 = icmp ne i32 %738, 0
  %740 = select i1 %737, i1 true, i1 %739
  br i1 %740, label %744, label %741

741:                                              ; preds = %725
  %742 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %727, i64 %726
  store i32 0, ptr %742, align 4, !tbaa !10
  %743 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %727, i64 %726
  store i32 0, ptr %743, align 4, !tbaa !10
  br label %744

744:                                              ; preds = %741, %725
  %745 = sext i32 %197 to i64
  br label %746

746:                                              ; preds = %1977, %744
  %747 = phi i64 [ %1978, %1977 ], [ %745, %744 ]
  %748 = phi i32 [ 0, %1977 ], [ %196, %744 ]
  %749 = phi i32 [ %733, %1977 ], [ %109, %744 ]
  %750 = phi i32 [ %734, %1977 ], [ %110, %744 ]
  %751 = phi i32 [ 1, %1977 ], [ %728, %744 ]
  %752 = phi i32 [ %1979, %1977 ], [ %195, %744 ]
  %753 = phi i32 [ 1, %1977 ], [ %112, %744 ]
  %754 = phi i32 [ %732, %1977 ], [ %113, %744 ]
  %755 = phi i32 [ %731, %1977 ], [ %114, %744 ]
  %756 = phi i32 [ %751, %1977 ], [ %115, %744 ]
  %757 = icmp sgt i32 %748, 0
  %758 = trunc i64 %747 to i32
  %759 = shl i32 %758, 4
  %760 = shl i32 %748, 4
  %761 = load i32, ptr @coded_picture_width, align 4
  %762 = add i32 %759, -16
  %763 = select i1 %757, i32 %759, i32 %762
  %764 = select i1 %757, i32 %760, i32 %761
  %765 = add i32 %764, -16
  %766 = icmp sgt i32 %752, 0
  br i1 %766, label %769, label %767

767:                                              ; preds = %746
  %768 = load i32, ptr @blk_cnt, align 4
  br label %1849

769:                                              ; preds = %746
  %770 = ashr exact i32 %763, 4
  %771 = add nsw i32 %770, 1
  %772 = sext i32 %771 to i64
  %773 = sdiv i32 %765, 16
  %774 = add nsw i32 %773, 1
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %772, i64 %775
  %777 = load i32, ptr %776, align 4, !tbaa !10
  %778 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %781, label %780

780:                                              ; preds = %769
  tail call void @reconstruct(i32 noundef signext %765, i32 noundef signext %763, i32 noundef signext 0, i32 noundef signext %749, i32 noundef signext %750) #9
  br label %781

781:                                              ; preds = %780, %769
  %782 = icmp ult i32 %777, 3
  br i1 %782, label %783, label %784

783:                                              ; preds = %781
  tail call void @reconstruct(i32 noundef signext %765, i32 noundef signext %763, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 0) #9
  br label %784

784:                                              ; preds = %783, %781
  %785 = load i32, ptr @blk_cnt, align 4
  %786 = icmp sgt i32 %785, 0
  br i1 %786, label %787, label %1854

787:                                              ; preds = %784
  %788 = add i32 %777, -3
  %789 = icmp ult i32 %788, 2
  %790 = ashr i32 %765, 1
  %791 = ashr exact i32 %763, 1
  %792 = sext i32 %790 to i64
  %793 = sext i32 %765 to i64
  br i1 %789, label %794, label %1016

794:                                              ; preds = %787, %1011
  %795 = phi i64 [ %1012, %1011 ], [ 0, %787 ]
  %796 = load i32, ptr @refidct, align 4, !tbaa !10
  %797 = icmp eq i32 %796, 0
  %798 = load ptr, ptr @ld, align 8, !tbaa !6
  %799 = getelementptr inbounds i8, ptr %798, i64 2088
  %800 = getelementptr inbounds [12 x [64 x i16]], ptr %799, i64 0, i64 %795
  br i1 %797, label %802, label %801

801:                                              ; preds = %794
  tail call void @idctref(ptr noundef nonnull %800) #9
  br label %803

802:                                              ; preds = %794
  tail call void @idct(ptr noundef nonnull %800) #9
  br label %803

803:                                              ; preds = %802, %801
  %804 = trunc nuw nsw i64 %795 to i32
  %805 = load ptr, ptr @ld, align 8, !tbaa !6
  %806 = getelementptr inbounds i8, ptr %805, i64 2088
  %807 = shl i64 %795, 32
  %808 = ashr exact i64 %807, 32
  %809 = getelementptr inbounds [12 x [64 x i16]], ptr %806, i64 0, i64 %808
  %810 = icmp ult i64 %795, 6
  %811 = add nsw i32 %804, -6
  %812 = select i1 %810, i32 %804, i32 %811
  %813 = icmp slt i32 %812, 4
  %814 = and i32 %812, 1
  br i1 %813, label %815, label %839

815:                                              ; preds = %803
  %816 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %817 = shl nuw nsw i32 %814, 3
  %818 = zext nneg i32 %817 to i64
  br i1 %810, label %819, label %829

819:                                              ; preds = %815
  %820 = load ptr, ptr @newframe, align 8, !tbaa !6
  %821 = shl nuw nsw i32 %804, 2
  %822 = and i32 %821, 8
  %823 = or disjoint i32 %822, %763
  %824 = mul nsw i32 %816, %823
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i8, ptr %820, i64 %825
  %827 = getelementptr inbounds i8, ptr %826, i64 %793
  %828 = getelementptr inbounds i8, ptr %827, i64 %818
  br label %859

829:                                              ; preds = %815
  %830 = load ptr, ptr @bframe, align 8, !tbaa !6
  %831 = shl i32 %811, 2
  %832 = and i32 %831, 8
  %833 = or disjoint i32 %832, %763
  %834 = mul nsw i32 %816, %833
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds i8, ptr %830, i64 %835
  %837 = getelementptr inbounds i8, ptr %836, i64 %793
  %838 = getelementptr inbounds i8, ptr %837, i64 %818
  br label %855

839:                                              ; preds = %803
  %840 = add nuw nsw i32 %814, 1
  %841 = zext nneg i32 %840 to i64
  %842 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %843 = mul nsw i32 %842, %791
  %844 = sext i32 %843 to i64
  br i1 %810, label %845, label %850

845:                                              ; preds = %839
  %846 = getelementptr inbounds [3 x ptr], ptr @newframe, i64 0, i64 %841
  %847 = load ptr, ptr %846, align 8, !tbaa !6
  %848 = getelementptr inbounds i8, ptr %847, i64 %844
  %849 = getelementptr inbounds i8, ptr %848, i64 %792
  br label %859

850:                                              ; preds = %839
  %851 = getelementptr inbounds [3 x ptr], ptr @bframe, i64 0, i64 %841
  %852 = load ptr, ptr %851, align 8, !tbaa !6
  %853 = getelementptr inbounds i8, ptr %852, i64 %844
  %854 = getelementptr inbounds i8, ptr %853, i64 %792
  br label %855

855:                                              ; preds = %850, %829
  %856 = phi ptr [ %854, %850 ], [ %838, %829 ]
  %857 = phi i32 [ %842, %850 ], [ %816, %829 ]
  %858 = sext i32 %857 to i64
  br label %863

859:                                              ; preds = %819, %845
  %860 = phi i32 [ %816, %819 ], [ %842, %845 ]
  %861 = phi ptr [ %828, %819 ], [ %849, %845 ]
  %862 = sext i32 %860 to i64
  br label %949

863:                                              ; preds = %863, %855
  %864 = phi ptr [ %809, %855 ], [ %945, %863 ]
  %865 = phi ptr [ %856, %855 ], [ %946, %863 ]
  %866 = phi i32 [ 0, %855 ], [ %947, %863 ]
  %867 = load ptr, ptr @clp, align 8, !tbaa !6
  %868 = load i16, ptr %864, align 2, !tbaa !12
  %869 = sext i16 %868 to i64
  %870 = load i8, ptr %865, align 1, !tbaa !14
  %871 = zext i8 %870 to i64
  %872 = getelementptr i8, ptr %867, i64 %869
  %873 = getelementptr i8, ptr %872, i64 %871
  %874 = load i8, ptr %873, align 1, !tbaa !14
  store i8 %874, ptr %865, align 1, !tbaa !14
  %875 = load ptr, ptr @clp, align 8, !tbaa !6
  %876 = getelementptr inbounds i8, ptr %864, i64 2
  %877 = load i16, ptr %876, align 2, !tbaa !12
  %878 = sext i16 %877 to i64
  %879 = getelementptr inbounds i8, ptr %865, i64 1
  %880 = load i8, ptr %879, align 1, !tbaa !14
  %881 = zext i8 %880 to i64
  %882 = getelementptr i8, ptr %875, i64 %878
  %883 = getelementptr i8, ptr %882, i64 %881
  %884 = load i8, ptr %883, align 1, !tbaa !14
  store i8 %884, ptr %879, align 1, !tbaa !14
  %885 = load ptr, ptr @clp, align 8, !tbaa !6
  %886 = getelementptr inbounds i8, ptr %864, i64 4
  %887 = load i16, ptr %886, align 2, !tbaa !12
  %888 = sext i16 %887 to i64
  %889 = getelementptr inbounds i8, ptr %865, i64 2
  %890 = load i8, ptr %889, align 1, !tbaa !14
  %891 = zext i8 %890 to i64
  %892 = getelementptr i8, ptr %885, i64 %888
  %893 = getelementptr i8, ptr %892, i64 %891
  %894 = load i8, ptr %893, align 1, !tbaa !14
  store i8 %894, ptr %889, align 1, !tbaa !14
  %895 = load ptr, ptr @clp, align 8, !tbaa !6
  %896 = getelementptr inbounds i8, ptr %864, i64 6
  %897 = load i16, ptr %896, align 2, !tbaa !12
  %898 = sext i16 %897 to i64
  %899 = getelementptr inbounds i8, ptr %865, i64 3
  %900 = load i8, ptr %899, align 1, !tbaa !14
  %901 = zext i8 %900 to i64
  %902 = getelementptr i8, ptr %895, i64 %898
  %903 = getelementptr i8, ptr %902, i64 %901
  %904 = load i8, ptr %903, align 1, !tbaa !14
  store i8 %904, ptr %899, align 1, !tbaa !14
  %905 = load ptr, ptr @clp, align 8, !tbaa !6
  %906 = getelementptr inbounds i8, ptr %864, i64 8
  %907 = load i16, ptr %906, align 2, !tbaa !12
  %908 = sext i16 %907 to i64
  %909 = getelementptr inbounds i8, ptr %865, i64 4
  %910 = load i8, ptr %909, align 1, !tbaa !14
  %911 = zext i8 %910 to i64
  %912 = getelementptr i8, ptr %905, i64 %908
  %913 = getelementptr i8, ptr %912, i64 %911
  %914 = load i8, ptr %913, align 1, !tbaa !14
  store i8 %914, ptr %909, align 1, !tbaa !14
  %915 = load ptr, ptr @clp, align 8, !tbaa !6
  %916 = getelementptr inbounds i8, ptr %864, i64 10
  %917 = load i16, ptr %916, align 2, !tbaa !12
  %918 = sext i16 %917 to i64
  %919 = getelementptr inbounds i8, ptr %865, i64 5
  %920 = load i8, ptr %919, align 1, !tbaa !14
  %921 = zext i8 %920 to i64
  %922 = getelementptr i8, ptr %915, i64 %918
  %923 = getelementptr i8, ptr %922, i64 %921
  %924 = load i8, ptr %923, align 1, !tbaa !14
  store i8 %924, ptr %919, align 1, !tbaa !14
  %925 = load ptr, ptr @clp, align 8, !tbaa !6
  %926 = getelementptr inbounds i8, ptr %864, i64 12
  %927 = load i16, ptr %926, align 2, !tbaa !12
  %928 = sext i16 %927 to i64
  %929 = getelementptr inbounds i8, ptr %865, i64 6
  %930 = load i8, ptr %929, align 1, !tbaa !14
  %931 = zext i8 %930 to i64
  %932 = getelementptr i8, ptr %925, i64 %928
  %933 = getelementptr i8, ptr %932, i64 %931
  %934 = load i8, ptr %933, align 1, !tbaa !14
  store i8 %934, ptr %929, align 1, !tbaa !14
  %935 = load ptr, ptr @clp, align 8, !tbaa !6
  %936 = getelementptr inbounds i8, ptr %864, i64 14
  %937 = load i16, ptr %936, align 2, !tbaa !12
  %938 = sext i16 %937 to i64
  %939 = getelementptr inbounds i8, ptr %865, i64 7
  %940 = load i8, ptr %939, align 1, !tbaa !14
  %941 = zext i8 %940 to i64
  %942 = getelementptr i8, ptr %935, i64 %938
  %943 = getelementptr i8, ptr %942, i64 %941
  %944 = load i8, ptr %943, align 1, !tbaa !14
  store i8 %944, ptr %939, align 1, !tbaa !14
  %945 = getelementptr inbounds i8, ptr %864, i64 16
  %946 = getelementptr inbounds i8, ptr %865, i64 %858
  %947 = add nuw nsw i32 %866, 1
  %948 = icmp eq i32 %947, 8
  br i1 %948, label %1011, label %863

949:                                              ; preds = %949, %859
  %950 = phi ptr [ %809, %859 ], [ %1007, %949 ]
  %951 = phi ptr [ %861, %859 ], [ %1008, %949 ]
  %952 = phi i32 [ 0, %859 ], [ %1009, %949 ]
  %953 = load ptr, ptr @clp, align 8, !tbaa !6
  %954 = load i16, ptr %950, align 2, !tbaa !12
  %955 = sext i16 %954 to i64
  %956 = getelementptr inbounds i8, ptr %953, i64 %955
  %957 = load i8, ptr %956, align 1, !tbaa !14
  store i8 %957, ptr %951, align 1, !tbaa !14
  %958 = load ptr, ptr @clp, align 8, !tbaa !6
  %959 = getelementptr inbounds i8, ptr %950, i64 2
  %960 = load i16, ptr %959, align 2, !tbaa !12
  %961 = sext i16 %960 to i64
  %962 = getelementptr inbounds i8, ptr %958, i64 %961
  %963 = load i8, ptr %962, align 1, !tbaa !14
  %964 = getelementptr inbounds i8, ptr %951, i64 1
  store i8 %963, ptr %964, align 1, !tbaa !14
  %965 = load ptr, ptr @clp, align 8, !tbaa !6
  %966 = getelementptr inbounds i8, ptr %950, i64 4
  %967 = load i16, ptr %966, align 2, !tbaa !12
  %968 = sext i16 %967 to i64
  %969 = getelementptr inbounds i8, ptr %965, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !14
  %971 = getelementptr inbounds i8, ptr %951, i64 2
  store i8 %970, ptr %971, align 1, !tbaa !14
  %972 = load ptr, ptr @clp, align 8, !tbaa !6
  %973 = getelementptr inbounds i8, ptr %950, i64 6
  %974 = load i16, ptr %973, align 2, !tbaa !12
  %975 = sext i16 %974 to i64
  %976 = getelementptr inbounds i8, ptr %972, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !14
  %978 = getelementptr inbounds i8, ptr %951, i64 3
  store i8 %977, ptr %978, align 1, !tbaa !14
  %979 = load ptr, ptr @clp, align 8, !tbaa !6
  %980 = getelementptr inbounds i8, ptr %950, i64 8
  %981 = load i16, ptr %980, align 2, !tbaa !12
  %982 = sext i16 %981 to i64
  %983 = getelementptr inbounds i8, ptr %979, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !14
  %985 = getelementptr inbounds i8, ptr %951, i64 4
  store i8 %984, ptr %985, align 1, !tbaa !14
  %986 = load ptr, ptr @clp, align 8, !tbaa !6
  %987 = getelementptr inbounds i8, ptr %950, i64 10
  %988 = load i16, ptr %987, align 2, !tbaa !12
  %989 = sext i16 %988 to i64
  %990 = getelementptr inbounds i8, ptr %986, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !14
  %992 = getelementptr inbounds i8, ptr %951, i64 5
  store i8 %991, ptr %992, align 1, !tbaa !14
  %993 = load ptr, ptr @clp, align 8, !tbaa !6
  %994 = getelementptr inbounds i8, ptr %950, i64 12
  %995 = load i16, ptr %994, align 2, !tbaa !12
  %996 = sext i16 %995 to i64
  %997 = getelementptr inbounds i8, ptr %993, i64 %996
  %998 = load i8, ptr %997, align 1, !tbaa !14
  %999 = getelementptr inbounds i8, ptr %951, i64 6
  store i8 %998, ptr %999, align 1, !tbaa !14
  %1000 = load ptr, ptr @clp, align 8, !tbaa !6
  %1001 = getelementptr inbounds i8, ptr %950, i64 14
  %1002 = load i16, ptr %1001, align 2, !tbaa !12
  %1003 = sext i16 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %1000, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !14
  %1006 = getelementptr inbounds i8, ptr %951, i64 7
  store i8 %1005, ptr %1006, align 1, !tbaa !14
  %1007 = getelementptr inbounds i8, ptr %950, i64 16
  %1008 = getelementptr inbounds i8, ptr %951, i64 %862
  %1009 = add nuw nsw i32 %952, 1
  %1010 = icmp eq i32 %1009, 8
  br i1 %1010, label %1011, label %949

1011:                                             ; preds = %863, %949
  %1012 = add nuw nsw i64 %795, 1
  %1013 = load i32, ptr @blk_cnt, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = icmp slt i64 %1012, %1014
  br i1 %1015, label %794, label %1179

1016:                                             ; preds = %787, %1173
  %1017 = phi i32 [ %1174, %1173 ], [ %785, %787 ]
  %1018 = phi i64 [ %1175, %1173 ], [ 0, %787 ]
  %1019 = phi i32 [ %1176, %1173 ], [ 0, %787 ]
  %1020 = trunc nuw nsw i64 %1018 to i32
  %1021 = xor i32 %1020, -1
  %1022 = add i32 %1017, %1021
  %1023 = shl nuw i32 1, %1022
  %1024 = and i32 %1023, %754
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1173, label %1026

1026:                                             ; preds = %1016
  %1027 = load i32, ptr @refidct, align 4, !tbaa !10
  %1028 = icmp eq i32 %1027, 0
  %1029 = load ptr, ptr @ld, align 8, !tbaa !6
  %1030 = getelementptr inbounds i8, ptr %1029, i64 2088
  %1031 = getelementptr inbounds [12 x [64 x i16]], ptr %1030, i64 0, i64 %1018
  br i1 %1028, label %1033, label %1032

1032:                                             ; preds = %1026
  tail call void @idctref(ptr noundef nonnull %1031) #9
  br label %1034

1033:                                             ; preds = %1026
  tail call void @idct(ptr noundef nonnull %1031) #9
  br label %1034

1034:                                             ; preds = %1033, %1032
  %1035 = load ptr, ptr @ld, align 8, !tbaa !6
  %1036 = getelementptr inbounds i8, ptr %1035, i64 2088
  %1037 = getelementptr inbounds [12 x [64 x i16]], ptr %1036, i64 0, i64 %1018
  %1038 = icmp ult i64 %1018, 6
  %1039 = add nsw i32 %1019, -6
  %1040 = select i1 %1038, i32 %1020, i32 %1039
  %1041 = icmp slt i32 %1040, 4
  %1042 = and i32 %1040, 1
  br i1 %1041, label %1043, label %1065

1043:                                             ; preds = %1034
  %1044 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %1045 = shl nuw nsw i32 %1042, 3
  %1046 = zext nneg i32 %1045 to i64
  %1047 = shl i32 %1020, 2
  %1048 = and i32 %1047, 8
  %1049 = or disjoint i32 %1048, %763
  br i1 %1038, label %1050, label %1057

1050:                                             ; preds = %1043
  %1051 = load ptr, ptr @newframe, align 8, !tbaa !6
  %1052 = mul nsw i32 %1044, %1049
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds i8, ptr %1051, i64 %1053
  %1055 = getelementptr inbounds i8, ptr %1054, i64 %793
  %1056 = getelementptr inbounds i8, ptr %1055, i64 %1046
  br label %1081

1057:                                             ; preds = %1043
  %1058 = load ptr, ptr @bframe, align 8, !tbaa !6
  %1059 = xor i32 %1049, 8
  %1060 = mul nsw i32 %1044, %1059
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds i8, ptr %1058, i64 %1061
  %1063 = getelementptr inbounds i8, ptr %1062, i64 %793
  %1064 = getelementptr inbounds i8, ptr %1063, i64 %1046
  br label %1081

1065:                                             ; preds = %1034
  %1066 = add nuw nsw i32 %1042, 1
  %1067 = zext nneg i32 %1066 to i64
  %1068 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %1069 = mul nsw i32 %1068, %791
  %1070 = sext i32 %1069 to i64
  br i1 %1038, label %1071, label %1076

1071:                                             ; preds = %1065
  %1072 = getelementptr inbounds [3 x ptr], ptr @newframe, i64 0, i64 %1067
  %1073 = load ptr, ptr %1072, align 8, !tbaa !6
  %1074 = getelementptr inbounds i8, ptr %1073, i64 %1070
  %1075 = getelementptr inbounds i8, ptr %1074, i64 %792
  br label %1081

1076:                                             ; preds = %1065
  %1077 = getelementptr inbounds [3 x ptr], ptr @bframe, i64 0, i64 %1067
  %1078 = load ptr, ptr %1077, align 8, !tbaa !6
  %1079 = getelementptr inbounds i8, ptr %1078, i64 %1070
  %1080 = getelementptr inbounds i8, ptr %1079, i64 %792
  br label %1081

1081:                                             ; preds = %1076, %1071, %1057, %1050
  %1082 = phi ptr [ %1080, %1076 ], [ %1064, %1057 ], [ %1056, %1050 ], [ %1075, %1071 ]
  %1083 = phi i32 [ %1068, %1076 ], [ %1044, %1057 ], [ %1044, %1050 ], [ %1068, %1071 ]
  %1084 = sext i32 %1083 to i64
  br label %1085

1085:                                             ; preds = %1085, %1081
  %1086 = phi ptr [ %1037, %1081 ], [ %1167, %1085 ]
  %1087 = phi ptr [ %1082, %1081 ], [ %1168, %1085 ]
  %1088 = phi i32 [ 0, %1081 ], [ %1169, %1085 ]
  %1089 = load ptr, ptr @clp, align 8, !tbaa !6
  %1090 = load i16, ptr %1086, align 2, !tbaa !12
  %1091 = sext i16 %1090 to i64
  %1092 = load i8, ptr %1087, align 1, !tbaa !14
  %1093 = zext i8 %1092 to i64
  %1094 = getelementptr i8, ptr %1089, i64 %1091
  %1095 = getelementptr i8, ptr %1094, i64 %1093
  %1096 = load i8, ptr %1095, align 1, !tbaa !14
  store i8 %1096, ptr %1087, align 1, !tbaa !14
  %1097 = load ptr, ptr @clp, align 8, !tbaa !6
  %1098 = getelementptr inbounds i8, ptr %1086, i64 2
  %1099 = load i16, ptr %1098, align 2, !tbaa !12
  %1100 = sext i16 %1099 to i64
  %1101 = getelementptr inbounds i8, ptr %1087, i64 1
  %1102 = load i8, ptr %1101, align 1, !tbaa !14
  %1103 = zext i8 %1102 to i64
  %1104 = getelementptr i8, ptr %1097, i64 %1100
  %1105 = getelementptr i8, ptr %1104, i64 %1103
  %1106 = load i8, ptr %1105, align 1, !tbaa !14
  store i8 %1106, ptr %1101, align 1, !tbaa !14
  %1107 = load ptr, ptr @clp, align 8, !tbaa !6
  %1108 = getelementptr inbounds i8, ptr %1086, i64 4
  %1109 = load i16, ptr %1108, align 2, !tbaa !12
  %1110 = sext i16 %1109 to i64
  %1111 = getelementptr inbounds i8, ptr %1087, i64 2
  %1112 = load i8, ptr %1111, align 1, !tbaa !14
  %1113 = zext i8 %1112 to i64
  %1114 = getelementptr i8, ptr %1107, i64 %1110
  %1115 = getelementptr i8, ptr %1114, i64 %1113
  %1116 = load i8, ptr %1115, align 1, !tbaa !14
  store i8 %1116, ptr %1111, align 1, !tbaa !14
  %1117 = load ptr, ptr @clp, align 8, !tbaa !6
  %1118 = getelementptr inbounds i8, ptr %1086, i64 6
  %1119 = load i16, ptr %1118, align 2, !tbaa !12
  %1120 = sext i16 %1119 to i64
  %1121 = getelementptr inbounds i8, ptr %1087, i64 3
  %1122 = load i8, ptr %1121, align 1, !tbaa !14
  %1123 = zext i8 %1122 to i64
  %1124 = getelementptr i8, ptr %1117, i64 %1120
  %1125 = getelementptr i8, ptr %1124, i64 %1123
  %1126 = load i8, ptr %1125, align 1, !tbaa !14
  store i8 %1126, ptr %1121, align 1, !tbaa !14
  %1127 = load ptr, ptr @clp, align 8, !tbaa !6
  %1128 = getelementptr inbounds i8, ptr %1086, i64 8
  %1129 = load i16, ptr %1128, align 2, !tbaa !12
  %1130 = sext i16 %1129 to i64
  %1131 = getelementptr inbounds i8, ptr %1087, i64 4
  %1132 = load i8, ptr %1131, align 1, !tbaa !14
  %1133 = zext i8 %1132 to i64
  %1134 = getelementptr i8, ptr %1127, i64 %1130
  %1135 = getelementptr i8, ptr %1134, i64 %1133
  %1136 = load i8, ptr %1135, align 1, !tbaa !14
  store i8 %1136, ptr %1131, align 1, !tbaa !14
  %1137 = load ptr, ptr @clp, align 8, !tbaa !6
  %1138 = getelementptr inbounds i8, ptr %1086, i64 10
  %1139 = load i16, ptr %1138, align 2, !tbaa !12
  %1140 = sext i16 %1139 to i64
  %1141 = getelementptr inbounds i8, ptr %1087, i64 5
  %1142 = load i8, ptr %1141, align 1, !tbaa !14
  %1143 = zext i8 %1142 to i64
  %1144 = getelementptr i8, ptr %1137, i64 %1140
  %1145 = getelementptr i8, ptr %1144, i64 %1143
  %1146 = load i8, ptr %1145, align 1, !tbaa !14
  store i8 %1146, ptr %1141, align 1, !tbaa !14
  %1147 = load ptr, ptr @clp, align 8, !tbaa !6
  %1148 = getelementptr inbounds i8, ptr %1086, i64 12
  %1149 = load i16, ptr %1148, align 2, !tbaa !12
  %1150 = sext i16 %1149 to i64
  %1151 = getelementptr inbounds i8, ptr %1087, i64 6
  %1152 = load i8, ptr %1151, align 1, !tbaa !14
  %1153 = zext i8 %1152 to i64
  %1154 = getelementptr i8, ptr %1147, i64 %1150
  %1155 = getelementptr i8, ptr %1154, i64 %1153
  %1156 = load i8, ptr %1155, align 1, !tbaa !14
  store i8 %1156, ptr %1151, align 1, !tbaa !14
  %1157 = load ptr, ptr @clp, align 8, !tbaa !6
  %1158 = getelementptr inbounds i8, ptr %1086, i64 14
  %1159 = load i16, ptr %1158, align 2, !tbaa !12
  %1160 = sext i16 %1159 to i64
  %1161 = getelementptr inbounds i8, ptr %1087, i64 7
  %1162 = load i8, ptr %1161, align 1, !tbaa !14
  %1163 = zext i8 %1162 to i64
  %1164 = getelementptr i8, ptr %1157, i64 %1160
  %1165 = getelementptr i8, ptr %1164, i64 %1163
  %1166 = load i8, ptr %1165, align 1, !tbaa !14
  store i8 %1166, ptr %1161, align 1, !tbaa !14
  %1167 = getelementptr inbounds i8, ptr %1086, i64 16
  %1168 = getelementptr inbounds i8, ptr %1087, i64 %1084
  %1169 = add nuw nsw i32 %1088, 1
  %1170 = icmp eq i32 %1169, 8
  br i1 %1170, label %1171, label %1085

1171:                                             ; preds = %1085
  %1172 = load i32, ptr @blk_cnt, align 4
  br label %1173

1173:                                             ; preds = %1171, %1016
  %1174 = phi i32 [ %1172, %1171 ], [ %1017, %1016 ]
  %1175 = add nuw nsw i64 %1018, 1
  %1176 = add nuw nsw i32 %1019, 1
  %1177 = sext i32 %1174 to i64
  %1178 = icmp slt i64 %1175, %1177
  br i1 %1178, label %1016, label %1179

1179:                                             ; preds = %1173, %1011
  %1180 = phi i32 [ %1013, %1011 ], [ %1174, %1173 ]
  %1181 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %1182 = icmp ne i32 %1181, 0
  %1183 = icmp sgt i32 %1180, 0
  %1184 = and i1 %1183, %1182
  br i1 %1184, label %1185, label %1849

1185:                                             ; preds = %1179
  %1186 = icmp eq i32 %756, 0
  %1187 = icmp eq i32 %777, 2
  %1188 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %772, i64 %775
  %1189 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %772, i64 %775
  %1190 = icmp eq i32 %749, 0
  %1191 = icmp eq i32 %750, 0
  %1192 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 1, i64 %772, i64 %775
  %1193 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 1, i64 %772, i64 %775
  %1194 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 2, i64 %772, i64 %775
  %1195 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 2, i64 %772, i64 %775
  %1196 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 3, i64 %772, i64 %775
  %1197 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 3, i64 %772, i64 %775
  %1198 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 4, i64 %772, i64 %775
  %1199 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 4, i64 %772, i64 %775
  br label %1200

1200:                                             ; preds = %1842, %1185
  %1201 = phi i64 [ 6, %1185 ], [ %1844, %1842 ]
  %1202 = phi i32 [ 6, %1185 ], [ %1845, %1842 ]
  %1203 = load i32, ptr @adv_pred_mode, align 4
  %1204 = icmp ne i32 %1203, 0
  %1205 = select i1 %1186, i1 true, i1 %1204
  br i1 %1205, label %1206, label %1702

1206:                                             ; preds = %1200
  %1207 = add nsw i64 %1201, -6
  %1208 = icmp ult i64 %1201, 10
  br i1 %1187, label %1209, label %1356

1209:                                             ; preds = %1206
  br i1 %1208, label %1216, label %1210

1210:                                             ; preds = %1209
  %1211 = load i32, ptr @trb, align 4
  %1212 = load i32, ptr @trd, align 4
  %1213 = sub nsw i32 %1211, %1212
  %1214 = load i32, ptr %1192, align 4, !tbaa !10
  %1215 = load i32, ptr %1193, align 4, !tbaa !10
  br i1 %1190, label %1246, label %1249

1216:                                             ; preds = %1209
  %1217 = add nsw i64 %1201, -5
  %1218 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %1217, i64 %772, i64 %775
  %1219 = load i32, ptr %1218, align 4, !tbaa !10
  %1220 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %1217, i64 %772, i64 %775
  %1221 = load i32, ptr %1220, align 4, !tbaa !10
  %1222 = load i32, ptr @trb, align 4, !tbaa !10
  br i1 %1190, label %1223, label %1228

1223:                                             ; preds = %1216
  %1224 = load i32, ptr @trd, align 4, !tbaa !10
  %1225 = sub nsw i32 %1222, %1224
  %1226 = mul nsw i32 %1225, %1219
  %1227 = sdiv i32 %1226, %1224
  br label %1234

1228:                                             ; preds = %1216
  %1229 = mul nsw i32 %1222, %1219
  %1230 = load i32, ptr @trd, align 4, !tbaa !10
  %1231 = sdiv i32 %1229, %1230
  %1232 = sub i32 %749, %1219
  %1233 = add i32 %1232, %1231
  br label %1234

1234:                                             ; preds = %1228, %1223
  %1235 = phi i32 [ %1224, %1223 ], [ %1230, %1228 ]
  %1236 = phi i32 [ %1227, %1223 ], [ %1233, %1228 ]
  br i1 %1191, label %1237, label %1241

1237:                                             ; preds = %1234
  %1238 = sub nsw i32 %1222, %1235
  %1239 = mul nsw i32 %1238, %1221
  %1240 = sdiv i32 %1239, %1235
  br label %1430

1241:                                             ; preds = %1234
  %1242 = mul nsw i32 %1222, %1221
  %1243 = sdiv i32 %1242, %1235
  %1244 = sub i32 %750, %1221
  %1245 = add i32 %1244, %1243
  br label %1430

1246:                                             ; preds = %1210
  %1247 = mul nsw i32 %1213, %1214
  %1248 = sdiv i32 %1247, %1212
  br label %1254

1249:                                             ; preds = %1210
  %1250 = mul nsw i32 %1214, %1211
  %1251 = sdiv i32 %1250, %1212
  %1252 = sub i32 %749, %1214
  %1253 = add i32 %1252, %1251
  br label %1254

1254:                                             ; preds = %1249, %1246
  %1255 = phi i32 [ %1248, %1246 ], [ %1253, %1249 ]
  br i1 %1191, label %1256, label %1259

1256:                                             ; preds = %1254
  %1257 = mul nsw i32 %1215, %1213
  %1258 = sdiv i32 %1257, %1212
  br label %1264

1259:                                             ; preds = %1254
  %1260 = mul nsw i32 %1215, %1211
  %1261 = sdiv i32 %1260, %1212
  %1262 = sub i32 %750, %1215
  %1263 = add i32 %1262, %1261
  br label %1264

1264:                                             ; preds = %1259, %1256
  %1265 = phi i32 [ %1258, %1256 ], [ %1263, %1259 ]
  %1266 = load i32, ptr %1194, align 4, !tbaa !10
  %1267 = load i32, ptr %1195, align 4, !tbaa !10
  br i1 %1190, label %1273, label %1268

1268:                                             ; preds = %1264
  %1269 = mul nsw i32 %1266, %1211
  %1270 = sdiv i32 %1269, %1212
  %1271 = sub i32 %749, %1266
  %1272 = add i32 %1271, %1270
  br label %1276

1273:                                             ; preds = %1264
  %1274 = mul nsw i32 %1266, %1213
  %1275 = sdiv i32 %1274, %1212
  br label %1276

1276:                                             ; preds = %1273, %1268
  %1277 = phi i32 [ %1275, %1273 ], [ %1272, %1268 ]
  %1278 = add nsw i32 %1277, %1255
  br i1 %1191, label %1284, label %1279

1279:                                             ; preds = %1276
  %1280 = mul nsw i32 %1267, %1211
  %1281 = sdiv i32 %1280, %1212
  %1282 = sub i32 %750, %1267
  %1283 = add i32 %1282, %1281
  br label %1287

1284:                                             ; preds = %1276
  %1285 = mul nsw i32 %1267, %1213
  %1286 = sdiv i32 %1285, %1212
  br label %1287

1287:                                             ; preds = %1284, %1279
  %1288 = phi i32 [ %1286, %1284 ], [ %1283, %1279 ]
  %1289 = add nsw i32 %1288, %1265
  %1290 = load i32, ptr %1196, align 4, !tbaa !10
  %1291 = load i32, ptr %1197, align 4, !tbaa !10
  br i1 %1190, label %1297, label %1292

1292:                                             ; preds = %1287
  %1293 = mul nsw i32 %1290, %1211
  %1294 = sdiv i32 %1293, %1212
  %1295 = sub i32 %749, %1290
  %1296 = add i32 %1295, %1294
  br label %1300

1297:                                             ; preds = %1287
  %1298 = mul nsw i32 %1290, %1213
  %1299 = sdiv i32 %1298, %1212
  br label %1300

1300:                                             ; preds = %1297, %1292
  %1301 = phi i32 [ %1299, %1297 ], [ %1296, %1292 ]
  %1302 = add nsw i32 %1278, %1301
  br i1 %1191, label %1308, label %1303

1303:                                             ; preds = %1300
  %1304 = mul nsw i32 %1291, %1211
  %1305 = sdiv i32 %1304, %1212
  %1306 = sub i32 %750, %1291
  %1307 = add i32 %1306, %1305
  br label %1311

1308:                                             ; preds = %1300
  %1309 = mul nsw i32 %1291, %1213
  %1310 = sdiv i32 %1309, %1212
  br label %1311

1311:                                             ; preds = %1308, %1303
  %1312 = phi i32 [ %1310, %1308 ], [ %1307, %1303 ]
  %1313 = add nsw i32 %1289, %1312
  %1314 = load i32, ptr %1198, align 4, !tbaa !10
  %1315 = load i32, ptr %1199, align 4, !tbaa !10
  br i1 %1190, label %1321, label %1316

1316:                                             ; preds = %1311
  %1317 = mul nsw i32 %1314, %1211
  %1318 = sdiv i32 %1317, %1212
  %1319 = sub i32 %749, %1314
  %1320 = add i32 %1319, %1318
  br label %1324

1321:                                             ; preds = %1311
  %1322 = mul nsw i32 %1314, %1213
  %1323 = sdiv i32 %1322, %1212
  br label %1324

1324:                                             ; preds = %1321, %1316
  %1325 = phi i32 [ %1323, %1321 ], [ %1320, %1316 ]
  %1326 = add nsw i32 %1302, %1325
  br i1 %1191, label %1332, label %1327

1327:                                             ; preds = %1324
  %1328 = mul nsw i32 %1315, %1211
  %1329 = sdiv i32 %1328, %1212
  %1330 = sub i32 %750, %1315
  %1331 = add i32 %1330, %1329
  br label %1335

1332:                                             ; preds = %1324
  %1333 = mul nsw i32 %1315, %1213
  %1334 = sdiv i32 %1333, %1212
  br label %1335

1335:                                             ; preds = %1332, %1327
  %1336 = phi i32 [ %1334, %1332 ], [ %1331, %1327 ]
  %1337 = add nsw i32 %1313, %1336
  %1338 = tail call i32 @llvm.abs.i32(i32 %1326, i1 true)
  %1339 = and i32 %1338, 15
  %1340 = zext nneg i32 %1339 to i64
  %1341 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %1340
  %1342 = load i32, ptr %1341, align 4, !tbaa !10
  %1343 = lshr i32 %1338, 3
  %1344 = and i32 %1343, 268435454
  %1345 = add nsw i32 %1342, %1344
  %1346 = sub nsw i32 0, %1345
  %1347 = icmp slt i32 %1326, 0
  %1348 = select i1 %1347, i32 %1346, i32 %1345
  %1349 = tail call i32 @llvm.abs.i32(i32 %1337, i1 true)
  %1350 = and i32 %1349, 15
  %1351 = zext nneg i32 %1350 to i64
  %1352 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %1351
  %1353 = load i32, ptr %1352, align 4, !tbaa !10
  %1354 = lshr i32 %1349, 3
  %1355 = and i32 %1354, 268435454
  br label %1470

1356:                                             ; preds = %1206
  %1357 = load i32, ptr %1188, align 4, !tbaa !10
  %1358 = load i32, ptr %1189, align 4, !tbaa !10
  %1359 = load i32, ptr @trb, align 4, !tbaa !10
  br i1 %1208, label %1360, label %1384

1360:                                             ; preds = %1356
  br i1 %1190, label %1361, label %1366

1361:                                             ; preds = %1360
  %1362 = load i32, ptr @trd, align 4, !tbaa !10
  %1363 = sub nsw i32 %1359, %1362
  %1364 = mul nsw i32 %1363, %1357
  %1365 = sdiv i32 %1364, %1362
  br label %1372

1366:                                             ; preds = %1360
  %1367 = mul nsw i32 %1359, %1357
  %1368 = load i32, ptr @trd, align 4, !tbaa !10
  %1369 = sdiv i32 %1367, %1368
  %1370 = sub i32 %749, %1357
  %1371 = add i32 %1370, %1369
  br label %1372

1372:                                             ; preds = %1366, %1361
  %1373 = phi i32 [ %1362, %1361 ], [ %1368, %1366 ]
  %1374 = phi i32 [ %1365, %1361 ], [ %1371, %1366 ]
  br i1 %1191, label %1375, label %1379

1375:                                             ; preds = %1372
  %1376 = sub nsw i32 %1359, %1373
  %1377 = mul nsw i32 %1376, %1358
  %1378 = sdiv i32 %1377, %1373
  br label %1430

1379:                                             ; preds = %1372
  %1380 = mul nsw i32 %1359, %1358
  %1381 = sdiv i32 %1380, %1373
  %1382 = sub i32 %750, %1358
  %1383 = add i32 %1382, %1381
  br label %1430

1384:                                             ; preds = %1356
  br i1 %1190, label %1385, label %1390

1385:                                             ; preds = %1384
  %1386 = load i32, ptr @trd, align 4, !tbaa !10
  %1387 = sub nsw i32 %1359, %1386
  %1388 = mul nsw i32 %1387, %1357
  %1389 = sdiv i32 %1388, %1386
  br label %1396

1390:                                             ; preds = %1384
  %1391 = mul nsw i32 %1359, %1357
  %1392 = load i32, ptr @trd, align 4, !tbaa !10
  %1393 = sdiv i32 %1391, %1392
  %1394 = sub i32 %749, %1357
  %1395 = add i32 %1394, %1393
  br label %1396

1396:                                             ; preds = %1390, %1385
  %1397 = phi i32 [ %1386, %1385 ], [ %1392, %1390 ]
  %1398 = phi i32 [ %1389, %1385 ], [ %1395, %1390 ]
  br i1 %1191, label %1399, label %1403

1399:                                             ; preds = %1396
  %1400 = sub nsw i32 %1359, %1397
  %1401 = mul nsw i32 %1400, %1358
  %1402 = sdiv i32 %1401, %1397
  br label %1408

1403:                                             ; preds = %1396
  %1404 = mul nsw i32 %1359, %1358
  %1405 = sdiv i32 %1404, %1397
  %1406 = sub i32 %750, %1358
  %1407 = add i32 %1406, %1405
  br label %1408

1408:                                             ; preds = %1403, %1399
  %1409 = phi i32 [ %1402, %1399 ], [ %1407, %1403 ]
  %1410 = shl nsw i32 %1398, 2
  %1411 = shl nsw i32 %1409, 2
  %1412 = tail call i32 @llvm.abs.i32(i32 %1410, i1 true)
  %1413 = and i32 %1412, 12
  %1414 = zext nneg i32 %1413 to i64
  %1415 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !10
  %1417 = lshr i32 %1412, 3
  %1418 = and i32 %1417, 268435454
  %1419 = add nsw i32 %1416, %1418
  %1420 = sub nsw i32 0, %1419
  %1421 = icmp slt i32 %1398, 0
  %1422 = select i1 %1421, i32 %1420, i32 %1419
  %1423 = tail call i32 @llvm.abs.i32(i32 %1411, i1 true)
  %1424 = and i32 %1423, 12
  %1425 = zext nneg i32 %1424 to i64
  %1426 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %1425
  %1427 = load i32, ptr %1426, align 4, !tbaa !10
  %1428 = lshr i32 %1423, 3
  %1429 = and i32 %1428, 268435454
  br label %1470

1430:                                             ; preds = %1379, %1375, %1241, %1237
  %1431 = phi i32 [ %1374, %1375 ], [ %1374, %1379 ], [ %1236, %1237 ], [ %1236, %1241 ]
  %1432 = phi i32 [ %1378, %1375 ], [ %1383, %1379 ], [ %1240, %1237 ], [ %1245, %1241 ]
  %1433 = trunc nuw nsw i64 %1201 to i32
  %1434 = shl nuw nsw i32 %1433, 3
  %1435 = and i32 %1434, 8
  %1436 = sub i32 1, %1431
  %1437 = sdiv i32 %1436, 2
  %1438 = sub nsw i32 %1437, %1435
  %1439 = tail call i32 @llvm.smax.i32(i32 %1438, i32 0)
  %1440 = add nsw i32 %1431, 1
  %1441 = sdiv i32 %1440, -2
  %1442 = xor i32 %1435, 15
  %1443 = add nsw i32 %1441, %1442
  %1444 = add nsw i32 %1443, 1
  %1445 = icmp slt i32 %1443, 8
  %1446 = select i1 %1445, i32 %1444, i32 8
  %1447 = sub i32 1, %1432
  %1448 = sdiv i32 %1447, 2
  %1449 = trunc nuw nsw i64 %1207 to i32
  %1450 = shl nsw i32 %1449, 2
  %1451 = and i32 %1450, 8
  %1452 = sub nsw i32 %1448, %1451
  %1453 = tail call i32 @llvm.smax.i32(i32 %1452, i32 0)
  %1454 = add nsw i32 %1432, 1
  %1455 = sdiv i32 %1454, -2
  %1456 = xor i32 %1451, 15
  %1457 = add nsw i32 %1455, %1456
  %1458 = add nsw i32 %1457, 1
  %1459 = icmp slt i32 %1457, 8
  %1460 = select i1 %1459, i32 %1458, i32 8
  %1461 = load ptr, ptr @bframe, align 8, !tbaa !6
  %1462 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %1463 = or disjoint i32 %1451, %763
  %1464 = mul nsw i32 %1462, %1463
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds i8, ptr %1461, i64 %1465
  %1467 = getelementptr inbounds i8, ptr %1466, i64 %793
  %1468 = zext nneg i32 %1435 to i64
  %1469 = getelementptr inbounds i8, ptr %1467, i64 %1468
  br label %1517

1470:                                             ; preds = %1408, %1335
  %1471 = phi i32 [ %1355, %1335 ], [ %1427, %1408 ]
  %1472 = phi i32 [ %1353, %1335 ], [ %1429, %1408 ]
  %1473 = phi i32 [ %1337, %1335 ], [ %1409, %1408 ]
  %1474 = phi i32 [ %1348, %1335 ], [ %1422, %1408 ]
  %1475 = add nsw i32 %1472, %1471
  %1476 = sub nsw i32 0, %1475
  %1477 = icmp slt i32 %1473, 0
  %1478 = select i1 %1477, i32 %1476, i32 %1475
  %1479 = and i64 %1201, 1
  %1480 = add nuw nsw i64 %1479, 1
  %1481 = sub i32 1, %1474
  %1482 = icmp slt i32 %1481, -1
  %1483 = sdiv i32 %1481, 2
  %1484 = select i1 %1482, i32 0, i32 %1483
  %1485 = icmp slt i32 %1474, -2
  br i1 %1485, label %1490, label %1486

1486:                                             ; preds = %1470
  %1487 = add nsw i32 %1474, 1
  %1488 = sdiv i32 %1487, -2
  %1489 = add nsw i32 %1488, 8
  br label %1490

1490:                                             ; preds = %1486, %1470
  %1491 = phi i32 [ %1489, %1486 ], [ 8, %1470 ]
  %1492 = sub i32 1, %1478
  %1493 = icmp slt i32 %1492, -1
  %1494 = sdiv i32 %1492, 2
  %1495 = select i1 %1493, i32 0, i32 %1494
  %1496 = icmp slt i32 %1478, -2
  br i1 %1496, label %1501, label %1497

1497:                                             ; preds = %1490
  %1498 = add nsw i32 %1478, 1
  %1499 = sdiv i32 %1498, -2
  %1500 = add nsw i32 %1499, 8
  br label %1501

1501:                                             ; preds = %1497, %1490
  %1502 = phi i32 [ %1500, %1497 ], [ 8, %1490 ]
  %1503 = getelementptr inbounds [3 x ptr], ptr @bframe, i64 0, i64 %1480
  %1504 = load ptr, ptr %1503, align 8, !tbaa !6
  %1505 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %1506 = trunc nuw nsw i64 %1207 to i32
  %1507 = shl i32 %1506, 2
  %1508 = and i32 %1507, 8
  %1509 = add nsw i32 %1508, %791
  %1510 = mul nsw i32 %1505, %1509
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds i8, ptr %1504, i64 %1511
  %1513 = getelementptr inbounds i8, ptr %1512, i64 %792
  %1514 = and i64 %1207, 8
  %1515 = getelementptr inbounds i8, ptr %1513, i64 %1514
  %1516 = getelementptr inbounds [3 x ptr], ptr @newframe, i64 0, i64 %1480
  br label %1517

1517:                                             ; preds = %1501, %1430
  %1518 = phi ptr [ %1516, %1501 ], [ @newframe, %1430 ]
  %1519 = phi i64 [ %1511, %1501 ], [ %1465, %1430 ]
  %1520 = phi i64 [ %792, %1501 ], [ %793, %1430 ]
  %1521 = phi i64 [ %1514, %1501 ], [ %1468, %1430 ]
  %1522 = phi i32 [ %1478, %1501 ], [ %1432, %1430 ]
  %1523 = phi i32 [ %1474, %1501 ], [ %1431, %1430 ]
  %1524 = phi i32 [ %1484, %1501 ], [ %1439, %1430 ]
  %1525 = phi i32 [ %1491, %1501 ], [ %1446, %1430 ]
  %1526 = phi i32 [ %1495, %1501 ], [ %1453, %1430 ]
  %1527 = phi i32 [ %1502, %1501 ], [ %1460, %1430 ]
  %1528 = phi ptr [ %1515, %1501 ], [ %1469, %1430 ]
  %1529 = phi i32 [ %1505, %1501 ], [ %1462, %1430 ]
  %1530 = load ptr, ptr %1518, align 8, !tbaa !6
  %1531 = getelementptr inbounds i8, ptr %1530, i64 %1519
  %1532 = getelementptr inbounds i8, ptr %1531, i64 %1520
  %1533 = getelementptr inbounds i8, ptr %1532, i64 %1521
  %1534 = ashr i32 %1523, 1
  %1535 = and i32 %1523, 1
  %1536 = ashr i32 %1522, 1
  %1537 = and i32 %1522, 1
  %1538 = add nsw i32 %1526, %1536
  %1539 = mul nsw i32 %1529, %1538
  %1540 = add nsw i32 %1539, %1534
  %1541 = sext i32 %1540 to i64
  %1542 = getelementptr inbounds i8, ptr %1533, i64 %1541
  %1543 = mul nsw i32 %1529, %1526
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds i8, ptr %1528, i64 %1544
  %1546 = icmp ne i32 %1535, 0
  %1547 = icmp ne i32 %1537, 0
  %1548 = select i1 %1546, i1 true, i1 %1547
  br i1 %1548, label %1579, label %1549

1549:                                             ; preds = %1517
  %1550 = icmp slt i32 %1526, %1527
  br i1 %1550, label %1551, label %1702

1551:                                             ; preds = %1549
  %1552 = icmp slt i32 %1524, %1525
  %1553 = sext i32 %1529 to i64
  br i1 %1552, label %1554, label %1702

1554:                                             ; preds = %1551
  %1555 = sext i32 %1524 to i64
  %1556 = sext i32 %1525 to i64
  br label %1557

1557:                                             ; preds = %1574, %1554
  %1558 = phi i32 [ %1577, %1574 ], [ %1526, %1554 ]
  %1559 = phi ptr [ %1576, %1574 ], [ %1542, %1554 ]
  %1560 = phi ptr [ %1575, %1574 ], [ %1545, %1554 ]
  br label %1561

1561:                                             ; preds = %1561, %1557
  %1562 = phi i64 [ %1555, %1557 ], [ %1572, %1561 ]
  %1563 = getelementptr inbounds i8, ptr %1559, i64 %1562
  %1564 = load i8, ptr %1563, align 1, !tbaa !14
  %1565 = zext i8 %1564 to i16
  %1566 = getelementptr inbounds i8, ptr %1560, i64 %1562
  %1567 = load i8, ptr %1566, align 1, !tbaa !14
  %1568 = zext i8 %1567 to i16
  %1569 = add nuw nsw i16 %1568, %1565
  %1570 = lshr i16 %1569, 1
  %1571 = trunc nuw i16 %1570 to i8
  store i8 %1571, ptr %1566, align 1, !tbaa !14
  %1572 = add nsw i64 %1562, 1
  %1573 = icmp eq i64 %1572, %1556
  br i1 %1573, label %1574, label %1561

1574:                                             ; preds = %1561
  %1575 = getelementptr inbounds i8, ptr %1560, i64 %1553
  %1576 = getelementptr inbounds i8, ptr %1559, i64 %1553
  %1577 = add nsw i32 %1558, 1
  %1578 = icmp eq i32 %1577, %1527
  br i1 %1578, label %1702, label %1557

1579:                                             ; preds = %1517
  %1580 = icmp eq i32 %1535, 0
  %1581 = select i1 %1580, i1 true, i1 %1547
  br i1 %1581, label %1618, label %1582

1582:                                             ; preds = %1579
  %1583 = icmp slt i32 %1526, %1527
  br i1 %1583, label %1584, label %1702

1584:                                             ; preds = %1582
  %1585 = icmp slt i32 %1524, %1525
  %1586 = sext i32 %1529 to i64
  br i1 %1585, label %1587, label %1702

1587:                                             ; preds = %1584
  %1588 = sext i32 %1524 to i64
  %1589 = sext i32 %1525 to i64
  br label %1590

1590:                                             ; preds = %1613, %1587
  %1591 = phi i32 [ %1616, %1613 ], [ %1526, %1587 ]
  %1592 = phi ptr [ %1615, %1613 ], [ %1542, %1587 ]
  %1593 = phi ptr [ %1614, %1613 ], [ %1545, %1587 ]
  br label %1594

1594:                                             ; preds = %1594, %1590
  %1595 = phi i64 [ %1588, %1590 ], [ %1599, %1594 ]
  %1596 = getelementptr inbounds i8, ptr %1592, i64 %1595
  %1597 = load i8, ptr %1596, align 1, !tbaa !14
  %1598 = zext i8 %1597 to i16
  %1599 = add nsw i64 %1595, 1
  %1600 = getelementptr inbounds i8, ptr %1592, i64 %1599
  %1601 = load i8, ptr %1600, align 1, !tbaa !14
  %1602 = zext i8 %1601 to i16
  %1603 = add nuw nsw i16 %1598, 1
  %1604 = add nuw nsw i16 %1603, %1602
  %1605 = lshr i16 %1604, 1
  %1606 = getelementptr inbounds i8, ptr %1593, i64 %1595
  %1607 = load i8, ptr %1606, align 1, !tbaa !14
  %1608 = zext i8 %1607 to i16
  %1609 = add nuw nsw i16 %1605, %1608
  %1610 = lshr i16 %1609, 1
  %1611 = trunc nuw i16 %1610 to i8
  store i8 %1611, ptr %1606, align 1, !tbaa !14
  %1612 = icmp eq i64 %1599, %1589
  br i1 %1612, label %1613, label %1594

1613:                                             ; preds = %1594
  %1614 = getelementptr inbounds i8, ptr %1593, i64 %1586
  %1615 = getelementptr inbounds i8, ptr %1592, i64 %1586
  %1616 = add nsw i32 %1591, 1
  %1617 = icmp eq i32 %1616, %1527
  br i1 %1617, label %1702, label %1590

1618:                                             ; preds = %1579
  %1619 = select i1 %1580, i1 %1547, i1 false
  %1620 = icmp slt i32 %1526, %1527
  br i1 %1619, label %1666, label %1621

1621:                                             ; preds = %1618
  br i1 %1620, label %1622, label %1702

1622:                                             ; preds = %1621
  %1623 = icmp slt i32 %1524, %1525
  %1624 = sext i32 %1529 to i64
  br i1 %1623, label %1625, label %1702

1625:                                             ; preds = %1622
  %1626 = sext i32 %1524 to i64
  %1627 = sext i32 %1525 to i64
  br label %1628

1628:                                             ; preds = %1661, %1625
  %1629 = phi i32 [ %1664, %1661 ], [ %1526, %1625 ]
  %1630 = phi ptr [ %1663, %1661 ], [ %1542, %1625 ]
  %1631 = phi ptr [ %1662, %1661 ], [ %1545, %1625 ]
  br label %1632

1632:                                             ; preds = %1632, %1628
  %1633 = phi i64 [ %1626, %1628 ], [ %1637, %1632 ]
  %1634 = getelementptr inbounds i8, ptr %1630, i64 %1633
  %1635 = load i8, ptr %1634, align 1, !tbaa !14
  %1636 = zext i8 %1635 to i32
  %1637 = add nsw i64 %1633, 1
  %1638 = getelementptr inbounds i8, ptr %1630, i64 %1637
  %1639 = load i8, ptr %1638, align 1, !tbaa !14
  %1640 = zext i8 %1639 to i32
  %1641 = add nsw i64 %1633, %1624
  %1642 = getelementptr inbounds i8, ptr %1630, i64 %1641
  %1643 = load i8, ptr %1642, align 1, !tbaa !14
  %1644 = zext i8 %1643 to i32
  %1645 = add nsw i64 %1641, 1
  %1646 = getelementptr inbounds i8, ptr %1630, i64 %1645
  %1647 = load i8, ptr %1646, align 1, !tbaa !14
  %1648 = zext i8 %1647 to i32
  %1649 = add nuw nsw i32 %1636, 2
  %1650 = add nuw nsw i32 %1649, %1640
  %1651 = add nuw nsw i32 %1650, %1644
  %1652 = add nuw nsw i32 %1651, %1648
  %1653 = lshr i32 %1652, 2
  %1654 = getelementptr inbounds i8, ptr %1631, i64 %1633
  %1655 = load i8, ptr %1654, align 1, !tbaa !14
  %1656 = zext i8 %1655 to i32
  %1657 = add nuw nsw i32 %1653, %1656
  %1658 = lshr i32 %1657, 1
  %1659 = trunc nuw i32 %1658 to i8
  store i8 %1659, ptr %1654, align 1, !tbaa !14
  %1660 = icmp eq i64 %1637, %1627
  br i1 %1660, label %1661, label %1632

1661:                                             ; preds = %1632
  %1662 = getelementptr inbounds i8, ptr %1631, i64 %1624
  %1663 = getelementptr inbounds i8, ptr %1630, i64 %1624
  %1664 = add nsw i32 %1629, 1
  %1665 = icmp eq i32 %1664, %1527
  br i1 %1665, label %1702, label %1628

1666:                                             ; preds = %1618
  br i1 %1620, label %1667, label %1702

1667:                                             ; preds = %1666
  %1668 = icmp slt i32 %1524, %1525
  %1669 = sext i32 %1529 to i64
  br i1 %1668, label %1670, label %1702

1670:                                             ; preds = %1667
  %1671 = sext i32 %1524 to i64
  %1672 = sext i32 %1525 to i64
  br label %1673

1673:                                             ; preds = %1697, %1670
  %1674 = phi i32 [ %1700, %1697 ], [ %1526, %1670 ]
  %1675 = phi ptr [ %1699, %1697 ], [ %1542, %1670 ]
  %1676 = phi ptr [ %1698, %1697 ], [ %1545, %1670 ]
  br label %1677

1677:                                             ; preds = %1677, %1673
  %1678 = phi i64 [ %1671, %1673 ], [ %1695, %1677 ]
  %1679 = getelementptr inbounds i8, ptr %1675, i64 %1678
  %1680 = load i8, ptr %1679, align 1, !tbaa !14
  %1681 = zext i8 %1680 to i16
  %1682 = add nsw i64 %1678, %1669
  %1683 = getelementptr inbounds i8, ptr %1675, i64 %1682
  %1684 = load i8, ptr %1683, align 1, !tbaa !14
  %1685 = zext i8 %1684 to i16
  %1686 = add nuw nsw i16 %1681, 1
  %1687 = add nuw nsw i16 %1686, %1685
  %1688 = lshr i16 %1687, 1
  %1689 = getelementptr inbounds i8, ptr %1676, i64 %1678
  %1690 = load i8, ptr %1689, align 1, !tbaa !14
  %1691 = zext i8 %1690 to i16
  %1692 = add nuw nsw i16 %1688, %1691
  %1693 = lshr i16 %1692, 1
  %1694 = trunc nuw i16 %1693 to i8
  store i8 %1694, ptr %1689, align 1, !tbaa !14
  %1695 = add nsw i64 %1678, 1
  %1696 = icmp eq i64 %1695, %1672
  br i1 %1696, label %1697, label %1677

1697:                                             ; preds = %1677
  %1698 = getelementptr inbounds i8, ptr %1676, i64 %1669
  %1699 = getelementptr inbounds i8, ptr %1675, i64 %1669
  %1700 = add nsw i32 %1674, 1
  %1701 = icmp eq i32 %1700, %1527
  br i1 %1701, label %1702, label %1673

1702:                                             ; preds = %1574, %1613, %1661, %1697, %1667, %1666, %1622, %1621, %1584, %1582, %1551, %1549, %1200
  %1703 = load i32, ptr @blk_cnt, align 4
  %1704 = trunc nuw nsw i64 %1201 to i32
  %1705 = urem i32 %1704, 6
  %1706 = xor i32 %1705, -1
  %1707 = add i32 %1703, %1706
  %1708 = shl nuw i32 1, %1707
  %1709 = and i32 %1708, %755
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1842, label %1711

1711:                                             ; preds = %1702
  %1712 = load i32, ptr @refidct, align 4, !tbaa !10
  %1713 = icmp eq i32 %1712, 0
  %1714 = load ptr, ptr @ld, align 8, !tbaa !6
  %1715 = getelementptr inbounds i8, ptr %1714, i64 2088
  %1716 = getelementptr inbounds [12 x [64 x i16]], ptr %1715, i64 0, i64 %1201
  br i1 %1713, label %1718, label %1717

1717:                                             ; preds = %1711
  tail call void @idctref(ptr noundef nonnull %1716) #9
  br label %1719

1718:                                             ; preds = %1711
  tail call void @idct(ptr noundef nonnull %1716) #9
  br label %1719

1719:                                             ; preds = %1718, %1717
  %1720 = load ptr, ptr @ld, align 8, !tbaa !6
  %1721 = getelementptr inbounds i8, ptr %1720, i64 2088
  %1722 = getelementptr inbounds [12 x [64 x i16]], ptr %1721, i64 0, i64 %1201
  %1723 = add nsw i32 %1202, -6
  %1724 = icmp ult i32 %1723, 4
  %1725 = and i32 %1202, 1
  br i1 %1724, label %1726, label %1740

1726:                                             ; preds = %1719
  %1727 = shl nuw nsw i32 %1725, 3
  %1728 = zext nneg i32 %1727 to i64
  %1729 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %1730 = load ptr, ptr @bframe, align 8, !tbaa !6
  %1731 = shl i32 %1704, 2
  %1732 = and i32 %1731, 8
  %1733 = or disjoint i32 %1732, %763
  %1734 = xor i32 %1733, 8
  %1735 = mul nsw i32 %1729, %1734
  %1736 = sext i32 %1735 to i64
  %1737 = getelementptr inbounds i8, ptr %1730, i64 %1736
  %1738 = getelementptr inbounds i8, ptr %1737, i64 %793
  %1739 = getelementptr inbounds i8, ptr %1738, i64 %1728
  br label %1750

1740:                                             ; preds = %1719
  %1741 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %1742 = mul nsw i32 %1741, %791
  %1743 = sext i32 %1742 to i64
  %1744 = add nuw nsw i32 %1725, 1
  %1745 = zext nneg i32 %1744 to i64
  %1746 = getelementptr inbounds [3 x ptr], ptr @bframe, i64 0, i64 %1745
  %1747 = load ptr, ptr %1746, align 8, !tbaa !6
  %1748 = getelementptr inbounds i8, ptr %1747, i64 %1743
  %1749 = getelementptr inbounds i8, ptr %1748, i64 %792
  br label %1750

1750:                                             ; preds = %1740, %1726
  %1751 = phi ptr [ %1749, %1740 ], [ %1739, %1726 ]
  %1752 = phi i32 [ %1741, %1740 ], [ %1729, %1726 ]
  %1753 = sext i32 %1752 to i64
  br label %1754

1754:                                             ; preds = %1754, %1750
  %1755 = phi ptr [ %1722, %1750 ], [ %1836, %1754 ]
  %1756 = phi ptr [ %1751, %1750 ], [ %1837, %1754 ]
  %1757 = phi i32 [ 0, %1750 ], [ %1838, %1754 ]
  %1758 = load ptr, ptr @clp, align 8, !tbaa !6
  %1759 = load i16, ptr %1755, align 2, !tbaa !12
  %1760 = sext i16 %1759 to i64
  %1761 = load i8, ptr %1756, align 1, !tbaa !14
  %1762 = zext i8 %1761 to i64
  %1763 = getelementptr i8, ptr %1758, i64 %1760
  %1764 = getelementptr i8, ptr %1763, i64 %1762
  %1765 = load i8, ptr %1764, align 1, !tbaa !14
  store i8 %1765, ptr %1756, align 1, !tbaa !14
  %1766 = load ptr, ptr @clp, align 8, !tbaa !6
  %1767 = getelementptr inbounds i8, ptr %1755, i64 2
  %1768 = load i16, ptr %1767, align 2, !tbaa !12
  %1769 = sext i16 %1768 to i64
  %1770 = getelementptr inbounds i8, ptr %1756, i64 1
  %1771 = load i8, ptr %1770, align 1, !tbaa !14
  %1772 = zext i8 %1771 to i64
  %1773 = getelementptr i8, ptr %1766, i64 %1769
  %1774 = getelementptr i8, ptr %1773, i64 %1772
  %1775 = load i8, ptr %1774, align 1, !tbaa !14
  store i8 %1775, ptr %1770, align 1, !tbaa !14
  %1776 = load ptr, ptr @clp, align 8, !tbaa !6
  %1777 = getelementptr inbounds i8, ptr %1755, i64 4
  %1778 = load i16, ptr %1777, align 2, !tbaa !12
  %1779 = sext i16 %1778 to i64
  %1780 = getelementptr inbounds i8, ptr %1756, i64 2
  %1781 = load i8, ptr %1780, align 1, !tbaa !14
  %1782 = zext i8 %1781 to i64
  %1783 = getelementptr i8, ptr %1776, i64 %1779
  %1784 = getelementptr i8, ptr %1783, i64 %1782
  %1785 = load i8, ptr %1784, align 1, !tbaa !14
  store i8 %1785, ptr %1780, align 1, !tbaa !14
  %1786 = load ptr, ptr @clp, align 8, !tbaa !6
  %1787 = getelementptr inbounds i8, ptr %1755, i64 6
  %1788 = load i16, ptr %1787, align 2, !tbaa !12
  %1789 = sext i16 %1788 to i64
  %1790 = getelementptr inbounds i8, ptr %1756, i64 3
  %1791 = load i8, ptr %1790, align 1, !tbaa !14
  %1792 = zext i8 %1791 to i64
  %1793 = getelementptr i8, ptr %1786, i64 %1789
  %1794 = getelementptr i8, ptr %1793, i64 %1792
  %1795 = load i8, ptr %1794, align 1, !tbaa !14
  store i8 %1795, ptr %1790, align 1, !tbaa !14
  %1796 = load ptr, ptr @clp, align 8, !tbaa !6
  %1797 = getelementptr inbounds i8, ptr %1755, i64 8
  %1798 = load i16, ptr %1797, align 2, !tbaa !12
  %1799 = sext i16 %1798 to i64
  %1800 = getelementptr inbounds i8, ptr %1756, i64 4
  %1801 = load i8, ptr %1800, align 1, !tbaa !14
  %1802 = zext i8 %1801 to i64
  %1803 = getelementptr i8, ptr %1796, i64 %1799
  %1804 = getelementptr i8, ptr %1803, i64 %1802
  %1805 = load i8, ptr %1804, align 1, !tbaa !14
  store i8 %1805, ptr %1800, align 1, !tbaa !14
  %1806 = load ptr, ptr @clp, align 8, !tbaa !6
  %1807 = getelementptr inbounds i8, ptr %1755, i64 10
  %1808 = load i16, ptr %1807, align 2, !tbaa !12
  %1809 = sext i16 %1808 to i64
  %1810 = getelementptr inbounds i8, ptr %1756, i64 5
  %1811 = load i8, ptr %1810, align 1, !tbaa !14
  %1812 = zext i8 %1811 to i64
  %1813 = getelementptr i8, ptr %1806, i64 %1809
  %1814 = getelementptr i8, ptr %1813, i64 %1812
  %1815 = load i8, ptr %1814, align 1, !tbaa !14
  store i8 %1815, ptr %1810, align 1, !tbaa !14
  %1816 = load ptr, ptr @clp, align 8, !tbaa !6
  %1817 = getelementptr inbounds i8, ptr %1755, i64 12
  %1818 = load i16, ptr %1817, align 2, !tbaa !12
  %1819 = sext i16 %1818 to i64
  %1820 = getelementptr inbounds i8, ptr %1756, i64 6
  %1821 = load i8, ptr %1820, align 1, !tbaa !14
  %1822 = zext i8 %1821 to i64
  %1823 = getelementptr i8, ptr %1816, i64 %1819
  %1824 = getelementptr i8, ptr %1823, i64 %1822
  %1825 = load i8, ptr %1824, align 1, !tbaa !14
  store i8 %1825, ptr %1820, align 1, !tbaa !14
  %1826 = load ptr, ptr @clp, align 8, !tbaa !6
  %1827 = getelementptr inbounds i8, ptr %1755, i64 14
  %1828 = load i16, ptr %1827, align 2, !tbaa !12
  %1829 = sext i16 %1828 to i64
  %1830 = getelementptr inbounds i8, ptr %1756, i64 7
  %1831 = load i8, ptr %1830, align 1, !tbaa !14
  %1832 = zext i8 %1831 to i64
  %1833 = getelementptr i8, ptr %1826, i64 %1829
  %1834 = getelementptr i8, ptr %1833, i64 %1832
  %1835 = load i8, ptr %1834, align 1, !tbaa !14
  store i8 %1835, ptr %1830, align 1, !tbaa !14
  %1836 = getelementptr inbounds i8, ptr %1755, i64 16
  %1837 = getelementptr inbounds i8, ptr %1756, i64 %1753
  %1838 = add nuw nsw i32 %1757, 1
  %1839 = icmp eq i32 %1838, 8
  br i1 %1839, label %1840, label %1754

1840:                                             ; preds = %1754
  %1841 = load i32, ptr @blk_cnt, align 4
  br label %1842

1842:                                             ; preds = %1840, %1702
  %1843 = phi i32 [ %1841, %1840 ], [ %1703, %1702 ]
  %1844 = add nuw nsw i64 %1201, 1
  %1845 = add nuw nsw i32 %1202, 1
  %1846 = add nsw i32 %1843, 5
  %1847 = sext i32 %1846 to i64
  %1848 = icmp slt i64 %1201, %1847
  br i1 %1848, label %1200, label %1849

1849:                                             ; preds = %1842, %767, %1179
  %1850 = phi i32 [ %768, %767 ], [ %1180, %1179 ], [ %1843, %1842 ]
  %1851 = icmp eq i32 %751, 0
  %1852 = icmp sgt i32 %1850, 0
  %1853 = select i1 %1851, i1 %1852, i1 false
  br i1 %1853, label %1856, label %1854

1854:                                             ; preds = %784, %1849
  %1855 = add nsw i64 %747, 1
  br label %1977

1856:                                             ; preds = %1849
  %1857 = add nsw i64 %747, 1
  %1858 = add nsw i32 %748, 1
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %1857, i64 %1859
  %1861 = load i32, ptr %1860, align 4, !tbaa !10
  %1862 = add i32 %1861, -3
  %1863 = icmp ult i32 %1862, 2
  br label %1869

1864:                                             ; preds = %1942
  %1865 = add nuw nsw i64 %1870, 1
  %1866 = load i32, ptr @blk_cnt, align 4
  %1867 = sext i32 %1866 to i64
  %1868 = icmp slt i64 %1865, %1867
  br i1 %1868, label %1869, label %1945

1869:                                             ; preds = %1864, %1856
  %1870 = phi i64 [ 0, %1856 ], [ %1865, %1864 ]
  %1871 = load ptr, ptr @ld, align 8, !tbaa !6
  %1872 = getelementptr i8, ptr %1871, i64 2088
  %1873 = getelementptr [12 x [64 x i16]], ptr %1872, i64 0, i64 %1870
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %1873, i8 0, i64 128, i1 false), !tbaa !10
  br i1 %1863, label %1874, label %1929

1874:                                             ; preds = %1869
  %1875 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1889, label %1877

1877:                                             ; preds = %1874
  %1878 = tail call signext i32 @decode_a_symbol(ptr noundef nonnull @cumf_INTRADC) #9
  %1879 = sext i32 %1878 to i64
  %1880 = getelementptr inbounds [0 x i32], ptr @intradctab, i64 0, i64 %1879
  %1881 = load i32, ptr %1880, align 4, !tbaa !10
  %1882 = trunc i32 %1881 to i16
  store i16 %1882, ptr %1873, align 2, !tbaa !12
  %1883 = load i32, ptr @trace, align 4, !tbaa !10
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1902, label %1885

1885:                                             ; preds = %1877
  %1886 = shl i32 %1881, 16
  %1887 = ashr exact i32 %1886, 16
  %1888 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef signext %1878, i32 noundef signext %1887)
  br label %1902

1889:                                             ; preds = %1874
  %1890 = tail call signext i32 @getbits(i32 noundef signext 8) #9
  %1891 = trunc i32 %1890 to i16
  store i16 %1891, ptr %1873, align 2, !tbaa !12
  %1892 = load i32, ptr @trace, align 4, !tbaa !10
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1902, label %1894

1894:                                             ; preds = %1889
  %1895 = trunc nuw nsw i64 %1870 to i32
  %1896 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef signext %1895)
  %1897 = load i16, ptr %1873, align 2, !tbaa !12
  %1898 = sext i16 %1897 to i32
  tail call void @printbits(i32 noundef signext %1898, i32 noundef signext 8, i32 noundef signext 8) #9
  %1899 = load i16, ptr %1873, align 2, !tbaa !12
  %1900 = sext i16 %1899 to i32
  %1901 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef signext %1900)
  br label %1902

1902:                                             ; preds = %1894, %1889, %1885, %1877
  %1903 = load i16, ptr %1873, align 2, !tbaa !12
  %1904 = icmp ne i16 %1903, 128
  %1905 = load i32, ptr @quiet, align 4
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1904, i1 true, i1 %1906
  br i1 %1907, label %1912, label %1908

1908:                                             ; preds = %1902
  %1909 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1910 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 26, i64 1, ptr %1909) #10
  %1911 = load i16, ptr %1873, align 2, !tbaa !12
  br label %1912

1912:                                             ; preds = %1908, %1902
  %1913 = phi i16 [ %1911, %1908 ], [ %1903, %1902 ]
  %1914 = icmp eq i16 %1913, 255
  %1915 = shl i16 %1913, 3
  %1916 = select i1 %1914, i16 1024, i16 %1915
  store i16 %1916, ptr %1873, align 2, !tbaa !12
  %1917 = load i32, ptr @blk_cnt, align 4, !tbaa !10
  %1918 = trunc nuw nsw i64 %1870 to i32
  %1919 = xor i32 %1918, -1
  %1920 = add i32 %1917, %1919
  %1921 = shl nuw i32 1, %1920
  %1922 = and i32 %1921, %732
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1942, label %1924

1924:                                             ; preds = %1912
  %1925 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %1927, label %1928

1927:                                             ; preds = %1924
  tail call void @getblock(i32 noundef signext %1918, i32 noundef signext 0) #9
  br label %1942

1928:                                             ; preds = %1924
  tail call void @get_sac_block(i32 noundef signext %1918, i32 noundef signext 0) #9
  br label %1942

1929:                                             ; preds = %1869
  %1930 = load i32, ptr @blk_cnt, align 4, !tbaa !10
  %1931 = trunc nuw nsw i64 %1870 to i32
  %1932 = xor i32 %1931, -1
  %1933 = add i32 %1930, %1932
  %1934 = shl nuw i32 1, %1933
  %1935 = and i32 %1934, %732
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1942, label %1937

1937:                                             ; preds = %1929
  %1938 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %1940, label %1941

1940:                                             ; preds = %1937
  tail call void @getblock(i32 noundef signext %1931, i32 noundef signext 1) #9
  br label %1942

1941:                                             ; preds = %1937
  tail call void @get_sac_block(i32 noundef signext %1931, i32 noundef signext 1) #9
  br label %1942

1942:                                             ; preds = %1941, %1940, %1929, %1928, %1927, %1912
  %1943 = load i32, ptr @fault, align 4, !tbaa !10
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %1864, label %101

1945:                                             ; preds = %1864
  %1946 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %1947 = icmp ne i32 %1946, 0
  %1948 = icmp sgt i32 %1866, 0
  %1949 = and i1 %1948, %1947
  br i1 %1949, label %1956, label %1977

1950:                                             ; preds = %1974
  %1951 = add nuw nsw i64 %1957, 1
  %1952 = load i32, ptr @blk_cnt, align 4, !tbaa !10
  %1953 = add nsw i32 %1952, 5
  %1954 = sext i32 %1953 to i64
  %1955 = icmp slt i64 %1957, %1954
  br i1 %1955, label %1956, label %1977

1956:                                             ; preds = %1945, %1950
  %1957 = phi i64 [ %1951, %1950 ], [ 6, %1945 ]
  %1958 = load ptr, ptr @ld, align 8, !tbaa !6
  %1959 = getelementptr i8, ptr %1958, i64 2088
  %1960 = getelementptr [12 x [64 x i16]], ptr %1959, i64 0, i64 %1957
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %1960, i8 0, i64 128, i1 false), !tbaa !10
  %1961 = load i32, ptr @blk_cnt, align 4, !tbaa !10
  %1962 = trunc nuw nsw i64 %1957 to i32
  %1963 = urem i32 %1962, 6
  %1964 = xor i32 %1963, -1
  %1965 = add i32 %1961, %1964
  %1966 = shl nuw i32 1, %1965
  %1967 = and i32 %1966, %731
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %1974, label %1969

1969:                                             ; preds = %1956
  %1970 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !10
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %1972, label %1973

1972:                                             ; preds = %1969
  tail call void @getblock(i32 noundef signext %1962, i32 noundef signext 1) #9
  br label %1974

1973:                                             ; preds = %1969
  tail call void @get_sac_block(i32 noundef signext %1962, i32 noundef signext 1) #9
  br label %1974

1974:                                             ; preds = %1973, %1972, %1956
  %1975 = load i32, ptr @fault, align 4, !tbaa !10
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %1950, label %101

1977:                                             ; preds = %1950, %1854, %1945
  %1978 = phi i64 [ %1855, %1854 ], [ %1857, %1945 ], [ %1857, %1950 ]
  %1979 = add nsw i32 %752, 1
  %1980 = load ptr, ptr @stdout, align 8, !tbaa !6
  %1981 = tail call signext i32 @fflush(ptr noundef %1980)
  %1982 = icmp slt i32 %1979, %30
  %1983 = icmp ne i32 %753, 0
  %1984 = select i1 %1982, i1 true, i1 %1983
  br i1 %1984, label %84, label %746

1985:                                             ; preds = %135, %144, %194, %165, %168
  %1986 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2013, label %1988

1988:                                             ; preds = %1985
  %1989 = load i32, ptr @expand, align 4, !tbaa !10
  %1990 = icmp ne i32 %1989, 0
  %1991 = load i32, ptr @outtype, align 4
  %1992 = icmp eq i32 %1991, 4
  %1993 = select i1 %1990, i1 %1992, i1 false
  br i1 %1993, label %1994, label %2007

1994:                                             ; preds = %1988
  %1995 = load ptr, ptr @bframe, align 8, !tbaa !6
  %1996 = load ptr, ptr @exnewframe, align 8, !tbaa !6
  %1997 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %1998 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %1995, ptr noundef %1996, i32 noundef signext %1997, i32 noundef signext %1998)
  %1999 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 8), align 8, !tbaa !6
  %2000 = load ptr, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 8), align 8, !tbaa !6
  %2001 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %2002 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %1999, ptr noundef %2000, i32 noundef signext %2001, i32 noundef signext %2002)
  %2003 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 16), align 8, !tbaa !6
  %2004 = load ptr, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 16), align 8, !tbaa !6
  %2005 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %2006 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %2003, ptr noundef %2004, i32 noundef signext %2005, i32 noundef signext %2006)
  br label %2007

2007:                                             ; preds = %1988, %1994
  %2008 = phi ptr [ @exnewframe, %1994 ], [ @bframe, %1988 ]
  %2009 = load i32, ptr %0, align 4, !tbaa !10
  tail call void @storeframe(ptr noundef nonnull %2008, i32 noundef signext %2009) #9
  %2010 = load i32, ptr @pb_frame, align 4, !tbaa !10
  %2011 = load i32, ptr %0, align 4, !tbaa !10
  %2012 = add nsw i32 %2011, %2010
  store i32 %2012, ptr %0, align 4, !tbaa !10
  br label %2013

2013:                                             ; preds = %2007, %1985
  %2014 = load i32, ptr @expand, align 4, !tbaa !10
  %2015 = icmp ne i32 %2014, 0
  %2016 = load i32, ptr @outtype, align 4
  %2017 = icmp eq i32 %2016, 4
  %2018 = select i1 %2015, i1 %2017, i1 false
  br i1 %2018, label %2019, label %2032

2019:                                             ; preds = %2013
  %2020 = load ptr, ptr @newframe, align 8, !tbaa !6
  %2021 = load ptr, ptr @exnewframe, align 8, !tbaa !6
  %2022 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %2023 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %2020, ptr noundef %2021, i32 noundef signext %2022, i32 noundef signext %2023)
  %2024 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 8), align 8, !tbaa !6
  %2025 = load ptr, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 8), align 8, !tbaa !6
  %2026 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %2027 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %2024, ptr noundef %2025, i32 noundef signext %2026, i32 noundef signext %2027)
  %2028 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 16), align 8, !tbaa !6
  %2029 = load ptr, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 16), align 8, !tbaa !6
  %2030 = load i32, ptr @chrom_width, align 4, !tbaa !10
  %2031 = load i32, ptr @chrom_height, align 4, !tbaa !10
  tail call void @interpolate_image(ptr noundef %2028, ptr noundef %2029, i32 noundef signext %2030, i32 noundef signext %2031)
  br label %2032

2032:                                             ; preds = %2013, %2019
  %2033 = phi ptr [ @exnewframe, %2019 ], [ @newframe, %2013 ]
  %2034 = load i32, ptr %0, align 4, !tbaa !10
  tail call void @storeframe(ptr noundef nonnull %2033, i32 noundef signext %2034) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @make_edge_image(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) unnamed_addr #1 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp sgt i32 %2, 0
  %9 = shl nuw nsw i32 %4, 1
  %10 = add nsw i32 %9, %2
  %11 = sext i32 %10 to i64
  %12 = sext i32 %2 to i64
  br i1 %8, label %13, label %35

13:                                               ; preds = %7
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %26
  %16 = phi i32 [ %29, %26 ], [ 0, %13 ]
  %17 = phi ptr [ %28, %26 ], [ %0, %13 ]
  %18 = phi ptr [ %27, %26 ], [ %1, %13 ]
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %24, %19 ]
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %23 = getelementptr inbounds i8, ptr %18, i64 %20
  store i8 %22, ptr %23, align 1, !tbaa !14
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, ptr %18, i64 %11
  %28 = getelementptr inbounds i8, ptr %17, i64 %12
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %15

31:                                               ; preds = %26
  br i1 %6, label %35, label %32

32:                                               ; preds = %5, %31
  %33 = shl nuw nsw i32 %4, 1
  %34 = add nsw i32 %33, %2
  br label %66

35:                                               ; preds = %7, %31
  %36 = icmp sgt i32 %4, 0
  %37 = sext i32 %2 to i64
  %38 = shl nuw nsw i32 %4, 1
  %39 = add nsw i32 %38, %2
  %40 = sext i32 %39 to i64
  br i1 %36, label %41, label %152

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %1, i64 -1
  %43 = zext nneg i32 %4 to i64
  br label %44

44:                                               ; preds = %41, %61
  %45 = phi i32 [ %64, %61 ], [ 0, %41 ]
  %46 = phi ptr [ %63, %61 ], [ %0, %41 ]
  %47 = phi ptr [ %62, %61 ], [ %42, %41 ]
  %48 = getelementptr i8, ptr %46, i64 -1
  %49 = getelementptr i8, ptr %48, i64 %37
  %50 = getelementptr inbounds i8, ptr %47, i64 %37
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  br label %52

52:                                               ; preds = %44, %52
  %53 = phi i64 [ 0, %44 ], [ %59, %52 ]
  %54 = load i8, ptr %46, align 1, !tbaa !14
  %55 = sub nsw i64 0, %53
  %56 = getelementptr inbounds i8, ptr %47, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !14
  %57 = load i8, ptr %49, align 1, !tbaa !14
  %58 = getelementptr inbounds i8, ptr %51, i64 %53
  store i8 %57, ptr %58, align 1, !tbaa !14
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, %43
  br i1 %60, label %61, label %52

61:                                               ; preds = %52
  %62 = getelementptr inbounds i8, ptr %47, i64 %40
  %63 = getelementptr inbounds i8, ptr %46, i64 %37
  %64 = add nuw nsw i32 %45, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %66, label %44

66:                                               ; preds = %61, %32
  %67 = phi i32 [ %34, %32 ], [ %39, %61 ]
  %68 = phi i32 [ %33, %32 ], [ %38, %61 ]
  %69 = add nsw i32 %3, -1
  %70 = mul nsw i32 %69, %2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %0, i64 %71
  %73 = icmp sgt i32 %4, 0
  br i1 %73, label %74, label %152

74:                                               ; preds = %66
  %75 = sext i32 %67 to i64
  %76 = sub nsw i64 0, %75
  %77 = icmp sgt i32 %2, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = sext i32 %2 to i64
  br label %106

80:                                               ; preds = %74
  %81 = mul nsw i32 %67, %69
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %1, i64 %82
  %84 = zext nneg i32 %2 to i64
  br label %85

85:                                               ; preds = %80, %101
  %86 = phi i32 [ %102, %101 ], [ 0, %80 ]
  %87 = phi ptr [ %90, %101 ], [ %83, %80 ]
  %88 = phi ptr [ %89, %101 ], [ %1, %80 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 %76
  %90 = getelementptr inbounds i8, ptr %87, i64 %75
  br label %91

91:                                               ; preds = %85, %91
  %92 = phi i64 [ 0, %85 ], [ %99, %91 ]
  %93 = getelementptr inbounds i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !14
  %95 = getelementptr inbounds i8, ptr %89, i64 %92
  store i8 %94, ptr %95, align 1, !tbaa !14
  %96 = getelementptr inbounds i8, ptr %72, i64 %92
  %97 = load i8, ptr %96, align 1, !tbaa !14
  %98 = getelementptr inbounds i8, ptr %90, i64 %92
  store i8 %97, ptr %98, align 1, !tbaa !14
  %99 = add nuw nsw i64 %92, 1
  %100 = icmp eq i64 %99, %84
  br i1 %100, label %101, label %91

101:                                              ; preds = %91
  %102 = add nuw nsw i32 %86, 1
  %103 = icmp eq i32 %102, %4
  br i1 %103, label %104, label %85

104:                                              ; preds = %101
  %105 = zext nneg i32 %2 to i64
  br i1 %73, label %106, label %152

106:                                              ; preds = %78, %104
  %107 = phi i64 [ %79, %78 ], [ %105, %104 ]
  %108 = getelementptr inbounds i8, ptr %0, i64 %107
  %109 = getelementptr inbounds i8, ptr %108, i64 -1
  %110 = getelementptr inbounds i8, ptr %72, i64 %107
  %111 = getelementptr inbounds i8, ptr %110, i64 -1
  %112 = mul nsw i32 %67, %3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %1, i64 %113
  %115 = getelementptr inbounds i8, ptr %114, i64 -1
  %116 = getelementptr inbounds i8, ptr %115, i64 %107
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = getelementptr inbounds i8, ptr %1, i64 %76
  %119 = getelementptr inbounds i8, ptr %118, i64 -1
  %120 = getelementptr inbounds i8, ptr %119, i64 %107
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  %122 = zext nneg i32 %68 to i64
  %123 = zext nneg i32 %4 to i64
  br label %124

124:                                              ; preds = %143, %106
  %125 = phi i32 [ 0, %106 ], [ %150, %143 ]
  %126 = phi ptr [ %117, %106 ], [ %149, %143 ]
  %127 = phi ptr [ %115, %106 ], [ %147, %143 ]
  %128 = phi ptr [ %121, %106 ], [ %145, %143 ]
  %129 = phi ptr [ %119, %106 ], [ %144, %143 ]
  br label %130

130:                                              ; preds = %124, %130
  %131 = phi i64 [ 0, %124 ], [ %141, %130 ]
  %132 = load i8, ptr %0, align 1, !tbaa !14
  %133 = sub nsw i64 0, %131
  %134 = getelementptr inbounds i8, ptr %129, i64 %133
  store i8 %132, ptr %134, align 1, !tbaa !14
  %135 = load i8, ptr %109, align 1, !tbaa !14
  %136 = getelementptr inbounds i8, ptr %128, i64 %131
  store i8 %135, ptr %136, align 1, !tbaa !14
  %137 = load i8, ptr %72, align 1, !tbaa !14
  %138 = getelementptr inbounds i8, ptr %127, i64 %133
  store i8 %137, ptr %138, align 1, !tbaa !14
  %139 = load i8, ptr %111, align 1, !tbaa !14
  %140 = getelementptr inbounds i8, ptr %126, i64 %131
  store i8 %139, ptr %140, align 1, !tbaa !14
  %141 = add nuw nsw i64 %131, 1
  %142 = icmp eq i64 %141, %123
  br i1 %142, label %143, label %130

143:                                              ; preds = %130
  %144 = getelementptr inbounds i8, ptr %129, i64 %76
  %145 = getelementptr inbounds i8, ptr %128, i64 %76
  %146 = getelementptr inbounds i8, ptr %127, i64 %107
  %147 = getelementptr inbounds i8, ptr %146, i64 %122
  %148 = getelementptr inbounds i8, ptr %126, i64 %107
  %149 = getelementptr inbounds i8, ptr %148, i64 %122
  %150 = add nuw nsw i32 %125, 1
  %151 = icmp eq i32 %150, %4
  br i1 %151, label %152, label %124

152:                                              ; preds = %143, %35, %66, %104
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @interpolate_image(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #1 {
  %5 = shl i32 %2, 1
  %6 = add i32 %3, -1
  %7 = icmp sgt i32 %3, 1
  %8 = add i32 %2, -1
  br i1 %7, label %9, label %102

9:                                                ; preds = %4
  %10 = icmp sgt i32 %2, 1
  %11 = sext i32 %2 to i64
  %12 = sext i32 %5 to i64
  %13 = shl i32 %2, 2
  %14 = sext i32 %13 to i64
  br i1 %10, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %0, i64 %11
  %17 = getelementptr inbounds i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1, !tbaa !14
  br label %82

19:                                               ; preds = %9
  %20 = zext i32 %8 to i64
  br label %21

21:                                               ; preds = %19, %67
  %22 = phi ptr [ %68, %67 ], [ %0, %19 ]
  %23 = phi ptr [ %79, %67 ], [ %1, %19 ]
  %24 = phi i32 [ %80, %67 ], [ 0, %19 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 %12
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %65, %26 ]
  %28 = phi i64 [ 0, %21 ], [ %64, %26 ]
  %29 = getelementptr inbounds i8, ptr %22, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !14
  %31 = getelementptr inbounds i8, ptr %23, i64 %27
  store i8 %30, ptr %31, align 1, !tbaa !14
  %32 = zext i8 %30 to i16
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !14
  %35 = zext i8 %34 to i16
  %36 = add nuw nsw i16 %35, %32
  %37 = lshr i16 %36, 1
  %38 = trunc nuw i16 %37 to i8
  %39 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %38, ptr %39, align 1, !tbaa !14
  %40 = load i8, ptr %29, align 1, !tbaa !14
  %41 = zext i8 %40 to i16
  %42 = getelementptr inbounds i8, ptr %29, i64 %11
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %44 = zext i8 %43 to i16
  %45 = add nuw nsw i16 %44, %41
  %46 = lshr i16 %45, 1
  %47 = trunc nuw i16 %46 to i8
  %48 = getelementptr inbounds i8, ptr %25, i64 %27
  store i8 %47, ptr %48, align 1, !tbaa !14
  %49 = load i8, ptr %29, align 1, !tbaa !14
  %50 = zext i8 %49 to i16
  %51 = load i8, ptr %33, align 1, !tbaa !14
  %52 = zext i8 %51 to i16
  %53 = add nuw nsw i16 %52, %50
  %54 = load i8, ptr %42, align 1, !tbaa !14
  %55 = zext i8 %54 to i16
  %56 = add nuw nsw i16 %53, %55
  %57 = getelementptr inbounds i8, ptr %42, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %59 = zext i8 %58 to i16
  %60 = add nuw nsw i16 %56, %59
  %61 = lshr i16 %60, 2
  %62 = trunc nuw i16 %61 to i8
  %63 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !14
  %64 = add nuw nsw i64 %28, 1
  %65 = add nuw nsw i64 %27, 2
  %66 = icmp eq i64 %64, %20
  br i1 %66, label %67, label %26

67:                                               ; preds = %26
  %68 = getelementptr inbounds i8, ptr %22, i64 %11
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1, !tbaa !14
  %71 = getelementptr inbounds i8, ptr %25, i64 -2
  store i8 %70, ptr %71, align 1, !tbaa !14
  %72 = getelementptr inbounds i8, ptr %25, i64 -1
  store i8 %70, ptr %72, align 1, !tbaa !14
  %73 = getelementptr inbounds i8, ptr %68, i64 %11
  %74 = getelementptr inbounds i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !14
  %76 = getelementptr inbounds i8, ptr %25, i64 %12
  %77 = getelementptr inbounds i8, ptr %76, i64 -2
  store i8 %75, ptr %77, align 1, !tbaa !14
  %78 = getelementptr inbounds i8, ptr %76, i64 -1
  store i8 %75, ptr %78, align 1, !tbaa !14
  %79 = getelementptr inbounds i8, ptr %23, i64 %14
  %80 = add nuw nsw i32 %24, 1
  %81 = icmp eq i32 %80, %6
  br i1 %81, label %102, label %21

82:                                               ; preds = %15, %82
  %83 = phi i8 [ %95, %82 ], [ %18, %15 ]
  %84 = phi ptr [ %87, %82 ], [ %0, %15 ]
  %85 = phi ptr [ %99, %82 ], [ %1, %15 ]
  %86 = phi i32 [ %100, %82 ], [ 0, %15 ]
  %87 = getelementptr inbounds i8, ptr %84, i64 %11
  %88 = getelementptr inbounds i8, ptr %87, i64 -1
  %89 = getelementptr inbounds i8, ptr %85, i64 %12
  %90 = getelementptr inbounds i8, ptr %89, i64 -2
  store i8 %83, ptr %90, align 1, !tbaa !14
  %91 = load i8, ptr %88, align 1, !tbaa !14
  %92 = getelementptr inbounds i8, ptr %89, i64 -1
  store i8 %91, ptr %92, align 1, !tbaa !14
  %93 = getelementptr inbounds i8, ptr %87, i64 %11
  %94 = getelementptr inbounds i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1, !tbaa !14
  %96 = getelementptr inbounds i8, ptr %89, i64 %12
  %97 = getelementptr inbounds i8, ptr %96, i64 -2
  store i8 %95, ptr %97, align 1, !tbaa !14
  %98 = getelementptr inbounds i8, ptr %96, i64 -1
  store i8 %95, ptr %98, align 1, !tbaa !14
  %99 = getelementptr inbounds i8, ptr %85, i64 %14
  %100 = add nuw nsw i32 %86, 1
  %101 = icmp eq i32 %100, %6
  br i1 %101, label %102, label %82

102:                                              ; preds = %82, %67, %4
  %103 = phi ptr [ %1, %4 ], [ %79, %67 ], [ %99, %82 ]
  %104 = phi ptr [ %0, %4 ], [ %68, %67 ], [ %87, %82 ]
  %105 = icmp sgt i32 %2, 1
  %106 = sext i32 %5 to i64
  br i1 %105, label %107, label %138

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, ptr %103, i64 %106
  %109 = zext i32 %8 to i64
  br label %110

110:                                              ; preds = %107, %110
  %111 = phi i64 [ 0, %107 ], [ %136, %110 ]
  %112 = phi i64 [ 0, %107 ], [ %135, %110 ]
  %113 = getelementptr inbounds i8, ptr %104, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !14
  %115 = getelementptr inbounds i8, ptr %103, i64 %111
  store i8 %114, ptr %115, align 1, !tbaa !14
  %116 = zext i8 %114 to i16
  %117 = getelementptr inbounds i8, ptr %113, i64 1
  %118 = load i8, ptr %117, align 1, !tbaa !14
  %119 = zext i8 %118 to i16
  %120 = add nuw nsw i16 %116, 1
  %121 = add nuw nsw i16 %120, %119
  %122 = lshr i16 %121, 1
  %123 = trunc nuw i16 %122 to i8
  %124 = getelementptr inbounds i8, ptr %115, i64 1
  store i8 %123, ptr %124, align 1, !tbaa !14
  %125 = load i8, ptr %113, align 1, !tbaa !14
  %126 = getelementptr inbounds i8, ptr %108, i64 %111
  store i8 %125, ptr %126, align 1, !tbaa !14
  %127 = zext i8 %125 to i16
  %128 = load i8, ptr %117, align 1, !tbaa !14
  %129 = zext i8 %128 to i16
  %130 = add nuw nsw i16 %127, 1
  %131 = add nuw nsw i16 %130, %129
  %132 = lshr i16 %131, 1
  %133 = trunc nuw i16 %132 to i8
  %134 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 %133, ptr %134, align 1, !tbaa !14
  %135 = add nuw nsw i64 %112, 1
  %136 = add nuw nsw i64 %111, 2
  %137 = icmp eq i64 %135, %109
  br i1 %137, label %138, label %110

138:                                              ; preds = %110, %102
  %139 = sext i32 %2 to i64
  %140 = getelementptr inbounds i8, ptr %104, i64 %139
  %141 = getelementptr inbounds i8, ptr %140, i64 -1
  %142 = load i8, ptr %141, align 1, !tbaa !14
  %143 = getelementptr inbounds i8, ptr %103, i64 %106
  %144 = getelementptr inbounds i8, ptr %143, i64 -2
  store i8 %142, ptr %144, align 1, !tbaa !14
  %145 = getelementptr inbounds i8, ptr %143, i64 -1
  store i8 %142, ptr %145, align 1, !tbaa !14
  %146 = load i8, ptr %141, align 1, !tbaa !14
  %147 = shl i32 %2, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %103, i64 %148
  %150 = getelementptr inbounds i8, ptr %149, i64 -2
  store i8 %146, ptr %150, align 1, !tbaa !14
  %151 = getelementptr inbounds i8, ptr %149, i64 -1
  store i8 %146, ptr %151, align 1, !tbaa !14
  ret void
}

declare dso_local void @storeframe(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare dso_local void @startcode() local_unnamed_addr #2

declare dso_local signext i32 @showbits(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @getheader() local_unnamed_addr #2

declare dso_local signext i32 @getbits(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @decoder_reset(...) local_unnamed_addr #2

declare dso_local signext i32 @decode_a_symbol(ptr noundef) local_unnamed_addr #2

declare dso_local void @flushbits(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @getMCBPCintra() local_unnamed_addr #2

declare dso_local signext i32 @getMCBPC() local_unnamed_addr #2

declare dso_local signext i32 @getMODB() local_unnamed_addr #2

declare dso_local signext i32 @getCBPY() local_unnamed_addr #2

declare dso_local void @printbits(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @getTMNMV() local_unnamed_addr #2

declare dso_local void @reconstruct(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @idctref(ptr noundef) local_unnamed_addr #2

declare dso_local void @idct(ptr noundef) local_unnamed_addr #2

declare dso_local void @getblock(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @get_sac_block(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

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
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!8, !8, i64 0}
