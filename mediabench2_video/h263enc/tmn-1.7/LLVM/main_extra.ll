; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str.1 = private unnamed_addr constant [11 x i8] c"./diff.raw\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"\0ATMN (H.263) coder version 1.7, Copyright (C) 1995, 1996 Telenor R&D.\0A\00", align 1
@.str.3 = private unnamed_addr constant [174 x i8] c"TMN comes with ABSOLUTELY NO WARRANTY; This is free software, and \0Ayou are welcome to redistribute it under certain conditions; \0ASee accompanying COPYING file for details.\0A\0A\00", align 1
@headerlength = dso_local local_unnamed_addr global i32 0, align 4
@advanced = dso_local local_unnamed_addr global i32 0, align 4
@syntax_arith_coding = dso_local local_unnamed_addr global i32 0, align 4
@mv_outside_frame = dso_local local_unnamed_addr global i32 0, align 4
@long_vectors = dso_local local_unnamed_addr global i32 0, align 4
@pb_frames = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"./stream.263\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"./out.raw\00", align 1
@trace = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"QP out of range - clipping it\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Illegal option: %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Encoding format: SQCIF (128x96)\0A\00", align 1
@pels = dso_local local_unnamed_addr global i32 0, align 4
@lines = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Encoding format: QCIF (176x144)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Encoding format: CIF (352x288)\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Encoding format: 4CIF (704x576)\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Encoding format: 16CIF (1408x1152)\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Illegal coding format\0A\00", align 1
@cpels = dso_local local_unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [50 x i8] c"Required input parameter '-i <filename>' missing\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Warning:\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"QP is zero. Bitstream will not be correctly decodable\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"Warning: Reference frame rate should be 25 or 30 fps\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Encoding frame rate  : %.2f\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Encoding frame rate  : variable\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Reference frame rate : %.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Orig. seq. frame rate: %.2f\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@streamfile = dso_local local_unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"Unable to open streamfile\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"trace.intra\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@tf = dso_local local_unnamed_addr global ptr null, align 8
@.str.26 = private unnamed_addr constant [34 x i8] c"Unable to open tracefile (intra)\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Couldn't open outputfile: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Couldn't open diff-file: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Coding...\0A\00", align 1
@arith_used = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [16 x i8] c"Finished INTRA\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Unable to open tracefile (non-intra)\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Warning: frameskip > 256\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"distance too large for B-frame\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Coding PB frames %d and %d... \00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Coding P frame %d... \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Inter QP: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Results for B-frame:\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Results for P-frame:\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"\0A==== TOTAL ====\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"for %d images of %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Frames saved : %d predicted + %d intra\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"--------------\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"SNR for %d B-frames:\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"SNR for %d P-frames:\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Original seq time: %.2f (%.2f) sec\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Mean quantizer   : %.2f\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Encoded frames   : %3d (%3d)\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"Mean frame rate  : %.2f Hz\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Target bit rate  : %.2f kbit/sec\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Obtained bit rate: %.2f (%.2f) kbit/sec\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"============================================\0A\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"cycles: %lu | regsw hits:%d regsw misses:%d \0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Corrected Cycles: %lu\0A\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"lw, %lu\0A ld, %lu\0A li, %lu\0A sw, %lu\0A sd, %lu\0A \00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"Chose PB - bsad %d, psad %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Chose PP  - bsad %d, psad %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"Usage:\09tmn [options] -i <filename> [more options]\0A\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"\09-i <filename> original sequence [required parameter]\0A\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"\09-o <filename> reconstructed frames [%s]\0A\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"\09-B <filename> filename for bitstream [%s]\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"\09-a <n> image to start at [%d]\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"\09-b <n> image to stop at [%d]\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"\09-x <n> coding format [%d]\0A\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c"\09-q <n> (1..31) quantization parameter QP [%d]\0A\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"\09-I <n> (1..31) QP for first frame [%d]\0A\00", align 1
@.str.69 = private unnamed_addr constant [63 x i8] c"\09-r <n> target bitrate in bits/s, default is variable bitrate\0A\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"\09-S <n> frames to skip between each encoded frame [%d]\0A\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"\09-D use unrestricted motion vector mode (annex D) [%s]\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.73 = private unnamed_addr constant [55 x i8] c"\09-E use syntax-based arithmetic coding (annex E) [%s]\0A\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"\09-F use advanced prediction mode (annex F) [%s]\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"\09-G use PB-frames (annex G) [%s]\0A\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"\09-h Prints simple help\0A\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"\09-H Prints advanced help\0A\00", align 1
@.str.78 = private unnamed_addr constant [83 x i8] c"\0A\09Default filenames and other options in square brackets \0A\09are chosen in config.h\0A\00", align 1
@.str.79 = private unnamed_addr constant [60 x i8] c"\09       n=1: SQCIF n=2: QCIF n=3: CIF n=4: 4CIF n=5: 16CIF\0A\00", align 1
@.str.80 = private unnamed_addr constant [60 x i8] c"\09           128x96   176x144  352x288   704x576  1408x1152\0A\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"\09-s <n> (0..15) integer pel search window [%d]\0A\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"\09   -R <f> target frame rate [%.2f]\0A\00", align 1
@.str.83 = private unnamed_addr constant [52 x i8] c"\09-Z <n> reference frame rate (25 or 30 fps) [%.1f]\0A\00", align 1
@.str.84 = private unnamed_addr constant [74 x i8] c"\09-O <n> frames skipped in original compared to reference frame rate [%d]\0A\00", align 1
@.str.85 = private unnamed_addr constant [51 x i8] c"\09-e <n> original sequence has n bytes header [%d]\0A\00", align 1
@.str.86 = private unnamed_addr constant [51 x i8] c"\09-g <n> insert sync after each n GOB (slice) [%d]\0A\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"\09       zero above means no extra syncs inserted\0A\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"\09-w write difference image to file \22%s\22 [%s]\0A\00", align 1
@.str.89 = private unnamed_addr constant [54 x i8] c"\09-m write repeated reconstructed frames to disk [%s]\0A\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"\09-t write trace to tracefile trace.intra/trace [%s]\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"\09   -Q <n> (0..3) BQUANT parameter [%d]\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"# intra   : %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"# inter   : %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"# inter4v : %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"Coeff_Y: %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Coeff_C: %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Vectors: %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"CBPY   : %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"MCBPC  : %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"MODB   : %d\0A\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"CBPB   : %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"COD    : %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"DQUANT : %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"header : %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"==============\0A\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Total  : %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"SNR_Y  : %.2f\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"SNR_Cb : %.2f\0A\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"SNR_Cr : %.2f\0A\00", align 1
@target_framerate = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@str = private unnamed_addr constant [9 x i8] c"handled \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext i32 @get_regsw_hits() local_unnamed_addr #0 {
  ret i32 undef
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext i32 @get_regsw_misses() local_unnamed_addr #0 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local void @clear_regsw_cache() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_cycles() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: nounwind
define dso_local void @set_debug(i32 noundef signext %0) local_unnamed_addr #2 {
  tail call void asm sideeffect "csrw 0x808, $0", "r"(i32 %0) #14, !srcloc !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_li() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_ld() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_lw() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_sd() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @get_sw() local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: noreturn nounwind
define dso_local void @crash_handler(i32 signext %0) #3 {
  tail call void asm sideeffect "csrw 0x808, $0", "r"(i32 0) #14, !srcloc !6
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef signext 1) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @signal(i32 noundef signext 11, ptr noundef nonnull @crash_handler) #14
  tail call void asm sideeffect "csrw 0x808, $0", "r"(i32 1) #14, !srcloc !6
  %4 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16
  %5 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16
  %6 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16
  %7 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  %9 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  %10 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  %11 = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #16
  %12 = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #16
  %13 = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #16
  %14 = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #16
  %15 = load ptr, ptr @stdout, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 70, i64 1, ptr %15)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 173, i64 1, ptr %17)
  store i32 0, ptr @headerlength, align 4, !tbaa !11
  tail call void @init_idctref() #14
  store i32 0, ptr @advanced, align 4, !tbaa !11
  store i32 0, ptr @syntax_arith_coding, align 4, !tbaa !11
  %19 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 0, ptr %19, align 4, !tbaa !13
  store i32 0, ptr @mv_outside_frame, align 4, !tbaa !11
  store i32 0, ptr @long_vectors, align 4, !tbaa !11
  store i32 0, ptr @pb_frames, align 4, !tbaa !11
  %20 = getelementptr inbounds i8, ptr %4, i64 68
  store i32 2, ptr %20, align 4, !tbaa !16
  %21 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 2, ptr %21, align 4, !tbaa !17
  %22 = getelementptr inbounds i8, ptr %4, i64 20
  store float 1.000000e+01, ptr %22, align 4, !tbaa !18
  store i8 0, ptr %11, align 1, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %12, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %13, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false) #14
  store i32 0, ptr @trace, align 4, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 15, ptr %23, align 4, !tbaa !20
  %24 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 0, ptr %24, align 4, !tbaa !21
  %25 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 0, ptr %25, align 4, !tbaa !22
  %26 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %26, align 4, !tbaa !23
  %27 = getelementptr inbounds i8, ptr %4, i64 76
  store float 0.000000e+00, ptr %27, align 4, !tbaa !24
  %28 = icmp sgt i32 %0, 1
  br i1 %28, label %29, label %211

29:                                               ; preds = %2, %192
  %30 = phi i32 [ %204, %192 ], [ 1, %2 ]
  %31 = phi float [ %202, %192 ], [ 3.000000e+01, %2 ]
  %32 = phi i32 [ %201, %192 ], [ 0, %2 ]
  %33 = phi i32 [ %200, %192 ], [ 0, %2 ]
  %34 = phi i32 [ %199, %192 ], [ 10, %2 ]
  %35 = phi i32 [ %198, %192 ], [ 10, %2 ]
  %36 = phi i32 [ %197, %192 ], [ 1, %2 ]
  %37 = phi i32 [ %196, %192 ], [ 3, %2 ]
  %38 = phi i32 [ %195, %192 ], [ 0, %2 ]
  %39 = phi i32 [ %194, %192 ], [ 0, %2 ]
  %40 = phi i32 [ %193, %192 ], [ 0, %2 ]
  %41 = sext i32 %30 to i64
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = load i8, ptr %43, align 1, !tbaa !19
  %45 = icmp eq i8 %44, 45
  br i1 %45, label %46, label %192

46:                                               ; preds = %29
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %47, ptr %42, align 8, !tbaa !7
  %48 = load i8, ptr %47, align 1, !tbaa !19
  switch i8 %48, label %188 [
    i8 97, label %49
    i8 98, label %56
    i8 83, label %63
    i8 79, label %71
    i8 115, label %79
    i8 111, label %86
    i8 101, label %92
    i8 109, label %192
    i8 105, label %99
    i8 113, label %105
    i8 73, label %118
    i8 119, label %131
    i8 66, label %132
    i8 104, label %138
    i8 72, label %139
    i8 116, label %140
    i8 103, label %141
    i8 68, label %148
    i8 69, label %149
    i8 70, label %150
    i8 71, label %151
    i8 81, label %152
    i8 114, label %159
    i8 82, label %166
    i8 90, label %173
    i8 120, label %181
  ]

