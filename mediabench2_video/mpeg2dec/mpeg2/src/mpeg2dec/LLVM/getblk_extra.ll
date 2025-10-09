; ModuleID = 'getblk.c'
source_filename = "getblk.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.DCTtab = type { i8, i8, i8 }
%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@ld = external dso_local local_unnamed_addr global ptr, align 8
@Fault_Flag = external dso_local local_unnamed_addr global i32, align 4
@picture_coding_type = external dso_local local_unnamed_addr global i32, align 4
@DCTtabnext = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab0 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab1 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab2 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab3 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab4 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab5 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab6 = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@Quiet_Flag = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (intra)\0A\00", align 1
@scan = external dso_local local_unnamed_addr global [2 x [64 x i8]], align 1
@DCTtabfirst = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (inter)\0A\00", align 1
@base = external dso_local global %struct.layer_data, align 8
@enhan = external dso_local global %struct.layer_data, align 8
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@intra_dc_precision = external dso_local local_unnamed_addr global i32, align 4
@intra_vlc_format = external dso_local local_unnamed_addr global i32, align 4
@DCTtab0a = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@DCTtab1a = external dso_local local_unnamed_addr global [0 x %struct.DCTtab], align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (intra2)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (inter2)\0A\00", align 1
@str = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\00", align 1
@str.9 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\00", align 1
@str.10 = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\00", align 1
@str.12 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\00", align 1
@str.13 = private unnamed_addr constant [45 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\00", align 1

; Function Attrs: nounwind
define dso_local void @Decode_MPEG1_Intra_Block(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ld, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 3176
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [12 x [64 x i16]], ptr %4, i64 0, i64 %5
  %7 = icmp slt i32 %0, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call signext i32 @Get_Luma_DC_dct_diff() #4
  %10 = load i32, ptr %1, align 4, !tbaa !10
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr %1, align 4, !tbaa !10
  br label %23

12:                                               ; preds = %2
  %13 = icmp eq i32 %0, 4
  %14 = tail call signext i32 @Get_Chroma_DC_dct_diff() #4
  br i1 %13, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %1, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !10
  %18 = add nsw i32 %17, %14
  store i32 %18, ptr %16, align 4, !tbaa !10
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds i8, ptr %1, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !10
  %22 = add nsw i32 %21, %14
  store i32 %22, ptr %20, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %15, %19, %8
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ], [ %11, %8 ]
  %25 = trunc i32 %24 to i16
  %26 = shl i16 %25, 3
  store i16 %26, ptr %6, align 2, !tbaa !12
  %27 = load i32, ptr @Fault_Flag, align 4, !tbaa !10
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr @picture_coding_type, align 4
  %30 = icmp eq i32 %29, 4
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %153, label %32

32:                                               ; preds = %23, %148
  %33 = phi i32 [ %151, %148 ], [ 1, %23 ]
  %34 = tail call signext i32 @Show_Bits(i32 noundef signext 16) #4
  %35 = icmp ugt i32 %34, 16383
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = lshr i32 %34, 12
  %38 = add nsw i32 %37, -4
  br label %78

39:                                               ; preds = %32
  %40 = icmp ugt i32 %34, 1023
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = lshr i32 %34, 8
  %43 = add nsw i32 %42, -4
  br label %78

44:                                               ; preds = %39
  %45 = icmp ugt i32 %34, 511
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = lshr i32 %34, 6
  %48 = add nsw i32 %47, -8
  br label %78

49:                                               ; preds = %44
  %50 = icmp ugt i32 %34, 255
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = lshr i32 %34, 4
  %53 = add nsw i32 %52, -16
  br label %78

54:                                               ; preds = %49
  %55 = icmp ugt i32 %34, 127
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = lshr i32 %34, 3
  %58 = add nsw i32 %57, -16
  br label %78

59:                                               ; preds = %54
  %60 = icmp ugt i32 %34, 63
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = lshr i32 %34, 2
  %63 = add nsw i32 %62, -16
  br label %78

64:                                               ; preds = %59
  %65 = icmp ugt i32 %34, 31
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = lshr i32 %34, 1
  %68 = add nsw i32 %67, -16
  br label %78

69:                                               ; preds = %64
  %70 = icmp ugt i32 %34, 15
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = add nsw i32 %34, -16
  br label %78

73:                                               ; preds = %69
  %74 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %73
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %152

78:                                               ; preds = %41, %51, %61, %71, %66, %56, %46, %36
  %79 = phi i32 [ %43, %41 ], [ %53, %51 ], [ %63, %61 ], [ %72, %71 ], [ %68, %66 ], [ %58, %56 ], [ %48, %46 ], [ %38, %36 ]
  %80 = phi ptr [ @DCTtab0, %41 ], [ @DCTtab2, %51 ], [ @DCTtab4, %61 ], [ @DCTtab6, %71 ], [ @DCTtab5, %66 ], [ @DCTtab3, %56 ], [ @DCTtab1, %46 ], [ @DCTtabnext, %36 ]
  %81 = zext nneg i32 %79 to i64
  %82 = getelementptr inbounds [0 x %struct.DCTtab], ptr %80, i64 0, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 2
  %84 = load i8, ptr %83, align 1, !tbaa !14
  %85 = zext i8 %84 to i32
  tail call void @Flush_Buffer(i32 noundef signext %85) #4
  %86 = load i8, ptr %82, align 1, !tbaa !16
  switch i8 %86, label %103 [
    i8 64, label %153
    i8 65, label %87
  ]

87:                                               ; preds = %78
  %88 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  %89 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  switch i32 %89, label %95 [
    i32 0, label %90
    i32 128, label %92
  ]

90:                                               ; preds = %87
  %91 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  br label %99

92:                                               ; preds = %87
  %93 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %94 = add i32 %93, -256
  br label %99

95:                                               ; preds = %87
  %96 = icmp sgt i32 %89, 128
  %97 = add nsw i32 %89, -256
  %98 = select i1 %96, i32 %97, i32 %89
  br label %99

99:                                               ; preds = %95, %92, %90
  %100 = phi i32 [ %91, %90 ], [ %94, %92 ], [ %98, %95 ]
  %101 = lshr i32 %100, 31
  %102 = tail call i32 @llvm.abs.i32(i32 %100, i1 true)
  br label %109

103:                                              ; preds = %78
  %104 = zext i8 %86 to i32
  %105 = getelementptr inbounds i8, ptr %82, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !17
  %107 = zext i8 %106 to i32
  %108 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  br label %109

109:                                              ; preds = %99, %103
  %110 = phi i32 [ %108, %103 ], [ %101, %99 ]
  %111 = phi i32 [ %104, %103 ], [ %88, %99 ]
  %112 = phi i32 [ %107, %103 ], [ %102, %99 ]
  %113 = add i32 %111, %33
  %114 = icmp sgt i32 %113, 63
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %115
  %119 = load ptr, ptr @stderr, align 8, !tbaa !6
  %120 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 42, i64 1, ptr %119) #5
  br label %152

