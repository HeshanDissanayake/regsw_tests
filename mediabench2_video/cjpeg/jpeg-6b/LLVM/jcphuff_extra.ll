; ModuleID = 'jcphuff.c'
source_filename = "jcphuff.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local void @jinit_phuff_encoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 184) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 496
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_phuff, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 120
  %8 = getelementptr inbounds i8, ptr %5, i64 104
  store ptr null, ptr %8, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 64
  store ptr %0, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %1, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds i8, ptr %0, i64 412
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 420
  %12 = load i32, ptr %11, align 4, !tbaa !25
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  br i1 %13, label %15, label %18

15:                                               ; preds = %2
  br i1 %9, label %16, label %17

16:                                               ; preds = %15
  store ptr @encode_mcu_DC_first, ptr %14, align 8, !tbaa !26
  br label %29

17:                                               ; preds = %15
  store ptr @encode_mcu_AC_first, ptr %14, align 8, !tbaa !26
  br label %29

18:                                               ; preds = %2
  br i1 %9, label %19, label %20

19:                                               ; preds = %18
  store ptr @encode_mcu_DC_refine, ptr %14, align 8, !tbaa !26
  br label %29

20:                                               ; preds = %18
  store ptr @encode_mcu_AC_refine, ptr %14, align 8, !tbaa !26
  %21 = getelementptr inbounds i8, ptr %4, i64 104
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = tail call ptr %27(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1000) #6
  store ptr %28, ptr %21, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %19, %24, %20, %16, %17
  %30 = icmp eq i32 %1, 0
  %31 = getelementptr inbounds i8, ptr %4, i64 16
  %32 = getelementptr inbounds i8, ptr %0, i64 324
  br i1 %30, label %33, label %36

33:                                               ; preds = %29
  store ptr @finish_pass_phuff, ptr %31, align 8
  %34 = load i32, ptr %32, align 4, !tbaa !27
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %142

36:                                               ; preds = %29
  store ptr @finish_pass_gather_phuff, ptr %31, align 8
  %37 = load i32, ptr %32, align 4, !tbaa !27
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %74, label %142

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %0, i64 328
  %41 = getelementptr inbounds i8, ptr %4, i64 72
  %42 = getelementptr inbounds i8, ptr %4, i64 88
  %43 = getelementptr inbounds i8, ptr %4, i64 120
  br i1 %9, label %44, label %61

44:                                               ; preds = %39, %56
  %45 = phi i64 [ %57, %56 ], [ 0, %39 ]
  %46 = getelementptr inbounds [4 x ptr], ptr %40, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %45
  store i32 0, ptr %48, align 4, !tbaa !29
  %49 = load i32, ptr %11, align 4, !tbaa !25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %47, i64 20
  %53 = load i32, ptr %52, align 4, !tbaa !30
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x ptr], ptr %43, i64 0, i64 %54
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef signext %10, i32 noundef signext %53, ptr noundef nonnull %55) #6
  br label %56

56:                                               ; preds = %51, %44
  %57 = add nuw nsw i64 %45, 1
  %58 = load i32, ptr %32, align 4, !tbaa !27
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %44, label %142, !llvm.loop !32

61:                                               ; preds = %39, %61
  %62 = phi i64 [ %70, %61 ], [ 0, %39 ]
  %63 = getelementptr inbounds [4 x ptr], ptr %40, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !28
  %65 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %62
  store i32 0, ptr %65, align 4, !tbaa !29
  %66 = getelementptr inbounds i8, ptr %64, i64 24
  %67 = load i32, ptr %66, align 8, !tbaa !34
  store i32 %67, ptr %42, align 8, !tbaa !35
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x ptr], ptr %43, i64 0, i64 %68
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef signext %10, i32 noundef signext %67, ptr noundef nonnull %69) #6
  %70 = add nuw nsw i64 %62, 1
  %71 = load i32, ptr %32, align 4, !tbaa !27
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %61, label %142, !llvm.loop !32

74:                                               ; preds = %36
  %75 = getelementptr inbounds i8, ptr %0, i64 328
  %76 = getelementptr inbounds i8, ptr %4, i64 72
  %77 = getelementptr inbounds i8, ptr %4, i64 88
  %78 = getelementptr inbounds i8, ptr %4, i64 152
  %79 = getelementptr inbounds i8, ptr %0, i64 8
  br i1 %9, label %80, label %113

80:                                               ; preds = %74, %108
  %81 = phi i64 [ %109, %108 ], [ 0, %74 ]
  %82 = getelementptr inbounds [4 x ptr], ptr %75, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !28
  %84 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 %81
  store i32 0, ptr %84, align 4, !tbaa !29
  %85 = load i32, ptr %11, align 4, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, ptr %83, i64 20
  %89 = load i32, ptr %88, align 4, !tbaa !30
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !36
  %93 = getelementptr inbounds i8, ptr %92, i64 40
  store i32 50, ptr %93, align 8, !tbaa !37
  %94 = getelementptr inbounds i8, ptr %92, i64 44
  store i32 %89, ptr %94, align 4, !tbaa !39
  %95 = load ptr, ptr %0, align 8, !tbaa !36
  %96 = load ptr, ptr %95, align 8, !tbaa !40
  tail call void %96(ptr noundef nonnull %0) #6
  br label %97

97:                                               ; preds = %91, %87
  %98 = sext i32 %89 to i64
  %99 = getelementptr inbounds [4 x ptr], ptr %78, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !28
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load ptr, ptr %79, align 8, !tbaa !6
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  %105 = tail call ptr %104(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2056) #6
  store ptr %105, ptr %99, align 8, !tbaa !28
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi ptr [ %105, %102 ], [ %100, %97 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %107, i8 0, i64 2056, i1 false)
  br label %108

108:                                              ; preds = %106, %80
  %109 = add nuw nsw i64 %81, 1
  %110 = load i32, ptr %32, align 4, !tbaa !27
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %80, label %142, !llvm.loop !32

113:                                              ; preds = %74, %136
  %114 = phi i64 [ %138, %136 ], [ 0, %74 ]
  %115 = getelementptr inbounds [4 x ptr], ptr %75, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !28
  %117 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 %114
  store i32 0, ptr %117, align 4, !tbaa !29
  %118 = getelementptr inbounds i8, ptr %116, i64 24
  %119 = load i32, ptr %118, align 8, !tbaa !34
  store i32 %119, ptr %77, align 8, !tbaa !35
  %120 = icmp ugt i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load ptr, ptr %0, align 8, !tbaa !36
  %123 = getelementptr inbounds i8, ptr %122, i64 40
  store i32 50, ptr %123, align 8, !tbaa !37
  %124 = getelementptr inbounds i8, ptr %122, i64 44
  store i32 %119, ptr %124, align 4, !tbaa !39
  %125 = load ptr, ptr %0, align 8, !tbaa !36
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  tail call void %126(ptr noundef nonnull %0) #6
  br label %127

127:                                              ; preds = %113, %121
  %128 = sext i32 %119 to i64
  %129 = getelementptr inbounds [4 x ptr], ptr %78, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !28
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load ptr, ptr %79, align 8, !tbaa !6
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = tail call ptr %134(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2056) #6
  store ptr %135, ptr %129, align 8, !tbaa !28
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi ptr [ %135, %132 ], [ %130, %127 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %137, i8 0, i64 2056, i1 false)
  %138 = add nuw nsw i64 %114, 1
  %139 = load i32, ptr %32, align 4, !tbaa !27
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %113, label %142, !llvm.loop !32

142:                                              ; preds = %136, %108, %61, %56, %36, %33
  %143 = getelementptr inbounds i8, ptr %4, i64 92
  store i32 0, ptr %143, align 4, !tbaa !41
  %144 = getelementptr inbounds i8, ptr %4, i64 96
  store i32 0, ptr %144, align 8, !tbaa !42
  %145 = getelementptr inbounds i8, ptr %4, i64 48
  store i64 0, ptr %145, align 8, !tbaa !43
  %146 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 0, ptr %146, align 8, !tbaa !44
  %147 = getelementptr inbounds i8, ptr %0, i64 280
  %148 = load i32, ptr %147, align 8, !tbaa !45
  %149 = getelementptr inbounds i8, ptr %4, i64 112
  store i32 %148, ptr %149, align 8, !tbaa !46
  %150 = getelementptr inbounds i8, ptr %4, i64 116
  store i32 0, ptr %150, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal noundef signext i32 @encode_mcu_DC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 424
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds i8, ptr %4, i64 32
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds i8, ptr %8, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds i8, ptr %4, i64 40
  store i64 %12, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds i8, ptr %0, i64 280
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %4, i64 112
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %4, i64 116
  %23 = load i32, ptr %22, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef signext %23)
  br label %24

24:                                               ; preds = %17, %21, %2
  %25 = getelementptr inbounds i8, ptr %0, i64 368
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 372
  %30 = getelementptr inbounds i8, ptr %0, i64 328
  %31 = getelementptr inbounds i8, ptr %4, i64 72
  %32 = getelementptr inbounds i8, ptr %4, i64 24
  %33 = getelementptr inbounds i8, ptr %4, i64 152
  %34 = getelementptr inbounds i8, ptr %4, i64 120
  br label %35

35:                                               ; preds = %28, %93
  %36 = phi i64 [ 0, %28 ], [ %94, %93 ]
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = getelementptr inbounds [10 x i32], ptr %29, i64 0, i64 %36
  %40 = load i32, ptr %39, align 4, !tbaa !29
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x ptr], ptr %30, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = load i16, ptr %38, align 2, !tbaa !56
  %45 = sext i16 %44 to i32
  %46 = ashr i32 %45, %6
  %47 = getelementptr inbounds [4 x i32], ptr %31, i64 0, i64 %41
  %48 = load i32, ptr %47, align 4, !tbaa !29
  %49 = sub nsw i32 %46, %48
  store i32 %46, ptr %47, align 4, !tbaa !29
  %50 = ashr i32 %49, 31
  %51 = add nsw i32 %50, %49
  %52 = icmp eq i32 %46, %48
  br i1 %52, label %67, label %53

53:                                               ; preds = %35
  %54 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i32 [ %59, %55 ], [ %54, %53 ]
  %57 = phi i32 [ %58, %55 ], [ 0, %53 ]
  %58 = add nuw nsw i32 %57, 1
  %59 = lshr i32 %56, 1
  %60 = icmp ult i32 %56, 2
  br i1 %60, label %61, label %55, !llvm.loop !57

61:                                               ; preds = %55
  %62 = icmp ugt i32 %57, 10
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = load ptr, ptr %0, align 8, !tbaa !36
  %65 = getelementptr inbounds i8, ptr %64, i64 40
  store i32 6, ptr %65, align 8, !tbaa !37
  %66 = load ptr, ptr %64, align 8, !tbaa !40
  tail call void %66(ptr noundef nonnull %0) #6
  br label %67

67:                                               ; preds = %35, %63, %61
  %68 = phi i32 [ %58, %63 ], [ %58, %61 ], [ 0, %35 ]
  %69 = getelementptr inbounds i8, ptr %43, i64 20
  %70 = load i32, ptr %69, align 4, !tbaa !30
  %71 = load i32, ptr %32, align 8, !tbaa !23
  %72 = icmp eq i32 %71, 0
  %73 = sext i32 %70 to i64
  %74 = zext nneg i32 %68 to i64
  br i1 %72, label %81, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds [4 x ptr], ptr %33, i64 0, i64 %73
  %77 = load ptr, ptr %76, align 8, !tbaa !28
  %78 = getelementptr inbounds i64, ptr %77, i64 %74
  %79 = load i64, ptr %78, align 8, !tbaa !58
  %80 = add nsw i64 %79, 1
  store i64 %80, ptr %78, align 8, !tbaa !58
  br label %90

81:                                               ; preds = %67
  %82 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 %73
  %83 = load ptr, ptr %82, align 8, !tbaa !28
  %84 = getelementptr inbounds [256 x i32], ptr %83, i64 0, i64 %74
  %85 = load i32, ptr %84, align 4, !tbaa !29
  %86 = getelementptr inbounds i8, ptr %83, i64 1024
  %87 = getelementptr inbounds [256 x i8], ptr %86, i64 0, i64 %74
  %88 = load i8, ptr %87, align 1, !tbaa !39
  %89 = zext i8 %88 to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %4, i32 noundef signext %85, i32 noundef signext %89)
  br label %90

