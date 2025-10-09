; ModuleID = 'putvlc.c'
source_filename = "putvlc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.sVLCtable = type { i16, i8 }
%struct.VLCtable = type { i8, i8 }

@DClumtab = internal unnamed_addr constant [12 x %struct.sVLCtable] [%struct.sVLCtable { i16 4, i8 3 }, %struct.sVLCtable { i16 0, i8 2 }, %struct.sVLCtable { i16 1, i8 2 }, %struct.sVLCtable { i16 5, i8 3 }, %struct.sVLCtable { i16 6, i8 3 }, %struct.sVLCtable { i16 14, i8 4 }, %struct.sVLCtable { i16 30, i8 5 }, %struct.sVLCtable { i16 62, i8 6 }, %struct.sVLCtable { i16 126, i8 7 }, %struct.sVLCtable { i16 254, i8 8 }, %struct.sVLCtable { i16 510, i8 9 }, %struct.sVLCtable { i16 511, i8 9 }], align 2
@DCchromtab = internal unnamed_addr constant [12 x %struct.sVLCtable] [%struct.sVLCtable { i16 0, i8 2 }, %struct.sVLCtable { i16 1, i8 2 }, %struct.sVLCtable { i16 2, i8 2 }, %struct.sVLCtable { i16 6, i8 3 }, %struct.sVLCtable { i16 14, i8 4 }, %struct.sVLCtable { i16 30, i8 5 }, %struct.sVLCtable { i16 62, i8 6 }, %struct.sVLCtable { i16 126, i8 7 }, %struct.sVLCtable { i16 254, i8 8 }, %struct.sVLCtable { i16 510, i8 9 }, %struct.sVLCtable { i16 1022, i8 10 }, %struct.sVLCtable { i16 1023, i8 10 }], align 2
@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@errortext = external dso_local global [256 x i8], align 1
@.str = private unnamed_addr constant [49 x i8] c"AC value out of range (run=%d, signed_level=%d)\0A\00", align 1
@dct_code_tab2a = internal unnamed_addr constant [30 x [5 x %struct.VLCtable]] [[5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 5 }, %struct.VLCtable { i8 7, i8 7 }, %struct.VLCtable { i8 -4, i8 8 }, %struct.VLCtable { i8 12, i8 10 }, %struct.VLCtable { i8 20, i8 13 }], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 5 }, %struct.VLCtable { i8 38, i8 8 }, %struct.VLCtable { i8 28, i8 12 }, %struct.VLCtable { i8 19, i8 13 }, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 6, i8 6 }, %struct.VLCtable { i8 -3, i8 8 }, %struct.VLCtable { i8 18, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 6 }, %struct.VLCtable { i8 4, i8 9 }, %struct.VLCtable { i8 18, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 6, i8 7 }, %struct.VLCtable { i8 30, i8 12 }, %struct.VLCtable { i8 20, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 4, i8 7 }, %struct.VLCtable { i8 21, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 7 }, %struct.VLCtable { i8 17, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 120, i8 7 }, %struct.VLCtable { i8 17, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 122, i8 7 }, %struct.VLCtable { i8 16, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 33, i8 8 }, %struct.VLCtable { i8 26, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 37, i8 8 }, %struct.VLCtable { i8 25, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 36, i8 8 }, %struct.VLCtable { i8 24, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 9 }, %struct.VLCtable { i8 23, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 9 }, %struct.VLCtable { i8 22, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 13, i8 10 }, %struct.VLCtable { i8 21, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 26, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 25, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 23, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 22, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 30, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 29, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 28, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 27, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 30, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 29, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 28, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 27, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer]], align 1
@dct_code_tab2 = internal unnamed_addr constant [30 x [5 x %struct.VLCtable]] [[5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 4 }, %struct.VLCtable { i8 4, i8 7 }, %struct.VLCtable { i8 11, i8 10 }, %struct.VLCtable { i8 20, i8 12 }, %struct.VLCtable { i8 20, i8 13 }], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 5 }, %struct.VLCtable { i8 36, i8 8 }, %struct.VLCtable { i8 28, i8 12 }, %struct.VLCtable { i8 19, i8 13 }, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 6, i8 5 }, %struct.VLCtable { i8 15, i8 10 }, %struct.VLCtable { i8 18, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 6 }, %struct.VLCtable { i8 9, i8 10 }, %struct.VLCtable { i8 18, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 6 }, %struct.VLCtable { i8 30, i8 12 }, %struct.VLCtable { i8 20, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 4, i8 6 }, %struct.VLCtable { i8 21, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 7, i8 7 }, %struct.VLCtable { i8 17, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 5, i8 7 }, %struct.VLCtable { i8 17, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 39, i8 8 }, %struct.VLCtable { i8 16, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 35, i8 8 }, %struct.VLCtable { i8 26, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 34, i8 8 }, %struct.VLCtable { i8 25, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 32, i8 8 }, %struct.VLCtable { i8 24, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 14, i8 10 }, %struct.VLCtable { i8 23, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 13, i8 10 }, %struct.VLCtable { i8 22, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 8, i8 10 }, %struct.VLCtable { i8 21, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 26, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 25, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 23, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 22, i8 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 30, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 29, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 28, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 27, i8 13 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 31, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 30, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 29, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 28, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [5 x %struct.VLCtable] [%struct.VLCtable { i8 27, i8 16 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer]], align 1
@addrinctab = internal unnamed_addr constant [33 x %struct.VLCtable] [%struct.VLCtable { i8 1, i8 1 }, %struct.VLCtable { i8 3, i8 3 }, %struct.VLCtable { i8 2, i8 3 }, %struct.VLCtable { i8 3, i8 4 }, %struct.VLCtable { i8 2, i8 4 }, %struct.VLCtable { i8 3, i8 5 }, %struct.VLCtable { i8 2, i8 5 }, %struct.VLCtable { i8 7, i8 7 }, %struct.VLCtable { i8 6, i8 7 }, %struct.VLCtable { i8 11, i8 8 }, %struct.VLCtable { i8 10, i8 8 }, %struct.VLCtable { i8 9, i8 8 }, %struct.VLCtable { i8 8, i8 8 }, %struct.VLCtable { i8 7, i8 8 }, %struct.VLCtable { i8 6, i8 8 }, %struct.VLCtable { i8 23, i8 10 }, %struct.VLCtable { i8 22, i8 10 }, %struct.VLCtable { i8 21, i8 10 }, %struct.VLCtable { i8 20, i8 10 }, %struct.VLCtable { i8 19, i8 10 }, %struct.VLCtable { i8 18, i8 10 }, %struct.VLCtable { i8 35, i8 11 }, %struct.VLCtable { i8 34, i8 11 }, %struct.VLCtable { i8 33, i8 11 }, %struct.VLCtable { i8 32, i8 11 }, %struct.VLCtable { i8 31, i8 11 }, %struct.VLCtable { i8 30, i8 11 }, %struct.VLCtable { i8 29, i8 11 }, %struct.VLCtable { i8 28, i8 11 }, %struct.VLCtable { i8 27, i8 11 }, %struct.VLCtable { i8 26, i8 11 }, %struct.VLCtable { i8 25, i8 11 }, %struct.VLCtable { i8 24, i8 11 }], align 1
@motionvectab = internal unnamed_addr constant [17 x %struct.VLCtable] [%struct.VLCtable { i8 1, i8 1 }, %struct.VLCtable { i8 1, i8 2 }, %struct.VLCtable { i8 1, i8 3 }, %struct.VLCtable { i8 1, i8 4 }, %struct.VLCtable { i8 3, i8 6 }, %struct.VLCtable { i8 5, i8 7 }, %struct.VLCtable { i8 4, i8 7 }, %struct.VLCtable { i8 3, i8 7 }, %struct.VLCtable { i8 11, i8 9 }, %struct.VLCtable { i8 10, i8 9 }, %struct.VLCtable { i8 9, i8 9 }, %struct.VLCtable { i8 17, i8 10 }, %struct.VLCtable { i8 16, i8 10 }, %struct.VLCtable { i8 15, i8 10 }, %struct.VLCtable { i8 14, i8 10 }, %struct.VLCtable { i8 13, i8 10 }, %struct.VLCtable { i8 12, i8 10 }], align 1
@cbptable = internal unnamed_addr constant [64 x %struct.VLCtable] [%struct.VLCtable { i8 1, i8 9 }, %struct.VLCtable { i8 11, i8 5 }, %struct.VLCtable { i8 9, i8 5 }, %struct.VLCtable { i8 13, i8 6 }, %struct.VLCtable { i8 13, i8 4 }, %struct.VLCtable { i8 23, i8 7 }, %struct.VLCtable { i8 19, i8 7 }, %struct.VLCtable { i8 31, i8 8 }, %struct.VLCtable { i8 12, i8 4 }, %struct.VLCtable { i8 22, i8 7 }, %struct.VLCtable { i8 18, i8 7 }, %struct.VLCtable { i8 30, i8 8 }, %struct.VLCtable { i8 19, i8 5 }, %struct.VLCtable { i8 27, i8 8 }, %struct.VLCtable { i8 23, i8 8 }, %struct.VLCtable { i8 19, i8 8 }, %struct.VLCtable { i8 11, i8 4 }, %struct.VLCtable { i8 21, i8 7 }, %struct.VLCtable { i8 17, i8 7 }, %struct.VLCtable { i8 29, i8 8 }, %struct.VLCtable { i8 17, i8 5 }, %struct.VLCtable { i8 25, i8 8 }, %struct.VLCtable { i8 21, i8 8 }, %struct.VLCtable { i8 17, i8 8 }, %struct.VLCtable { i8 15, i8 6 }, %struct.VLCtable { i8 15, i8 8 }, %struct.VLCtable { i8 13, i8 8 }, %struct.VLCtable { i8 3, i8 9 }, %struct.VLCtable { i8 15, i8 5 }, %struct.VLCtable { i8 11, i8 8 }, %struct.VLCtable { i8 7, i8 8 }, %struct.VLCtable { i8 7, i8 9 }, %struct.VLCtable { i8 10, i8 4 }, %struct.VLCtable { i8 20, i8 7 }, %struct.VLCtable { i8 16, i8 7 }, %struct.VLCtable { i8 28, i8 8 }, %struct.VLCtable { i8 14, i8 6 }, %struct.VLCtable { i8 14, i8 8 }, %struct.VLCtable { i8 12, i8 8 }, %struct.VLCtable { i8 2, i8 9 }, %struct.VLCtable { i8 16, i8 5 }, %struct.VLCtable { i8 24, i8 8 }, %struct.VLCtable { i8 20, i8 8 }, %struct.VLCtable { i8 16, i8 8 }, %struct.VLCtable { i8 14, i8 5 }, %struct.VLCtable { i8 10, i8 8 }, %struct.VLCtable { i8 6, i8 8 }, %struct.VLCtable { i8 6, i8 9 }, %struct.VLCtable { i8 18, i8 5 }, %struct.VLCtable { i8 26, i8 8 }, %struct.VLCtable { i8 22, i8 8 }, %struct.VLCtable { i8 18, i8 8 }, %struct.VLCtable { i8 13, i8 5 }, %struct.VLCtable { i8 9, i8 8 }, %struct.VLCtable { i8 5, i8 8 }, %struct.VLCtable { i8 5, i8 9 }, %struct.VLCtable { i8 12, i8 5 }, %struct.VLCtable { i8 8, i8 8 }, %struct.VLCtable { i8 4, i8 8 }, %struct.VLCtable { i8 4, i8 9 }, %struct.VLCtable { i8 7, i8 3 }, %struct.VLCtable { i8 10, i8 5 }, %struct.VLCtable { i8 8, i8 5 }, %struct.VLCtable { i8 12, i8 6 }], align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DC value out of range (%d)\0A\00", align 1
@dct_code_tab1a = internal unnamed_addr constant <{ [40 x %struct.VLCtable], <{ [18 x %struct.VLCtable], [22 x %struct.VLCtable] }> }> <{ [40 x %struct.VLCtable] [%struct.VLCtable { i8 2, i8 2 }, %struct.VLCtable { i8 6, i8 3 }, %struct.VLCtable { i8 7, i8 4 }, %struct.VLCtable { i8 28, i8 5 }, %struct.VLCtable { i8 29, i8 5 }, %struct.VLCtable { i8 5, i8 6 }, %struct.VLCtable { i8 4, i8 6 }, %struct.VLCtable { i8 123, i8 7 }, %struct.VLCtable { i8 124, i8 7 }, %struct.VLCtable { i8 35, i8 8 }, %struct.VLCtable { i8 34, i8 8 }, %struct.VLCtable { i8 -6, i8 8 }, %struct.VLCtable { i8 -5, i8 8 }, %struct.VLCtable { i8 -2, i8 8 }, %struct.VLCtable { i8 -1, i8 8 }, %struct.VLCtable { i8 31, i8 14 }, %struct.VLCtable { i8 30, i8 14 }, %struct.VLCtable { i8 29, i8 14 }, %struct.VLCtable { i8 28, i8 14 }, %struct.VLCtable { i8 27, i8 14 }, %struct.VLCtable { i8 26, i8 14 }, %struct.VLCtable { i8 25, i8 14 }, %struct.VLCtable { i8 24, i8 14 }, %struct.VLCtable { i8 23, i8 14 }, %struct.VLCtable { i8 22, i8 14 }, %struct.VLCtable { i8 21, i8 14 }, %struct.VLCtable { i8 20, i8 14 }, %struct.VLCtable { i8 19, i8 14 }, %struct.VLCtable { i8 18, i8 14 }, %struct.VLCtable { i8 17, i8 14 }, %struct.VLCtable { i8 16, i8 14 }, %struct.VLCtable { i8 24, i8 15 }, %struct.VLCtable { i8 23, i8 15 }, %struct.VLCtable { i8 22, i8 15 }, %struct.VLCtable { i8 21, i8 15 }, %struct.VLCtable { i8 20, i8 15 }, %struct.VLCtable { i8 19, i8 15 }, %struct.VLCtable { i8 18, i8 15 }, %struct.VLCtable { i8 17, i8 15 }, %struct.VLCtable { i8 16, i8 15 }], <{ [18 x %struct.VLCtable], [22 x %struct.VLCtable] }> <{ [18 x %struct.VLCtable] [%struct.VLCtable { i8 2, i8 3 }, %struct.VLCtable { i8 6, i8 5 }, %struct.VLCtable { i8 121, i8 7 }, %struct.VLCtable { i8 39, i8 8 }, %struct.VLCtable { i8 32, i8 8 }, %struct.VLCtable { i8 22, i8 13 }, %struct.VLCtable { i8 21, i8 13 }, %struct.VLCtable { i8 31, i8 15 }, %struct.VLCtable { i8 30, i8 15 }, %struct.VLCtable { i8 29, i8 15 }, %struct.VLCtable { i8 28, i8 15 }, %struct.VLCtable { i8 27, i8 15 }, %struct.VLCtable { i8 26, i8 15 }, %struct.VLCtable { i8 25, i8 15 }, %struct.VLCtable { i8 19, i8 16 }, %struct.VLCtable { i8 18, i8 16 }, %struct.VLCtable { i8 17, i8 16 }, %struct.VLCtable { i8 16, i8 16 }], [22 x %struct.VLCtable] zeroinitializer }> }>, align 1
@dct_code_tab1 = internal unnamed_addr constant <{ [40 x %struct.VLCtable], <{ [18 x %struct.VLCtable], [22 x %struct.VLCtable] }> }> <{ [40 x %struct.VLCtable] [%struct.VLCtable { i8 3, i8 2 }, %struct.VLCtable { i8 4, i8 4 }, %struct.VLCtable { i8 5, i8 5 }, %struct.VLCtable { i8 6, i8 7 }, %struct.VLCtable { i8 38, i8 8 }, %struct.VLCtable { i8 33, i8 8 }, %struct.VLCtable { i8 10, i8 10 }, %struct.VLCtable { i8 29, i8 12 }, %struct.VLCtable { i8 24, i8 12 }, %struct.VLCtable { i8 19, i8 12 }, %struct.VLCtable { i8 16, i8 12 }, %struct.VLCtable { i8 26, i8 13 }, %struct.VLCtable { i8 25, i8 13 }, %struct.VLCtable { i8 24, i8 13 }, %struct.VLCtable { i8 23, i8 13 }, %struct.VLCtable { i8 31, i8 14 }, %struct.VLCtable { i8 30, i8 14 }, %struct.VLCtable { i8 29, i8 14 }, %struct.VLCtable { i8 28, i8 14 }, %struct.VLCtable { i8 27, i8 14 }, %struct.VLCtable { i8 26, i8 14 }, %struct.VLCtable { i8 25, i8 14 }, %struct.VLCtable { i8 24, i8 14 }, %struct.VLCtable { i8 23, i8 14 }, %struct.VLCtable { i8 22, i8 14 }, %struct.VLCtable { i8 21, i8 14 }, %struct.VLCtable { i8 20, i8 14 }, %struct.VLCtable { i8 19, i8 14 }, %struct.VLCtable { i8 18, i8 14 }, %struct.VLCtable { i8 17, i8 14 }, %struct.VLCtable { i8 16, i8 14 }, %struct.VLCtable { i8 24, i8 15 }, %struct.VLCtable { i8 23, i8 15 }, %struct.VLCtable { i8 22, i8 15 }, %struct.VLCtable { i8 21, i8 15 }, %struct.VLCtable { i8 20, i8 15 }, %struct.VLCtable { i8 19, i8 15 }, %struct.VLCtable { i8 18, i8 15 }, %struct.VLCtable { i8 17, i8 15 }, %struct.VLCtable { i8 16, i8 15 }], <{ [18 x %struct.VLCtable], [22 x %struct.VLCtable] }> <{ [18 x %struct.VLCtable] [%struct.VLCtable { i8 3, i8 3 }, %struct.VLCtable { i8 6, i8 6 }, %struct.VLCtable { i8 37, i8 8 }, %struct.VLCtable { i8 12, i8 10 }, %struct.VLCtable { i8 27, i8 12 }, %struct.VLCtable { i8 22, i8 13 }, %struct.VLCtable { i8 21, i8 13 }, %struct.VLCtable { i8 31, i8 15 }, %struct.VLCtable { i8 30, i8 15 }, %struct.VLCtable { i8 29, i8 15 }, %struct.VLCtable { i8 28, i8 15 }, %struct.VLCtable { i8 27, i8 15 }, %struct.VLCtable { i8 26, i8 15 }, %struct.VLCtable { i8 25, i8 15 }, %struct.VLCtable { i8 19, i8 16 }, %struct.VLCtable { i8 18, i8 16 }, %struct.VLCtable { i8 17, i8 16 }, %struct.VLCtable { i8 16, i8 16 }], [22 x %struct.VLCtable] zeroinitializer }> }>, align 1
@mbtypetab = internal unnamed_addr constant <{ <{ [18 x %struct.VLCtable], [14 x %struct.VLCtable] }>, [32 x %struct.VLCtable], [32 x %struct.VLCtable] }> <{ <{ [18 x %struct.VLCtable], [14 x %struct.VLCtable] }> <{ [18 x %struct.VLCtable] [%struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 1 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 2 }], [14 x %struct.VLCtable] zeroinitializer }>, [32 x %struct.VLCtable] [%struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 5 }, %struct.VLCtable { i8 1, i8 2 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 3 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 1 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 6 }, %struct.VLCtable { i8 1, i8 5 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 5 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [32 x %struct.VLCtable] [%struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 5 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 3 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 3 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 4 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 4 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 2 }, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 2 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 1, i8 6 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 6 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 3, i8 6 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i8 2, i8 5 }, %struct.VLCtable zeroinitializer] }>, align 1

