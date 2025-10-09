; ModuleID = 'src/biariencode.c'
source_filename = "src/biariencode.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@rLPS_table_64x4 = dso_local local_unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 1
@AC_next_state_MPS_64 = dso_local local_unnamed_addr constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 2
@AC_next_state_LPS_64 = dso_local local_unnamed_addr constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 2
@binCount = dso_local local_unnamed_addr global i32 0, align 4
@pic_bin_count = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"arienco_create_encoding_environment: eep\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing eep (NULL pointer)\00", align 1
@stats = external dso_local local_unnamed_addr global ptr, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@cabac_encoding = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @reset_pic_bin_count() local_unnamed_addr #0 {
  store i32 0, ptr @pic_bin_count, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local signext i32 @get_pic_bin_count() local_unnamed_addr #1 {
  %1 = load i32, ptr @pic_bin_count, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind
define dso_local noalias noundef ptr @arienco_create_encoding_environment() local_unnamed_addr #2 {
  %1 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @arienco_delete_encoding_environment(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) @errortext, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 200) #13
  br label %5

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @arienco_start_encoding(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  store i32 0, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 0, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 9, ptr %6, align 4, !tbaa !15
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %1, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %2, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 510, ptr %9, align 4, !tbaa !18
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 0, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds i8, ptr %0, i64 44
  store i32 0, ptr %11, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @arienco_bits_written(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = shl nsw i32 %4, 3
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = add i32 %7, 8
  %11 = add i32 %10, %5
  %12 = sub i32 %11, %9
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @arienco_done_encoding(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = shl i32 %3, 1
  %5 = load i32, ptr %0, align 8, !tbaa !10
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  %8 = or disjoint i32 %7, %4
  store i32 %8, ptr %2, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4, !tbaa !15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = trunc i32 %8 to i8
  %15 = getelementptr inbounds i8, ptr %0, i64 24
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds i8, ptr %0, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !6
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  store i8 %14, ptr %22, align 1, !tbaa !21
  %23 = getelementptr inbounds i8, ptr %0, i64 40
  %24 = load i32, ptr %23, align 8, !tbaa !19
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = getelementptr inbounds i8, ptr %0, i64 44
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %24, i32 15)
  %30 = add nuw i32 %29, 7
  %31 = lshr i32 %30, 3
  %32 = and i32 %30, -8
  %33 = add i32 %28, %31
  %34 = add nsw i32 %24, -8
  %35 = sub nsw i32 %34, %32
  %36 = add i32 %33, 1
  store i32 %35, ptr %23, align 8, !tbaa !19
  store i32 %36, ptr %27, align 4, !tbaa !20
  br label %37

37:                                               ; preds = %13, %26, %1
  %38 = phi i32 [ 8, %13 ], [ 8, %26 ], [ %11, %1 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 16
  %40 = load i32, ptr %39, align 8, !tbaa !13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %0, i64 24
  %44 = getelementptr inbounds i8, ptr %0, i64 32
  %45 = getelementptr inbounds i8, ptr %0, i64 40
  %46 = getelementptr inbounds i8, ptr %0, i64 44
  br label %47

47:                                               ; preds = %42, %80
  %48 = phi i32 [ %38, %42 ], [ %81, %80 ]
  %49 = phi i32 [ %40, %42 ], [ %82, %80 ]
  %50 = add i32 %49, -1
  store i32 %50, ptr %39, align 8, !tbaa !13
  %51 = load i32, ptr %2, align 8, !tbaa !14
  %52 = shl i32 %51, 1
  %53 = load i32, ptr %0, align 8, !tbaa !10
  %54 = lshr i32 %53, 9
  %55 = and i32 %54, 1
  %56 = or disjoint i32 %55, %52
  %57 = xor i32 %56, 1
  store i32 %57, ptr %2, align 8, !tbaa !14
  %58 = add i32 %48, -1
  store i32 %58, ptr %9, align 4, !tbaa !15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %47
  %61 = trunc i32 %57 to i8
  %62 = load ptr, ptr %43, align 8, !tbaa !16
  %63 = load ptr, ptr %44, align 8, !tbaa !17
  %64 = load i32, ptr %63, align 4, !tbaa !6
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !6
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, ptr %62, i64 %66
  store i8 %61, ptr %67, align 1, !tbaa !21
  store i32 8, ptr %9, align 4, !tbaa !15
  %68 = load i32, ptr %45, align 8, !tbaa !19
  %69 = icmp sgt i32 %68, 7
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i32, ptr %46, align 4, !tbaa !20
  %72 = tail call i32 @llvm.usub.sat.i32(i32 %68, i32 15)
  %73 = add nuw i32 %72, 7
  %74 = lshr i32 %73, 3
  %75 = and i32 %73, -8
  %76 = add i32 %71, 1
  %77 = add nsw i32 %68, -8
  %78 = sub nsw i32 %77, %75
  %79 = add i32 %76, %74
  store i32 %78, ptr %45, align 8, !tbaa !19
  store i32 %79, ptr %46, align 4, !tbaa !20
  br label %80

80:                                               ; preds = %60, %70, %47
  %81 = phi i32 [ 8, %60 ], [ 8, %70 ], [ %58, %47 ]
  %82 = load i32, ptr %39, align 8, !tbaa !13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %47

84:                                               ; preds = %80, %37
  %85 = phi i32 [ %38, %37 ], [ %81, %80 ]
  %86 = load i32, ptr %2, align 8, !tbaa !14
  %87 = shl i32 %86, 1
  %88 = load i32, ptr %0, align 8, !tbaa !10
  %89 = lshr i32 %88, 8
  %90 = and i32 %89, 1
  %91 = or disjoint i32 %90, %87
  store i32 %91, ptr %2, align 8, !tbaa !14
  %92 = add i32 %85, -1
  store i32 %92, ptr %9, align 4, !tbaa !15
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %84
  %95 = trunc i32 %91 to i8
  %96 = getelementptr inbounds i8, ptr %0, i64 24
  %97 = load ptr, ptr %96, align 8, !tbaa !16
  %98 = getelementptr inbounds i8, ptr %0, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !17
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !6
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, ptr %97, i64 %102
  store i8 %95, ptr %103, align 1, !tbaa !21
  %104 = getelementptr inbounds i8, ptr %0, i64 40
  %105 = load i32, ptr %104, align 8, !tbaa !19
  %106 = icmp sgt i32 %105, 7
  br i1 %106, label %107, label %118

107:                                              ; preds = %94
  %108 = getelementptr inbounds i8, ptr %0, i64 44
  %109 = load i32, ptr %108, align 4, !tbaa !20
  %110 = tail call i32 @llvm.usub.sat.i32(i32 %105, i32 15)
  %111 = add nuw i32 %110, 7
  %112 = lshr i32 %111, 3
  %113 = and i32 %111, -8
  %114 = add i32 %109, %112
  %115 = add nsw i32 %105, -8
  %116 = sub nsw i32 %115, %113
  %117 = add i32 %114, 1
  store i32 %116, ptr %104, align 8, !tbaa !19
  store i32 %117, ptr %108, align 4, !tbaa !20
  br label %118

118:                                              ; preds = %94, %107, %84
  %119 = phi i32 [ 8, %94 ], [ 8, %107 ], [ %92, %84 ]
  %120 = load i32, ptr %2, align 8, !tbaa !14
  %121 = shl i32 %120, 1
  %122 = or disjoint i32 %121, 1
  store i32 %122, ptr %2, align 8, !tbaa !14
  %123 = add i32 %119, -1
  store i32 %123, ptr %9, align 4, !tbaa !15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %118
  %126 = trunc i32 %122 to i8
  %127 = getelementptr inbounds i8, ptr %0, i64 24
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = getelementptr inbounds i8, ptr %0, i64 32
  %130 = load ptr, ptr %129, align 8, !tbaa !17
  %131 = load i32, ptr %130, align 4, !tbaa !6
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %130, align 4, !tbaa !6
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, ptr %128, i64 %133
  store i8 %126, ptr %134, align 1, !tbaa !21
  store i32 8, ptr %9, align 4, !tbaa !15
  %135 = getelementptr inbounds i8, ptr %0, i64 40
  %136 = load i32, ptr %135, align 8, !tbaa !19
  %137 = icmp sgt i32 %136, 7
  br i1 %137, label %138, label %149

138:                                              ; preds = %125
  %139 = getelementptr inbounds i8, ptr %0, i64 44
  %140 = load i32, ptr %139, align 4, !tbaa !20
  %141 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 15)
  %142 = add nuw i32 %141, 7
  %143 = lshr i32 %142, 3
  %144 = and i32 %142, -8
  %145 = add i32 %140, %143
  %146 = add nsw i32 %136, -8
  %147 = sub nsw i32 %146, %144
  %148 = add i32 %145, 1
  store i32 %147, ptr %135, align 8, !tbaa !19
  store i32 %148, ptr %139, align 4, !tbaa !20
  br label %149

149:                                              ; preds = %125, %138, %118
  %150 = phi i32 [ 8, %125 ], [ 8, %138 ], [ %123, %118 ]
  %151 = load ptr, ptr @stats, align 8, !tbaa !22
  %152 = getelementptr inbounds i8, ptr %151, i64 1336
  %153 = load ptr, ptr @img, align 8, !tbaa !22
  %154 = getelementptr inbounds i8, ptr %153, i64 24
  %155 = load i32, ptr %154, align 8, !tbaa !23
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [5 x i32], ptr %152, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !6
  %159 = sub i32 %158, %150
  %160 = add i32 %159, 8
  store i32 %160, ptr %157, align 4, !tbaa !6
  %161 = load i32, ptr %9, align 4, !tbaa !15
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %195, label %163

163:                                              ; preds = %149
  %164 = getelementptr inbounds i8, ptr %0, i64 24
  %165 = getelementptr inbounds i8, ptr %0, i64 32
  %166 = getelementptr inbounds i8, ptr %0, i64 40
  %167 = getelementptr inbounds i8, ptr %0, i64 44
  %168 = load i32, ptr %2, align 8, !tbaa !14
  br label %169

169:                                              ; preds = %169, %163
  %170 = phi i32 [ %168, %163 ], [ %172, %169 ]
  %171 = phi i32 [ %161, %163 ], [ %173, %169 ]
  %172 = shl i32 %170, 1
  %173 = add i32 %171, -1
  switch i32 %171, label %169 [
    i32 1, label %174
    i32 9, label %194
  ]

174:                                              ; preds = %169
  store i32 %172, ptr %2, align 8, !tbaa !14
  store i32 %173, ptr %9, align 4, !tbaa !15
  %175 = trunc i32 %172 to i8
  %176 = load ptr, ptr %164, align 8, !tbaa !16
  %177 = load ptr, ptr %165, align 8, !tbaa !17
  %178 = load i32, ptr %177, align 4, !tbaa !6
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %177, align 4, !tbaa !6
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, ptr %176, i64 %180
  store i8 %175, ptr %181, align 1, !tbaa !21
  store i32 8, ptr %9, align 4, !tbaa !15
  %182 = load i32, ptr %166, align 8, !tbaa !19
  %183 = icmp sgt i32 %182, 7
  br i1 %183, label %184, label %195

184:                                              ; preds = %174
  %185 = load i32, ptr %167, align 4, !tbaa !20
  %186 = tail call i32 @llvm.usub.sat.i32(i32 %182, i32 15)
  %187 = add nuw i32 %186, 7
  %188 = lshr i32 %187, 3
  %189 = and i32 %187, -8
  %190 = add i32 %185, 1
  %191 = add nsw i32 %182, -8
  %192 = sub nsw i32 %191, %189
  %193 = add i32 %190, %188
  store i32 %192, ptr %166, align 8, !tbaa !19
  store i32 %193, ptr %167, align 4, !tbaa !20
  br label %195

194:                                              ; preds = %169
  store i32 %172, ptr %2, align 8, !tbaa !14
  store i32 %173, ptr %9, align 4, !tbaa !15
  br label %195

195:                                              ; preds = %194, %184, %174, %149
  %196 = getelementptr inbounds i8, ptr %0, i64 44
  %197 = load i32, ptr %196, align 4, !tbaa !20
  %198 = shl nsw i32 %197, 3
  %199 = getelementptr inbounds i8, ptr %0, i64 40
  %200 = load i32, ptr %199, align 8, !tbaa !19
  %201 = add nsw i32 %198, %200
  %202 = load i32, ptr @pic_bin_count, align 4, !tbaa !6
  %203 = add nsw i32 %201, %202
  store i32 %203, ptr @pic_bin_count, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @biari_encode_symbol(ptr nocapture noundef %0, i16 noundef signext %1, ptr nocapture noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !18
  %6 = load i32, ptr %0, align 8, !tbaa !10
  %7 = load i16, ptr %2, align 8, !tbaa !28
  %8 = zext i16 %7 to i64
  %9 = lshr i32 %5, 6
  %10 = and i32 %9, 3
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [64 x [4 x i8]], ptr @rLPS_table_64x4, i64 0, i64 %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !21
  %14 = zext i8 %13 to i32
  %15 = sub i32 %5, %14
  %16 = load i32, ptr @cabac_encoding, align 4, !tbaa !6
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !31
  %20 = add i64 %19, %17
  store i64 %20, ptr %18, align 8, !tbaa !31
  %21 = icmp ne i16 %1, 0
  %22 = getelementptr inbounds i8, ptr %2, i64 2
  %23 = load i8, ptr %22, align 2, !tbaa !32
  %24 = zext i1 %21 to i8
  %25 = icmp eq i8 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = add i32 %15, %6
  %28 = icmp eq i16 %7, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = xor i8 %23, 1
  store i8 %30, ptr %22, align 2, !tbaa !32
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds [64 x i16], ptr @AC_next_state_LPS_64, i64 0, i64 %8
  %33 = load i16, ptr %32, align 2, !tbaa !33
  store i16 %33, ptr %2, align 8, !tbaa !28
  br label %38

34:                                               ; preds = %3
  %35 = getelementptr inbounds [64 x i16], ptr @AC_next_state_MPS_64, i64 0, i64 %8
  %36 = load i16, ptr %35, align 2, !tbaa !33
  store i16 %36, ptr %2, align 8, !tbaa !28
  %37 = icmp ult i32 %15, 256
  br i1 %37, label %38, label %191

38:                                               ; preds = %31, %34
  %39 = phi i32 [ %14, %31 ], [ %15, %34 ]
  %40 = phi i32 [ %27, %31 ], [ %6, %34 ]
  %41 = getelementptr inbounds i8, ptr %0, i64 16
  %42 = getelementptr inbounds i8, ptr %0, i64 8
  %43 = getelementptr inbounds i8, ptr %0, i64 12
  %44 = getelementptr inbounds i8, ptr %0, i64 24
  %45 = getelementptr inbounds i8, ptr %0, i64 32
  %46 = getelementptr inbounds i8, ptr %0, i64 40
  %47 = getelementptr inbounds i8, ptr %0, i64 44
  br label %48

48:                                               ; preds = %38, %186
  %49 = phi i32 [ %39, %38 ], [ %189, %186 ]
  %50 = phi i32 [ %40, %38 ], [ %188, %186 ]
  %51 = icmp ugt i32 %50, 511
  br i1 %51, label %52, label %117

52:                                               ; preds = %48
  %53 = load i32, ptr %42, align 8, !tbaa !14
  %54 = shl i32 %53, 1
  %55 = or disjoint i32 %54, 1
  store i32 %55, ptr %42, align 8, !tbaa !14
  %56 = load i32, ptr %43, align 4, !tbaa !15
  %57 = add i32 %56, -1
  store i32 %57, ptr %43, align 4, !tbaa !15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = trunc i32 %55 to i8
  %61 = load ptr, ptr %44, align 8, !tbaa !16
  %62 = load ptr, ptr %45, align 8, !tbaa !17
  %63 = load i32, ptr %62, align 4, !tbaa !6
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !6
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, ptr %61, i64 %65
  store i8 %60, ptr %66, align 1, !tbaa !21
  store i32 8, ptr %43, align 4, !tbaa !15
  %67 = load i32, ptr %46, align 8, !tbaa !19
  %68 = icmp sgt i32 %67, 7
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load i32, ptr %47, align 4, !tbaa !20
  %71 = tail call i32 @llvm.usub.sat.i32(i32 %67, i32 15)
  %72 = add nuw i32 %71, 7
  %73 = lshr i32 %72, 3
  %74 = and i32 %72, -8
  %75 = add i32 %70, 1
  %76 = add nsw i32 %67, -8
  %77 = sub nsw i32 %76, %74
  %78 = add i32 %75, %73
  store i32 %77, ptr %46, align 8, !tbaa !19
  store i32 %78, ptr %47, align 4, !tbaa !20
  br label %79

79:                                               ; preds = %59, %69, %52
  %80 = phi i32 [ 8, %59 ], [ 8, %69 ], [ %57, %52 ]
  %81 = load i32, ptr %41, align 8, !tbaa !13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %115, label %83

83:                                               ; preds = %79, %111
  %84 = phi i32 [ %112, %111 ], [ %80, %79 ]
  %85 = phi i32 [ %113, %111 ], [ %81, %79 ]
  %86 = add i32 %85, -1
  store i32 %86, ptr %41, align 8, !tbaa !13
  %87 = load i32, ptr %42, align 8, !tbaa !14
  %88 = shl i32 %87, 1
  store i32 %88, ptr %42, align 8, !tbaa !14
  %89 = add i32 %84, -1
  store i32 %89, ptr %43, align 4, !tbaa !15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = trunc i32 %88 to i8
  %93 = load ptr, ptr %44, align 8, !tbaa !16
  %94 = load ptr, ptr %45, align 8, !tbaa !17
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %94, align 4, !tbaa !6
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, ptr %93, i64 %97
  store i8 %92, ptr %98, align 1, !tbaa !21
  store i32 8, ptr %43, align 4, !tbaa !15
  %99 = load i32, ptr %46, align 8, !tbaa !19
  %100 = icmp sgt i32 %99, 7
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load i32, ptr %47, align 4, !tbaa !20
  %103 = tail call i32 @llvm.usub.sat.i32(i32 %99, i32 15)
  %104 = add nuw i32 %103, 7
  %105 = lshr i32 %104, 3
  %106 = and i32 %104, -8
  %107 = add i32 %102, 1
  %108 = add nsw i32 %99, -8
  %109 = sub nsw i32 %108, %106
  %110 = add i32 %107, %105
  store i32 %109, ptr %46, align 8, !tbaa !19
  store i32 %110, ptr %47, align 4, !tbaa !20
  br label %111

111:                                              ; preds = %91, %101, %83
  %112 = phi i32 [ 8, %91 ], [ 8, %101 ], [ %89, %83 ]
  %113 = load i32, ptr %41, align 8, !tbaa !13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %83

115:                                              ; preds = %111, %79
  %116 = add i32 %50, -512
  br label %186

117:                                              ; preds = %48
  %118 = icmp ult i32 %50, 256
  br i1 %118, label %119, label %182

119:                                              ; preds = %117
  %120 = load i32, ptr %42, align 8, !tbaa !14
  %121 = shl i32 %120, 1
  store i32 %121, ptr %42, align 8, !tbaa !14
  %122 = load i32, ptr %43, align 4, !tbaa !15
  %123 = add i32 %122, -1
  store i32 %123, ptr %43, align 4, !tbaa !15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = trunc i32 %121 to i8
  %127 = load ptr, ptr %44, align 8, !tbaa !16
  %128 = load ptr, ptr %45, align 8, !tbaa !17
  %129 = load i32, ptr %128, align 4, !tbaa !6
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %128, align 4, !tbaa !6
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, ptr %127, i64 %131
  store i8 %126, ptr %132, align 1, !tbaa !21
  store i32 8, ptr %43, align 4, !tbaa !15
  %133 = load i32, ptr %46, align 8, !tbaa !19
  %134 = icmp sgt i32 %133, 7
  br i1 %134, label %135, label %145

135:                                              ; preds = %125
  %136 = load i32, ptr %47, align 4, !tbaa !20
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 15)
  %138 = add nuw i32 %137, 7
  %139 = lshr i32 %138, 3
  %140 = and i32 %138, -8
  %141 = add i32 %136, 1
  %142 = add nsw i32 %133, -8
  %143 = sub nsw i32 %142, %140
  %144 = add i32 %141, %139
  store i32 %143, ptr %46, align 8, !tbaa !19
  store i32 %144, ptr %47, align 4, !tbaa !20
  br label %145

145:                                              ; preds = %125, %135, %119
  %146 = phi i32 [ 8, %125 ], [ 8, %135 ], [ %123, %119 ]
  %147 = load i32, ptr %41, align 8, !tbaa !13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %186, label %149

149:                                              ; preds = %145, %178
  %150 = phi i32 [ %179, %178 ], [ %146, %145 ]
  %151 = phi i32 [ %180, %178 ], [ %147, %145 ]
  %152 = add i32 %151, -1
  store i32 %152, ptr %41, align 8, !tbaa !13
  %153 = load i32, ptr %42, align 8, !tbaa !14
  %154 = shl i32 %153, 1
  %155 = or disjoint i32 %154, 1
  store i32 %155, ptr %42, align 8, !tbaa !14
  %156 = add i32 %150, -1
  store i32 %156, ptr %43, align 4, !tbaa !15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %149
  %159 = trunc i32 %155 to i8
  %160 = load ptr, ptr %44, align 8, !tbaa !16
  %161 = load ptr, ptr %45, align 8, !tbaa !17
  %162 = load i32, ptr %161, align 4, !tbaa !6
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %161, align 4, !tbaa !6
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, ptr %160, i64 %164
  store i8 %159, ptr %165, align 1, !tbaa !21
  store i32 8, ptr %43, align 4, !tbaa !15
  %166 = load i32, ptr %46, align 8, !tbaa !19
  %167 = icmp sgt i32 %166, 7
  br i1 %167, label %168, label %178

168:                                              ; preds = %158
  %169 = load i32, ptr %47, align 4, !tbaa !20
  %170 = tail call i32 @llvm.usub.sat.i32(i32 %166, i32 15)
  %171 = add nuw i32 %170, 7
  %172 = lshr i32 %171, 3
  %173 = and i32 %171, -8
  %174 = add i32 %169, 1
  %175 = add nsw i32 %166, -8
  %176 = sub nsw i32 %175, %173
  %177 = add i32 %174, %172
  store i32 %176, ptr %46, align 8, !tbaa !19
  store i32 %177, ptr %47, align 4, !tbaa !20
  br label %178

178:                                              ; preds = %158, %168, %149
  %179 = phi i32 [ 8, %158 ], [ 8, %168 ], [ %156, %149 ]
  %180 = load i32, ptr %41, align 8, !tbaa !13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %149

182:                                              ; preds = %117
  %183 = load i32, ptr %41, align 8, !tbaa !13
  %184 = add i32 %183, 1
  store i32 %184, ptr %41, align 8, !tbaa !13
  %185 = add nsw i32 %50, -256
  br label %186

186:                                              ; preds = %178, %145, %182, %115
  %187 = phi i32 [ %116, %115 ], [ %185, %182 ], [ %50, %145 ], [ %50, %178 ]
  %188 = shl i32 %187, 1
  %189 = shl nuw nsw i32 %49, 1
  %190 = icmp ult i32 %49, 128
  br i1 %190, label %48, label %191

191:                                              ; preds = %186, %34
  %192 = phi i32 [ %6, %34 ], [ %188, %186 ]
  %193 = phi i32 [ %15, %34 ], [ %189, %186 ]
  store i32 %193, ptr %4, align 4, !tbaa !18
  store i32 %192, ptr %0, align 8, !tbaa !10
  %194 = getelementptr inbounds i8, ptr %0, i64 40
  %195 = load i32, ptr %194, align 8, !tbaa !19
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %194, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @biari_encode_symbol_eq_prob(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !10
  %4 = shl i32 %3, 1
  %5 = icmp eq i16 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !18
  %9 = add i32 %8, %4
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %4, %2 ]
  %12 = icmp ugt i32 %11, 1023
  br i1 %12, label %13, label %90

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = shl i32 %15, 1
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %14, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !15
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = trunc i32 %17 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 24
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds i8, ptr %0, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !6
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  store i8 %23, ptr %31, align 1, !tbaa !21
  store i32 8, ptr %18, align 4, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %0, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !19
  %34 = icmp sgt i32 %33, 7
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = getelementptr inbounds i8, ptr %0, i64 44
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %33, i32 15)
  %39 = add nuw i32 %38, 7
  %40 = lshr i32 %39, 3
  %41 = and i32 %39, -8
  %42 = add i32 %37, %40
  %43 = add nsw i32 %33, -8
  %44 = sub nsw i32 %43, %41
  %45 = add i32 %42, 1
  store i32 %44, ptr %32, align 8, !tbaa !19
  store i32 %45, ptr %36, align 4, !tbaa !20
  br label %46

46:                                               ; preds = %22, %35, %13
  %47 = phi i32 [ 8, %22 ], [ 8, %35 ], [ %20, %13 ]
  %48 = getelementptr inbounds i8, ptr %0, i64 16
  %49 = load i32, ptr %48, align 8, !tbaa !13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %0, i64 24
  %53 = getelementptr inbounds i8, ptr %0, i64 32
  %54 = getelementptr inbounds i8, ptr %0, i64 40
  %55 = getelementptr inbounds i8, ptr %0, i64 44
  br label %56

56:                                               ; preds = %51, %84
  %57 = phi i32 [ %47, %51 ], [ %85, %84 ]
  %58 = phi i32 [ %49, %51 ], [ %86, %84 ]
  %59 = add i32 %58, -1
  store i32 %59, ptr %48, align 8, !tbaa !13
  %60 = load i32, ptr %14, align 8, !tbaa !14
  %61 = shl i32 %60, 1
  store i32 %61, ptr %14, align 8, !tbaa !14
  %62 = add i32 %57, -1
  store i32 %62, ptr %18, align 4, !tbaa !15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %56
  %65 = trunc i32 %61 to i8
  %66 = load ptr, ptr %52, align 8, !tbaa !16
  %67 = load ptr, ptr %53, align 8, !tbaa !17
  %68 = load i32, ptr %67, align 4, !tbaa !6
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %67, align 4, !tbaa !6
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, ptr %66, i64 %70
  store i8 %65, ptr %71, align 1, !tbaa !21
  store i32 8, ptr %18, align 4, !tbaa !15
  %72 = load i32, ptr %54, align 8, !tbaa !19
  %73 = icmp sgt i32 %72, 7
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load i32, ptr %55, align 4, !tbaa !20
  %76 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 15)
  %77 = add nuw i32 %76, 7
  %78 = lshr i32 %77, 3
  %79 = and i32 %77, -8
  %80 = add i32 %75, 1
  %81 = add nsw i32 %72, -8
  %82 = sub nsw i32 %81, %79
  %83 = add i32 %80, %78
  store i32 %82, ptr %54, align 8, !tbaa !19
  store i32 %83, ptr %55, align 4, !tbaa !20
  br label %84