49:                                               ; preds = %46
  %50 = add nsw i32 %30, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = tail call i64 @strtol(ptr nocapture noundef nonnull %53, ptr noundef null, i32 noundef signext 10) #14
  %55 = trunc i64 %54 to i32
  br label %192

56:                                               ; preds = %46
  %57 = add nsw i32 %30, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = tail call i64 @strtol(ptr nocapture noundef nonnull %60, ptr noundef null, i32 noundef signext 10) #14
  %62 = trunc i64 %61 to i32
  br label %192

63:                                               ; preds = %46
  %64 = add nsw i32 %30, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %1, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = tail call i64 @strtol(ptr nocapture noundef nonnull %67, ptr noundef null, i32 noundef signext 10) #14
  %69 = trunc i64 %68 to i32
  %70 = add nsw i32 %69, 1
  br label %192

71:                                               ; preds = %46
  %72 = add nsw i32 %30, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = tail call i64 @strtol(ptr nocapture noundef nonnull %75, ptr noundef null, i32 noundef signext 10) #14
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %77, 1
  br label %192

79:                                               ; preds = %46
  %80 = add nsw i32 %30, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %1, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = tail call i64 @strtol(ptr nocapture noundef nonnull %83, ptr noundef null, i32 noundef signext 10) #14
  %85 = trunc i64 %84 to i32
  store i32 %85, ptr %23, align 4, !tbaa !20
  br label %192

86:                                               ; preds = %46
  %87 = add nsw i32 %30, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %90) #14
  br label %192

92:                                               ; preds = %46
  %93 = add nsw i32 %30, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %1, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !7
  %97 = tail call i64 @strtol(ptr nocapture noundef nonnull %96, ptr noundef null, i32 noundef signext 10) #14
  %98 = trunc i64 %97 to i32
  store i32 %98, ptr @headerlength, align 4, !tbaa !11
  br label %192

99:                                               ; preds = %46
  %100 = add nsw i32 %30, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  %104 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %103) #14
  br label %192

105:                                              ; preds = %46
  %106 = add nsw i32 %30, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %1, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !7
  %110 = tail call i64 @strtol(ptr nocapture noundef nonnull %109, ptr noundef null, i32 noundef signext 10) #14
  %111 = trunc i64 %110 to i32
  %112 = icmp ugt i32 %111, 31
  br i1 %112, label %113, label %192

113:                                              ; preds = %105
  %114 = load ptr, ptr @stderr, align 8, !tbaa !7
  %115 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr %114) #17
  %116 = tail call i32 @llvm.smax.i32(i32 %111, i32 0)
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 31)
  br label %192

118:                                              ; preds = %46
  %119 = add nsw i32 %30, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %1, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !7
  %123 = tail call i64 @strtol(ptr nocapture noundef nonnull %122, ptr noundef null, i32 noundef signext 10) #14
  %124 = trunc i64 %123 to i32
  %125 = icmp ugt i32 %124, 31
  br i1 %125, label %126, label %192

126:                                              ; preds = %118
  %127 = load ptr, ptr @stderr, align 8, !tbaa !7
  %128 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr %127) #17
  %129 = tail call i32 @llvm.smax.i32(i32 %124, i32 0)
  %130 = tail call i32 @llvm.umin.i32(i32 %129, i32 31)
  br label %192

131:                                              ; preds = %46
  br label %192

132:                                              ; preds = %46
  %133 = add nsw i32 %30, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %1, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !7
  %137 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %136) #14
  br label %192

138:                                              ; preds = %46
  tail call void @Help()
  tail call void @exit(i32 noundef signext 0) #15
  unreachable

139:                                              ; preds = %46
  tail call void @AdvancedHelp()
  tail call void @exit(i32 noundef signext 0) #15
  unreachable

140:                                              ; preds = %46
  store i32 1, ptr @trace, align 4, !tbaa !11
  br label %192

141:                                              ; preds = %46
  %142 = add nsw i32 %30, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %1, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !7
  %146 = tail call i64 @strtol(ptr nocapture noundef nonnull %145, ptr noundef null, i32 noundef signext 10) #14
  %147 = trunc i64 %146 to i32
  store i32 %147, ptr %24, align 4, !tbaa !21
  br label %192

148:                                              ; preds = %46
  store i32 1, ptr %19, align 4, !tbaa !13
  store i32 1, ptr @mv_outside_frame, align 4, !tbaa !11
  store i32 1, ptr @long_vectors, align 4, !tbaa !11
  br label %192

149:                                              ; preds = %46
  store i32 1, ptr @syntax_arith_coding, align 4, !tbaa !11
  br label %192

150:                                              ; preds = %46
  store i32 1, ptr @advanced, align 4, !tbaa !11
  store i32 1, ptr @mv_outside_frame, align 4, !tbaa !11
  br label %192

151:                                              ; preds = %46
  store i32 1, ptr @pb_frames, align 4, !tbaa !11
  br label %192

152:                                              ; preds = %46
  %153 = add nsw i32 %30, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %1, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  %157 = tail call i64 @strtol(ptr nocapture noundef nonnull %156, ptr noundef null, i32 noundef signext 10) #14
  %158 = trunc i64 %157 to i32
  store i32 %158, ptr %20, align 4, !tbaa !16
  br label %192

159:                                              ; preds = %46
  %160 = add nsw i32 %30, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %1, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !7
  %164 = tail call i64 @strtol(ptr nocapture noundef nonnull %163, ptr noundef null, i32 noundef signext 10) #14
  %165 = trunc i64 %164 to i32
  br label %192

166:                                              ; preds = %46
  %167 = add nsw i32 %30, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %1, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !7
  %171 = tail call double @strtod(ptr nocapture noundef nonnull %170, ptr noundef null) #14
  %172 = fptrunc double %171 to float
  store float %172, ptr %22, align 4, !tbaa !18
  br label %192

173:                                              ; preds = %46
  %174 = add nsw i32 %30, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %1, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !7
  %178 = tail call i64 @strtol(ptr nocapture noundef nonnull %177, ptr noundef null, i32 noundef signext 10) #14
  %179 = trunc i64 %178 to i32
  %180 = sitofp i32 %179 to float
  br label %192

181:                                              ; preds = %46
  %182 = add nsw i32 %30, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %1, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !7
  %186 = tail call i64 @strtol(ptr nocapture noundef nonnull %185, ptr noundef null, i32 noundef signext 10) #14
  %187 = trunc i64 %186 to i32
  store i32 %187, ptr %21, align 4, !tbaa !17
  br label %192

188:                                              ; preds = %46
  %189 = zext i8 %48 to i32
  %190 = load ptr, ptr @stderr, align 8, !tbaa !7
  %191 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.7, i32 noundef signext %189) #18
  tail call void @Help()
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

192:                                              ; preds = %46, %29, %126, %118, %113, %105, %181, %173, %166, %159, %152, %151, %150, %149, %148, %141, %140, %132, %131, %99, %92, %86, %79, %71, %63, %56, %49
  %193 = phi i32 [ %40, %181 ], [ %40, %173 ], [ %40, %166 ], [ %40, %159 ], [ %40, %152 ], [ %40, %151 ], [ %40, %150 ], [ %40, %149 ], [ %40, %148 ], [ %40, %141 ], [ %40, %140 ], [ %40, %132 ], [ %40, %131 ], [ %40, %126 ], [ %40, %118 ], [ %40, %113 ], [ %40, %105 ], [ %40, %99 ], [ %40, %92 ], [ %40, %86 ], [ %40, %79 ], [ %40, %71 ], [ %40, %63 ], [ %40, %56 ], [ %55, %49 ], [ %40, %29 ], [ %40, %46 ]
  %194 = phi i32 [ %39, %181 ], [ %39, %173 ], [ %39, %166 ], [ %39, %159 ], [ %39, %152 ], [ %39, %151 ], [ %39, %150 ], [ %39, %149 ], [ %39, %148 ], [ %39, %141 ], [ %39, %140 ], [ %39, %132 ], [ %39, %131 ], [ %39, %126 ], [ %39, %118 ], [ %39, %113 ], [ %39, %105 ], [ %39, %99 ], [ %39, %92 ], [ %39, %86 ], [ %39, %79 ], [ %39, %71 ], [ %39, %63 ], [ %62, %56 ], [ %39, %49 ], [ %39, %29 ], [ %39, %46 ]
  %195 = phi i32 [ %38, %181 ], [ %38, %173 ], [ %38, %166 ], [ %38, %159 ], [ %38, %152 ], [ %38, %151 ], [ %38, %150 ], [ %38, %149 ], [ %38, %148 ], [ %38, %141 ], [ %38, %140 ], [ %38, %132 ], [ 1, %131 ], [ %38, %126 ], [ %38, %118 ], [ %38, %113 ], [ %38, %105 ], [ %38, %99 ], [ %38, %92 ], [ %38, %86 ], [ %38, %79 ], [ %38, %71 ], [ %38, %63 ], [ %38, %56 ], [ %38, %49 ], [ %38, %29 ], [ %38, %46 ]
  %196 = phi i32 [ %37, %181 ], [ %37, %173 ], [ %37, %166 ], [ %37, %159 ], [ %37, %152 ], [ %37, %151 ], [ %37, %150 ], [ %37, %149 ], [ %37, %148 ], [ %37, %141 ], [ %37, %140 ], [ %37, %132 ], [ %37, %131 ], [ %37, %126 ], [ %37, %118 ], [ %37, %113 ], [ %37, %105 ], [ %37, %99 ], [ %37, %92 ], [ %37, %86 ], [ %37, %79 ], [ %37, %71 ], [ %70, %63 ], [ %37, %56 ], [ %37, %49 ], [ %37, %29 ], [ %37, %46 ]
  %197 = phi i32 [ %36, %181 ], [ %36, %173 ], [ %36, %166 ], [ %36, %159 ], [ %36, %152 ], [ %36, %151 ], [ %36, %150 ], [ %36, %149 ], [ %36, %148 ], [ %36, %141 ], [ %36, %140 ], [ %36, %132 ], [ %36, %131 ], [ %36, %126 ], [ %36, %118 ], [ %36, %113 ], [ %36, %105 ], [ %36, %99 ], [ %36, %92 ], [ %36, %86 ], [ %36, %79 ], [ %78, %71 ], [ %36, %63 ], [ %36, %56 ], [ %36, %49 ], [ %36, %29 ], [ %36, %46 ]
  %198 = phi i32 [ %35, %181 ], [ %35, %173 ], [ %35, %166 ], [ %35, %159 ], [ %35, %152 ], [ %35, %151 ], [ %35, %150 ], [ %35, %149 ], [ %35, %148 ], [ %35, %141 ], [ %35, %140 ], [ %35, %132 ], [ %35, %131 ], [ %35, %126 ], [ %35, %118 ], [ %117, %113 ], [ %111, %105 ], [ %35, %99 ], [ %35, %92 ], [ %35, %86 ], [ %35, %79 ], [ %35, %71 ], [ %35, %63 ], [ %35, %56 ], [ %35, %49 ], [ %35, %29 ], [ %35, %46 ]
  %199 = phi i32 [ %34, %181 ], [ %34, %173 ], [ %34, %166 ], [ %34, %159 ], [ %34, %152 ], [ %34, %151 ], [ %34, %150 ], [ %34, %149 ], [ %34, %148 ], [ %34, %141 ], [ %34, %140 ], [ %34, %132 ], [ %34, %131 ], [ %130, %126 ], [ %124, %118 ], [ %34, %113 ], [ %34, %105 ], [ %34, %99 ], [ %34, %92 ], [ %34, %86 ], [ %34, %79 ], [ %34, %71 ], [ %34, %63 ], [ %34, %56 ], [ %34, %49 ], [ %34, %29 ], [ %34, %46 ]
  %200 = phi i32 [ %33, %181 ], [ %33, %173 ], [ %33, %166 ], [ %33, %159 ], [ %33, %152 ], [ %33, %151 ], [ %33, %150 ], [ %33, %149 ], [ %33, %148 ], [ %33, %141 ], [ %33, %140 ], [ %33, %132 ], [ %33, %131 ], [ %33, %126 ], [ %33, %118 ], [ %33, %113 ], [ %33, %105 ], [ %33, %99 ], [ %33, %92 ], [ %33, %86 ], [ %33, %79 ], [ %33, %71 ], [ %33, %63 ], [ %33, %56 ], [ %33, %49 ], [ %33, %29 ], [ 1, %46 ]
  %201 = phi i32 [ %32, %181 ], [ %32, %173 ], [ %32, %166 ], [ %165, %159 ], [ %32, %152 ], [ %32, %151 ], [ %32, %150 ], [ %32, %149 ], [ %32, %148 ], [ %32, %141 ], [ %32, %140 ], [ %32, %132 ], [ %32, %131 ], [ %32, %126 ], [ %32, %118 ], [ %32, %113 ], [ %32, %105 ], [ %32, %99 ], [ %32, %92 ], [ %32, %86 ], [ %32, %79 ], [ %32, %71 ], [ %32, %63 ], [ %32, %56 ], [ %32, %49 ], [ %32, %29 ], [ %32, %46 ]
  %202 = phi float [ %31, %181 ], [ %180, %173 ], [ %31, %166 ], [ %31, %159 ], [ %31, %152 ], [ %31, %151 ], [ %31, %150 ], [ %31, %149 ], [ %31, %148 ], [ %31, %141 ], [ %31, %140 ], [ %31, %132 ], [ %31, %131 ], [ %31, %126 ], [ %31, %118 ], [ %31, %113 ], [ %31, %105 ], [ %31, %99 ], [ %31, %92 ], [ %31, %86 ], [ %31, %79 ], [ %31, %71 ], [ %31, %63 ], [ %31, %56 ], [ %31, %49 ], [ %31, %29 ], [ %31, %46 ]
  %203 = phi i32 [ %182, %181 ], [ %174, %173 ], [ %167, %166 ], [ %160, %159 ], [ %153, %152 ], [ %30, %151 ], [ %30, %150 ], [ %30, %149 ], [ %30, %148 ], [ %142, %141 ], [ %30, %140 ], [ %133, %132 ], [ %30, %131 ], [ %119, %126 ], [ %119, %118 ], [ %106, %113 ], [ %106, %105 ], [ %100, %99 ], [ %93, %92 ], [ %87, %86 ], [ %80, %79 ], [ %72, %71 ], [ %64, %63 ], [ %57, %56 ], [ %50, %49 ], [ %30, %29 ], [ %30, %46 ]
  %204 = add nsw i32 %203, 1
  %205 = icmp slt i32 %204, %0
  br i1 %205, label %29, label %206

