; ModuleID = 'djpeg.c'
source_filename = "djpeg.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@requested_fmt = internal unnamed_addr global i32 0, align 4
@stdin = external dso_local local_unnamed_addr global ptr, align 8
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Not a PPM/PGM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Comment, length %ld:\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"APP%d, length %ld:\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"colours\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"quantize\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"quantise\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.68 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's DJPEG, version %s\0A%s\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"6b  27-Mar-1998\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1998, Thomas G. Lane\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"nosmooth\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"onepass\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"os2\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"  -colors N      Reduce image to no more than N colors\0A\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"  -fast          Fast, low-quality processing\0A\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"  -grayscale     Force grayscale output\0A\00", align 1
@.str.93 = private unnamed_addr constant [62 x i8] c"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\0A\00", align 1
@.str.94 = private unnamed_addr constant [61 x i8] c"  -bmp           Select BMP output format (Windows style)%s\0A\00", align 1
@.str.95 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"  -gif           Select GIF output format%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [58 x i8] c"  -os2           Select BMP output format (OS/2 style)%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [59 x i8] c"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\0A\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.100 = private unnamed_addr constant [47 x i8] c"  -targa         Select Targa output format%s\0A\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.102 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.105 = private unnamed_addr constant [46 x i8] c"  -dither fs     Use F-S dithering (default)\0A\00", align 1
@.str.106 = private unnamed_addr constant [54 x i8] c"  -dither none   Don't use dithering in quantization\0A\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"  -dither ordered  Use ordered dither (medium speed, quality)\0A\00", align 1
@.str.108 = private unnamed_addr constant [57 x i8] c"  -map FILE      Map to colors used in named image file\0A\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c"  -nosmooth      Don't use high-quality upsampling\0A\00", align 1
@.str.110 = private unnamed_addr constant [62 x i8] c"  -onepass       Use 1-pass quantization (fast, low quality)\0A\00", align 1
@.str.111 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1

; Function Attrs: noreturn nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.jpeg_decompress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #7
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %5, ptr @progname, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  store ptr @.str, ptr @progname, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @jpeg_std_error(ptr noundef nonnull %4) #7
  store ptr %12, ptr %3, align 8, !tbaa !11
  call void @jpeg_CreateDecompress(ptr noundef nonnull %3, i32 noundef signext 62, i64 noundef 632) #7
  %13 = getelementptr inbounds i8, ptr %4, i64 152
  store ptr @cdjpeg_message_table, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds i8, ptr %4, i64 160
  store i32 1000, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds i8, ptr %4, i64 164
  store i32 1043, ptr %15, align 4, !tbaa !20
  call void @jpeg_set_marker_processor(ptr noundef nonnull %3, i32 noundef signext 254, ptr noundef nonnull @print_text_marker) #7
  call void @jpeg_set_marker_processor(ptr noundef nonnull %3, i32 noundef signext 236, ptr noundef nonnull @print_text_marker) #7
  %16 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %3, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 0)
  %17 = add nsw i32 %0, -1
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = load ptr, ptr @progname, align 8, !tbaa !6
  %22 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef %21) #8
  call fastcc void @usage()
  unreachable

23:                                               ; preds = %11
  %24 = icmp slt i32 %16, %0
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = call ptr @fopen(ptr noundef %28, ptr noundef nonnull @.str.2)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = load ptr, ptr @progname, align 8, !tbaa !6
  %34 = load ptr, ptr %27, align 8, !tbaa !6
  %35 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %33, ptr noundef %34) #8
  call void @exit(i32 noundef signext 1) #9
  unreachable

36:                                               ; preds = %23
  %37 = call ptr @read_stdin() #7
  br label %38

38:                                               ; preds = %25, %36
  %39 = phi ptr [ %29, %25 ], [ %37, %36 ]
  %40 = load ptr, ptr @outfilename, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = call ptr @fopen(ptr noundef nonnull %40, ptr noundef nonnull @.str.4)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !6
  %47 = load ptr, ptr @progname, align 8, !tbaa !6
  %48 = load ptr, ptr @outfilename, align 8, !tbaa !6
  %49 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef %47, ptr noundef %48) #8
  call void @exit(i32 noundef signext 1) #9
  unreachable