84:                                               ; preds = %64, %74, %56
  %85 = phi i32 [ 8, %64 ], [ 8, %74 ], [ %62, %56 ]
  %86 = load i32, ptr %48, align 8, !tbaa !13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %56

88:                                               ; preds = %84, %46
  %89 = add i32 %11, -1024
  br label %172

90:                                               ; preds = %10
  %91 = icmp ult i32 %11, 512
  br i1 %91, label %92, label %167

92:                                               ; preds = %90
  %93 = getelementptr inbounds i8, ptr %0, i64 8
  %94 = load i32, ptr %93, align 8, !tbaa !14
  %95 = shl i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !14
  %96 = getelementptr inbounds i8, ptr %0, i64 12
  %97 = load i32, ptr %96, align 4, !tbaa !15
  %98 = add i32 %97, -1
  store i32 %98, ptr %96, align 4, !tbaa !15
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %92
  %101 = trunc i32 %95 to i8
  %102 = getelementptr inbounds i8, ptr %0, i64 24
  %103 = load ptr, ptr %102, align 8, !tbaa !16
  %104 = getelementptr inbounds i8, ptr %0, i64 32
  %105 = load ptr, ptr %104, align 8, !tbaa !17
  %106 = load i32, ptr %105, align 4, !tbaa !6
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !6
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, ptr %103, i64 %108
  store i8 %101, ptr %109, align 1, !tbaa !21
  store i32 8, ptr %96, align 4, !tbaa !15
  %110 = getelementptr inbounds i8, ptr %0, i64 40
  %111 = load i32, ptr %110, align 8, !tbaa !19
  %112 = icmp sgt i32 %111, 7
  br i1 %112, label %113, label %124

