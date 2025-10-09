; ModuleID = 'cjpeg.c'
source_filename = "cjpeg.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr null], align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdin = external dso_local local_unnamed_addr global ptr, align 8
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"cycles: %lu | regsw hits:%d regsw misses:%d \0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Corrected Cycles: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"lw, %lu\0A ld, %lu\0A li, %lu\0A sw, %lu\0A sd, %lu\0A \00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Not a PPM/PGM file\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@is_targa = internal unnamed_addr global i1 false, align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.59 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"6b  27-Mar-1998\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1998, Thomas G. Lane\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.82 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.84 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.85 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.86 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.90 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.94 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.95 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.97 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"  -baseline      Force baseline quantization tables\0A\00", align 1
@.str.100 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @get_regsw_hits() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80b", "=r"() #6, !srcloc !6
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext i32 @get_regsw_misses() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80c", "=r"() #6, !srcloc !7
  ret i32 %1
}

; Function Attrs: nounwind
define dso_local void @clear_regsw_cache() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80d", "=r"() #6, !srcloc !8
  ret void
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_cycles() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x814", "=r"() #6, !srcloc !9
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_li() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x80f", "=r"() #6, !srcloc !10
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_ld() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x811", "=r"() #6, !srcloc !11
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_lw() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x810", "=r"() #6, !srcloc !12
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_sd() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x813", "=r"() #6, !srcloc !13
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind
define dso_local range(i64 -2147483648, 2147483648) i64 @get_sw() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "csrr $0, 0x812", "=r"() #6, !srcloc !14
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: noreturn nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  %5 = tail call i32 asm sideeffect "csrr $0, 0x80d", "=r"() #6, !srcloc !8
  %6 = tail call i32 asm sideeffect "csrr $0, 0x814", "=r"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #6
  %7 = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %7, ptr @progname, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %7, align 1, !tbaa !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store ptr @.str, ptr @progname, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %12, %9
  %14 = call ptr @jpeg_std_error(ptr noundef nonnull %4) #6
  store ptr %14, ptr %3, align 8, !tbaa !20
  call void @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef signext 62, i64 noundef 520) #6
  %15 = getelementptr inbounds i8, ptr %4, i64 152
  store ptr @cdjpeg_message_table, ptr %15, align 8, !tbaa !25
  %16 = getelementptr inbounds i8, ptr %4, i64 160
  store i32 1000, ptr %16, align 8, !tbaa !28
  %17 = getelementptr inbounds i8, ptr %4, i64 164
  store i32 1043, ptr %17, align 4, !tbaa !29
  %18 = getelementptr inbounds i8, ptr %3, i64 60
  store i32 2, ptr %18, align 4, !tbaa !30
  call void @jpeg_set_defaults(ptr noundef nonnull %3) #6
  %19 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %3, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 0)
  %20 = add nsw i32 %0, -1
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load ptr, ptr @stderr, align 8, !tbaa !15
  %24 = load ptr, ptr @progname, align 8, !tbaa !15
  %25 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef %24) #7
  call fastcc void @usage()
  unreachable

26:                                               ; preds = %13
  %27 = icmp slt i32 %19, %0
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = sext i32 %19 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = call ptr @fopen(ptr noundef %31, ptr noundef nonnull @.str.2)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load ptr, ptr @stderr, align 8, !tbaa !15
  %36 = load ptr, ptr @progname, align 8, !tbaa !15
  %37 = load ptr, ptr %30, align 8, !tbaa !15
  %38 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef %36, ptr noundef %37) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

39:                                               ; preds = %26
  %40 = call ptr @read_stdin() #6
  br label %41

41:                                               ; preds = %28, %39
  %42 = phi ptr [ %32, %28 ], [ %40, %39 ]
  %43 = load ptr, ptr @outfilename, align 8, !tbaa !15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = call ptr @fopen(ptr noundef nonnull %43, ptr noundef nonnull @.str.4)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load ptr, ptr @stderr, align 8, !tbaa !15
  %50 = load ptr, ptr @progname, align 8, !tbaa !15
  %51 = load ptr, ptr @outfilename, align 8, !tbaa !15
  %52 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.3, ptr noundef %50, ptr noundef %51) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

53:                                               ; preds = %41
  %54 = call ptr @write_stdout() #6
  br label %55

