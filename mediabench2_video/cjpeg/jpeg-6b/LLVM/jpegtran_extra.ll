; ModuleID = 'jpegtran.c'
source_filename = "jpegtran.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_transform_info = type { i32, i32, i32, i32, ptr }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"jpegtran\00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@copyoption = internal unnamed_addr global i32 0, align 4
@transformoption = internal global %struct.jpeg_transform_info zeroinitializer, align 8
@stdin = external dso_local local_unnamed_addr global ptr, align 8
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"comments\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"Independent JPEG Group's JPEGTRAN, version %s\0A%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"6b  27-Mar-1998\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1998, Thomas G. Lane\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"transverse\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"%s: can only do one image transformation at a time\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"  -copy none     Copy no extra markers from source file\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"  -copy comments Copy only comment markers (default)\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"  -copy all      Copy all extra markers\0A\00", align 1
@.str.43 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Switches for modifying the image:\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"  -grayscale     Reduce to grayscale (omit color data)\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"  -flip [horizontal|vertical]  Mirror image (left-right or top-bottom)\0A\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"  -rotate [90|180|270]         Rotate image (degrees clockwise)\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"  -transpose     Transpose image\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"  -transverse    Transverse transpose image\0A\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"  -trim          Drop non-transformable edge blocks\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.53 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: noreturn nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.jpeg_decompress_struct, align 8
  %4 = alloca %struct.jpeg_compress_struct, align 8
  %5 = alloca %struct.jpeg_error_mgr, align 8
  %6 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #6
  %7 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %7, ptr @progname, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %7, align 1, !tbaa !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store ptr @.str, ptr @progname, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %12, %9
  %14 = call ptr @jpeg_std_error(ptr noundef nonnull %5) #6
  store ptr %14, ptr %3, align 8, !tbaa !11
  call void @jpeg_CreateDecompress(ptr noundef nonnull %3, i32 noundef signext 62, i64 noundef 632) #6
  %15 = call ptr @jpeg_std_error(ptr noundef nonnull %6) #6
  store ptr %15, ptr %4, align 8, !tbaa !16
  call void @jpeg_CreateCompress(ptr noundef nonnull %4, i32 noundef signext 62, i64 noundef 520) #6
  %16 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %4, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 0)
  %17 = getelementptr inbounds i8, ptr %6, i64 124
  %18 = load i32, ptr %17, align 4, !tbaa !18
  %19 = getelementptr inbounds i8, ptr %5, i64 124
  store i32 %18, ptr %19, align 4, !tbaa !18
  %20 = getelementptr inbounds i8, ptr %4, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds i8, ptr %21, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds i8, ptr %3, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds i8, ptr %25, i64 88
  store i64 %23, ptr %26, align 8, !tbaa !22
  %27 = add nsw i32 %0, -1
  %28 = icmp slt i32 %16, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load ptr, ptr @stderr, align 8, !tbaa !6
  %31 = load ptr, ptr @progname, align 8, !tbaa !6
  %32 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef %31) #7
  call fastcc void @usage()
  unreachable

33:                                               ; preds = %13
  %34 = icmp slt i32 %16, %0
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = sext i32 %16 to i64
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = call ptr @fopen(ptr noundef %38, ptr noundef nonnull @.str.2)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load ptr, ptr @stderr, align 8, !tbaa !6
  %43 = load ptr, ptr @progname, align 8, !tbaa !6
  %44 = load ptr, ptr %37, align 8, !tbaa !6
  %45 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef %43, ptr noundef %44) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

46:                                               ; preds = %33
  %47 = call ptr @read_stdin() #6
  br label %48

48:                                               ; preds = %35, %46
  %49 = phi ptr [ %39, %35 ], [ %47, %46 ]
  %50 = load ptr, ptr @outfilename, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = call ptr @fopen(ptr noundef nonnull %50, ptr noundef nonnull @.str.4)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load ptr, ptr @stderr, align 8, !tbaa !6
  %57 = load ptr, ptr @progname, align 8, !tbaa !6
  %58 = load ptr, ptr @outfilename, align 8, !tbaa !6
  %59 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.3, ptr noundef %57, ptr noundef %58) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