113:                                              ; preds = %100
  %114 = getelementptr inbounds i8, ptr %0, i64 44
  %115 = load i32, ptr %114, align 4, !tbaa !20
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 15)
  %117 = add nuw i32 %116, 7
  %118 = lshr i32 %117, 3
  %119 = and i32 %117, -8
  %120 = add i32 %115, %118
  %121 = add nsw i32 %111, -8
  %122 = sub nsw i32 %121, %119
  %123 = add i32 %120, 1
  store i32 %122, ptr %110, align 8, !tbaa !19
  store i32 %123, ptr %114, align 4, !tbaa !20
  br label %124

124:                                              ; preds = %100, %113, %92
  %125 = phi i32 [ 8, %100 ], [ 8, %113 ], [ %98, %92 ]
  %126 = getelementptr inbounds i8, ptr %0, i64 16
  %127 = load i32, ptr %126, align 8, !tbaa !13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %172, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds i8, ptr %0, i64 24
  %131 = getelementptr inbounds i8, ptr %0, i64 32
  %132 = getelementptr inbounds i8, ptr %0, i64 40
  %133 = getelementptr inbounds i8, ptr %0, i64 44
  br label %134

134:                                              ; preds = %129, %163
  %135 = phi i32 [ %125, %129 ], [ %164, %163 ]
  %136 = phi i32 [ %127, %129 ], [ %165, %163 ]
  %137 = add i32 %136, -1
  store i32 %137, ptr %126, align 8, !tbaa !13
  %138 = load i32, ptr %93, align 8, !tbaa !14
  %139 = shl i32 %138, 1
  %140 = or disjoint i32 %139, 1
  store i32 %140, ptr %93, align 8, !tbaa !14
  %141 = add i32 %135, -1
  store i32 %141, ptr %96, align 4, !tbaa !15
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %134
  %144 = trunc i32 %140 to i8
  %145 = load ptr, ptr %130, align 8, !tbaa !16
  %146 = load ptr, ptr %131, align 8, !tbaa !17
  %147 = load i32, ptr %146, align 4, !tbaa !6
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !6
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, ptr %145, i64 %149
  store i8 %144, ptr %150, align 1, !tbaa !21
  store i32 8, ptr %96, align 4, !tbaa !15
  %151 = load i32, ptr %132, align 8, !tbaa !19
  %152 = icmp sgt i32 %151, 7
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load i32, ptr %133, align 4, !tbaa !20
  %155 = tail call i32 @llvm.usub.sat.i32(i32 %151, i32 15)
  %156 = add nuw i32 %155, 7
  %157 = lshr i32 %156, 3
  %158 = and i32 %156, -8
  %159 = add i32 %154, 1
  %160 = add nsw i32 %151, -8
  %161 = sub nsw i32 %160, %158
  %162 = add i32 %159, %157
  store i32 %161, ptr %132, align 8, !tbaa !19
  store i32 %162, ptr %133, align 4, !tbaa !20
  br label %163

