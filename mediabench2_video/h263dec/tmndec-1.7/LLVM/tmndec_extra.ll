; ModuleID = 'tmndec.c'
source_filename = "tmndec.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.ld = type { i32, [2051 x i8], ptr, [16 x i8], i32, i32, [12 x [64 x i16]] }

@version = dso_local global [43 x i8] c"tmndecode v1.7\0A(C) 1995, 1996 Telenor R&D\0A\00", align 1
@zig_zag_scan = dso_local local_unnamed_addr global [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 1
@convmat = dso_local local_unnamed_addr global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 4
@bscan_tab = dso_local local_unnamed_addr global [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 4
@bquant_tab = dso_local local_unnamed_addr global [4 x i32] [i32 5, i32 6, i32 7, i32 8], align 4
@OM = dso_local local_unnamed_addr global [5 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4]], [8 x [8 x i32]] [[8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer], [8 x [8 x i32]] [[8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2]], [8 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2]], [8 x [8 x i32]] [[8 x i32] [i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0]]], align 4
@roundtab = dso_local local_unnamed_addr global [16 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2], align 4
@outputname = dso_local local_unnamed_addr global ptr null, align 8
@base = dso_local global %struct.ld zeroinitializer, align 8
@ld = dso_local local_unnamed_addr global ptr null, align 8
@errortext = dso_local global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [25 x i8] c"Input file %s not found\0A\00", align 1
@temp_ref = dso_local local_unnamed_addr global i32 0, align 4
@prev_temp_ref = dso_local local_unnamed_addr global i32 0, align 4
@loopflag = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cycles: %lu | regsw hits:%d regsw misses:%d \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Corrected Cycles: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"lw, %lu\0A ld, %lu\0A li, %lu\0A sw, %lu\0A sd, %lu\0A \00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@quiet = dso_local local_unnamed_addr global i32 0, align 4
@trace = dso_local local_unnamed_addr global i32 0, align 4
@refframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@oldrefframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@bframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@newframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@edgeframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@edgeframeorig = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@exnewframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@MV = dso_local local_unnamed_addr global [2 x [5 x [73 x [90 x i32]]]] zeroinitializer, align 4
@modemap = dso_local local_unnamed_addr global [73 x [90 x i32]] zeroinitializer, align 4
@clp = dso_local local_unnamed_addr global ptr null, align 8
@horizontal_size = dso_local local_unnamed_addr global i32 0, align 4
@vertical_size = dso_local local_unnamed_addr global i32 0, align 4
@mb_width = dso_local local_unnamed_addr global i32 0, align 4
@mb_height = dso_local local_unnamed_addr global i32 0, align 4
@coded_picture_width = dso_local local_unnamed_addr global i32 0, align 4
@coded_picture_height = dso_local local_unnamed_addr global i32 0, align 4
@chrom_width = dso_local local_unnamed_addr global i32 0, align 4
@chrom_height = dso_local local_unnamed_addr global i32 0, align 4
@blk_cnt = dso_local local_unnamed_addr global i32 0, align 4
@pict_type = dso_local local_unnamed_addr global i32 0, align 4
@newgob = dso_local local_unnamed_addr global i32 0, align 4
@mv_outside_frame = dso_local local_unnamed_addr global i32 0, align 4
@syntax_arith_coding = dso_local local_unnamed_addr global i32 0, align 4
@adv_pred_mode = dso_local local_unnamed_addr global i32 0, align 4
@pb_frame = dso_local local_unnamed_addr global i32 0, align 4
@long_vectors = dso_local local_unnamed_addr global i32 0, align 4
@fault = dso_local local_unnamed_addr global i32 0, align 4
@expand = dso_local local_unnamed_addr global i32 0, align 4
@verbose = dso_local local_unnamed_addr global i32 0, align 4
@refidct = dso_local local_unnamed_addr global i32 0, align 4
@matrix_coefficients = dso_local local_unnamed_addr global i32 0, align 4
@quant = dso_local local_unnamed_addr global i32 0, align 4
@source_format = dso_local local_unnamed_addr global i32 0, align 4
@trd = dso_local local_unnamed_addr global i32 0, align 4
@trb = dso_local local_unnamed_addr global i32 0, align 4
@bscan = dso_local local_unnamed_addr global i32 0, align 4
@bquant = dso_local local_unnamed_addr global i32 0, align 4
@outtype = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"couldn't clear outputfile\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"undefined option -%c ignored\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [225 x i8] c"Usage:   tmndecode {options} bitstream {outputfilename%%d}\0AOptions: -vn  verbose output (n: level)\0A         -on  output format \0A              n=0 : YUV\0A              n=1 : SIF\0A              n=2 : TGA\0A              n=3 : PPM\0A\00", align 1
@str = private unnamed_addr constant [37 x i8] c"              n=5 : YUV concatenated\00", align 1
@str.14 = private unnamed_addr constant [182 x i8] c"              You have to choose one output format!\0A         -q   disable warnings to stderr\0A         -r   use double precision reference IDCT\0A         -t   enable low level tracing\00", align 1
@str.15 = private unnamed_addr constant [28 x i8] c"ERROR: Illegal input format\00", align 1
@switch.table.main = private unnamed_addr constant [5 x i32] [i32 128, i32 176, i32 352, i32 704, i32 1408], align 4
@switch.table.main.16 = private unnamed_addr constant [5 x i32] [i32 96, i32 144, i32 288, i32 576, i32 1152], align 4