55:                                               ; preds = %45, %53
  %56 = phi ptr [ %46, %45 ], [ %54, %53 ]
  %57 = load i1, ptr @is_targa, align 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #6
  br label %87

60:                                               ; preds = %55
  %61 = call signext i32 @getc(ptr noundef %42)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load ptr, ptr %3, align 8, !tbaa !20
  %65 = getelementptr inbounds i8, ptr %64, i64 40
  store i32 42, ptr %65, align 8, !tbaa !31
  %66 = load ptr, ptr %64, align 8, !tbaa !32
  call void %66(ptr noundef nonnull %3) #6
  br label %67

67:                                               ; preds = %63, %60
  %68 = call signext i32 @ungetc(i32 noundef signext %61, ptr noundef %42)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load ptr, ptr %3, align 8, !tbaa !20
  %72 = getelementptr inbounds i8, ptr %71, i64 40
  store i32 1040, ptr %72, align 8, !tbaa !31
  %73 = load ptr, ptr %71, align 8, !tbaa !32
  call void %73(ptr noundef nonnull %3) #6
  br label %74

74:                                               ; preds = %70, %67
  switch i32 %61, label %83 [
    i32 66, label %75
    i32 71, label %77
    i32 80, label %79
    i32 0, label %81
  ]

75:                                               ; preds = %74
  %76 = call ptr @jinit_read_bmp(ptr noundef nonnull %3) #6
  br label %87

77:                                               ; preds = %74
  %78 = call ptr @jinit_read_gif(ptr noundef nonnull %3) #6
  br label %87

79:                                               ; preds = %74
  %80 = call ptr @jinit_read_ppm(ptr noundef nonnull %3) #6
  br label %87

81:                                               ; preds = %74
  %82 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #6
  br label %87

83:                                               ; preds = %74
  %84 = load ptr, ptr %3, align 8, !tbaa !20
  %85 = getelementptr inbounds i8, ptr %84, i64 40
  store i32 1041, ptr %85, align 8, !tbaa !31
  %86 = load ptr, ptr %84, align 8, !tbaa !32
  call void %86(ptr noundef nonnull %3) #6
  br label %87

87:                                               ; preds = %58, %75, %77, %79, %81, %83
  %88 = phi ptr [ %59, %58 ], [ null, %83 ], [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 24
  store ptr %42, ptr %89, align 8, !tbaa !33
  %90 = load ptr, ptr %88, align 8, !tbaa !35
  call void %90(ptr noundef nonnull %3, ptr noundef nonnull %88) #6
  call void @jpeg_default_colorspace(ptr noundef nonnull %3) #6
  %91 = call fastcc signext i32 @parse_switches(ptr noundef nonnull %3, i32 noundef signext %0, ptr noundef nonnull %1, i32 noundef signext 1)
  call void @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef %56) #6
  call void @jpeg_start_compress(ptr noundef nonnull %3, i32 noundef signext 1) #6
  %92 = getelementptr inbounds i8, ptr %3, i64 304
  %93 = getelementptr inbounds i8, ptr %3, i64 52
  %94 = load i32, ptr %92, align 8, !tbaa !36
  %95 = load i32, ptr %93, align 4, !tbaa !37
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %87
  %98 = getelementptr inbounds i8, ptr %88, i64 8
  %99 = getelementptr inbounds i8, ptr %88, i64 32
  br label %100

100:                                              ; preds = %97, %100
  %101 = load ptr, ptr %98, align 8, !tbaa !38
  %102 = call signext i32 %101(ptr noundef nonnull %3, ptr noundef nonnull %88) #6
  %103 = load ptr, ptr %99, align 8, !tbaa !39
  %104 = call signext i32 @jpeg_write_scanlines(ptr noundef nonnull %3, ptr noundef %103, i32 noundef signext %102) #6
  %105 = load i32, ptr %92, align 8, !tbaa !36
  %106 = load i32, ptr %93, align 4, !tbaa !37
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %100, label %108

108:                                              ; preds = %100, %87
  %109 = getelementptr inbounds i8, ptr %88, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !40
  call void %110(ptr noundef nonnull %3, ptr noundef nonnull %88) #6
  call void @jpeg_finish_compress(ptr noundef nonnull %3) #6
  call void @jpeg_destroy_compress(ptr noundef nonnull %3) #6
  %111 = load ptr, ptr @stdin, align 8, !tbaa !15
  %112 = icmp eq ptr %42, %111
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = call signext i32 @fclose(ptr noundef %42)
  br label %115