90:                                               ; preds = %75, %81
  %91 = icmp eq i32 %68, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call fastcc void @emit_bits(ptr noundef nonnull %4, i32 noundef signext %51, i32 noundef signext %68)
  br label %93

93:                                               ; preds = %90, %92
  %94 = add nuw nsw i64 %36, 1
  %95 = load i32, ptr %25, align 8, !tbaa !55
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %35, label %98, !llvm.loop !59

98:                                               ; preds = %93, %24
  %99 = load ptr, ptr %10, align 8, !tbaa !52
  %100 = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %99, ptr %100, align 8, !tbaa !50
  %101 = load i64, ptr %13, align 8, !tbaa !54
  %102 = getelementptr inbounds i8, ptr %100, i64 8
  store i64 %101, ptr %102, align 8, !tbaa !53
  %103 = load i32, ptr %14, align 8, !tbaa !45
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds i8, ptr %4, i64 112
  %107 = load i32, ptr %106, align 8, !tbaa !46
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %4, i64 116
  %111 = load i32, ptr %110, align 4, !tbaa !47
  %112 = add nsw i32 %111, 1
  %113 = and i32 %112, 7
  store i32 %113, ptr %110, align 4, !tbaa !47
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i32 [ %103, %109 ], [ %107, %105 ]
  %116 = add i32 %115, -1
  store i32 %116, ptr %106, align 8, !tbaa !46
  br label %117

117:                                              ; preds = %114, %98
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @encode_mcu_AC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 416
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds i8, ptr %0, i64 424
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds i8, ptr %0, i64 40
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds i8, ptr %4, i64 32
  store ptr %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds i8, ptr %10, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds i8, ptr %4, i64 40
  store i64 %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds i8, ptr %0, i64 280
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds i8, ptr %4, i64 112
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %4, i64 116
  %25 = load i32, ptr %24, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef signext %25)
  br label %26

26:                                               ; preds = %19, %23, %2
  %27 = load ptr, ptr %1, align 8, !tbaa !28
  %28 = getelementptr inbounds i8, ptr %0, i64 412
  %29 = load i32, ptr %28, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %252, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %4, i64 92
  %33 = getelementptr inbounds i8, ptr %4, i64 88
  %34 = getelementptr inbounds i8, ptr %4, i64 24
  %35 = getelementptr inbounds i8, ptr %4, i64 152
  %36 = getelementptr inbounds i8, ptr %4, i64 120
  %37 = getelementptr inbounds i8, ptr %4, i64 56
  %38 = getelementptr inbounds i8, ptr %4, i64 64
  %39 = getelementptr inbounds i8, ptr %4, i64 48
  %40 = sext i32 %29 to i64
  %41 = add i32 %6, 1
  br label %42

42:                                               ; preds = %237, %31
  %43 = phi i64 [ %40, %31 ], [ %238, %237 ]
  %44 = phi i32 [ 0, %31 ], [ %239, %237 ]
  %45 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !29
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !56
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %232, label %51

51:                                               ; preds = %42
  %52 = sext i16 %49 to i32
  %53 = icmp slt i16 %49, 0
  %54 = sub nsw i32 0, %52
  %55 = lshr i32 %54, %8
  %56 = xor i32 %55, -1
  %57 = lshr i32 %52, %8
  %58 = select i1 %53, i32 %56, i32 %57
  %59 = select i1 %53, i32 %55, i32 %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %232, label %61

61:                                               ; preds = %51
  %62 = load i32, ptr %32, align 4, !tbaa !41
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4)
  br label %65

65:                                               ; preds = %64, %61
  %66 = icmp sgt i32 %44, 15
  br i1 %66, label %67, label %86

67:                                               ; preds = %65
  %68 = load i32, ptr %34, align 8, !tbaa !23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %33, align 8, !tbaa !35
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x ptr], ptr %35, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !28
  %75 = getelementptr inbounds i8, ptr %74, i64 1920
  %76 = load i64, ptr %75, align 8, !tbaa !58
  %77 = add i64 %76, 1
  %78 = tail call i32 @llvm.usub.sat.i32(i32 %44, i32 31)
  %79 = add nuw i32 %78, 15
  %80 = lshr i32 %79, 4
  %81 = zext nneg i32 %80 to i64
  %82 = add i64 %77, %81
  %83 = and i32 %79, -16
  %84 = add nsw i32 %44, -16
  %85 = sub nsw i32 %84, %83
  store i64 %82, ptr %75, align 8, !tbaa !58
  br label %86

86:                                               ; preds = %193, %70, %65
  %87 = phi i32 [ %44, %65 ], [ %85, %70 ], [ %194, %193 ]
  %88 = icmp eq i32 %59, 1
  br i1 %88, label %208, label %196

89:                                               ; preds = %193
  %90 = load i32, ptr %34, align 8, !tbaa !23
  br label %91

91:                                               ; preds = %67, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %67 ]
  %93 = phi i32 [ %194, %89 ], [ %44, %67 ]
  %94 = load i32, ptr %33, align 8, !tbaa !35
  %95 = icmp eq i32 %92, 0
  %96 = sext i32 %94 to i64
  br i1 %95, label %103, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds [4 x ptr], ptr %35, i64 0, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !28
  %100 = getelementptr inbounds i8, ptr %99, i64 1920
  %101 = load i64, ptr %100, align 8, !tbaa !58
  %102 = add nsw i64 %101, 1
  store i64 %102, ptr %100, align 8, !tbaa !58
  br label %193

103:                                              ; preds = %91
  %104 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %96
  %105 = load ptr, ptr %104, align 8, !tbaa !28
  %106 = getelementptr inbounds i8, ptr %105, i64 960
  %107 = load i32, ptr %106, align 4, !tbaa !29
  %108 = getelementptr inbounds i8, ptr %105, i64 1264
  %109 = load i8, ptr %108, align 1, !tbaa !39
  %110 = zext i8 %109 to i32
  %111 = zext i32 %107 to i64
  %112 = load i32, ptr %37, align 8, !tbaa !44
  %113 = icmp eq i8 %109, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load ptr, ptr %38, align 8, !tbaa !22
  %116 = load ptr, ptr %115, align 8, !tbaa !36
  %117 = getelementptr inbounds i8, ptr %116, i64 40
  store i32 40, ptr %117, align 8, !tbaa !37
  %118 = load ptr, ptr %116, align 8, !tbaa !40
  tail call void %118(ptr noundef nonnull %115) #6
  %119 = load i32, ptr %34, align 8, !tbaa !23
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %193

121:                                              ; preds = %103, %114
  %122 = zext nneg i8 %109 to i64
  %123 = shl nsw i64 -1, %122
  %124 = xor i64 %123, -1
  %125 = and i64 %124, %111
  %126 = add nsw i32 %112, %110
  %127 = sub nsw i32 24, %126
  %128 = zext nneg i32 %127 to i64
  %129 = shl i64 %125, %128
  %130 = load i64, ptr %39, align 8, !tbaa !43
  %131 = or i64 %130, %129
  %132 = icmp sgt i32 %126, 7
  br i1 %132, label %133, label %190

133:                                              ; preds = %121, %186
  %134 = phi i64 [ %187, %186 ], [ %131, %121 ]
  %135 = phi i32 [ %188, %186 ], [ %126, %121 ]
  %136 = lshr i64 %134, 16
  %137 = trunc i64 %136 to i8
  %138 = load ptr, ptr %12, align 8, !tbaa !52
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %12, align 8, !tbaa !52
  store i8 %137, ptr %138, align 1, !tbaa !39
  %140 = load i64, ptr %15, align 8, !tbaa !54
  %141 = add i64 %140, -1
  store i64 %141, ptr %15, align 8, !tbaa !54
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %133
  %144 = load ptr, ptr %38, align 8, !tbaa !22
  %145 = getelementptr inbounds i8, ptr %144, i64 40
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  %147 = getelementptr inbounds i8, ptr %146, i64 24
  %148 = load ptr, ptr %147, align 8, !tbaa !61
  %149 = tail call signext i32 %148(ptr noundef %144) #6
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load ptr, ptr %38, align 8, !tbaa !22
  %153 = load ptr, ptr %152, align 8, !tbaa !36
  %154 = getelementptr inbounds i8, ptr %153, i64 40
  store i32 24, ptr %154, align 8, !tbaa !37
  %155 = load ptr, ptr %153, align 8, !tbaa !40
  tail call void %155(ptr noundef nonnull %152) #6
  br label %156

156:                                              ; preds = %151, %143
  %157 = load ptr, ptr %146, align 8, !tbaa !50
  store ptr %157, ptr %12, align 8, !tbaa !52
  %158 = getelementptr inbounds i8, ptr %146, i64 8
  %159 = load i64, ptr %158, align 8, !tbaa !53
  store i64 %159, ptr %15, align 8, !tbaa !54
  br label %160

160:                                              ; preds = %156, %133
  %161 = and i64 %134, 16711680
  %162 = icmp eq i64 %161, 16711680
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = load ptr, ptr %12, align 8, !tbaa !52
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %12, align 8, !tbaa !52
  store i8 0, ptr %164, align 1, !tbaa !39
  %166 = load i64, ptr %15, align 8, !tbaa !54
  %167 = add i64 %166, -1
  store i64 %167, ptr %15, align 8, !tbaa !54
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  %170 = load ptr, ptr %38, align 8, !tbaa !22
  %171 = getelementptr inbounds i8, ptr %170, i64 40
  %172 = load ptr, ptr %171, align 8, !tbaa !49
  %173 = getelementptr inbounds i8, ptr %172, i64 24
  %174 = load ptr, ptr %173, align 8, !tbaa !61
  %175 = tail call signext i32 %174(ptr noundef %170) #6
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load ptr, ptr %38, align 8, !tbaa !22
  %179 = load ptr, ptr %178, align 8, !tbaa !36
  %180 = getelementptr inbounds i8, ptr %179, i64 40
  store i32 24, ptr %180, align 8, !tbaa !37
  %181 = load ptr, ptr %179, align 8, !tbaa !40
  tail call void %181(ptr noundef nonnull %178) #6
  br label %182

182:                                              ; preds = %177, %169
  %183 = load ptr, ptr %172, align 8, !tbaa !50
  store ptr %183, ptr %12, align 8, !tbaa !52
  %184 = getelementptr inbounds i8, ptr %172, i64 8
  %185 = load i64, ptr %184, align 8, !tbaa !53
  store i64 %185, ptr %15, align 8, !tbaa !54
  br label %186

186:                                              ; preds = %182, %163, %160
  %187 = shl i64 %134, 8
  %188 = add nsw i32 %135, -8
  %189 = icmp sgt i32 %135, 15
  br i1 %189, label %133, label %190, !llvm.loop !62

190:                                              ; preds = %186, %121
  %191 = phi i32 [ %126, %121 ], [ %188, %186 ]
  %192 = phi i64 [ %131, %121 ], [ %187, %186 ]
  store i64 %192, ptr %39, align 8, !tbaa !43
  store i32 %191, ptr %37, align 8, !tbaa !44
  br label %193

193:                                              ; preds = %190, %114, %97
  %194 = add nsw i32 %93, -16
  %195 = icmp sgt i32 %93, 31
  br i1 %195, label %89, label %86, !llvm.loop !63

196:                                              ; preds = %86, %196
  %197 = phi i32 [ %199, %196 ], [ %59, %86 ]
  %198 = phi i32 [ %200, %196 ], [ 1, %86 ]
  %199 = lshr i32 %197, 1
  %200 = add nuw nsw i32 %198, 1
  %201 = icmp ult i32 %197, 4
  br i1 %201, label %202, label %196, !llvm.loop !65

202:                                              ; preds = %196
  %203 = icmp ugt i32 %198, 9
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = load ptr, ptr %0, align 8, !tbaa !36
  %206 = getelementptr inbounds i8, ptr %205, i64 40
  store i32 6, ptr %206, align 8, !tbaa !37
  %207 = load ptr, ptr %205, align 8, !tbaa !40
  tail call void %207(ptr noundef nonnull %0) #6
  br label %208

208:                                              ; preds = %86, %204, %202
  %209 = phi i32 [ %200, %204 ], [ %200, %202 ], [ 1, %86 ]
  %210 = load i32, ptr %33, align 8, !tbaa !35
  %211 = shl i32 %87, 4
  %212 = add nsw i32 %209, %211
  %213 = load i32, ptr %34, align 8, !tbaa !23
  %214 = icmp eq i32 %213, 0
  %215 = sext i32 %210 to i64
  %216 = sext i32 %212 to i64
  br i1 %214, label %223, label %217