; Function Attrs: nounwind
define dso_local signext i32 @get_regsw_hits() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80b", "=r"() #10, !srcloc !6
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext i32 @get_regsw_misses() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80c", "=r"() #10, !srcloc !7
  ret i32 %1
}

; Function Attrs: nounwind
define dso_local void @clear_regsw_cache() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80d", "=r"() #10, !srcloc !8
  ret void
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_cycles() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x814", "=r"() #10, !srcloc !9
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_li() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80f", "=r"() #10, !srcloc !10
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_ld() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x811", "=r"() #10, !srcloc !11
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_lw() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x810", "=r"() #10, !srcloc !12
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_sd() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x813", "=r"() #10, !srcloc !13
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_sw() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x812", "=r"() #10, !srcloc !14
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: noreturn nounwind
define dso_local void @crash_handler(i32 signext %0) #2 {
  tail call void @exit(i32 noundef signext 1) #11
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @signal(i32 noundef signext 11, ptr noundef nonnull @crash_handler) #10
  %7 = tail call i32 asm sideeffect "csrr $0, 0x80d", "=r"() #10, !srcloc !8
  %8 = tail call i32 asm sideeffect "csrr $0, 0x814", "=r"() #10, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %108

10:                                               ; preds = %2, %105
  %11 = phi i32 [ %106, %105 ], [ %0, %2 ]
  %12 = phi ptr [ %13, %105 ], [ %1, %2 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = load i8, ptr %14, align 1, !tbaa !19
  %16 = icmp eq i8 %15, 45
  br i1 %16, label %17, label %108

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %105, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @__ctype_toupper_loc() #12
  br label %23

23:                                               ; preds = %99, %21
  %24 = phi i8 [ %19, %21 ], [ %103, %99 ]
  %25 = phi ptr [ %14, %21 ], [ %101, %99 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !15
  %27 = zext i8 %24 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !20
  switch i32 %29, label %95 [
    i32 86, label %30
    i32 79, label %60
    i32 82, label %90
    i32 76, label %91
    i32 88, label %92
    i32 84, label %93
    i32 81, label %94
  ]

30:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %31 = getelementptr inbounds i8, ptr %25, i64 2
  %32 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %31, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #10
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = tail call ptr @__ctype_b_loc() #12
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = load ptr, ptr %13, align 8, !tbaa !15
  %38 = getelementptr inbounds i8, ptr %37, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %36, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !22
  %43 = and i16 %42, 2048
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %34, %45
  %46 = phi ptr [ %47, %45 ], [ %37, %34 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %47, ptr %13, align 8, !tbaa !15
  %48 = load ptr, ptr %35, align 8, !tbaa !15
  %49 = getelementptr inbounds i8, ptr %46, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !19
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !22
  %54 = and i16 %53, 2048
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %45

56:                                               ; preds = %45, %34
  %57 = load i32, ptr %4, align 4, !tbaa !20
  br label %58

58:                                               ; preds = %56, %30
  %59 = phi i32 [ %57, %56 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  store i32 %59, ptr @verbose, align 4, !tbaa !20
  br label %99

60:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %61 = getelementptr inbounds i8, ptr %25, i64 2
  %62 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %61, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #10
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = tail call ptr @__ctype_b_loc() #12
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = load ptr, ptr %13, align 8, !tbaa !15
  %68 = getelementptr inbounds i8, ptr %67, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !19
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i16, ptr %66, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !22
  %73 = and i16 %72, 2048
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %64, %75
  %76 = phi ptr [ %77, %75 ], [ %67, %64 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %77, ptr %13, align 8, !tbaa !15
  %78 = load ptr, ptr %65, align 8, !tbaa !15
  %79 = getelementptr inbounds i8, ptr %76, i64 3
  %80 = load i8, ptr %79, align 1, !tbaa !19
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %78, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !22
  %84 = and i16 %83, 2048
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %75

86:                                               ; preds = %75, %64
  %87 = load i32, ptr %3, align 4, !tbaa !20
  br label %88

88:                                               ; preds = %86, %60
  %89 = phi i32 [ %87, %86 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  store i32 %89, ptr @outtype, align 4, !tbaa !20
  br label %99

90:                                               ; preds = %23
  store i32 1, ptr @refidct, align 4, !tbaa !20
  br label %99

91:                                               ; preds = %23
  store i1 true, ptr @loopflag, align 4
  br label %99

92:                                               ; preds = %23
  store i32 1, ptr @expand, align 4, !tbaa !20
  br label %99

93:                                               ; preds = %23
  store i32 1, ptr @trace, align 4, !tbaa !20
  br label %99

94:                                               ; preds = %23
  store i32 1, ptr @quiet, align 4, !tbaa !20
  br label %99

95:                                               ; preds = %23
  %96 = zext i8 %24 to i32
  %97 = load ptr, ptr @stderr, align 8, !tbaa !15
  %98 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.9, i32 noundef signext %96) #13
  br label %99

99:                                               ; preds = %95, %94, %93, %92, %91, %90, %88, %58
  %100 = load ptr, ptr %13, align 8, !tbaa !15
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %101, ptr %13, align 8, !tbaa !15
  %102 = getelementptr inbounds i8, ptr %100, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !19
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %23

105:                                              ; preds = %99, %17
  %106 = add nsw i32 %11, -1
  %107 = icmp sgt i32 %11, 2
  br i1 %107, label %10, label %108

108:                                              ; preds = %105, %10, %2
  %109 = phi i32 [ %0, %2 ], [ %11, %10 ], [ 1, %105 ]
  %110 = phi ptr [ %1, %2 ], [ %12, %10 ], [ %13, %105 ]
  %111 = load i32, ptr @outtype, align 4
  %112 = and i32 %111, -3
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  store i1 false, ptr @loopflag, align 4
  br label %115

115:                                              ; preds = %114, %108
  %116 = add i32 %109, -3
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @version)
  %120 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11)
  %121 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %122 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  call void @exit(i32 noundef signext 0) #11
  unreachable

123:                                              ; preds = %115
  %124 = zext nneg i32 %109 to i64
  %125 = getelementptr ptr, ptr %110, i64 %124
  %126 = getelementptr i8, ptr %125, i64 -8
  %127 = load ptr, ptr %126, align 8, !tbaa !15
  store ptr %127, ptr @outputname, align 8, !tbaa !15
  store ptr @base, ptr @ld, align 8, !tbaa !15
  %128 = getelementptr inbounds i8, ptr %110, i64 8
  %129 = load ptr, ptr %128, align 8, !tbaa !15
  %130 = call signext i32 (ptr, i32, ...) @open(ptr noundef %129, i32 noundef signext 0) #10
  store i32 %130, ptr @base, align 8, !tbaa !24
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load ptr, ptr %128, align 8, !tbaa !15
  %134 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %133) #10
  %135 = load ptr, ptr @stderr, align 8, !tbaa !15
  %136 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull readonly @errortext) #13
  call void @exit(i32 noundef signext 1) #11
  unreachable

137:                                              ; preds = %300
  %138 = load i32, ptr @base, align 8, !tbaa !24
  br label %139

139:                                              ; preds = %123, %137
  %140 = phi i32 [ %138, %137 ], [ %130, %123 ]
  %141 = phi i32 [ %301, %137 ], [ 1, %123 ]
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = call signext i32 @lseek(i32 noundef signext %140, i64 noundef 0, i32 noundef signext 0) #10
  br label %145

145:                                              ; preds = %143, %139
  call void @initbits() #10
  store i32 0, ptr %5, align 4, !tbaa !20
  store i32 0, ptr @temp_ref, align 4, !tbaa !20
  %146 = call signext i32 @getheader() #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %300, label %148

148:                                              ; preds = %145, %295
  %149 = phi i32 [ 0, %295 ], [ %141, %145 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %295, label %151

151:                                              ; preds = %148
  %152 = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #14
  store ptr %152, ptr @clp, align 8, !tbaa !15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load ptr, ptr @stderr, align 8, !tbaa !15
  %156 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %155) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

157:                                              ; preds = %151
  %158 = getelementptr inbounds i8, ptr %152, i64 384
  store ptr %158, ptr @clp, align 8, !tbaa !15
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ -384, %157 ], [ %167, %159 ]
  %161 = trunc nsw i64 %160 to i32
  %162 = call i32 @llvm.smin.i32(i32 %161, i32 255)
  %163 = call i32 @llvm.smax.i32(i32 %162, i32 0)
  %164 = trunc nuw i32 %163 to i8
  %165 = load ptr, ptr @clp, align 8, !tbaa !15
  %166 = getelementptr inbounds i8, ptr %165, i64 %160
  store i8 %164, ptr %166, align 1, !tbaa !19
  %167 = add nsw i64 %160, 1
  %168 = icmp eq i64 %167, 640
  br i1 %168, label %169, label %159

