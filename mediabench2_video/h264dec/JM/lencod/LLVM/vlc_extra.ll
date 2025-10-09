; ModuleID = 'src/vlc.c'
source_filename = "src/vlc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str = private unnamed_addr constant [32 x i8] c"bitstream->streamBuffer != NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/vlc.c\00", align 1
@__PRETTY_FUNCTION__.ue_v = private unnamed_addr constant [35 x i8] c"int ue_v(char *, int, Bitstream *)\00", align 1
@__PRETTY_FUNCTION__.se_v = private unnamed_addr constant [35 x i8] c"int se_v(char *, int, Bitstream *)\00", align 1
@__PRETTY_FUNCTION__.u_1 = private unnamed_addr constant [34 x i8] c"int u_1(char *, int, Bitstream *)\00", align 1
@__PRETTY_FUNCTION__.u_v = private unnamed_addr constant [39 x i8] c"int u_v(int, char *, int, Bitstream *)\00", align 1
@NCBP = external dso_local local_unnamed_addr constant [2 x [48 x [2 x i8]]], align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@__const.levrun_linfo_c2x2.NTAB = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 5], [2 x i32] [i32 3, i32 0]], align 4
@__const.levrun_linfo_c2x2.LEVRUN = private unnamed_addr constant [4 x i32] [i32 2, i32 1, i32 0, i32 0], align 4
@__const.levrun_linfo_inter.LEVRUN = private unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 1
@__const.levrun_linfo_inter.NTAB = private unnamed_addr constant <{ [10 x i8], [10 x i8], <{ i8, [9 x i8] }>, <{ i8, [9 x i8] }> }> <{ [10 x i8] c"\01\03\05\09\0B\0D\15\17\19\1B", [10 x i8] c"\07\11\13\00\00\00\00\00\00\00", <{ i8, [9 x i8] }> <{ i8 15, [9 x i8] zeroinitializer }>, <{ i8, [9 x i8] }> <{ i8 29, [9 x i8] zeroinitializer }> }>, align 1
@__const.levrun_linfo_intra.LEVRUN = private unnamed_addr constant [8 x i8] c"\09\03\01\01\01\00\00\00", align 1
@__const.levrun_linfo_intra.NTAB = private unnamed_addr constant [9 x [5 x i8]] [[5 x i8] c"\01\03\07\0F\11", [5 x i8] c"\05\13\00\00\00", [5 x i8] c"\09\15\00\00\00", [5 x i8] c"\0B\00\00\00\00", [5 x i8] c"\0D\00\00\00\00", [5 x i8] c"\17\00\00\00\00", [5 x i8] c"\19\00\00\00\00", [5 x i8] c"\1B\00\00\00\00", [5 x i8] c"\1D\00\00\00\00"], align 1
@writeSyntaxElement_NumCoeffTrailingOnes.lentab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]], [4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 2, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 3, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 9, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14]], [4 x [17 x i32]] [[17 x i32] [i32 4, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 6, i32 7, i32 8, i32 8, i32 9, i32 10, i32 10, i32 10]]], align 4
@writeSyntaxElement_NumCoeffTrailingOnes.codtab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]], [4 x [17 x i32]] [[17 x i32] [i32 3, i32 11, i32 7, i32 7, i32 7, i32 4, i32 7, i32 15, i32 11, i32 15, i32 11, i32 8, i32 15, i32 11, i32 7, i32 9, i32 7], [17 x i32] [i32 0, i32 2, i32 7, i32 10, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 11, i32 8, i32 6], [17 x i32] [i32 0, i32 0, i32 3, i32 9, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 6, i32 10, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 4, i32 6, i32 8, i32 4, i32 4, i32 4, i32 12, i32 8, i32 12, i32 12, i32 8, i32 1, i32 4]], [4 x [17 x i32]] [[17 x i32] [i32 15, i32 15, i32 11, i32 8, i32 15, i32 11, i32 9, i32 8, i32 15, i32 11, i32 15, i32 11, i32 8, i32 13, i32 9, i32 5, i32 1], [17 x i32] [i32 0, i32 14, i32 15, i32 12, i32 10, i32 8, i32 14, i32 10, i32 14, i32 14, i32 10, i32 14, i32 10, i32 7, i32 12, i32 8, i32 4], [17 x i32] [i32 0, i32 0, i32 13, i32 14, i32 11, i32 9, i32 13, i32 9, i32 13, i32 10, i32 13, i32 9, i32 13, i32 9, i32 11, i32 7, i32 3], [17 x i32] [i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 8, i32 13, i32 12, i32 12, i32 12, i32 8, i32 12, i32 10, i32 6, i32 2]]], align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\0A\00", align 1
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant <{ [4 x <{ i32, i32, i32, i32, i32, [12 x i32] }>], [4 x <{ [9 x i32], [8 x i32] }>], [4 x [17 x i32]] }> <{ [4 x <{ i32, i32, i32, i32, i32, [12 x i32] }>] [<{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 6, i32 6, i32 6, i32 6, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 6, i32 7, i32 8, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 3, i32 7, i32 8, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 0, i32 6, i32 7, [12 x i32] zeroinitializer }>], [4 x <{ [9 x i32], [8 x i32] }>] [<{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 1, i32 7, i32 7, i32 9, i32 9, i32 10, i32 11, i32 12, i32 13], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 2, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 12], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 3, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 7, i32 10, i32 11], [8 x i32] zeroinitializer }>], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]] }>, align 4
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }> }>, [4 x <{ [9 x i32], [8 x i32] }>], [4 x [17 x i32]] }> <{ <{ <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }> }> <{ <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 7, i32 4, i32 3, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 6, i32 3, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 1, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 0, i32 0, i32 0, i32 5, [13 x i32] zeroinitializer }> }>, [4 x <{ [9 x i32], [8 x i32] }>] [<{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 1, i32 15, i32 14, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 1, i32 13, i32 12, i32 5, i32 6, i32 6, i32 6, i32 5], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 1, i32 11, i32 10, i32 4, i32 5, i32 5, i32 4], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 8, i32 4, i32 4], [8 x i32] zeroinitializer }>], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]] }>, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\0A\00", align 1
@writeSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 4, i32 2, i32 1, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 3, i32 1, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }> }>, align 4
@writeSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1], [8 x i32] zeroinitializer }>, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }> }>, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"ERROR: (TotalZeros) not valid: (%d)\0A\00", align 1
@writeSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant <{ <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [12 x [16 x i32]] }>, <{ <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> }> <{ <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [12 x [16 x i32]] }> <{ <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 3, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 2, i32 2, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, [12 x [16 x i32]] zeroinitializer }>, <{ <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }> <{ <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 3, i32 2, i32 2, i32 2, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 2, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, [8 x [16 x i32]] zeroinitializer }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 4, i32 2, i32 1, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 3, i32 1, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }> }> }>, align 4
@writeSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, [15 x i32] }>, [12 x [16 x i32]] }>, <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> }> <{ <{ <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, [15 x i32] }>, [12 x [16 x i32]] }> <{ <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, [15 x i32] }> <{ i32 1, [15 x i32] zeroinitializer }>, [12 x [16 x i32]] zeroinitializer }>, <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }> <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 0, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 6, i32 7, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 6, i32 0, i32 1, i32 2, i32 7, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 2, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }>, [8 x [16 x i32]] zeroinitializer }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1], [8 x i32] zeroinitializer }>, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }> }> }>, align 4
@writeSyntaxElement_Run.lentab = internal unnamed_addr constant <{ <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, [16 x i32], [8 x [16 x i32]] }> <{ <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 2, i32 2, [13 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 2, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 2, i32 2, i32 2, i32 3, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, [9 x i32] zeroinitializer }>, [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0], [8 x [16 x i32]] zeroinitializer }>, align 4
@writeSyntaxElement_Run.codtab = internal unnamed_addr constant <{ <{ i32, [15 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, [16 x i32], [8 x [16 x i32]] }> <{ <{ i32, [15 x i32] }> <{ i32 1, [15 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 3, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 2, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 3, i32 2, i32 3, i32 2, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 3, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4, [9 x i32] zeroinitializer }>, [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [8 x [16 x i32]] zeroinitializer }>, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"ERROR: (run) not valid: (%d)\0A\00", align 1
@stats = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind
define dso_local signext i32 @ue_v(ptr nocapture noundef readnone %0, i32 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 64, ptr noundef nonnull @__PRETTY_FUNCTION__.ue_v) #9
  unreachable

8:                                                ; preds = %3
  %9 = add nsw i32 %1, 1
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, -3
  br i1 %11, label %12, label %21

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ %9, %8 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %15 = sdiv i32 %13, 2
  %16 = add nuw nsw i32 %14, 1
  %17 = icmp ult i32 %14, 15
  %18 = add nsw i32 %15, -2
  %19 = icmp ult i32 %18, -3
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %12, label %21

21:                                               ; preds = %12, %8
  %22 = phi i32 [ 0, %8 ], [ %16, %12 ]
  %23 = shl nuw nsw i32 %22, 1
  %24 = uitofp nneg i32 %22 to double
  %25 = tail call double @exp2(double %24) #10
  %26 = fptosi double %25 to i32
  %27 = sub nsw i32 %9, %26
  %28 = shl nuw nsw i32 1, %22
  %29 = add nuw i32 %28, 2147483647
  %30 = and i32 %29, %27
  %31 = or i32 %30, %28
  %32 = shl nuw i32 1, %23
  %33 = getelementptr inbounds i8, ptr %2, i64 8
  %34 = getelementptr inbounds i8, ptr %2, i64 4
  %35 = load i8, ptr %33, align 8, !tbaa !12
  br label %36

36:                                               ; preds = %55, %21
  %37 = phi i8 [ %35, %21 ], [ %56, %55 ]
  %38 = phi i32 [ %32, %21 ], [ %47, %55 ]
  %39 = phi i32 [ 0, %21 ], [ %57, %55 ]
  %40 = shl i8 %37, 1
  %41 = and i32 %38, %31
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i8
  %44 = or disjoint i8 %40, %43
  store i8 %44, ptr %33, align 8, !tbaa !12
  %45 = load i32, ptr %34, align 4, !tbaa !13
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %34, align 4, !tbaa !13
  %47 = lshr i32 %38, 1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  store i32 8, ptr %34, align 4, !tbaa !13
  %50 = load ptr, ptr %4, align 8, !tbaa !6
  %51 = load i32, ptr %2, align 8, !tbaa !14
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %2, align 8, !tbaa !14
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  store i8 %44, ptr %54, align 1, !tbaa !15
  store i8 0, ptr %33, align 8, !tbaa !12
  br label %55

55:                                               ; preds = %49, %36
  %56 = phi i8 [ %44, %36 ], [ 0, %49 ]
  %57 = add nuw nsw i32 %39, 1
  %58 = icmp eq i32 %39, %23
  br i1 %58, label %59, label %36

59:                                               ; preds = %55
  %60 = or disjoint i32 %23, 1
  ret i32 %60
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @ue_linfo(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %0, 1
  %6 = add i32 %0, -1
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %8, label %17

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = sdiv i32 %9, 2
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp ult i32 %10, 15
  %14 = add nsw i32 %11, -2
  %15 = icmp ult i32 %14, -3
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %8, label %17

17:                                               ; preds = %8, %4
  %18 = phi i32 [ 0, %4 ], [ %12, %8 ]
  %19 = shl nuw nsw i32 %18, 1
  %20 = or disjoint i32 %19, 1
  store i32 %20, ptr %2, align 4, !tbaa !16
  %21 = uitofp nneg i32 %18 to double
  %22 = tail call double @exp2(double %21) #10
  %23 = fptosi double %22 to i32
  %24 = sub nsw i32 %5, %23
  store i32 %24, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local noundef signext i32 @symbol2uvlc(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = sdiv i32 %3, 2
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = load i32, ptr %6, align 8, !tbaa !19
  %8 = add nsw i32 %5, -1
  %9 = and i32 %8, %7
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %10, ptr %11, align 4, !tbaa !20
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local void @writeUVLC2buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %2
  %7 = add nsw i32 %4, -1
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds i8, ptr %1, i64 8
  %10 = getelementptr inbounds i8, ptr %0, i64 20
  %11 = getelementptr inbounds i8, ptr %1, i64 4
  %12 = getelementptr inbounds i8, ptr %1, i64 32
  %13 = load i8, ptr %9, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %6, %38
  %15 = phi i32 [ %4, %6 ], [ %39, %38 ]
  %16 = phi i8 [ %13, %6 ], [ %40, %38 ]
  %17 = phi i32 [ %8, %6 ], [ %29, %38 ]
  %18 = phi i32 [ 0, %6 ], [ %41, %38 ]
  %19 = shl i8 %16, 1
  store i8 %19, ptr %9, align 8, !tbaa !12
  %20 = load i32, ptr %10, align 4, !tbaa !20
  %21 = and i32 %20, %17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = or disjoint i8 %19, 1
  store i8 %24, ptr %9, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i8 [ %24, %23 ], [ %19, %14 ]
  %27 = load i32, ptr %11, align 4, !tbaa !13
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %11, align 4, !tbaa !13
  %29 = lshr i32 %17, 1
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  store i32 8, ptr %11, align 4, !tbaa !13
  %32 = load ptr, ptr %12, align 8, !tbaa !6
  %33 = load i32, ptr %1, align 8, !tbaa !14
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %1, align 8, !tbaa !14
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  store i8 %26, ptr %36, align 1, !tbaa !15
  store i8 0, ptr %9, align 8, !tbaa !12
  %37 = load i32, ptr %3, align 4, !tbaa !17
  br label %38

38:                                               ; preds = %25, %31
  %39 = phi i32 [ %15, %25 ], [ %37, %31 ]
  %40 = phi i8 [ %26, %25 ], [ 0, %31 ]
  %41 = add nuw nsw i32 %18, 1
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %14, label %43

43:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @se_v(ptr nocapture noundef readnone %0, i32 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 109, ptr noundef nonnull @__PRETTY_FUNCTION__.se_v) #9
  unreachable

8:                                                ; preds = %3
  %9 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %10 = shl nuw i32 %9, 1
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = ashr exact i32 %10, 1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %17, %14 ], [ %13, %12 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %12 ]
  %17 = sdiv i32 %15, 2
  %18 = add nuw nsw i32 %16, 1
  %19 = icmp ult i32 %16, 15
  %20 = add nsw i32 %15, -2
  %21 = icmp ult i32 %20, -3
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %14, label %23

23:                                               ; preds = %14, %8
  %24 = phi i32 [ 0, %8 ], [ %18, %14 ]
  %25 = icmp slt i32 %1, 1
  %26 = zext i1 %25 to i32
  %27 = shl nuw nsw i32 %24, 1
  %28 = uitofp nneg i32 %24 to double
  %29 = tail call double @exp2(double %28) #10
  %30 = fptosi double %29 to i32
  %31 = or disjoint i32 %10, %26
  %32 = sub i32 %31, %30
  %33 = shl nuw nsw i32 1, %24
  %34 = add nuw i32 %33, 2147483647
  %35 = and i32 %34, %32
  %36 = or i32 %35, %33
  %37 = shl nuw i32 1, %27
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  %39 = getelementptr inbounds i8, ptr %2, i64 4
  %40 = load i8, ptr %38, align 8, !tbaa !12
  br label %41

41:                                               ; preds = %60, %23
  %42 = phi i8 [ %40, %23 ], [ %61, %60 ]
  %43 = phi i32 [ %37, %23 ], [ %52, %60 ]
  %44 = phi i32 [ 0, %23 ], [ %62, %60 ]
  %45 = shl i8 %42, 1
  %46 = and i32 %43, %36
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i8
  %49 = or disjoint i8 %45, %48
  store i8 %49, ptr %38, align 8, !tbaa !12
  %50 = load i32, ptr %39, align 4, !tbaa !13
  %51 = add nsw i32 %50, -1
  store i32 %51, ptr %39, align 4, !tbaa !13
  %52 = lshr i32 %43, 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  store i32 8, ptr %39, align 4, !tbaa !13
  %55 = load ptr, ptr %4, align 8, !tbaa !6
  %56 = load i32, ptr %2, align 8, !tbaa !14
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %2, align 8, !tbaa !14
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  store i8 %49, ptr %59, align 1, !tbaa !15
  store i8 0, ptr %38, align 8, !tbaa !12
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i8 [ %49, %41 ], [ 0, %54 ]
  %62 = add nuw nsw i32 %44, 1
  %63 = icmp eq i32 %44, %27
  br i1 %63, label %64, label %41

64:                                               ; preds = %60
  %65 = or disjoint i32 %27, 1
  ret i32 %65
}

; Function Attrs: nounwind
define dso_local void @se_linfo(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %6 = shl nuw i32 %5, 1
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = ashr exact i32 %6, 1
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %13, %10 ], [ %9, %8 ]
  %12 = phi i32 [ %14, %10 ], [ 0, %8 ]
  %13 = sdiv i32 %11, 2
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp ult i32 %12, 15
  %16 = add nsw i32 %11, -2
  %17 = icmp ult i32 %16, -3
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %4
  %20 = phi i32 [ 0, %4 ], [ %14, %10 ]
  %21 = icmp slt i32 %0, 1
  %22 = zext i1 %21 to i32
  %23 = shl nuw nsw i32 %20, 1
  %24 = or disjoint i32 %23, 1
  store i32 %24, ptr %2, align 4, !tbaa !16
  %25 = uitofp nneg i32 %20 to double
  %26 = tail call double @exp2(double %25) #10
  %27 = fptosi double %26 to i32
  %28 = or disjoint i32 %6, %22
  %29 = sub i32 %28, %27
  store i32 %29, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @u_1(ptr nocapture noundef readnone %0, i32 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 157, ptr noundef nonnull @__PRETTY_FUNCTION__.u_1) #9
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  %10 = getelementptr inbounds i8, ptr %2, i64 4
  %11 = load i8, ptr %9, align 8, !tbaa !12
  %12 = shl i8 %11, 1
  %13 = trunc i32 %1 to i8
  %14 = and i8 %13, 1
  %15 = or disjoint i8 %12, %14
  store i8 %15, ptr %9, align 8, !tbaa !12
  %16 = load i32, ptr %10, align 4, !tbaa !13
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %10, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  store i32 8, ptr %10, align 4, !tbaa !13
  %20 = load i32, ptr %2, align 8, !tbaa !14
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %2, align 8, !tbaa !14
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %5, i64 %22
  store i8 %15, ptr %23, align 1, !tbaa !15
  store i8 0, ptr %9, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %8, %19
  ret i32 1
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @u_v(i32 noundef returned signext %0, ptr nocapture noundef readnone %1, i32 noundef signext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 204, ptr noundef nonnull @__PRETTY_FUNCTION__.u_v) #9
  unreachable

9:                                                ; preds = %4
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %9
  %12 = add nsw i32 %0, -1
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  %15 = getelementptr inbounds i8, ptr %3, i64 4
  %16 = load i8, ptr %14, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %36, %11
  %18 = phi i8 [ %16, %11 ], [ %37, %36 ]
  %19 = phi i32 [ %13, %11 ], [ %28, %36 ]
  %20 = phi i32 [ 0, %11 ], [ %38, %36 ]
  %21 = shl i8 %18, 1
  %22 = and i32 %19, %2
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i8
  %25 = or disjoint i8 %21, %24
  store i8 %25, ptr %14, align 8, !tbaa !12
  %26 = load i32, ptr %15, align 4, !tbaa !13
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %15, align 4, !tbaa !13
  %28 = lshr i32 %19, 1
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  store i32 8, ptr %15, align 4, !tbaa !13
  %31 = load ptr, ptr %5, align 8, !tbaa !6
  %32 = load i32, ptr %3, align 8, !tbaa !14
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %3, align 8, !tbaa !14
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  store i8 %25, ptr %35, align 1, !tbaa !15
  store i8 0, ptr %14, align 8, !tbaa !12
  br label %36

36:                                               ; preds = %30, %17
  %37 = phi i8 [ %25, %17 ], [ 0, %30 ]
  %38 = add nuw nsw i32 %20, 1
  %39 = icmp eq i32 %38, %0
  br i1 %39, label %40, label %17

40:                                               ; preds = %36, %9
  ret i32 %0
}

; Function Attrs: nounwind
define dso_local void @cbp_linfo_intra(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @img, align 8, !tbaa !21
  %6 = getelementptr inbounds i8, ptr %5, i64 90548
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [2 x [48 x [2 x i8]]], ptr @NCBP, i64 0, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = add nsw i32 %13, -1
  %16 = icmp ult i32 %15, -3
  br i1 %16, label %17, label %26

17:                                               ; preds = %4, %17
  %18 = phi i32 [ %20, %17 ], [ %14, %4 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %4 ]
  %20 = lshr i32 %18, 1
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp ult i32 %19, 15
  %23 = add nsw i32 %20, -2
  %24 = icmp ult i32 %23, -3
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %17, label %26

26:                                               ; preds = %17, %4
  %27 = phi i32 [ 0, %4 ], [ %21, %17 ]
  %28 = shl nuw nsw i32 %27, 1
  %29 = or disjoint i32 %28, 1
  store i32 %29, ptr %2, align 4, !tbaa !16
  %30 = uitofp nneg i32 %27 to double
  %31 = tail call double @exp2(double %30) #10
  %32 = fptosi double %31 to i32
  %33 = sub nsw i32 %14, %32
  store i32 %33, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
define dso_local void @cbp_linfo_inter(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @img, align 8, !tbaa !21
  %6 = getelementptr inbounds i8, ptr %5, i64 90548
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [2 x [48 x [2 x i8]]], ptr @NCBP, i64 0, i64 %9, i64 %10, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = add nsw i32 %13, -1
  %16 = icmp ult i32 %15, -3
  br i1 %16, label %17, label %26

17:                                               ; preds = %4, %17
  %18 = phi i32 [ %20, %17 ], [ %14, %4 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %4 ]
  %20 = lshr i32 %18, 1
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp ult i32 %19, 15
  %23 = add nsw i32 %20, -2
  %24 = icmp ult i32 %23, -3
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %17, label %26

26:                                               ; preds = %17, %4
  %27 = phi i32 [ 0, %4 ], [ %21, %17 ]
  %28 = shl nuw nsw i32 %27, 1
  %29 = or disjoint i32 %28, 1
  store i32 %29, ptr %2, align 4, !tbaa !16
  %30 = uitofp nneg i32 %27 to double
  %31 = tail call double @exp2(double %30) #10
  %32 = fptosi double %31 to i32
  %33 = sub nsw i32 %14, %32
  store i32 %33, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
define dso_local void @levrun_linfo_c2x2(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %48

7:                                                ; preds = %4
  %8 = icmp slt i32 %0, 1
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [4 x i32], ptr @__const.levrun_linfo_c2x2.LEVRUN, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = add nsw i32 %10, -1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [2 x [2 x i32]], ptr @__const.levrun_linfo_c2x2.NTAB, i64 0, i64 %17, i64 %11
  %19 = load i32, ptr %18, align 4, !tbaa !16
  %20 = add nsw i32 %19, 1
  br label %26

21:                                               ; preds = %7
  %22 = sub nsw i32 %10, %13
  %23 = shl nsw i32 %22, 3
  %24 = shl nsw i32 %1, 1
  %25 = add nsw i32 %23, %24
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ %20, %15 ], [ %25, %21 ]
  %28 = add i32 %27, -2
  %29 = icmp ult i32 %28, -3
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %30
  %31 = phi i32 [ %33, %30 ], [ %27, %26 ]
  %32 = phi i32 [ %34, %30 ], [ 0, %26 ]
  %33 = sdiv i32 %31, 2
  %34 = add nuw nsw i32 %32, 1
  %35 = icmp ult i32 %32, 15
  %36 = add nsw i32 %33, -2
  %37 = icmp ult i32 %36, -3
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %26
  %40 = phi i32 [ 0, %26 ], [ %34, %30 ]
  %41 = shl nuw nsw i32 %40, 1
  %42 = or disjoint i32 %41, 1
  store i32 %42, ptr %2, align 4, !tbaa !16
  %43 = uitofp nneg i32 %40 to double
  %44 = tail call double @exp2(double %43) #10
  %45 = fptosi double %44 to i32
  %46 = add i32 %27, %9
  %47 = sub i32 %46, %45
  store i32 %47, ptr %3, align 4, !tbaa !16
  br label %48

48:                                               ; preds = %39, %6
  ret void
}

; Function Attrs: nounwind
define dso_local void @levrun_linfo_inter(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %50

7:                                                ; preds = %4
  %8 = icmp slt i32 %0, 1
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [16 x i8], ptr @__const.levrun_linfo_inter.LEVRUN, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %10, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = add nsw i32 %10, -1
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [4 x [10 x i8]], ptr @__const.levrun_linfo_inter.NTAB, i64 0, i64 %18, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 1
  br label %28

23:                                               ; preds = %7
  %24 = sub nsw i32 %10, %14
  %25 = shl nsw i32 %24, 5
  %26 = shl nsw i32 %1, 1
  %27 = add nsw i32 %25, %26
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i32 [ %22, %16 ], [ %27, %23 ]
  %30 = add i32 %29, -2
  %31 = icmp ult i32 %30, -3
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %35, %32 ], [ %29, %28 ]
  %34 = phi i32 [ %36, %32 ], [ 0, %28 ]
  %35 = sdiv i32 %33, 2
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp ult i32 %34, 15
  %38 = add nsw i32 %35, -2
  %39 = icmp ult i32 %38, -3
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %32, label %41

41:                                               ; preds = %32, %28
  %42 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %43 = shl nuw nsw i32 %42, 1
  %44 = or disjoint i32 %43, 1
  store i32 %44, ptr %2, align 4, !tbaa !16
  %45 = uitofp nneg i32 %42 to double
  %46 = tail call double @exp2(double %45) #10
  %47 = fptosi double %46 to i32
  %48 = add i32 %29, %9
  %49 = sub i32 %48, %47
  store i32 %49, ptr %3, align 4, !tbaa !16
  br label %50

50:                                               ; preds = %41, %6
  ret void
}

; Function Attrs: nounwind
define dso_local void @levrun_linfo_intra(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %51

7:                                                ; preds = %4
  %8 = icmp slt i32 %0, 1
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [8 x i8], ptr @__const.levrun_linfo_intra.LEVRUN, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %10, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = add nsw i32 %10, -1
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [9 x [5 x i8]], ptr @__const.levrun_linfo_intra.NTAB, i64 0, i64 %18, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 1
  br label %29

23:                                               ; preds = %7
  %24 = sub nsw i32 %10, %14
  %25 = shl nsw i32 %24, 4
  %26 = shl nsw i32 %1, 1
  %27 = add i32 %26, 16
  %28 = add i32 %27, %25
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi i32 [ %22, %16 ], [ %28, %23 ]
  %31 = add i32 %30, -2
  %32 = icmp ult i32 %31, -3
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %35 = phi i32 [ %37, %33 ], [ 0, %29 ]
  %36 = sdiv i32 %34, 2
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp ult i32 %35, 15
  %39 = add nsw i32 %36, -2
  %40 = icmp ult i32 %39, -3
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %29
  %43 = phi i32 [ 0, %29 ], [ %37, %33 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = or disjoint i32 %44, 1
  store i32 %45, ptr %2, align 4, !tbaa !16
  %46 = uitofp nneg i32 %43 to double
  %47 = tail call double @exp2(double %46) #10
  %48 = fptosi double %47 to i32
  %49 = add i32 %30, %9
  %50 = sub i32 %49, %48
  store i32 %50, ptr %3, align 4, !tbaa !16
  br label %51

51:                                               ; preds = %42, %6
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_UVLC(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds i8, ptr %0, i64 12
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void %4(i32 noundef signext %6, i32 noundef signext %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  %11 = load i32, ptr %9, align 4, !tbaa !17
  %12 = sdiv i32 %11, 2
  %13 = shl nuw i32 1, %12
  %14 = load i32, ptr %10, align 8, !tbaa !19
  %15 = add nsw i32 %13, -1
  %16 = and i32 %15, %14
  %17 = or i32 %16, %13
  %18 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %17, ptr %18, align 4, !tbaa !20
  %19 = load ptr, ptr %1, align 8, !tbaa !30
  %20 = icmp sgt i32 %11, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = add nsw i32 %11, -1
  %23 = shl nuw i32 1, %22
  %24 = getelementptr inbounds i8, ptr %19, i64 8
  %25 = getelementptr inbounds i8, ptr %19, i64 4
  %26 = getelementptr inbounds i8, ptr %19, i64 32
  %27 = load i8, ptr %24, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %52, %21
  %29 = phi i32 [ %11, %21 ], [ %53, %52 ]
  %30 = phi i8 [ %27, %21 ], [ %54, %52 ]
  %31 = phi i32 [ %23, %21 ], [ %43, %52 ]
  %32 = phi i32 [ 0, %21 ], [ %55, %52 ]
  %33 = shl i8 %30, 1
  store i8 %33, ptr %24, align 8, !tbaa !12
  %34 = load i32, ptr %18, align 4, !tbaa !20
  %35 = and i32 %34, %31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = or disjoint i8 %33, 1
  store i8 %38, ptr %24, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i8 [ %38, %37 ], [ %33, %28 ]
  %41 = load i32, ptr %25, align 4, !tbaa !13
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr %25, align 4, !tbaa !13
  %43 = lshr i32 %31, 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  store i32 8, ptr %25, align 4, !tbaa !13
  %46 = load ptr, ptr %26, align 8, !tbaa !6
  %47 = load i32, ptr %19, align 8, !tbaa !14
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %19, align 8, !tbaa !14
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  store i8 %40, ptr %50, align 1, !tbaa !15
  store i8 0, ptr %24, align 8, !tbaa !12
  %51 = load i32, ptr %9, align 4, !tbaa !17
  br label %52

52:                                               ; preds = %45, %39
  %53 = phi i32 [ %29, %39 ], [ %51, %45 ]
  %54 = phi i8 [ %40, %39 ], [ 0, %45 ]
  %55 = add nuw nsw i32 %32, 1
  %56 = icmp slt i32 %55, %53
  br i1 %56, label %28, label %57

57:                                               ; preds = %52, %2
  %58 = phi i32 [ %11, %2 ], [ %53, %52 ]
  %59 = load i32, ptr %0, align 8, !tbaa !33
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %1, align 8, !tbaa !30
  %63 = getelementptr inbounds i8, ptr %62, i64 40
  store i32 1, ptr %63, align 8, !tbaa !34
  br label %64

64:                                               ; preds = %61, %57
  ret i32 %58
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext i32 @writeSyntaxElement_Intra4x4PredictionMode(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = icmp eq i32 %4, -1
  %6 = select i1 %5, i32 1, i32 4
  %7 = select i1 %5, i32 1, i32 %4
  %8 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %6, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %7, ptr %10, align 4, !tbaa !20
  %11 = load ptr, ptr %1, align 8, !tbaa !30
  %12 = add nsw i32 %6, -1
  %13 = shl nuw nsw i32 1, %12
  %14 = getelementptr inbounds i8, ptr %11, i64 8
  %15 = getelementptr inbounds i8, ptr %11, i64 4
  %16 = getelementptr inbounds i8, ptr %11, i64 32
  %17 = load i8, ptr %14, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %42, %2
  %19 = phi i32 [ %6, %2 ], [ %43, %42 ]
  %20 = phi i8 [ %17, %2 ], [ %44, %42 ]
  %21 = phi i32 [ %13, %2 ], [ %33, %42 ]
  %22 = phi i32 [ 0, %2 ], [ %45, %42 ]
  %23 = shl i8 %20, 1
  store i8 %23, ptr %14, align 8, !tbaa !12
  %24 = load i32, ptr %10, align 4, !tbaa !20
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = or disjoint i8 %23, 1
  store i8 %28, ptr %14, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i8 [ %28, %27 ], [ %23, %18 ]
  %31 = load i32, ptr %15, align 4, !tbaa !13
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %15, align 4, !tbaa !13
  %33 = lshr i32 %21, 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  store i32 8, ptr %15, align 4, !tbaa !13
  %36 = load ptr, ptr %16, align 8, !tbaa !6
  %37 = load i32, ptr %11, align 8, !tbaa !14
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %11, align 8, !tbaa !14
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 %30, ptr %40, align 1, !tbaa !15
  store i8 0, ptr %14, align 8, !tbaa !12
  %41 = load i32, ptr %8, align 4, !tbaa !17
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i32 [ %19, %29 ], [ %41, %35 ]
  %44 = phi i8 [ %30, %29 ], [ 0, %35 ]
  %45 = add nuw nsw i32 %22, 1
  %46 = icmp slt i32 %45, %43
  br i1 %46, label %18, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %0, align 8, !tbaa !33
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %1, align 8, !tbaa !30
  %52 = getelementptr inbounds i8, ptr %51, i64 40
  store i32 1, ptr %52, align 8, !tbaa !34
  br label %53

53:                                               ; preds = %50, %47
  ret i32 %43
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds i8, ptr %0, i64 12
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void %4(i32 noundef signext %6, i32 noundef signext %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  %11 = load i32, ptr %9, align 4, !tbaa !17
  %12 = sdiv i32 %11, 2
  %13 = shl nuw i32 1, %12
  %14 = load i32, ptr %10, align 8, !tbaa !19
  %15 = add nsw i32 %13, -1
  %16 = and i32 %15, %14
  %17 = or i32 %16, %13
  %18 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %17, ptr %18, align 4, !tbaa !20
  %19 = icmp sgt i32 %11, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = add nsw i32 %11, -1
  %22 = shl nuw i32 1, %21
  %23 = getelementptr inbounds i8, ptr %1, i64 8
  %24 = getelementptr inbounds i8, ptr %1, i64 4
  %25 = getelementptr inbounds i8, ptr %1, i64 32
  %26 = load i8, ptr %23, align 8, !tbaa !12
  br label %27

27:                                               ; preds = %51, %20
  %28 = phi i32 [ %11, %20 ], [ %52, %51 ]
  %29 = phi i8 [ %26, %20 ], [ %53, %51 ]
  %30 = phi i32 [ %22, %20 ], [ %42, %51 ]
  %31 = phi i32 [ 0, %20 ], [ %54, %51 ]
  %32 = shl i8 %29, 1
  store i8 %32, ptr %23, align 8, !tbaa !12
  %33 = load i32, ptr %18, align 4, !tbaa !20
  %34 = and i32 %33, %30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = or disjoint i8 %32, 1
  store i8 %37, ptr %23, align 8, !tbaa !12
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi i8 [ %37, %36 ], [ %32, %27 ]
  %40 = load i32, ptr %24, align 4, !tbaa !13
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %24, align 4, !tbaa !13
  %42 = lshr i32 %30, 1
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  store i32 8, ptr %24, align 4, !tbaa !13
  %45 = load ptr, ptr %25, align 8, !tbaa !6
  %46 = load i32, ptr %1, align 8, !tbaa !14
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %1, align 8, !tbaa !14
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  store i8 %39, ptr %49, align 1, !tbaa !15
  store i8 0, ptr %23, align 8, !tbaa !12
  %50 = load i32, ptr %9, align 4, !tbaa !17
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i32 [ %28, %38 ], [ %50, %44 ]
  %53 = phi i8 [ %39, %38 ], [ 0, %44 ]
  %54 = add nuw nsw i32 %31, 1
  %55 = icmp slt i32 %54, %52
  br i1 %55, label %27, label %56

56:                                               ; preds = %51, %2
  %57 = phi i32 [ %11, %2 ], [ %52, %51 ]
  ret i32 %57
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local signext i32 @writeSyntaxElement2Buf_Fixed(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %2
  %7 = add nsw i32 %4, -1
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds i8, ptr %1, i64 8
  %10 = getelementptr inbounds i8, ptr %0, i64 20
  %11 = getelementptr inbounds i8, ptr %1, i64 4
  %12 = getelementptr inbounds i8, ptr %1, i64 32
  %13 = load i8, ptr %9, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %38, %6
  %15 = phi i32 [ %4, %6 ], [ %39, %38 ]
  %16 = phi i8 [ %13, %6 ], [ %40, %38 ]
  %17 = phi i32 [ %8, %6 ], [ %29, %38 ]
  %18 = phi i32 [ 0, %6 ], [ %41, %38 ]
  %19 = shl i8 %16, 1
  store i8 %19, ptr %9, align 8, !tbaa !12
  %20 = load i32, ptr %10, align 4, !tbaa !20
  %21 = and i32 %20, %17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = or disjoint i8 %19, 1
  store i8 %24, ptr %9, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i8 [ %24, %23 ], [ %19, %14 ]
  %27 = load i32, ptr %11, align 4, !tbaa !13
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %11, align 4, !tbaa !13
  %29 = lshr i32 %17, 1
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  store i32 8, ptr %11, align 4, !tbaa !13
  %32 = load ptr, ptr %12, align 8, !tbaa !6
  %33 = load i32, ptr %1, align 8, !tbaa !14
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %1, align 8, !tbaa !14
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  store i8 %26, ptr %36, align 1, !tbaa !15
  store i8 0, ptr %9, align 8, !tbaa !12
  %37 = load i32, ptr %3, align 4, !tbaa !17
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i32 [ %15, %25 ], [ %37, %31 ]
  %40 = phi i8 [ %26, %25 ], [ 0, %31 ]
  %41 = add nuw nsw i32 %18, 1
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %14, label %43

43:                                               ; preds = %38, %2
  %44 = phi i32 [ %4, %2 ], [ %39, %38 ]
  ret i32 %44
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local noundef signext i32 @symbol2vlc(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = load i32, ptr %6, align 8, !tbaa !19
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %3, %5 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %15, %8 ]
  %11 = add nsw i32 %9, -1
  %12 = shl i32 %10, 1
  %13 = lshr i32 %7, %11
  %14 = and i32 %13, 1
  %15 = or disjoint i32 %14, %12
  %16 = icmp ugt i32 %9, 1
  br i1 %16, label %8, label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ 0, %1 ], [ %15, %8 ]
  %19 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %18, ptr %19, align 4, !tbaa !20
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext i32 @writeSyntaxElement_VLC(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %4, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %7, ptr %8, align 4, !tbaa !17
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %11, align 4, !tbaa !20
  br label %59

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ %7, %2 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %2 ]
  %15 = add nsw i32 %13, -1
  %16 = shl i32 %14, 1
  %17 = lshr i32 %4, %15
  %18 = and i32 %17, 1
  %19 = or disjoint i32 %18, %16
  %20 = icmp ugt i32 %13, 1
  br i1 %20, label %12, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %19, ptr %22, align 4, !tbaa !20
  %23 = load ptr, ptr %1, align 8, !tbaa !30
  %24 = add nsw i32 %7, -1
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds i8, ptr %23, i64 8
  %27 = getelementptr inbounds i8, ptr %23, i64 4
  %28 = getelementptr inbounds i8, ptr %23, i64 32
  %29 = load i8, ptr %26, align 8, !tbaa !12
  br label %30

30:                                               ; preds = %54, %21
  %31 = phi i32 [ %7, %21 ], [ %55, %54 ]
  %32 = phi i8 [ %29, %21 ], [ %56, %54 ]
  %33 = phi i32 [ %25, %21 ], [ %45, %54 ]
  %34 = phi i32 [ 0, %21 ], [ %57, %54 ]
  %35 = shl i8 %32, 1
  store i8 %35, ptr %26, align 8, !tbaa !12
  %36 = load i32, ptr %22, align 4, !tbaa !20
  %37 = and i32 %36, %33
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = or disjoint i8 %35, 1
  store i8 %40, ptr %26, align 8, !tbaa !12
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i8 [ %40, %39 ], [ %35, %30 ]
  %43 = load i32, ptr %27, align 4, !tbaa !13
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %27, align 4, !tbaa !13
  %45 = lshr i32 %33, 1
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  store i32 8, ptr %27, align 4, !tbaa !13
  %48 = load ptr, ptr %28, align 8, !tbaa !6
  %49 = load i32, ptr %23, align 8, !tbaa !14
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %23, align 8, !tbaa !14
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  store i8 %42, ptr %52, align 1, !tbaa !15
  store i8 0, ptr %26, align 8, !tbaa !12
  %53 = load i32, ptr %8, align 4, !tbaa !17
  br label %54

54:                                               ; preds = %47, %41
  %55 = phi i32 [ %31, %41 ], [ %53, %47 ]
  %56 = phi i8 [ %42, %41 ], [ 0, %47 ]
  %57 = add nuw nsw i32 %34, 1
  %58 = icmp slt i32 %57, %55
  br i1 %58, label %30, label %59

59:                                               ; preds = %54, %10
  %60 = phi i32 [ %7, %10 ], [ %55, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnes(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  store i32 6, ptr %3, align 4, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !28
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = shl i32 %8, 2
  %12 = add i32 %11, -4
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = or i32 %14, %12
  br label %16

16:                                               ; preds = %6, %10
  %17 = phi i32 [ %15, %10 ], [ 3, %6 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %17, ptr %18, align 8
  br label %41

19:                                               ; preds = %2
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !28
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %20, i64 %23, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !16
  store i32 %28, ptr %3, align 4, !tbaa !17
  %29 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %20, i64 %23, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !16
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %30, ptr %31, align 8, !tbaa !19
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !29
  %36 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef signext %4, i32 noundef signext %25, i32 noundef signext %35)
  tail call void @exit(i32 noundef signext -1) #9
  unreachable

37:                                               ; preds = %19
  %38 = icmp sgt i32 %28, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %40, align 4, !tbaa !20
  br label %91

41:                                               ; preds = %16, %37
  %42 = phi i32 [ %17, %16 ], [ %30, %37 ]
  %43 = phi i32 [ 6, %16 ], [ %28, %37 ]
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i32 [ %43, %41 ], [ %47, %44 ]
  %46 = phi i32 [ 0, %41 ], [ %51, %44 ]
  %47 = add nsw i32 %45, -1
  %48 = shl i32 %46, 1
  %49 = lshr i32 %42, %47
  %50 = and i32 %49, 1
  %51 = or disjoint i32 %50, %48
  %52 = icmp ugt i32 %45, 1
  br i1 %52, label %44, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %51, ptr %54, align 4, !tbaa !20
  %55 = load ptr, ptr %1, align 8, !tbaa !30
  %56 = add nsw i32 %43, -1
  %57 = shl nuw i32 1, %56
  %58 = getelementptr inbounds i8, ptr %55, i64 8
  %59 = getelementptr inbounds i8, ptr %55, i64 4
  %60 = getelementptr inbounds i8, ptr %55, i64 32
  %61 = load i8, ptr %58, align 8, !tbaa !12
  br label %62

62:                                               ; preds = %86, %53
  %63 = phi i32 [ %43, %53 ], [ %87, %86 ]
  %64 = phi i8 [ %61, %53 ], [ %88, %86 ]
  %65 = phi i32 [ %57, %53 ], [ %77, %86 ]
  %66 = phi i32 [ 0, %53 ], [ %89, %86 ]
  %67 = shl i8 %64, 1
  store i8 %67, ptr %58, align 8, !tbaa !12
  %68 = load i32, ptr %54, align 4, !tbaa !20
  %69 = and i32 %68, %65
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = or disjoint i8 %67, 1
  store i8 %72, ptr %58, align 8, !tbaa !12
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i8 [ %72, %71 ], [ %67, %62 ]
  %75 = load i32, ptr %59, align 4, !tbaa !13
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %59, align 4, !tbaa !13
  %77 = lshr i32 %65, 1
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  store i32 8, ptr %59, align 4, !tbaa !13
  %80 = load ptr, ptr %60, align 8, !tbaa !6
  %81 = load i32, ptr %55, align 8, !tbaa !14
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %55, align 8, !tbaa !14
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  store i8 %74, ptr %84, align 1, !tbaa !15
  store i8 0, ptr %58, align 8, !tbaa !12
  %85 = load i32, ptr %3, align 4, !tbaa !17
  br label %86

86:                                               ; preds = %79, %73
  %87 = phi i32 [ %63, %73 ], [ %85, %79 ]
  %88 = phi i8 [ %74, %73 ], [ 0, %79 ]
  %89 = add nuw nsw i32 %66, 1
  %90 = icmp slt i32 %89, %87
  br i1 %90, label %62, label %91

91:                                               ; preds = %86, %39
  %92 = phi i32 [ %28, %39 ], [ %87, %86 ]
  ret i32 %92
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !21
  %4 = getelementptr inbounds i8, ptr %3, i64 90548
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = add nsw i32 %5, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !29
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %7, i64 %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %15, ptr %16, align 4, !tbaa !17
  %17 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %7, i64 %10, i64 %13
  %18 = load i32, ptr %17, align 4, !tbaa !16
  %19 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %18, ptr %19, align 8, !tbaa !19
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %12, i32 noundef signext %9)
  tail call void @exit(i32 noundef signext -1) #9
  unreachable

23:                                               ; preds = %2
  %24 = icmp sgt i32 %15, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %26, align 4, !tbaa !20
  br label %74

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %30, %27 ], [ %15, %23 ]
  %29 = phi i32 [ %34, %27 ], [ 0, %23 ]
  %30 = add nsw i32 %28, -1
  %31 = shl i32 %29, 1
  %32 = lshr i32 %18, %30
  %33 = and i32 %32, 1
  %34 = or disjoint i32 %33, %31
  %35 = icmp ugt i32 %28, 1
  br i1 %35, label %27, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %34, ptr %37, align 4, !tbaa !20
  %38 = load ptr, ptr %1, align 8, !tbaa !30
  %39 = add nsw i32 %15, -1
  %40 = shl nuw i32 1, %39
  %41 = getelementptr inbounds i8, ptr %38, i64 8
  %42 = getelementptr inbounds i8, ptr %38, i64 4
  %43 = getelementptr inbounds i8, ptr %38, i64 32
  %44 = load i8, ptr %41, align 8, !tbaa !12
  br label %45

45:                                               ; preds = %69, %36
  %46 = phi i32 [ %15, %36 ], [ %70, %69 ]
  %47 = phi i8 [ %44, %36 ], [ %71, %69 ]
  %48 = phi i32 [ %40, %36 ], [ %60, %69 ]
  %49 = phi i32 [ 0, %36 ], [ %72, %69 ]
  %50 = shl i8 %47, 1
  store i8 %50, ptr %41, align 8, !tbaa !12
  %51 = load i32, ptr %37, align 4, !tbaa !20
  %52 = and i32 %51, %48
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = or disjoint i8 %50, 1
  store i8 %55, ptr %41, align 8, !tbaa !12
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi i8 [ %55, %54 ], [ %50, %45 ]
  %58 = load i32, ptr %42, align 4, !tbaa !13
  %59 = add nsw i32 %58, -1
  store i32 %59, ptr %42, align 4, !tbaa !13
  %60 = lshr i32 %48, 1
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  store i32 8, ptr %42, align 4, !tbaa !13
  %63 = load ptr, ptr %43, align 8, !tbaa !6
  %64 = load i32, ptr %38, align 8, !tbaa !14
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %38, align 8, !tbaa !14
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  store i8 %57, ptr %67, align 1, !tbaa !15
  store i8 0, ptr %41, align 8, !tbaa !12
  %68 = load i32, ptr %16, align 4, !tbaa !17
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i32 [ %46, %56 ], [ %68, %62 ]
  %71 = phi i8 [ %57, %56 ], [ 0, %62 ]
  %72 = add nuw nsw i32 %49, 1
  %73 = icmp slt i32 %72, %70
  br i1 %73, label %45, label %74

74:                                               ; preds = %69, %25
  %75 = phi i32 [ %15, %25 ], [ %70, %69 ]
  ret i32 %75
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_TotalZeros(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_TotalZeros.lentab, i64 0, i64 %5, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !16
  store i32 %10, ptr %3, align 4, !tbaa !17
  %11 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_TotalZeros.codtab, i64 0, i64 %5, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %12, ptr %13, align 8, !tbaa !19
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef signext %7)
  tail call void @exit(i32 noundef signext -1) #9
  unreachable

17:                                               ; preds = %2
  %18 = icmp sgt i32 %10, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %20, align 4, !tbaa !20
  br label %68

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %24, %21 ], [ %10, %17 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %17 ]
  %24 = add nsw i32 %22, -1
  %25 = shl i32 %23, 1
  %26 = lshr i32 %12, %24
  %27 = and i32 %26, 1
  %28 = or disjoint i32 %27, %25
  %29 = icmp ugt i32 %22, 1
  br i1 %29, label %21, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %28, ptr %31, align 4, !tbaa !20
  %32 = load ptr, ptr %1, align 8, !tbaa !30
  %33 = add nsw i32 %10, -1
  %34 = shl nuw i32 1, %33
  %35 = getelementptr inbounds i8, ptr %32, i64 8
  %36 = getelementptr inbounds i8, ptr %32, i64 4
  %37 = getelementptr inbounds i8, ptr %32, i64 32
  %38 = load i8, ptr %35, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %63, %30
  %40 = phi i32 [ %10, %30 ], [ %64, %63 ]
  %41 = phi i8 [ %38, %30 ], [ %65, %63 ]
  %42 = phi i32 [ %34, %30 ], [ %54, %63 ]
  %43 = phi i32 [ 0, %30 ], [ %66, %63 ]
  %44 = shl i8 %41, 1
  store i8 %44, ptr %35, align 8, !tbaa !12
  %45 = load i32, ptr %31, align 4, !tbaa !20
  %46 = and i32 %45, %42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = or disjoint i8 %44, 1
  store i8 %49, ptr %35, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i8 [ %49, %48 ], [ %44, %39 ]
  %52 = load i32, ptr %36, align 4, !tbaa !13
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %36, align 4, !tbaa !13
  %54 = lshr i32 %42, 1
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  store i32 8, ptr %36, align 4, !tbaa !13
  %57 = load ptr, ptr %37, align 8, !tbaa !6
  %58 = load i32, ptr %32, align 8, !tbaa !14
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %32, align 8, !tbaa !14
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  store i8 %51, ptr %61, align 1, !tbaa !15
  store i8 0, ptr %35, align 8, !tbaa !12
  %62 = load i32, ptr %3, align 4, !tbaa !17
  br label %63

63:                                               ; preds = %56, %50
  %64 = phi i32 [ %40, %50 ], [ %62, %56 ]
  %65 = phi i8 [ %51, %50 ], [ 0, %56 ]
  %66 = add nuw nsw i32 %43, 1
  %67 = icmp slt i32 %66, %64
  br i1 %67, label %39, label %68

68:                                               ; preds = %63, %19
  %69 = phi i32 [ %10, %19 ], [ %64, %63 ]
  ret i32 %69
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_TotalZerosChromaDC(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !21
  %4 = getelementptr inbounds i8, ptr %3, i64 90548
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = add nsw i32 %5, -1
  %7 = getelementptr inbounds i8, ptr %0, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = sext i32 %6 to i64
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [15 x [16 x i32]]], ptr @writeSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %9, i64 %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !16
  store i32 %15, ptr %7, align 4, !tbaa !17
  %16 = getelementptr inbounds [3 x [15 x [16 x i32]]], ptr @writeSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %9, i64 %10, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %17, ptr %18, align 8, !tbaa !19
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef signext %12)
  tail call void @exit(i32 noundef signext -1) #9
  unreachable

22:                                               ; preds = %2
  %23 = icmp sgt i32 %15, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %25, align 4, !tbaa !20
  br label %73

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %29, %26 ], [ %15, %22 ]
  %28 = phi i32 [ %33, %26 ], [ 0, %22 ]
  %29 = add nsw i32 %27, -1
  %30 = shl i32 %28, 1
  %31 = lshr i32 %17, %29
  %32 = and i32 %31, 1
  %33 = or disjoint i32 %32, %30
  %34 = icmp ugt i32 %27, 1
  br i1 %34, label %26, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %33, ptr %36, align 4, !tbaa !20
  %37 = load ptr, ptr %1, align 8, !tbaa !30
  %38 = add nsw i32 %15, -1
  %39 = shl nuw i32 1, %38
  %40 = getelementptr inbounds i8, ptr %37, i64 8
  %41 = getelementptr inbounds i8, ptr %37, i64 4
  %42 = getelementptr inbounds i8, ptr %37, i64 32
  %43 = load i8, ptr %40, align 8, !tbaa !12
  br label %44

44:                                               ; preds = %68, %35
  %45 = phi i32 [ %15, %35 ], [ %69, %68 ]
  %46 = phi i8 [ %43, %35 ], [ %70, %68 ]
  %47 = phi i32 [ %39, %35 ], [ %59, %68 ]
  %48 = phi i32 [ 0, %35 ], [ %71, %68 ]
  %49 = shl i8 %46, 1
  store i8 %49, ptr %40, align 8, !tbaa !12
  %50 = load i32, ptr %36, align 4, !tbaa !20
  %51 = and i32 %50, %47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = or disjoint i8 %49, 1
  store i8 %54, ptr %40, align 8, !tbaa !12
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi i8 [ %54, %53 ], [ %49, %44 ]
  %57 = load i32, ptr %41, align 4, !tbaa !13
  %58 = add nsw i32 %57, -1
  store i32 %58, ptr %41, align 4, !tbaa !13
  %59 = lshr i32 %47, 1
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  store i32 8, ptr %41, align 4, !tbaa !13
  %62 = load ptr, ptr %42, align 8, !tbaa !6
  %63 = load i32, ptr %37, align 8, !tbaa !14
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %37, align 8, !tbaa !14
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  store i8 %56, ptr %66, align 1, !tbaa !15
  store i8 0, ptr %40, align 8, !tbaa !12
  %67 = load i32, ptr %7, align 4, !tbaa !17
  br label %68

68:                                               ; preds = %61, %55
  %69 = phi i32 [ %45, %55 ], [ %67, %61 ]
  %70 = phi i8 [ %56, %55 ], [ 0, %61 ]
  %71 = add nuw nsw i32 %48, 1
  %72 = icmp slt i32 %71, %69
  br i1 %72, label %44, label %73

73:                                               ; preds = %68, %24
  %74 = phi i32 [ %15, %24 ], [ %69, %68 ]
  ret i32 %74
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_Run(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_Run.lentab, i64 0, i64 %5, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !16
  store i32 %10, ptr %3, align 4, !tbaa !17
  %11 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_Run.codtab, i64 0, i64 %5, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %12, ptr %13, align 8, !tbaa !19
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef signext %7)
  tail call void @exit(i32 noundef signext -1) #9
  unreachable

17:                                               ; preds = %2
  %18 = icmp sgt i32 %10, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %20, align 4, !tbaa !20
  br label %68

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %24, %21 ], [ %10, %17 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %17 ]
  %24 = add nsw i32 %22, -1
  %25 = shl i32 %23, 1
  %26 = lshr i32 %12, %24
  %27 = and i32 %26, 1
  %28 = or disjoint i32 %27, %25
  %29 = icmp ugt i32 %22, 1
  br i1 %29, label %21, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %28, ptr %31, align 4, !tbaa !20
  %32 = load ptr, ptr %1, align 8, !tbaa !30
  %33 = add nsw i32 %10, -1
  %34 = shl nuw i32 1, %33
  %35 = getelementptr inbounds i8, ptr %32, i64 8
  %36 = getelementptr inbounds i8, ptr %32, i64 4
  %37 = getelementptr inbounds i8, ptr %32, i64 32
  %38 = load i8, ptr %35, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %63, %30
  %40 = phi i32 [ %10, %30 ], [ %64, %63 ]
  %41 = phi i8 [ %38, %30 ], [ %65, %63 ]
  %42 = phi i32 [ %34, %30 ], [ %54, %63 ]
  %43 = phi i32 [ 0, %30 ], [ %66, %63 ]
  %44 = shl i8 %41, 1
  store i8 %44, ptr %35, align 8, !tbaa !12
  %45 = load i32, ptr %31, align 4, !tbaa !20
  %46 = and i32 %45, %42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = or disjoint i8 %44, 1
  store i8 %49, ptr %35, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i8 [ %49, %48 ], [ %44, %39 ]
  %52 = load i32, ptr %36, align 4, !tbaa !13
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %36, align 4, !tbaa !13
  %54 = lshr i32 %42, 1
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  store i32 8, ptr %36, align 4, !tbaa !13
  %57 = load ptr, ptr %37, align 8, !tbaa !6
  %58 = load i32, ptr %32, align 8, !tbaa !14
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %32, align 8, !tbaa !14
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  store i8 %51, ptr %61, align 1, !tbaa !15
  store i8 0, ptr %35, align 8, !tbaa !12
  %62 = load i32, ptr %3, align 4, !tbaa !17
  br label %63

63:                                               ; preds = %56, %50
  %64 = phi i32 [ %40, %50 ], [ %62, %56 ]
  %65 = phi i8 [ %51, %50 ], [ 0, %56 ]
  %66 = add nuw nsw i32 %43, 1
  %67 = icmp slt i32 %66, %64
  br i1 %67, label %39, label %68

68:                                               ; preds = %63, %19
  %69 = phi i32 [ %10, %19 ], [ %64, %63 ]
  ret i32 %69
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext i32 @writeSyntaxElement_Level_VLC1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = lshr i32 %4, 31
  %7 = icmp ult i32 %5, 8
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %5, 16
  %10 = getelementptr inbounds i8, ptr %0, i64 12
  %11 = shl nuw i32 %5, 1
  %12 = getelementptr inbounds i8, ptr %0, i64 16
  %13 = select i1 %9, i32 19, i32 28
  %14 = select i1 %9, i32 -16, i32 -32
  %15 = select i1 %9, i32 16, i32 4096
  store i32 %13, ptr %10, align 4, !tbaa !17
  %16 = add i32 %11, %14
  %17 = or i32 %16, %15
  %18 = or disjoint i32 %17, %6
  store i32 %18, ptr %12, align 8, !tbaa !19
  br label %28

19:                                               ; preds = %2
  %20 = shl nuw nsw i32 %5, 1
  %21 = add nsw i32 %6, -1
  %22 = add nsw i32 %21, %20
  %23 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %22, ptr %23, align 4, !tbaa !17
  %24 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 1, ptr %24, align 8, !tbaa !19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %27, align 4, !tbaa !20
  br label %79

28:                                               ; preds = %8, %19
  %29 = phi i32 [ %13, %8 ], [ %22, %19 ]
  %30 = phi i32 [ %18, %8 ], [ 1, %19 ]
  %31 = getelementptr inbounds i8, ptr %0, i64 12
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %29, %28 ], [ %35, %32 ]
  %34 = phi i32 [ 0, %28 ], [ %39, %32 ]
  %35 = add nsw i32 %33, -1
  %36 = shl i32 %34, 1
  %37 = lshr i32 %30, %35
  %38 = and i32 %37, 1
  %39 = or disjoint i32 %38, %36
  %40 = icmp ugt i32 %33, 1
  br i1 %40, label %32, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %39, ptr %42, align 4, !tbaa !20
  %43 = load ptr, ptr %1, align 8, !tbaa !30
  %44 = add nsw i32 %29, -1
  %45 = shl nuw i32 1, %44
  %46 = getelementptr inbounds i8, ptr %43, i64 8
  %47 = getelementptr inbounds i8, ptr %43, i64 4
  %48 = getelementptr inbounds i8, ptr %43, i64 32
  %49 = load i8, ptr %46, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %74, %41
  %51 = phi i32 [ %29, %41 ], [ %75, %74 ]
  %52 = phi i8 [ %49, %41 ], [ %76, %74 ]
  %53 = phi i32 [ %45, %41 ], [ %65, %74 ]
  %54 = phi i32 [ 0, %41 ], [ %77, %74 ]
  %55 = shl i8 %52, 1
  store i8 %55, ptr %46, align 8, !tbaa !12
  %56 = load i32, ptr %42, align 4, !tbaa !20
  %57 = and i32 %56, %53
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = or disjoint i8 %55, 1
  store i8 %60, ptr %46, align 8, !tbaa !12
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i8 [ %60, %59 ], [ %55, %50 ]
  %63 = load i32, ptr %47, align 4, !tbaa !13
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %47, align 4, !tbaa !13
  %65 = lshr i32 %53, 1
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  store i32 8, ptr %47, align 4, !tbaa !13
  %68 = load ptr, ptr %48, align 8, !tbaa !6
  %69 = load i32, ptr %43, align 8, !tbaa !14
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %43, align 8, !tbaa !14
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, ptr %68, i64 %71
  store i8 %62, ptr %72, align 1, !tbaa !15
  store i8 0, ptr %46, align 8, !tbaa !12
  %73 = load i32, ptr %31, align 4, !tbaa !17
  br label %74

74:                                               ; preds = %67, %61
  %75 = phi i32 [ %51, %61 ], [ %73, %67 ]
  %76 = phi i8 [ %62, %61 ], [ 0, %67 ]
  %77 = add nuw nsw i32 %54, 1
  %78 = icmp slt i32 %77, %75
  br i1 %78, label %50, label %79

79:                                               ; preds = %74, %26
  %80 = phi i32 [ %22, %26 ], [ %75, %74 ]
  ret i32 %80
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext i32 @writeSyntaxElement_Level_VLCN(ptr nocapture noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = lshr i32 %5, 31
  %8 = add nsw i32 %1, -1
  %9 = shl i32 15, %8
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = xor i32 %9, -1
  %13 = add i32 %6, %12
  %14 = shl i32 %13, 1
  %15 = or disjoint i32 %14, %7
  %16 = or i32 %15, 4096
  %17 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 28, ptr %17, align 4, !tbaa !17
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %16, ptr %18, align 8, !tbaa !19
  br label %36

19:                                               ; preds = %3
  %20 = add nsw i32 %6, -1
  %21 = shl nsw i32 -1, %8
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = ashr i32 %20, %8
  %25 = add nsw i32 %24, %1
  %26 = add nsw i32 %25, 1
  %27 = shl nuw i32 1, %1
  %28 = shl nuw i32 %23, 1
  %29 = or i32 %27, %28
  %30 = or i32 %29, %7
  %31 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %26, ptr %31, align 4, !tbaa !17
  %32 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %30, ptr %32, align 8, !tbaa !19
  %33 = icmp sgt i32 %25, -1
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 0, ptr %35, align 4, !tbaa !20
  br label %87

36:                                               ; preds = %11, %19
  %37 = phi ptr [ %17, %11 ], [ %31, %19 ]
  %38 = phi i32 [ %16, %11 ], [ %30, %19 ]
  %39 = phi i32 [ 28, %11 ], [ %26, %19 ]
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i32 [ %39, %36 ], [ %43, %40 ]
  %42 = phi i32 [ 0, %36 ], [ %47, %40 ]
  %43 = add nsw i32 %41, -1
  %44 = shl i32 %42, 1
  %45 = lshr i32 %38, %43
  %46 = and i32 %45, 1
  %47 = or disjoint i32 %46, %44
  %48 = icmp ugt i32 %41, 1
  br i1 %48, label %40, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %47, ptr %50, align 4, !tbaa !20
  %51 = load ptr, ptr %2, align 8, !tbaa !30
  %52 = add nsw i32 %39, -1
  %53 = shl nuw i32 1, %52
  %54 = getelementptr inbounds i8, ptr %51, i64 8
  %55 = getelementptr inbounds i8, ptr %51, i64 4
  %56 = getelementptr inbounds i8, ptr %51, i64 32
  %57 = load i8, ptr %54, align 8, !tbaa !12
  br label %58

58:                                               ; preds = %82, %49
  %59 = phi i32 [ %39, %49 ], [ %83, %82 ]
  %60 = phi i8 [ %57, %49 ], [ %84, %82 ]
  %61 = phi i32 [ %53, %49 ], [ %73, %82 ]
  %62 = phi i32 [ 0, %49 ], [ %85, %82 ]
  %63 = shl i8 %60, 1
  store i8 %63, ptr %54, align 8, !tbaa !12
  %64 = load i32, ptr %50, align 4, !tbaa !20
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = or disjoint i8 %63, 1
  store i8 %68, ptr %54, align 8, !tbaa !12
  br label %69

69:                                               ; preds = %67, %58
  %70 = phi i8 [ %68, %67 ], [ %63, %58 ]
  %71 = load i32, ptr %55, align 4, !tbaa !13
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %55, align 4, !tbaa !13
  %73 = lshr i32 %61, 1
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  store i32 8, ptr %55, align 4, !tbaa !13
  %76 = load ptr, ptr %56, align 8, !tbaa !6
  %77 = load i32, ptr %51, align 8, !tbaa !14
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %51, align 8, !tbaa !14
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  store i8 %70, ptr %80, align 1, !tbaa !15
  store i8 0, ptr %54, align 8, !tbaa !12
  %81 = load i32, ptr %37, align 4, !tbaa !17
  br label %82

82:                                               ; preds = %75, %69
  %83 = phi i32 [ %59, %69 ], [ %81, %75 ]
  %84 = phi i8 [ %70, %69 ], [ 0, %75 ]
  %85 = add nuw nsw i32 %62, 1
  %86 = icmp slt i32 %85, %83
  br i1 %86, label %58, label %87

87:                                               ; preds = %82, %34
  %88 = phi i32 [ %26, %34 ], [ %83, %82 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @writeVlcByteAlign(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i8, ptr %6, align 8, !tbaa !12
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, %3
  %10 = sub nsw i32 8, %3
  %11 = lshr i32 255, %10
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %6, align 8, !tbaa !12
  %14 = load ptr, ptr @stats, align 8, !tbaa !21
  %15 = getelementptr inbounds i8, ptr %14, i64 1336
  %16 = load ptr, ptr @img, align 8, !tbaa !21
  %17 = getelementptr inbounds i8, ptr %16, i64 24
  %18 = load i32, ptr %17, align 8, !tbaa !35
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], ptr %15, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !16
  %22 = add nsw i32 %21, %3
  store i32 %22, ptr %20, align 4, !tbaa !16
  %23 = getelementptr inbounds i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i32, ptr %0, align 8, !tbaa !14
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %0, align 8, !tbaa !14
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  store i8 %13, ptr %28, align 1, !tbaa !15
  store i32 8, ptr %2, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %5, %1
  ret void
}

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 32}
!7 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 21, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !9, i64 8}
!13 = !{!7, !8, i64 4}
!14 = !{!7, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !8, i64 12}
!18 = !{!"syntaxelement", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !11, i64 40}
!19 = !{!18, !8, i64 16}
!20 = !{!18, !8, i64 20}
!21 = !{!11, !11, i64 0}
!22 = !{!23, !8, i64 90548}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !24, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !9, i64 184, !9, i64 4792, !9, i64 7352, !9, i64 8504, !9, i64 12600, !9, i64 13112, !11, i64 14136, !11, i64 14144, !9, i64 14152, !9, i64 18248, !9, i64 21320, !9, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !9, i64 31584, !11, i64 89184, !11, i64 89192, !8, i64 89200, !8, i64 89204, !8, i64 89208, !8, i64 89212, !9, i64 89216, !8, i64 89280, !8, i64 89284, !8, i64 89288, !8, i64 89292, !8, i64 89296, !25, i64 89304, !8, i64 89312, !8, i64 89316, !8, i64 89320, !8, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !9, i64 89360, !8, i64 89392, !8, i64 89396, !8, i64 89400, !8, i64 89404, !8, i64 89408, !8, i64 89412, !8, i64 89416, !8, i64 89420, !9, i64 89424, !8, i64 90192, !8, i64 90196, !8, i64 90200, !8, i64 90204, !8, i64 90208, !8, i64 90212, !8, i64 90216, !8, i64 90220, !8, i64 90224, !8, i64 90228, !8, i64 90232, !8, i64 90236, !8, i64 90240, !9, i64 90244, !8, i64 90248, !8, i64 90252, !9, i64 90256, !8, i64 90264, !8, i64 90268, !8, i64 90272, !8, i64 90276, !8, i64 90280, !8, i64 90284, !8, i64 90288, !8, i64 90292, !8, i64 90296, !8, i64 90300, !8, i64 90304, !8, i64 90308, !8, i64 90312, !8, i64 90316, !8, i64 90320, !8, i64 90324, !8, i64 90328, !11, i64 90336, !8, i64 90344, !8, i64 90348, !8, i64 90352, !8, i64 90356, !8, i64 90360, !25, i64 90368, !8, i64 90376, !8, i64 90380, !8, i64 90384, !8, i64 90388, !8, i64 90392, !8, i64 90396, !8, i64 90400, !11, i64 90408, !8, i64 90416, !8, i64 90420, !8, i64 90424, !8, i64 90428, !8, i64 90432, !8, i64 90436, !8, i64 90440, !8, i64 90444, !8, i64 90448, !8, i64 90452, !8, i64 90456, !8, i64 90460, !8, i64 90464, !8, i64 90468, !8, i64 90472, !8, i64 90476, !8, i64 90480, !8, i64 90484, !8, i64 90488, !8, i64 90492, !8, i64 90496, !8, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !8, i64 90528, !8, i64 90532, !8, i64 90536, !8, i64 90540, !8, i64 90544, !8, i64 90548, !8, i64 90552, !8, i64 90556, !8, i64 90560, !9, i64 90564, !8, i64 90572, !8, i64 90576, !8, i64 90580, !26, i64 90584, !8, i64 90588, !8, i64 90592}
!24 = !{!"float", !9, i64 0}
!25 = !{!"double", !9, i64 0}
!26 = !{!"short", !9, i64 0}
!27 = !{!18, !11, i64 32}
!28 = !{!18, !8, i64 4}
!29 = !{!18, !8, i64 8}
!30 = !{!31, !11, i64 0}
!31 = !{!"datapartition", !11, i64 0, !32, i64 8, !11, i64 104}
!32 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !8, i64 92}
!33 = !{!18, !8, i64 0}
!34 = !{!7, !8, i64 40}
!35 = !{!23, !8, i64 24}