50:                                               ; preds = %38
  %51 = call ptr @write_stdout() #7
  br label %52

52:                                               ; preds = %42, %50
  %53 = phi ptr [ %43, %42 ], [ %51, %50 ]
  call void @jpeg_stdio_src(ptr noundef nonnull %3, ptr noundef %39) #7
  %54 = call signext i32 @jpeg_read_header(ptr noundef nonnull %3, i32 noundef signext 1) #7
  %55 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %3, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 1)
  %56 = load i32, ptr @requested_fmt, align 4, !tbaa !21
  switch i32 %56, label %67 [
    i32 0, label %57
    i32 2, label %59
    i32 1, label %61
    i32 3, label %63
    i32 5, label %65
  ]

57:                                               ; preds = %52
  %58 = call ptr @jinit_write_bmp(ptr noundef nonnull %3, i32 noundef signext 0) #7
  br label %71

59:                                               ; preds = %52
  %60 = call ptr @jinit_write_bmp(ptr noundef nonnull %3, i32 noundef signext 1) #7
  br label %71

61:                                               ; preds = %52
  %62 = call ptr @jinit_write_gif(ptr noundef nonnull %3) #7
  br label %71

63:                                               ; preds = %52
  %64 = call ptr @jinit_write_ppm(ptr noundef nonnull %3) #7
  br label %71

65:                                               ; preds = %52
  %66 = call ptr @jinit_write_targa(ptr noundef nonnull %3) #7
  br label %71

67:                                               ; preds = %52
  %68 = load ptr, ptr %3, align 8, !tbaa !11
  %69 = getelementptr inbounds i8, ptr %68, i64 40
  store i32 1042, ptr %69, align 8, !tbaa !22
  %70 = load ptr, ptr %68, align 8, !tbaa !23
  call void %70(ptr noundef nonnull %3) #7
  br label %71