206:                                              ; preds = %192
  %207 = load i32, ptr %21, align 4, !tbaa !17
  switch i32 %207, label %233 [
    i32 1, label %208
    i32 2, label %211
    i32 3, label %224
    i32 4, label %227
    i32 5, label %230
  ]

208:                                              ; preds = %206
  %209 = load ptr, ptr @stdout, align 8, !tbaa !7
  %210 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 32, i64 1, ptr %209)
  br label %236

211:                                              ; preds = %2, %206
  %212 = phi float [ %202, %206 ], [ 3.000000e+01, %2 ]
  %213 = phi i32 [ %201, %206 ], [ 0, %2 ]
  %214 = phi i32 [ %200, %206 ], [ 0, %2 ]
  %215 = phi i32 [ %199, %206 ], [ 10, %2 ]
  %216 = phi i32 [ %198, %206 ], [ 10, %2 ]
  %217 = phi i32 [ %197, %206 ], [ 1, %2 ]
  %218 = phi i32 [ %196, %206 ], [ 3, %2 ]
  %219 = phi i32 [ %195, %206 ], [ 0, %2 ]
  %220 = phi i32 [ %194, %206 ], [ 0, %2 ]
  %221 = phi i32 [ %193, %206 ], [ 0, %2 ]
  %222 = load ptr, ptr @stdout, align 8, !tbaa !7
  %223 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 32, i64 1, ptr %222)
  br label %236

224:                                              ; preds = %206
  %225 = load ptr, ptr @stdout, align 8, !tbaa !7
  %226 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 31, i64 1, ptr %225)
  br label %236

227:                                              ; preds = %206
  %228 = load ptr, ptr @stdout, align 8, !tbaa !7
  %229 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %228)
  br label %236

230:                                              ; preds = %206
  %231 = load ptr, ptr @stdout, align 8, !tbaa !7
  %232 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %231)
  br label %236

233:                                              ; preds = %206
  %234 = load ptr, ptr @stderr, align 8, !tbaa !7
  %235 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 22, i64 1, ptr %234) #17
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

236:                                              ; preds = %230, %227, %224, %211, %208
  %237 = phi i32 [ 1408, %230 ], [ 704, %227 ], [ 352, %224 ], [ 176, %211 ], [ 128, %208 ]
  %238 = phi i32 [ 1152, %230 ], [ 576, %227 ], [ 288, %224 ], [ 144, %211 ], [ 96, %208 ]
  %239 = phi float [ %202, %230 ], [ %202, %227 ], [ %202, %224 ], [ %212, %211 ], [ %202, %208 ]
  %240 = phi i32 [ %201, %230 ], [ %201, %227 ], [ %201, %224 ], [ %213, %211 ], [ %201, %208 ]
  %241 = phi i32 [ %200, %230 ], [ %200, %227 ], [ %200, %224 ], [ %214, %211 ], [ %200, %208 ]
  %242 = phi i32 [ %199, %230 ], [ %199, %227 ], [ %199, %224 ], [ %215, %211 ], [ %199, %208 ]
  %243 = phi i32 [ %198, %230 ], [ %198, %227 ], [ %198, %224 ], [ %216, %211 ], [ %198, %208 ]
  %244 = phi i32 [ %197, %230 ], [ %197, %227 ], [ %197, %224 ], [ %217, %211 ], [ %197, %208 ]
  %245 = phi i32 [ %196, %230 ], [ %196, %227 ], [ %196, %224 ], [ %218, %211 ], [ %196, %208 ]
  %246 = phi i32 [ %195, %230 ], [ %195, %227 ], [ %195, %224 ], [ %219, %211 ], [ %195, %208 ]
  %247 = phi i32 [ %194, %230 ], [ %194, %227 ], [ %194, %224 ], [ %220, %211 ], [ %194, %208 ]
  %248 = phi i32 [ %193, %230 ], [ %193, %227 ], [ %193, %224 ], [ %221, %211 ], [ %193, %208 ]
  %249 = phi i32 [ 704, %230 ], [ 352, %227 ], [ 176, %224 ], [ 88, %211 ], [ 64, %208 ]
  store i32 %237, ptr @pels, align 4, !tbaa !11
  store i32 %238, ptr @lines, align 4, !tbaa !11
  store i32 %249, ptr @cpels, align 4, !tbaa !11
  %250 = load i8, ptr %11, align 1, !tbaa !19
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %236
  %253 = load ptr, ptr @stderr, align 8, !tbaa !7
  %254 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 49, i64 1, ptr %253) #17
  tail call void @Help()
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

255:                                              ; preds = %236
  %256 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %240, ptr %256, align 4, !tbaa !25
  %257 = sitofp i32 %244 to float
  %258 = fdiv float %239, %257
  %259 = fptosi float %258 to i32
  %260 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %259, ptr %260, align 4, !tbaa !26
  %261 = sitofp i32 %259 to float
  %262 = fdiv float 1.000000e+00, %261
  tail call void @InitializeRateControl() #14
  %263 = icmp eq i32 %243, 0
  %264 = icmp eq i32 %242, 0
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %255
  %267 = load ptr, ptr @stderr, align 8, !tbaa !7
  %268 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %267) #17
  %269 = load ptr, ptr @stderr, align 8, !tbaa !7
  %270 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 54, i64 1, ptr %269) #17
  br label %271

271:                                              ; preds = %255, %266
  %272 = fpext float %239 to double
  %273 = fcmp une float %239, 2.500000e+01
  %274 = fcmp une float %239, 3.000000e+01
  %275 = and i1 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load ptr, ptr @stderr, align 8, !tbaa !7
  %278 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 53, i64 1, ptr %277) #17
  br label %279

279:                                              ; preds = %276, %271
  %280 = load i32, ptr %256, align 4, !tbaa !25
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = mul nsw i32 %244, %245
  %284 = sitofp i32 %283 to float
  %285 = fdiv float %239, %284
  %286 = load ptr, ptr @stdout, align 8, !tbaa !7
  %287 = fpext float %285 to double
  %288 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.18, double noundef %287) #14
  br label %292

289:                                              ; preds = %279
  %290 = load ptr, ptr @stdout, align 8, !tbaa !7
  %291 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 32, i64 1, ptr %290)
  br label %292

292:                                              ; preds = %289, %282
  %293 = load ptr, ptr @stdout, align 8, !tbaa !7
  %294 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef nonnull @.str.20, double noundef %272) #14
  %295 = load ptr, ptr @stdout, align 8, !tbaa !7
  %296 = fpext float %258 to double
  %297 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef nonnull @.str.21, double noundef %296) #14
  %298 = tail call ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.22)
  store ptr %298, ptr @streamfile, align 8, !tbaa !7
  %299 = icmp eq ptr %12, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %292
  %301 = load ptr, ptr @stderr, align 8, !tbaa !7
  %302 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 26, i64 1, ptr %301) #17
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

303:                                              ; preds = %292
  tail call void @initbits() #14
  %304 = load i32, ptr @trace, align 4, !tbaa !11
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %14, ptr noundef nonnull align 1 dereferenceable(12) @.str.24, i64 12, i1 false) #14
  %307 = tail call ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.25)
  store ptr %307, ptr @tf, align 8, !tbaa !7
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load ptr, ptr @stderr, align 8, !tbaa !7
  %311 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 33, i64 1, ptr %310) #17
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

312:                                              ; preds = %306, %303
  %313 = tail call ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.22)
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load ptr, ptr @stderr, align 8, !tbaa !7
  %317 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.27, ptr noundef %13) #18
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

318:                                              ; preds = %312
  %319 = tail call signext i32 @fclose(ptr noundef nonnull %313)
  %320 = icmp eq i32 %246, 0
  br i1 %320, label %329, label %321

321:                                              ; preds = %318
  %322 = tail call ptr @fopen(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22)
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load ptr, ptr @stderr, align 8, !tbaa !7
  %326 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1) #18
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