115:                                              ; preds = %113, %108
  %116 = load ptr, ptr @stdout, align 8, !tbaa !15
  %117 = icmp eq ptr %56, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call signext i32 @fclose(ptr noundef %56)
  br label %120

120:                                              ; preds = %118, %115
  %121 = sext i32 %6 to i64
  %122 = call i32 asm sideeffect "csrr $0, 0x814", "=r"() #6, !srcloc !9
  %123 = sext i32 %122 to i64
  %124 = call i32 asm sideeffect "csrr $0, 0x80b", "=r"() #6, !srcloc !6
  %125 = call i32 asm sideeffect "csrr $0, 0x80c", "=r"() #6, !srcloc !7
  %126 = sub nsw i64 %123, %121
  %127 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %126, i32 noundef signext %124, i32 noundef signext %125)
  %128 = sext i32 %124 to i64
  %129 = sub nsw i64 %126, %128
  %130 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %129)
  %131 = call i32 asm sideeffect "csrr $0, 0x810", "=r"() #6, !srcloc !12
  %132 = sext i32 %131 to i64
  %133 = call i32 asm sideeffect "csrr $0, 0x80f", "=r"() #6, !srcloc !10
  %134 = sext i32 %133 to i64
  %135 = call i32 asm sideeffect "csrr $0, 0x811", "=r"() #6, !srcloc !11
  %136 = sext i32 %135 to i64
  %137 = call i32 asm sideeffect "csrr $0, 0x812", "=r"() #6, !srcloc !14
  %138 = sext i32 %137 to i64
  %139 = call i32 asm sideeffect "csrr $0, 0x813", "=r"() #6, !srcloc !13
  %140 = sext i32 %139 to i64
  %141 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %132, i64 noundef %136, i64 noundef %134, i64 noundef %138, i64 noundef %140)
  %142 = getelementptr inbounds i8, ptr %4, i64 128
  %143 = load i64, ptr %142, align 8, !tbaa !41
  %144 = icmp eq i64 %143, 0
  %145 = select i1 %144, i32 0, i32 2
  call void @exit(i32 noundef signext %145) #8
  unreachable
}

declare dso_local ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_CreateCompress(ptr noundef, i32 noundef signext, i64 noundef) local_unnamed_addr #3

declare dso_local void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal fastcc signext i32 @parse_switches(ptr noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 75, ptr %5, align 4, !tbaa !42
  store i1 false, ptr @is_targa, align 4
  store ptr null, ptr @outfilename, align 8, !tbaa !15
  %11 = load ptr, ptr %0, align 8, !tbaa !20
  %12 = getelementptr inbounds i8, ptr %11, i64 124
  store i32 0, ptr %12, align 4, !tbaa !43
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %274

14:                                               ; preds = %4
  %15 = getelementptr inbounds i8, ptr %0, i64 276
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = getelementptr inbounds i8, ptr %0, i64 264
  %18 = getelementptr inbounds i8, ptr %0, i64 284
  %19 = getelementptr inbounds i8, ptr %0, i64 280
  %20 = getelementptr inbounds i8, ptr %0, i64 272
  br label %21

21:                                               ; preds = %14, %253
  %22 = phi ptr [ null, %14 ], [ %261, %253 ]
  %23 = phi ptr [ null, %14 ], [ %260, %253 ]
  %24 = phi ptr [ null, %14 ], [ %259, %253 ]
  %25 = phi ptr [ null, %14 ], [ %258, %253 ]
  %26 = phi i32 [ 0, %14 ], [ %257, %253 ]
  %27 = phi i32 [ 0, %14 ], [ %256, %253 ]
  %28 = phi i32 [ 100, %14 ], [ %255, %253 ]
  %29 = phi i32 [ 1, %14 ], [ %262, %253 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = load i8, ptr %32, align 1, !tbaa !19
  %34 = icmp eq i8 %33, 45
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = icmp slt i32 %29, 1
  br i1 %36, label %37, label %264

37:                                               ; preds = %35
  store ptr null, ptr @outfilename, align 8, !tbaa !15
  br label %253

38:                                               ; preds = %21
  %39 = getelementptr inbounds i8, ptr %32, i64 1
  %40 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.50, i32 noundef signext 1) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @stderr, align 8, !tbaa !15
  %44 = load ptr, ptr @progname, align 8, !tbaa !15
  %45 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.51, ptr noundef %44) #7
  call void @exit(i32 noundef signext 1) #8
  unreachable

