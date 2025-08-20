; ModuleID = 'jchuff.c'
source_filename = "jchuff.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.savable_state = type { i64, i32, [4 x i32] }

@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local void @jpeg_make_c_derived_tbl(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [257 x i8], align 1
  %6 = alloca [257 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #6
  %7 = icmp ugt i32 %2, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 50, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %2, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %4, %8
  %15 = icmp eq i32 %1, 0
  %16 = getelementptr inbounds i8, ptr %0, i64 128
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %17
  %19 = getelementptr inbounds i8, ptr %0, i64 160
  %20 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 %17
  %21 = select i1 %15, ptr %20, ptr %18
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 40
  store i32 50, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %25, i64 44
  store i32 %2, ptr %27, align 4, !tbaa !17
  %28 = load ptr, ptr %0, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  tail call void %29(ptr noundef nonnull %0) #6
  br label %30

30:                                               ; preds = %24, %14
  %31 = load ptr, ptr %3, align 8, !tbaa !19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = tail call ptr %36(ptr noundef %0, i32 noundef signext 1, i64 noundef 1280) #6
  store ptr %37, ptr %3, align 8, !tbaa !19
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi ptr [ %37, %33 ], [ %31, %30 ]
  br label %40

40:                                               ; preds = %38, %60
  %41 = phi i64 [ 1, %38 ], [ %62, %60 ]
  %42 = phi i32 [ 0, %38 ], [ %61, %60 ]
  %43 = getelementptr inbounds [17 x i8], ptr %22, i64 0, i64 %41
  %44 = load i8, ptr %43, align 1, !tbaa !17
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %42, %45
  %47 = icmp sgt i32 %46, 256
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 40
  store i32 8, ptr %50, align 8, !tbaa !14
  %51 = load ptr, ptr %49, align 8, !tbaa !18
  tail call void %51(ptr noundef nonnull %0) #6
  br label %52

52:                                               ; preds = %48, %40
  %53 = icmp eq i8 %44, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %52
  %55 = trunc i64 %41 to i8
  %56 = sext i32 %42 to i64
  %57 = getelementptr i8, ptr %5, i64 %56
  %58 = zext i8 %44 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %57, i8 %55, i64 %58, i1 false), !tbaa !17
  %59 = add i32 %42, %45
  br label %60

60:                                               ; preds = %54, %52
  %61 = phi i32 [ %42, %52 ], [ %59, %54 ]
  %62 = add nuw nsw i64 %41, 1
  %63 = icmp eq i64 %62, 17
  br i1 %63, label %64, label %40, !llvm.loop !23

64:                                               ; preds = %60
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !17
  %67 = load i8, ptr %5, align 1, !tbaa !17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %64
  %70 = zext i8 %67 to i64
  br label %71

71:                                               ; preds = %69, %102
  %72 = phi i8 [ %67, %69 ], [ %107, %102 ]
  %73 = phi i64 [ %70, %69 ], [ %104, %102 ]
  %74 = phi i32 [ 0, %69 ], [ %103, %102 ]
  %75 = phi i32 [ 0, %69 ], [ %93, %102 ]
  %76 = zext i8 %72 to i64
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = sext i32 %75 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ %79, %78 ], [ %83, %80 ]
  %82 = phi i32 [ %74, %78 ], [ %85, %80 ]
  %83 = add nsw i64 %81, 1
  %84 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %81
  store i32 %82, ptr %84, align 4, !tbaa !25
  %85 = add i32 %82, 1
  %86 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !17
  %88 = zext i8 %87 to i64
  %89 = icmp eq i64 %73, %88
  br i1 %89, label %80, label %90, !llvm.loop !26

90:                                               ; preds = %80
  %91 = trunc nsw i64 %83 to i32
  br label %92

92:                                               ; preds = %90, %71
  %93 = phi i32 [ %75, %71 ], [ %91, %90 ]
  %94 = phi i32 [ %74, %71 ], [ %85, %90 ]
  %95 = zext i32 %94 to i64
  %96 = shl nuw i64 1, %73
  %97 = icmp sgt i64 %96, %95
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr %0, align 8, !tbaa !6
  %100 = getelementptr inbounds i8, ptr %99, i64 40
  store i32 8, ptr %100, align 8, !tbaa !14
  %101 = load ptr, ptr %99, align 8, !tbaa !18
  tail call void %101(ptr noundef nonnull %0) #6
  br label %102

102:                                              ; preds = %98, %92
  %103 = shl i32 %94, 1
  %104 = add nuw nsw i64 %73, 1
  %105 = sext i32 %93 to i64
  %106 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !17
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %71, !llvm.loop !27

109:                                              ; preds = %102, %64
  %110 = getelementptr inbounds i8, ptr %39, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %110, i8 0, i64 256, i1 false)
  %111 = icmp sgt i32 %61, 0
  br i1 %111, label %112, label %158

112:                                              ; preds = %109
  %113 = getelementptr inbounds i8, ptr %22, i64 17
  %114 = zext nneg i32 %61 to i64
  br i1 %15, label %115, label %135

115:                                              ; preds = %112, %127
  %116 = phi i64 [ %133, %127 ], [ 0, %112 ]
  %117 = getelementptr inbounds [256 x i8], ptr %113, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !17
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds [256 x i8], ptr %110, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !17
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = load ptr, ptr %0, align 8, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %124, i64 40
  store i32 8, ptr %125, align 8, !tbaa !14
  %126 = load ptr, ptr %124, align 8, !tbaa !18
  tail call void %126(ptr noundef nonnull %0) #6
  br label %127

127:                                              ; preds = %123, %115
  %128 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %116
  %129 = load i32, ptr %128, align 4, !tbaa !25
  %130 = getelementptr inbounds [256 x i32], ptr %39, i64 0, i64 %119
  store i32 %129, ptr %130, align 4, !tbaa !25
  %131 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %116
  %132 = load i8, ptr %131, align 1, !tbaa !17
  store i8 %132, ptr %120, align 1, !tbaa !17
  %133 = add nuw nsw i64 %116, 1
  %134 = icmp eq i64 %133, %114
  br i1 %134, label %158, label %115, !llvm.loop !28

135:                                              ; preds = %112, %149
  %136 = phi i64 [ %156, %149 ], [ 0, %112 ]
  %137 = getelementptr inbounds [256 x i8], ptr %113, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !17
  %139 = icmp ugt i8 %138, 15
  %140 = zext i8 %138 to i64
  br i1 %139, label %145, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds [256 x i8], ptr %110, i64 0, i64 %140
  %143 = load i8, ptr %142, align 1, !tbaa !17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %135, %141
  %146 = load ptr, ptr %0, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 40
  store i32 8, ptr %147, align 8, !tbaa !14
  %148 = load ptr, ptr %146, align 8, !tbaa !18
  tail call void %148(ptr noundef nonnull %0) #6
  br label %149

149:                                              ; preds = %145, %141
  %150 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %136
  %151 = load i32, ptr %150, align 4, !tbaa !25
  %152 = getelementptr inbounds [256 x i32], ptr %39, i64 0, i64 %140
  store i32 %151, ptr %152, align 4, !tbaa !25
  %153 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %136
  %154 = load i8, ptr %153, align 1, !tbaa !17
  %155 = getelementptr inbounds [256 x i8], ptr %110, i64 0, i64 %140
  store i8 %154, ptr %155, align 1, !tbaa !17
  %156 = add nuw nsw i64 %136, 1
  %157 = icmp eq i64 %156, %114
  br i1 %157, label %158, label %135, !llvm.loop !28

158:                                              ; preds = %149, %127, %109
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @jpeg_gen_optimal_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [33 x i8], align 1
  %5 = alloca [257 x i32], align 4
  %6 = alloca [257 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %5, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %6, i8 -1, i64 1028, i1 false), !tbaa !25
  %7 = getelementptr inbounds i8, ptr %2, i64 2048
  store i64 1, ptr %7, align 8, !tbaa !29
  br label %10

8:                                                ; preds = %10
  %9 = zext i32 %20 to i64
  br label %28

10:                                               ; preds = %24, %3
  %11 = phi i64 [ 0, %3 ], [ %25, %24 ]
  %12 = phi i64 [ 1000000000, %3 ], [ %26, %24 ]
  %13 = phi i32 [ -1, %3 ], [ %27, %24 ]
  %14 = getelementptr inbounds i64, ptr %2, i64 %11
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = icmp eq i64 %15, 0
  %17 = icmp sgt i64 %15, %12
  %18 = select i1 %16, i1 true, i1 %17
  %19 = trunc nuw nsw i64 %11 to i32
  %20 = select i1 %18, i32 %13, i32 %19
  %21 = select i1 %18, i64 %12, i64 %15
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 257
  br i1 %23, label %8, label %24

24:                                               ; preds = %77, %10, %69
  %25 = phi i64 [ %22, %10 ], [ 0, %69 ], [ 0, %77 ]
  %26 = phi i64 [ %21, %10 ], [ 1000000000, %69 ], [ 1000000000, %77 ]
  %27 = phi i32 [ %20, %10 ], [ -1, %69 ], [ -1, %77 ]
  br label %10, !llvm.loop !30

28:                                               ; preds = %8, %28
  %29 = phi i64 [ 0, %8 ], [ %42, %28 ]
  %30 = phi i64 [ 1000000000, %8 ], [ %41, %28 ]
  %31 = phi i32 [ -1, %8 ], [ %40, %28 ]
  %32 = getelementptr inbounds i64, ptr %2, i64 %29
  %33 = load i64, ptr %32, align 8, !tbaa !29
  %34 = icmp eq i64 %33, 0
  %35 = icmp sgt i64 %33, %30
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp eq i64 %29, %9
  %38 = select i1 %36, i1 true, i1 %37
  %39 = trunc nuw nsw i64 %29 to i32
  %40 = select i1 %38, i32 %31, i32 %39
  %41 = select i1 %38, i64 %30, i64 %33
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, 257
  br i1 %43, label %44, label %28, !llvm.loop !31