71:                                               ; preds = %67, %65, %63, %61, %59, %57
  %72 = phi ptr [ null, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 24
  store ptr %53, ptr %73, align 8, !tbaa !24
  %74 = call signext i32 @jpeg_start_decompress(ptr noundef nonnull %3) #7
  %75 = load ptr, ptr %72, align 8, !tbaa !26
  call void %75(ptr noundef nonnull %3, ptr noundef nonnull %72) #7
  %76 = getelementptr inbounds i8, ptr %3, i64 168
  %77 = getelementptr inbounds i8, ptr %3, i64 140
  %78 = load i32, ptr %76, align 8, !tbaa !27
  %79 = load i32, ptr %77, align 4, !tbaa !28
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = getelementptr inbounds i8, ptr %72, i64 32
  %83 = getelementptr inbounds i8, ptr %72, i64 40
  %84 = getelementptr inbounds i8, ptr %72, i64 8
  br label %85

85:                                               ; preds = %81, %85
  %86 = load ptr, ptr %82, align 8, !tbaa !29
  %87 = load i32, ptr %83, align 8, !tbaa !30
  %88 = call signext i32 @jpeg_read_scanlines(ptr noundef nonnull %3, ptr noundef %86, i32 noundef signext %87) #7
  %89 = load ptr, ptr %84, align 8, !tbaa !31
  call void %89(ptr noundef nonnull %3, ptr noundef nonnull %72, i32 noundef signext %88) #7
  %90 = load i32, ptr %76, align 8, !tbaa !27
  %91 = load i32, ptr %77, align 4, !tbaa !28
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %85, label %93, !llvm.loop !32

93:                                               ; preds = %85, %71
  %94 = getelementptr inbounds i8, ptr %72, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  call void %95(ptr noundef nonnull %3, ptr noundef nonnull %72) #7
  %96 = call signext i32 @jpeg_finish_decompress(ptr noundef nonnull %3) #7
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #7
  %97 = load ptr, ptr @stdin, align 8, !tbaa !6
  %98 = icmp eq ptr %39, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call signext i32 @fclose(ptr noundef %39)
  br label %101

101:                                              ; preds = %99, %93
  %102 = load ptr, ptr @stdout, align 8, !tbaa !6
  %103 = icmp eq ptr %53, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call signext i32 @fclose(ptr noundef %53)
  br label %106

106:                                              ; preds = %104, %101
  %107 = getelementptr inbounds i8, ptr %4, i64 128
  %108 = load i64, ptr %107, align 8, !tbaa !35
  %109 = icmp eq i64 %108, 0
  %110 = select i1 %109, i32 0, i32 2
  call void @exit(i32 noundef signext %110) #9
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_CreateDecompress(ptr noundef, i32 noundef signext, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_set_marker_processor(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal noundef signext i32 @print_text_marker(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds i8, ptr %2, i64 124
  %4 = load i32, ptr %3, align 4, !tbaa !36
  %5 = icmp sgt i32 %4, 0
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %7, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = tail call signext i32 %13(ptr noundef nonnull %0) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 24, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %17, align 8, !tbaa !23
  tail call void %19(ptr noundef nonnull %0) #7
  br label %20

20:                                               ; preds = %1, %11, %16
  %21 = load i64, ptr %8, align 8, !tbaa !38
  %22 = add i64 %21, -1
  store i64 %22, ptr %8, align 8, !tbaa !38
  %23 = load ptr, ptr %7, align 8, !tbaa !41
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %7, align 8, !tbaa !41
  %25 = load i8, ptr %23, align 1, !tbaa !10
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 8
  %28 = load ptr, ptr %6, align 8, !tbaa !37
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !38
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = getelementptr inbounds i8, ptr %28, i64 24
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = tail call signext i32 %34(ptr noundef nonnull %0) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !11
  %39 = getelementptr inbounds i8, ptr %38, i64 40
  store i32 24, ptr %39, align 8, !tbaa !22
  %40 = load ptr, ptr %38, align 8, !tbaa !23
  tail call void %40(ptr noundef nonnull %0) #7
  br label %41

41:                                               ; preds = %20, %32, %37
  %42 = load i64, ptr %29, align 8, !tbaa !38
  %43 = add i64 %42, -1
  store i64 %43, ptr %29, align 8, !tbaa !38
  %44 = load ptr, ptr %28, align 8, !tbaa !41
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %28, align 8, !tbaa !41
  %46 = load i8, ptr %44, align 1, !tbaa !10
  %47 = zext i8 %46 to i64
  %48 = or disjoint i64 %27, %47
  %49 = add nsw i64 %48, -2
  br i1 %5, label %50, label %62

50:                                               ; preds = %41
  %51 = getelementptr inbounds i8, ptr %0, i64 540
  %52 = load i32, ptr %51, align 4, !tbaa !42
  %53 = icmp eq i32 %52, 254
  %54 = load ptr, ptr @stderr, align 8, !tbaa !6
  br i1 %53, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.47, i64 noundef %49) #8
  br label %60

57:                                               ; preds = %50
  %58 = add nsw i32 %52, -224
  %59 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.48, i32 noundef signext %58, i64 noundef %49) #8
  br label %60

60:                                               ; preds = %55, %57
  %61 = icmp ugt i64 %48, 2
  br i1 %61, label %66, label %142

62:                                               ; preds = %41
  %63 = icmp ugt i64 %48, 2
  br i1 %63, label %64, label %146

64:                                               ; preds = %62
  %65 = add nsw i64 %48, -3
  br label %68

66:                                               ; preds = %60
  %67 = add nsw i64 %48, -3
  br i1 %5, label %70, label %68

68:                                               ; preds = %64, %66
  %69 = phi i64 [ %67, %66 ], [ %65, %64 ]
  br label %120

70:                                               ; preds = %66, %117
  %71 = phi i64 [ %118, %117 ], [ %67, %66 ]
  %72 = phi i32 [ %92, %117 ], [ 0, %66 ]
  %73 = load ptr, ptr %6, align 8, !tbaa !37
  %74 = getelementptr inbounds i8, ptr %73, i64 8
  %75 = load i64, ptr %74, align 8, !tbaa !38
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = getelementptr inbounds i8, ptr %73, i64 24
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = tail call signext i32 %79(ptr noundef nonnull %0) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load ptr, ptr %0, align 8, !tbaa !11
  %84 = getelementptr inbounds i8, ptr %83, i64 40
  store i32 24, ptr %84, align 8, !tbaa !22
  %85 = load ptr, ptr %83, align 8, !tbaa !23
  tail call void %85(ptr noundef nonnull %0) #7
  br label %86

86:                                               ; preds = %82, %77, %70
  %87 = load i64, ptr %74, align 8, !tbaa !38
  %88 = add i64 %87, -1
  store i64 %88, ptr %74, align 8, !tbaa !38
  %89 = load ptr, ptr %73, align 8, !tbaa !41
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %73, align 8, !tbaa !41
  %91 = load i8, ptr %89, align 1, !tbaa !10
  %92 = zext i8 %91 to i32
  switch i8 %91, label %104 [
    i8 13, label %101
    i8 10, label %96
    i8 92, label %93
  ]

93:                                               ; preds = %86
  %94 = load ptr, ptr @stderr, align 8, !tbaa !6
  %95 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 2, i64 1, ptr %94) #10
  br label %117

96:                                               ; preds = %86
  %97 = icmp eq i32 %72, 13
  br i1 %97, label %117, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr @stderr, align 8, !tbaa !6
  %100 = tail call i32 @fputc(i32 10, ptr %99)
  br label %117

101:                                              ; preds = %86
  %102 = load ptr, ptr @stderr, align 8, !tbaa !6
  %103 = tail call i32 @fputc(i32 10, ptr %102)
  br label %117

104:                                              ; preds = %86
  %105 = tail call ptr @__ctype_b_loc() #11
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = zext i8 %91 to i64
  %108 = getelementptr inbounds i16, ptr %106, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !43
  %110 = and i16 %109, 16384
  %111 = icmp eq i16 %110, 0
  %112 = load ptr, ptr @stderr, align 8, !tbaa !6
  br i1 %111, label %115, label %113

113:                                              ; preds = %104
  %114 = tail call signext i32 @putc(i32 noundef signext %92, ptr noundef %112)
  br label %117

115:                                              ; preds = %104
  %116 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.51, i32 noundef signext %92) #8
  br label %117