163:                                              ; preds = %143, %153, %134
  %164 = phi i32 [ 8, %143 ], [ 8, %153 ], [ %141, %134 ]
  %165 = load i32, ptr %126, align 8, !tbaa !13
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %134

167:                                              ; preds = %90
  %168 = getelementptr inbounds i8, ptr %0, i64 16
  %169 = load i32, ptr %168, align 8, !tbaa !13
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 8, !tbaa !13
  %171 = add nsw i32 %11, -512
  br label %172

172:                                              ; preds = %163, %124, %167, %88
  %173 = phi i32 [ %89, %88 ], [ %171, %167 ], [ %11, %124 ], [ %11, %163 ]
  store i32 %173, ptr %0, align 8, !tbaa !10
  %174 = getelementptr inbounds i8, ptr %0, i64 40
  %175 = load i32, ptr %174, align 8, !tbaa !19
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %174, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @biari_encode_symbol_final(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !18
  %5 = add i32 %4, -2
  %6 = load i32, ptr %0, align 8, !tbaa !10
  %7 = icmp eq i16 %1, 0
  %8 = select i1 %7, i32 %5, i32 2
  %9 = select i1 %7, i32 0, i32 %5
  %10 = add i32 %9, %6
  %11 = icmp ult i32 %8, 256
  br i1 %11, label %12, label %163

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %0, i64 12
  %16 = getelementptr inbounds i8, ptr %0, i64 24
  %17 = getelementptr inbounds i8, ptr %0, i64 32
  %18 = getelementptr inbounds i8, ptr %0, i64 40
  %19 = getelementptr inbounds i8, ptr %0, i64 44
  br label %20

20:                                               ; preds = %12, %158
  %21 = phi i32 [ %10, %12 ], [ %160, %158 ]
  %22 = phi i32 [ %8, %12 ], [ %161, %158 ]
  %23 = icmp ugt i32 %21, 511
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 8, !tbaa !14
  %26 = shl i32 %25, 1
  %27 = or disjoint i32 %26, 1
  store i32 %27, ptr %14, align 8, !tbaa !14
  %28 = load i32, ptr %15, align 4, !tbaa !15
  %29 = add i32 %28, -1
  store i32 %29, ptr %15, align 4, !tbaa !15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = trunc i32 %27 to i8
  %33 = load ptr, ptr %16, align 8, !tbaa !16
  %34 = load ptr, ptr %17, align 8, !tbaa !17
  %35 = load i32, ptr %34, align 4, !tbaa !6
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !6
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  store i8 %32, ptr %38, align 1, !tbaa !21
  store i32 8, ptr %15, align 4, !tbaa !15
  %39 = load i32, ptr %18, align 8, !tbaa !19
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load i32, ptr %19, align 4, !tbaa !20
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %39, i32 15)
  %44 = add nuw i32 %43, 7
  %45 = lshr i32 %44, 3
  %46 = and i32 %44, -8
  %47 = add i32 %42, 1
  %48 = add nsw i32 %39, -8
  %49 = sub nsw i32 %48, %46
  %50 = add i32 %47, %45
  store i32 %49, ptr %18, align 8, !tbaa !19
  store i32 %50, ptr %19, align 4, !tbaa !20
  br label %51