44:                                               ; preds = %28
  %45 = icmp slt i32 %40, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %44
  %47 = zext nneg i32 %40 to i64
  %48 = getelementptr inbounds i64, ptr %2, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = sext i32 %20 to i64
  %51 = getelementptr inbounds i64, ptr %2, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !29
  %53 = add nsw i64 %52, %49
  store i64 %53, ptr %51, align 8, !tbaa !29
  store i64 0, ptr %48, align 8, !tbaa !29
  %54 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !25
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !25
  %57 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %50
  %58 = load i32, ptr %57, align 4, !tbaa !25
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %46, %60
  %61 = phi i32 [ %67, %60 ], [ %58, %46 ]
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !25
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !25
  %66 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %62
  %67 = load i32, ptr %66, align 4, !tbaa !25
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %60, label %69, !llvm.loop !32

69:                                               ; preds = %60, %46
  %70 = phi ptr [ %57, %46 ], [ %66, %60 ]
  store i32 %40, ptr %70, align 4, !tbaa !25
  %71 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %47
  %72 = load i32, ptr %71, align 4, !tbaa !25
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !25
  %74 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %47
  %75 = load i32, ptr %74, align 4, !tbaa !25
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %24

77:                                               ; preds = %69, %77
  %78 = phi i32 [ %84, %77 ], [ %75, %69 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !25
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !25
  %83 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %79
  %84 = load i32, ptr %83, align 4, !tbaa !25
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %77, label %24, !llvm.loop !33

86:                                               ; preds = %44, %102
  %87 = phi i64 [ %103, %102 ], [ 0, %44 ]
  %88 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !25
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = icmp sgt i32 %89, 32
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = load ptr, ptr %0, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %94, i64 40
  store i32 39, ptr %95, align 8, !tbaa !14
  %96 = load ptr, ptr %94, align 8, !tbaa !18
  tail call void %96(ptr noundef nonnull %0) #6
  br label %97

97:                                               ; preds = %93, %91
  %98 = sext i32 %89 to i64
  %99 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !17
  %101 = add i8 %100, 1
  store i8 %101, ptr %99, align 1, !tbaa !17
  br label %102

102:                                              ; preds = %86, %97
  %103 = add nuw nsw i64 %87, 1
  %104 = icmp eq i64 %103, 257
  br i1 %104, label %105, label %86, !llvm.loop !34

105:                                              ; preds = %102, %136
  %106 = phi i64 [ %111, %136 ], [ 32, %102 ]
  %107 = phi i64 [ %138, %136 ], [ 30, %102 ]
  %108 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %106
  %109 = load i8, ptr %108, align 1, !tbaa !17
  %110 = icmp eq i8 %109, 0
  %111 = add nsw i64 %106, -1
  br i1 %110, label %136, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %111
  br label %114

114:                                              ; preds = %112, %122
  %115 = phi i8 [ %109, %112 ], [ %134, %122 ]
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i64 [ %121, %116 ], [ %107, %114 ]
  %118 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !17
  %120 = icmp eq i8 %119, 0
  %121 = add nsw i64 %117, -1
  br i1 %120, label %116, label %122, !llvm.loop !35

122:                                              ; preds = %116
  %123 = add i8 %115, -2
  store i8 %123, ptr %108, align 1, !tbaa !17
  %124 = load i8, ptr %113, align 1, !tbaa !17
  %125 = add i8 %124, 1
  store i8 %125, ptr %113, align 1, !tbaa !17
  %126 = shl i64 %117, 32
  %127 = add i64 %126, 4294967296
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !17
  %131 = add i8 %130, 2
  store i8 %131, ptr %129, align 1, !tbaa !17
  %132 = load i8, ptr %118, align 1, !tbaa !17
  %133 = add i8 %132, -1
  store i8 %133, ptr %118, align 1, !tbaa !17
  %134 = load i8, ptr %108, align 1, !tbaa !17
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %114, !llvm.loop !36

136:                                              ; preds = %122, %105
  %137 = icmp ugt i64 %106, 17
  %138 = add nsw i64 %107, -1
  br i1 %137, label %105, label %139, !llvm.loop !37

139:                                              ; preds = %136, %139
  %140 = phi i64 [ %144, %139 ], [ 16, %136 ]
  %141 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !17
  %143 = icmp eq i8 %142, 0
  %144 = add nsw i64 %140, -1
  br i1 %143, label %139, label %145, !llvm.loop !38

145:                                              ; preds = %139
  %146 = add i8 %142, -1
  store i8 %146, ptr %141, align 1, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 17, i1 false)
  %147 = getelementptr inbounds i8, ptr %1, i64 17
  br label %148

148:                                              ; preds = %145, %166
  %149 = phi i32 [ 1, %145 ], [ %167, %166 ]
  %150 = phi i32 [ 0, %145 ], [ %163, %166 ]
  br label %151

151:                                              ; preds = %148, %162
  %152 = phi i64 [ 0, %148 ], [ %164, %162 ]
  %153 = phi i32 [ %150, %148 ], [ %163, %162 ]
  %154 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %152
  %155 = load i32, ptr %154, align 4, !tbaa !25
  %156 = icmp eq i32 %155, %149
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = trunc i64 %152 to i8
  %159 = sext i32 %153 to i64
  %160 = getelementptr inbounds [256 x i8], ptr %147, i64 0, i64 %159
  store i8 %158, ptr %160, align 1, !tbaa !17
  %161 = add nsw i32 %153, 1
  br label %162

162:                                              ; preds = %151, %157
  %163 = phi i32 [ %161, %157 ], [ %153, %151 ]
  %164 = add nuw nsw i64 %152, 1
  %165 = icmp eq i64 %164, 256
  br i1 %165, label %166, label %151, !llvm.loop !39

166:                                              ; preds = %162
  %167 = add nuw nsw i32 %149, 1
  %168 = icmp eq i32 %167, 33
  br i1 %168, label %169, label %148, !llvm.loop !40

169:                                              ; preds = %166
  %170 = getelementptr inbounds i8, ptr %1, i64 276
  store i32 0, ptr %170, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
define dso_local void @jinit_huff_encoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 192) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 496
  store ptr %5, ptr %6, align 8, !tbaa !43
  store ptr @start_pass_huff, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_huff(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %7 = getelementptr inbounds i8, ptr %4, i64 16
  %8 = getelementptr inbounds i8, ptr %0, i64 324
  br i1 %5, label %9, label %12

9:                                                ; preds = %2
  store ptr @encode_mcu_huff, ptr %6, align 8
  store ptr @finish_pass_huff, ptr %7, align 8
  %10 = load i32, ptr %8, align 4, !tbaa !48
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %21, label %92

12:                                               ; preds = %2
  store ptr @encode_mcu_gather, ptr %6, align 8
  store ptr @finish_pass_gather, ptr %7, align 8
  %13 = load i32, ptr %8, align 4, !tbaa !48
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %0, i64 328
  %17 = getelementptr inbounds i8, ptr %4, i64 128
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = getelementptr inbounds i8, ptr %4, i64 160
  %20 = getelementptr inbounds i8, ptr %4, i64 36
  br label %43

21:                                               ; preds = %9
  %22 = getelementptr inbounds i8, ptr %0, i64 328
  %23 = getelementptr inbounds i8, ptr %4, i64 64
  %24 = getelementptr inbounds i8, ptr %4, i64 96
  %25 = getelementptr inbounds i8, ptr %4, i64 36
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %39, %26 ]
  %28 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds i8, ptr %29, i64 20
  %31 = load i32, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds i8, ptr %29, i64 24
  %33 = load i32, ptr %32, align 8, !tbaa !51
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds [4 x ptr], ptr %23, i64 0, i64 %34
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %31, ptr noundef nonnull %35)
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 %36
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext %33, ptr noundef nonnull %37)
  %38 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %27
  store i32 0, ptr %38, align 4, !tbaa !25
  %39 = add nuw nsw i64 %27, 1
  %40 = load i32, ptr %8, align 4, !tbaa !48
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %26, label %92, !llvm.loop !52

43:                                               ; preds = %15, %85
  %44 = phi i64 [ 0, %15 ], [ %88, %85 ]
  %45 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = getelementptr inbounds i8, ptr %46, i64 20
  %48 = load i32, ptr %47, align 4, !tbaa !49
  %49 = getelementptr inbounds i8, ptr %46, i64 24
  %50 = load i32, ptr %49, align 8, !tbaa !51
  %51 = icmp ugt i32 %48, 3
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load ptr, ptr %0, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 40
  store i32 50, ptr %54, align 8, !tbaa !14
  %55 = getelementptr inbounds i8, ptr %53, i64 44
  store i32 %48, ptr %55, align 4, !tbaa !17
  %56 = load ptr, ptr %0, align 8, !tbaa !6
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  tail call void %57(ptr noundef nonnull %0) #6
  br label %58

58:                                               ; preds = %43, %52
  %59 = icmp ugt i32 %50, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load ptr, ptr %0, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 40
  store i32 50, ptr %62, align 8, !tbaa !14
  %63 = getelementptr inbounds i8, ptr %61, i64 44
  store i32 %50, ptr %63, align 4, !tbaa !17
  %64 = load ptr, ptr %0, align 8, !tbaa !6
  %65 = load ptr, ptr %64, align 8, !tbaa !18
  tail call void %65(ptr noundef nonnull %0) #6
  br label %66

66:                                               ; preds = %58, %60
  %67 = sext i32 %48 to i64
  %68 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load ptr, ptr %18, align 8, !tbaa !20
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = tail call ptr %73(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2056) #6
  store ptr %74, ptr %68, align 8, !tbaa !19
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi ptr [ %74, %71 ], [ %69, %66 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %76, i8 0, i64 2056, i1 false)
  %77 = sext i32 %50 to i64
  %78 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load ptr, ptr %18, align 8, !tbaa !20
  %83 = load ptr, ptr %82, align 8, !tbaa !21
  %84 = tail call ptr %83(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2056) #6
  store ptr %84, ptr %78, align 8, !tbaa !19
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi ptr [ %84, %81 ], [ %79, %75 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %86, i8 0, i64 2056, i1 false)
  %87 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %44
  store i32 0, ptr %87, align 4, !tbaa !25
  %88 = add nuw nsw i64 %44, 1
  %89 = load i32, ptr %8, align 4, !tbaa !48
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %43, label %92, !llvm.loop !52