117:                                              ; preds = %115, %113, %101, %98, %96, %93
  %118 = add nsw i64 %71, -1
  %119 = icmp sgt i64 %71, 0
  br i1 %119, label %70, label %142, !llvm.loop !44

120:                                              ; preds = %68, %135
  %121 = phi i64 [ %140, %135 ], [ %69, %68 ]
  %122 = load ptr, ptr %6, align 8, !tbaa !37
  %123 = getelementptr inbounds i8, ptr %122, i64 8
  %124 = load i64, ptr %123, align 8, !tbaa !38
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = getelementptr inbounds i8, ptr %122, i64 24
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = tail call signext i32 %128(ptr noundef nonnull %0) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load ptr, ptr %0, align 8, !tbaa !11
  %133 = getelementptr inbounds i8, ptr %132, i64 40
  store i32 24, ptr %133, align 8, !tbaa !22
  %134 = load ptr, ptr %132, align 8, !tbaa !23
  tail call void %134(ptr noundef nonnull %0) #7
  br label %135

135:                                              ; preds = %120, %126, %131
  %136 = load i64, ptr %123, align 8, !tbaa !38
  %137 = add i64 %136, -1
  store i64 %137, ptr %123, align 8, !tbaa !38
  %138 = load ptr, ptr %122, align 8, !tbaa !41
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %122, align 8, !tbaa !41
  %140 = add nsw i64 %121, -1
  %141 = icmp sgt i64 %121, 0
  br i1 %141, label %120, label %142, !llvm.loop !44

142:                                              ; preds = %135, %117, %60
  br i1 %5, label %143, label %146

143:                                              ; preds = %142
  %144 = load ptr, ptr @stderr, align 8, !tbaa !6
  %145 = tail call i32 @fputc(i32 10, ptr %144)
  br label %146