327:                                              ; preds = %321
  %328 = tail call signext i32 @fclose(ptr noundef nonnull %322)
  br label %329

329:                                              ; preds = %327, %318
  %330 = load i32, ptr @headerlength, align 4, !tbaa !11
  %331 = tail call ptr @ReadImage(ptr noundef nonnull %11, i32 noundef signext %248, i32 noundef signext %330) #14
  %332 = load ptr, ptr @stderr, align 8, !tbaa !7
  %333 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 10, i64 1, ptr %332) #17
  %334 = tail call ptr @FillImage(ptr noundef %331) #14
  %335 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 0, ptr %335, align 4, !tbaa !27
  %336 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %242, ptr %336, align 4, !tbaa !28
  %337 = tail call ptr @CodeOneIntra(ptr noundef %334, i32 noundef signext %242, ptr noundef %5, ptr noundef nonnull %4) #14
  %338 = load i32, ptr @arith_used, align 4, !tbaa !11
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %329
  %341 = tail call signext i32 @encoder_flush() #14
  %342 = getelementptr inbounds i8, ptr %5, i64 32
  %343 = load i32, ptr %342, align 4, !tbaa !29
  %344 = add nsw i32 %343, %341
  store i32 %344, ptr %342, align 4, !tbaa !29
  store i32 0, ptr @arith_used, align 4, !tbaa !11
  br label %345

345:                                              ; preds = %340, %329
  %346 = tail call signext i32 @alignbits() #14
  %347 = getelementptr inbounds i8, ptr %5, i64 32
  %348 = load i32, ptr %347, align 4, !tbaa !29
  %349 = add nsw i32 %348, %346
  store i32 %349, ptr %347, align 4, !tbaa !29
  %350 = load ptr, ptr @stdout, align 8, !tbaa !7
  %351 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 15, i64 1, ptr %350)
  tail call void @ComputeSNR(ptr noundef %334, ptr noundef %337, ptr noundef %8, i32 noundef signext %246) #14
  tail call void @AddBitsPicture(ptr noundef %5) #14
  %352 = load ptr, ptr @stdout, align 8, !tbaa !7
  %353 = load float, ptr %8, align 4, !tbaa !31
  %354 = fpext float %353 to double
  %355 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.108, double noundef %354) #14
  %356 = load ptr, ptr @stdout, align 8, !tbaa !7
  %357 = getelementptr inbounds i8, ptr %8, i64 8
  %358 = load float, ptr %357, align 4, !tbaa !33
  %359 = fpext float %358 to double
  %360 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.109, double noundef %359) #14
  %361 = load ptr, ptr @stdout, align 8, !tbaa !7
  %362 = getelementptr inbounds i8, ptr %8, i64 4
  %363 = load float, ptr %362, align 4, !tbaa !34
  %364 = fpext float %363 to double
  %365 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %361, ptr noundef nonnull @.str.110, double noundef %364) #14
  %366 = load ptr, ptr @stdout, align 8, !tbaa !7
  %367 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %366)
  tail call void @PrintResult(ptr noundef %5, i32 noundef signext 1, i32 noundef signext 1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(56) %5, i64 56, i1 false)
  tail call void @ZeroBits(ptr noundef %6) #14
  tail call void @ZeroRes(ptr noundef %9) #14
  tail call void @ZeroRes(ptr noundef %10) #14
  %368 = load i32, ptr @trace, align 4, !tbaa !11
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %14, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false) #14
  %371 = load ptr, ptr @tf, align 8, !tbaa !7
  %372 = tail call signext i32 @fclose(ptr noundef %371)
  %373 = tail call ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.25)
  store ptr %373, ptr @tf, align 8, !tbaa !7
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = load ptr, ptr @stderr, align 8, !tbaa !7
  %377 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 37, i64 1, ptr %376) #17
  tail call void @exit(i32 noundef signext -1) #15
  unreachable

378:                                              ; preds = %370, %345
  %379 = getelementptr inbounds i8, ptr %7, i64 40
  %380 = load i32, ptr %379, align 4, !tbaa !35
  %381 = load i32, ptr %256, align 4, !tbaa !25
  %382 = sitofp i32 %381 to float
  %383 = fmul float %262, %382
  %384 = fptosi float %383 to i32
  %385 = sub nsw i32 %380, %384
  %386 = icmp eq i32 %381, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %378
  %388 = icmp slt i32 %385, %384
  br i1 %388, label %402, label %389

389:                                              ; preds = %387, %389
  %390 = phi i32 [ %392, %389 ], [ %385, %387 ]
  %391 = phi i32 [ %393, %389 ], [ 1, %387 ]
  %392 = sub nsw i32 %390, %384
  %393 = add nuw nsw i32 %391, 1
  %394 = icmp slt i32 %392, %384
  br i1 %394, label %395, label %389

395:                                              ; preds = %389, %378
  %396 = phi i32 [ %245, %378 ], [ %393, %389 ]
  %397 = phi i32 [ %385, %378 ], [ %392, %389 ]
  %398 = icmp sgt i32 %396, 256
  br i1 %398, label %399, label %402

399:                                              ; preds = %395
  %400 = load ptr, ptr @stderr, align 8, !tbaa !7
  %401 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 25, i64 1, ptr %400) #17
  br label %402

402:                                              ; preds = %387, %399, %395
  %403 = phi i32 [ %397, %399 ], [ %397, %395 ], [ %385, %387 ]
  %404 = phi i32 [ %396, %399 ], [ %396, %395 ], [ 1, %387 ]
  store i32 1, ptr %335, align 4, !tbaa !27
  store i32 %243, ptr %336, align 4, !tbaa !28
  %405 = load i32, ptr @pb_frames, align 4, !tbaa !11
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %402
  store i32 0, ptr %25, align 4, !tbaa !22
  br label %408

408:                                              ; preds = %407, %402
  %409 = phi i32 [ %245, %407 ], [ 0, %402 ]
  %410 = icmp eq i32 %241, 0
  %411 = select i1 %410, i32 1, i32 %245
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %408, %413
  %414 = phi i32 [ %415, %413 ], [ 0, %408 ]
  tail call void @WriteImage(ptr noundef %337, ptr noundef %13) #14
  %415 = add nuw nsw i32 %414, 1
  %416 = icmp eq i32 %415, %411
  br i1 %416, label %417, label %413

417:                                              ; preds = %413, %408
  %418 = add nsw i32 %404, %248
  %419 = icmp sgt i32 %418, %247
  br i1 %419, label %642, label %420

420:                                              ; preds = %417
  %421 = getelementptr inbounds i8, ptr %4, i64 72
  %422 = icmp eq i32 %240, 0
  %423 = getelementptr inbounds i8, ptr %5, i64 40
  br label %424

424:                                              ; preds = %420, %621
  %425 = phi ptr [ %334, %420 ], [ %488, %621 ]
  %426 = phi ptr [ %337, %420 ], [ %528, %621 ]
  %427 = phi ptr [ null, %420 ], [ %522, %621 ]
  %428 = phi ptr [ null, %420 ], [ %487, %621 ]
  %429 = phi i32 [ %403, %420 ], [ %577, %621 ]
  %430 = phi i32 [ 0, %420 ], [ %486, %621 ]
  %431 = phi i32 [ 0, %420 ], [ %506, %621 ]
  %432 = phi i32 [ 0, %420 ], [ %508, %621 ]
  %433 = phi i32 [ 0, %420 ], [ %509, %621 ]
  %434 = phi i32 [ 1, %420 ], [ %609, %621 ]
  %435 = phi i32 [ %409, %420 ], [ %485, %621 ]
  %436 = phi i32 [ %404, %420 ], [ %576, %621 ]
  %437 = phi i32 [ %245, %420 ], [ %483, %621 ]
  %438 = phi i32 [ %418, %420 ], [ %640, %621 ]
  %439 = load i32, ptr %336, align 4, !tbaa !28
  %440 = icmp eq i32 %430, 0
  br i1 %440, label %441, label %477

441:                                              ; preds = %424
  %442 = load i32, ptr %25, align 4, !tbaa !22
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %457, label %444

444:                                              ; preds = %441
  %445 = mul nsw i32 %436, %244
  store i32 %445, ptr %421, align 4, !tbaa !36
  %446 = icmp sgt i32 %445, 8
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = load ptr, ptr @stdout, align 8, !tbaa !7
  %449 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 31, i64 1, ptr %448)
  br label %450

450:                                              ; preds = %447, %444
  %451 = load i32, ptr @headerlength, align 4, !tbaa !11
  %452 = tail call ptr @ReadImage(ptr noundef nonnull %11, i32 noundef signext %438, i32 noundef signext %451) #14
  %453 = tail call ptr @FillImage(ptr noundef %452) #14
  %454 = add nsw i32 %436, %438
  %455 = icmp sgt i32 %454, %247
  br i1 %455, label %456, label %457

456:                                              ; preds = %450
  store i32 0, ptr %25, align 4, !tbaa !22
  br label %457

457:                                              ; preds = %441, %450, %456
  %458 = phi i32 [ %438, %456 ], [ %454, %450 ], [ %438, %441 ]
  %459 = phi i32 [ %436, %456 ], [ %436, %450 ], [ %437, %441 ]
  %460 = phi i32 [ %436, %456 ], [ %436, %450 ], [ %435, %441 ]
  %461 = phi ptr [ %453, %456 ], [ %453, %450 ], [ %428, %441 ]
  %462 = load i32, ptr @headerlength, align 4, !tbaa !11
  %463 = tail call ptr @ReadImage(ptr noundef nonnull %11, i32 noundef signext %458, i32 noundef signext %462) #14
  %464 = tail call ptr @FillImage(ptr noundef %463) #14
  %465 = load i32, ptr %25, align 4, !tbaa !22
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %481, label %467

467:                                              ; preds = %457
  %468 = load i32, ptr %421, align 4, !tbaa !36
  %469 = icmp sgt i32 %468, 8
  br i1 %469, label %474, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr %23, align 4, !tbaa !20
  %472 = tail call signext i32 @NextTwoPB(ptr noundef %464, ptr noundef %461, ptr noundef %425, i32 noundef signext %459, i32 noundef signext %460, i32 noundef signext %471)
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %470, %467
  store i32 0, ptr %25, align 4, !tbaa !22
  tail call void @FreeImage(ptr noundef %464) #14
  br label %481

475:                                              ; preds = %470
  %476 = add nsw i32 %460, %438
  br label %481

477:                                              ; preds = %424
  %478 = load i32, ptr @headerlength, align 4, !tbaa !11
  %479 = tail call ptr @ReadImage(ptr noundef nonnull %11, i32 noundef signext %438, i32 noundef signext %478) #14
  %480 = tail call ptr @FillImage(ptr noundef %479) #14
  store i32 0, ptr %25, align 4, !tbaa !22
  br label %481