169:                                              ; preds = %159
  store i32 5, ptr @matrix_coefficients, align 4, !tbaa !20
  %170 = load i32, ptr @source_format, align 4, !tbaa !20
  %171 = add i32 %170, -1
  %172 = icmp ult i32 %171, 5
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  call void @exit(i32 noundef signext -1) #11
  unreachable

175:                                              ; preds = %169
  %176 = zext nneg i32 %171 to i64
  %177 = getelementptr inbounds [5 x i32], ptr @switch.table.main, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = zext nneg i32 %171 to i64
  %180 = getelementptr inbounds [5 x i32], ptr @switch.table.main.16, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4
  store i32 %178, ptr @horizontal_size, align 4, !tbaa !20
  store i32 %181, ptr @vertical_size, align 4, !tbaa !20
  %182 = lshr exact i32 %178, 4
  store i32 %182, ptr @mb_width, align 4, !tbaa !20
  %183 = lshr exact i32 %181, 4
  store i32 %183, ptr @mb_height, align 4, !tbaa !20
  store i32 %178, ptr @coded_picture_width, align 4, !tbaa !20
  store i32 %181, ptr @coded_picture_height, align 4, !tbaa !20
  %184 = lshr exact i32 %178, 1
  store i32 %184, ptr @chrom_width, align 4, !tbaa !20
  %185 = lshr exact i32 %181, 1
  store i32 %185, ptr @chrom_height, align 4, !tbaa !20
  store i32 6, ptr @blk_cnt, align 4, !tbaa !20
  %186 = mul nuw nsw i32 %181, %178
  %187 = mul nuw nsw i32 %185, %184
  %188 = zext nneg i32 %186 to i64
  %189 = call noalias ptr @malloc(i64 noundef %188) #14
  store ptr %189, ptr @refframe, align 8, !tbaa !15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %210, label %213