121:                                              ; preds = %109
  %122 = sext i32 %113 to i64
  %123 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !18
  %125 = load ptr, ptr @ld, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 3168
  %127 = load i32, ptr %126, align 8, !tbaa !19
  %128 = mul nsw i32 %127, %112
  %129 = getelementptr inbounds i8, ptr %125, i64 2104
  %130 = zext i8 %124 to i64
  %131 = getelementptr inbounds [64 x i32], ptr %129, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !10
  %133 = mul nsw i32 %128, %132
  %134 = icmp ult i32 %133, 8
  %135 = ashr i32 %133, 3
  %136 = add nsw i32 %135, -1
  %137 = or i32 %136, 1
  %138 = select i1 %134, i32 0, i32 %137
  %139 = icmp eq i32 %110, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %121
  %141 = tail call i32 @llvm.smin.i32(i32 %138, i32 2047)
  %142 = trunc i32 %141 to i16
  br label %148

143:                                              ; preds = %121
  %144 = icmp sgt i32 %138, 2048
  %145 = trunc i32 %138 to i16
  %146 = sub i16 0, %145
  %147 = select i1 %144, i16 -2048, i16 %146
  br label %148

148:                                              ; preds = %140, %143
  %149 = phi i16 [ %142, %140 ], [ %147, %143 ]
  %150 = getelementptr inbounds i16, ptr %6, i64 %130
  store i16 %149, ptr %150, align 2
  %151 = add nsw i32 %113, 1
  br label %32

152:                                              ; preds = %115, %118, %73, %76
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !10
  br label %153