60:                                               ; preds = %48
  %61 = call ptr @write_stdout() #6
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi ptr [ %53, %52 ], [ %61, %60 ]
  call void @jpeg_stdio_src(ptr noundef nonnull %3, ptr noundef %49) #6
  %64 = load i32, ptr @copyoption, align 4, !tbaa !25
  call void @jcopy_markers_setup(ptr noundef nonnull %3, i32 noundef signext %64) #6
  %65 = call signext i32 @jpeg_read_header(ptr noundef nonnull %3, i32 noundef signext 1) #6
  call void @jtransform_request_workspace(ptr noundef nonnull %3, ptr noundef nonnull @transformoption) #6
  %66 = call ptr @jpeg_read_coefficients(ptr noundef nonnull %3) #6
  call void @jpeg_copy_critical_parameters(ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %67 = call ptr @jtransform_adjust_parameters(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %66, ptr noundef nonnull @transformoption) #6
  %68 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %4, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 1)
  call void @jpeg_stdio_dest(ptr noundef nonnull %4, ptr noundef %63) #6
  call void @jpeg_write_coefficients(ptr noundef nonnull %4, ptr noundef %67) #6
  %69 = load i32, ptr @copyoption, align 4, !tbaa !25
  call void @jcopy_markers_execute(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef signext %69) #6
  call void @jtransform_execute_transformation(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %66, ptr noundef nonnull @transformoption) #6
  call void @jpeg_finish_compress(ptr noundef nonnull %4) #6
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #6
  %70 = call signext i32 @jpeg_finish_decompress(ptr noundef nonnull %3) #6
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #6
  %71 = load ptr, ptr @stdin, align 8, !tbaa !6
  %72 = icmp eq ptr %49, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = call signext i32 @fclose(ptr noundef %49)
  br label %75

75:                                               ; preds = %73, %62
  %76 = load ptr, ptr @stdout, align 8, !tbaa !6
  %77 = icmp eq ptr %63, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call signext i32 @fclose(ptr noundef %63)
  br label %80

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds i8, ptr %5, i64 128
  %82 = load i64, ptr %81, align 8, !tbaa !26
  %83 = getelementptr inbounds i8, ptr %6, i64 128
  %84 = load i64, ptr %83, align 8, !tbaa !26
  %85 = sub i64 0, %84
  %86 = icmp eq i64 %82, %85
  %87 = select i1 %86, i32 0, i32 2
  call void @exit(i32 noundef signext %87) #8
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_CreateDecompress(ptr noundef, i32 noundef signext, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_CreateCompress(ptr noundef, i32 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc signext i32 @parse_switches(ptr noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) unnamed_addr #3 {
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store ptr null, ptr @outfilename, align 8, !tbaa !6
  store i32 1, ptr @copyoption, align 4, !tbaa !25
  store i32 0, ptr @transformoption, align 8, !tbaa !27
  store i32 0, ptr getelementptr inbounds (i8, ptr @transformoption, i64 4), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds (i8, ptr @transformoption, i64 8), align 8, !tbaa !30
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  %10 = getelementptr inbounds i8, ptr %9, i64 124
  store i32 0, ptr %10, align 4, !tbaa !18
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %258

12:                                               ; preds = %4
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %0, i64 264
  %15 = getelementptr inbounds i8, ptr %0, i64 284
  %16 = getelementptr inbounds i8, ptr %0, i64 280
  br label %17

17:                                               ; preds = %12, %238
  %18 = phi ptr [ null, %12 ], [ %241, %238 ]
  %19 = phi i32 [ 0, %12 ], [ %240, %238 ]
  %20 = phi i32 [ 1, %12 ], [ %242, %238 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = icmp slt i32 %20, 1
  br i1 %27, label %28, label %244

28:                                               ; preds = %26
  store ptr null, ptr @outfilename, align 8, !tbaa !6
  br label %238

29:                                               ; preds = %17
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  %31 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef signext 1) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @stderr, align 8, !tbaa !6
  %35 = load ptr, ptr @progname, align 8, !tbaa !6
  %36 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef %35) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

37:                                               ; preds = %29
  %38 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.7, i32 noundef signext 1) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %20, 1
  %42 = icmp slt i32 %41, %1
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call fastcc void @usage()
  unreachable