51:                                               ; preds = %31, %41, %24
  %52 = phi i32 [ 8, %31 ], [ 8, %41 ], [ %29, %24 ]
  %53 = load i32, ptr %13, align 8, !tbaa !13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %51, %83
  %56 = phi i32 [ %84, %83 ], [ %52, %51 ]
  %57 = phi i32 [ %85, %83 ], [ %53, %51 ]
  %58 = add i32 %57, -1
  store i32 %58, ptr %13, align 8, !tbaa !13
  %59 = load i32, ptr %14, align 8, !tbaa !14
  %60 = shl i32 %59, 1
  store i32 %60, ptr %14, align 8, !tbaa !14
  %61 = add i32 %56, -1
  store i32 %61, ptr %15, align 4, !tbaa !15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = trunc i32 %60 to i8
  %65 = load ptr, ptr %16, align 8, !tbaa !16
  %66 = load ptr, ptr %17, align 8, !tbaa !17
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !6
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, ptr %65, i64 %69
  store i8 %64, ptr %70, align 1, !tbaa !21
  store i32 8, ptr %15, align 4, !tbaa !15
  %71 = load i32, ptr %18, align 8, !tbaa !19
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, ptr %19, align 4, !tbaa !20
  %75 = tail call i32 @llvm.usub.sat.i32(i32 %71, i32 15)
  %76 = add nuw i32 %75, 7
  %77 = lshr i32 %76, 3
  %78 = and i32 %76, -8
  %79 = add i32 %74, 1
  %80 = add nsw i32 %71, -8
  %81 = sub nsw i32 %80, %78
  %82 = add i32 %79, %77
  store i32 %81, ptr %18, align 8, !tbaa !19
  store i32 %82, ptr %19, align 4, !tbaa !20
  br label %83