92:                                               ; preds = %85, %26, %12, %9
  %93 = getelementptr inbounds i8, ptr %4, i64 24
  store i64 0, ptr %93, align 8, !tbaa !53
  %94 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 0, ptr %94, align 8, !tbaa !54
  %95 = getelementptr inbounds i8, ptr %0, i64 280
  %96 = load i32, ptr %95, align 8, !tbaa !55
  %97 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %96, ptr %97, align 8, !tbaa !56
  %98 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 0, ptr %98, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind
define internal noundef signext i32 @encode_mcu_gather(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, ptr %0, i64 280
  %6 = load i32, ptr %5, align 8, !tbaa !55
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 56
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 324
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %4, i64 36
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  %20 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 %19
  store i32 0, ptr %20, align 4, !tbaa !25
  %21 = add nuw nsw i64 %19, 1
  %22 = load i32, ptr %13, align 4, !tbaa !48
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %18, label %25, !llvm.loop !58

25:                                               ; preds = %18
  %26 = load i32, ptr %5, align 8, !tbaa !55
  br label %27

27:                                               ; preds = %12, %25, %8
  %28 = phi i32 [ %10, %8 ], [ %26, %25 ], [ %6, %12 ]
  %29 = add i32 %28, -1
  store i32 %29, ptr %9, align 8, !tbaa !56
  br label %30

30:                                               ; preds = %27, %2
  %31 = getelementptr inbounds i8, ptr %0, i64 368
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %156

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 372
  %36 = getelementptr inbounds i8, ptr %0, i64 328
  %37 = getelementptr inbounds i8, ptr %4, i64 36
  %38 = getelementptr inbounds i8, ptr %4, i64 128
  %39 = getelementptr inbounds i8, ptr %4, i64 160
  br label %40

40:                                               ; preds = %34, %148
  %41 = phi i64 [ 0, %34 ], [ %152, %148 ]
  %42 = getelementptr inbounds [10 x i32], ptr %35, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = getelementptr inbounds ptr, ptr %1, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = getelementptr inbounds [4 x i32], ptr %37, i64 0, i64 %44
  %50 = load i32, ptr %49, align 4, !tbaa !25
  %51 = getelementptr inbounds i8, ptr %46, i64 20
  %52 = load i32, ptr %51, align 4, !tbaa !49
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x ptr], ptr %38, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = getelementptr inbounds i8, ptr %46, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !51
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x ptr], ptr %39, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = load i16, ptr %48, align 2, !tbaa !60
  %62 = sext i16 %61 to i32
  %63 = icmp eq i32 %50, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %40
  %65 = sub nsw i32 %62, %50
  %66 = tail call i32 @llvm.abs.i32(i32 %65, i1 true)
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i32 [ %70, %67 ], [ 0, %64 ]
  %69 = phi i32 [ %71, %67 ], [ %66, %64 ]
  %70 = add nuw nsw i32 %68, 1
  %71 = lshr i32 %69, 1
  %72 = icmp ult i32 %69, 2
  br i1 %72, label %73, label %67, !llvm.loop !61

73:                                               ; preds = %67
  %74 = icmp ugt i32 %68, 10
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = load ptr, ptr %0, align 8, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %76, i64 40
  store i32 6, ptr %77, align 8, !tbaa !14
  %78 = load ptr, ptr %76, align 8, !tbaa !18
  tail call void %78(ptr noundef nonnull %0) #6
  br label %79

79:                                               ; preds = %75, %73, %40
  %80 = phi i32 [ %70, %75 ], [ %70, %73 ], [ 0, %40 ]
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds i64, ptr %55, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !29
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr %82, align 8, !tbaa !29
  %85 = getelementptr inbounds i8, ptr %60, i64 1920
  br label %86

86:                                               ; preds = %140, %79
  %87 = phi i64 [ 1, %79 ], [ %141, %140 ]
  %88 = phi i32 [ 0, %79 ], [ %142, %140 ]
  %89 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %87
  %90 = load i32, ptr %89, align 4, !tbaa !25
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, ptr %48, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !60
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %126, label %95

95:                                               ; preds = %86
  %96 = icmp sgt i32 %88, 15
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = load i64, ptr %85, align 8, !tbaa !29
  %99 = tail call i32 @llvm.usub.sat.i32(i32 %88, i32 31)
  %100 = add nuw nsw i32 %99, 15
  %101 = lshr i32 %100, 4
  %102 = add nuw nsw i32 %101, 1
  %103 = zext nneg i32 %102 to i64
  %104 = add i64 %98, %103
  %105 = and i32 %100, 2147483632
  %106 = add nsw i32 %88, -16
  %107 = sub nsw i32 %106, %105
  store i64 %104, ptr %85, align 8, !tbaa !29
  br label %108

108:                                              ; preds = %97, %95
  %109 = phi i32 [ %107, %97 ], [ %88, %95 ]
  %110 = tail call i16 @llvm.abs.i16(i16 %93, i1 false)
  %111 = icmp ult i16 %110, 2
  br i1 %111, label %130, label %112

112:                                              ; preds = %108
  %113 = zext i16 %110 to i32
  br label %114

114:                                              ; preds = %114, %112
  %115 = phi i32 [ %118, %114 ], [ 1, %112 ]
  %116 = phi i32 [ %117, %114 ], [ %113, %112 ]
  %117 = lshr i32 %116, 1
  %118 = add nuw nsw i32 %115, 1
  %119 = icmp ult i32 %116, 4
  br i1 %119, label %120, label %114, !llvm.loop !62

120:                                              ; preds = %114
  %121 = icmp ugt i32 %115, 9
  br i1 %121, label %122, label %130

122:                                              ; preds = %120
  %123 = load ptr, ptr %0, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 40
  store i32 6, ptr %124, align 8, !tbaa !14
  %125 = load ptr, ptr %123, align 8, !tbaa !18
  tail call void %125(ptr noundef nonnull %0) #6
  br label %130

126:                                              ; preds = %86
  %127 = add nsw i32 %88, 1
  %128 = add nuw nsw i64 %87, 1
  %129 = icmp eq i64 %128, 64
  br i1 %129, label %143, label %140

130:                                              ; preds = %122, %120, %108
  %131 = phi i32 [ %118, %122 ], [ %118, %120 ], [ 1, %108 ]
  %132 = shl i32 %109, 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, ptr %60, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !29
  %137 = add nsw i64 %136, 1
  store i64 %137, ptr %135, align 8, !tbaa !29
  %138 = add nuw nsw i64 %87, 1
  %139 = icmp eq i64 %138, 64
  br i1 %139, label %148, label %140

140:                                              ; preds = %130, %126
  %141 = phi i64 [ %128, %126 ], [ %138, %130 ]
  %142 = phi i32 [ %127, %126 ], [ 0, %130 ]
  br label %86, !llvm.loop !63

143:                                              ; preds = %126
  %144 = icmp sgt i32 %88, -1
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i64, ptr %60, align 8, !tbaa !29
  %147 = add nsw i64 %146, 1
  store i64 %147, ptr %60, align 8, !tbaa !29
  br label %148

148:                                              ; preds = %130, %143, %145
  %149 = load ptr, ptr %47, align 8, !tbaa !19
  %150 = load i16, ptr %149, align 2, !tbaa !60
  %151 = sext i16 %150 to i32
  store i32 %151, ptr %49, align 4, !tbaa !25
  %152 = add nuw nsw i64 %41, 1
  %153 = load i32, ptr %31, align 8, !tbaa !59
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %40, label %156, !llvm.loop !64

156:                                              ; preds = %148, %30
  ret i32 1
}

; Function Attrs: nounwind
define internal void @finish_pass_gather(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds i8, ptr %0, i64 496
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i64 324
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 328
  %11 = getelementptr inbounds i8, ptr %0, i64 128
  %12 = getelementptr inbounds i8, ptr %5, i64 128
  %13 = getelementptr inbounds i8, ptr %0, i64 160
  %14 = getelementptr inbounds i8, ptr %5, i64 160
  br label %15

15:                                               ; preds = %9, %52
  %16 = phi i64 [ 0, %9 ], [ %53, %52 ]
  %17 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds i8, ptr %18, i64 20
  %20 = load i32, ptr %19, align 4, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %18, i64 24
  %22 = load i32, ptr %21, align 8, !tbaa !51
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !25
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %32, ptr %28, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %23
  %36 = load ptr, ptr %35, align 8, !tbaa !19
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %34, ptr noundef %36)
  store i32 1, ptr %24, align 4, !tbaa !25
  br label %37

37:                                               ; preds = %33, %15
  %38 = sext i32 %22 to i64
  %39 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !25
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %47, ptr %43, align 8, !tbaa !19
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %50 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %38
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %51)
  store i32 1, ptr %39, align 4, !tbaa !25
  br label %52

52:                                               ; preds = %37, %48
  %53 = add nuw nsw i64 %16, 1
  %54 = load i32, ptr %6, align 4, !tbaa !48
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %15, label %57, !llvm.loop !65