; Function Attrs: nounwind
define dso_local void @putDClum(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %3 = icmp ugt i32 %2, 2047
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %6 = icmp ne i32 %5, 0
  %7 = icmp ugt i32 %2, 255
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %1
  %10 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef signext %0) #4
  tail call void @error(ptr noundef nonnull @errortext) #4
  br label %11

11:                                               ; preds = %9, %4
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %11 ]
  %15 = phi i32 [ %16, %13 ], [ %2, %11 ]
  %16 = lshr i32 %15, 1
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp ult i32 %15, 2
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %11
  %20 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.sVLCtable, ptr @DClumtab, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !10
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds i8, ptr %22, i64 2
  %26 = load i8, ptr %25, align 2, !tbaa !13
  %27 = zext i8 %26 to i32
  tail call void @putbits(i32 noundef signext %24, i32 noundef signext %27) #4
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = shl nuw i32 1, %20
  %31 = add i32 %0, -1
  %32 = add i32 %31, %30
  %33 = icmp slt i32 %0, 0
  %34 = select i1 %33, i32 %32, i32 %0
  tail call void @putbits(i32 noundef signext %34, i32 noundef signext %20) #4
  br label %35

35:                                               ; preds = %19, %29
  ret void
}

; Function Attrs: nounwind
define dso_local void @putDCchrom(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %3 = icmp ugt i32 %2, 2047
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %6 = icmp ne i32 %5, 0
  %7 = icmp ugt i32 %2, 255
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %1
  %10 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef signext %0) #4
  tail call void @error(ptr noundef nonnull @errortext) #4
  br label %11