217:                                              ; preds = %208
  %218 = getelementptr inbounds [4 x ptr], ptr %35, i64 0, i64 %215
  %219 = load ptr, ptr %218, align 8, !tbaa !28
  %220 = getelementptr inbounds i64, ptr %219, i64 %216
  %221 = load i64, ptr %220, align 8, !tbaa !58
  %222 = add nsw i64 %221, 1
  store i64 %222, ptr %220, align 8, !tbaa !58
  br label %240

223:                                              ; preds = %208
  %224 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %215
  %225 = load ptr, ptr %224, align 8, !tbaa !28
  %226 = getelementptr inbounds [256 x i32], ptr %225, i64 0, i64 %216
  %227 = load i32, ptr %226, align 4, !tbaa !29
  %228 = getelementptr inbounds i8, ptr %225, i64 1024
  %229 = getelementptr inbounds [256 x i8], ptr %228, i64 0, i64 %216
  %230 = load i8, ptr %229, align 1, !tbaa !39
  %231 = zext i8 %230 to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %4, i32 noundef signext %227, i32 noundef signext %231)
  br label %240

232:                                              ; preds = %51, %42
  %233 = add nsw i32 %44, 1
  %234 = add nsw i64 %43, 1
  %235 = trunc i64 %234 to i32
  %236 = icmp eq i32 %41, %235
  br i1 %236, label %244, label %237

237:                                              ; preds = %232, %240
  %238 = phi i64 [ %234, %232 ], [ %241, %240 ]
  %239 = phi i32 [ %233, %232 ], [ 0, %240 ]
  br label %42, !llvm.loop !66

240:                                              ; preds = %223, %217
  tail call fastcc void @emit_bits(ptr noundef nonnull %4, i32 noundef signext %58, i32 noundef signext %209)
  %241 = add nsw i64 %43, 1
  %242 = trunc i64 %241 to i32
  %243 = icmp eq i32 %41, %242
  br i1 %243, label %252, label %237

244:                                              ; preds = %232
  %245 = icmp sgt i32 %44, -1
  br i1 %245, label %246, label %252

246:                                              ; preds = %244
  %247 = getelementptr inbounds i8, ptr %4, i64 92
  %248 = load i32, ptr %247, align 4, !tbaa !41
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4, !tbaa !41
  %250 = icmp eq i32 %249, 32767
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4)
  br label %252

252:                                              ; preds = %240, %26, %246, %251, %244
  %253 = load ptr, ptr %12, align 8, !tbaa !52
  %254 = load ptr, ptr %9, align 8, !tbaa !49
  store ptr %253, ptr %254, align 8, !tbaa !50
  %255 = load i64, ptr %15, align 8, !tbaa !54
  %256 = getelementptr inbounds i8, ptr %254, i64 8
  store i64 %255, ptr %256, align 8, !tbaa !53
  %257 = load i32, ptr %16, align 8, !tbaa !45
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds i8, ptr %4, i64 112
  %261 = load i32, ptr %260, align 8, !tbaa !46
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %4, i64 116
  %265 = load i32, ptr %264, align 4, !tbaa !47
  %266 = add nsw i32 %265, 1
  %267 = and i32 %266, 7
  store i32 %267, ptr %264, align 4, !tbaa !47
  br label %268

268:                                              ; preds = %263, %259
  %269 = phi i32 [ %257, %263 ], [ %261, %259 ]
  %270 = add i32 %269, -1
  store i32 %270, ptr %260, align 8, !tbaa !46
  br label %271

271:                                              ; preds = %268, %252
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @encode_mcu_DC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 424
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds i8, ptr %4, i64 32
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds i8, ptr %8, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds i8, ptr %4, i64 40
  store i64 %12, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds i8, ptr %0, i64 280
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %4, i64 112
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %4, i64 116
  %23 = load i32, ptr %22, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef signext %23)
  br label %24

24:                                               ; preds = %17, %21, %2
  %25 = getelementptr inbounds i8, ptr %0, i64 368
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %35, %28 ], [ 0, %24 ]
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = load i16, ptr %31, align 2, !tbaa !56
  %33 = sext i16 %32 to i32
  %34 = ashr i32 %33, %6
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef signext %34, i32 noundef signext 1)
  %35 = add nuw nsw i64 %29, 1
  %36 = load i32, ptr %25, align 8, !tbaa !55
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %28, label %39, !llvm.loop !67

39:                                               ; preds = %28, %24
  %40 = load ptr, ptr %10, align 8, !tbaa !52
  %41 = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %40, ptr %41, align 8, !tbaa !50
  %42 = load i64, ptr %13, align 8, !tbaa !54
  %43 = getelementptr inbounds i8, ptr %41, i64 8
  store i64 %42, ptr %43, align 8, !tbaa !53
  %44 = load i32, ptr %14, align 8, !tbaa !45
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, ptr %4, i64 112
  %48 = load i32, ptr %47, align 8, !tbaa !46
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %4, i64 116
  %52 = load i32, ptr %51, align 4, !tbaa !47
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 7
  store i32 %54, ptr %51, align 4, !tbaa !47
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i32 [ %44, %50 ], [ %48, %46 ]
  %57 = add i32 %56, -1
  store i32 %57, ptr %47, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %55, %39
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @encode_mcu_AC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i32], align 4
  %4 = getelementptr inbounds i8, ptr %0, i64 496
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %0, i64 416
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds i8, ptr %0, i64 424
  %9 = load i32, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds i8, ptr %11, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds i8, ptr %5, i64 40
  store i64 %15, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds i8, ptr %0, i64 280
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds i8, ptr %5, i64 112
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %5, i64 116
  %26 = load i32, ptr %25, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef nonnull %5, i32 noundef signext %26)
  br label %27

27:                                               ; preds = %20, %24, %2
  %28 = load ptr, ptr %1, align 8, !tbaa !28
  %29 = getelementptr inbounds i8, ptr %0, i64 412
  %30 = load i32, ptr %29, align 4, !tbaa !24
  %31 = icmp sgt i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %5, i64 96
  br label %720

34:                                               ; preds = %27
  %35 = sext i32 %30 to i64
  %36 = add i32 %7, 1
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ %35, %34 ], [ %52, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %51, %37 ]
  %40 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !29
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !56
  %45 = tail call i16 @llvm.abs.i16(i16 %44, i1 false)
  %46 = zext i16 %45 to i32
  %47 = lshr i32 %46, %9
  %48 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %38
  store i32 %47, ptr %48, align 4, !tbaa !29
  %49 = icmp eq i32 %47, 1
  %50 = trunc nsw i64 %38 to i32
  %51 = select i1 %49, i32 %50, i32 %39
  %52 = add nsw i64 %38, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %36, %53
  br i1 %54, label %55, label %37, !llvm.loop !68

55:                                               ; preds = %37
  %56 = getelementptr inbounds i8, ptr %5, i64 104
  %57 = getelementptr inbounds i8, ptr %5, i64 96
  br i1 %31, label %720, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !21
  %60 = load i32, ptr %57, align 8, !tbaa !42
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = getelementptr inbounds i8, ptr %5, i64 92
  %64 = getelementptr inbounds i8, ptr %5, i64 64
  %65 = getelementptr inbounds i8, ptr %5, i64 88
  %66 = getelementptr inbounds i8, ptr %5, i64 24
  %67 = getelementptr inbounds i8, ptr %5, i64 152
  %68 = getelementptr inbounds i8, ptr %5, i64 120
  %69 = getelementptr inbounds i8, ptr %5, i64 56
  %70 = getelementptr inbounds i8, ptr %5, i64 48
  %71 = sext i32 %30 to i64
  %72 = sext i32 %51 to i64
  %73 = add i32 %7, 1
  br label %74

74:                                               ; preds = %58, %711
  %75 = phi i64 [ %71, %58 ], [ %715, %711 ]
  %76 = phi i32 [ 0, %58 ], [ %714, %711 ]
  %77 = phi i32 [ 0, %58 ], [ %713, %711 ]
  %78 = phi ptr [ %62, %58 ], [ %712, %711 ]
  %79 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %75
  %80 = load i32, ptr %79, align 4, !tbaa !29
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = icmp sle i64 %75, %72
  %84 = icmp sgt i32 %76, 15
  %85 = select i1 %84, i1 %83, i1 false
  br i1 %85, label %88, label %580

86:                                               ; preds = %74
  %87 = add nsw i32 %76, 1
  br label %711

88:                                               ; preds = %82, %576
  %89 = phi i32 [ %577, %576 ], [ %76, %82 ]
  %90 = phi i32 [ 0, %576 ], [ %77, %82 ]
  %91 = phi ptr [ %578, %576 ], [ %78, %82 ]
  %92 = load i32, ptr %63, align 4, !tbaa !41
  switch i32 %92, label %93 [
    i32 0, label %388
    i32 1, label %106
  ]

93:                                               ; preds = %88, %93
  %94 = phi i32 [ %97, %93 ], [ 0, %88 ]
  %95 = phi i32 [ %96, %93 ], [ %92, %88 ]
  %96 = ashr i32 %95, 1
  %97 = add nuw nsw i32 %94, 1
  %98 = icmp ult i32 %96, 2
  br i1 %98, label %99, label %93, !llvm.loop !69

99:                                               ; preds = %93
  %100 = icmp ugt i32 %94, 13
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = load ptr, ptr %64, align 8, !tbaa !22
  %103 = load ptr, ptr %102, align 8, !tbaa !36
  %104 = getelementptr inbounds i8, ptr %103, i64 40
  store i32 40, ptr %104, align 8, !tbaa !37
  %105 = load ptr, ptr %103, align 8, !tbaa !40
  tail call void %105(ptr noundef nonnull %102) #6
  br label %106

106:                                              ; preds = %101, %99, %88
  %107 = phi i32 [ %97, %101 ], [ %97, %99 ], [ 0, %88 ]
  %108 = load i32, ptr %65, align 8, !tbaa !35
  %109 = shl i32 %107, 4
  %110 = load i32, ptr %66, align 8, !tbaa !23
  %111 = icmp eq i32 %110, 0
  %112 = sext i32 %108 to i64
  %113 = sext i32 %109 to i64
  br i1 %111, label %120, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds [4 x ptr], ptr %67, i64 0, i64 %112
  %116 = load ptr, ptr %115, align 8, !tbaa !28
  %117 = getelementptr inbounds i64, ptr %116, i64 %113
  %118 = load i64, ptr %117, align 8, !tbaa !58
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %117, align 8, !tbaa !58
  br label %214

120:                                              ; preds = %106
  %121 = getelementptr inbounds [4 x ptr], ptr %68, i64 0, i64 %112
  %122 = load ptr, ptr %121, align 8, !tbaa !28
  %123 = getelementptr inbounds [256 x i32], ptr %122, i64 0, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !29
  %125 = getelementptr inbounds i8, ptr %122, i64 1024
  %126 = getelementptr inbounds [256 x i8], ptr %125, i64 0, i64 %113
  %127 = load i8, ptr %126, align 1, !tbaa !39
  %128 = zext i8 %127 to i32
  %129 = zext i32 %124 to i64
  %130 = load i32, ptr %69, align 8, !tbaa !44
  %131 = icmp eq i8 %127, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %120
  %133 = load ptr, ptr %64, align 8, !tbaa !22
  %134 = load ptr, ptr %133, align 8, !tbaa !36
  %135 = getelementptr inbounds i8, ptr %134, i64 40
  store i32 40, ptr %135, align 8, !tbaa !37
  %136 = load ptr, ptr %134, align 8, !tbaa !40
  tail call void %136(ptr noundef nonnull %133) #6
  %137 = load i32, ptr %66, align 8, !tbaa !23
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %214

139:                                              ; preds = %120, %132
  %140 = zext nneg i8 %127 to i64
  %141 = shl nsw i64 -1, %140
  %142 = xor i64 %141, -1
  %143 = and i64 %142, %129
  %144 = add nsw i32 %130, %128
  %145 = sub nsw i32 24, %144
  %146 = zext nneg i32 %145 to i64
  %147 = shl i64 %143, %146
  %148 = load i64, ptr %70, align 8, !tbaa !43
  %149 = or i64 %148, %147
  %150 = icmp sgt i32 %144, 7
  br i1 %150, label %151, label %210