191:                                              ; preds = %219
  %192 = zext nneg i32 %187 to i64
  %193 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %193, ptr getelementptr inbounds (i8, ptr @refframe, i64 8), align 8, !tbaa !15
  %194 = icmp eq ptr %193, null
  br i1 %194, label %210, label %195

195:                                              ; preds = %191
  %196 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %196, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !15
  %197 = icmp eq ptr %196, null
  br i1 %197, label %216, label %198

198:                                              ; preds = %195
  %199 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %199, ptr getelementptr inbounds (i8, ptr @bframe, i64 8), align 8, !tbaa !15
  %200 = icmp eq ptr %199, null
  br i1 %200, label %222, label %201

201:                                              ; preds = %198
  %202 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %202, ptr getelementptr inbounds (i8, ptr @refframe, i64 16), align 8, !tbaa !15
  %203 = icmp eq ptr %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %205, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !15
  %206 = icmp eq ptr %205, null
  br i1 %206, label %216, label %207

207:                                              ; preds = %204
  %208 = call noalias ptr @malloc(i64 noundef %192) #14
  store ptr %208, ptr getelementptr inbounds (i8, ptr @bframe, i64 16), align 8, !tbaa !15
  %209 = icmp eq ptr %208, null
  br i1 %209, label %222, label %225

210:                                              ; preds = %201, %191, %175
  %211 = load ptr, ptr @stderr, align 8, !tbaa !15
  %212 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %211) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