11:                                               ; preds = %9, %4
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %11 ]
  %15 = phi i32 [ %16, %13 ], [ %2, %11 ]
  %16 = lshr i32 %15, 1
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp ult i32 %15, 2
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %11
  %20 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.sVLCtable, ptr @DCchromtab, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !10
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds i8, ptr %22, i64 2
  %26 = load i8, ptr %25, align 2, !tbaa !13
  %27 = zext i8 %26 to i32
  tail call void @putbits(i32 noundef signext %24, i32 noundef signext %27) #4
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = shl nuw i32 1, %20
  %31 = add i32 %0, -1
  %32 = add i32 %31, %30
  %33 = icmp slt i32 %0, 0
  %34 = select i1 %33, i32 %32, i32 %0
  tail call void @putbits(i32 noundef signext %34, i32 noundef signext %20) #4
  br label %35

35:                                               ; preds = %19, %29
  ret void
}

; Function Attrs: nounwind
define dso_local void @putACfirst(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @putAC(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext 0)
  br label %10

5:                                                ; preds = %2
  switch i32 %1, label %6 [
    i32 -1, label %7
    i32 1, label %7
  ]

6:                                                ; preds = %5
  tail call void @putAC(i32 noundef signext 0, i32 noundef signext %1, i32 noundef signext 0)
  br label %10

7:                                                ; preds = %5, %5
  %8 = lshr i32 %1, 31
  %9 = or disjoint i32 %8, 2
  tail call void @putbits(i32 noundef signext %9, i32 noundef signext 2) #4
  br label %10

10:                                               ; preds = %4, %6, %7
  ret void
}

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @putAC(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = icmp ugt i32 %0, 63
  %6 = icmp eq i32 %1, 0
  %7 = or i1 %5, %6
  %8 = icmp ugt i32 %4, 2047
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %12 = icmp ne i32 %11, 0
  %13 = icmp ugt i32 %4, 255
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %3
  %16 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %0, i32 noundef signext %1) #4
  tail call void @error(ptr noundef nonnull @errortext) #4
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp slt i32 %0, 2
  %19 = icmp ult i32 %4, 41
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = icmp eq i32 %2, 0
  %23 = sext i32 %0 to i64
  %24 = add nsw i32 %4, -1
  %25 = sext i32 %24 to i64
  br i1 %22, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [2 x [40 x %struct.VLCtable]], ptr @dct_code_tab1a, i64 0, i64 %23, i64 %25
  br label %44