44:                                               ; preds = %40
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds ptr, ptr %2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = call signext i32 @keymatch(ptr noundef %47, ptr noundef nonnull @.str.8, i32 noundef signext 1) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, ptr @copyoption, align 4, !tbaa !25
  br label %238

51:                                               ; preds = %44
  %52 = load ptr, ptr %46, align 8, !tbaa !6
  %53 = call signext i32 @keymatch(ptr noundef %52, ptr noundef nonnull @.str.9, i32 noundef signext 1) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, ptr @copyoption, align 4, !tbaa !25
  br label %238

56:                                               ; preds = %51
  %57 = load ptr, ptr %46, align 8, !tbaa !6
  %58 = call signext i32 @keymatch(ptr noundef %57, ptr noundef nonnull @.str.10, i32 noundef signext 1) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 2, ptr @copyoption, align 4, !tbaa !25
  br label %238

61:                                               ; preds = %56
  call fastcc void @usage()
  unreachable

62:                                               ; preds = %37
  %63 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.11, i32 noundef signext 1) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.12, i32 noundef signext 1) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65, %62
  %69 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr @stderr, align 8, !tbaa !6
  %72 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #7
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = load ptr, ptr %0, align 8, !tbaa !16
  %75 = getelementptr inbounds i8, ptr %74, i64 124
  %76 = load i32, ptr %75, align 4, !tbaa !18
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %75, align 4, !tbaa !18
  br label %238

78:                                               ; preds = %65
  %79 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.16, i32 noundef signext 1) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %78
  %82 = add nsw i32 %20, 1
  %83 = icmp slt i32 %82, %1
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call fastcc void @usage()
  unreachable

85:                                               ; preds = %81
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds ptr, ptr %2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = call signext i32 @keymatch(ptr noundef %88, ptr noundef nonnull @.str.17, i32 noundef signext 1) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr @transformoption, align 8, !tbaa !27
  %93 = icmp ult i32 %92, 2
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !6
  %96 = load ptr, ptr @progname, align 8, !tbaa !6
  %97 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.36, ptr noundef %96) #7
  call fastcc void @usage()
  unreachable

98:                                               ; preds = %91
  store i32 1, ptr @transformoption, align 8, !tbaa !27
  br label %238

99:                                               ; preds = %85
  %100 = load ptr, ptr %87, align 8, !tbaa !6
  %101 = call signext i32 @keymatch(ptr noundef %100, ptr noundef nonnull @.str.18, i32 noundef signext 1) #6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr @transformoption, align 8, !tbaa !27
  switch i32 %104, label %105 [
    i32 2, label %109
    i32 0, label %109
  ]

105:                                              ; preds = %103
  %106 = load ptr, ptr @stderr, align 8, !tbaa !6
  %107 = load ptr, ptr @progname, align 8, !tbaa !6
  %108 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.36, ptr noundef %107) #7
  call fastcc void @usage()
  unreachable

109:                                              ; preds = %103, %103
  store i32 2, ptr @transformoption, align 8, !tbaa !27
  br label %238

110:                                              ; preds = %99
  call fastcc void @usage()
  unreachable

111:                                              ; preds = %78
  %112 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.19, i32 noundef signext 1) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.20, i32 noundef signext 1) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114, %111
  store i32 1, ptr getelementptr inbounds (i8, ptr @transformoption, i64 8), align 8, !tbaa !30
  br label %238

118:                                              ; preds = %114
  %119 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.21, i32 noundef signext 3) #6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 120, ptr %6, align 1, !tbaa !10
  %122 = add nsw i32 %20, 1
  %123 = icmp slt i32 %122, %1
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call fastcc void @usage()
  unreachable

125:                                              ; preds = %121
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds ptr, ptr %2, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %128, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  call fastcc void @usage()
  unreachable

132:                                              ; preds = %125
  %133 = load i8, ptr %6, align 1
  %134 = and i8 %133, -33
  %135 = icmp eq i8 %134, 77
  %136 = load i64, ptr %5, align 8, !tbaa !31
  %137 = mul nsw i64 %136, 1000
  %138 = select i1 %135, i64 %137, i64 %136
  %139 = mul nsw i64 %138, 1000
  %140 = load ptr, ptr %13, align 8, !tbaa !21
  %141 = getelementptr inbounds i8, ptr %140, i64 88
  store i64 %139, ptr %141, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %238