213:                                              ; preds = %175
  %214 = call noalias ptr @malloc(i64 noundef %188) #14
  store ptr %214, ptr @oldrefframe, align 8, !tbaa !15
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213, %204, %195
  %217 = load ptr, ptr @stderr, align 8, !tbaa !15
  %218 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %217) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

219:                                              ; preds = %213
  %220 = call noalias ptr @malloc(i64 noundef %188) #14
  store ptr %220, ptr @bframe, align 8, !tbaa !15
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %191

222:                                              ; preds = %219, %207, %198
  %223 = load ptr, ptr @stderr, align 8, !tbaa !15
  %224 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %223) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

225:                                              ; preds = %207
  %226 = add nuw nsw i32 %184, 32
  %227 = add nuw nsw i32 %185, 32
  %228 = mul nuw nsw i32 %227, %226
  %229 = zext nneg i32 %228 to i64
  %230 = shl nuw nsw i32 %178, 3
  %231 = add nuw nsw i32 %230, 512
  %232 = zext nneg i32 %231 to i64
  %233 = add nuw nsw i32 %181, 64
  %234 = add nuw nsw i32 %178, 64
  %235 = mul nuw nsw i32 %233, %234
  %236 = zext nneg i32 %235 to i64
  %237 = call noalias ptr @malloc(i64 noundef %236) #14
  store ptr %237, ptr @edgeframeorig, align 8, !tbaa !15
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %225
  %240 = load ptr, ptr @stderr, align 8, !tbaa !15
  %241 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %240) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

242:                                              ; preds = %252, %245
  %243 = load ptr, ptr @stderr, align 8, !tbaa !15
  %244 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %243) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

245:                                              ; preds = %225
  %246 = shl nuw nsw i32 %178, 5
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %237, i64 %247
  %249 = getelementptr inbounds i8, ptr %248, i64 2080
  store ptr %249, ptr @edgeframe, align 8, !tbaa !15
  %250 = call noalias ptr @malloc(i64 noundef %229) #14
  store ptr %250, ptr getelementptr inbounds (i8, ptr @edgeframeorig, i64 8), align 8, !tbaa !15
  %251 = icmp eq ptr %250, null
  br i1 %251, label %242, label %252

252:                                              ; preds = %245
  %253 = getelementptr inbounds i8, ptr %250, i64 %232
  %254 = getelementptr inbounds i8, ptr %253, i64 16
  store ptr %254, ptr getelementptr inbounds (i8, ptr @edgeframe, i64 8), align 8, !tbaa !15
  %255 = call noalias ptr @malloc(i64 noundef %229) #14
  store ptr %255, ptr getelementptr inbounds (i8, ptr @edgeframeorig, i64 16), align 8, !tbaa !15
  %256 = icmp eq ptr %255, null
  br i1 %256, label %242, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds i8, ptr %255, i64 %232
  %259 = getelementptr inbounds i8, ptr %258, i64 16
  store ptr %259, ptr getelementptr inbounds (i8, ptr @edgeframe, i64 16), align 8, !tbaa !15
  %260 = load i32, ptr @expand, align 4, !tbaa !20
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %278, label %262

262:                                              ; preds = %257
  %263 = shl nuw nsw i32 %186, 2
  %264 = zext nneg i32 %263 to i64
  %265 = call noalias ptr @malloc(i64 noundef %264) #14
  store ptr %265, ptr @exnewframe, align 8, !tbaa !15
  %266 = icmp eq ptr %265, null
  br i1 %266, label %275, label %267

267:                                              ; preds = %262
  %268 = shl nuw nsw i32 %187, 2
  %269 = zext nneg i32 %268 to i64
  %270 = call noalias ptr @malloc(i64 noundef %269) #14
  store ptr %270, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 8), align 8, !tbaa !15
  %271 = icmp eq ptr %270, null
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = call noalias ptr @malloc(i64 noundef %269) #14
  store ptr %273, ptr getelementptr inbounds (i8, ptr @exnewframe, i64 16), align 8, !tbaa !15
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %267, %262
  %276 = load ptr, ptr @stderr, align 8, !tbaa !15
  %277 = call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %276) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

278:                                              ; preds = %272, %257
  %279 = load i32, ptr @outtype, align 4, !tbaa !20
  %280 = icmp eq i32 %279, 5
  br i1 %280, label %281, label %290

