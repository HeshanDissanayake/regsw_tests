; ModuleID = 'jctrans.c'
source_filename = "jctrans.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jpeg_write_coefficients(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %4, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %6, %2
  tail call void @jpeg_suppress_tables(ptr noundef nonnull %0, i32 noundef signext 0) #4
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = getelementptr inbounds i8, ptr %13, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  tail call void %15(ptr noundef nonnull %0) #4
  %16 = getelementptr inbounds i8, ptr %0, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = getelementptr inbounds i8, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  tail call void %19(ptr noundef nonnull %0) #4
  %20 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 1, ptr %20, align 8, !tbaa !24
  tail call void @jinit_c_master_control(ptr noundef nonnull %0, i32 noundef signext 1) #4
  %21 = getelementptr inbounds i8, ptr %0, i64 260
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %0, align 8, !tbaa !14
  %26 = getelementptr inbounds i8, ptr %25, i64 40
  store i32 1, ptr %26, align 8, !tbaa !15
  %27 = load ptr, ptr %25, align 8, !tbaa !19
  tail call void %27(ptr noundef nonnull %0) #4
  br label %34

28:                                               ; preds = %12
  %29 = getelementptr inbounds i8, ptr %0, i64 308
  %30 = load i32, ptr %29, align 4, !tbaa !26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @jinit_phuff_encoder(ptr noundef nonnull %0) #4
  br label %34

33:                                               ; preds = %28
  tail call void @jinit_huff_encoder(ptr noundef nonnull %0) #4
  br label %34

34:                                               ; preds = %24, %32, %33
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = tail call ptr %37(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 120) #4
  %39 = getelementptr inbounds i8, ptr %0, i64 456
  store ptr %38, ptr %39, align 8, !tbaa !30
  store ptr @start_pass_coef, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds i8, ptr %38, i64 8
  store ptr @compress_output, ptr %40, align 8, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %38, i64 32
  store ptr %1, ptr %41, align 8, !tbaa !35
  %42 = load ptr, ptr %35, align 8, !tbaa !27
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = tail call ptr %44(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1280) #4
  tail call void @jzero_far(ptr noundef %45, i64 noundef 1280) #4
  %46 = getelementptr inbounds i8, ptr %38, i64 40
  store ptr %45, ptr %46, align 8, !tbaa !37
  %47 = getelementptr inbounds i8, ptr %45, i64 128
  %48 = getelementptr inbounds i8, ptr %38, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !37
  %49 = getelementptr inbounds i8, ptr %45, i64 256
  %50 = getelementptr inbounds i8, ptr %38, i64 56
  store ptr %49, ptr %50, align 8, !tbaa !37
  %51 = getelementptr inbounds i8, ptr %45, i64 384
  %52 = getelementptr inbounds i8, ptr %38, i64 64
  store ptr %51, ptr %52, align 8, !tbaa !37
  %53 = getelementptr inbounds i8, ptr %45, i64 512
  %54 = getelementptr inbounds i8, ptr %38, i64 72
  store ptr %53, ptr %54, align 8, !tbaa !37
  %55 = getelementptr inbounds i8, ptr %45, i64 640
  %56 = getelementptr inbounds i8, ptr %38, i64 80
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds i8, ptr %45, i64 768
  %58 = getelementptr inbounds i8, ptr %38, i64 88
  store ptr %57, ptr %58, align 8, !tbaa !37
  %59 = getelementptr inbounds i8, ptr %45, i64 896
  %60 = getelementptr inbounds i8, ptr %38, i64 96
  store ptr %59, ptr %60, align 8, !tbaa !37
  %61 = getelementptr inbounds i8, ptr %45, i64 1024
  %62 = getelementptr inbounds i8, ptr %38, i64 104
  store ptr %61, ptr %62, align 8, !tbaa !37
  %63 = getelementptr inbounds i8, ptr %45, i64 1152
  %64 = getelementptr inbounds i8, ptr %38, i64 112
  store ptr %63, ptr %64, align 8, !tbaa !37
  tail call void @jinit_marker_writer(ptr noundef nonnull %0) #4
  %65 = load ptr, ptr %35, align 8, !tbaa !27
  %66 = getelementptr inbounds i8, ptr %65, i64 48
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  tail call void %67(ptr noundef nonnull %0) #4
  %68 = getelementptr inbounds i8, ptr %0, i64 464
  %69 = load ptr, ptr %68, align 8, !tbaa !39
  %70 = load ptr, ptr %69, align 8, !tbaa !40
  tail call void %70(ptr noundef nonnull %0) #4
  %71 = getelementptr inbounds i8, ptr %0, i64 304
  store i32 0, ptr %71, align 8, !tbaa !42
  store i32 103, ptr %3, align 4, !tbaa !6
  ret void
}