28:                                               ; preds = %21
  %29 = getelementptr inbounds [2 x [40 x %struct.VLCtable]], ptr @dct_code_tab1, i64 0, i64 %23, i64 %25
  br label %44

30:                                               ; preds = %17
  %31 = icmp slt i32 %0, 32
  %32 = icmp ult i32 %4, 6
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = icmp eq i32 %2, 0
  %36 = add nsw i32 %0, -2
  %37 = sext i32 %36 to i64
  %38 = add nsw i32 %4, -1
  %39 = sext i32 %38 to i64
  br i1 %35, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [30 x [5 x %struct.VLCtable]], ptr @dct_code_tab2a, i64 0, i64 %37, i64 %39
  br label %44

42:                                               ; preds = %34
  %43 = getelementptr inbounds [30 x [5 x %struct.VLCtable]], ptr @dct_code_tab2, i64 0, i64 %37, i64 %39
  br label %44

44:                                               ; preds = %40, %42, %26, %28
  %45 = phi ptr [ %27, %26 ], [ %29, %28 ], [ %41, %40 ], [ %43, %42 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32
  %51 = load i8, ptr %45, align 1, !tbaa !16
  %52 = zext i8 %51 to i32
  tail call void @putbits(i32 noundef signext %52, i32 noundef signext %50) #4
  %53 = lshr i32 %1, 31
  tail call void @putbits(i32 noundef signext %53, i32 noundef signext 1) #4
  br label %65

54:                                               ; preds = %30, %44
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 6) #4
  tail call void @putbits(i32 noundef signext %0, i32 noundef signext 6) #4
  %55 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = icmp sgt i32 %1, 127
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = icmp slt i32 %1, -127
  br i1 %60, label %61, label %63