151:                                              ; preds = %139, %204
  %152 = phi i64 [ %205, %204 ], [ %149, %139 ]
  %153 = phi i32 [ %206, %204 ], [ %144, %139 ]
  %154 = lshr i64 %152, 16
  %155 = trunc i64 %154 to i8
  %156 = load ptr, ptr %13, align 8, !tbaa !52
  %157 = getelementptr inbounds i8, ptr %156, i64 1
  store ptr %157, ptr %13, align 8, !tbaa !52
  store i8 %155, ptr %156, align 1, !tbaa !39
  %158 = load i64, ptr %16, align 8, !tbaa !54
  %159 = add i64 %158, -1
  store i64 %159, ptr %16, align 8, !tbaa !54
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %151
  %162 = load ptr, ptr %64, align 8, !tbaa !22
  %163 = getelementptr inbounds i8, ptr %162, i64 40
  %164 = load ptr, ptr %163, align 8, !tbaa !49
  %165 = getelementptr inbounds i8, ptr %164, i64 24
  %166 = load ptr, ptr %165, align 8, !tbaa !61
  %167 = tail call signext i32 %166(ptr noundef %162) #6
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = load ptr, ptr %64, align 8, !tbaa !22
  %171 = load ptr, ptr %170, align 8, !tbaa !36
  %172 = getelementptr inbounds i8, ptr %171, i64 40
  store i32 24, ptr %172, align 8, !tbaa !37
  %173 = load ptr, ptr %171, align 8, !tbaa !40
  tail call void %173(ptr noundef nonnull %170) #6
  br label %174

174:                                              ; preds = %169, %161
  %175 = load ptr, ptr %164, align 8, !tbaa !50
  store ptr %175, ptr %13, align 8, !tbaa !52
  %176 = getelementptr inbounds i8, ptr %164, i64 8
  %177 = load i64, ptr %176, align 8, !tbaa !53
  store i64 %177, ptr %16, align 8, !tbaa !54
  br label %178

178:                                              ; preds = %174, %151
  %179 = and i64 %152, 16711680
  %180 = icmp eq i64 %179, 16711680
  br i1 %180, label %181, label %204

181:                                              ; preds = %178
  %182 = load ptr, ptr %13, align 8, !tbaa !52
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  store ptr %183, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %182, align 1, !tbaa !39
  %184 = load i64, ptr %16, align 8, !tbaa !54
  %185 = add i64 %184, -1
  store i64 %185, ptr %16, align 8, !tbaa !54
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load ptr, ptr %64, align 8, !tbaa !22
  %189 = getelementptr inbounds i8, ptr %188, i64 40
  %190 = load ptr, ptr %189, align 8, !tbaa !49
  %191 = getelementptr inbounds i8, ptr %190, i64 24
  %192 = load ptr, ptr %191, align 8, !tbaa !61
  %193 = tail call signext i32 %192(ptr noundef %188) #6
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load ptr, ptr %64, align 8, !tbaa !22
  %197 = load ptr, ptr %196, align 8, !tbaa !36
  %198 = getelementptr inbounds i8, ptr %197, i64 40
  store i32 24, ptr %198, align 8, !tbaa !37
  %199 = load ptr, ptr %197, align 8, !tbaa !40
  tail call void %199(ptr noundef nonnull %196) #6
  br label %200

200:                                              ; preds = %195, %187
  %201 = load ptr, ptr %190, align 8, !tbaa !50
  store ptr %201, ptr %13, align 8, !tbaa !52
  %202 = getelementptr inbounds i8, ptr %190, i64 8
  %203 = load i64, ptr %202, align 8, !tbaa !53
  store i64 %203, ptr %16, align 8, !tbaa !54
  br label %204

204:                                              ; preds = %200, %181, %178
  %205 = shl i64 %152, 8
  %206 = add nsw i32 %153, -8
  %207 = icmp sgt i32 %153, 15
  br i1 %207, label %151, label %208, !llvm.loop !62

208:                                              ; preds = %204
  %209 = load i32, ptr %66, align 8, !tbaa !23
  br label %210

210:                                              ; preds = %208, %139
  %211 = phi i32 [ 0, %139 ], [ %209, %208 ]
  %212 = phi i32 [ %144, %139 ], [ %206, %208 ]
  %213 = phi i64 [ %149, %139 ], [ %205, %208 ]
  store i64 %213, ptr %70, align 8, !tbaa !43
  store i32 %212, ptr %69, align 8, !tbaa !44
  br label %214

214:                                              ; preds = %210, %132, %114
  %215 = phi i32 [ %211, %210 ], [ %137, %132 ], [ %110, %114 ]
  %216 = icmp eq i32 %107, 0
  br i1 %216, label %298, label %217

217:                                              ; preds = %214
  %218 = icmp eq i32 %215, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %217
  store i32 0, ptr %63, align 4, !tbaa !41
  br label %387

220:                                              ; preds = %217
  %221 = load i32, ptr %69, align 8, !tbaa !44
  %222 = load i32, ptr %63, align 4, !tbaa !41
  %223 = zext i32 %222 to i64
  %224 = zext nneg i32 %107 to i64
  %225 = shl nsw i64 -1, %224
  %226 = xor i64 %225, -1
  %227 = and i64 %223, %226
  %228 = add nsw i32 %221, %107
  %229 = sub nsw i32 24, %228
  %230 = zext nneg i32 %229 to i64
  %231 = shl i64 %227, %230
  %232 = load i64, ptr %70, align 8, !tbaa !43
  %233 = or i64 %231, %232
  %234 = icmp sgt i32 %228, 7
  br i1 %234, label %235, label %294

235:                                              ; preds = %220, %288
  %236 = phi i64 [ %289, %288 ], [ %233, %220 ]
  %237 = phi i32 [ %290, %288 ], [ %228, %220 ]
  %238 = lshr i64 %236, 16
  %239 = trunc i64 %238 to i8
  %240 = load ptr, ptr %13, align 8, !tbaa !52
  %241 = getelementptr inbounds i8, ptr %240, i64 1
  store ptr %241, ptr %13, align 8, !tbaa !52
  store i8 %239, ptr %240, align 1, !tbaa !39
  %242 = load i64, ptr %16, align 8, !tbaa !54
  %243 = add i64 %242, -1
  store i64 %243, ptr %16, align 8, !tbaa !54
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %235
  %246 = load ptr, ptr %64, align 8, !tbaa !22
  %247 = getelementptr inbounds i8, ptr %246, i64 40
  %248 = load ptr, ptr %247, align 8, !tbaa !49
  %249 = getelementptr inbounds i8, ptr %248, i64 24
  %250 = load ptr, ptr %249, align 8, !tbaa !61
  %251 = tail call signext i32 %250(ptr noundef %246) #6
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %245
  %254 = load ptr, ptr %64, align 8, !tbaa !22
  %255 = load ptr, ptr %254, align 8, !tbaa !36
  %256 = getelementptr inbounds i8, ptr %255, i64 40
  store i32 24, ptr %256, align 8, !tbaa !37
  %257 = load ptr, ptr %255, align 8, !tbaa !40
  tail call void %257(ptr noundef nonnull %254) #6
  br label %258

258:                                              ; preds = %253, %245
  %259 = load ptr, ptr %248, align 8, !tbaa !50
  store ptr %259, ptr %13, align 8, !tbaa !52
  %260 = getelementptr inbounds i8, ptr %248, i64 8
  %261 = load i64, ptr %260, align 8, !tbaa !53
  store i64 %261, ptr %16, align 8, !tbaa !54
  br label %262

262:                                              ; preds = %258, %235
  %263 = and i64 %236, 16711680
  %264 = icmp eq i64 %263, 16711680
  br i1 %264, label %265, label %288

265:                                              ; preds = %262
  %266 = load ptr, ptr %13, align 8, !tbaa !52
  %267 = getelementptr inbounds i8, ptr %266, i64 1
  store ptr %267, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %266, align 1, !tbaa !39
  %268 = load i64, ptr %16, align 8, !tbaa !54
  %269 = add i64 %268, -1
  store i64 %269, ptr %16, align 8, !tbaa !54
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %288

271:                                              ; preds = %265
  %272 = load ptr, ptr %64, align 8, !tbaa !22
  %273 = getelementptr inbounds i8, ptr %272, i64 40
  %274 = load ptr, ptr %273, align 8, !tbaa !49
  %275 = getelementptr inbounds i8, ptr %274, i64 24
  %276 = load ptr, ptr %275, align 8, !tbaa !61
  %277 = tail call signext i32 %276(ptr noundef %272) #6
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %271
  %280 = load ptr, ptr %64, align 8, !tbaa !22
  %281 = load ptr, ptr %280, align 8, !tbaa !36
  %282 = getelementptr inbounds i8, ptr %281, i64 40
  store i32 24, ptr %282, align 8, !tbaa !37
  %283 = load ptr, ptr %281, align 8, !tbaa !40
  tail call void %283(ptr noundef nonnull %280) #6
  br label %284

284:                                              ; preds = %279, %271
  %285 = load ptr, ptr %274, align 8, !tbaa !50
  store ptr %285, ptr %13, align 8, !tbaa !52
  %286 = getelementptr inbounds i8, ptr %274, i64 8
  %287 = load i64, ptr %286, align 8, !tbaa !53
  store i64 %287, ptr %16, align 8, !tbaa !54
  br label %288

288:                                              ; preds = %284, %265, %262
  %289 = shl i64 %236, 8
  %290 = add nsw i32 %237, -8
  %291 = icmp sgt i32 %237, 15
  br i1 %291, label %235, label %292, !llvm.loop !62

292:                                              ; preds = %288
  %293 = load i32, ptr %66, align 8, !tbaa !23
  br label %294

294:                                              ; preds = %292, %220
  %295 = phi i32 [ 0, %220 ], [ %293, %292 ]
  %296 = phi i32 [ %228, %220 ], [ %290, %292 ]
  %297 = phi i64 [ %233, %220 ], [ %289, %292 ]
  store i64 %297, ptr %70, align 8, !tbaa !43
  store i32 %296, ptr %69, align 8, !tbaa !44
  br label %298

298:                                              ; preds = %294, %214
  %299 = phi i32 [ %295, %294 ], [ %215, %214 ]
  store i32 0, ptr %63, align 4, !tbaa !41
  %300 = load i32, ptr %57, align 8, !tbaa !42
  %301 = icmp eq i32 %299, 0
  %302 = icmp ne i32 %300, 0
  %303 = and i1 %302, %301
  br i1 %303, label %304, label %387

304:                                              ; preds = %298
  %305 = load ptr, ptr %56, align 8, !tbaa !21
  br label %306

306:                                              ; preds = %304, %383
  %307 = phi ptr [ %384, %383 ], [ %305, %304 ]
  %308 = phi i32 [ %385, %383 ], [ %300, %304 ]
  %309 = load i32, ptr %66, align 8, !tbaa !23
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %383

311:                                              ; preds = %306
  %312 = load i32, ptr %69, align 8, !tbaa !44
  %313 = load i8, ptr %307, align 1, !tbaa !39
  %314 = and i8 %313, 1
  %315 = zext nneg i8 %314 to i64
  %316 = add nsw i32 %312, 1
  %317 = sub nsw i32 23, %312
  %318 = zext nneg i32 %317 to i64
  %319 = shl nuw i64 %315, %318
  %320 = load i64, ptr %70, align 8, !tbaa !43
  %321 = or i64 %319, %320
  %322 = icmp sgt i32 %312, 6
  br i1 %322, label %323, label %380

323:                                              ; preds = %311, %376
  %324 = phi i64 [ %377, %376 ], [ %321, %311 ]
  %325 = phi i32 [ %378, %376 ], [ %316, %311 ]
  %326 = lshr i64 %324, 16
  %327 = trunc i64 %326 to i8
  %328 = load ptr, ptr %13, align 8, !tbaa !52
  %329 = getelementptr inbounds i8, ptr %328, i64 1
  store ptr %329, ptr %13, align 8, !tbaa !52
  store i8 %327, ptr %328, align 1, !tbaa !39
  %330 = load i64, ptr %16, align 8, !tbaa !54
  %331 = add i64 %330, -1
  store i64 %331, ptr %16, align 8, !tbaa !54
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %350