146:                                              ; preds = %62, %143, %142
  ret i32 1
}

; Function Attrs: nounwind
define internal fastcc signext i32 @parse_switches(ptr noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32 3, ptr @requested_fmt, align 4, !tbaa !21
  store ptr null, ptr @outfilename, align 8, !tbaa !6
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = getelementptr inbounds i8, ptr %8, i64 124
  store i32 0, ptr %9, align 4, !tbaa !36
  %10 = icmp sgt i32 %1, 1
  br i1 %10, label %11, label %250

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %0, i64 120
  %13 = getelementptr inbounds i8, ptr %0, i64 108
  %14 = getelementptr inbounds i8, ptr %0, i64 96
  %15 = getelementptr inbounds i8, ptr %0, i64 112
  %16 = getelementptr inbounds i8, ptr %0, i64 116
  %17 = getelementptr inbounds i8, ptr %0, i64 100
  %18 = getelementptr inbounds i8, ptr %0, i64 64
  %19 = icmp eq i32 %3, 0
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = getelementptr inbounds i8, ptr %0, i64 68
  %22 = getelementptr inbounds i8, ptr %0, i64 72
  br label %23

23:                                               ; preds = %11, %246
  %24 = phi i32 [ 1, %11 ], [ %248, %246 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = icmp eq i8 %28, 45
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = icmp slt i32 %24, 1
  br i1 %31, label %32, label %250

32:                                               ; preds = %30
  store ptr null, ptr @outfilename, align 8, !tbaa !6
  br label %246

33:                                               ; preds = %23
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  %35 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.52, i32 noundef signext 1) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

38:                                               ; preds = %33
  %39 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.53, i32 noundef signext 1) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.54, i32 noundef signext 1) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.55, i32 noundef signext 1) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.56, i32 noundef signext 1) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47, %44, %41, %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %51 = add nsw i32 %24, 1
  %52 = icmp slt i32 %51, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call fastcc void @usage()
  unreachable

54:                                               ; preds = %50
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %57, ptr noundef nonnull @.str.57, ptr noundef nonnull %5) #7
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  call fastcc void @usage()
  unreachable

61:                                               ; preds = %54
  %62 = load i32, ptr %5, align 4, !tbaa !21
  store i32 %62, ptr %12, align 8, !tbaa !45
  store i32 1, ptr %13, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %246

63:                                               ; preds = %47
  %64 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.58, i32 noundef signext 2) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = add nsw i32 %24, 1
  %68 = icmp slt i32 %67, %1
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call fastcc void @usage()
  unreachable

70:                                               ; preds = %66
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds ptr, ptr %2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = call signext i32 @keymatch(ptr noundef %73, ptr noundef nonnull @.str.59, i32 noundef signext 1) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 0, ptr %14, align 8, !tbaa !47
  br label %246

77:                                               ; preds = %70
  %78 = load ptr, ptr %72, align 8, !tbaa !6
  %79 = call signext i32 @keymatch(ptr noundef %78, ptr noundef nonnull @.str.60, i32 noundef signext 2) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 1, ptr %14, align 8, !tbaa !47
  br label %246

82:                                               ; preds = %77
  %83 = load ptr, ptr %72, align 8, !tbaa !6
  %84 = call signext i32 @keymatch(ptr noundef %83, ptr noundef nonnull @.str.61, i32 noundef signext 2) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 2, ptr %14, align 8, !tbaa !47
  br label %246

87:                                               ; preds = %82
  call fastcc void @usage()
  unreachable

88:                                               ; preds = %63
  %89 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.62, i32 noundef signext 2) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %88
  %92 = add nsw i32 %24, 1
  %93 = icmp slt i32 %92, %1
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call fastcc void @usage()
  unreachable

95:                                               ; preds = %91
  %96 = sext i32 %92 to i64
  %97 = getelementptr inbounds ptr, ptr %2, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = call signext i32 @keymatch(ptr noundef %98, ptr noundef nonnull @.str.63, i32 noundef signext 2) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  store i32 2, ptr %15, align 8, !tbaa !48
  br label %246