46:                                               ; preds = %38
  %47 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.52, i32 noundef signext 1) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %253

49:                                               ; preds = %46
  %50 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.53, i32 noundef signext 2) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = add nsw i32 %29, 1
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call fastcc void @usage()
  unreachable

56:                                               ; preds = %52
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds ptr, ptr %2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  %60 = call signext i32 @keymatch(ptr noundef %59, ptr noundef nonnull @.str.54, i32 noundef signext 1) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, ptr %15, align 4, !tbaa !44
  br label %253

63:                                               ; preds = %56
  %64 = load ptr, ptr %58, align 8, !tbaa !15
  %65 = call signext i32 @keymatch(ptr noundef %64, ptr noundef nonnull @.str.55, i32 noundef signext 2) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, ptr %15, align 4, !tbaa !44
  br label %253

68:                                               ; preds = %63
  %69 = load ptr, ptr %58, align 8, !tbaa !15
  %70 = call signext i32 @keymatch(ptr noundef %69, ptr noundef nonnull @.str.56, i32 noundef signext 2) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 2, ptr %15, align 4, !tbaa !44
  br label %253

73:                                               ; preds = %68
  call fastcc void @usage()
  unreachable

74:                                               ; preds = %49
  %75 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.57, i32 noundef signext 1) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.58, i32 noundef signext 1) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77, %74
  %81 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr @stderr, align 8, !tbaa !15
  %84 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #7
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load ptr, ptr %0, align 8, !tbaa !20
  %87 = getelementptr inbounds i8, ptr %86, i64 124
  %88 = load i32, ptr %87, align 4, !tbaa !43
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !43
  br label %253

90:                                               ; preds = %77
  %91 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.62, i32 noundef signext 2) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.63, i32 noundef signext 2) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93, %90
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef signext 1) #6
  br label %253

97:                                               ; preds = %93
  %98 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.64, i32 noundef signext 3) #6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 120, ptr %7, align 1, !tbaa !19
  %101 = add nsw i32 %29, 1
  %102 = icmp slt i32 %101, %1
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call fastcc void @usage()
  unreachable

104:                                              ; preds = %100
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds ptr, ptr %2, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !15
  %108 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %107, ptr noundef nonnull @.str.65, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  call fastcc void @usage()
  unreachable

111:                                              ; preds = %104
  %112 = load i8, ptr %7, align 1
  %113 = and i8 %112, -33
  %114 = icmp eq i8 %113, 77
  %115 = load i64, ptr %6, align 8, !tbaa !45
  %116 = mul nsw i64 %115, 1000
  %117 = select i1 %114, i64 %116, i64 %115
  %118 = mul nsw i64 %117, 1000
  %119 = load ptr, ptr %16, align 8, !tbaa !46
  %120 = getelementptr inbounds i8, ptr %119, i64 88
  store i64 %118, ptr %120, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %253

121:                                              ; preds = %97
  %122 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.66, i32 noundef signext 1) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.67, i32 noundef signext 1) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124, %121
  store i32 1, ptr %17, align 8, !tbaa !49
  br label %253

128:                                              ; preds = %124
  %129 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.68, i32 noundef signext 4) #6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = add nsw i32 %29, 1
  %133 = icmp slt i32 %132, %1
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call fastcc void @usage()
  unreachable

135:                                              ; preds = %131
  %136 = sext i32 %132 to i64
  %137 = getelementptr inbounds ptr, ptr %2, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !15
  store ptr %138, ptr @outfilename, align 8, !tbaa !15
  br label %253

139:                                              ; preds = %128
  %140 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.69, i32 noundef signext 1) #6
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %253

142:                                              ; preds = %139
  %143 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.70, i32 noundef signext 1) #6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %29, 1
  %147 = icmp slt i32 %146, %1
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call fastcc void @usage()
  unreachable

149:                                              ; preds = %145
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds ptr, ptr %2, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !15
  %153 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %152, ptr noundef nonnull @.str.71, ptr noundef nonnull %5) #6
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call fastcc void @usage()
  unreachable