481:                                              ; preds = %457, %475, %474, %477
  %482 = phi i32 [ %438, %477 ], [ %438, %474 ], [ %476, %475 ], [ %438, %457 ]
  %483 = phi i32 [ %437, %477 ], [ %459, %474 ], [ %459, %475 ], [ %459, %457 ]
  %484 = phi i32 [ %436, %477 ], [ %459, %474 ], [ %436, %475 ], [ %436, %457 ]
  %485 = phi i32 [ %435, %477 ], [ %460, %474 ], [ %460, %475 ], [ %460, %457 ]
  %486 = phi i32 [ 0, %477 ], [ 1, %474 ], [ 0, %475 ], [ 0, %457 ]
  %487 = phi ptr [ %428, %477 ], [ %461, %474 ], [ %461, %475 ], [ %461, %457 ]
  %488 = phi ptr [ %480, %477 ], [ %461, %474 ], [ %464, %475 ], [ %464, %457 ]
  %489 = load i32, ptr %25, align 4, !tbaa !22
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, i32 0, i32 %485
  %492 = add nsw i32 %491, %484
  %493 = mul nsw i32 %492, %244
  %494 = srem i32 %493, 256
  %495 = load i32, ptr %26, align 4, !tbaa !23
  %496 = add nsw i32 %494, %495
  store i32 %496, ptr %26, align 4, !tbaa !23
  %497 = icmp sgt i32 %492, 256
  br i1 %497, label %498, label %502

498:                                              ; preds = %481
  %499 = load ptr, ptr @stdout, align 8, !tbaa !7
  %500 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 25, i64 1, ptr %499)
  %501 = load i32, ptr %25, align 4, !tbaa !22
  br label %502

502:                                              ; preds = %498, %481
  %503 = phi i32 [ %501, %498 ], [ %489, %481 ]
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, i32 2, i32 1
  %506 = add nuw nsw i32 %505, %431
  %507 = zext i1 %504 to i32
  %508 = add nuw nsw i32 %432, %507
  %509 = add nuw nsw i32 %433, 1
  br i1 %504, label %510, label %518

510:                                              ; preds = %502
  %511 = load i32, ptr @pels, align 4, !tbaa !11
  %512 = load i32, ptr @lines, align 4, !tbaa !11
  %513 = mul nsw i32 %512, %511
  %514 = tail call ptr @InitImage(i32 noundef signext %513) #14
  %515 = load ptr, ptr @stdout, align 8, !tbaa !7
  %516 = sub nsw i32 %482, %485
  %517 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %515, ptr noundef nonnull @.str.35, i32 noundef signext %516, i32 noundef signext %482) #14
  br label %521

518:                                              ; preds = %502
  %519 = load ptr, ptr @stdout, align 8, !tbaa !7
  %520 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %519, ptr noundef nonnull @.str.36, i32 noundef signext %482) #14
  br label %521

521:                                              ; preds = %518, %510
  %522 = phi ptr [ %514, %510 ], [ %427, %518 ]
  %523 = load ptr, ptr @stdout, align 8, !tbaa !7
  %524 = tail call signext i32 @fflush(ptr noundef %523)
  %525 = load i32, ptr @pels, align 4, !tbaa !11
  %526 = load i32, ptr @lines, align 4, !tbaa !11
  %527 = mul nsw i32 %526, %525
  %528 = tail call ptr @InitImage(i32 noundef signext %527) #14
  %529 = add nsw i32 %485, %483
  %530 = mul nsw i32 %529, %244
  tail call void @CodeOneOrTwo(ptr noundef %488, ptr noundef %487, ptr noundef %425, ptr noundef %426, i32 noundef signext %439, i32 noundef signext %530, ptr noundef %5, ptr noundef nonnull %4, ptr noundef %522, ptr noundef %528) #14
  %531 = load ptr, ptr @stdout, align 8, !tbaa !7
  %532 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 5, i64 1, ptr %531)
  br i1 %422, label %536, label %533

533:                                              ; preds = %521
  %534 = load ptr, ptr @stdout, align 8, !tbaa !7
  %535 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %534, ptr noundef nonnull @.str.38, i32 noundef signext %439) #14
  br label %536

536:                                              ; preds = %533, %521
  %537 = load ptr, ptr @stdout, align 8, !tbaa !7
  %538 = tail call signext i32 @fflush(ptr noundef %537)
  %539 = load i32, ptr @arith_used, align 4, !tbaa !11
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %536
  %542 = tail call signext i32 @encoder_flush() #14
  %543 = load i32, ptr %347, align 4, !tbaa !29
  %544 = add nsw i32 %543, %542
  store i32 %544, ptr %347, align 4, !tbaa !29
  store i32 0, ptr @arith_used, align 4, !tbaa !11
  br label %545

545:                                              ; preds = %541, %536
  %546 = tail call signext i32 @alignbits() #14
  %547 = load i32, ptr %347, align 4, !tbaa !29
  %548 = add nsw i32 %547, %546
  store i32 %548, ptr %347, align 4, !tbaa !29
  tail call void @AddBitsPicture(ptr noundef %5) #14
  tail call void @AddBits(ptr noundef %6, ptr noundef %5) #14
  %549 = load i32, ptr %256, align 4, !tbaa !25
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %575, label %551

551:                                              ; preds = %545
  %552 = load i32, ptr %25, align 4, !tbaa !22
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %560, label %554

554:                                              ; preds = %551
  %555 = sitofp i32 %549 to float
  %556 = fmul float %262, %555
  %557 = fptosi float %556 to i32
  %558 = mul nsw i32 %485, %557
  %559 = sub nsw i32 %429, %558
  br label %560

560:                                              ; preds = %554, %551
  %561 = phi i32 [ %429, %551 ], [ %559, %554 ]
  %562 = load i32, ptr %423, align 4, !tbaa !35
  tail call void @UpdateRateControl(i32 noundef signext %562) #14
  %563 = load i32, ptr %423, align 4, !tbaa !35
  %564 = add nsw i32 %563, %561
  %565 = load i32, ptr %256, align 4, !tbaa !25
  %566 = sitofp i32 %565 to float
  %567 = fmul float %262, %566
  %568 = fptosi float %567 to i32
  br label %569

569:                                              ; preds = %569, %560
  %570 = phi i32 [ 1, %560 ], [ %574, %569 ]
  %571 = phi i32 [ %564, %560 ], [ %572, %569 ]
  %572 = sub nsw i32 %571, %568
  %573 = icmp slt i32 %572, %568
  %574 = add nuw nsw i32 %570, 1
  br i1 %573, label %575, label %569

575:                                              ; preds = %569, %545
  %576 = phi i32 [ %484, %545 ], [ %570, %569 ]
  %577 = phi i32 [ %429, %545 ], [ %572, %569 ]
  %578 = load i32, ptr %25, align 4, !tbaa !22
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %604, label %580

580:                                              ; preds = %575
  %581 = select i1 %410, i32 %434, i32 %485
  %582 = icmp sgt i32 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %580, %583
  %584 = phi i32 [ %585, %583 ], [ 0, %580 ]
  tail call void @WriteImage(ptr noundef %522, ptr noundef %13) #14
  %585 = add nuw nsw i32 %584, 1
  %586 = icmp eq i32 %585, %581
  br i1 %586, label %587, label %583

587:                                              ; preds = %583, %580
  tail call void @ComputeSNR(ptr noundef %487, ptr noundef %522, ptr noundef nonnull %8, i32 noundef signext %246) #14
  %588 = load ptr, ptr @stdout, align 8, !tbaa !7
  %589 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %588)
  tail call void @AddRes(ptr noundef %10, ptr noundef nonnull %8, ptr noundef %4) #14
  %590 = load ptr, ptr @stdout, align 8, !tbaa !7
  %591 = load float, ptr %8, align 4, !tbaa !31
  %592 = fpext float %591 to double
  %593 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %590, ptr noundef nonnull @.str.108, double noundef %592) #14
  %594 = load ptr, ptr @stdout, align 8, !tbaa !7
  %595 = load float, ptr %357, align 4, !tbaa !33
  %596 = fpext float %595 to double
  %597 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %594, ptr noundef nonnull @.str.109, double noundef %596) #14
  %598 = load ptr, ptr @stdout, align 8, !tbaa !7
  %599 = load float, ptr %362, align 4, !tbaa !34
  %600 = fpext float %599 to double
  %601 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %598, ptr noundef nonnull @.str.110, double noundef %600) #14
  %602 = load ptr, ptr @stdout, align 8, !tbaa !7
  %603 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %602)
  tail call void @FreeImage(ptr noundef %487) #14
  tail call void @FreeImage(ptr noundef %522) #14
  br label %604

604:                                              ; preds = %587, %575
  %605 = phi i32 [ %581, %587 ], [ %434, %575 ]
  %606 = load i32, ptr @pb_frames, align 4
  %607 = icmp eq i32 %606, 0
  %608 = select i1 %607, i32 %576, i32 %483
  %609 = select i1 %410, i32 %605, i32 %608
  %610 = icmp sgt i32 %609, 0
  br i1 %610, label %611, label %617

611:                                              ; preds = %604, %611
  %612 = phi i32 [ %613, %611 ], [ 0, %604 ]
  tail call void @WriteImage(ptr noundef %528, ptr noundef %13) #14
  %613 = add nuw nsw i32 %612, 1
  %614 = icmp eq i32 %613, %609
  br i1 %614, label %615, label %611

615:                                              ; preds = %611
  %616 = load i32, ptr @pb_frames, align 4, !tbaa !11
  br label %617

617:                                              ; preds = %615, %604
  %618 = phi i32 [ %616, %615 ], [ %606, %604 ]
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %621, label %620

620:                                              ; preds = %617
  store i32 1, ptr %25, align 4, !tbaa !22
  br label %621

621:                                              ; preds = %620, %617
  tail call void @ComputeSNR(ptr noundef %488, ptr noundef %528, ptr noundef nonnull %8, i32 noundef signext %246) #14
  %622 = load ptr, ptr @stdout, align 8, !tbaa !7
  %623 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 21, i64 1, ptr %622)
  tail call void @AddRes(ptr noundef %9, ptr noundef nonnull %8, ptr noundef %4) #14
  %624 = load ptr, ptr @stdout, align 8, !tbaa !7
  %625 = load float, ptr %8, align 4, !tbaa !31
  %626 = fpext float %625 to double
  %627 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %624, ptr noundef nonnull @.str.108, double noundef %626) #14
  %628 = load ptr, ptr @stdout, align 8, !tbaa !7
  %629 = load float, ptr %357, align 4, !tbaa !33
  %630 = fpext float %629 to double
  %631 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %628, ptr noundef nonnull @.str.109, double noundef %630) #14
  %632 = load ptr, ptr @stdout, align 8, !tbaa !7
  %633 = load float, ptr %362, align 4, !tbaa !34
  %634 = fpext float %633 to double
  %635 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %632, ptr noundef nonnull @.str.110, double noundef %634) #14
  %636 = load ptr, ptr @stdout, align 8, !tbaa !7
  %637 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %636)
  tail call void @PrintResult(ptr noundef %5, i32 noundef signext 1, i32 noundef signext 1)
  tail call void @FreeImage(ptr noundef %425) #14
  tail call void @FreeImage(ptr noundef %426) #14
  %638 = load ptr, ptr @stdout, align 8, !tbaa !7
  %639 = tail call signext i32 @fflush(ptr noundef %638)
  %640 = add nsw i32 %576, %482
  %641 = icmp sgt i32 %640, %247
  br i1 %641, label %642, label %424