281:                                              ; preds = %278
  %282 = load ptr, ptr @outputname, align 8, !tbaa !15
  %283 = call ptr @fopen(ptr noundef %282, ptr noundef nonnull @.str.7)
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load ptr, ptr @stderr, align 8, !tbaa !15
  %287 = call i64 @fwrite(ptr nonnull @.str.8, i64 26, i64 1, ptr %286) #15
  call void @exit(i32 noundef signext 1) #11
  unreachable

288:                                              ; preds = %281
  %289 = call signext i32 @fclose(ptr noundef nonnull %283)
  br label %290

290:                                              ; preds = %288, %278
  %291 = load i32, ptr @refidct, align 4, !tbaa !20
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  call void @init_idctref() #10
  br label %295

294:                                              ; preds = %290
  call void @init_idct() #10
  br label %295

295:                                              ; preds = %294, %293, %148
  call void @getpicture(ptr noundef nonnull %5) #10
  %296 = load i32, ptr %5, align 4, !tbaa !20
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %5, align 4, !tbaa !20
  %298 = call signext i32 @getheader() #10
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %148

300:                                              ; preds = %295, %145
  %301 = phi i32 [ %141, %145 ], [ 0, %295 ]
  %302 = load i1, ptr @loopflag, align 4
  br i1 %302, label %137, label %303

303:                                              ; preds = %300
  %304 = sext i32 %8 to i64
  %305 = load i32, ptr @base, align 8, !tbaa !24
  %306 = call signext i32 @close(i32 noundef signext %305) #10
  %307 = call i32 asm sideeffect "csrr $0, 0x814", "=r"() #10, !srcloc !9
  %308 = sext i32 %307 to i64
  %309 = call i32 asm sideeffect "csrr $0, 0x80b", "=r"() #10, !srcloc !6
  %310 = call i32 asm sideeffect "csrr $0, 0x80c", "=r"() #10, !srcloc !7
  %311 = sub nsw i64 %308, %304
  %312 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %311, i32 noundef signext %309, i32 noundef signext %310)
  %313 = sext i32 %309 to i64
  %314 = sub nsw i64 %311, %313
  %315 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %314)
  %316 = call i32 asm sideeffect "csrr $0, 0x810", "=r"() #10, !srcloc !12
  %317 = sext i32 %316 to i64
  %318 = call i32 asm sideeffect "csrr $0, 0x80f", "=r"() #10, !srcloc !10
  %319 = sext i32 %318 to i64
  %320 = call i32 asm sideeffect "csrr $0, 0x811", "=r"() #10, !srcloc !11
  %321 = sext i32 %320 to i64
  %322 = call i32 asm sideeffect "csrr $0, 0x812", "=r"() #10, !srcloc !14
  %323 = sext i32 %322 to i64
  %324 = call i32 asm sideeffect "csrr $0, 0x813", "=r"() #10, !srcloc !13
  %325 = sext i32 %324 to i64
  %326 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %317, i64 noundef %321, i64 noundef %319, i64 noundef %323, i64 noundef %325)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local ptr @signal(i32 noundef signext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree
declare dso_local noundef signext i32 @open(ptr nocapture noundef readonly, i32 noundef signext, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
define dso_local void @error(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %0) #13
  tail call void @exit(i32 noundef signext 1) #11
  unreachable
}

declare dso_local signext i32 @lseek(...) local_unnamed_addr #5

declare dso_local void @initbits() local_unnamed_addr #5

declare dso_local signext i32 @getheader() local_unnamed_addr #5

declare dso_local void @getpicture(ptr noundef) local_unnamed_addr #5

declare dso_local signext i32 @close(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
define dso_local void @printbits(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = xor i32 %6, -1
  %8 = add i32 %7, %1
  %9 = lshr i32 %0, %8
  %10 = and i32 %9, 1
  %11 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef signext %10)
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local void @init_idctref() local_unnamed_addr #5

declare dso_local void @init_idct() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_toupper_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{i64 29679}
!7 = !{i64 29790}
!8 = !{i64 29907}
!9 = !{i64 30000}
!10 = !{i64 30111}
!11 = !{i64 30220}
!12 = !{i64 30329}
!13 = !{i64 30438}
!14 = !{i64 30547}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!17, !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !17, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !17, i64 0}
!24 = !{!25, !21, i64 0}
!25 = !{!"ld", !21, i64 0, !17, i64 4, !16, i64 2056, !17, i64 2064, !21, i64 2080, !21, i64 2084, !17, i64 2088}