156:                                              ; preds = %149
  %157 = load i32, ptr %5, align 4, !tbaa !42
  %158 = call signext i32 @jpeg_quality_scaling(i32 noundef signext %157) #6
  br label %253

159:                                              ; preds = %142
  %160 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.72, i32 noundef signext 2) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  %163 = add nsw i32 %29, 1
  %164 = icmp slt i32 %163, %1
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call fastcc void @usage()
  unreachable

166:                                              ; preds = %162
  %167 = sext i32 %163 to i64
  %168 = getelementptr inbounds ptr, ptr %2, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !15
  br label %253

170:                                              ; preds = %159
  %171 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.73, i32 noundef signext 2) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = add nsw i32 %29, 1
  %175 = icmp slt i32 %174, %1
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call fastcc void @usage()
  unreachable

177:                                              ; preds = %173
  %178 = sext i32 %174 to i64
  %179 = getelementptr inbounds ptr, ptr %2, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !15
  br label %253

181:                                              ; preds = %170
  %182 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.74, i32 noundef signext 1) #6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 120, ptr %9, align 1, !tbaa !19
  %185 = add nsw i32 %29, 1
  %186 = icmp slt i32 %185, %1
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  call fastcc void @usage()
  unreachable

188:                                              ; preds = %184
  %189 = sext i32 %185 to i64
  %190 = getelementptr inbounds ptr, ptr %2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !15
  %192 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %191, ptr noundef nonnull @.str.65, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  call fastcc void @usage()
  unreachable

195:                                              ; preds = %188
  %196 = load i64, ptr %8, align 8
  %197 = icmp ugt i64 %196, 65535
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  call fastcc void @usage()
  unreachable

199:                                              ; preds = %195
  %200 = load i8, ptr %9, align 1
  %201 = and i8 %200, -33
  %202 = icmp eq i8 %201, 66
  %203 = trunc nuw i64 %196 to i32
  br i1 %202, label %204, label %205

204:                                              ; preds = %199
  store i32 %203, ptr %19, align 8, !tbaa !50
  br label %205

205:                                              ; preds = %199, %204
  %206 = phi i32 [ 0, %204 ], [ %203, %199 ]
  store i32 %206, ptr %18, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  br label %253

207:                                              ; preds = %181
  %208 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.75, i32 noundef signext 2) #6
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = add nsw i32 %29, 1
  %212 = icmp slt i32 %211, %1
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call fastcc void @usage()
  unreachable

214:                                              ; preds = %210
  %215 = sext i32 %211 to i64
  %216 = getelementptr inbounds ptr, ptr %2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !15
  br label %253

218:                                              ; preds = %207
  %219 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.76, i32 noundef signext 2) #6
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %218
  %222 = add nsw i32 %29, 1
  %223 = icmp slt i32 %222, %1
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call fastcc void @usage()
  unreachable

225:                                              ; preds = %221
  %226 = sext i32 %222 to i64
  %227 = getelementptr inbounds ptr, ptr %2, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !15
  br label %253

229:                                              ; preds = %218
  %230 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.77, i32 noundef signext 2) #6
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  %233 = add nsw i32 %29, 1
  %234 = icmp slt i32 %233, %1
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  call fastcc void @usage()
  unreachable

236:                                              ; preds = %232
  %237 = sext i32 %233 to i64
  %238 = getelementptr inbounds ptr, ptr %2, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !15
  %240 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %239, ptr noundef nonnull @.str.71, ptr noundef nonnull %10) #6
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  call fastcc void @usage()
  unreachable

243:                                              ; preds = %236
  %244 = load i32, ptr %10, align 4
  %245 = icmp ugt i32 %244, 100
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  call fastcc void @usage()
  unreachable

247:                                              ; preds = %243
  store i32 %244, ptr %20, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  br label %253

248:                                              ; preds = %229
  %249 = call signext i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.78, i32 noundef signext 1) #6
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  store i1 true, ptr @is_targa, align 4
  br label %253

252:                                              ; preds = %248
  call fastcc void @usage()
  unreachable