642:                                              ; preds = %621, %417
  %643 = phi i32 [ %418, %417 ], [ %640, %621 ]
  %644 = phi i32 [ 0, %417 ], [ %509, %621 ]
  %645 = phi i32 [ 0, %417 ], [ %508, %621 ]
  %646 = phi i32 [ 0, %417 ], [ %506, %621 ]
  %647 = phi ptr [ %337, %417 ], [ %528, %621 ]
  %648 = phi ptr [ %334, %417 ], [ %488, %621 ]
  %649 = load ptr, ptr @streamfile, align 8, !tbaa !7
  %650 = tail call signext i32 @fclose(ptr noundef %649)
  %651 = load i32, ptr @trace, align 4, !tbaa !11
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %656, label %653

653:                                              ; preds = %642
  %654 = load ptr, ptr @tf, align 8, !tbaa !7
  %655 = tail call signext i32 @fclose(ptr noundef %654)
  br label %656

656:                                              ; preds = %653, %642
  %657 = sub nsw i32 %643, %248
  %658 = sub nsw i32 %657, %404
  %659 = load ptr, ptr @stdout, align 8, !tbaa !7
  %660 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 17, i64 1, ptr %659)
  %661 = load ptr, ptr @stdout, align 8, !tbaa !7
  %662 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %661, ptr noundef nonnull @.str.42, i32 noundef signext %646, ptr noundef nonnull %11) #14
  %663 = icmp eq i32 %646, 0
  br i1 %663, label %782, label %664

664:                                              ; preds = %656
  br i1 %410, label %668, label %665

665:                                              ; preds = %664
  %666 = load ptr, ptr @stdout, align 8, !tbaa !7
  %667 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %666, ptr noundef nonnull @.str.43, i32 noundef signext %658, i32 noundef signext %245) #14
  br label %668

668:                                              ; preds = %665, %664
  %669 = load ptr, ptr @stdout, align 8, !tbaa !7
  %670 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %669)
  %671 = load i32, ptr @pb_frames, align 4, !tbaa !11
  %672 = icmp ne i32 %671, 0
  %673 = icmp ne i32 %645, 0
  %674 = select i1 %672, i1 %673, i1 false
  br i1 %674, label %675, label %698

675:                                              ; preds = %668
  %676 = load ptr, ptr @stdout, align 8, !tbaa !7
  %677 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %676, ptr noundef nonnull @.str.45, i32 noundef signext %645) #14
  %678 = load ptr, ptr @stdout, align 8, !tbaa !7
  %679 = load float, ptr %10, align 4, !tbaa !31
  %680 = uitofp nneg i32 %645 to float
  %681 = fdiv float %679, %680
  %682 = fpext float %681 to double
  %683 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %678, ptr noundef nonnull @.str.108, double noundef %682) #14
  %684 = load ptr, ptr @stdout, align 8, !tbaa !7
  %685 = getelementptr inbounds i8, ptr %10, i64 8
  %686 = load float, ptr %685, align 4, !tbaa !33
  %687 = fdiv float %686, %680
  %688 = fpext float %687 to double
  %689 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %684, ptr noundef nonnull @.str.109, double noundef %688) #14
  %690 = load ptr, ptr @stdout, align 8, !tbaa !7
  %691 = getelementptr inbounds i8, ptr %10, i64 4
  %692 = load float, ptr %691, align 4, !tbaa !34
  %693 = fdiv float %692, %680
  %694 = fpext float %693 to double
  %695 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %690, ptr noundef nonnull @.str.110, double noundef %694) #14
  %696 = load ptr, ptr @stdout, align 8, !tbaa !7
  %697 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %696)
  br label %698

698:                                              ; preds = %675, %668
  %699 = load ptr, ptr @stdout, align 8, !tbaa !7
  %700 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %699, ptr noundef nonnull @.str.46, i32 noundef signext %644) #14
  %701 = load ptr, ptr @stdout, align 8, !tbaa !7
  %702 = load float, ptr %9, align 4, !tbaa !31
  %703 = uitofp nneg i32 %644 to float
  %704 = fdiv float %702, %703
  %705 = fpext float %704 to double
  %706 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %701, ptr noundef nonnull @.str.108, double noundef %705) #14
  %707 = load ptr, ptr @stdout, align 8, !tbaa !7
  %708 = getelementptr inbounds i8, ptr %9, i64 8
  %709 = load float, ptr %708, align 4, !tbaa !33
  %710 = fdiv float %709, %703
  %711 = fpext float %710 to double
  %712 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %707, ptr noundef nonnull @.str.109, double noundef %711) #14
  %713 = load ptr, ptr @stdout, align 8, !tbaa !7
  %714 = getelementptr inbounds i8, ptr %9, i64 4
  %715 = load float, ptr %714, align 4, !tbaa !34
  %716 = fdiv float %715, %703
  %717 = fpext float %716 to double
  %718 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %713, ptr noundef nonnull @.str.110, double noundef %717) #14
  %719 = load ptr, ptr @stdout, align 8, !tbaa !7
  %720 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %719)
  tail call void @PrintResult(ptr noundef %6, i32 noundef signext %644, i32 noundef signext %646)
  %721 = icmp eq i32 %240, 0
  br i1 %721, label %722, label %727

722:                                              ; preds = %698
  %723 = load i32, ptr %256, align 4, !tbaa !25
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %727

725:                                              ; preds = %722
  %726 = sitofp i32 %658 to float
  br label %738

727:                                              ; preds = %722, %698
  %728 = load ptr, ptr @stdout, align 8, !tbaa !7
  %729 = sitofp i32 %657 to float
  %730 = fdiv float %729, %239
  %731 = fmul float %730, %257
  %732 = fpext float %731 to double
  %733 = sitofp i32 %658 to float
  %734 = fdiv float %733, %239
  %735 = fmul float %734, %257
  %736 = fpext float %735 to double
  %737 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %728, ptr noundef nonnull @.str.47, double noundef %732, double noundef %736) #14
  br label %738

738:                                              ; preds = %725, %727
  %739 = phi float [ %726, %725 ], [ %733, %727 ]
  %740 = load ptr, ptr @stdout, align 8, !tbaa !7
  %741 = getelementptr inbounds i8, ptr %9, i64 12
  %742 = load float, ptr %741, align 4, !tbaa !37
  %743 = fdiv float %742, %703
  %744 = fpext float %743 to double
  %745 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %740, ptr noundef nonnull @.str.48, double noundef %744) #14
  %746 = load ptr, ptr @stdout, align 8, !tbaa !7
  %747 = add nuw nsw i32 %646, 1
  %748 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %746, ptr noundef nonnull @.str.49, i32 noundef signext %747, i32 noundef signext %646) #14
  %749 = uitofp nneg i32 %646 to float
  %750 = fdiv float %749, %739
  %751 = fmul float %239, %750
  %752 = fdiv float %751, %257
  %753 = load ptr, ptr @stdout, align 8, !tbaa !7
  %754 = fpext float %752 to double
  %755 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %753, ptr noundef nonnull @.str.50, double noundef %754) #14
  br i1 %721, label %761, label %756

756:                                              ; preds = %738
  %757 = load ptr, ptr @stdout, align 8, !tbaa !7
  %758 = sitofp i32 %240 to double
  %759 = fdiv double %758, 1.000000e+03
  %760 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %757, ptr noundef nonnull @.str.51, double noundef %759) #14
  br label %761

761:                                              ; preds = %756, %738
  %762 = load ptr, ptr @stdout, align 8, !tbaa !7
  %763 = getelementptr inbounds i8, ptr %6, i64 40
  %764 = load i32, ptr %763, align 4, !tbaa !35
  %765 = load i32, ptr %379, align 4, !tbaa !35
  %766 = add nsw i32 %765, %764
  %767 = sitofp i32 %766 to float
  %768 = sitofp i32 %657 to float
  %769 = fdiv float %768, %239
  %770 = fmul float %769, %257
  %771 = fdiv float %767, %770
  %772 = fpext float %771 to double
  %773 = fdiv double %772, 1.000000e+03
  %774 = sitofp i32 %764 to float
  %775 = fdiv float %774, %749
  %776 = fmul float %752, %775
  %777 = fpext float %776 to double
  %778 = fdiv double %777, 1.000000e+03
  %779 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %762, ptr noundef nonnull @.str.52, double noundef %773, double noundef %778) #14
  %780 = load ptr, ptr @stdout, align 8, !tbaa !7
  %781 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 45, i64 1, ptr %780)
  br label %782

782:                                              ; preds = %761, %656
  %783 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i64 noundef 0, i32 noundef signext undef, i32 noundef signext undef)
  %784 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef 0)
  %785 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call void @FreeImage(ptr noundef %647) #14
  tail call void @FreeImage(ptr noundef %648) #14
  tail call void @free(ptr noundef %12) #14
  tail call void @free(ptr noundef %11) #14
  tail call void @free(ptr noundef %13) #14
  tail call void @free(ptr noundef %14) #14
  tail call void @free(ptr noundef %5) #14
  tail call void @free(ptr noundef %6) #14
  tail call void @free(ptr noundef %7) #14
  tail call void @free(ptr noundef %8) #14
  tail call void @free(ptr noundef %9) #14
  tail call void @free(ptr noundef %10) #14
  tail call void @free(ptr noundef %4) #14
  tail call void @exit(i32 noundef signext 0) #15
  unreachable
}