142:                                              ; preds = %118
  %143 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.23, i32 noundef signext 1) #6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.24, i32 noundef signext 1) #6
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145, %142
  store i32 1, ptr %14, align 8, !tbaa !32
  br label %238

149:                                              ; preds = %145
  %150 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.25, i32 noundef signext 4) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = add nsw i32 %20, 1
  %154 = icmp slt i32 %153, %1
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call fastcc void @usage()
  unreachable

156:                                              ; preds = %152
  %157 = sext i32 %153 to i64
  %158 = getelementptr inbounds ptr, ptr %2, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  store ptr %159, ptr @outfilename, align 8, !tbaa !6
  br label %238

160:                                              ; preds = %149
  %161 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.26, i32 noundef signext 1) #6
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %238

163:                                              ; preds = %160
  %164 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.27, i32 noundef signext 1) #6
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %189, label %166

166:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 120, ptr %8, align 1, !tbaa !10
  %167 = add nsw i32 %20, 1
  %168 = icmp slt i32 %167, %1
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call fastcc void @usage()
  unreachable

170:                                              ; preds = %166
  %171 = sext i32 %167 to i64
  %172 = getelementptr inbounds ptr, ptr %2, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %173, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  call fastcc void @usage()
  unreachable

177:                                              ; preds = %170
  %178 = load i64, ptr %7, align 8
  %179 = icmp ugt i64 %178, 65535
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call fastcc void @usage()
  unreachable

181:                                              ; preds = %177
  %182 = load i8, ptr %8, align 1
  %183 = and i8 %182, -33
  %184 = icmp eq i8 %183, 66
  %185 = trunc nuw i64 %178 to i32
  br i1 %184, label %186, label %187

186:                                              ; preds = %181
  store i32 %185, ptr %16, align 8, !tbaa !33
  br label %187

187:                                              ; preds = %181, %186
  %188 = phi i32 [ 0, %186 ], [ %185, %181 ]
  store i32 %188, ptr %15, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %238

189:                                              ; preds = %163
  %190 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.28, i32 noundef signext 2) #6
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %214, label %192

192:                                              ; preds = %189
  %193 = add nsw i32 %20, 1
  %194 = icmp slt i32 %193, %1
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call fastcc void @usage()
  unreachable

196:                                              ; preds = %192
  %197 = sext i32 %193 to i64
  %198 = getelementptr inbounds ptr, ptr %2, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = call signext i32 @keymatch(ptr noundef %199, ptr noundef nonnull @.str.29, i32 noundef signext 2) #6
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %196
  call fastcc void @select_transform(i32 noundef signext 5)
  br label %238

203:                                              ; preds = %196
  %204 = load ptr, ptr %198, align 8, !tbaa !6
  %205 = call signext i32 @keymatch(ptr noundef %204, ptr noundef nonnull @.str.30, i32 noundef signext 3) #6
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  call fastcc void @select_transform(i32 noundef signext 6)
  br label %238

208:                                              ; preds = %203
  %209 = load ptr, ptr %198, align 8, !tbaa !6
  %210 = call signext i32 @keymatch(ptr noundef %209, ptr noundef nonnull @.str.31, i32 noundef signext 3) #6
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  call fastcc void @select_transform(i32 noundef signext 7)
  br label %238

213:                                              ; preds = %208
  call fastcc void @usage()
  unreachable

214:                                              ; preds = %189
  %215 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.32, i32 noundef signext 1) #6
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  %218 = add nsw i32 %20, 1
  %219 = icmp slt i32 %218, %1
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call fastcc void @usage()
  unreachable

221:                                              ; preds = %217
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds ptr, ptr %2, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  br label %238

225:                                              ; preds = %214
  %226 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.33, i32 noundef signext 1) #6
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  call fastcc void @select_transform(i32 noundef signext 3)
  br label %238

229:                                              ; preds = %225
  %230 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.34, i32 noundef signext 6) #6
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call fastcc void @select_transform(i32 noundef signext 4)
  br label %238

233:                                              ; preds = %229
  %234 = call signext i32 @keymatch(ptr noundef nonnull %30, ptr noundef nonnull @.str.35, i32 noundef signext 3) #6
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds (i8, ptr @transformoption, i64 4), align 4, !tbaa !29
  br label %238