83:                                               ; preds = %63, %73, %55
  %84 = phi i32 [ 8, %63 ], [ 8, %73 ], [ %61, %55 ]
  %85 = load i32, ptr %13, align 8, !tbaa !13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %55

87:                                               ; preds = %83, %51
  %88 = add i32 %21, -512
  br label %158

89:                                               ; preds = %20
  %90 = icmp ult i32 %21, 256
  br i1 %90, label %91, label %154

91:                                               ; preds = %89
  %92 = load i32, ptr %14, align 8, !tbaa !14
  %93 = shl i32 %92, 1
  store i32 %93, ptr %14, align 8, !tbaa !14
  %94 = load i32, ptr %15, align 4, !tbaa !15
  %95 = add i32 %94, -1
  store i32 %95, ptr %15, align 4, !tbaa !15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = trunc i32 %93 to i8
  %99 = load ptr, ptr %16, align 8, !tbaa !16
  %100 = load ptr, ptr %17, align 8, !tbaa !17
  %101 = load i32, ptr %100, align 4, !tbaa !6
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %100, align 4, !tbaa !6
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, ptr %99, i64 %103
  store i8 %98, ptr %104, align 1, !tbaa !21
  store i32 8, ptr %15, align 4, !tbaa !15
  %105 = load i32, ptr %18, align 8, !tbaa !19
  %106 = icmp sgt i32 %105, 7
  br i1 %106, label %107, label %117