153:                                              ; preds = %78, %152, %23
  ret void
}

declare dso_local signext i32 @Get_Luma_DC_dct_diff() local_unnamed_addr #1

declare dso_local signext i32 @Get_Chroma_DC_dct_diff() local_unnamed_addr #1

declare dso_local signext i32 @Show_Bits(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @Flush_Buffer(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @Get_Bits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @Decode_MPEG1_Non_Intra_Block(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 3176
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [12 x [64 x i16]], ptr %3, i64 0, i64 %4
  br label %6

6:                                                ; preds = %141, %1
  %7 = phi i32 [ 0, %1 ], [ %144, %141 ]
  %8 = tail call signext i32 @Show_Bits(i32 noundef signext 16) #4
  %9 = icmp ugt i32 %8, 16383
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, 0
  %12 = lshr i32 %8, 12
  %13 = add nsw i32 %12, -4
  %14 = zext nneg i32 %13 to i64
  br i1 %11, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabfirst, i64 0, i64 %14
  br label %72

17:                                               ; preds = %10
  %18 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %14
  br label %72

19:                                               ; preds = %6
  %20 = icmp ugt i32 %8, 1023
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = lshr i32 %8, 8
  %23 = add nsw i32 %22, -4
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %24
  br label %72

26:                                               ; preds = %19
  %27 = icmp ugt i32 %8, 511
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = lshr i32 %8, 6
  %30 = add nsw i32 %29, -8
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %31
  br label %72

33:                                               ; preds = %26
  %34 = icmp ugt i32 %8, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = lshr i32 %8, 4
  %37 = add nsw i32 %36, -16
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %38
  br label %72

40:                                               ; preds = %33
  %41 = icmp ugt i32 %8, 127
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = lshr i32 %8, 3
  %44 = add nsw i32 %43, -16
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %45
  br label %72

47:                                               ; preds = %40
  %48 = icmp ugt i32 %8, 63
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = lshr i32 %8, 2
  %51 = add nsw i32 %50, -16
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %52
  br label %72

54:                                               ; preds = %47
  %55 = icmp ugt i32 %8, 31
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = lshr i32 %8, 1
  %58 = add nsw i32 %57, -16
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %59
  br label %72

61:                                               ; preds = %54
  %62 = icmp ugt i32 %8, 15
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = add nsw i32 %8, -16
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %65
  br label %72

67:                                               ; preds = %61
  %68 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %145

70:                                               ; preds = %67
  %71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %145

72:                                               ; preds = %21, %35, %49, %63, %56, %42, %28, %15, %17
  %73 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %25, %21 ], [ %32, %28 ], [ %39, %35 ], [ %46, %42 ], [ %53, %49 ], [ %60, %56 ], [ %66, %63 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !14
  %76 = zext i8 %75 to i32
  tail call void @Flush_Buffer(i32 noundef signext %76) #4
  %77 = load i8, ptr %73, align 1, !tbaa !16
  switch i8 %77, label %94 [
    i8 64, label %146
    i8 65, label %78
  ]

78:                                               ; preds = %72
  %79 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  %80 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  switch i32 %80, label %86 [
    i32 0, label %81
    i32 128, label %83
  ]

81:                                               ; preds = %78
  %82 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  br label %90

83:                                               ; preds = %78
  %84 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %85 = add i32 %84, -256
  br label %90

86:                                               ; preds = %78
  %87 = icmp sgt i32 %80, 128
  %88 = add nsw i32 %80, -256
  %89 = select i1 %87, i32 %88, i32 %80
  br label %90

90:                                               ; preds = %86, %83, %81
  %91 = phi i32 [ %82, %81 ], [ %85, %83 ], [ %89, %86 ]
  %92 = lshr i32 %91, 31
  %93 = tail call i32 @llvm.abs.i32(i32 %91, i1 true)
  br label %100

94:                                               ; preds = %72
  %95 = zext i8 %77 to i32
  %96 = getelementptr inbounds i8, ptr %73, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !17
  %98 = zext i8 %97 to i32
  %99 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  br label %100

100:                                              ; preds = %90, %94
  %101 = phi i32 [ %99, %94 ], [ %92, %90 ]
  %102 = phi i32 [ %95, %94 ], [ %79, %90 ]
  %103 = phi i32 [ %98, %94 ], [ %93, %90 ]
  %104 = add i32 %102, %7
  %105 = icmp sgt i32 %104, 63
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %145

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 8, !tbaa !6
  %111 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr %110) #5
  br label %145

112:                                              ; preds = %100
  %113 = sext i32 %104 to i64
  %114 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !18
  %116 = shl nuw i32 %103, 1
  %117 = or disjoint i32 %116, 1
  %118 = load ptr, ptr @ld, align 8, !tbaa !6
  %119 = getelementptr inbounds i8, ptr %118, i64 3168
  %120 = load i32, ptr %119, align 8, !tbaa !19
  %121 = mul nsw i32 %120, %117
  %122 = getelementptr inbounds i8, ptr %118, i64 2360
  %123 = zext i8 %115 to i64
  %124 = getelementptr inbounds [64 x i32], ptr %122, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !10
  %126 = mul nsw i32 %121, %125
  %127 = icmp ult i32 %126, 16
  %128 = ashr i32 %126, 4
  %129 = add nsw i32 %128, -1
  %130 = or i32 %129, 1
  %131 = select i1 %127, i32 0, i32 %130
  %132 = icmp eq i32 %101, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %112
  %134 = tail call i32 @llvm.smin.i32(i32 %131, i32 2047)
  %135 = trunc i32 %134 to i16
  br label %141

136:                                              ; preds = %112
  %137 = icmp sgt i32 %131, 2048
  %138 = trunc i32 %131 to i16
  %139 = sub i16 0, %138
  %140 = select i1 %137, i16 -2048, i16 %139
  br label %141

141:                                              ; preds = %133, %136
  %142 = phi i16 [ %135, %133 ], [ %140, %136 ]
  %143 = getelementptr inbounds i16, ptr %5, i64 %123
  store i16 %142, ptr %143, align 2
  %144 = add nsw i32 %104, 1
  br label %6

145:                                              ; preds = %106, %109, %67, %70
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !10
  br label %146

146:                                              ; preds = %72, %145
  ret void
}

; Function Attrs: nounwind
define dso_local void @Decode_MPEG2_Intra_Block(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ld, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 3148
  %5 = load i32, ptr %4, align 4, !tbaa !21
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @base, ptr %3
  %8 = getelementptr inbounds i8, ptr %7, i64 3176
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [12 x [64 x i16]], ptr %8, i64 0, i64 %9
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !21
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !22
  %15 = icmp slt i32 %14, 64
  %16 = select i1 %15, ptr @enhan, ptr @base
  store ptr %16, ptr @ld, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %13, %2
  %18 = icmp slt i32 %0, 4
  %19 = load i32, ptr @chroma_format, align 4
  %20 = icmp eq i32 %19, 1
  %21 = select i1 %18, i1 true, i1 %20
  %22 = select i1 %21, i64 2104, i64 2616
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  br i1 %18, label %24, label %28

24:                                               ; preds = %17
  %25 = tail call signext i32 @Get_Luma_DC_dct_diff() #4
  %26 = load i32, ptr %1, align 4, !tbaa !10
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %1, align 4, !tbaa !10
  br label %40

28:                                               ; preds = %17
  %29 = and i32 %0, 1
  %30 = icmp eq i32 %29, 0
  %31 = tail call signext i32 @Get_Chroma_DC_dct_diff() #4
  br i1 %30, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %1, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %35 = add nsw i32 %34, %31
  store i32 %35, ptr %33, align 4, !tbaa !10
  br label %40

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8, ptr %1, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !10
  %39 = add nsw i32 %38, %31
  store i32 %39, ptr %37, align 4, !tbaa !10
  br label %40

40:                                               ; preds = %32, %36, %24
  %41 = phi i32 [ %27, %24 ], [ %35, %32 ], [ %39, %36 ]
  %42 = load i32, ptr @Fault_Flag, align 4, !tbaa !10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %191

44:                                               ; preds = %40
  %45 = load i32, ptr @intra_dc_precision, align 4, !tbaa !10
  %46 = sub nsw i32 3, %45
  %47 = shl i32 %41, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %10, align 2, !tbaa !12
  %49 = getelementptr inbounds i8, ptr %7, i64 3156
  %50 = getelementptr inbounds i8, ptr %7, i64 3168
  br label %51

51:                                               ; preds = %188, %44
  %52 = phi i32 [ 0, %44 ], [ %180, %188 ]
  %53 = phi i32 [ 1, %44 ], [ %189, %188 ]
  %54 = tail call signext i32 @Show_Bits(i32 noundef signext 16) #4
  %55 = icmp ult i32 %54, 16384
  %56 = load i32, ptr @intra_vlc_format, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = lshr i32 %54, 12
  %61 = add nsw i32 %60, -4
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %62
  br label %123

64:                                               ; preds = %51
  %65 = icmp ugt i32 %54, 1023
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = lshr i32 %54, 8
  %68 = add nsw i32 %67, -4
  %69 = zext nneg i32 %68 to i64
  br i1 %57, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0a, i64 0, i64 %69
  br label %123

72:                                               ; preds = %66
  %73 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %69
  br label %123

74:                                               ; preds = %64
  %75 = icmp ugt i32 %54, 511
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = lshr i32 %54, 6
  %78 = add nsw i32 %77, -8
  %79 = zext nneg i32 %78 to i64
  br i1 %57, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1a, i64 0, i64 %79
  br label %123

82:                                               ; preds = %76
  %83 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %79
  br label %123

84:                                               ; preds = %74
  %85 = icmp ugt i32 %54, 255
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = lshr i32 %54, 4
  %88 = add nsw i32 %87, -16
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %89
  br label %123

91:                                               ; preds = %84
  %92 = icmp ugt i32 %54, 127
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = lshr i32 %54, 3
  %95 = add nsw i32 %94, -16
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %96
  br label %123

98:                                               ; preds = %91
  %99 = icmp ugt i32 %54, 63
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = lshr i32 %54, 2
  %102 = add nsw i32 %101, -16
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %103
  br label %123

105:                                              ; preds = %98
  %106 = icmp ugt i32 %54, 31
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = lshr i32 %54, 1
  %109 = add nsw i32 %108, -16
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %110
  br label %123

112:                                              ; preds = %105
  %113 = icmp ugt i32 %54, 15
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = add nsw i32 %54, -16
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %116
  br label %123

118:                                              ; preds = %112
  %119 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %190

121:                                              ; preds = %118
  %122 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %190

123:                                              ; preds = %72, %70, %86, %100, %114, %107, %93, %80, %82, %59
  %124 = phi ptr [ %71, %70 ], [ %73, %72 ], [ %81, %80 ], [ %83, %82 ], [ %90, %86 ], [ %97, %93 ], [ %104, %100 ], [ %111, %107 ], [ %117, %114 ], [ %63, %59 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 2
  %126 = load i8, ptr %125, align 1, !tbaa !14
  %127 = zext i8 %126 to i32
  tail call void @Flush_Buffer(i32 noundef signext %127) #4
  %128 = load i8, ptr %124, align 1, !tbaa !16
  switch i8 %128, label %144 [
    i8 64, label %191
    i8 65, label %129
  ]

129:                                              ; preds = %123
  %130 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  %131 = tail call signext i32 @Get_Bits(i32 noundef signext 12) #4
  %132 = and i32 %131, 2047
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %190

137:                                              ; preds = %134
  %138 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  br label %190

139:                                              ; preds = %129
  %140 = icmp sgt i32 %131, 2047
  %141 = zext i1 %140 to i32
  %142 = sub nsw i32 4096, %131
  %143 = select i1 %140, i32 %142, i32 %131
  br label %150

144:                                              ; preds = %123
  %145 = zext i8 %128 to i32
  %146 = getelementptr inbounds i8, ptr %124, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !17
  %148 = zext i8 %147 to i32
  %149 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  br label %150

150:                                              ; preds = %139, %144
  %151 = phi i32 [ %149, %144 ], [ %141, %139 ]
  %152 = phi i32 [ %145, %144 ], [ %130, %139 ]
  %153 = phi i32 [ %148, %144 ], [ %143, %139 ]
  %154 = add nsw i32 %152, %53
  %155 = icmp sgt i32 %154, 63
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %156
  %160 = load ptr, ptr @stderr, align 8, !tbaa !6
  %161 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 43, i64 1, ptr %160) #5
  br label %190

162:                                              ; preds = %150
  %163 = load i32, ptr %49, align 4, !tbaa !23
  %164 = sext i32 %163 to i64
  %165 = sext i32 %154 to i64
  %166 = getelementptr inbounds [2 x [64 x i8]], ptr @scan, i64 0, i64 %164, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !18
  %168 = load i32, ptr %50, align 8, !tbaa !19
  %169 = mul nsw i32 %168, %153
  %170 = zext i8 %167 to i64
  %171 = getelementptr inbounds i32, ptr %23, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !10
  %173 = mul nsw i32 %169, %172
  %174 = ashr i32 %173, 4
  %175 = icmp eq i32 %151, 0
  %176 = sub nsw i32 0, %174
  %177 = select i1 %175, i32 %174, i32 %176
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds i16, ptr %10, i64 %170
  store i16 %178, ptr %179, align 2, !tbaa !12
  %180 = add nuw nsw i32 %52, 1
  %181 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !21
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %162
  %184 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !22
  %185 = add i32 %184, -64
  %186 = icmp eq i32 %52, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store ptr @enhan, ptr @ld, align 8, !tbaa !6
  br label %188

188:                                              ; preds = %162, %183, %187
  %189 = add nsw i32 %154, 1
  br label %51

190:                                              ; preds = %156, %159, %134, %137, %118, %121
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !10
  br label %191

191:                                              ; preds = %123, %190, %40
  ret void
}

; Function Attrs: nounwind
define dso_local void @Decode_MPEG2_Non_Intra_Block(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ld, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 3148
  %4 = load i32, ptr %3, align 4, !tbaa !21
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, ptr @base, ptr %2
  %7 = getelementptr inbounds i8, ptr %6, i64 3176
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [12 x [64 x i16]], ptr %7, i64 0, i64 %8
  %10 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !21
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !22
  %14 = icmp slt i32 %13, 64
  %15 = select i1 %14, ptr @enhan, ptr @base
  store ptr %15, ptr @ld, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %12, %1
  %17 = icmp slt i32 %0, 4
  %18 = load i32, ptr @chroma_format, align 4
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %17, i1 true, i1 %19
  %21 = select i1 %20, i64 2360, i64 2872
  %22 = getelementptr inbounds i8, ptr %6, i64 %21
  %23 = getelementptr inbounds i8, ptr %6, i64 3156
  %24 = getelementptr inbounds i8, ptr %6, i64 3168
  br label %25

25:                                               ; preds = %159, %16
  %26 = phi i32 [ 0, %16 ], [ %151, %159 ]
  %27 = phi i32 [ 0, %16 ], [ %160, %159 ]
  %28 = tail call signext i32 @Show_Bits(i32 noundef signext 16) #4
  %29 = icmp ugt i32 %28, 16383
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = icmp eq i32 %27, 0
  %32 = lshr i32 %28, 12
  %33 = add nsw i32 %32, -4
  %34 = zext nneg i32 %33 to i64
  br i1 %31, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabfirst, i64 0, i64 %34
  br label %92

37:                                               ; preds = %30
  %38 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %34
  br label %92

39:                                               ; preds = %25
  %40 = icmp ugt i32 %28, 1023
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = lshr i32 %28, 8
  %43 = add nsw i32 %42, -4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %44
  br label %92

46:                                               ; preds = %39
  %47 = icmp ugt i32 %28, 511
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = lshr i32 %28, 6
  %50 = add nsw i32 %49, -8
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %51
  br label %92

53:                                               ; preds = %46
  %54 = icmp ugt i32 %28, 255
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = lshr i32 %28, 4
  %57 = add nsw i32 %56, -16
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %58
  br label %92

60:                                               ; preds = %53
  %61 = icmp ugt i32 %28, 127
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = lshr i32 %28, 3
  %64 = add nsw i32 %63, -16
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %65
  br label %92

67:                                               ; preds = %60
  %68 = icmp ugt i32 %28, 63
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = lshr i32 %28, 2
  %71 = add nsw i32 %70, -16
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %72
  br label %92

74:                                               ; preds = %67
  %75 = icmp ugt i32 %28, 31
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = lshr i32 %28, 1
  %78 = add nsw i32 %77, -16
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %79
  br label %92

81:                                               ; preds = %74
  %82 = icmp ugt i32 %28, 15
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = add nsw i32 %28, -16
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %85
  br label %92

87:                                               ; preds = %81
  %88 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %161

90:                                               ; preds = %87
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %161

92:                                               ; preds = %41, %55, %69, %83, %76, %62, %48, %35, %37
  %93 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %45, %41 ], [ %52, %48 ], [ %59, %55 ], [ %66, %62 ], [ %73, %69 ], [ %80, %76 ], [ %86, %83 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !14
  %96 = zext i8 %95 to i32
  tail call void @Flush_Buffer(i32 noundef signext %96) #4
  %97 = load i8, ptr %93, align 1, !tbaa !16
  switch i8 %97, label %113 [
    i8 64, label %162
    i8 65, label %98
  ]

98:                                               ; preds = %92
  %99 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  %100 = tail call signext i32 @Get_Bits(i32 noundef signext 12) #4
  %101 = and i32 %100, 2047
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %161

106:                                              ; preds = %103
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  br label %161

108:                                              ; preds = %98
  %109 = icmp sgt i32 %100, 2047
  %110 = zext i1 %109 to i32
  %111 = sub nsw i32 4096, %100
  %112 = select i1 %109, i32 %111, i32 %100
  br label %119

113:                                              ; preds = %92
  %114 = zext i8 %97 to i32
  %115 = getelementptr inbounds i8, ptr %93, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !17
  %117 = zext i8 %116 to i32
  %118 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  br label %119

119:                                              ; preds = %108, %113
  %120 = phi i32 [ %118, %113 ], [ %110, %108 ]
  %121 = phi i32 [ %114, %113 ], [ %99, %108 ]
  %122 = phi i32 [ %117, %113 ], [ %112, %108 ]
  %123 = add nsw i32 %121, %27
  %124 = icmp sgt i32 %123, 63
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, ptr @Quiet_Flag, align 4, !tbaa !10
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %125
  %129 = load ptr, ptr @stderr, align 8, !tbaa !6
  %130 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 43, i64 1, ptr %129) #5
  br label %161

131:                                              ; preds = %119
  %132 = load i32, ptr %23, align 4, !tbaa !23
  %133 = sext i32 %132 to i64
  %134 = sext i32 %123 to i64
  %135 = getelementptr inbounds [2 x [64 x i8]], ptr @scan, i64 0, i64 %133, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !18
  %137 = shl i32 %122, 1
  %138 = or disjoint i32 %137, 1
  %139 = load i32, ptr %24, align 8, !tbaa !19
  %140 = mul nsw i32 %139, %138
  %141 = zext i8 %136 to i64
  %142 = getelementptr inbounds i32, ptr %22, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !10
  %144 = mul nsw i32 %140, %143
  %145 = ashr i32 %144, 5
  %146 = icmp eq i32 %120, 0
  %147 = sub nsw i32 0, %145
  %148 = select i1 %146, i32 %145, i32 %147
  %149 = trunc i32 %148 to i16
  %150 = getelementptr inbounds i16, ptr %9, i64 %141
  store i16 %149, ptr %150, align 2, !tbaa !12
  %151 = add nuw nsw i32 %26, 1
  %152 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !21
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %159

154:                                              ; preds = %131
  %155 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !22
  %156 = add i32 %155, -64
  %157 = icmp eq i32 %26, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store ptr @enhan, ptr @ld, align 8, !tbaa !6
  br label %159

159:                                              ; preds = %131, %154, %158
  %160 = add nsw i32 %123, 1
  br label %25

161:                                              ; preds = %125, %128, %103, %106, %87, %90
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !10
  br label %162

162:                                              ; preds = %92, %161
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
!14 = !{!15, !8, i64 2}
!15 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2}
!16 = !{!15, !8, i64 0}
!17 = !{!15, !8, i64 1}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !11, i64 3168}
!20 = !{!"layer_data", !11, i64 0, !8, i64 4, !7, i64 2056, !8, i64 2064, !11, i64 2080, !7, i64 2088, !11, i64 2096, !11, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !11, i64 3128, !11, i64 3132, !11, i64 3136, !11, i64 3140, !11, i64 3144, !11, i64 3148, !11, i64 3152, !11, i64 3156, !11, i64 3160, !11, i64 3164, !11, i64 3168, !11, i64 3172, !8, i64 3176}
!21 = !{!20, !11, i64 3148}
!22 = !{!20, !11, i64 3164}
!23 = !{!20, !11, i64 3156}