102:                                              ; preds = %95
  %103 = load ptr, ptr %97, align 8, !tbaa !6
  %104 = call signext i32 @keymatch(ptr noundef %103, ptr noundef nonnull @.str.64, i32 noundef signext 2) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 0, ptr %15, align 8, !tbaa !48
  br label %246

107:                                              ; preds = %102
  %108 = load ptr, ptr %97, align 8, !tbaa !6
  %109 = call signext i32 @keymatch(ptr noundef %108, ptr noundef nonnull @.str.65, i32 noundef signext 2) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store i32 1, ptr %15, align 8, !tbaa !48
  br label %246

112:                                              ; preds = %107
  call fastcc void @usage()
  unreachable

113:                                              ; preds = %88
  %114 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.66, i32 noundef signext 1) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.67, i32 noundef signext 1) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116, %113
  %120 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %120, label %124, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr @stderr, align 8, !tbaa !6
  %123 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #8
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %124

124:                                              ; preds = %121, %119
  %125 = load ptr, ptr %0, align 8, !tbaa !11
  %126 = getelementptr inbounds i8, ptr %125, i64 124
  %127 = load i32, ptr %126, align 4, !tbaa !36
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 4, !tbaa !36
  br label %246

129:                                              ; preds = %116
  %130 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.60, i32 noundef signext 1) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  store i32 0, ptr %16, align 4, !tbaa !49
  store i32 1, ptr %15, align 8, !tbaa !48
  %133 = load i32, ptr %13, align 4, !tbaa !46
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 216, ptr %12, align 8, !tbaa !45
  br label %136

136:                                              ; preds = %135, %132
  store i32 1, ptr %14, align 8, !tbaa !47
  store i32 0, ptr %17, align 4, !tbaa !50
  br label %246

137:                                              ; preds = %129
  %138 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.71, i32 noundef signext 1) #7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

141:                                              ; preds = %137
  %142 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.72, i32 noundef signext 2) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.73, i32 noundef signext 2) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144, %141
  store i32 1, ptr %18, align 8, !tbaa !51
  br label %246

148:                                              ; preds = %144
  %149 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.74, i32 noundef signext 3) #7
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %148
  %152 = add nsw i32 %24, 1
  %153 = icmp slt i32 %152, %1
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call fastcc void @usage()
  unreachable

155:                                              ; preds = %151
  br i1 %19, label %246, label %156

156:                                              ; preds = %155
  %157 = sext i32 %152 to i64
  %158 = getelementptr inbounds ptr, ptr %2, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = call ptr @fopen(ptr noundef %159, ptr noundef nonnull @.str.2)
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load ptr, ptr @stderr, align 8, !tbaa !6
  %164 = load ptr, ptr @progname, align 8, !tbaa !6
  %165 = load ptr, ptr %158, align 8, !tbaa !6
  %166 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.3, ptr noundef %164, ptr noundef %165) #8
  call void @exit(i32 noundef signext 1) #9
  unreachable

167:                                              ; preds = %156
  call void @read_color_map(ptr noundef nonnull %0, ptr noundef nonnull %160) #7
  %168 = call signext i32 @fclose(ptr noundef nonnull %160)
  store i32 1, ptr %13, align 4, !tbaa !46
  br label %246

169:                                              ; preds = %148
  %170 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.75, i32 noundef signext 3) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %193, label %172

172:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 120, ptr %7, align 1, !tbaa !10
  %173 = add nsw i32 %24, 1
  %174 = icmp slt i32 %173, %1
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call fastcc void @usage()
  unreachable

176:                                              ; preds = %172
  %177 = sext i32 %173 to i64
  %178 = getelementptr inbounds ptr, ptr %2, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %179, ptr noundef nonnull @.str.76, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  call fastcc void @usage()
  unreachable

183:                                              ; preds = %176
  %184 = load i8, ptr %7, align 1
  %185 = and i8 %184, -33
  %186 = icmp eq i8 %185, 77
  %187 = load i64, ptr %6, align 8, !tbaa !52
  %188 = mul nsw i64 %187, 1000
  %189 = select i1 %186, i64 %188, i64 %187
  %190 = mul nsw i64 %189, 1000
  %191 = load ptr, ptr %20, align 8, !tbaa !53
  %192 = getelementptr inbounds i8, ptr %191, i64 88
  store i64 %190, ptr %192, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %246