107:                                              ; preds = %97
  %108 = load i32, ptr %19, align 4, !tbaa !20
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %105, i32 15)
  %110 = add nuw i32 %109, 7
  %111 = lshr i32 %110, 3
  %112 = and i32 %110, -8
  %113 = add i32 %108, 1
  %114 = add nsw i32 %105, -8
  %115 = sub nsw i32 %114, %112
  %116 = add i32 %113, %111
  store i32 %115, ptr %18, align 8, !tbaa !19
  store i32 %116, ptr %19, align 4, !tbaa !20
  br label %117

117:                                              ; preds = %97, %107, %91
  %118 = phi i32 [ 8, %97 ], [ 8, %107 ], [ %95, %91 ]
  %119 = load i32, ptr %13, align 8, !tbaa !13
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %158, label %121

121:                                              ; preds = %117, %150
  %122 = phi i32 [ %151, %150 ], [ %118, %117 ]
  %123 = phi i32 [ %152, %150 ], [ %119, %117 ]
  %124 = add i32 %123, -1
  store i32 %124, ptr %13, align 8, !tbaa !13
  %125 = load i32, ptr %14, align 8, !tbaa !14
  %126 = shl i32 %125, 1
  %127 = or disjoint i32 %126, 1
  store i32 %127, ptr %14, align 8, !tbaa !14
  %128 = add i32 %122, -1
  store i32 %128, ptr %15, align 4, !tbaa !15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %121
  %131 = trunc i32 %127 to i8
  %132 = load ptr, ptr %16, align 8, !tbaa !16
  %133 = load ptr, ptr %17, align 8, !tbaa !17
  %134 = load i32, ptr %133, align 4, !tbaa !6
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %133, align 4, !tbaa !6
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, ptr %132, i64 %136
  store i8 %131, ptr %137, align 1, !tbaa !21
  store i32 8, ptr %15, align 4, !tbaa !15
  %138 = load i32, ptr %18, align 8, !tbaa !19
  %139 = icmp sgt i32 %138, 7
  br i1 %139, label %140, label %150

140:                                              ; preds = %130
  %141 = load i32, ptr %19, align 4, !tbaa !20
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %138, i32 15)
  %143 = add nuw i32 %142, 7
  %144 = lshr i32 %143, 3
  %145 = and i32 %143, -8
  %146 = add i32 %141, 1
  %147 = add nsw i32 %138, -8
  %148 = sub nsw i32 %147, %145
  %149 = add i32 %146, %144
  store i32 %148, ptr %18, align 8, !tbaa !19
  store i32 %149, ptr %19, align 4, !tbaa !20
  br label %150