333:                                              ; preds = %323
  %334 = load ptr, ptr %64, align 8, !tbaa !22
  %335 = getelementptr inbounds i8, ptr %334, i64 40
  %336 = load ptr, ptr %335, align 8, !tbaa !49
  %337 = getelementptr inbounds i8, ptr %336, i64 24
  %338 = load ptr, ptr %337, align 8, !tbaa !61
  %339 = tail call signext i32 %338(ptr noundef %334) #6
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %333
  %342 = load ptr, ptr %64, align 8, !tbaa !22
  %343 = load ptr, ptr %342, align 8, !tbaa !36
  %344 = getelementptr inbounds i8, ptr %343, i64 40
  store i32 24, ptr %344, align 8, !tbaa !37
  %345 = load ptr, ptr %343, align 8, !tbaa !40
  tail call void %345(ptr noundef nonnull %342) #6
  br label %346

346:                                              ; preds = %341, %333
  %347 = load ptr, ptr %336, align 8, !tbaa !50
  store ptr %347, ptr %13, align 8, !tbaa !52
  %348 = getelementptr inbounds i8, ptr %336, i64 8
  %349 = load i64, ptr %348, align 8, !tbaa !53
  store i64 %349, ptr %16, align 8, !tbaa !54
  br label %350

350:                                              ; preds = %346, %323
  %351 = and i64 %324, 16711680
  %352 = icmp eq i64 %351, 16711680
  br i1 %352, label %353, label %376

353:                                              ; preds = %350
  %354 = load ptr, ptr %13, align 8, !tbaa !52
  %355 = getelementptr inbounds i8, ptr %354, i64 1
  store ptr %355, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %354, align 1, !tbaa !39
  %356 = load i64, ptr %16, align 8, !tbaa !54
  %357 = add i64 %356, -1
  store i64 %357, ptr %16, align 8, !tbaa !54
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %376

359:                                              ; preds = %353
  %360 = load ptr, ptr %64, align 8, !tbaa !22
  %361 = getelementptr inbounds i8, ptr %360, i64 40
  %362 = load ptr, ptr %361, align 8, !tbaa !49
  %363 = getelementptr inbounds i8, ptr %362, i64 24
  %364 = load ptr, ptr %363, align 8, !tbaa !61
  %365 = tail call signext i32 %364(ptr noundef %360) #6
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %359
  %368 = load ptr, ptr %64, align 8, !tbaa !22
  %369 = load ptr, ptr %368, align 8, !tbaa !36
  %370 = getelementptr inbounds i8, ptr %369, i64 40
  store i32 24, ptr %370, align 8, !tbaa !37
  %371 = load ptr, ptr %369, align 8, !tbaa !40
  tail call void %371(ptr noundef nonnull %368) #6
  br label %372

372:                                              ; preds = %367, %359
  %373 = load ptr, ptr %362, align 8, !tbaa !50
  store ptr %373, ptr %13, align 8, !tbaa !52
  %374 = getelementptr inbounds i8, ptr %362, i64 8
  %375 = load i64, ptr %374, align 8, !tbaa !53
  store i64 %375, ptr %16, align 8, !tbaa !54
  br label %376

376:                                              ; preds = %372, %353, %350
  %377 = shl i64 %324, 8
  %378 = add nsw i32 %325, -8
  %379 = icmp sgt i32 %325, 15
  br i1 %379, label %323, label %380, !llvm.loop !62

380:                                              ; preds = %376, %311
  %381 = phi i32 [ %316, %311 ], [ %378, %376 ]
  %382 = phi i64 [ %321, %311 ], [ %377, %376 ]
  store i64 %382, ptr %70, align 8, !tbaa !43
  store i32 %381, ptr %69, align 8, !tbaa !44
  br label %383

383:                                              ; preds = %306, %380
  %384 = getelementptr inbounds i8, ptr %307, i64 1
  %385 = add i32 %308, -1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %306, !llvm.loop !70

387:                                              ; preds = %383, %219, %298
  store i32 0, ptr %57, align 8, !tbaa !42
  br label %388

388:                                              ; preds = %88, %387
  %389 = load i32, ptr %65, align 8, !tbaa !35
  %390 = load i32, ptr %66, align 8, !tbaa !23
  %391 = icmp eq i32 %390, 0
  %392 = sext i32 %389 to i64
  br i1 %391, label %399, label %393

393:                                              ; preds = %388
  %394 = getelementptr inbounds [4 x ptr], ptr %67, i64 0, i64 %392
  %395 = load ptr, ptr %394, align 8, !tbaa !28
  %396 = getelementptr inbounds i8, ptr %395, i64 1920
  %397 = load i64, ptr %396, align 8, !tbaa !58
  %398 = add nsw i64 %397, 1
  store i64 %398, ptr %396, align 8, !tbaa !58
  br label %576

399:                                              ; preds = %388
  %400 = getelementptr inbounds [4 x ptr], ptr %68, i64 0, i64 %392
  %401 = load ptr, ptr %400, align 8, !tbaa !28
  %402 = getelementptr inbounds i8, ptr %401, i64 960
  %403 = load i32, ptr %402, align 4, !tbaa !29
  %404 = getelementptr inbounds i8, ptr %401, i64 1264
  %405 = load i8, ptr %404, align 1, !tbaa !39
  %406 = zext i8 %405 to i32
  %407 = zext i32 %403 to i64
  %408 = load i32, ptr %69, align 8, !tbaa !44
  %409 = icmp eq i8 %405, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %399
  %411 = load ptr, ptr %64, align 8, !tbaa !22
  %412 = load ptr, ptr %411, align 8, !tbaa !36
  %413 = getelementptr inbounds i8, ptr %412, i64 40
  store i32 40, ptr %413, align 8, !tbaa !37
  %414 = load ptr, ptr %412, align 8, !tbaa !40
  tail call void %414(ptr noundef nonnull %411) #6
  %415 = load i32, ptr %66, align 8, !tbaa !23
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %576

417:                                              ; preds = %399, %410
  %418 = zext nneg i8 %405 to i64
  %419 = shl nsw i64 -1, %418
  %420 = xor i64 %419, -1
  %421 = and i64 %420, %407
  %422 = add nsw i32 %408, %406
  %423 = sub nsw i32 24, %422
  %424 = zext nneg i32 %423 to i64
  %425 = shl i64 %421, %424
  %426 = load i64, ptr %70, align 8, !tbaa !43
  %427 = or i64 %426, %425
  %428 = icmp sgt i32 %422, 7
  br i1 %428, label %429, label %488

429:                                              ; preds = %417, %482
  %430 = phi i64 [ %483, %482 ], [ %427, %417 ]
  %431 = phi i32 [ %484, %482 ], [ %422, %417 ]
  %432 = lshr i64 %430, 16
  %433 = trunc i64 %432 to i8
  %434 = load ptr, ptr %13, align 8, !tbaa !52
  %435 = getelementptr inbounds i8, ptr %434, i64 1
  store ptr %435, ptr %13, align 8, !tbaa !52
  store i8 %433, ptr %434, align 1, !tbaa !39
  %436 = load i64, ptr %16, align 8, !tbaa !54
  %437 = add i64 %436, -1
  store i64 %437, ptr %16, align 8, !tbaa !54
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %456

439:                                              ; preds = %429
  %440 = load ptr, ptr %64, align 8, !tbaa !22
  %441 = getelementptr inbounds i8, ptr %440, i64 40
  %442 = load ptr, ptr %441, align 8, !tbaa !49
  %443 = getelementptr inbounds i8, ptr %442, i64 24
  %444 = load ptr, ptr %443, align 8, !tbaa !61
  %445 = tail call signext i32 %444(ptr noundef %440) #6
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %439
  %448 = load ptr, ptr %64, align 8, !tbaa !22
  %449 = load ptr, ptr %448, align 8, !tbaa !36
  %450 = getelementptr inbounds i8, ptr %449, i64 40
  store i32 24, ptr %450, align 8, !tbaa !37
  %451 = load ptr, ptr %449, align 8, !tbaa !40
  tail call void %451(ptr noundef nonnull %448) #6
  br label %452

452:                                              ; preds = %447, %439
  %453 = load ptr, ptr %442, align 8, !tbaa !50
  store ptr %453, ptr %13, align 8, !tbaa !52
  %454 = getelementptr inbounds i8, ptr %442, i64 8
  %455 = load i64, ptr %454, align 8, !tbaa !53
  store i64 %455, ptr %16, align 8, !tbaa !54
  br label %456

456:                                              ; preds = %452, %429
  %457 = and i64 %430, 16711680
  %458 = icmp eq i64 %457, 16711680
  br i1 %458, label %459, label %482

459:                                              ; preds = %456
  %460 = load ptr, ptr %13, align 8, !tbaa !52
  %461 = getelementptr inbounds i8, ptr %460, i64 1
  store ptr %461, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %460, align 1, !tbaa !39
  %462 = load i64, ptr %16, align 8, !tbaa !54
  %463 = add i64 %462, -1
  store i64 %463, ptr %16, align 8, !tbaa !54
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %482

465:                                              ; preds = %459
  %466 = load ptr, ptr %64, align 8, !tbaa !22
  %467 = getelementptr inbounds i8, ptr %466, i64 40
  %468 = load ptr, ptr %467, align 8, !tbaa !49
  %469 = getelementptr inbounds i8, ptr %468, i64 24
  %470 = load ptr, ptr %469, align 8, !tbaa !61
  %471 = tail call signext i32 %470(ptr noundef %466) #6
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %478

473:                                              ; preds = %465
  %474 = load ptr, ptr %64, align 8, !tbaa !22
  %475 = load ptr, ptr %474, align 8, !tbaa !36
  %476 = getelementptr inbounds i8, ptr %475, i64 40
  store i32 24, ptr %476, align 8, !tbaa !37
  %477 = load ptr, ptr %475, align 8, !tbaa !40
  tail call void %477(ptr noundef nonnull %474) #6
  br label %478

478:                                              ; preds = %473, %465
  %479 = load ptr, ptr %468, align 8, !tbaa !50
  store ptr %479, ptr %13, align 8, !tbaa !52
  %480 = getelementptr inbounds i8, ptr %468, i64 8
  %481 = load i64, ptr %480, align 8, !tbaa !53
  store i64 %481, ptr %16, align 8, !tbaa !54
  br label %482

482:                                              ; preds = %478, %459, %456
  %483 = shl i64 %430, 8
  %484 = add nsw i32 %431, -8
  %485 = icmp sgt i32 %431, 15
  br i1 %485, label %429, label %486, !llvm.loop !62

486:                                              ; preds = %482
  %487 = load i32, ptr %66, align 8, !tbaa !23
  br label %488

488:                                              ; preds = %417, %486
  %489 = phi i32 [ 0, %417 ], [ %487, %486 ]
  %490 = phi i32 [ %422, %417 ], [ %484, %486 ]
  %491 = phi i64 [ %427, %417 ], [ %483, %486 ]
  store i64 %491, ptr %70, align 8, !tbaa !43
  store i32 %490, ptr %69, align 8, !tbaa !44
  %492 = icmp eq i32 %489, 0
  %493 = icmp ne i32 %90, 0
  %494 = and i1 %493, %492
  br i1 %494, label %495, label %576

495:                                              ; preds = %488, %572
  %496 = phi ptr [ %573, %572 ], [ %91, %488 ]
  %497 = phi i32 [ %574, %572 ], [ %90, %488 ]
  %498 = load i32, ptr %66, align 8, !tbaa !23
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %572

500:                                              ; preds = %495
  %501 = load i32, ptr %69, align 8, !tbaa !44
  %502 = load i8, ptr %496, align 1, !tbaa !39
  %503 = and i8 %502, 1
  %504 = zext nneg i8 %503 to i64
  %505 = add nsw i32 %501, 1
  %506 = sub nsw i32 23, %501
  %507 = zext nneg i32 %506 to i64
  %508 = shl nuw i64 %504, %507
  %509 = load i64, ptr %70, align 8, !tbaa !43
  %510 = or i64 %508, %509
  %511 = icmp sgt i32 %501, 6
  br i1 %511, label %512, label %569

512:                                              ; preds = %500, %565
  %513 = phi i64 [ %566, %565 ], [ %510, %500 ]
  %514 = phi i32 [ %567, %565 ], [ %505, %500 ]
  %515 = lshr i64 %513, 16
  %516 = trunc i64 %515 to i8
  %517 = load ptr, ptr %13, align 8, !tbaa !52
  %518 = getelementptr inbounds i8, ptr %517, i64 1
  store ptr %518, ptr %13, align 8, !tbaa !52
  store i8 %516, ptr %517, align 1, !tbaa !39
  %519 = load i64, ptr %16, align 8, !tbaa !54
  %520 = add i64 %519, -1
  store i64 %520, ptr %16, align 8, !tbaa !54
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %539