57:                                               ; preds = %52, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @encode_mcu_huff(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.working_state, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 496
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  store ptr %8, ptr %3, align 8, !tbaa !69
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %10, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds i8, ptr %3, i64 16
  %13 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !73
  %14 = getelementptr inbounds i8, ptr %3, i64 48
  store ptr %0, ptr %14, align 8, !tbaa !74
  %15 = getelementptr inbounds i8, ptr %0, i64 280
  %16 = load i32, ptr %15, align 8, !tbaa !55
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %138, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, ptr %5, i64 56
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %138

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %5, i64 60
  %24 = load i32, ptr %23, align 4, !tbaa !57
  %25 = getelementptr inbounds i8, ptr %3, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  %29 = sub nsw i32 17, %26
  %30 = zext nneg i32 %29 to i64
  %31 = shl i64 127, %30
  %32 = load i64, ptr %12, align 8, !tbaa !76
  %33 = or i64 %32, %31
  %34 = add nuw nsw i32 %26, 7
  br label %35

35:                                               ; preds = %78, %28
  %36 = phi i32 [ %34, %28 ], [ %80, %78 ]
  %37 = phi i64 [ %33, %28 ], [ %79, %78 ]
  %38 = lshr i64 %37, 16
  %39 = trunc i64 %38 to i8
  %40 = load ptr, ptr %3, align 8, !tbaa !69
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %3, align 8, !tbaa !69
  store i8 %39, ptr %40, align 1, !tbaa !17
  %42 = load i64, ptr %11, align 8, !tbaa !72
  %43 = add i64 %42, -1
  store i64 %43, ptr %11, align 8, !tbaa !72
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load ptr, ptr %14, align 8, !tbaa !74
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  %49 = getelementptr inbounds i8, ptr %48, i64 24
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  %51 = tail call signext i32 %50(ptr noundef %46) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %722, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %48, align 8, !tbaa !67
  store ptr %54, ptr %3, align 8, !tbaa !69
  %55 = getelementptr inbounds i8, ptr %48, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !71
  store i64 %56, ptr %11, align 8, !tbaa !72
  br label %57

57:                                               ; preds = %53, %35
  %58 = and i64 %37, 16711680
  %59 = icmp eq i64 %58, 16711680
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 8, !tbaa !69
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %62, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %61, align 1, !tbaa !17
  %63 = load i64, ptr %11, align 8, !tbaa !72
  %64 = add i64 %63, -1
  store i64 %64, ptr %11, align 8, !tbaa !72
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load ptr, ptr %14, align 8, !tbaa !74
  %68 = getelementptr inbounds i8, ptr %67, i64 40
  %69 = load ptr, ptr %68, align 8, !tbaa !66
  %70 = getelementptr inbounds i8, ptr %69, i64 24
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = tail call signext i32 %71(ptr noundef %67) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %722, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 8, !tbaa !67
  store ptr %75, ptr %3, align 8, !tbaa !69
  %76 = getelementptr inbounds i8, ptr %69, i64 8
  %77 = load i64, ptr %76, align 8, !tbaa !71
  store i64 %77, ptr %11, align 8, !tbaa !72
  br label %78

78:                                               ; preds = %74, %60, %57
  %79 = shl i64 %37, 8
  %80 = add nsw i32 %36, -8
  %81 = icmp sgt i32 %36, 15
  br i1 %81, label %35, label %82, !llvm.loop !78

82:                                               ; preds = %78
  %83 = load ptr, ptr %3, align 8, !tbaa !69
  br label %84

84:                                               ; preds = %82, %22
  %85 = phi ptr [ %83, %82 ], [ %8, %22 ]
  store i64 0, ptr %12, align 8, !tbaa !76
  store i32 0, ptr %25, align 8, !tbaa !75
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %86, ptr %3, align 8, !tbaa !69
  store i8 -1, ptr %85, align 1, !tbaa !17
  %87 = load i64, ptr %11, align 8, !tbaa !72
  %88 = add i64 %87, -1
  store i64 %88, ptr %11, align 8, !tbaa !72
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %3, align 8, !tbaa !69
  br label %104

92:                                               ; preds = %84
  %93 = load ptr, ptr %14, align 8, !tbaa !74
  %94 = getelementptr inbounds i8, ptr %93, i64 40
  %95 = load ptr, ptr %94, align 8, !tbaa !66
  %96 = getelementptr inbounds i8, ptr %95, i64 24
  %97 = load ptr, ptr %96, align 8, !tbaa !77
  %98 = tail call signext i32 %97(ptr noundef %93) #6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %722, label %100

100:                                              ; preds = %92
  %101 = load ptr, ptr %95, align 8, !tbaa !67
  %102 = getelementptr inbounds i8, ptr %95, i64 8
  %103 = load i64, ptr %102, align 8, !tbaa !71
  store i64 %103, ptr %11, align 8, !tbaa !72
  br label %104

104:                                              ; preds = %100, %90
  %105 = phi ptr [ %91, %90 ], [ %101, %100 ]
  %106 = trunc i32 %24 to i8
  %107 = add i8 %106, -48
  %108 = getelementptr inbounds i8, ptr %105, i64 1
  store ptr %108, ptr %3, align 8, !tbaa !69
  store i8 %107, ptr %105, align 1, !tbaa !17
  %109 = load i64, ptr %11, align 8, !tbaa !72
  %110 = add i64 %109, -1
  store i64 %110, ptr %11, align 8, !tbaa !72
  %111 = icmp eq i64 %110, 0
  %112 = load ptr, ptr %14, align 8, !tbaa !74
  br i1 %111, label %113, label %124

113:                                              ; preds = %104
  %114 = getelementptr inbounds i8, ptr %112, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !66
  %116 = getelementptr inbounds i8, ptr %115, i64 24
  %117 = load ptr, ptr %116, align 8, !tbaa !77
  %118 = tail call signext i32 %117(ptr noundef %112) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %722, label %120

120:                                              ; preds = %113
  %121 = load ptr, ptr %115, align 8, !tbaa !67
  store ptr %121, ptr %3, align 8, !tbaa !69
  %122 = getelementptr inbounds i8, ptr %115, i64 8
  %123 = load i64, ptr %122, align 8, !tbaa !71
  store i64 %123, ptr %11, align 8, !tbaa !72
  br label %124

124:                                              ; preds = %120, %104
  %125 = phi i64 [ %123, %120 ], [ %110, %104 ]
  %126 = getelementptr inbounds i8, ptr %112, i64 324
  %127 = load i32, ptr %126, align 4, !tbaa !48
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = getelementptr inbounds i8, ptr %3, i64 28
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %134, %131 ]
  %133 = getelementptr inbounds [4 x i32], ptr %130, i64 0, i64 %132
  store i32 0, ptr %133, align 4, !tbaa !25
  %134 = add nuw nsw i64 %132, 1
  %135 = load i32, ptr %126, align 4, !tbaa !48
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %131, label %138, !llvm.loop !79

138:                                              ; preds = %131, %124, %18, %2
  %139 = phi i64 [ %125, %124 ], [ %10, %18 ], [ %10, %2 ], [ %125, %131 ]
  %140 = getelementptr inbounds i8, ptr %0, i64 368
  %141 = load i32, ptr %140, align 8, !tbaa !59
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %703

143:                                              ; preds = %138
  %144 = getelementptr inbounds i8, ptr %0, i64 372
  %145 = getelementptr inbounds i8, ptr %0, i64 328
  %146 = getelementptr inbounds i8, ptr %3, i64 28
  %147 = getelementptr inbounds i8, ptr %5, i64 64
  %148 = getelementptr inbounds i8, ptr %5, i64 96
  %149 = getelementptr inbounds i8, ptr %3, i64 24
  br label %150

150:                                              ; preds = %143, %694
  %151 = phi i64 [ %139, %143 ], [ %695, %694 ]
  %152 = phi i64 [ 0, %143 ], [ %699, %694 ]
  %153 = getelementptr inbounds [10 x i32], ptr %144, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !25
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x ptr], ptr %145, i64 0, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !19
  %158 = getelementptr inbounds ptr, ptr %1, i64 %152
  %159 = load ptr, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds [4 x i32], ptr %146, i64 0, i64 %155
  %161 = load i32, ptr %160, align 4, !tbaa !25
  %162 = getelementptr inbounds i8, ptr %157, i64 20
  %163 = load i32, ptr %162, align 4, !tbaa !49
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x ptr], ptr %147, i64 0, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !19
  %167 = getelementptr inbounds i8, ptr %157, i64 24
  %168 = load i32, ptr %167, align 8, !tbaa !51
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x ptr], ptr %148, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !19
  %172 = load i16, ptr %159, align 2, !tbaa !60
  %173 = sext i16 %172 to i32
  %174 = sub nsw i32 %173, %161
  %175 = ashr i32 %174, 31
  %176 = add nsw i32 %175, %174
  %177 = icmp eq i32 %161, %173
  br i1 %177, label %193, label %178

178:                                              ; preds = %150
  %179 = tail call i32 @llvm.abs.i32(i32 %174, i1 true)
  br label %180

180:                                              ; preds = %180, %178
  %181 = phi i32 [ %183, %180 ], [ 0, %178 ]
  %182 = phi i32 [ %184, %180 ], [ %179, %178 ]
  %183 = add nuw nsw i32 %181, 1
  %184 = lshr i32 %182, 1
  %185 = icmp ult i32 %182, 2
  br i1 %185, label %186, label %180, !llvm.loop !80

186:                                              ; preds = %180
  %187 = icmp ugt i32 %181, 10
  br i1 %187, label %188, label %193

188:                                              ; preds = %186
  %189 = load ptr, ptr %14, align 8, !tbaa !74
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  %191 = getelementptr inbounds i8, ptr %190, i64 40
  store i32 6, ptr %191, align 8, !tbaa !14
  %192 = load ptr, ptr %190, align 8, !tbaa !18
  tail call void %192(ptr noundef nonnull %189) #6
  br label %193

193:                                              ; preds = %188, %186, %150
  %194 = phi i32 [ %183, %188 ], [ %183, %186 ], [ 0, %150 ]
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds [256 x i32], ptr %166, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !25
  %198 = getelementptr inbounds i8, ptr %166, i64 1024
  %199 = getelementptr inbounds [256 x i8], ptr %198, i64 0, i64 %195
  %200 = load i8, ptr %199, align 1, !tbaa !17
  %201 = zext i8 %200 to i32
  %202 = zext i32 %197 to i64
  %203 = load i32, ptr %149, align 8, !tbaa !75
  %204 = icmp eq i8 %200, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %193
  %206 = load ptr, ptr %14, align 8, !tbaa !74
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 40
  store i32 40, ptr %208, align 8, !tbaa !14
  %209 = load ptr, ptr %207, align 8, !tbaa !18
  tail call void %209(ptr noundef nonnull %206) #6
  br label %210