253:                                              ; preds = %139, %46, %67, %72, %62, %96, %127, %166, %205, %225, %251, %247, %214, %177, %156, %135, %111, %85, %37
  %254 = phi i32 [ %29, %37 ], [ %53, %62 ], [ %53, %67 ], [ %53, %72 ], [ %29, %85 ], [ %29, %96 ], [ %101, %111 ], [ %29, %127 ], [ %132, %135 ], [ %146, %156 ], [ %163, %166 ], [ %174, %177 ], [ %185, %205 ], [ %211, %214 ], [ %222, %225 ], [ %233, %247 ], [ %29, %251 ], [ %29, %46 ], [ %29, %139 ]
  %255 = phi i32 [ %28, %37 ], [ %28, %62 ], [ %28, %67 ], [ %28, %72 ], [ %28, %85 ], [ %28, %96 ], [ %28, %111 ], [ %28, %127 ], [ %28, %135 ], [ %158, %156 ], [ %28, %166 ], [ %28, %177 ], [ %28, %205 ], [ %28, %214 ], [ %28, %225 ], [ %28, %247 ], [ %28, %251 ], [ %28, %46 ], [ %28, %139 ]
  %256 = phi i32 [ %27, %37 ], [ %27, %62 ], [ %27, %67 ], [ %27, %72 ], [ %27, %85 ], [ %27, %96 ], [ %27, %111 ], [ %27, %127 ], [ %27, %135 ], [ %27, %156 ], [ %27, %166 ], [ %27, %177 ], [ %27, %205 ], [ %27, %214 ], [ %27, %225 ], [ %27, %247 ], [ %27, %251 ], [ 1, %46 ], [ %27, %139 ]
  %257 = phi i32 [ %26, %37 ], [ %26, %62 ], [ %26, %67 ], [ %26, %72 ], [ %26, %85 ], [ %26, %96 ], [ %26, %111 ], [ %26, %127 ], [ %26, %135 ], [ %26, %156 ], [ %26, %166 ], [ %26, %177 ], [ %26, %205 ], [ %26, %214 ], [ %26, %225 ], [ %26, %247 ], [ %26, %251 ], [ %26, %46 ], [ 1, %139 ]
  %258 = phi ptr [ %25, %37 ], [ %25, %62 ], [ %25, %67 ], [ %25, %72 ], [ %25, %85 ], [ %25, %96 ], [ %25, %111 ], [ %25, %127 ], [ %25, %135 ], [ %25, %156 ], [ %25, %166 ], [ %180, %177 ], [ %25, %205 ], [ %25, %214 ], [ %25, %225 ], [ %25, %247 ], [ %25, %251 ], [ %25, %46 ], [ %25, %139 ]
  %259 = phi ptr [ %24, %37 ], [ %24, %62 ], [ %24, %67 ], [ %24, %72 ], [ %24, %85 ], [ %24, %96 ], [ %24, %111 ], [ %24, %127 ], [ %24, %135 ], [ %24, %156 ], [ %169, %166 ], [ %24, %177 ], [ %24, %205 ], [ %24, %214 ], [ %24, %225 ], [ %24, %247 ], [ %24, %251 ], [ %24, %46 ], [ %24, %139 ]
  %260 = phi ptr [ %23, %37 ], [ %23, %62 ], [ %23, %67 ], [ %23, %72 ], [ %23, %85 ], [ %23, %96 ], [ %23, %111 ], [ %23, %127 ], [ %23, %135 ], [ %23, %156 ], [ %23, %166 ], [ %23, %177 ], [ %23, %205 ], [ %217, %214 ], [ %23, %225 ], [ %23, %247 ], [ %23, %251 ], [ %23, %46 ], [ %23, %139 ]
  %261 = phi ptr [ %22, %37 ], [ %22, %62 ], [ %22, %67 ], [ %22, %72 ], [ %22, %85 ], [ %22, %96 ], [ %22, %111 ], [ %22, %127 ], [ %22, %135 ], [ %22, %156 ], [ %22, %166 ], [ %22, %177 ], [ %22, %205 ], [ %22, %214 ], [ %228, %225 ], [ %22, %247 ], [ %22, %251 ], [ %22, %46 ], [ %22, %139 ]
  %262 = add nsw i32 %254, 1
  %263 = icmp slt i32 %262, %1
  br i1 %263, label %21, label %264