522:                                              ; preds = %512
  %523 = load ptr, ptr %64, align 8, !tbaa !22
  %524 = getelementptr inbounds i8, ptr %523, i64 40
  %525 = load ptr, ptr %524, align 8, !tbaa !49
  %526 = getelementptr inbounds i8, ptr %525, i64 24
  %527 = load ptr, ptr %526, align 8, !tbaa !61
  %528 = tail call signext i32 %527(ptr noundef %523) #6
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %522
  %531 = load ptr, ptr %64, align 8, !tbaa !22
  %532 = load ptr, ptr %531, align 8, !tbaa !36
  %533 = getelementptr inbounds i8, ptr %532, i64 40
  store i32 24, ptr %533, align 8, !tbaa !37
  %534 = load ptr, ptr %532, align 8, !tbaa !40
  tail call void %534(ptr noundef nonnull %531) #6
  br label %535

535:                                              ; preds = %530, %522
  %536 = load ptr, ptr %525, align 8, !tbaa !50
  store ptr %536, ptr %13, align 8, !tbaa !52
  %537 = getelementptr inbounds i8, ptr %525, i64 8
  %538 = load i64, ptr %537, align 8, !tbaa !53
  store i64 %538, ptr %16, align 8, !tbaa !54
  br label %539

539:                                              ; preds = %535, %512
  %540 = and i64 %513, 16711680
  %541 = icmp eq i64 %540, 16711680
  br i1 %541, label %542, label %565

542:                                              ; preds = %539
  %543 = load ptr, ptr %13, align 8, !tbaa !52
  %544 = getelementptr inbounds i8, ptr %543, i64 1
  store ptr %544, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %543, align 1, !tbaa !39
  %545 = load i64, ptr %16, align 8, !tbaa !54
  %546 = add i64 %545, -1
  store i64 %546, ptr %16, align 8, !tbaa !54
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %548, label %565

548:                                              ; preds = %542
  %549 = load ptr, ptr %64, align 8, !tbaa !22
  %550 = getelementptr inbounds i8, ptr %549, i64 40
  %551 = load ptr, ptr %550, align 8, !tbaa !49
  %552 = getelementptr inbounds i8, ptr %551, i64 24
  %553 = load ptr, ptr %552, align 8, !tbaa !61
  %554 = tail call signext i32 %553(ptr noundef %549) #6
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %548
  %557 = load ptr, ptr %64, align 8, !tbaa !22
  %558 = load ptr, ptr %557, align 8, !tbaa !36
  %559 = getelementptr inbounds i8, ptr %558, i64 40
  store i32 24, ptr %559, align 8, !tbaa !37
  %560 = load ptr, ptr %558, align 8, !tbaa !40
  tail call void %560(ptr noundef nonnull %557) #6
  br label %561

561:                                              ; preds = %556, %548
  %562 = load ptr, ptr %551, align 8, !tbaa !50
  store ptr %562, ptr %13, align 8, !tbaa !52
  %563 = getelementptr inbounds i8, ptr %551, i64 8
  %564 = load i64, ptr %563, align 8, !tbaa !53
  store i64 %564, ptr %16, align 8, !tbaa !54
  br label %565

565:                                              ; preds = %561, %542, %539
  %566 = shl i64 %513, 8
  %567 = add nsw i32 %514, -8
  %568 = icmp sgt i32 %514, 15
  br i1 %568, label %512, label %569, !llvm.loop !62

569:                                              ; preds = %565, %500
  %570 = phi i32 [ %505, %500 ], [ %567, %565 ]
  %571 = phi i64 [ %510, %500 ], [ %566, %565 ]
  store i64 %571, ptr %70, align 8, !tbaa !43
  store i32 %570, ptr %69, align 8, !tbaa !44
  br label %572

572:                                              ; preds = %495, %569
  %573 = getelementptr inbounds i8, ptr %496, i64 1
  %574 = add i32 %497, -1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %495, !llvm.loop !71

576:                                              ; preds = %572, %393, %410, %488
  %577 = add nsw i32 %89, -16
  %578 = load ptr, ptr %56, align 8, !tbaa !21
  %579 = icmp sgt i32 %89, 31
  br i1 %579, label %88, label %580, !llvm.loop !72

580:                                              ; preds = %576, %82
  %581 = phi ptr [ %78, %82 ], [ %578, %576 ]
  %582 = phi i32 [ %77, %82 ], [ 0, %576 ]
  %583 = phi i32 [ %76, %82 ], [ %577, %576 ]
  %584 = icmp sgt i32 %80, 1
  br i1 %584, label %585, label %591

585:                                              ; preds = %580
  %586 = trunc i32 %80 to i8
  %587 = and i8 %586, 1
  %588 = add i32 %582, 1
  %589 = zext i32 %582 to i64
  %590 = getelementptr inbounds i8, ptr %581, i64 %589
  store i8 %587, ptr %590, align 1, !tbaa !39
  br label %711

591:                                              ; preds = %580
  tail call fastcc void @emit_eobrun(ptr noundef %5)
  %592 = load i32, ptr %65, align 8, !tbaa !35
  %593 = shl i32 %583, 4
  %594 = or disjoint i32 %593, 1
  %595 = load i32, ptr %66, align 8, !tbaa !23
  %596 = icmp eq i32 %595, 0
  %597 = sext i32 %592 to i64
  %598 = sext i32 %594 to i64
  br i1 %596, label %605, label %599

599:                                              ; preds = %591
  %600 = getelementptr inbounds [4 x ptr], ptr %67, i64 0, i64 %597
  %601 = load ptr, ptr %600, align 8, !tbaa !28
  %602 = getelementptr inbounds i64, ptr %601, i64 %598
  %603 = load i64, ptr %602, align 8, !tbaa !58
  %604 = add nsw i64 %603, 1
  store i64 %604, ptr %602, align 8, !tbaa !58
  br label %614

605:                                              ; preds = %591
  %606 = getelementptr inbounds [4 x ptr], ptr %68, i64 0, i64 %597
  %607 = load ptr, ptr %606, align 8, !tbaa !28
  %608 = getelementptr inbounds [256 x i32], ptr %607, i64 0, i64 %598
  %609 = load i32, ptr %608, align 4, !tbaa !29
  %610 = getelementptr inbounds i8, ptr %607, i64 1024
  %611 = getelementptr inbounds [256 x i8], ptr %610, i64 0, i64 %598
  %612 = load i8, ptr %611, align 1, !tbaa !39
  %613 = zext i8 %612 to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %5, i32 noundef signext %609, i32 noundef signext %613)
  br label %614

614:                                              ; preds = %599, %605
  %615 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %75
  %616 = load i32, ptr %615, align 4, !tbaa !29
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %617
  %619 = load i16, ptr %618, align 2, !tbaa !56
  %620 = icmp sgt i16 %619, -1
  %621 = zext i1 %620 to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %5, i32 noundef signext %621, i32 noundef signext 1)
  %622 = load i32, ptr %66, align 8, !tbaa !23
  %623 = icmp eq i32 %622, 0
  %624 = icmp ne i32 %582, 0
  %625 = and i1 %624, %623
  br i1 %625, label %629, label %709

626:                                              ; preds = %706
  %627 = getelementptr inbounds i8, ptr %631, i64 1
  %628 = load i32, ptr %66, align 8, !tbaa !23
  br label %629

629:                                              ; preds = %614, %626
  %630 = phi i32 [ %628, %626 ], [ 0, %614 ]
  %631 = phi ptr [ %627, %626 ], [ %581, %614 ]
  %632 = phi i32 [ %707, %626 ], [ %582, %614 ]
  %633 = icmp eq i32 %630, 0
  br i1 %633, label %634, label %706

634:                                              ; preds = %629
  %635 = load i32, ptr %69, align 8, !tbaa !44
  %636 = load i8, ptr %631, align 1, !tbaa !39
  %637 = and i8 %636, 1
  %638 = zext nneg i8 %637 to i64
  %639 = add nsw i32 %635, 1
  %640 = sub nsw i32 23, %635
  %641 = zext nneg i32 %640 to i64
  %642 = shl nuw i64 %638, %641
  %643 = load i64, ptr %70, align 8, !tbaa !43
  %644 = or i64 %642, %643
  %645 = icmp sgt i32 %635, 6
  br i1 %645, label %646, label %703

646:                                              ; preds = %634, %699
  %647 = phi i64 [ %700, %699 ], [ %644, %634 ]
  %648 = phi i32 [ %701, %699 ], [ %639, %634 ]
  %649 = lshr i64 %647, 16
  %650 = trunc i64 %649 to i8
  %651 = load ptr, ptr %13, align 8, !tbaa !52
  %652 = getelementptr inbounds i8, ptr %651, i64 1
  store ptr %652, ptr %13, align 8, !tbaa !52
  store i8 %650, ptr %651, align 1, !tbaa !39
  %653 = load i64, ptr %16, align 8, !tbaa !54
  %654 = add i64 %653, -1
  store i64 %654, ptr %16, align 8, !tbaa !54
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %656, label %673

656:                                              ; preds = %646
  %657 = load ptr, ptr %64, align 8, !tbaa !22
  %658 = getelementptr inbounds i8, ptr %657, i64 40
  %659 = load ptr, ptr %658, align 8, !tbaa !49
  %660 = getelementptr inbounds i8, ptr %659, i64 24
  %661 = load ptr, ptr %660, align 8, !tbaa !61
  %662 = tail call signext i32 %661(ptr noundef %657) #6
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %669

664:                                              ; preds = %656
  %665 = load ptr, ptr %64, align 8, !tbaa !22
  %666 = load ptr, ptr %665, align 8, !tbaa !36
  %667 = getelementptr inbounds i8, ptr %666, i64 40
  store i32 24, ptr %667, align 8, !tbaa !37
  %668 = load ptr, ptr %666, align 8, !tbaa !40
  tail call void %668(ptr noundef nonnull %665) #6
  br label %669

669:                                              ; preds = %664, %656
  %670 = load ptr, ptr %659, align 8, !tbaa !50
  store ptr %670, ptr %13, align 8, !tbaa !52
  %671 = getelementptr inbounds i8, ptr %659, i64 8
  %672 = load i64, ptr %671, align 8, !tbaa !53
  store i64 %672, ptr %16, align 8, !tbaa !54
  br label %673

673:                                              ; preds = %669, %646
  %674 = and i64 %647, 16711680
  %675 = icmp eq i64 %674, 16711680
  br i1 %675, label %676, label %699

676:                                              ; preds = %673
  %677 = load ptr, ptr %13, align 8, !tbaa !52
  %678 = getelementptr inbounds i8, ptr %677, i64 1
  store ptr %678, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %677, align 1, !tbaa !39
  %679 = load i64, ptr %16, align 8, !tbaa !54
  %680 = add i64 %679, -1
  store i64 %680, ptr %16, align 8, !tbaa !54
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %682, label %699

682:                                              ; preds = %676
  %683 = load ptr, ptr %64, align 8, !tbaa !22
  %684 = getelementptr inbounds i8, ptr %683, i64 40
  %685 = load ptr, ptr %684, align 8, !tbaa !49
  %686 = getelementptr inbounds i8, ptr %685, i64 24
  %687 = load ptr, ptr %686, align 8, !tbaa !61
  %688 = tail call signext i32 %687(ptr noundef %683) #6
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %695

690:                                              ; preds = %682
  %691 = load ptr, ptr %64, align 8, !tbaa !22
  %692 = load ptr, ptr %691, align 8, !tbaa !36
  %693 = getelementptr inbounds i8, ptr %692, i64 40
  store i32 24, ptr %693, align 8, !tbaa !37
  %694 = load ptr, ptr %692, align 8, !tbaa !40
  tail call void %694(ptr noundef nonnull %691) #6
  br label %695

695:                                              ; preds = %690, %682
  %696 = load ptr, ptr %685, align 8, !tbaa !50
  store ptr %696, ptr %13, align 8, !tbaa !52
  %697 = getelementptr inbounds i8, ptr %685, i64 8
  %698 = load i64, ptr %697, align 8, !tbaa !53
  store i64 %698, ptr %16, align 8, !tbaa !54
  br label %699