210:                                              ; preds = %205, %193
  %211 = zext nneg i8 %200 to i64
  %212 = shl nsw i64 -1, %211
  %213 = xor i64 %212, -1
  %214 = and i64 %213, %202
  %215 = add nsw i32 %203, %201
  %216 = sub nsw i32 24, %215
  %217 = zext nneg i32 %216 to i64
  %218 = shl i64 %214, %217
  %219 = load i64, ptr %12, align 8, !tbaa !76
  %220 = or i64 %219, %218
  %221 = icmp sgt i32 %215, 7
  br i1 %221, label %222, label %271

222:                                              ; preds = %210, %266
  %223 = phi i32 [ %269, %266 ], [ %215, %210 ]
  %224 = phi i64 [ %268, %266 ], [ %220, %210 ]
  %225 = lshr i64 %224, 16
  %226 = trunc i64 %225 to i8
  %227 = load ptr, ptr %3, align 8, !tbaa !69
  %228 = getelementptr inbounds i8, ptr %227, i64 1
  store ptr %228, ptr %3, align 8, !tbaa !69
  store i8 %226, ptr %227, align 1, !tbaa !17
  %229 = load i64, ptr %11, align 8, !tbaa !72
  %230 = add i64 %229, -1
  store i64 %230, ptr %11, align 8, !tbaa !72
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %222
  %233 = load ptr, ptr %14, align 8, !tbaa !74
  %234 = getelementptr inbounds i8, ptr %233, i64 40
  %235 = load ptr, ptr %234, align 8, !tbaa !66
  %236 = getelementptr inbounds i8, ptr %235, i64 24
  %237 = load ptr, ptr %236, align 8, !tbaa !77
  %238 = tail call signext i32 %237(ptr noundef %233) #6
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %722, label %240

240:                                              ; preds = %232
  %241 = load ptr, ptr %235, align 8, !tbaa !67
  store ptr %241, ptr %3, align 8, !tbaa !69
  %242 = getelementptr inbounds i8, ptr %235, i64 8
  %243 = load i64, ptr %242, align 8, !tbaa !71
  store i64 %243, ptr %11, align 8, !tbaa !72
  br label %244

244:                                              ; preds = %240, %222
  %245 = phi i64 [ %243, %240 ], [ %230, %222 ]
  %246 = and i64 %224, 16711680
  %247 = icmp eq i64 %246, 16711680
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = load ptr, ptr %3, align 8, !tbaa !69
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  store ptr %250, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %249, align 1, !tbaa !17
  %251 = load i64, ptr %11, align 8, !tbaa !72
  %252 = add i64 %251, -1
  store i64 %252, ptr %11, align 8, !tbaa !72
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %248
  %255 = load ptr, ptr %14, align 8, !tbaa !74
  %256 = getelementptr inbounds i8, ptr %255, i64 40
  %257 = load ptr, ptr %256, align 8, !tbaa !66
  %258 = getelementptr inbounds i8, ptr %257, i64 24
  %259 = load ptr, ptr %258, align 8, !tbaa !77
  %260 = tail call signext i32 %259(ptr noundef %255) #6
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %722, label %262

262:                                              ; preds = %254
  %263 = load ptr, ptr %257, align 8, !tbaa !67
  store ptr %263, ptr %3, align 8, !tbaa !69
  %264 = getelementptr inbounds i8, ptr %257, i64 8
  %265 = load i64, ptr %264, align 8, !tbaa !71
  store i64 %265, ptr %11, align 8, !tbaa !72
  br label %266

266:                                              ; preds = %262, %248, %244
  %267 = phi i64 [ %265, %262 ], [ %252, %248 ], [ %245, %244 ]
  %268 = shl i64 %224, 8
  %269 = add nsw i32 %223, -8
  %270 = icmp sgt i32 %223, 15
  br i1 %270, label %222, label %271, !llvm.loop !78

271:                                              ; preds = %266, %210
  %272 = phi i64 [ %151, %210 ], [ %267, %266 ]
  %273 = phi i64 [ %220, %210 ], [ %268, %266 ]
  %274 = phi i32 [ %215, %210 ], [ %269, %266 ]
  store i64 %273, ptr %12, align 8, !tbaa !76
  store i32 %274, ptr %149, align 8, !tbaa !75
  %275 = icmp eq i32 %194, 0
  br i1 %275, label %340, label %276

276:                                              ; preds = %271
  %277 = zext i32 %176 to i64
  %278 = shl nsw i64 -1, %195
  %279 = xor i64 %278, -1
  %280 = and i64 %279, %277
  %281 = add nsw i32 %274, %194
  %282 = sub nsw i32 24, %281
  %283 = zext nneg i32 %282 to i64
  %284 = shl i64 %280, %283
  %285 = or i64 %284, %273
  %286 = icmp sgt i32 %281, 7
  br i1 %286, label %287, label %336

287:                                              ; preds = %276, %331
  %288 = phi i32 [ %334, %331 ], [ %281, %276 ]
  %289 = phi i64 [ %333, %331 ], [ %285, %276 ]
  %290 = lshr i64 %289, 16
  %291 = trunc i64 %290 to i8
  %292 = load ptr, ptr %3, align 8, !tbaa !69
  %293 = getelementptr inbounds i8, ptr %292, i64 1
  store ptr %293, ptr %3, align 8, !tbaa !69
  store i8 %291, ptr %292, align 1, !tbaa !17
  %294 = load i64, ptr %11, align 8, !tbaa !72
  %295 = add i64 %294, -1
  store i64 %295, ptr %11, align 8, !tbaa !72
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %287
  %298 = load ptr, ptr %14, align 8, !tbaa !74
  %299 = getelementptr inbounds i8, ptr %298, i64 40
  %300 = load ptr, ptr %299, align 8, !tbaa !66
  %301 = getelementptr inbounds i8, ptr %300, i64 24
  %302 = load ptr, ptr %301, align 8, !tbaa !77
  %303 = tail call signext i32 %302(ptr noundef %298) #6
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %722, label %305

305:                                              ; preds = %297
  %306 = load ptr, ptr %300, align 8, !tbaa !67
  store ptr %306, ptr %3, align 8, !tbaa !69
  %307 = getelementptr inbounds i8, ptr %300, i64 8
  %308 = load i64, ptr %307, align 8, !tbaa !71
  store i64 %308, ptr %11, align 8, !tbaa !72
  br label %309

309:                                              ; preds = %305, %287
  %310 = phi i64 [ %308, %305 ], [ %295, %287 ]
  %311 = and i64 %289, 16711680
  %312 = icmp eq i64 %311, 16711680
  br i1 %312, label %313, label %331

313:                                              ; preds = %309
  %314 = load ptr, ptr %3, align 8, !tbaa !69
  %315 = getelementptr inbounds i8, ptr %314, i64 1
  store ptr %315, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %314, align 1, !tbaa !17
  %316 = load i64, ptr %11, align 8, !tbaa !72
  %317 = add i64 %316, -1
  store i64 %317, ptr %11, align 8, !tbaa !72
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load ptr, ptr %14, align 8, !tbaa !74
  %321 = getelementptr inbounds i8, ptr %320, i64 40
  %322 = load ptr, ptr %321, align 8, !tbaa !66
  %323 = getelementptr inbounds i8, ptr %322, i64 24
  %324 = load ptr, ptr %323, align 8, !tbaa !77
  %325 = tail call signext i32 %324(ptr noundef %320) #6
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %722, label %327

327:                                              ; preds = %319
  %328 = load ptr, ptr %322, align 8, !tbaa !67
  store ptr %328, ptr %3, align 8, !tbaa !69
  %329 = getelementptr inbounds i8, ptr %322, i64 8
  %330 = load i64, ptr %329, align 8, !tbaa !71
  store i64 %330, ptr %11, align 8, !tbaa !72
  br label %331

331:                                              ; preds = %327, %313, %309
  %332 = phi i64 [ %330, %327 ], [ %317, %313 ], [ %310, %309 ]
  %333 = shl i64 %289, 8
  %334 = add nsw i32 %288, -8
  %335 = icmp sgt i32 %288, 15
  br i1 %335, label %287, label %336, !llvm.loop !78

336:                                              ; preds = %331, %276
  %337 = phi i64 [ %272, %276 ], [ %332, %331 ]
  %338 = phi i64 [ %285, %276 ], [ %333, %331 ]
  %339 = phi i32 [ %281, %276 ], [ %334, %331 ]
  store i64 %338, ptr %12, align 8, !tbaa !76
  store i32 %339, ptr %149, align 8, !tbaa !75
  br label %340

340:                                              ; preds = %336, %271
  %341 = phi i64 [ %337, %336 ], [ %272, %271 ]
  %342 = phi i64 [ %338, %336 ], [ %273, %271 ]
  %343 = phi i32 [ %339, %336 ], [ %274, %271 ]
  %344 = getelementptr inbounds i8, ptr %171, i64 960
  %345 = getelementptr inbounds i8, ptr %171, i64 1264
  %346 = getelementptr inbounds i8, ptr %171, i64 1024
  br label %347

347:                                              ; preds = %613, %340
  %348 = phi i64 [ %614, %613 ], [ %341, %340 ]
  %349 = phi i64 [ %615, %613 ], [ %342, %340 ]
  %350 = phi i32 [ %616, %613 ], [ %343, %340 ]
  %351 = phi i64 [ %617, %613 ], [ 1, %340 ]
  br label %352

352:                                              ; preds = %609, %347
  %353 = phi i64 [ %611, %609 ], [ %351, %347 ]
  %354 = phi i32 [ %610, %609 ], [ 0, %347 ]
  %355 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %353
  %356 = load i32, ptr %355, align 4, !tbaa !25
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i16, ptr %159, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !60
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %609, label %361

361:                                              ; preds = %352
  %362 = sext i16 %359 to i32
  %363 = icmp ugt i32 %354, 15
  br i1 %363, label %364, label %445