; Function Attrs: nounwind
declare dso_local ptr @signal(i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare dso_local void @init_idctref() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

declare dso_local void @InitializeRateControl(...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

declare dso_local void @initbits(...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local ptr @ReadImage(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #6

declare dso_local ptr @FillImage(ptr noundef) local_unnamed_addr #6

declare dso_local ptr @CodeOneIntra(ptr noundef, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #6

declare dso_local signext i32 @encoder_flush(...) local_unnamed_addr #6

declare dso_local signext i32 @alignbits(...) local_unnamed_addr #6

declare dso_local void @ComputeSNR(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #6

declare dso_local void @AddBitsPicture(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
define dso_local void @PrintSNR(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = load float, ptr %0, align 4, !tbaa !31
  %5 = sitofp i32 %1 to float
  %6 = fdiv float %4, %5
  %7 = fpext float %6 to double
  %8 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.108, double noundef %7) #14
  %9 = load ptr, ptr @stdout, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = load float, ptr %10, align 4, !tbaa !33
  %12 = fdiv float %11, %5
  %13 = fpext float %12 to double
  %14 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.109, double noundef %13) #14
  %15 = load ptr, ptr @stdout, align 8, !tbaa !7
  %16 = getelementptr inbounds i8, ptr %0, i64 4
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fdiv float %17, %5
  %19 = fpext float %18 to double
  %20 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.110, double noundef %19) #14
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %21)
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @PrintResult(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr @stdout, align 8, !tbaa !7
  %5 = getelementptr inbounds i8, ptr %0, i64 52
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = sdiv i32 %6, %1
  %8 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.92, i32 noundef signext %7) #14
  %9 = load ptr, ptr @stdout, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %0, i64 44
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = sdiv i32 %11, %1
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef signext %12) #14
  %14 = load ptr, ptr @stdout, align 8, !tbaa !7
  %15 = getelementptr inbounds i8, ptr %0, i64 48
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = sdiv i32 %16, %1
  %18 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.94, i32 noundef signext %17) #14
  %19 = load ptr, ptr @stdout, align 8, !tbaa !7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 15, i64 1, ptr %19)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  %22 = load i32, ptr %0, align 4, !tbaa !41
  %23 = sdiv i32 %22, %2
  %24 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.95, i32 noundef signext %23) #14
  %25 = load ptr, ptr @stdout, align 8, !tbaa !7
  %26 = getelementptr inbounds i8, ptr %0, i64 4
  %27 = load i32, ptr %26, align 4, !tbaa !42
  %28 = sdiv i32 %27, %2
  %29 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.96, i32 noundef signext %28) #14
  %30 = load ptr, ptr @stdout, align 8, !tbaa !7
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  %32 = load i32, ptr %31, align 4, !tbaa !43
  %33 = sdiv i32 %32, %2
  %34 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.97, i32 noundef signext %33) #14
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, ptr %0, i64 12
  %37 = load i32, ptr %36, align 4, !tbaa !44
  %38 = sdiv i32 %37, %2
  %39 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.98, i32 noundef signext %38) #14
  %40 = load ptr, ptr @stdout, align 8, !tbaa !7
  %41 = getelementptr inbounds i8, ptr %0, i64 16
  %42 = load i32, ptr %41, align 4, !tbaa !45
  %43 = sdiv i32 %42, %2
  %44 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.99, i32 noundef signext %43) #14
  %45 = load ptr, ptr @stdout, align 8, !tbaa !7
  %46 = getelementptr inbounds i8, ptr %0, i64 20
  %47 = load i32, ptr %46, align 4, !tbaa !46
  %48 = sdiv i32 %47, %2
  %49 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.100, i32 noundef signext %48) #14
  %50 = load ptr, ptr @stdout, align 8, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %0, i64 24
  %52 = load i32, ptr %51, align 4, !tbaa !47
  %53 = sdiv i32 %52, %2
  %54 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.101, i32 noundef signext %53) #14
  %55 = load ptr, ptr @stdout, align 8, !tbaa !7
  %56 = getelementptr inbounds i8, ptr %0, i64 28
  %57 = load i32, ptr %56, align 4, !tbaa !48
  %58 = sdiv i32 %57, %2
  %59 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.102, i32 noundef signext %58) #14
  %60 = load ptr, ptr @stdout, align 8, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %0, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !49
  %63 = sdiv i32 %62, %2
  %64 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.103, i32 noundef signext %63) #14
  %65 = load ptr, ptr @stdout, align 8, !tbaa !7
  %66 = getelementptr inbounds i8, ptr %0, i64 32
  %67 = load i32, ptr %66, align 4, !tbaa !29
  %68 = sdiv i32 %67, %2
  %69 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.104, i32 noundef signext %68) #14
  %70 = load ptr, ptr @stdout, align 8, !tbaa !7
  %71 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 15, i64 1, ptr %70)
  %72 = load ptr, ptr @stdout, align 8, !tbaa !7
  %73 = getelementptr inbounds i8, ptr %0, i64 40
  %74 = load i32, ptr %73, align 4, !tbaa !35
  %75 = sdiv i32 %74, %2
  %76 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.106, i32 noundef signext %75) #14
  %77 = load ptr, ptr @stdout, align 8, !tbaa !7
  %78 = tail call i32 @fputc(i32 10, ptr %77)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local void @ZeroBits(ptr noundef) local_unnamed_addr #6

declare dso_local void @ZeroRes(ptr noundef) local_unnamed_addr #6

declare dso_local void @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @NextTwoPB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #2 {
  %7 = alloca [6 x [73 x [90 x ptr]]], align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 315360, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %9 = load i32, ptr @advanced, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store i32 0, ptr @advanced, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  %14 = load i32, ptr @mv_outside_frame, align 4, !tbaa !11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, ptr @mv_outside_frame, align 4, !tbaa !11
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 1, %16 ], [ 0, %12 ]
  %19 = load i32, ptr @long_vectors, align 4, !tbaa !11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, ptr @long_vectors, align 4, !tbaa !11
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ 1, %21 ], [ 0, %17 ]
  %24 = load i32, ptr @lines, align 4, !tbaa !11
  %25 = ashr i32 %24, 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %224, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr @pels, align 4, !tbaa !11
  %29 = ashr i32 %28, 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = add nuw nsw i32 %29, 1
  %33 = add nuw nsw i32 %25, 1
  %34 = zext nneg i32 %33 to i64
  %35 = zext nneg i32 %32 to i64
  br label %36

36:                                               ; preds = %31, %56
  %37 = phi i64 [ 1, %31 ], [ %57, %56 ]
  br label %46

38:                                               ; preds = %56, %27
  %39 = icmp sgt i32 %24, 47
  br i1 %39, label %40, label %73

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %7, i64 105120
  %42 = getelementptr inbounds i8, ptr %7, i64 52560
  %43 = add nsw i32 %4, %3
  %44 = sub nsw i32 0, %4
  %45 = load i32, ptr @pels, align 4, !tbaa !11
  br label %59

46:                                               ; preds = %36, %46
  %47 = phi i64 [ 1, %36 ], [ %54, %46 ]
  %48 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #19
  %49 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 0, i64 %37, i64 %47
  store ptr %48, ptr %49, align 8, !tbaa !7
  %50 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #19
  %51 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 1, i64 %37, i64 %47
  store ptr %50, ptr %51, align 8, !tbaa !7
  %52 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #19
  %53 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 2, i64 %37, i64 %47
  store ptr %52, ptr %53, align 8, !tbaa !7
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %35
  br i1 %55, label %56, label %46

56:                                               ; preds = %46
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %34
  br i1 %58, label %38, label %36

59:                                               ; preds = %40, %186
  %60 = phi i32 [ %24, %40 ], [ %188, %186 ]
  %61 = phi i32 [ %45, %40 ], [ %189, %186 ]
  %62 = phi i64 [ 1, %40 ], [ %187, %186 ]
  %63 = phi i32 [ 0, %40 ], [ %192, %186 ]
  %64 = phi i32 [ 0, %40 ], [ %191, %186 ]
  %65 = phi i32 [ 0, %40 ], [ %190, %186 ]
  %66 = icmp sgt i32 %61, 47
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = add nuw nsw i64 %62, 1
  br label %186

69:                                               ; preds = %59
  %70 = shl nsw i64 %62, 4
  %71 = add nuw nsw i64 %62, 1
  %72 = trunc nuw nsw i64 %70 to i32
  br label %81

73:                                               ; preds = %186, %38
  %74 = phi i32 [ %24, %38 ], [ %188, %186 ]
  %75 = phi i32 [ 0, %38 ], [ %190, %186 ]
  %76 = phi i32 [ 0, %38 ], [ %191, %186 ]
  %77 = phi i32 [ 0, %38 ], [ %192, %186 ]
  %78 = icmp slt i32 %74, 16
  br i1 %78, label %224, label %79

79:                                               ; preds = %73
  %80 = load i32, ptr @pels, align 4, !tbaa !11
  br label %197