declare dso_local void @jpeg_suppress_tables(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @jpeg_copy_critical_parameters(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %4, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %1, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %1) #4
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds i8, ptr %1, i64 48
  store i32 %14, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds i8, ptr %0, i64 52
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = getelementptr inbounds i8, ptr %1, i64 52
  store i32 %17, ptr %18, align 4, !tbaa !47
  %19 = getelementptr inbounds i8, ptr %0, i64 56
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds i8, ptr %1, i64 56
  store i32 %20, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds i8, ptr %0, i64 60
  %23 = load i32, ptr %22, align 4, !tbaa !49
  %24 = getelementptr inbounds i8, ptr %1, i64 60
  store i32 %23, ptr %24, align 4, !tbaa !50
  tail call void @jpeg_set_defaults(ptr noundef nonnull %1) #4
  %25 = load i32, ptr %22, align 4, !tbaa !49
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %1, i32 noundef signext %25) #4
  %26 = getelementptr inbounds i8, ptr %0, i64 296
  %27 = load i32, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds i8, ptr %1, i64 72
  store i32 %27, ptr %28, align 8, !tbaa !52
  %29 = getelementptr inbounds i8, ptr %0, i64 392
  %30 = load i32, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds i8, ptr %1, i64 268
  store i32 %30, ptr %31, align 4, !tbaa !54
  %32 = getelementptr inbounds i8, ptr %0, i64 200
  %33 = getelementptr inbounds i8, ptr %1, i64 96
  %34 = load ptr, ptr %32, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %12
  %37 = load ptr, ptr %33, align 8, !tbaa !37
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %1) #4
  store ptr %40, ptr %33, align 8, !tbaa !37
  %41 = load ptr, ptr %32, align 8, !tbaa !37
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ %34, %36 ]
  %44 = phi ptr [ %40, %39 ], [ %37, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %44, ptr noundef nonnull align 4 dereferenceable(128) %43, i64 128, i1 false)
  %45 = load ptr, ptr %33, align 8, !tbaa !37
  %46 = getelementptr inbounds i8, ptr %45, i64 128
  store i32 0, ptr %46, align 4, !tbaa !55
  br label %47

47:                                               ; preds = %12, %42
  %48 = getelementptr inbounds i8, ptr %0, i64 208
  %49 = load ptr, ptr %48, align 8, !tbaa !37
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %1, i64 104
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %1) #4
  store ptr %56, ptr %52, align 8, !tbaa !37
  %57 = load ptr, ptr %48, align 8, !tbaa !37
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi ptr [ %57, %55 ], [ %49, %51 ]
  %60 = phi ptr [ %56, %55 ], [ %53, %51 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %60, ptr noundef nonnull align 4 dereferenceable(128) %59, i64 128, i1 false)
  %61 = load ptr, ptr %52, align 8, !tbaa !37
  %62 = getelementptr inbounds i8, ptr %61, i64 128
  store i32 0, ptr %62, align 4, !tbaa !55
  br label %63

63:                                               ; preds = %58, %47
  %64 = getelementptr inbounds i8, ptr %0, i64 216
  %65 = load ptr, ptr %64, align 8, !tbaa !37
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %1, i64 112
  %69 = load ptr, ptr %68, align 8, !tbaa !37
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %1) #4
  store ptr %72, ptr %68, align 8, !tbaa !37
  %73 = load ptr, ptr %64, align 8, !tbaa !37
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi ptr [ %73, %71 ], [ %65, %67 ]
  %76 = phi ptr [ %72, %71 ], [ %69, %67 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %76, ptr noundef nonnull align 4 dereferenceable(128) %75, i64 128, i1 false)
  %77 = load ptr, ptr %68, align 8, !tbaa !37
  %78 = getelementptr inbounds i8, ptr %77, i64 128
  store i32 0, ptr %78, align 4, !tbaa !55
  br label %79