699:                                              ; preds = %695, %676, %673
  %700 = shl i64 %647, 8
  %701 = add nsw i32 %648, -8
  %702 = icmp sgt i32 %648, 15
  br i1 %702, label %646, label %703, !llvm.loop !62

703:                                              ; preds = %699, %634
  %704 = phi i32 [ %639, %634 ], [ %701, %699 ]
  %705 = phi i64 [ %644, %634 ], [ %700, %699 ]
  store i64 %705, ptr %70, align 8, !tbaa !43
  store i32 %704, ptr %69, align 8, !tbaa !44
  br label %706

706:                                              ; preds = %629, %703
  %707 = add i32 %632, -1
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %626, !llvm.loop !73

709:                                              ; preds = %706, %614
  %710 = load ptr, ptr %56, align 8, !tbaa !21
  br label %711

711:                                              ; preds = %709, %585, %86
  %712 = phi ptr [ %78, %86 ], [ %581, %585 ], [ %710, %709 ]
  %713 = phi i32 [ %77, %86 ], [ %588, %585 ], [ 0, %709 ]
  %714 = phi i32 [ %87, %86 ], [ %583, %585 ], [ 0, %709 ]
  %715 = add nsw i64 %75, 1
  %716 = trunc i64 %715 to i32
  %717 = icmp eq i32 %73, %716
  br i1 %717, label %718, label %74, !llvm.loop !74

718:                                              ; preds = %711
  %719 = icmp sgt i32 %714, 0
  br label %720

720:                                              ; preds = %32, %718, %55
  %721 = phi ptr [ %57, %55 ], [ %57, %718 ], [ %33, %32 ]
  %722 = phi i32 [ 0, %55 ], [ %713, %718 ], [ 0, %32 ]
  %723 = phi i1 [ false, %55 ], [ %719, %718 ], [ false, %32 ]
  %724 = icmp ne i32 %722, 0
  %725 = select i1 %723, i1 true, i1 %724
  br i1 %725, label %726, label %736

726:                                              ; preds = %720
  %727 = getelementptr inbounds i8, ptr %5, i64 92
  %728 = load i32, ptr %727, align 4, !tbaa !41
  %729 = add i32 %728, 1
  store i32 %729, ptr %727, align 4, !tbaa !41
  %730 = load i32, ptr %721, align 8, !tbaa !42
  %731 = add i32 %730, %722
  store i32 %731, ptr %721, align 8, !tbaa !42
  %732 = icmp eq i32 %729, 32767
  %733 = icmp ugt i32 %731, 937
  %734 = select i1 %732, i1 true, i1 %733
  br i1 %734, label %735, label %736

735:                                              ; preds = %726
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %5)
  br label %736

736:                                              ; preds = %726, %735, %720
  %737 = load ptr, ptr %13, align 8, !tbaa !52
  %738 = load ptr, ptr %10, align 8, !tbaa !49
  store ptr %737, ptr %738, align 8, !tbaa !50
  %739 = load i64, ptr %16, align 8, !tbaa !54
  %740 = getelementptr inbounds i8, ptr %738, i64 8
  store i64 %739, ptr %740, align 8, !tbaa !53
  %741 = load i32, ptr %17, align 8, !tbaa !45
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %755, label %743

743:                                              ; preds = %736
  %744 = getelementptr inbounds i8, ptr %5, i64 112
  %745 = load i32, ptr %744, align 8, !tbaa !46
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %752

747:                                              ; preds = %743
  %748 = getelementptr inbounds i8, ptr %5, i64 116
  %749 = load i32, ptr %748, align 4, !tbaa !47
  %750 = add nsw i32 %749, 1
  %751 = and i32 %750, 7
  store i32 %751, ptr %748, align 4, !tbaa !47
  br label %752

752:                                              ; preds = %747, %743
  %753 = phi i32 [ %741, %747 ], [ %745, %743 ]
  %754 = add i32 %753, -1
  store i32 %754, ptr %744, align 8, !tbaa !46
  br label %755

755:                                              ; preds = %752, %736
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret i32 1
}

; Function Attrs: nounwind
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  tail call fastcc void @emit_eobrun(ptr noundef %4)
  %5 = getelementptr inbounds i8, ptr %0, i64 412
  %6 = load i32, ptr %5, align 4, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %0, i64 324
  %8 = load i32, ptr %7, align 4, !tbaa !27
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 0
  %12 = getelementptr inbounds i8, ptr %0, i64 328
  %13 = getelementptr inbounds i8, ptr %0, i64 420
  %14 = select i1 %11, i64 128, i64 160
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = getelementptr inbounds i8, ptr %4, i64 152
  br i1 %11, label %17, label %52

17:                                               ; preds = %10
  %18 = load i32, ptr %13, align 4, !tbaa !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %79

20:                                               ; preds = %47
  %21 = load i32, ptr %13, align 4, !tbaa !25
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %24 = phi i32 [ %48, %20 ], [ %8, %17 ]
  %25 = phi i64 [ %49, %20 ], [ 0, %17 ]
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = getelementptr inbounds i8, ptr %29, i64 20
  %31 = load i32, ptr %30, align 4, !tbaa !29
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !29
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = getelementptr inbounds [4 x ptr], ptr %15, i64 0, i64 %32
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %41, ptr %37, align 8, !tbaa !28
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %32
  %45 = load ptr, ptr %44, align 8, !tbaa !28
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %45) #6
  store i32 1, ptr %33, align 4, !tbaa !29
  %46 = load i32, ptr %7, align 4, !tbaa !27
  br label %47

47:                                               ; preds = %42, %27, %22
  %48 = phi i32 [ %46, %42 ], [ %24, %27 ], [ %24, %22 ]
  %49 = add nuw nsw i64 %25, 1
  %50 = sext i32 %48 to i64
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %20, label %79, !llvm.loop !75

52:                                               ; preds = %10, %74
  %53 = phi i32 [ %75, %74 ], [ %8, %10 ]
  %54 = phi i64 [ %76, %74 ], [ 0, %10 ]
  %55 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  %57 = getelementptr inbounds i8, ptr %56, i64 24
  %58 = load i32, ptr %57, align 4, !tbaa !29
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = getelementptr inbounds [4 x ptr], ptr %15, i64 0, i64 %59
  %65 = load ptr, ptr %64, align 8, !tbaa !28
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %68, ptr %64, align 8, !tbaa !28
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %71 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %59
  %72 = load ptr, ptr %71, align 8, !tbaa !28
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %70, ptr noundef %72) #6
  store i32 1, ptr %60, align 4, !tbaa !29
  %73 = load i32, ptr %7, align 4, !tbaa !27
  br label %74

74:                                               ; preds = %52, %69
  %75 = phi i32 [ %53, %52 ], [ %73, %69 ]
  %76 = add nuw nsw i64 %54, 1
  %77 = sext i32 %75 to i64
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %52, label %79, !llvm.loop !76

79:                                               ; preds = %74, %47, %17, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind
define internal void @finish_pass_phuff(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 496
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %6, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds i8, ptr %5, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds i8, ptr %3, i64 40
  store i64 %9, ptr %10, align 8, !tbaa !54
  tail call fastcc void @emit_eobrun(ptr noundef %3)
  tail call fastcc void @flush_bits(ptr noundef %3)
  %11 = load ptr, ptr %7, align 8, !tbaa !52
  %12 = load ptr, ptr %4, align 8, !tbaa !49
  store ptr %11, ptr %12, align 8, !tbaa !50
  %13 = load i64, ptr %10, align 8, !tbaa !54
  %14 = getelementptr inbounds i8, ptr %12, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @jpeg_make_c_derived_tbl(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal fastcc void @emit_restart(ptr nocapture noundef %0, i32 noundef signext %1) unnamed_addr #0 {
  tail call fastcc void @emit_eobrun(ptr noundef %0)
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %60

6:                                                ; preds = %2
  tail call fastcc void @flush_bits(ptr noundef nonnull %0)
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %7, align 8, !tbaa !52
  store i8 -1, ptr %8, align 1, !tbaa !39
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  %11 = load i64, ptr %10, align 8, !tbaa !54
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !54
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !52
  br label %34

16:                                               ; preds = %6
  %17 = getelementptr inbounds i8, ptr %0, i64 64
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %20, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = tail call signext i32 %22(ptr noundef %18) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load ptr, ptr %17, align 8, !tbaa !22
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 24, ptr %28, align 8, !tbaa !37
  %29 = load ptr, ptr %27, align 8, !tbaa !40
  tail call void %29(ptr noundef nonnull %26) #6
  br label %30

30:                                               ; preds = %16, %25
  %31 = load ptr, ptr %20, align 8, !tbaa !50
  %32 = getelementptr inbounds i8, ptr %20, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !53
  store i64 %33, ptr %10, align 8, !tbaa !54
  br label %34

34:                                               ; preds = %14, %30
  %35 = phi ptr [ %15, %14 ], [ %31, %30 ]
  %36 = trunc i32 %1 to i8
  %37 = add i8 %36, -48
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %38, ptr %7, align 8, !tbaa !52
  store i8 %37, ptr %35, align 1, !tbaa !39
  %39 = load i64, ptr %10, align 8, !tbaa !54
  %40 = add i64 %39, -1
  store i64 %40, ptr %10, align 8, !tbaa !54
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds i8, ptr %44, i64 40
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds i8, ptr %46, i64 24
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = tail call signext i32 %48(ptr noundef %44) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load ptr, ptr %43, align 8, !tbaa !22
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = getelementptr inbounds i8, ptr %53, i64 40
  store i32 24, ptr %54, align 8, !tbaa !37
  %55 = load ptr, ptr %53, align 8, !tbaa !40
  tail call void %55(ptr noundef nonnull %52) #6
  br label %56

56:                                               ; preds = %42, %51
  %57 = load ptr, ptr %46, align 8, !tbaa !50
  store ptr %57, ptr %7, align 8, !tbaa !52
  %58 = getelementptr inbounds i8, ptr %46, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !53
  store i64 %59, ptr %10, align 8, !tbaa !54
  br label %60

60:                                               ; preds = %34, %56, %2
  %61 = getelementptr inbounds i8, ptr %0, i64 64
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = getelementptr inbounds i8, ptr %62, i64 412
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, ptr %62, i64 324
  %68 = load i32, ptr %67, align 4, !tbaa !27
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %0, i64 72
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %75, %72 ]
  %74 = getelementptr inbounds [4 x i32], ptr %71, i64 0, i64 %73
  store i32 0, ptr %74, align 4, !tbaa !29
  %75 = add nuw nsw i64 %73, 1
  %76 = load i32, ptr %67, align 4, !tbaa !27
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %72, label %82, !llvm.loop !77

79:                                               ; preds = %60
  %80 = getelementptr inbounds i8, ptr %0, i64 92
  store i32 0, ptr %80, align 4, !tbaa !41
  %81 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 0, ptr %81, align 8, !tbaa !42
  br label %82

82:                                               ; preds = %72, %66, %79
  ret void
}