81:                                               ; preds = %69, %135
  %82 = phi i64 [ 1, %69 ], [ %90, %135 ]
  %83 = phi i32 [ %63, %69 ], [ %150, %135 ]
  %84 = phi i32 [ %64, %69 ], [ %178, %135 ]
  %85 = phi i32 [ %65, %69 ], [ %154, %135 ]
  %86 = shl nsw i64 %82, 4
  %87 = load ptr, ptr %0, align 8, !tbaa !50
  %88 = load ptr, ptr %2, align 8, !tbaa !50
  %89 = trunc nuw nsw i64 %86 to i32
  call void @MotionEstimation(ptr noundef %87, ptr noundef %88, i32 noundef signext %89, i32 noundef signext %72, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %90 = add nuw nsw i64 %82, 1
  %91 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 0, i64 %71, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !7
  %93 = load i32, ptr %92, align 4, !tbaa !52
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %81
  %96 = getelementptr inbounds i8, ptr %92, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !54
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %92, i64 16
  %101 = load i32, ptr %100, align 4, !tbaa !55
  %102 = add nsw i32 %101, 100
  store i32 %102, ptr %100, align 4, !tbaa !55
  br label %103

103:                                              ; preds = %99, %95, %81
  %104 = getelementptr inbounds [73 x [90 x ptr]], ptr %41, i64 0, i64 %71, i64 %90
  %105 = load ptr, ptr %104, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %105, ptr noundef nonnull align 4 dereferenceable(24) %92, i64 24, i1 false)
  %106 = load ptr, ptr %1, align 8, !tbaa !50
  %107 = load ptr, ptr %2, align 8, !tbaa !50
  call void @MotionEstimation(ptr noundef %106, ptr noundef %107, i32 noundef signext %89, i32 noundef signext %72, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %108 = load ptr, ptr %91, align 8, !tbaa !7
  %109 = load i32, ptr %108, align 4, !tbaa !52
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = getelementptr inbounds i8, ptr %108, i64 4
  %113 = load i32, ptr %112, align 4, !tbaa !54
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %108, i64 16
  %117 = load i32, ptr %116, align 4, !tbaa !55
  %118 = add nsw i32 %117, 100
  store i32 %118, ptr %116, align 4, !tbaa !55
  br label %119

119:                                              ; preds = %115, %111, %103
  %120 = getelementptr inbounds [73 x [90 x ptr]], ptr %42, i64 0, i64 %71, i64 %90
  %121 = load ptr, ptr %120, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %121, ptr noundef nonnull align 4 dereferenceable(24) %108, i64 24, i1 false)
  %122 = load ptr, ptr %0, align 8, !tbaa !50
  %123 = load ptr, ptr %1, align 8, !tbaa !50
  call void @MotionEstimation(ptr noundef %122, ptr noundef %123, i32 noundef signext %89, i32 noundef signext %72, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %124 = load ptr, ptr %91, align 8, !tbaa !7
  %125 = load i32, ptr %124, align 4, !tbaa !52
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = getelementptr inbounds i8, ptr %124, i64 4
  %129 = load i32, ptr %128, align 4, !tbaa !54
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %124, i64 16
  %133 = load i32, ptr %132, align 4, !tbaa !55
  %134 = add nsw i32 %133, 100
  store i32 %134, ptr %132, align 4, !tbaa !55
  br label %135

135:                                              ; preds = %131, %127, %119
  %136 = load ptr, ptr %104, align 8, !tbaa !7
  %137 = load i32, ptr %136, align 4, !tbaa !52
  %138 = mul nsw i32 %137, %3
  %139 = sdiv i32 %138, %43
  %140 = mul nsw i32 %137, %44
  %141 = sdiv i32 %140, %43
  %142 = getelementptr inbounds i8, ptr %136, i64 4
  %143 = load i32, ptr %142, align 4, !tbaa !54
  %144 = mul nsw i32 %143, %3
  %145 = sdiv i32 %144, %43
  %146 = mul nsw i32 %143, %44
  %147 = sdiv i32 %146, %43
  %148 = getelementptr inbounds i8, ptr %124, i64 16
  %149 = load i32, ptr %148, align 4, !tbaa !55
  %150 = add nsw i32 %149, %83
  %151 = load ptr, ptr %120, align 8, !tbaa !7
  %152 = getelementptr inbounds i8, ptr %151, i64 16
  %153 = load i32, ptr %152, align 4, !tbaa !55
  %154 = add nsw i32 %153, %85
  %155 = load ptr, ptr %1, align 8, !tbaa !50
  %156 = getelementptr inbounds i8, ptr %155, i64 %86
  %157 = load i32, ptr @pels, align 4, !tbaa !11
  %158 = sext i32 %157 to i64
  %159 = mul nsw i64 %70, %158
  %160 = getelementptr inbounds i8, ptr %156, i64 %159
  %161 = load ptr, ptr %0, align 8, !tbaa !50
  %162 = getelementptr inbounds i8, ptr %161, i64 %86
  %163 = sext i32 %141 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  %165 = add nsw i32 %147, %72
  %166 = mul nsw i32 %157, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %164, i64 %167
  %169 = load ptr, ptr %2, align 8, !tbaa !50
  %170 = getelementptr inbounds i8, ptr %169, i64 %86
  %171 = sext i32 %139 to i64
  %172 = getelementptr inbounds i8, ptr %170, i64 %171
  %173 = add nsw i32 %145, %72
  %174 = mul nsw i32 %157, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %172, i64 %175
  %177 = call signext i32 @SAD_MB_Bidir(ptr noundef nonnull %160, ptr noundef nonnull %168, ptr noundef nonnull %176, i32 noundef signext %157, i32 noundef signext 2147483647) #14
  %178 = add nsw i32 %177, %84
  %179 = load i32, ptr @pels, align 4, !tbaa !11
  %180 = sdiv i32 %179, 16
  %181 = add nsw i32 %180, -1
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %90, %182
  br i1 %183, label %81, label %184

184:                                              ; preds = %135
  %185 = load i32, ptr @lines, align 4, !tbaa !11
  br label %186

186:                                              ; preds = %67, %184
  %187 = phi i64 [ %68, %67 ], [ %71, %184 ]
  %188 = phi i32 [ %60, %67 ], [ %185, %184 ]
  %189 = phi i32 [ %61, %67 ], [ %179, %184 ]
  %190 = phi i32 [ %65, %67 ], [ %154, %184 ]
  %191 = phi i32 [ %64, %67 ], [ %178, %184 ]
  %192 = phi i32 [ %63, %67 ], [ %150, %184 ]
  %193 = sdiv i32 %188, 16
  %194 = add nsw i32 %193, -1
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %187, %195
  br i1 %196, label %59, label %73

197:                                              ; preds = %79, %217
  %198 = phi i32 [ %74, %79 ], [ %218, %217 ]
  %199 = phi i32 [ %80, %79 ], [ %219, %217 ]
  %200 = phi i64 [ 1, %79 ], [ %220, %217 ]
  %201 = icmp slt i32 %199, 16
  br i1 %201, label %217, label %202

202:                                              ; preds = %197, %202
  %203 = phi i64 [ %210, %202 ], [ 1, %197 ]
  %204 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 0, i64 %200, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !7
  call void @free(ptr noundef %205) #14
  %206 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 1, i64 %200, i64 %203
  %207 = load ptr, ptr %206, align 8, !tbaa !7
  call void @free(ptr noundef %207) #14
  %208 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %7, i64 0, i64 2, i64 %200, i64 %203
  %209 = load ptr, ptr %208, align 8, !tbaa !7
  call void @free(ptr noundef %209) #14
  %210 = add nuw nsw i64 %203, 1
  %211 = load i32, ptr @pels, align 4, !tbaa !11
  %212 = ashr i32 %211, 4
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %203, %213
  br i1 %214, label %202, label %215

215:                                              ; preds = %202
  %216 = load i32, ptr @lines, align 4, !tbaa !11
  br label %217

217:                                              ; preds = %215, %197
  %218 = phi i32 [ %216, %215 ], [ %198, %197 ]
  %219 = phi i32 [ %211, %215 ], [ %199, %197 ]
  %220 = add nuw nsw i64 %200, 1
  %221 = ashr i32 %218, 4
  %222 = sext i32 %221 to i64
  %223 = icmp slt i64 %200, %222
  br i1 %223, label %197, label %224

224:                                              ; preds = %217, %22, %73
  %225 = phi i32 [ %77, %73 ], [ 0, %22 ], [ %77, %217 ]
  %226 = phi i32 [ %76, %73 ], [ 0, %22 ], [ %76, %217 ]
  %227 = phi i32 [ %75, %73 ], [ 0, %22 ], [ %75, %217 ]
  store i32 %13, ptr @advanced, align 4, !tbaa !11
  store i32 %18, ptr @mv_outside_frame, align 4, !tbaa !11
  store i32 %23, ptr @long_vectors, align 4, !tbaa !11
  %228 = add nsw i32 %225, %227
  %229 = sdiv i32 %228, 2
  %230 = icmp slt i32 %226, %229
  %231 = load ptr, ptr @stdout, align 8, !tbaa !7
  %232 = select i1 %230, ptr @.str.57, ptr @.str.58
  %233 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull %232, i32 noundef signext %226, i32 noundef signext %229) #14
  %234 = zext i1 %230 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 315360, ptr nonnull %7) #14
  ret i32 %234
}

declare dso_local void @FreeImage(ptr noundef) local_unnamed_addr #6

declare dso_local ptr @InitImage(i32 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local void @CodeOneOrTwo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare dso_local void @AddBits(ptr noundef, ptr noundef) local_unnamed_addr #6

declare dso_local void @UpdateRateControl(i32 noundef signext) local_unnamed_addr #6

declare dso_local void @AddRes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare dso_local void @MotionEstimation(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #6

declare dso_local signext i32 @SAD_MB_Bidir(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
define dso_local void @Help() local_unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 50, i64 1, ptr %1) #17
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 9, i64 1, ptr %3) #17
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 54, i64 1, ptr %5) #17
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.5) #18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4) #18
  %11 = load ptr, ptr @stderr, align 8, !tbaa !7
  %12 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.64, i32 noundef signext 0) #18
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.65, i32 noundef signext 0) #18
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.66, i32 noundef signext 2) #18
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.67, i32 noundef signext 10) #18
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.68, i32 noundef signext 10) #18
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 62, i64 1, ptr %21) #17
  %23 = load ptr, ptr @stderr, align 8, !tbaa !7
  %24 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.70, i32 noundef signext 2) #18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !7
  %26 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #18
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72) #18
  %29 = load ptr, ptr @stderr, align 8, !tbaa !7
  %30 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #18
  %31 = load ptr, ptr @stderr, align 8, !tbaa !7
  %32 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72) #18
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 23, i64 1, ptr %33) #17
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 25, i64 1, ptr %35) #17
  %37 = load ptr, ptr @stderr, align 8, !tbaa !7
  %38 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 82, i64 1, ptr %37) #17
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @AdvancedHelp() local_unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 50, i64 1, ptr %1) #17
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 9, i64 1, ptr %3) #17
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 54, i64 1, ptr %5) #17
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.5) #18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4) #18
  %11 = load ptr, ptr @stderr, align 8, !tbaa !7
  %12 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.64, i32 noundef signext 0) #18
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.65, i32 noundef signext 0) #18
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.66, i32 noundef signext 2) #18
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 59, i64 1, ptr %17) #17
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 59, i64 1, ptr %19) #17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.81, i32 noundef signext 15) #18
  %23 = load ptr, ptr @stderr, align 8, !tbaa !7
  %24 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.67, i32 noundef signext 10) #18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !7
  %26 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.68, i32 noundef signext 10) #18
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 62, i64 1, ptr %27) #17
  %29 = load ptr, ptr @stderr, align 8, !tbaa !7
  %30 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.82, double noundef 1.000000e+01) #18
  %31 = load ptr, ptr @stderr, align 8, !tbaa !7
  %32 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.70, i32 noundef signext 2) #18
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.83, double noundef 3.000000e+01) #18
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.84, i32 noundef signext 0) #18
  %37 = load ptr, ptr @stderr, align 8, !tbaa !7
  %38 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.85, i32 noundef signext 0) #18
  %39 = load ptr, ptr @stderr, align 8, !tbaa !7
  %40 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.86, i32 noundef signext 0) #18
  %41 = load ptr, ptr @stderr, align 8, !tbaa !7
  %42 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 49, i64 1, ptr %41) #17
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.72) #18
  %45 = load ptr, ptr @stderr, align 8, !tbaa !7
  %46 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.72) #18
  %47 = load ptr, ptr @stderr, align 8, !tbaa !7
  %48 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.72) #18
  %49 = load ptr, ptr @stderr, align 8, !tbaa !7
  %50 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #18
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  %52 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72) #18
  %53 = load ptr, ptr @stderr, align 8, !tbaa !7
  %54 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #18
  %55 = load ptr, ptr @stderr, align 8, !tbaa !7
  %56 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72) #18
  %57 = load ptr, ptr @stderr, align 8, !tbaa !7
  %58 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.91, i32 noundef signext 2) #18
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 23, i64 1, ptr %59) #17
  %61 = load ptr, ptr @stderr, align 8, !tbaa !7
  %62 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 25, i64 1, ptr %61) #17
  %63 = load ptr, ptr @stderr, align 8, !tbaa !7
  %64 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 82, i64 1, ptr %63) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef signext) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{i64 396986}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!14, !12, i64 36}
!14 = !{!"pict", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !15, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !15, i64 76}
!15 = !{!"float", !9, i64 0}
!16 = !{!14, !12, i64 68}
!17 = !{!14, !12, i64 24}
!18 = !{!14, !15, i64 20}
!19 = !{!9, !9, i64 0}
!20 = !{!14, !12, i64 56}
!21 = !{!14, !12, i64 60}
!22 = !{!14, !12, i64 40}
!23 = !{!14, !12, i64 8}
!24 = !{!14, !15, i64 76}
!25 = !{!14, !12, i64 12}
!26 = !{!14, !12, i64 16}
!27 = !{!14, !12, i64 28}
!28 = !{!14, !12, i64 44}
!29 = !{!30, !12, i64 32}
!30 = !{!"bits_counted", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52}
!31 = !{!32, !15, i64 0}
!32 = !{!"results", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!33 = !{!32, !15, i64 8}
!34 = !{!32, !15, i64 4}
!35 = !{!30, !12, i64 40}
!36 = !{!14, !12, i64 72}
!37 = !{!32, !15, i64 12}
!38 = !{!30, !12, i64 52}
!39 = !{!30, !12, i64 44}
!40 = !{!30, !12, i64 48}
!41 = !{!30, !12, i64 0}
!42 = !{!30, !12, i64 4}
!43 = !{!30, !12, i64 8}
!44 = !{!30, !12, i64 12}
!45 = !{!30, !12, i64 16}
!46 = !{!30, !12, i64 20}
!47 = !{!30, !12, i64 24}
!48 = !{!30, !12, i64 28}
!49 = !{!30, !12, i64 36}
!50 = !{!51, !8, i64 0}
!51 = !{!"pict_image", !8, i64 0, !8, i64 8, !8, i64 16}
!52 = !{!53, !12, i64 0}
!53 = !{!"motionvector", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!54 = !{!53, !12, i64 4}
!55 = !{!53, !12, i64 16}