79:                                               ; preds = %74, %63
  %80 = getelementptr inbounds i8, ptr %0, i64 224
  %81 = load ptr, ptr %80, align 8, !tbaa !37
  %82 = icmp eq ptr %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %1, i64 120
  %85 = load ptr, ptr %84, align 8, !tbaa !37
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %1) #4
  store ptr %88, ptr %84, align 8, !tbaa !37
  %89 = load ptr, ptr %80, align 8, !tbaa !37
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %89, %87 ], [ %81, %83 ]
  %92 = phi ptr [ %88, %87 ], [ %85, %83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %92, ptr noundef nonnull align 4 dereferenceable(128) %91, i64 128, i1 false)
  %93 = load ptr, ptr %84, align 8, !tbaa !37
  %94 = getelementptr inbounds i8, ptr %93, i64 128
  store i32 0, ptr %94, align 4, !tbaa !55
  br label %95

95:                                               ; preds = %90, %79
  %96 = load i32, ptr %19, align 8, !tbaa !48
  %97 = getelementptr inbounds i8, ptr %1, i64 76
  store i32 %96, ptr %97, align 4, !tbaa !57
  %98 = add i32 %96, -11
  %99 = icmp ult i32 %98, -10
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load ptr, ptr %1, align 8, !tbaa !14
  %102 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 26, ptr %102, align 8, !tbaa !15
  %103 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %96, ptr %103, align 4, !tbaa !18
  %104 = load ptr, ptr %1, align 8, !tbaa !14
  %105 = getelementptr inbounds i8, ptr %104, i64 48
  store i32 10, ptr %105, align 4, !tbaa !18
  %106 = load ptr, ptr %1, align 8, !tbaa !14
  %107 = load ptr, ptr %106, align 8, !tbaa !19
  tail call void %107(ptr noundef nonnull %1) #4
  %108 = load i32, ptr %97, align 4, !tbaa !57
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %171

110:                                              ; preds = %95, %100
  %111 = getelementptr inbounds i8, ptr %1, i64 88
  %112 = load ptr, ptr %111, align 8, !tbaa !58
  %113 = getelementptr inbounds i8, ptr %0, i64 304
  %114 = load ptr, ptr %113, align 8, !tbaa !59
  br label %115

115:                                              ; preds = %110, %165
  %116 = phi i32 [ 0, %110 ], [ %166, %165 ]
  %117 = phi ptr [ %114, %110 ], [ %167, %165 ]
  %118 = phi ptr [ %112, %110 ], [ %168, %165 ]
  %119 = load i32, ptr %117, align 8, !tbaa !60
  store i32 %119, ptr %118, align 8, !tbaa !60
  %120 = getelementptr inbounds i8, ptr %117, i64 8
  %121 = load i32, ptr %120, align 8, !tbaa !62
  %122 = getelementptr inbounds i8, ptr %118, i64 8
  store i32 %121, ptr %122, align 8, !tbaa !62
  %123 = getelementptr inbounds i8, ptr %117, i64 12
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = getelementptr inbounds i8, ptr %118, i64 12
  store i32 %124, ptr %125, align 4, !tbaa !63
  %126 = getelementptr inbounds i8, ptr %117, i64 16
  %127 = load i32, ptr %126, align 8, !tbaa !64
  %128 = getelementptr inbounds i8, ptr %118, i64 16
  store i32 %127, ptr %128, align 8, !tbaa !64
  %129 = icmp ugt i32 %127, 3
  br i1 %129, label %135, label %130

130:                                              ; preds = %115
  %131 = zext nneg i32 %127 to i64
  %132 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !37
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %130, %115
  %136 = load ptr, ptr %1, align 8, !tbaa !14
  %137 = getelementptr inbounds i8, ptr %136, i64 40
  store i32 52, ptr %137, align 8, !tbaa !15
  %138 = getelementptr inbounds i8, ptr %136, i64 44
  store i32 %127, ptr %138, align 4, !tbaa !18
  %139 = load ptr, ptr %1, align 8, !tbaa !14
  %140 = load ptr, ptr %139, align 8, !tbaa !19
  tail call void %140(ptr noundef nonnull %1) #4
  %141 = sext i32 %127 to i64
  %142 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !37
  br label %144