150:                                              ; preds = %130, %140, %121
  %151 = phi i32 [ 8, %130 ], [ 8, %140 ], [ %128, %121 ]
  %152 = load i32, ptr %13, align 8, !tbaa !13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %121

154:                                              ; preds = %89
  %155 = load i32, ptr %13, align 8, !tbaa !13
  %156 = add i32 %155, 1
  store i32 %156, ptr %13, align 8, !tbaa !13
  %157 = add nsw i32 %21, -256
  br label %158

158:                                              ; preds = %150, %117, %154, %87
  %159 = phi i32 [ %88, %87 ], [ %157, %154 ], [ %21, %117 ], [ %21, %150 ]
  %160 = shl i32 %159, 1
  %161 = shl nuw nsw i32 %22, 1
  %162 = icmp ult i32 %22, 128
  br i1 %162, label %20, label %163

163:                                              ; preds = %158, %2
  %164 = phi i32 [ %5, %2 ], [ %161, %158 ]
  %165 = phi i32 [ %10, %2 ], [ %160, %158 ]
  store i32 %164, ptr %3, align 4, !tbaa !18
  store i32 %165, ptr %0, align 8, !tbaa !10
  %166 = getelementptr inbounds i8, ptr %0, i64 40
  %167 = load i32, ptr %166, align 8, !tbaa !19
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @biari_init_context(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = load ptr, ptr @img, align 8, !tbaa !22
  %5 = getelementptr inbounds i8, ptr %4, i64 40
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = mul nsw i32 %7, %3
  %9 = ashr i32 %8, 4
  %10 = getelementptr inbounds i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = add nsw i32 %9, %11
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 126)
  %15 = icmp sgt i32 %12, 63
  %16 = trunc nuw nsw i32 %14 to i16
  %17 = add nsw i16 %16, -64
  %18 = sub nsw i16 63, %16
  %19 = select i1 %15, i16 %17, i16 %18
  %20 = zext i1 %15 to i8
  store i16 %19, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %20, ptr %21, align 2
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 0, ptr %22, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }

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
!10 = !{!11, !7, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !12, i64 72, !12, i64 80, !7, i64 88, !7, i64 92}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!11, !7, i64 16}
!14 = !{!11, !7, i64 8}
!15 = !{!11, !7, i64 12}
!16 = !{!11, !12, i64 24}
!17 = !{!11, !12, i64 32}
!18 = !{!11, !7, i64 4}
!19 = !{!11, !7, i64 40}
!20 = !{!11, !7, i64 44}
!21 = !{!8, !8, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!24, !7, i64 24}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !25, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !12, i64 104, !12, i64 112, !7, i64 120, !12, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !12, i64 14136, !12, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !12, i64 31560, !12, i64 31568, !12, i64 31576, !8, i64 31584, !12, i64 89184, !12, i64 89192, !7, i64 89200, !7, i64 89204, !7, i64 89208, !7, i64 89212, !8, i64 89216, !7, i64 89280, !7, i64 89284, !7, i64 89288, !7, i64 89292, !7, i64 89296, !26, i64 89304, !7, i64 89312, !7, i64 89316, !7, i64 89320, !7, i64 89324, !12, i64 89328, !12, i64 89336, !12, i64 89344, !12, i64 89352, !8, i64 89360, !7, i64 89392, !7, i64 89396, !7, i64 89400, !7, i64 89404, !7, i64 89408, !7, i64 89412, !7, i64 89416, !7, i64 89420, !8, i64 89424, !7, i64 90192, !7, i64 90196, !7, i64 90200, !7, i64 90204, !7, i64 90208, !7, i64 90212, !7, i64 90216, !7, i64 90220, !7, i64 90224, !7, i64 90228, !7, i64 90232, !7, i64 90236, !7, i64 90240, !8, i64 90244, !7, i64 90248, !7, i64 90252, !8, i64 90256, !7, i64 90264, !7, i64 90268, !7, i64 90272, !7, i64 90276, !7, i64 90280, !7, i64 90284, !7, i64 90288, !7, i64 90292, !7, i64 90296, !7, i64 90300, !7, i64 90304, !7, i64 90308, !7, i64 90312, !7, i64 90316, !7, i64 90320, !7, i64 90324, !7, i64 90328, !12, i64 90336, !7, i64 90344, !7, i64 90348, !7, i64 90352, !7, i64 90356, !7, i64 90360, !26, i64 90368, !7, i64 90376, !7, i64 90380, !7, i64 90384, !7, i64 90388, !7, i64 90392, !7, i64 90396, !7, i64 90400, !12, i64 90408, !7, i64 90416, !7, i64 90420, !7, i64 90424, !7, i64 90428, !7, i64 90432, !7, i64 90436, !7, i64 90440, !7, i64 90444, !7, i64 90448, !7, i64 90452, !7, i64 90456, !7, i64 90460, !7, i64 90464, !7, i64 90468, !7, i64 90472, !7, i64 90476, !7, i64 90480, !7, i64 90484, !7, i64 90488, !7, i64 90492, !7, i64 90496, !7, i64 90500, !12, i64 90504, !12, i64 90512, !12, i64 90520, !7, i64 90528, !7, i64 90532, !7, i64 90536, !7, i64 90540, !7, i64 90544, !7, i64 90548, !7, i64 90552, !7, i64 90556, !7, i64 90560, !8, i64 90564, !7, i64 90572, !7, i64 90576, !7, i64 90580, !27, i64 90584, !7, i64 90588, !7, i64 90592}
!25 = !{!"float", !8, i64 0}
!26 = !{!"double", !8, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = !{!29, !27, i64 0}
!29 = !{!"", !27, i64 0, !8, i64 2, !30, i64 8}
!30 = !{!"long", !8, i64 0}
!31 = !{!29, !30, i64 8}
!32 = !{!29, !8, i64 2}
!33 = !{!27, !27, i64 0}
!34 = !{!24, !7, i64 40}