264:                                              ; preds = %35, %253
  %265 = phi i32 [ %262, %253 ], [ %29, %35 ]
  %266 = phi i32 [ %255, %253 ], [ %28, %35 ]
  %267 = phi i32 [ %256, %253 ], [ %27, %35 ]
  %268 = phi i32 [ %257, %253 ], [ %26, %35 ]
  %269 = phi ptr [ %258, %253 ], [ %25, %35 ]
  %270 = phi ptr [ %259, %253 ], [ %24, %35 ]
  %271 = phi ptr [ %260, %253 ], [ %23, %35 ]
  %272 = phi ptr [ %261, %253 ], [ %22, %35 ]
  %273 = icmp eq i32 %268, 0
  br label %274

274:                                              ; preds = %264, %4
  %275 = phi i32 [ 1, %4 ], [ %265, %264 ]
  %276 = phi i32 [ 100, %4 ], [ %266, %264 ]
  %277 = phi i32 [ 0, %4 ], [ %267, %264 ]
  %278 = phi i1 [ true, %4 ], [ %273, %264 ]
  %279 = phi ptr [ null, %4 ], [ %269, %264 ]
  %280 = phi ptr [ null, %4 ], [ %270, %264 ]
  %281 = phi ptr [ null, %4 ], [ %271, %264 ]
  %282 = phi ptr [ null, %4 ], [ %272, %264 ]
  %283 = icmp eq i32 %3, 0
  br i1 %283, label %311, label %284

284:                                              ; preds = %274
  %285 = load i32, ptr %5, align 4, !tbaa !42
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef signext %285, i32 noundef signext %277) #6
  %286 = icmp eq ptr %279, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = call signext i32 @read_quant_tables(ptr noundef nonnull %0, ptr noundef nonnull %279, i32 noundef signext %276, i32 noundef signext %277) #6
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  call fastcc void @usage()
  unreachable

291:                                              ; preds = %287, %284
  %292 = icmp eq ptr %280, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %291
  %294 = call signext i32 @set_quant_slots(ptr noundef nonnull %0, ptr noundef nonnull %280) #6
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call fastcc void @usage()
  unreachable

297:                                              ; preds = %293, %291
  %298 = icmp eq ptr %281, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %297
  %300 = call signext i32 @set_sample_factors(ptr noundef nonnull %0, ptr noundef nonnull %281) #6
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  call fastcc void @usage()
  unreachable

303:                                              ; preds = %299, %297
  br i1 %278, label %305, label %304

304:                                              ; preds = %303
  call void @jpeg_simple_progression(ptr noundef nonnull %0) #6
  br label %305

305:                                              ; preds = %304, %303
  %306 = icmp eq ptr %282, null
  br i1 %306, label %311, label %307

307:                                              ; preds = %305
  %308 = call signext i32 @read_scan_script(ptr noundef nonnull %0, ptr noundef nonnull %282) #6
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  call fastcc void @usage()
  unreachable

311:                                              ; preds = %305, %307, %274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %275
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
define internal fastcc void @usage() unnamed_addr #2 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = load ptr, ptr @progname, align 8, !tbaa !15
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef %2) #7
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 12, i64 1, ptr %4) #9
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 37, i64 1, ptr %6) #9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 68, i64 1, ptr %8) #9
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 45, i64 1, ptr %10) #9
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 77, i64 1, ptr %12) #9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !15
  %15 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 46, i64 1, ptr %14) #9
  %16 = load ptr, ptr @stderr, align 8, !tbaa !15
  %17 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 65, i64 1, ptr %16) #9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 29, i64 1, ptr %18) #9
  %20 = load ptr, ptr @stderr, align 8, !tbaa !15
  %21 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #7
  %22 = load ptr, ptr @stderr, align 8, !tbaa !15
  %23 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #7
  %24 = load ptr, ptr @stderr, align 8, !tbaa !15
  %25 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #7
  %26 = load ptr, ptr @stderr, align 8, !tbaa !15
  %27 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 67, i64 1, ptr %26) #9
  %28 = load ptr, ptr @stderr, align 8, !tbaa !15
  %29 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 62, i64 1, ptr %28) #9
  %30 = load ptr, ptr @stderr, align 8, !tbaa !15
  %31 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 51, i64 1, ptr %30) #9
  %32 = load ptr, ptr @stderr, align 8, !tbaa !15
  %33 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 46, i64 1, ptr %32) #9
  %34 = load ptr, ptr @stderr, align 8, !tbaa !15
  %35 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 43, i64 1, ptr %34) #9
  %36 = load ptr, ptr @stderr, align 8, !tbaa !15
  %37 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 22, i64 1, ptr %36) #9
  %38 = load ptr, ptr @stderr, align 8, !tbaa !15
  %39 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 52, i64 1, ptr %38) #9
  %40 = load ptr, ptr @stderr, align 8, !tbaa !15
  %41 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 55, i64 1, ptr %40) #9
  %42 = load ptr, ptr @stderr, align 8, !tbaa !15
  %43 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 55, i64 1, ptr %42) #9
  %44 = load ptr, ptr @stderr, align 8, !tbaa !15
  %45 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 52, i64 1, ptr %44) #9
  %46 = load ptr, ptr @stderr, align 8, !tbaa !15
  %47 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 56, i64 1, ptr %46) #9
  tail call void @exit(i32 noundef signext 1) #8
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #2