144:                                              ; preds = %130, %135
  %145 = phi ptr [ %143, %135 ], [ %133, %130 ]
  %146 = getelementptr inbounds i8, ptr %117, i64 80
  %147 = load ptr, ptr %146, align 8, !tbaa !65
  %148 = icmp eq ptr %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %144, %162
  %150 = phi i64 [ %163, %162 ], [ 0, %144 ]
  %151 = getelementptr inbounds [64 x i16], ptr %147, i64 0, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !66
  %153 = getelementptr inbounds [64 x i16], ptr %145, i64 0, i64 %150
  %154 = load i16, ptr %153, align 2, !tbaa !66
  %155 = icmp eq i16 %152, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = load ptr, ptr %1, align 8, !tbaa !14
  %158 = getelementptr inbounds i8, ptr %157, i64 40
  store i32 44, ptr %158, align 8, !tbaa !15
  %159 = getelementptr inbounds i8, ptr %157, i64 44
  store i32 %127, ptr %159, align 4, !tbaa !18
  %160 = load ptr, ptr %1, align 8, !tbaa !14
  %161 = load ptr, ptr %160, align 8, !tbaa !19
  tail call void %161(ptr noundef nonnull %1) #4
  br label %162

162:                                              ; preds = %149, %156
  %163 = add nuw nsw i64 %150, 1
  %164 = icmp eq i64 %163, 64
  br i1 %164, label %165, label %149

165:                                              ; preds = %162, %144
  %166 = add nuw nsw i32 %116, 1
  %167 = getelementptr inbounds i8, ptr %117, i64 96
  %168 = getelementptr inbounds i8, ptr %118, i64 96
  %169 = load i32, ptr %97, align 4, !tbaa !57
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %115, label %171

171:                                              ; preds = %165, %100
  %172 = getelementptr inbounds i8, ptr %0, i64 372
  %173 = load i32, ptr %172, align 4, !tbaa !67
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %194, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, ptr %0, i64 376
  %177 = load i8, ptr %176, align 8, !tbaa !68
  %178 = icmp eq i8 %177, 1
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %1, i64 292
  store i8 1, ptr %180, align 4, !tbaa !69
  %181 = getelementptr inbounds i8, ptr %0, i64 377
  %182 = load i8, ptr %181, align 1, !tbaa !70
  %183 = getelementptr inbounds i8, ptr %1, i64 293
  store i8 %182, ptr %183, align 1, !tbaa !71
  br label %184

184:                                              ; preds = %179, %175
  %185 = getelementptr inbounds i8, ptr %0, i64 378
  %186 = load i8, ptr %185, align 2, !tbaa !72
  %187 = getelementptr inbounds i8, ptr %1, i64 294
  store i8 %186, ptr %187, align 2, !tbaa !73
  %188 = getelementptr inbounds i8, ptr %0, i64 380
  %189 = load i16, ptr %188, align 4, !tbaa !74
  %190 = getelementptr inbounds i8, ptr %1, i64 296
  store i16 %189, ptr %190, align 8, !tbaa !75
  %191 = getelementptr inbounds i8, ptr %0, i64 382
  %192 = load i16, ptr %191, align 2, !tbaa !76
  %193 = getelementptr inbounds i8, ptr %1, i64 298
  store i16 %192, ptr %193, align 2, !tbaa !77
  br label %194

194:                                              ; preds = %184, %171
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare dso_local void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