364:                                              ; preds = %361, %439
  %365 = phi i64 [ %440, %439 ], [ %348, %361 ]
  %366 = phi i64 [ %441, %439 ], [ %349, %361 ]
  %367 = phi i32 [ %442, %439 ], [ %350, %361 ]
  %368 = phi i32 [ %443, %439 ], [ %354, %361 ]
  %369 = load i32, ptr %344, align 4, !tbaa !25
  %370 = load i8, ptr %345, align 4, !tbaa !17
  %371 = zext i8 %370 to i32
  %372 = zext i32 %369 to i64
  %373 = icmp eq i8 %370, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %364
  %375 = load ptr, ptr %14, align 8, !tbaa !74
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 40
  store i32 40, ptr %377, align 8, !tbaa !14
  %378 = load ptr, ptr %376, align 8, !tbaa !18
  tail call void %378(ptr noundef nonnull %375) #6
  br label %379

379:                                              ; preds = %374, %364
  %380 = zext nneg i8 %370 to i64
  %381 = shl nsw i64 -1, %380
  %382 = xor i64 %381, -1
  %383 = and i64 %382, %372
  %384 = add nsw i32 %367, %371
  %385 = sub nsw i32 24, %384
  %386 = zext nneg i32 %385 to i64
  %387 = shl i64 %383, %386
  %388 = or i64 %366, %387
  %389 = icmp sgt i32 %384, 7
  br i1 %389, label %390, label %439

390:                                              ; preds = %379, %434
  %391 = phi i32 [ %437, %434 ], [ %384, %379 ]
  %392 = phi i64 [ %436, %434 ], [ %388, %379 ]
  %393 = lshr i64 %392, 16
  %394 = trunc i64 %393 to i8
  %395 = load ptr, ptr %3, align 8, !tbaa !69
  %396 = getelementptr inbounds i8, ptr %395, i64 1
  store ptr %396, ptr %3, align 8, !tbaa !69
  store i8 %394, ptr %395, align 1, !tbaa !17
  %397 = load i64, ptr %11, align 8, !tbaa !72
  %398 = add i64 %397, -1
  store i64 %398, ptr %11, align 8, !tbaa !72
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %412

400:                                              ; preds = %390
  %401 = load ptr, ptr %14, align 8, !tbaa !74
  %402 = getelementptr inbounds i8, ptr %401, i64 40
  %403 = load ptr, ptr %402, align 8, !tbaa !66
  %404 = getelementptr inbounds i8, ptr %403, i64 24
  %405 = load ptr, ptr %404, align 8, !tbaa !77
  %406 = tail call signext i32 %405(ptr noundef %401) #6
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %722, label %408

408:                                              ; preds = %400
  %409 = load ptr, ptr %403, align 8, !tbaa !67
  store ptr %409, ptr %3, align 8, !tbaa !69
  %410 = getelementptr inbounds i8, ptr %403, i64 8
  %411 = load i64, ptr %410, align 8, !tbaa !71
  store i64 %411, ptr %11, align 8, !tbaa !72
  br label %412

412:                                              ; preds = %408, %390
  %413 = phi i64 [ %411, %408 ], [ %398, %390 ]
  %414 = and i64 %392, 16711680
  %415 = icmp eq i64 %414, 16711680
  br i1 %415, label %416, label %434

416:                                              ; preds = %412
  %417 = load ptr, ptr %3, align 8, !tbaa !69
  %418 = getelementptr inbounds i8, ptr %417, i64 1
  store ptr %418, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %417, align 1, !tbaa !17
  %419 = load i64, ptr %11, align 8, !tbaa !72
  %420 = add i64 %419, -1
  store i64 %420, ptr %11, align 8, !tbaa !72
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %416
  %423 = load ptr, ptr %14, align 8, !tbaa !74
  %424 = getelementptr inbounds i8, ptr %423, i64 40
  %425 = load ptr, ptr %424, align 8, !tbaa !66
  %426 = getelementptr inbounds i8, ptr %425, i64 24
  %427 = load ptr, ptr %426, align 8, !tbaa !77
  %428 = tail call signext i32 %427(ptr noundef %423) #6
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %722, label %430

430:                                              ; preds = %422
  %431 = load ptr, ptr %425, align 8, !tbaa !67
  store ptr %431, ptr %3, align 8, !tbaa !69
  %432 = getelementptr inbounds i8, ptr %425, i64 8
  %433 = load i64, ptr %432, align 8, !tbaa !71
  store i64 %433, ptr %11, align 8, !tbaa !72
  br label %434

434:                                              ; preds = %430, %416, %412
  %435 = phi i64 [ %433, %430 ], [ %420, %416 ], [ %413, %412 ]
  %436 = shl i64 %392, 8
  %437 = add nsw i32 %391, -8
  %438 = icmp ugt i32 %391, 15
  br i1 %438, label %390, label %439, !llvm.loop !78

439:                                              ; preds = %434, %379
  %440 = phi i64 [ %365, %379 ], [ %435, %434 ]
  %441 = phi i64 [ %388, %379 ], [ %436, %434 ]
  %442 = phi i32 [ %384, %379 ], [ %437, %434 ]
  store i64 %441, ptr %12, align 8, !tbaa !76
  store i32 %442, ptr %149, align 8, !tbaa !75
  %443 = add nsw i32 %368, -16
  %444 = icmp sgt i32 %368, 31
  br i1 %444, label %364, label %445, !llvm.loop !81

445:                                              ; preds = %439, %361
  %446 = phi i64 [ %348, %361 ], [ %440, %439 ]
  %447 = phi i64 [ %349, %361 ], [ %441, %439 ]
  %448 = phi i32 [ %350, %361 ], [ %442, %439 ]
  %449 = phi i32 [ %354, %361 ], [ %443, %439 ]
  %450 = tail call i32 @llvm.abs.i32(i32 %362, i1 true)
  %451 = ashr i16 %359, 15
  %452 = sext i16 %451 to i32
  %453 = add nsw i32 %452, %362
  %454 = icmp ult i32 %450, 2
  br i1 %454, label %468, label %455

455:                                              ; preds = %445, %455
  %456 = phi i32 [ %459, %455 ], [ 1, %445 ]
  %457 = phi i32 [ %458, %455 ], [ %450, %445 ]
  %458 = lshr i32 %457, 1
  %459 = add nuw nsw i32 %456, 1
  %460 = icmp ult i32 %457, 4
  br i1 %460, label %461, label %455, !llvm.loop !82

461:                                              ; preds = %455
  %462 = icmp ugt i32 %456, 9
  br i1 %462, label %463, label %468

463:                                              ; preds = %461
  %464 = load ptr, ptr %14, align 8, !tbaa !74
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 40
  store i32 6, ptr %466, align 8, !tbaa !14
  %467 = load ptr, ptr %465, align 8, !tbaa !18
  tail call void %467(ptr noundef nonnull %464) #6
  br label %468

468:                                              ; preds = %463, %461, %445
  %469 = phi i32 [ %459, %463 ], [ %459, %461 ], [ 1, %445 ]
  %470 = shl i32 %449, 4
  %471 = add nsw i32 %469, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [256 x i32], ptr %171, i64 0, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !25
  %475 = getelementptr inbounds [256 x i8], ptr %346, i64 0, i64 %472
  %476 = load i8, ptr %475, align 1, !tbaa !17
  %477 = zext i8 %476 to i32
  %478 = zext i32 %474 to i64
  %479 = icmp eq i8 %476, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %468
  %481 = load ptr, ptr %14, align 8, !tbaa !74
  %482 = load ptr, ptr %481, align 8, !tbaa !6
  %483 = getelementptr inbounds i8, ptr %482, i64 40
  store i32 40, ptr %483, align 8, !tbaa !14
  %484 = load ptr, ptr %482, align 8, !tbaa !18
  tail call void %484(ptr noundef nonnull %481) #6
  br label %485

485:                                              ; preds = %480, %468
  %486 = zext nneg i8 %476 to i64
  %487 = shl nsw i64 -1, %486
  %488 = xor i64 %487, -1
  %489 = and i64 %488, %478
  %490 = add nsw i32 %448, %477
  %491 = sub nsw i32 24, %490
  %492 = zext nneg i32 %491 to i64
  %493 = shl i64 %489, %492
  %494 = or i64 %447, %493
  %495 = icmp sgt i32 %490, 7
  br i1 %495, label %496, label %545

496:                                              ; preds = %485, %540
  %497 = phi i32 [ %543, %540 ], [ %490, %485 ]
  %498 = phi i64 [ %542, %540 ], [ %494, %485 ]
  %499 = lshr i64 %498, 16
  %500 = trunc i64 %499 to i8
  %501 = load ptr, ptr %3, align 8, !tbaa !69
  %502 = getelementptr inbounds i8, ptr %501, i64 1
  store ptr %502, ptr %3, align 8, !tbaa !69
  store i8 %500, ptr %501, align 1, !tbaa !17
  %503 = load i64, ptr %11, align 8, !tbaa !72
  %504 = add i64 %503, -1
  store i64 %504, ptr %11, align 8, !tbaa !72
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %518

506:                                              ; preds = %496
  %507 = load ptr, ptr %14, align 8, !tbaa !74
  %508 = getelementptr inbounds i8, ptr %507, i64 40
  %509 = load ptr, ptr %508, align 8, !tbaa !66
  %510 = getelementptr inbounds i8, ptr %509, i64 24
  %511 = load ptr, ptr %510, align 8, !tbaa !77
  %512 = tail call signext i32 %511(ptr noundef %507) #6
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %722, label %514

514:                                              ; preds = %506
  %515 = load ptr, ptr %509, align 8, !tbaa !67
  store ptr %515, ptr %3, align 8, !tbaa !69
  %516 = getelementptr inbounds i8, ptr %509, i64 8
  %517 = load i64, ptr %516, align 8, !tbaa !71
  store i64 %517, ptr %11, align 8, !tbaa !72
  br label %518

518:                                              ; preds = %514, %496
  %519 = phi i64 [ %517, %514 ], [ %504, %496 ]
  %520 = and i64 %498, 16711680
  %521 = icmp eq i64 %520, 16711680
  br i1 %521, label %522, label %540