193:                                              ; preds = %169
  %194 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.77, i32 noundef signext 3) #7
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i32 0, ptr %17, align 4, !tbaa !50
  br label %246

197:                                              ; preds = %193
  %198 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.78, i32 noundef signext 3) #7
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  store i32 0, ptr %16, align 4, !tbaa !49
  br label %246

201:                                              ; preds = %197
  %202 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.79, i32 noundef signext 3) #7
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  store i32 2, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

205:                                              ; preds = %201
  %206 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.80, i32 noundef signext 4) #7
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = add nsw i32 %24, 1
  %210 = icmp slt i32 %209, %1
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  call fastcc void @usage()
  unreachable

212:                                              ; preds = %208
  %213 = sext i32 %209 to i64
  %214 = getelementptr inbounds ptr, ptr %2, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  store ptr %215, ptr @outfilename, align 8, !tbaa !6
  br label %246

216:                                              ; preds = %205
  %217 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.81, i32 noundef signext 1) #7
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.82, i32 noundef signext 1) #7
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219, %216
  store i32 3, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

223:                                              ; preds = %219
  %224 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.83, i32 noundef signext 1) #7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %223
  store i32 4, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

227:                                              ; preds = %223
  %228 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.84, i32 noundef signext 1) #7
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %227
  %231 = add nsw i32 %24, 1
  %232 = icmp slt i32 %231, %1
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  call fastcc void @usage()
  unreachable

234:                                              ; preds = %230
  %235 = sext i32 %231 to i64
  %236 = getelementptr inbounds ptr, ptr %2, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %237, ptr noundef nonnull @.str.85, ptr noundef nonnull %21, ptr noundef nonnull %22) #7
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %246, label %240

240:                                              ; preds = %234
  call fastcc void @usage()
  unreachable

241:                                              ; preds = %227
  %242 = call signext i32 @keymatch(ptr noundef nonnull %34, ptr noundef nonnull @.str.86, i32 noundef signext 1) #7
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  store i32 5, ptr @requested_fmt, align 4, !tbaa !21
  br label %246

245:                                              ; preds = %241
  call fastcc void @usage()
  unreachable

246:                                              ; preds = %37, %81, %86, %76, %124, %140, %167, %155, %196, %204, %222, %234, %244, %226, %212, %200, %183, %147, %136, %101, %111, %106, %61, %32
  %247 = phi i32 [ %24, %32 ], [ %24, %37 ], [ %51, %61 ], [ %67, %76 ], [ %67, %81 ], [ %67, %86 ], [ %92, %101 ], [ %92, %106 ], [ %92, %111 ], [ %24, %124 ], [ %24, %136 ], [ %24, %140 ], [ %24, %147 ], [ %152, %167 ], [ %152, %155 ], [ %173, %183 ], [ %24, %196 ], [ %24, %200 ], [ %24, %204 ], [ %209, %212 ], [ %24, %222 ], [ %24, %226 ], [ %231, %234 ], [ %24, %244 ]
  %248 = add nsw i32 %247, 1
  %249 = icmp slt i32 %248, %1
  br i1 %249, label %23, label %250, !llvm.loop !56