237:                                              ; preds = %233
  call fastcc void @usage()
  unreachable

238:                                              ; preds = %160, %73, %117, %148, %207, %212, %202, %228, %236, %232, %221, %187, %156, %132, %98, %109, %50, %60, %55, %28
  %239 = phi i32 [ %20, %28 ], [ %41, %50 ], [ %41, %55 ], [ %41, %60 ], [ %20, %73 ], [ %82, %98 ], [ %82, %109 ], [ %20, %117 ], [ %122, %132 ], [ %20, %148 ], [ %153, %156 ], [ %167, %187 ], [ %193, %202 ], [ %193, %207 ], [ %193, %212 ], [ %218, %221 ], [ %20, %228 ], [ %20, %232 ], [ %20, %236 ], [ %20, %160 ]
  %240 = phi i32 [ %19, %28 ], [ %19, %50 ], [ %19, %55 ], [ %19, %60 ], [ %19, %73 ], [ %19, %98 ], [ %19, %109 ], [ %19, %117 ], [ %19, %132 ], [ %19, %148 ], [ %19, %156 ], [ %19, %187 ], [ %19, %202 ], [ %19, %207 ], [ %19, %212 ], [ %19, %221 ], [ %19, %228 ], [ %19, %232 ], [ %19, %236 ], [ 1, %160 ]
  %241 = phi ptr [ %18, %28 ], [ %18, %50 ], [ %18, %55 ], [ %18, %60 ], [ %18, %73 ], [ %18, %98 ], [ %18, %109 ], [ %18, %117 ], [ %18, %132 ], [ %18, %148 ], [ %18, %156 ], [ %18, %187 ], [ %18, %202 ], [ %18, %207 ], [ %18, %212 ], [ %224, %221 ], [ %18, %228 ], [ %18, %232 ], [ %18, %236 ], [ %18, %160 ]
  %242 = add nsw i32 %239, 1
  %243 = icmp slt i32 %242, %1
  br i1 %243, label %17, label %244, !llvm.loop !35

244:                                              ; preds = %238, %26
  %245 = phi i32 [ %242, %238 ], [ %20, %26 ]
  %246 = phi i32 [ %240, %238 ], [ %19, %26 ]
  %247 = phi ptr [ %241, %238 ], [ %18, %26 ]
  %248 = icmp eq i32 %3, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %244
  %250 = icmp eq i32 %246, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %249
  call void @jpeg_simple_progression(ptr noundef nonnull %0) #6
  br label %252

252:                                              ; preds = %251, %249
  %253 = icmp eq ptr %247, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %252
  %255 = call signext i32 @read_scan_script(ptr noundef nonnull %0, ptr noundef nonnull %247) #6
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  call fastcc void @usage()
  unreachable

258:                                              ; preds = %4, %252, %254, %244
  %259 = phi i32 [ %245, %252 ], [ %245, %254 ], [ %245, %244 ], [ 1, %4 ]
  ret i32 %259
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = load ptr, ptr @progname, align 8, !tbaa !6
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %2) #7
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 12, i64 1, ptr %4) #9
  %6 = load ptr, ptr @stderr, align 8, !tbaa !6
  %7 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 37, i64 1, ptr %6) #9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 56, i64 1, ptr %8) #9
  %10 = load ptr, ptr @stderr, align 8, !tbaa !6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 53, i64 1, ptr %10) #9
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 40, i64 1, ptr %12) #9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 77, i64 1, ptr %14) #9
  %16 = load ptr, ptr @stderr, align 8, !tbaa !6
  %17 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 46, i64 1, ptr %16) #9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 34, i64 1, ptr %18) #9
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 55, i64 1, ptr %20) #9
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 71, i64 1, ptr %22) #9
  %24 = load ptr, ptr @stderr, align 8, !tbaa !6
  %25 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 64, i64 1, ptr %24) #9
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 33, i64 1, ptr %26) #9
  %28 = load ptr, ptr @stderr, align 8, !tbaa !6
  %29 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 44, i64 1, ptr %28) #9
  %30 = load ptr, ptr @stderr, align 8, !tbaa !6
  %31 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 52, i64 1, ptr %30) #9
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 29, i64 1, ptr %32) #9
  %34 = load ptr, ptr @stderr, align 8, !tbaa !6
  %35 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 67, i64 1, ptr %34) #9
  %36 = load ptr, ptr @stderr, align 8, !tbaa !6
  %37 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 51, i64 1, ptr %36) #9
  %38 = load ptr, ptr @stderr, align 8, !tbaa !6
  %39 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 46, i64 1, ptr %38) #9
  %40 = load ptr, ptr @stderr, align 8, !tbaa !6
  %41 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 43, i64 1, ptr %40) #9
  %42 = load ptr, ptr @stderr, align 8, !tbaa !6
  %43 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 22, i64 1, ptr %42) #9
  %44 = load ptr, ptr @stderr, align 8, !tbaa !6
  %45 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 56, i64 1, ptr %44) #9
  tail call void @exit(i32 noundef signext 1) #8
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #0