61:                                               ; preds = %59, %57
  %62 = phi i32 [ 0, %57 ], [ 128, %59 ]
  tail call void @putbits(i32 noundef signext %62, i32 noundef signext 8) #4
  br label %63

63:                                               ; preds = %61, %59
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 8) #4
  br label %65

64:                                               ; preds = %54
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 12) #4
  br label %65

65:                                               ; preds = %63, %64, %49
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local void @error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @putaddrinc(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 33
  br i1 %2, label %3, label %7

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %5, %3 ], [ %0, %1 ]
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext 11) #4
  %5 = add nsw i32 %4, -33
  %6 = icmp ugt i32 %4, 66
  br i1 %6, label %3, label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %0, %1 ], [ %5, %3 ]
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [33 x %struct.VLCtable], ptr @addrinctab, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %16 = zext i8 %15 to i32
  tail call void @putbits(i32 noundef signext %13, i32 noundef signext %16) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @putmbtype(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, -1
  %4 = sext i32 %3 to i64
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [3 x [32 x %struct.VLCtable]], ptr @mbtypetab, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %11 = zext i8 %10 to i32
  tail call void @putbits(i32 noundef signext %8, i32 noundef signext %11) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @putmotioncode(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds [17 x %struct.VLCtable], ptr @motionvectab, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !16
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %9 = zext i8 %8 to i32
  tail call void @putbits(i32 noundef signext %6, i32 noundef signext %9) #4
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = lshr i32 %0, 31
  tail call void @putbits(i32 noundef signext %12, i32 noundef signext 1) #4
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @putdmv(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #4
  br label %8

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 2) #4
  br label %8

7:                                                ; preds = %4
  tail call void @putbits(i32 noundef signext 3, i32 noundef signext 2) #4
  br label %8

8:                                                ; preds = %6, %7, %3
  ret void
}

; Function Attrs: nounwind
define dso_local void @putcbp(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [64 x %struct.VLCtable], ptr @cbptable, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %8 = zext i8 %7 to i32
  tail call void @putbits(i32 noundef signext %5, i32 noundef signext %8) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !8, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!11, !8, i64 2}
!14 = !{!15, !8, i64 1}
!15 = !{!"", !8, i64 0, !8, i64 1}
!16 = !{!15, !8, i64 0}