250:                                              ; preds = %246, %30, %4
  %251 = phi i32 [ 1, %4 ], [ %24, %30 ], [ %248, %246 ]
  ret i32 %251
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = load ptr, ptr @progname, align 8, !tbaa !6
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef %2) #8
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 12, i64 1, ptr %4) #10
  %6 = load ptr, ptr @stderr, align 8, !tbaa !6
  %7 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 37, i64 1, ptr %6) #10
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 55, i64 1, ptr %8) #10
  %10 = load ptr, ptr @stderr, align 8, !tbaa !6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 46, i64 1, ptr %10) #10
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 40, i64 1, ptr %12) #10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 61, i64 1, ptr %14) #10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !6
  %17 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95) #8
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95) #8
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #8
  %24 = load ptr, ptr @stderr, align 8, !tbaa !6
  %25 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95) #8
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 29, i64 1, ptr %26) #10
  %28 = load ptr, ptr @stderr, align 8, !tbaa !6
  %29 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99) #8
  %30 = load ptr, ptr @stderr, align 8, !tbaa !6
  %31 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.95) #8
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.95) #8
  %34 = load ptr, ptr @stderr, align 8, !tbaa !6
  %35 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 45, i64 1, ptr %34) #10
  %36 = load ptr, ptr @stderr, align 8, !tbaa !6
  %37 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 53, i64 1, ptr %36) #10
  %38 = load ptr, ptr @stderr, align 8, !tbaa !6
  %39 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 62, i64 1, ptr %38) #10
  %40 = load ptr, ptr @stderr, align 8, !tbaa !6
  %41 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 56, i64 1, ptr %40) #10
  %42 = load ptr, ptr @stderr, align 8, !tbaa !6
  %43 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 51, i64 1, ptr %42) #10
  %44 = load ptr, ptr @stderr, align 8, !tbaa !6
  %45 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 61, i64 1, ptr %44) #10
  %46 = load ptr, ptr @stderr, align 8, !tbaa !6
  %47 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 51, i64 1, ptr %46) #10
  %48 = load ptr, ptr @stderr, align 8, !tbaa !6
  %49 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 46, i64 1, ptr %48) #10
  %50 = load ptr, ptr @stderr, align 8, !tbaa !6
  %51 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 43, i64 1, ptr %50) #10
  tail call void @exit(i32 noundef signext 1) #9
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #0

declare dso_local ptr @read_stdin() local_unnamed_addr #2

declare dso_local ptr @write_stdout() local_unnamed_addr #2

declare dso_local void @jpeg_stdio_src(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_read_header(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local ptr @jinit_write_bmp(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local ptr @jinit_write_gif(ptr noundef) local_unnamed_addr #2

declare dso_local ptr @jinit_write_ppm(ptr noundef) local_unnamed_addr #2

declare dso_local ptr @jinit_write_targa(ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #2

declare dso_local void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local signext i32 @keymatch(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare dso_local void @read_color_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind willreturn memory(none) }

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
!16 = !{!17, !7, i64 152}
!17 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !8, i64 44, !13, i64 124, !18, i64 128, !7, i64 136, !13, i64 144, !7, i64 152, !13, i64 160, !13, i64 164}
!18 = !{!"long", !8, i64 0}
!19 = !{!17, !13, i64 160}
!20 = !{!17, !13, i64 164}
!21 = !{!13, !13, i64 0}
!22 = !{!17, !13, i64 40}
!23 = !{!17, !7, i64 0}
!24 = !{!25, !7, i64 24}
!25 = !{!"djpeg_dest_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40}
!26 = !{!25, !7, i64 0}
!27 = !{!12, !13, i64 168}
!28 = !{!12, !13, i64 140}
!29 = !{!25, !7, i64 32}
!30 = !{!25, !13, i64 40}
!31 = !{!25, !7, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!25, !7, i64 16}
!35 = !{!17, !18, i64 128}
!36 = !{!17, !13, i64 124}
!37 = !{!12, !7, i64 40}
!38 = !{!39, !18, i64 8}
!39 = !{!"jpeg_source_mgr", !7, i64 0, !18, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!40 = !{!39, !7, i64 24}
!41 = !{!39, !7, i64 0}
!42 = !{!12, !13, i64 540}
!43 = !{!15, !15, i64 0}
!44 = distinct !{!44, !33}
!45 = !{!12, !13, i64 120}
!46 = !{!12, !13, i64 108}
!47 = !{!12, !13, i64 96}
!48 = !{!12, !13, i64 112}
!49 = !{!12, !13, i64 116}
!50 = !{!12, !13, i64 100}
!51 = !{!12, !13, i64 64}
!52 = !{!18, !18, i64 0}
!53 = !{!12, !7, i64 8}
!54 = !{!55, !18, i64 88}
!55 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !18, i64 88, !18, i64 96}
!56 = distinct !{!56, !33}