522:                                              ; preds = %518
  %523 = load ptr, ptr %3, align 8, !tbaa !69
  %524 = getelementptr inbounds i8, ptr %523, i64 1
  store ptr %524, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %523, align 1, !tbaa !17
  %525 = load i64, ptr %11, align 8, !tbaa !72
  %526 = add i64 %525, -1
  store i64 %526, ptr %11, align 8, !tbaa !72
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %540

528:                                              ; preds = %522
  %529 = load ptr, ptr %14, align 8, !tbaa !74
  %530 = getelementptr inbounds i8, ptr %529, i64 40
  %531 = load ptr, ptr %530, align 8, !tbaa !66
  %532 = getelementptr inbounds i8, ptr %531, i64 24
  %533 = load ptr, ptr %532, align 8, !tbaa !77
  %534 = tail call signext i32 %533(ptr noundef %529) #6
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %722, label %536

536:                                              ; preds = %528
  %537 = load ptr, ptr %531, align 8, !tbaa !67
  store ptr %537, ptr %3, align 8, !tbaa !69
  %538 = getelementptr inbounds i8, ptr %531, i64 8
  %539 = load i64, ptr %538, align 8, !tbaa !71
  store i64 %539, ptr %11, align 8, !tbaa !72
  br label %540

540:                                              ; preds = %536, %522, %518
  %541 = phi i64 [ %539, %536 ], [ %526, %522 ], [ %519, %518 ]
  %542 = shl i64 %498, 8
  %543 = add nsw i32 %497, -8
  %544 = icmp sgt i32 %497, 15
  br i1 %544, label %496, label %545, !llvm.loop !78

545:                                              ; preds = %540, %485
  %546 = phi i64 [ %446, %485 ], [ %541, %540 ]
  %547 = phi i64 [ %494, %485 ], [ %542, %540 ]
  %548 = phi i32 [ %490, %485 ], [ %543, %540 ]
  %549 = zext i32 %453 to i64
  %550 = zext nneg i32 %469 to i64
  %551 = shl nsw i64 -1, %550
  %552 = xor i64 %551, -1
  %553 = and i64 %552, %549
  %554 = add nsw i32 %548, %469
  %555 = sub nsw i32 24, %554
  %556 = zext nneg i32 %555 to i64
  %557 = shl i64 %553, %556
  %558 = or i64 %557, %547
  %559 = icmp sgt i32 %554, 7
  br i1 %559, label %560, label %613

560:                                              ; preds = %545, %604
  %561 = phi i32 [ %607, %604 ], [ %554, %545 ]
  %562 = phi i64 [ %606, %604 ], [ %558, %545 ]
  %563 = lshr i64 %562, 16
  %564 = trunc i64 %563 to i8
  %565 = load ptr, ptr %3, align 8, !tbaa !69
  %566 = getelementptr inbounds i8, ptr %565, i64 1
  store ptr %566, ptr %3, align 8, !tbaa !69
  store i8 %564, ptr %565, align 1, !tbaa !17
  %567 = load i64, ptr %11, align 8, !tbaa !72
  %568 = add i64 %567, -1
  store i64 %568, ptr %11, align 8, !tbaa !72
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %570, label %582

570:                                              ; preds = %560
  %571 = load ptr, ptr %14, align 8, !tbaa !74
  %572 = getelementptr inbounds i8, ptr %571, i64 40
  %573 = load ptr, ptr %572, align 8, !tbaa !66
  %574 = getelementptr inbounds i8, ptr %573, i64 24
  %575 = load ptr, ptr %574, align 8, !tbaa !77
  %576 = tail call signext i32 %575(ptr noundef %571) #6
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %722, label %578

578:                                              ; preds = %570
  %579 = load ptr, ptr %573, align 8, !tbaa !67
  store ptr %579, ptr %3, align 8, !tbaa !69
  %580 = getelementptr inbounds i8, ptr %573, i64 8
  %581 = load i64, ptr %580, align 8, !tbaa !71
  store i64 %581, ptr %11, align 8, !tbaa !72
  br label %582

582:                                              ; preds = %578, %560
  %583 = phi i64 [ %581, %578 ], [ %568, %560 ]
  %584 = and i64 %562, 16711680
  %585 = icmp eq i64 %584, 16711680
  br i1 %585, label %586, label %604

586:                                              ; preds = %582
  %587 = load ptr, ptr %3, align 8, !tbaa !69
  %588 = getelementptr inbounds i8, ptr %587, i64 1
  store ptr %588, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %587, align 1, !tbaa !17
  %589 = load i64, ptr %11, align 8, !tbaa !72
  %590 = add i64 %589, -1
  store i64 %590, ptr %11, align 8, !tbaa !72
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %592, label %604

592:                                              ; preds = %586
  %593 = load ptr, ptr %14, align 8, !tbaa !74
  %594 = getelementptr inbounds i8, ptr %593, i64 40
  %595 = load ptr, ptr %594, align 8, !tbaa !66
  %596 = getelementptr inbounds i8, ptr %595, i64 24
  %597 = load ptr, ptr %596, align 8, !tbaa !77
  %598 = tail call signext i32 %597(ptr noundef %593) #6
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %722, label %600

600:                                              ; preds = %592
  %601 = load ptr, ptr %595, align 8, !tbaa !67
  store ptr %601, ptr %3, align 8, !tbaa !69
  %602 = getelementptr inbounds i8, ptr %595, i64 8
  %603 = load i64, ptr %602, align 8, !tbaa !71
  store i64 %603, ptr %11, align 8, !tbaa !72
  br label %604

604:                                              ; preds = %600, %586, %582
  %605 = phi i64 [ %603, %600 ], [ %590, %586 ], [ %583, %582 ]
  %606 = shl i64 %562, 8
  %607 = add nsw i32 %561, -8
  %608 = icmp sgt i32 %561, 15
  br i1 %608, label %560, label %613, !llvm.loop !78

609:                                              ; preds = %352
  %610 = add nuw nsw i32 %354, 1
  %611 = add nuw nsw i64 %353, 1
  %612 = icmp eq i64 %611, 64
  br i1 %612, label %619, label %352, !llvm.loop !83

613:                                              ; preds = %604, %545
  %614 = phi i64 [ %546, %545 ], [ %605, %604 ]
  %615 = phi i64 [ %558, %545 ], [ %606, %604 ]
  %616 = phi i32 [ %554, %545 ], [ %607, %604 ]
  store i64 %615, ptr %12, align 8, !tbaa !76
  store i32 %616, ptr %149, align 8, !tbaa !75
  %617 = add nuw nsw i64 %353, 1
  %618 = icmp eq i64 %617, 64
  br i1 %618, label %694, label %347, !llvm.loop !83

619:                                              ; preds = %609
  %620 = load i32, ptr %171, align 4, !tbaa !25
  %621 = load i8, ptr %346, align 4, !tbaa !17
  %622 = zext i8 %621 to i32
  %623 = zext i32 %620 to i64
  %624 = icmp eq i8 %621, 0
  br i1 %624, label %625, label %630

625:                                              ; preds = %619
  %626 = load ptr, ptr %14, align 8, !tbaa !74
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  %628 = getelementptr inbounds i8, ptr %627, i64 40
  store i32 40, ptr %628, align 8, !tbaa !14
  %629 = load ptr, ptr %627, align 8, !tbaa !18
  tail call void %629(ptr noundef nonnull %626) #6
  br label %630

630:                                              ; preds = %625, %619
  %631 = zext nneg i8 %621 to i64
  %632 = shl nsw i64 -1, %631
  %633 = xor i64 %632, -1
  %634 = and i64 %633, %623
  %635 = add nsw i32 %350, %622
  %636 = sub nsw i32 24, %635
  %637 = zext nneg i32 %636 to i64
  %638 = shl i64 %634, %637
  %639 = or i64 %349, %638
  %640 = icmp sgt i32 %635, 7
  br i1 %640, label %641, label %690

641:                                              ; preds = %630, %685
  %642 = phi i32 [ %688, %685 ], [ %635, %630 ]
  %643 = phi i64 [ %687, %685 ], [ %639, %630 ]
  %644 = lshr i64 %643, 16
  %645 = trunc i64 %644 to i8
  %646 = load ptr, ptr %3, align 8, !tbaa !69
  %647 = getelementptr inbounds i8, ptr %646, i64 1
  store ptr %647, ptr %3, align 8, !tbaa !69
  store i8 %645, ptr %646, align 1, !tbaa !17
  %648 = load i64, ptr %11, align 8, !tbaa !72
  %649 = add i64 %648, -1
  store i64 %649, ptr %11, align 8, !tbaa !72
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %663

651:                                              ; preds = %641
  %652 = load ptr, ptr %14, align 8, !tbaa !74
  %653 = getelementptr inbounds i8, ptr %652, i64 40
  %654 = load ptr, ptr %653, align 8, !tbaa !66
  %655 = getelementptr inbounds i8, ptr %654, i64 24
  %656 = load ptr, ptr %655, align 8, !tbaa !77
  %657 = tail call signext i32 %656(ptr noundef %652) #6
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %722, label %659

659:                                              ; preds = %651
  %660 = load ptr, ptr %654, align 8, !tbaa !67
  store ptr %660, ptr %3, align 8, !tbaa !69
  %661 = getelementptr inbounds i8, ptr %654, i64 8
  %662 = load i64, ptr %661, align 8, !tbaa !71
  store i64 %662, ptr %11, align 8, !tbaa !72
  br label %663

663:                                              ; preds = %659, %641
  %664 = phi i64 [ %662, %659 ], [ %649, %641 ]
  %665 = and i64 %643, 16711680
  %666 = icmp eq i64 %665, 16711680
  br i1 %666, label %667, label %685

667:                                              ; preds = %663
  %668 = load ptr, ptr %3, align 8, !tbaa !69
  %669 = getelementptr inbounds i8, ptr %668, i64 1
  store ptr %669, ptr %3, align 8, !tbaa !69
  store i8 0, ptr %668, align 1, !tbaa !17
  %670 = load i64, ptr %11, align 8, !tbaa !72
  %671 = add i64 %670, -1
  store i64 %671, ptr %11, align 8, !tbaa !72
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %685