declare dso_local void @jpeg_set_colorspace(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare dso_local void @jinit_c_master_control(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @jinit_phuff_encoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_huff_encoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_marker_writer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define internal void @start_pass_coef(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 456
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 4, ptr %8, align 8, !tbaa !15
  %9 = load ptr, ptr %7, align 8, !tbaa !19
  tail call void %9(ptr noundef nonnull %0) #4
  %10 = load ptr, ptr %3, align 8, !tbaa !30
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 0, ptr %13, align 8, !tbaa !78
  %14 = getelementptr inbounds i8, ptr %0, i64 324
  %15 = load i32, ptr %14, align 4, !tbaa !79
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %12, i64 28
  store i32 1, ptr %18, align 4, !tbaa !80
  br label %35

19:                                               ; preds = %11
  %20 = getelementptr inbounds i8, ptr %12, i64 16
  %21 = load i32, ptr %20, align 8, !tbaa !78
  %22 = getelementptr inbounds i8, ptr %0, i64 320
  %23 = load i32, ptr %22, align 8, !tbaa !81
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %21, %24
  %26 = getelementptr inbounds i8, ptr %0, i64 328
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = getelementptr inbounds i8, ptr %12, i64 28
  br i1 %25, label %29, label %32

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, ptr %27, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !63
  store i32 %31, ptr %28, align 4, !tbaa !80
  br label %35

32:                                               ; preds = %19
  %33 = getelementptr inbounds i8, ptr %27, i64 72
  %34 = load i32, ptr %33, align 8, !tbaa !82
  store i32 %34, ptr %28, align 4, !tbaa !80
  br label %35

35:                                               ; preds = %17, %29, %32
  %36 = getelementptr inbounds i8, ptr %12, i64 20
  store i32 0, ptr %36, align 4, !tbaa !83
  %37 = getelementptr inbounds i8, ptr %12, i64 24
  store i32 0, ptr %37, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [4 x ptr], align 8
  %4 = alloca [10 x ptr], align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 456
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %0, i64 360
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 320
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = add i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #4
  %13 = getelementptr inbounds i8, ptr %0, i64 324
  %14 = load i32, ptr %13, align 4, !tbaa !79
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %0, i64 328
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = getelementptr inbounds i8, ptr %6, i64 32
  %20 = getelementptr inbounds i8, ptr %6, i64 16
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %40, %21 ]
  %23 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = load ptr, ptr %18, align 8, !tbaa !27
  %26 = getelementptr inbounds i8, ptr %25, i64 64
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %24, i64 4
  %30 = load i32, ptr %29, align 4, !tbaa !87
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %28, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = load i32, ptr %20, align 8, !tbaa !78
  %35 = getelementptr inbounds i8, ptr %24, i64 12
  %36 = load i32, ptr %35, align 4, !tbaa !63
  %37 = mul i32 %36, %34
  %38 = tail call ptr %27(ptr noundef nonnull %0, ptr noundef %33, i32 noundef signext %37, i32 noundef signext %36, i32 noundef signext 0) #4
  %39 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %22
  store ptr %38, ptr %39, align 8, !tbaa !37
  %40 = add nuw nsw i64 %22, 1
  %41 = load i32, ptr %13, align 4, !tbaa !79
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %21, label %44

44:                                               ; preds = %21, %2
  %45 = phi i32 [ %14, %2 ], [ %41, %21 ]
  %46 = getelementptr inbounds i8, ptr %6, i64 24
  %47 = load i32, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds i8, ptr %6, i64 28
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %198

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %6, i64 20
  %53 = getelementptr inbounds i8, ptr %0, i64 328
  %54 = getelementptr inbounds i8, ptr %6, i64 16
  %55 = getelementptr inbounds i8, ptr %6, i64 40
  %56 = getelementptr inbounds i8, ptr %0, i64 496
  %57 = sext i32 %47 to i64
  %58 = load i32, ptr %52, align 4, !tbaa !83
  %59 = load i32, ptr %7, align 8, !tbaa !85
  br label %60

60:                                               ; preds = %51, %190
  %61 = phi i32 [ %49, %51 ], [ %191, %190 ]
  %62 = phi i32 [ %59, %51 ], [ %192, %190 ]
  %63 = phi i32 [ %58, %51 ], [ 0, %190 ]
  %64 = phi i64 [ %57, %51 ], [ %193, %190 ]
  %65 = icmp ult i32 %63, %62
  br i1 %65, label %66, label %190

66:                                               ; preds = %60, %184
  %67 = phi i32 [ %185, %184 ], [ %63, %60 ]
  %68 = load i32, ptr %13, align 4, !tbaa !79
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %176

70:                                               ; preds = %66
  %71 = icmp ult i32 %67, %9
  %72 = zext nneg i32 %68 to i64
  br label %73

73:                                               ; preds = %70, %172
  %74 = phi i64 [ 0, %70 ], [ %174, %172 ]
  %75 = phi i32 [ 0, %70 ], [ %173, %172 ]
  %76 = getelementptr inbounds [4 x ptr], ptr %53, i64 0, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !37
  %78 = getelementptr inbounds i8, ptr %77, i64 52
  %79 = load i32, ptr %78, align 4, !tbaa !88
  %80 = mul i32 %79, %67
  br i1 %71, label %84, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, ptr %77, i64 68
  %83 = load i32, ptr %82, align 4, !tbaa !89
  br label %84

84:                                               ; preds = %73, %81
  %85 = phi i32 [ %83, %81 ], [ %79, %73 ]
  %86 = freeze i32 %85
  %87 = getelementptr inbounds i8, ptr %77, i64 56
  %88 = load i32, ptr %87, align 8, !tbaa !90
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %172

90:                                               ; preds = %84
  %91 = load i32, ptr %54, align 8, !tbaa !78
  %92 = icmp ult i32 %91, %12
  %93 = getelementptr inbounds i8, ptr %77, i64 72
  %94 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %74
  %95 = zext i32 %80 to i64
  %96 = icmp sgt i32 %86, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %90
  %98 = zext nneg i32 %88 to i64
  br label %99

99:                                               ; preds = %97, %123
  %100 = phi i64 [ 0, %97 ], [ %125, %123 ]
  %101 = phi i32 [ %75, %97 ], [ %124, %123 ]
  %102 = add nsw i64 %100, %64
  br i1 %92, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %93, align 8, !tbaa !82
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99, %103
  %108 = load ptr, ptr %94, align 8, !tbaa !37
  %109 = getelementptr inbounds ptr, ptr %108, i64 %102
  %110 = load ptr, ptr %109, align 8, !tbaa !37
  %111 = getelementptr inbounds [64 x i16], ptr %110, i64 %95
  %112 = sext i32 %101 to i64
  br label %140

113:                                              ; preds = %140
  %114 = trunc nsw i64 %145 to i32
  br label %115

115:                                              ; preds = %113, %103
  %116 = phi i32 [ %101, %103 ], [ %114, %113 ]
  %117 = phi i32 [ 0, %103 ], [ %86, %113 ]
  %118 = icmp slt i32 %117, %79
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = sext i32 %116 to i64
  br label %127

121:                                              ; preds = %127
  %122 = trunc nsw i64 %137 to i32
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i32 [ %116, %115 ], [ %122, %121 ]
  %125 = add nuw nsw i64 %100, 1
  %126 = icmp eq i64 %125, %98
  br i1 %126, label %172, label %99

127:                                              ; preds = %119, %127
  %128 = phi i64 [ %120, %119 ], [ %137, %127 ]
  %129 = phi i32 [ %117, %119 ], [ %138, %127 ]
  %130 = getelementptr inbounds [10 x ptr], ptr %55, i64 0, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !37
  %132 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %128
  store ptr %131, ptr %132, align 8, !tbaa !37
  %133 = add nsw i64 %128, -1
  %134 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !37
  %136 = load i16, ptr %135, align 2, !tbaa !66
  store i16 %136, ptr %131, align 2, !tbaa !66
  %137 = add nsw i64 %128, 1
  %138 = add nuw nsw i32 %129, 1
  %139 = icmp eq i32 %138, %79
  br i1 %139, label %121, label %127

140:                                              ; preds = %107, %140
  %141 = phi i64 [ %112, %107 ], [ %145, %140 ]
  %142 = phi ptr [ %111, %107 ], [ %144, %140 ]
  %143 = phi i32 [ 0, %107 ], [ %147, %140 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 128
  %145 = add nsw i64 %141, 1
  %146 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %141
  store ptr %142, ptr %146, align 8, !tbaa !37
  %147 = add nuw nsw i32 %143, 1
  %148 = icmp eq i32 %147, %86
  br i1 %148, label %113, label %140

149:                                              ; preds = %90
  %150 = icmp sgt i32 %79, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %149, %168
  %152 = phi i32 [ %170, %168 ], [ 0, %149 ]
  %153 = phi i32 [ %169, %168 ], [ %75, %149 ]
  %154 = sext i32 %153 to i64
  br label %155

155:                                              ; preds = %151, %155
  %156 = phi i64 [ %154, %151 ], [ %165, %155 ]
  %157 = phi i32 [ 0, %151 ], [ %166, %155 ]
  %158 = getelementptr inbounds [10 x ptr], ptr %55, i64 0, i64 %156
  %159 = load ptr, ptr %158, align 8, !tbaa !37
  %160 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %156
  store ptr %159, ptr %160, align 8, !tbaa !37
  %161 = add nsw i64 %156, -1
  %162 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !37
  %164 = load i16, ptr %163, align 2, !tbaa !66
  store i16 %164, ptr %159, align 2, !tbaa !66
  %165 = add nsw i64 %156, 1
  %166 = add nuw nsw i32 %157, 1
  %167 = icmp eq i32 %166, %79
  br i1 %167, label %168, label %155

168:                                              ; preds = %155
  %169 = trunc nsw i64 %165 to i32
  %170 = add nuw nsw i32 %152, 1
  %171 = icmp eq i32 %170, %88
  br i1 %171, label %172, label %151

172:                                              ; preds = %168, %123, %149, %84
  %173 = phi i32 [ %75, %84 ], [ %75, %149 ], [ %124, %123 ], [ %169, %168 ]
  %174 = add nuw nsw i64 %74, 1
  %175 = icmp eq i64 %174, %72
  br i1 %175, label %176, label %73

176:                                              ; preds = %172, %66
  %177 = load ptr, ptr %56, align 8, !tbaa !91
  %178 = getelementptr inbounds i8, ptr %177, i64 8
  %179 = load ptr, ptr %178, align 8, !tbaa !92
  %180 = call signext i32 %179(ptr noundef nonnull %0, ptr noundef nonnull %4) #4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = trunc nsw i64 %64 to i32
  store i32 %183, ptr %46, align 8, !tbaa !84
  store i32 %67, ptr %52, align 4, !tbaa !83
  br label %225

184:                                              ; preds = %176
  %185 = add nuw i32 %67, 1
  %186 = load i32, ptr %7, align 8, !tbaa !85
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %66, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %48, align 4, !tbaa !80
  br label %190

190:                                              ; preds = %188, %60
  %191 = phi i32 [ %189, %188 ], [ %61, %60 ]
  %192 = phi i32 [ %186, %188 ], [ %62, %60 ]
  store i32 0, ptr %52, align 4, !tbaa !83
  %193 = add nsw i64 %64, 1
  %194 = sext i32 %191 to i64
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %60, label %196

196:                                              ; preds = %190
  %197 = load i32, ptr %13, align 4, !tbaa !79
  br label %198

198:                                              ; preds = %196, %44
  %199 = phi i32 [ %197, %196 ], [ %45, %44 ]
  %200 = getelementptr inbounds i8, ptr %6, i64 16
  %201 = load i32, ptr %200, align 8, !tbaa !78
  %202 = add i32 %201, 1
  store i32 %202, ptr %200, align 8, !tbaa !78
  %203 = load ptr, ptr %5, align 8, !tbaa !30
  %204 = icmp sgt i32 %199, 1
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = getelementptr inbounds i8, ptr %203, i64 28
  store i32 1, ptr %206, align 4, !tbaa !80
  br label %222

207:                                              ; preds = %198
  %208 = getelementptr inbounds i8, ptr %203, i64 16
  %209 = load i32, ptr %208, align 8, !tbaa !78
  %210 = load i32, ptr %10, align 8, !tbaa !81
  %211 = add i32 %210, -1
  %212 = icmp ult i32 %209, %211
  %213 = getelementptr inbounds i8, ptr %0, i64 328
  %214 = load ptr, ptr %213, align 8, !tbaa !37
  %215 = getelementptr inbounds i8, ptr %203, i64 28
  br i1 %212, label %216, label %219

216:                                              ; preds = %207
  %217 = getelementptr inbounds i8, ptr %214, i64 12
  %218 = load i32, ptr %217, align 4, !tbaa !63
  store i32 %218, ptr %215, align 4, !tbaa !80
  br label %222

219:                                              ; preds = %207
  %220 = getelementptr inbounds i8, ptr %214, i64 72
  %221 = load i32, ptr %220, align 8, !tbaa !82
  store i32 %221, ptr %215, align 4, !tbaa !80
  br label %222

222:                                              ; preds = %205, %216, %219
  %223 = getelementptr inbounds i8, ptr %203, i64 20
  store i32 0, ptr %223, align 4, !tbaa !83
  %224 = getelementptr inbounds i8, ptr %203, i64 24
  store i32 0, ptr %224, align 8, !tbaa !84
  br label %225

225:                                              ; preds = %222, %182
  %226 = phi i32 [ 0, %182 ], [ 1, %222 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret i32 %226
}

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !17, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!16, !8, i64 0}
!20 = !{!16, !8, i64 32}
!21 = !{!7, !8, i64 40}
!22 = !{!23, !8, i64 16}
!23 = !{!"jpeg_destination_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!24 = !{!7, !11, i64 56}
!25 = !{!7, !11, i64 260}
!26 = !{!7, !11, i64 308}
!27 = !{!7, !8, i64 8}
!28 = !{!29, !8, i64 0}
!29 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !17, i64 88, !17, i64 96}
!30 = !{!7, !8, i64 456}
!31 = !{!32, !8, i64 0}
!32 = !{!"", !33, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !8, i64 32, !9, i64 40}
!33 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!34 = !{!32, !8, i64 8}
!35 = !{!32, !8, i64 32}
!36 = !{!29, !8, i64 8}
!37 = !{!8, !8, i64 0}
!38 = !{!29, !8, i64 48}
!39 = !{!7, !8, i64 464}
!40 = !{!41, !8, i64 0}
!41 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!42 = !{!7, !11, i64 304}
!43 = !{!44, !11, i64 48}
!44 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!45 = !{!7, !11, i64 48}
!46 = !{!44, !11, i64 52}
!47 = !{!7, !11, i64 52}
!48 = !{!44, !11, i64 56}
!49 = !{!44, !11, i64 60}
!50 = !{!7, !11, i64 60}
!51 = !{!44, !11, i64 296}
!52 = !{!7, !11, i64 72}
!53 = !{!44, !11, i64 392}
!54 = !{!7, !11, i64 268}
!55 = !{!56, !11, i64 128}
!56 = !{!"", !9, i64 0, !11, i64 128}
!57 = !{!7, !11, i64 76}
!58 = !{!7, !8, i64 88}
!59 = !{!44, !8, i64 304}
!60 = !{!61, !11, i64 0}
!61 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!62 = !{!61, !11, i64 8}
!63 = !{!61, !11, i64 12}
!64 = !{!61, !11, i64 16}
!65 = !{!61, !8, i64 80}
!66 = !{!13, !13, i64 0}
!67 = !{!44, !11, i64 372}
!68 = !{!44, !9, i64 376}
!69 = !{!7, !9, i64 292}
!70 = !{!44, !9, i64 377}
!71 = !{!7, !9, i64 293}
!72 = !{!44, !9, i64 378}
!73 = !{!7, !9, i64 294}
!74 = !{!44, !13, i64 380}
!75 = !{!7, !13, i64 296}
!76 = !{!44, !13, i64 382}
!77 = !{!7, !13, i64 298}
!78 = !{!32, !11, i64 16}
!79 = !{!7, !11, i64 324}
!80 = !{!32, !11, i64 28}
!81 = !{!7, !11, i64 320}
!82 = !{!61, !11, i64 72}
!83 = !{!32, !11, i64 20}
!84 = !{!32, !11, i64 24}
!85 = !{!7, !11, i64 360}
!86 = !{!29, !8, i64 64}
!87 = !{!61, !11, i64 4}
!88 = !{!61, !11, i64 52}
!89 = !{!61, !11, i64 68}
!90 = !{!61, !11, i64 56}
!91 = !{!7, !8, i64 496}
!92 = !{!93, !8, i64 8}
!93 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