declare dso_local ptr @read_stdin() local_unnamed_addr #2

declare dso_local ptr @write_stdout() local_unnamed_addr #2

declare dso_local void @jpeg_stdio_src(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @jcopy_markers_setup(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_read_header(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @jtransform_request_workspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local ptr @jpeg_read_coefficients(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_copy_critical_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local ptr @jtransform_adjust_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_stdio_dest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_write_coefficients(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @jcopy_markers_execute(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @jtransform_execute_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local signext i32 @keymatch(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @select_transform(i32 noundef signext %0) unnamed_addr #3 {
  %2 = load i32, ptr @transformoption, align 8, !tbaa !27
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %2, %0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %0, ptr @transformoption, align 8, !tbaa !27
  ret void

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = load ptr, ptr @progname, align 8, !tbaa !6
  %10 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef %9) #7
  tail call fastcc void @usage()
  unreachable
}

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @jpeg_simple_progression(ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @read_scan_script(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !14, i64 80, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !7, i64 160, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !7, i64 192, !8, i64 200, !8, i64 232, !8, i64 264, !13, i64 296, !7, i64 304, !13, i64 312, !13, i64 316, !8, i64 320, !8, i64 336, !8, i64 352, !13, i64 368, !13, i64 372, !8, i64 376, !8, i64 377, !8, i64 378, !15, i64 380, !15, i64 382, !13, i64 384, !8, i64 388, !13, i64 392, !7, i64 400, !13, i64 408, !13, i64 412, !13, i64 416, !13, i64 420, !7, i64 424, !13, i64 432, !8, i64 440, !13, i64 472, !13, i64 476, !13, i64 480, !8, i64 484, !13, i64 524, !13, i64 528, !13, i64 532, !13, i64 536, !13, i64 540, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624}
!13 = !{!"int", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!17, !7, i64 0}
!17 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !14, i64 64, !13, i64 72, !13, i64 76, !13, i64 80, !7, i64 88, !8, i64 96, !8, i64 128, !8, i64 160, !8, i64 192, !8, i64 208, !8, i64 224, !13, i64 240, !7, i64 248, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !8, i64 292, !8, i64 293, !8, i64 294, !15, i64 296, !15, i64 298, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 320, !13, i64 324, !8, i64 328, !13, i64 360, !13, i64 364, !13, i64 368, !8, i64 372, !13, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488, !7, i64 496, !7, i64 504, !13, i64 512}
!18 = !{!19, !13, i64 124}
!19 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !8, i64 44, !13, i64 124, !20, i64 128, !7, i64 136, !13, i64 144, !7, i64 152, !13, i64 160, !13, i64 164}
!20 = !{!"long", !8, i64 0}
!21 = !{!17, !7, i64 8}
!22 = !{!23, !20, i64 88}
!23 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !20, i64 88, !20, i64 96}
!24 = !{!12, !7, i64 8}
!25 = !{!13, !13, i64 0}
!26 = !{!19, !20, i64 128}
!27 = !{!28, !13, i64 0}
!28 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16}
!29 = !{!28, !13, i64 4}
!30 = !{!28, !13, i64 8}
!31 = !{!20, !20, i64 0}
!32 = !{!17, !13, i64 264}
!33 = !{!17, !13, i64 280}
!34 = !{!17, !13, i64 284}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
