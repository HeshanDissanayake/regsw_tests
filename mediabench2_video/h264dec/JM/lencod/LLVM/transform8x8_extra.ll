; ModuleID = 'src/transform8x8.c'
source_filename = "src/transform8x8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }

@quant_coef8 = dso_local local_unnamed_addr constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 4
@dequant_coef8 = dso_local local_unnamed_addr constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 4
@SNGL_SCAN8x8 = dso_local local_unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 1
@FIELD_SCAN8x8 = dso_local local_unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 1
@COEFF_COST8x8 = dso_local local_unnamed_addr constant <{ <{ [24 x i8], [40 x i8] }>, [64 x i8] }> <{ <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09" }>, align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@cofAC8x8 = external dso_local local_unnamed_addr global ptr, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org = external dso_local local_unnamed_addr global ptr, align 8
@resTrans_R = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_B = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_G = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resG = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resB = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resR = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@cofAC8x8_chroma = dso_local local_unnamed_addr global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 4
@dc_level_temp = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@dc_level = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@cbp_chroma_block_temp = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@cbp_chroma_block = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@assignSE2partition = external dso_local local_unnamed_addr global [2 x ptr], align 8
@LevelScale8x8Luma = external dso_local local_unnamed_addr global ptr, align 8
@LevelOffset8x8Luma = external dso_local local_unnamed_addr global ptr, align 8
@InvLevelScale8x8Luma = external dso_local local_unnamed_addr global ptr, align 8
@AdaptRndWeight = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = tail call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double 4.999000e-01)
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fptosi double %5 to i32
  store i32 %6, ptr %1, align 4, !tbaa !6
  %7 = call signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext 0, double noundef %0, ptr noundef nonnull %3)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load i32, ptr %3, align 4, !tbaa !6
  %11 = load i32, ptr %1, align 4, !tbaa !6
  %12 = add nsw i32 %11, %10
  store i32 %12, ptr %1, align 4, !tbaa !6
  %13 = call signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext 1, double noundef %0, ptr noundef nonnull %3)
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 2
  %16 = or disjoint i32 %15, %9
  %17 = load i32, ptr %3, align 4, !tbaa !6
  %18 = load i32, ptr %1, align 4, !tbaa !6
  %19 = add nsw i32 %18, %17
  store i32 %19, ptr %1, align 4, !tbaa !6
  %20 = call signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext 2, double noundef %0, ptr noundef nonnull %3)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 4
  %23 = or disjoint i32 %22, %16
  %24 = load i32, ptr %3, align 4, !tbaa !6
  %25 = load i32, ptr %1, align 4, !tbaa !6
  %26 = add nsw i32 %25, %24
  store i32 %26, ptr %1, align 4, !tbaa !6
  %27 = call signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext 3, double noundef %0, ptr noundef nonnull %3)
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 8
  %30 = or disjoint i32 %29, %23
  %31 = load i32, ptr %3, align 4, !tbaa !6
  %32 = load i32, ptr %1, align 4, !tbaa !6
  %33 = add nsw i32 %32, %31
  store i32 %33, ptr %1, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i32], align 4
  %7 = alloca [2 x [16 x [16 x i32]]], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca [2 x [4 x [4 x [4 x i32]]]], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #8
  %14 = and i32 %0, 1
  %15 = shl nuw nsw i32 %14, 3
  %16 = shl i32 %0, 2
  %17 = and i32 %16, -8
  %18 = load ptr, ptr @img, align 8, !tbaa !10
  %19 = getelementptr inbounds i8, ptr %18, i64 152
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = add i32 %20, %15
  %22 = getelementptr inbounds i8, ptr %18, i64 156
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = add nsw i32 %23, %17
  %25 = getelementptr inbounds i8, ptr %18, i64 168
  %26 = load i32, ptr %25, align 8, !tbaa !18
  %27 = add nsw i32 %26, %15
  %28 = getelementptr inbounds i8, ptr %18, i64 172
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = add nsw i32 %29, %17
  %31 = sdiv i32 %21, 4
  %32 = sdiv i32 %24, 4
  %33 = load ptr, ptr @imgY_org, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %34 = getelementptr inbounds i8, ptr %18, i64 31576
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = getelementptr inbounds i8, ptr %18, i64 12
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 416
  %41 = load i32, ptr %40, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %13) #8
  %42 = shl nuw nsw i32 %14, 1
  %43 = and i32 %0, -2
  call void @getLuma4x4Neighbour(i32 noundef signext %37, i32 noundef signext %42, i32 noundef signext %43, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %11) #8
  %44 = load ptr, ptr @img, align 8, !tbaa !10
  %45 = getelementptr inbounds i8, ptr %44, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !21
  call void @getLuma4x4Neighbour(i32 noundef signext %46, i32 noundef signext %42, i32 noundef signext %43, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %12) #8
  %47 = load ptr, ptr @input, align 8, !tbaa !10
  %48 = getelementptr inbounds i8, ptr %47, i64 220
  %49 = load i32, ptr %48, align 4, !tbaa !25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %3
  %52 = load i32, ptr %12, align 4, !tbaa !27
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @img, align 8, !tbaa !10
  %56 = getelementptr inbounds i8, ptr %55, i64 89192
  %57 = load ptr, ptr %56, align 8, !tbaa !29
  %58 = getelementptr inbounds i8, ptr %12, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !30
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %57, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !6
  br label %63

63:                                               ; preds = %51, %54
  %64 = phi i32 [ %62, %54 ], [ 0, %51 ]
  store i32 %64, ptr %12, align 4, !tbaa !27
  %65 = load i32, ptr %11, align 4, !tbaa !27
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @img, align 8, !tbaa !10
  %69 = getelementptr inbounds i8, ptr %68, i64 89192
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = getelementptr inbounds i8, ptr %11, i64 4
  %72 = load i32, ptr %71, align 4, !tbaa !30
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !6
  br label %76

76:                                               ; preds = %63, %67
  %77 = phi i32 [ %75, %67 ], [ 0, %63 ]
  store i32 %77, ptr %11, align 4, !tbaa !27
  br label %78

78:                                               ; preds = %76, %3
  %79 = load i32, ptr %12, align 4, !tbaa !27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %78
  %82 = icmp ult i32 %0, 2
  %83 = select i1 %82, i64 104, i64 112
  %84 = load ptr, ptr @img, align 8, !tbaa !10
  %85 = getelementptr inbounds i8, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = getelementptr inbounds i8, ptr %12, i64 20
  %88 = load i32, ptr %87, align 4, !tbaa !31
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %86, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = getelementptr inbounds i8, ptr %12, i64 16
  %93 = load i32, ptr %92, align 4, !tbaa !32
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !33
  br label %97

97:                                               ; preds = %78, %81
  %98 = phi i8 [ %96, %81 ], [ -1, %78 ]
  %99 = load i32, ptr %11, align 4, !tbaa !27
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = icmp eq i32 %14, 0
  %103 = select i1 %102, i64 104, i64 112
  %104 = load ptr, ptr @img, align 8, !tbaa !10
  %105 = getelementptr inbounds i8, ptr %104, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !10
  %107 = getelementptr inbounds i8, ptr %11, i64 20
  %108 = load i32, ptr %107, align 4, !tbaa !31
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %106, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !10
  %112 = getelementptr inbounds i8, ptr %11, i64 16
  %113 = load i32, ptr %112, align 4, !tbaa !32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %111, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !33
  br label %117

117:                                              ; preds = %97, %101
  %118 = phi i8 [ %116, %101 ], [ -1, %97 ]
  %119 = call i8 @llvm.umin.i8(i8 %98, i8 %118)
  %120 = zext i8 %119 to i32
  store i32 2147483647, ptr %2, align 4, !tbaa !6
  call void @intrapred_luma8x8(i32 noundef signext %21, i32 noundef signext %24, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %121 = load i32, ptr %9, align 4
  %122 = icmp ne i32 %121, 0
  %123 = load i32, ptr %8, align 4
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr %10, align 4
  %126 = icmp ne i32 %125, 0
  %127 = sext i32 %41 to i64
  %128 = add nsw i32 %0, 4
  %129 = add nsw i32 %0, 8
  %130 = sext i32 %0 to i64
  %131 = zext nneg i32 %15 to i64
  %132 = sext i32 %21 to i64
  %133 = getelementptr inbounds i8, ptr %7, i64 1024
  %134 = fmul double %1, 4.000000e+00
  %135 = call double @llvm.floor.f64(double %134)
  %136 = fptosi double %135 to i32
  %137 = zext nneg i32 %15 to i64
  %138 = sext i32 %27 to i64
  %139 = sext i32 %17 to i64
  %140 = sext i32 %30 to i64
  %141 = sext i32 %24 to i64
  %142 = zext i8 %119 to i64
  %143 = add nsw i32 %21, 7
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %132, 1
  %146 = add nsw i64 %132, 2
  %147 = add nsw i64 %132, 3
  %148 = add nsw i64 %132, 4
  %149 = add nsw i64 %132, 5
  %150 = add nsw i64 %132, 6
  %151 = add nsw i64 %132, 7
  %152 = getelementptr ptr, ptr %33, i64 %140
  %153 = or i32 %16, 7
  %154 = sext i32 %153 to i64
  %155 = getelementptr ptr, ptr %33, i64 %140
  br label %156

156:                                              ; preds = %117, %2026
  %157 = phi i16 [ undef, %117 ], [ %2027, %2026 ]
  %158 = phi i16 [ undef, %117 ], [ %2028, %2026 ]
  %159 = phi i16 [ undef, %117 ], [ %2029, %2026 ]
  %160 = phi i16 [ undef, %117 ], [ %2030, %2026 ]
  %161 = phi i16 [ undef, %117 ], [ %2031, %2026 ]
  %162 = phi i16 [ undef, %117 ], [ %2032, %2026 ]
  %163 = phi i16 [ undef, %117 ], [ %2033, %2026 ]
  %164 = phi i16 [ undef, %117 ], [ %2034, %2026 ]
  %165 = phi i16 [ undef, %117 ], [ %2035, %2026 ]
  %166 = phi i16 [ undef, %117 ], [ %2036, %2026 ]
  %167 = phi i16 [ undef, %117 ], [ %2037, %2026 ]
  %168 = phi i16 [ undef, %117 ], [ %2038, %2026 ]
  %169 = phi i16 [ undef, %117 ], [ %2039, %2026 ]
  %170 = phi i16 [ undef, %117 ], [ %2040, %2026 ]
  %171 = phi i16 [ undef, %117 ], [ %2041, %2026 ]
  %172 = phi i16 [ undef, %117 ], [ %2042, %2026 ]
  %173 = phi i16 [ undef, %117 ], [ %2043, %2026 ]
  %174 = phi i16 [ undef, %117 ], [ %2044, %2026 ]
  %175 = phi i16 [ undef, %117 ], [ %2045, %2026 ]
  %176 = phi i16 [ undef, %117 ], [ %2046, %2026 ]
  %177 = phi i16 [ undef, %117 ], [ %2047, %2026 ]
  %178 = phi i16 [ undef, %117 ], [ %2048, %2026 ]
  %179 = phi i16 [ undef, %117 ], [ %2049, %2026 ]
  %180 = phi i16 [ undef, %117 ], [ %2050, %2026 ]
  %181 = phi i16 [ undef, %117 ], [ %2051, %2026 ]
  %182 = phi i16 [ undef, %117 ], [ %2052, %2026 ]
  %183 = phi i16 [ undef, %117 ], [ %2053, %2026 ]
  %184 = phi i16 [ undef, %117 ], [ %2054, %2026 ]
  %185 = phi i16 [ undef, %117 ], [ %2055, %2026 ]
  %186 = phi i16 [ undef, %117 ], [ %2056, %2026 ]
  %187 = phi i16 [ undef, %117 ], [ %2057, %2026 ]
  %188 = phi i16 [ undef, %117 ], [ %2058, %2026 ]
  %189 = phi i16 [ undef, %117 ], [ %2059, %2026 ]
  %190 = phi i16 [ undef, %117 ], [ %2060, %2026 ]
  %191 = phi i16 [ undef, %117 ], [ %2061, %2026 ]
  %192 = phi i16 [ undef, %117 ], [ %2062, %2026 ]
  %193 = phi i16 [ undef, %117 ], [ %2063, %2026 ]
  %194 = phi i16 [ undef, %117 ], [ %2064, %2026 ]
  %195 = phi i16 [ undef, %117 ], [ %2065, %2026 ]
  %196 = phi i16 [ undef, %117 ], [ %2066, %2026 ]
  %197 = phi i16 [ undef, %117 ], [ %2067, %2026 ]
  %198 = phi i16 [ undef, %117 ], [ %2068, %2026 ]
  %199 = phi i16 [ undef, %117 ], [ %2069, %2026 ]
  %200 = phi i16 [ undef, %117 ], [ %2070, %2026 ]
  %201 = phi i16 [ undef, %117 ], [ %2071, %2026 ]
  %202 = phi i16 [ undef, %117 ], [ %2072, %2026 ]
  %203 = phi i16 [ undef, %117 ], [ %2073, %2026 ]
  %204 = phi i16 [ undef, %117 ], [ %2074, %2026 ]
  %205 = phi i16 [ undef, %117 ], [ %2075, %2026 ]
  %206 = phi i16 [ undef, %117 ], [ %2076, %2026 ]
  %207 = phi i16 [ undef, %117 ], [ %2077, %2026 ]
  %208 = phi i16 [ undef, %117 ], [ %2078, %2026 ]
  %209 = phi i16 [ undef, %117 ], [ %2079, %2026 ]
  %210 = phi i16 [ undef, %117 ], [ %2080, %2026 ]
  %211 = phi i16 [ undef, %117 ], [ %2081, %2026 ]
  %212 = phi i16 [ undef, %117 ], [ %2082, %2026 ]
  %213 = phi i16 [ undef, %117 ], [ %2083, %2026 ]
  %214 = phi i16 [ undef, %117 ], [ %2084, %2026 ]
  %215 = phi i16 [ undef, %117 ], [ %2085, %2026 ]
  %216 = phi i16 [ undef, %117 ], [ %2086, %2026 ]
  %217 = phi i16 [ undef, %117 ], [ %2087, %2026 ]
  %218 = phi i16 [ undef, %117 ], [ %2088, %2026 ]
  %219 = phi i16 [ undef, %117 ], [ %2089, %2026 ]
  %220 = phi i16 [ undef, %117 ], [ %2090, %2026 ]
  %221 = phi i64 [ 0, %117 ], [ %2094, %2026 ]
  %222 = phi i32 [ 0, %117 ], [ %2093, %2026 ]
  %223 = phi double [ 1.000000e+30, %117 ], [ %2092, %2026 ]
  %224 = phi i32 [ 0, %117 ], [ %2091, %2026 ]
  %225 = icmp eq i64 %221, 2
  br i1 %225, label %239, label %226

226:                                              ; preds = %156
  %227 = icmp eq i64 %221, 0
  %228 = trunc nuw nsw i64 %221 to i32
  %229 = and i32 %228, 11
  %230 = icmp eq i32 %229, 3
  %231 = or i1 %227, %230
  %232 = select i1 %231, i1 %122, i1 false
  br i1 %232, label %239, label %233

233:                                              ; preds = %226
  %234 = icmp eq i64 %221, 1
  %235 = icmp eq i64 %221, 8
  %236 = or i1 %234, %235
  %237 = select i1 %236, i1 %124, i1 false
  %238 = select i1 %237, i1 true, i1 %126
  br i1 %238, label %239, label %2026

239:                                              ; preds = %156, %233, %226
  %240 = phi i32 [ %228, %233 ], [ %228, %226 ], [ 2, %156 ]
  %241 = load ptr, ptr @input, align 8, !tbaa !10
  %242 = getelementptr inbounds i8, ptr %241, i64 3136
  %243 = load i32, ptr %242, align 8, !tbaa !34
  %244 = icmp eq i32 %243, 0
  %245 = load ptr, ptr @img, align 8, !tbaa !10
  br i1 %244, label %246, label %344

246:                                              ; preds = %239
  %247 = getelementptr inbounds i8, ptr %245, i64 7352
  br label %248

248:                                              ; preds = %246, %248
  %249 = phi i64 [ 0, %246 ], [ %332, %248 ]
  %250 = phi i64 [ 0, %246 ], [ %331, %248 ]
  %251 = getelementptr ptr, ptr %155, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !10
  %253 = getelementptr inbounds i16, ptr %252, i64 %138
  %254 = load i16, ptr %253, align 2, !tbaa !35
  %255 = zext i16 %254 to i32
  %256 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 0
  %257 = load i16, ptr %256, align 2, !tbaa !35
  %258 = zext i16 %257 to i32
  %259 = sub nsw i32 %255, %258
  %260 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %249
  store i32 %259, ptr %260, align 4, !tbaa !6
  %261 = or disjoint i64 %249, 1
  %262 = getelementptr i16, ptr %252, i64 %138
  %263 = getelementptr i8, ptr %262, i64 2
  %264 = load i16, ptr %263, align 2, !tbaa !35
  %265 = zext i16 %264 to i32
  %266 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 1
  %267 = load i16, ptr %266, align 2, !tbaa !35
  %268 = zext i16 %267 to i32
  %269 = sub nsw i32 %265, %268
  %270 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %261
  store i32 %269, ptr %270, align 4, !tbaa !6
  %271 = or disjoint i64 %249, 2
  %272 = getelementptr i16, ptr %252, i64 %138
  %273 = getelementptr i8, ptr %272, i64 4
  %274 = load i16, ptr %273, align 2, !tbaa !35
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 2
  %277 = load i16, ptr %276, align 2, !tbaa !35
  %278 = zext i16 %277 to i32
  %279 = sub nsw i32 %275, %278
  %280 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %271
  store i32 %279, ptr %280, align 4, !tbaa !6
  %281 = or disjoint i64 %249, 3
  %282 = getelementptr i16, ptr %252, i64 %138
  %283 = getelementptr i8, ptr %282, i64 6
  %284 = load i16, ptr %283, align 2, !tbaa !35
  %285 = zext i16 %284 to i32
  %286 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 3
  %287 = load i16, ptr %286, align 2, !tbaa !35
  %288 = zext i16 %287 to i32
  %289 = sub nsw i32 %285, %288
  %290 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %281
  store i32 %289, ptr %290, align 4, !tbaa !6
  %291 = or disjoint i64 %249, 4
  %292 = getelementptr i16, ptr %252, i64 %138
  %293 = getelementptr i8, ptr %292, i64 8
  %294 = load i16, ptr %293, align 2, !tbaa !35
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 4
  %297 = load i16, ptr %296, align 2, !tbaa !35
  %298 = zext i16 %297 to i32
  %299 = sub nsw i32 %295, %298
  %300 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %291
  store i32 %299, ptr %300, align 4, !tbaa !6
  %301 = or disjoint i64 %249, 5
  %302 = getelementptr i16, ptr %252, i64 %138
  %303 = getelementptr i8, ptr %302, i64 10
  %304 = load i16, ptr %303, align 2, !tbaa !35
  %305 = zext i16 %304 to i32
  %306 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 5
  %307 = load i16, ptr %306, align 2, !tbaa !35
  %308 = zext i16 %307 to i32
  %309 = sub nsw i32 %305, %308
  %310 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %301
  store i32 %309, ptr %310, align 4, !tbaa !6
  %311 = or disjoint i64 %249, 6
  %312 = getelementptr i16, ptr %252, i64 %138
  %313 = getelementptr i8, ptr %312, i64 12
  %314 = load i16, ptr %313, align 2, !tbaa !35
  %315 = zext i16 %314 to i32
  %316 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 6
  %317 = load i16, ptr %316, align 2, !tbaa !35
  %318 = zext i16 %317 to i32
  %319 = sub nsw i32 %315, %318
  %320 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %311
  store i32 %319, ptr %320, align 4, !tbaa !6
  %321 = or disjoint i64 %249, 7
  %322 = getelementptr i16, ptr %252, i64 %138
  %323 = getelementptr i8, ptr %322, i64 14
  %324 = load i16, ptr %323, align 2, !tbaa !35
  %325 = zext i16 %324 to i32
  %326 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %247, i64 0, i64 %221, i64 %250, i64 7
  %327 = load i16, ptr %326, align 2, !tbaa !35
  %328 = zext i16 %327 to i32
  %329 = sub nsw i32 %325, %328
  %330 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %321
  store i32 %329, ptr %330, align 4, !tbaa !6
  %331 = add nuw nsw i64 %250, 1
  %332 = add nuw nsw i64 %249, 8
  %333 = icmp eq i64 %331, 8
  br i1 %333, label %334, label %248

334:                                              ; preds = %248
  %335 = icmp eq i64 %221, %142
  %336 = select i1 %335, i32 0, i32 %136
  %337 = getelementptr inbounds i8, ptr %241, i64 24
  %338 = load i32, ptr %337, align 8, !tbaa !36
  %339 = call signext i32 @SATD8X8(ptr noundef nonnull %6, i32 noundef signext %338) #8
  %340 = add nsw i32 %339, %336
  %341 = load i32, ptr %2, align 4, !tbaa !6
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %2026

343:                                              ; preds = %334
  store i32 %340, ptr %2, align 4, !tbaa !6
  br label %2026

344:                                              ; preds = %239
  %345 = getelementptr inbounds i8, ptr %245, i64 90572
  %346 = load i32, ptr %345, align 4, !tbaa !37
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %357, label %348

348:                                              ; preds = %344
  %349 = load ptr, ptr @imgUV_org, align 8, !tbaa !10
  %350 = load ptr, ptr %349, align 8, !tbaa !10
  %351 = getelementptr inbounds i8, ptr %245, i64 8504
  %352 = load ptr, ptr @imgY_org, align 8, !tbaa !10
  %353 = getelementptr inbounds i8, ptr %245, i64 7352
  %354 = getelementptr inbounds i8, ptr %349, i64 8
  %355 = load ptr, ptr %354, align 8, !tbaa !10
  %356 = getelementptr inbounds i8, ptr %245, i64 10552
  br label %1060

357:                                              ; preds = %344, %357
  %358 = phi ptr [ %367, %357 ], [ %245, %344 ]
  %359 = phi i64 [ %441, %357 ], [ 0, %344 ]
  %360 = getelementptr inbounds i8, ptr %358, i64 12600
  %361 = or disjoint i64 %359, %139
  %362 = getelementptr inbounds [16 x [16 x i16]], ptr %360, i64 0, i64 %361, i64 %131
  %363 = getelementptr inbounds i8, ptr %358, i64 7352
  %364 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %363, i64 0, i64 %221, i64 %359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %362, ptr noundef nonnull align 8 dereferenceable(16) %364, i64 16, i1 false)
  %365 = getelementptr ptr, ptr %152, i64 %359
  %366 = load ptr, ptr %365, align 8, !tbaa !10
  %367 = load ptr, ptr @img, align 8, !tbaa !10
  %368 = getelementptr inbounds i8, ptr %367, i64 7352
  %369 = getelementptr inbounds i8, ptr %367, i64 13112
  %370 = getelementptr inbounds i16, ptr %366, i64 %138
  %371 = load i16, ptr %370, align 2, !tbaa !35
  %372 = zext i16 %371 to i32
  %373 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 0
  %374 = load i16, ptr %373, align 2, !tbaa !35
  %375 = zext i16 %374 to i32
  %376 = sub nsw i32 %372, %375
  %377 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 0
  store i32 %376, ptr %377, align 4, !tbaa !6
  %378 = getelementptr i16, ptr %366, i64 %138
  %379 = getelementptr i8, ptr %378, i64 2
  %380 = load i16, ptr %379, align 2, !tbaa !35
  %381 = zext i16 %380 to i32
  %382 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 1
  %383 = load i16, ptr %382, align 2, !tbaa !35
  %384 = zext i16 %383 to i32
  %385 = sub nsw i32 %381, %384
  %386 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 1
  store i32 %385, ptr %386, align 4, !tbaa !6
  %387 = getelementptr i16, ptr %366, i64 %138
  %388 = getelementptr i8, ptr %387, i64 4
  %389 = load i16, ptr %388, align 2, !tbaa !35
  %390 = zext i16 %389 to i32
  %391 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 2
  %392 = load i16, ptr %391, align 2, !tbaa !35
  %393 = zext i16 %392 to i32
  %394 = sub nsw i32 %390, %393
  %395 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 2
  store i32 %394, ptr %395, align 4, !tbaa !6
  %396 = getelementptr i16, ptr %366, i64 %138
  %397 = getelementptr i8, ptr %396, i64 6
  %398 = load i16, ptr %397, align 2, !tbaa !35
  %399 = zext i16 %398 to i32
  %400 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 3
  %401 = load i16, ptr %400, align 2, !tbaa !35
  %402 = zext i16 %401 to i32
  %403 = sub nsw i32 %399, %402
  %404 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 3
  store i32 %403, ptr %404, align 4, !tbaa !6
  %405 = getelementptr i16, ptr %366, i64 %138
  %406 = getelementptr i8, ptr %405, i64 8
  %407 = load i16, ptr %406, align 2, !tbaa !35
  %408 = zext i16 %407 to i32
  %409 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 4
  %410 = load i16, ptr %409, align 2, !tbaa !35
  %411 = zext i16 %410 to i32
  %412 = sub nsw i32 %408, %411
  %413 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 4
  store i32 %412, ptr %413, align 4, !tbaa !6
  %414 = getelementptr i16, ptr %366, i64 %138
  %415 = getelementptr i8, ptr %414, i64 10
  %416 = load i16, ptr %415, align 2, !tbaa !35
  %417 = zext i16 %416 to i32
  %418 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 5
  %419 = load i16, ptr %418, align 2, !tbaa !35
  %420 = zext i16 %419 to i32
  %421 = sub nsw i32 %417, %420
  %422 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 5
  store i32 %421, ptr %422, align 4, !tbaa !6
  %423 = getelementptr i16, ptr %366, i64 %138
  %424 = getelementptr i8, ptr %423, i64 12
  %425 = load i16, ptr %424, align 2, !tbaa !35
  %426 = zext i16 %425 to i32
  %427 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 6
  %428 = load i16, ptr %427, align 2, !tbaa !35
  %429 = zext i16 %428 to i32
  %430 = sub nsw i32 %426, %429
  %431 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 6
  store i32 %430, ptr %431, align 4, !tbaa !6
  %432 = getelementptr i16, ptr %366, i64 %138
  %433 = getelementptr i8, ptr %432, i64 14
  %434 = load i16, ptr %433, align 2, !tbaa !35
  %435 = zext i16 %434 to i32
  %436 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %368, i64 0, i64 %221, i64 %359, i64 7
  %437 = load i16, ptr %436, align 2, !tbaa !35
  %438 = zext i16 %437 to i32
  %439 = sub nsw i32 %435, %438
  %440 = getelementptr inbounds [16 x [16 x i32]], ptr %369, i64 0, i64 %359, i64 7
  store i32 %439, ptr %440, align 4, !tbaa !6
  %441 = add nuw nsw i64 %359, 1
  %442 = icmp eq i64 %441, 8
  br i1 %442, label %443, label %357

443:                                              ; preds = %357
  %444 = call double @RDCost_for_8x8IntraBlocks(ptr noundef nonnull %5, i32 noundef signext %0, i32 noundef signext %240, double noundef %1, double poison, i32 noundef signext %120)
  %445 = fcmp olt double %444, %223
  br i1 %445, label %446, label %731

446:                                              ; preds = %443
  %447 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %448 = getelementptr inbounds ptr, ptr %447, i64 %130
  %449 = load ptr, ptr %448, align 8, !tbaa !10
  %450 = load ptr, ptr %449, align 8, !tbaa !10
  %451 = load ptr, ptr %450, align 8, !tbaa !10
  %452 = load ptr, ptr @img, align 8, !tbaa !10
  %453 = getelementptr inbounds i8, ptr %452, i64 14136
  %454 = load ptr, ptr %453, align 8, !tbaa !38
  %455 = getelementptr inbounds ptr, ptr %454, i64 %130
  %456 = load ptr, ptr %455, align 8, !tbaa !10
  %457 = load ptr, ptr %456, align 8, !tbaa !10
  %458 = load ptr, ptr %457, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %451, ptr noundef nonnull align 4 dereferenceable(260) %458, i64 260, i1 false)
  %459 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %460 = getelementptr inbounds ptr, ptr %459, i64 %130
  %461 = load ptr, ptr %460, align 8, !tbaa !10
  %462 = load ptr, ptr %461, align 8, !tbaa !10
  %463 = getelementptr inbounds i8, ptr %462, i64 8
  %464 = load ptr, ptr %463, align 8, !tbaa !10
  %465 = load ptr, ptr @img, align 8, !tbaa !10
  %466 = getelementptr inbounds i8, ptr %465, i64 14136
  %467 = load ptr, ptr %466, align 8, !tbaa !38
  %468 = getelementptr inbounds ptr, ptr %467, i64 %130
  %469 = load ptr, ptr %468, align 8, !tbaa !10
  %470 = load ptr, ptr %469, align 8, !tbaa !10
  %471 = getelementptr inbounds i8, ptr %470, i64 8
  %472 = load ptr, ptr %471, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %464, ptr noundef nonnull align 4 dereferenceable(260) %472, i64 260, i1 false)
  %473 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %474 = getelementptr inbounds ptr, ptr %473, i64 %130
  %475 = load ptr, ptr %474, align 8, !tbaa !10
  %476 = getelementptr inbounds i8, ptr %475, i64 8
  %477 = load ptr, ptr %476, align 8, !tbaa !10
  %478 = load ptr, ptr %477, align 8, !tbaa !10
  %479 = load ptr, ptr @img, align 8, !tbaa !10
  %480 = getelementptr inbounds i8, ptr %479, i64 14136
  %481 = load ptr, ptr %480, align 8, !tbaa !38
  %482 = getelementptr inbounds ptr, ptr %481, i64 %130
  %483 = load ptr, ptr %482, align 8, !tbaa !10
  %484 = getelementptr inbounds i8, ptr %483, i64 8
  %485 = load ptr, ptr %484, align 8, !tbaa !10
  %486 = load ptr, ptr %485, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %478, ptr noundef nonnull align 4 dereferenceable(260) %486, i64 260, i1 false)
  %487 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %488 = getelementptr inbounds ptr, ptr %487, i64 %130
  %489 = load ptr, ptr %488, align 8, !tbaa !10
  %490 = getelementptr inbounds i8, ptr %489, i64 8
  %491 = load ptr, ptr %490, align 8, !tbaa !10
  %492 = getelementptr inbounds i8, ptr %491, i64 8
  %493 = load ptr, ptr %492, align 8, !tbaa !10
  %494 = load ptr, ptr @img, align 8, !tbaa !10
  %495 = getelementptr inbounds i8, ptr %494, i64 14136
  %496 = load ptr, ptr %495, align 8, !tbaa !38
  %497 = getelementptr inbounds ptr, ptr %496, i64 %130
  %498 = load ptr, ptr %497, align 8, !tbaa !10
  %499 = getelementptr inbounds i8, ptr %498, i64 8
  %500 = load ptr, ptr %499, align 8, !tbaa !10
  %501 = getelementptr inbounds i8, ptr %500, i64 8
  %502 = load ptr, ptr %501, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %493, ptr noundef nonnull align 4 dereferenceable(260) %502, i64 260, i1 false)
  %503 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %504 = getelementptr inbounds ptr, ptr %503, i64 %130
  %505 = load ptr, ptr %504, align 8, !tbaa !10
  %506 = getelementptr inbounds i8, ptr %505, i64 16
  %507 = load ptr, ptr %506, align 8, !tbaa !10
  %508 = load ptr, ptr %507, align 8, !tbaa !10
  %509 = load ptr, ptr @img, align 8, !tbaa !10
  %510 = getelementptr inbounds i8, ptr %509, i64 14136
  %511 = load ptr, ptr %510, align 8, !tbaa !38
  %512 = getelementptr inbounds ptr, ptr %511, i64 %130
  %513 = load ptr, ptr %512, align 8, !tbaa !10
  %514 = getelementptr inbounds i8, ptr %513, i64 16
  %515 = load ptr, ptr %514, align 8, !tbaa !10
  %516 = load ptr, ptr %515, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %508, ptr noundef nonnull align 4 dereferenceable(260) %516, i64 260, i1 false)
  %517 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %518 = getelementptr inbounds ptr, ptr %517, i64 %130
  %519 = load ptr, ptr %518, align 8, !tbaa !10
  %520 = getelementptr inbounds i8, ptr %519, i64 16
  %521 = load ptr, ptr %520, align 8, !tbaa !10
  %522 = getelementptr inbounds i8, ptr %521, i64 8
  %523 = load ptr, ptr %522, align 8, !tbaa !10
  %524 = load ptr, ptr @img, align 8, !tbaa !10
  %525 = getelementptr inbounds i8, ptr %524, i64 14136
  %526 = load ptr, ptr %525, align 8, !tbaa !38
  %527 = getelementptr inbounds ptr, ptr %526, i64 %130
  %528 = load ptr, ptr %527, align 8, !tbaa !10
  %529 = getelementptr inbounds i8, ptr %528, i64 16
  %530 = load ptr, ptr %529, align 8, !tbaa !10
  %531 = getelementptr inbounds i8, ptr %530, i64 8
  %532 = load ptr, ptr %531, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %523, ptr noundef nonnull align 4 dereferenceable(260) %532, i64 260, i1 false)
  %533 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %534 = getelementptr inbounds ptr, ptr %533, i64 %130
  %535 = load ptr, ptr %534, align 8, !tbaa !10
  %536 = getelementptr inbounds i8, ptr %535, i64 24
  %537 = load ptr, ptr %536, align 8, !tbaa !10
  %538 = load ptr, ptr %537, align 8, !tbaa !10
  %539 = load ptr, ptr @img, align 8, !tbaa !10
  %540 = getelementptr inbounds i8, ptr %539, i64 14136
  %541 = load ptr, ptr %540, align 8, !tbaa !38
  %542 = getelementptr inbounds ptr, ptr %541, i64 %130
  %543 = load ptr, ptr %542, align 8, !tbaa !10
  %544 = getelementptr inbounds i8, ptr %543, i64 24
  %545 = load ptr, ptr %544, align 8, !tbaa !10
  %546 = load ptr, ptr %545, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %538, ptr noundef nonnull align 4 dereferenceable(260) %546, i64 260, i1 false)
  %547 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %548 = getelementptr inbounds ptr, ptr %547, i64 %130
  %549 = load ptr, ptr %548, align 8, !tbaa !10
  %550 = getelementptr inbounds i8, ptr %549, i64 24
  %551 = load ptr, ptr %550, align 8, !tbaa !10
  %552 = getelementptr inbounds i8, ptr %551, i64 8
  %553 = load ptr, ptr %552, align 8, !tbaa !10
  %554 = load ptr, ptr @img, align 8, !tbaa !10
  %555 = getelementptr inbounds i8, ptr %554, i64 14136
  %556 = load ptr, ptr %555, align 8, !tbaa !38
  %557 = getelementptr inbounds ptr, ptr %556, i64 %130
  %558 = load ptr, ptr %557, align 8, !tbaa !10
  %559 = getelementptr inbounds i8, ptr %558, i64 24
  %560 = load ptr, ptr %559, align 8, !tbaa !10
  %561 = getelementptr inbounds i8, ptr %560, i64 8
  %562 = load ptr, ptr %561, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %553, ptr noundef nonnull align 4 dereferenceable(260) %562, i64 260, i1 false)
  %563 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %564 = getelementptr inbounds i8, ptr %563, i64 6424
  %565 = load ptr, ptr %564, align 8, !tbaa !39
  %566 = getelementptr inbounds ptr, ptr %565, i64 %141
  %567 = load ptr, ptr %566, align 8, !tbaa !10
  %568 = getelementptr inbounds i16, ptr %567, i64 %132
  %569 = load i16, ptr %568, align 2
  %570 = getelementptr inbounds i8, ptr %568, i64 2
  %571 = load i16, ptr %570, align 2
  %572 = getelementptr inbounds i8, ptr %568, i64 4
  %573 = load i16, ptr %572, align 2
  %574 = getelementptr inbounds i8, ptr %568, i64 6
  %575 = load i16, ptr %574, align 2
  %576 = getelementptr inbounds i8, ptr %568, i64 8
  %577 = load i16, ptr %576, align 2
  %578 = getelementptr inbounds i8, ptr %568, i64 10
  %579 = load i16, ptr %578, align 2
  %580 = getelementptr inbounds i8, ptr %568, i64 12
  %581 = load i16, ptr %580, align 2
  %582 = getelementptr inbounds i8, ptr %568, i64 14
  %583 = load i16, ptr %582, align 2
  %584 = getelementptr ptr, ptr %565, i64 %141
  %585 = getelementptr i8, ptr %584, i64 8
  %586 = load ptr, ptr %585, align 8, !tbaa !10
  %587 = getelementptr inbounds i16, ptr %586, i64 %132
  %588 = load i16, ptr %587, align 2
  %589 = getelementptr inbounds i8, ptr %587, i64 2
  %590 = load i16, ptr %589, align 2
  %591 = getelementptr inbounds i8, ptr %587, i64 4
  %592 = load i16, ptr %591, align 2
  %593 = getelementptr inbounds i8, ptr %587, i64 6
  %594 = load i16, ptr %593, align 2
  %595 = getelementptr inbounds i8, ptr %587, i64 8
  %596 = load i16, ptr %595, align 2
  %597 = getelementptr inbounds i8, ptr %587, i64 10
  %598 = load i16, ptr %597, align 2
  %599 = getelementptr inbounds i8, ptr %587, i64 12
  %600 = load i16, ptr %599, align 2
  %601 = getelementptr inbounds i8, ptr %587, i64 14
  %602 = load i16, ptr %601, align 2
  %603 = getelementptr ptr, ptr %565, i64 %141
  %604 = getelementptr i8, ptr %603, i64 16
  %605 = load ptr, ptr %604, align 8, !tbaa !10
  %606 = getelementptr inbounds i16, ptr %605, i64 %132
  %607 = load i16, ptr %606, align 2
  %608 = getelementptr inbounds i8, ptr %606, i64 2
  %609 = load i16, ptr %608, align 2
  %610 = getelementptr inbounds i8, ptr %606, i64 4
  %611 = load i16, ptr %610, align 2
  %612 = getelementptr inbounds i8, ptr %606, i64 6
  %613 = load i16, ptr %612, align 2
  %614 = getelementptr inbounds i8, ptr %606, i64 8
  %615 = load i16, ptr %614, align 2
  %616 = getelementptr inbounds i8, ptr %606, i64 10
  %617 = load i16, ptr %616, align 2
  %618 = getelementptr inbounds i8, ptr %606, i64 12
  %619 = load i16, ptr %618, align 2
  %620 = getelementptr inbounds i8, ptr %606, i64 14
  %621 = load i16, ptr %620, align 2
  %622 = getelementptr ptr, ptr %565, i64 %141
  %623 = getelementptr i8, ptr %622, i64 24
  %624 = load ptr, ptr %623, align 8, !tbaa !10
  %625 = getelementptr inbounds i16, ptr %624, i64 %132
  %626 = load i16, ptr %625, align 2
  %627 = getelementptr inbounds i8, ptr %625, i64 2
  %628 = load i16, ptr %627, align 2
  %629 = getelementptr inbounds i8, ptr %625, i64 4
  %630 = load i16, ptr %629, align 2
  %631 = getelementptr inbounds i8, ptr %625, i64 6
  %632 = load i16, ptr %631, align 2
  %633 = getelementptr inbounds i8, ptr %625, i64 8
  %634 = load i16, ptr %633, align 2
  %635 = getelementptr inbounds i8, ptr %625, i64 10
  %636 = load i16, ptr %635, align 2
  %637 = getelementptr inbounds i8, ptr %625, i64 12
  %638 = load i16, ptr %637, align 2
  %639 = getelementptr inbounds i8, ptr %625, i64 14
  %640 = load i16, ptr %639, align 2
  %641 = getelementptr ptr, ptr %565, i64 %141
  %642 = getelementptr i8, ptr %641, i64 32
  %643 = load ptr, ptr %642, align 8, !tbaa !10
  %644 = getelementptr inbounds i16, ptr %643, i64 %132
  %645 = load i16, ptr %644, align 2
  %646 = getelementptr inbounds i8, ptr %644, i64 2
  %647 = load i16, ptr %646, align 2
  %648 = getelementptr inbounds i8, ptr %644, i64 4
  %649 = load i16, ptr %648, align 2
  %650 = getelementptr inbounds i8, ptr %644, i64 6
  %651 = load i16, ptr %650, align 2
  %652 = getelementptr inbounds i8, ptr %644, i64 8
  %653 = load i16, ptr %652, align 2
  %654 = getelementptr inbounds i8, ptr %644, i64 10
  %655 = load i16, ptr %654, align 2
  %656 = getelementptr inbounds i8, ptr %644, i64 12
  %657 = load i16, ptr %656, align 2
  %658 = getelementptr inbounds i8, ptr %644, i64 14
  %659 = load i16, ptr %658, align 2
  %660 = getelementptr ptr, ptr %565, i64 %141
  %661 = getelementptr i8, ptr %660, i64 40
  %662 = load ptr, ptr %661, align 8, !tbaa !10
  %663 = getelementptr inbounds i16, ptr %662, i64 %132
  %664 = load i16, ptr %663, align 2
  %665 = getelementptr inbounds i8, ptr %663, i64 2
  %666 = load i16, ptr %665, align 2
  %667 = getelementptr inbounds i8, ptr %663, i64 4
  %668 = load i16, ptr %667, align 2
  %669 = getelementptr inbounds i8, ptr %663, i64 6
  %670 = load i16, ptr %669, align 2
  %671 = getelementptr inbounds i8, ptr %663, i64 8
  %672 = load i16, ptr %671, align 2
  %673 = getelementptr inbounds i8, ptr %663, i64 10
  %674 = load i16, ptr %673, align 2
  %675 = getelementptr inbounds i8, ptr %663, i64 12
  %676 = load i16, ptr %675, align 2
  %677 = getelementptr inbounds i8, ptr %663, i64 14
  %678 = load i16, ptr %677, align 2
  %679 = getelementptr ptr, ptr %565, i64 %141
  %680 = getelementptr i8, ptr %679, i64 48
  %681 = load ptr, ptr %680, align 8, !tbaa !10
  %682 = getelementptr inbounds i16, ptr %681, i64 %132
  %683 = load i16, ptr %682, align 2
  %684 = getelementptr inbounds i8, ptr %682, i64 2
  %685 = load i16, ptr %684, align 2
  %686 = getelementptr inbounds i8, ptr %682, i64 4
  %687 = load i16, ptr %686, align 2
  %688 = getelementptr inbounds i8, ptr %682, i64 6
  %689 = load i16, ptr %688, align 2
  %690 = getelementptr inbounds i8, ptr %682, i64 8
  %691 = load i16, ptr %690, align 2
  %692 = getelementptr inbounds i8, ptr %682, i64 10
  %693 = load i16, ptr %692, align 2
  %694 = getelementptr inbounds i8, ptr %682, i64 12
  %695 = load i16, ptr %694, align 2
  %696 = getelementptr inbounds i8, ptr %682, i64 14
  %697 = load i16, ptr %696, align 2
  %698 = getelementptr ptr, ptr %565, i64 %141
  %699 = getelementptr i8, ptr %698, i64 56
  %700 = load ptr, ptr %699, align 8, !tbaa !10
  %701 = getelementptr inbounds i16, ptr %700, i64 %132
  %702 = load i16, ptr %701, align 2
  %703 = getelementptr inbounds i8, ptr %701, i64 2
  %704 = load i16, ptr %703, align 2
  %705 = getelementptr inbounds i8, ptr %701, i64 4
  %706 = load i16, ptr %705, align 2
  %707 = getelementptr inbounds i8, ptr %701, i64 6
  %708 = load i16, ptr %707, align 2
  %709 = getelementptr inbounds i8, ptr %701, i64 8
  %710 = load i16, ptr %709, align 2
  %711 = getelementptr inbounds i8, ptr %701, i64 10
  %712 = load i16, ptr %711, align 2
  %713 = getelementptr inbounds i8, ptr %701, i64 12
  %714 = load i16, ptr %713, align 2
  %715 = getelementptr inbounds i8, ptr %701, i64 14
  %716 = load i16, ptr %715, align 2
  %717 = load ptr, ptr @img, align 8, !tbaa !10
  %718 = getelementptr inbounds i8, ptr %717, i64 90212
  %719 = load i32, ptr %718, align 4, !tbaa !41
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %729, label %721

721:                                              ; preds = %446
  %722 = getelementptr inbounds i8, ptr %717, i64 19272
  br label %723

723:                                              ; preds = %721, %723
  %724 = phi i64 [ %139, %721 ], [ %727, %723 ]
  %725 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %724, i64 %131
  %726 = getelementptr inbounds [16 x [16 x i32]], ptr %722, i64 0, i64 %724, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %725, ptr noundef nonnull align 4 dereferenceable(32) %726, i64 32, i1 false)
  %727 = add nsw i64 %724, 1
  %728 = icmp slt i64 %724, %154
  br i1 %728, label %723, label %729

729:                                              ; preds = %723, %446
  %730 = load i32, ptr %5, align 4, !tbaa !6
  br label %731

731:                                              ; preds = %729, %443
  %732 = phi i16 [ %716, %729 ], [ %157, %443 ]
  %733 = phi i16 [ %714, %729 ], [ %158, %443 ]
  %734 = phi i16 [ %712, %729 ], [ %159, %443 ]
  %735 = phi i16 [ %710, %729 ], [ %160, %443 ]
  %736 = phi i16 [ %708, %729 ], [ %161, %443 ]
  %737 = phi i16 [ %706, %729 ], [ %162, %443 ]
  %738 = phi i16 [ %704, %729 ], [ %163, %443 ]
  %739 = phi i16 [ %702, %729 ], [ %164, %443 ]
  %740 = phi i16 [ %697, %729 ], [ %165, %443 ]
  %741 = phi i16 [ %695, %729 ], [ %166, %443 ]
  %742 = phi i16 [ %693, %729 ], [ %167, %443 ]
  %743 = phi i16 [ %691, %729 ], [ %168, %443 ]
  %744 = phi i16 [ %689, %729 ], [ %169, %443 ]
  %745 = phi i16 [ %687, %729 ], [ %170, %443 ]
  %746 = phi i16 [ %685, %729 ], [ %171, %443 ]
  %747 = phi i16 [ %683, %729 ], [ %172, %443 ]
  %748 = phi i16 [ %678, %729 ], [ %173, %443 ]
  %749 = phi i16 [ %676, %729 ], [ %174, %443 ]
  %750 = phi i16 [ %674, %729 ], [ %175, %443 ]
  %751 = phi i16 [ %672, %729 ], [ %176, %443 ]
  %752 = phi i16 [ %670, %729 ], [ %177, %443 ]
  %753 = phi i16 [ %668, %729 ], [ %178, %443 ]
  %754 = phi i16 [ %666, %729 ], [ %179, %443 ]
  %755 = phi i16 [ %664, %729 ], [ %180, %443 ]
  %756 = phi i16 [ %659, %729 ], [ %181, %443 ]
  %757 = phi i16 [ %657, %729 ], [ %182, %443 ]
  %758 = phi i16 [ %655, %729 ], [ %183, %443 ]
  %759 = phi i16 [ %653, %729 ], [ %184, %443 ]
  %760 = phi i16 [ %651, %729 ], [ %185, %443 ]
  %761 = phi i16 [ %649, %729 ], [ %186, %443 ]
  %762 = phi i16 [ %647, %729 ], [ %187, %443 ]
  %763 = phi i16 [ %645, %729 ], [ %188, %443 ]
  %764 = phi i16 [ %640, %729 ], [ %189, %443 ]
  %765 = phi i16 [ %638, %729 ], [ %190, %443 ]
  %766 = phi i16 [ %636, %729 ], [ %191, %443 ]
  %767 = phi i16 [ %634, %729 ], [ %192, %443 ]
  %768 = phi i16 [ %632, %729 ], [ %193, %443 ]
  %769 = phi i16 [ %630, %729 ], [ %194, %443 ]
  %770 = phi i16 [ %628, %729 ], [ %195, %443 ]
  %771 = phi i16 [ %626, %729 ], [ %196, %443 ]
  %772 = phi i16 [ %621, %729 ], [ %197, %443 ]
  %773 = phi i16 [ %619, %729 ], [ %198, %443 ]
  %774 = phi i16 [ %617, %729 ], [ %199, %443 ]
  %775 = phi i16 [ %615, %729 ], [ %200, %443 ]
  %776 = phi i16 [ %613, %729 ], [ %201, %443 ]
  %777 = phi i16 [ %611, %729 ], [ %202, %443 ]
  %778 = phi i16 [ %609, %729 ], [ %203, %443 ]
  %779 = phi i16 [ %607, %729 ], [ %204, %443 ]
  %780 = phi i16 [ %602, %729 ], [ %205, %443 ]
  %781 = phi i16 [ %600, %729 ], [ %206, %443 ]
  %782 = phi i16 [ %598, %729 ], [ %207, %443 ]
  %783 = phi i16 [ %596, %729 ], [ %208, %443 ]
  %784 = phi i16 [ %594, %729 ], [ %209, %443 ]
  %785 = phi i16 [ %592, %729 ], [ %210, %443 ]
  %786 = phi i16 [ %590, %729 ], [ %211, %443 ]
  %787 = phi i16 [ %588, %729 ], [ %212, %443 ]
  %788 = phi i16 [ %583, %729 ], [ %213, %443 ]
  %789 = phi i16 [ %581, %729 ], [ %214, %443 ]
  %790 = phi i16 [ %579, %729 ], [ %215, %443 ]
  %791 = phi i16 [ %577, %729 ], [ %216, %443 ]
  %792 = phi i16 [ %575, %729 ], [ %217, %443 ]
  %793 = phi i16 [ %573, %729 ], [ %218, %443 ]
  %794 = phi i16 [ %571, %729 ], [ %219, %443 ]
  %795 = phi i16 [ %569, %729 ], [ %220, %443 ]
  %796 = phi i32 [ %730, %729 ], [ %224, %443 ]
  %797 = phi double [ %444, %729 ], [ %223, %443 ]
  %798 = phi i32 [ %240, %729 ], [ %222, %443 ]
  call void @reset_coding_state_cs_cm() #8
  br label %2026

799:                                              ; preds = %1106
  %800 = getelementptr inbounds i8, ptr %245, i64 13112
  %801 = load i32, ptr @resTrans_G, align 4, !tbaa !6
  store i32 %801, ptr %800, align 4, !tbaa !6
  %802 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 4), align 4, !tbaa !6
  %803 = getelementptr inbounds i8, ptr %245, i64 13116
  store i32 %802, ptr %803, align 4, !tbaa !6
  %804 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 8), align 4, !tbaa !6
  %805 = getelementptr inbounds i8, ptr %245, i64 13120
  store i32 %804, ptr %805, align 4, !tbaa !6
  %806 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 12), align 4, !tbaa !6
  %807 = getelementptr inbounds i8, ptr %245, i64 13124
  store i32 %806, ptr %807, align 4, !tbaa !6
  %808 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 16), align 4, !tbaa !6
  %809 = getelementptr inbounds i8, ptr %245, i64 13128
  store i32 %808, ptr %809, align 4, !tbaa !6
  %810 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 20), align 4, !tbaa !6
  %811 = getelementptr inbounds i8, ptr %245, i64 13132
  store i32 %810, ptr %811, align 4, !tbaa !6
  %812 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 24), align 4, !tbaa !6
  %813 = getelementptr inbounds i8, ptr %245, i64 13136
  store i32 %812, ptr %813, align 4, !tbaa !6
  %814 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 28), align 4, !tbaa !6
  %815 = getelementptr inbounds i8, ptr %245, i64 13140
  store i32 %814, ptr %815, align 4, !tbaa !6
  %816 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 64), align 4, !tbaa !6
  %817 = getelementptr inbounds i8, ptr %245, i64 13176
  store i32 %816, ptr %817, align 4, !tbaa !6
  %818 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 68), align 4, !tbaa !6
  %819 = getelementptr inbounds i8, ptr %245, i64 13180
  store i32 %818, ptr %819, align 4, !tbaa !6
  %820 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 72), align 4, !tbaa !6
  %821 = getelementptr inbounds i8, ptr %245, i64 13184
  store i32 %820, ptr %821, align 4, !tbaa !6
  %822 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 76), align 4, !tbaa !6
  %823 = getelementptr inbounds i8, ptr %245, i64 13188
  store i32 %822, ptr %823, align 4, !tbaa !6
  %824 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 80), align 4, !tbaa !6
  %825 = getelementptr inbounds i8, ptr %245, i64 13192
  store i32 %824, ptr %825, align 4, !tbaa !6
  %826 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 84), align 4, !tbaa !6
  %827 = getelementptr inbounds i8, ptr %245, i64 13196
  store i32 %826, ptr %827, align 4, !tbaa !6
  %828 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 88), align 4, !tbaa !6
  %829 = getelementptr inbounds i8, ptr %245, i64 13200
  store i32 %828, ptr %829, align 4, !tbaa !6
  %830 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 92), align 4, !tbaa !6
  %831 = getelementptr inbounds i8, ptr %245, i64 13204
  store i32 %830, ptr %831, align 4, !tbaa !6
  %832 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 128), align 4, !tbaa !6
  %833 = getelementptr inbounds i8, ptr %245, i64 13240
  store i32 %832, ptr %833, align 4, !tbaa !6
  %834 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 132), align 4, !tbaa !6
  %835 = getelementptr inbounds i8, ptr %245, i64 13244
  store i32 %834, ptr %835, align 4, !tbaa !6
  %836 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 136), align 4, !tbaa !6
  %837 = getelementptr inbounds i8, ptr %245, i64 13248
  store i32 %836, ptr %837, align 4, !tbaa !6
  %838 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 140), align 4, !tbaa !6
  %839 = getelementptr inbounds i8, ptr %245, i64 13252
  store i32 %838, ptr %839, align 4, !tbaa !6
  %840 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 144), align 4, !tbaa !6
  %841 = getelementptr inbounds i8, ptr %245, i64 13256
  store i32 %840, ptr %841, align 4, !tbaa !6
  %842 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 148), align 4, !tbaa !6
  %843 = getelementptr inbounds i8, ptr %245, i64 13260
  store i32 %842, ptr %843, align 4, !tbaa !6
  %844 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 152), align 4, !tbaa !6
  %845 = getelementptr inbounds i8, ptr %245, i64 13264
  store i32 %844, ptr %845, align 4, !tbaa !6
  %846 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 156), align 4, !tbaa !6
  %847 = getelementptr inbounds i8, ptr %245, i64 13268
  store i32 %846, ptr %847, align 4, !tbaa !6
  %848 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 192), align 4, !tbaa !6
  %849 = getelementptr inbounds i8, ptr %245, i64 13304
  store i32 %848, ptr %849, align 4, !tbaa !6
  %850 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 196), align 4, !tbaa !6
  %851 = getelementptr inbounds i8, ptr %245, i64 13308
  store i32 %850, ptr %851, align 4, !tbaa !6
  %852 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 200), align 4, !tbaa !6
  %853 = getelementptr inbounds i8, ptr %245, i64 13312
  store i32 %852, ptr %853, align 4, !tbaa !6
  %854 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 204), align 4, !tbaa !6
  %855 = getelementptr inbounds i8, ptr %245, i64 13316
  store i32 %854, ptr %855, align 4, !tbaa !6
  %856 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 208), align 4, !tbaa !6
  %857 = getelementptr inbounds i8, ptr %245, i64 13320
  store i32 %856, ptr %857, align 4, !tbaa !6
  %858 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 212), align 4, !tbaa !6
  %859 = getelementptr inbounds i8, ptr %245, i64 13324
  store i32 %858, ptr %859, align 4, !tbaa !6
  %860 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 216), align 4, !tbaa !6
  %861 = getelementptr inbounds i8, ptr %245, i64 13328
  store i32 %860, ptr %861, align 4, !tbaa !6
  %862 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 220), align 4, !tbaa !6
  %863 = getelementptr inbounds i8, ptr %245, i64 13332
  store i32 %862, ptr %863, align 4, !tbaa !6
  %864 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 256), align 4, !tbaa !6
  %865 = getelementptr inbounds i8, ptr %245, i64 13368
  store i32 %864, ptr %865, align 4, !tbaa !6
  %866 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 260), align 4, !tbaa !6
  %867 = getelementptr inbounds i8, ptr %245, i64 13372
  store i32 %866, ptr %867, align 4, !tbaa !6
  %868 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 264), align 4, !tbaa !6
  %869 = getelementptr inbounds i8, ptr %245, i64 13376
  store i32 %868, ptr %869, align 4, !tbaa !6
  %870 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 268), align 4, !tbaa !6
  %871 = getelementptr inbounds i8, ptr %245, i64 13380
  store i32 %870, ptr %871, align 4, !tbaa !6
  %872 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 272), align 4, !tbaa !6
  %873 = getelementptr inbounds i8, ptr %245, i64 13384
  store i32 %872, ptr %873, align 4, !tbaa !6
  %874 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 276), align 4, !tbaa !6
  %875 = getelementptr inbounds i8, ptr %245, i64 13388
  store i32 %874, ptr %875, align 4, !tbaa !6
  %876 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 280), align 4, !tbaa !6
  %877 = getelementptr inbounds i8, ptr %245, i64 13392
  store i32 %876, ptr %877, align 4, !tbaa !6
  %878 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 284), align 4, !tbaa !6
  %879 = getelementptr inbounds i8, ptr %245, i64 13396
  store i32 %878, ptr %879, align 4, !tbaa !6
  %880 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 320), align 4, !tbaa !6
  %881 = getelementptr inbounds i8, ptr %245, i64 13432
  store i32 %880, ptr %881, align 4, !tbaa !6
  %882 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 324), align 4, !tbaa !6
  %883 = getelementptr inbounds i8, ptr %245, i64 13436
  store i32 %882, ptr %883, align 4, !tbaa !6
  %884 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 328), align 4, !tbaa !6
  %885 = getelementptr inbounds i8, ptr %245, i64 13440
  store i32 %884, ptr %885, align 4, !tbaa !6
  %886 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 332), align 4, !tbaa !6
  %887 = getelementptr inbounds i8, ptr %245, i64 13444
  store i32 %886, ptr %887, align 4, !tbaa !6
  %888 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 336), align 4, !tbaa !6
  %889 = getelementptr inbounds i8, ptr %245, i64 13448
  store i32 %888, ptr %889, align 4, !tbaa !6
  %890 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 340), align 4, !tbaa !6
  %891 = getelementptr inbounds i8, ptr %245, i64 13452
  store i32 %890, ptr %891, align 4, !tbaa !6
  %892 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 344), align 4, !tbaa !6
  %893 = getelementptr inbounds i8, ptr %245, i64 13456
  store i32 %892, ptr %893, align 4, !tbaa !6
  %894 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 348), align 4, !tbaa !6
  %895 = getelementptr inbounds i8, ptr %245, i64 13460
  store i32 %894, ptr %895, align 4, !tbaa !6
  %896 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 384), align 4, !tbaa !6
  %897 = getelementptr inbounds i8, ptr %245, i64 13496
  store i32 %896, ptr %897, align 4, !tbaa !6
  %898 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 388), align 4, !tbaa !6
  %899 = getelementptr inbounds i8, ptr %245, i64 13500
  store i32 %898, ptr %899, align 4, !tbaa !6
  %900 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 392), align 4, !tbaa !6
  %901 = getelementptr inbounds i8, ptr %245, i64 13504
  store i32 %900, ptr %901, align 4, !tbaa !6
  %902 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 396), align 4, !tbaa !6
  %903 = getelementptr inbounds i8, ptr %245, i64 13508
  store i32 %902, ptr %903, align 4, !tbaa !6
  %904 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 400), align 4, !tbaa !6
  %905 = getelementptr inbounds i8, ptr %245, i64 13512
  store i32 %904, ptr %905, align 4, !tbaa !6
  %906 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 404), align 4, !tbaa !6
  %907 = getelementptr inbounds i8, ptr %245, i64 13516
  store i32 %906, ptr %907, align 4, !tbaa !6
  %908 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 408), align 4, !tbaa !6
  %909 = getelementptr inbounds i8, ptr %245, i64 13520
  store i32 %908, ptr %909, align 4, !tbaa !6
  %910 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 412), align 4, !tbaa !6
  %911 = getelementptr inbounds i8, ptr %245, i64 13524
  store i32 %910, ptr %911, align 4, !tbaa !6
  %912 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 448), align 4, !tbaa !6
  %913 = getelementptr inbounds i8, ptr %245, i64 13560
  store i32 %912, ptr %913, align 4, !tbaa !6
  %914 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 452), align 4, !tbaa !6
  %915 = getelementptr inbounds i8, ptr %245, i64 13564
  store i32 %914, ptr %915, align 4, !tbaa !6
  %916 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 456), align 4, !tbaa !6
  %917 = getelementptr inbounds i8, ptr %245, i64 13568
  store i32 %916, ptr %917, align 4, !tbaa !6
  %918 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 460), align 4, !tbaa !6
  %919 = getelementptr inbounds i8, ptr %245, i64 13572
  store i32 %918, ptr %919, align 4, !tbaa !6
  %920 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 464), align 4, !tbaa !6
  %921 = getelementptr inbounds i8, ptr %245, i64 13576
  store i32 %920, ptr %921, align 4, !tbaa !6
  %922 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 468), align 4, !tbaa !6
  %923 = getelementptr inbounds i8, ptr %245, i64 13580
  store i32 %922, ptr %923, align 4, !tbaa !6
  %924 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 472), align 4, !tbaa !6
  %925 = getelementptr inbounds i8, ptr %245, i64 13584
  store i32 %924, ptr %925, align 4, !tbaa !6
  %926 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 476), align 4, !tbaa !6
  %927 = getelementptr inbounds i8, ptr %245, i64 13588
  store i32 %926, ptr %927, align 4, !tbaa !6
  %928 = call double @RDCost_for_8x8IntraBlocks(ptr noundef nonnull %5, i32 noundef signext %0, i32 noundef signext %240, double noundef %1, double poison, i32 noundef signext %120)
  call void @reset_coding_state_cs_cm() #8
  %929 = load ptr, ptr @img, align 8, !tbaa !10
  %930 = getelementptr inbounds i8, ptr %929, i64 13112
  %931 = load i32, ptr %930, align 4, !tbaa !6
  store i32 %931, ptr @rec_resG, align 4, !tbaa !6
  %932 = getelementptr inbounds i8, ptr %929, i64 13116
  %933 = load i32, ptr %932, align 4, !tbaa !6
  store i32 %933, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 4), align 4, !tbaa !6
  %934 = getelementptr inbounds i8, ptr %929, i64 13120
  %935 = load i32, ptr %934, align 4, !tbaa !6
  store i32 %935, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 8), align 4, !tbaa !6
  %936 = getelementptr inbounds i8, ptr %929, i64 13124
  %937 = load i32, ptr %936, align 4, !tbaa !6
  store i32 %937, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 12), align 4, !tbaa !6
  %938 = getelementptr inbounds i8, ptr %929, i64 13128
  %939 = load i32, ptr %938, align 4, !tbaa !6
  store i32 %939, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 16), align 4, !tbaa !6
  %940 = getelementptr inbounds i8, ptr %929, i64 13132
  %941 = load i32, ptr %940, align 4, !tbaa !6
  store i32 %941, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 20), align 4, !tbaa !6
  %942 = getelementptr inbounds i8, ptr %929, i64 13136
  %943 = load i32, ptr %942, align 4, !tbaa !6
  store i32 %943, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 24), align 4, !tbaa !6
  %944 = getelementptr inbounds i8, ptr %929, i64 13140
  %945 = load i32, ptr %944, align 4, !tbaa !6
  store i32 %945, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 28), align 4, !tbaa !6
  %946 = getelementptr inbounds i8, ptr %929, i64 13176
  %947 = load i32, ptr %946, align 4, !tbaa !6
  store i32 %947, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 64), align 4, !tbaa !6
  %948 = getelementptr inbounds i8, ptr %929, i64 13180
  %949 = load i32, ptr %948, align 4, !tbaa !6
  store i32 %949, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 68), align 4, !tbaa !6
  %950 = getelementptr inbounds i8, ptr %929, i64 13184
  %951 = load i32, ptr %950, align 4, !tbaa !6
  store i32 %951, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 72), align 4, !tbaa !6
  %952 = getelementptr inbounds i8, ptr %929, i64 13188
  %953 = load i32, ptr %952, align 4, !tbaa !6
  store i32 %953, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 76), align 4, !tbaa !6
  %954 = getelementptr inbounds i8, ptr %929, i64 13192
  %955 = load i32, ptr %954, align 4, !tbaa !6
  store i32 %955, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 80), align 4, !tbaa !6
  %956 = getelementptr inbounds i8, ptr %929, i64 13196
  %957 = load i32, ptr %956, align 4, !tbaa !6
  store i32 %957, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 84), align 4, !tbaa !6
  %958 = getelementptr inbounds i8, ptr %929, i64 13200
  %959 = load i32, ptr %958, align 4, !tbaa !6
  store i32 %959, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 88), align 4, !tbaa !6
  %960 = getelementptr inbounds i8, ptr %929, i64 13204
  %961 = load i32, ptr %960, align 4, !tbaa !6
  store i32 %961, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 92), align 4, !tbaa !6
  %962 = getelementptr inbounds i8, ptr %929, i64 13240
  %963 = load i32, ptr %962, align 4, !tbaa !6
  store i32 %963, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 128), align 4, !tbaa !6
  %964 = getelementptr inbounds i8, ptr %929, i64 13244
  %965 = load i32, ptr %964, align 4, !tbaa !6
  store i32 %965, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 132), align 4, !tbaa !6
  %966 = getelementptr inbounds i8, ptr %929, i64 13248
  %967 = load i32, ptr %966, align 4, !tbaa !6
  store i32 %967, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 136), align 4, !tbaa !6
  %968 = getelementptr inbounds i8, ptr %929, i64 13252
  %969 = load i32, ptr %968, align 4, !tbaa !6
  store i32 %969, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 140), align 4, !tbaa !6
  %970 = getelementptr inbounds i8, ptr %929, i64 13256
  %971 = load i32, ptr %970, align 4, !tbaa !6
  store i32 %971, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 144), align 4, !tbaa !6
  %972 = getelementptr inbounds i8, ptr %929, i64 13260
  %973 = load i32, ptr %972, align 4, !tbaa !6
  store i32 %973, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 148), align 4, !tbaa !6
  %974 = getelementptr inbounds i8, ptr %929, i64 13264
  %975 = load i32, ptr %974, align 4, !tbaa !6
  store i32 %975, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 152), align 4, !tbaa !6
  %976 = getelementptr inbounds i8, ptr %929, i64 13268
  %977 = load i32, ptr %976, align 4, !tbaa !6
  store i32 %977, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 156), align 4, !tbaa !6
  %978 = getelementptr inbounds i8, ptr %929, i64 13304
  %979 = load i32, ptr %978, align 4, !tbaa !6
  store i32 %979, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 192), align 4, !tbaa !6
  %980 = getelementptr inbounds i8, ptr %929, i64 13308
  %981 = load i32, ptr %980, align 4, !tbaa !6
  store i32 %981, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 196), align 4, !tbaa !6
  %982 = getelementptr inbounds i8, ptr %929, i64 13312
  %983 = load i32, ptr %982, align 4, !tbaa !6
  store i32 %983, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 200), align 4, !tbaa !6
  %984 = getelementptr inbounds i8, ptr %929, i64 13316
  %985 = load i32, ptr %984, align 4, !tbaa !6
  store i32 %985, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 204), align 4, !tbaa !6
  %986 = getelementptr inbounds i8, ptr %929, i64 13320
  %987 = load i32, ptr %986, align 4, !tbaa !6
  store i32 %987, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 208), align 4, !tbaa !6
  %988 = getelementptr inbounds i8, ptr %929, i64 13324
  %989 = load i32, ptr %988, align 4, !tbaa !6
  store i32 %989, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 212), align 4, !tbaa !6
  %990 = getelementptr inbounds i8, ptr %929, i64 13328
  %991 = load i32, ptr %990, align 4, !tbaa !6
  store i32 %991, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 216), align 4, !tbaa !6
  %992 = getelementptr inbounds i8, ptr %929, i64 13332
  %993 = load i32, ptr %992, align 4, !tbaa !6
  store i32 %993, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 220), align 4, !tbaa !6
  %994 = getelementptr inbounds i8, ptr %929, i64 13368
  %995 = load i32, ptr %994, align 4, !tbaa !6
  store i32 %995, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 256), align 4, !tbaa !6
  %996 = getelementptr inbounds i8, ptr %929, i64 13372
  %997 = load i32, ptr %996, align 4, !tbaa !6
  store i32 %997, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 260), align 4, !tbaa !6
  %998 = getelementptr inbounds i8, ptr %929, i64 13376
  %999 = load i32, ptr %998, align 4, !tbaa !6
  store i32 %999, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 264), align 4, !tbaa !6
  %1000 = getelementptr inbounds i8, ptr %929, i64 13380
  %1001 = load i32, ptr %1000, align 4, !tbaa !6
  store i32 %1001, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 268), align 4, !tbaa !6
  %1002 = getelementptr inbounds i8, ptr %929, i64 13384
  %1003 = load i32, ptr %1002, align 4, !tbaa !6
  store i32 %1003, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 272), align 4, !tbaa !6
  %1004 = getelementptr inbounds i8, ptr %929, i64 13388
  %1005 = load i32, ptr %1004, align 4, !tbaa !6
  store i32 %1005, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 276), align 4, !tbaa !6
  %1006 = getelementptr inbounds i8, ptr %929, i64 13392
  %1007 = load i32, ptr %1006, align 4, !tbaa !6
  store i32 %1007, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 280), align 4, !tbaa !6
  %1008 = getelementptr inbounds i8, ptr %929, i64 13396
  %1009 = load i32, ptr %1008, align 4, !tbaa !6
  store i32 %1009, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 284), align 4, !tbaa !6
  %1010 = getelementptr inbounds i8, ptr %929, i64 13432
  %1011 = load i32, ptr %1010, align 4, !tbaa !6
  store i32 %1011, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 320), align 4, !tbaa !6
  %1012 = getelementptr inbounds i8, ptr %929, i64 13436
  %1013 = load i32, ptr %1012, align 4, !tbaa !6
  store i32 %1013, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 324), align 4, !tbaa !6
  %1014 = getelementptr inbounds i8, ptr %929, i64 13440
  %1015 = load i32, ptr %1014, align 4, !tbaa !6
  store i32 %1015, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 328), align 4, !tbaa !6
  %1016 = getelementptr inbounds i8, ptr %929, i64 13444
  %1017 = load i32, ptr %1016, align 4, !tbaa !6
  store i32 %1017, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 332), align 4, !tbaa !6
  %1018 = getelementptr inbounds i8, ptr %929, i64 13448
  %1019 = load i32, ptr %1018, align 4, !tbaa !6
  store i32 %1019, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 336), align 4, !tbaa !6
  %1020 = getelementptr inbounds i8, ptr %929, i64 13452
  %1021 = load i32, ptr %1020, align 4, !tbaa !6
  store i32 %1021, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 340), align 4, !tbaa !6
  %1022 = getelementptr inbounds i8, ptr %929, i64 13456
  %1023 = load i32, ptr %1022, align 4, !tbaa !6
  store i32 %1023, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 344), align 4, !tbaa !6
  %1024 = getelementptr inbounds i8, ptr %929, i64 13460
  %1025 = load i32, ptr %1024, align 4, !tbaa !6
  store i32 %1025, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 348), align 4, !tbaa !6
  %1026 = getelementptr inbounds i8, ptr %929, i64 13496
  %1027 = load i32, ptr %1026, align 4, !tbaa !6
  store i32 %1027, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 384), align 4, !tbaa !6
  %1028 = getelementptr inbounds i8, ptr %929, i64 13500
  %1029 = load i32, ptr %1028, align 4, !tbaa !6
  store i32 %1029, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 388), align 4, !tbaa !6
  %1030 = getelementptr inbounds i8, ptr %929, i64 13504
  %1031 = load i32, ptr %1030, align 4, !tbaa !6
  store i32 %1031, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 392), align 4, !tbaa !6
  %1032 = getelementptr inbounds i8, ptr %929, i64 13508
  %1033 = load i32, ptr %1032, align 4, !tbaa !6
  store i32 %1033, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 396), align 4, !tbaa !6
  %1034 = getelementptr inbounds i8, ptr %929, i64 13512
  %1035 = load i32, ptr %1034, align 4, !tbaa !6
  store i32 %1035, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 400), align 4, !tbaa !6
  %1036 = getelementptr inbounds i8, ptr %929, i64 13516
  %1037 = load i32, ptr %1036, align 4, !tbaa !6
  store i32 %1037, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 404), align 4, !tbaa !6
  %1038 = getelementptr inbounds i8, ptr %929, i64 13520
  %1039 = load i32, ptr %1038, align 4, !tbaa !6
  store i32 %1039, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 408), align 4, !tbaa !6
  %1040 = getelementptr inbounds i8, ptr %929, i64 13524
  %1041 = load i32, ptr %1040, align 4, !tbaa !6
  store i32 %1041, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 412), align 4, !tbaa !6
  %1042 = getelementptr inbounds i8, ptr %929, i64 13560
  %1043 = load i32, ptr %1042, align 4, !tbaa !6
  store i32 %1043, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 448), align 4, !tbaa !6
  %1044 = getelementptr inbounds i8, ptr %929, i64 13564
  %1045 = load i32, ptr %1044, align 4, !tbaa !6
  store i32 %1045, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 452), align 4, !tbaa !6
  %1046 = getelementptr inbounds i8, ptr %929, i64 13568
  %1047 = load i32, ptr %1046, align 4, !tbaa !6
  store i32 %1047, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 456), align 4, !tbaa !6
  %1048 = getelementptr inbounds i8, ptr %929, i64 13572
  %1049 = load i32, ptr %1048, align 4, !tbaa !6
  store i32 %1049, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 460), align 4, !tbaa !6
  %1050 = getelementptr inbounds i8, ptr %929, i64 13576
  %1051 = load i32, ptr %1050, align 4, !tbaa !6
  store i32 %1051, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 464), align 4, !tbaa !6
  %1052 = getelementptr inbounds i8, ptr %929, i64 13580
  %1053 = load i32, ptr %1052, align 4, !tbaa !6
  store i32 %1053, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 468), align 4, !tbaa !6
  %1054 = getelementptr inbounds i8, ptr %929, i64 13584
  %1055 = load i32, ptr %1054, align 4, !tbaa !6
  store i32 %1055, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 472), align 4, !tbaa !6
  %1056 = getelementptr inbounds i8, ptr %929, i64 13588
  %1057 = load i32, ptr %1056, align 4, !tbaa !6
  store i32 %1057, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 476), align 4, !tbaa !6
  %1058 = fptosi double %928 to i32
  %1059 = load ptr, ptr @img, align 8, !tbaa !10
  br label %1109

1060:                                             ; preds = %348, %1106
  %1061 = phi i64 [ 0, %348 ], [ %1107, %1106 ]
  %1062 = add nsw i64 %1061, %140
  %1063 = getelementptr inbounds ptr, ptr %350, i64 %1062
  %1064 = load ptr, ptr %1063, align 8, !tbaa !10
  %1065 = or disjoint i64 %1061, %139
  %1066 = getelementptr inbounds ptr, ptr %352, i64 %1062
  %1067 = load ptr, ptr %1066, align 8, !tbaa !10
  %1068 = getelementptr inbounds ptr, ptr %355, i64 %1062
  %1069 = load ptr, ptr %1068, align 8, !tbaa !10
  br label %1070

1070:                                             ; preds = %1060, %1070
  %1071 = phi i64 [ 0, %1060 ], [ %1104, %1070 ]
  %1072 = add nsw i64 %1071, %138
  %1073 = getelementptr inbounds i16, ptr %1064, i64 %1072
  %1074 = load i16, ptr %1073, align 2, !tbaa !35
  %1075 = zext i16 %1074 to i32
  %1076 = or disjoint i64 %1071, %137
  %1077 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %351, i64 0, i64 %127, i64 %1065, i64 %1076
  %1078 = load i16, ptr %1077, align 2, !tbaa !35
  %1079 = zext i16 %1078 to i32
  %1080 = sub nsw i32 %1075, %1079
  %1081 = getelementptr inbounds i16, ptr %1067, i64 %1072
  %1082 = load i16, ptr %1081, align 2, !tbaa !35
  %1083 = zext i16 %1082 to i32
  %1084 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %353, i64 0, i64 %221, i64 %1061, i64 %1071
  %1085 = load i16, ptr %1084, align 2, !tbaa !35
  %1086 = zext i16 %1085 to i32
  %1087 = getelementptr inbounds i16, ptr %1069, i64 %1072
  %1088 = load i16, ptr %1087, align 2, !tbaa !35
  %1089 = zext i16 %1088 to i32
  %1090 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %356, i64 0, i64 %127, i64 %1065, i64 %1076
  %1091 = load i16, ptr %1090, align 2, !tbaa !35
  %1092 = zext i16 %1091 to i32
  %1093 = add nsw i32 %1080, %1092
  %1094 = sub nsw i32 %1089, %1093
  %1095 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1061, i64 %1071
  store i32 %1094, ptr %1095, align 4, !tbaa !6
  %1096 = ashr i32 %1094, 1
  %1097 = add nsw i32 %1096, %1080
  %1098 = add nsw i32 %1097, %1086
  %1099 = sub nsw i32 %1083, %1098
  %1100 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1061, i64 %1071
  store i32 %1099, ptr %1100, align 4, !tbaa !6
  %1101 = ashr i32 %1099, 1
  %1102 = add nsw i32 %1101, %1097
  %1103 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1061, i64 %1071
  store i32 %1102, ptr %1103, align 4, !tbaa !6
  %1104 = add nuw nsw i64 %1071, 1
  %1105 = icmp eq i64 %1104, 8
  br i1 %1105, label %1106, label %1070

1106:                                             ; preds = %1070
  %1107 = add nuw nsw i64 %1061, 1
  %1108 = icmp eq i64 %1107, 8
  br i1 %1108, label %799, label %1060

1109:                                             ; preds = %799, %1109
  %1110 = phi ptr [ %1256, %1109 ], [ %1059, %799 ]
  %1111 = phi i32 [ %1307, %1109 ], [ 0, %799 ]
  %1112 = phi i32 [ %1306, %1109 ], [ %1058, %799 ]
  %1113 = shl nuw nsw i32 %1111, 2
  %1114 = and i32 %1113, 4
  %1115 = shl nuw nsw i32 %1111, 1
  %1116 = and i32 %1115, 4
  %1117 = getelementptr inbounds i8, ptr %1110, i64 13112
  %1118 = zext nneg i32 %1114 to i64
  %1119 = zext nneg i32 %1116 to i64
  %1120 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1119, i64 %1118
  %1121 = load i32, ptr %1120, align 4, !tbaa !6
  store i32 %1121, ptr %1117, align 4, !tbaa !6
  %1122 = or disjoint i64 %1118, 1
  %1123 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1119, i64 %1122
  %1124 = load i32, ptr %1123, align 4, !tbaa !6
  %1125 = getelementptr inbounds i8, ptr %1110, i64 13116
  store i32 %1124, ptr %1125, align 4, !tbaa !6
  %1126 = or disjoint i64 %1118, 2
  %1127 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1119, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !6
  %1129 = getelementptr inbounds i8, ptr %1110, i64 13120
  store i32 %1128, ptr %1129, align 4, !tbaa !6
  %1130 = or disjoint i64 %1118, 3
  %1131 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1119, i64 %1130
  %1132 = load i32, ptr %1131, align 4, !tbaa !6
  %1133 = getelementptr inbounds i8, ptr %1110, i64 13124
  store i32 %1132, ptr %1133, align 4, !tbaa !6
  %1134 = or disjoint i64 %1119, 1
  %1135 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1134, i64 %1118
  %1136 = load i32, ptr %1135, align 4, !tbaa !6
  %1137 = getelementptr inbounds i8, ptr %1110, i64 13176
  store i32 %1136, ptr %1137, align 4, !tbaa !6
  %1138 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1134, i64 %1122
  %1139 = load i32, ptr %1138, align 4, !tbaa !6
  %1140 = getelementptr inbounds i8, ptr %1110, i64 13180
  store i32 %1139, ptr %1140, align 4, !tbaa !6
  %1141 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1134, i64 %1126
  %1142 = load i32, ptr %1141, align 4, !tbaa !6
  %1143 = getelementptr inbounds i8, ptr %1110, i64 13184
  store i32 %1142, ptr %1143, align 4, !tbaa !6
  %1144 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1134, i64 %1130
  %1145 = load i32, ptr %1144, align 4, !tbaa !6
  %1146 = getelementptr inbounds i8, ptr %1110, i64 13188
  store i32 %1145, ptr %1146, align 4, !tbaa !6
  %1147 = or disjoint i64 %1119, 2
  %1148 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1147, i64 %1118
  %1149 = load i32, ptr %1148, align 4, !tbaa !6
  %1150 = getelementptr inbounds i8, ptr %1110, i64 13240
  store i32 %1149, ptr %1150, align 4, !tbaa !6
  %1151 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1147, i64 %1122
  %1152 = load i32, ptr %1151, align 4, !tbaa !6
  %1153 = getelementptr inbounds i8, ptr %1110, i64 13244
  store i32 %1152, ptr %1153, align 4, !tbaa !6
  %1154 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1147, i64 %1126
  %1155 = load i32, ptr %1154, align 4, !tbaa !6
  %1156 = getelementptr inbounds i8, ptr %1110, i64 13248
  store i32 %1155, ptr %1156, align 4, !tbaa !6
  %1157 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1147, i64 %1130
  %1158 = load i32, ptr %1157, align 4, !tbaa !6
  %1159 = getelementptr inbounds i8, ptr %1110, i64 13252
  store i32 %1158, ptr %1159, align 4, !tbaa !6
  %1160 = or disjoint i64 %1119, 3
  %1161 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1160, i64 %1118
  %1162 = load i32, ptr %1161, align 4, !tbaa !6
  %1163 = getelementptr inbounds i8, ptr %1110, i64 13304
  store i32 %1162, ptr %1163, align 4, !tbaa !6
  %1164 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1160, i64 %1122
  %1165 = load i32, ptr %1164, align 4, !tbaa !6
  %1166 = getelementptr inbounds i8, ptr %1110, i64 13308
  store i32 %1165, ptr %1166, align 4, !tbaa !6
  %1167 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1160, i64 %1126
  %1168 = load i32, ptr %1167, align 4, !tbaa !6
  %1169 = getelementptr inbounds i8, ptr %1110, i64 13312
  store i32 %1168, ptr %1169, align 4, !tbaa !6
  %1170 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1160, i64 %1130
  %1171 = load i32, ptr %1170, align 4, !tbaa !6
  %1172 = getelementptr inbounds i8, ptr %1110, i64 13316
  store i32 %1171, ptr %1172, align 4, !tbaa !6
  %1173 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %128, i32 noundef signext %1111, i32 noundef signext 0) #8
  %1174 = load ptr, ptr @img, align 8, !tbaa !10
  %1175 = getelementptr inbounds i8, ptr %1174, i64 13112
  %1176 = load i32, ptr %1175, align 4, !tbaa !6
  %1177 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1119, i64 %1118
  store i32 %1176, ptr %1177, align 4, !tbaa !6
  %1178 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1119, i64 %1118
  %1179 = load i32, ptr %1178, align 4, !tbaa !6
  store i32 %1179, ptr %1175, align 4, !tbaa !6
  %1180 = getelementptr inbounds i8, ptr %1174, i64 13116
  %1181 = load i32, ptr %1180, align 4, !tbaa !6
  %1182 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1119, i64 %1122
  store i32 %1181, ptr %1182, align 4, !tbaa !6
  %1183 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1119, i64 %1122
  %1184 = load i32, ptr %1183, align 4, !tbaa !6
  store i32 %1184, ptr %1180, align 4, !tbaa !6
  %1185 = getelementptr inbounds i8, ptr %1174, i64 13120
  %1186 = load i32, ptr %1185, align 4, !tbaa !6
  %1187 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1119, i64 %1126
  store i32 %1186, ptr %1187, align 4, !tbaa !6
  %1188 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1119, i64 %1126
  %1189 = load i32, ptr %1188, align 4, !tbaa !6
  store i32 %1189, ptr %1185, align 4, !tbaa !6
  %1190 = getelementptr inbounds i8, ptr %1174, i64 13124
  %1191 = load i32, ptr %1190, align 4, !tbaa !6
  %1192 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1119, i64 %1130
  store i32 %1191, ptr %1192, align 4, !tbaa !6
  %1193 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1119, i64 %1130
  %1194 = load i32, ptr %1193, align 4, !tbaa !6
  store i32 %1194, ptr %1190, align 4, !tbaa !6
  %1195 = getelementptr inbounds i8, ptr %1174, i64 13176
  %1196 = load i32, ptr %1195, align 4, !tbaa !6
  %1197 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1134, i64 %1118
  store i32 %1196, ptr %1197, align 4, !tbaa !6
  %1198 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1134, i64 %1118
  %1199 = load i32, ptr %1198, align 4, !tbaa !6
  store i32 %1199, ptr %1195, align 4, !tbaa !6
  %1200 = getelementptr inbounds i8, ptr %1174, i64 13180
  %1201 = load i32, ptr %1200, align 4, !tbaa !6
  %1202 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1134, i64 %1122
  store i32 %1201, ptr %1202, align 4, !tbaa !6
  %1203 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1134, i64 %1122
  %1204 = load i32, ptr %1203, align 4, !tbaa !6
  store i32 %1204, ptr %1200, align 4, !tbaa !6
  %1205 = getelementptr inbounds i8, ptr %1174, i64 13184
  %1206 = load i32, ptr %1205, align 4, !tbaa !6
  %1207 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1134, i64 %1126
  store i32 %1206, ptr %1207, align 4, !tbaa !6
  %1208 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1134, i64 %1126
  %1209 = load i32, ptr %1208, align 4, !tbaa !6
  store i32 %1209, ptr %1205, align 4, !tbaa !6
  %1210 = getelementptr inbounds i8, ptr %1174, i64 13188
  %1211 = load i32, ptr %1210, align 4, !tbaa !6
  %1212 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1134, i64 %1130
  store i32 %1211, ptr %1212, align 4, !tbaa !6
  %1213 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1134, i64 %1130
  %1214 = load i32, ptr %1213, align 4, !tbaa !6
  store i32 %1214, ptr %1210, align 4, !tbaa !6
  %1215 = getelementptr inbounds i8, ptr %1174, i64 13240
  %1216 = load i32, ptr %1215, align 4, !tbaa !6
  %1217 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1147, i64 %1118
  store i32 %1216, ptr %1217, align 4, !tbaa !6
  %1218 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1147, i64 %1118
  %1219 = load i32, ptr %1218, align 4, !tbaa !6
  store i32 %1219, ptr %1215, align 4, !tbaa !6
  %1220 = getelementptr inbounds i8, ptr %1174, i64 13244
  %1221 = load i32, ptr %1220, align 4, !tbaa !6
  %1222 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1147, i64 %1122
  store i32 %1221, ptr %1222, align 4, !tbaa !6
  %1223 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1147, i64 %1122
  %1224 = load i32, ptr %1223, align 4, !tbaa !6
  store i32 %1224, ptr %1220, align 4, !tbaa !6
  %1225 = getelementptr inbounds i8, ptr %1174, i64 13248
  %1226 = load i32, ptr %1225, align 4, !tbaa !6
  %1227 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1147, i64 %1126
  store i32 %1226, ptr %1227, align 4, !tbaa !6
  %1228 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1147, i64 %1126
  %1229 = load i32, ptr %1228, align 4, !tbaa !6
  store i32 %1229, ptr %1225, align 4, !tbaa !6
  %1230 = getelementptr inbounds i8, ptr %1174, i64 13252
  %1231 = load i32, ptr %1230, align 4, !tbaa !6
  %1232 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1147, i64 %1130
  store i32 %1231, ptr %1232, align 4, !tbaa !6
  %1233 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1147, i64 %1130
  %1234 = load i32, ptr %1233, align 4, !tbaa !6
  store i32 %1234, ptr %1230, align 4, !tbaa !6
  %1235 = getelementptr inbounds i8, ptr %1174, i64 13304
  %1236 = load i32, ptr %1235, align 4, !tbaa !6
  %1237 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1160, i64 %1118
  store i32 %1236, ptr %1237, align 4, !tbaa !6
  %1238 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1160, i64 %1118
  %1239 = load i32, ptr %1238, align 4, !tbaa !6
  store i32 %1239, ptr %1235, align 4, !tbaa !6
  %1240 = getelementptr inbounds i8, ptr %1174, i64 13308
  %1241 = load i32, ptr %1240, align 4, !tbaa !6
  %1242 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1160, i64 %1122
  store i32 %1241, ptr %1242, align 4, !tbaa !6
  %1243 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1160, i64 %1122
  %1244 = load i32, ptr %1243, align 4, !tbaa !6
  store i32 %1244, ptr %1240, align 4, !tbaa !6
  %1245 = getelementptr inbounds i8, ptr %1174, i64 13312
  %1246 = load i32, ptr %1245, align 4, !tbaa !6
  %1247 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1160, i64 %1126
  store i32 %1246, ptr %1247, align 4, !tbaa !6
  %1248 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1160, i64 %1126
  %1249 = load i32, ptr %1248, align 4, !tbaa !6
  store i32 %1249, ptr %1245, align 4, !tbaa !6
  %1250 = getelementptr inbounds i8, ptr %1174, i64 13316
  %1251 = load i32, ptr %1250, align 4, !tbaa !6
  %1252 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1160, i64 %1130
  store i32 %1251, ptr %1252, align 4, !tbaa !6
  %1253 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1160, i64 %1130
  %1254 = load i32, ptr %1253, align 4, !tbaa !6
  store i32 %1254, ptr %1250, align 4, !tbaa !6
  %1255 = call signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext %129, i32 noundef signext %1111, i32 noundef signext 1) #8
  %1256 = load ptr, ptr @img, align 8, !tbaa !10
  %1257 = getelementptr inbounds i8, ptr %1256, i64 13112
  %1258 = load i32, ptr %1257, align 4, !tbaa !6
  %1259 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1119, i64 %1118
  store i32 %1258, ptr %1259, align 4, !tbaa !6
  %1260 = getelementptr inbounds i8, ptr %1256, i64 13116
  %1261 = load i32, ptr %1260, align 4, !tbaa !6
  %1262 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1119, i64 %1122
  store i32 %1261, ptr %1262, align 4, !tbaa !6
  %1263 = getelementptr inbounds i8, ptr %1256, i64 13120
  %1264 = load i32, ptr %1263, align 4, !tbaa !6
  %1265 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1119, i64 %1126
  store i32 %1264, ptr %1265, align 4, !tbaa !6
  %1266 = getelementptr inbounds i8, ptr %1256, i64 13124
  %1267 = load i32, ptr %1266, align 4, !tbaa !6
  %1268 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1119, i64 %1130
  store i32 %1267, ptr %1268, align 4, !tbaa !6
  %1269 = getelementptr inbounds i8, ptr %1256, i64 13176
  %1270 = load i32, ptr %1269, align 4, !tbaa !6
  %1271 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1134, i64 %1118
  store i32 %1270, ptr %1271, align 4, !tbaa !6
  %1272 = getelementptr inbounds i8, ptr %1256, i64 13180
  %1273 = load i32, ptr %1272, align 4, !tbaa !6
  %1274 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1134, i64 %1122
  store i32 %1273, ptr %1274, align 4, !tbaa !6
  %1275 = getelementptr inbounds i8, ptr %1256, i64 13184
  %1276 = load i32, ptr %1275, align 4, !tbaa !6
  %1277 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1134, i64 %1126
  store i32 %1276, ptr %1277, align 4, !tbaa !6
  %1278 = getelementptr inbounds i8, ptr %1256, i64 13188
  %1279 = load i32, ptr %1278, align 4, !tbaa !6
  %1280 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1134, i64 %1130
  store i32 %1279, ptr %1280, align 4, !tbaa !6
  %1281 = getelementptr inbounds i8, ptr %1256, i64 13240
  %1282 = load i32, ptr %1281, align 4, !tbaa !6
  %1283 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1147, i64 %1118
  store i32 %1282, ptr %1283, align 4, !tbaa !6
  %1284 = getelementptr inbounds i8, ptr %1256, i64 13244
  %1285 = load i32, ptr %1284, align 4, !tbaa !6
  %1286 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1147, i64 %1122
  store i32 %1285, ptr %1286, align 4, !tbaa !6
  %1287 = getelementptr inbounds i8, ptr %1256, i64 13248
  %1288 = load i32, ptr %1287, align 4, !tbaa !6
  %1289 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1147, i64 %1126
  store i32 %1288, ptr %1289, align 4, !tbaa !6
  %1290 = getelementptr inbounds i8, ptr %1256, i64 13252
  %1291 = load i32, ptr %1290, align 4, !tbaa !6
  %1292 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1147, i64 %1130
  store i32 %1291, ptr %1292, align 4, !tbaa !6
  %1293 = getelementptr inbounds i8, ptr %1256, i64 13304
  %1294 = load i32, ptr %1293, align 4, !tbaa !6
  %1295 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1160, i64 %1118
  store i32 %1294, ptr %1295, align 4, !tbaa !6
  %1296 = getelementptr inbounds i8, ptr %1256, i64 13308
  %1297 = load i32, ptr %1296, align 4, !tbaa !6
  %1298 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1160, i64 %1122
  store i32 %1297, ptr %1298, align 4, !tbaa !6
  %1299 = getelementptr inbounds i8, ptr %1256, i64 13312
  %1300 = load i32, ptr %1299, align 4, !tbaa !6
  %1301 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1160, i64 %1126
  store i32 %1300, ptr %1301, align 4, !tbaa !6
  %1302 = getelementptr inbounds i8, ptr %1256, i64 13316
  %1303 = load i32, ptr %1302, align 4, !tbaa !6
  %1304 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1160, i64 %1130
  store i32 %1303, ptr %1304, align 4, !tbaa !6
  %1305 = add nsw i32 %1173, %1112
  %1306 = add nsw i32 %1305, %1255
  %1307 = add nuw nsw i32 %1111, 1
  %1308 = icmp eq i32 %1307, 4
  br i1 %1308, label %1309, label %1109

1309:                                             ; preds = %1109
  call void @reset_coding_state_cs_cm() #8
  %1310 = load ptr, ptr @img, align 8, !tbaa !10
  %1311 = getelementptr inbounds i8, ptr %1310, i64 90536
  %1312 = load i32, ptr %1311, align 8, !tbaa !42
  %1313 = getelementptr inbounds i8, ptr %1310, i64 8504
  %1314 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %1315 = getelementptr inbounds i8, ptr %1314, i64 6464
  %1316 = load ptr, ptr %1315, align 8, !tbaa !43
  %1317 = load ptr, ptr %1316, align 8, !tbaa !10
  %1318 = getelementptr inbounds i8, ptr %1310, i64 90532
  %1319 = load i32, ptr %1318, align 4, !tbaa !44
  %1320 = getelementptr inbounds i8, ptr %1310, i64 7352
  %1321 = getelementptr inbounds i8, ptr %1314, i64 6424
  %1322 = load ptr, ptr %1321, align 8, !tbaa !39
  %1323 = getelementptr inbounds i8, ptr %1310, i64 10552
  %1324 = getelementptr inbounds i8, ptr %1316, i64 8
  %1325 = load ptr, ptr %1324, align 8, !tbaa !10
  br label %1334

1326:                                             ; preds = %1386
  %1327 = getelementptr inbounds i8, ptr %1310, i64 89184
  %1328 = load ptr, ptr %1327, align 8, !tbaa !45
  %1329 = load ptr, ptr @imgY_org, align 8, !tbaa !10
  %1330 = load ptr, ptr @imgUV_org, align 8, !tbaa !10
  %1331 = load ptr, ptr %1330, align 8, !tbaa !10
  %1332 = getelementptr inbounds i8, ptr %1330, i64 8
  %1333 = load ptr, ptr %1332, align 8, !tbaa !10
  br label %1389

1334:                                             ; preds = %1309, %1386
  %1335 = phi i64 [ 0, %1309 ], [ %1387, %1386 ]
  %1336 = or disjoint i64 %1335, %139
  %1337 = add nsw i64 %1335, %141
  %1338 = getelementptr inbounds ptr, ptr %1317, i64 %1337
  %1339 = load ptr, ptr %1338, align 8, !tbaa !10
  %1340 = getelementptr inbounds ptr, ptr %1322, i64 %1337
  %1341 = load ptr, ptr %1340, align 8, !tbaa !10
  %1342 = getelementptr inbounds ptr, ptr %1325, i64 %1337
  %1343 = load ptr, ptr %1342, align 8, !tbaa !10
  br label %1344

1344:                                             ; preds = %1334, %1344
  %1345 = phi i64 [ 0, %1334 ], [ %1384, %1344 ]
  %1346 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1335, i64 %1345
  %1347 = load i32, ptr %1346, align 4, !tbaa !6
  %1348 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1335, i64 %1345
  %1349 = load i32, ptr %1348, align 4, !tbaa !6
  %1350 = ashr i32 %1349, 1
  %1351 = sub nsw i32 %1347, %1350
  %1352 = add nsw i32 %1351, %1349
  %1353 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1335, i64 %1345
  %1354 = load i32, ptr %1353, align 4, !tbaa !6
  %1355 = ashr i32 %1354, 1
  %1356 = sub nsw i32 %1351, %1355
  %1357 = add nsw i32 %1356, %1354
  %1358 = or disjoint i64 %1345, %137
  %1359 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1313, i64 0, i64 %127, i64 %1336, i64 %1358
  %1360 = load i16, ptr %1359, align 2, !tbaa !35
  %1361 = zext i16 %1360 to i32
  %1362 = add nsw i32 %1356, %1361
  %1363 = call i32 @llvm.smax.i32(i32 %1362, i32 0)
  %1364 = call i32 @llvm.smin.i32(i32 %1312, i32 %1363)
  %1365 = trunc i32 %1364 to i16
  %1366 = add nsw i64 %1345, %132
  %1367 = getelementptr inbounds i16, ptr %1339, i64 %1366
  store i16 %1365, ptr %1367, align 2, !tbaa !35
  %1368 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %1320, i64 0, i64 %221, i64 %1335, i64 %1345
  %1369 = load i16, ptr %1368, align 2, !tbaa !35
  %1370 = zext i16 %1369 to i32
  %1371 = add nsw i32 %1352, %1370
  %1372 = call i32 @llvm.smax.i32(i32 %1371, i32 0)
  %1373 = call i32 @llvm.smin.i32(i32 %1319, i32 %1372)
  %1374 = trunc i32 %1373 to i16
  %1375 = getelementptr inbounds i16, ptr %1341, i64 %1366
  store i16 %1374, ptr %1375, align 2, !tbaa !35
  %1376 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1323, i64 0, i64 %127, i64 %1336, i64 %1358
  %1377 = load i16, ptr %1376, align 2, !tbaa !35
  %1378 = zext i16 %1377 to i32
  %1379 = add nsw i32 %1357, %1378
  %1380 = call i32 @llvm.smax.i32(i32 %1379, i32 0)
  %1381 = call i32 @llvm.smin.i32(i32 %1312, i32 %1380)
  %1382 = trunc i32 %1381 to i16
  %1383 = getelementptr inbounds i16, ptr %1343, i64 %1366
  store i16 %1382, ptr %1383, align 2, !tbaa !35
  %1384 = add nuw nsw i64 %1345, 1
  %1385 = icmp eq i64 %1384, 8
  br i1 %1385, label %1386, label %1344

1386:                                             ; preds = %1344
  %1387 = add nuw nsw i64 %1335, 1
  %1388 = icmp eq i64 %1387, 8
  br i1 %1388, label %1326, label %1334

1389:                                             ; preds = %1326, %1443
  %1390 = phi i64 [ 0, %1326 ], [ %1444, %1443 ]
  %1391 = phi i64 [ 0, %1326 ], [ %1440, %1443 ]
  %1392 = add nsw i64 %1390, %141
  %1393 = getelementptr inbounds ptr, ptr %1329, i64 %1392
  %1394 = load ptr, ptr %1393, align 8, !tbaa !10
  %1395 = getelementptr inbounds ptr, ptr %1322, i64 %1392
  %1396 = load ptr, ptr %1395, align 8, !tbaa !10
  %1397 = getelementptr inbounds ptr, ptr %1331, i64 %1392
  %1398 = load ptr, ptr %1397, align 8, !tbaa !10
  %1399 = getelementptr inbounds ptr, ptr %1317, i64 %1392
  %1400 = load ptr, ptr %1399, align 8, !tbaa !10
  %1401 = getelementptr inbounds ptr, ptr %1333, i64 %1392
  %1402 = load ptr, ptr %1401, align 8, !tbaa !10
  %1403 = getelementptr inbounds ptr, ptr %1325, i64 %1392
  %1404 = load ptr, ptr %1403, align 8, !tbaa !10
  br label %1405

1405:                                             ; preds = %1389, %1405
  %1406 = phi i64 [ %132, %1389 ], [ %1441, %1405 ]
  %1407 = phi i64 [ %1391, %1389 ], [ %1440, %1405 ]
  %1408 = getelementptr inbounds i16, ptr %1394, i64 %1406
  %1409 = load i16, ptr %1408, align 2, !tbaa !35
  %1410 = zext i16 %1409 to i64
  %1411 = getelementptr inbounds i16, ptr %1396, i64 %1406
  %1412 = load i16, ptr %1411, align 2, !tbaa !35
  %1413 = zext i16 %1412 to i64
  %1414 = sub nsw i64 %1410, %1413
  %1415 = getelementptr inbounds i32, ptr %1328, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !6
  %1417 = sext i32 %1416 to i64
  %1418 = add nsw i64 %1407, %1417
  %1419 = getelementptr inbounds i16, ptr %1398, i64 %1406
  %1420 = load i16, ptr %1419, align 2, !tbaa !35
  %1421 = zext i16 %1420 to i64
  %1422 = getelementptr inbounds i16, ptr %1400, i64 %1406
  %1423 = load i16, ptr %1422, align 2, !tbaa !35
  %1424 = zext i16 %1423 to i64
  %1425 = sub nsw i64 %1421, %1424
  %1426 = getelementptr inbounds i32, ptr %1328, i64 %1425
  %1427 = load i32, ptr %1426, align 4, !tbaa !6
  %1428 = sext i32 %1427 to i64
  %1429 = add nsw i64 %1418, %1428
  %1430 = getelementptr inbounds i16, ptr %1402, i64 %1406
  %1431 = load i16, ptr %1430, align 2, !tbaa !35
  %1432 = zext i16 %1431 to i64
  %1433 = getelementptr inbounds i16, ptr %1404, i64 %1406
  %1434 = load i16, ptr %1433, align 2, !tbaa !35
  %1435 = zext i16 %1434 to i64
  %1436 = sub nsw i64 %1432, %1435
  %1437 = getelementptr inbounds i32, ptr %1328, i64 %1436
  %1438 = load i32, ptr %1437, align 4, !tbaa !6
  %1439 = sext i32 %1438 to i64
  %1440 = add nsw i64 %1429, %1439
  %1441 = add nsw i64 %1406, 1
  %1442 = icmp slt i64 %1406, %144
  br i1 %1442, label %1405, label %1443

1443:                                             ; preds = %1405
  %1444 = add nuw nsw i64 %1390, 1
  %1445 = icmp eq i64 %1444, 8
  br i1 %1445, label %1446, label %1389

1446:                                             ; preds = %1443
  %1447 = sitofp i64 %1440 to double
  %1448 = sitofp i32 %1306 to double
  %1449 = call double @llvm.fmuladd.f64(double %1, double %1448, double %1447)
  %1450 = fcmp olt double %1449, %223
  br i1 %1450, label %1451, label %2026

1451:                                             ; preds = %1446
  %1452 = getelementptr inbounds i8, ptr %1310, i64 14136
  %1453 = load ptr, ptr %1452, align 8, !tbaa !38
  %1454 = getelementptr ptr, ptr %1453, i64 %130
  %1455 = load ptr, ptr %1454, align 8, !tbaa !10
  %1456 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %1457 = getelementptr inbounds ptr, ptr %1456, i64 %130
  %1458 = load ptr, ptr %1457, align 8, !tbaa !10
  %1459 = load ptr, ptr %1455, align 8, !tbaa !10
  %1460 = load ptr, ptr %1459, align 8, !tbaa !10
  %1461 = load ptr, ptr %1458, align 8, !tbaa !10
  %1462 = load ptr, ptr %1461, align 8, !tbaa !10
  %1463 = getelementptr inbounds i8, ptr %1455, i64 8
  %1464 = load ptr, ptr %1463, align 8, !tbaa !10
  %1465 = load ptr, ptr %1464, align 8, !tbaa !10
  %1466 = getelementptr inbounds i8, ptr %1458, i64 8
  %1467 = load ptr, ptr %1466, align 8, !tbaa !10
  %1468 = load ptr, ptr %1467, align 8, !tbaa !10
  %1469 = getelementptr inbounds i8, ptr %1455, i64 16
  %1470 = load ptr, ptr %1469, align 8, !tbaa !10
  %1471 = load ptr, ptr %1470, align 8, !tbaa !10
  %1472 = getelementptr inbounds i8, ptr %1458, i64 16
  %1473 = load ptr, ptr %1472, align 8, !tbaa !10
  %1474 = load ptr, ptr %1473, align 8, !tbaa !10
  %1475 = getelementptr inbounds i8, ptr %1455, i64 24
  %1476 = load ptr, ptr %1475, align 8, !tbaa !10
  %1477 = load ptr, ptr %1476, align 8, !tbaa !10
  %1478 = getelementptr inbounds i8, ptr %1458, i64 24
  %1479 = load ptr, ptr %1478, align 8, !tbaa !10
  %1480 = load ptr, ptr %1479, align 8, !tbaa !10
  br label %1481

1481:                                             ; preds = %1451, %1481
  %1482 = phi i64 [ 0, %1451 ], [ %1495, %1481 ]
  %1483 = getelementptr inbounds i32, ptr %1460, i64 %1482
  %1484 = load i32, ptr %1483, align 4, !tbaa !6
  %1485 = getelementptr inbounds i32, ptr %1462, i64 %1482
  store i32 %1484, ptr %1485, align 4, !tbaa !6
  %1486 = getelementptr inbounds i32, ptr %1465, i64 %1482
  %1487 = load i32, ptr %1486, align 4, !tbaa !6
  %1488 = getelementptr inbounds i32, ptr %1468, i64 %1482
  store i32 %1487, ptr %1488, align 4, !tbaa !6
  %1489 = getelementptr inbounds i32, ptr %1471, i64 %1482
  %1490 = load i32, ptr %1489, align 4, !tbaa !6
  %1491 = getelementptr inbounds i32, ptr %1474, i64 %1482
  store i32 %1490, ptr %1491, align 4, !tbaa !6
  %1492 = getelementptr inbounds i32, ptr %1477, i64 %1482
  %1493 = load i32, ptr %1492, align 4, !tbaa !6
  %1494 = getelementptr inbounds i32, ptr %1480, i64 %1482
  store i32 %1493, ptr %1494, align 4, !tbaa !6
  %1495 = add nuw nsw i64 %1482, 1
  %1496 = icmp eq i64 %1495, 65
  br i1 %1496, label %1497, label %1481

1497:                                             ; preds = %1481
  %1498 = getelementptr inbounds i8, ptr %1459, i64 8
  %1499 = load ptr, ptr %1498, align 8, !tbaa !10
  %1500 = getelementptr inbounds i8, ptr %1461, i64 8
  %1501 = load ptr, ptr %1500, align 8, !tbaa !10
  %1502 = getelementptr inbounds i8, ptr %1464, i64 8
  %1503 = load ptr, ptr %1502, align 8, !tbaa !10
  %1504 = getelementptr inbounds i8, ptr %1467, i64 8
  %1505 = load ptr, ptr %1504, align 8, !tbaa !10
  %1506 = getelementptr inbounds i8, ptr %1470, i64 8
  %1507 = load ptr, ptr %1506, align 8, !tbaa !10
  %1508 = getelementptr inbounds i8, ptr %1473, i64 8
  %1509 = load ptr, ptr %1508, align 8, !tbaa !10
  %1510 = getelementptr inbounds i8, ptr %1476, i64 8
  %1511 = load ptr, ptr %1510, align 8, !tbaa !10
  %1512 = getelementptr inbounds i8, ptr %1479, i64 8
  %1513 = load ptr, ptr %1512, align 8, !tbaa !10
  br label %1514

1514:                                             ; preds = %1514, %1497
  %1515 = phi i64 [ 0, %1497 ], [ %1528, %1514 ]
  %1516 = getelementptr inbounds i32, ptr %1499, i64 %1515
  %1517 = load i32, ptr %1516, align 4, !tbaa !6
  %1518 = getelementptr inbounds i32, ptr %1501, i64 %1515
  store i32 %1517, ptr %1518, align 4, !tbaa !6
  %1519 = getelementptr inbounds i32, ptr %1503, i64 %1515
  %1520 = load i32, ptr %1519, align 4, !tbaa !6
  %1521 = getelementptr inbounds i32, ptr %1505, i64 %1515
  store i32 %1520, ptr %1521, align 4, !tbaa !6
  %1522 = getelementptr inbounds i32, ptr %1507, i64 %1515
  %1523 = load i32, ptr %1522, align 4, !tbaa !6
  %1524 = getelementptr inbounds i32, ptr %1509, i64 %1515
  store i32 %1523, ptr %1524, align 4, !tbaa !6
  %1525 = getelementptr inbounds i32, ptr %1511, i64 %1515
  %1526 = load i32, ptr %1525, align 4, !tbaa !6
  %1527 = getelementptr inbounds i32, ptr %1513, i64 %1515
  store i32 %1526, ptr %1527, align 4, !tbaa !6
  %1528 = add nuw nsw i64 %1515, 1
  %1529 = icmp eq i64 %1528, 65
  br i1 %1529, label %1530, label %1514

1530:                                             ; preds = %1514
  %1531 = getelementptr i8, ptr %1454, i64 32
  %1532 = load ptr, ptr %1531, align 8, !tbaa !10
  %1533 = getelementptr i8, ptr %1454, i64 64
  %1534 = load ptr, ptr %1533, align 8, !tbaa !10
  br label %1691

1535:                                             ; preds = %2023
  %1536 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %1537 = getelementptr inbounds i8, ptr %1536, i64 6424
  %1538 = load ptr, ptr %1537, align 8, !tbaa !39
  %1539 = getelementptr inbounds ptr, ptr %1538, i64 %141
  %1540 = load ptr, ptr %1539, align 8, !tbaa !10
  %1541 = getelementptr inbounds i16, ptr %1540, i64 %132
  %1542 = load i16, ptr %1541, align 2, !tbaa !35
  %1543 = getelementptr inbounds i16, ptr %1540, i64 %145
  %1544 = load i16, ptr %1543, align 2, !tbaa !35
  %1545 = getelementptr inbounds i16, ptr %1540, i64 %146
  %1546 = load i16, ptr %1545, align 2, !tbaa !35
  %1547 = getelementptr inbounds i16, ptr %1540, i64 %147
  %1548 = load i16, ptr %1547, align 2, !tbaa !35
  %1549 = getelementptr inbounds i16, ptr %1540, i64 %148
  %1550 = load i16, ptr %1549, align 2, !tbaa !35
  %1551 = getelementptr inbounds i16, ptr %1540, i64 %149
  %1552 = load i16, ptr %1551, align 2, !tbaa !35
  %1553 = getelementptr inbounds i16, ptr %1540, i64 %150
  %1554 = load i16, ptr %1553, align 2, !tbaa !35
  %1555 = getelementptr inbounds i16, ptr %1540, i64 %151
  %1556 = load i16, ptr %1555, align 2, !tbaa !35
  %1557 = getelementptr ptr, ptr %1538, i64 %141
  %1558 = getelementptr i8, ptr %1557, i64 8
  %1559 = load ptr, ptr %1558, align 8, !tbaa !10
  %1560 = getelementptr inbounds i16, ptr %1559, i64 %132
  %1561 = load i16, ptr %1560, align 2, !tbaa !35
  %1562 = getelementptr inbounds i16, ptr %1559, i64 %145
  %1563 = load i16, ptr %1562, align 2, !tbaa !35
  %1564 = getelementptr inbounds i16, ptr %1559, i64 %146
  %1565 = load i16, ptr %1564, align 2, !tbaa !35
  %1566 = getelementptr inbounds i16, ptr %1559, i64 %147
  %1567 = load i16, ptr %1566, align 2, !tbaa !35
  %1568 = getelementptr inbounds i16, ptr %1559, i64 %148
  %1569 = load i16, ptr %1568, align 2, !tbaa !35
  %1570 = getelementptr inbounds i16, ptr %1559, i64 %149
  %1571 = load i16, ptr %1570, align 2, !tbaa !35
  %1572 = getelementptr inbounds i16, ptr %1559, i64 %150
  %1573 = load i16, ptr %1572, align 2, !tbaa !35
  %1574 = getelementptr inbounds i16, ptr %1559, i64 %151
  %1575 = load i16, ptr %1574, align 2, !tbaa !35
  %1576 = getelementptr ptr, ptr %1538, i64 %141
  %1577 = getelementptr i8, ptr %1576, i64 16
  %1578 = load ptr, ptr %1577, align 8, !tbaa !10
  %1579 = getelementptr inbounds i16, ptr %1578, i64 %132
  %1580 = load i16, ptr %1579, align 2, !tbaa !35
  %1581 = getelementptr inbounds i16, ptr %1578, i64 %145
  %1582 = load i16, ptr %1581, align 2, !tbaa !35
  %1583 = getelementptr inbounds i16, ptr %1578, i64 %146
  %1584 = load i16, ptr %1583, align 2, !tbaa !35
  %1585 = getelementptr inbounds i16, ptr %1578, i64 %147
  %1586 = load i16, ptr %1585, align 2, !tbaa !35
  %1587 = getelementptr inbounds i16, ptr %1578, i64 %148
  %1588 = load i16, ptr %1587, align 2, !tbaa !35
  %1589 = getelementptr inbounds i16, ptr %1578, i64 %149
  %1590 = load i16, ptr %1589, align 2, !tbaa !35
  %1591 = getelementptr inbounds i16, ptr %1578, i64 %150
  %1592 = load i16, ptr %1591, align 2, !tbaa !35
  %1593 = getelementptr inbounds i16, ptr %1578, i64 %151
  %1594 = load i16, ptr %1593, align 2, !tbaa !35
  %1595 = getelementptr ptr, ptr %1538, i64 %141
  %1596 = getelementptr i8, ptr %1595, i64 24
  %1597 = load ptr, ptr %1596, align 8, !tbaa !10
  %1598 = getelementptr inbounds i16, ptr %1597, i64 %132
  %1599 = load i16, ptr %1598, align 2, !tbaa !35
  %1600 = getelementptr inbounds i16, ptr %1597, i64 %145
  %1601 = load i16, ptr %1600, align 2, !tbaa !35
  %1602 = getelementptr inbounds i16, ptr %1597, i64 %146
  %1603 = load i16, ptr %1602, align 2, !tbaa !35
  %1604 = getelementptr inbounds i16, ptr %1597, i64 %147
  %1605 = load i16, ptr %1604, align 2, !tbaa !35
  %1606 = getelementptr inbounds i16, ptr %1597, i64 %148
  %1607 = load i16, ptr %1606, align 2, !tbaa !35
  %1608 = getelementptr inbounds i16, ptr %1597, i64 %149
  %1609 = load i16, ptr %1608, align 2, !tbaa !35
  %1610 = getelementptr inbounds i16, ptr %1597, i64 %150
  %1611 = load i16, ptr %1610, align 2, !tbaa !35
  %1612 = getelementptr inbounds i16, ptr %1597, i64 %151
  %1613 = load i16, ptr %1612, align 2, !tbaa !35
  %1614 = getelementptr ptr, ptr %1538, i64 %141
  %1615 = getelementptr i8, ptr %1614, i64 32
  %1616 = load ptr, ptr %1615, align 8, !tbaa !10
  %1617 = getelementptr inbounds i16, ptr %1616, i64 %132
  %1618 = load i16, ptr %1617, align 2, !tbaa !35
  %1619 = getelementptr inbounds i16, ptr %1616, i64 %145
  %1620 = load i16, ptr %1619, align 2, !tbaa !35
  %1621 = getelementptr inbounds i16, ptr %1616, i64 %146
  %1622 = load i16, ptr %1621, align 2, !tbaa !35
  %1623 = getelementptr inbounds i16, ptr %1616, i64 %147
  %1624 = load i16, ptr %1623, align 2, !tbaa !35
  %1625 = getelementptr inbounds i16, ptr %1616, i64 %148
  %1626 = load i16, ptr %1625, align 2, !tbaa !35
  %1627 = getelementptr inbounds i16, ptr %1616, i64 %149
  %1628 = load i16, ptr %1627, align 2, !tbaa !35
  %1629 = getelementptr inbounds i16, ptr %1616, i64 %150
  %1630 = load i16, ptr %1629, align 2, !tbaa !35
  %1631 = getelementptr inbounds i16, ptr %1616, i64 %151
  %1632 = load i16, ptr %1631, align 2, !tbaa !35
  %1633 = getelementptr ptr, ptr %1538, i64 %141
  %1634 = getelementptr i8, ptr %1633, i64 40
  %1635 = load ptr, ptr %1634, align 8, !tbaa !10
  %1636 = getelementptr inbounds i16, ptr %1635, i64 %132
  %1637 = load i16, ptr %1636, align 2, !tbaa !35
  %1638 = getelementptr inbounds i16, ptr %1635, i64 %145
  %1639 = load i16, ptr %1638, align 2, !tbaa !35
  %1640 = getelementptr inbounds i16, ptr %1635, i64 %146
  %1641 = load i16, ptr %1640, align 2, !tbaa !35
  %1642 = getelementptr inbounds i16, ptr %1635, i64 %147
  %1643 = load i16, ptr %1642, align 2, !tbaa !35
  %1644 = getelementptr inbounds i16, ptr %1635, i64 %148
  %1645 = load i16, ptr %1644, align 2, !tbaa !35
  %1646 = getelementptr inbounds i16, ptr %1635, i64 %149
  %1647 = load i16, ptr %1646, align 2, !tbaa !35
  %1648 = getelementptr inbounds i16, ptr %1635, i64 %150
  %1649 = load i16, ptr %1648, align 2, !tbaa !35
  %1650 = getelementptr inbounds i16, ptr %1635, i64 %151
  %1651 = load i16, ptr %1650, align 2, !tbaa !35
  %1652 = getelementptr ptr, ptr %1538, i64 %141
  %1653 = getelementptr i8, ptr %1652, i64 48
  %1654 = load ptr, ptr %1653, align 8, !tbaa !10
  %1655 = getelementptr inbounds i16, ptr %1654, i64 %132
  %1656 = load i16, ptr %1655, align 2, !tbaa !35
  %1657 = getelementptr inbounds i16, ptr %1654, i64 %145
  %1658 = load i16, ptr %1657, align 2, !tbaa !35
  %1659 = getelementptr inbounds i16, ptr %1654, i64 %146
  %1660 = load i16, ptr %1659, align 2, !tbaa !35
  %1661 = getelementptr inbounds i16, ptr %1654, i64 %147
  %1662 = load i16, ptr %1661, align 2, !tbaa !35
  %1663 = getelementptr inbounds i16, ptr %1654, i64 %148
  %1664 = load i16, ptr %1663, align 2, !tbaa !35
  %1665 = getelementptr inbounds i16, ptr %1654, i64 %149
  %1666 = load i16, ptr %1665, align 2, !tbaa !35
  %1667 = getelementptr inbounds i16, ptr %1654, i64 %150
  %1668 = load i16, ptr %1667, align 2, !tbaa !35
  %1669 = getelementptr inbounds i16, ptr %1654, i64 %151
  %1670 = load i16, ptr %1669, align 2, !tbaa !35
  %1671 = getelementptr ptr, ptr %1538, i64 %141
  %1672 = getelementptr i8, ptr %1671, i64 56
  %1673 = load ptr, ptr %1672, align 8, !tbaa !10
  %1674 = getelementptr inbounds i16, ptr %1673, i64 %132
  %1675 = load i16, ptr %1674, align 2, !tbaa !35
  %1676 = getelementptr inbounds i16, ptr %1673, i64 %145
  %1677 = load i16, ptr %1676, align 2, !tbaa !35
  %1678 = getelementptr inbounds i16, ptr %1673, i64 %146
  %1679 = load i16, ptr %1678, align 2, !tbaa !35
  %1680 = getelementptr inbounds i16, ptr %1673, i64 %147
  %1681 = load i16, ptr %1680, align 2, !tbaa !35
  %1682 = getelementptr inbounds i16, ptr %1673, i64 %148
  %1683 = load i16, ptr %1682, align 2, !tbaa !35
  %1684 = getelementptr inbounds i16, ptr %1673, i64 %149
  %1685 = load i16, ptr %1684, align 2, !tbaa !35
  %1686 = getelementptr inbounds i16, ptr %1673, i64 %150
  %1687 = load i16, ptr %1686, align 2, !tbaa !35
  %1688 = getelementptr inbounds i16, ptr %1673, i64 %151
  %1689 = load i16, ptr %1688, align 2, !tbaa !35
  %1690 = load i32, ptr %5, align 4, !tbaa !6
  br label %2026

1691:                                             ; preds = %1530, %2023
  %1692 = phi i64 [ 0, %1530 ], [ %2024, %2023 ]
  %1693 = trunc nuw nsw i64 %1692 to i32
  %1694 = and i32 %1693, 1
  %1695 = lshr i32 %1693, 1
  %1696 = getelementptr inbounds ptr, ptr %1532, i64 %1692
  %1697 = load ptr, ptr %1696, align 8, !tbaa !10
  %1698 = load ptr, ptr %1697, align 8, !tbaa !10
  %1699 = load i32, ptr %1698, align 4, !tbaa !6
  %1700 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 0
  store i32 %1699, ptr %1700, align 4, !tbaa !6
  %1701 = getelementptr inbounds i8, ptr %1698, i64 4
  %1702 = load i32, ptr %1701, align 4, !tbaa !6
  %1703 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 1
  store i32 %1702, ptr %1703, align 4, !tbaa !6
  %1704 = getelementptr inbounds i8, ptr %1698, i64 8
  %1705 = load i32, ptr %1704, align 4, !tbaa !6
  %1706 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 2
  store i32 %1705, ptr %1706, align 4, !tbaa !6
  %1707 = getelementptr inbounds i8, ptr %1698, i64 12
  %1708 = load i32, ptr %1707, align 4, !tbaa !6
  %1709 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 3
  store i32 %1708, ptr %1709, align 4, !tbaa !6
  %1710 = getelementptr inbounds i8, ptr %1698, i64 16
  %1711 = load i32, ptr %1710, align 4, !tbaa !6
  %1712 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 4
  store i32 %1711, ptr %1712, align 4, !tbaa !6
  %1713 = getelementptr inbounds i8, ptr %1698, i64 20
  %1714 = load i32, ptr %1713, align 4, !tbaa !6
  %1715 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 5
  store i32 %1714, ptr %1715, align 4, !tbaa !6
  %1716 = getelementptr inbounds i8, ptr %1698, i64 24
  %1717 = load i32, ptr %1716, align 4, !tbaa !6
  %1718 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 6
  store i32 %1717, ptr %1718, align 4, !tbaa !6
  %1719 = getelementptr inbounds i8, ptr %1698, i64 28
  %1720 = load i32, ptr %1719, align 4, !tbaa !6
  %1721 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 7
  store i32 %1720, ptr %1721, align 4, !tbaa !6
  %1722 = getelementptr inbounds i8, ptr %1698, i64 32
  %1723 = load i32, ptr %1722, align 4, !tbaa !6
  %1724 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 8
  store i32 %1723, ptr %1724, align 4, !tbaa !6
  %1725 = getelementptr inbounds i8, ptr %1698, i64 36
  %1726 = load i32, ptr %1725, align 4, !tbaa !6
  %1727 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 9
  store i32 %1726, ptr %1727, align 4, !tbaa !6
  %1728 = getelementptr inbounds i8, ptr %1698, i64 40
  %1729 = load i32, ptr %1728, align 4, !tbaa !6
  %1730 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 10
  store i32 %1729, ptr %1730, align 4, !tbaa !6
  %1731 = getelementptr inbounds i8, ptr %1698, i64 44
  %1732 = load i32, ptr %1731, align 4, !tbaa !6
  %1733 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 11
  store i32 %1732, ptr %1733, align 4, !tbaa !6
  %1734 = getelementptr inbounds i8, ptr %1698, i64 48
  %1735 = load i32, ptr %1734, align 4, !tbaa !6
  %1736 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 12
  store i32 %1735, ptr %1736, align 4, !tbaa !6
  %1737 = getelementptr inbounds i8, ptr %1698, i64 52
  %1738 = load i32, ptr %1737, align 4, !tbaa !6
  %1739 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 13
  store i32 %1738, ptr %1739, align 4, !tbaa !6
  %1740 = getelementptr inbounds i8, ptr %1698, i64 56
  %1741 = load i32, ptr %1740, align 4, !tbaa !6
  %1742 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 14
  store i32 %1741, ptr %1742, align 4, !tbaa !6
  %1743 = getelementptr inbounds i8, ptr %1698, i64 60
  %1744 = load i32, ptr %1743, align 4, !tbaa !6
  %1745 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 15
  store i32 %1744, ptr %1745, align 4, !tbaa !6
  %1746 = getelementptr inbounds i8, ptr %1698, i64 64
  %1747 = load i32, ptr %1746, align 4, !tbaa !6
  %1748 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 16
  store i32 %1747, ptr %1748, align 4, !tbaa !6
  %1749 = getelementptr inbounds i8, ptr %1698, i64 68
  %1750 = load i32, ptr %1749, align 4, !tbaa !6
  %1751 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 0, i64 17
  store i32 %1750, ptr %1751, align 4, !tbaa !6
  %1752 = getelementptr inbounds i8, ptr %1697, i64 8
  %1753 = load ptr, ptr %1752, align 8, !tbaa !10
  %1754 = load i32, ptr %1753, align 4, !tbaa !6
  %1755 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 0
  store i32 %1754, ptr %1755, align 4, !tbaa !6
  %1756 = getelementptr inbounds i8, ptr %1753, i64 4
  %1757 = load i32, ptr %1756, align 4, !tbaa !6
  %1758 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 1
  store i32 %1757, ptr %1758, align 4, !tbaa !6
  %1759 = getelementptr inbounds i8, ptr %1753, i64 8
  %1760 = load i32, ptr %1759, align 4, !tbaa !6
  %1761 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 2
  store i32 %1760, ptr %1761, align 4, !tbaa !6
  %1762 = getelementptr inbounds i8, ptr %1753, i64 12
  %1763 = load i32, ptr %1762, align 4, !tbaa !6
  %1764 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 3
  store i32 %1763, ptr %1764, align 4, !tbaa !6
  %1765 = getelementptr inbounds i8, ptr %1753, i64 16
  %1766 = load i32, ptr %1765, align 4, !tbaa !6
  %1767 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 4
  store i32 %1766, ptr %1767, align 4, !tbaa !6
  %1768 = getelementptr inbounds i8, ptr %1753, i64 20
  %1769 = load i32, ptr %1768, align 4, !tbaa !6
  %1770 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 5
  store i32 %1769, ptr %1770, align 4, !tbaa !6
  %1771 = getelementptr inbounds i8, ptr %1753, i64 24
  %1772 = load i32, ptr %1771, align 4, !tbaa !6
  %1773 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 6
  store i32 %1772, ptr %1773, align 4, !tbaa !6
  %1774 = getelementptr inbounds i8, ptr %1753, i64 28
  %1775 = load i32, ptr %1774, align 4, !tbaa !6
  %1776 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 7
  store i32 %1775, ptr %1776, align 4, !tbaa !6
  %1777 = getelementptr inbounds i8, ptr %1753, i64 32
  %1778 = load i32, ptr %1777, align 4, !tbaa !6
  %1779 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 8
  store i32 %1778, ptr %1779, align 4, !tbaa !6
  %1780 = getelementptr inbounds i8, ptr %1753, i64 36
  %1781 = load i32, ptr %1780, align 4, !tbaa !6
  %1782 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 9
  store i32 %1781, ptr %1782, align 4, !tbaa !6
  %1783 = getelementptr inbounds i8, ptr %1753, i64 40
  %1784 = load i32, ptr %1783, align 4, !tbaa !6
  %1785 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 10
  store i32 %1784, ptr %1785, align 4, !tbaa !6
  %1786 = getelementptr inbounds i8, ptr %1753, i64 44
  %1787 = load i32, ptr %1786, align 4, !tbaa !6
  %1788 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 11
  store i32 %1787, ptr %1788, align 4, !tbaa !6
  %1789 = getelementptr inbounds i8, ptr %1753, i64 48
  %1790 = load i32, ptr %1789, align 4, !tbaa !6
  %1791 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 12
  store i32 %1790, ptr %1791, align 4, !tbaa !6
  %1792 = getelementptr inbounds i8, ptr %1753, i64 52
  %1793 = load i32, ptr %1792, align 4, !tbaa !6
  %1794 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 13
  store i32 %1793, ptr %1794, align 4, !tbaa !6
  %1795 = getelementptr inbounds i8, ptr %1753, i64 56
  %1796 = load i32, ptr %1795, align 4, !tbaa !6
  %1797 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 14
  store i32 %1796, ptr %1797, align 4, !tbaa !6
  %1798 = getelementptr inbounds i8, ptr %1753, i64 60
  %1799 = load i32, ptr %1798, align 4, !tbaa !6
  %1800 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 15
  store i32 %1799, ptr %1800, align 4, !tbaa !6
  %1801 = getelementptr inbounds i8, ptr %1753, i64 64
  %1802 = load i32, ptr %1801, align 4, !tbaa !6
  %1803 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 16
  store i32 %1802, ptr %1803, align 4, !tbaa !6
  %1804 = getelementptr inbounds i8, ptr %1753, i64 68
  %1805 = load i32, ptr %1804, align 4, !tbaa !6
  %1806 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %1692, i64 1, i64 17
  store i32 %1805, ptr %1806, align 4, !tbaa !6
  %1807 = shl nuw nsw i32 %1694, 2
  %1808 = getelementptr inbounds ptr, ptr %1534, i64 %1692
  %1809 = load ptr, ptr %1808, align 8, !tbaa !10
  %1810 = load ptr, ptr %1809, align 8, !tbaa !10
  %1811 = load i32, ptr %1810, align 4, !tbaa !6
  %1812 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 0
  store i32 %1811, ptr %1812, align 4, !tbaa !6
  %1813 = getelementptr inbounds i8, ptr %1810, i64 4
  %1814 = load i32, ptr %1813, align 4, !tbaa !6
  %1815 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 1
  store i32 %1814, ptr %1815, align 4, !tbaa !6
  %1816 = getelementptr inbounds i8, ptr %1810, i64 8
  %1817 = load i32, ptr %1816, align 4, !tbaa !6
  %1818 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 2
  store i32 %1817, ptr %1818, align 4, !tbaa !6
  %1819 = getelementptr inbounds i8, ptr %1810, i64 12
  %1820 = load i32, ptr %1819, align 4, !tbaa !6
  %1821 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 3
  store i32 %1820, ptr %1821, align 4, !tbaa !6
  %1822 = getelementptr inbounds i8, ptr %1810, i64 16
  %1823 = load i32, ptr %1822, align 4, !tbaa !6
  %1824 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 4
  store i32 %1823, ptr %1824, align 4, !tbaa !6
  %1825 = getelementptr inbounds i8, ptr %1810, i64 20
  %1826 = load i32, ptr %1825, align 4, !tbaa !6
  %1827 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 5
  store i32 %1826, ptr %1827, align 4, !tbaa !6
  %1828 = getelementptr inbounds i8, ptr %1810, i64 24
  %1829 = load i32, ptr %1828, align 4, !tbaa !6
  %1830 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 6
  store i32 %1829, ptr %1830, align 4, !tbaa !6
  %1831 = getelementptr inbounds i8, ptr %1810, i64 28
  %1832 = load i32, ptr %1831, align 4, !tbaa !6
  %1833 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 7
  store i32 %1832, ptr %1833, align 4, !tbaa !6
  %1834 = getelementptr inbounds i8, ptr %1810, i64 32
  %1835 = load i32, ptr %1834, align 4, !tbaa !6
  %1836 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 8
  store i32 %1835, ptr %1836, align 4, !tbaa !6
  %1837 = getelementptr inbounds i8, ptr %1810, i64 36
  %1838 = load i32, ptr %1837, align 4, !tbaa !6
  %1839 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 9
  store i32 %1838, ptr %1839, align 4, !tbaa !6
  %1840 = getelementptr inbounds i8, ptr %1810, i64 40
  %1841 = load i32, ptr %1840, align 4, !tbaa !6
  %1842 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 10
  store i32 %1841, ptr %1842, align 4, !tbaa !6
  %1843 = getelementptr inbounds i8, ptr %1810, i64 44
  %1844 = load i32, ptr %1843, align 4, !tbaa !6
  %1845 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 11
  store i32 %1844, ptr %1845, align 4, !tbaa !6
  %1846 = getelementptr inbounds i8, ptr %1810, i64 48
  %1847 = load i32, ptr %1846, align 4, !tbaa !6
  %1848 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 12
  store i32 %1847, ptr %1848, align 4, !tbaa !6
  %1849 = getelementptr inbounds i8, ptr %1810, i64 52
  %1850 = load i32, ptr %1849, align 4, !tbaa !6
  %1851 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 13
  store i32 %1850, ptr %1851, align 4, !tbaa !6
  %1852 = getelementptr inbounds i8, ptr %1810, i64 56
  %1853 = load i32, ptr %1852, align 4, !tbaa !6
  %1854 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 14
  store i32 %1853, ptr %1854, align 4, !tbaa !6
  %1855 = getelementptr inbounds i8, ptr %1810, i64 60
  %1856 = load i32, ptr %1855, align 4, !tbaa !6
  %1857 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 15
  store i32 %1856, ptr %1857, align 4, !tbaa !6
  %1858 = getelementptr inbounds i8, ptr %1810, i64 64
  %1859 = load i32, ptr %1858, align 4, !tbaa !6
  %1860 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 16
  store i32 %1859, ptr %1860, align 4, !tbaa !6
  %1861 = getelementptr inbounds i8, ptr %1810, i64 68
  %1862 = load i32, ptr %1861, align 4, !tbaa !6
  %1863 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 0, i64 17
  store i32 %1862, ptr %1863, align 4, !tbaa !6
  %1864 = getelementptr inbounds i8, ptr %1809, i64 8
  %1865 = load ptr, ptr %1864, align 8, !tbaa !10
  %1866 = load i32, ptr %1865, align 4, !tbaa !6
  %1867 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 0
  store i32 %1866, ptr %1867, align 4, !tbaa !6
  %1868 = getelementptr inbounds i8, ptr %1865, i64 4
  %1869 = load i32, ptr %1868, align 4, !tbaa !6
  %1870 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 1
  store i32 %1869, ptr %1870, align 4, !tbaa !6
  %1871 = getelementptr inbounds i8, ptr %1865, i64 8
  %1872 = load i32, ptr %1871, align 4, !tbaa !6
  %1873 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 2
  store i32 %1872, ptr %1873, align 4, !tbaa !6
  %1874 = getelementptr inbounds i8, ptr %1865, i64 12
  %1875 = load i32, ptr %1874, align 4, !tbaa !6
  %1876 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 3
  store i32 %1875, ptr %1876, align 4, !tbaa !6
  %1877 = getelementptr inbounds i8, ptr %1865, i64 16
  %1878 = load i32, ptr %1877, align 4, !tbaa !6
  %1879 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 4
  store i32 %1878, ptr %1879, align 4, !tbaa !6
  %1880 = getelementptr inbounds i8, ptr %1865, i64 20
  %1881 = load i32, ptr %1880, align 4, !tbaa !6
  %1882 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 5
  store i32 %1881, ptr %1882, align 4, !tbaa !6
  %1883 = getelementptr inbounds i8, ptr %1865, i64 24
  %1884 = load i32, ptr %1883, align 4, !tbaa !6
  %1885 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 6
  store i32 %1884, ptr %1885, align 4, !tbaa !6
  %1886 = getelementptr inbounds i8, ptr %1865, i64 28
  %1887 = load i32, ptr %1886, align 4, !tbaa !6
  %1888 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 7
  store i32 %1887, ptr %1888, align 4, !tbaa !6
  %1889 = getelementptr inbounds i8, ptr %1865, i64 32
  %1890 = load i32, ptr %1889, align 4, !tbaa !6
  %1891 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 8
  store i32 %1890, ptr %1891, align 4, !tbaa !6
  %1892 = getelementptr inbounds i8, ptr %1865, i64 36
  %1893 = load i32, ptr %1892, align 4, !tbaa !6
  %1894 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 9
  store i32 %1893, ptr %1894, align 4, !tbaa !6
  %1895 = getelementptr inbounds i8, ptr %1865, i64 40
  %1896 = load i32, ptr %1895, align 4, !tbaa !6
  %1897 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 10
  store i32 %1896, ptr %1897, align 4, !tbaa !6
  %1898 = getelementptr inbounds i8, ptr %1865, i64 44
  %1899 = load i32, ptr %1898, align 4, !tbaa !6
  %1900 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 11
  store i32 %1899, ptr %1900, align 4, !tbaa !6
  %1901 = getelementptr inbounds i8, ptr %1865, i64 48
  %1902 = load i32, ptr %1901, align 4, !tbaa !6
  %1903 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 12
  store i32 %1902, ptr %1903, align 4, !tbaa !6
  %1904 = getelementptr inbounds i8, ptr %1865, i64 52
  %1905 = load i32, ptr %1904, align 4, !tbaa !6
  %1906 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 13
  store i32 %1905, ptr %1906, align 4, !tbaa !6
  %1907 = getelementptr inbounds i8, ptr %1865, i64 56
  %1908 = load i32, ptr %1907, align 4, !tbaa !6
  %1909 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 14
  store i32 %1908, ptr %1909, align 4, !tbaa !6
  %1910 = getelementptr inbounds i8, ptr %1865, i64 60
  %1911 = load i32, ptr %1910, align 4, !tbaa !6
  %1912 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 15
  store i32 %1911, ptr %1912, align 4, !tbaa !6
  %1913 = getelementptr inbounds i8, ptr %1865, i64 64
  %1914 = load i32, ptr %1913, align 4, !tbaa !6
  %1915 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 16
  store i32 %1914, ptr %1915, align 4, !tbaa !6
  %1916 = getelementptr inbounds i8, ptr %1865, i64 68
  %1917 = load i32, ptr %1916, align 4, !tbaa !6
  %1918 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %1692, i64 1, i64 17
  store i32 %1917, ptr %1918, align 4, !tbaa !6
  %1919 = shl nuw nsw i32 %1695, 2
  %1920 = or disjoint i32 %1694, %42
  %1921 = zext nneg i32 %1920 to i64
  %1922 = or disjoint i32 %1695, %43
  %1923 = sext i32 %1922 to i64
  %1924 = add i32 %1919, %24
  %1925 = add i32 %1807, %21
  %1926 = sext i32 %1925 to i64
  %1927 = sext i32 %1924 to i64
  %1928 = add i32 %1925, 1
  %1929 = sext i32 %1928 to i64
  %1930 = add i32 %1925, 2
  %1931 = sext i32 %1930 to i64
  %1932 = add i32 %1925, 3
  %1933 = sext i32 %1932 to i64
  %1934 = add i32 %1924, 1
  %1935 = sext i32 %1934 to i64
  %1936 = add i32 %1924, 2
  %1937 = sext i32 %1936 to i64
  %1938 = add i32 %1924, 3
  %1939 = sext i32 %1938 to i64
  br label %1940

1940:                                             ; preds = %1691, %1940
  %1941 = phi i1 [ true, %1691 ], [ false, %1940 ]
  %1942 = phi i64 [ 0, %1691 ], [ 1, %1940 ]
  %1943 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level_temp, i64 0, i64 %1942, i64 %1921, i64 %1923
  %1944 = load i32, ptr %1943, align 4, !tbaa !6
  %1945 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @dc_level, i64 0, i64 %1942, i64 %1921, i64 %1923
  store i32 %1944, ptr %1945, align 4, !tbaa !6
  %1946 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block_temp, i64 0, i64 %1942, i64 %1921, i64 %1923
  %1947 = load i32, ptr %1946, align 4, !tbaa !6
  %1948 = getelementptr inbounds [2 x [4 x [4 x i32]]], ptr @cbp_chroma_block, i64 0, i64 %1942, i64 %1921, i64 %1923
  store i32 %1947, ptr %1948, align 4, !tbaa !6
  %1949 = getelementptr inbounds ptr, ptr %1316, i64 %1942
  %1950 = load ptr, ptr %1949, align 8, !tbaa !10
  %1951 = getelementptr inbounds ptr, ptr %1950, i64 %1927
  %1952 = load ptr, ptr %1951, align 8, !tbaa !10
  %1953 = getelementptr inbounds i16, ptr %1952, i64 %1926
  %1954 = load i16, ptr %1953, align 2, !tbaa !35
  %1955 = zext i16 %1954 to i32
  %1956 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 0, i64 0
  store i32 %1955, ptr %1956, align 4, !tbaa !6
  %1957 = getelementptr inbounds i16, ptr %1952, i64 %1929
  %1958 = load i16, ptr %1957, align 2, !tbaa !35
  %1959 = zext i16 %1958 to i32
  %1960 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 0, i64 1
  store i32 %1959, ptr %1960, align 4, !tbaa !6
  %1961 = getelementptr inbounds i16, ptr %1952, i64 %1931
  %1962 = load i16, ptr %1961, align 2, !tbaa !35
  %1963 = zext i16 %1962 to i32
  %1964 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 0, i64 2
  store i32 %1963, ptr %1964, align 4, !tbaa !6
  %1965 = getelementptr inbounds i16, ptr %1952, i64 %1933
  %1966 = load i16, ptr %1965, align 2, !tbaa !35
  %1967 = zext i16 %1966 to i32
  %1968 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 0, i64 3
  store i32 %1967, ptr %1968, align 4, !tbaa !6
  %1969 = getelementptr inbounds ptr, ptr %1950, i64 %1935
  %1970 = load ptr, ptr %1969, align 8, !tbaa !10
  %1971 = getelementptr inbounds i16, ptr %1970, i64 %1926
  %1972 = load i16, ptr %1971, align 2, !tbaa !35
  %1973 = zext i16 %1972 to i32
  %1974 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 1, i64 0
  store i32 %1973, ptr %1974, align 4, !tbaa !6
  %1975 = getelementptr inbounds i16, ptr %1970, i64 %1929
  %1976 = load i16, ptr %1975, align 2, !tbaa !35
  %1977 = zext i16 %1976 to i32
  %1978 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 1, i64 1
  store i32 %1977, ptr %1978, align 4, !tbaa !6
  %1979 = getelementptr inbounds i16, ptr %1970, i64 %1931
  %1980 = load i16, ptr %1979, align 2, !tbaa !35
  %1981 = zext i16 %1980 to i32
  %1982 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 1, i64 2
  store i32 %1981, ptr %1982, align 4, !tbaa !6
  %1983 = getelementptr inbounds i16, ptr %1970, i64 %1933
  %1984 = load i16, ptr %1983, align 2, !tbaa !35
  %1985 = zext i16 %1984 to i32
  %1986 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 1, i64 3
  store i32 %1985, ptr %1986, align 4, !tbaa !6
  %1987 = getelementptr inbounds ptr, ptr %1950, i64 %1937
  %1988 = load ptr, ptr %1987, align 8, !tbaa !10
  %1989 = getelementptr inbounds i16, ptr %1988, i64 %1926
  %1990 = load i16, ptr %1989, align 2, !tbaa !35
  %1991 = zext i16 %1990 to i32
  %1992 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 2, i64 0
  store i32 %1991, ptr %1992, align 4, !tbaa !6
  %1993 = getelementptr inbounds i16, ptr %1988, i64 %1929
  %1994 = load i16, ptr %1993, align 2, !tbaa !35
  %1995 = zext i16 %1994 to i32
  %1996 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 2, i64 1
  store i32 %1995, ptr %1996, align 4, !tbaa !6
  %1997 = getelementptr inbounds i16, ptr %1988, i64 %1931
  %1998 = load i16, ptr %1997, align 2, !tbaa !35
  %1999 = zext i16 %1998 to i32
  %2000 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 2, i64 2
  store i32 %1999, ptr %2000, align 4, !tbaa !6
  %2001 = getelementptr inbounds i16, ptr %1988, i64 %1933
  %2002 = load i16, ptr %2001, align 2, !tbaa !35
  %2003 = zext i16 %2002 to i32
  %2004 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 2, i64 3
  store i32 %2003, ptr %2004, align 4, !tbaa !6
  %2005 = getelementptr inbounds ptr, ptr %1950, i64 %1939
  %2006 = load ptr, ptr %2005, align 8, !tbaa !10
  %2007 = getelementptr inbounds i16, ptr %2006, i64 %1926
  %2008 = load i16, ptr %2007, align 2, !tbaa !35
  %2009 = zext i16 %2008 to i32
  %2010 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 3, i64 0
  store i32 %2009, ptr %2010, align 4, !tbaa !6
  %2011 = getelementptr inbounds i16, ptr %2006, i64 %1929
  %2012 = load i16, ptr %2011, align 2, !tbaa !35
  %2013 = zext i16 %2012 to i32
  %2014 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 3, i64 1
  store i32 %2013, ptr %2014, align 4, !tbaa !6
  %2015 = getelementptr inbounds i16, ptr %2006, i64 %1931
  %2016 = load i16, ptr %2015, align 2, !tbaa !35
  %2017 = zext i16 %2016 to i32
  %2018 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 3, i64 2
  store i32 %2017, ptr %2018, align 4, !tbaa !6
  %2019 = getelementptr inbounds i16, ptr %2006, i64 %1933
  %2020 = load i16, ptr %2019, align 2, !tbaa !35
  %2021 = zext i16 %2020 to i32
  %2022 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 %1942, i64 %1692, i64 3, i64 3
  store i32 %2021, ptr %2022, align 4, !tbaa !6
  br i1 %1941, label %1940, label %2023

2023:                                             ; preds = %1940
  %2024 = add nuw nsw i64 %1692, 1
  %2025 = icmp eq i64 %2024, 4
  br i1 %2025, label %1535, label %1691

2026:                                             ; preds = %233, %731, %1535, %1446, %334, %343
  %2027 = phi i16 [ %157, %343 ], [ %157, %334 ], [ %732, %731 ], [ %1689, %1535 ], [ %157, %1446 ], [ %157, %233 ]
  %2028 = phi i16 [ %158, %343 ], [ %158, %334 ], [ %733, %731 ], [ %1687, %1535 ], [ %158, %1446 ], [ %158, %233 ]
  %2029 = phi i16 [ %159, %343 ], [ %159, %334 ], [ %734, %731 ], [ %1685, %1535 ], [ %159, %1446 ], [ %159, %233 ]
  %2030 = phi i16 [ %160, %343 ], [ %160, %334 ], [ %735, %731 ], [ %1683, %1535 ], [ %160, %1446 ], [ %160, %233 ]
  %2031 = phi i16 [ %161, %343 ], [ %161, %334 ], [ %736, %731 ], [ %1681, %1535 ], [ %161, %1446 ], [ %161, %233 ]
  %2032 = phi i16 [ %162, %343 ], [ %162, %334 ], [ %737, %731 ], [ %1679, %1535 ], [ %162, %1446 ], [ %162, %233 ]
  %2033 = phi i16 [ %163, %343 ], [ %163, %334 ], [ %738, %731 ], [ %1677, %1535 ], [ %163, %1446 ], [ %163, %233 ]
  %2034 = phi i16 [ %164, %343 ], [ %164, %334 ], [ %739, %731 ], [ %1675, %1535 ], [ %164, %1446 ], [ %164, %233 ]
  %2035 = phi i16 [ %165, %343 ], [ %165, %334 ], [ %740, %731 ], [ %1670, %1535 ], [ %165, %1446 ], [ %165, %233 ]
  %2036 = phi i16 [ %166, %343 ], [ %166, %334 ], [ %741, %731 ], [ %1668, %1535 ], [ %166, %1446 ], [ %166, %233 ]
  %2037 = phi i16 [ %167, %343 ], [ %167, %334 ], [ %742, %731 ], [ %1666, %1535 ], [ %167, %1446 ], [ %167, %233 ]
  %2038 = phi i16 [ %168, %343 ], [ %168, %334 ], [ %743, %731 ], [ %1664, %1535 ], [ %168, %1446 ], [ %168, %233 ]
  %2039 = phi i16 [ %169, %343 ], [ %169, %334 ], [ %744, %731 ], [ %1662, %1535 ], [ %169, %1446 ], [ %169, %233 ]
  %2040 = phi i16 [ %170, %343 ], [ %170, %334 ], [ %745, %731 ], [ %1660, %1535 ], [ %170, %1446 ], [ %170, %233 ]
  %2041 = phi i16 [ %171, %343 ], [ %171, %334 ], [ %746, %731 ], [ %1658, %1535 ], [ %171, %1446 ], [ %171, %233 ]
  %2042 = phi i16 [ %172, %343 ], [ %172, %334 ], [ %747, %731 ], [ %1656, %1535 ], [ %172, %1446 ], [ %172, %233 ]
  %2043 = phi i16 [ %173, %343 ], [ %173, %334 ], [ %748, %731 ], [ %1651, %1535 ], [ %173, %1446 ], [ %173, %233 ]
  %2044 = phi i16 [ %174, %343 ], [ %174, %334 ], [ %749, %731 ], [ %1649, %1535 ], [ %174, %1446 ], [ %174, %233 ]
  %2045 = phi i16 [ %175, %343 ], [ %175, %334 ], [ %750, %731 ], [ %1647, %1535 ], [ %175, %1446 ], [ %175, %233 ]
  %2046 = phi i16 [ %176, %343 ], [ %176, %334 ], [ %751, %731 ], [ %1645, %1535 ], [ %176, %1446 ], [ %176, %233 ]
  %2047 = phi i16 [ %177, %343 ], [ %177, %334 ], [ %752, %731 ], [ %1643, %1535 ], [ %177, %1446 ], [ %177, %233 ]
  %2048 = phi i16 [ %178, %343 ], [ %178, %334 ], [ %753, %731 ], [ %1641, %1535 ], [ %178, %1446 ], [ %178, %233 ]
  %2049 = phi i16 [ %179, %343 ], [ %179, %334 ], [ %754, %731 ], [ %1639, %1535 ], [ %179, %1446 ], [ %179, %233 ]
  %2050 = phi i16 [ %180, %343 ], [ %180, %334 ], [ %755, %731 ], [ %1637, %1535 ], [ %180, %1446 ], [ %180, %233 ]
  %2051 = phi i16 [ %181, %343 ], [ %181, %334 ], [ %756, %731 ], [ %1632, %1535 ], [ %181, %1446 ], [ %181, %233 ]
  %2052 = phi i16 [ %182, %343 ], [ %182, %334 ], [ %757, %731 ], [ %1630, %1535 ], [ %182, %1446 ], [ %182, %233 ]
  %2053 = phi i16 [ %183, %343 ], [ %183, %334 ], [ %758, %731 ], [ %1628, %1535 ], [ %183, %1446 ], [ %183, %233 ]
  %2054 = phi i16 [ %184, %343 ], [ %184, %334 ], [ %759, %731 ], [ %1626, %1535 ], [ %184, %1446 ], [ %184, %233 ]
  %2055 = phi i16 [ %185, %343 ], [ %185, %334 ], [ %760, %731 ], [ %1624, %1535 ], [ %185, %1446 ], [ %185, %233 ]
  %2056 = phi i16 [ %186, %343 ], [ %186, %334 ], [ %761, %731 ], [ %1622, %1535 ], [ %186, %1446 ], [ %186, %233 ]
  %2057 = phi i16 [ %187, %343 ], [ %187, %334 ], [ %762, %731 ], [ %1620, %1535 ], [ %187, %1446 ], [ %187, %233 ]
  %2058 = phi i16 [ %188, %343 ], [ %188, %334 ], [ %763, %731 ], [ %1618, %1535 ], [ %188, %1446 ], [ %188, %233 ]
  %2059 = phi i16 [ %189, %343 ], [ %189, %334 ], [ %764, %731 ], [ %1613, %1535 ], [ %189, %1446 ], [ %189, %233 ]
  %2060 = phi i16 [ %190, %343 ], [ %190, %334 ], [ %765, %731 ], [ %1611, %1535 ], [ %190, %1446 ], [ %190, %233 ]
  %2061 = phi i16 [ %191, %343 ], [ %191, %334 ], [ %766, %731 ], [ %1609, %1535 ], [ %191, %1446 ], [ %191, %233 ]
  %2062 = phi i16 [ %192, %343 ], [ %192, %334 ], [ %767, %731 ], [ %1607, %1535 ], [ %192, %1446 ], [ %192, %233 ]
  %2063 = phi i16 [ %193, %343 ], [ %193, %334 ], [ %768, %731 ], [ %1605, %1535 ], [ %193, %1446 ], [ %193, %233 ]
  %2064 = phi i16 [ %194, %343 ], [ %194, %334 ], [ %769, %731 ], [ %1603, %1535 ], [ %194, %1446 ], [ %194, %233 ]
  %2065 = phi i16 [ %195, %343 ], [ %195, %334 ], [ %770, %731 ], [ %1601, %1535 ], [ %195, %1446 ], [ %195, %233 ]
  %2066 = phi i16 [ %196, %343 ], [ %196, %334 ], [ %771, %731 ], [ %1599, %1535 ], [ %196, %1446 ], [ %196, %233 ]
  %2067 = phi i16 [ %197, %343 ], [ %197, %334 ], [ %772, %731 ], [ %1594, %1535 ], [ %197, %1446 ], [ %197, %233 ]
  %2068 = phi i16 [ %198, %343 ], [ %198, %334 ], [ %773, %731 ], [ %1592, %1535 ], [ %198, %1446 ], [ %198, %233 ]
  %2069 = phi i16 [ %199, %343 ], [ %199, %334 ], [ %774, %731 ], [ %1590, %1535 ], [ %199, %1446 ], [ %199, %233 ]
  %2070 = phi i16 [ %200, %343 ], [ %200, %334 ], [ %775, %731 ], [ %1588, %1535 ], [ %200, %1446 ], [ %200, %233 ]
  %2071 = phi i16 [ %201, %343 ], [ %201, %334 ], [ %776, %731 ], [ %1586, %1535 ], [ %201, %1446 ], [ %201, %233 ]
  %2072 = phi i16 [ %202, %343 ], [ %202, %334 ], [ %777, %731 ], [ %1584, %1535 ], [ %202, %1446 ], [ %202, %233 ]
  %2073 = phi i16 [ %203, %343 ], [ %203, %334 ], [ %778, %731 ], [ %1582, %1535 ], [ %203, %1446 ], [ %203, %233 ]
  %2074 = phi i16 [ %204, %343 ], [ %204, %334 ], [ %779, %731 ], [ %1580, %1535 ], [ %204, %1446 ], [ %204, %233 ]
  %2075 = phi i16 [ %205, %343 ], [ %205, %334 ], [ %780, %731 ], [ %1575, %1535 ], [ %205, %1446 ], [ %205, %233 ]
  %2076 = phi i16 [ %206, %343 ], [ %206, %334 ], [ %781, %731 ], [ %1573, %1535 ], [ %206, %1446 ], [ %206, %233 ]
  %2077 = phi i16 [ %207, %343 ], [ %207, %334 ], [ %782, %731 ], [ %1571, %1535 ], [ %207, %1446 ], [ %207, %233 ]
  %2078 = phi i16 [ %208, %343 ], [ %208, %334 ], [ %783, %731 ], [ %1569, %1535 ], [ %208, %1446 ], [ %208, %233 ]
  %2079 = phi i16 [ %209, %343 ], [ %209, %334 ], [ %784, %731 ], [ %1567, %1535 ], [ %209, %1446 ], [ %209, %233 ]
  %2080 = phi i16 [ %210, %343 ], [ %210, %334 ], [ %785, %731 ], [ %1565, %1535 ], [ %210, %1446 ], [ %210, %233 ]
  %2081 = phi i16 [ %211, %343 ], [ %211, %334 ], [ %786, %731 ], [ %1563, %1535 ], [ %211, %1446 ], [ %211, %233 ]
  %2082 = phi i16 [ %212, %343 ], [ %212, %334 ], [ %787, %731 ], [ %1561, %1535 ], [ %212, %1446 ], [ %212, %233 ]
  %2083 = phi i16 [ %213, %343 ], [ %213, %334 ], [ %788, %731 ], [ %1556, %1535 ], [ %213, %1446 ], [ %213, %233 ]
  %2084 = phi i16 [ %214, %343 ], [ %214, %334 ], [ %789, %731 ], [ %1554, %1535 ], [ %214, %1446 ], [ %214, %233 ]
  %2085 = phi i16 [ %215, %343 ], [ %215, %334 ], [ %790, %731 ], [ %1552, %1535 ], [ %215, %1446 ], [ %215, %233 ]
  %2086 = phi i16 [ %216, %343 ], [ %216, %334 ], [ %791, %731 ], [ %1550, %1535 ], [ %216, %1446 ], [ %216, %233 ]
  %2087 = phi i16 [ %217, %343 ], [ %217, %334 ], [ %792, %731 ], [ %1548, %1535 ], [ %217, %1446 ], [ %217, %233 ]
  %2088 = phi i16 [ %218, %343 ], [ %218, %334 ], [ %793, %731 ], [ %1546, %1535 ], [ %218, %1446 ], [ %218, %233 ]
  %2089 = phi i16 [ %219, %343 ], [ %219, %334 ], [ %794, %731 ], [ %1544, %1535 ], [ %219, %1446 ], [ %219, %233 ]
  %2090 = phi i16 [ %220, %343 ], [ %220, %334 ], [ %795, %731 ], [ %1542, %1535 ], [ %220, %1446 ], [ %220, %233 ]
  %2091 = phi i32 [ %224, %343 ], [ %224, %334 ], [ %796, %731 ], [ %1690, %1535 ], [ %224, %1446 ], [ %224, %233 ]
  %2092 = phi double [ %223, %343 ], [ %223, %334 ], [ %797, %731 ], [ %1449, %1535 ], [ %223, %1446 ], [ %223, %233 ]
  %2093 = phi i32 [ %240, %343 ], [ %222, %334 ], [ %798, %731 ], [ %240, %1535 ], [ %222, %1446 ], [ %222, %233 ]
  %2094 = add nuw nsw i64 %221, 1
  %2095 = icmp eq i64 %2094, 9
  br i1 %2095, label %2096, label %156

2096:                                             ; preds = %2026
  %2097 = trunc i32 %2093 to i8
  %2098 = load ptr, ptr @img, align 8, !tbaa !10
  %2099 = getelementptr inbounds i8, ptr %2098, i64 112
  %2100 = load ptr, ptr %2099, align 8, !tbaa !46
  %2101 = sext i32 %32 to i64
  %2102 = getelementptr inbounds ptr, ptr %2100, i64 %2101
  %2103 = load ptr, ptr %2102, align 8, !tbaa !10
  %2104 = sext i32 %31 to i64
  %2105 = getelementptr inbounds i8, ptr %2103, i64 %2104
  store i8 %2097, ptr %2105, align 1, !tbaa !33
  %2106 = icmp eq i32 %2093, %120
  %2107 = icmp sge i32 %2093, %120
  %2108 = sext i1 %2107 to i32
  %2109 = add nsw i32 %2093, %2108
  %2110 = trunc i32 %2109 to i8
  %2111 = select i1 %2106, i8 -1, i8 %2110
  %2112 = getelementptr inbounds i8, ptr %39, i64 348
  %2113 = sext i32 %16 to i64
  %2114 = getelementptr inbounds [16 x i8], ptr %2112, i64 0, i64 %2113
  store i8 %2111, ptr %2114, align 1, !tbaa !33
  %2115 = load ptr, ptr @img, align 8, !tbaa !10
  %2116 = getelementptr inbounds i8, ptr %2115, i64 140
  %2117 = load i32, ptr %2116, align 4, !tbaa !47
  %2118 = shl nsw i32 %2117, 2
  %2119 = add nsw i32 %2118, %43
  %2120 = add i32 %43, 2
  %2121 = add i32 %2120, %2118
  %2122 = icmp slt i32 %2119, %2121
  br i1 %2122, label %2123, label %2148

2123:                                             ; preds = %2096
  %2124 = sext i32 %2118 to i64
  %2125 = sext i32 %43 to i64
  %2126 = add nsw i64 %2124, %2125
  br label %2127

2127:                                             ; preds = %2123, %2127
  %2128 = phi i64 [ %2126, %2123 ], [ %2140, %2127 ]
  %2129 = phi ptr [ %2115, %2123 ], [ %2141, %2127 ]
  %2130 = getelementptr inbounds i8, ptr %2129, i64 112
  %2131 = load ptr, ptr %2130, align 8, !tbaa !46
  %2132 = getelementptr inbounds ptr, ptr %2131, i64 %2128
  %2133 = load ptr, ptr %2132, align 8, !tbaa !10
  %2134 = getelementptr inbounds i8, ptr %2129, i64 136
  %2135 = load i32, ptr %2134, align 8, !tbaa !48
  %2136 = shl nsw i32 %2135, 2
  %2137 = or disjoint i32 %2136, %42
  %2138 = sext i32 %2137 to i64
  %2139 = getelementptr inbounds i8, ptr %2133, i64 %2138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %2139, i8 %2097, i64 2, i1 false)
  %2140 = add nsw i64 %2128, 1
  %2141 = load ptr, ptr @img, align 8, !tbaa !10
  %2142 = getelementptr inbounds i8, ptr %2141, i64 140
  %2143 = load i32, ptr %2142, align 4, !tbaa !47
  %2144 = shl nsw i32 %2143, 2
  %2145 = add i32 %2120, %2144
  %2146 = sext i32 %2145 to i64
  %2147 = icmp slt i64 %2140, %2146
  br i1 %2147, label %2127, label %2148

2148:                                             ; preds = %2127, %2096
  %2149 = phi ptr [ %2115, %2096 ], [ %2141, %2127 ]
  %2150 = load ptr, ptr @input, align 8, !tbaa !10
  %2151 = getelementptr inbounds i8, ptr %2150, i64 3136
  %2152 = load i32, ptr %2151, align 8, !tbaa !34
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2274, label %2154

2154:                                             ; preds = %2148
  %2155 = getelementptr inbounds i8, ptr %2149, i64 14136
  %2156 = load ptr, ptr %2155, align 8, !tbaa !38
  %2157 = getelementptr inbounds ptr, ptr %2156, i64 %130
  %2158 = load ptr, ptr %2157, align 8, !tbaa !10
  %2159 = load ptr, ptr %2158, align 8, !tbaa !10
  %2160 = load ptr, ptr %2159, align 8, !tbaa !10
  %2161 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2162 = getelementptr inbounds ptr, ptr %2161, i64 %130
  %2163 = load ptr, ptr %2162, align 8, !tbaa !10
  %2164 = load ptr, ptr %2163, align 8, !tbaa !10
  %2165 = load ptr, ptr %2164, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2160, ptr noundef nonnull align 4 dereferenceable(260) %2165, i64 260, i1 false)
  %2166 = load ptr, ptr @img, align 8, !tbaa !10
  %2167 = getelementptr inbounds i8, ptr %2166, i64 14136
  %2168 = load ptr, ptr %2167, align 8, !tbaa !38
  %2169 = getelementptr inbounds ptr, ptr %2168, i64 %130
  %2170 = load ptr, ptr %2169, align 8, !tbaa !10
  %2171 = load ptr, ptr %2170, align 8, !tbaa !10
  %2172 = getelementptr inbounds i8, ptr %2171, i64 8
  %2173 = load ptr, ptr %2172, align 8, !tbaa !10
  %2174 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2175 = getelementptr inbounds ptr, ptr %2174, i64 %130
  %2176 = load ptr, ptr %2175, align 8, !tbaa !10
  %2177 = load ptr, ptr %2176, align 8, !tbaa !10
  %2178 = getelementptr inbounds i8, ptr %2177, i64 8
  %2179 = load ptr, ptr %2178, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2173, ptr noundef nonnull align 4 dereferenceable(260) %2179, i64 260, i1 false)
  %2180 = load ptr, ptr @img, align 8, !tbaa !10
  %2181 = getelementptr inbounds i8, ptr %2180, i64 14136
  %2182 = load ptr, ptr %2181, align 8, !tbaa !38
  %2183 = getelementptr inbounds ptr, ptr %2182, i64 %130
  %2184 = load ptr, ptr %2183, align 8, !tbaa !10
  %2185 = getelementptr inbounds i8, ptr %2184, i64 8
  %2186 = load ptr, ptr %2185, align 8, !tbaa !10
  %2187 = load ptr, ptr %2186, align 8, !tbaa !10
  %2188 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2189 = getelementptr inbounds ptr, ptr %2188, i64 %130
  %2190 = load ptr, ptr %2189, align 8, !tbaa !10
  %2191 = getelementptr inbounds i8, ptr %2190, i64 8
  %2192 = load ptr, ptr %2191, align 8, !tbaa !10
  %2193 = load ptr, ptr %2192, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2187, ptr noundef nonnull align 4 dereferenceable(260) %2193, i64 260, i1 false)
  %2194 = load ptr, ptr @img, align 8, !tbaa !10
  %2195 = getelementptr inbounds i8, ptr %2194, i64 14136
  %2196 = load ptr, ptr %2195, align 8, !tbaa !38
  %2197 = getelementptr inbounds ptr, ptr %2196, i64 %130
  %2198 = load ptr, ptr %2197, align 8, !tbaa !10
  %2199 = getelementptr inbounds i8, ptr %2198, i64 8
  %2200 = load ptr, ptr %2199, align 8, !tbaa !10
  %2201 = getelementptr inbounds i8, ptr %2200, i64 8
  %2202 = load ptr, ptr %2201, align 8, !tbaa !10
  %2203 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2204 = getelementptr inbounds ptr, ptr %2203, i64 %130
  %2205 = load ptr, ptr %2204, align 8, !tbaa !10
  %2206 = getelementptr inbounds i8, ptr %2205, i64 8
  %2207 = load ptr, ptr %2206, align 8, !tbaa !10
  %2208 = getelementptr inbounds i8, ptr %2207, i64 8
  %2209 = load ptr, ptr %2208, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2202, ptr noundef nonnull align 4 dereferenceable(260) %2209, i64 260, i1 false)
  %2210 = load ptr, ptr @img, align 8, !tbaa !10
  %2211 = getelementptr inbounds i8, ptr %2210, i64 14136
  %2212 = load ptr, ptr %2211, align 8, !tbaa !38
  %2213 = getelementptr inbounds ptr, ptr %2212, i64 %130
  %2214 = load ptr, ptr %2213, align 8, !tbaa !10
  %2215 = getelementptr inbounds i8, ptr %2214, i64 16
  %2216 = load ptr, ptr %2215, align 8, !tbaa !10
  %2217 = load ptr, ptr %2216, align 8, !tbaa !10
  %2218 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2219 = getelementptr inbounds ptr, ptr %2218, i64 %130
  %2220 = load ptr, ptr %2219, align 8, !tbaa !10
  %2221 = getelementptr inbounds i8, ptr %2220, i64 16
  %2222 = load ptr, ptr %2221, align 8, !tbaa !10
  %2223 = load ptr, ptr %2222, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2217, ptr noundef nonnull align 4 dereferenceable(260) %2223, i64 260, i1 false)
  %2224 = load ptr, ptr @img, align 8, !tbaa !10
  %2225 = getelementptr inbounds i8, ptr %2224, i64 14136
  %2226 = load ptr, ptr %2225, align 8, !tbaa !38
  %2227 = getelementptr inbounds ptr, ptr %2226, i64 %130
  %2228 = load ptr, ptr %2227, align 8, !tbaa !10
  %2229 = getelementptr inbounds i8, ptr %2228, i64 16
  %2230 = load ptr, ptr %2229, align 8, !tbaa !10
  %2231 = getelementptr inbounds i8, ptr %2230, i64 8
  %2232 = load ptr, ptr %2231, align 8, !tbaa !10
  %2233 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2234 = getelementptr inbounds ptr, ptr %2233, i64 %130
  %2235 = load ptr, ptr %2234, align 8, !tbaa !10
  %2236 = getelementptr inbounds i8, ptr %2235, i64 16
  %2237 = load ptr, ptr %2236, align 8, !tbaa !10
  %2238 = getelementptr inbounds i8, ptr %2237, i64 8
  %2239 = load ptr, ptr %2238, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2232, ptr noundef nonnull align 4 dereferenceable(260) %2239, i64 260, i1 false)
  %2240 = load ptr, ptr @img, align 8, !tbaa !10
  %2241 = getelementptr inbounds i8, ptr %2240, i64 14136
  %2242 = load ptr, ptr %2241, align 8, !tbaa !38
  %2243 = getelementptr inbounds ptr, ptr %2242, i64 %130
  %2244 = load ptr, ptr %2243, align 8, !tbaa !10
  %2245 = getelementptr inbounds i8, ptr %2244, i64 24
  %2246 = load ptr, ptr %2245, align 8, !tbaa !10
  %2247 = load ptr, ptr %2246, align 8, !tbaa !10
  %2248 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2249 = getelementptr inbounds ptr, ptr %2248, i64 %130
  %2250 = load ptr, ptr %2249, align 8, !tbaa !10
  %2251 = getelementptr inbounds i8, ptr %2250, i64 24
  %2252 = load ptr, ptr %2251, align 8, !tbaa !10
  %2253 = load ptr, ptr %2252, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2247, ptr noundef nonnull align 4 dereferenceable(260) %2253, i64 260, i1 false)
  %2254 = load ptr, ptr @img, align 8, !tbaa !10
  %2255 = getelementptr inbounds i8, ptr %2254, i64 14136
  %2256 = load ptr, ptr %2255, align 8, !tbaa !38
  %2257 = getelementptr inbounds ptr, ptr %2256, i64 %130
  %2258 = load ptr, ptr %2257, align 8, !tbaa !10
  %2259 = getelementptr inbounds i8, ptr %2258, i64 24
  %2260 = load ptr, ptr %2259, align 8, !tbaa !10
  %2261 = getelementptr inbounds i8, ptr %2260, i64 8
  %2262 = load ptr, ptr %2261, align 8, !tbaa !10
  %2263 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %2264 = getelementptr inbounds ptr, ptr %2263, i64 %130
  %2265 = load ptr, ptr %2264, align 8, !tbaa !10
  %2266 = getelementptr inbounds i8, ptr %2265, i64 24
  %2267 = load ptr, ptr %2266, align 8, !tbaa !10
  %2268 = getelementptr inbounds i8, ptr %2267, i64 8
  %2269 = load ptr, ptr %2268, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2262, ptr noundef nonnull align 4 dereferenceable(260) %2269, i64 260, i1 false)
  %2270 = load ptr, ptr @img, align 8, !tbaa !10
  %2271 = getelementptr inbounds i8, ptr %2270, i64 90212
  %2272 = load i32, ptr %2271, align 4, !tbaa !41
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %3010, label %2970

2274:                                             ; preds = %2148
  %2275 = getelementptr inbounds i8, ptr %2149, i64 90572
  %2276 = load i32, ptr %2275, align 4, !tbaa !37
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2289, label %2278

2278:                                             ; preds = %2274
  %2279 = getelementptr inbounds i8, ptr %2149, i64 7352
  %2280 = sext i32 %2093 to i64
  %2281 = getelementptr inbounds i8, ptr %2149, i64 12600
  %2282 = load ptr, ptr @imgUV_org, align 8, !tbaa !10
  %2283 = load ptr, ptr %2282, align 8, !tbaa !10
  %2284 = getelementptr inbounds i8, ptr %2149, i64 8504
  %2285 = load ptr, ptr @imgY_org, align 8, !tbaa !10
  %2286 = getelementptr inbounds i8, ptr %2282, i64 8
  %2287 = load ptr, ptr %2286, align 8, !tbaa !10
  %2288 = getelementptr inbounds i8, ptr %2149, i64 10552
  br label %2380

2289:                                             ; preds = %2274
  %2290 = sext i32 %2093 to i64
  %2291 = getelementptr ptr, ptr %33, i64 %140
  br label %2292

2292:                                             ; preds = %2289, %2292
  %2293 = phi ptr [ %2149, %2289 ], [ %2302, %2292 ]
  %2294 = phi i64 [ 0, %2289 ], [ %2376, %2292 ]
  %2295 = getelementptr inbounds i8, ptr %2293, i64 12600
  %2296 = or disjoint i64 %2294, %139
  %2297 = getelementptr inbounds [16 x [16 x i16]], ptr %2295, i64 0, i64 %2296, i64 %131
  %2298 = getelementptr inbounds i8, ptr %2293, i64 7352
  %2299 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2298, i64 0, i64 %2290, i64 %2294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %2297, ptr noundef nonnull align 8 dereferenceable(16) %2299, i64 16, i1 false)
  %2300 = getelementptr ptr, ptr %2291, i64 %2294
  %2301 = load ptr, ptr %2300, align 8, !tbaa !10
  %2302 = load ptr, ptr @img, align 8, !tbaa !10
  %2303 = getelementptr inbounds i8, ptr %2302, i64 7352
  %2304 = getelementptr inbounds i8, ptr %2302, i64 13112
  %2305 = getelementptr inbounds i16, ptr %2301, i64 %138
  %2306 = load i16, ptr %2305, align 2, !tbaa !35
  %2307 = zext i16 %2306 to i32
  %2308 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 0
  %2309 = load i16, ptr %2308, align 2, !tbaa !35
  %2310 = zext i16 %2309 to i32
  %2311 = sub nsw i32 %2307, %2310
  %2312 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 0
  store i32 %2311, ptr %2312, align 4, !tbaa !6
  %2313 = getelementptr i16, ptr %2301, i64 %138
  %2314 = getelementptr i8, ptr %2313, i64 2
  %2315 = load i16, ptr %2314, align 2, !tbaa !35
  %2316 = zext i16 %2315 to i32
  %2317 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 1
  %2318 = load i16, ptr %2317, align 2, !tbaa !35
  %2319 = zext i16 %2318 to i32
  %2320 = sub nsw i32 %2316, %2319
  %2321 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 1
  store i32 %2320, ptr %2321, align 4, !tbaa !6
  %2322 = getelementptr i16, ptr %2301, i64 %138
  %2323 = getelementptr i8, ptr %2322, i64 4
  %2324 = load i16, ptr %2323, align 2, !tbaa !35
  %2325 = zext i16 %2324 to i32
  %2326 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 2
  %2327 = load i16, ptr %2326, align 2, !tbaa !35
  %2328 = zext i16 %2327 to i32
  %2329 = sub nsw i32 %2325, %2328
  %2330 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 2
  store i32 %2329, ptr %2330, align 4, !tbaa !6
  %2331 = getelementptr i16, ptr %2301, i64 %138
  %2332 = getelementptr i8, ptr %2331, i64 6
  %2333 = load i16, ptr %2332, align 2, !tbaa !35
  %2334 = zext i16 %2333 to i32
  %2335 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 3
  %2336 = load i16, ptr %2335, align 2, !tbaa !35
  %2337 = zext i16 %2336 to i32
  %2338 = sub nsw i32 %2334, %2337
  %2339 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 3
  store i32 %2338, ptr %2339, align 4, !tbaa !6
  %2340 = getelementptr i16, ptr %2301, i64 %138
  %2341 = getelementptr i8, ptr %2340, i64 8
  %2342 = load i16, ptr %2341, align 2, !tbaa !35
  %2343 = zext i16 %2342 to i32
  %2344 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 4
  %2345 = load i16, ptr %2344, align 2, !tbaa !35
  %2346 = zext i16 %2345 to i32
  %2347 = sub nsw i32 %2343, %2346
  %2348 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 4
  store i32 %2347, ptr %2348, align 4, !tbaa !6
  %2349 = getelementptr i16, ptr %2301, i64 %138
  %2350 = getelementptr i8, ptr %2349, i64 10
  %2351 = load i16, ptr %2350, align 2, !tbaa !35
  %2352 = zext i16 %2351 to i32
  %2353 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 5
  %2354 = load i16, ptr %2353, align 2, !tbaa !35
  %2355 = zext i16 %2354 to i32
  %2356 = sub nsw i32 %2352, %2355
  %2357 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 5
  store i32 %2356, ptr %2357, align 4, !tbaa !6
  %2358 = getelementptr i16, ptr %2301, i64 %138
  %2359 = getelementptr i8, ptr %2358, i64 12
  %2360 = load i16, ptr %2359, align 2, !tbaa !35
  %2361 = zext i16 %2360 to i32
  %2362 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 6
  %2363 = load i16, ptr %2362, align 2, !tbaa !35
  %2364 = zext i16 %2363 to i32
  %2365 = sub nsw i32 %2361, %2364
  %2366 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 6
  store i32 %2365, ptr %2366, align 4, !tbaa !6
  %2367 = getelementptr i16, ptr %2301, i64 %138
  %2368 = getelementptr i8, ptr %2367, i64 14
  %2369 = load i16, ptr %2368, align 2, !tbaa !35
  %2370 = zext i16 %2369 to i32
  %2371 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2303, i64 0, i64 %2290, i64 %2294, i64 7
  %2372 = load i16, ptr %2371, align 2, !tbaa !35
  %2373 = zext i16 %2372 to i32
  %2374 = sub nsw i32 %2370, %2373
  %2375 = getelementptr inbounds [16 x [16 x i32]], ptr %2304, i64 0, i64 %2294, i64 7
  store i32 %2374, ptr %2375, align 4, !tbaa !6
  %2376 = add nuw nsw i64 %2294, 1
  %2377 = icmp eq i64 %2376, 8
  br i1 %2377, label %2378, label %2292

2378:                                             ; preds = %2292
  %2379 = call signext i32 @dct_luma8x8(i32 noundef signext %0, ptr noundef nonnull %4, i32 noundef signext 1)
  br label %3506

2380:                                             ; preds = %2278, %2687
  %2381 = phi i64 [ 0, %2278 ], [ %2688, %2687 ]
  %2382 = or disjoint i64 %2381, %139
  %2383 = add nsw i64 %2381, %140
  %2384 = getelementptr inbounds ptr, ptr %2283, i64 %2383
  %2385 = load ptr, ptr %2384, align 8, !tbaa !10
  %2386 = getelementptr inbounds ptr, ptr %2285, i64 %2383
  %2387 = load ptr, ptr %2386, align 8, !tbaa !10
  %2388 = getelementptr inbounds ptr, ptr %2287, i64 %2383
  %2389 = load ptr, ptr %2388, align 8, !tbaa !10
  br label %2650

2390:                                             ; preds = %2687
  %2391 = getelementptr inbounds i8, ptr %2149, i64 13112
  %2392 = load i32, ptr @resTrans_G, align 4, !tbaa !6
  store i32 %2392, ptr %2391, align 4, !tbaa !6
  %2393 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 4), align 4, !tbaa !6
  %2394 = getelementptr inbounds i8, ptr %2149, i64 13116
  store i32 %2393, ptr %2394, align 4, !tbaa !6
  %2395 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 8), align 4, !tbaa !6
  %2396 = getelementptr inbounds i8, ptr %2149, i64 13120
  store i32 %2395, ptr %2396, align 4, !tbaa !6
  %2397 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 12), align 4, !tbaa !6
  %2398 = getelementptr inbounds i8, ptr %2149, i64 13124
  store i32 %2397, ptr %2398, align 4, !tbaa !6
  %2399 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 16), align 4, !tbaa !6
  %2400 = getelementptr inbounds i8, ptr %2149, i64 13128
  store i32 %2399, ptr %2400, align 4, !tbaa !6
  %2401 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 20), align 4, !tbaa !6
  %2402 = getelementptr inbounds i8, ptr %2149, i64 13132
  store i32 %2401, ptr %2402, align 4, !tbaa !6
  %2403 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 24), align 4, !tbaa !6
  %2404 = getelementptr inbounds i8, ptr %2149, i64 13136
  store i32 %2403, ptr %2404, align 4, !tbaa !6
  %2405 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 28), align 4, !tbaa !6
  %2406 = getelementptr inbounds i8, ptr %2149, i64 13140
  store i32 %2405, ptr %2406, align 4, !tbaa !6
  %2407 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 64), align 4, !tbaa !6
  %2408 = getelementptr inbounds i8, ptr %2149, i64 13176
  store i32 %2407, ptr %2408, align 4, !tbaa !6
  %2409 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 68), align 4, !tbaa !6
  %2410 = getelementptr inbounds i8, ptr %2149, i64 13180
  store i32 %2409, ptr %2410, align 4, !tbaa !6
  %2411 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 72), align 4, !tbaa !6
  %2412 = getelementptr inbounds i8, ptr %2149, i64 13184
  store i32 %2411, ptr %2412, align 4, !tbaa !6
  %2413 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 76), align 4, !tbaa !6
  %2414 = getelementptr inbounds i8, ptr %2149, i64 13188
  store i32 %2413, ptr %2414, align 4, !tbaa !6
  %2415 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 80), align 4, !tbaa !6
  %2416 = getelementptr inbounds i8, ptr %2149, i64 13192
  store i32 %2415, ptr %2416, align 4, !tbaa !6
  %2417 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 84), align 4, !tbaa !6
  %2418 = getelementptr inbounds i8, ptr %2149, i64 13196
  store i32 %2417, ptr %2418, align 4, !tbaa !6
  %2419 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 88), align 4, !tbaa !6
  %2420 = getelementptr inbounds i8, ptr %2149, i64 13200
  store i32 %2419, ptr %2420, align 4, !tbaa !6
  %2421 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 92), align 4, !tbaa !6
  %2422 = getelementptr inbounds i8, ptr %2149, i64 13204
  store i32 %2421, ptr %2422, align 4, !tbaa !6
  %2423 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 128), align 4, !tbaa !6
  %2424 = getelementptr inbounds i8, ptr %2149, i64 13240
  store i32 %2423, ptr %2424, align 4, !tbaa !6
  %2425 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 132), align 4, !tbaa !6
  %2426 = getelementptr inbounds i8, ptr %2149, i64 13244
  store i32 %2425, ptr %2426, align 4, !tbaa !6
  %2427 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 136), align 4, !tbaa !6
  %2428 = getelementptr inbounds i8, ptr %2149, i64 13248
  store i32 %2427, ptr %2428, align 4, !tbaa !6
  %2429 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 140), align 4, !tbaa !6
  %2430 = getelementptr inbounds i8, ptr %2149, i64 13252
  store i32 %2429, ptr %2430, align 4, !tbaa !6
  %2431 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 144), align 4, !tbaa !6
  %2432 = getelementptr inbounds i8, ptr %2149, i64 13256
  store i32 %2431, ptr %2432, align 4, !tbaa !6
  %2433 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 148), align 4, !tbaa !6
  %2434 = getelementptr inbounds i8, ptr %2149, i64 13260
  store i32 %2433, ptr %2434, align 4, !tbaa !6
  %2435 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 152), align 4, !tbaa !6
  %2436 = getelementptr inbounds i8, ptr %2149, i64 13264
  store i32 %2435, ptr %2436, align 4, !tbaa !6
  %2437 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 156), align 4, !tbaa !6
  %2438 = getelementptr inbounds i8, ptr %2149, i64 13268
  store i32 %2437, ptr %2438, align 4, !tbaa !6
  %2439 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 192), align 4, !tbaa !6
  %2440 = getelementptr inbounds i8, ptr %2149, i64 13304
  store i32 %2439, ptr %2440, align 4, !tbaa !6
  %2441 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 196), align 4, !tbaa !6
  %2442 = getelementptr inbounds i8, ptr %2149, i64 13308
  store i32 %2441, ptr %2442, align 4, !tbaa !6
  %2443 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 200), align 4, !tbaa !6
  %2444 = getelementptr inbounds i8, ptr %2149, i64 13312
  store i32 %2443, ptr %2444, align 4, !tbaa !6
  %2445 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 204), align 4, !tbaa !6
  %2446 = getelementptr inbounds i8, ptr %2149, i64 13316
  store i32 %2445, ptr %2446, align 4, !tbaa !6
  %2447 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 208), align 4, !tbaa !6
  %2448 = getelementptr inbounds i8, ptr %2149, i64 13320
  store i32 %2447, ptr %2448, align 4, !tbaa !6
  %2449 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 212), align 4, !tbaa !6
  %2450 = getelementptr inbounds i8, ptr %2149, i64 13324
  store i32 %2449, ptr %2450, align 4, !tbaa !6
  %2451 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 216), align 4, !tbaa !6
  %2452 = getelementptr inbounds i8, ptr %2149, i64 13328
  store i32 %2451, ptr %2452, align 4, !tbaa !6
  %2453 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 220), align 4, !tbaa !6
  %2454 = getelementptr inbounds i8, ptr %2149, i64 13332
  store i32 %2453, ptr %2454, align 4, !tbaa !6
  %2455 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 256), align 4, !tbaa !6
  %2456 = getelementptr inbounds i8, ptr %2149, i64 13368
  store i32 %2455, ptr %2456, align 4, !tbaa !6
  %2457 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 260), align 4, !tbaa !6
  %2458 = getelementptr inbounds i8, ptr %2149, i64 13372
  store i32 %2457, ptr %2458, align 4, !tbaa !6
  %2459 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 264), align 4, !tbaa !6
  %2460 = getelementptr inbounds i8, ptr %2149, i64 13376
  store i32 %2459, ptr %2460, align 4, !tbaa !6
  %2461 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 268), align 4, !tbaa !6
  %2462 = getelementptr inbounds i8, ptr %2149, i64 13380
  store i32 %2461, ptr %2462, align 4, !tbaa !6
  %2463 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 272), align 4, !tbaa !6
  %2464 = getelementptr inbounds i8, ptr %2149, i64 13384
  store i32 %2463, ptr %2464, align 4, !tbaa !6
  %2465 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 276), align 4, !tbaa !6
  %2466 = getelementptr inbounds i8, ptr %2149, i64 13388
  store i32 %2465, ptr %2466, align 4, !tbaa !6
  %2467 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 280), align 4, !tbaa !6
  %2468 = getelementptr inbounds i8, ptr %2149, i64 13392
  store i32 %2467, ptr %2468, align 4, !tbaa !6
  %2469 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 284), align 4, !tbaa !6
  %2470 = getelementptr inbounds i8, ptr %2149, i64 13396
  store i32 %2469, ptr %2470, align 4, !tbaa !6
  %2471 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 320), align 4, !tbaa !6
  %2472 = getelementptr inbounds i8, ptr %2149, i64 13432
  store i32 %2471, ptr %2472, align 4, !tbaa !6
  %2473 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 324), align 4, !tbaa !6
  %2474 = getelementptr inbounds i8, ptr %2149, i64 13436
  store i32 %2473, ptr %2474, align 4, !tbaa !6
  %2475 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 328), align 4, !tbaa !6
  %2476 = getelementptr inbounds i8, ptr %2149, i64 13440
  store i32 %2475, ptr %2476, align 4, !tbaa !6
  %2477 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 332), align 4, !tbaa !6
  %2478 = getelementptr inbounds i8, ptr %2149, i64 13444
  store i32 %2477, ptr %2478, align 4, !tbaa !6
  %2479 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 336), align 4, !tbaa !6
  %2480 = getelementptr inbounds i8, ptr %2149, i64 13448
  store i32 %2479, ptr %2480, align 4, !tbaa !6
  %2481 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 340), align 4, !tbaa !6
  %2482 = getelementptr inbounds i8, ptr %2149, i64 13452
  store i32 %2481, ptr %2482, align 4, !tbaa !6
  %2483 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 344), align 4, !tbaa !6
  %2484 = getelementptr inbounds i8, ptr %2149, i64 13456
  store i32 %2483, ptr %2484, align 4, !tbaa !6
  %2485 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 348), align 4, !tbaa !6
  %2486 = getelementptr inbounds i8, ptr %2149, i64 13460
  store i32 %2485, ptr %2486, align 4, !tbaa !6
  %2487 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 384), align 4, !tbaa !6
  %2488 = getelementptr inbounds i8, ptr %2149, i64 13496
  store i32 %2487, ptr %2488, align 4, !tbaa !6
  %2489 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 388), align 4, !tbaa !6
  %2490 = getelementptr inbounds i8, ptr %2149, i64 13500
  store i32 %2489, ptr %2490, align 4, !tbaa !6
  %2491 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 392), align 4, !tbaa !6
  %2492 = getelementptr inbounds i8, ptr %2149, i64 13504
  store i32 %2491, ptr %2492, align 4, !tbaa !6
  %2493 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 396), align 4, !tbaa !6
  %2494 = getelementptr inbounds i8, ptr %2149, i64 13508
  store i32 %2493, ptr %2494, align 4, !tbaa !6
  %2495 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 400), align 4, !tbaa !6
  %2496 = getelementptr inbounds i8, ptr %2149, i64 13512
  store i32 %2495, ptr %2496, align 4, !tbaa !6
  %2497 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 404), align 4, !tbaa !6
  %2498 = getelementptr inbounds i8, ptr %2149, i64 13516
  store i32 %2497, ptr %2498, align 4, !tbaa !6
  %2499 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 408), align 4, !tbaa !6
  %2500 = getelementptr inbounds i8, ptr %2149, i64 13520
  store i32 %2499, ptr %2500, align 4, !tbaa !6
  %2501 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 412), align 4, !tbaa !6
  %2502 = getelementptr inbounds i8, ptr %2149, i64 13524
  store i32 %2501, ptr %2502, align 4, !tbaa !6
  %2503 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 448), align 4, !tbaa !6
  %2504 = getelementptr inbounds i8, ptr %2149, i64 13560
  store i32 %2503, ptr %2504, align 4, !tbaa !6
  %2505 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 452), align 4, !tbaa !6
  %2506 = getelementptr inbounds i8, ptr %2149, i64 13564
  store i32 %2505, ptr %2506, align 4, !tbaa !6
  %2507 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 456), align 4, !tbaa !6
  %2508 = getelementptr inbounds i8, ptr %2149, i64 13568
  store i32 %2507, ptr %2508, align 4, !tbaa !6
  %2509 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 460), align 4, !tbaa !6
  %2510 = getelementptr inbounds i8, ptr %2149, i64 13572
  store i32 %2509, ptr %2510, align 4, !tbaa !6
  %2511 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 464), align 4, !tbaa !6
  %2512 = getelementptr inbounds i8, ptr %2149, i64 13576
  store i32 %2511, ptr %2512, align 4, !tbaa !6
  %2513 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 468), align 4, !tbaa !6
  %2514 = getelementptr inbounds i8, ptr %2149, i64 13580
  store i32 %2513, ptr %2514, align 4, !tbaa !6
  %2515 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 472), align 4, !tbaa !6
  %2516 = getelementptr inbounds i8, ptr %2149, i64 13584
  store i32 %2515, ptr %2516, align 4, !tbaa !6
  %2517 = load i32, ptr getelementptr inbounds (i8, ptr @resTrans_G, i64 476), align 4, !tbaa !6
  %2518 = getelementptr inbounds i8, ptr %2149, i64 13588
  store i32 %2517, ptr %2518, align 4, !tbaa !6
  %2519 = call signext i32 @dct_luma8x8(i32 noundef signext %0, ptr noundef nonnull %4, i32 noundef signext 1)
  %2520 = load ptr, ptr @img, align 8, !tbaa !10
  %2521 = getelementptr inbounds i8, ptr %2520, i64 13112
  %2522 = load i32, ptr %2521, align 4, !tbaa !6
  store i32 %2522, ptr @rec_resG, align 4, !tbaa !6
  %2523 = getelementptr inbounds i8, ptr %2520, i64 13116
  %2524 = load i32, ptr %2523, align 4, !tbaa !6
  store i32 %2524, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 4), align 4, !tbaa !6
  %2525 = getelementptr inbounds i8, ptr %2520, i64 13120
  %2526 = load i32, ptr %2525, align 4, !tbaa !6
  store i32 %2526, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 8), align 4, !tbaa !6
  %2527 = getelementptr inbounds i8, ptr %2520, i64 13124
  %2528 = load i32, ptr %2527, align 4, !tbaa !6
  store i32 %2528, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 12), align 4, !tbaa !6
  %2529 = getelementptr inbounds i8, ptr %2520, i64 13128
  %2530 = load i32, ptr %2529, align 4, !tbaa !6
  store i32 %2530, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 16), align 4, !tbaa !6
  %2531 = getelementptr inbounds i8, ptr %2520, i64 13132
  %2532 = load i32, ptr %2531, align 4, !tbaa !6
  store i32 %2532, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 20), align 4, !tbaa !6
  %2533 = getelementptr inbounds i8, ptr %2520, i64 13136
  %2534 = load i32, ptr %2533, align 4, !tbaa !6
  store i32 %2534, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 24), align 4, !tbaa !6
  %2535 = getelementptr inbounds i8, ptr %2520, i64 13140
  %2536 = load i32, ptr %2535, align 4, !tbaa !6
  store i32 %2536, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 28), align 4, !tbaa !6
  %2537 = getelementptr inbounds i8, ptr %2520, i64 13176
  %2538 = load i32, ptr %2537, align 4, !tbaa !6
  store i32 %2538, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 64), align 4, !tbaa !6
  %2539 = getelementptr inbounds i8, ptr %2520, i64 13180
  %2540 = load i32, ptr %2539, align 4, !tbaa !6
  store i32 %2540, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 68), align 4, !tbaa !6
  %2541 = getelementptr inbounds i8, ptr %2520, i64 13184
  %2542 = load i32, ptr %2541, align 4, !tbaa !6
  store i32 %2542, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 72), align 4, !tbaa !6
  %2543 = getelementptr inbounds i8, ptr %2520, i64 13188
  %2544 = load i32, ptr %2543, align 4, !tbaa !6
  store i32 %2544, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 76), align 4, !tbaa !6
  %2545 = getelementptr inbounds i8, ptr %2520, i64 13192
  %2546 = load i32, ptr %2545, align 4, !tbaa !6
  store i32 %2546, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 80), align 4, !tbaa !6
  %2547 = getelementptr inbounds i8, ptr %2520, i64 13196
  %2548 = load i32, ptr %2547, align 4, !tbaa !6
  store i32 %2548, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 84), align 4, !tbaa !6
  %2549 = getelementptr inbounds i8, ptr %2520, i64 13200
  %2550 = load i32, ptr %2549, align 4, !tbaa !6
  store i32 %2550, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 88), align 4, !tbaa !6
  %2551 = getelementptr inbounds i8, ptr %2520, i64 13204
  %2552 = load i32, ptr %2551, align 4, !tbaa !6
  store i32 %2552, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 92), align 4, !tbaa !6
  %2553 = getelementptr inbounds i8, ptr %2520, i64 13240
  %2554 = load i32, ptr %2553, align 4, !tbaa !6
  store i32 %2554, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 128), align 4, !tbaa !6
  %2555 = getelementptr inbounds i8, ptr %2520, i64 13244
  %2556 = load i32, ptr %2555, align 4, !tbaa !6
  store i32 %2556, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 132), align 4, !tbaa !6
  %2557 = getelementptr inbounds i8, ptr %2520, i64 13248
  %2558 = load i32, ptr %2557, align 4, !tbaa !6
  store i32 %2558, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 136), align 4, !tbaa !6
  %2559 = getelementptr inbounds i8, ptr %2520, i64 13252
  %2560 = load i32, ptr %2559, align 4, !tbaa !6
  store i32 %2560, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 140), align 4, !tbaa !6
  %2561 = getelementptr inbounds i8, ptr %2520, i64 13256
  %2562 = load i32, ptr %2561, align 4, !tbaa !6
  store i32 %2562, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 144), align 4, !tbaa !6
  %2563 = getelementptr inbounds i8, ptr %2520, i64 13260
  %2564 = load i32, ptr %2563, align 4, !tbaa !6
  store i32 %2564, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 148), align 4, !tbaa !6
  %2565 = getelementptr inbounds i8, ptr %2520, i64 13264
  %2566 = load i32, ptr %2565, align 4, !tbaa !6
  store i32 %2566, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 152), align 4, !tbaa !6
  %2567 = getelementptr inbounds i8, ptr %2520, i64 13268
  %2568 = load i32, ptr %2567, align 4, !tbaa !6
  store i32 %2568, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 156), align 4, !tbaa !6
  %2569 = getelementptr inbounds i8, ptr %2520, i64 13304
  %2570 = load i32, ptr %2569, align 4, !tbaa !6
  store i32 %2570, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 192), align 4, !tbaa !6
  %2571 = getelementptr inbounds i8, ptr %2520, i64 13308
  %2572 = load i32, ptr %2571, align 4, !tbaa !6
  store i32 %2572, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 196), align 4, !tbaa !6
  %2573 = getelementptr inbounds i8, ptr %2520, i64 13312
  %2574 = load i32, ptr %2573, align 4, !tbaa !6
  store i32 %2574, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 200), align 4, !tbaa !6
  %2575 = getelementptr inbounds i8, ptr %2520, i64 13316
  %2576 = load i32, ptr %2575, align 4, !tbaa !6
  store i32 %2576, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 204), align 4, !tbaa !6
  %2577 = getelementptr inbounds i8, ptr %2520, i64 13320
  %2578 = load i32, ptr %2577, align 4, !tbaa !6
  store i32 %2578, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 208), align 4, !tbaa !6
  %2579 = getelementptr inbounds i8, ptr %2520, i64 13324
  %2580 = load i32, ptr %2579, align 4, !tbaa !6
  store i32 %2580, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 212), align 4, !tbaa !6
  %2581 = getelementptr inbounds i8, ptr %2520, i64 13328
  %2582 = load i32, ptr %2581, align 4, !tbaa !6
  store i32 %2582, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 216), align 4, !tbaa !6
  %2583 = getelementptr inbounds i8, ptr %2520, i64 13332
  %2584 = load i32, ptr %2583, align 4, !tbaa !6
  store i32 %2584, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 220), align 4, !tbaa !6
  %2585 = getelementptr inbounds i8, ptr %2520, i64 13368
  %2586 = load i32, ptr %2585, align 4, !tbaa !6
  store i32 %2586, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 256), align 4, !tbaa !6
  %2587 = getelementptr inbounds i8, ptr %2520, i64 13372
  %2588 = load i32, ptr %2587, align 4, !tbaa !6
  store i32 %2588, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 260), align 4, !tbaa !6
  %2589 = getelementptr inbounds i8, ptr %2520, i64 13376
  %2590 = load i32, ptr %2589, align 4, !tbaa !6
  store i32 %2590, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 264), align 4, !tbaa !6
  %2591 = getelementptr inbounds i8, ptr %2520, i64 13380
  %2592 = load i32, ptr %2591, align 4, !tbaa !6
  store i32 %2592, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 268), align 4, !tbaa !6
  %2593 = getelementptr inbounds i8, ptr %2520, i64 13384
  %2594 = load i32, ptr %2593, align 4, !tbaa !6
  store i32 %2594, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 272), align 4, !tbaa !6
  %2595 = getelementptr inbounds i8, ptr %2520, i64 13388
  %2596 = load i32, ptr %2595, align 4, !tbaa !6
  store i32 %2596, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 276), align 4, !tbaa !6
  %2597 = getelementptr inbounds i8, ptr %2520, i64 13392
  %2598 = load i32, ptr %2597, align 4, !tbaa !6
  store i32 %2598, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 280), align 4, !tbaa !6
  %2599 = getelementptr inbounds i8, ptr %2520, i64 13396
  %2600 = load i32, ptr %2599, align 4, !tbaa !6
  store i32 %2600, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 284), align 4, !tbaa !6
  %2601 = getelementptr inbounds i8, ptr %2520, i64 13432
  %2602 = load i32, ptr %2601, align 4, !tbaa !6
  store i32 %2602, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 320), align 4, !tbaa !6
  %2603 = getelementptr inbounds i8, ptr %2520, i64 13436
  %2604 = load i32, ptr %2603, align 4, !tbaa !6
  store i32 %2604, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 324), align 4, !tbaa !6
  %2605 = getelementptr inbounds i8, ptr %2520, i64 13440
  %2606 = load i32, ptr %2605, align 4, !tbaa !6
  store i32 %2606, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 328), align 4, !tbaa !6
  %2607 = getelementptr inbounds i8, ptr %2520, i64 13444
  %2608 = load i32, ptr %2607, align 4, !tbaa !6
  store i32 %2608, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 332), align 4, !tbaa !6
  %2609 = getelementptr inbounds i8, ptr %2520, i64 13448
  %2610 = load i32, ptr %2609, align 4, !tbaa !6
  store i32 %2610, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 336), align 4, !tbaa !6
  %2611 = getelementptr inbounds i8, ptr %2520, i64 13452
  %2612 = load i32, ptr %2611, align 4, !tbaa !6
  store i32 %2612, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 340), align 4, !tbaa !6
  %2613 = getelementptr inbounds i8, ptr %2520, i64 13456
  %2614 = load i32, ptr %2613, align 4, !tbaa !6
  store i32 %2614, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 344), align 4, !tbaa !6
  %2615 = getelementptr inbounds i8, ptr %2520, i64 13460
  %2616 = load i32, ptr %2615, align 4, !tbaa !6
  store i32 %2616, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 348), align 4, !tbaa !6
  %2617 = getelementptr inbounds i8, ptr %2520, i64 13496
  %2618 = load i32, ptr %2617, align 4, !tbaa !6
  store i32 %2618, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 384), align 4, !tbaa !6
  %2619 = getelementptr inbounds i8, ptr %2520, i64 13500
  %2620 = load i32, ptr %2619, align 4, !tbaa !6
  store i32 %2620, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 388), align 4, !tbaa !6
  %2621 = getelementptr inbounds i8, ptr %2520, i64 13504
  %2622 = load i32, ptr %2621, align 4, !tbaa !6
  store i32 %2622, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 392), align 4, !tbaa !6
  %2623 = getelementptr inbounds i8, ptr %2520, i64 13508
  %2624 = load i32, ptr %2623, align 4, !tbaa !6
  store i32 %2624, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 396), align 4, !tbaa !6
  %2625 = getelementptr inbounds i8, ptr %2520, i64 13512
  %2626 = load i32, ptr %2625, align 4, !tbaa !6
  store i32 %2626, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 400), align 4, !tbaa !6
  %2627 = getelementptr inbounds i8, ptr %2520, i64 13516
  %2628 = load i32, ptr %2627, align 4, !tbaa !6
  store i32 %2628, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 404), align 4, !tbaa !6
  %2629 = getelementptr inbounds i8, ptr %2520, i64 13520
  %2630 = load i32, ptr %2629, align 4, !tbaa !6
  store i32 %2630, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 408), align 4, !tbaa !6
  %2631 = getelementptr inbounds i8, ptr %2520, i64 13524
  %2632 = load i32, ptr %2631, align 4, !tbaa !6
  store i32 %2632, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 412), align 4, !tbaa !6
  %2633 = getelementptr inbounds i8, ptr %2520, i64 13560
  %2634 = load i32, ptr %2633, align 4, !tbaa !6
  store i32 %2634, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 448), align 4, !tbaa !6
  %2635 = getelementptr inbounds i8, ptr %2520, i64 13564
  %2636 = load i32, ptr %2635, align 4, !tbaa !6
  store i32 %2636, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 452), align 4, !tbaa !6
  %2637 = getelementptr inbounds i8, ptr %2520, i64 13568
  %2638 = load i32, ptr %2637, align 4, !tbaa !6
  store i32 %2638, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 456), align 4, !tbaa !6
  %2639 = getelementptr inbounds i8, ptr %2520, i64 13572
  %2640 = load i32, ptr %2639, align 4, !tbaa !6
  store i32 %2640, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 460), align 4, !tbaa !6
  %2641 = getelementptr inbounds i8, ptr %2520, i64 13576
  %2642 = load i32, ptr %2641, align 4, !tbaa !6
  store i32 %2642, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 464), align 4, !tbaa !6
  %2643 = getelementptr inbounds i8, ptr %2520, i64 13580
  %2644 = load i32, ptr %2643, align 4, !tbaa !6
  store i32 %2644, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 468), align 4, !tbaa !6
  %2645 = getelementptr inbounds i8, ptr %2520, i64 13584
  %2646 = load i32, ptr %2645, align 4, !tbaa !6
  store i32 %2646, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 472), align 4, !tbaa !6
  %2647 = getelementptr inbounds i8, ptr %2520, i64 13588
  %2648 = load i32, ptr %2647, align 4, !tbaa !6
  store i32 %2648, ptr getelementptr inbounds (i8, ptr @rec_resG, i64 476), align 4, !tbaa !6
  %2649 = load ptr, ptr @img, align 8, !tbaa !10
  br label %2706

2650:                                             ; preds = %2380, %2650
  %2651 = phi i64 [ 0, %2380 ], [ %2685, %2650 ]
  %2652 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2279, i64 0, i64 %2280, i64 %2381, i64 %2651
  %2653 = load i16, ptr %2652, align 2, !tbaa !35
  %2654 = or disjoint i64 %2651, %137
  %2655 = getelementptr inbounds [16 x [16 x i16]], ptr %2281, i64 0, i64 %2382, i64 %2654
  store i16 %2653, ptr %2655, align 2, !tbaa !35
  %2656 = add nsw i64 %2651, %138
  %2657 = getelementptr inbounds i16, ptr %2385, i64 %2656
  %2658 = load i16, ptr %2657, align 2, !tbaa !35
  %2659 = zext i16 %2658 to i32
  %2660 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2284, i64 0, i64 %127, i64 %2382, i64 %2654
  %2661 = load i16, ptr %2660, align 2, !tbaa !35
  %2662 = zext i16 %2661 to i32
  %2663 = sub nsw i32 %2659, %2662
  %2664 = getelementptr inbounds i16, ptr %2387, i64 %2656
  %2665 = load i16, ptr %2664, align 2, !tbaa !35
  %2666 = zext i16 %2665 to i32
  %2667 = zext i16 %2653 to i32
  %2668 = getelementptr inbounds i16, ptr %2389, i64 %2656
  %2669 = load i16, ptr %2668, align 2, !tbaa !35
  %2670 = zext i16 %2669 to i32
  %2671 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2288, i64 0, i64 %127, i64 %2382, i64 %2654
  %2672 = load i16, ptr %2671, align 2, !tbaa !35
  %2673 = zext i16 %2672 to i32
  %2674 = add nsw i32 %2663, %2673
  %2675 = sub nsw i32 %2670, %2674
  %2676 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2381, i64 %2651
  store i32 %2675, ptr %2676, align 4, !tbaa !6
  %2677 = ashr i32 %2675, 1
  %2678 = add nsw i32 %2677, %2663
  %2679 = add nsw i32 %2678, %2667
  %2680 = sub nsw i32 %2666, %2679
  %2681 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2381, i64 %2651
  store i32 %2680, ptr %2681, align 4, !tbaa !6
  %2682 = ashr i32 %2680, 1
  %2683 = add nsw i32 %2682, %2678
  %2684 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %2381, i64 %2651
  store i32 %2683, ptr %2684, align 4, !tbaa !6
  %2685 = add nuw nsw i64 %2651, 1
  %2686 = icmp eq i64 %2685, 8
  br i1 %2686, label %2687, label %2650

2687:                                             ; preds = %2650
  %2688 = add nuw nsw i64 %2381, 1
  %2689 = icmp eq i64 %2688, 8
  br i1 %2689, label %2390, label %2380

2690:                                             ; preds = %2706
  %2691 = getelementptr inbounds i8, ptr %2864, i64 90536
  %2692 = load i32, ptr %2691, align 8, !tbaa !42
  %2693 = getelementptr inbounds i8, ptr %2864, i64 8504
  %2694 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %2695 = getelementptr inbounds i8, ptr %2694, i64 6464
  %2696 = load ptr, ptr %2695, align 8, !tbaa !43
  %2697 = load ptr, ptr %2696, align 8, !tbaa !10
  %2698 = getelementptr inbounds i8, ptr %2864, i64 90532
  %2699 = load i32, ptr %2698, align 4, !tbaa !44
  %2700 = getelementptr inbounds i8, ptr %2864, i64 7352
  %2701 = getelementptr inbounds i8, ptr %2694, i64 6424
  %2702 = load ptr, ptr %2701, align 8, !tbaa !39
  %2703 = getelementptr inbounds i8, ptr %2864, i64 10552
  %2704 = getelementptr inbounds i8, ptr %2696, i64 8
  %2705 = load ptr, ptr %2704, align 8, !tbaa !10
  br label %2915

2706:                                             ; preds = %2390, %2706
  %2707 = phi ptr [ %2649, %2390 ], [ %2864, %2706 ]
  %2708 = phi i32 [ 0, %2390 ], [ %2913, %2706 ]
  %2709 = and i32 %2708, 1
  %2710 = shl nuw nsw i32 %2709, 2
  %2711 = lshr i32 %2708, 1
  %2712 = shl nuw nsw i32 %2711, 2
  %2713 = getelementptr inbounds i8, ptr %2707, i64 13112
  %2714 = zext nneg i32 %2710 to i64
  %2715 = zext nneg i32 %2712 to i64
  %2716 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2715, i64 %2714
  %2717 = load i32, ptr %2716, align 4, !tbaa !6
  store i32 %2717, ptr %2713, align 4, !tbaa !6
  %2718 = or disjoint i64 %2714, 1
  %2719 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2715, i64 %2718
  %2720 = load i32, ptr %2719, align 4, !tbaa !6
  %2721 = getelementptr inbounds i8, ptr %2707, i64 13116
  store i32 %2720, ptr %2721, align 4, !tbaa !6
  %2722 = or disjoint i64 %2714, 2
  %2723 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2715, i64 %2722
  %2724 = load i32, ptr %2723, align 4, !tbaa !6
  %2725 = getelementptr inbounds i8, ptr %2707, i64 13120
  store i32 %2724, ptr %2725, align 4, !tbaa !6
  %2726 = or disjoint i64 %2714, 3
  %2727 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2715, i64 %2726
  %2728 = load i32, ptr %2727, align 4, !tbaa !6
  %2729 = getelementptr inbounds i8, ptr %2707, i64 13124
  store i32 %2728, ptr %2729, align 4, !tbaa !6
  %2730 = or disjoint i64 %2715, 1
  %2731 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2730, i64 %2714
  %2732 = load i32, ptr %2731, align 4, !tbaa !6
  %2733 = getelementptr inbounds i8, ptr %2707, i64 13176
  store i32 %2732, ptr %2733, align 4, !tbaa !6
  %2734 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2730, i64 %2718
  %2735 = load i32, ptr %2734, align 4, !tbaa !6
  %2736 = getelementptr inbounds i8, ptr %2707, i64 13180
  store i32 %2735, ptr %2736, align 4, !tbaa !6
  %2737 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2730, i64 %2722
  %2738 = load i32, ptr %2737, align 4, !tbaa !6
  %2739 = getelementptr inbounds i8, ptr %2707, i64 13184
  store i32 %2738, ptr %2739, align 4, !tbaa !6
  %2740 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2730, i64 %2726
  %2741 = load i32, ptr %2740, align 4, !tbaa !6
  %2742 = getelementptr inbounds i8, ptr %2707, i64 13188
  store i32 %2741, ptr %2742, align 4, !tbaa !6
  %2743 = or disjoint i64 %2715, 2
  %2744 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2743, i64 %2714
  %2745 = load i32, ptr %2744, align 4, !tbaa !6
  %2746 = getelementptr inbounds i8, ptr %2707, i64 13240
  store i32 %2745, ptr %2746, align 4, !tbaa !6
  %2747 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2743, i64 %2718
  %2748 = load i32, ptr %2747, align 4, !tbaa !6
  %2749 = getelementptr inbounds i8, ptr %2707, i64 13244
  store i32 %2748, ptr %2749, align 4, !tbaa !6
  %2750 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2743, i64 %2722
  %2751 = load i32, ptr %2750, align 4, !tbaa !6
  %2752 = getelementptr inbounds i8, ptr %2707, i64 13248
  store i32 %2751, ptr %2752, align 4, !tbaa !6
  %2753 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2743, i64 %2726
  %2754 = load i32, ptr %2753, align 4, !tbaa !6
  %2755 = getelementptr inbounds i8, ptr %2707, i64 13252
  store i32 %2754, ptr %2755, align 4, !tbaa !6
  %2756 = or disjoint i64 %2715, 3
  %2757 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2756, i64 %2714
  %2758 = load i32, ptr %2757, align 4, !tbaa !6
  %2759 = getelementptr inbounds i8, ptr %2707, i64 13304
  store i32 %2758, ptr %2759, align 4, !tbaa !6
  %2760 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2756, i64 %2718
  %2761 = load i32, ptr %2760, align 4, !tbaa !6
  %2762 = getelementptr inbounds i8, ptr %2707, i64 13308
  store i32 %2761, ptr %2762, align 4, !tbaa !6
  %2763 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2756, i64 %2722
  %2764 = load i32, ptr %2763, align 4, !tbaa !6
  %2765 = getelementptr inbounds i8, ptr %2707, i64 13312
  store i32 %2764, ptr %2765, align 4, !tbaa !6
  %2766 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %2756, i64 %2726
  %2767 = load i32, ptr %2766, align 4, !tbaa !6
  %2768 = getelementptr inbounds i8, ptr %2707, i64 13316
  store i32 %2767, ptr %2768, align 4, !tbaa !6
  %2769 = call signext i32 @dct_chroma4x4(i32 noundef signext 0, i32 noundef signext %128, i32 noundef signext %2708) #8
  %2770 = or disjoint i32 %2709, %42
  %2771 = zext nneg i32 %2770 to i64
  %2772 = or disjoint i32 %2711, %43
  %2773 = sext i32 %2772 to i64
  %2774 = getelementptr inbounds [4 x [4 x i32]], ptr @cbp_chroma_block, i64 0, i64 %2771, i64 %2773
  store i32 %2769, ptr %2774, align 4, !tbaa !6
  %2775 = getelementptr inbounds [4 x [4 x i32]], ptr @dc_level_temp, i64 0, i64 %2771, i64 %2773
  %2776 = load i32, ptr %2775, align 4, !tbaa !6
  %2777 = getelementptr inbounds [4 x [4 x i32]], ptr @dc_level, i64 0, i64 %2771, i64 %2773
  store i32 %2776, ptr %2777, align 4, !tbaa !6
  %2778 = load ptr, ptr @img, align 8, !tbaa !10
  %2779 = getelementptr inbounds i8, ptr %2778, i64 13112
  %2780 = load i32, ptr %2779, align 4, !tbaa !6
  %2781 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2715, i64 %2714
  store i32 %2780, ptr %2781, align 4, !tbaa !6
  %2782 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2715, i64 %2714
  %2783 = load i32, ptr %2782, align 4, !tbaa !6
  store i32 %2783, ptr %2779, align 4, !tbaa !6
  %2784 = getelementptr inbounds i8, ptr %2778, i64 13116
  %2785 = load i32, ptr %2784, align 4, !tbaa !6
  %2786 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2715, i64 %2718
  store i32 %2785, ptr %2786, align 4, !tbaa !6
  %2787 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2715, i64 %2718
  %2788 = load i32, ptr %2787, align 4, !tbaa !6
  store i32 %2788, ptr %2784, align 4, !tbaa !6
  %2789 = getelementptr inbounds i8, ptr %2778, i64 13120
  %2790 = load i32, ptr %2789, align 4, !tbaa !6
  %2791 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2715, i64 %2722
  store i32 %2790, ptr %2791, align 4, !tbaa !6
  %2792 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2715, i64 %2722
  %2793 = load i32, ptr %2792, align 4, !tbaa !6
  store i32 %2793, ptr %2789, align 4, !tbaa !6
  %2794 = getelementptr inbounds i8, ptr %2778, i64 13124
  %2795 = load i32, ptr %2794, align 4, !tbaa !6
  %2796 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2715, i64 %2726
  store i32 %2795, ptr %2796, align 4, !tbaa !6
  %2797 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2715, i64 %2726
  %2798 = load i32, ptr %2797, align 4, !tbaa !6
  store i32 %2798, ptr %2794, align 4, !tbaa !6
  %2799 = getelementptr inbounds i8, ptr %2778, i64 13176
  %2800 = load i32, ptr %2799, align 4, !tbaa !6
  %2801 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2730, i64 %2714
  store i32 %2800, ptr %2801, align 4, !tbaa !6
  %2802 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2730, i64 %2714
  %2803 = load i32, ptr %2802, align 4, !tbaa !6
  store i32 %2803, ptr %2799, align 4, !tbaa !6
  %2804 = getelementptr inbounds i8, ptr %2778, i64 13180
  %2805 = load i32, ptr %2804, align 4, !tbaa !6
  %2806 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2730, i64 %2718
  store i32 %2805, ptr %2806, align 4, !tbaa !6
  %2807 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2730, i64 %2718
  %2808 = load i32, ptr %2807, align 4, !tbaa !6
  store i32 %2808, ptr %2804, align 4, !tbaa !6
  %2809 = getelementptr inbounds i8, ptr %2778, i64 13184
  %2810 = load i32, ptr %2809, align 4, !tbaa !6
  %2811 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2730, i64 %2722
  store i32 %2810, ptr %2811, align 4, !tbaa !6
  %2812 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2730, i64 %2722
  %2813 = load i32, ptr %2812, align 4, !tbaa !6
  store i32 %2813, ptr %2809, align 4, !tbaa !6
  %2814 = getelementptr inbounds i8, ptr %2778, i64 13188
  %2815 = load i32, ptr %2814, align 4, !tbaa !6
  %2816 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2730, i64 %2726
  store i32 %2815, ptr %2816, align 4, !tbaa !6
  %2817 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2730, i64 %2726
  %2818 = load i32, ptr %2817, align 4, !tbaa !6
  store i32 %2818, ptr %2814, align 4, !tbaa !6
  %2819 = getelementptr inbounds i8, ptr %2778, i64 13240
  %2820 = load i32, ptr %2819, align 4, !tbaa !6
  %2821 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2743, i64 %2714
  store i32 %2820, ptr %2821, align 4, !tbaa !6
  %2822 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2743, i64 %2714
  %2823 = load i32, ptr %2822, align 4, !tbaa !6
  store i32 %2823, ptr %2819, align 4, !tbaa !6
  %2824 = getelementptr inbounds i8, ptr %2778, i64 13244
  %2825 = load i32, ptr %2824, align 4, !tbaa !6
  %2826 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2743, i64 %2718
  store i32 %2825, ptr %2826, align 4, !tbaa !6
  %2827 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2743, i64 %2718
  %2828 = load i32, ptr %2827, align 4, !tbaa !6
  store i32 %2828, ptr %2824, align 4, !tbaa !6
  %2829 = getelementptr inbounds i8, ptr %2778, i64 13248
  %2830 = load i32, ptr %2829, align 4, !tbaa !6
  %2831 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2743, i64 %2722
  store i32 %2830, ptr %2831, align 4, !tbaa !6
  %2832 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2743, i64 %2722
  %2833 = load i32, ptr %2832, align 4, !tbaa !6
  store i32 %2833, ptr %2829, align 4, !tbaa !6
  %2834 = getelementptr inbounds i8, ptr %2778, i64 13252
  %2835 = load i32, ptr %2834, align 4, !tbaa !6
  %2836 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2743, i64 %2726
  store i32 %2835, ptr %2836, align 4, !tbaa !6
  %2837 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2743, i64 %2726
  %2838 = load i32, ptr %2837, align 4, !tbaa !6
  store i32 %2838, ptr %2834, align 4, !tbaa !6
  %2839 = getelementptr inbounds i8, ptr %2778, i64 13304
  %2840 = load i32, ptr %2839, align 4, !tbaa !6
  %2841 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2756, i64 %2714
  store i32 %2840, ptr %2841, align 4, !tbaa !6
  %2842 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2756, i64 %2714
  %2843 = load i32, ptr %2842, align 4, !tbaa !6
  store i32 %2843, ptr %2839, align 4, !tbaa !6
  %2844 = getelementptr inbounds i8, ptr %2778, i64 13308
  %2845 = load i32, ptr %2844, align 4, !tbaa !6
  %2846 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2756, i64 %2718
  store i32 %2845, ptr %2846, align 4, !tbaa !6
  %2847 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2756, i64 %2718
  %2848 = load i32, ptr %2847, align 4, !tbaa !6
  store i32 %2848, ptr %2844, align 4, !tbaa !6
  %2849 = getelementptr inbounds i8, ptr %2778, i64 13312
  %2850 = load i32, ptr %2849, align 4, !tbaa !6
  %2851 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2756, i64 %2722
  store i32 %2850, ptr %2851, align 4, !tbaa !6
  %2852 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2756, i64 %2722
  %2853 = load i32, ptr %2852, align 4, !tbaa !6
  store i32 %2853, ptr %2849, align 4, !tbaa !6
  %2854 = getelementptr inbounds i8, ptr %2778, i64 13316
  %2855 = load i32, ptr %2854, align 4, !tbaa !6
  %2856 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2756, i64 %2726
  store i32 %2855, ptr %2856, align 4, !tbaa !6
  %2857 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %2756, i64 %2726
  %2858 = load i32, ptr %2857, align 4, !tbaa !6
  store i32 %2858, ptr %2854, align 4, !tbaa !6
  %2859 = call signext i32 @dct_chroma4x4(i32 noundef signext 1, i32 noundef signext %129, i32 noundef signext %2708) #8
  %2860 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), i64 0, i64 %2771, i64 %2773
  store i32 %2859, ptr %2860, align 4, !tbaa !6
  %2861 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @dc_level_temp, i64 64), i64 0, i64 %2771, i64 %2773
  %2862 = load i32, ptr %2861, align 4, !tbaa !6
  %2863 = getelementptr inbounds [4 x [4 x i32]], ptr getelementptr inbounds (i8, ptr @dc_level, i64 64), i64 0, i64 %2771, i64 %2773
  store i32 %2862, ptr %2863, align 4, !tbaa !6
  %2864 = load ptr, ptr @img, align 8, !tbaa !10
  %2865 = getelementptr inbounds i8, ptr %2864, i64 13112
  %2866 = load i32, ptr %2865, align 4, !tbaa !6
  %2867 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2715, i64 %2714
  store i32 %2866, ptr %2867, align 4, !tbaa !6
  %2868 = getelementptr inbounds i8, ptr %2864, i64 13116
  %2869 = load i32, ptr %2868, align 4, !tbaa !6
  %2870 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2715, i64 %2718
  store i32 %2869, ptr %2870, align 4, !tbaa !6
  %2871 = getelementptr inbounds i8, ptr %2864, i64 13120
  %2872 = load i32, ptr %2871, align 4, !tbaa !6
  %2873 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2715, i64 %2722
  store i32 %2872, ptr %2873, align 4, !tbaa !6
  %2874 = getelementptr inbounds i8, ptr %2864, i64 13124
  %2875 = load i32, ptr %2874, align 4, !tbaa !6
  %2876 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2715, i64 %2726
  store i32 %2875, ptr %2876, align 4, !tbaa !6
  %2877 = getelementptr inbounds i8, ptr %2864, i64 13176
  %2878 = load i32, ptr %2877, align 4, !tbaa !6
  %2879 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2730, i64 %2714
  store i32 %2878, ptr %2879, align 4, !tbaa !6
  %2880 = getelementptr inbounds i8, ptr %2864, i64 13180
  %2881 = load i32, ptr %2880, align 4, !tbaa !6
  %2882 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2730, i64 %2718
  store i32 %2881, ptr %2882, align 4, !tbaa !6
  %2883 = getelementptr inbounds i8, ptr %2864, i64 13184
  %2884 = load i32, ptr %2883, align 4, !tbaa !6
  %2885 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2730, i64 %2722
  store i32 %2884, ptr %2885, align 4, !tbaa !6
  %2886 = getelementptr inbounds i8, ptr %2864, i64 13188
  %2887 = load i32, ptr %2886, align 4, !tbaa !6
  %2888 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2730, i64 %2726
  store i32 %2887, ptr %2888, align 4, !tbaa !6
  %2889 = getelementptr inbounds i8, ptr %2864, i64 13240
  %2890 = load i32, ptr %2889, align 4, !tbaa !6
  %2891 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2743, i64 %2714
  store i32 %2890, ptr %2891, align 4, !tbaa !6
  %2892 = getelementptr inbounds i8, ptr %2864, i64 13244
  %2893 = load i32, ptr %2892, align 4, !tbaa !6
  %2894 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2743, i64 %2718
  store i32 %2893, ptr %2894, align 4, !tbaa !6
  %2895 = getelementptr inbounds i8, ptr %2864, i64 13248
  %2896 = load i32, ptr %2895, align 4, !tbaa !6
  %2897 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2743, i64 %2722
  store i32 %2896, ptr %2897, align 4, !tbaa !6
  %2898 = getelementptr inbounds i8, ptr %2864, i64 13252
  %2899 = load i32, ptr %2898, align 4, !tbaa !6
  %2900 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2743, i64 %2726
  store i32 %2899, ptr %2900, align 4, !tbaa !6
  %2901 = getelementptr inbounds i8, ptr %2864, i64 13304
  %2902 = load i32, ptr %2901, align 4, !tbaa !6
  %2903 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2756, i64 %2714
  store i32 %2902, ptr %2903, align 4, !tbaa !6
  %2904 = getelementptr inbounds i8, ptr %2864, i64 13308
  %2905 = load i32, ptr %2904, align 4, !tbaa !6
  %2906 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2756, i64 %2718
  store i32 %2905, ptr %2906, align 4, !tbaa !6
  %2907 = getelementptr inbounds i8, ptr %2864, i64 13312
  %2908 = load i32, ptr %2907, align 4, !tbaa !6
  %2909 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2756, i64 %2722
  store i32 %2908, ptr %2909, align 4, !tbaa !6
  %2910 = getelementptr inbounds i8, ptr %2864, i64 13316
  %2911 = load i32, ptr %2910, align 4, !tbaa !6
  %2912 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2756, i64 %2726
  store i32 %2911, ptr %2912, align 4, !tbaa !6
  %2913 = add nuw nsw i32 %2708, 1
  %2914 = icmp eq i32 %2913, 4
  br i1 %2914, label %2690, label %2706

2915:                                             ; preds = %2690, %2967
  %2916 = phi i64 [ 0, %2690 ], [ %2968, %2967 ]
  %2917 = or disjoint i64 %2916, %139
  %2918 = add nsw i64 %2916, %141
  %2919 = getelementptr inbounds ptr, ptr %2697, i64 %2918
  %2920 = load ptr, ptr %2919, align 8, !tbaa !10
  %2921 = getelementptr inbounds ptr, ptr %2702, i64 %2918
  %2922 = load ptr, ptr %2921, align 8, !tbaa !10
  %2923 = getelementptr inbounds ptr, ptr %2705, i64 %2918
  %2924 = load ptr, ptr %2923, align 8, !tbaa !10
  br label %2925

2925:                                             ; preds = %2915, %2925
  %2926 = phi i64 [ 0, %2915 ], [ %2965, %2925 ]
  %2927 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %2916, i64 %2926
  %2928 = load i32, ptr %2927, align 4, !tbaa !6
  %2929 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %2916, i64 %2926
  %2930 = load i32, ptr %2929, align 4, !tbaa !6
  %2931 = ashr i32 %2930, 1
  %2932 = sub nsw i32 %2928, %2931
  %2933 = add nsw i32 %2932, %2930
  %2934 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %2916, i64 %2926
  %2935 = load i32, ptr %2934, align 4, !tbaa !6
  %2936 = ashr i32 %2935, 1
  %2937 = sub nsw i32 %2932, %2936
  %2938 = add nsw i32 %2937, %2935
  %2939 = or disjoint i64 %2926, %137
  %2940 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2693, i64 0, i64 %127, i64 %2917, i64 %2939
  %2941 = load i16, ptr %2940, align 2, !tbaa !35
  %2942 = zext i16 %2941 to i32
  %2943 = add nsw i32 %2937, %2942
  %2944 = call i32 @llvm.smax.i32(i32 %2943, i32 0)
  %2945 = call i32 @llvm.smin.i32(i32 %2692, i32 %2944)
  %2946 = trunc i32 %2945 to i16
  %2947 = add nsw i64 %2926, %132
  %2948 = getelementptr inbounds i16, ptr %2920, i64 %2947
  store i16 %2946, ptr %2948, align 2, !tbaa !35
  %2949 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2700, i64 0, i64 %2280, i64 %2916, i64 %2926
  %2950 = load i16, ptr %2949, align 2, !tbaa !35
  %2951 = zext i16 %2950 to i32
  %2952 = add nsw i32 %2933, %2951
  %2953 = call i32 @llvm.smax.i32(i32 %2952, i32 0)
  %2954 = call i32 @llvm.smin.i32(i32 %2699, i32 %2953)
  %2955 = trunc i32 %2954 to i16
  %2956 = getelementptr inbounds i16, ptr %2922, i64 %2947
  store i16 %2955, ptr %2956, align 2, !tbaa !35
  %2957 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %2703, i64 0, i64 %127, i64 %2917, i64 %2939
  %2958 = load i16, ptr %2957, align 2, !tbaa !35
  %2959 = zext i16 %2958 to i32
  %2960 = add nsw i32 %2938, %2959
  %2961 = call i32 @llvm.smax.i32(i32 %2960, i32 0)
  %2962 = call i32 @llvm.smin.i32(i32 %2692, i32 %2961)
  %2963 = trunc i32 %2962 to i16
  %2964 = getelementptr inbounds i16, ptr %2924, i64 %2947
  store i16 %2963, ptr %2964, align 2, !tbaa !35
  %2965 = add nuw nsw i64 %2926, 1
  %2966 = icmp eq i64 %2965, 8
  br i1 %2966, label %2967, label %2925

2967:                                             ; preds = %2925
  %2968 = add nuw nsw i64 %2916, 1
  %2969 = icmp eq i64 %2968, 8
  br i1 %2969, label %3506, label %2915

2970:                                             ; preds = %2154
  %2971 = getelementptr inbounds i8, ptr %2270, i64 19272
  %2972 = getelementptr inbounds [16 x [16 x i32]], ptr %2971, i64 0, i64 %139, i64 %131
  %2973 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %139, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2972, ptr noundef nonnull align 4 dereferenceable(32) %2973, i64 32, i1 false)
  %2974 = load ptr, ptr @img, align 8, !tbaa !10
  %2975 = getelementptr inbounds i8, ptr %2974, i64 19272
  %2976 = or disjoint i64 %139, 1
  %2977 = getelementptr inbounds [16 x [16 x i32]], ptr %2975, i64 0, i64 %2976, i64 %131
  %2978 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %2976, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2977, ptr noundef nonnull align 4 dereferenceable(32) %2978, i64 32, i1 false)
  %2979 = load ptr, ptr @img, align 8, !tbaa !10
  %2980 = getelementptr inbounds i8, ptr %2979, i64 19272
  %2981 = or disjoint i64 %139, 2
  %2982 = getelementptr inbounds [16 x [16 x i32]], ptr %2980, i64 0, i64 %2981, i64 %131
  %2983 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %2981, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2982, ptr noundef nonnull align 4 dereferenceable(32) %2983, i64 32, i1 false)
  %2984 = load ptr, ptr @img, align 8, !tbaa !10
  %2985 = getelementptr inbounds i8, ptr %2984, i64 19272
  %2986 = or disjoint i64 %139, 3
  %2987 = getelementptr inbounds [16 x [16 x i32]], ptr %2985, i64 0, i64 %2986, i64 %131
  %2988 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %2986, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2987, ptr noundef nonnull align 4 dereferenceable(32) %2988, i64 32, i1 false)
  %2989 = load ptr, ptr @img, align 8, !tbaa !10
  %2990 = getelementptr inbounds i8, ptr %2989, i64 19272
  %2991 = or disjoint i64 %139, 4
  %2992 = getelementptr inbounds [16 x [16 x i32]], ptr %2990, i64 0, i64 %2991, i64 %131
  %2993 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %2991, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2992, ptr noundef nonnull align 4 dereferenceable(32) %2993, i64 32, i1 false)
  %2994 = load ptr, ptr @img, align 8, !tbaa !10
  %2995 = getelementptr inbounds i8, ptr %2994, i64 19272
  %2996 = or disjoint i64 %139, 5
  %2997 = getelementptr inbounds [16 x [16 x i32]], ptr %2995, i64 0, i64 %2996, i64 %131
  %2998 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %2996, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2997, ptr noundef nonnull align 4 dereferenceable(32) %2998, i64 32, i1 false)
  %2999 = load ptr, ptr @img, align 8, !tbaa !10
  %3000 = getelementptr inbounds i8, ptr %2999, i64 19272
  %3001 = or disjoint i64 %139, 6
  %3002 = getelementptr inbounds [16 x [16 x i32]], ptr %3000, i64 0, i64 %3001, i64 %131
  %3003 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %3001, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3002, ptr noundef nonnull align 4 dereferenceable(32) %3003, i64 32, i1 false)
  %3004 = load ptr, ptr @img, align 8, !tbaa !10
  %3005 = getelementptr inbounds i8, ptr %3004, i64 19272
  %3006 = or disjoint i64 %139, 7
  %3007 = getelementptr inbounds [16 x [16 x i32]], ptr %3005, i64 0, i64 %3006, i64 %131
  %3008 = getelementptr inbounds [16 x [16 x i32]], ptr %133, i64 0, i64 %3006, i64 %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3007, ptr noundef nonnull align 4 dereferenceable(32) %3008, i64 32, i1 false)
  %3009 = load ptr, ptr @img, align 8, !tbaa !10
  br label %3010

3010:                                             ; preds = %2970, %2154
  %3011 = phi ptr [ %3009, %2970 ], [ %2270, %2154 ]
  %3012 = getelementptr inbounds i8, ptr %3011, i64 90572
  %3013 = load i32, ptr %3012, align 4, !tbaa !37
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3249, label %3015

3015:                                             ; preds = %3010
  %3016 = getelementptr inbounds i8, ptr %3011, i64 14136
  %3017 = load ptr, ptr %3016, align 8, !tbaa !38
  %3018 = getelementptr ptr, ptr %3017, i64 %130
  %3019 = getelementptr i8, ptr %3018, i64 32
  %3020 = load ptr, ptr %3019, align 8, !tbaa !10
  %3021 = getelementptr i8, ptr %3018, i64 64
  %3022 = load ptr, ptr %3021, align 8, !tbaa !10
  br label %3023

3023:                                             ; preds = %3015, %3023
  %3024 = phi i64 [ 0, %3015 ], [ %3247, %3023 ]
  %3025 = getelementptr inbounds ptr, ptr %3020, i64 %3024
  %3026 = load ptr, ptr %3025, align 8, !tbaa !10
  %3027 = load ptr, ptr %3026, align 8, !tbaa !10
  %3028 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 0
  %3029 = load i32, ptr %3028, align 4, !tbaa !6
  store i32 %3029, ptr %3027, align 4, !tbaa !6
  %3030 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 1
  %3031 = load i32, ptr %3030, align 4, !tbaa !6
  %3032 = getelementptr inbounds i8, ptr %3027, i64 4
  store i32 %3031, ptr %3032, align 4, !tbaa !6
  %3033 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 2
  %3034 = load i32, ptr %3033, align 4, !tbaa !6
  %3035 = getelementptr inbounds i8, ptr %3027, i64 8
  store i32 %3034, ptr %3035, align 4, !tbaa !6
  %3036 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 3
  %3037 = load i32, ptr %3036, align 4, !tbaa !6
  %3038 = getelementptr inbounds i8, ptr %3027, i64 12
  store i32 %3037, ptr %3038, align 4, !tbaa !6
  %3039 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 4
  %3040 = load i32, ptr %3039, align 4, !tbaa !6
  %3041 = getelementptr inbounds i8, ptr %3027, i64 16
  store i32 %3040, ptr %3041, align 4, !tbaa !6
  %3042 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 5
  %3043 = load i32, ptr %3042, align 4, !tbaa !6
  %3044 = getelementptr inbounds i8, ptr %3027, i64 20
  store i32 %3043, ptr %3044, align 4, !tbaa !6
  %3045 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 6
  %3046 = load i32, ptr %3045, align 4, !tbaa !6
  %3047 = getelementptr inbounds i8, ptr %3027, i64 24
  store i32 %3046, ptr %3047, align 4, !tbaa !6
  %3048 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 7
  %3049 = load i32, ptr %3048, align 4, !tbaa !6
  %3050 = getelementptr inbounds i8, ptr %3027, i64 28
  store i32 %3049, ptr %3050, align 4, !tbaa !6
  %3051 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 8
  %3052 = load i32, ptr %3051, align 4, !tbaa !6
  %3053 = getelementptr inbounds i8, ptr %3027, i64 32
  store i32 %3052, ptr %3053, align 4, !tbaa !6
  %3054 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 9
  %3055 = load i32, ptr %3054, align 4, !tbaa !6
  %3056 = getelementptr inbounds i8, ptr %3027, i64 36
  store i32 %3055, ptr %3056, align 4, !tbaa !6
  %3057 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 10
  %3058 = load i32, ptr %3057, align 4, !tbaa !6
  %3059 = getelementptr inbounds i8, ptr %3027, i64 40
  store i32 %3058, ptr %3059, align 4, !tbaa !6
  %3060 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 11
  %3061 = load i32, ptr %3060, align 4, !tbaa !6
  %3062 = getelementptr inbounds i8, ptr %3027, i64 44
  store i32 %3061, ptr %3062, align 4, !tbaa !6
  %3063 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 12
  %3064 = load i32, ptr %3063, align 4, !tbaa !6
  %3065 = getelementptr inbounds i8, ptr %3027, i64 48
  store i32 %3064, ptr %3065, align 4, !tbaa !6
  %3066 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 13
  %3067 = load i32, ptr %3066, align 4, !tbaa !6
  %3068 = getelementptr inbounds i8, ptr %3027, i64 52
  store i32 %3067, ptr %3068, align 4, !tbaa !6
  %3069 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 14
  %3070 = load i32, ptr %3069, align 4, !tbaa !6
  %3071 = getelementptr inbounds i8, ptr %3027, i64 56
  store i32 %3070, ptr %3071, align 4, !tbaa !6
  %3072 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 15
  %3073 = load i32, ptr %3072, align 4, !tbaa !6
  %3074 = getelementptr inbounds i8, ptr %3027, i64 60
  store i32 %3073, ptr %3074, align 4, !tbaa !6
  %3075 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 16
  %3076 = load i32, ptr %3075, align 4, !tbaa !6
  %3077 = getelementptr inbounds i8, ptr %3027, i64 64
  store i32 %3076, ptr %3077, align 4, !tbaa !6
  %3078 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 0, i64 17
  %3079 = load i32, ptr %3078, align 4, !tbaa !6
  %3080 = getelementptr inbounds i8, ptr %3027, i64 68
  store i32 %3079, ptr %3080, align 4, !tbaa !6
  %3081 = getelementptr inbounds i8, ptr %3026, i64 8
  %3082 = load ptr, ptr %3081, align 8, !tbaa !10
  %3083 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 0
  %3084 = load i32, ptr %3083, align 4, !tbaa !6
  store i32 %3084, ptr %3082, align 4, !tbaa !6
  %3085 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 1
  %3086 = load i32, ptr %3085, align 4, !tbaa !6
  %3087 = getelementptr inbounds i8, ptr %3082, i64 4
  store i32 %3086, ptr %3087, align 4, !tbaa !6
  %3088 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 2
  %3089 = load i32, ptr %3088, align 4, !tbaa !6
  %3090 = getelementptr inbounds i8, ptr %3082, i64 8
  store i32 %3089, ptr %3090, align 4, !tbaa !6
  %3091 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 3
  %3092 = load i32, ptr %3091, align 4, !tbaa !6
  %3093 = getelementptr inbounds i8, ptr %3082, i64 12
  store i32 %3092, ptr %3093, align 4, !tbaa !6
  %3094 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 4
  %3095 = load i32, ptr %3094, align 4, !tbaa !6
  %3096 = getelementptr inbounds i8, ptr %3082, i64 16
  store i32 %3095, ptr %3096, align 4, !tbaa !6
  %3097 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 5
  %3098 = load i32, ptr %3097, align 4, !tbaa !6
  %3099 = getelementptr inbounds i8, ptr %3082, i64 20
  store i32 %3098, ptr %3099, align 4, !tbaa !6
  %3100 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 6
  %3101 = load i32, ptr %3100, align 4, !tbaa !6
  %3102 = getelementptr inbounds i8, ptr %3082, i64 24
  store i32 %3101, ptr %3102, align 4, !tbaa !6
  %3103 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 7
  %3104 = load i32, ptr %3103, align 4, !tbaa !6
  %3105 = getelementptr inbounds i8, ptr %3082, i64 28
  store i32 %3104, ptr %3105, align 4, !tbaa !6
  %3106 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 8
  %3107 = load i32, ptr %3106, align 4, !tbaa !6
  %3108 = getelementptr inbounds i8, ptr %3082, i64 32
  store i32 %3107, ptr %3108, align 4, !tbaa !6
  %3109 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 9
  %3110 = load i32, ptr %3109, align 4, !tbaa !6
  %3111 = getelementptr inbounds i8, ptr %3082, i64 36
  store i32 %3110, ptr %3111, align 4, !tbaa !6
  %3112 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 10
  %3113 = load i32, ptr %3112, align 4, !tbaa !6
  %3114 = getelementptr inbounds i8, ptr %3082, i64 40
  store i32 %3113, ptr %3114, align 4, !tbaa !6
  %3115 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 11
  %3116 = load i32, ptr %3115, align 4, !tbaa !6
  %3117 = getelementptr inbounds i8, ptr %3082, i64 44
  store i32 %3116, ptr %3117, align 4, !tbaa !6
  %3118 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 12
  %3119 = load i32, ptr %3118, align 4, !tbaa !6
  %3120 = getelementptr inbounds i8, ptr %3082, i64 48
  store i32 %3119, ptr %3120, align 4, !tbaa !6
  %3121 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 13
  %3122 = load i32, ptr %3121, align 4, !tbaa !6
  %3123 = getelementptr inbounds i8, ptr %3082, i64 52
  store i32 %3122, ptr %3123, align 4, !tbaa !6
  %3124 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 14
  %3125 = load i32, ptr %3124, align 4, !tbaa !6
  %3126 = getelementptr inbounds i8, ptr %3082, i64 56
  store i32 %3125, ptr %3126, align 4, !tbaa !6
  %3127 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 15
  %3128 = load i32, ptr %3127, align 4, !tbaa !6
  %3129 = getelementptr inbounds i8, ptr %3082, i64 60
  store i32 %3128, ptr %3129, align 4, !tbaa !6
  %3130 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 16
  %3131 = load i32, ptr %3130, align 4, !tbaa !6
  %3132 = getelementptr inbounds i8, ptr %3082, i64 64
  store i32 %3131, ptr %3132, align 4, !tbaa !6
  %3133 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr @cofAC8x8_chroma, i64 0, i64 %3024, i64 1, i64 17
  %3134 = load i32, ptr %3133, align 4, !tbaa !6
  %3135 = getelementptr inbounds i8, ptr %3082, i64 68
  store i32 %3134, ptr %3135, align 4, !tbaa !6
  %3136 = getelementptr inbounds ptr, ptr %3022, i64 %3024
  %3137 = load ptr, ptr %3136, align 8, !tbaa !10
  %3138 = load ptr, ptr %3137, align 8, !tbaa !10
  %3139 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 0
  %3140 = load i32, ptr %3139, align 4, !tbaa !6
  store i32 %3140, ptr %3138, align 4, !tbaa !6
  %3141 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 1
  %3142 = load i32, ptr %3141, align 4, !tbaa !6
  %3143 = getelementptr inbounds i8, ptr %3138, i64 4
  store i32 %3142, ptr %3143, align 4, !tbaa !6
  %3144 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 2
  %3145 = load i32, ptr %3144, align 4, !tbaa !6
  %3146 = getelementptr inbounds i8, ptr %3138, i64 8
  store i32 %3145, ptr %3146, align 4, !tbaa !6
  %3147 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 3
  %3148 = load i32, ptr %3147, align 4, !tbaa !6
  %3149 = getelementptr inbounds i8, ptr %3138, i64 12
  store i32 %3148, ptr %3149, align 4, !tbaa !6
  %3150 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 4
  %3151 = load i32, ptr %3150, align 4, !tbaa !6
  %3152 = getelementptr inbounds i8, ptr %3138, i64 16
  store i32 %3151, ptr %3152, align 4, !tbaa !6
  %3153 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 5
  %3154 = load i32, ptr %3153, align 4, !tbaa !6
  %3155 = getelementptr inbounds i8, ptr %3138, i64 20
  store i32 %3154, ptr %3155, align 4, !tbaa !6
  %3156 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 6
  %3157 = load i32, ptr %3156, align 4, !tbaa !6
  %3158 = getelementptr inbounds i8, ptr %3138, i64 24
  store i32 %3157, ptr %3158, align 4, !tbaa !6
  %3159 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 7
  %3160 = load i32, ptr %3159, align 4, !tbaa !6
  %3161 = getelementptr inbounds i8, ptr %3138, i64 28
  store i32 %3160, ptr %3161, align 4, !tbaa !6
  %3162 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 8
  %3163 = load i32, ptr %3162, align 4, !tbaa !6
  %3164 = getelementptr inbounds i8, ptr %3138, i64 32
  store i32 %3163, ptr %3164, align 4, !tbaa !6
  %3165 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 9
  %3166 = load i32, ptr %3165, align 4, !tbaa !6
  %3167 = getelementptr inbounds i8, ptr %3138, i64 36
  store i32 %3166, ptr %3167, align 4, !tbaa !6
  %3168 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 10
  %3169 = load i32, ptr %3168, align 4, !tbaa !6
  %3170 = getelementptr inbounds i8, ptr %3138, i64 40
  store i32 %3169, ptr %3170, align 4, !tbaa !6
  %3171 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 11
  %3172 = load i32, ptr %3171, align 4, !tbaa !6
  %3173 = getelementptr inbounds i8, ptr %3138, i64 44
  store i32 %3172, ptr %3173, align 4, !tbaa !6
  %3174 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 12
  %3175 = load i32, ptr %3174, align 4, !tbaa !6
  %3176 = getelementptr inbounds i8, ptr %3138, i64 48
  store i32 %3175, ptr %3176, align 4, !tbaa !6
  %3177 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 13
  %3178 = load i32, ptr %3177, align 4, !tbaa !6
  %3179 = getelementptr inbounds i8, ptr %3138, i64 52
  store i32 %3178, ptr %3179, align 4, !tbaa !6
  %3180 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 14
  %3181 = load i32, ptr %3180, align 4, !tbaa !6
  %3182 = getelementptr inbounds i8, ptr %3138, i64 56
  store i32 %3181, ptr %3182, align 4, !tbaa !6
  %3183 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 15
  %3184 = load i32, ptr %3183, align 4, !tbaa !6
  %3185 = getelementptr inbounds i8, ptr %3138, i64 60
  store i32 %3184, ptr %3185, align 4, !tbaa !6
  %3186 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 16
  %3187 = load i32, ptr %3186, align 4, !tbaa !6
  %3188 = getelementptr inbounds i8, ptr %3138, i64 64
  store i32 %3187, ptr %3188, align 4, !tbaa !6
  %3189 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 0, i64 17
  %3190 = load i32, ptr %3189, align 4, !tbaa !6
  %3191 = getelementptr inbounds i8, ptr %3138, i64 68
  store i32 %3190, ptr %3191, align 4, !tbaa !6
  %3192 = getelementptr inbounds i8, ptr %3137, i64 8
  %3193 = load ptr, ptr %3192, align 8, !tbaa !10
  %3194 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 0
  %3195 = load i32, ptr %3194, align 4, !tbaa !6
  store i32 %3195, ptr %3193, align 4, !tbaa !6
  %3196 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 1
  %3197 = load i32, ptr %3196, align 4, !tbaa !6
  %3198 = getelementptr inbounds i8, ptr %3193, i64 4
  store i32 %3197, ptr %3198, align 4, !tbaa !6
  %3199 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 2
  %3200 = load i32, ptr %3199, align 4, !tbaa !6
  %3201 = getelementptr inbounds i8, ptr %3193, i64 8
  store i32 %3200, ptr %3201, align 4, !tbaa !6
  %3202 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 3
  %3203 = load i32, ptr %3202, align 4, !tbaa !6
  %3204 = getelementptr inbounds i8, ptr %3193, i64 12
  store i32 %3203, ptr %3204, align 4, !tbaa !6
  %3205 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 4
  %3206 = load i32, ptr %3205, align 4, !tbaa !6
  %3207 = getelementptr inbounds i8, ptr %3193, i64 16
  store i32 %3206, ptr %3207, align 4, !tbaa !6
  %3208 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 5
  %3209 = load i32, ptr %3208, align 4, !tbaa !6
  %3210 = getelementptr inbounds i8, ptr %3193, i64 20
  store i32 %3209, ptr %3210, align 4, !tbaa !6
  %3211 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 6
  %3212 = load i32, ptr %3211, align 4, !tbaa !6
  %3213 = getelementptr inbounds i8, ptr %3193, i64 24
  store i32 %3212, ptr %3213, align 4, !tbaa !6
  %3214 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 7
  %3215 = load i32, ptr %3214, align 4, !tbaa !6
  %3216 = getelementptr inbounds i8, ptr %3193, i64 28
  store i32 %3215, ptr %3216, align 4, !tbaa !6
  %3217 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 8
  %3218 = load i32, ptr %3217, align 4, !tbaa !6
  %3219 = getelementptr inbounds i8, ptr %3193, i64 32
  store i32 %3218, ptr %3219, align 4, !tbaa !6
  %3220 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 9
  %3221 = load i32, ptr %3220, align 4, !tbaa !6
  %3222 = getelementptr inbounds i8, ptr %3193, i64 36
  store i32 %3221, ptr %3222, align 4, !tbaa !6
  %3223 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 10
  %3224 = load i32, ptr %3223, align 4, !tbaa !6
  %3225 = getelementptr inbounds i8, ptr %3193, i64 40
  store i32 %3224, ptr %3225, align 4, !tbaa !6
  %3226 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 11
  %3227 = load i32, ptr %3226, align 4, !tbaa !6
  %3228 = getelementptr inbounds i8, ptr %3193, i64 44
  store i32 %3227, ptr %3228, align 4, !tbaa !6
  %3229 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 12
  %3230 = load i32, ptr %3229, align 4, !tbaa !6
  %3231 = getelementptr inbounds i8, ptr %3193, i64 48
  store i32 %3230, ptr %3231, align 4, !tbaa !6
  %3232 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 13
  %3233 = load i32, ptr %3232, align 4, !tbaa !6
  %3234 = getelementptr inbounds i8, ptr %3193, i64 52
  store i32 %3233, ptr %3234, align 4, !tbaa !6
  %3235 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 14
  %3236 = load i32, ptr %3235, align 4, !tbaa !6
  %3237 = getelementptr inbounds i8, ptr %3193, i64 56
  store i32 %3236, ptr %3237, align 4, !tbaa !6
  %3238 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 15
  %3239 = load i32, ptr %3238, align 4, !tbaa !6
  %3240 = getelementptr inbounds i8, ptr %3193, i64 60
  store i32 %3239, ptr %3240, align 4, !tbaa !6
  %3241 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 16
  %3242 = load i32, ptr %3241, align 4, !tbaa !6
  %3243 = getelementptr inbounds i8, ptr %3193, i64 64
  store i32 %3242, ptr %3243, align 4, !tbaa !6
  %3244 = getelementptr inbounds [4 x [2 x [18 x i32]]], ptr getelementptr inbounds (i8, ptr @cofAC8x8_chroma, i64 576), i64 0, i64 %3024, i64 1, i64 17
  %3245 = load i32, ptr %3244, align 4, !tbaa !6
  %3246 = getelementptr inbounds i8, ptr %3193, i64 68
  store i32 %3245, ptr %3246, align 4, !tbaa !6
  %3247 = add nuw nsw i64 %3024, 1
  %3248 = icmp eq i64 %3247, 4
  br i1 %3248, label %3249, label %3023

3249:                                             ; preds = %3023, %3010
  %3250 = sext i32 %2093 to i64
  %3251 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3252 = getelementptr inbounds i8, ptr %3251, i64 6424
  %3253 = load ptr, ptr %3252, align 8, !tbaa !39
  %3254 = getelementptr inbounds ptr, ptr %3253, i64 %141
  %3255 = load ptr, ptr %3254, align 8, !tbaa !10
  %3256 = getelementptr inbounds i16, ptr %3255, i64 %132
  store i16 %2090, ptr %3256, align 2
  %3257 = getelementptr inbounds i8, ptr %3256, i64 2
  store i16 %2089, ptr %3257, align 2
  %3258 = getelementptr inbounds i8, ptr %3256, i64 4
  store i16 %2088, ptr %3258, align 2
  %3259 = getelementptr inbounds i8, ptr %3256, i64 6
  store i16 %2087, ptr %3259, align 2
  %3260 = getelementptr inbounds i8, ptr %3256, i64 8
  store i16 %2086, ptr %3260, align 2
  %3261 = getelementptr inbounds i8, ptr %3256, i64 10
  store i16 %2085, ptr %3261, align 2
  %3262 = getelementptr inbounds i8, ptr %3256, i64 12
  store i16 %2084, ptr %3262, align 2
  %3263 = getelementptr inbounds i8, ptr %3256, i64 14
  store i16 %2083, ptr %3263, align 2
  %3264 = load ptr, ptr @img, align 8, !tbaa !10
  %3265 = getelementptr inbounds i8, ptr %3264, i64 12600
  %3266 = getelementptr inbounds [16 x [16 x i16]], ptr %3265, i64 0, i64 %139, i64 %131
  %3267 = getelementptr inbounds i8, ptr %3264, i64 7352
  %3268 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3267, i64 0, i64 %3250, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3266, ptr noundef nonnull align 8 dereferenceable(16) %3268, i64 16, i1 false)
  %3269 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3270 = getelementptr inbounds i8, ptr %3269, i64 6424
  %3271 = load ptr, ptr %3270, align 8, !tbaa !39
  %3272 = getelementptr ptr, ptr %3271, i64 %141
  %3273 = getelementptr i8, ptr %3272, i64 8
  %3274 = load ptr, ptr %3273, align 8, !tbaa !10
  %3275 = getelementptr inbounds i16, ptr %3274, i64 %132
  store i16 %2082, ptr %3275, align 2
  %3276 = getelementptr inbounds i8, ptr %3275, i64 2
  store i16 %2081, ptr %3276, align 2
  %3277 = getelementptr inbounds i8, ptr %3275, i64 4
  store i16 %2080, ptr %3277, align 2
  %3278 = getelementptr inbounds i8, ptr %3275, i64 6
  store i16 %2079, ptr %3278, align 2
  %3279 = getelementptr inbounds i8, ptr %3275, i64 8
  store i16 %2078, ptr %3279, align 2
  %3280 = getelementptr inbounds i8, ptr %3275, i64 10
  store i16 %2077, ptr %3280, align 2
  %3281 = getelementptr inbounds i8, ptr %3275, i64 12
  store i16 %2076, ptr %3281, align 2
  %3282 = getelementptr inbounds i8, ptr %3275, i64 14
  store i16 %2075, ptr %3282, align 2
  %3283 = load ptr, ptr @img, align 8, !tbaa !10
  %3284 = getelementptr inbounds i8, ptr %3283, i64 12600
  %3285 = or disjoint i64 %139, 1
  %3286 = getelementptr inbounds [16 x [16 x i16]], ptr %3284, i64 0, i64 %3285, i64 %131
  %3287 = getelementptr inbounds i8, ptr %3283, i64 7352
  %3288 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3287, i64 0, i64 %3250, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3286, ptr noundef nonnull align 8 dereferenceable(16) %3288, i64 16, i1 false)
  %3289 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3290 = getelementptr inbounds i8, ptr %3289, i64 6424
  %3291 = load ptr, ptr %3290, align 8, !tbaa !39
  %3292 = getelementptr ptr, ptr %3291, i64 %141
  %3293 = getelementptr i8, ptr %3292, i64 16
  %3294 = load ptr, ptr %3293, align 8, !tbaa !10
  %3295 = getelementptr inbounds i16, ptr %3294, i64 %132
  store i16 %2074, ptr %3295, align 2
  %3296 = getelementptr inbounds i8, ptr %3295, i64 2
  store i16 %2073, ptr %3296, align 2
  %3297 = getelementptr inbounds i8, ptr %3295, i64 4
  store i16 %2072, ptr %3297, align 2
  %3298 = getelementptr inbounds i8, ptr %3295, i64 6
  store i16 %2071, ptr %3298, align 2
  %3299 = getelementptr inbounds i8, ptr %3295, i64 8
  store i16 %2070, ptr %3299, align 2
  %3300 = getelementptr inbounds i8, ptr %3295, i64 10
  store i16 %2069, ptr %3300, align 2
  %3301 = getelementptr inbounds i8, ptr %3295, i64 12
  store i16 %2068, ptr %3301, align 2
  %3302 = getelementptr inbounds i8, ptr %3295, i64 14
  store i16 %2067, ptr %3302, align 2
  %3303 = load ptr, ptr @img, align 8, !tbaa !10
  %3304 = getelementptr inbounds i8, ptr %3303, i64 12600
  %3305 = or disjoint i64 %139, 2
  %3306 = getelementptr inbounds [16 x [16 x i16]], ptr %3304, i64 0, i64 %3305, i64 %131
  %3307 = getelementptr inbounds i8, ptr %3303, i64 7352
  %3308 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3307, i64 0, i64 %3250, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3306, ptr noundef nonnull align 8 dereferenceable(16) %3308, i64 16, i1 false)
  %3309 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3310 = getelementptr inbounds i8, ptr %3309, i64 6424
  %3311 = load ptr, ptr %3310, align 8, !tbaa !39
  %3312 = getelementptr ptr, ptr %3311, i64 %141
  %3313 = getelementptr i8, ptr %3312, i64 24
  %3314 = load ptr, ptr %3313, align 8, !tbaa !10
  %3315 = getelementptr inbounds i16, ptr %3314, i64 %132
  store i16 %2066, ptr %3315, align 2
  %3316 = getelementptr inbounds i8, ptr %3315, i64 2
  store i16 %2065, ptr %3316, align 2
  %3317 = getelementptr inbounds i8, ptr %3315, i64 4
  store i16 %2064, ptr %3317, align 2
  %3318 = getelementptr inbounds i8, ptr %3315, i64 6
  store i16 %2063, ptr %3318, align 2
  %3319 = getelementptr inbounds i8, ptr %3315, i64 8
  store i16 %2062, ptr %3319, align 2
  %3320 = getelementptr inbounds i8, ptr %3315, i64 10
  store i16 %2061, ptr %3320, align 2
  %3321 = getelementptr inbounds i8, ptr %3315, i64 12
  store i16 %2060, ptr %3321, align 2
  %3322 = getelementptr inbounds i8, ptr %3315, i64 14
  store i16 %2059, ptr %3322, align 2
  %3323 = load ptr, ptr @img, align 8, !tbaa !10
  %3324 = getelementptr inbounds i8, ptr %3323, i64 12600
  %3325 = or disjoint i64 %139, 3
  %3326 = getelementptr inbounds [16 x [16 x i16]], ptr %3324, i64 0, i64 %3325, i64 %131
  %3327 = getelementptr inbounds i8, ptr %3323, i64 7352
  %3328 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3327, i64 0, i64 %3250, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3326, ptr noundef nonnull align 8 dereferenceable(16) %3328, i64 16, i1 false)
  %3329 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3330 = getelementptr inbounds i8, ptr %3329, i64 6424
  %3331 = load ptr, ptr %3330, align 8, !tbaa !39
  %3332 = getelementptr ptr, ptr %3331, i64 %141
  %3333 = getelementptr i8, ptr %3332, i64 32
  %3334 = load ptr, ptr %3333, align 8, !tbaa !10
  %3335 = getelementptr inbounds i16, ptr %3334, i64 %132
  store i16 %2058, ptr %3335, align 2
  %3336 = getelementptr inbounds i8, ptr %3335, i64 2
  store i16 %2057, ptr %3336, align 2
  %3337 = getelementptr inbounds i8, ptr %3335, i64 4
  store i16 %2056, ptr %3337, align 2
  %3338 = getelementptr inbounds i8, ptr %3335, i64 6
  store i16 %2055, ptr %3338, align 2
  %3339 = getelementptr inbounds i8, ptr %3335, i64 8
  store i16 %2054, ptr %3339, align 2
  %3340 = getelementptr inbounds i8, ptr %3335, i64 10
  store i16 %2053, ptr %3340, align 2
  %3341 = getelementptr inbounds i8, ptr %3335, i64 12
  store i16 %2052, ptr %3341, align 2
  %3342 = getelementptr inbounds i8, ptr %3335, i64 14
  store i16 %2051, ptr %3342, align 2
  %3343 = load ptr, ptr @img, align 8, !tbaa !10
  %3344 = getelementptr inbounds i8, ptr %3343, i64 12600
  %3345 = or disjoint i64 %139, 4
  %3346 = getelementptr inbounds [16 x [16 x i16]], ptr %3344, i64 0, i64 %3345, i64 %131
  %3347 = getelementptr inbounds i8, ptr %3343, i64 7352
  %3348 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3347, i64 0, i64 %3250, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3346, ptr noundef nonnull align 8 dereferenceable(16) %3348, i64 16, i1 false)
  %3349 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3350 = getelementptr inbounds i8, ptr %3349, i64 6424
  %3351 = load ptr, ptr %3350, align 8, !tbaa !39
  %3352 = getelementptr ptr, ptr %3351, i64 %141
  %3353 = getelementptr i8, ptr %3352, i64 40
  %3354 = load ptr, ptr %3353, align 8, !tbaa !10
  %3355 = getelementptr inbounds i16, ptr %3354, i64 %132
  store i16 %2050, ptr %3355, align 2
  %3356 = getelementptr inbounds i8, ptr %3355, i64 2
  store i16 %2049, ptr %3356, align 2
  %3357 = getelementptr inbounds i8, ptr %3355, i64 4
  store i16 %2048, ptr %3357, align 2
  %3358 = getelementptr inbounds i8, ptr %3355, i64 6
  store i16 %2047, ptr %3358, align 2
  %3359 = getelementptr inbounds i8, ptr %3355, i64 8
  store i16 %2046, ptr %3359, align 2
  %3360 = getelementptr inbounds i8, ptr %3355, i64 10
  store i16 %2045, ptr %3360, align 2
  %3361 = getelementptr inbounds i8, ptr %3355, i64 12
  store i16 %2044, ptr %3361, align 2
  %3362 = getelementptr inbounds i8, ptr %3355, i64 14
  store i16 %2043, ptr %3362, align 2
  %3363 = load ptr, ptr @img, align 8, !tbaa !10
  %3364 = getelementptr inbounds i8, ptr %3363, i64 12600
  %3365 = or disjoint i64 %139, 5
  %3366 = getelementptr inbounds [16 x [16 x i16]], ptr %3364, i64 0, i64 %3365, i64 %131
  %3367 = getelementptr inbounds i8, ptr %3363, i64 7352
  %3368 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3367, i64 0, i64 %3250, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3366, ptr noundef nonnull align 8 dereferenceable(16) %3368, i64 16, i1 false)
  %3369 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3370 = getelementptr inbounds i8, ptr %3369, i64 6424
  %3371 = load ptr, ptr %3370, align 8, !tbaa !39
  %3372 = getelementptr ptr, ptr %3371, i64 %141
  %3373 = getelementptr i8, ptr %3372, i64 48
  %3374 = load ptr, ptr %3373, align 8, !tbaa !10
  %3375 = getelementptr inbounds i16, ptr %3374, i64 %132
  store i16 %2042, ptr %3375, align 2
  %3376 = getelementptr inbounds i8, ptr %3375, i64 2
  store i16 %2041, ptr %3376, align 2
  %3377 = getelementptr inbounds i8, ptr %3375, i64 4
  store i16 %2040, ptr %3377, align 2
  %3378 = getelementptr inbounds i8, ptr %3375, i64 6
  store i16 %2039, ptr %3378, align 2
  %3379 = getelementptr inbounds i8, ptr %3375, i64 8
  store i16 %2038, ptr %3379, align 2
  %3380 = getelementptr inbounds i8, ptr %3375, i64 10
  store i16 %2037, ptr %3380, align 2
  %3381 = getelementptr inbounds i8, ptr %3375, i64 12
  store i16 %2036, ptr %3381, align 2
  %3382 = getelementptr inbounds i8, ptr %3375, i64 14
  store i16 %2035, ptr %3382, align 2
  %3383 = load ptr, ptr @img, align 8, !tbaa !10
  %3384 = getelementptr inbounds i8, ptr %3383, i64 12600
  %3385 = or disjoint i64 %139, 6
  %3386 = getelementptr inbounds [16 x [16 x i16]], ptr %3384, i64 0, i64 %3385, i64 %131
  %3387 = getelementptr inbounds i8, ptr %3383, i64 7352
  %3388 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3387, i64 0, i64 %3250, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3386, ptr noundef nonnull align 8 dereferenceable(16) %3388, i64 16, i1 false)
  %3389 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3390 = getelementptr inbounds i8, ptr %3389, i64 6424
  %3391 = load ptr, ptr %3390, align 8, !tbaa !39
  %3392 = getelementptr ptr, ptr %3391, i64 %141
  %3393 = getelementptr i8, ptr %3392, i64 56
  %3394 = load ptr, ptr %3393, align 8, !tbaa !10
  %3395 = getelementptr inbounds i16, ptr %3394, i64 %132
  store i16 %2034, ptr %3395, align 2
  %3396 = getelementptr inbounds i8, ptr %3395, i64 2
  store i16 %2033, ptr %3396, align 2
  %3397 = getelementptr inbounds i8, ptr %3395, i64 4
  store i16 %2032, ptr %3397, align 2
  %3398 = getelementptr inbounds i8, ptr %3395, i64 6
  store i16 %2031, ptr %3398, align 2
  %3399 = getelementptr inbounds i8, ptr %3395, i64 8
  store i16 %2030, ptr %3399, align 2
  %3400 = getelementptr inbounds i8, ptr %3395, i64 10
  store i16 %2029, ptr %3400, align 2
  %3401 = getelementptr inbounds i8, ptr %3395, i64 12
  store i16 %2028, ptr %3401, align 2
  %3402 = getelementptr inbounds i8, ptr %3395, i64 14
  store i16 %2027, ptr %3402, align 2
  %3403 = load ptr, ptr @img, align 8, !tbaa !10
  %3404 = getelementptr inbounds i8, ptr %3403, i64 12600
  %3405 = or disjoint i64 %139, 7
  %3406 = getelementptr inbounds [16 x [16 x i16]], ptr %3404, i64 0, i64 %3405, i64 %131
  %3407 = getelementptr inbounds i8, ptr %3403, i64 7352
  %3408 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %3407, i64 0, i64 %3250, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3406, ptr noundef nonnull align 8 dereferenceable(16) %3408, i64 16, i1 false)
  %3409 = load ptr, ptr @img, align 8, !tbaa !10
  %3410 = getelementptr inbounds i8, ptr %3409, i64 90572
  %3411 = load i32, ptr %3410, align 4, !tbaa !37
  %3412 = icmp eq i32 %3411, 0
  br i1 %3412, label %3506, label %3413

3413:                                             ; preds = %3249, %3413
  %3414 = phi i64 [ %3504, %3413 ], [ 0, %3249 ]
  %3415 = trunc i64 %3414 to i32
  %3416 = shl i32 %3415, 2
  %3417 = and i32 %3416, 4
  %3418 = trunc i64 %3414 to i32
  %3419 = shl i32 %3418, 1
  %3420 = and i32 %3419, 4
  %3421 = add nsw i32 %3420, %24
  %3422 = add nsw i32 %3417, %21
  %3423 = sext i32 %3422 to i64
  %3424 = sext i32 %3421 to i64
  %3425 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3426 = getelementptr inbounds i8, ptr %3425, i64 6464
  %3427 = load ptr, ptr %3426, align 8, !tbaa !43
  %3428 = load ptr, ptr %3427, align 8, !tbaa !10
  %3429 = getelementptr inbounds ptr, ptr %3428, i64 %3424
  %3430 = load ptr, ptr %3429, align 8, !tbaa !10
  %3431 = getelementptr inbounds i16, ptr %3430, i64 %3423
  %3432 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 0, i64 %3414, i64 0
  %3433 = load i64, ptr %3432, align 4
  store i64 %3433, ptr %3431, align 2
  %3434 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3435 = getelementptr inbounds i8, ptr %3434, i64 6464
  %3436 = load ptr, ptr %3435, align 8, !tbaa !43
  %3437 = load ptr, ptr %3436, align 8, !tbaa !10
  %3438 = add nsw i64 %3424, 1
  %3439 = getelementptr inbounds ptr, ptr %3437, i64 %3438
  %3440 = load ptr, ptr %3439, align 8, !tbaa !10
  %3441 = getelementptr inbounds i16, ptr %3440, i64 %3423
  %3442 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 0, i64 %3414, i64 1
  %3443 = load i64, ptr %3442, align 4
  store i64 %3443, ptr %3441, align 2
  %3444 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3445 = getelementptr inbounds i8, ptr %3444, i64 6464
  %3446 = load ptr, ptr %3445, align 8, !tbaa !43
  %3447 = load ptr, ptr %3446, align 8, !tbaa !10
  %3448 = add nsw i64 %3424, 2
  %3449 = getelementptr inbounds ptr, ptr %3447, i64 %3448
  %3450 = load ptr, ptr %3449, align 8, !tbaa !10
  %3451 = getelementptr inbounds i16, ptr %3450, i64 %3423
  %3452 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 0, i64 %3414, i64 2
  %3453 = load i64, ptr %3452, align 4
  store i64 %3453, ptr %3451, align 2
  %3454 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3455 = getelementptr inbounds i8, ptr %3454, i64 6464
  %3456 = load ptr, ptr %3455, align 8, !tbaa !43
  %3457 = load ptr, ptr %3456, align 8, !tbaa !10
  %3458 = add nsw i64 %3424, 3
  %3459 = getelementptr inbounds ptr, ptr %3457, i64 %3458
  %3460 = load ptr, ptr %3459, align 8, !tbaa !10
  %3461 = getelementptr inbounds i16, ptr %3460, i64 %3423
  %3462 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 0, i64 %3414, i64 3
  %3463 = load i64, ptr %3462, align 4
  store i64 %3463, ptr %3461, align 2
  %3464 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3465 = getelementptr inbounds i8, ptr %3464, i64 6464
  %3466 = load ptr, ptr %3465, align 8, !tbaa !43
  %3467 = getelementptr inbounds i8, ptr %3466, i64 8
  %3468 = load ptr, ptr %3467, align 8, !tbaa !10
  %3469 = getelementptr inbounds ptr, ptr %3468, i64 %3424
  %3470 = load ptr, ptr %3469, align 8, !tbaa !10
  %3471 = getelementptr inbounds i16, ptr %3470, i64 %3423
  %3472 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 1, i64 %3414, i64 0
  %3473 = load i64, ptr %3472, align 4
  store i64 %3473, ptr %3471, align 2
  %3474 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3475 = getelementptr inbounds i8, ptr %3474, i64 6464
  %3476 = load ptr, ptr %3475, align 8, !tbaa !43
  %3477 = getelementptr inbounds i8, ptr %3476, i64 8
  %3478 = load ptr, ptr %3477, align 8, !tbaa !10
  %3479 = getelementptr inbounds ptr, ptr %3478, i64 %3438
  %3480 = load ptr, ptr %3479, align 8, !tbaa !10
  %3481 = getelementptr inbounds i16, ptr %3480, i64 %3423
  %3482 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 1, i64 %3414, i64 1
  %3483 = load i64, ptr %3482, align 4
  store i64 %3483, ptr %3481, align 2
  %3484 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3485 = getelementptr inbounds i8, ptr %3484, i64 6464
  %3486 = load ptr, ptr %3485, align 8, !tbaa !43
  %3487 = getelementptr inbounds i8, ptr %3486, i64 8
  %3488 = load ptr, ptr %3487, align 8, !tbaa !10
  %3489 = getelementptr inbounds ptr, ptr %3488, i64 %3448
  %3490 = load ptr, ptr %3489, align 8, !tbaa !10
  %3491 = getelementptr inbounds i16, ptr %3490, i64 %3423
  %3492 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 1, i64 %3414, i64 2
  %3493 = load i64, ptr %3492, align 4
  store i64 %3493, ptr %3491, align 2
  %3494 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %3495 = getelementptr inbounds i8, ptr %3494, i64 6464
  %3496 = load ptr, ptr %3495, align 8, !tbaa !43
  %3497 = getelementptr inbounds i8, ptr %3496, i64 8
  %3498 = load ptr, ptr %3497, align 8, !tbaa !10
  %3499 = getelementptr inbounds ptr, ptr %3498, i64 %3458
  %3500 = load ptr, ptr %3499, align 8, !tbaa !10
  %3501 = getelementptr inbounds i16, ptr %3500, i64 %3423
  %3502 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], ptr %13, i64 0, i64 1, i64 %3414, i64 3
  %3503 = load i64, ptr %3502, align 4
  store i64 %3503, ptr %3501, align 2
  %3504 = add nuw nsw i64 %3414, 1
  %3505 = icmp eq i64 %3504, 4
  br i1 %3505, label %3506, label %3413

3506:                                             ; preds = %3413, %2967, %3249, %2378
  %3507 = phi i32 [ %2091, %3249 ], [ %2379, %2378 ], [ %2519, %2967 ], [ %2091, %3413 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %3507
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @intrapred_luma8x8(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [25 x i32], align 4
  %7 = alloca [8 x %struct.pix_pos], align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #8
  %11 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 6424
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = and i32 %0, 15
  %15 = and i32 %1, 15
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %19 = add nsw i32 %14, -1
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %15, i32 noundef signext 1, ptr noundef nonnull %7) #8
  %20 = add nuw nsw i32 %15, 1
  %21 = getelementptr inbounds i8, ptr %7, i64 24
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %20, i32 noundef signext 1, ptr noundef nonnull %21) #8
  %22 = add nuw nsw i32 %15, 2
  %23 = getelementptr inbounds i8, ptr %7, i64 48
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %22, i32 noundef signext 1, ptr noundef nonnull %23) #8
  %24 = add nuw nsw i32 %15, 3
  %25 = getelementptr inbounds i8, ptr %7, i64 72
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %24, i32 noundef signext 1, ptr noundef nonnull %25) #8
  %26 = add nuw nsw i32 %15, 4
  %27 = getelementptr inbounds i8, ptr %7, i64 96
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %26, i32 noundef signext 1, ptr noundef nonnull %27) #8
  %28 = add nuw nsw i32 %15, 5
  %29 = getelementptr inbounds i8, ptr %7, i64 120
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %28, i32 noundef signext 1, ptr noundef nonnull %29) #8
  %30 = add nuw nsw i32 %15, 6
  %31 = getelementptr inbounds i8, ptr %7, i64 144
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %30, i32 noundef signext 1, ptr noundef nonnull %31) #8
  %32 = add nuw nsw i32 %15, 7
  %33 = getelementptr inbounds i8, ptr %7, i64 168
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %32, i32 noundef signext 1, ptr noundef nonnull %33) #8
  %34 = add nsw i32 %15, -1
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %14, i32 noundef signext %34, i32 noundef signext 1, ptr noundef nonnull %8) #8
  %35 = add nuw nsw i32 %14, 8
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %35, i32 noundef signext %34, i32 noundef signext 1, ptr noundef nonnull %9) #8
  call void @getNeighbour(i32 noundef signext %18, i32 noundef signext %19, i32 noundef signext %34, i32 noundef signext 1, ptr noundef nonnull %10) #8
  %36 = load i32, ptr %9, align 4, !tbaa !27
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds i8, ptr %6, i64 56
  %39 = getelementptr inbounds i8, ptr %6, i64 64
  br i1 %37, label %44, label %40

40:                                               ; preds = %5
  %41 = icmp ne i32 %14, 8
  %42 = icmp ne i32 %15, 8
  %43 = or i1 %41, %42
  br label %44

44:                                               ; preds = %40, %5
  %45 = phi i1 [ false, %5 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, ptr %9, align 4, !tbaa !27
  %47 = load ptr, ptr @input, align 8, !tbaa !10
  %48 = getelementptr inbounds i8, ptr %47, i64 220
  %49 = load i32, ptr %48, align 4, !tbaa !25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %179, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr @img, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 89192
  %54 = load i32, ptr %7, align 4, !tbaa !27
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %53, align 8, !tbaa !29
  %58 = getelementptr inbounds i8, ptr %7, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !30
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %57, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !6
  br label %63

63:                                               ; preds = %51, %56
  %64 = phi i32 [ %62, %56 ], [ 0, %51 ]
  %65 = and i32 %64, 1
  %66 = load i32, ptr %21, align 4, !tbaa !27
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %53, align 8, !tbaa !29
  %70 = getelementptr inbounds i8, ptr %7, i64 28
  %71 = load i32, ptr %70, align 4, !tbaa !30
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %69, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i32 [ %74, %68 ], [ 0, %63 ]
  %77 = and i32 %76, %65
  %78 = load i32, ptr %23, align 4, !tbaa !27
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %53, align 8, !tbaa !29
  %82 = getelementptr inbounds i8, ptr %7, i64 52
  %83 = load i32, ptr %82, align 4, !tbaa !30
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !6
  br label %87

87:                                               ; preds = %80, %75
  %88 = phi i32 [ %86, %80 ], [ 0, %75 ]
  %89 = and i32 %88, %77
  %90 = load i32, ptr %25, align 4, !tbaa !27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %53, align 8, !tbaa !29
  %94 = getelementptr inbounds i8, ptr %7, i64 76
  %95 = load i32, ptr %94, align 4, !tbaa !30
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %93, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !6
  br label %99

99:                                               ; preds = %92, %87
  %100 = phi i32 [ %98, %92 ], [ 0, %87 ]
  %101 = and i32 %100, %89
  %102 = load i32, ptr %27, align 4, !tbaa !27
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %53, align 8, !tbaa !29
  %106 = getelementptr inbounds i8, ptr %7, i64 100
  %107 = load i32, ptr %106, align 4, !tbaa !30
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %105, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !6
  br label %111

111:                                              ; preds = %104, %99
  %112 = phi i32 [ %110, %104 ], [ 0, %99 ]
  %113 = and i32 %112, %101
  %114 = load i32, ptr %29, align 4, !tbaa !27
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %53, align 8, !tbaa !29
  %118 = getelementptr inbounds i8, ptr %7, i64 124
  %119 = load i32, ptr %118, align 4, !tbaa !30
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %117, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !6
  br label %123

123:                                              ; preds = %116, %111
  %124 = phi i32 [ %122, %116 ], [ 0, %111 ]
  %125 = and i32 %124, %113
  %126 = load i32, ptr %31, align 4, !tbaa !27
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %53, align 8, !tbaa !29
  %130 = getelementptr inbounds i8, ptr %7, i64 148
  %131 = load i32, ptr %130, align 4, !tbaa !30
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %129, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !6
  br label %135

135:                                              ; preds = %128, %123
  %136 = phi i32 [ %134, %128 ], [ 0, %123 ]
  %137 = and i32 %136, %125
  %138 = load i32, ptr %33, align 4, !tbaa !27
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %53, align 8, !tbaa !29
  %142 = getelementptr inbounds i8, ptr %7, i64 172
  %143 = load i32, ptr %142, align 4, !tbaa !30
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %141, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !6
  br label %147

147:                                              ; preds = %140, %135
  %148 = phi i32 [ %146, %140 ], [ 0, %135 ]
  %149 = and i32 %148, %137
  %150 = load i32, ptr %8, align 4, !tbaa !27
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load ptr, ptr %53, align 8, !tbaa !29
  %154 = getelementptr inbounds i8, ptr %8, i64 4
  %155 = load i32, ptr %154, align 4, !tbaa !30
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %153, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !6
  br label %159

159:                                              ; preds = %147, %152
  %160 = phi i32 [ %158, %152 ], [ 0, %147 ]
  br i1 %45, label %161, label %168

161:                                              ; preds = %159
  %162 = load ptr, ptr %53, align 8, !tbaa !29
  %163 = getelementptr inbounds i8, ptr %9, i64 4
  %164 = load i32, ptr %163, align 4, !tbaa !30
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %162, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !6
  br label %168

168:                                              ; preds = %159, %161
  %169 = phi i32 [ %167, %161 ], [ 0, %159 ]
  %170 = load i32, ptr %10, align 4, !tbaa !27
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %53, align 8, !tbaa !29
  %174 = getelementptr inbounds i8, ptr %10, i64 4
  %175 = load i32, ptr %174, align 4, !tbaa !30
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %173, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !6
  br label %183

179:                                              ; preds = %44
  %180 = load i32, ptr %7, align 4, !tbaa !27
  %181 = load i32, ptr %8, align 4, !tbaa !27
  %182 = load i32, ptr %10, align 4, !tbaa !27
  br label %183

183:                                              ; preds = %172, %168, %179
  %184 = phi i32 [ %181, %179 ], [ %160, %168 ], [ %160, %172 ]
  %185 = phi i32 [ %180, %179 ], [ %149, %168 ], [ %149, %172 ]
  %186 = phi i32 [ %182, %179 ], [ 0, %168 ], [ %178, %172 ]
  %187 = phi i32 [ %46, %179 ], [ %169, %168 ], [ %169, %172 ]
  store i32 %185, ptr %2, align 4, !tbaa !6
  store i32 %184, ptr %3, align 4, !tbaa !6
  %188 = icmp ne i32 %184, 0
  %189 = icmp ne i32 %185, 0
  %190 = select i1 %188, i1 %189, i1 false
  %191 = icmp ne i32 %186, 0
  %192 = select i1 %190, i1 %191, i1 false
  %193 = zext i1 %192 to i32
  store i32 %193, ptr %4, align 4, !tbaa !6
  br i1 %188, label %194, label %227

194:                                              ; preds = %183
  %195 = getelementptr inbounds i8, ptr %8, i64 20
  %196 = load i32, ptr %195, align 4, !tbaa !31
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %13, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !10
  %200 = getelementptr inbounds i8, ptr %8, i64 16
  %201 = load i32, ptr %200, align 4, !tbaa !32
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, ptr %199, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !35
  %205 = zext i16 %204 to i32
  %206 = getelementptr i8, ptr %203, i64 2
  %207 = load i16, ptr %206, align 2, !tbaa !35
  %208 = zext i16 %207 to i32
  %209 = getelementptr i8, ptr %203, i64 4
  %210 = load i16, ptr %209, align 2, !tbaa !35
  %211 = zext i16 %210 to i32
  %212 = getelementptr i8, ptr %203, i64 6
  %213 = load i16, ptr %212, align 2, !tbaa !35
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %203, i64 8
  %216 = load i16, ptr %215, align 2, !tbaa !35
  %217 = zext i16 %216 to i32
  %218 = getelementptr i8, ptr %203, i64 10
  %219 = load i16, ptr %218, align 2, !tbaa !35
  %220 = zext i16 %219 to i32
  %221 = getelementptr i8, ptr %203, i64 12
  %222 = load i16, ptr %221, align 2, !tbaa !35
  %223 = zext i16 %222 to i32
  %224 = getelementptr i8, ptr %203, i64 14
  %225 = load i16, ptr %224, align 2, !tbaa !35
  %226 = zext i16 %225 to i32
  br label %231

227:                                              ; preds = %183
  %228 = load ptr, ptr @img, align 8, !tbaa !10
  %229 = getelementptr inbounds i8, ptr %228, i64 90528
  %230 = load i32, ptr %229, align 8, !tbaa !49
  br label %231

231:                                              ; preds = %227, %194
  %232 = phi i32 [ %205, %194 ], [ %230, %227 ]
  %233 = phi i32 [ %208, %194 ], [ %230, %227 ]
  %234 = phi i32 [ %211, %194 ], [ %230, %227 ]
  %235 = phi i32 [ %214, %194 ], [ %230, %227 ]
  %236 = phi i32 [ %217, %194 ], [ %230, %227 ]
  %237 = phi i32 [ %220, %194 ], [ %230, %227 ]
  %238 = phi i32 [ %223, %194 ], [ %230, %227 ]
  %239 = phi i32 [ %226, %194 ], [ %230, %227 ]
  %240 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 %232, ptr %240, align 4
  %241 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %233, ptr %241, align 4
  %242 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 %234, ptr %242, align 4
  %243 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 %235, ptr %243, align 4
  %244 = getelementptr inbounds i8, ptr %6, i64 20
  store i32 %236, ptr %244, align 4
  %245 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 %237, ptr %245, align 4
  %246 = getelementptr inbounds i8, ptr %6, i64 28
  store i32 %238, ptr %246, align 4
  %247 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 %239, ptr %247, align 4
  %248 = icmp eq i32 %187, 0
  br i1 %248, label %284, label %249

249:                                              ; preds = %231
  %250 = getelementptr inbounds i8, ptr %9, i64 20
  %251 = load i32, ptr %250, align 4, !tbaa !31
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %13, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !10
  %255 = getelementptr inbounds i8, ptr %9, i64 16
  %256 = load i32, ptr %255, align 4, !tbaa !32
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !35
  %260 = zext i16 %259 to i32
  %261 = getelementptr i8, ptr %258, i64 2
  %262 = load i16, ptr %261, align 2, !tbaa !35
  %263 = zext i16 %262 to i32
  %264 = getelementptr i8, ptr %258, i64 4
  %265 = load i16, ptr %264, align 2, !tbaa !35
  %266 = zext i16 %265 to i32
  %267 = getelementptr i8, ptr %258, i64 6
  %268 = load i16, ptr %267, align 2, !tbaa !35
  %269 = zext i16 %268 to i32
  %270 = getelementptr i8, ptr %258, i64 8
  %271 = load i16, ptr %270, align 2, !tbaa !35
  %272 = zext i16 %271 to i32
  %273 = getelementptr i8, ptr %258, i64 10
  %274 = load i16, ptr %273, align 2, !tbaa !35
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds i8, ptr %6, i64 56
  store i32 %275, ptr %276, align 4, !tbaa !6
  %277 = getelementptr i8, ptr %258, i64 12
  %278 = load i16, ptr %277, align 2, !tbaa !35
  %279 = zext i16 %278 to i32
  %280 = getelementptr inbounds i8, ptr %6, i64 60
  store i32 %279, ptr %280, align 4, !tbaa !6
  %281 = getelementptr i8, ptr %258, i64 14
  %282 = load i16, ptr %281, align 2, !tbaa !35
  %283 = zext i16 %282 to i32
  br label %287

284:                                              ; preds = %231
  %285 = getelementptr inbounds i8, ptr %6, i64 64
  store i32 %239, ptr %285, align 4, !tbaa !6
  %286 = getelementptr inbounds i8, ptr %6, i64 60
  store i32 %239, ptr %286, align 4, !tbaa !6
  br label %287

287:                                              ; preds = %284, %249
  %288 = phi ptr [ %38, %284 ], [ %39, %249 ]
  %289 = phi i32 [ %239, %284 ], [ %283, %249 ]
  %290 = phi i32 [ %239, %284 ], [ %272, %249 ]
  %291 = phi i32 [ %239, %284 ], [ %269, %249 ]
  %292 = phi i32 [ %239, %284 ], [ %266, %249 ]
  %293 = phi i32 [ %239, %284 ], [ %263, %249 ]
  %294 = phi i32 [ %239, %284 ], [ %260, %249 ]
  store i32 %289, ptr %288, align 4, !tbaa !6
  %295 = getelementptr inbounds i8, ptr %6, i64 52
  store i32 %290, ptr %295, align 4
  %296 = getelementptr inbounds i8, ptr %6, i64 48
  store i32 %291, ptr %296, align 4
  %297 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %292, ptr %297, align 4
  %298 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 %293, ptr %298, align 4
  %299 = getelementptr inbounds i8, ptr %6, i64 36
  store i32 %294, ptr %299, align 4
  br i1 %189, label %300, label %389

300:                                              ; preds = %287
  %301 = getelementptr inbounds i8, ptr %7, i64 20
  %302 = load i32, ptr %301, align 4, !tbaa !31
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %13, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !10
  %306 = getelementptr inbounds i8, ptr %7, i64 16
  %307 = load i32, ptr %306, align 4, !tbaa !32
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i16, ptr %305, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !35
  %311 = zext i16 %310 to i32
  %312 = getelementptr inbounds i8, ptr %7, i64 44
  %313 = load i32, ptr %312, align 4, !tbaa !31
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %13, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !10
  %317 = getelementptr inbounds i8, ptr %7, i64 40
  %318 = load i32, ptr %317, align 4, !tbaa !32
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i16, ptr %316, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !35
  %322 = zext i16 %321 to i32
  %323 = getelementptr inbounds i8, ptr %7, i64 68
  %324 = load i32, ptr %323, align 4, !tbaa !31
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds ptr, ptr %13, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !10
  %328 = getelementptr inbounds i8, ptr %7, i64 64
  %329 = load i32, ptr %328, align 4, !tbaa !32
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i16, ptr %327, i64 %330
  %332 = load i16, ptr %331, align 2, !tbaa !35
  %333 = zext i16 %332 to i32
  %334 = getelementptr inbounds i8, ptr %7, i64 92
  %335 = load i32, ptr %334, align 4, !tbaa !31
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %13, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !10
  %339 = getelementptr inbounds i8, ptr %7, i64 88
  %340 = load i32, ptr %339, align 4, !tbaa !32
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, ptr %338, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !35
  %344 = zext i16 %343 to i32
  %345 = getelementptr inbounds i8, ptr %7, i64 116
  %346 = load i32, ptr %345, align 4, !tbaa !31
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %13, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !10
  %350 = getelementptr inbounds i8, ptr %7, i64 112
  %351 = load i32, ptr %350, align 4, !tbaa !32
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i16, ptr %349, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !35
  %355 = zext i16 %354 to i32
  %356 = getelementptr inbounds i8, ptr %7, i64 140
  %357 = load i32, ptr %356, align 4, !tbaa !31
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds ptr, ptr %13, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !10
  %361 = getelementptr inbounds i8, ptr %7, i64 136
  %362 = load i32, ptr %361, align 4, !tbaa !32
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i16, ptr %360, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !35
  %366 = zext i16 %365 to i32
  %367 = getelementptr inbounds i8, ptr %7, i64 164
  %368 = load i32, ptr %367, align 4, !tbaa !31
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds ptr, ptr %13, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !10
  %372 = getelementptr inbounds i8, ptr %7, i64 160
  %373 = load i32, ptr %372, align 4, !tbaa !32
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i16, ptr %371, i64 %374
  %376 = load i16, ptr %375, align 2, !tbaa !35
  %377 = zext i16 %376 to i32
  %378 = getelementptr inbounds i8, ptr %7, i64 188
  %379 = load i32, ptr %378, align 4, !tbaa !31
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds ptr, ptr %13, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !10
  %383 = getelementptr inbounds i8, ptr %7, i64 184
  %384 = load i32, ptr %383, align 4, !tbaa !32
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i16, ptr %382, i64 %385
  %387 = load i16, ptr %386, align 2, !tbaa !35
  %388 = zext i16 %387 to i32
  br label %393

389:                                              ; preds = %287
  %390 = load ptr, ptr @img, align 8, !tbaa !10
  %391 = getelementptr inbounds i8, ptr %390, i64 90528
  %392 = load i32, ptr %391, align 8, !tbaa !49
  br label %393

393:                                              ; preds = %389, %300
  %394 = phi i32 [ %311, %300 ], [ %392, %389 ]
  %395 = phi i32 [ %322, %300 ], [ %392, %389 ]
  %396 = phi i32 [ %333, %300 ], [ %392, %389 ]
  %397 = phi i32 [ %344, %300 ], [ %392, %389 ]
  %398 = phi i32 [ %355, %300 ], [ %392, %389 ]
  %399 = phi i32 [ %366, %300 ], [ %392, %389 ]
  %400 = phi i32 [ %377, %300 ], [ %392, %389 ]
  %401 = phi i32 [ %388, %300 ], [ %392, %389 ]
  %402 = getelementptr inbounds i8, ptr %6, i64 68
  store i32 %394, ptr %402, align 4
  %403 = getelementptr inbounds i8, ptr %6, i64 72
  store i32 %395, ptr %403, align 4
  %404 = getelementptr inbounds i8, ptr %6, i64 76
  store i32 %396, ptr %404, align 4
  %405 = getelementptr inbounds i8, ptr %6, i64 80
  store i32 %397, ptr %405, align 4
  %406 = getelementptr inbounds i8, ptr %6, i64 84
  store i32 %398, ptr %406, align 4
  %407 = getelementptr inbounds i8, ptr %6, i64 88
  store i32 %399, ptr %407, align 4
  %408 = getelementptr inbounds i8, ptr %6, i64 92
  store i32 %400, ptr %408, align 4
  %409 = getelementptr inbounds i8, ptr %6, i64 96
  store i32 %401, ptr %409, align 4
  br i1 %191, label %410, label %423

410:                                              ; preds = %393
  %411 = getelementptr inbounds i8, ptr %10, i64 20
  %412 = load i32, ptr %411, align 4, !tbaa !31
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds ptr, ptr %13, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !10
  %416 = getelementptr inbounds i8, ptr %10, i64 16
  %417 = load i32, ptr %416, align 4, !tbaa !32
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i16, ptr %415, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !35
  %421 = zext i16 %420 to i32
  %422 = load ptr, ptr @img, align 8, !tbaa !10
  br label %427

423:                                              ; preds = %393
  %424 = load ptr, ptr @img, align 8, !tbaa !10
  %425 = getelementptr inbounds i8, ptr %424, i64 90528
  %426 = load i32, ptr %425, align 8, !tbaa !49
  br label %427

427:                                              ; preds = %423, %410
  %428 = phi ptr [ %424, %423 ], [ %422, %410 ]
  %429 = phi i32 [ %426, %423 ], [ %421, %410 ]
  store i32 %429, ptr %6, align 4, !tbaa !6
  %430 = getelementptr inbounds i8, ptr %428, i64 7352
  store i16 -1, ptr %430, align 8, !tbaa !35
  %431 = getelementptr inbounds i8, ptr %428, i64 7480
  store i16 -1, ptr %431, align 8, !tbaa !35
  %432 = getelementptr inbounds i8, ptr %428, i64 7608
  store i16 -1, ptr %432, align 8, !tbaa !35
  %433 = getelementptr inbounds i8, ptr %428, i64 7736
  store i16 -1, ptr %433, align 8, !tbaa !35
  %434 = getelementptr inbounds i8, ptr %428, i64 7864
  store i16 -1, ptr %434, align 8, !tbaa !35
  %435 = getelementptr inbounds i8, ptr %428, i64 7992
  store i16 -1, ptr %435, align 8, !tbaa !35
  %436 = getelementptr inbounds i8, ptr %428, i64 8120
  store i16 -1, ptr %436, align 8, !tbaa !35
  %437 = getelementptr inbounds i8, ptr %428, i64 8248
  store i16 -1, ptr %437, align 8, !tbaa !35
  %438 = getelementptr inbounds i8, ptr %428, i64 8376
  store i16 -1, ptr %438, align 8, !tbaa !35
  call void @LowPassForIntra8x8Pred(ptr noundef nonnull %6, i32 noundef signext %186, i32 noundef signext %184, i32 noundef signext %185)
  br i1 %190, label %439, label %473

439:                                              ; preds = %427
  %440 = load i32, ptr %240, align 4, !tbaa !6
  %441 = load i32, ptr %241, align 4, !tbaa !6
  %442 = load i32, ptr %242, align 4, !tbaa !6
  %443 = load i32, ptr %243, align 4, !tbaa !6
  %444 = load i32, ptr %244, align 4, !tbaa !6
  %445 = load i32, ptr %245, align 4, !tbaa !6
  %446 = load i32, ptr %246, align 4, !tbaa !6
  %447 = load i32, ptr %247, align 4, !tbaa !6
  %448 = load i32, ptr %402, align 4, !tbaa !6
  %449 = load i32, ptr %403, align 4, !tbaa !6
  %450 = load i32, ptr %404, align 4, !tbaa !6
  %451 = load i32, ptr %405, align 4, !tbaa !6
  %452 = load i32, ptr %406, align 4, !tbaa !6
  %453 = load i32, ptr %407, align 4, !tbaa !6
  %454 = load i32, ptr %408, align 4, !tbaa !6
  %455 = load i32, ptr %409, align 4, !tbaa !6
  %456 = add i32 %440, 8
  %457 = add i32 %456, %441
  %458 = add i32 %457, %442
  %459 = add i32 %458, %443
  %460 = add i32 %459, %444
  %461 = add i32 %460, %445
  %462 = add i32 %461, %446
  %463 = add i32 %462, %447
  %464 = add i32 %463, %448
  %465 = add i32 %464, %449
  %466 = add i32 %465, %450
  %467 = add i32 %466, %451
  %468 = add i32 %467, %452
  %469 = add i32 %468, %453
  %470 = add i32 %469, %454
  %471 = add i32 %470, %455
  %472 = ashr i32 %471, 4
  br label %517

473:                                              ; preds = %427
  %474 = icmp eq i32 %184, 0
  %475 = select i1 %474, i1 %189, i1 false
  br i1 %475, label %476, label %494

476:                                              ; preds = %473
  %477 = load i32, ptr %402, align 4, !tbaa !6
  %478 = load i32, ptr %403, align 4, !tbaa !6
  %479 = load i32, ptr %404, align 4, !tbaa !6
  %480 = load i32, ptr %405, align 4, !tbaa !6
  %481 = load i32, ptr %406, align 4, !tbaa !6
  %482 = load i32, ptr %407, align 4, !tbaa !6
  %483 = load i32, ptr %408, align 4, !tbaa !6
  %484 = load i32, ptr %409, align 4, !tbaa !6
  %485 = add i32 %477, 4
  %486 = add i32 %485, %478
  %487 = add i32 %486, %479
  %488 = add i32 %487, %480
  %489 = add i32 %488, %481
  %490 = add i32 %489, %482
  %491 = add i32 %490, %483
  %492 = add i32 %491, %484
  %493 = ashr i32 %492, 3
  br label %517

494:                                              ; preds = %473
  %495 = select i1 %474, i1 true, i1 %189
  br i1 %495, label %514, label %496

496:                                              ; preds = %494
  %497 = load i32, ptr %240, align 4, !tbaa !6
  %498 = load i32, ptr %241, align 4, !tbaa !6
  %499 = load i32, ptr %242, align 4, !tbaa !6
  %500 = load i32, ptr %243, align 4, !tbaa !6
  %501 = load i32, ptr %244, align 4, !tbaa !6
  %502 = load i32, ptr %245, align 4, !tbaa !6
  %503 = load i32, ptr %246, align 4, !tbaa !6
  %504 = load i32, ptr %247, align 4, !tbaa !6
  %505 = add i32 %497, 4
  %506 = add i32 %505, %498
  %507 = add i32 %506, %499
  %508 = add i32 %507, %500
  %509 = add i32 %508, %501
  %510 = add i32 %509, %502
  %511 = add i32 %510, %503
  %512 = add i32 %511, %504
  %513 = ashr i32 %512, 3
  br label %517

514:                                              ; preds = %494
  %515 = getelementptr inbounds i8, ptr %428, i64 90528
  %516 = load i32, ptr %515, align 8, !tbaa !49
  br label %517

517:                                              ; preds = %476, %514, %496, %439
  %518 = phi i32 [ %472, %439 ], [ %493, %476 ], [ %516, %514 ], [ %513, %496 ]
  %519 = trunc i32 %518 to i16
  %520 = getelementptr inbounds i8, ptr %428, i64 7608
  store i16 %519, ptr %520, align 2, !tbaa !35
  %521 = getelementptr inbounds i8, ptr %428, i64 7624
  store i16 %519, ptr %521, align 2, !tbaa !35
  %522 = getelementptr inbounds i8, ptr %428, i64 7640
  store i16 %519, ptr %522, align 2, !tbaa !35
  %523 = getelementptr inbounds i8, ptr %428, i64 7656
  store i16 %519, ptr %523, align 2, !tbaa !35
  %524 = getelementptr inbounds i8, ptr %428, i64 7672
  store i16 %519, ptr %524, align 2, !tbaa !35
  %525 = getelementptr inbounds i8, ptr %428, i64 7688
  store i16 %519, ptr %525, align 2, !tbaa !35
  %526 = getelementptr inbounds i8, ptr %428, i64 7704
  store i16 %519, ptr %526, align 2, !tbaa !35
  %527 = getelementptr inbounds i8, ptr %428, i64 7720
  store i16 %519, ptr %527, align 2, !tbaa !35
  %528 = getelementptr inbounds i8, ptr %428, i64 7610
  store i16 %519, ptr %528, align 2, !tbaa !35
  %529 = getelementptr inbounds i8, ptr %428, i64 7626
  store i16 %519, ptr %529, align 2, !tbaa !35
  %530 = getelementptr inbounds i8, ptr %428, i64 7642
  store i16 %519, ptr %530, align 2, !tbaa !35
  %531 = getelementptr inbounds i8, ptr %428, i64 7658
  store i16 %519, ptr %531, align 2, !tbaa !35
  %532 = getelementptr inbounds i8, ptr %428, i64 7674
  store i16 %519, ptr %532, align 2, !tbaa !35
  %533 = getelementptr inbounds i8, ptr %428, i64 7690
  store i16 %519, ptr %533, align 2, !tbaa !35
  %534 = getelementptr inbounds i8, ptr %428, i64 7706
  store i16 %519, ptr %534, align 2, !tbaa !35
  %535 = getelementptr inbounds i8, ptr %428, i64 7722
  store i16 %519, ptr %535, align 2, !tbaa !35
  %536 = getelementptr inbounds i8, ptr %428, i64 7612
  store i16 %519, ptr %536, align 2, !tbaa !35
  %537 = getelementptr inbounds i8, ptr %428, i64 7628
  store i16 %519, ptr %537, align 2, !tbaa !35
  %538 = getelementptr inbounds i8, ptr %428, i64 7644
  store i16 %519, ptr %538, align 2, !tbaa !35
  %539 = getelementptr inbounds i8, ptr %428, i64 7660
  store i16 %519, ptr %539, align 2, !tbaa !35
  %540 = getelementptr inbounds i8, ptr %428, i64 7676
  store i16 %519, ptr %540, align 2, !tbaa !35
  %541 = getelementptr inbounds i8, ptr %428, i64 7692
  store i16 %519, ptr %541, align 2, !tbaa !35
  %542 = getelementptr inbounds i8, ptr %428, i64 7708
  store i16 %519, ptr %542, align 2, !tbaa !35
  %543 = getelementptr inbounds i8, ptr %428, i64 7724
  store i16 %519, ptr %543, align 2, !tbaa !35
  %544 = getelementptr inbounds i8, ptr %428, i64 7614
  store i16 %519, ptr %544, align 2, !tbaa !35
  %545 = getelementptr inbounds i8, ptr %428, i64 7630
  store i16 %519, ptr %545, align 2, !tbaa !35
  %546 = getelementptr inbounds i8, ptr %428, i64 7646
  store i16 %519, ptr %546, align 2, !tbaa !35
  %547 = getelementptr inbounds i8, ptr %428, i64 7662
  store i16 %519, ptr %547, align 2, !tbaa !35
  %548 = getelementptr inbounds i8, ptr %428, i64 7678
  store i16 %519, ptr %548, align 2, !tbaa !35
  %549 = getelementptr inbounds i8, ptr %428, i64 7694
  store i16 %519, ptr %549, align 2, !tbaa !35
  %550 = getelementptr inbounds i8, ptr %428, i64 7710
  store i16 %519, ptr %550, align 2, !tbaa !35
  %551 = getelementptr inbounds i8, ptr %428, i64 7726
  store i16 %519, ptr %551, align 2, !tbaa !35
  %552 = getelementptr inbounds i8, ptr %428, i64 7616
  store i16 %519, ptr %552, align 2, !tbaa !35
  %553 = getelementptr inbounds i8, ptr %428, i64 7632
  store i16 %519, ptr %553, align 2, !tbaa !35
  %554 = getelementptr inbounds i8, ptr %428, i64 7648
  store i16 %519, ptr %554, align 2, !tbaa !35
  %555 = getelementptr inbounds i8, ptr %428, i64 7664
  store i16 %519, ptr %555, align 2, !tbaa !35
  %556 = getelementptr inbounds i8, ptr %428, i64 7680
  store i16 %519, ptr %556, align 2, !tbaa !35
  %557 = getelementptr inbounds i8, ptr %428, i64 7696
  store i16 %519, ptr %557, align 2, !tbaa !35
  %558 = getelementptr inbounds i8, ptr %428, i64 7712
  store i16 %519, ptr %558, align 2, !tbaa !35
  %559 = getelementptr inbounds i8, ptr %428, i64 7728
  store i16 %519, ptr %559, align 2, !tbaa !35
  %560 = getelementptr inbounds i8, ptr %428, i64 7618
  store i16 %519, ptr %560, align 2, !tbaa !35
  %561 = getelementptr inbounds i8, ptr %428, i64 7634
  store i16 %519, ptr %561, align 2, !tbaa !35
  %562 = getelementptr inbounds i8, ptr %428, i64 7650
  store i16 %519, ptr %562, align 2, !tbaa !35
  %563 = getelementptr inbounds i8, ptr %428, i64 7666
  store i16 %519, ptr %563, align 2, !tbaa !35
  %564 = getelementptr inbounds i8, ptr %428, i64 7682
  store i16 %519, ptr %564, align 2, !tbaa !35
  %565 = getelementptr inbounds i8, ptr %428, i64 7698
  store i16 %519, ptr %565, align 2, !tbaa !35
  %566 = getelementptr inbounds i8, ptr %428, i64 7714
  store i16 %519, ptr %566, align 2, !tbaa !35
  %567 = getelementptr inbounds i8, ptr %428, i64 7730
  store i16 %519, ptr %567, align 2, !tbaa !35
  %568 = getelementptr inbounds i8, ptr %428, i64 7620
  store i16 %519, ptr %568, align 2, !tbaa !35
  %569 = getelementptr inbounds i8, ptr %428, i64 7636
  store i16 %519, ptr %569, align 2, !tbaa !35
  %570 = getelementptr inbounds i8, ptr %428, i64 7652
  store i16 %519, ptr %570, align 2, !tbaa !35
  %571 = getelementptr inbounds i8, ptr %428, i64 7668
  store i16 %519, ptr %571, align 2, !tbaa !35
  %572 = getelementptr inbounds i8, ptr %428, i64 7684
  store i16 %519, ptr %572, align 2, !tbaa !35
  %573 = getelementptr inbounds i8, ptr %428, i64 7700
  store i16 %519, ptr %573, align 2, !tbaa !35
  %574 = getelementptr inbounds i8, ptr %428, i64 7716
  store i16 %519, ptr %574, align 2, !tbaa !35
  %575 = getelementptr inbounds i8, ptr %428, i64 7732
  store i16 %519, ptr %575, align 2, !tbaa !35
  %576 = getelementptr inbounds i8, ptr %428, i64 7622
  store i16 %519, ptr %576, align 2, !tbaa !35
  %577 = getelementptr inbounds i8, ptr %428, i64 7638
  store i16 %519, ptr %577, align 2, !tbaa !35
  %578 = getelementptr inbounds i8, ptr %428, i64 7654
  store i16 %519, ptr %578, align 2, !tbaa !35
  %579 = getelementptr inbounds i8, ptr %428, i64 7670
  store i16 %519, ptr %579, align 2, !tbaa !35
  %580 = getelementptr inbounds i8, ptr %428, i64 7686
  store i16 %519, ptr %580, align 2, !tbaa !35
  %581 = getelementptr inbounds i8, ptr %428, i64 7702
  store i16 %519, ptr %581, align 2, !tbaa !35
  %582 = getelementptr inbounds i8, ptr %428, i64 7718
  store i16 %519, ptr %582, align 2, !tbaa !35
  %583 = getelementptr inbounds i8, ptr %428, i64 7734
  store i16 %519, ptr %583, align 2, !tbaa !35
  %584 = load ptr, ptr @img, align 8, !tbaa !10
  %585 = getelementptr inbounds i8, ptr %584, i64 7464
  %586 = getelementptr inbounds i8, ptr %584, i64 7448
  %587 = getelementptr inbounds i8, ptr %584, i64 7432
  %588 = getelementptr inbounds i8, ptr %584, i64 7416
  %589 = getelementptr inbounds i8, ptr %584, i64 7400
  %590 = getelementptr inbounds i8, ptr %584, i64 7384
  %591 = getelementptr inbounds i8, ptr %584, i64 7368
  %592 = getelementptr inbounds i8, ptr %584, i64 7352
  %593 = getelementptr inbounds i8, ptr %584, i64 7480
  %594 = load i32, ptr %240, align 4, !tbaa !6
  %595 = trunc i32 %594 to i16
  store i16 %595, ptr %585, align 2, !tbaa !35
  store i16 %595, ptr %586, align 2, !tbaa !35
  store i16 %595, ptr %587, align 2, !tbaa !35
  store i16 %595, ptr %588, align 2, !tbaa !35
  store i16 %595, ptr %589, align 2, !tbaa !35
  store i16 %595, ptr %590, align 2, !tbaa !35
  store i16 %595, ptr %591, align 2, !tbaa !35
  store i16 %595, ptr %592, align 2, !tbaa !35
  %596 = load i32, ptr %402, align 4, !tbaa !6
  %597 = trunc i32 %596 to i16
  %598 = getelementptr inbounds i8, ptr %584, i64 7494
  store i16 %597, ptr %598, align 2, !tbaa !35
  %599 = getelementptr inbounds i8, ptr %584, i64 7492
  store i16 %597, ptr %599, align 4, !tbaa !35
  %600 = getelementptr inbounds i8, ptr %584, i64 7490
  store i16 %597, ptr %600, align 2, !tbaa !35
  %601 = getelementptr inbounds i8, ptr %584, i64 7488
  store i16 %597, ptr %601, align 8, !tbaa !35
  %602 = getelementptr inbounds i8, ptr %584, i64 7486
  store i16 %597, ptr %602, align 2, !tbaa !35
  %603 = getelementptr inbounds i8, ptr %584, i64 7484
  store i16 %597, ptr %603, align 4, !tbaa !35
  %604 = getelementptr inbounds i8, ptr %584, i64 7482
  store i16 %597, ptr %604, align 2, !tbaa !35
  store i16 %597, ptr %593, align 8, !tbaa !35
  %605 = getelementptr inbounds i8, ptr %6, i64 8
  %606 = load i32, ptr %605, align 4, !tbaa !6
  %607 = trunc i32 %606 to i16
  %608 = getelementptr inbounds i8, ptr %584, i64 7466
  store i16 %607, ptr %608, align 2, !tbaa !35
  %609 = getelementptr inbounds i8, ptr %584, i64 7450
  store i16 %607, ptr %609, align 2, !tbaa !35
  %610 = getelementptr inbounds i8, ptr %584, i64 7434
  store i16 %607, ptr %610, align 2, !tbaa !35
  %611 = getelementptr inbounds i8, ptr %584, i64 7418
  store i16 %607, ptr %611, align 2, !tbaa !35
  %612 = getelementptr inbounds i8, ptr %584, i64 7402
  store i16 %607, ptr %612, align 2, !tbaa !35
  %613 = getelementptr inbounds i8, ptr %584, i64 7386
  store i16 %607, ptr %613, align 2, !tbaa !35
  %614 = getelementptr inbounds i8, ptr %584, i64 7370
  store i16 %607, ptr %614, align 2, !tbaa !35
  %615 = getelementptr inbounds i8, ptr %584, i64 7354
  store i16 %607, ptr %615, align 2, !tbaa !35
  %616 = getelementptr inbounds i8, ptr %6, i64 72
  %617 = load i32, ptr %616, align 4, !tbaa !6
  %618 = trunc i32 %617 to i16
  %619 = getelementptr inbounds i8, ptr %584, i64 7510
  store i16 %618, ptr %619, align 2, !tbaa !35
  %620 = getelementptr inbounds i8, ptr %584, i64 7508
  store i16 %618, ptr %620, align 4, !tbaa !35
  %621 = getelementptr inbounds i8, ptr %584, i64 7506
  store i16 %618, ptr %621, align 2, !tbaa !35
  %622 = getelementptr inbounds i8, ptr %584, i64 7504
  store i16 %618, ptr %622, align 8, !tbaa !35
  %623 = getelementptr inbounds i8, ptr %584, i64 7502
  store i16 %618, ptr %623, align 2, !tbaa !35
  %624 = getelementptr inbounds i8, ptr %584, i64 7500
  store i16 %618, ptr %624, align 4, !tbaa !35
  %625 = getelementptr inbounds i8, ptr %584, i64 7498
  store i16 %618, ptr %625, align 2, !tbaa !35
  %626 = getelementptr inbounds i8, ptr %584, i64 7496
  store i16 %618, ptr %626, align 8, !tbaa !35
  %627 = getelementptr inbounds i8, ptr %6, i64 12
  %628 = load i32, ptr %627, align 4, !tbaa !6
  %629 = trunc i32 %628 to i16
  %630 = getelementptr inbounds i8, ptr %584, i64 7468
  store i16 %629, ptr %630, align 2, !tbaa !35
  %631 = getelementptr inbounds i8, ptr %584, i64 7452
  store i16 %629, ptr %631, align 2, !tbaa !35
  %632 = getelementptr inbounds i8, ptr %584, i64 7436
  store i16 %629, ptr %632, align 2, !tbaa !35
  %633 = getelementptr inbounds i8, ptr %584, i64 7420
  store i16 %629, ptr %633, align 2, !tbaa !35
  %634 = getelementptr inbounds i8, ptr %584, i64 7404
  store i16 %629, ptr %634, align 2, !tbaa !35
  %635 = getelementptr inbounds i8, ptr %584, i64 7388
  store i16 %629, ptr %635, align 2, !tbaa !35
  %636 = getelementptr inbounds i8, ptr %584, i64 7372
  store i16 %629, ptr %636, align 2, !tbaa !35
  %637 = getelementptr inbounds i8, ptr %584, i64 7356
  store i16 %629, ptr %637, align 2, !tbaa !35
  %638 = getelementptr inbounds i8, ptr %6, i64 76
  %639 = load i32, ptr %638, align 4, !tbaa !6
  %640 = trunc i32 %639 to i16
  %641 = getelementptr inbounds i8, ptr %584, i64 7526
  store i16 %640, ptr %641, align 2, !tbaa !35
  %642 = getelementptr inbounds i8, ptr %584, i64 7524
  store i16 %640, ptr %642, align 4, !tbaa !35
  %643 = getelementptr inbounds i8, ptr %584, i64 7522
  store i16 %640, ptr %643, align 2, !tbaa !35
  %644 = getelementptr inbounds i8, ptr %584, i64 7520
  store i16 %640, ptr %644, align 8, !tbaa !35
  %645 = getelementptr inbounds i8, ptr %584, i64 7518
  store i16 %640, ptr %645, align 2, !tbaa !35
  %646 = getelementptr inbounds i8, ptr %584, i64 7516
  store i16 %640, ptr %646, align 4, !tbaa !35
  %647 = getelementptr inbounds i8, ptr %584, i64 7514
  store i16 %640, ptr %647, align 2, !tbaa !35
  %648 = getelementptr inbounds i8, ptr %584, i64 7512
  store i16 %640, ptr %648, align 8, !tbaa !35
  %649 = getelementptr inbounds i8, ptr %6, i64 16
  %650 = load i32, ptr %649, align 4, !tbaa !6
  %651 = trunc i32 %650 to i16
  %652 = getelementptr inbounds i8, ptr %584, i64 7470
  store i16 %651, ptr %652, align 2, !tbaa !35
  %653 = getelementptr inbounds i8, ptr %584, i64 7454
  store i16 %651, ptr %653, align 2, !tbaa !35
  %654 = getelementptr inbounds i8, ptr %584, i64 7438
  store i16 %651, ptr %654, align 2, !tbaa !35
  %655 = getelementptr inbounds i8, ptr %584, i64 7422
  store i16 %651, ptr %655, align 2, !tbaa !35
  %656 = getelementptr inbounds i8, ptr %584, i64 7406
  store i16 %651, ptr %656, align 2, !tbaa !35
  %657 = getelementptr inbounds i8, ptr %584, i64 7390
  store i16 %651, ptr %657, align 2, !tbaa !35
  %658 = getelementptr inbounds i8, ptr %584, i64 7374
  store i16 %651, ptr %658, align 2, !tbaa !35
  %659 = getelementptr inbounds i8, ptr %584, i64 7358
  store i16 %651, ptr %659, align 2, !tbaa !35
  %660 = getelementptr inbounds i8, ptr %6, i64 80
  %661 = load i32, ptr %660, align 4, !tbaa !6
  %662 = trunc i32 %661 to i16
  %663 = getelementptr inbounds i8, ptr %584, i64 7542
  store i16 %662, ptr %663, align 2, !tbaa !35
  %664 = getelementptr inbounds i8, ptr %584, i64 7540
  store i16 %662, ptr %664, align 4, !tbaa !35
  %665 = getelementptr inbounds i8, ptr %584, i64 7538
  store i16 %662, ptr %665, align 2, !tbaa !35
  %666 = getelementptr inbounds i8, ptr %584, i64 7536
  store i16 %662, ptr %666, align 8, !tbaa !35
  %667 = getelementptr inbounds i8, ptr %584, i64 7534
  store i16 %662, ptr %667, align 2, !tbaa !35
  %668 = getelementptr inbounds i8, ptr %584, i64 7532
  store i16 %662, ptr %668, align 4, !tbaa !35
  %669 = getelementptr inbounds i8, ptr %584, i64 7530
  store i16 %662, ptr %669, align 2, !tbaa !35
  %670 = getelementptr inbounds i8, ptr %584, i64 7528
  store i16 %662, ptr %670, align 8, !tbaa !35
  %671 = getelementptr inbounds i8, ptr %6, i64 20
  %672 = load i32, ptr %671, align 4, !tbaa !6
  %673 = trunc i32 %672 to i16
  %674 = getelementptr inbounds i8, ptr %584, i64 7472
  store i16 %673, ptr %674, align 2, !tbaa !35
  %675 = getelementptr inbounds i8, ptr %584, i64 7456
  store i16 %673, ptr %675, align 2, !tbaa !35
  %676 = getelementptr inbounds i8, ptr %584, i64 7440
  store i16 %673, ptr %676, align 2, !tbaa !35
  %677 = getelementptr inbounds i8, ptr %584, i64 7424
  store i16 %673, ptr %677, align 2, !tbaa !35
  %678 = getelementptr inbounds i8, ptr %584, i64 7408
  store i16 %673, ptr %678, align 2, !tbaa !35
  %679 = getelementptr inbounds i8, ptr %584, i64 7392
  store i16 %673, ptr %679, align 2, !tbaa !35
  %680 = getelementptr inbounds i8, ptr %584, i64 7376
  store i16 %673, ptr %680, align 2, !tbaa !35
  %681 = getelementptr inbounds i8, ptr %584, i64 7360
  store i16 %673, ptr %681, align 2, !tbaa !35
  %682 = getelementptr inbounds i8, ptr %6, i64 84
  %683 = load i32, ptr %682, align 4, !tbaa !6
  %684 = trunc i32 %683 to i16
  %685 = getelementptr inbounds i8, ptr %584, i64 7558
  store i16 %684, ptr %685, align 2, !tbaa !35
  %686 = getelementptr inbounds i8, ptr %584, i64 7556
  store i16 %684, ptr %686, align 4, !tbaa !35
  %687 = getelementptr inbounds i8, ptr %584, i64 7554
  store i16 %684, ptr %687, align 2, !tbaa !35
  %688 = getelementptr inbounds i8, ptr %584, i64 7552
  store i16 %684, ptr %688, align 8, !tbaa !35
  %689 = getelementptr inbounds i8, ptr %584, i64 7550
  store i16 %684, ptr %689, align 2, !tbaa !35
  %690 = getelementptr inbounds i8, ptr %584, i64 7548
  store i16 %684, ptr %690, align 4, !tbaa !35
  %691 = getelementptr inbounds i8, ptr %584, i64 7546
  store i16 %684, ptr %691, align 2, !tbaa !35
  %692 = getelementptr inbounds i8, ptr %584, i64 7544
  store i16 %684, ptr %692, align 8, !tbaa !35
  %693 = getelementptr inbounds i8, ptr %6, i64 24
  %694 = load i32, ptr %693, align 4, !tbaa !6
  %695 = trunc i32 %694 to i16
  %696 = getelementptr inbounds i8, ptr %584, i64 7474
  store i16 %695, ptr %696, align 2, !tbaa !35
  %697 = getelementptr inbounds i8, ptr %584, i64 7458
  store i16 %695, ptr %697, align 2, !tbaa !35
  %698 = getelementptr inbounds i8, ptr %584, i64 7442
  store i16 %695, ptr %698, align 2, !tbaa !35
  %699 = getelementptr inbounds i8, ptr %584, i64 7426
  store i16 %695, ptr %699, align 2, !tbaa !35
  %700 = getelementptr inbounds i8, ptr %584, i64 7410
  store i16 %695, ptr %700, align 2, !tbaa !35
  %701 = getelementptr inbounds i8, ptr %584, i64 7394
  store i16 %695, ptr %701, align 2, !tbaa !35
  %702 = getelementptr inbounds i8, ptr %584, i64 7378
  store i16 %695, ptr %702, align 2, !tbaa !35
  %703 = getelementptr inbounds i8, ptr %584, i64 7362
  store i16 %695, ptr %703, align 2, !tbaa !35
  %704 = getelementptr inbounds i8, ptr %6, i64 88
  %705 = load i32, ptr %704, align 4, !tbaa !6
  %706 = trunc i32 %705 to i16
  %707 = getelementptr inbounds i8, ptr %584, i64 7574
  store i16 %706, ptr %707, align 2, !tbaa !35
  %708 = getelementptr inbounds i8, ptr %584, i64 7572
  store i16 %706, ptr %708, align 4, !tbaa !35
  %709 = getelementptr inbounds i8, ptr %584, i64 7570
  store i16 %706, ptr %709, align 2, !tbaa !35
  %710 = getelementptr inbounds i8, ptr %584, i64 7568
  store i16 %706, ptr %710, align 8, !tbaa !35
  %711 = getelementptr inbounds i8, ptr %584, i64 7566
  store i16 %706, ptr %711, align 2, !tbaa !35
  %712 = getelementptr inbounds i8, ptr %584, i64 7564
  store i16 %706, ptr %712, align 4, !tbaa !35
  %713 = getelementptr inbounds i8, ptr %584, i64 7562
  store i16 %706, ptr %713, align 2, !tbaa !35
  %714 = getelementptr inbounds i8, ptr %584, i64 7560
  store i16 %706, ptr %714, align 8, !tbaa !35
  %715 = getelementptr inbounds i8, ptr %6, i64 28
  %716 = load i32, ptr %715, align 4, !tbaa !6
  %717 = trunc i32 %716 to i16
  %718 = getelementptr inbounds i8, ptr %584, i64 7476
  store i16 %717, ptr %718, align 2, !tbaa !35
  %719 = getelementptr inbounds i8, ptr %584, i64 7460
  store i16 %717, ptr %719, align 2, !tbaa !35
  %720 = getelementptr inbounds i8, ptr %584, i64 7444
  store i16 %717, ptr %720, align 2, !tbaa !35
  %721 = getelementptr inbounds i8, ptr %584, i64 7428
  store i16 %717, ptr %721, align 2, !tbaa !35
  %722 = getelementptr inbounds i8, ptr %584, i64 7412
  store i16 %717, ptr %722, align 2, !tbaa !35
  %723 = getelementptr inbounds i8, ptr %584, i64 7396
  store i16 %717, ptr %723, align 2, !tbaa !35
  %724 = getelementptr inbounds i8, ptr %584, i64 7380
  store i16 %717, ptr %724, align 2, !tbaa !35
  %725 = getelementptr inbounds i8, ptr %584, i64 7364
  store i16 %717, ptr %725, align 2, !tbaa !35
  %726 = getelementptr inbounds i8, ptr %6, i64 92
  %727 = load i32, ptr %726, align 4, !tbaa !6
  %728 = trunc i32 %727 to i16
  %729 = getelementptr inbounds i8, ptr %584, i64 7590
  store i16 %728, ptr %729, align 2, !tbaa !35
  %730 = getelementptr inbounds i8, ptr %584, i64 7588
  store i16 %728, ptr %730, align 4, !tbaa !35
  %731 = getelementptr inbounds i8, ptr %584, i64 7586
  store i16 %728, ptr %731, align 2, !tbaa !35
  %732 = getelementptr inbounds i8, ptr %584, i64 7584
  store i16 %728, ptr %732, align 8, !tbaa !35
  %733 = getelementptr inbounds i8, ptr %584, i64 7582
  store i16 %728, ptr %733, align 2, !tbaa !35
  %734 = getelementptr inbounds i8, ptr %584, i64 7580
  store i16 %728, ptr %734, align 4, !tbaa !35
  %735 = getelementptr inbounds i8, ptr %584, i64 7578
  store i16 %728, ptr %735, align 2, !tbaa !35
  %736 = getelementptr inbounds i8, ptr %584, i64 7576
  store i16 %728, ptr %736, align 8, !tbaa !35
  %737 = getelementptr inbounds i8, ptr %6, i64 32
  %738 = load i32, ptr %737, align 4, !tbaa !6
  %739 = trunc i32 %738 to i16
  %740 = getelementptr inbounds i8, ptr %584, i64 7478
  store i16 %739, ptr %740, align 2, !tbaa !35
  %741 = getelementptr inbounds i8, ptr %584, i64 7462
  store i16 %739, ptr %741, align 2, !tbaa !35
  %742 = getelementptr inbounds i8, ptr %584, i64 7446
  store i16 %739, ptr %742, align 2, !tbaa !35
  %743 = getelementptr inbounds i8, ptr %584, i64 7430
  store i16 %739, ptr %743, align 2, !tbaa !35
  %744 = getelementptr inbounds i8, ptr %584, i64 7414
  store i16 %739, ptr %744, align 2, !tbaa !35
  %745 = getelementptr inbounds i8, ptr %584, i64 7398
  store i16 %739, ptr %745, align 2, !tbaa !35
  %746 = getelementptr inbounds i8, ptr %584, i64 7382
  store i16 %739, ptr %746, align 2, !tbaa !35
  %747 = getelementptr inbounds i8, ptr %584, i64 7366
  store i16 %739, ptr %747, align 2, !tbaa !35
  %748 = getelementptr inbounds i8, ptr %6, i64 96
  %749 = load i32, ptr %748, align 4, !tbaa !6
  %750 = trunc i32 %749 to i16
  %751 = getelementptr inbounds i8, ptr %584, i64 7606
  store i16 %750, ptr %751, align 2, !tbaa !35
  %752 = getelementptr inbounds i8, ptr %584, i64 7604
  store i16 %750, ptr %752, align 4, !tbaa !35
  %753 = getelementptr inbounds i8, ptr %584, i64 7602
  store i16 %750, ptr %753, align 2, !tbaa !35
  %754 = getelementptr inbounds i8, ptr %584, i64 7600
  store i16 %750, ptr %754, align 8, !tbaa !35
  %755 = getelementptr inbounds i8, ptr %584, i64 7598
  store i16 %750, ptr %755, align 2, !tbaa !35
  %756 = getelementptr inbounds i8, ptr %584, i64 7596
  store i16 %750, ptr %756, align 4, !tbaa !35
  %757 = getelementptr inbounds i8, ptr %584, i64 7594
  store i16 %750, ptr %757, align 2, !tbaa !35
  %758 = getelementptr inbounds i8, ptr %584, i64 7592
  store i16 %750, ptr %758, align 8, !tbaa !35
  br i1 %188, label %762, label %759

759:                                              ; preds = %517
  %760 = load ptr, ptr @img, align 8, !tbaa !10
  %761 = getelementptr inbounds i8, ptr %760, i64 7352
  store i16 -1, ptr %761, align 8, !tbaa !35
  br label %762

762:                                              ; preds = %759, %517
  br i1 %189, label %766, label %763

763:                                              ; preds = %762
  %764 = load ptr, ptr @img, align 8, !tbaa !10
  %765 = getelementptr inbounds i8, ptr %764, i64 7480
  store i16 -1, ptr %765, align 8, !tbaa !35
  br label %766

766:                                              ; preds = %763, %762
  br i1 %188, label %767, label %1076

767:                                              ; preds = %766
  %768 = load i32, ptr %240, align 4, !tbaa !6
  %769 = load i32, ptr %242, align 4, !tbaa !6
  %770 = load i32, ptr %241, align 4, !tbaa !6
  %771 = shl nsw i32 %770, 1
  %772 = add i32 %769, 2
  %773 = add i32 %772, %768
  %774 = add i32 %773, %771
  %775 = lshr i32 %774, 2
  %776 = trunc i32 %775 to i16
  %777 = load ptr, ptr @img, align 8, !tbaa !10
  %778 = getelementptr inbounds i8, ptr %777, i64 7736
  store i16 %776, ptr %778, align 8, !tbaa !35
  %779 = load i32, ptr %243, align 4, !tbaa !6
  %780 = shl nsw i32 %769, 1
  %781 = add i32 %779, 2
  %782 = add i32 %781, %770
  %783 = add i32 %782, %780
  %784 = lshr i32 %783, 2
  %785 = trunc i32 %784 to i16
  %786 = getelementptr inbounds i8, ptr %777, i64 7752
  store i16 %785, ptr %786, align 8, !tbaa !35
  %787 = getelementptr inbounds i8, ptr %777, i64 7738
  store i16 %785, ptr %787, align 2, !tbaa !35
  %788 = load i32, ptr %244, align 4, !tbaa !6
  %789 = shl nsw i32 %779, 1
  %790 = add i32 %772, %789
  %791 = add i32 %790, %788
  %792 = lshr i32 %791, 2
  %793 = trunc i32 %792 to i16
  %794 = getelementptr inbounds i8, ptr %777, i64 7768
  store i16 %793, ptr %794, align 8, !tbaa !35
  %795 = getelementptr inbounds i8, ptr %777, i64 7754
  store i16 %793, ptr %795, align 2, !tbaa !35
  %796 = getelementptr inbounds i8, ptr %777, i64 7740
  store i16 %793, ptr %796, align 4, !tbaa !35
  %797 = load i32, ptr %245, align 4, !tbaa !6
  %798 = shl nsw i32 %788, 1
  %799 = add i32 %797, 2
  %800 = add i32 %799, %779
  %801 = add i32 %800, %798
  %802 = lshr i32 %801, 2
  %803 = trunc i32 %802 to i16
  %804 = getelementptr inbounds i8, ptr %777, i64 7784
  store i16 %803, ptr %804, align 8, !tbaa !35
  %805 = getelementptr inbounds i8, ptr %777, i64 7770
  store i16 %803, ptr %805, align 2, !tbaa !35
  %806 = getelementptr inbounds i8, ptr %777, i64 7756
  store i16 %803, ptr %806, align 4, !tbaa !35
  %807 = getelementptr inbounds i8, ptr %777, i64 7742
  store i16 %803, ptr %807, align 2, !tbaa !35
  %808 = shl nsw i32 %797, 1
  %809 = add i32 %716, 2
  %810 = add i32 %809, %788
  %811 = add i32 %810, %808
  %812 = lshr i32 %811, 2
  %813 = trunc i32 %812 to i16
  %814 = getelementptr inbounds i8, ptr %777, i64 7800
  store i16 %813, ptr %814, align 8, !tbaa !35
  %815 = getelementptr inbounds i8, ptr %777, i64 7786
  store i16 %813, ptr %815, align 2, !tbaa !35
  %816 = getelementptr inbounds i8, ptr %777, i64 7772
  store i16 %813, ptr %816, align 4, !tbaa !35
  %817 = getelementptr inbounds i8, ptr %777, i64 7758
  store i16 %813, ptr %817, align 2, !tbaa !35
  %818 = getelementptr inbounds i8, ptr %777, i64 7744
  store i16 %813, ptr %818, align 8, !tbaa !35
  %819 = shl nsw i32 %716, 1
  %820 = add i32 %799, %819
  %821 = add i32 %820, %738
  %822 = lshr i32 %821, 2
  %823 = trunc i32 %822 to i16
  %824 = getelementptr inbounds i8, ptr %777, i64 7816
  store i16 %823, ptr %824, align 8, !tbaa !35
  %825 = getelementptr inbounds i8, ptr %777, i64 7802
  store i16 %823, ptr %825, align 2, !tbaa !35
  %826 = getelementptr inbounds i8, ptr %777, i64 7788
  store i16 %823, ptr %826, align 4, !tbaa !35
  %827 = getelementptr inbounds i8, ptr %777, i64 7774
  store i16 %823, ptr %827, align 2, !tbaa !35
  %828 = getelementptr inbounds i8, ptr %777, i64 7760
  store i16 %823, ptr %828, align 8, !tbaa !35
  %829 = getelementptr inbounds i8, ptr %777, i64 7746
  store i16 %823, ptr %829, align 2, !tbaa !35
  %830 = load i32, ptr %299, align 4, !tbaa !6
  %831 = shl nsw i32 %738, 1
  %832 = add i32 %809, %831
  %833 = add i32 %832, %830
  %834 = lshr i32 %833, 2
  %835 = trunc i32 %834 to i16
  %836 = getelementptr inbounds i8, ptr %777, i64 7832
  store i16 %835, ptr %836, align 8, !tbaa !35
  %837 = getelementptr inbounds i8, ptr %777, i64 7818
  store i16 %835, ptr %837, align 2, !tbaa !35
  %838 = getelementptr inbounds i8, ptr %777, i64 7804
  store i16 %835, ptr %838, align 4, !tbaa !35
  %839 = getelementptr inbounds i8, ptr %777, i64 7790
  store i16 %835, ptr %839, align 2, !tbaa !35
  %840 = getelementptr inbounds i8, ptr %777, i64 7776
  store i16 %835, ptr %840, align 8, !tbaa !35
  %841 = getelementptr inbounds i8, ptr %777, i64 7762
  store i16 %835, ptr %841, align 2, !tbaa !35
  %842 = getelementptr inbounds i8, ptr %777, i64 7748
  store i16 %835, ptr %842, align 4, !tbaa !35
  %843 = load i32, ptr %298, align 4, !tbaa !6
  %844 = shl nsw i32 %830, 1
  %845 = add i32 %738, 2
  %846 = add i32 %845, %844
  %847 = add i32 %846, %843
  %848 = lshr i32 %847, 2
  %849 = trunc i32 %848 to i16
  %850 = getelementptr inbounds i8, ptr %777, i64 7848
  store i16 %849, ptr %850, align 8, !tbaa !35
  %851 = getelementptr inbounds i8, ptr %777, i64 7834
  store i16 %849, ptr %851, align 2, !tbaa !35
  %852 = getelementptr inbounds i8, ptr %777, i64 7820
  store i16 %849, ptr %852, align 4, !tbaa !35
  %853 = getelementptr inbounds i8, ptr %777, i64 7806
  store i16 %849, ptr %853, align 2, !tbaa !35
  %854 = getelementptr inbounds i8, ptr %777, i64 7792
  store i16 %849, ptr %854, align 8, !tbaa !35
  %855 = getelementptr inbounds i8, ptr %777, i64 7778
  store i16 %849, ptr %855, align 2, !tbaa !35
  %856 = getelementptr inbounds i8, ptr %777, i64 7764
  store i16 %849, ptr %856, align 4, !tbaa !35
  %857 = getelementptr inbounds i8, ptr %777, i64 7750
  store i16 %849, ptr %857, align 2, !tbaa !35
  %858 = load i32, ptr %297, align 4, !tbaa !6
  %859 = shl nsw i32 %843, 1
  %860 = add i32 %830, 2
  %861 = add i32 %860, %859
  %862 = add i32 %861, %858
  %863 = lshr i32 %862, 2
  %864 = trunc i32 %863 to i16
  %865 = getelementptr inbounds i8, ptr %777, i64 7850
  store i16 %864, ptr %865, align 2, !tbaa !35
  %866 = getelementptr inbounds i8, ptr %777, i64 7836
  store i16 %864, ptr %866, align 4, !tbaa !35
  %867 = getelementptr inbounds i8, ptr %777, i64 7822
  store i16 %864, ptr %867, align 2, !tbaa !35
  %868 = getelementptr inbounds i8, ptr %777, i64 7808
  store i16 %864, ptr %868, align 8, !tbaa !35
  %869 = getelementptr inbounds i8, ptr %777, i64 7794
  store i16 %864, ptr %869, align 2, !tbaa !35
  %870 = getelementptr inbounds i8, ptr %777, i64 7780
  store i16 %864, ptr %870, align 4, !tbaa !35
  %871 = getelementptr inbounds i8, ptr %777, i64 7766
  store i16 %864, ptr %871, align 2, !tbaa !35
  %872 = load i32, ptr %296, align 4, !tbaa !6
  %873 = shl nsw i32 %858, 1
  %874 = add i32 %843, 2
  %875 = add i32 %874, %873
  %876 = add i32 %875, %872
  %877 = lshr i32 %876, 2
  %878 = trunc i32 %877 to i16
  %879 = getelementptr inbounds i8, ptr %777, i64 7852
  store i16 %878, ptr %879, align 4, !tbaa !35
  %880 = getelementptr inbounds i8, ptr %777, i64 7838
  store i16 %878, ptr %880, align 2, !tbaa !35
  %881 = getelementptr inbounds i8, ptr %777, i64 7824
  store i16 %878, ptr %881, align 8, !tbaa !35
  %882 = getelementptr inbounds i8, ptr %777, i64 7810
  store i16 %878, ptr %882, align 2, !tbaa !35
  %883 = getelementptr inbounds i8, ptr %777, i64 7796
  store i16 %878, ptr %883, align 4, !tbaa !35
  %884 = getelementptr inbounds i8, ptr %777, i64 7782
  store i16 %878, ptr %884, align 2, !tbaa !35
  %885 = load i32, ptr %295, align 4, !tbaa !6
  %886 = shl nsw i32 %872, 1
  %887 = add i32 %858, 2
  %888 = add i32 %887, %886
  %889 = add i32 %888, %885
  %890 = lshr i32 %889, 2
  %891 = trunc i32 %890 to i16
  %892 = getelementptr inbounds i8, ptr %777, i64 7854
  store i16 %891, ptr %892, align 2, !tbaa !35
  %893 = getelementptr inbounds i8, ptr %777, i64 7840
  store i16 %891, ptr %893, align 8, !tbaa !35
  %894 = getelementptr inbounds i8, ptr %777, i64 7826
  store i16 %891, ptr %894, align 2, !tbaa !35
  %895 = getelementptr inbounds i8, ptr %777, i64 7812
  store i16 %891, ptr %895, align 4, !tbaa !35
  %896 = getelementptr inbounds i8, ptr %777, i64 7798
  store i16 %891, ptr %896, align 2, !tbaa !35
  %897 = getelementptr inbounds i8, ptr %6, i64 56
  %898 = load i32, ptr %897, align 4, !tbaa !6
  %899 = shl nsw i32 %885, 1
  %900 = add i32 %872, 2
  %901 = add i32 %900, %899
  %902 = add i32 %901, %898
  %903 = lshr i32 %902, 2
  %904 = trunc i32 %903 to i16
  %905 = getelementptr inbounds i8, ptr %777, i64 7856
  store i16 %904, ptr %905, align 8, !tbaa !35
  %906 = getelementptr inbounds i8, ptr %777, i64 7842
  store i16 %904, ptr %906, align 2, !tbaa !35
  %907 = getelementptr inbounds i8, ptr %777, i64 7828
  store i16 %904, ptr %907, align 4, !tbaa !35
  %908 = getelementptr inbounds i8, ptr %777, i64 7814
  store i16 %904, ptr %908, align 2, !tbaa !35
  %909 = getelementptr inbounds i8, ptr %6, i64 60
  %910 = load i32, ptr %909, align 4, !tbaa !6
  %911 = shl nsw i32 %898, 1
  %912 = add i32 %885, 2
  %913 = add i32 %912, %911
  %914 = add i32 %913, %910
  %915 = lshr i32 %914, 2
  %916 = trunc i32 %915 to i16
  %917 = getelementptr inbounds i8, ptr %777, i64 7858
  store i16 %916, ptr %917, align 2, !tbaa !35
  %918 = getelementptr inbounds i8, ptr %777, i64 7844
  store i16 %916, ptr %918, align 4, !tbaa !35
  %919 = getelementptr inbounds i8, ptr %777, i64 7830
  store i16 %916, ptr %919, align 2, !tbaa !35
  %920 = getelementptr inbounds i8, ptr %6, i64 64
  %921 = load i32, ptr %920, align 4, !tbaa !6
  %922 = shl nsw i32 %910, 1
  %923 = add i32 %898, 2
  %924 = add i32 %923, %922
  %925 = add i32 %924, %921
  %926 = lshr i32 %925, 2
  %927 = trunc i32 %926 to i16
  %928 = getelementptr inbounds i8, ptr %777, i64 7860
  store i16 %927, ptr %928, align 4, !tbaa !35
  %929 = getelementptr inbounds i8, ptr %777, i64 7846
  store i16 %927, ptr %929, align 2, !tbaa !35
  %930 = mul nsw i32 %921, 3
  %931 = add i32 %910, 2
  %932 = add i32 %931, %930
  %933 = lshr i32 %932, 2
  %934 = trunc i32 %933 to i16
  %935 = getelementptr inbounds i8, ptr %777, i64 7862
  store i16 %934, ptr %935, align 2, !tbaa !35
  %936 = add i32 %770, 1
  %937 = add i32 %936, %768
  %938 = lshr i32 %937, 1
  %939 = trunc i32 %938 to i16
  %940 = getelementptr inbounds i8, ptr %777, i64 8248
  store i16 %939, ptr %940, align 8, !tbaa !35
  %941 = add i32 %769, 1
  %942 = add i32 %941, %770
  %943 = lshr i32 %942, 1
  %944 = trunc i32 %943 to i16
  %945 = getelementptr inbounds i8, ptr %777, i64 8280
  store i16 %944, ptr %945, align 8, !tbaa !35
  %946 = getelementptr inbounds i8, ptr %777, i64 8250
  store i16 %944, ptr %946, align 2, !tbaa !35
  %947 = add i32 %941, %779
  %948 = lshr i32 %947, 1
  %949 = trunc i32 %948 to i16
  %950 = getelementptr inbounds i8, ptr %777, i64 8312
  store i16 %949, ptr %950, align 8, !tbaa !35
  %951 = getelementptr inbounds i8, ptr %777, i64 8282
  store i16 %949, ptr %951, align 2, !tbaa !35
  %952 = getelementptr inbounds i8, ptr %777, i64 8252
  store i16 %949, ptr %952, align 4, !tbaa !35
  %953 = add i32 %779, 1
  %954 = add i32 %953, %788
  %955 = lshr i32 %954, 1
  %956 = trunc i32 %955 to i16
  %957 = getelementptr inbounds i8, ptr %777, i64 8344
  store i16 %956, ptr %957, align 8, !tbaa !35
  %958 = getelementptr inbounds i8, ptr %777, i64 8314
  store i16 %956, ptr %958, align 2, !tbaa !35
  %959 = getelementptr inbounds i8, ptr %777, i64 8284
  store i16 %956, ptr %959, align 4, !tbaa !35
  %960 = getelementptr inbounds i8, ptr %777, i64 8254
  store i16 %956, ptr %960, align 2, !tbaa !35
  %961 = add i32 %788, 1
  %962 = add i32 %961, %797
  %963 = lshr i32 %962, 1
  %964 = trunc i32 %963 to i16
  %965 = getelementptr inbounds i8, ptr %777, i64 8346
  store i16 %964, ptr %965, align 2, !tbaa !35
  %966 = getelementptr inbounds i8, ptr %777, i64 8316
  store i16 %964, ptr %966, align 4, !tbaa !35
  %967 = getelementptr inbounds i8, ptr %777, i64 8286
  store i16 %964, ptr %967, align 2, !tbaa !35
  %968 = getelementptr inbounds i8, ptr %777, i64 8256
  store i16 %964, ptr %968, align 8, !tbaa !35
  %969 = add i32 %797, 1
  %970 = add i32 %969, %716
  %971 = lshr i32 %970, 1
  %972 = trunc i32 %971 to i16
  %973 = getelementptr inbounds i8, ptr %777, i64 8348
  store i16 %972, ptr %973, align 4, !tbaa !35
  %974 = getelementptr inbounds i8, ptr %777, i64 8318
  store i16 %972, ptr %974, align 2, !tbaa !35
  %975 = getelementptr inbounds i8, ptr %777, i64 8288
  store i16 %972, ptr %975, align 8, !tbaa !35
  %976 = getelementptr inbounds i8, ptr %777, i64 8258
  store i16 %972, ptr %976, align 2, !tbaa !35
  %977 = add i32 %716, 1
  %978 = add i32 %977, %738
  %979 = lshr i32 %978, 1
  %980 = trunc i32 %979 to i16
  %981 = getelementptr inbounds i8, ptr %777, i64 8350
  store i16 %980, ptr %981, align 2, !tbaa !35
  %982 = getelementptr inbounds i8, ptr %777, i64 8320
  store i16 %980, ptr %982, align 8, !tbaa !35
  %983 = getelementptr inbounds i8, ptr %777, i64 8290
  store i16 %980, ptr %983, align 2, !tbaa !35
  %984 = getelementptr inbounds i8, ptr %777, i64 8260
  store i16 %980, ptr %984, align 4, !tbaa !35
  %985 = add i32 %738, 1
  %986 = add i32 %985, %830
  %987 = lshr i32 %986, 1
  %988 = trunc i32 %987 to i16
  %989 = getelementptr inbounds i8, ptr %777, i64 8352
  store i16 %988, ptr %989, align 8, !tbaa !35
  %990 = getelementptr inbounds i8, ptr %777, i64 8322
  store i16 %988, ptr %990, align 2, !tbaa !35
  %991 = getelementptr inbounds i8, ptr %777, i64 8292
  store i16 %988, ptr %991, align 4, !tbaa !35
  %992 = getelementptr inbounds i8, ptr %777, i64 8262
  store i16 %988, ptr %992, align 2, !tbaa !35
  %993 = add i32 %830, 1
  %994 = add i32 %993, %843
  %995 = lshr i32 %994, 1
  %996 = trunc i32 %995 to i16
  %997 = getelementptr inbounds i8, ptr %777, i64 8354
  store i16 %996, ptr %997, align 2, !tbaa !35
  %998 = getelementptr inbounds i8, ptr %777, i64 8324
  store i16 %996, ptr %998, align 4, !tbaa !35
  %999 = getelementptr inbounds i8, ptr %777, i64 8294
  store i16 %996, ptr %999, align 2, !tbaa !35
  %1000 = add i32 %843, 1
  %1001 = add i32 %1000, %858
  %1002 = lshr i32 %1001, 1
  %1003 = trunc i32 %1002 to i16
  %1004 = getelementptr inbounds i8, ptr %777, i64 8356
  store i16 %1003, ptr %1004, align 4, !tbaa !35
  %1005 = getelementptr inbounds i8, ptr %777, i64 8326
  store i16 %1003, ptr %1005, align 2, !tbaa !35
  %1006 = add i32 %858, 1
  %1007 = add i32 %1006, %872
  %1008 = lshr i32 %1007, 1
  %1009 = trunc i32 %1008 to i16
  %1010 = getelementptr inbounds i8, ptr %777, i64 8358
  store i16 %1009, ptr %1010, align 2, !tbaa !35
  %1011 = getelementptr inbounds i8, ptr %777, i64 8264
  store i16 %776, ptr %1011, align 8, !tbaa !35
  %1012 = getelementptr inbounds i8, ptr %777, i64 8296
  store i16 %785, ptr %1012, align 8, !tbaa !35
  %1013 = getelementptr inbounds i8, ptr %777, i64 8266
  store i16 %785, ptr %1013, align 2, !tbaa !35
  %1014 = getelementptr inbounds i8, ptr %777, i64 8328
  store i16 %793, ptr %1014, align 8, !tbaa !35
  %1015 = getelementptr inbounds i8, ptr %777, i64 8298
  store i16 %793, ptr %1015, align 2, !tbaa !35
  %1016 = getelementptr inbounds i8, ptr %777, i64 8268
  store i16 %793, ptr %1016, align 4, !tbaa !35
  %1017 = load i32, ptr %243, align 4, !tbaa !6
  %1018 = add i32 %799, %798
  %1019 = add i32 %1018, %1017
  %1020 = lshr i32 %1019, 2
  %1021 = trunc i32 %1020 to i16
  %1022 = load ptr, ptr @img, align 8, !tbaa !10
  %1023 = getelementptr inbounds i8, ptr %1022, i64 8360
  store i16 %1021, ptr %1023, align 8, !tbaa !35
  %1024 = getelementptr inbounds i8, ptr %1022, i64 8330
  store i16 %1021, ptr %1024, align 2, !tbaa !35
  %1025 = getelementptr inbounds i8, ptr %1022, i64 8300
  store i16 %1021, ptr %1025, align 4, !tbaa !35
  %1026 = getelementptr inbounds i8, ptr %1022, i64 8270
  store i16 %1021, ptr %1026, align 2, !tbaa !35
  %1027 = load i32, ptr %244, align 4, !tbaa !6
  %1028 = load i32, ptr %245, align 4, !tbaa !6
  %1029 = shl nsw i32 %1028, 1
  %1030 = add i32 %809, %1027
  %1031 = add i32 %1030, %1029
  %1032 = lshr i32 %1031, 2
  %1033 = trunc i32 %1032 to i16
  %1034 = getelementptr inbounds i8, ptr %1022, i64 8362
  store i16 %1033, ptr %1034, align 2, !tbaa !35
  %1035 = getelementptr inbounds i8, ptr %1022, i64 8332
  store i16 %1033, ptr %1035, align 4, !tbaa !35
  %1036 = getelementptr inbounds i8, ptr %1022, i64 8302
  store i16 %1033, ptr %1036, align 2, !tbaa !35
  %1037 = getelementptr inbounds i8, ptr %1022, i64 8272
  store i16 %1033, ptr %1037, align 8, !tbaa !35
  %1038 = load i32, ptr %246, align 4, !tbaa !6
  %1039 = shl nsw i32 %1038, 1
  %1040 = add i32 %845, %1028
  %1041 = add i32 %1040, %1039
  %1042 = lshr i32 %1041, 2
  %1043 = trunc i32 %1042 to i16
  %1044 = getelementptr inbounds i8, ptr %1022, i64 8364
  store i16 %1043, ptr %1044, align 4, !tbaa !35
  %1045 = getelementptr inbounds i8, ptr %1022, i64 8334
  store i16 %1043, ptr %1045, align 2, !tbaa !35
  %1046 = getelementptr inbounds i8, ptr %1022, i64 8304
  store i16 %1043, ptr %1046, align 8, !tbaa !35
  %1047 = getelementptr inbounds i8, ptr %1022, i64 8274
  store i16 %1043, ptr %1047, align 2, !tbaa !35
  %1048 = add i32 %860, %831
  %1049 = add i32 %1048, %1038
  %1050 = lshr i32 %1049, 2
  %1051 = trunc i32 %1050 to i16
  %1052 = getelementptr inbounds i8, ptr %1022, i64 8366
  store i16 %1051, ptr %1052, align 2, !tbaa !35
  %1053 = getelementptr inbounds i8, ptr %1022, i64 8336
  store i16 %1051, ptr %1053, align 8, !tbaa !35
  %1054 = getelementptr inbounds i8, ptr %1022, i64 8306
  store i16 %1051, ptr %1054, align 2, !tbaa !35
  %1055 = getelementptr inbounds i8, ptr %1022, i64 8276
  store i16 %1051, ptr %1055, align 4, !tbaa !35
  %1056 = load i32, ptr %247, align 4, !tbaa !6
  %1057 = add i32 %874, %844
  %1058 = add i32 %1057, %1056
  %1059 = lshr i32 %1058, 2
  %1060 = trunc i32 %1059 to i16
  %1061 = getelementptr inbounds i8, ptr %1022, i64 8368
  store i16 %1060, ptr %1061, align 8, !tbaa !35
  %1062 = getelementptr inbounds i8, ptr %1022, i64 8338
  store i16 %1060, ptr %1062, align 2, !tbaa !35
  %1063 = getelementptr inbounds i8, ptr %1022, i64 8308
  store i16 %1060, ptr %1063, align 4, !tbaa !35
  %1064 = getelementptr inbounds i8, ptr %1022, i64 8278
  store i16 %1060, ptr %1064, align 2, !tbaa !35
  %1065 = load i32, ptr %299, align 4, !tbaa !6
  %1066 = add i32 %887, %859
  %1067 = add i32 %1066, %1065
  %1068 = lshr i32 %1067, 2
  %1069 = trunc i32 %1068 to i16
  %1070 = getelementptr inbounds i8, ptr %1022, i64 8370
  store i16 %1069, ptr %1070, align 2, !tbaa !35
  %1071 = getelementptr inbounds i8, ptr %1022, i64 8340
  store i16 %1069, ptr %1071, align 4, !tbaa !35
  %1072 = getelementptr inbounds i8, ptr %1022, i64 8310
  store i16 %1069, ptr %1072, align 2, !tbaa !35
  %1073 = getelementptr inbounds i8, ptr %1022, i64 8372
  store i16 %878, ptr %1073, align 4, !tbaa !35
  %1074 = getelementptr inbounds i8, ptr %1022, i64 8342
  store i16 %878, ptr %1074, align 2, !tbaa !35
  %1075 = getelementptr inbounds i8, ptr %1022, i64 8374
  store i16 %891, ptr %1075, align 2, !tbaa !35
  br label %1076

1076:                                             ; preds = %767, %766
  %1077 = and i1 %190, %191
  br i1 %1077, label %1078, label %1541

1078:                                             ; preds = %1076
  %1079 = load i32, ptr %409, align 4, !tbaa !6
  %1080 = load i32, ptr %407, align 4, !tbaa !6
  %1081 = load i32, ptr %408, align 4, !tbaa !6
  %1082 = shl nsw i32 %1081, 1
  %1083 = add i32 %1080, 2
  %1084 = add i32 %1083, %1079
  %1085 = add i32 %1084, %1082
  %1086 = lshr i32 %1085, 2
  %1087 = trunc i32 %1086 to i16
  %1088 = load ptr, ptr @img, align 8, !tbaa !10
  %1089 = getelementptr inbounds i8, ptr %1088, i64 7976
  store i16 %1087, ptr %1089, align 8, !tbaa !35
  %1090 = load i32, ptr %406, align 4, !tbaa !6
  %1091 = shl nsw i32 %1080, 1
  %1092 = add i32 %1090, 2
  %1093 = add i32 %1092, %1081
  %1094 = add i32 %1093, %1091
  %1095 = lshr i32 %1094, 2
  %1096 = trunc i32 %1095 to i16
  %1097 = getelementptr inbounds i8, ptr %1088, i64 7978
  store i16 %1096, ptr %1097, align 2, !tbaa !35
  %1098 = getelementptr inbounds i8, ptr %1088, i64 7960
  store i16 %1096, ptr %1098, align 8, !tbaa !35
  %1099 = load i32, ptr %405, align 4, !tbaa !6
  %1100 = shl nsw i32 %1090, 1
  %1101 = add i32 %1083, %1100
  %1102 = add i32 %1101, %1099
  %1103 = lshr i32 %1102, 2
  %1104 = trunc i32 %1103 to i16
  %1105 = getelementptr inbounds i8, ptr %1088, i64 7980
  store i16 %1104, ptr %1105, align 4, !tbaa !35
  %1106 = getelementptr inbounds i8, ptr %1088, i64 7962
  store i16 %1104, ptr %1106, align 2, !tbaa !35
  %1107 = getelementptr inbounds i8, ptr %1088, i64 7944
  store i16 %1104, ptr %1107, align 8, !tbaa !35
  %1108 = load i32, ptr %404, align 4, !tbaa !6
  %1109 = shl nsw i32 %1099, 1
  %1110 = add i32 %1092, %1109
  %1111 = add i32 %1110, %1108
  %1112 = lshr i32 %1111, 2
  %1113 = trunc i32 %1112 to i16
  %1114 = getelementptr inbounds i8, ptr %1088, i64 7982
  store i16 %1113, ptr %1114, align 2, !tbaa !35
  %1115 = getelementptr inbounds i8, ptr %1088, i64 7964
  store i16 %1113, ptr %1115, align 4, !tbaa !35
  %1116 = getelementptr inbounds i8, ptr %1088, i64 7946
  store i16 %1113, ptr %1116, align 2, !tbaa !35
  %1117 = getelementptr inbounds i8, ptr %1088, i64 7928
  store i16 %1113, ptr %1117, align 8, !tbaa !35
  %1118 = load i32, ptr %403, align 4, !tbaa !6
  %1119 = shl nsw i32 %1108, 1
  %1120 = add i32 %1099, 2
  %1121 = add i32 %1120, %1119
  %1122 = add i32 %1121, %1118
  %1123 = lshr i32 %1122, 2
  %1124 = trunc i32 %1123 to i16
  %1125 = getelementptr inbounds i8, ptr %1088, i64 7984
  store i16 %1124, ptr %1125, align 8, !tbaa !35
  %1126 = getelementptr inbounds i8, ptr %1088, i64 7966
  store i16 %1124, ptr %1126, align 2, !tbaa !35
  %1127 = getelementptr inbounds i8, ptr %1088, i64 7948
  store i16 %1124, ptr %1127, align 4, !tbaa !35
  %1128 = getelementptr inbounds i8, ptr %1088, i64 7930
  store i16 %1124, ptr %1128, align 2, !tbaa !35
  %1129 = getelementptr inbounds i8, ptr %1088, i64 7912
  store i16 %1124, ptr %1129, align 8, !tbaa !35
  %1130 = load i32, ptr %402, align 4, !tbaa !6
  %1131 = shl nsw i32 %1118, 1
  %1132 = add i32 %1108, 2
  %1133 = add i32 %1132, %1131
  %1134 = add i32 %1133, %1130
  %1135 = lshr i32 %1134, 2
  %1136 = trunc i32 %1135 to i16
  %1137 = getelementptr inbounds i8, ptr %1088, i64 7986
  store i16 %1136, ptr %1137, align 2, !tbaa !35
  %1138 = getelementptr inbounds i8, ptr %1088, i64 7968
  store i16 %1136, ptr %1138, align 8, !tbaa !35
  %1139 = getelementptr inbounds i8, ptr %1088, i64 7950
  store i16 %1136, ptr %1139, align 2, !tbaa !35
  %1140 = getelementptr inbounds i8, ptr %1088, i64 7932
  store i16 %1136, ptr %1140, align 4, !tbaa !35
  %1141 = getelementptr inbounds i8, ptr %1088, i64 7914
  store i16 %1136, ptr %1141, align 2, !tbaa !35
  %1142 = getelementptr inbounds i8, ptr %1088, i64 7896
  store i16 %1136, ptr %1142, align 8, !tbaa !35
  %1143 = load i32, ptr %6, align 4, !tbaa !6
  %1144 = shl nsw i32 %1130, 1
  %1145 = add i32 %1143, 2
  %1146 = add i32 %1145, %1118
  %1147 = add i32 %1146, %1144
  %1148 = lshr i32 %1147, 2
  %1149 = trunc i32 %1148 to i16
  %1150 = getelementptr inbounds i8, ptr %1088, i64 7988
  store i16 %1149, ptr %1150, align 4, !tbaa !35
  %1151 = getelementptr inbounds i8, ptr %1088, i64 7970
  store i16 %1149, ptr %1151, align 2, !tbaa !35
  %1152 = getelementptr inbounds i8, ptr %1088, i64 7952
  store i16 %1149, ptr %1152, align 8, !tbaa !35
  %1153 = getelementptr inbounds i8, ptr %1088, i64 7934
  store i16 %1149, ptr %1153, align 2, !tbaa !35
  %1154 = getelementptr inbounds i8, ptr %1088, i64 7916
  store i16 %1149, ptr %1154, align 4, !tbaa !35
  %1155 = getelementptr inbounds i8, ptr %1088, i64 7898
  store i16 %1149, ptr %1155, align 2, !tbaa !35
  %1156 = getelementptr inbounds i8, ptr %1088, i64 7880
  store i16 %1149, ptr %1156, align 8, !tbaa !35
  %1157 = load i32, ptr %240, align 4, !tbaa !6
  %1158 = shl nsw i32 %1143, 1
  %1159 = add i32 %1130, 2
  %1160 = add i32 %1159, %1158
  %1161 = add i32 %1160, %1157
  %1162 = lshr i32 %1161, 2
  %1163 = trunc i32 %1162 to i16
  %1164 = getelementptr inbounds i8, ptr %1088, i64 7990
  store i16 %1163, ptr %1164, align 2, !tbaa !35
  %1165 = getelementptr inbounds i8, ptr %1088, i64 7972
  store i16 %1163, ptr %1165, align 4, !tbaa !35
  %1166 = getelementptr inbounds i8, ptr %1088, i64 7954
  store i16 %1163, ptr %1166, align 2, !tbaa !35
  %1167 = getelementptr inbounds i8, ptr %1088, i64 7936
  store i16 %1163, ptr %1167, align 8, !tbaa !35
  %1168 = getelementptr inbounds i8, ptr %1088, i64 7918
  store i16 %1163, ptr %1168, align 2, !tbaa !35
  %1169 = getelementptr inbounds i8, ptr %1088, i64 7900
  store i16 %1163, ptr %1169, align 4, !tbaa !35
  %1170 = getelementptr inbounds i8, ptr %1088, i64 7882
  store i16 %1163, ptr %1170, align 2, !tbaa !35
  %1171 = getelementptr inbounds i8, ptr %1088, i64 7864
  store i16 %1163, ptr %1171, align 8, !tbaa !35
  %1172 = load i32, ptr %241, align 4, !tbaa !6
  %1173 = shl nsw i32 %1157, 1
  %1174 = add i32 %1145, %1173
  %1175 = add i32 %1174, %1172
  %1176 = lshr i32 %1175, 2
  %1177 = trunc i32 %1176 to i16
  %1178 = getelementptr inbounds i8, ptr %1088, i64 7974
  store i16 %1177, ptr %1178, align 2, !tbaa !35
  %1179 = getelementptr inbounds i8, ptr %1088, i64 7956
  store i16 %1177, ptr %1179, align 4, !tbaa !35
  %1180 = getelementptr inbounds i8, ptr %1088, i64 7938
  store i16 %1177, ptr %1180, align 2, !tbaa !35
  %1181 = getelementptr inbounds i8, ptr %1088, i64 7920
  store i16 %1177, ptr %1181, align 8, !tbaa !35
  %1182 = getelementptr inbounds i8, ptr %1088, i64 7902
  store i16 %1177, ptr %1182, align 2, !tbaa !35
  %1183 = getelementptr inbounds i8, ptr %1088, i64 7884
  store i16 %1177, ptr %1183, align 4, !tbaa !35
  %1184 = getelementptr inbounds i8, ptr %1088, i64 7866
  store i16 %1177, ptr %1184, align 2, !tbaa !35
  %1185 = load i32, ptr %242, align 4, !tbaa !6
  %1186 = shl nsw i32 %1172, 1
  %1187 = add i32 %1157, 2
  %1188 = add i32 %1187, %1186
  %1189 = add i32 %1188, %1185
  %1190 = lshr i32 %1189, 2
  %1191 = trunc i32 %1190 to i16
  %1192 = getelementptr inbounds i8, ptr %1088, i64 7958
  store i16 %1191, ptr %1192, align 2, !tbaa !35
  %1193 = getelementptr inbounds i8, ptr %1088, i64 7940
  store i16 %1191, ptr %1193, align 4, !tbaa !35
  %1194 = getelementptr inbounds i8, ptr %1088, i64 7922
  store i16 %1191, ptr %1194, align 2, !tbaa !35
  %1195 = getelementptr inbounds i8, ptr %1088, i64 7904
  store i16 %1191, ptr %1195, align 8, !tbaa !35
  %1196 = getelementptr inbounds i8, ptr %1088, i64 7886
  store i16 %1191, ptr %1196, align 2, !tbaa !35
  %1197 = getelementptr inbounds i8, ptr %1088, i64 7868
  store i16 %1191, ptr %1197, align 4, !tbaa !35
  %1198 = load i32, ptr %243, align 4, !tbaa !6
  %1199 = shl nsw i32 %1185, 1
  %1200 = add i32 %1172, 2
  %1201 = add i32 %1200, %1199
  %1202 = add i32 %1201, %1198
  %1203 = lshr i32 %1202, 2
  %1204 = trunc i32 %1203 to i16
  %1205 = getelementptr inbounds i8, ptr %1088, i64 7942
  store i16 %1204, ptr %1205, align 2, !tbaa !35
  %1206 = getelementptr inbounds i8, ptr %1088, i64 7924
  store i16 %1204, ptr %1206, align 4, !tbaa !35
  %1207 = getelementptr inbounds i8, ptr %1088, i64 7906
  store i16 %1204, ptr %1207, align 2, !tbaa !35
  %1208 = getelementptr inbounds i8, ptr %1088, i64 7888
  store i16 %1204, ptr %1208, align 8, !tbaa !35
  %1209 = getelementptr inbounds i8, ptr %1088, i64 7870
  store i16 %1204, ptr %1209, align 2, !tbaa !35
  %1210 = load i32, ptr %244, align 4, !tbaa !6
  %1211 = shl nsw i32 %1198, 1
  %1212 = add i32 %1185, 2
  %1213 = add i32 %1212, %1211
  %1214 = add i32 %1213, %1210
  %1215 = lshr i32 %1214, 2
  %1216 = trunc i32 %1215 to i16
  %1217 = getelementptr inbounds i8, ptr %1088, i64 7926
  store i16 %1216, ptr %1217, align 2, !tbaa !35
  %1218 = getelementptr inbounds i8, ptr %1088, i64 7908
  store i16 %1216, ptr %1218, align 4, !tbaa !35
  %1219 = getelementptr inbounds i8, ptr %1088, i64 7890
  store i16 %1216, ptr %1219, align 2, !tbaa !35
  %1220 = getelementptr inbounds i8, ptr %1088, i64 7872
  store i16 %1216, ptr %1220, align 8, !tbaa !35
  %1221 = load i32, ptr %245, align 4, !tbaa !6
  %1222 = shl nsw i32 %1210, 1
  %1223 = add i32 %1198, 2
  %1224 = add i32 %1223, %1222
  %1225 = add i32 %1224, %1221
  %1226 = lshr i32 %1225, 2
  %1227 = trunc i32 %1226 to i16
  %1228 = getelementptr inbounds i8, ptr %1088, i64 7910
  store i16 %1227, ptr %1228, align 2, !tbaa !35
  %1229 = getelementptr inbounds i8, ptr %1088, i64 7892
  store i16 %1227, ptr %1229, align 4, !tbaa !35
  %1230 = getelementptr inbounds i8, ptr %1088, i64 7874
  store i16 %1227, ptr %1230, align 2, !tbaa !35
  %1231 = load i32, ptr %246, align 4, !tbaa !6
  %1232 = shl nsw i32 %1221, 1
  %1233 = add i32 %1210, 2
  %1234 = add i32 %1233, %1232
  %1235 = add i32 %1234, %1231
  %1236 = lshr i32 %1235, 2
  %1237 = trunc i32 %1236 to i16
  %1238 = getelementptr inbounds i8, ptr %1088, i64 7894
  store i16 %1237, ptr %1238, align 2, !tbaa !35
  %1239 = getelementptr inbounds i8, ptr %1088, i64 7876
  store i16 %1237, ptr %1239, align 4, !tbaa !35
  %1240 = load i32, ptr %247, align 4, !tbaa !6
  %1241 = shl nsw i32 %1231, 1
  %1242 = add i32 %1221, 2
  %1243 = add i32 %1242, %1241
  %1244 = add i32 %1243, %1240
  %1245 = lshr i32 %1244, 2
  %1246 = trunc i32 %1245 to i16
  %1247 = getelementptr inbounds i8, ptr %1088, i64 7878
  store i16 %1246, ptr %1247, align 2, !tbaa !35
  %1248 = add i32 %1157, 1
  %1249 = add i32 %1248, %1143
  %1250 = lshr i32 %1249, 1
  %1251 = trunc i32 %1250 to i16
  %1252 = getelementptr inbounds i8, ptr %1088, i64 8094
  store i16 %1251, ptr %1252, align 2, !tbaa !35
  %1253 = getelementptr inbounds i8, ptr %1088, i64 8060
  store i16 %1251, ptr %1253, align 4, !tbaa !35
  %1254 = getelementptr inbounds i8, ptr %1088, i64 8026
  store i16 %1251, ptr %1254, align 2, !tbaa !35
  %1255 = getelementptr inbounds i8, ptr %1088, i64 7992
  store i16 %1251, ptr %1255, align 8, !tbaa !35
  %1256 = add i32 %1248, %1172
  %1257 = lshr i32 %1256, 1
  %1258 = trunc i32 %1257 to i16
  %1259 = getelementptr inbounds i8, ptr %1088, i64 8096
  store i16 %1258, ptr %1259, align 8, !tbaa !35
  %1260 = getelementptr inbounds i8, ptr %1088, i64 8062
  store i16 %1258, ptr %1260, align 2, !tbaa !35
  %1261 = getelementptr inbounds i8, ptr %1088, i64 8028
  store i16 %1258, ptr %1261, align 4, !tbaa !35
  %1262 = getelementptr inbounds i8, ptr %1088, i64 7994
  store i16 %1258, ptr %1262, align 2, !tbaa !35
  %1263 = add i32 %1172, 1
  %1264 = add i32 %1263, %1185
  %1265 = lshr i32 %1264, 1
  %1266 = trunc i32 %1265 to i16
  %1267 = getelementptr inbounds i8, ptr %1088, i64 8098
  store i16 %1266, ptr %1267, align 2, !tbaa !35
  %1268 = getelementptr inbounds i8, ptr %1088, i64 8064
  store i16 %1266, ptr %1268, align 8, !tbaa !35
  %1269 = getelementptr inbounds i8, ptr %1088, i64 8030
  store i16 %1266, ptr %1269, align 2, !tbaa !35
  %1270 = getelementptr inbounds i8, ptr %1088, i64 7996
  store i16 %1266, ptr %1270, align 4, !tbaa !35
  %1271 = add i32 %1185, 1
  %1272 = add i32 %1271, %1198
  %1273 = lshr i32 %1272, 1
  %1274 = trunc i32 %1273 to i16
  %1275 = getelementptr inbounds i8, ptr %1088, i64 8100
  store i16 %1274, ptr %1275, align 4, !tbaa !35
  %1276 = getelementptr inbounds i8, ptr %1088, i64 8066
  store i16 %1274, ptr %1276, align 2, !tbaa !35
  %1277 = getelementptr inbounds i8, ptr %1088, i64 8032
  store i16 %1274, ptr %1277, align 8, !tbaa !35
  %1278 = getelementptr inbounds i8, ptr %1088, i64 7998
  store i16 %1274, ptr %1278, align 2, !tbaa !35
  %1279 = add i32 %1198, 1
  %1280 = add i32 %1279, %1210
  %1281 = lshr i32 %1280, 1
  %1282 = trunc i32 %1281 to i16
  %1283 = getelementptr inbounds i8, ptr %1088, i64 8102
  store i16 %1282, ptr %1283, align 2, !tbaa !35
  %1284 = getelementptr inbounds i8, ptr %1088, i64 8068
  store i16 %1282, ptr %1284, align 4, !tbaa !35
  %1285 = getelementptr inbounds i8, ptr %1088, i64 8034
  store i16 %1282, ptr %1285, align 2, !tbaa !35
  %1286 = getelementptr inbounds i8, ptr %1088, i64 8000
  store i16 %1282, ptr %1286, align 8, !tbaa !35
  %1287 = add i32 %1210, 1
  %1288 = add i32 %1287, %1221
  %1289 = lshr i32 %1288, 1
  %1290 = trunc i32 %1289 to i16
  %1291 = getelementptr inbounds i8, ptr %1088, i64 8070
  store i16 %1290, ptr %1291, align 2, !tbaa !35
  %1292 = getelementptr inbounds i8, ptr %1088, i64 8036
  store i16 %1290, ptr %1292, align 4, !tbaa !35
  %1293 = getelementptr inbounds i8, ptr %1088, i64 8002
  store i16 %1290, ptr %1293, align 2, !tbaa !35
  %1294 = add i32 %1221, 1
  %1295 = add i32 %1294, %1231
  %1296 = lshr i32 %1295, 1
  %1297 = trunc i32 %1296 to i16
  %1298 = getelementptr inbounds i8, ptr %1088, i64 8038
  store i16 %1297, ptr %1298, align 2, !tbaa !35
  %1299 = getelementptr inbounds i8, ptr %1088, i64 8004
  store i16 %1297, ptr %1299, align 4, !tbaa !35
  %1300 = add i32 %1231, 1
  %1301 = add i32 %1300, %1240
  %1302 = lshr i32 %1301, 1
  %1303 = trunc i32 %1302 to i16
  %1304 = getelementptr inbounds i8, ptr %1088, i64 8006
  store i16 %1303, ptr %1304, align 2, !tbaa !35
  %1305 = getelementptr inbounds i8, ptr %1088, i64 8110
  store i16 %1163, ptr %1305, align 2, !tbaa !35
  %1306 = getelementptr inbounds i8, ptr %1088, i64 8076
  store i16 %1163, ptr %1306, align 4, !tbaa !35
  %1307 = getelementptr inbounds i8, ptr %1088, i64 8042
  store i16 %1163, ptr %1307, align 2, !tbaa !35
  %1308 = getelementptr inbounds i8, ptr %1088, i64 8008
  store i16 %1163, ptr %1308, align 8, !tbaa !35
  %1309 = getelementptr inbounds i8, ptr %1088, i64 8112
  store i16 %1177, ptr %1309, align 8, !tbaa !35
  %1310 = getelementptr inbounds i8, ptr %1088, i64 8078
  store i16 %1177, ptr %1310, align 2, !tbaa !35
  %1311 = getelementptr inbounds i8, ptr %1088, i64 8044
  store i16 %1177, ptr %1311, align 4, !tbaa !35
  %1312 = getelementptr inbounds i8, ptr %1088, i64 8010
  store i16 %1177, ptr %1312, align 2, !tbaa !35
  %1313 = getelementptr inbounds i8, ptr %1088, i64 8114
  store i16 %1191, ptr %1313, align 2, !tbaa !35
  %1314 = getelementptr inbounds i8, ptr %1088, i64 8080
  store i16 %1191, ptr %1314, align 8, !tbaa !35
  %1315 = getelementptr inbounds i8, ptr %1088, i64 8046
  store i16 %1191, ptr %1315, align 2, !tbaa !35
  %1316 = load ptr, ptr @img, align 8, !tbaa !10
  %1317 = getelementptr inbounds i8, ptr %1316, i64 8012
  store i16 %1191, ptr %1317, align 4, !tbaa !35
  %1318 = getelementptr inbounds i8, ptr %1316, i64 8116
  store i16 %1204, ptr %1318, align 4, !tbaa !35
  %1319 = getelementptr inbounds i8, ptr %1316, i64 8082
  store i16 %1204, ptr %1319, align 2, !tbaa !35
  %1320 = getelementptr inbounds i8, ptr %1316, i64 8048
  store i16 %1204, ptr %1320, align 8, !tbaa !35
  %1321 = getelementptr inbounds i8, ptr %1316, i64 8014
  store i16 %1204, ptr %1321, align 2, !tbaa !35
  %1322 = getelementptr inbounds i8, ptr %1316, i64 8118
  store i16 %1216, ptr %1322, align 2, !tbaa !35
  %1323 = getelementptr inbounds i8, ptr %1316, i64 8084
  store i16 %1216, ptr %1323, align 4, !tbaa !35
  %1324 = getelementptr inbounds i8, ptr %1316, i64 8050
  store i16 %1216, ptr %1324, align 2, !tbaa !35
  %1325 = getelementptr inbounds i8, ptr %1316, i64 8016
  store i16 %1216, ptr %1325, align 8, !tbaa !35
  %1326 = getelementptr inbounds i8, ptr %1316, i64 8086
  store i16 %1227, ptr %1326, align 2, !tbaa !35
  %1327 = getelementptr inbounds i8, ptr %1316, i64 8052
  store i16 %1227, ptr %1327, align 4, !tbaa !35
  %1328 = getelementptr inbounds i8, ptr %1316, i64 8018
  store i16 %1227, ptr %1328, align 2, !tbaa !35
  %1329 = getelementptr inbounds i8, ptr %1316, i64 8054
  store i16 %1237, ptr %1329, align 2, !tbaa !35
  %1330 = getelementptr inbounds i8, ptr %1316, i64 8020
  store i16 %1237, ptr %1330, align 4, !tbaa !35
  %1331 = getelementptr inbounds i8, ptr %1316, i64 8022
  store i16 %1246, ptr %1331, align 2, !tbaa !35
  %1332 = load i32, ptr %403, align 4, !tbaa !6
  %1333 = load i32, ptr %402, align 4, !tbaa !6
  %1334 = shl nsw i32 %1333, 1
  %1335 = add i32 %1145, %1332
  %1336 = add i32 %1335, %1334
  %1337 = lshr i32 %1336, 2
  %1338 = trunc i32 %1337 to i16
  %1339 = getelementptr inbounds i8, ptr %1316, i64 8092
  store i16 %1338, ptr %1339, align 4, !tbaa !35
  %1340 = getelementptr inbounds i8, ptr %1316, i64 8058
  store i16 %1338, ptr %1340, align 2, !tbaa !35
  %1341 = getelementptr inbounds i8, ptr %1316, i64 8024
  store i16 %1338, ptr %1341, align 8, !tbaa !35
  %1342 = load i32, ptr %404, align 4, !tbaa !6
  %1343 = shl nsw i32 %1332, 1
  %1344 = add i32 %1333, 2
  %1345 = add i32 %1344, %1343
  %1346 = add i32 %1345, %1342
  %1347 = lshr i32 %1346, 2
  %1348 = trunc i32 %1347 to i16
  %1349 = getelementptr inbounds i8, ptr %1316, i64 8108
  store i16 %1348, ptr %1349, align 4, !tbaa !35
  %1350 = getelementptr inbounds i8, ptr %1316, i64 8074
  store i16 %1348, ptr %1350, align 2, !tbaa !35
  %1351 = getelementptr inbounds i8, ptr %1316, i64 8040
  store i16 %1348, ptr %1351, align 8, !tbaa !35
  %1352 = load i32, ptr %405, align 4, !tbaa !6
  %1353 = shl nsw i32 %1342, 1
  %1354 = add i32 %1332, 2
  %1355 = add i32 %1354, %1353
  %1356 = add i32 %1355, %1352
  %1357 = lshr i32 %1356, 2
  %1358 = trunc i32 %1357 to i16
  %1359 = getelementptr inbounds i8, ptr %1316, i64 8090
  store i16 %1358, ptr %1359, align 2, !tbaa !35
  %1360 = getelementptr inbounds i8, ptr %1316, i64 8056
  store i16 %1358, ptr %1360, align 8, !tbaa !35
  %1361 = load i32, ptr %406, align 4, !tbaa !6
  %1362 = shl nsw i32 %1352, 1
  %1363 = add i32 %1342, 2
  %1364 = add i32 %1363, %1362
  %1365 = add i32 %1364, %1361
  %1366 = lshr i32 %1365, 2
  %1367 = trunc i32 %1366 to i16
  %1368 = getelementptr inbounds i8, ptr %1316, i64 8106
  store i16 %1367, ptr %1368, align 2, !tbaa !35
  %1369 = getelementptr inbounds i8, ptr %1316, i64 8072
  store i16 %1367, ptr %1369, align 8, !tbaa !35
  %1370 = load i32, ptr %407, align 4, !tbaa !6
  %1371 = shl nsw i32 %1361, 1
  %1372 = add i32 %1352, 2
  %1373 = add i32 %1372, %1371
  %1374 = add i32 %1373, %1370
  %1375 = lshr i32 %1374, 2
  %1376 = trunc i32 %1375 to i16
  %1377 = getelementptr inbounds i8, ptr %1316, i64 8088
  store i16 %1376, ptr %1377, align 8, !tbaa !35
  %1378 = load i32, ptr %408, align 4, !tbaa !6
  %1379 = shl nsw i32 %1370, 1
  %1380 = add i32 %1361, 2
  %1381 = add i32 %1380, %1379
  %1382 = add i32 %1381, %1378
  %1383 = lshr i32 %1382, 2
  %1384 = trunc i32 %1383 to i16
  %1385 = getelementptr inbounds i8, ptr %1316, i64 8104
  store i16 %1384, ptr %1385, align 8, !tbaa !35
  %1386 = load i32, ptr %6, align 4, !tbaa !6
  %1387 = add i32 %1333, 1
  %1388 = add i32 %1387, %1386
  %1389 = lshr i32 %1388, 1
  %1390 = trunc i32 %1389 to i16
  %1391 = getelementptr inbounds i8, ptr %1316, i64 8180
  store i16 %1390, ptr %1391, align 4, !tbaa !35
  %1392 = getelementptr inbounds i8, ptr %1316, i64 8160
  store i16 %1390, ptr %1392, align 8, !tbaa !35
  %1393 = getelementptr inbounds i8, ptr %1316, i64 8140
  store i16 %1390, ptr %1393, align 4, !tbaa !35
  %1394 = getelementptr inbounds i8, ptr %1316, i64 8120
  store i16 %1390, ptr %1394, align 8, !tbaa !35
  %1395 = add i32 %1332, 1
  %1396 = add i32 %1395, %1333
  %1397 = lshr i32 %1396, 1
  %1398 = trunc i32 %1397 to i16
  %1399 = getelementptr inbounds i8, ptr %1316, i64 8196
  store i16 %1398, ptr %1399, align 4, !tbaa !35
  %1400 = getelementptr inbounds i8, ptr %1316, i64 8176
  store i16 %1398, ptr %1400, align 8, !tbaa !35
  %1401 = getelementptr inbounds i8, ptr %1316, i64 8156
  store i16 %1398, ptr %1401, align 4, !tbaa !35
  %1402 = getelementptr inbounds i8, ptr %1316, i64 8136
  store i16 %1398, ptr %1402, align 8, !tbaa !35
  %1403 = add i32 %1395, %1342
  %1404 = lshr i32 %1403, 1
  %1405 = trunc i32 %1404 to i16
  %1406 = getelementptr inbounds i8, ptr %1316, i64 8212
  store i16 %1405, ptr %1406, align 4, !tbaa !35
  %1407 = getelementptr inbounds i8, ptr %1316, i64 8192
  store i16 %1405, ptr %1407, align 8, !tbaa !35
  %1408 = getelementptr inbounds i8, ptr %1316, i64 8172
  store i16 %1405, ptr %1408, align 4, !tbaa !35
  %1409 = getelementptr inbounds i8, ptr %1316, i64 8152
  store i16 %1405, ptr %1409, align 8, !tbaa !35
  %1410 = add i32 %1342, 1
  %1411 = add i32 %1410, %1352
  %1412 = lshr i32 %1411, 1
  %1413 = trunc i32 %1412 to i16
  %1414 = getelementptr inbounds i8, ptr %1316, i64 8228
  store i16 %1413, ptr %1414, align 4, !tbaa !35
  %1415 = getelementptr inbounds i8, ptr %1316, i64 8208
  store i16 %1413, ptr %1415, align 8, !tbaa !35
  %1416 = getelementptr inbounds i8, ptr %1316, i64 8188
  store i16 %1413, ptr %1416, align 4, !tbaa !35
  %1417 = getelementptr inbounds i8, ptr %1316, i64 8168
  store i16 %1413, ptr %1417, align 8, !tbaa !35
  %1418 = add i32 %1352, 1
  %1419 = add i32 %1418, %1361
  %1420 = lshr i32 %1419, 1
  %1421 = trunc i32 %1420 to i16
  %1422 = getelementptr inbounds i8, ptr %1316, i64 8244
  store i16 %1421, ptr %1422, align 4, !tbaa !35
  %1423 = getelementptr inbounds i8, ptr %1316, i64 8224
  store i16 %1421, ptr %1423, align 8, !tbaa !35
  %1424 = getelementptr inbounds i8, ptr %1316, i64 8204
  store i16 %1421, ptr %1424, align 4, !tbaa !35
  %1425 = getelementptr inbounds i8, ptr %1316, i64 8184
  store i16 %1421, ptr %1425, align 8, !tbaa !35
  %1426 = add i32 %1361, 1
  %1427 = add i32 %1426, %1370
  %1428 = lshr i32 %1427, 1
  %1429 = trunc i32 %1428 to i16
  %1430 = getelementptr inbounds i8, ptr %1316, i64 8240
  store i16 %1429, ptr %1430, align 8, !tbaa !35
  %1431 = getelementptr inbounds i8, ptr %1316, i64 8220
  store i16 %1429, ptr %1431, align 4, !tbaa !35
  %1432 = getelementptr inbounds i8, ptr %1316, i64 8200
  store i16 %1429, ptr %1432, align 8, !tbaa !35
  %1433 = add i32 %1370, 1
  %1434 = add i32 %1433, %1378
  %1435 = lshr i32 %1434, 1
  %1436 = trunc i32 %1435 to i16
  %1437 = getelementptr inbounds i8, ptr %1316, i64 8236
  store i16 %1436, ptr %1437, align 4, !tbaa !35
  %1438 = getelementptr inbounds i8, ptr %1316, i64 8216
  store i16 %1436, ptr %1438, align 8, !tbaa !35
  %1439 = load i32, ptr %409, align 4, !tbaa !6
  %1440 = add i32 %1378, 1
  %1441 = add i32 %1440, %1439
  %1442 = lshr i32 %1441, 1
  %1443 = trunc i32 %1442 to i16
  %1444 = getelementptr inbounds i8, ptr %1316, i64 8232
  store i16 %1443, ptr %1444, align 8, !tbaa !35
  %1445 = load i32, ptr %240, align 4, !tbaa !6
  %1446 = shl nsw i32 %1386, 1
  %1447 = add i32 %1344, %1446
  %1448 = add i32 %1447, %1445
  %1449 = lshr i32 %1448, 2
  %1450 = trunc i32 %1449 to i16
  %1451 = getelementptr inbounds i8, ptr %1316, i64 8182
  store i16 %1450, ptr %1451, align 2, !tbaa !35
  %1452 = getelementptr inbounds i8, ptr %1316, i64 8162
  store i16 %1450, ptr %1452, align 2, !tbaa !35
  %1453 = getelementptr inbounds i8, ptr %1316, i64 8142
  store i16 %1450, ptr %1453, align 2, !tbaa !35
  %1454 = getelementptr inbounds i8, ptr %1316, i64 8122
  store i16 %1450, ptr %1454, align 2, !tbaa !35
  %1455 = add i32 %1354, %1334
  %1456 = add i32 %1455, %1386
  %1457 = lshr i32 %1456, 2
  %1458 = trunc i32 %1457 to i16
  %1459 = getelementptr inbounds i8, ptr %1316, i64 8198
  store i16 %1458, ptr %1459, align 2, !tbaa !35
  %1460 = getelementptr inbounds i8, ptr %1316, i64 8178
  store i16 %1458, ptr %1460, align 2, !tbaa !35
  %1461 = getelementptr inbounds i8, ptr %1316, i64 8158
  store i16 %1458, ptr %1461, align 2, !tbaa !35
  %1462 = getelementptr inbounds i8, ptr %1316, i64 8138
  store i16 %1458, ptr %1462, align 2, !tbaa !35
  %1463 = getelementptr inbounds i8, ptr %1316, i64 8214
  store i16 %1348, ptr %1463, align 2, !tbaa !35
  %1464 = getelementptr inbounds i8, ptr %1316, i64 8194
  store i16 %1348, ptr %1464, align 2, !tbaa !35
  %1465 = getelementptr inbounds i8, ptr %1316, i64 8174
  store i16 %1348, ptr %1465, align 2, !tbaa !35
  %1466 = getelementptr inbounds i8, ptr %1316, i64 8154
  store i16 %1348, ptr %1466, align 2, !tbaa !35
  %1467 = getelementptr inbounds i8, ptr %1316, i64 8230
  store i16 %1358, ptr %1467, align 2, !tbaa !35
  %1468 = getelementptr inbounds i8, ptr %1316, i64 8210
  store i16 %1358, ptr %1468, align 2, !tbaa !35
  %1469 = getelementptr inbounds i8, ptr %1316, i64 8190
  store i16 %1358, ptr %1469, align 2, !tbaa !35
  %1470 = getelementptr inbounds i8, ptr %1316, i64 8170
  store i16 %1358, ptr %1470, align 2, !tbaa !35
  %1471 = getelementptr inbounds i8, ptr %1316, i64 8246
  store i16 %1367, ptr %1471, align 2, !tbaa !35
  %1472 = getelementptr inbounds i8, ptr %1316, i64 8226
  store i16 %1367, ptr %1472, align 2, !tbaa !35
  %1473 = getelementptr inbounds i8, ptr %1316, i64 8206
  store i16 %1367, ptr %1473, align 2, !tbaa !35
  %1474 = getelementptr inbounds i8, ptr %1316, i64 8186
  store i16 %1367, ptr %1474, align 2, !tbaa !35
  %1475 = getelementptr inbounds i8, ptr %1316, i64 8242
  store i16 %1376, ptr %1475, align 2, !tbaa !35
  %1476 = getelementptr inbounds i8, ptr %1316, i64 8222
  store i16 %1376, ptr %1476, align 2, !tbaa !35
  %1477 = getelementptr inbounds i8, ptr %1316, i64 8202
  store i16 %1376, ptr %1477, align 2, !tbaa !35
  %1478 = getelementptr inbounds i8, ptr %1316, i64 8238
  store i16 %1384, ptr %1478, align 2, !tbaa !35
  %1479 = getelementptr inbounds i8, ptr %1316, i64 8218
  store i16 %1384, ptr %1479, align 2, !tbaa !35
  %1480 = shl nsw i32 %1378, 1
  %1481 = add i32 %1370, 2
  %1482 = add i32 %1481, %1480
  %1483 = add i32 %1482, %1439
  %1484 = lshr i32 %1483, 2
  %1485 = trunc i32 %1484 to i16
  %1486 = getelementptr inbounds i8, ptr %1316, i64 8234
  store i16 %1485, ptr %1486, align 2, !tbaa !35
  %1487 = load i32, ptr %241, align 4, !tbaa !6
  %1488 = shl nsw i32 %1445, 1
  %1489 = add i32 %1386, 2
  %1490 = add i32 %1489, %1488
  %1491 = add i32 %1490, %1487
  %1492 = lshr i32 %1491, 2
  %1493 = trunc i32 %1492 to i16
  %1494 = getelementptr inbounds i8, ptr %1316, i64 8164
  store i16 %1493, ptr %1494, align 4, !tbaa !35
  %1495 = getelementptr inbounds i8, ptr %1316, i64 8144
  store i16 %1493, ptr %1495, align 8, !tbaa !35
  %1496 = getelementptr inbounds i8, ptr %1316, i64 8124
  store i16 %1493, ptr %1496, align 4, !tbaa !35
  %1497 = load i32, ptr %242, align 4, !tbaa !6
  %1498 = shl nsw i32 %1487, 1
  %1499 = add i32 %1445, 2
  %1500 = add i32 %1499, %1498
  %1501 = add i32 %1500, %1497
  %1502 = lshr i32 %1501, 2
  %1503 = trunc i32 %1502 to i16
  %1504 = getelementptr inbounds i8, ptr %1316, i64 8166
  store i16 %1503, ptr %1504, align 2, !tbaa !35
  %1505 = getelementptr inbounds i8, ptr %1316, i64 8146
  store i16 %1503, ptr %1505, align 2, !tbaa !35
  %1506 = getelementptr inbounds i8, ptr %1316, i64 8126
  store i16 %1503, ptr %1506, align 2, !tbaa !35
  %1507 = load i32, ptr %243, align 4, !tbaa !6
  %1508 = shl nsw i32 %1497, 1
  %1509 = add i32 %1487, 2
  %1510 = add i32 %1509, %1508
  %1511 = add i32 %1510, %1507
  %1512 = lshr i32 %1511, 2
  %1513 = trunc i32 %1512 to i16
  %1514 = getelementptr inbounds i8, ptr %1316, i64 8148
  store i16 %1513, ptr %1514, align 4, !tbaa !35
  %1515 = getelementptr inbounds i8, ptr %1316, i64 8128
  store i16 %1513, ptr %1515, align 8, !tbaa !35
  %1516 = load i32, ptr %244, align 4, !tbaa !6
  %1517 = shl nsw i32 %1507, 1
  %1518 = add i32 %1497, 2
  %1519 = add i32 %1518, %1517
  %1520 = add i32 %1519, %1516
  %1521 = lshr i32 %1520, 2
  %1522 = trunc i32 %1521 to i16
  %1523 = getelementptr inbounds i8, ptr %1316, i64 8150
  store i16 %1522, ptr %1523, align 2, !tbaa !35
  %1524 = getelementptr inbounds i8, ptr %1316, i64 8130
  store i16 %1522, ptr %1524, align 2, !tbaa !35
  %1525 = load i32, ptr %245, align 4, !tbaa !6
  %1526 = shl nsw i32 %1516, 1
  %1527 = add i32 %1507, 2
  %1528 = add i32 %1527, %1526
  %1529 = add i32 %1528, %1525
  %1530 = lshr i32 %1529, 2
  %1531 = trunc i32 %1530 to i16
  %1532 = getelementptr inbounds i8, ptr %1316, i64 8132
  store i16 %1531, ptr %1532, align 4, !tbaa !35
  %1533 = load i32, ptr %246, align 4, !tbaa !6
  %1534 = shl nsw i32 %1525, 1
  %1535 = add i32 %1516, 2
  %1536 = add i32 %1535, %1534
  %1537 = add i32 %1536, %1533
  %1538 = lshr i32 %1537, 2
  %1539 = trunc i32 %1538 to i16
  %1540 = getelementptr inbounds i8, ptr %1316, i64 8134
  store i16 %1539, ptr %1540, align 2, !tbaa !35
  br label %1542

1541:                                             ; preds = %1076
  br i1 %189, label %1542, label %1683

1542:                                             ; preds = %1078, %1541
  %1543 = load i32, ptr %402, align 4, !tbaa !6
  %1544 = load i32, ptr %403, align 4, !tbaa !6
  %1545 = add i32 %1544, 1
  %1546 = add i32 %1545, %1543
  %1547 = lshr i32 %1546, 1
  %1548 = trunc i32 %1547 to i16
  %1549 = load ptr, ptr @img, align 8, !tbaa !10
  %1550 = getelementptr inbounds i8, ptr %1549, i64 8376
  store i16 %1548, ptr %1550, align 8, !tbaa !35
  %1551 = load i32, ptr %404, align 4, !tbaa !6
  %1552 = add i32 %1545, %1551
  %1553 = lshr i32 %1552, 1
  %1554 = trunc i32 %1553 to i16
  %1555 = getelementptr inbounds i8, ptr %1549, i64 8380
  store i16 %1554, ptr %1555, align 4, !tbaa !35
  %1556 = getelementptr inbounds i8, ptr %1549, i64 8392
  store i16 %1554, ptr %1556, align 8, !tbaa !35
  %1557 = load i32, ptr %405, align 4, !tbaa !6
  %1558 = add i32 %1551, 1
  %1559 = add i32 %1558, %1557
  %1560 = lshr i32 %1559, 1
  %1561 = trunc i32 %1560 to i16
  %1562 = getelementptr inbounds i8, ptr %1549, i64 8384
  store i16 %1561, ptr %1562, align 8, !tbaa !35
  %1563 = getelementptr inbounds i8, ptr %1549, i64 8396
  store i16 %1561, ptr %1563, align 4, !tbaa !35
  %1564 = getelementptr inbounds i8, ptr %1549, i64 8408
  store i16 %1561, ptr %1564, align 8, !tbaa !35
  %1565 = load i32, ptr %406, align 4, !tbaa !6
  %1566 = add i32 %1557, 1
  %1567 = add i32 %1566, %1565
  %1568 = lshr i32 %1567, 1
  %1569 = trunc i32 %1568 to i16
  %1570 = getelementptr inbounds i8, ptr %1549, i64 8388
  store i16 %1569, ptr %1570, align 4, !tbaa !35
  %1571 = getelementptr inbounds i8, ptr %1549, i64 8400
  store i16 %1569, ptr %1571, align 8, !tbaa !35
  %1572 = getelementptr inbounds i8, ptr %1549, i64 8412
  store i16 %1569, ptr %1572, align 4, !tbaa !35
  %1573 = getelementptr inbounds i8, ptr %1549, i64 8424
  store i16 %1569, ptr %1573, align 8, !tbaa !35
  %1574 = load i32, ptr %407, align 4, !tbaa !6
  %1575 = add i32 %1565, 1
  %1576 = add i32 %1575, %1574
  %1577 = lshr i32 %1576, 1
  %1578 = trunc i32 %1577 to i16
  %1579 = getelementptr inbounds i8, ptr %1549, i64 8404
  store i16 %1578, ptr %1579, align 4, !tbaa !35
  %1580 = getelementptr inbounds i8, ptr %1549, i64 8416
  store i16 %1578, ptr %1580, align 8, !tbaa !35
  %1581 = getelementptr inbounds i8, ptr %1549, i64 8428
  store i16 %1578, ptr %1581, align 4, !tbaa !35
  %1582 = getelementptr inbounds i8, ptr %1549, i64 8440
  store i16 %1578, ptr %1582, align 8, !tbaa !35
  %1583 = load i32, ptr %408, align 4, !tbaa !6
  %1584 = add i32 %1574, 1
  %1585 = add i32 %1584, %1583
  %1586 = lshr i32 %1585, 1
  %1587 = trunc i32 %1586 to i16
  %1588 = getelementptr inbounds i8, ptr %1549, i64 8420
  store i16 %1587, ptr %1588, align 4, !tbaa !35
  %1589 = getelementptr inbounds i8, ptr %1549, i64 8432
  store i16 %1587, ptr %1589, align 8, !tbaa !35
  %1590 = getelementptr inbounds i8, ptr %1549, i64 8444
  store i16 %1587, ptr %1590, align 4, !tbaa !35
  %1591 = getelementptr inbounds i8, ptr %1549, i64 8456
  store i16 %1587, ptr %1591, align 8, !tbaa !35
  %1592 = load i32, ptr %409, align 4, !tbaa !6
  %1593 = add i32 %1583, 1
  %1594 = add i32 %1593, %1592
  %1595 = lshr i32 %1594, 1
  %1596 = trunc i32 %1595 to i16
  %1597 = getelementptr inbounds i8, ptr %1549, i64 8436
  store i16 %1596, ptr %1597, align 4, !tbaa !35
  %1598 = getelementptr inbounds i8, ptr %1549, i64 8448
  store i16 %1596, ptr %1598, align 8, !tbaa !35
  %1599 = getelementptr inbounds i8, ptr %1549, i64 8460
  store i16 %1596, ptr %1599, align 4, !tbaa !35
  %1600 = getelementptr inbounds i8, ptr %1549, i64 8472
  store i16 %1596, ptr %1600, align 8, !tbaa !35
  %1601 = trunc i32 %1592 to i16
  %1602 = getelementptr inbounds i8, ptr %1549, i64 8502
  store i16 %1601, ptr %1602, align 2, !tbaa !35
  %1603 = getelementptr inbounds i8, ptr %1549, i64 8500
  store i16 %1601, ptr %1603, align 4, !tbaa !35
  %1604 = getelementptr inbounds i8, ptr %1549, i64 8498
  store i16 %1601, ptr %1604, align 2, !tbaa !35
  %1605 = getelementptr inbounds i8, ptr %1549, i64 8496
  store i16 %1601, ptr %1605, align 8, !tbaa !35
  %1606 = getelementptr inbounds i8, ptr %1549, i64 8494
  store i16 %1601, ptr %1606, align 2, !tbaa !35
  %1607 = getelementptr inbounds i8, ptr %1549, i64 8492
  store i16 %1601, ptr %1607, align 4, !tbaa !35
  %1608 = getelementptr inbounds i8, ptr %1549, i64 8490
  store i16 %1601, ptr %1608, align 2, !tbaa !35
  %1609 = getelementptr inbounds i8, ptr %1549, i64 8488
  store i16 %1601, ptr %1609, align 8, !tbaa !35
  %1610 = getelementptr inbounds i8, ptr %1549, i64 8486
  store i16 %1601, ptr %1610, align 2, !tbaa !35
  %1611 = getelementptr inbounds i8, ptr %1549, i64 8484
  store i16 %1601, ptr %1611, align 4, !tbaa !35
  %1612 = getelementptr inbounds i8, ptr %1549, i64 8482
  store i16 %1601, ptr %1612, align 2, !tbaa !35
  %1613 = getelementptr inbounds i8, ptr %1549, i64 8480
  store i16 %1601, ptr %1613, align 8, !tbaa !35
  %1614 = getelementptr inbounds i8, ptr %1549, i64 8478
  store i16 %1601, ptr %1614, align 2, !tbaa !35
  %1615 = getelementptr inbounds i8, ptr %1549, i64 8476
  store i16 %1601, ptr %1615, align 4, !tbaa !35
  %1616 = getelementptr inbounds i8, ptr %1549, i64 8470
  store i16 %1601, ptr %1616, align 2, !tbaa !35
  %1617 = getelementptr inbounds i8, ptr %1549, i64 8468
  store i16 %1601, ptr %1617, align 4, !tbaa !35
  %1618 = getelementptr inbounds i8, ptr %1549, i64 8466
  store i16 %1601, ptr %1618, align 2, !tbaa !35
  %1619 = getelementptr inbounds i8, ptr %1549, i64 8464
  store i16 %1601, ptr %1619, align 8, !tbaa !35
  %1620 = getelementptr inbounds i8, ptr %1549, i64 8454
  store i16 %1601, ptr %1620, align 2, !tbaa !35
  %1621 = getelementptr inbounds i8, ptr %1549, i64 8452
  store i16 %1601, ptr %1621, align 4, !tbaa !35
  %1622 = mul nsw i32 %1592, 3
  %1623 = add i32 %1583, 2
  %1624 = add i32 %1623, %1622
  %1625 = lshr i32 %1624, 2
  %1626 = trunc i32 %1625 to i16
  %1627 = getelementptr inbounds i8, ptr %1549, i64 8438
  store i16 %1626, ptr %1627, align 2, !tbaa !35
  %1628 = getelementptr inbounds i8, ptr %1549, i64 8450
  store i16 %1626, ptr %1628, align 2, !tbaa !35
  %1629 = getelementptr inbounds i8, ptr %1549, i64 8462
  store i16 %1626, ptr %1629, align 2, !tbaa !35
  %1630 = getelementptr inbounds i8, ptr %1549, i64 8474
  store i16 %1626, ptr %1630, align 2, !tbaa !35
  %1631 = shl nsw i32 %1583, 1
  %1632 = add i32 %1574, 2
  %1633 = add i32 %1632, %1631
  %1634 = add i32 %1633, %1592
  %1635 = lshr i32 %1634, 2
  %1636 = trunc i32 %1635 to i16
  %1637 = getelementptr inbounds i8, ptr %1549, i64 8422
  store i16 %1636, ptr %1637, align 2, !tbaa !35
  %1638 = getelementptr inbounds i8, ptr %1549, i64 8434
  store i16 %1636, ptr %1638, align 2, !tbaa !35
  %1639 = getelementptr inbounds i8, ptr %1549, i64 8446
  store i16 %1636, ptr %1639, align 2, !tbaa !35
  %1640 = getelementptr inbounds i8, ptr %1549, i64 8458
  store i16 %1636, ptr %1640, align 2, !tbaa !35
  %1641 = shl nsw i32 %1574, 1
  %1642 = add i32 %1565, 2
  %1643 = add i32 %1642, %1641
  %1644 = add i32 %1643, %1583
  %1645 = lshr i32 %1644, 2
  %1646 = trunc i32 %1645 to i16
  %1647 = getelementptr inbounds i8, ptr %1549, i64 8406
  store i16 %1646, ptr %1647, align 2, !tbaa !35
  %1648 = getelementptr inbounds i8, ptr %1549, i64 8418
  store i16 %1646, ptr %1648, align 2, !tbaa !35
  %1649 = getelementptr inbounds i8, ptr %1549, i64 8430
  store i16 %1646, ptr %1649, align 2, !tbaa !35
  %1650 = getelementptr inbounds i8, ptr %1549, i64 8442
  store i16 %1646, ptr %1650, align 2, !tbaa !35
  %1651 = shl nsw i32 %1565, 1
  %1652 = add i32 %1557, 2
  %1653 = add i32 %1652, %1651
  %1654 = add i32 %1653, %1574
  %1655 = lshr i32 %1654, 2
  %1656 = trunc i32 %1655 to i16
  %1657 = getelementptr inbounds i8, ptr %1549, i64 8390
  store i16 %1656, ptr %1657, align 2, !tbaa !35
  %1658 = getelementptr inbounds i8, ptr %1549, i64 8402
  store i16 %1656, ptr %1658, align 2, !tbaa !35
  %1659 = getelementptr inbounds i8, ptr %1549, i64 8414
  store i16 %1656, ptr %1659, align 2, !tbaa !35
  %1660 = getelementptr inbounds i8, ptr %1549, i64 8426
  store i16 %1656, ptr %1660, align 2, !tbaa !35
  %1661 = shl nsw i32 %1557, 1
  %1662 = add i32 %1551, 2
  %1663 = add i32 %1662, %1661
  %1664 = add i32 %1663, %1565
  %1665 = lshr i32 %1664, 2
  %1666 = trunc i32 %1665 to i16
  %1667 = getelementptr inbounds i8, ptr %1549, i64 8386
  store i16 %1666, ptr %1667, align 2, !tbaa !35
  %1668 = getelementptr inbounds i8, ptr %1549, i64 8398
  store i16 %1666, ptr %1668, align 2, !tbaa !35
  %1669 = getelementptr inbounds i8, ptr %1549, i64 8410
  store i16 %1666, ptr %1669, align 2, !tbaa !35
  %1670 = shl nsw i32 %1551, 1
  %1671 = add i32 %1652, %1544
  %1672 = add i32 %1671, %1670
  %1673 = lshr i32 %1672, 2
  %1674 = trunc i32 %1673 to i16
  %1675 = getelementptr inbounds i8, ptr %1549, i64 8382
  store i16 %1674, ptr %1675, align 2, !tbaa !35
  %1676 = getelementptr inbounds i8, ptr %1549, i64 8394
  store i16 %1674, ptr %1676, align 2, !tbaa !35
  %1677 = shl nsw i32 %1544, 1
  %1678 = add i32 %1662, %1543
  %1679 = add i32 %1678, %1677
  %1680 = lshr i32 %1679, 2
  %1681 = trunc i32 %1680 to i16
  %1682 = getelementptr inbounds i8, ptr %1549, i64 8378
  store i16 %1681, ptr %1682, align 2, !tbaa !35
  br label %1683

1683:                                             ; preds = %1542, %1541
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #8
  ret void
}

declare dso_local signext i32 @SATD8X8(ptr noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local double @RDCost_for_8x8IntraBlocks(ptr nocapture noundef writeonly %0, i32 noundef signext %1, i32 noundef signext %2, double noundef %3, double %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = shl i32 %1, 3
  %9 = and i32 %8, 8
  %10 = shl nsw i32 %1, 2
  %11 = and i32 %10, -8
  %12 = load ptr, ptr @img, align 8, !tbaa !10
  %13 = getelementptr inbounds i8, ptr %12, i64 152
  %14 = load i32, ptr %13, align 8, !tbaa !12
  %15 = add i32 %14, %9
  %16 = getelementptr inbounds i8, ptr %12, i64 156
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = add nsw i32 %17, %11
  %19 = getelementptr inbounds i8, ptr %12, i64 172
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = add nsw i32 %20, %11
  %22 = load ptr, ptr @imgY_org, align 8, !tbaa !10
  %23 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %23, i64 6424
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = getelementptr inbounds i8, ptr %12, i64 31568
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds i8, ptr %12, i64 31576
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds i8, ptr %12, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %29, i64 %32
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = load ptr, ptr @input, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %36, i64 2992
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !6
  %42 = call signext i32 @dct_luma8x8(i32 noundef signext %1, ptr noundef nonnull %7, i32 noundef signext 1)
  store i32 %42, ptr %0, align 4, !tbaa !6
  %43 = load ptr, ptr @img, align 8, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %43, i64 89184
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = sext i32 %15 to i64
  %47 = sext i32 %21 to i64
  %48 = sext i32 %18 to i64
  %49 = add nsw i64 %46, 1
  %50 = getelementptr ptr, ptr %22, i64 %47
  %51 = getelementptr ptr, ptr %25, i64 %48
  %52 = add nsw i64 %46, 2
  %53 = add nsw i64 %46, 3
  %54 = add nsw i64 %46, 4
  %55 = add nsw i64 %46, 5
  %56 = add nsw i64 %46, 6
  %57 = add nsw i64 %46, 7
  br label %58

58:                                               ; preds = %6, %58
  %59 = phi i64 [ 0, %6 ], [ %153, %58 ]
  %60 = phi i64 [ 0, %6 ], [ %152, %58 ]
  %61 = getelementptr ptr, ptr %50, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = getelementptr inbounds i16, ptr %62, i64 %46
  %64 = load i16, ptr %63, align 2, !tbaa !35
  %65 = zext i16 %64 to i64
  %66 = getelementptr ptr, ptr %51, i64 %59
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  %68 = getelementptr inbounds i16, ptr %67, i64 %46
  %69 = load i16, ptr %68, align 2, !tbaa !35
  %70 = zext i16 %69 to i64
  %71 = sub nsw i64 %65, %70
  %72 = getelementptr inbounds i32, ptr %45, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !6
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %60, %74
  %76 = getelementptr inbounds i16, ptr %62, i64 %49
  %77 = load i16, ptr %76, align 2, !tbaa !35
  %78 = zext i16 %77 to i64
  %79 = getelementptr inbounds i16, ptr %67, i64 %49
  %80 = load i16, ptr %79, align 2, !tbaa !35
  %81 = zext i16 %80 to i64
  %82 = sub nsw i64 %78, %81
  %83 = getelementptr inbounds i32, ptr %45, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !6
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %75, %85
  %87 = getelementptr inbounds i16, ptr %62, i64 %52
  %88 = load i16, ptr %87, align 2, !tbaa !35
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds i16, ptr %67, i64 %52
  %91 = load i16, ptr %90, align 2, !tbaa !35
  %92 = zext i16 %91 to i64
  %93 = sub nsw i64 %89, %92
  %94 = getelementptr inbounds i32, ptr %45, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %86, %96
  %98 = getelementptr inbounds i16, ptr %62, i64 %53
  %99 = load i16, ptr %98, align 2, !tbaa !35
  %100 = zext i16 %99 to i64
  %101 = getelementptr inbounds i16, ptr %67, i64 %53
  %102 = load i16, ptr %101, align 2, !tbaa !35
  %103 = zext i16 %102 to i64
  %104 = sub nsw i64 %100, %103
  %105 = getelementptr inbounds i32, ptr %45, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !6
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %97, %107
  %109 = getelementptr inbounds i16, ptr %62, i64 %54
  %110 = load i16, ptr %109, align 2, !tbaa !35
  %111 = zext i16 %110 to i64
  %112 = getelementptr inbounds i16, ptr %67, i64 %54
  %113 = load i16, ptr %112, align 2, !tbaa !35
  %114 = zext i16 %113 to i64
  %115 = sub nsw i64 %111, %114
  %116 = getelementptr inbounds i32, ptr %45, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !6
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %108, %118
  %120 = getelementptr inbounds i16, ptr %62, i64 %55
  %121 = load i16, ptr %120, align 2, !tbaa !35
  %122 = zext i16 %121 to i64
  %123 = getelementptr inbounds i16, ptr %67, i64 %55
  %124 = load i16, ptr %123, align 2, !tbaa !35
  %125 = zext i16 %124 to i64
  %126 = sub nsw i64 %122, %125
  %127 = getelementptr inbounds i32, ptr %45, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !6
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %119, %129
  %131 = getelementptr inbounds i16, ptr %62, i64 %56
  %132 = load i16, ptr %131, align 2, !tbaa !35
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds i16, ptr %67, i64 %56
  %135 = load i16, ptr %134, align 2, !tbaa !35
  %136 = zext i16 %135 to i64
  %137 = sub nsw i64 %133, %136
  %138 = getelementptr inbounds i32, ptr %45, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !6
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %130, %140
  %142 = getelementptr inbounds i16, ptr %62, i64 %57
  %143 = load i16, ptr %142, align 2, !tbaa !35
  %144 = zext i16 %143 to i64
  %145 = getelementptr inbounds i16, ptr %67, i64 %57
  %146 = load i16, ptr %145, align 2, !tbaa !35
  %147 = zext i16 %146 to i64
  %148 = sub nsw i64 %144, %147
  %149 = getelementptr inbounds i32, ptr %45, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !6
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %141, %151
  %153 = add nuw nsw i64 %59, 1
  %154 = icmp eq i64 %153, 8
  br i1 %154, label %155, label %58

155:                                              ; preds = %58
  %156 = getelementptr inbounds i8, ptr %12, i64 31584
  %157 = getelementptr inbounds [1200 x %struct.syntaxelement], ptr %156, i64 0, i64 %35
  %158 = icmp eq i32 %5, %2
  %159 = icmp sge i32 %2, %5
  %160 = sext i1 %159 to i32
  %161 = add nsw i32 %160, %2
  %162 = select i1 %158, i32 -1, i32 %161
  %163 = getelementptr inbounds i8, ptr %157, i64 4
  store i32 %162, ptr %163, align 4, !tbaa !53
  %164 = getelementptr inbounds i8, ptr %157, i64 24
  store i32 %1, ptr %164, align 8, !tbaa !55
  store i32 4, ptr %157, align 8, !tbaa !56
  %165 = load ptr, ptr @input, align 8, !tbaa !10
  %166 = getelementptr inbounds i8, ptr %165, i64 2984
  %167 = load i32, ptr %166, align 8, !tbaa !57
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %155
  %170 = getelementptr inbounds i8, ptr %157, i64 40
  store ptr @writeIntraPredMode_CABAC, ptr %170, align 8, !tbaa !58
  %171 = load ptr, ptr @img, align 8, !tbaa !10
  br label %172

172:                                              ; preds = %169, %155
  %173 = phi ptr [ %171, %169 ], [ %43, %155 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 24
  %175 = load i32, ptr %174, align 8, !tbaa !59
  %176 = icmp eq i32 %175, 1
  %177 = getelementptr inbounds i8, ptr %27, i64 24
  %178 = load ptr, ptr %177, align 8, !tbaa !60
  %179 = select i1 %176, i64 72, i64 16
  %180 = getelementptr inbounds i8, ptr %41, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !6
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.datapartition, ptr %178, i64 %182
  %184 = load ptr, ptr @input, align 8, !tbaa !10
  %185 = getelementptr inbounds i8, ptr %184, i64 2984
  %186 = load i32, ptr %185, align 8, !tbaa !57
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %172
  %189 = tail call signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef nonnull %157, ptr noundef %183) #8
  br label %194

190:                                              ; preds = %172
  %191 = getelementptr inbounds i8, ptr %183, i64 104
  %192 = load ptr, ptr %191, align 8, !tbaa !62
  %193 = tail call signext i32 %192(ptr noundef nonnull %157, ptr noundef %183) #8
  br label %194

194:                                              ; preds = %190, %188
  %195 = getelementptr inbounds i8, ptr %157, i64 12
  %196 = load i32, ptr %195, align 4, !tbaa !65
  %197 = load i32, ptr %33, align 8, !tbaa !51
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %33, align 8, !tbaa !51
  %199 = load ptr, ptr @input, align 8, !tbaa !10
  %200 = getelementptr inbounds i8, ptr %199, i64 2984
  %201 = load i32, ptr %200, align 8, !tbaa !57
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %194
  %204 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext 0, i32 noundef signext 0) #8
  %205 = add nsw i32 %204, %196
  %206 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext 1, i32 noundef signext 0) #8
  %207 = add nsw i32 %206, %205
  %208 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext 2, i32 noundef signext 0) #8
  %209 = add nsw i32 %208, %207
  %210 = tail call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext 3, i32 noundef signext 0) #8
  %211 = add nsw i32 %210, %209
  br label %215

212:                                              ; preds = %194
  %213 = tail call signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext %1, i32 noundef signext 1) #8
  %214 = add nsw i32 %213, %196
  br label %215

215:                                              ; preds = %203, %212
  %216 = phi i32 [ %214, %212 ], [ %211, %203 ]
  %217 = sitofp i32 %216 to double
  %218 = load ptr, ptr @img, align 8, !tbaa !10
  %219 = getelementptr inbounds i8, ptr %218, i64 90572
  %220 = load i32, ptr %219, align 4, !tbaa !37
  %221 = icmp eq i32 %220, 0
  %222 = sitofp i64 %152 to double
  %223 = tail call double @llvm.fmuladd.f64(double %3, double %217, double %222)
  %224 = select i1 %221, double %223, double %217
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret double %224
}

declare dso_local void @reset_coding_state_cs_cm() local_unnamed_addr #3

declare dso_local signext i32 @RDCost_for_4x4Blocks_Chroma(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @dct_luma8x8(i32 noundef signext %0, ptr nocapture noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca [8 x [8 x i32]], align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = shl i32 %0, 3
  %8 = and i32 %7, 8
  %9 = shl nsw i32 %0, 2
  %10 = and i32 %9, -8
  %11 = load ptr, ptr @img, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 14136
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %21 = getelementptr inbounds i8, ptr %11, i64 31576
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = getelementptr inbounds i8, ptr %11, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %25
  %27 = getelementptr inbounds i8, ptr %11, i64 90264
  %28 = load i32, ptr %27, align 8, !tbaa !66
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = getelementptr inbounds i8, ptr %11, i64 90220
  %32 = load i32, ptr %31, align 4, !tbaa !67
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %26, i64 424
  %36 = load i32, ptr %35, align 8, !tbaa !68
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %30, %34, %3
  %39 = phi i1 [ true, %3 ], [ false, %30 ], [ %37, %34 ]
  %40 = getelementptr inbounds i8, ptr %11, i64 40
  %41 = load i32, ptr %40, align 8, !tbaa !69
  %42 = getelementptr inbounds i8, ptr %11, i64 90492
  %43 = load i32, ptr %42, align 4, !tbaa !70
  %44 = sub i32 0, %43
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = getelementptr inbounds i8, ptr %11, i64 90552
  %48 = load i32, ptr %47, align 8, !tbaa !71
  %49 = icmp eq i32 %48, 1
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i1 [ false, %38 ], [ %49, %46 ]
  %52 = add nsw i32 %43, %41
  %53 = freeze i32 %52
  %54 = sdiv i32 %53, 6
  %55 = mul i32 %54, 6
  %56 = sub i32 %53, %55
  %57 = add nsw i32 %54, 16
  %58 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !10
  %59 = sext i32 %2 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = sext i32 %56 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !10
  %65 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !10
  %66 = getelementptr inbounds ptr, ptr %65, i64 %59
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  %68 = sext i32 %54 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !10
  %72 = getelementptr inbounds ptr, ptr %71, i64 %59
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = getelementptr inbounds ptr, ptr %73, i64 %62
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = sub nsw i32 6, %54
  %77 = sub nsw i32 5, %54
  %78 = shl nuw i32 1, %77
  %79 = add nsw i32 %54, -6
  br i1 %51, label %237, label %80

80:                                               ; preds = %50
  %81 = getelementptr inbounds i8, ptr %11, i64 13112
  %82 = getelementptr inbounds i8, ptr %4, i64 64
  %83 = getelementptr inbounds i8, ptr %4, i64 128
  %84 = getelementptr inbounds i8, ptr %4, i64 192
  %85 = getelementptr inbounds i8, ptr %4, i64 32
  %86 = getelementptr inbounds i8, ptr %4, i64 96
  %87 = getelementptr inbounds i8, ptr %4, i64 160
  %88 = getelementptr inbounds i8, ptr %4, i64 224
  br label %97

89:                                               ; preds = %97
  %90 = getelementptr inbounds i8, ptr %11, i64 13240
  %91 = getelementptr inbounds i8, ptr %11, i64 13368
  %92 = getelementptr inbounds i8, ptr %11, i64 13496
  %93 = getelementptr inbounds i8, ptr %11, i64 13176
  %94 = getelementptr inbounds i8, ptr %11, i64 13304
  %95 = getelementptr inbounds i8, ptr %11, i64 13432
  %96 = getelementptr inbounds i8, ptr %11, i64 13560
  br label %167

97:                                               ; preds = %80, %97
  %98 = phi i64 [ 0, %80 ], [ %165, %97 ]
  %99 = getelementptr inbounds [16 x [16 x i32]], ptr %81, i64 0, i64 %98
  %100 = load i32, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %99, i64 28
  %102 = load i32, ptr %101, align 4, !tbaa !6
  %103 = add nsw i32 %102, %100
  %104 = getelementptr inbounds i8, ptr %99, i64 4
  %105 = load i32, ptr %104, align 4, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %99, i64 24
  %107 = load i32, ptr %106, align 8, !tbaa !6
  %108 = add nsw i32 %107, %105
  %109 = getelementptr inbounds i8, ptr %99, i64 8
  %110 = load i32, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %99, i64 20
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = add nsw i32 %112, %110
  %114 = getelementptr inbounds i8, ptr %99, i64 12
  %115 = load i32, ptr %114, align 4, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %99, i64 16
  %117 = load i32, ptr %116, align 8, !tbaa !6
  %118 = add nsw i32 %117, %115
  %119 = add nsw i32 %118, %103
  %120 = add nsw i32 %113, %108
  %121 = sub nsw i32 %103, %118
  %122 = sub nsw i32 %108, %113
  %123 = sub nsw i32 %100, %102
  %124 = sub nsw i32 %105, %107
  %125 = sub nsw i32 %110, %112
  %126 = sub nsw i32 %115, %117
  %127 = ashr i32 %123, 1
  %128 = add i32 %127, %123
  %129 = add i32 %128, %124
  %130 = add i32 %129, %125
  %131 = ashr i32 %125, 1
  %132 = add i32 %125, %131
  %133 = add i32 %132, %126
  %134 = sub i32 %123, %133
  %135 = ashr i32 %124, 1
  %136 = add i32 %124, %135
  %137 = sub i32 %123, %136
  %138 = add i32 %137, %126
  %139 = sub nsw i32 %124, %125
  %140 = ashr i32 %126, 1
  %141 = add i32 %126, %139
  %142 = add i32 %141, %140
  %143 = add nsw i32 %119, %120
  %144 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %98
  store i32 %143, ptr %144, align 4, !tbaa !6
  %145 = ashr i32 %122, 1
  %146 = add nsw i32 %121, %145
  %147 = getelementptr inbounds [8 x i32], ptr %82, i64 0, i64 %98
  store i32 %146, ptr %147, align 4, !tbaa !6
  %148 = sub nsw i32 %119, %120
  %149 = getelementptr inbounds [8 x i32], ptr %83, i64 0, i64 %98
  store i32 %148, ptr %149, align 4, !tbaa !6
  %150 = ashr i32 %121, 1
  %151 = sub nsw i32 %150, %122
  %152 = getelementptr inbounds [8 x i32], ptr %84, i64 0, i64 %98
  store i32 %151, ptr %152, align 4, !tbaa !6
  %153 = ashr i32 %142, 2
  %154 = add nsw i32 %153, %130
  %155 = getelementptr inbounds [8 x i32], ptr %85, i64 0, i64 %98
  store i32 %154, ptr %155, align 4, !tbaa !6
  %156 = ashr i32 %138, 2
  %157 = add nsw i32 %134, %156
  %158 = getelementptr inbounds [8 x i32], ptr %86, i64 0, i64 %98
  store i32 %157, ptr %158, align 4, !tbaa !6
  %159 = ashr i32 %134, 2
  %160 = sub nsw i32 %138, %159
  %161 = getelementptr inbounds [8 x i32], ptr %87, i64 0, i64 %98
  store i32 %160, ptr %161, align 4, !tbaa !6
  %162 = ashr i32 %130, 2
  %163 = sub i32 %162, %142
  %164 = getelementptr inbounds [8 x i32], ptr %88, i64 0, i64 %98
  store i32 %163, ptr %164, align 4, !tbaa !6
  %165 = add nuw nsw i64 %98, 1
  %166 = icmp eq i64 %165, 8
  br i1 %166, label %89, label %97

167:                                              ; preds = %89, %167
  %168 = phi i64 [ 0, %89 ], [ %235, %167 ]
  %169 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %169, i64 28
  %172 = load i32, ptr %171, align 4, !tbaa !6
  %173 = add nsw i32 %172, %170
  %174 = getelementptr inbounds i8, ptr %169, i64 4
  %175 = load i32, ptr %174, align 4, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %169, i64 24
  %177 = load i32, ptr %176, align 4, !tbaa !6
  %178 = add nsw i32 %177, %175
  %179 = getelementptr inbounds i8, ptr %169, i64 8
  %180 = load i32, ptr %179, align 4, !tbaa !6
  %181 = getelementptr inbounds i8, ptr %169, i64 20
  %182 = load i32, ptr %181, align 4, !tbaa !6
  %183 = add nsw i32 %182, %180
  %184 = getelementptr inbounds i8, ptr %169, i64 12
  %185 = load i32, ptr %184, align 4, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %169, i64 16
  %187 = load i32, ptr %186, align 4, !tbaa !6
  %188 = add nsw i32 %187, %185
  %189 = add nsw i32 %188, %173
  %190 = add nsw i32 %183, %178
  %191 = sub nsw i32 %173, %188
  %192 = sub nsw i32 %178, %183
  %193 = sub nsw i32 %170, %172
  %194 = sub nsw i32 %175, %177
  %195 = sub nsw i32 %180, %182
  %196 = sub nsw i32 %185, %187
  %197 = ashr i32 %193, 1
  %198 = add i32 %197, %193
  %199 = add i32 %198, %194
  %200 = add i32 %199, %195
  %201 = ashr i32 %195, 1
  %202 = add i32 %195, %201
  %203 = add i32 %202, %196
  %204 = sub i32 %193, %203
  %205 = ashr i32 %194, 1
  %206 = add i32 %194, %205
  %207 = sub i32 %193, %206
  %208 = add i32 %207, %196
  %209 = sub nsw i32 %194, %195
  %210 = ashr i32 %196, 1
  %211 = add i32 %196, %209
  %212 = add i32 %211, %210
  %213 = add nsw i32 %189, %190
  %214 = getelementptr inbounds [16 x i32], ptr %81, i64 0, i64 %168
  store i32 %213, ptr %214, align 4, !tbaa !6
  %215 = ashr i32 %192, 1
  %216 = add nsw i32 %191, %215
  %217 = getelementptr inbounds [16 x i32], ptr %90, i64 0, i64 %168
  store i32 %216, ptr %217, align 4, !tbaa !6
  %218 = sub nsw i32 %189, %190
  %219 = getelementptr inbounds [16 x i32], ptr %91, i64 0, i64 %168
  store i32 %218, ptr %219, align 4, !tbaa !6
  %220 = ashr i32 %191, 1
  %221 = sub nsw i32 %220, %192
  %222 = getelementptr inbounds [16 x i32], ptr %92, i64 0, i64 %168
  store i32 %221, ptr %222, align 4, !tbaa !6
  %223 = ashr i32 %212, 2
  %224 = add nsw i32 %223, %200
  %225 = getelementptr inbounds [16 x i32], ptr %93, i64 0, i64 %168
  store i32 %224, ptr %225, align 4, !tbaa !6
  %226 = ashr i32 %208, 2
  %227 = add nsw i32 %204, %226
  %228 = getelementptr inbounds [16 x i32], ptr %94, i64 0, i64 %168
  store i32 %227, ptr %228, align 4, !tbaa !6
  %229 = ashr i32 %204, 2
  %230 = sub nsw i32 %208, %229
  %231 = getelementptr inbounds [16 x i32], ptr %95, i64 0, i64 %168
  store i32 %230, ptr %231, align 4, !tbaa !6
  %232 = ashr i32 %200, 2
  %233 = sub i32 %232, %212
  %234 = getelementptr inbounds [16 x i32], ptr %96, i64 0, i64 %168
  store i32 %233, ptr %234, align 4, !tbaa !6
  %235 = add nuw nsw i64 %168, 1
  %236 = icmp eq i64 %235, 8
  br i1 %236, label %237, label %167

237:                                              ; preds = %167, %50
  %238 = getelementptr inbounds i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  %239 = getelementptr inbounds i8, ptr %5, i64 8
  %240 = getelementptr inbounds i8, ptr %5, i64 4
  %241 = shl nuw i32 1, %57
  %242 = add nsw i32 %54, 17
  %243 = getelementptr inbounds i8, ptr %26, i64 468
  %244 = icmp sgt i32 %52, 35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %245

245:                                              ; preds = %237, %427
  %246 = phi i64 [ 0, %237 ], [ %431, %427 ]
  %247 = phi i32 [ 0, %237 ], [ %428, %427 ]
  %248 = phi i32 [ -1, %237 ], [ %429, %427 ]
  %249 = phi i32 [ 0, %237 ], [ %430, %427 ]
  %250 = getelementptr inbounds [64 x [2 x i8]], ptr @FIELD_SCAN8x8, i64 0, i64 %246
  %251 = getelementptr inbounds [64 x [2 x i8]], ptr @SNGL_SCAN8x8, i64 0, i64 %246
  %252 = select i1 %39, ptr %250, ptr %251
  %253 = load i8, ptr %252, align 1, !tbaa !33
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds i8, ptr %252, i64 1
  %256 = load i8, ptr %255, align 1, !tbaa !33
  %257 = zext i8 %256 to i32
  %258 = and i64 %246, 3
  %259 = add nsw i32 %248, 1
  %260 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %258
  %261 = load i32, ptr %260, align 4, !tbaa !6
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %260, align 4, !tbaa !6
  %263 = load ptr, ptr @img, align 8, !tbaa !10
  %264 = getelementptr inbounds i8, ptr %263, i64 13112
  %265 = zext i8 %256 to i64
  %266 = zext i8 %253 to i64
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr %264, i64 0, i64 %265, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !6
  %269 = tail call i32 @llvm.abs.i32(i32 %268, i1 true)
  br i1 %51, label %282, label %270

270:                                              ; preds = %245
  %271 = getelementptr inbounds ptr, ptr %64, i64 %266
  %272 = load ptr, ptr %271, align 8, !tbaa !10
  %273 = getelementptr inbounds i32, ptr %272, i64 %265
  %274 = load i32, ptr %273, align 4, !tbaa !6
  %275 = mul nsw i32 %274, %269
  %276 = getelementptr inbounds ptr, ptr %70, i64 %266
  %277 = load ptr, ptr %276, align 8, !tbaa !10
  %278 = getelementptr inbounds i32, ptr %277, i64 %265
  %279 = load i32, ptr %278, align 4, !tbaa !6
  %280 = add nsw i32 %279, %275
  %281 = ashr i32 %280, %57
  br label %282

282:                                              ; preds = %245, %270
  %283 = phi i32 [ %281, %270 ], [ %269, %245 ]
  %284 = getelementptr inbounds i8, ptr %263, i64 90212
  %285 = load i32, ptr %284, align 4, !tbaa !41
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %321, label %287

287:                                              ; preds = %282
  %288 = icmp eq i32 %283, 0
  %289 = select i1 %51, i1 true, i1 %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = getelementptr inbounds i8, ptr %263, i64 18248
  %292 = add nsw i32 %10, %257
  %293 = sext i32 %292 to i64
  %294 = add nuw nsw i32 %8, %254
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds [3 x [16 x [16 x i32]]], ptr %291, i64 0, i64 %59, i64 %293, i64 %295
  store i32 0, ptr %296, align 4, !tbaa !6
  br label %321

297:                                              ; preds = %287
  %298 = load i32, ptr @AdaptRndWeight, align 4, !tbaa !6
  %299 = getelementptr inbounds i8, ptr %263, i64 13112
  %300 = zext i8 %256 to i64
  %301 = zext i8 %253 to i64
  %302 = getelementptr inbounds [16 x [16 x i32]], ptr %299, i64 0, i64 %300, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !6
  %304 = tail call i32 @llvm.abs.i32(i32 %303, i1 true)
  %305 = getelementptr inbounds ptr, ptr %64, i64 %301
  %306 = load ptr, ptr %305, align 8, !tbaa !10
  %307 = getelementptr inbounds i32, ptr %306, i64 %300
  %308 = load i32, ptr %307, align 4, !tbaa !6
  %309 = mul nsw i32 %308, %304
  %310 = shl i32 %283, %57
  %311 = sub nsw i32 %309, %310
  %312 = mul nsw i32 %311, %298
  %313 = add nsw i32 %312, %241
  %314 = ashr i32 %313, %242
  %315 = getelementptr inbounds i8, ptr %263, i64 18248
  %316 = add nsw i32 %10, %257
  %317 = sext i32 %316 to i64
  %318 = add nuw nsw i32 %8, %254
  %319 = zext nneg i32 %318 to i64
  %320 = getelementptr inbounds [3 x [16 x [16 x i32]]], ptr %315, i64 0, i64 %59, i64 %317, i64 %319
  store i32 %314, ptr %320, align 4, !tbaa !6
  br label %323

321:                                              ; preds = %290, %282
  %322 = icmp eq i32 %283, 0
  br i1 %322, label %416, label %323

323:                                              ; preds = %297, %321
  %324 = load i32, ptr %243, align 4, !tbaa !72
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %368, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr @input, align 8, !tbaa !10
  %328 = getelementptr inbounds i8, ptr %327, i64 2984
  %329 = load i32, ptr %328, align 8, !tbaa !57
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %368

331:                                              ; preds = %326
  %332 = icmp sgt i32 %283, 1
  %333 = or i1 %51, %332
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds i8, ptr %327, i64 3140
  %336 = load i32, ptr %335, align 4, !tbaa !73
  %337 = sext i32 %336 to i64
  %338 = sext i32 %262 to i64
  %339 = getelementptr inbounds [2 x [64 x i8]], ptr @COEFF_COST8x8, i64 0, i64 %337, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !33
  %341 = zext i8 %340 to i32
  br label %342

342:                                              ; preds = %331, %334
  %343 = phi i32 [ %341, %334 ], [ 999999, %331 ]
  %344 = load i32, ptr %1, align 4, !tbaa !6
  %345 = add nsw i32 %344, %343
  store i32 %345, ptr %1, align 4, !tbaa !6
  %346 = getelementptr inbounds i8, ptr %263, i64 13112
  %347 = zext i8 %256 to i64
  %348 = zext i8 %253 to i64
  %349 = getelementptr inbounds [16 x [16 x i32]], ptr %346, i64 0, i64 %347, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !6
  %351 = tail call signext i32 @sign(i32 noundef signext %283, i32 noundef signext %350) #8
  %352 = load ptr, ptr @img, align 8, !tbaa !10
  %353 = getelementptr inbounds i8, ptr %352, i64 14136
  %354 = load ptr, ptr %353, align 8, !tbaa !38
  %355 = getelementptr inbounds ptr, ptr %354, i64 %14
  %356 = load ptr, ptr %355, align 8, !tbaa !10
  %357 = getelementptr inbounds ptr, ptr %356, i64 %258
  %358 = load ptr, ptr %357, align 8, !tbaa !10
  %359 = load ptr, ptr %358, align 8, !tbaa !10
  %360 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %258
  %361 = load i32, ptr %360, align 4, !tbaa !6
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %359, i64 %362
  store i32 %351, ptr %363, align 4, !tbaa !6
  %364 = getelementptr inbounds i8, ptr %358, i64 8
  %365 = load ptr, ptr %364, align 8, !tbaa !10
  %366 = getelementptr inbounds i32, ptr %365, i64 %362
  store i32 %262, ptr %366, align 4, !tbaa !6
  %367 = add nsw i32 %361, 1
  store i32 %367, ptr %360, align 4, !tbaa !6
  store i32 -1, ptr %260, align 4, !tbaa !6
  br label %395

368:                                              ; preds = %326, %323
  %369 = icmp sgt i32 %283, 1
  %370 = or i1 %51, %369
  br i1 %370, label %380, label %371

371:                                              ; preds = %368
  %372 = load ptr, ptr @input, align 8, !tbaa !10
  %373 = getelementptr inbounds i8, ptr %372, i64 3140
  %374 = load i32, ptr %373, align 4, !tbaa !73
  %375 = sext i32 %374 to i64
  %376 = sext i32 %259 to i64
  %377 = getelementptr inbounds [2 x [64 x i8]], ptr @COEFF_COST8x8, i64 0, i64 %375, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !33
  %379 = zext i8 %378 to i32
  br label %380

380:                                              ; preds = %368, %371
  %381 = phi i32 [ %379, %371 ], [ 999999, %368 ]
  %382 = load i32, ptr %1, align 4, !tbaa !6
  %383 = add nsw i32 %382, %381
  store i32 %383, ptr %1, align 4, !tbaa !6
  %384 = getelementptr inbounds i8, ptr %263, i64 13112
  %385 = zext i8 %256 to i64
  %386 = zext i8 %253 to i64
  %387 = getelementptr inbounds [16 x [16 x i32]], ptr %384, i64 0, i64 %385, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !6
  %389 = tail call signext i32 @sign(i32 noundef signext %283, i32 noundef signext %388) #8
  %390 = sext i32 %247 to i64
  %391 = getelementptr inbounds i32, ptr %18, i64 %390
  store i32 %389, ptr %391, align 4, !tbaa !6
  %392 = getelementptr inbounds i32, ptr %20, i64 %390
  store i32 %259, ptr %392, align 4, !tbaa !6
  %393 = add nsw i32 %247, 1
  %394 = load ptr, ptr @img, align 8, !tbaa !10
  br label %395

395:                                              ; preds = %380, %342
  %396 = phi i64 [ %386, %380 ], [ %348, %342 ]
  %397 = phi i64 [ %385, %380 ], [ %347, %342 ]
  %398 = phi ptr [ %394, %380 ], [ %352, %342 ]
  %399 = phi i32 [ -1, %380 ], [ %259, %342 ]
  %400 = phi i32 [ %393, %380 ], [ %247, %342 ]
  %401 = getelementptr inbounds i8, ptr %398, i64 13112
  %402 = getelementptr inbounds [16 x [16 x i32]], ptr %401, i64 0, i64 %397, i64 %396
  %403 = load i32, ptr %402, align 4, !tbaa !6
  %404 = tail call signext i32 @sign(i32 noundef signext %283, i32 noundef signext %403) #8
  br i1 %51, label %427, label %405

405:                                              ; preds = %395
  %406 = getelementptr inbounds ptr, ptr %75, i64 %396
  %407 = load ptr, ptr %406, align 8, !tbaa !10
  %408 = getelementptr inbounds i32, ptr %407, i64 %397
  %409 = load i32, ptr %408, align 4, !tbaa !6
  %410 = mul nsw i32 %409, %404
  br i1 %244, label %411, label %413

411:                                              ; preds = %405
  %412 = shl i32 %410, %79
  br label %417

413:                                              ; preds = %405
  %414 = add nsw i32 %410, %78
  %415 = ashr i32 %414, %76
  br label %417

416:                                              ; preds = %321
  br i1 %51, label %427, label %417

417:                                              ; preds = %411, %413, %416
  %418 = phi i32 [ 0, %416 ], [ %415, %413 ], [ %412, %411 ]
  %419 = phi i32 [ %247, %416 ], [ %400, %413 ], [ %400, %411 ]
  %420 = phi i32 [ %259, %416 ], [ %399, %413 ], [ %399, %411 ]
  %421 = phi i32 [ %249, %416 ], [ 1, %413 ], [ 1, %411 ]
  %422 = load ptr, ptr @img, align 8, !tbaa !10
  %423 = getelementptr inbounds i8, ptr %422, i64 13112
  %424 = zext i8 %256 to i64
  %425 = zext i8 %253 to i64
  %426 = getelementptr inbounds [16 x [16 x i32]], ptr %423, i64 0, i64 %424, i64 %425
  store i32 %418, ptr %426, align 4, !tbaa !6
  br label %427

427:                                              ; preds = %395, %416, %417
  %428 = phi i32 [ %247, %416 ], [ %419, %417 ], [ %400, %395 ]
  %429 = phi i32 [ %259, %416 ], [ %420, %417 ], [ %399, %395 ]
  %430 = phi i32 [ %249, %416 ], [ %421, %417 ], [ 1, %395 ]
  %431 = add nuw nsw i64 %246, 1
  %432 = icmp eq i64 %431, 64
  br i1 %432, label %433, label %245

433:                                              ; preds = %427
  %434 = load i32, ptr %243, align 4, !tbaa !72
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %468, label %436

436:                                              ; preds = %433
  %437 = load ptr, ptr @input, align 8, !tbaa !10
  %438 = getelementptr inbounds i8, ptr %437, i64 2984
  %439 = load i32, ptr %438, align 8, !tbaa !57
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %468

441:                                              ; preds = %436
  %442 = load ptr, ptr @img, align 8, !tbaa !10
  %443 = getelementptr inbounds i8, ptr %442, i64 14136
  %444 = load ptr, ptr %443, align 8, !tbaa !38
  %445 = getelementptr inbounds ptr, ptr %444, i64 %14
  %446 = load ptr, ptr %445, align 8, !tbaa !10
  %447 = load ptr, ptr %446, align 8, !tbaa !10
  %448 = load ptr, ptr %447, align 8, !tbaa !10
  %449 = load i32, ptr %5, align 4, !tbaa !6
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, ptr %448, i64 %450
  store i32 0, ptr %451, align 4, !tbaa !6
  %452 = getelementptr inbounds i8, ptr %446, i64 8
  %453 = load ptr, ptr %452, align 8, !tbaa !10
  %454 = load ptr, ptr %453, align 8, !tbaa !10
  %455 = load i32, ptr %240, align 4, !tbaa !6
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, ptr %454, i64 %456
  store i32 0, ptr %457, align 4, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %446, i64 16
  %459 = load ptr, ptr %458, align 8, !tbaa !10
  %460 = load ptr, ptr %459, align 8, !tbaa !10
  %461 = load i32, ptr %239, align 4, !tbaa !6
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, ptr %460, i64 %462
  store i32 0, ptr %463, align 4, !tbaa !6
  %464 = getelementptr inbounds i8, ptr %446, i64 24
  %465 = load ptr, ptr %464, align 8, !tbaa !10
  %466 = load ptr, ptr %465, align 8, !tbaa !10
  %467 = load i32, ptr %238, align 4, !tbaa !6
  br label %468

468:                                              ; preds = %433, %436, %441
  %469 = phi i32 [ %467, %441 ], [ %428, %436 ], [ %428, %433 ]
  %470 = phi ptr [ %466, %441 ], [ %18, %436 ], [ %18, %433 ]
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds i32, ptr %470, i64 %471
  store i32 0, ptr %472, align 4, !tbaa !6
  %473 = load ptr, ptr @img, align 8, !tbaa !10
  br i1 %51, label %635, label %474

474:                                              ; preds = %468
  %475 = getelementptr inbounds i8, ptr %473, i64 13112
  %476 = getelementptr inbounds i8, ptr %4, i64 32
  %477 = getelementptr inbounds i8, ptr %4, i64 64
  %478 = getelementptr inbounds i8, ptr %4, i64 96
  %479 = getelementptr inbounds i8, ptr %4, i64 128
  %480 = getelementptr inbounds i8, ptr %4, i64 160
  %481 = getelementptr inbounds i8, ptr %4, i64 192
  %482 = getelementptr inbounds i8, ptr %4, i64 224
  br label %491

483:                                              ; preds = %491
  %484 = getelementptr inbounds i8, ptr %473, i64 13176
  %485 = getelementptr inbounds i8, ptr %473, i64 13240
  %486 = getelementptr inbounds i8, ptr %473, i64 13304
  %487 = getelementptr inbounds i8, ptr %473, i64 13368
  %488 = getelementptr inbounds i8, ptr %473, i64 13432
  %489 = getelementptr inbounds i8, ptr %473, i64 13496
  %490 = getelementptr inbounds i8, ptr %473, i64 13560
  br label %561

491:                                              ; preds = %474, %491
  %492 = phi i64 [ 0, %474 ], [ %559, %491 ]
  %493 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %492
  %494 = load i32, ptr %493, align 8, !tbaa !6
  %495 = getelementptr inbounds i8, ptr %493, i64 16
  %496 = load i32, ptr %495, align 8, !tbaa !6
  %497 = add nsw i32 %496, %494
  %498 = sub nsw i32 %494, %496
  %499 = getelementptr inbounds i8, ptr %493, i64 8
  %500 = load i32, ptr %499, align 8, !tbaa !6
  %501 = ashr i32 %500, 1
  %502 = getelementptr inbounds i8, ptr %493, i64 24
  %503 = load i32, ptr %502, align 8, !tbaa !6
  %504 = sub nsw i32 %501, %503
  %505 = ashr i32 %503, 1
  %506 = add nsw i32 %505, %500
  %507 = add nsw i32 %506, %497
  %508 = add nsw i32 %504, %498
  %509 = sub nsw i32 %498, %504
  %510 = sub nsw i32 %497, %506
  %511 = getelementptr inbounds i8, ptr %493, i64 12
  %512 = load i32, ptr %511, align 4, !tbaa !6
  %513 = getelementptr inbounds i8, ptr %493, i64 20
  %514 = load i32, ptr %513, align 4, !tbaa !6
  %515 = getelementptr inbounds i8, ptr %493, i64 28
  %516 = load i32, ptr %515, align 4, !tbaa !6
  %517 = ashr i32 %516, 1
  %518 = add i32 %512, %516
  %519 = add i32 %518, %517
  %520 = sub i32 %514, %519
  %521 = getelementptr inbounds i8, ptr %493, i64 4
  %522 = load i32, ptr %521, align 4, !tbaa !6
  %523 = ashr i32 %512, 1
  %524 = add i32 %523, %512
  %525 = sub i32 %516, %524
  %526 = add i32 %525, %522
  %527 = ashr i32 %514, 1
  %528 = add i32 %516, %514
  %529 = add i32 %528, %527
  %530 = sub i32 %529, %522
  %531 = add nsw i32 %514, %512
  %532 = add nsw i32 %531, %522
  %533 = ashr i32 %522, 1
  %534 = add nsw i32 %532, %533
  %535 = ashr i32 %534, 2
  %536 = add nsw i32 %535, %520
  %537 = ashr i32 %520, 2
  %538 = sub i32 %534, %537
  %539 = ashr i32 %530, 2
  %540 = add nsw i32 %539, %526
  %541 = ashr i32 %526, 2
  %542 = sub nsw i32 %541, %530
  %543 = add nsw i32 %538, %507
  %544 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %492
  store i32 %543, ptr %544, align 4, !tbaa !6
  %545 = add nsw i32 %542, %508
  %546 = getelementptr inbounds [8 x i32], ptr %476, i64 0, i64 %492
  store i32 %545, ptr %546, align 4, !tbaa !6
  %547 = add nsw i32 %540, %509
  %548 = getelementptr inbounds [8 x i32], ptr %477, i64 0, i64 %492
  store i32 %547, ptr %548, align 4, !tbaa !6
  %549 = add nsw i32 %536, %510
  %550 = getelementptr inbounds [8 x i32], ptr %478, i64 0, i64 %492
  store i32 %549, ptr %550, align 4, !tbaa !6
  %551 = sub nsw i32 %510, %536
  %552 = getelementptr inbounds [8 x i32], ptr %479, i64 0, i64 %492
  store i32 %551, ptr %552, align 4, !tbaa !6
  %553 = sub nsw i32 %509, %540
  %554 = getelementptr inbounds [8 x i32], ptr %480, i64 0, i64 %492
  store i32 %553, ptr %554, align 4, !tbaa !6
  %555 = sub nsw i32 %508, %542
  %556 = getelementptr inbounds [8 x i32], ptr %481, i64 0, i64 %492
  store i32 %555, ptr %556, align 4, !tbaa !6
  %557 = sub nsw i32 %507, %538
  %558 = getelementptr inbounds [8 x i32], ptr %482, i64 0, i64 %492
  store i32 %557, ptr %558, align 4, !tbaa !6
  %559 = add nuw nsw i64 %492, 1
  %560 = icmp eq i64 %559, 8
  br i1 %560, label %483, label %491

561:                                              ; preds = %483, %561
  %562 = phi i64 [ 0, %483 ], [ %629, %561 ]
  %563 = getelementptr inbounds [8 x [8 x i32]], ptr %4, i64 0, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !6
  %565 = getelementptr inbounds i8, ptr %563, i64 16
  %566 = load i32, ptr %565, align 4, !tbaa !6
  %567 = add nsw i32 %566, %564
  %568 = sub nsw i32 %564, %566
  %569 = getelementptr inbounds i8, ptr %563, i64 8
  %570 = load i32, ptr %569, align 4, !tbaa !6
  %571 = ashr i32 %570, 1
  %572 = getelementptr inbounds i8, ptr %563, i64 24
  %573 = load i32, ptr %572, align 4, !tbaa !6
  %574 = sub nsw i32 %571, %573
  %575 = ashr i32 %573, 1
  %576 = add nsw i32 %575, %570
  %577 = add nsw i32 %576, %567
  %578 = add nsw i32 %574, %568
  %579 = sub nsw i32 %568, %574
  %580 = sub nsw i32 %567, %576
  %581 = getelementptr inbounds i8, ptr %563, i64 12
  %582 = load i32, ptr %581, align 4, !tbaa !6
  %583 = getelementptr inbounds i8, ptr %563, i64 20
  %584 = load i32, ptr %583, align 4, !tbaa !6
  %585 = getelementptr inbounds i8, ptr %563, i64 28
  %586 = load i32, ptr %585, align 4, !tbaa !6
  %587 = ashr i32 %586, 1
  %588 = add i32 %582, %586
  %589 = add i32 %588, %587
  %590 = sub i32 %584, %589
  %591 = getelementptr inbounds i8, ptr %563, i64 4
  %592 = load i32, ptr %591, align 4, !tbaa !6
  %593 = ashr i32 %582, 1
  %594 = add i32 %593, %582
  %595 = sub i32 %586, %594
  %596 = add i32 %595, %592
  %597 = ashr i32 %584, 1
  %598 = add i32 %586, %584
  %599 = add i32 %598, %597
  %600 = sub i32 %599, %592
  %601 = add nsw i32 %584, %582
  %602 = add nsw i32 %601, %592
  %603 = ashr i32 %592, 1
  %604 = add nsw i32 %602, %603
  %605 = ashr i32 %604, 2
  %606 = add nsw i32 %605, %590
  %607 = ashr i32 %590, 2
  %608 = sub i32 %604, %607
  %609 = ashr i32 %600, 2
  %610 = add nsw i32 %609, %596
  %611 = ashr i32 %596, 2
  %612 = sub nsw i32 %611, %600
  %613 = add nsw i32 %608, %577
  %614 = getelementptr inbounds [16 x i32], ptr %475, i64 0, i64 %562
  store i32 %613, ptr %614, align 4, !tbaa !6
  %615 = add nsw i32 %612, %578
  %616 = getelementptr inbounds [16 x i32], ptr %484, i64 0, i64 %562
  store i32 %615, ptr %616, align 4, !tbaa !6
  %617 = add nsw i32 %610, %579
  %618 = getelementptr inbounds [16 x i32], ptr %485, i64 0, i64 %562
  store i32 %617, ptr %618, align 4, !tbaa !6
  %619 = add nsw i32 %606, %580
  %620 = getelementptr inbounds [16 x i32], ptr %486, i64 0, i64 %562
  store i32 %619, ptr %620, align 4, !tbaa !6
  %621 = sub nsw i32 %580, %606
  %622 = getelementptr inbounds [16 x i32], ptr %487, i64 0, i64 %562
  store i32 %621, ptr %622, align 4, !tbaa !6
  %623 = sub nsw i32 %579, %610
  %624 = getelementptr inbounds [16 x i32], ptr %488, i64 0, i64 %562
  store i32 %623, ptr %624, align 4, !tbaa !6
  %625 = sub nsw i32 %578, %612
  %626 = getelementptr inbounds [16 x i32], ptr %489, i64 0, i64 %562
  store i32 %625, ptr %626, align 4, !tbaa !6
  %627 = sub nsw i32 %577, %608
  %628 = getelementptr inbounds [16 x i32], ptr %490, i64 0, i64 %562
  store i32 %627, ptr %628, align 4, !tbaa !6
  %629 = add nuw nsw i64 %562, 1
  %630 = icmp eq i64 %629, 8
  br i1 %630, label %631, label %561

631:                                              ; preds = %561
  %632 = getelementptr inbounds i8, ptr %473, i64 90572
  %633 = load i32, ptr %632, align 4, !tbaa !37
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %639, label %698

635:                                              ; preds = %468
  %636 = getelementptr inbounds i8, ptr %473, i64 90572
  %637 = load i32, ptr %636, align 4, !tbaa !37
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %734

639:                                              ; preds = %631, %635
  %640 = zext nneg i32 %8 to i64
  %641 = sext i32 %10 to i64
  br label %642

642:                                              ; preds = %639, %695
  %643 = phi ptr [ %473, %639 ], [ %679, %695 ]
  %644 = phi i64 [ 0, %639 ], [ %696, %695 ]
  %645 = or disjoint i64 %644, %641
  %646 = getelementptr inbounds i8, ptr %643, i64 156
  %647 = load i32, ptr %646, align 4, !tbaa !17
  %648 = sext i32 %647 to i64
  br label %649

649:                                              ; preds = %642, %677
  %650 = phi ptr [ %643, %642 ], [ %679, %677 ]
  %651 = phi i64 [ 0, %642 ], [ %693, %677 ]
  %652 = or disjoint i64 %651, %640
  %653 = getelementptr inbounds i8, ptr %650, i64 13112
  %654 = getelementptr inbounds [16 x [16 x i32]], ptr %653, i64 0, i64 %644, i64 %651
  %655 = load i32, ptr %654, align 4, !tbaa !6
  br i1 %51, label %656, label %662

656:                                              ; preds = %649
  %657 = getelementptr inbounds i8, ptr %650, i64 12600
  %658 = getelementptr inbounds [16 x [16 x i16]], ptr %657, i64 0, i64 %645, i64 %652
  %659 = load i16, ptr %658, align 2, !tbaa !35
  %660 = zext i16 %659 to i32
  %661 = add nsw i32 %655, %660
  store i32 %661, ptr %654, align 4, !tbaa !6
  br label %677

662:                                              ; preds = %649
  %663 = sext i32 %655 to i64
  %664 = getelementptr inbounds i8, ptr %650, i64 12600
  %665 = getelementptr inbounds [16 x [16 x i16]], ptr %664, i64 0, i64 %645, i64 %652
  %666 = load i16, ptr %665, align 2, !tbaa !35
  %667 = zext i16 %666 to i64
  %668 = shl nuw nsw i64 %667, 6
  %669 = add nsw i64 %663, 32
  %670 = add nsw i64 %669, %668
  %671 = ashr i64 %670, 6
  %672 = trunc nsw i64 %671 to i32
  %673 = tail call signext i32 @clip1a(i32 noundef signext %672) #8
  %674 = load ptr, ptr @img, align 8, !tbaa !10
  %675 = getelementptr inbounds i8, ptr %674, i64 13112
  %676 = getelementptr inbounds [16 x [16 x i32]], ptr %675, i64 0, i64 %644, i64 %651
  store i32 %673, ptr %676, align 4, !tbaa !6
  br label %677

677:                                              ; preds = %662, %656
  %678 = phi i32 [ %673, %662 ], [ %661, %656 ]
  %679 = phi ptr [ %674, %662 ], [ %650, %656 ]
  %680 = trunc i32 %678 to i16
  %681 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %682 = getelementptr inbounds i8, ptr %681, i64 6424
  %683 = load ptr, ptr %682, align 8, !tbaa !39
  %684 = getelementptr ptr, ptr %683, i64 %645
  %685 = getelementptr ptr, ptr %684, i64 %648
  %686 = load ptr, ptr %685, align 8, !tbaa !10
  %687 = getelementptr inbounds i8, ptr %679, i64 152
  %688 = load i32, ptr %687, align 8, !tbaa !12
  %689 = trunc nuw nsw i64 %652 to i32
  %690 = add nsw i32 %688, %689
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i16, ptr %686, i64 %691
  store i16 %680, ptr %692, align 2, !tbaa !35
  %693 = add nuw nsw i64 %651, 1
  %694 = icmp eq i64 %693, 8
  br i1 %694, label %695, label %649

695:                                              ; preds = %677
  %696 = add nuw nsw i64 %644, 1
  %697 = icmp eq i64 %696, 8
  br i1 %697, label %734, label %642

698:                                              ; preds = %631, %698
  %699 = phi i64 [ %732, %698 ], [ 0, %631 ]
  %700 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 0
  %701 = load i32, ptr %700, align 4, !tbaa !6
  %702 = add nsw i32 %701, 32
  %703 = ashr i32 %702, 6
  store i32 %703, ptr %700, align 4, !tbaa !6
  %704 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 1
  %705 = load i32, ptr %704, align 4, !tbaa !6
  %706 = add nsw i32 %705, 32
  %707 = ashr i32 %706, 6
  store i32 %707, ptr %704, align 4, !tbaa !6
  %708 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 2
  %709 = load i32, ptr %708, align 4, !tbaa !6
  %710 = add nsw i32 %709, 32
  %711 = ashr i32 %710, 6
  store i32 %711, ptr %708, align 4, !tbaa !6
  %712 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 3
  %713 = load i32, ptr %712, align 4, !tbaa !6
  %714 = add nsw i32 %713, 32
  %715 = ashr i32 %714, 6
  store i32 %715, ptr %712, align 4, !tbaa !6
  %716 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 4
  %717 = load i32, ptr %716, align 4, !tbaa !6
  %718 = add nsw i32 %717, 32
  %719 = ashr i32 %718, 6
  store i32 %719, ptr %716, align 4, !tbaa !6
  %720 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 5
  %721 = load i32, ptr %720, align 4, !tbaa !6
  %722 = add nsw i32 %721, 32
  %723 = ashr i32 %722, 6
  store i32 %723, ptr %720, align 4, !tbaa !6
  %724 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 6
  %725 = load i32, ptr %724, align 4, !tbaa !6
  %726 = add nsw i32 %725, 32
  %727 = ashr i32 %726, 6
  store i32 %727, ptr %724, align 4, !tbaa !6
  %728 = getelementptr inbounds [16 x [16 x i32]], ptr %475, i64 0, i64 %699, i64 7
  %729 = load i32, ptr %728, align 4, !tbaa !6
  %730 = add nsw i32 %729, 32
  %731 = ashr i32 %730, 6
  store i32 %731, ptr %728, align 4, !tbaa !6
  %732 = add nuw nsw i64 %699, 1
  %733 = icmp eq i64 %732, 8
  br i1 %733, label %734, label %698

734:                                              ; preds = %698, %695, %635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  ret i32 %430
}

declare dso_local signext i32 @dct_chroma4x4(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @LowPassForIntra8x8Pred(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #6 {
  %5 = alloca [25 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %5, ptr noundef nonnull align 4 dereferenceable(100) %0, i64 100, i1 false), !tbaa !6
  %6 = icmp ne i32 %2, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = shl i32 %12, 1
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = add i32 %10, 2
  %17 = add i32 %16, %13
  %18 = add i32 %17, %15
  br label %27

19:                                               ; preds = %7
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = mul i32 %21, 3
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i32, ptr %23, align 4, !tbaa !6
  %25 = add i32 %24, 2
  %26 = add i32 %25, %22
  br label %27

27:                                               ; preds = %19, %9
  %28 = phi i32 [ %24, %19 ], [ %15, %9 ]
  %29 = phi i32 [ %26, %19 ], [ %18, %9 ]
  %30 = ashr i32 %29, 2
  %31 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i64 -4
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i32 [ %28, %27 ], [ %41, %33 ]
  %35 = phi i64 [ 2, %27 ], [ %39, %33 ]
  %36 = getelementptr i32, ptr %32, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !6
  %38 = shl i32 %34, 1
  %39 = add nuw nsw i64 %35, 1
  %40 = getelementptr inbounds i32, ptr %0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !6
  %42 = add i32 %37, 2
  %43 = add i32 %42, %38
  %44 = add i32 %43, %41
  %45 = ashr i32 %44, 2
  %46 = getelementptr inbounds [25 x i32], ptr %5, i64 0, i64 %35
  store i32 %45, ptr %46, align 4, !tbaa !6
  %47 = icmp eq i64 %39, 16
  br i1 %47, label %48, label %33

48:                                               ; preds = %33
  %49 = getelementptr inbounds i8, ptr %0, i64 64
  %50 = load i32, ptr %49, align 4, !tbaa !6
  %51 = mul i32 %50, 3
  %52 = getelementptr inbounds i8, ptr %0, i64 60
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = add i32 %53, 2
  %55 = add i32 %54, %51
  %56 = ashr i32 %55, 2
  %57 = getelementptr inbounds i8, ptr %5, i64 64
  store i32 %56, ptr %57, align 4, !tbaa !6
  br label %58

58:                                               ; preds = %48, %4
  %59 = icmp eq i32 %1, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %58
  %61 = icmp ne i32 %3, 0
  %62 = and i1 %6, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %0, i64 68
  %65 = load i32, ptr %64, align 4, !tbaa !6
  %66 = load i32, ptr %0, align 4, !tbaa !6
  %67 = shl i32 %66, 1
  %68 = getelementptr inbounds i8, ptr %0, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !6
  %70 = add i32 %65, 2
  %71 = add i32 %70, %67
  %72 = add i32 %71, %69
  %73 = ashr i32 %72, 2
  store i32 %73, ptr %5, align 4, !tbaa !6
  br label %98

74:                                               ; preds = %60
  br i1 %6, label %86, label %75

75:                                               ; preds = %74
  br i1 %61, label %76, label %177

76:                                               ; preds = %75
  %77 = load i32, ptr %0, align 4, !tbaa !6
  %78 = mul i32 %77, 3
  %79 = getelementptr inbounds i8, ptr %0, i64 68
  %80 = load i32, ptr %79, align 4, !tbaa !6
  %81 = add i32 %80, 2
  %82 = add i32 %81, %78
  %83 = ashr i32 %82, 2
  store i32 %83, ptr %5, align 4, !tbaa !6
  br label %98

84:                                               ; preds = %58
  %85 = icmp eq i32 %3, 0
  br i1 %85, label %177, label %110

86:                                               ; preds = %74
  %87 = load i32, ptr %0, align 4, !tbaa !6
  %88 = mul i32 %87, 3
  %89 = getelementptr inbounds i8, ptr %0, i64 4
  %90 = load i32, ptr %89, align 4, !tbaa !6
  %91 = add i32 %90, 2
  %92 = add i32 %91, %88
  %93 = ashr i32 %92, 2
  store i32 %93, ptr %5, align 4, !tbaa !6
  %94 = icmp eq i32 %3, 0
  br i1 %94, label %177, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds i8, ptr %0, i64 68
  %97 = load i32, ptr %96, align 4, !tbaa !6
  br label %98

98:                                               ; preds = %95, %63, %76
  %99 = phi i32 [ %97, %95 ], [ %65, %63 ], [ %80, %76 ]
  %100 = phi i32 [ %87, %95 ], [ %66, %63 ], [ %77, %76 ]
  %101 = shl i32 %99, 1
  %102 = getelementptr inbounds i8, ptr %0, i64 72
  %103 = load i32, ptr %102, align 4, !tbaa !6
  %104 = add i32 %100, 2
  %105 = add i32 %104, %101
  %106 = add i32 %105, %103
  %107 = ashr i32 %106, 2
  %108 = getelementptr inbounds i8, ptr %5, i64 68
  store i32 %107, ptr %108, align 4, !tbaa !6
  %109 = add i32 %103, 2
  br label %120

110:                                              ; preds = %84
  %111 = getelementptr inbounds i8, ptr %0, i64 68
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = mul i32 %112, 3
  %114 = getelementptr inbounds i8, ptr %0, i64 72
  %115 = load i32, ptr %114, align 4, !tbaa !6
  %116 = add i32 %115, 2
  %117 = add i32 %116, %113
  %118 = ashr i32 %117, 2
  %119 = getelementptr inbounds i8, ptr %5, i64 68
  store i32 %118, ptr %119, align 4, !tbaa !6
  br label %120

120:                                              ; preds = %110, %98
  %121 = phi i32 [ %116, %110 ], [ %109, %98 ]
  %122 = phi i32 [ %115, %110 ], [ %103, %98 ]
  %123 = phi i32 [ %112, %110 ], [ %99, %98 ]
  %124 = shl i32 %122, 1
  %125 = getelementptr i8, ptr %0, i64 76
  %126 = load i32, ptr %125, align 4, !tbaa !6
  %127 = add i32 %123, 2
  %128 = add i32 %127, %124
  %129 = add i32 %128, %126
  %130 = ashr i32 %129, 2
  %131 = getelementptr inbounds i8, ptr %5, i64 72
  store i32 %130, ptr %131, align 4, !tbaa !6
  %132 = shl i32 %126, 1
  %133 = getelementptr i8, ptr %0, i64 80
  %134 = load i32, ptr %133, align 4, !tbaa !6
  %135 = add i32 %121, %132
  %136 = add i32 %135, %134
  %137 = ashr i32 %136, 2
  %138 = getelementptr inbounds i8, ptr %5, i64 76
  store i32 %137, ptr %138, align 4, !tbaa !6
  %139 = shl i32 %134, 1
  %140 = getelementptr i8, ptr %0, i64 84
  %141 = load i32, ptr %140, align 4, !tbaa !6
  %142 = add i32 %126, 2
  %143 = add i32 %142, %139
  %144 = add i32 %143, %141
  %145 = ashr i32 %144, 2
  %146 = getelementptr inbounds i8, ptr %5, i64 80
  store i32 %145, ptr %146, align 4, !tbaa !6
  %147 = shl i32 %141, 1
  %148 = getelementptr i8, ptr %0, i64 88
  %149 = load i32, ptr %148, align 4, !tbaa !6
  %150 = add i32 %134, 2
  %151 = add i32 %150, %147
  %152 = add i32 %151, %149
  %153 = ashr i32 %152, 2
  %154 = getelementptr inbounds i8, ptr %5, i64 84
  store i32 %153, ptr %154, align 4, !tbaa !6
  %155 = shl i32 %149, 1
  %156 = getelementptr i8, ptr %0, i64 92
  %157 = load i32, ptr %156, align 4, !tbaa !6
  %158 = add i32 %141, 2
  %159 = add i32 %158, %155
  %160 = add i32 %159, %157
  %161 = ashr i32 %160, 2
  %162 = getelementptr inbounds i8, ptr %5, i64 88
  store i32 %161, ptr %162, align 4, !tbaa !6
  %163 = shl i32 %157, 1
  %164 = getelementptr inbounds i8, ptr %0, i64 96
  %165 = load i32, ptr %164, align 4, !tbaa !6
  %166 = add i32 %149, 2
  %167 = add i32 %166, %163
  %168 = add i32 %167, %165
  %169 = ashr i32 %168, 2
  %170 = getelementptr inbounds i8, ptr %5, i64 92
  store i32 %169, ptr %170, align 4, !tbaa !6
  %171 = shl i32 %165, 1
  %172 = add i32 %157, 2
  %173 = add i32 %172, %165
  %174 = add i32 %173, %171
  %175 = ashr i32 %174, 2
  %176 = getelementptr inbounds i8, ptr %5, i64 96
  store i32 %175, ptr %176, align 4, !tbaa !6
  br label %177

177:                                              ; preds = %75, %86, %120, %84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(100) %5, i64 100, i1 false), !tbaa !6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #8
  ret void
}

declare dso_local void @writeIntraPredMode_CABAC(ptr noundef, ptr noundef) #3

declare dso_local signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @sign(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @clip1a(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!12 = !{!13, !7, i64 152}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !11, i64 104, !11, i64 112, !7, i64 120, !11, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !11, i64 14136, !11, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !8, i64 31584, !11, i64 89184, !11, i64 89192, !7, i64 89200, !7, i64 89204, !7, i64 89208, !7, i64 89212, !8, i64 89216, !7, i64 89280, !7, i64 89284, !7, i64 89288, !7, i64 89292, !7, i64 89296, !15, i64 89304, !7, i64 89312, !7, i64 89316, !7, i64 89320, !7, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !8, i64 89360, !7, i64 89392, !7, i64 89396, !7, i64 89400, !7, i64 89404, !7, i64 89408, !7, i64 89412, !7, i64 89416, !7, i64 89420, !8, i64 89424, !7, i64 90192, !7, i64 90196, !7, i64 90200, !7, i64 90204, !7, i64 90208, !7, i64 90212, !7, i64 90216, !7, i64 90220, !7, i64 90224, !7, i64 90228, !7, i64 90232, !7, i64 90236, !7, i64 90240, !8, i64 90244, !7, i64 90248, !7, i64 90252, !8, i64 90256, !7, i64 90264, !7, i64 90268, !7, i64 90272, !7, i64 90276, !7, i64 90280, !7, i64 90284, !7, i64 90288, !7, i64 90292, !7, i64 90296, !7, i64 90300, !7, i64 90304, !7, i64 90308, !7, i64 90312, !7, i64 90316, !7, i64 90320, !7, i64 90324, !7, i64 90328, !11, i64 90336, !7, i64 90344, !7, i64 90348, !7, i64 90352, !7, i64 90356, !7, i64 90360, !15, i64 90368, !7, i64 90376, !7, i64 90380, !7, i64 90384, !7, i64 90388, !7, i64 90392, !7, i64 90396, !7, i64 90400, !11, i64 90408, !7, i64 90416, !7, i64 90420, !7, i64 90424, !7, i64 90428, !7, i64 90432, !7, i64 90436, !7, i64 90440, !7, i64 90444, !7, i64 90448, !7, i64 90452, !7, i64 90456, !7, i64 90460, !7, i64 90464, !7, i64 90468, !7, i64 90472, !7, i64 90476, !7, i64 90480, !7, i64 90484, !7, i64 90488, !7, i64 90492, !7, i64 90496, !7, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !7, i64 90528, !7, i64 90532, !7, i64 90536, !7, i64 90540, !7, i64 90544, !7, i64 90548, !7, i64 90552, !7, i64 90556, !7, i64 90560, !8, i64 90564, !7, i64 90572, !7, i64 90576, !7, i64 90580, !16, i64 90584, !7, i64 90588, !7, i64 90592}
!14 = !{!"float", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!13, !7, i64 156}
!18 = !{!13, !7, i64 168}
!19 = !{!13, !7, i64 172}
!20 = !{!13, !11, i64 31576}
!21 = !{!13, !7, i64 12}
!22 = !{!23, !7, i64 416}
!23 = !{!"macroblock", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !11, i64 56, !11, i64 64, !7, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !7, i64 364, !24, i64 368, !8, i64 376, !8, i64 392, !24, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !16, i64 476, !15, i64 480, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520}
!24 = !{!"long long", !8, i64 0}
!25 = !{!26, !7, i64 220}
!26 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !8, i64 84, !8, i64 148, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !7, i64 1228, !7, i64 1232, !7, i64 1236, !7, i64 1240, !7, i64 1244, !7, i64 1248, !7, i64 1252, !7, i64 1256, !7, i64 1260, !7, i64 1264, !7, i64 1268, !7, i64 1272, !7, i64 1276, !7, i64 1280, !7, i64 1284, !7, i64 1288, !7, i64 1292, !7, i64 1296, !7, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !7, i64 1904, !7, i64 1908, !7, i64 1912, !7, i64 1916, !7, i64 1920, !7, i64 1924, !7, i64 1928, !7, i64 1932, !7, i64 1936, !7, i64 1940, !7, i64 1944, !7, i64 1948, !8, i64 1952, !7, i64 2976, !7, i64 2980, !7, i64 2984, !7, i64 2988, !7, i64 2992, !7, i64 2996, !7, i64 3000, !7, i64 3004, !7, i64 3008, !7, i64 3012, !7, i64 3016, !7, i64 3020, !7, i64 3024, !7, i64 3028, !7, i64 3032, !7, i64 3036, !7, i64 3040, !7, i64 3044, !7, i64 3048, !7, i64 3052, !15, i64 3056, !7, i64 3064, !7, i64 3068, !7, i64 3072, !7, i64 3076, !7, i64 3080, !7, i64 3084, !7, i64 3088, !7, i64 3092, !7, i64 3096, !7, i64 3100, !7, i64 3104, !7, i64 3108, !7, i64 3112, !7, i64 3116, !7, i64 3120, !7, i64 3124, !7, i64 3128, !7, i64 3132, !7, i64 3136, !7, i64 3140, !7, i64 3144, !7, i64 3148, !8, i64 3152, !8, i64 3352, !7, i64 3552, !7, i64 3556, !7, i64 3560, !7, i64 3564, !7, i64 3568, !7, i64 3572, !7, i64 3576, !7, i64 3580, !7, i64 3584, !7, i64 3588, !7, i64 3592, !7, i64 3596, !7, i64 3600, !7, i64 3604, !7, i64 3608, !7, i64 3612, !7, i64 3616, !7, i64 3620, !8, i64 3624, !7, i64 3824, !7, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !7, i64 3864, !7, i64 3868, !7, i64 3872, !7, i64 3876, !7, i64 3880, !7, i64 3884, !7, i64 3888, !7, i64 3892, !7, i64 3896, !7, i64 3900, !7, i64 3904, !7, i64 3908, !7, i64 3912, !7, i64 3916, !7, i64 3920, !7, i64 3924, !7, i64 3928, !8, i64 3932, !7, i64 3964, !7, i64 3968, !7, i64 3972, !7, i64 3976, !7, i64 3980, !7, i64 3984, !7, i64 3988, !7, i64 3992, !7, i64 3996, !7, i64 4000, !7, i64 4004, !8, i64 4008, !8, i64 4056, !7, i64 4256, !7, i64 4260, !7, i64 4264, !7, i64 4268, !8, i64 4272, !7, i64 4312, !7, i64 4316, !7, i64 4320, !7, i64 4324}
!27 = !{!28, !7, i64 0}
!28 = !{!"pix_pos", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!29 = !{!13, !11, i64 89192}
!30 = !{!28, !7, i64 4}
!31 = !{!28, !7, i64 20}
!32 = !{!28, !7, i64 16}
!33 = !{!8, !8, i64 0}
!34 = !{!26, !7, i64 3136}
!35 = !{!16, !16, i64 0}
!36 = !{!26, !7, i64 24}
!37 = !{!13, !7, i64 90572}
!38 = !{!13, !11, i64 14136}
!39 = !{!40, !11, i64 6424}
!40 = !{!"storable_picture", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !7, i64 6360, !7, i64 6364, !7, i64 6368, !7, i64 6372, !7, i64 6376, !7, i64 6380, !7, i64 6384, !7, i64 6388, !7, i64 6392, !7, i64 6396, !7, i64 6400, !7, i64 6404, !7, i64 6408, !7, i64 6412, !7, i64 6416, !11, i64 6424, !11, i64 6432, !11, i64 6440, !11, i64 6448, !11, i64 6456, !11, i64 6464, !11, i64 6472, !11, i64 6480, !11, i64 6488, !11, i64 6496, !11, i64 6504, !11, i64 6512, !11, i64 6520, !11, i64 6528, !11, i64 6536, !11, i64 6544, !7, i64 6552, !7, i64 6556, !7, i64 6560, !7, i64 6564, !7, i64 6568, !7, i64 6572, !7, i64 6576}
!41 = !{!13, !7, i64 90212}
!42 = !{!13, !7, i64 90536}
!43 = !{!40, !11, i64 6464}
!44 = !{!13, !7, i64 90532}
!45 = !{!13, !11, i64 89184}
!46 = !{!13, !11, i64 112}
!47 = !{!13, !7, i64 140}
!48 = !{!13, !7, i64 136}
!49 = !{!13, !7, i64 90528}
!50 = !{!13, !11, i64 31568}
!51 = !{!23, !7, i64 0}
!52 = !{!26, !7, i64 2992}
!53 = !{!54, !7, i64 4}
!54 = !{!"syntaxelement", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !11, i64 32, !11, i64 40}
!55 = !{!54, !7, i64 24}
!56 = !{!54, !7, i64 0}
!57 = !{!26, !7, i64 2984}
!58 = !{!54, !11, i64 40}
!59 = !{!13, !7, i64 24}
!60 = !{!61, !11, i64 24}
!61 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !7, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !8, i64 128}
!62 = !{!63, !11, i64 104}
!63 = !{!"datapartition", !11, i64 0, !64, i64 8, !11, i64 104}
!64 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !7, i64 92}
!65 = !{!54, !7, i64 12}
!66 = !{!13, !7, i64 90264}
!67 = !{!13, !7, i64 90220}
!68 = !{!23, !7, i64 424}
!69 = !{!13, !7, i64 40}
!70 = !{!13, !7, i64 90492}
!71 = !{!13, !7, i64 90552}
!72 = !{!23, !7, i64 468}
!73 = !{!26, !7, i64 3140}