673:                                              ; preds = %667
  %674 = load ptr, ptr %14, align 8, !tbaa !74
  %675 = getelementptr inbounds i8, ptr %674, i64 40
  %676 = load ptr, ptr %675, align 8, !tbaa !66
  %677 = getelementptr inbounds i8, ptr %676, i64 24
  %678 = load ptr, ptr %677, align 8, !tbaa !77
  %679 = tail call signext i32 %678(ptr noundef %674) #6
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %722, label %681

681:                                              ; preds = %673
  %682 = load ptr, ptr %676, align 8, !tbaa !67
  store ptr %682, ptr %3, align 8, !tbaa !69
  %683 = getelementptr inbounds i8, ptr %676, i64 8
  %684 = load i64, ptr %683, align 8, !tbaa !71
  store i64 %684, ptr %11, align 8, !tbaa !72
  br label %685

685:                                              ; preds = %681, %667, %663
  %686 = phi i64 [ %684, %681 ], [ %671, %667 ], [ %664, %663 ]
  %687 = shl i64 %643, 8
  %688 = add nsw i32 %642, -8
  %689 = icmp sgt i32 %642, 15
  br i1 %689, label %641, label %690, !llvm.loop !78

690:                                              ; preds = %685, %630
  %691 = phi i64 [ %348, %630 ], [ %686, %685 ]
  %692 = phi i64 [ %639, %630 ], [ %687, %685 ]
  %693 = phi i32 [ %635, %630 ], [ %688, %685 ]
  store i64 %692, ptr %12, align 8, !tbaa !76
  store i32 %693, ptr %149, align 8, !tbaa !75
  br label %694

694:                                              ; preds = %613, %690
  %695 = phi i64 [ %691, %690 ], [ %614, %613 ]
  %696 = load ptr, ptr %158, align 8, !tbaa !19
  %697 = load i16, ptr %696, align 2, !tbaa !60
  %698 = sext i16 %697 to i32
  store i32 %698, ptr %160, align 4, !tbaa !25
  %699 = add nuw nsw i64 %152, 1
  %700 = load i32, ptr %140, align 8, !tbaa !59
  %701 = sext i32 %700 to i64
  %702 = icmp slt i64 %699, %701
  br i1 %702, label %150, label %703, !llvm.loop !84

703:                                              ; preds = %694, %138
  %704 = phi i64 [ %139, %138 ], [ %695, %694 ]
  %705 = load ptr, ptr %3, align 8, !tbaa !69
  %706 = load ptr, ptr %6, align 8, !tbaa !66
  store ptr %705, ptr %706, align 8, !tbaa !67
  %707 = getelementptr inbounds i8, ptr %706, i64 8
  store i64 %704, ptr %707, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !73
  %708 = load i32, ptr %15, align 8, !tbaa !55
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %722, label %710

710:                                              ; preds = %703
  %711 = getelementptr inbounds i8, ptr %5, i64 56
  %712 = load i32, ptr %711, align 8, !tbaa !56
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %719

714:                                              ; preds = %710
  %715 = getelementptr inbounds i8, ptr %5, i64 60
  %716 = load i32, ptr %715, align 4, !tbaa !57
  %717 = add nsw i32 %716, 1
  %718 = and i32 %717, 7
  store i32 %718, ptr %715, align 4, !tbaa !57
  br label %719

719:                                              ; preds = %714, %710
  %720 = phi i32 [ %708, %714 ], [ %712, %710 ]
  %721 = add i32 %720, -1
  store i32 %721, ptr %711, align 8, !tbaa !56
  br label %722

722:                                              ; preds = %66, %45, %254, %232, %319, %297, %673, %651, %528, %506, %592, %570, %422, %400, %113, %92, %703, %719
  %723 = phi i32 [ 1, %719 ], [ 1, %703 ], [ 0, %92 ], [ 0, %113 ], [ 0, %400 ], [ 0, %422 ], [ 0, %570 ], [ 0, %592 ], [ 0, %506 ], [ 0, %528 ], [ 0, %651 ], [ 0, %673 ], [ 0, %297 ], [ 0, %319 ], [ 0, %232 ], [ 0, %254 ], [ 0, %45 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret i32 %723
}

; Function Attrs: nounwind
define internal void @finish_pass_huff(ptr noundef %0) #0 {
  %2 = alloca [20 x i8], align 4
  %3 = getelementptr inbounds i8, ptr %0, i64 496
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2)
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds i8, ptr %4, i64 24
  %11 = load i64, ptr %10, align 8, !tbaa !29
  %12 = getelementptr inbounds i8, ptr %4, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds i8, ptr %4, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !85
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %1
  %17 = sub nsw i32 17, %13
  %18 = zext nneg i32 %17 to i64
  %19 = shl i64 127, %18
  %20 = or i64 %19, %11
  %21 = add nuw nsw i32 %13, 7
  br label %22

22:                                               ; preds = %61, %16
  %23 = phi i64 [ %9, %16 ], [ %62, %61 ]
  %24 = phi ptr [ %7, %16 ], [ %63, %61 ]
  %25 = phi i32 [ %21, %16 ], [ %65, %61 ]
  %26 = phi i64 [ %20, %16 ], [ %64, %61 ]
  %27 = lshr i64 %26, 16
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %28, ptr %24, align 1, !tbaa !17
  %30 = add i64 %23, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load ptr, ptr %5, align 8, !tbaa !66
  %34 = getelementptr inbounds i8, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = tail call signext i32 %35(ptr noundef %0) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !67
  %40 = getelementptr inbounds i8, ptr %33, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !71
  br label %42

42:                                               ; preds = %38, %22
  %43 = phi i64 [ %41, %38 ], [ %30, %22 ]
  %44 = phi ptr [ %39, %38 ], [ %29, %22 ]
  %45 = and i64 %26, 16711680
  %46 = icmp eq i64 %45, 16711680
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 0, ptr %44, align 1, !tbaa !17
  %49 = add i64 %43, -1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 8, !tbaa !66
  %53 = getelementptr inbounds i8, ptr %52, i64 24
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = tail call signext i32 %54(ptr noundef %0) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %52, align 8, !tbaa !67
  %59 = getelementptr inbounds i8, ptr %52, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !71
  br label %61

61:                                               ; preds = %57, %47, %42
  %62 = phi i64 [ %60, %57 ], [ %49, %47 ], [ %43, %42 ]
  %63 = phi ptr [ %58, %57 ], [ %48, %47 ], [ %44, %42 ]
  %64 = shl i64 %26, 8
  %65 = add nsw i32 %25, -8
  %66 = icmp sgt i32 %25, 15
  br i1 %66, label %22, label %72, !llvm.loop !78

67:                                               ; preds = %32, %51
  %68 = phi ptr [ %48, %51 ], [ %29, %32 ]
  %69 = load ptr, ptr %0, align 8, !tbaa !6
  %70 = getelementptr inbounds i8, ptr %69, i64 40
  store i32 24, ptr %70, align 8, !tbaa !14
  %71 = load ptr, ptr %69, align 8, !tbaa !18
  tail call void %71(ptr noundef nonnull %0) #6
  br label %72

72:                                               ; preds = %61, %1, %67
  %73 = phi ptr [ %68, %67 ], [ %7, %1 ], [ %63, %61 ]
  %74 = phi i64 [ 0, %67 ], [ %9, %1 ], [ %62, %61 ]
  %75 = phi i64 [ %11, %67 ], [ 0, %1 ], [ 0, %61 ]
  %76 = phi i32 [ %13, %67 ], [ 0, %1 ], [ 0, %61 ]
  %77 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %73, ptr %77, align 8, !tbaa !67
  %78 = getelementptr inbounds i8, ptr %77, i64 8
  store i64 %74, ptr %78, align 8, !tbaa !71
  store i64 %75, ptr %10, align 8, !tbaa !29
  store i32 %76, ptr %12, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2)
  ret void
}

declare dso_local ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!6 = !{!7, !8, i64 0}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !11, i64 40}
!15 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!16 = !{!"long", !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!15, !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!7, !8, i64 8}
!21 = !{!22, !8, i64 0}
!22 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = !{!16, !16, i64 0}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = !{!42, !11, i64 276}
!42 = !{!"", !9, i64 0, !9, i64 17, !11, i64 276}
!43 = !{!7, !8, i64 496}
!44 = !{!45, !8, i64 0}
!45 = !{!"", !46, i64 0, !47, i64 24, !11, i64 56, !11, i64 60, !9, i64 64, !9, i64 96, !9, i64 128, !9, i64 160}
!46 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
!47 = !{!"", !16, i64 0, !11, i64 8, !9, i64 12}
!48 = !{!7, !11, i64 324}
!49 = !{!50, !11, i64 20}
!50 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!51 = !{!50, !11, i64 24}
!52 = distinct !{!52, !24}
!53 = !{!45, !16, i64 24}
!54 = !{!45, !11, i64 32}
!55 = !{!7, !11, i64 280}
!56 = !{!45, !11, i64 56}
!57 = !{!45, !11, i64 60}
!58 = distinct !{!58, !24}
!59 = !{!7, !11, i64 368}
!60 = !{!13, !13, i64 0}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = !{!7, !8, i64 40}
!67 = !{!68, !8, i64 0}
!68 = !{!"jpeg_destination_mgr", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!69 = !{!70, !8, i64 0}
!70 = !{!"", !8, i64 0, !16, i64 8, !47, i64 16, !8, i64 48}
!71 = !{!68, !16, i64 8}
!72 = !{!70, !16, i64 8}
!73 = !{i64 0, i64 8, !29, i64 8, i64 4, !25, i64 12, i64 16, !17}
!74 = !{!70, !8, i64 48}
!75 = !{!70, !11, i64 24}
!76 = !{!70, !16, i64 16}
!77 = !{!68, !8, i64 24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = !{i64 0, i64 16, !17}