; Function Attrs: inlinehint nounwind
define internal fastcc void @emit_bits(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 56
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 40, ptr %12, align 8, !tbaa !37
  %13 = load ptr, ptr %11, align 8, !tbaa !40
  tail call void %13(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds i8, ptr %0, i64 24
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %14
  %19 = zext nneg i32 %2 to i64
  %20 = shl nsw i64 -1, %19
  %21 = xor i64 %20, -1
  %22 = and i64 %21, %4
  %23 = add nsw i32 %6, %2
  %24 = sub nsw i32 24, %23
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 %22, %25
  %27 = getelementptr inbounds i8, ptr %0, i64 48
  %28 = load i64, ptr %27, align 8, !tbaa !43
  %29 = or i64 %28, %26
  %30 = icmp sgt i32 %23, 7
  br i1 %30, label %31, label %92

31:                                               ; preds = %18
  %32 = getelementptr inbounds i8, ptr %0, i64 32
  %33 = getelementptr inbounds i8, ptr %0, i64 40
  %34 = getelementptr inbounds i8, ptr %0, i64 64
  br label %35

35:                                               ; preds = %31, %88
  %36 = phi i64 [ %29, %31 ], [ %89, %88 ]
  %37 = phi i32 [ %23, %31 ], [ %90, %88 ]
  %38 = lshr i64 %36, 16
  %39 = trunc i64 %38 to i8
  %40 = load ptr, ptr %32, align 8, !tbaa !52
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %32, align 8, !tbaa !52
  store i8 %39, ptr %40, align 1, !tbaa !39
  %42 = load i64, ptr %33, align 8, !tbaa !54
  %43 = add i64 %42, -1
  store i64 %43, ptr %33, align 8, !tbaa !54
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = load ptr, ptr %34, align 8, !tbaa !22
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = getelementptr inbounds i8, ptr %48, i64 24
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = tail call signext i32 %50(ptr noundef %46) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load ptr, ptr %34, align 8, !tbaa !22
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = getelementptr inbounds i8, ptr %55, i64 40
  store i32 24, ptr %56, align 8, !tbaa !37
  %57 = load ptr, ptr %55, align 8, !tbaa !40
  tail call void %57(ptr noundef nonnull %54) #6
  br label %58

58:                                               ; preds = %45, %53
  %59 = load ptr, ptr %48, align 8, !tbaa !50
  store ptr %59, ptr %32, align 8, !tbaa !52
  %60 = getelementptr inbounds i8, ptr %48, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !53
  store i64 %61, ptr %33, align 8, !tbaa !54
  br label %62

62:                                               ; preds = %58, %35
  %63 = and i64 %36, 16711680
  %64 = icmp eq i64 %63, 16711680
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load ptr, ptr %32, align 8, !tbaa !52
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %32, align 8, !tbaa !52
  store i8 0, ptr %66, align 1, !tbaa !39
  %68 = load i64, ptr %33, align 8, !tbaa !54
  %69 = add i64 %68, -1
  store i64 %69, ptr %33, align 8, !tbaa !54
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load ptr, ptr %34, align 8, !tbaa !22
  %73 = getelementptr inbounds i8, ptr %72, i64 40
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = getelementptr inbounds i8, ptr %74, i64 24
  %76 = load ptr, ptr %75, align 8, !tbaa !61
  %77 = tail call signext i32 %76(ptr noundef %72) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load ptr, ptr %34, align 8, !tbaa !22
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds i8, ptr %81, i64 40
  store i32 24, ptr %82, align 8, !tbaa !37
  %83 = load ptr, ptr %81, align 8, !tbaa !40
  tail call void %83(ptr noundef nonnull %80) #6
  br label %84

84:                                               ; preds = %71, %79
  %85 = load ptr, ptr %74, align 8, !tbaa !50
  store ptr %85, ptr %32, align 8, !tbaa !52
  %86 = getelementptr inbounds i8, ptr %74, i64 8
  %87 = load i64, ptr %86, align 8, !tbaa !53
  store i64 %87, ptr %33, align 8, !tbaa !54
  br label %88

88:                                               ; preds = %65, %84, %62
  %89 = shl i64 %36, 8
  %90 = add nsw i32 %37, -8
  %91 = icmp sgt i32 %37, 15
  br i1 %91, label %35, label %92, !llvm.loop !62

92:                                               ; preds = %88, %18
  %93 = phi i32 [ %23, %18 ], [ %90, %88 ]
  %94 = phi i64 [ %29, %18 ], [ %89, %88 ]
  store i64 %94, ptr %27, align 8, !tbaa !43
  store i32 %93, ptr %5, align 8, !tbaa !44
  br label %95

95:                                               ; preds = %14, %92
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @emit_eobrun(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 92
  %3 = load i32, ptr %2, align 4, !tbaa !41
  switch i32 %3, label %4 [
    i32 0, label %68
    i32 1, label %18
  ]

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %3, %1 ]
  %7 = ashr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %7, 2
  br i1 %9, label %10, label %4, !llvm.loop !69

10:                                               ; preds = %4
  %11 = icmp ugt i32 %5, 13
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %0, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 40, ptr %16, align 8, !tbaa !37
  %17 = load ptr, ptr %15, align 8, !tbaa !40
  tail call void %17(ptr noundef nonnull %14) #6
  br label %18

18:                                               ; preds = %1, %12, %10
  %19 = phi i32 [ %8, %12 ], [ %8, %10 ], [ 0, %1 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 88
  %21 = load i32, ptr %20, align 8, !tbaa !35
  %22 = shl i32 %19, 4
  %23 = getelementptr inbounds i8, ptr %0, i64 24
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %24, 0
  %26 = sext i32 %21 to i64
  %27 = sext i32 %22 to i64
  br i1 %25, label %35, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds i8, ptr %0, i64 152
  %30 = getelementptr inbounds [4 x ptr], ptr %29, i64 0, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds i64, ptr %31, i64 %27
  %33 = load i64, ptr %32, align 8, !tbaa !58
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !58
  br label %45

35:                                               ; preds = %18
  %36 = getelementptr inbounds i8, ptr %0, i64 120
  %37 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %26
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = getelementptr inbounds [256 x i32], ptr %38, i64 0, i64 %27
  %40 = load i32, ptr %39, align 4, !tbaa !29
  %41 = getelementptr inbounds i8, ptr %38, i64 1024
  %42 = getelementptr inbounds [256 x i8], ptr %41, i64 0, i64 %27
  %43 = load i8, ptr %42, align 1, !tbaa !39
  %44 = zext i8 %43 to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef signext %40, i32 noundef signext %44)
  br label %45

45:                                               ; preds = %28, %35
  %46 = icmp eq i32 %19, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %2, align 4, !tbaa !41
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef signext %48, i32 noundef signext %19)
  br label %49

49:                                               ; preds = %47, %45
  store i32 0, ptr %2, align 4, !tbaa !41
  %50 = getelementptr inbounds i8, ptr %0, i64 96
  %51 = load i32, ptr %50, align 8, !tbaa !42
  %52 = load i32, ptr %23, align 8, !tbaa !23
  %53 = icmp eq i32 %52, 0
  %54 = icmp ne i32 %51, 0
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds i8, ptr %0, i64 104
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %64, %59 ], [ %58, %56 ]
  %61 = phi i32 [ %65, %59 ], [ %51, %56 ]
  %62 = load i8, ptr %60, align 1, !tbaa !39
  %63 = zext i8 %62 to i32
  tail call fastcc void @emit_bits(ptr noundef %0, i32 noundef signext %63, i32 noundef signext 1)
  %64 = getelementptr inbounds i8, ptr %60, i64 1
  %65 = add i32 %61, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %49
  store i32 0, ptr %50, align 8, !tbaa !42
  br label %68

68:                                               ; preds = %1, %67
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @flush_bits(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 56
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !44
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %6
  %10 = sub nsw i32 17, %7
  %11 = zext nneg i32 %10 to i64
  %12 = shl i64 127, %11
  %13 = getelementptr inbounds i8, ptr %0, i64 48
  %14 = load i64, ptr %13, align 8, !tbaa !43
  %15 = or i64 %12, %14
  %16 = add nuw nsw i32 %7, 7
  %17 = getelementptr inbounds i8, ptr %0, i64 32
  %18 = getelementptr inbounds i8, ptr %0, i64 40
  %19 = getelementptr inbounds i8, ptr %0, i64 64
  br label %20

20:                                               ; preds = %73, %9
  %21 = phi i64 [ %15, %9 ], [ %74, %73 ]
  %22 = phi i32 [ %16, %9 ], [ %75, %73 ]
  %23 = lshr i64 %21, 16
  %24 = trunc i64 %23 to i8
  %25 = load ptr, ptr %17, align 8, !tbaa !52
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr %17, align 8, !tbaa !52
  store i8 %24, ptr %25, align 1, !tbaa !39
  %27 = load i64, ptr %18, align 8, !tbaa !54
  %28 = add i64 %27, -1
  store i64 %28, ptr %18, align 8, !tbaa !54
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load ptr, ptr %19, align 8, !tbaa !22
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds i8, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = tail call signext i32 %35(ptr noundef %31) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load ptr, ptr %19, align 8, !tbaa !22
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  %41 = getelementptr inbounds i8, ptr %40, i64 40
  store i32 24, ptr %41, align 8, !tbaa !37
  %42 = load ptr, ptr %40, align 8, !tbaa !40
  tail call void %42(ptr noundef nonnull %39) #6
  br label %43

43:                                               ; preds = %38, %30
  %44 = load ptr, ptr %33, align 8, !tbaa !50
  store ptr %44, ptr %17, align 8, !tbaa !52
  %45 = getelementptr inbounds i8, ptr %33, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !53
  store i64 %46, ptr %18, align 8, !tbaa !54
  br label %47

47:                                               ; preds = %43, %20
  %48 = and i64 %21, 16711680
  %49 = icmp eq i64 %48, 16711680
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load ptr, ptr %17, align 8, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %17, align 8, !tbaa !52
  store i8 0, ptr %51, align 1, !tbaa !39
  %53 = load i64, ptr %18, align 8, !tbaa !54
  %54 = add i64 %53, -1
  store i64 %54, ptr %18, align 8, !tbaa !54
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load ptr, ptr %19, align 8, !tbaa !22
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds i8, ptr %59, i64 24
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = tail call signext i32 %61(ptr noundef %57) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load ptr, ptr %19, align 8, !tbaa !22
  %66 = load ptr, ptr %65, align 8, !tbaa !36
  %67 = getelementptr inbounds i8, ptr %66, i64 40
  store i32 24, ptr %67, align 8, !tbaa !37
  %68 = load ptr, ptr %66, align 8, !tbaa !40
  tail call void %68(ptr noundef nonnull %65) #6
  br label %69

69:                                               ; preds = %64, %56
  %70 = load ptr, ptr %59, align 8, !tbaa !50
  store ptr %70, ptr %17, align 8, !tbaa !52
  %71 = getelementptr inbounds i8, ptr %59, i64 8
  %72 = load i64, ptr %71, align 8, !tbaa !53
  store i64 %72, ptr %18, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %69, %50, %47
  %74 = shl i64 %21, 8
  %75 = add nsw i32 %22, -8
  %76 = icmp sgt i32 %22, 15
  br i1 %76, label %20, label %77, !llvm.loop !62

77:                                               ; preds = %73, %6, %1
  %78 = getelementptr inbounds i8, ptr %0, i64 48
  store i64 0, ptr %78, align 8, !tbaa !43
  store i32 0, ptr %2, align 8, !tbaa !44
  ret void
}

declare dso_local ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

declare dso_local void @jpeg_gen_optimal_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 496}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 24, !8, i64 32, !16, i64 40, !16, i64 48, !11, i64 56, !8, i64 64, !9, i64 72, !11, i64 88, !11, i64 92, !11, i64 96, !8, i64 104, !11, i64 112, !11, i64 116, !9, i64 120, !9, i64 152}
!20 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
!21 = !{!19, !8, i64 104}
!22 = !{!19, !8, i64 64}
!23 = !{!19, !11, i64 24}
!24 = !{!7, !11, i64 412}
!25 = !{!7, !11, i64 420}
!26 = !{!19, !8, i64 8}
!27 = !{!7, !11, i64 324}
!28 = !{!8, !8, i64 0}
!29 = !{!11, !11, i64 0}
!30 = !{!31, !11, i64 20}
!31 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!31, !11, i64 24}
!35 = !{!19, !11, i64 88}
!36 = !{!7, !8, i64 0}
!37 = !{!38, !11, i64 40}
!38 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!39 = !{!9, !9, i64 0}
!40 = !{!38, !8, i64 0}
!41 = !{!19, !11, i64 92}
!42 = !{!19, !11, i64 96}
!43 = !{!19, !16, i64 48}
!44 = !{!19, !11, i64 56}
!45 = !{!7, !11, i64 280}
!46 = !{!19, !11, i64 112}
!47 = !{!19, !11, i64 116}
!48 = !{!7, !11, i64 424}
!49 = !{!7, !8, i64 40}
!50 = !{!51, !8, i64 0}
!51 = !{!"jpeg_destination_mgr", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!52 = !{!19, !8, i64 32}
!53 = !{!51, !16, i64 8}
!54 = !{!19, !16, i64 40}
!55 = !{!7, !11, i64 368}
!56 = !{!13, !13, i64 0}
!57 = distinct !{!57, !33}
!58 = !{!16, !16, i64 0}
!59 = distinct !{!59, !33}
!60 = !{!7, !11, i64 416}
!61 = !{!51, !8, i64 24}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33, !64}
!64 = !{!"llvm.loop.unswitch.partial.disable"}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !64}
!71 = distinct !{!71, !64}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !64}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33, !64}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