declare dso_local ptr @read_stdin() local_unnamed_addr #3

declare dso_local ptr @write_stdout() local_unnamed_addr #3

declare dso_local void @jpeg_default_colorspace(ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_stdio_dest(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_start_compress(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare dso_local signext i32 @keymatch(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @jpeg_set_colorspace(ptr noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare dso_local signext i32 @jpeg_quality_scaling(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @jpeg_set_quality(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @read_quant_tables(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @set_quant_slots(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @set_sample_factors(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_simple_progression(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @read_scan_script(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local ptr @jinit_read_targa(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @ungetc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #4

declare dso_local ptr @jinit_read_bmp(ptr noundef) local_unnamed_addr #3

declare dso_local ptr @jinit_read_gif(ptr noundef) local_unnamed_addr #3

declare dso_local ptr @jinit_read_ppm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!6 = !{i64 445460}
!7 = !{i64 445571}
!8 = !{i64 445688}
!9 = !{i64 445781}
!10 = !{i64 445892}
!11 = !{i64 446001}
!12 = !{i64 446110}
!13 = !{i64 446219}
!14 = !{i64 446328}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!17, !17, i64 0}
!20 = !{!21, !16, i64 0}
!21 = !{!"jpeg_compress_struct", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !22, i64 32, !22, i64 36, !16, i64 40, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !23, i64 64, !22, i64 72, !22, i64 76, !22, i64 80, !16, i64 88, !17, i64 96, !17, i64 128, !17, i64 160, !17, i64 192, !17, i64 208, !17, i64 224, !22, i64 240, !16, i64 248, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !17, i64 292, !17, i64 293, !17, i64 294, !24, i64 296, !24, i64 298, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !22, i64 316, !22, i64 320, !22, i64 324, !17, i64 328, !22, i64 360, !22, i64 364, !22, i64 368, !17, i64 372, !22, i64 412, !22, i64 416, !22, i64 420, !22, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !22, i64 512}
!22 = !{!"int", !17, i64 0}
!23 = !{!"double", !17, i64 0}
!24 = !{!"short", !17, i64 0}
!25 = !{!26, !16, i64 152}
!26 = !{!"jpeg_error_mgr", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !22, i64 40, !17, i64 44, !22, i64 124, !27, i64 128, !16, i64 136, !22, i64 144, !16, i64 152, !22, i64 160, !22, i64 164}
!27 = !{!"long", !17, i64 0}
!28 = !{!26, !22, i64 160}
!29 = !{!26, !22, i64 164}
!30 = !{!21, !22, i64 60}
!31 = !{!26, !22, i64 40}
!32 = !{!26, !16, i64 0}
!33 = !{!34, !16, i64 24}
!34 = !{!"cjpeg_source_struct", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !22, i64 40}
!35 = !{!34, !16, i64 0}
!36 = !{!21, !22, i64 304}
!37 = !{!21, !22, i64 52}
!38 = !{!34, !16, i64 8}
!39 = !{!34, !16, i64 32}
!40 = !{!34, !16, i64 16}
!41 = !{!26, !27, i64 128}
!42 = !{!22, !22, i64 0}
!43 = !{!26, !22, i64 124}
!44 = !{!21, !22, i64 276}
!45 = !{!27, !27, i64 0}
!46 = !{!21, !16, i64 8}
!47 = !{!48, !27, i64 88}
!48 = !{!"jpeg_memory_mgr", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !27, i64 88, !27, i64 96}
!49 = !{!21, !22, i64 264}
!50 = !{!21, !22, i64 280}
!51 = !{!21, !22, i64 284}
!52 = !{!21, !22, i64 272}
