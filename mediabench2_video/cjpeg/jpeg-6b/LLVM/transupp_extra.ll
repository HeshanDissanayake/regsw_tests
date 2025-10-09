; ModuleID = 'transupp.c'
source_filename = "transupp.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind
define dso_local void @jtransform_request_workspace(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 60
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 56
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %1, i64 12
  store i32 1, ptr %15, align 4, !tbaa !17
  br label %22

16:                                               ; preds = %10, %6, %2
  %17 = getelementptr inbounds i8, ptr %0, i64 56
  %18 = load i32, ptr %17, align 8, !tbaa !16
  %19 = getelementptr inbounds i8, ptr %1, i64 12
  store i32 %18, ptr %19, align 4, !tbaa !17
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i64 [ %21, %16 ], [ 8, %14 ]
  %24 = load i32, ptr %1, align 8, !tbaa !18
  switch i32 %24, label %105 [
    i32 7, label %65
    i32 5, label %65
    i32 2, label %25
    i32 6, label %25
    i32 3, label %65
    i32 4, label %65
  ]

25:                                               ; preds = %22, %22
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds i8, ptr %1, i64 12
  %30 = tail call ptr %28(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %23) #4
  %31 = load i32, ptr %29, align 4, !tbaa !17
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %25
  %34 = getelementptr inbounds i8, ptr %0, i64 304
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %61, %35 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 %36
  %39 = load ptr, ptr %26, align 8, !tbaa !19
  %40 = getelementptr inbounds i8, ptr %39, i64 40
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = getelementptr inbounds i8, ptr %38, i64 28
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %38, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !27
  %47 = sext i32 %46 to i64
  %48 = tail call i64 @jround_up(i64 noundef %44, i64 noundef %47) #4
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !28
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %38, i64 12
  %54 = load i32, ptr %53, align 4, !tbaa !29
  %55 = sext i32 %54 to i64
  %56 = tail call i64 @jround_up(i64 noundef %52, i64 noundef %55) #4
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %53, align 4, !tbaa !29
  %59 = tail call ptr %41(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %49, i32 noundef signext %57, i32 noundef signext %58) #4
  %60 = getelementptr inbounds ptr, ptr %30, i64 %36
  store ptr %59, ptr %60, align 8, !tbaa !30
  %61 = add nuw nsw i64 %36, 1
  %62 = load i32, ptr %29, align 4, !tbaa !17
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %35, label %105

65:                                               ; preds = %22, %22, %22, %22
  %66 = getelementptr inbounds i8, ptr %0, i64 8
  %67 = load ptr, ptr %66, align 8, !tbaa !19
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds i8, ptr %1, i64 12
  %70 = tail call ptr %68(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %23) #4
  %71 = load i32, ptr %69, align 4, !tbaa !17
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, ptr %0, i64 304
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ 0, %73 ], [ %101, %75 ]
  %77 = load ptr, ptr %74, align 8, !tbaa !23
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i64 %76
  %79 = load ptr, ptr %66, align 8, !tbaa !19
  %80 = getelementptr inbounds i8, ptr %79, i64 40
  %81 = load ptr, ptr %80, align 8, !tbaa !24
  %82 = getelementptr inbounds i8, ptr %78, i64 32
  %83 = load i32, ptr %82, align 8, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %78, i64 12
  %86 = load i32, ptr %85, align 4, !tbaa !29
  %87 = sext i32 %86 to i64
  %88 = tail call i64 @jround_up(i64 noundef %84, i64 noundef %87) #4
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds i8, ptr %78, i64 28
  %91 = load i32, ptr %90, align 4, !tbaa !25
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %78, i64 8
  %94 = load i32, ptr %93, align 8, !tbaa !27
  %95 = sext i32 %94 to i64
  %96 = tail call i64 @jround_up(i64 noundef %92, i64 noundef %95) #4
  %97 = trunc i64 %96 to i32
  %98 = load i32, ptr %93, align 8, !tbaa !27
  %99 = tail call ptr %81(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %89, i32 noundef signext %97, i32 noundef signext %98) #4
  %100 = getelementptr inbounds ptr, ptr %70, i64 %76
  store ptr %99, ptr %100, align 8, !tbaa !30
  %101 = add nuw nsw i64 %76, 1
  %102 = load i32, ptr %69, align 4, !tbaa !17
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %75, label %105

105:                                              ; preds = %35, %75, %25, %65, %22
  %106 = phi ptr [ null, %22 ], [ %70, %65 ], [ %30, %25 ], [ %70, %75 ], [ %30, %35 ]
  %107 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %106, ptr %107, align 8, !tbaa !31
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local ptr @jtransform_adjust_parameters(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %1, i64 80
  %10 = load i32, ptr %9, align 8, !tbaa !32
  switch i32 %10, label %26 [
    i32 3, label %11
    i32 1, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %1, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %19, label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, ptr %1, i64 76
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds i8, ptr %1, i64 88
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds i8, ptr %21, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !36
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %1, i32 noundef signext 1) #4
  %24 = load ptr, ptr %20, align 8, !tbaa !35
  %25 = getelementptr inbounds i8, ptr %24, i64 16
  store i32 %23, ptr %25, align 8, !tbaa !36
  br label %30

26:                                               ; preds = %8, %11, %15
  %27 = load ptr, ptr %1, align 8, !tbaa !37
  %28 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 27, ptr %28, align 8, !tbaa !38
  %29 = load ptr, ptr %27, align 8, !tbaa !40
  tail call void %29(ptr noundef nonnull %1) #4
  br label %30

30:                                               ; preds = %19, %26, %4
  %31 = load i32, ptr %3, align 8, !tbaa !18
  switch i32 %31, label %267 [
    i32 7, label %236
    i32 1, label %32
    i32 2, label %63
    i32 3, label %94
    i32 4, label %95
    i32 5, label %150
    i32 6, label %181
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %3, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !41
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %267, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %1, i64 76
  %38 = load i32, ptr %37, align 4, !tbaa !34
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %1, i64 88
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i64 [ 0, %40 ], [ %50, %44 ]
  %46 = phi i32 [ 1, %40 ], [ %49, %44 ]
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 %45, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = tail call i32 @llvm.smax.i32(i32 %46, i32 %48)
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %43
  br i1 %51, label %52, label %44

52:                                               ; preds = %44
  %53 = shl nsw i32 %49, 3
  br label %54

54:                                               ; preds = %52, %36
  %55 = phi i32 [ 8, %36 ], [ %53, %52 ]
  %56 = getelementptr inbounds i8, ptr %1, i64 48
  %57 = load i32, ptr %56, align 8, !tbaa !42
  %58 = freeze i32 %57
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %267, label %60

60:                                               ; preds = %54
  %61 = urem i32 %58, %55
  %62 = sub nuw i32 %58, %61
  store i32 %62, ptr %56, align 8, !tbaa !42
  br label %267

63:                                               ; preds = %30
  %64 = getelementptr inbounds i8, ptr %3, i64 4
  %65 = load i32, ptr %64, align 4, !tbaa !41
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %267, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %1, i64 76
  %69 = load i32, ptr %68, align 4, !tbaa !34
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %1, i64 88
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = zext nneg i32 %69 to i64
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i64 [ 0, %71 ], [ %81, %75 ]
  %77 = phi i32 [ 1, %71 ], [ %80, %75 ]
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i64 %76, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !29
  %80 = tail call i32 @llvm.smax.i32(i32 %77, i32 %79)
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %74
  br i1 %82, label %83, label %75

83:                                               ; preds = %75
  %84 = shl nsw i32 %80, 3
  br label %85

85:                                               ; preds = %83, %67
  %86 = phi i32 [ 8, %67 ], [ %84, %83 ]
  %87 = getelementptr inbounds i8, ptr %1, i64 52
  %88 = load i32, ptr %87, align 4, !tbaa !43
  %89 = freeze i32 %88
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %267, label %91

91:                                               ; preds = %85
  %92 = urem i32 %89, %86
  %93 = sub nuw i32 %89, %92
  store i32 %93, ptr %87, align 4, !tbaa !43
  br label %267

94:                                               ; preds = %30
  tail call fastcc void @transpose_critical_parameters(ptr noundef %1)
  br label %267

95:                                               ; preds = %30
  tail call fastcc void @transpose_critical_parameters(ptr noundef %1)
  %96 = getelementptr inbounds i8, ptr %3, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !41
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %267, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %1, i64 76
  %101 = load i32, ptr %100, align 4, !tbaa !34
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, ptr %1, i64 88
  %105 = load ptr, ptr %104, align 8, !tbaa !35
  %106 = zext nneg i32 %101 to i64
  br label %107

107:                                              ; preds = %107, %103
  %108 = phi i64 [ 0, %103 ], [ %113, %107 ]
  %109 = phi i32 [ 1, %103 ], [ %112, %107 ]
  %110 = getelementptr inbounds %struct.jpeg_component_info, ptr %105, i64 %108, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !27
  %112 = tail call i32 @llvm.smax.i32(i32 %109, i32 %111)
  %113 = add nuw nsw i64 %108, 1
  %114 = icmp eq i64 %113, %106
  br i1 %114, label %115, label %107

115:                                              ; preds = %107
  %116 = shl nsw i32 %112, 3
  br label %117

117:                                              ; preds = %115, %99
  %118 = phi i32 [ 8, %99 ], [ %116, %115 ]
  %119 = getelementptr inbounds i8, ptr %1, i64 48
  %120 = load i32, ptr %119, align 8, !tbaa !42
  %121 = freeze i32 %120
  %122 = icmp ugt i32 %118, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = urem i32 %121, %118
  %125 = sub nuw i32 %121, %124
  store i32 %125, ptr %119, align 8, !tbaa !42
  br label %126

126:                                              ; preds = %117, %123
  br i1 %102, label %127, label %141

127:                                              ; preds = %126
  %128 = getelementptr inbounds i8, ptr %1, i64 88
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = zext nneg i32 %101 to i64
  br label %131

131:                                              ; preds = %131, %127
  %132 = phi i64 [ 0, %127 ], [ %137, %131 ]
  %133 = phi i32 [ 1, %127 ], [ %136, %131 ]
  %134 = getelementptr inbounds %struct.jpeg_component_info, ptr %129, i64 %132, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !29
  %136 = tail call i32 @llvm.smax.i32(i32 %133, i32 %135)
  %137 = add nuw nsw i64 %132, 1
  %138 = icmp eq i64 %137, %130
  br i1 %138, label %139, label %131

139:                                              ; preds = %131
  %140 = shl nsw i32 %136, 3
  br label %141

141:                                              ; preds = %139, %126
  %142 = phi i32 [ 8, %126 ], [ %140, %139 ]
  %143 = getelementptr inbounds i8, ptr %1, i64 52
  %144 = load i32, ptr %143, align 4, !tbaa !43
  %145 = freeze i32 %144
  %146 = icmp ugt i32 %142, %145
  br i1 %146, label %267, label %147

147:                                              ; preds = %141
  %148 = urem i32 %145, %142
  %149 = sub nuw i32 %145, %148
  store i32 %149, ptr %143, align 4, !tbaa !43
  br label %267

150:                                              ; preds = %30
  tail call fastcc void @transpose_critical_parameters(ptr noundef %1)
  %151 = getelementptr inbounds i8, ptr %3, i64 4
  %152 = load i32, ptr %151, align 4, !tbaa !41
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %267, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds i8, ptr %1, i64 76
  %156 = load i32, ptr %155, align 4, !tbaa !34
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, ptr %1, i64 88
  %160 = load ptr, ptr %159, align 8, !tbaa !35
  %161 = zext nneg i32 %156 to i64
  br label %162

162:                                              ; preds = %162, %158
  %163 = phi i64 [ 0, %158 ], [ %168, %162 ]
  %164 = phi i32 [ 1, %158 ], [ %167, %162 ]
  %165 = getelementptr inbounds %struct.jpeg_component_info, ptr %160, i64 %163, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !27
  %167 = tail call i32 @llvm.smax.i32(i32 %164, i32 %166)
  %168 = add nuw nsw i64 %163, 1
  %169 = icmp eq i64 %168, %161
  br i1 %169, label %170, label %162

170:                                              ; preds = %162
  %171 = shl nsw i32 %167, 3
  br label %172

172:                                              ; preds = %170, %154
  %173 = phi i32 [ 8, %154 ], [ %171, %170 ]
  %174 = getelementptr inbounds i8, ptr %1, i64 48
  %175 = load i32, ptr %174, align 8, !tbaa !42
  %176 = freeze i32 %175
  %177 = icmp ugt i32 %173, %176
  br i1 %177, label %267, label %178

178:                                              ; preds = %172
  %179 = urem i32 %176, %173
  %180 = sub nuw i32 %176, %179
  store i32 %180, ptr %174, align 8, !tbaa !42
  br label %267

181:                                              ; preds = %30
  %182 = getelementptr inbounds i8, ptr %3, i64 4
  %183 = load i32, ptr %182, align 4, !tbaa !41
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %267, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %1, i64 76
  %187 = load i32, ptr %186, align 4, !tbaa !34
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = getelementptr inbounds i8, ptr %1, i64 88
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  %192 = zext nneg i32 %187 to i64
  br label %193

193:                                              ; preds = %193, %189
  %194 = phi i64 [ 0, %189 ], [ %199, %193 ]
  %195 = phi i32 [ 1, %189 ], [ %198, %193 ]
  %196 = getelementptr inbounds %struct.jpeg_component_info, ptr %191, i64 %194, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !27
  %198 = tail call i32 @llvm.smax.i32(i32 %195, i32 %197)
  %199 = add nuw nsw i64 %194, 1
  %200 = icmp eq i64 %199, %192
  br i1 %200, label %201, label %193

201:                                              ; preds = %193
  %202 = shl nsw i32 %198, 3
  br label %203

203:                                              ; preds = %201, %185
  %204 = phi i32 [ 8, %185 ], [ %202, %201 ]
  %205 = getelementptr inbounds i8, ptr %1, i64 48
  %206 = load i32, ptr %205, align 8, !tbaa !42
  %207 = freeze i32 %206
  %208 = icmp ugt i32 %204, %207
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = urem i32 %207, %204
  %211 = sub nuw i32 %207, %210
  store i32 %211, ptr %205, align 8, !tbaa !42
  br label %212

212:                                              ; preds = %203, %209
  br i1 %188, label %213, label %227

213:                                              ; preds = %212
  %214 = getelementptr inbounds i8, ptr %1, i64 88
  %215 = load ptr, ptr %214, align 8, !tbaa !35
  %216 = zext nneg i32 %187 to i64
  br label %217

217:                                              ; preds = %217, %213
  %218 = phi i64 [ 0, %213 ], [ %223, %217 ]
  %219 = phi i32 [ 1, %213 ], [ %222, %217 ]
  %220 = getelementptr inbounds %struct.jpeg_component_info, ptr %215, i64 %218, i32 3
  %221 = load i32, ptr %220, align 4, !tbaa !29
  %222 = tail call i32 @llvm.smax.i32(i32 %219, i32 %221)
  %223 = add nuw nsw i64 %218, 1
  %224 = icmp eq i64 %223, %216
  br i1 %224, label %225, label %217

225:                                              ; preds = %217
  %226 = shl nsw i32 %222, 3
  br label %227

227:                                              ; preds = %225, %212
  %228 = phi i32 [ 8, %212 ], [ %226, %225 ]
  %229 = getelementptr inbounds i8, ptr %1, i64 52
  %230 = load i32, ptr %229, align 4, !tbaa !43
  %231 = freeze i32 %230
  %232 = icmp ugt i32 %228, %231
  br i1 %232, label %267, label %233

233:                                              ; preds = %227
  %234 = urem i32 %231, %228
  %235 = sub nuw i32 %231, %234
  store i32 %235, ptr %229, align 4, !tbaa !43
  br label %267

236:                                              ; preds = %30
  tail call fastcc void @transpose_critical_parameters(ptr noundef %1)
  %237 = getelementptr inbounds i8, ptr %3, i64 4
  %238 = load i32, ptr %237, align 4, !tbaa !41
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %267, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds i8, ptr %1, i64 76
  %242 = load i32, ptr %241, align 4, !tbaa !34
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %240
  %245 = getelementptr inbounds i8, ptr %1, i64 88
  %246 = load ptr, ptr %245, align 8, !tbaa !35
  %247 = zext nneg i32 %242 to i64
  br label %248

248:                                              ; preds = %248, %244
  %249 = phi i64 [ 0, %244 ], [ %254, %248 ]
  %250 = phi i32 [ 1, %244 ], [ %253, %248 ]
  %251 = getelementptr inbounds %struct.jpeg_component_info, ptr %246, i64 %249, i32 3
  %252 = load i32, ptr %251, align 4, !tbaa !29
  %253 = tail call i32 @llvm.smax.i32(i32 %250, i32 %252)
  %254 = add nuw nsw i64 %249, 1
  %255 = icmp eq i64 %254, %247
  br i1 %255, label %256, label %248

256:                                              ; preds = %248
  %257 = shl nsw i32 %253, 3
  br label %258

258:                                              ; preds = %256, %240
  %259 = phi i32 [ 8, %240 ], [ %257, %256 ]
  %260 = getelementptr inbounds i8, ptr %1, i64 52
  %261 = load i32, ptr %260, align 4, !tbaa !43
  %262 = freeze i32 %261
  %263 = icmp ugt i32 %259, %262
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = urem i32 %262, %259
  %266 = sub nuw i32 %262, %265
  store i32 %266, ptr %260, align 4, !tbaa !43
  br label %267

267:                                              ; preds = %264, %258, %233, %227, %178, %172, %147, %141, %91, %85, %60, %54, %236, %181, %150, %95, %63, %32, %30, %94
  %268 = getelementptr inbounds i8, ptr %3, i64 16
  %269 = load ptr, ptr %268, align 8, !tbaa !31
  %270 = icmp eq ptr %269, null
  %271 = select i1 %270, ptr %2, ptr %269
  ret ptr %271
}

declare dso_local void @jpeg_set_colorspace(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @transpose_critical_parameters(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 48
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds i8, ptr %0, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !43
  store i32 %5, ptr %2, align 8, !tbaa !42
  store i32 %3, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 88
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = zext nneg i32 %7 to i64
  br label %15

13:                                               ; preds = %15, %1
  %14 = getelementptr inbounds i8, ptr %0, i64 96
  br label %24

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %22, %15 ]
  %17 = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 %16
  %18 = getelementptr inbounds i8, ptr %17, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds i8, ptr %17, i64 12
  %21 = load i32, ptr %20, align 4, !tbaa !29
  store i32 %21, ptr %18, align 8, !tbaa !27
  store i32 %19, ptr %20, align 4, !tbaa !29
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %15

24:                                               ; preds = %13, %142
  %25 = phi i64 [ 0, %13 ], [ %143, %142 ]
  %26 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %142, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %27, i64 16
  %31 = load i16, ptr %30, align 2, !tbaa !44
  %32 = getelementptr inbounds i8, ptr %27, i64 2
  %33 = load i16, ptr %32, align 2, !tbaa !44
  store i16 %33, ptr %30, align 2, !tbaa !44
  store i16 %31, ptr %32, align 2, !tbaa !44
  %34 = getelementptr inbounds i8, ptr %27, i64 32
  %35 = load i16, ptr %34, align 2, !tbaa !44
  %36 = getelementptr inbounds i8, ptr %27, i64 4
  %37 = load i16, ptr %36, align 2, !tbaa !44
  store i16 %37, ptr %34, align 2, !tbaa !44
  store i16 %35, ptr %36, align 2, !tbaa !44
  %38 = getelementptr inbounds i8, ptr %27, i64 34
  %39 = load i16, ptr %38, align 2, !tbaa !44
  %40 = getelementptr inbounds i8, ptr %27, i64 20
  %41 = load i16, ptr %40, align 2, !tbaa !44
  store i16 %41, ptr %38, align 2, !tbaa !44
  store i16 %39, ptr %40, align 2, !tbaa !44
  %42 = getelementptr inbounds i8, ptr %27, i64 48
  %43 = load i16, ptr %42, align 2, !tbaa !44
  %44 = getelementptr inbounds i8, ptr %27, i64 6
  %45 = load i16, ptr %44, align 2, !tbaa !44
  store i16 %45, ptr %42, align 2, !tbaa !44
  store i16 %43, ptr %44, align 2, !tbaa !44
  %46 = getelementptr inbounds i8, ptr %27, i64 50
  %47 = load i16, ptr %46, align 2, !tbaa !44
  %48 = getelementptr inbounds i8, ptr %27, i64 22
  %49 = load i16, ptr %48, align 2, !tbaa !44
  store i16 %49, ptr %46, align 2, !tbaa !44
  store i16 %47, ptr %48, align 2, !tbaa !44
  %50 = getelementptr inbounds i8, ptr %27, i64 52
  %51 = load i16, ptr %50, align 2, !tbaa !44
  %52 = getelementptr inbounds i8, ptr %27, i64 38
  %53 = load i16, ptr %52, align 2, !tbaa !44
  store i16 %53, ptr %50, align 2, !tbaa !44
  store i16 %51, ptr %52, align 2, !tbaa !44
  %54 = getelementptr inbounds i8, ptr %27, i64 64
  %55 = load i16, ptr %54, align 2, !tbaa !44
  %56 = getelementptr inbounds i8, ptr %27, i64 8
  %57 = load i16, ptr %56, align 2, !tbaa !44
  store i16 %57, ptr %54, align 2, !tbaa !44
  store i16 %55, ptr %56, align 2, !tbaa !44
  %58 = getelementptr inbounds i8, ptr %27, i64 66
  %59 = load i16, ptr %58, align 2, !tbaa !44
  %60 = getelementptr inbounds i8, ptr %27, i64 24
  %61 = load i16, ptr %60, align 2, !tbaa !44
  store i16 %61, ptr %58, align 2, !tbaa !44
  store i16 %59, ptr %60, align 2, !tbaa !44
  %62 = getelementptr inbounds i8, ptr %27, i64 68
  %63 = load i16, ptr %62, align 2, !tbaa !44
  %64 = getelementptr inbounds i8, ptr %27, i64 40
  %65 = load i16, ptr %64, align 2, !tbaa !44
  store i16 %65, ptr %62, align 2, !tbaa !44
  store i16 %63, ptr %64, align 2, !tbaa !44
  %66 = getelementptr inbounds i8, ptr %27, i64 70
  %67 = load i16, ptr %66, align 2, !tbaa !44
  %68 = getelementptr inbounds i8, ptr %27, i64 56
  %69 = load i16, ptr %68, align 2, !tbaa !44
  store i16 %69, ptr %66, align 2, !tbaa !44
  store i16 %67, ptr %68, align 2, !tbaa !44
  %70 = getelementptr inbounds i8, ptr %27, i64 80
  %71 = load i16, ptr %70, align 2, !tbaa !44
  %72 = getelementptr inbounds i8, ptr %27, i64 10
  %73 = load i16, ptr %72, align 2, !tbaa !44
  store i16 %73, ptr %70, align 2, !tbaa !44
  store i16 %71, ptr %72, align 2, !tbaa !44
  %74 = getelementptr inbounds i8, ptr %27, i64 82
  %75 = load i16, ptr %74, align 2, !tbaa !44
  %76 = getelementptr inbounds i8, ptr %27, i64 26
  %77 = load i16, ptr %76, align 2, !tbaa !44
  store i16 %77, ptr %74, align 2, !tbaa !44
  store i16 %75, ptr %76, align 2, !tbaa !44
  %78 = getelementptr inbounds i8, ptr %27, i64 84
  %79 = load i16, ptr %78, align 2, !tbaa !44
  %80 = getelementptr inbounds i8, ptr %27, i64 42
  %81 = load i16, ptr %80, align 2, !tbaa !44
  store i16 %81, ptr %78, align 2, !tbaa !44
  store i16 %79, ptr %80, align 2, !tbaa !44
  %82 = getelementptr inbounds i8, ptr %27, i64 86
  %83 = load i16, ptr %82, align 2, !tbaa !44
  %84 = getelementptr inbounds i8, ptr %27, i64 58
  %85 = load i16, ptr %84, align 2, !tbaa !44
  store i16 %85, ptr %82, align 2, !tbaa !44
  store i16 %83, ptr %84, align 2, !tbaa !44
  %86 = getelementptr inbounds i8, ptr %27, i64 88
  %87 = load i16, ptr %86, align 2, !tbaa !44
  %88 = getelementptr inbounds i8, ptr %27, i64 74
  %89 = load i16, ptr %88, align 2, !tbaa !44
  store i16 %89, ptr %86, align 2, !tbaa !44
  store i16 %87, ptr %88, align 2, !tbaa !44
  %90 = getelementptr inbounds i8, ptr %27, i64 96
  %91 = load i16, ptr %90, align 2, !tbaa !44
  %92 = getelementptr inbounds i8, ptr %27, i64 12
  %93 = load i16, ptr %92, align 2, !tbaa !44
  store i16 %93, ptr %90, align 2, !tbaa !44
  store i16 %91, ptr %92, align 2, !tbaa !44
  %94 = getelementptr inbounds i8, ptr %27, i64 98
  %95 = load i16, ptr %94, align 2, !tbaa !44
  %96 = getelementptr inbounds i8, ptr %27, i64 28
  %97 = load i16, ptr %96, align 2, !tbaa !44
  store i16 %97, ptr %94, align 2, !tbaa !44
  store i16 %95, ptr %96, align 2, !tbaa !44
  %98 = getelementptr inbounds i8, ptr %27, i64 100
  %99 = load i16, ptr %98, align 2, !tbaa !44
  %100 = getelementptr inbounds i8, ptr %27, i64 44
  %101 = load i16, ptr %100, align 2, !tbaa !44
  store i16 %101, ptr %98, align 2, !tbaa !44
  store i16 %99, ptr %100, align 2, !tbaa !44
  %102 = getelementptr inbounds i8, ptr %27, i64 102
  %103 = load i16, ptr %102, align 2, !tbaa !44
  %104 = getelementptr inbounds i8, ptr %27, i64 60
  %105 = load i16, ptr %104, align 2, !tbaa !44
  store i16 %105, ptr %102, align 2, !tbaa !44
  store i16 %103, ptr %104, align 2, !tbaa !44
  %106 = getelementptr inbounds i8, ptr %27, i64 104
  %107 = load i16, ptr %106, align 2, !tbaa !44
  %108 = getelementptr inbounds i8, ptr %27, i64 76
  %109 = load i16, ptr %108, align 2, !tbaa !44
  store i16 %109, ptr %106, align 2, !tbaa !44
  store i16 %107, ptr %108, align 2, !tbaa !44
  %110 = getelementptr inbounds i8, ptr %27, i64 106
  %111 = load i16, ptr %110, align 2, !tbaa !44
  %112 = getelementptr inbounds i8, ptr %27, i64 92
  %113 = load i16, ptr %112, align 2, !tbaa !44
  store i16 %113, ptr %110, align 2, !tbaa !44
  store i16 %111, ptr %112, align 2, !tbaa !44
  %114 = getelementptr inbounds i8, ptr %27, i64 112
  %115 = load i16, ptr %114, align 2, !tbaa !44
  %116 = getelementptr inbounds i8, ptr %27, i64 14
  %117 = load i16, ptr %116, align 2, !tbaa !44
  store i16 %117, ptr %114, align 2, !tbaa !44
  store i16 %115, ptr %116, align 2, !tbaa !44
  %118 = getelementptr inbounds i8, ptr %27, i64 114
  %119 = load i16, ptr %118, align 2, !tbaa !44
  %120 = getelementptr inbounds i8, ptr %27, i64 30
  %121 = load i16, ptr %120, align 2, !tbaa !44
  store i16 %121, ptr %118, align 2, !tbaa !44
  store i16 %119, ptr %120, align 2, !tbaa !44
  %122 = getelementptr inbounds i8, ptr %27, i64 116
  %123 = load i16, ptr %122, align 2, !tbaa !44
  %124 = getelementptr inbounds i8, ptr %27, i64 46
  %125 = load i16, ptr %124, align 2, !tbaa !44
  store i16 %125, ptr %122, align 2, !tbaa !44
  store i16 %123, ptr %124, align 2, !tbaa !44
  %126 = getelementptr inbounds i8, ptr %27, i64 118
  %127 = load i16, ptr %126, align 2, !tbaa !44
  %128 = getelementptr inbounds i8, ptr %27, i64 62
  %129 = load i16, ptr %128, align 2, !tbaa !44
  store i16 %129, ptr %126, align 2, !tbaa !44
  store i16 %127, ptr %128, align 2, !tbaa !44
  %130 = getelementptr inbounds i8, ptr %27, i64 120
  %131 = load i16, ptr %130, align 2, !tbaa !44
  %132 = getelementptr inbounds i8, ptr %27, i64 78
  %133 = load i16, ptr %132, align 2, !tbaa !44
  store i16 %133, ptr %130, align 2, !tbaa !44
  store i16 %131, ptr %132, align 2, !tbaa !44
  %134 = getelementptr inbounds i8, ptr %27, i64 122
  %135 = load i16, ptr %134, align 2, !tbaa !44
  %136 = getelementptr inbounds i8, ptr %27, i64 94
  %137 = load i16, ptr %136, align 2, !tbaa !44
  store i16 %137, ptr %134, align 2, !tbaa !44
  store i16 %135, ptr %136, align 2, !tbaa !44
  %138 = getelementptr inbounds i8, ptr %27, i64 124
  %139 = load i16, ptr %138, align 2, !tbaa !44
  %140 = getelementptr inbounds i8, ptr %27, i64 110
  %141 = load i16, ptr %140, align 2, !tbaa !44
  store i16 %141, ptr %138, align 2, !tbaa !44
  store i16 %139, ptr %140, align 2, !tbaa !44
  br label %142

142:                                              ; preds = %29, %24
  %143 = add nuw nsw i64 %25, 1
  %144 = icmp eq i64 %143, 4
  br i1 %144, label %145, label %24

145:                                              ; preds = %142
  ret void
}

; Function Attrs: nounwind
define dso_local void @jtransform_execute_transformation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = load i32, ptr %3, align 8, !tbaa !18
  switch i32 %7, label %3848 [
    i32 7, label %3285
    i32 1, label %8
    i32 2, label %105
    i32 3, label %427
    i32 4, label %710
    i32 5, label %1753
    i32 6, label %2280
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %1, i64 48
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds i8, ptr %1, i64 312
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = shl nsw i32 %12, 3
  %14 = udiv i32 %10, %13
  %15 = getelementptr inbounds i8, ptr %1, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %3848

18:                                               ; preds = %8
  %19 = getelementptr inbounds i8, ptr %1, i64 88
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  br label %21

21:                                               ; preds = %100, %18
  %22 = phi i64 [ 0, %18 ], [ %101, %100 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 %22
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !27
  %27 = mul i32 %26, %14
  %28 = freeze i32 %27
  %29 = getelementptr inbounds i8, ptr %24, i64 32
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %100, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds ptr, ptr %2, i64 %22
  %34 = getelementptr inbounds i8, ptr %24, i64 12
  %35 = icmp eq i32 %28, 0
  %36 = load i32, ptr %34, align 4, !tbaa !29
  br i1 %35, label %88, label %37

37:                                               ; preds = %32, %49
  %38 = phi i32 [ %45, %49 ], [ %36, %32 ]
  %39 = phi i32 [ %50, %49 ], [ 0, %32 ]
  %40 = load ptr, ptr %20, align 8, !tbaa !19
  %41 = getelementptr inbounds i8, ptr %40, i64 64
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = load ptr, ptr %33, align 8, !tbaa !30
  %44 = tail call ptr %42(ptr noundef %0, ptr noundef %43, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext 1) #4
  %45 = load i32, ptr %34, align 4, !tbaa !29
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = zext nneg i32 %45 to i64
  br label %53

49:                                               ; preds = %85, %37
  %50 = add i32 %45, %39
  %51 = load i32, ptr %29, align 8, !tbaa !28
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %37, label %100

53:                                               ; preds = %85, %47
  %54 = phi i64 [ 0, %47 ], [ %86, %85 ]
  %55 = getelementptr inbounds ptr, ptr %44, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  br label %57

57:                                               ; preds = %65, %53
  %58 = phi i32 [ 0, %53 ], [ %66, %65 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [64 x i16], ptr %56, i64 %59
  %61 = xor i32 %58, -1
  %62 = add i32 %28, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i16], ptr %56, i64 %63
  br label %69

65:                                               ; preds = %69
  %66 = add i32 %58, 1
  %67 = shl i32 %66, 1
  %68 = icmp ult i32 %67, %28
  br i1 %68, label %57, label %85

69:                                               ; preds = %69, %57
  %70 = phi ptr [ %64, %57 ], [ %82, %69 ]
  %71 = phi ptr [ %60, %57 ], [ %80, %69 ]
  %72 = phi i32 [ 0, %57 ], [ %83, %69 ]
  %73 = load i16, ptr %71, align 2, !tbaa !44
  %74 = load i16, ptr %70, align 2, !tbaa !44
  %75 = getelementptr inbounds i8, ptr %71, i64 2
  store i16 %74, ptr %71, align 2, !tbaa !44
  %76 = getelementptr inbounds i8, ptr %70, i64 2
  store i16 %73, ptr %70, align 2, !tbaa !44
  %77 = load i16, ptr %75, align 2, !tbaa !44
  %78 = load i16, ptr %76, align 2, !tbaa !44
  %79 = sub i16 0, %78
  %80 = getelementptr inbounds i8, ptr %71, i64 4
  store i16 %79, ptr %75, align 2, !tbaa !44
  %81 = sub i16 0, %77
  %82 = getelementptr inbounds i8, ptr %70, i64 4
  store i16 %81, ptr %76, align 2, !tbaa !44
  %83 = add nuw nsw i32 %72, 2
  %84 = icmp ult i32 %72, 62
  br i1 %84, label %69, label %65

85:                                               ; preds = %65
  %86 = add nuw nsw i64 %54, 1
  %87 = icmp eq i64 %86, %48
  br i1 %87, label %49, label %53

88:                                               ; preds = %32, %88
  %89 = phi i32 [ %96, %88 ], [ %36, %32 ]
  %90 = phi i32 [ %97, %88 ], [ 0, %32 ]
  %91 = load ptr, ptr %20, align 8, !tbaa !19
  %92 = getelementptr inbounds i8, ptr %91, i64 64
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = load ptr, ptr %33, align 8, !tbaa !30
  %95 = tail call ptr %93(ptr noundef %0, ptr noundef %94, i32 noundef signext %90, i32 noundef signext %89, i32 noundef signext 1) #4
  %96 = load i32, ptr %34, align 4, !tbaa !29
  %97 = add i32 %96, %90
  %98 = load i32, ptr %29, align 8, !tbaa !28
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %88, label %100

100:                                              ; preds = %49, %88, %21
  %101 = add nuw nsw i64 %22, 1
  %102 = load i32, ptr %15, align 4, !tbaa !34
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %21, label %3848

105:                                              ; preds = %4
  %106 = getelementptr inbounds i8, ptr %1, i64 52
  %107 = load i32, ptr %106, align 4, !tbaa !43
  %108 = getelementptr inbounds i8, ptr %1, i64 316
  %109 = load i32, ptr %108, align 4, !tbaa !47
  %110 = shl nsw i32 %109, 3
  %111 = udiv i32 %107, %110
  %112 = getelementptr inbounds i8, ptr %1, i64 76
  %113 = load i32, ptr %112, align 4, !tbaa !34
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %3848

115:                                              ; preds = %105
  %116 = getelementptr inbounds i8, ptr %1, i64 88
  %117 = getelementptr inbounds i8, ptr %0, i64 8
  br label %118

118:                                              ; preds = %422, %115
  %119 = phi i32 [ %113, %115 ], [ %423, %422 ]
  %120 = phi i64 [ 0, %115 ], [ %424, %422 ]
  %121 = load ptr, ptr %116, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 %120
  %123 = getelementptr inbounds i8, ptr %122, i64 12
  %124 = load i32, ptr %123, align 4, !tbaa !29
  %125 = mul i32 %124, %111
  %126 = getelementptr inbounds i8, ptr %122, i64 32
  %127 = load i32, ptr %126, align 8, !tbaa !28
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %422, label %129

129:                                              ; preds = %118
  %130 = getelementptr inbounds ptr, ptr %6, i64 %120
  %131 = getelementptr inbounds ptr, ptr %2, i64 %120
  %132 = getelementptr inbounds i8, ptr %122, i64 28
  br label %133

133:                                              ; preds = %415, %129
  %134 = phi i32 [ 0, %129 ], [ %417, %415 ]
  %135 = load ptr, ptr %117, align 8, !tbaa !19
  %136 = getelementptr inbounds i8, ptr %135, i64 64
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = load ptr, ptr %130, align 8, !tbaa !30
  %139 = load i32, ptr %123, align 4, !tbaa !29
  %140 = tail call ptr %137(ptr noundef %0, ptr noundef %138, i32 noundef signext %134, i32 noundef signext %139, i32 noundef signext 1) #4
  %141 = icmp ult i32 %134, %125
  %142 = load ptr, ptr %117, align 8, !tbaa !19
  %143 = getelementptr inbounds i8, ptr %142, i64 64
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = load ptr, ptr %131, align 8, !tbaa !30
  %146 = load i32, ptr %123, align 4, !tbaa !29
  br i1 %141, label %147, label %153

147:                                              ; preds = %133
  %148 = add i32 %134, %146
  %149 = sub i32 %125, %148
  %150 = tail call ptr %144(ptr noundef nonnull %0, ptr noundef %145, i32 noundef signext %149, i32 noundef signext %146, i32 noundef signext 0) #4
  %151 = load i32, ptr %123, align 4, !tbaa !29
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %157, label %415

153:                                              ; preds = %133
  %154 = tail call ptr %144(ptr noundef nonnull %0, ptr noundef %145, i32 noundef signext %134, i32 noundef signext %146, i32 noundef signext 0) #4
  %155 = load i32, ptr %123, align 4, !tbaa !29
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %404, label %415

157:                                              ; preds = %147
  %158 = load i32, ptr %132, align 4, !tbaa !25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %415, label %160

160:                                              ; preds = %157
  %161 = zext nneg i32 %151 to i64
  %162 = zext i32 %158 to i64
  br label %163

163:                                              ; preds = %401, %160
  %164 = phi i64 [ 0, %160 ], [ %402, %401 ]
  %165 = getelementptr inbounds ptr, ptr %140, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !30
  %167 = trunc nuw nsw i64 %164 to i32
  %168 = xor i32 %167, -1
  %169 = add i32 %151, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %150, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !30
  br label %173

173:                                              ; preds = %173, %163
  %174 = phi i64 [ 0, %163 ], [ %399, %173 ]
  %175 = getelementptr inbounds [64 x i16], ptr %166, i64 %174
  %176 = getelementptr inbounds [64 x i16], ptr %172, i64 %174
  %177 = getelementptr inbounds i8, ptr %176, i64 2
  %178 = load i16, ptr %176, align 2, !tbaa !44
  %179 = getelementptr inbounds i8, ptr %175, i64 2
  store i16 %178, ptr %175, align 2, !tbaa !44
  %180 = getelementptr inbounds i8, ptr %176, i64 4
  %181 = load i16, ptr %177, align 2, !tbaa !44
  %182 = getelementptr inbounds i8, ptr %175, i64 4
  store i16 %181, ptr %179, align 2, !tbaa !44
  %183 = getelementptr inbounds i8, ptr %176, i64 6
  %184 = load i16, ptr %180, align 2, !tbaa !44
  %185 = getelementptr inbounds i8, ptr %175, i64 6
  store i16 %184, ptr %182, align 2, !tbaa !44
  %186 = getelementptr inbounds i8, ptr %176, i64 8
  %187 = load i16, ptr %183, align 2, !tbaa !44
  %188 = getelementptr inbounds i8, ptr %175, i64 8
  store i16 %187, ptr %185, align 2, !tbaa !44
  %189 = getelementptr inbounds i8, ptr %176, i64 10
  %190 = load i16, ptr %186, align 2, !tbaa !44
  %191 = getelementptr inbounds i8, ptr %175, i64 10
  store i16 %190, ptr %188, align 2, !tbaa !44
  %192 = getelementptr inbounds i8, ptr %176, i64 12
  %193 = load i16, ptr %189, align 2, !tbaa !44
  %194 = getelementptr inbounds i8, ptr %175, i64 12
  store i16 %193, ptr %191, align 2, !tbaa !44
  %195 = getelementptr inbounds i8, ptr %176, i64 14
  %196 = load i16, ptr %192, align 2, !tbaa !44
  %197 = getelementptr inbounds i8, ptr %175, i64 14
  store i16 %196, ptr %194, align 2, !tbaa !44
  %198 = getelementptr inbounds i8, ptr %176, i64 16
  %199 = load i16, ptr %195, align 2, !tbaa !44
  %200 = getelementptr inbounds i8, ptr %175, i64 16
  store i16 %199, ptr %197, align 2, !tbaa !44
  %201 = getelementptr inbounds i8, ptr %176, i64 18
  %202 = load i16, ptr %198, align 2, !tbaa !44
  %203 = sub i16 0, %202
  %204 = getelementptr inbounds i8, ptr %175, i64 18
  store i16 %203, ptr %200, align 2, !tbaa !44
  %205 = getelementptr inbounds i8, ptr %176, i64 20
  %206 = load i16, ptr %201, align 2, !tbaa !44
  %207 = sub i16 0, %206
  %208 = getelementptr inbounds i8, ptr %175, i64 20
  store i16 %207, ptr %204, align 2, !tbaa !44
  %209 = getelementptr inbounds i8, ptr %176, i64 22
  %210 = load i16, ptr %205, align 2, !tbaa !44
  %211 = sub i16 0, %210
  %212 = getelementptr inbounds i8, ptr %175, i64 22
  store i16 %211, ptr %208, align 2, !tbaa !44
  %213 = getelementptr inbounds i8, ptr %176, i64 24
  %214 = load i16, ptr %209, align 2, !tbaa !44
  %215 = sub i16 0, %214
  %216 = getelementptr inbounds i8, ptr %175, i64 24
  store i16 %215, ptr %212, align 2, !tbaa !44
  %217 = getelementptr inbounds i8, ptr %176, i64 26
  %218 = load i16, ptr %213, align 2, !tbaa !44
  %219 = sub i16 0, %218
  %220 = getelementptr inbounds i8, ptr %175, i64 26
  store i16 %219, ptr %216, align 2, !tbaa !44
  %221 = getelementptr inbounds i8, ptr %176, i64 28
  %222 = load i16, ptr %217, align 2, !tbaa !44
  %223 = sub i16 0, %222
  %224 = getelementptr inbounds i8, ptr %175, i64 28
  store i16 %223, ptr %220, align 2, !tbaa !44
  %225 = getelementptr inbounds i8, ptr %176, i64 30
  %226 = load i16, ptr %221, align 2, !tbaa !44
  %227 = sub i16 0, %226
  %228 = getelementptr inbounds i8, ptr %175, i64 30
  store i16 %227, ptr %224, align 2, !tbaa !44
  %229 = getelementptr inbounds i8, ptr %176, i64 32
  %230 = load i16, ptr %225, align 2, !tbaa !44
  %231 = sub i16 0, %230
  %232 = getelementptr inbounds i8, ptr %175, i64 32
  store i16 %231, ptr %228, align 2, !tbaa !44
  %233 = getelementptr inbounds i8, ptr %176, i64 34
  %234 = load i16, ptr %229, align 2, !tbaa !44
  %235 = getelementptr inbounds i8, ptr %175, i64 34
  store i16 %234, ptr %232, align 2, !tbaa !44
  %236 = getelementptr inbounds i8, ptr %176, i64 36
  %237 = load i16, ptr %233, align 2, !tbaa !44
  %238 = getelementptr inbounds i8, ptr %175, i64 36
  store i16 %237, ptr %235, align 2, !tbaa !44
  %239 = getelementptr inbounds i8, ptr %176, i64 38
  %240 = load i16, ptr %236, align 2, !tbaa !44
  %241 = getelementptr inbounds i8, ptr %175, i64 38
  store i16 %240, ptr %238, align 2, !tbaa !44
  %242 = getelementptr inbounds i8, ptr %176, i64 40
  %243 = load i16, ptr %239, align 2, !tbaa !44
  %244 = getelementptr inbounds i8, ptr %175, i64 40
  store i16 %243, ptr %241, align 2, !tbaa !44
  %245 = getelementptr inbounds i8, ptr %176, i64 42
  %246 = load i16, ptr %242, align 2, !tbaa !44
  %247 = getelementptr inbounds i8, ptr %175, i64 42
  store i16 %246, ptr %244, align 2, !tbaa !44
  %248 = getelementptr inbounds i8, ptr %176, i64 44
  %249 = load i16, ptr %245, align 2, !tbaa !44
  %250 = getelementptr inbounds i8, ptr %175, i64 44
  store i16 %249, ptr %247, align 2, !tbaa !44
  %251 = getelementptr inbounds i8, ptr %176, i64 46
  %252 = load i16, ptr %248, align 2, !tbaa !44
  %253 = getelementptr inbounds i8, ptr %175, i64 46
  store i16 %252, ptr %250, align 2, !tbaa !44
  %254 = getelementptr inbounds i8, ptr %176, i64 48
  %255 = load i16, ptr %251, align 2, !tbaa !44
  %256 = getelementptr inbounds i8, ptr %175, i64 48
  store i16 %255, ptr %253, align 2, !tbaa !44
  %257 = getelementptr inbounds i8, ptr %176, i64 50
  %258 = load i16, ptr %254, align 2, !tbaa !44
  %259 = sub i16 0, %258
  %260 = getelementptr inbounds i8, ptr %175, i64 50
  store i16 %259, ptr %256, align 2, !tbaa !44
  %261 = getelementptr inbounds i8, ptr %176, i64 52
  %262 = load i16, ptr %257, align 2, !tbaa !44
  %263 = sub i16 0, %262
  %264 = getelementptr inbounds i8, ptr %175, i64 52
  store i16 %263, ptr %260, align 2, !tbaa !44
  %265 = getelementptr inbounds i8, ptr %176, i64 54
  %266 = load i16, ptr %261, align 2, !tbaa !44
  %267 = sub i16 0, %266
  %268 = getelementptr inbounds i8, ptr %175, i64 54
  store i16 %267, ptr %264, align 2, !tbaa !44
  %269 = getelementptr inbounds i8, ptr %176, i64 56
  %270 = load i16, ptr %265, align 2, !tbaa !44
  %271 = sub i16 0, %270
  %272 = getelementptr inbounds i8, ptr %175, i64 56
  store i16 %271, ptr %268, align 2, !tbaa !44
  %273 = getelementptr inbounds i8, ptr %176, i64 58
  %274 = load i16, ptr %269, align 2, !tbaa !44
  %275 = sub i16 0, %274
  %276 = getelementptr inbounds i8, ptr %175, i64 58
  store i16 %275, ptr %272, align 2, !tbaa !44
  %277 = getelementptr inbounds i8, ptr %176, i64 60
  %278 = load i16, ptr %273, align 2, !tbaa !44
  %279 = sub i16 0, %278
  %280 = getelementptr inbounds i8, ptr %175, i64 60
  store i16 %279, ptr %276, align 2, !tbaa !44
  %281 = getelementptr inbounds i8, ptr %176, i64 62
  %282 = load i16, ptr %277, align 2, !tbaa !44
  %283 = sub i16 0, %282
  %284 = getelementptr inbounds i8, ptr %175, i64 62
  store i16 %283, ptr %280, align 2, !tbaa !44
  %285 = getelementptr inbounds i8, ptr %176, i64 64
  %286 = load i16, ptr %281, align 2, !tbaa !44
  %287 = sub i16 0, %286
  %288 = getelementptr inbounds i8, ptr %175, i64 64
  store i16 %287, ptr %284, align 2, !tbaa !44
  %289 = getelementptr inbounds i8, ptr %176, i64 66
  %290 = load i16, ptr %285, align 2, !tbaa !44
  %291 = getelementptr inbounds i8, ptr %175, i64 66
  store i16 %290, ptr %288, align 2, !tbaa !44
  %292 = getelementptr inbounds i8, ptr %176, i64 68
  %293 = load i16, ptr %289, align 2, !tbaa !44
  %294 = getelementptr inbounds i8, ptr %175, i64 68
  store i16 %293, ptr %291, align 2, !tbaa !44
  %295 = getelementptr inbounds i8, ptr %176, i64 70
  %296 = load i16, ptr %292, align 2, !tbaa !44
  %297 = getelementptr inbounds i8, ptr %175, i64 70
  store i16 %296, ptr %294, align 2, !tbaa !44
  %298 = getelementptr inbounds i8, ptr %176, i64 72
  %299 = load i16, ptr %295, align 2, !tbaa !44
  %300 = getelementptr inbounds i8, ptr %175, i64 72
  store i16 %299, ptr %297, align 2, !tbaa !44
  %301 = getelementptr inbounds i8, ptr %176, i64 74
  %302 = load i16, ptr %298, align 2, !tbaa !44
  %303 = getelementptr inbounds i8, ptr %175, i64 74
  store i16 %302, ptr %300, align 2, !tbaa !44
  %304 = getelementptr inbounds i8, ptr %176, i64 76
  %305 = load i16, ptr %301, align 2, !tbaa !44
  %306 = getelementptr inbounds i8, ptr %175, i64 76
  store i16 %305, ptr %303, align 2, !tbaa !44
  %307 = getelementptr inbounds i8, ptr %176, i64 78
  %308 = load i16, ptr %304, align 2, !tbaa !44
  %309 = getelementptr inbounds i8, ptr %175, i64 78
  store i16 %308, ptr %306, align 2, !tbaa !44
  %310 = getelementptr inbounds i8, ptr %176, i64 80
  %311 = load i16, ptr %307, align 2, !tbaa !44
  %312 = getelementptr inbounds i8, ptr %175, i64 80
  store i16 %311, ptr %309, align 2, !tbaa !44
  %313 = getelementptr inbounds i8, ptr %176, i64 82
  %314 = load i16, ptr %310, align 2, !tbaa !44
  %315 = sub i16 0, %314
  %316 = getelementptr inbounds i8, ptr %175, i64 82
  store i16 %315, ptr %312, align 2, !tbaa !44
  %317 = getelementptr inbounds i8, ptr %176, i64 84
  %318 = load i16, ptr %313, align 2, !tbaa !44
  %319 = sub i16 0, %318
  %320 = getelementptr inbounds i8, ptr %175, i64 84
  store i16 %319, ptr %316, align 2, !tbaa !44
  %321 = getelementptr inbounds i8, ptr %176, i64 86
  %322 = load i16, ptr %317, align 2, !tbaa !44
  %323 = sub i16 0, %322
  %324 = getelementptr inbounds i8, ptr %175, i64 86
  store i16 %323, ptr %320, align 2, !tbaa !44
  %325 = getelementptr inbounds i8, ptr %176, i64 88
  %326 = load i16, ptr %321, align 2, !tbaa !44
  %327 = sub i16 0, %326
  %328 = getelementptr inbounds i8, ptr %175, i64 88
  store i16 %327, ptr %324, align 2, !tbaa !44
  %329 = getelementptr inbounds i8, ptr %176, i64 90
  %330 = load i16, ptr %325, align 2, !tbaa !44
  %331 = sub i16 0, %330
  %332 = getelementptr inbounds i8, ptr %175, i64 90
  store i16 %331, ptr %328, align 2, !tbaa !44
  %333 = getelementptr inbounds i8, ptr %176, i64 92
  %334 = load i16, ptr %329, align 2, !tbaa !44
  %335 = sub i16 0, %334
  %336 = getelementptr inbounds i8, ptr %175, i64 92
  store i16 %335, ptr %332, align 2, !tbaa !44
  %337 = getelementptr inbounds i8, ptr %176, i64 94
  %338 = load i16, ptr %333, align 2, !tbaa !44
  %339 = sub i16 0, %338
  %340 = getelementptr inbounds i8, ptr %175, i64 94
  store i16 %339, ptr %336, align 2, !tbaa !44
  %341 = getelementptr inbounds i8, ptr %176, i64 96
  %342 = load i16, ptr %337, align 2, !tbaa !44
  %343 = sub i16 0, %342
  %344 = getelementptr inbounds i8, ptr %175, i64 96
  store i16 %343, ptr %340, align 2, !tbaa !44
  %345 = getelementptr inbounds i8, ptr %176, i64 98
  %346 = load i16, ptr %341, align 2, !tbaa !44
  %347 = getelementptr inbounds i8, ptr %175, i64 98
  store i16 %346, ptr %344, align 2, !tbaa !44
  %348 = getelementptr inbounds i8, ptr %176, i64 100
  %349 = load i16, ptr %345, align 2, !tbaa !44
  %350 = getelementptr inbounds i8, ptr %175, i64 100
  store i16 %349, ptr %347, align 2, !tbaa !44
  %351 = getelementptr inbounds i8, ptr %176, i64 102
  %352 = load i16, ptr %348, align 2, !tbaa !44
  %353 = getelementptr inbounds i8, ptr %175, i64 102
  store i16 %352, ptr %350, align 2, !tbaa !44
  %354 = getelementptr inbounds i8, ptr %176, i64 104
  %355 = load i16, ptr %351, align 2, !tbaa !44
  %356 = getelementptr inbounds i8, ptr %175, i64 104
  store i16 %355, ptr %353, align 2, !tbaa !44
  %357 = getelementptr inbounds i8, ptr %176, i64 106
  %358 = load i16, ptr %354, align 2, !tbaa !44
  %359 = getelementptr inbounds i8, ptr %175, i64 106
  store i16 %358, ptr %356, align 2, !tbaa !44
  %360 = getelementptr inbounds i8, ptr %176, i64 108
  %361 = load i16, ptr %357, align 2, !tbaa !44
  %362 = getelementptr inbounds i8, ptr %175, i64 108
  store i16 %361, ptr %359, align 2, !tbaa !44
  %363 = getelementptr inbounds i8, ptr %176, i64 110
  %364 = load i16, ptr %360, align 2, !tbaa !44
  %365 = getelementptr inbounds i8, ptr %175, i64 110
  store i16 %364, ptr %362, align 2, !tbaa !44
  %366 = getelementptr inbounds i8, ptr %176, i64 112
  %367 = load i16, ptr %363, align 2, !tbaa !44
  %368 = getelementptr inbounds i8, ptr %175, i64 112
  store i16 %367, ptr %365, align 2, !tbaa !44
  %369 = getelementptr inbounds i8, ptr %176, i64 114
  %370 = load i16, ptr %366, align 2, !tbaa !44
  %371 = sub i16 0, %370
  %372 = getelementptr inbounds i8, ptr %175, i64 114
  store i16 %371, ptr %368, align 2, !tbaa !44
  %373 = getelementptr inbounds i8, ptr %176, i64 116
  %374 = load i16, ptr %369, align 2, !tbaa !44
  %375 = sub i16 0, %374
  %376 = getelementptr inbounds i8, ptr %175, i64 116
  store i16 %375, ptr %372, align 2, !tbaa !44
  %377 = getelementptr inbounds i8, ptr %176, i64 118
  %378 = load i16, ptr %373, align 2, !tbaa !44
  %379 = sub i16 0, %378
  %380 = getelementptr inbounds i8, ptr %175, i64 118
  store i16 %379, ptr %376, align 2, !tbaa !44
  %381 = getelementptr inbounds i8, ptr %176, i64 120
  %382 = load i16, ptr %377, align 2, !tbaa !44
  %383 = sub i16 0, %382
  %384 = getelementptr inbounds i8, ptr %175, i64 120
  store i16 %383, ptr %380, align 2, !tbaa !44
  %385 = getelementptr inbounds i8, ptr %176, i64 122
  %386 = load i16, ptr %381, align 2, !tbaa !44
  %387 = sub i16 0, %386
  %388 = getelementptr inbounds i8, ptr %175, i64 122
  store i16 %387, ptr %384, align 2, !tbaa !44
  %389 = getelementptr inbounds i8, ptr %176, i64 124
  %390 = load i16, ptr %385, align 2, !tbaa !44
  %391 = sub i16 0, %390
  %392 = getelementptr inbounds i8, ptr %175, i64 124
  store i16 %391, ptr %388, align 2, !tbaa !44
  %393 = getelementptr inbounds i8, ptr %176, i64 126
  %394 = load i16, ptr %389, align 2, !tbaa !44
  %395 = sub i16 0, %394
  %396 = getelementptr inbounds i8, ptr %175, i64 126
  store i16 %395, ptr %392, align 2, !tbaa !44
  %397 = load i16, ptr %393, align 2, !tbaa !44
  %398 = sub i16 0, %397
  store i16 %398, ptr %396, align 2, !tbaa !44
  %399 = add nuw nsw i64 %174, 1
  %400 = icmp eq i64 %399, %162
  br i1 %400, label %401, label %173

401:                                              ; preds = %173
  %402 = add nuw nsw i64 %164, 1
  %403 = icmp eq i64 %402, %161
  br i1 %403, label %415, label %163

404:                                              ; preds = %153, %404
  %405 = phi i64 [ %411, %404 ], [ 0, %153 ]
  %406 = getelementptr inbounds ptr, ptr %154, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !30
  %408 = getelementptr inbounds ptr, ptr %140, i64 %405
  %409 = load ptr, ptr %408, align 8, !tbaa !30
  %410 = load i32, ptr %132, align 4, !tbaa !25
  tail call void @jcopy_block_row(ptr noundef %407, ptr noundef %409, i32 noundef signext %410) #4
  %411 = add nuw nsw i64 %405, 1
  %412 = load i32, ptr %123, align 4, !tbaa !29
  %413 = sext i32 %412 to i64
  %414 = icmp slt i64 %411, %413
  br i1 %414, label %404, label %415

415:                                              ; preds = %404, %401, %157, %153, %147
  %416 = phi i32 [ %151, %147 ], [ %155, %153 ], [ %151, %157 ], [ %151, %401 ], [ %412, %404 ]
  %417 = add i32 %416, %134
  %418 = load i32, ptr %126, align 8, !tbaa !28
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %133, label %420

420:                                              ; preds = %415
  %421 = load i32, ptr %112, align 4, !tbaa !34
  br label %422

422:                                              ; preds = %420, %118
  %423 = phi i32 [ %421, %420 ], [ %119, %118 ]
  %424 = add nuw nsw i64 %120, 1
  %425 = sext i32 %423 to i64
  %426 = icmp slt i64 %424, %425
  br i1 %426, label %118, label %3848

427:                                              ; preds = %4
  %428 = getelementptr inbounds i8, ptr %1, i64 76
  %429 = load i32, ptr %428, align 4, !tbaa !34
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %3848

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %1, i64 88
  %433 = getelementptr inbounds i8, ptr %0, i64 8
  br label %434

434:                                              ; preds = %705, %431
  %435 = phi i32 [ %429, %431 ], [ %706, %705 ]
  %436 = phi i64 [ 0, %431 ], [ %707, %705 ]
  %437 = load ptr, ptr %432, align 8, !tbaa !35
  %438 = getelementptr inbounds %struct.jpeg_component_info, ptr %437, i64 %436
  %439 = getelementptr inbounds i8, ptr %438, i64 32
  %440 = load i32, ptr %439, align 8, !tbaa !28
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %705, label %442

442:                                              ; preds = %434
  %443 = getelementptr inbounds ptr, ptr %6, i64 %436
  %444 = getelementptr inbounds i8, ptr %438, i64 12
  %445 = getelementptr inbounds i8, ptr %438, i64 28
  %446 = getelementptr inbounds ptr, ptr %2, i64 %436
  %447 = getelementptr inbounds i8, ptr %438, i64 8
  %448 = load i32, ptr %444, align 4, !tbaa !29
  br label %449

449:                                              ; preds = %698, %442
  %450 = phi i32 [ %448, %442 ], [ %699, %698 ]
  %451 = phi i32 [ 0, %442 ], [ %700, %698 ]
  %452 = load ptr, ptr %433, align 8, !tbaa !19
  %453 = getelementptr inbounds i8, ptr %452, i64 64
  %454 = load ptr, ptr %453, align 8, !tbaa !46
  %455 = load ptr, ptr %443, align 8, !tbaa !30
  %456 = tail call ptr %454(ptr noundef %0, ptr noundef %455, i32 noundef signext %451, i32 noundef signext %450, i32 noundef signext 1) #4
  %457 = load i32, ptr %444, align 4, !tbaa !29
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %459, label %698

459:                                              ; preds = %449
  %460 = load i32, ptr %445, align 4, !tbaa !25
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %698, label %462

462:                                              ; preds = %459, %692
  %463 = phi i32 [ %693, %692 ], [ %457, %459 ]
  %464 = phi i32 [ %694, %692 ], [ 1, %459 ]
  %465 = phi i64 [ %695, %692 ], [ 0, %459 ]
  %466 = icmp eq i32 %464, 0
  br i1 %466, label %692, label %467

467:                                              ; preds = %462
  %468 = trunc nuw nsw i64 %465 to i32
  %469 = add i32 %451, %468
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds ptr, ptr %456, i64 %465
  br label %472

472:                                              ; preds = %686, %467
  %473 = phi i32 [ 0, %467 ], [ %687, %686 ]
  %474 = load ptr, ptr %433, align 8, !tbaa !19
  %475 = getelementptr inbounds i8, ptr %474, i64 64
  %476 = load ptr, ptr %475, align 8, !tbaa !46
  %477 = load ptr, ptr %446, align 8, !tbaa !30
  %478 = load i32, ptr %447, align 8, !tbaa !27
  %479 = tail call ptr %476(ptr noundef %0, ptr noundef %477, i32 noundef signext %473, i32 noundef signext %478, i32 noundef signext 0) #4
  %480 = load i32, ptr %447, align 8, !tbaa !27
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %686

482:                                              ; preds = %472
  %483 = load ptr, ptr %471, align 8, !tbaa !30
  %484 = zext nneg i32 %480 to i64
  br label %485

485:                                              ; preds = %485, %482
  %486 = phi i64 [ 0, %482 ], [ %684, %485 ]
  %487 = getelementptr inbounds ptr, ptr %479, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !30
  %489 = getelementptr inbounds [64 x i16], ptr %488, i64 %470
  %490 = trunc nuw nsw i64 %486 to i32
  %491 = add i32 %473, %490
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds [64 x i16], ptr %483, i64 %492
  %494 = load i16, ptr %489, align 2, !tbaa !44
  store i16 %494, ptr %493, align 2, !tbaa !44
  %495 = getelementptr inbounds i8, ptr %489, i64 2
  %496 = load i16, ptr %495, align 2, !tbaa !44
  %497 = getelementptr inbounds i8, ptr %493, i64 16
  store i16 %496, ptr %497, align 2, !tbaa !44
  %498 = getelementptr inbounds i8, ptr %489, i64 4
  %499 = load i16, ptr %498, align 2, !tbaa !44
  %500 = getelementptr inbounds i8, ptr %493, i64 32
  store i16 %499, ptr %500, align 2, !tbaa !44
  %501 = getelementptr inbounds i8, ptr %489, i64 6
  %502 = load i16, ptr %501, align 2, !tbaa !44
  %503 = getelementptr inbounds i8, ptr %493, i64 48
  store i16 %502, ptr %503, align 2, !tbaa !44
  %504 = getelementptr inbounds i8, ptr %489, i64 8
  %505 = load i16, ptr %504, align 2, !tbaa !44
  %506 = getelementptr inbounds i8, ptr %493, i64 64
  store i16 %505, ptr %506, align 2, !tbaa !44
  %507 = getelementptr inbounds i8, ptr %489, i64 10
  %508 = load i16, ptr %507, align 2, !tbaa !44
  %509 = getelementptr inbounds i8, ptr %493, i64 80
  store i16 %508, ptr %509, align 2, !tbaa !44
  %510 = getelementptr inbounds i8, ptr %489, i64 12
  %511 = load i16, ptr %510, align 2, !tbaa !44
  %512 = getelementptr inbounds i8, ptr %493, i64 96
  store i16 %511, ptr %512, align 2, !tbaa !44
  %513 = getelementptr inbounds i8, ptr %489, i64 14
  %514 = load i16, ptr %513, align 2, !tbaa !44
  %515 = getelementptr inbounds i8, ptr %493, i64 112
  store i16 %514, ptr %515, align 2, !tbaa !44
  %516 = getelementptr inbounds i8, ptr %489, i64 16
  %517 = load i16, ptr %516, align 2, !tbaa !44
  %518 = getelementptr inbounds i8, ptr %493, i64 2
  store i16 %517, ptr %518, align 2, !tbaa !44
  %519 = getelementptr inbounds i8, ptr %489, i64 18
  %520 = load i16, ptr %519, align 2, !tbaa !44
  %521 = getelementptr inbounds i8, ptr %493, i64 18
  store i16 %520, ptr %521, align 2, !tbaa !44
  %522 = getelementptr inbounds i8, ptr %489, i64 20
  %523 = load i16, ptr %522, align 2, !tbaa !44
  %524 = getelementptr inbounds i8, ptr %493, i64 34
  store i16 %523, ptr %524, align 2, !tbaa !44
  %525 = getelementptr inbounds i8, ptr %489, i64 22
  %526 = load i16, ptr %525, align 2, !tbaa !44
  %527 = getelementptr inbounds i8, ptr %493, i64 50
  store i16 %526, ptr %527, align 2, !tbaa !44
  %528 = getelementptr inbounds i8, ptr %489, i64 24
  %529 = load i16, ptr %528, align 2, !tbaa !44
  %530 = getelementptr inbounds i8, ptr %493, i64 66
  store i16 %529, ptr %530, align 2, !tbaa !44
  %531 = getelementptr inbounds i8, ptr %489, i64 26
  %532 = load i16, ptr %531, align 2, !tbaa !44
  %533 = getelementptr inbounds i8, ptr %493, i64 82
  store i16 %532, ptr %533, align 2, !tbaa !44
  %534 = getelementptr inbounds i8, ptr %489, i64 28
  %535 = load i16, ptr %534, align 2, !tbaa !44
  %536 = getelementptr inbounds i8, ptr %493, i64 98
  store i16 %535, ptr %536, align 2, !tbaa !44
  %537 = getelementptr inbounds i8, ptr %489, i64 30
  %538 = load i16, ptr %537, align 2, !tbaa !44
  %539 = getelementptr inbounds i8, ptr %493, i64 114
  store i16 %538, ptr %539, align 2, !tbaa !44
  %540 = getelementptr inbounds i8, ptr %489, i64 32
  %541 = load i16, ptr %540, align 2, !tbaa !44
  %542 = getelementptr inbounds i8, ptr %493, i64 4
  store i16 %541, ptr %542, align 2, !tbaa !44
  %543 = getelementptr inbounds i8, ptr %489, i64 34
  %544 = load i16, ptr %543, align 2, !tbaa !44
  %545 = getelementptr inbounds i8, ptr %493, i64 20
  store i16 %544, ptr %545, align 2, !tbaa !44
  %546 = getelementptr inbounds i8, ptr %489, i64 36
  %547 = load i16, ptr %546, align 2, !tbaa !44
  %548 = getelementptr inbounds i8, ptr %493, i64 36
  store i16 %547, ptr %548, align 2, !tbaa !44
  %549 = getelementptr inbounds i8, ptr %489, i64 38
  %550 = load i16, ptr %549, align 2, !tbaa !44
  %551 = getelementptr inbounds i8, ptr %493, i64 52
  store i16 %550, ptr %551, align 2, !tbaa !44
  %552 = getelementptr inbounds i8, ptr %489, i64 40
  %553 = load i16, ptr %552, align 2, !tbaa !44
  %554 = getelementptr inbounds i8, ptr %493, i64 68
  store i16 %553, ptr %554, align 2, !tbaa !44
  %555 = getelementptr inbounds i8, ptr %489, i64 42
  %556 = load i16, ptr %555, align 2, !tbaa !44
  %557 = getelementptr inbounds i8, ptr %493, i64 84
  store i16 %556, ptr %557, align 2, !tbaa !44
  %558 = getelementptr inbounds i8, ptr %489, i64 44
  %559 = load i16, ptr %558, align 2, !tbaa !44
  %560 = getelementptr inbounds i8, ptr %493, i64 100
  store i16 %559, ptr %560, align 2, !tbaa !44
  %561 = getelementptr inbounds i8, ptr %489, i64 46
  %562 = load i16, ptr %561, align 2, !tbaa !44
  %563 = getelementptr inbounds i8, ptr %493, i64 116
  store i16 %562, ptr %563, align 2, !tbaa !44
  %564 = getelementptr inbounds i8, ptr %489, i64 48
  %565 = load i16, ptr %564, align 2, !tbaa !44
  %566 = getelementptr inbounds i8, ptr %493, i64 6
  store i16 %565, ptr %566, align 2, !tbaa !44
  %567 = getelementptr inbounds i8, ptr %489, i64 50
  %568 = load i16, ptr %567, align 2, !tbaa !44
  %569 = getelementptr inbounds i8, ptr %493, i64 22
  store i16 %568, ptr %569, align 2, !tbaa !44
  %570 = getelementptr inbounds i8, ptr %489, i64 52
  %571 = load i16, ptr %570, align 2, !tbaa !44
  %572 = getelementptr inbounds i8, ptr %493, i64 38
  store i16 %571, ptr %572, align 2, !tbaa !44
  %573 = getelementptr inbounds i8, ptr %489, i64 54
  %574 = load i16, ptr %573, align 2, !tbaa !44
  %575 = getelementptr inbounds i8, ptr %493, i64 54
  store i16 %574, ptr %575, align 2, !tbaa !44
  %576 = getelementptr inbounds i8, ptr %489, i64 56
  %577 = load i16, ptr %576, align 2, !tbaa !44
  %578 = getelementptr inbounds i8, ptr %493, i64 70
  store i16 %577, ptr %578, align 2, !tbaa !44
  %579 = getelementptr inbounds i8, ptr %489, i64 58
  %580 = load i16, ptr %579, align 2, !tbaa !44
  %581 = getelementptr inbounds i8, ptr %493, i64 86
  store i16 %580, ptr %581, align 2, !tbaa !44
  %582 = getelementptr inbounds i8, ptr %489, i64 60
  %583 = load i16, ptr %582, align 2, !tbaa !44
  %584 = getelementptr inbounds i8, ptr %493, i64 102
  store i16 %583, ptr %584, align 2, !tbaa !44
  %585 = getelementptr inbounds i8, ptr %489, i64 62
  %586 = load i16, ptr %585, align 2, !tbaa !44
  %587 = getelementptr inbounds i8, ptr %493, i64 118
  store i16 %586, ptr %587, align 2, !tbaa !44
  %588 = getelementptr inbounds i8, ptr %489, i64 64
  %589 = load i16, ptr %588, align 2, !tbaa !44
  %590 = getelementptr inbounds i8, ptr %493, i64 8
  store i16 %589, ptr %590, align 2, !tbaa !44
  %591 = getelementptr inbounds i8, ptr %489, i64 66
  %592 = load i16, ptr %591, align 2, !tbaa !44
  %593 = getelementptr inbounds i8, ptr %493, i64 24
  store i16 %592, ptr %593, align 2, !tbaa !44
  %594 = getelementptr inbounds i8, ptr %489, i64 68
  %595 = load i16, ptr %594, align 2, !tbaa !44
  %596 = getelementptr inbounds i8, ptr %493, i64 40
  store i16 %595, ptr %596, align 2, !tbaa !44
  %597 = getelementptr inbounds i8, ptr %489, i64 70
  %598 = load i16, ptr %597, align 2, !tbaa !44
  %599 = getelementptr inbounds i8, ptr %493, i64 56
  store i16 %598, ptr %599, align 2, !tbaa !44
  %600 = getelementptr inbounds i8, ptr %489, i64 72
  %601 = load i16, ptr %600, align 2, !tbaa !44
  %602 = getelementptr inbounds i8, ptr %493, i64 72
  store i16 %601, ptr %602, align 2, !tbaa !44
  %603 = getelementptr inbounds i8, ptr %489, i64 74
  %604 = load i16, ptr %603, align 2, !tbaa !44
  %605 = getelementptr inbounds i8, ptr %493, i64 88
  store i16 %604, ptr %605, align 2, !tbaa !44
  %606 = getelementptr inbounds i8, ptr %489, i64 76
  %607 = load i16, ptr %606, align 2, !tbaa !44
  %608 = getelementptr inbounds i8, ptr %493, i64 104
  store i16 %607, ptr %608, align 2, !tbaa !44
  %609 = getelementptr inbounds i8, ptr %489, i64 78
  %610 = load i16, ptr %609, align 2, !tbaa !44
  %611 = getelementptr inbounds i8, ptr %493, i64 120
  store i16 %610, ptr %611, align 2, !tbaa !44
  %612 = getelementptr inbounds i8, ptr %489, i64 80
  %613 = load i16, ptr %612, align 2, !tbaa !44
  %614 = getelementptr inbounds i8, ptr %493, i64 10
  store i16 %613, ptr %614, align 2, !tbaa !44
  %615 = getelementptr inbounds i8, ptr %489, i64 82
  %616 = load i16, ptr %615, align 2, !tbaa !44
  %617 = getelementptr inbounds i8, ptr %493, i64 26
  store i16 %616, ptr %617, align 2, !tbaa !44
  %618 = getelementptr inbounds i8, ptr %489, i64 84
  %619 = load i16, ptr %618, align 2, !tbaa !44
  %620 = getelementptr inbounds i8, ptr %493, i64 42
  store i16 %619, ptr %620, align 2, !tbaa !44
  %621 = getelementptr inbounds i8, ptr %489, i64 86
  %622 = load i16, ptr %621, align 2, !tbaa !44
  %623 = getelementptr inbounds i8, ptr %493, i64 58
  store i16 %622, ptr %623, align 2, !tbaa !44
  %624 = getelementptr inbounds i8, ptr %489, i64 88
  %625 = load i16, ptr %624, align 2, !tbaa !44
  %626 = getelementptr inbounds i8, ptr %493, i64 74
  store i16 %625, ptr %626, align 2, !tbaa !44
  %627 = getelementptr inbounds i8, ptr %489, i64 90
  %628 = load i16, ptr %627, align 2, !tbaa !44
  %629 = getelementptr inbounds i8, ptr %493, i64 90
  store i16 %628, ptr %629, align 2, !tbaa !44
  %630 = getelementptr inbounds i8, ptr %489, i64 92
  %631 = load i16, ptr %630, align 2, !tbaa !44
  %632 = getelementptr inbounds i8, ptr %493, i64 106
  store i16 %631, ptr %632, align 2, !tbaa !44
  %633 = getelementptr inbounds i8, ptr %489, i64 94
  %634 = load i16, ptr %633, align 2, !tbaa !44
  %635 = getelementptr inbounds i8, ptr %493, i64 122
  store i16 %634, ptr %635, align 2, !tbaa !44
  %636 = getelementptr inbounds i8, ptr %489, i64 96
  %637 = load i16, ptr %636, align 2, !tbaa !44
  %638 = getelementptr inbounds i8, ptr %493, i64 12
  store i16 %637, ptr %638, align 2, !tbaa !44
  %639 = getelementptr inbounds i8, ptr %489, i64 98
  %640 = load i16, ptr %639, align 2, !tbaa !44
  %641 = getelementptr inbounds i8, ptr %493, i64 28
  store i16 %640, ptr %641, align 2, !tbaa !44
  %642 = getelementptr inbounds i8, ptr %489, i64 100
  %643 = load i16, ptr %642, align 2, !tbaa !44
  %644 = getelementptr inbounds i8, ptr %493, i64 44
  store i16 %643, ptr %644, align 2, !tbaa !44
  %645 = getelementptr inbounds i8, ptr %489, i64 102
  %646 = load i16, ptr %645, align 2, !tbaa !44
  %647 = getelementptr inbounds i8, ptr %493, i64 60
  store i16 %646, ptr %647, align 2, !tbaa !44
  %648 = getelementptr inbounds i8, ptr %489, i64 104
  %649 = load i16, ptr %648, align 2, !tbaa !44
  %650 = getelementptr inbounds i8, ptr %493, i64 76
  store i16 %649, ptr %650, align 2, !tbaa !44
  %651 = getelementptr inbounds i8, ptr %489, i64 106
  %652 = load i16, ptr %651, align 2, !tbaa !44
  %653 = getelementptr inbounds i8, ptr %493, i64 92
  store i16 %652, ptr %653, align 2, !tbaa !44
  %654 = getelementptr inbounds i8, ptr %489, i64 108
  %655 = load i16, ptr %654, align 2, !tbaa !44
  %656 = getelementptr inbounds i8, ptr %493, i64 108
  store i16 %655, ptr %656, align 2, !tbaa !44
  %657 = getelementptr inbounds i8, ptr %489, i64 110
  %658 = load i16, ptr %657, align 2, !tbaa !44
  %659 = getelementptr inbounds i8, ptr %493, i64 124
  store i16 %658, ptr %659, align 2, !tbaa !44
  %660 = getelementptr inbounds i8, ptr %489, i64 112
  %661 = load i16, ptr %660, align 2, !tbaa !44
  %662 = getelementptr inbounds i8, ptr %493, i64 14
  store i16 %661, ptr %662, align 2, !tbaa !44
  %663 = getelementptr inbounds i8, ptr %489, i64 114
  %664 = load i16, ptr %663, align 2, !tbaa !44
  %665 = getelementptr inbounds i8, ptr %493, i64 30
  store i16 %664, ptr %665, align 2, !tbaa !44
  %666 = getelementptr inbounds i8, ptr %489, i64 116
  %667 = load i16, ptr %666, align 2, !tbaa !44
  %668 = getelementptr inbounds i8, ptr %493, i64 46
  store i16 %667, ptr %668, align 2, !tbaa !44
  %669 = getelementptr inbounds i8, ptr %489, i64 118
  %670 = load i16, ptr %669, align 2, !tbaa !44
  %671 = getelementptr inbounds i8, ptr %493, i64 62
  store i16 %670, ptr %671, align 2, !tbaa !44
  %672 = getelementptr inbounds i8, ptr %489, i64 120
  %673 = load i16, ptr %672, align 2, !tbaa !44
  %674 = getelementptr inbounds i8, ptr %493, i64 78
  store i16 %673, ptr %674, align 2, !tbaa !44
  %675 = getelementptr inbounds i8, ptr %489, i64 122
  %676 = load i16, ptr %675, align 2, !tbaa !44
  %677 = getelementptr inbounds i8, ptr %493, i64 94
  store i16 %676, ptr %677, align 2, !tbaa !44
  %678 = getelementptr inbounds i8, ptr %489, i64 124
  %679 = load i16, ptr %678, align 2, !tbaa !44
  %680 = getelementptr inbounds i8, ptr %493, i64 110
  store i16 %679, ptr %680, align 2, !tbaa !44
  %681 = getelementptr inbounds i8, ptr %489, i64 126
  %682 = load i16, ptr %681, align 2, !tbaa !44
  %683 = getelementptr inbounds i8, ptr %493, i64 126
  store i16 %682, ptr %683, align 2, !tbaa !44
  %684 = add nuw nsw i64 %486, 1
  %685 = icmp eq i64 %684, %484
  br i1 %685, label %686, label %485

686:                                              ; preds = %485, %472
  %687 = add i32 %480, %473
  %688 = load i32, ptr %445, align 4, !tbaa !25
  %689 = icmp ult i32 %687, %688
  br i1 %689, label %472, label %690

690:                                              ; preds = %686
  %691 = load i32, ptr %444, align 4, !tbaa !29
  br label %692

692:                                              ; preds = %690, %462
  %693 = phi i32 [ %691, %690 ], [ %463, %462 ]
  %694 = phi i32 [ %688, %690 ], [ 0, %462 ]
  %695 = add nuw nsw i64 %465, 1
  %696 = sext i32 %693 to i64
  %697 = icmp slt i64 %695, %696
  br i1 %697, label %462, label %698, !llvm.loop !48

698:                                              ; preds = %692, %459, %449
  %699 = phi i32 [ %457, %449 ], [ %457, %459 ], [ %693, %692 ]
  %700 = add i32 %699, %451
  %701 = load i32, ptr %439, align 8, !tbaa !28
  %702 = icmp ult i32 %700, %701
  br i1 %702, label %449, label %703

703:                                              ; preds = %698
  %704 = load i32, ptr %428, align 4, !tbaa !34
  br label %705

705:                                              ; preds = %703, %434
  %706 = phi i32 [ %704, %703 ], [ %435, %434 ]
  %707 = add nuw nsw i64 %436, 1
  %708 = sext i32 %706 to i64
  %709 = icmp slt i64 %707, %708
  br i1 %709, label %434, label %3848

710:                                              ; preds = %4
  %711 = getelementptr inbounds i8, ptr %1, i64 48
  %712 = load i32, ptr %711, align 8, !tbaa !42
  %713 = getelementptr inbounds i8, ptr %1, i64 312
  %714 = load i32, ptr %713, align 8, !tbaa !45
  %715 = shl nsw i32 %714, 3
  %716 = udiv i32 %712, %715
  %717 = getelementptr inbounds i8, ptr %1, i64 52
  %718 = load i32, ptr %717, align 4, !tbaa !43
  %719 = getelementptr inbounds i8, ptr %1, i64 316
  %720 = load i32, ptr %719, align 4, !tbaa !47
  %721 = shl nsw i32 %720, 3
  %722 = udiv i32 %718, %721
  %723 = getelementptr inbounds i8, ptr %1, i64 76
  %724 = load i32, ptr %723, align 4, !tbaa !34
  %725 = icmp sgt i32 %724, 0
  br i1 %725, label %726, label %3848

726:                                              ; preds = %710
  %727 = getelementptr inbounds i8, ptr %1, i64 88
  %728 = getelementptr inbounds i8, ptr %0, i64 8
  br label %729

729:                                              ; preds = %1748, %726
  %730 = phi i32 [ %724, %726 ], [ %1749, %1748 ]
  %731 = phi i64 [ 0, %726 ], [ %1750, %1748 ]
  %732 = load ptr, ptr %727, align 8, !tbaa !35
  %733 = getelementptr inbounds %struct.jpeg_component_info, ptr %732, i64 %731
  %734 = getelementptr inbounds i8, ptr %733, i64 8
  %735 = load i32, ptr %734, align 8, !tbaa !27
  %736 = mul i32 %735, %716
  %737 = getelementptr inbounds i8, ptr %733, i64 12
  %738 = load i32, ptr %737, align 4, !tbaa !29
  %739 = mul i32 %738, %722
  %740 = freeze i32 %739
  %741 = getelementptr inbounds i8, ptr %733, i64 32
  %742 = load i32, ptr %741, align 8, !tbaa !28
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %1748, label %744

744:                                              ; preds = %729
  %745 = getelementptr inbounds ptr, ptr %6, i64 %731
  %746 = getelementptr inbounds i8, ptr %733, i64 28
  %747 = getelementptr inbounds ptr, ptr %2, i64 %731
  br label %748

748:                                              ; preds = %1741, %744
  %749 = phi i32 [ %738, %744 ], [ %1742, %1741 ]
  %750 = phi i32 [ 0, %744 ], [ %1743, %1741 ]
  %751 = load ptr, ptr %728, align 8, !tbaa !19
  %752 = getelementptr inbounds i8, ptr %751, i64 64
  %753 = load ptr, ptr %752, align 8, !tbaa !46
  %754 = load ptr, ptr %745, align 8, !tbaa !30
  %755 = tail call ptr %753(ptr noundef %0, ptr noundef %754, i32 noundef signext %750, i32 noundef signext %749, i32 noundef signext 1) #4
  %756 = load i32, ptr %737, align 4, !tbaa !29
  %757 = icmp sgt i32 %756, 0
  br i1 %757, label %758, label %1741

758:                                              ; preds = %748
  %759 = load i32, ptr %746, align 4, !tbaa !25
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %1741, label %761

761:                                              ; preds = %758
  %762 = icmp ult i32 %750, %740
  br i1 %762, label %763, label %1269

763:                                              ; preds = %761, %1263
  %764 = phi i32 [ %1264, %1263 ], [ %756, %761 ]
  %765 = phi i32 [ %1265, %1263 ], [ 1, %761 ]
  %766 = phi i64 [ %1266, %1263 ], [ 0, %761 ]
  %767 = icmp eq i32 %765, 0
  br i1 %767, label %1263, label %768

768:                                              ; preds = %763
  %769 = trunc nuw nsw i64 %766 to i32
  %770 = add i32 %750, %769
  %771 = getelementptr inbounds ptr, ptr %755, i64 %766
  %772 = xor i32 %770, -1
  %773 = add i32 %740, %772
  %774 = zext i32 %773 to i64
  br label %775

775:                                              ; preds = %768, %1257
  %776 = phi i32 [ %1258, %1257 ], [ 0, %768 ]
  %777 = load ptr, ptr %728, align 8, !tbaa !19
  %778 = getelementptr inbounds i8, ptr %777, i64 64
  %779 = load ptr, ptr %778, align 8, !tbaa !46
  %780 = load ptr, ptr %747, align 8, !tbaa !30
  %781 = load i32, ptr %734, align 8, !tbaa !27
  %782 = tail call ptr %779(ptr noundef %0, ptr noundef %780, i32 noundef signext %776, i32 noundef signext %781, i32 noundef signext 0) #4
  %783 = load i32, ptr %734, align 8, !tbaa !27
  %784 = icmp sgt i32 %783, 0
  br i1 %784, label %785, label %1257

785:                                              ; preds = %775
  %786 = icmp ult i32 %776, %736
  %787 = load ptr, ptr %771, align 8, !tbaa !30
  %788 = zext nneg i32 %783 to i64
  br i1 %786, label %1022, label %789

789:                                              ; preds = %785, %789
  %790 = phi i64 [ %1020, %789 ], [ 0, %785 ]
  %791 = getelementptr inbounds ptr, ptr %782, i64 %790
  %792 = load ptr, ptr %791, align 8, !tbaa !30
  %793 = getelementptr inbounds [64 x i16], ptr %792, i64 %774
  %794 = trunc nuw nsw i64 %790 to i32
  %795 = add i32 %776, %794
  %796 = zext i32 %795 to i64
  %797 = getelementptr inbounds [64 x i16], ptr %787, i64 %796
  %798 = load i16, ptr %793, align 2, !tbaa !44
  store i16 %798, ptr %797, align 2, !tbaa !44
  %799 = getelementptr inbounds i8, ptr %793, i64 2
  %800 = load i16, ptr %799, align 2, !tbaa !44
  %801 = sub i16 0, %800
  %802 = getelementptr inbounds i8, ptr %797, i64 16
  store i16 %801, ptr %802, align 2, !tbaa !44
  %803 = getelementptr inbounds i8, ptr %793, i64 4
  %804 = load i16, ptr %803, align 2, !tbaa !44
  %805 = getelementptr inbounds i8, ptr %797, i64 32
  store i16 %804, ptr %805, align 2, !tbaa !44
  %806 = getelementptr inbounds i8, ptr %793, i64 6
  %807 = load i16, ptr %806, align 2, !tbaa !44
  %808 = sub i16 0, %807
  %809 = getelementptr inbounds i8, ptr %797, i64 48
  store i16 %808, ptr %809, align 2, !tbaa !44
  %810 = getelementptr inbounds i8, ptr %793, i64 8
  %811 = load i16, ptr %810, align 2, !tbaa !44
  %812 = getelementptr inbounds i8, ptr %797, i64 64
  store i16 %811, ptr %812, align 2, !tbaa !44
  %813 = getelementptr inbounds i8, ptr %793, i64 10
  %814 = load i16, ptr %813, align 2, !tbaa !44
  %815 = sub i16 0, %814
  %816 = getelementptr inbounds i8, ptr %797, i64 80
  store i16 %815, ptr %816, align 2, !tbaa !44
  %817 = getelementptr inbounds i8, ptr %793, i64 12
  %818 = load i16, ptr %817, align 2, !tbaa !44
  %819 = getelementptr inbounds i8, ptr %797, i64 96
  store i16 %818, ptr %819, align 2, !tbaa !44
  %820 = getelementptr inbounds i8, ptr %793, i64 14
  %821 = load i16, ptr %820, align 2, !tbaa !44
  %822 = sub i16 0, %821
  %823 = getelementptr inbounds i8, ptr %797, i64 112
  store i16 %822, ptr %823, align 2, !tbaa !44
  %824 = getelementptr inbounds i8, ptr %793, i64 16
  %825 = load i16, ptr %824, align 2, !tbaa !44
  %826 = getelementptr inbounds i8, ptr %797, i64 2
  store i16 %825, ptr %826, align 2, !tbaa !44
  %827 = getelementptr inbounds i8, ptr %793, i64 18
  %828 = load i16, ptr %827, align 2, !tbaa !44
  %829 = sub i16 0, %828
  %830 = getelementptr inbounds i8, ptr %797, i64 18
  store i16 %829, ptr %830, align 2, !tbaa !44
  %831 = getelementptr inbounds i8, ptr %793, i64 20
  %832 = load i16, ptr %831, align 2, !tbaa !44
  %833 = getelementptr inbounds i8, ptr %797, i64 34
  store i16 %832, ptr %833, align 2, !tbaa !44
  %834 = getelementptr inbounds i8, ptr %793, i64 22
  %835 = load i16, ptr %834, align 2, !tbaa !44
  %836 = sub i16 0, %835
  %837 = getelementptr inbounds i8, ptr %797, i64 50
  store i16 %836, ptr %837, align 2, !tbaa !44
  %838 = getelementptr inbounds i8, ptr %793, i64 24
  %839 = load i16, ptr %838, align 2, !tbaa !44
  %840 = getelementptr inbounds i8, ptr %797, i64 66
  store i16 %839, ptr %840, align 2, !tbaa !44
  %841 = getelementptr inbounds i8, ptr %793, i64 26
  %842 = load i16, ptr %841, align 2, !tbaa !44
  %843 = sub i16 0, %842
  %844 = getelementptr inbounds i8, ptr %797, i64 82
  store i16 %843, ptr %844, align 2, !tbaa !44
  %845 = getelementptr inbounds i8, ptr %793, i64 28
  %846 = load i16, ptr %845, align 2, !tbaa !44
  %847 = getelementptr inbounds i8, ptr %797, i64 98
  store i16 %846, ptr %847, align 2, !tbaa !44
  %848 = getelementptr inbounds i8, ptr %793, i64 30
  %849 = load i16, ptr %848, align 2, !tbaa !44
  %850 = sub i16 0, %849
  %851 = getelementptr inbounds i8, ptr %797, i64 114
  store i16 %850, ptr %851, align 2, !tbaa !44
  %852 = getelementptr inbounds i8, ptr %793, i64 32
  %853 = load i16, ptr %852, align 2, !tbaa !44
  %854 = getelementptr inbounds i8, ptr %797, i64 4
  store i16 %853, ptr %854, align 2, !tbaa !44
  %855 = getelementptr inbounds i8, ptr %793, i64 34
  %856 = load i16, ptr %855, align 2, !tbaa !44
  %857 = sub i16 0, %856
  %858 = getelementptr inbounds i8, ptr %797, i64 20
  store i16 %857, ptr %858, align 2, !tbaa !44
  %859 = getelementptr inbounds i8, ptr %793, i64 36
  %860 = load i16, ptr %859, align 2, !tbaa !44
  %861 = getelementptr inbounds i8, ptr %797, i64 36
  store i16 %860, ptr %861, align 2, !tbaa !44
  %862 = getelementptr inbounds i8, ptr %793, i64 38
  %863 = load i16, ptr %862, align 2, !tbaa !44
  %864 = sub i16 0, %863
  %865 = getelementptr inbounds i8, ptr %797, i64 52
  store i16 %864, ptr %865, align 2, !tbaa !44
  %866 = getelementptr inbounds i8, ptr %793, i64 40
  %867 = load i16, ptr %866, align 2, !tbaa !44
  %868 = getelementptr inbounds i8, ptr %797, i64 68
  store i16 %867, ptr %868, align 2, !tbaa !44
  %869 = getelementptr inbounds i8, ptr %793, i64 42
  %870 = load i16, ptr %869, align 2, !tbaa !44
  %871 = sub i16 0, %870
  %872 = getelementptr inbounds i8, ptr %797, i64 84
  store i16 %871, ptr %872, align 2, !tbaa !44
  %873 = getelementptr inbounds i8, ptr %793, i64 44
  %874 = load i16, ptr %873, align 2, !tbaa !44
  %875 = getelementptr inbounds i8, ptr %797, i64 100
  store i16 %874, ptr %875, align 2, !tbaa !44
  %876 = getelementptr inbounds i8, ptr %793, i64 46
  %877 = load i16, ptr %876, align 2, !tbaa !44
  %878 = sub i16 0, %877
  %879 = getelementptr inbounds i8, ptr %797, i64 116
  store i16 %878, ptr %879, align 2, !tbaa !44
  %880 = getelementptr inbounds i8, ptr %793, i64 48
  %881 = load i16, ptr %880, align 2, !tbaa !44
  %882 = getelementptr inbounds i8, ptr %797, i64 6
  store i16 %881, ptr %882, align 2, !tbaa !44
  %883 = getelementptr inbounds i8, ptr %793, i64 50
  %884 = load i16, ptr %883, align 2, !tbaa !44
  %885 = sub i16 0, %884
  %886 = getelementptr inbounds i8, ptr %797, i64 22
  store i16 %885, ptr %886, align 2, !tbaa !44
  %887 = getelementptr inbounds i8, ptr %793, i64 52
  %888 = load i16, ptr %887, align 2, !tbaa !44
  %889 = getelementptr inbounds i8, ptr %797, i64 38
  store i16 %888, ptr %889, align 2, !tbaa !44
  %890 = getelementptr inbounds i8, ptr %793, i64 54
  %891 = load i16, ptr %890, align 2, !tbaa !44
  %892 = sub i16 0, %891
  %893 = getelementptr inbounds i8, ptr %797, i64 54
  store i16 %892, ptr %893, align 2, !tbaa !44
  %894 = getelementptr inbounds i8, ptr %793, i64 56
  %895 = load i16, ptr %894, align 2, !tbaa !44
  %896 = getelementptr inbounds i8, ptr %797, i64 70
  store i16 %895, ptr %896, align 2, !tbaa !44
  %897 = getelementptr inbounds i8, ptr %793, i64 58
  %898 = load i16, ptr %897, align 2, !tbaa !44
  %899 = sub i16 0, %898
  %900 = getelementptr inbounds i8, ptr %797, i64 86
  store i16 %899, ptr %900, align 2, !tbaa !44
  %901 = getelementptr inbounds i8, ptr %793, i64 60
  %902 = load i16, ptr %901, align 2, !tbaa !44
  %903 = getelementptr inbounds i8, ptr %797, i64 102
  store i16 %902, ptr %903, align 2, !tbaa !44
  %904 = getelementptr inbounds i8, ptr %793, i64 62
  %905 = load i16, ptr %904, align 2, !tbaa !44
  %906 = sub i16 0, %905
  %907 = getelementptr inbounds i8, ptr %797, i64 118
  store i16 %906, ptr %907, align 2, !tbaa !44
  %908 = getelementptr inbounds i8, ptr %793, i64 64
  %909 = load i16, ptr %908, align 2, !tbaa !44
  %910 = getelementptr inbounds i8, ptr %797, i64 8
  store i16 %909, ptr %910, align 2, !tbaa !44
  %911 = getelementptr inbounds i8, ptr %793, i64 66
  %912 = load i16, ptr %911, align 2, !tbaa !44
  %913 = sub i16 0, %912
  %914 = getelementptr inbounds i8, ptr %797, i64 24
  store i16 %913, ptr %914, align 2, !tbaa !44
  %915 = getelementptr inbounds i8, ptr %793, i64 68
  %916 = load i16, ptr %915, align 2, !tbaa !44
  %917 = getelementptr inbounds i8, ptr %797, i64 40
  store i16 %916, ptr %917, align 2, !tbaa !44
  %918 = getelementptr inbounds i8, ptr %793, i64 70
  %919 = load i16, ptr %918, align 2, !tbaa !44
  %920 = sub i16 0, %919
  %921 = getelementptr inbounds i8, ptr %797, i64 56
  store i16 %920, ptr %921, align 2, !tbaa !44
  %922 = getelementptr inbounds i8, ptr %793, i64 72
  %923 = load i16, ptr %922, align 2, !tbaa !44
  %924 = getelementptr inbounds i8, ptr %797, i64 72
  store i16 %923, ptr %924, align 2, !tbaa !44
  %925 = getelementptr inbounds i8, ptr %793, i64 74
  %926 = load i16, ptr %925, align 2, !tbaa !44
  %927 = sub i16 0, %926
  %928 = getelementptr inbounds i8, ptr %797, i64 88
  store i16 %927, ptr %928, align 2, !tbaa !44
  %929 = getelementptr inbounds i8, ptr %793, i64 76
  %930 = load i16, ptr %929, align 2, !tbaa !44
  %931 = getelementptr inbounds i8, ptr %797, i64 104
  store i16 %930, ptr %931, align 2, !tbaa !44
  %932 = getelementptr inbounds i8, ptr %793, i64 78
  %933 = load i16, ptr %932, align 2, !tbaa !44
  %934 = sub i16 0, %933
  %935 = getelementptr inbounds i8, ptr %797, i64 120
  store i16 %934, ptr %935, align 2, !tbaa !44
  %936 = getelementptr inbounds i8, ptr %793, i64 80
  %937 = load i16, ptr %936, align 2, !tbaa !44
  %938 = getelementptr inbounds i8, ptr %797, i64 10
  store i16 %937, ptr %938, align 2, !tbaa !44
  %939 = getelementptr inbounds i8, ptr %793, i64 82
  %940 = load i16, ptr %939, align 2, !tbaa !44
  %941 = sub i16 0, %940
  %942 = getelementptr inbounds i8, ptr %797, i64 26
  store i16 %941, ptr %942, align 2, !tbaa !44
  %943 = getelementptr inbounds i8, ptr %793, i64 84
  %944 = load i16, ptr %943, align 2, !tbaa !44
  %945 = getelementptr inbounds i8, ptr %797, i64 42
  store i16 %944, ptr %945, align 2, !tbaa !44
  %946 = getelementptr inbounds i8, ptr %793, i64 86
  %947 = load i16, ptr %946, align 2, !tbaa !44
  %948 = sub i16 0, %947
  %949 = getelementptr inbounds i8, ptr %797, i64 58
  store i16 %948, ptr %949, align 2, !tbaa !44
  %950 = getelementptr inbounds i8, ptr %793, i64 88
  %951 = load i16, ptr %950, align 2, !tbaa !44
  %952 = getelementptr inbounds i8, ptr %797, i64 74
  store i16 %951, ptr %952, align 2, !tbaa !44
  %953 = getelementptr inbounds i8, ptr %793, i64 90
  %954 = load i16, ptr %953, align 2, !tbaa !44
  %955 = sub i16 0, %954
  %956 = getelementptr inbounds i8, ptr %797, i64 90
  store i16 %955, ptr %956, align 2, !tbaa !44
  %957 = getelementptr inbounds i8, ptr %793, i64 92
  %958 = load i16, ptr %957, align 2, !tbaa !44
  %959 = getelementptr inbounds i8, ptr %797, i64 106
  store i16 %958, ptr %959, align 2, !tbaa !44
  %960 = getelementptr inbounds i8, ptr %793, i64 94
  %961 = load i16, ptr %960, align 2, !tbaa !44
  %962 = sub i16 0, %961
  %963 = getelementptr inbounds i8, ptr %797, i64 122
  store i16 %962, ptr %963, align 2, !tbaa !44
  %964 = getelementptr inbounds i8, ptr %793, i64 96
  %965 = load i16, ptr %964, align 2, !tbaa !44
  %966 = getelementptr inbounds i8, ptr %797, i64 12
  store i16 %965, ptr %966, align 2, !tbaa !44
  %967 = getelementptr inbounds i8, ptr %793, i64 98
  %968 = load i16, ptr %967, align 2, !tbaa !44
  %969 = sub i16 0, %968
  %970 = getelementptr inbounds i8, ptr %797, i64 28
  store i16 %969, ptr %970, align 2, !tbaa !44
  %971 = getelementptr inbounds i8, ptr %793, i64 100
  %972 = load i16, ptr %971, align 2, !tbaa !44
  %973 = getelementptr inbounds i8, ptr %797, i64 44
  store i16 %972, ptr %973, align 2, !tbaa !44
  %974 = getelementptr inbounds i8, ptr %793, i64 102
  %975 = load i16, ptr %974, align 2, !tbaa !44
  %976 = sub i16 0, %975
  %977 = getelementptr inbounds i8, ptr %797, i64 60
  store i16 %976, ptr %977, align 2, !tbaa !44
  %978 = getelementptr inbounds i8, ptr %793, i64 104
  %979 = load i16, ptr %978, align 2, !tbaa !44
  %980 = getelementptr inbounds i8, ptr %797, i64 76
  store i16 %979, ptr %980, align 2, !tbaa !44
  %981 = getelementptr inbounds i8, ptr %793, i64 106
  %982 = load i16, ptr %981, align 2, !tbaa !44
  %983 = sub i16 0, %982
  %984 = getelementptr inbounds i8, ptr %797, i64 92
  store i16 %983, ptr %984, align 2, !tbaa !44
  %985 = getelementptr inbounds i8, ptr %793, i64 108
  %986 = load i16, ptr %985, align 2, !tbaa !44
  %987 = getelementptr inbounds i8, ptr %797, i64 108
  store i16 %986, ptr %987, align 2, !tbaa !44
  %988 = getelementptr inbounds i8, ptr %793, i64 110
  %989 = load i16, ptr %988, align 2, !tbaa !44
  %990 = sub i16 0, %989
  %991 = getelementptr inbounds i8, ptr %797, i64 124
  store i16 %990, ptr %991, align 2, !tbaa !44
  %992 = getelementptr inbounds i8, ptr %793, i64 112
  %993 = load i16, ptr %992, align 2, !tbaa !44
  %994 = getelementptr inbounds i8, ptr %797, i64 14
  store i16 %993, ptr %994, align 2, !tbaa !44
  %995 = getelementptr inbounds i8, ptr %793, i64 114
  %996 = load i16, ptr %995, align 2, !tbaa !44
  %997 = sub i16 0, %996
  %998 = getelementptr inbounds i8, ptr %797, i64 30
  store i16 %997, ptr %998, align 2, !tbaa !44
  %999 = getelementptr inbounds i8, ptr %793, i64 116
  %1000 = load i16, ptr %999, align 2, !tbaa !44
  %1001 = getelementptr inbounds i8, ptr %797, i64 46
  store i16 %1000, ptr %1001, align 2, !tbaa !44
  %1002 = getelementptr inbounds i8, ptr %793, i64 118
  %1003 = load i16, ptr %1002, align 2, !tbaa !44
  %1004 = sub i16 0, %1003
  %1005 = getelementptr inbounds i8, ptr %797, i64 62
  store i16 %1004, ptr %1005, align 2, !tbaa !44
  %1006 = getelementptr inbounds i8, ptr %793, i64 120
  %1007 = load i16, ptr %1006, align 2, !tbaa !44
  %1008 = getelementptr inbounds i8, ptr %797, i64 78
  store i16 %1007, ptr %1008, align 2, !tbaa !44
  %1009 = getelementptr inbounds i8, ptr %793, i64 122
  %1010 = load i16, ptr %1009, align 2, !tbaa !44
  %1011 = sub i16 0, %1010
  %1012 = getelementptr inbounds i8, ptr %797, i64 94
  store i16 %1011, ptr %1012, align 2, !tbaa !44
  %1013 = getelementptr inbounds i8, ptr %793, i64 124
  %1014 = load i16, ptr %1013, align 2, !tbaa !44
  %1015 = getelementptr inbounds i8, ptr %797, i64 110
  store i16 %1014, ptr %1015, align 2, !tbaa !44
  %1016 = getelementptr inbounds i8, ptr %793, i64 126
  %1017 = load i16, ptr %1016, align 2, !tbaa !44
  %1018 = sub i16 0, %1017
  %1019 = getelementptr inbounds i8, ptr %797, i64 126
  store i16 %1018, ptr %1019, align 2, !tbaa !44
  %1020 = add nuw nsw i64 %790, 1
  %1021 = icmp eq i64 %1020, %788
  br i1 %1021, label %1257, label %789

1022:                                             ; preds = %785, %1022
  %1023 = phi i64 [ %1255, %1022 ], [ 0, %785 ]
  %1024 = getelementptr inbounds ptr, ptr %782, i64 %1023
  %1025 = load ptr, ptr %1024, align 8, !tbaa !30
  %1026 = getelementptr inbounds [64 x i16], ptr %1025, i64 %774
  %1027 = trunc nuw nsw i64 %1023 to i32
  %1028 = add i32 %776, %1027
  %1029 = xor i32 %1028, -1
  %1030 = add i32 %736, %1029
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds [64 x i16], ptr %787, i64 %1031
  %1033 = load i16, ptr %1026, align 2, !tbaa !44
  store i16 %1033, ptr %1032, align 2, !tbaa !44
  %1034 = getelementptr inbounds i8, ptr %1026, i64 2
  %1035 = load i16, ptr %1034, align 2, !tbaa !44
  %1036 = sub i16 0, %1035
  %1037 = getelementptr inbounds i8, ptr %1032, i64 16
  store i16 %1036, ptr %1037, align 2, !tbaa !44
  %1038 = getelementptr inbounds i8, ptr %1026, i64 4
  %1039 = load i16, ptr %1038, align 2, !tbaa !44
  %1040 = getelementptr inbounds i8, ptr %1032, i64 32
  store i16 %1039, ptr %1040, align 2, !tbaa !44
  %1041 = getelementptr inbounds i8, ptr %1026, i64 6
  %1042 = load i16, ptr %1041, align 2, !tbaa !44
  %1043 = sub i16 0, %1042
  %1044 = getelementptr inbounds i8, ptr %1032, i64 48
  store i16 %1043, ptr %1044, align 2, !tbaa !44
  %1045 = getelementptr inbounds i8, ptr %1026, i64 8
  %1046 = load i16, ptr %1045, align 2, !tbaa !44
  %1047 = getelementptr inbounds i8, ptr %1032, i64 64
  store i16 %1046, ptr %1047, align 2, !tbaa !44
  %1048 = getelementptr inbounds i8, ptr %1026, i64 10
  %1049 = load i16, ptr %1048, align 2, !tbaa !44
  %1050 = sub i16 0, %1049
  %1051 = getelementptr inbounds i8, ptr %1032, i64 80
  store i16 %1050, ptr %1051, align 2, !tbaa !44
  %1052 = getelementptr inbounds i8, ptr %1026, i64 12
  %1053 = load i16, ptr %1052, align 2, !tbaa !44
  %1054 = getelementptr inbounds i8, ptr %1032, i64 96
  store i16 %1053, ptr %1054, align 2, !tbaa !44
  %1055 = getelementptr inbounds i8, ptr %1026, i64 14
  %1056 = load i16, ptr %1055, align 2, !tbaa !44
  %1057 = sub i16 0, %1056
  %1058 = getelementptr inbounds i8, ptr %1032, i64 112
  store i16 %1057, ptr %1058, align 2, !tbaa !44
  %1059 = getelementptr inbounds i8, ptr %1026, i64 16
  %1060 = load i16, ptr %1059, align 2, !tbaa !44
  %1061 = sub i16 0, %1060
  %1062 = getelementptr inbounds i8, ptr %1032, i64 2
  store i16 %1061, ptr %1062, align 2, !tbaa !44
  %1063 = getelementptr inbounds i8, ptr %1026, i64 18
  %1064 = load i16, ptr %1063, align 2, !tbaa !44
  %1065 = getelementptr inbounds i8, ptr %1032, i64 18
  store i16 %1064, ptr %1065, align 2, !tbaa !44
  %1066 = getelementptr inbounds i8, ptr %1026, i64 20
  %1067 = load i16, ptr %1066, align 2, !tbaa !44
  %1068 = sub i16 0, %1067
  %1069 = getelementptr inbounds i8, ptr %1032, i64 34
  store i16 %1068, ptr %1069, align 2, !tbaa !44
  %1070 = getelementptr inbounds i8, ptr %1026, i64 22
  %1071 = load i16, ptr %1070, align 2, !tbaa !44
  %1072 = getelementptr inbounds i8, ptr %1032, i64 50
  store i16 %1071, ptr %1072, align 2, !tbaa !44
  %1073 = getelementptr inbounds i8, ptr %1026, i64 24
  %1074 = load i16, ptr %1073, align 2, !tbaa !44
  %1075 = sub i16 0, %1074
  %1076 = getelementptr inbounds i8, ptr %1032, i64 66
  store i16 %1075, ptr %1076, align 2, !tbaa !44
  %1077 = getelementptr inbounds i8, ptr %1026, i64 26
  %1078 = load i16, ptr %1077, align 2, !tbaa !44
  %1079 = getelementptr inbounds i8, ptr %1032, i64 82
  store i16 %1078, ptr %1079, align 2, !tbaa !44
  %1080 = getelementptr inbounds i8, ptr %1026, i64 28
  %1081 = load i16, ptr %1080, align 2, !tbaa !44
  %1082 = sub i16 0, %1081
  %1083 = getelementptr inbounds i8, ptr %1032, i64 98
  store i16 %1082, ptr %1083, align 2, !tbaa !44
  %1084 = getelementptr inbounds i8, ptr %1026, i64 30
  %1085 = load i16, ptr %1084, align 2, !tbaa !44
  %1086 = getelementptr inbounds i8, ptr %1032, i64 114
  store i16 %1085, ptr %1086, align 2, !tbaa !44
  %1087 = getelementptr inbounds i8, ptr %1026, i64 32
  %1088 = load i16, ptr %1087, align 2, !tbaa !44
  %1089 = getelementptr inbounds i8, ptr %1032, i64 4
  store i16 %1088, ptr %1089, align 2, !tbaa !44
  %1090 = getelementptr inbounds i8, ptr %1026, i64 34
  %1091 = load i16, ptr %1090, align 2, !tbaa !44
  %1092 = sub i16 0, %1091
  %1093 = getelementptr inbounds i8, ptr %1032, i64 20
  store i16 %1092, ptr %1093, align 2, !tbaa !44
  %1094 = getelementptr inbounds i8, ptr %1026, i64 36
  %1095 = load i16, ptr %1094, align 2, !tbaa !44
  %1096 = getelementptr inbounds i8, ptr %1032, i64 36
  store i16 %1095, ptr %1096, align 2, !tbaa !44
  %1097 = getelementptr inbounds i8, ptr %1026, i64 38
  %1098 = load i16, ptr %1097, align 2, !tbaa !44
  %1099 = sub i16 0, %1098
  %1100 = getelementptr inbounds i8, ptr %1032, i64 52
  store i16 %1099, ptr %1100, align 2, !tbaa !44
  %1101 = getelementptr inbounds i8, ptr %1026, i64 40
  %1102 = load i16, ptr %1101, align 2, !tbaa !44
  %1103 = getelementptr inbounds i8, ptr %1032, i64 68
  store i16 %1102, ptr %1103, align 2, !tbaa !44
  %1104 = getelementptr inbounds i8, ptr %1026, i64 42
  %1105 = load i16, ptr %1104, align 2, !tbaa !44
  %1106 = sub i16 0, %1105
  %1107 = getelementptr inbounds i8, ptr %1032, i64 84
  store i16 %1106, ptr %1107, align 2, !tbaa !44
  %1108 = getelementptr inbounds i8, ptr %1026, i64 44
  %1109 = load i16, ptr %1108, align 2, !tbaa !44
  %1110 = getelementptr inbounds i8, ptr %1032, i64 100
  store i16 %1109, ptr %1110, align 2, !tbaa !44
  %1111 = getelementptr inbounds i8, ptr %1026, i64 46
  %1112 = load i16, ptr %1111, align 2, !tbaa !44
  %1113 = sub i16 0, %1112
  %1114 = getelementptr inbounds i8, ptr %1032, i64 116
  store i16 %1113, ptr %1114, align 2, !tbaa !44
  %1115 = getelementptr inbounds i8, ptr %1026, i64 48
  %1116 = load i16, ptr %1115, align 2, !tbaa !44
  %1117 = sub i16 0, %1116
  %1118 = getelementptr inbounds i8, ptr %1032, i64 6
  store i16 %1117, ptr %1118, align 2, !tbaa !44
  %1119 = getelementptr inbounds i8, ptr %1026, i64 50
  %1120 = load i16, ptr %1119, align 2, !tbaa !44
  %1121 = getelementptr inbounds i8, ptr %1032, i64 22
  store i16 %1120, ptr %1121, align 2, !tbaa !44
  %1122 = getelementptr inbounds i8, ptr %1026, i64 52
  %1123 = load i16, ptr %1122, align 2, !tbaa !44
  %1124 = sub i16 0, %1123
  %1125 = getelementptr inbounds i8, ptr %1032, i64 38
  store i16 %1124, ptr %1125, align 2, !tbaa !44
  %1126 = getelementptr inbounds i8, ptr %1026, i64 54
  %1127 = load i16, ptr %1126, align 2, !tbaa !44
  %1128 = getelementptr inbounds i8, ptr %1032, i64 54
  store i16 %1127, ptr %1128, align 2, !tbaa !44
  %1129 = getelementptr inbounds i8, ptr %1026, i64 56
  %1130 = load i16, ptr %1129, align 2, !tbaa !44
  %1131 = sub i16 0, %1130
  %1132 = getelementptr inbounds i8, ptr %1032, i64 70
  store i16 %1131, ptr %1132, align 2, !tbaa !44
  %1133 = getelementptr inbounds i8, ptr %1026, i64 58
  %1134 = load i16, ptr %1133, align 2, !tbaa !44
  %1135 = getelementptr inbounds i8, ptr %1032, i64 86
  store i16 %1134, ptr %1135, align 2, !tbaa !44
  %1136 = getelementptr inbounds i8, ptr %1026, i64 60
  %1137 = load i16, ptr %1136, align 2, !tbaa !44
  %1138 = sub i16 0, %1137
  %1139 = getelementptr inbounds i8, ptr %1032, i64 102
  store i16 %1138, ptr %1139, align 2, !tbaa !44
  %1140 = getelementptr inbounds i8, ptr %1026, i64 62
  %1141 = load i16, ptr %1140, align 2, !tbaa !44
  %1142 = getelementptr inbounds i8, ptr %1032, i64 118
  store i16 %1141, ptr %1142, align 2, !tbaa !44
  %1143 = getelementptr inbounds i8, ptr %1026, i64 64
  %1144 = load i16, ptr %1143, align 2, !tbaa !44
  %1145 = getelementptr inbounds i8, ptr %1032, i64 8
  store i16 %1144, ptr %1145, align 2, !tbaa !44
  %1146 = getelementptr inbounds i8, ptr %1026, i64 66
  %1147 = load i16, ptr %1146, align 2, !tbaa !44
  %1148 = sub i16 0, %1147
  %1149 = getelementptr inbounds i8, ptr %1032, i64 24
  store i16 %1148, ptr %1149, align 2, !tbaa !44
  %1150 = getelementptr inbounds i8, ptr %1026, i64 68
  %1151 = load i16, ptr %1150, align 2, !tbaa !44
  %1152 = getelementptr inbounds i8, ptr %1032, i64 40
  store i16 %1151, ptr %1152, align 2, !tbaa !44
  %1153 = getelementptr inbounds i8, ptr %1026, i64 70
  %1154 = load i16, ptr %1153, align 2, !tbaa !44
  %1155 = sub i16 0, %1154
  %1156 = getelementptr inbounds i8, ptr %1032, i64 56
  store i16 %1155, ptr %1156, align 2, !tbaa !44
  %1157 = getelementptr inbounds i8, ptr %1026, i64 72
  %1158 = load i16, ptr %1157, align 2, !tbaa !44
  %1159 = getelementptr inbounds i8, ptr %1032, i64 72
  store i16 %1158, ptr %1159, align 2, !tbaa !44
  %1160 = getelementptr inbounds i8, ptr %1026, i64 74
  %1161 = load i16, ptr %1160, align 2, !tbaa !44
  %1162 = sub i16 0, %1161
  %1163 = getelementptr inbounds i8, ptr %1032, i64 88
  store i16 %1162, ptr %1163, align 2, !tbaa !44
  %1164 = getelementptr inbounds i8, ptr %1026, i64 76
  %1165 = load i16, ptr %1164, align 2, !tbaa !44
  %1166 = getelementptr inbounds i8, ptr %1032, i64 104
  store i16 %1165, ptr %1166, align 2, !tbaa !44
  %1167 = getelementptr inbounds i8, ptr %1026, i64 78
  %1168 = load i16, ptr %1167, align 2, !tbaa !44
  %1169 = sub i16 0, %1168
  %1170 = getelementptr inbounds i8, ptr %1032, i64 120
  store i16 %1169, ptr %1170, align 2, !tbaa !44
  %1171 = getelementptr inbounds i8, ptr %1026, i64 80
  %1172 = load i16, ptr %1171, align 2, !tbaa !44
  %1173 = sub i16 0, %1172
  %1174 = getelementptr inbounds i8, ptr %1032, i64 10
  store i16 %1173, ptr %1174, align 2, !tbaa !44
  %1175 = getelementptr inbounds i8, ptr %1026, i64 82
  %1176 = load i16, ptr %1175, align 2, !tbaa !44
  %1177 = getelementptr inbounds i8, ptr %1032, i64 26
  store i16 %1176, ptr %1177, align 2, !tbaa !44
  %1178 = getelementptr inbounds i8, ptr %1026, i64 84
  %1179 = load i16, ptr %1178, align 2, !tbaa !44
  %1180 = sub i16 0, %1179
  %1181 = getelementptr inbounds i8, ptr %1032, i64 42
  store i16 %1180, ptr %1181, align 2, !tbaa !44
  %1182 = getelementptr inbounds i8, ptr %1026, i64 86
  %1183 = load i16, ptr %1182, align 2, !tbaa !44
  %1184 = getelementptr inbounds i8, ptr %1032, i64 58
  store i16 %1183, ptr %1184, align 2, !tbaa !44
  %1185 = getelementptr inbounds i8, ptr %1026, i64 88
  %1186 = load i16, ptr %1185, align 2, !tbaa !44
  %1187 = sub i16 0, %1186
  %1188 = getelementptr inbounds i8, ptr %1032, i64 74
  store i16 %1187, ptr %1188, align 2, !tbaa !44
  %1189 = getelementptr inbounds i8, ptr %1026, i64 90
  %1190 = load i16, ptr %1189, align 2, !tbaa !44
  %1191 = getelementptr inbounds i8, ptr %1032, i64 90
  store i16 %1190, ptr %1191, align 2, !tbaa !44
  %1192 = getelementptr inbounds i8, ptr %1026, i64 92
  %1193 = load i16, ptr %1192, align 2, !tbaa !44
  %1194 = sub i16 0, %1193
  %1195 = getelementptr inbounds i8, ptr %1032, i64 106
  store i16 %1194, ptr %1195, align 2, !tbaa !44
  %1196 = getelementptr inbounds i8, ptr %1026, i64 94
  %1197 = load i16, ptr %1196, align 2, !tbaa !44
  %1198 = getelementptr inbounds i8, ptr %1032, i64 122
  store i16 %1197, ptr %1198, align 2, !tbaa !44
  %1199 = getelementptr inbounds i8, ptr %1026, i64 96
  %1200 = load i16, ptr %1199, align 2, !tbaa !44
  %1201 = getelementptr inbounds i8, ptr %1032, i64 12
  store i16 %1200, ptr %1201, align 2, !tbaa !44
  %1202 = getelementptr inbounds i8, ptr %1026, i64 98
  %1203 = load i16, ptr %1202, align 2, !tbaa !44
  %1204 = sub i16 0, %1203
  %1205 = getelementptr inbounds i8, ptr %1032, i64 28
  store i16 %1204, ptr %1205, align 2, !tbaa !44
  %1206 = getelementptr inbounds i8, ptr %1026, i64 100
  %1207 = load i16, ptr %1206, align 2, !tbaa !44
  %1208 = getelementptr inbounds i8, ptr %1032, i64 44
  store i16 %1207, ptr %1208, align 2, !tbaa !44
  %1209 = getelementptr inbounds i8, ptr %1026, i64 102
  %1210 = load i16, ptr %1209, align 2, !tbaa !44
  %1211 = sub i16 0, %1210
  %1212 = getelementptr inbounds i8, ptr %1032, i64 60
  store i16 %1211, ptr %1212, align 2, !tbaa !44
  %1213 = getelementptr inbounds i8, ptr %1026, i64 104
  %1214 = load i16, ptr %1213, align 2, !tbaa !44
  %1215 = getelementptr inbounds i8, ptr %1032, i64 76
  store i16 %1214, ptr %1215, align 2, !tbaa !44
  %1216 = getelementptr inbounds i8, ptr %1026, i64 106
  %1217 = load i16, ptr %1216, align 2, !tbaa !44
  %1218 = sub i16 0, %1217
  %1219 = getelementptr inbounds i8, ptr %1032, i64 92
  store i16 %1218, ptr %1219, align 2, !tbaa !44
  %1220 = getelementptr inbounds i8, ptr %1026, i64 108
  %1221 = load i16, ptr %1220, align 2, !tbaa !44
  %1222 = getelementptr inbounds i8, ptr %1032, i64 108
  store i16 %1221, ptr %1222, align 2, !tbaa !44
  %1223 = getelementptr inbounds i8, ptr %1026, i64 110
  %1224 = load i16, ptr %1223, align 2, !tbaa !44
  %1225 = sub i16 0, %1224
  %1226 = getelementptr inbounds i8, ptr %1032, i64 124
  store i16 %1225, ptr %1226, align 2, !tbaa !44
  %1227 = getelementptr inbounds i8, ptr %1026, i64 112
  %1228 = load i16, ptr %1227, align 2, !tbaa !44
  %1229 = sub i16 0, %1228
  %1230 = getelementptr inbounds i8, ptr %1032, i64 14
  store i16 %1229, ptr %1230, align 2, !tbaa !44
  %1231 = getelementptr inbounds i8, ptr %1026, i64 114
  %1232 = load i16, ptr %1231, align 2, !tbaa !44
  %1233 = getelementptr inbounds i8, ptr %1032, i64 30
  store i16 %1232, ptr %1233, align 2, !tbaa !44
  %1234 = getelementptr inbounds i8, ptr %1026, i64 116
  %1235 = load i16, ptr %1234, align 2, !tbaa !44
  %1236 = sub i16 0, %1235
  %1237 = getelementptr inbounds i8, ptr %1032, i64 46
  store i16 %1236, ptr %1237, align 2, !tbaa !44
  %1238 = getelementptr inbounds i8, ptr %1026, i64 118
  %1239 = load i16, ptr %1238, align 2, !tbaa !44
  %1240 = getelementptr inbounds i8, ptr %1032, i64 62
  store i16 %1239, ptr %1240, align 2, !tbaa !44
  %1241 = getelementptr inbounds i8, ptr %1026, i64 120
  %1242 = load i16, ptr %1241, align 2, !tbaa !44
  %1243 = sub i16 0, %1242
  %1244 = getelementptr inbounds i8, ptr %1032, i64 78
  store i16 %1243, ptr %1244, align 2, !tbaa !44
  %1245 = getelementptr inbounds i8, ptr %1026, i64 122
  %1246 = load i16, ptr %1245, align 2, !tbaa !44
  %1247 = getelementptr inbounds i8, ptr %1032, i64 94
  store i16 %1246, ptr %1247, align 2, !tbaa !44
  %1248 = getelementptr inbounds i8, ptr %1026, i64 124
  %1249 = load i16, ptr %1248, align 2, !tbaa !44
  %1250 = sub i16 0, %1249
  %1251 = getelementptr inbounds i8, ptr %1032, i64 110
  store i16 %1250, ptr %1251, align 2, !tbaa !44
  %1252 = getelementptr inbounds i8, ptr %1026, i64 126
  %1253 = load i16, ptr %1252, align 2, !tbaa !44
  %1254 = getelementptr inbounds i8, ptr %1032, i64 126
  store i16 %1253, ptr %1254, align 2, !tbaa !44
  %1255 = add nuw nsw i64 %1023, 1
  %1256 = icmp eq i64 %1255, %788
  br i1 %1256, label %1257, label %1022

1257:                                             ; preds = %789, %1022, %775
  %1258 = add i32 %783, %776
  %1259 = load i32, ptr %746, align 4, !tbaa !25
  %1260 = icmp ult i32 %1258, %1259
  br i1 %1260, label %775, label %1261

1261:                                             ; preds = %1257
  %1262 = load i32, ptr %737, align 4, !tbaa !29
  br label %1263

1263:                                             ; preds = %1261, %763
  %1264 = phi i32 [ %764, %763 ], [ %1262, %1261 ]
  %1265 = phi i32 [ 0, %763 ], [ %1259, %1261 ]
  %1266 = add nuw nsw i64 %766, 1
  %1267 = sext i32 %1264 to i64
  %1268 = icmp slt i64 %1266, %1267
  br i1 %1268, label %763, label %1741, !llvm.loop !50

1269:                                             ; preds = %761, %1735
  %1270 = phi i32 [ %1736, %1735 ], [ %756, %761 ]
  %1271 = phi i32 [ %1737, %1735 ], [ 1, %761 ]
  %1272 = phi i64 [ %1738, %1735 ], [ 0, %761 ]
  %1273 = icmp eq i32 %1271, 0
  br i1 %1273, label %1735, label %1274

1274:                                             ; preds = %1269
  %1275 = trunc nuw nsw i64 %1272 to i32
  %1276 = add i32 %750, %1275
  %1277 = zext i32 %1276 to i64
  %1278 = getelementptr inbounds ptr, ptr %755, i64 %1272
  br label %1279

1279:                                             ; preds = %1274, %1729
  %1280 = phi i32 [ %1730, %1729 ], [ 0, %1274 ]
  %1281 = load ptr, ptr %728, align 8, !tbaa !19
  %1282 = getelementptr inbounds i8, ptr %1281, i64 64
  %1283 = load ptr, ptr %1282, align 8, !tbaa !46
  %1284 = load ptr, ptr %747, align 8, !tbaa !30
  %1285 = load i32, ptr %734, align 8, !tbaa !27
  %1286 = tail call ptr %1283(ptr noundef %0, ptr noundef %1284, i32 noundef signext %1280, i32 noundef signext %1285, i32 noundef signext 0) #4
  %1287 = load i32, ptr %734, align 8, !tbaa !27
  %1288 = icmp sgt i32 %1287, 0
  br i1 %1288, label %1289, label %1729

1289:                                             ; preds = %1279
  %1290 = icmp ult i32 %1280, %736
  %1291 = load ptr, ptr %1278, align 8, !tbaa !30
  %1292 = zext nneg i32 %1287 to i64
  br i1 %1290, label %1293, label %1528

1293:                                             ; preds = %1289, %1293
  %1294 = phi i64 [ %1526, %1293 ], [ 0, %1289 ]
  %1295 = getelementptr inbounds ptr, ptr %1286, i64 %1294
  %1296 = load ptr, ptr %1295, align 8, !tbaa !30
  %1297 = getelementptr inbounds [64 x i16], ptr %1296, i64 %1277
  %1298 = trunc nuw nsw i64 %1294 to i32
  %1299 = add i32 %1280, %1298
  %1300 = xor i32 %1299, -1
  %1301 = add i32 %736, %1300
  %1302 = zext i32 %1301 to i64
  %1303 = getelementptr inbounds [64 x i16], ptr %1291, i64 %1302
  %1304 = load i16, ptr %1297, align 2, !tbaa !44
  store i16 %1304, ptr %1303, align 2, !tbaa !44
  %1305 = getelementptr inbounds i8, ptr %1297, i64 2
  %1306 = load i16, ptr %1305, align 2, !tbaa !44
  %1307 = getelementptr inbounds i8, ptr %1303, i64 16
  store i16 %1306, ptr %1307, align 2, !tbaa !44
  %1308 = getelementptr inbounds i8, ptr %1297, i64 4
  %1309 = load i16, ptr %1308, align 2, !tbaa !44
  %1310 = getelementptr inbounds i8, ptr %1303, i64 32
  store i16 %1309, ptr %1310, align 2, !tbaa !44
  %1311 = getelementptr inbounds i8, ptr %1297, i64 6
  %1312 = load i16, ptr %1311, align 2, !tbaa !44
  %1313 = getelementptr inbounds i8, ptr %1303, i64 48
  store i16 %1312, ptr %1313, align 2, !tbaa !44
  %1314 = getelementptr inbounds i8, ptr %1297, i64 8
  %1315 = load i16, ptr %1314, align 2, !tbaa !44
  %1316 = getelementptr inbounds i8, ptr %1303, i64 64
  store i16 %1315, ptr %1316, align 2, !tbaa !44
  %1317 = getelementptr inbounds i8, ptr %1297, i64 10
  %1318 = load i16, ptr %1317, align 2, !tbaa !44
  %1319 = getelementptr inbounds i8, ptr %1303, i64 80
  store i16 %1318, ptr %1319, align 2, !tbaa !44
  %1320 = getelementptr inbounds i8, ptr %1297, i64 12
  %1321 = load i16, ptr %1320, align 2, !tbaa !44
  %1322 = getelementptr inbounds i8, ptr %1303, i64 96
  store i16 %1321, ptr %1322, align 2, !tbaa !44
  %1323 = getelementptr inbounds i8, ptr %1297, i64 14
  %1324 = load i16, ptr %1323, align 2, !tbaa !44
  %1325 = getelementptr inbounds i8, ptr %1303, i64 112
  store i16 %1324, ptr %1325, align 2, !tbaa !44
  %1326 = getelementptr inbounds i8, ptr %1297, i64 16
  %1327 = load i16, ptr %1326, align 2, !tbaa !44
  %1328 = sub i16 0, %1327
  %1329 = getelementptr inbounds i8, ptr %1303, i64 2
  store i16 %1328, ptr %1329, align 2, !tbaa !44
  %1330 = getelementptr inbounds i8, ptr %1297, i64 18
  %1331 = load i16, ptr %1330, align 2, !tbaa !44
  %1332 = sub i16 0, %1331
  %1333 = getelementptr inbounds i8, ptr %1303, i64 18
  store i16 %1332, ptr %1333, align 2, !tbaa !44
  %1334 = getelementptr inbounds i8, ptr %1297, i64 20
  %1335 = load i16, ptr %1334, align 2, !tbaa !44
  %1336 = sub i16 0, %1335
  %1337 = getelementptr inbounds i8, ptr %1303, i64 34
  store i16 %1336, ptr %1337, align 2, !tbaa !44
  %1338 = getelementptr inbounds i8, ptr %1297, i64 22
  %1339 = load i16, ptr %1338, align 2, !tbaa !44
  %1340 = sub i16 0, %1339
  %1341 = getelementptr inbounds i8, ptr %1303, i64 50
  store i16 %1340, ptr %1341, align 2, !tbaa !44
  %1342 = getelementptr inbounds i8, ptr %1297, i64 24
  %1343 = load i16, ptr %1342, align 2, !tbaa !44
  %1344 = sub i16 0, %1343
  %1345 = getelementptr inbounds i8, ptr %1303, i64 66
  store i16 %1344, ptr %1345, align 2, !tbaa !44
  %1346 = getelementptr inbounds i8, ptr %1297, i64 26
  %1347 = load i16, ptr %1346, align 2, !tbaa !44
  %1348 = sub i16 0, %1347
  %1349 = getelementptr inbounds i8, ptr %1303, i64 82
  store i16 %1348, ptr %1349, align 2, !tbaa !44
  %1350 = getelementptr inbounds i8, ptr %1297, i64 28
  %1351 = load i16, ptr %1350, align 2, !tbaa !44
  %1352 = sub i16 0, %1351
  %1353 = getelementptr inbounds i8, ptr %1303, i64 98
  store i16 %1352, ptr %1353, align 2, !tbaa !44
  %1354 = getelementptr inbounds i8, ptr %1297, i64 30
  %1355 = load i16, ptr %1354, align 2, !tbaa !44
  %1356 = sub i16 0, %1355
  %1357 = getelementptr inbounds i8, ptr %1303, i64 114
  store i16 %1356, ptr %1357, align 2, !tbaa !44
  %1358 = getelementptr inbounds i8, ptr %1297, i64 32
  %1359 = load i16, ptr %1358, align 2, !tbaa !44
  %1360 = getelementptr inbounds i8, ptr %1303, i64 4
  store i16 %1359, ptr %1360, align 2, !tbaa !44
  %1361 = getelementptr inbounds i8, ptr %1297, i64 34
  %1362 = load i16, ptr %1361, align 2, !tbaa !44
  %1363 = getelementptr inbounds i8, ptr %1303, i64 20
  store i16 %1362, ptr %1363, align 2, !tbaa !44
  %1364 = getelementptr inbounds i8, ptr %1297, i64 36
  %1365 = load i16, ptr %1364, align 2, !tbaa !44
  %1366 = getelementptr inbounds i8, ptr %1303, i64 36
  store i16 %1365, ptr %1366, align 2, !tbaa !44
  %1367 = getelementptr inbounds i8, ptr %1297, i64 38
  %1368 = load i16, ptr %1367, align 2, !tbaa !44
  %1369 = getelementptr inbounds i8, ptr %1303, i64 52
  store i16 %1368, ptr %1369, align 2, !tbaa !44
  %1370 = getelementptr inbounds i8, ptr %1297, i64 40
  %1371 = load i16, ptr %1370, align 2, !tbaa !44
  %1372 = getelementptr inbounds i8, ptr %1303, i64 68
  store i16 %1371, ptr %1372, align 2, !tbaa !44
  %1373 = getelementptr inbounds i8, ptr %1297, i64 42
  %1374 = load i16, ptr %1373, align 2, !tbaa !44
  %1375 = getelementptr inbounds i8, ptr %1303, i64 84
  store i16 %1374, ptr %1375, align 2, !tbaa !44
  %1376 = getelementptr inbounds i8, ptr %1297, i64 44
  %1377 = load i16, ptr %1376, align 2, !tbaa !44
  %1378 = getelementptr inbounds i8, ptr %1303, i64 100
  store i16 %1377, ptr %1378, align 2, !tbaa !44
  %1379 = getelementptr inbounds i8, ptr %1297, i64 46
  %1380 = load i16, ptr %1379, align 2, !tbaa !44
  %1381 = getelementptr inbounds i8, ptr %1303, i64 116
  store i16 %1380, ptr %1381, align 2, !tbaa !44
  %1382 = getelementptr inbounds i8, ptr %1297, i64 48
  %1383 = load i16, ptr %1382, align 2, !tbaa !44
  %1384 = sub i16 0, %1383
  %1385 = getelementptr inbounds i8, ptr %1303, i64 6
  store i16 %1384, ptr %1385, align 2, !tbaa !44
  %1386 = getelementptr inbounds i8, ptr %1297, i64 50
  %1387 = load i16, ptr %1386, align 2, !tbaa !44
  %1388 = sub i16 0, %1387
  %1389 = getelementptr inbounds i8, ptr %1303, i64 22
  store i16 %1388, ptr %1389, align 2, !tbaa !44
  %1390 = getelementptr inbounds i8, ptr %1297, i64 52
  %1391 = load i16, ptr %1390, align 2, !tbaa !44
  %1392 = sub i16 0, %1391
  %1393 = getelementptr inbounds i8, ptr %1303, i64 38
  store i16 %1392, ptr %1393, align 2, !tbaa !44
  %1394 = getelementptr inbounds i8, ptr %1297, i64 54
  %1395 = load i16, ptr %1394, align 2, !tbaa !44
  %1396 = sub i16 0, %1395
  %1397 = getelementptr inbounds i8, ptr %1303, i64 54
  store i16 %1396, ptr %1397, align 2, !tbaa !44
  %1398 = getelementptr inbounds i8, ptr %1297, i64 56
  %1399 = load i16, ptr %1398, align 2, !tbaa !44
  %1400 = sub i16 0, %1399
  %1401 = getelementptr inbounds i8, ptr %1303, i64 70
  store i16 %1400, ptr %1401, align 2, !tbaa !44
  %1402 = getelementptr inbounds i8, ptr %1297, i64 58
  %1403 = load i16, ptr %1402, align 2, !tbaa !44
  %1404 = sub i16 0, %1403
  %1405 = getelementptr inbounds i8, ptr %1303, i64 86
  store i16 %1404, ptr %1405, align 2, !tbaa !44
  %1406 = getelementptr inbounds i8, ptr %1297, i64 60
  %1407 = load i16, ptr %1406, align 2, !tbaa !44
  %1408 = sub i16 0, %1407
  %1409 = getelementptr inbounds i8, ptr %1303, i64 102
  store i16 %1408, ptr %1409, align 2, !tbaa !44
  %1410 = getelementptr inbounds i8, ptr %1297, i64 62
  %1411 = load i16, ptr %1410, align 2, !tbaa !44
  %1412 = sub i16 0, %1411
  %1413 = getelementptr inbounds i8, ptr %1303, i64 118
  store i16 %1412, ptr %1413, align 2, !tbaa !44
  %1414 = getelementptr inbounds i8, ptr %1297, i64 64
  %1415 = load i16, ptr %1414, align 2, !tbaa !44
  %1416 = getelementptr inbounds i8, ptr %1303, i64 8
  store i16 %1415, ptr %1416, align 2, !tbaa !44
  %1417 = getelementptr inbounds i8, ptr %1297, i64 66
  %1418 = load i16, ptr %1417, align 2, !tbaa !44
  %1419 = getelementptr inbounds i8, ptr %1303, i64 24
  store i16 %1418, ptr %1419, align 2, !tbaa !44
  %1420 = getelementptr inbounds i8, ptr %1297, i64 68
  %1421 = load i16, ptr %1420, align 2, !tbaa !44
  %1422 = getelementptr inbounds i8, ptr %1303, i64 40
  store i16 %1421, ptr %1422, align 2, !tbaa !44
  %1423 = getelementptr inbounds i8, ptr %1297, i64 70
  %1424 = load i16, ptr %1423, align 2, !tbaa !44
  %1425 = getelementptr inbounds i8, ptr %1303, i64 56
  store i16 %1424, ptr %1425, align 2, !tbaa !44
  %1426 = getelementptr inbounds i8, ptr %1297, i64 72
  %1427 = load i16, ptr %1426, align 2, !tbaa !44
  %1428 = getelementptr inbounds i8, ptr %1303, i64 72
  store i16 %1427, ptr %1428, align 2, !tbaa !44
  %1429 = getelementptr inbounds i8, ptr %1297, i64 74
  %1430 = load i16, ptr %1429, align 2, !tbaa !44
  %1431 = getelementptr inbounds i8, ptr %1303, i64 88
  store i16 %1430, ptr %1431, align 2, !tbaa !44
  %1432 = getelementptr inbounds i8, ptr %1297, i64 76
  %1433 = load i16, ptr %1432, align 2, !tbaa !44
  %1434 = getelementptr inbounds i8, ptr %1303, i64 104
  store i16 %1433, ptr %1434, align 2, !tbaa !44
  %1435 = getelementptr inbounds i8, ptr %1297, i64 78
  %1436 = load i16, ptr %1435, align 2, !tbaa !44
  %1437 = getelementptr inbounds i8, ptr %1303, i64 120
  store i16 %1436, ptr %1437, align 2, !tbaa !44
  %1438 = getelementptr inbounds i8, ptr %1297, i64 80
  %1439 = load i16, ptr %1438, align 2, !tbaa !44
  %1440 = sub i16 0, %1439
  %1441 = getelementptr inbounds i8, ptr %1303, i64 10
  store i16 %1440, ptr %1441, align 2, !tbaa !44
  %1442 = getelementptr inbounds i8, ptr %1297, i64 82
  %1443 = load i16, ptr %1442, align 2, !tbaa !44
  %1444 = sub i16 0, %1443
  %1445 = getelementptr inbounds i8, ptr %1303, i64 26
  store i16 %1444, ptr %1445, align 2, !tbaa !44
  %1446 = getelementptr inbounds i8, ptr %1297, i64 84
  %1447 = load i16, ptr %1446, align 2, !tbaa !44
  %1448 = sub i16 0, %1447
  %1449 = getelementptr inbounds i8, ptr %1303, i64 42
  store i16 %1448, ptr %1449, align 2, !tbaa !44
  %1450 = getelementptr inbounds i8, ptr %1297, i64 86
  %1451 = load i16, ptr %1450, align 2, !tbaa !44
  %1452 = sub i16 0, %1451
  %1453 = getelementptr inbounds i8, ptr %1303, i64 58
  store i16 %1452, ptr %1453, align 2, !tbaa !44
  %1454 = getelementptr inbounds i8, ptr %1297, i64 88
  %1455 = load i16, ptr %1454, align 2, !tbaa !44
  %1456 = sub i16 0, %1455
  %1457 = getelementptr inbounds i8, ptr %1303, i64 74
  store i16 %1456, ptr %1457, align 2, !tbaa !44
  %1458 = getelementptr inbounds i8, ptr %1297, i64 90
  %1459 = load i16, ptr %1458, align 2, !tbaa !44
  %1460 = sub i16 0, %1459
  %1461 = getelementptr inbounds i8, ptr %1303, i64 90
  store i16 %1460, ptr %1461, align 2, !tbaa !44
  %1462 = getelementptr inbounds i8, ptr %1297, i64 92
  %1463 = load i16, ptr %1462, align 2, !tbaa !44
  %1464 = sub i16 0, %1463
  %1465 = getelementptr inbounds i8, ptr %1303, i64 106
  store i16 %1464, ptr %1465, align 2, !tbaa !44
  %1466 = getelementptr inbounds i8, ptr %1297, i64 94
  %1467 = load i16, ptr %1466, align 2, !tbaa !44
  %1468 = sub i16 0, %1467
  %1469 = getelementptr inbounds i8, ptr %1303, i64 122
  store i16 %1468, ptr %1469, align 2, !tbaa !44
  %1470 = getelementptr inbounds i8, ptr %1297, i64 96
  %1471 = load i16, ptr %1470, align 2, !tbaa !44
  %1472 = getelementptr inbounds i8, ptr %1303, i64 12
  store i16 %1471, ptr %1472, align 2, !tbaa !44
  %1473 = getelementptr inbounds i8, ptr %1297, i64 98
  %1474 = load i16, ptr %1473, align 2, !tbaa !44
  %1475 = getelementptr inbounds i8, ptr %1303, i64 28
  store i16 %1474, ptr %1475, align 2, !tbaa !44
  %1476 = getelementptr inbounds i8, ptr %1297, i64 100
  %1477 = load i16, ptr %1476, align 2, !tbaa !44
  %1478 = getelementptr inbounds i8, ptr %1303, i64 44
  store i16 %1477, ptr %1478, align 2, !tbaa !44
  %1479 = getelementptr inbounds i8, ptr %1297, i64 102
  %1480 = load i16, ptr %1479, align 2, !tbaa !44
  %1481 = getelementptr inbounds i8, ptr %1303, i64 60
  store i16 %1480, ptr %1481, align 2, !tbaa !44
  %1482 = getelementptr inbounds i8, ptr %1297, i64 104
  %1483 = load i16, ptr %1482, align 2, !tbaa !44
  %1484 = getelementptr inbounds i8, ptr %1303, i64 76
  store i16 %1483, ptr %1484, align 2, !tbaa !44
  %1485 = getelementptr inbounds i8, ptr %1297, i64 106
  %1486 = load i16, ptr %1485, align 2, !tbaa !44
  %1487 = getelementptr inbounds i8, ptr %1303, i64 92
  store i16 %1486, ptr %1487, align 2, !tbaa !44
  %1488 = getelementptr inbounds i8, ptr %1297, i64 108
  %1489 = load i16, ptr %1488, align 2, !tbaa !44
  %1490 = getelementptr inbounds i8, ptr %1303, i64 108
  store i16 %1489, ptr %1490, align 2, !tbaa !44
  %1491 = getelementptr inbounds i8, ptr %1297, i64 110
  %1492 = load i16, ptr %1491, align 2, !tbaa !44
  %1493 = getelementptr inbounds i8, ptr %1303, i64 124
  store i16 %1492, ptr %1493, align 2, !tbaa !44
  %1494 = getelementptr inbounds i8, ptr %1297, i64 112
  %1495 = load i16, ptr %1494, align 2, !tbaa !44
  %1496 = sub i16 0, %1495
  %1497 = getelementptr inbounds i8, ptr %1303, i64 14
  store i16 %1496, ptr %1497, align 2, !tbaa !44
  %1498 = getelementptr inbounds i8, ptr %1297, i64 114
  %1499 = load i16, ptr %1498, align 2, !tbaa !44
  %1500 = sub i16 0, %1499
  %1501 = getelementptr inbounds i8, ptr %1303, i64 30
  store i16 %1500, ptr %1501, align 2, !tbaa !44
  %1502 = getelementptr inbounds i8, ptr %1297, i64 116
  %1503 = load i16, ptr %1502, align 2, !tbaa !44
  %1504 = sub i16 0, %1503
  %1505 = getelementptr inbounds i8, ptr %1303, i64 46
  store i16 %1504, ptr %1505, align 2, !tbaa !44
  %1506 = getelementptr inbounds i8, ptr %1297, i64 118
  %1507 = load i16, ptr %1506, align 2, !tbaa !44
  %1508 = sub i16 0, %1507
  %1509 = getelementptr inbounds i8, ptr %1303, i64 62
  store i16 %1508, ptr %1509, align 2, !tbaa !44
  %1510 = getelementptr inbounds i8, ptr %1297, i64 120
  %1511 = load i16, ptr %1510, align 2, !tbaa !44
  %1512 = sub i16 0, %1511
  %1513 = getelementptr inbounds i8, ptr %1303, i64 78
  store i16 %1512, ptr %1513, align 2, !tbaa !44
  %1514 = getelementptr inbounds i8, ptr %1297, i64 122
  %1515 = load i16, ptr %1514, align 2, !tbaa !44
  %1516 = sub i16 0, %1515
  %1517 = getelementptr inbounds i8, ptr %1303, i64 94
  store i16 %1516, ptr %1517, align 2, !tbaa !44
  %1518 = getelementptr inbounds i8, ptr %1297, i64 124
  %1519 = load i16, ptr %1518, align 2, !tbaa !44
  %1520 = sub i16 0, %1519
  %1521 = getelementptr inbounds i8, ptr %1303, i64 110
  store i16 %1520, ptr %1521, align 2, !tbaa !44
  %1522 = getelementptr inbounds i8, ptr %1297, i64 126
  %1523 = load i16, ptr %1522, align 2, !tbaa !44
  %1524 = sub i16 0, %1523
  %1525 = getelementptr inbounds i8, ptr %1303, i64 126
  store i16 %1524, ptr %1525, align 2, !tbaa !44
  %1526 = add nuw nsw i64 %1294, 1
  %1527 = icmp eq i64 %1526, %1292
  br i1 %1527, label %1729, label %1293

1528:                                             ; preds = %1289, %1528
  %1529 = phi i64 [ %1727, %1528 ], [ 0, %1289 ]
  %1530 = getelementptr inbounds ptr, ptr %1286, i64 %1529
  %1531 = load ptr, ptr %1530, align 8, !tbaa !30
  %1532 = getelementptr inbounds [64 x i16], ptr %1531, i64 %1277
  %1533 = trunc nuw nsw i64 %1529 to i32
  %1534 = add i32 %1280, %1533
  %1535 = zext i32 %1534 to i64
  %1536 = getelementptr inbounds [64 x i16], ptr %1291, i64 %1535
  %1537 = load i16, ptr %1532, align 2, !tbaa !44
  store i16 %1537, ptr %1536, align 2, !tbaa !44
  %1538 = getelementptr inbounds i8, ptr %1532, i64 2
  %1539 = load i16, ptr %1538, align 2, !tbaa !44
  %1540 = getelementptr inbounds i8, ptr %1536, i64 16
  store i16 %1539, ptr %1540, align 2, !tbaa !44
  %1541 = getelementptr inbounds i8, ptr %1532, i64 4
  %1542 = load i16, ptr %1541, align 2, !tbaa !44
  %1543 = getelementptr inbounds i8, ptr %1536, i64 32
  store i16 %1542, ptr %1543, align 2, !tbaa !44
  %1544 = getelementptr inbounds i8, ptr %1532, i64 6
  %1545 = load i16, ptr %1544, align 2, !tbaa !44
  %1546 = getelementptr inbounds i8, ptr %1536, i64 48
  store i16 %1545, ptr %1546, align 2, !tbaa !44
  %1547 = getelementptr inbounds i8, ptr %1532, i64 8
  %1548 = load i16, ptr %1547, align 2, !tbaa !44
  %1549 = getelementptr inbounds i8, ptr %1536, i64 64
  store i16 %1548, ptr %1549, align 2, !tbaa !44
  %1550 = getelementptr inbounds i8, ptr %1532, i64 10
  %1551 = load i16, ptr %1550, align 2, !tbaa !44
  %1552 = getelementptr inbounds i8, ptr %1536, i64 80
  store i16 %1551, ptr %1552, align 2, !tbaa !44
  %1553 = getelementptr inbounds i8, ptr %1532, i64 12
  %1554 = load i16, ptr %1553, align 2, !tbaa !44
  %1555 = getelementptr inbounds i8, ptr %1536, i64 96
  store i16 %1554, ptr %1555, align 2, !tbaa !44
  %1556 = getelementptr inbounds i8, ptr %1532, i64 14
  %1557 = load i16, ptr %1556, align 2, !tbaa !44
  %1558 = getelementptr inbounds i8, ptr %1536, i64 112
  store i16 %1557, ptr %1558, align 2, !tbaa !44
  %1559 = getelementptr inbounds i8, ptr %1532, i64 16
  %1560 = load i16, ptr %1559, align 2, !tbaa !44
  %1561 = getelementptr inbounds i8, ptr %1536, i64 2
  store i16 %1560, ptr %1561, align 2, !tbaa !44
  %1562 = getelementptr inbounds i8, ptr %1532, i64 18
  %1563 = load i16, ptr %1562, align 2, !tbaa !44
  %1564 = getelementptr inbounds i8, ptr %1536, i64 18
  store i16 %1563, ptr %1564, align 2, !tbaa !44
  %1565 = getelementptr inbounds i8, ptr %1532, i64 20
  %1566 = load i16, ptr %1565, align 2, !tbaa !44
  %1567 = getelementptr inbounds i8, ptr %1536, i64 34
  store i16 %1566, ptr %1567, align 2, !tbaa !44
  %1568 = getelementptr inbounds i8, ptr %1532, i64 22
  %1569 = load i16, ptr %1568, align 2, !tbaa !44
  %1570 = getelementptr inbounds i8, ptr %1536, i64 50
  store i16 %1569, ptr %1570, align 2, !tbaa !44
  %1571 = getelementptr inbounds i8, ptr %1532, i64 24
  %1572 = load i16, ptr %1571, align 2, !tbaa !44
  %1573 = getelementptr inbounds i8, ptr %1536, i64 66
  store i16 %1572, ptr %1573, align 2, !tbaa !44
  %1574 = getelementptr inbounds i8, ptr %1532, i64 26
  %1575 = load i16, ptr %1574, align 2, !tbaa !44
  %1576 = getelementptr inbounds i8, ptr %1536, i64 82
  store i16 %1575, ptr %1576, align 2, !tbaa !44
  %1577 = getelementptr inbounds i8, ptr %1532, i64 28
  %1578 = load i16, ptr %1577, align 2, !tbaa !44
  %1579 = getelementptr inbounds i8, ptr %1536, i64 98
  store i16 %1578, ptr %1579, align 2, !tbaa !44
  %1580 = getelementptr inbounds i8, ptr %1532, i64 30
  %1581 = load i16, ptr %1580, align 2, !tbaa !44
  %1582 = getelementptr inbounds i8, ptr %1536, i64 114
  store i16 %1581, ptr %1582, align 2, !tbaa !44
  %1583 = getelementptr inbounds i8, ptr %1532, i64 32
  %1584 = load i16, ptr %1583, align 2, !tbaa !44
  %1585 = getelementptr inbounds i8, ptr %1536, i64 4
  store i16 %1584, ptr %1585, align 2, !tbaa !44
  %1586 = getelementptr inbounds i8, ptr %1532, i64 34
  %1587 = load i16, ptr %1586, align 2, !tbaa !44
  %1588 = getelementptr inbounds i8, ptr %1536, i64 20
  store i16 %1587, ptr %1588, align 2, !tbaa !44
  %1589 = getelementptr inbounds i8, ptr %1532, i64 36
  %1590 = load i16, ptr %1589, align 2, !tbaa !44
  %1591 = getelementptr inbounds i8, ptr %1536, i64 36
  store i16 %1590, ptr %1591, align 2, !tbaa !44
  %1592 = getelementptr inbounds i8, ptr %1532, i64 38
  %1593 = load i16, ptr %1592, align 2, !tbaa !44
  %1594 = getelementptr inbounds i8, ptr %1536, i64 52
  store i16 %1593, ptr %1594, align 2, !tbaa !44
  %1595 = getelementptr inbounds i8, ptr %1532, i64 40
  %1596 = load i16, ptr %1595, align 2, !tbaa !44
  %1597 = getelementptr inbounds i8, ptr %1536, i64 68
  store i16 %1596, ptr %1597, align 2, !tbaa !44
  %1598 = getelementptr inbounds i8, ptr %1532, i64 42
  %1599 = load i16, ptr %1598, align 2, !tbaa !44
  %1600 = getelementptr inbounds i8, ptr %1536, i64 84
  store i16 %1599, ptr %1600, align 2, !tbaa !44
  %1601 = getelementptr inbounds i8, ptr %1532, i64 44
  %1602 = load i16, ptr %1601, align 2, !tbaa !44
  %1603 = getelementptr inbounds i8, ptr %1536, i64 100
  store i16 %1602, ptr %1603, align 2, !tbaa !44
  %1604 = getelementptr inbounds i8, ptr %1532, i64 46
  %1605 = load i16, ptr %1604, align 2, !tbaa !44
  %1606 = getelementptr inbounds i8, ptr %1536, i64 116
  store i16 %1605, ptr %1606, align 2, !tbaa !44
  %1607 = getelementptr inbounds i8, ptr %1532, i64 48
  %1608 = load i16, ptr %1607, align 2, !tbaa !44
  %1609 = getelementptr inbounds i8, ptr %1536, i64 6
  store i16 %1608, ptr %1609, align 2, !tbaa !44
  %1610 = getelementptr inbounds i8, ptr %1532, i64 50
  %1611 = load i16, ptr %1610, align 2, !tbaa !44
  %1612 = getelementptr inbounds i8, ptr %1536, i64 22
  store i16 %1611, ptr %1612, align 2, !tbaa !44
  %1613 = getelementptr inbounds i8, ptr %1532, i64 52
  %1614 = load i16, ptr %1613, align 2, !tbaa !44
  %1615 = getelementptr inbounds i8, ptr %1536, i64 38
  store i16 %1614, ptr %1615, align 2, !tbaa !44
  %1616 = getelementptr inbounds i8, ptr %1532, i64 54
  %1617 = load i16, ptr %1616, align 2, !tbaa !44
  %1618 = getelementptr inbounds i8, ptr %1536, i64 54
  store i16 %1617, ptr %1618, align 2, !tbaa !44
  %1619 = getelementptr inbounds i8, ptr %1532, i64 56
  %1620 = load i16, ptr %1619, align 2, !tbaa !44
  %1621 = getelementptr inbounds i8, ptr %1536, i64 70
  store i16 %1620, ptr %1621, align 2, !tbaa !44
  %1622 = getelementptr inbounds i8, ptr %1532, i64 58
  %1623 = load i16, ptr %1622, align 2, !tbaa !44
  %1624 = getelementptr inbounds i8, ptr %1536, i64 86
  store i16 %1623, ptr %1624, align 2, !tbaa !44
  %1625 = getelementptr inbounds i8, ptr %1532, i64 60
  %1626 = load i16, ptr %1625, align 2, !tbaa !44
  %1627 = getelementptr inbounds i8, ptr %1536, i64 102
  store i16 %1626, ptr %1627, align 2, !tbaa !44
  %1628 = getelementptr inbounds i8, ptr %1532, i64 62
  %1629 = load i16, ptr %1628, align 2, !tbaa !44
  %1630 = getelementptr inbounds i8, ptr %1536, i64 118
  store i16 %1629, ptr %1630, align 2, !tbaa !44
  %1631 = getelementptr inbounds i8, ptr %1532, i64 64
  %1632 = load i16, ptr %1631, align 2, !tbaa !44
  %1633 = getelementptr inbounds i8, ptr %1536, i64 8
  store i16 %1632, ptr %1633, align 2, !tbaa !44
  %1634 = getelementptr inbounds i8, ptr %1532, i64 66
  %1635 = load i16, ptr %1634, align 2, !tbaa !44
  %1636 = getelementptr inbounds i8, ptr %1536, i64 24
  store i16 %1635, ptr %1636, align 2, !tbaa !44
  %1637 = getelementptr inbounds i8, ptr %1532, i64 68
  %1638 = load i16, ptr %1637, align 2, !tbaa !44
  %1639 = getelementptr inbounds i8, ptr %1536, i64 40
  store i16 %1638, ptr %1639, align 2, !tbaa !44
  %1640 = getelementptr inbounds i8, ptr %1532, i64 70
  %1641 = load i16, ptr %1640, align 2, !tbaa !44
  %1642 = getelementptr inbounds i8, ptr %1536, i64 56
  store i16 %1641, ptr %1642, align 2, !tbaa !44
  %1643 = getelementptr inbounds i8, ptr %1532, i64 72
  %1644 = load i16, ptr %1643, align 2, !tbaa !44
  %1645 = getelementptr inbounds i8, ptr %1536, i64 72
  store i16 %1644, ptr %1645, align 2, !tbaa !44
  %1646 = getelementptr inbounds i8, ptr %1532, i64 74
  %1647 = load i16, ptr %1646, align 2, !tbaa !44
  %1648 = getelementptr inbounds i8, ptr %1536, i64 88
  store i16 %1647, ptr %1648, align 2, !tbaa !44
  %1649 = getelementptr inbounds i8, ptr %1532, i64 76
  %1650 = load i16, ptr %1649, align 2, !tbaa !44
  %1651 = getelementptr inbounds i8, ptr %1536, i64 104
  store i16 %1650, ptr %1651, align 2, !tbaa !44
  %1652 = getelementptr inbounds i8, ptr %1532, i64 78
  %1653 = load i16, ptr %1652, align 2, !tbaa !44
  %1654 = getelementptr inbounds i8, ptr %1536, i64 120
  store i16 %1653, ptr %1654, align 2, !tbaa !44
  %1655 = getelementptr inbounds i8, ptr %1532, i64 80
  %1656 = load i16, ptr %1655, align 2, !tbaa !44
  %1657 = getelementptr inbounds i8, ptr %1536, i64 10
  store i16 %1656, ptr %1657, align 2, !tbaa !44
  %1658 = getelementptr inbounds i8, ptr %1532, i64 82
  %1659 = load i16, ptr %1658, align 2, !tbaa !44
  %1660 = getelementptr inbounds i8, ptr %1536, i64 26
  store i16 %1659, ptr %1660, align 2, !tbaa !44
  %1661 = getelementptr inbounds i8, ptr %1532, i64 84
  %1662 = load i16, ptr %1661, align 2, !tbaa !44
  %1663 = getelementptr inbounds i8, ptr %1536, i64 42
  store i16 %1662, ptr %1663, align 2, !tbaa !44
  %1664 = getelementptr inbounds i8, ptr %1532, i64 86
  %1665 = load i16, ptr %1664, align 2, !tbaa !44
  %1666 = getelementptr inbounds i8, ptr %1536, i64 58
  store i16 %1665, ptr %1666, align 2, !tbaa !44
  %1667 = getelementptr inbounds i8, ptr %1532, i64 88
  %1668 = load i16, ptr %1667, align 2, !tbaa !44
  %1669 = getelementptr inbounds i8, ptr %1536, i64 74
  store i16 %1668, ptr %1669, align 2, !tbaa !44
  %1670 = getelementptr inbounds i8, ptr %1532, i64 90
  %1671 = load i16, ptr %1670, align 2, !tbaa !44
  %1672 = getelementptr inbounds i8, ptr %1536, i64 90
  store i16 %1671, ptr %1672, align 2, !tbaa !44
  %1673 = getelementptr inbounds i8, ptr %1532, i64 92
  %1674 = load i16, ptr %1673, align 2, !tbaa !44
  %1675 = getelementptr inbounds i8, ptr %1536, i64 106
  store i16 %1674, ptr %1675, align 2, !tbaa !44
  %1676 = getelementptr inbounds i8, ptr %1532, i64 94
  %1677 = load i16, ptr %1676, align 2, !tbaa !44
  %1678 = getelementptr inbounds i8, ptr %1536, i64 122
  store i16 %1677, ptr %1678, align 2, !tbaa !44
  %1679 = getelementptr inbounds i8, ptr %1532, i64 96
  %1680 = load i16, ptr %1679, align 2, !tbaa !44
  %1681 = getelementptr inbounds i8, ptr %1536, i64 12
  store i16 %1680, ptr %1681, align 2, !tbaa !44
  %1682 = getelementptr inbounds i8, ptr %1532, i64 98
  %1683 = load i16, ptr %1682, align 2, !tbaa !44
  %1684 = getelementptr inbounds i8, ptr %1536, i64 28
  store i16 %1683, ptr %1684, align 2, !tbaa !44
  %1685 = getelementptr inbounds i8, ptr %1532, i64 100
  %1686 = load i16, ptr %1685, align 2, !tbaa !44
  %1687 = getelementptr inbounds i8, ptr %1536, i64 44
  store i16 %1686, ptr %1687, align 2, !tbaa !44
  %1688 = getelementptr inbounds i8, ptr %1532, i64 102
  %1689 = load i16, ptr %1688, align 2, !tbaa !44
  %1690 = getelementptr inbounds i8, ptr %1536, i64 60
  store i16 %1689, ptr %1690, align 2, !tbaa !44
  %1691 = getelementptr inbounds i8, ptr %1532, i64 104
  %1692 = load i16, ptr %1691, align 2, !tbaa !44
  %1693 = getelementptr inbounds i8, ptr %1536, i64 76
  store i16 %1692, ptr %1693, align 2, !tbaa !44
  %1694 = getelementptr inbounds i8, ptr %1532, i64 106
  %1695 = load i16, ptr %1694, align 2, !tbaa !44
  %1696 = getelementptr inbounds i8, ptr %1536, i64 92
  store i16 %1695, ptr %1696, align 2, !tbaa !44
  %1697 = getelementptr inbounds i8, ptr %1532, i64 108
  %1698 = load i16, ptr %1697, align 2, !tbaa !44
  %1699 = getelementptr inbounds i8, ptr %1536, i64 108
  store i16 %1698, ptr %1699, align 2, !tbaa !44
  %1700 = getelementptr inbounds i8, ptr %1532, i64 110
  %1701 = load i16, ptr %1700, align 2, !tbaa !44
  %1702 = getelementptr inbounds i8, ptr %1536, i64 124
  store i16 %1701, ptr %1702, align 2, !tbaa !44
  %1703 = getelementptr inbounds i8, ptr %1532, i64 112
  %1704 = load i16, ptr %1703, align 2, !tbaa !44
  %1705 = getelementptr inbounds i8, ptr %1536, i64 14
  store i16 %1704, ptr %1705, align 2, !tbaa !44
  %1706 = getelementptr inbounds i8, ptr %1532, i64 114
  %1707 = load i16, ptr %1706, align 2, !tbaa !44
  %1708 = getelementptr inbounds i8, ptr %1536, i64 30
  store i16 %1707, ptr %1708, align 2, !tbaa !44
  %1709 = getelementptr inbounds i8, ptr %1532, i64 116
  %1710 = load i16, ptr %1709, align 2, !tbaa !44
  %1711 = getelementptr inbounds i8, ptr %1536, i64 46
  store i16 %1710, ptr %1711, align 2, !tbaa !44
  %1712 = getelementptr inbounds i8, ptr %1532, i64 118
  %1713 = load i16, ptr %1712, align 2, !tbaa !44
  %1714 = getelementptr inbounds i8, ptr %1536, i64 62
  store i16 %1713, ptr %1714, align 2, !tbaa !44
  %1715 = getelementptr inbounds i8, ptr %1532, i64 120
  %1716 = load i16, ptr %1715, align 2, !tbaa !44
  %1717 = getelementptr inbounds i8, ptr %1536, i64 78
  store i16 %1716, ptr %1717, align 2, !tbaa !44
  %1718 = getelementptr inbounds i8, ptr %1532, i64 122
  %1719 = load i16, ptr %1718, align 2, !tbaa !44
  %1720 = getelementptr inbounds i8, ptr %1536, i64 94
  store i16 %1719, ptr %1720, align 2, !tbaa !44
  %1721 = getelementptr inbounds i8, ptr %1532, i64 124
  %1722 = load i16, ptr %1721, align 2, !tbaa !44
  %1723 = getelementptr inbounds i8, ptr %1536, i64 110
  store i16 %1722, ptr %1723, align 2, !tbaa !44
  %1724 = getelementptr inbounds i8, ptr %1532, i64 126
  %1725 = load i16, ptr %1724, align 2, !tbaa !44
  %1726 = getelementptr inbounds i8, ptr %1536, i64 126
  store i16 %1725, ptr %1726, align 2, !tbaa !44
  %1727 = add nuw nsw i64 %1529, 1
  %1728 = icmp eq i64 %1727, %1292
  br i1 %1728, label %1729, label %1528

1729:                                             ; preds = %1528, %1293, %1279
  %1730 = add i32 %1287, %1280
  %1731 = load i32, ptr %746, align 4, !tbaa !25
  %1732 = icmp ult i32 %1730, %1731
  br i1 %1732, label %1279, label %1733

1733:                                             ; preds = %1729
  %1734 = load i32, ptr %737, align 4, !tbaa !29
  br label %1735

1735:                                             ; preds = %1733, %1269
  %1736 = phi i32 [ %1270, %1269 ], [ %1734, %1733 ]
  %1737 = phi i32 [ 0, %1269 ], [ %1731, %1733 ]
  %1738 = add nuw nsw i64 %1272, 1
  %1739 = sext i32 %1736 to i64
  %1740 = icmp slt i64 %1738, %1739
  br i1 %1740, label %1269, label %1741, !llvm.loop !50

1741:                                             ; preds = %1735, %1263, %758, %748
  %1742 = phi i32 [ %756, %748 ], [ %756, %758 ], [ %1264, %1263 ], [ %1736, %1735 ]
  %1743 = add i32 %1742, %750
  %1744 = load i32, ptr %741, align 8, !tbaa !28
  %1745 = icmp ult i32 %1743, %1744
  br i1 %1745, label %748, label %1746

1746:                                             ; preds = %1741
  %1747 = load i32, ptr %723, align 4, !tbaa !34
  br label %1748

1748:                                             ; preds = %1746, %729
  %1749 = phi i32 [ %1747, %1746 ], [ %730, %729 ]
  %1750 = add nuw nsw i64 %731, 1
  %1751 = sext i32 %1749 to i64
  %1752 = icmp slt i64 %1750, %1751
  br i1 %1752, label %729, label %3848

1753:                                             ; preds = %4
  %1754 = getelementptr inbounds i8, ptr %1, i64 48
  %1755 = load i32, ptr %1754, align 8, !tbaa !42
  %1756 = getelementptr inbounds i8, ptr %1, i64 312
  %1757 = load i32, ptr %1756, align 8, !tbaa !45
  %1758 = shl nsw i32 %1757, 3
  %1759 = udiv i32 %1755, %1758
  %1760 = getelementptr inbounds i8, ptr %1, i64 76
  %1761 = load i32, ptr %1760, align 4, !tbaa !34
  %1762 = icmp sgt i32 %1761, 0
  br i1 %1762, label %1763, label %3848

1763:                                             ; preds = %1753
  %1764 = getelementptr inbounds i8, ptr %1, i64 88
  %1765 = getelementptr inbounds i8, ptr %0, i64 8
  br label %1766

1766:                                             ; preds = %2275, %1763
  %1767 = phi i32 [ %1761, %1763 ], [ %2276, %2275 ]
  %1768 = phi i64 [ 0, %1763 ], [ %2277, %2275 ]
  %1769 = load ptr, ptr %1764, align 8, !tbaa !35
  %1770 = getelementptr inbounds %struct.jpeg_component_info, ptr %1769, i64 %1768
  %1771 = getelementptr inbounds i8, ptr %1770, i64 8
  %1772 = load i32, ptr %1771, align 8, !tbaa !27
  %1773 = mul i32 %1772, %1759
  %1774 = getelementptr inbounds i8, ptr %1770, i64 32
  %1775 = load i32, ptr %1774, align 8, !tbaa !28
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %2275, label %1777

1777:                                             ; preds = %1766
  %1778 = getelementptr inbounds ptr, ptr %6, i64 %1768
  %1779 = getelementptr inbounds i8, ptr %1770, i64 12
  %1780 = getelementptr inbounds i8, ptr %1770, i64 28
  %1781 = getelementptr inbounds ptr, ptr %2, i64 %1768
  %1782 = load i32, ptr %1779, align 4, !tbaa !29
  br label %1783

1783:                                             ; preds = %2268, %1777
  %1784 = phi i32 [ %1782, %1777 ], [ %2269, %2268 ]
  %1785 = phi i32 [ 0, %1777 ], [ %2270, %2268 ]
  %1786 = load ptr, ptr %1765, align 8, !tbaa !19
  %1787 = getelementptr inbounds i8, ptr %1786, i64 64
  %1788 = load ptr, ptr %1787, align 8, !tbaa !46
  %1789 = load ptr, ptr %1778, align 8, !tbaa !30
  %1790 = tail call ptr %1788(ptr noundef %0, ptr noundef %1789, i32 noundef signext %1785, i32 noundef signext %1784, i32 noundef signext 1) #4
  %1791 = load i32, ptr %1779, align 4, !tbaa !29
  %1792 = icmp sgt i32 %1791, 0
  br i1 %1792, label %1793, label %2268

1793:                                             ; preds = %1783
  %1794 = load i32, ptr %1780, align 4, !tbaa !25
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %2268, label %1796

1796:                                             ; preds = %1793, %2262
  %1797 = phi i32 [ %2263, %2262 ], [ %1791, %1793 ]
  %1798 = phi i32 [ %2264, %2262 ], [ 1, %1793 ]
  %1799 = phi i64 [ %2265, %2262 ], [ 0, %1793 ]
  %1800 = icmp eq i32 %1798, 0
  br i1 %1800, label %2262, label %1801

1801:                                             ; preds = %1796
  %1802 = trunc nuw nsw i64 %1799 to i32
  %1803 = add i32 %1785, %1802
  %1804 = zext i32 %1803 to i64
  %1805 = getelementptr inbounds ptr, ptr %1790, i64 %1799
  br label %1806

1806:                                             ; preds = %2256, %1801
  %1807 = phi i32 [ 0, %1801 ], [ %2257, %2256 ]
  %1808 = load ptr, ptr %1765, align 8, !tbaa !19
  %1809 = getelementptr inbounds i8, ptr %1808, i64 64
  %1810 = load ptr, ptr %1809, align 8, !tbaa !46
  %1811 = load ptr, ptr %1781, align 8, !tbaa !30
  %1812 = load i32, ptr %1771, align 8, !tbaa !27
  %1813 = tail call ptr %1810(ptr noundef %0, ptr noundef %1811, i32 noundef signext %1807, i32 noundef signext %1812, i32 noundef signext 0) #4
  %1814 = load i32, ptr %1771, align 8, !tbaa !27
  %1815 = icmp sgt i32 %1814, 0
  br i1 %1815, label %1816, label %2256

1816:                                             ; preds = %1806
  %1817 = icmp ult i32 %1807, %1773
  %1818 = load ptr, ptr %1805, align 8, !tbaa !30
  %1819 = zext nneg i32 %1814 to i64
  br i1 %1817, label %1820, label %2055

1820:                                             ; preds = %1816, %1820
  %1821 = phi i64 [ %2053, %1820 ], [ 0, %1816 ]
  %1822 = getelementptr inbounds ptr, ptr %1813, i64 %1821
  %1823 = load ptr, ptr %1822, align 8, !tbaa !30
  %1824 = getelementptr inbounds [64 x i16], ptr %1823, i64 %1804
  %1825 = trunc nuw nsw i64 %1821 to i32
  %1826 = add i32 %1807, %1825
  %1827 = xor i32 %1826, -1
  %1828 = add i32 %1773, %1827
  %1829 = zext i32 %1828 to i64
  %1830 = getelementptr inbounds [64 x i16], ptr %1818, i64 %1829
  %1831 = load i16, ptr %1824, align 2, !tbaa !44
  store i16 %1831, ptr %1830, align 2, !tbaa !44
  %1832 = getelementptr inbounds i8, ptr %1824, i64 2
  %1833 = load i16, ptr %1832, align 2, !tbaa !44
  %1834 = getelementptr inbounds i8, ptr %1830, i64 16
  store i16 %1833, ptr %1834, align 2, !tbaa !44
  %1835 = getelementptr inbounds i8, ptr %1824, i64 4
  %1836 = load i16, ptr %1835, align 2, !tbaa !44
  %1837 = getelementptr inbounds i8, ptr %1830, i64 32
  store i16 %1836, ptr %1837, align 2, !tbaa !44
  %1838 = getelementptr inbounds i8, ptr %1824, i64 6
  %1839 = load i16, ptr %1838, align 2, !tbaa !44
  %1840 = getelementptr inbounds i8, ptr %1830, i64 48
  store i16 %1839, ptr %1840, align 2, !tbaa !44
  %1841 = getelementptr inbounds i8, ptr %1824, i64 8
  %1842 = load i16, ptr %1841, align 2, !tbaa !44
  %1843 = getelementptr inbounds i8, ptr %1830, i64 64
  store i16 %1842, ptr %1843, align 2, !tbaa !44
  %1844 = getelementptr inbounds i8, ptr %1824, i64 10
  %1845 = load i16, ptr %1844, align 2, !tbaa !44
  %1846 = getelementptr inbounds i8, ptr %1830, i64 80
  store i16 %1845, ptr %1846, align 2, !tbaa !44
  %1847 = getelementptr inbounds i8, ptr %1824, i64 12
  %1848 = load i16, ptr %1847, align 2, !tbaa !44
  %1849 = getelementptr inbounds i8, ptr %1830, i64 96
  store i16 %1848, ptr %1849, align 2, !tbaa !44
  %1850 = getelementptr inbounds i8, ptr %1824, i64 14
  %1851 = load i16, ptr %1850, align 2, !tbaa !44
  %1852 = getelementptr inbounds i8, ptr %1830, i64 112
  store i16 %1851, ptr %1852, align 2, !tbaa !44
  %1853 = getelementptr inbounds i8, ptr %1824, i64 16
  %1854 = load i16, ptr %1853, align 2, !tbaa !44
  %1855 = sub i16 0, %1854
  %1856 = getelementptr inbounds i8, ptr %1830, i64 2
  store i16 %1855, ptr %1856, align 2, !tbaa !44
  %1857 = getelementptr inbounds i8, ptr %1824, i64 18
  %1858 = load i16, ptr %1857, align 2, !tbaa !44
  %1859 = sub i16 0, %1858
  %1860 = getelementptr inbounds i8, ptr %1830, i64 18
  store i16 %1859, ptr %1860, align 2, !tbaa !44
  %1861 = getelementptr inbounds i8, ptr %1824, i64 20
  %1862 = load i16, ptr %1861, align 2, !tbaa !44
  %1863 = sub i16 0, %1862
  %1864 = getelementptr inbounds i8, ptr %1830, i64 34
  store i16 %1863, ptr %1864, align 2, !tbaa !44
  %1865 = getelementptr inbounds i8, ptr %1824, i64 22
  %1866 = load i16, ptr %1865, align 2, !tbaa !44
  %1867 = sub i16 0, %1866
  %1868 = getelementptr inbounds i8, ptr %1830, i64 50
  store i16 %1867, ptr %1868, align 2, !tbaa !44
  %1869 = getelementptr inbounds i8, ptr %1824, i64 24
  %1870 = load i16, ptr %1869, align 2, !tbaa !44
  %1871 = sub i16 0, %1870
  %1872 = getelementptr inbounds i8, ptr %1830, i64 66
  store i16 %1871, ptr %1872, align 2, !tbaa !44
  %1873 = getelementptr inbounds i8, ptr %1824, i64 26
  %1874 = load i16, ptr %1873, align 2, !tbaa !44
  %1875 = sub i16 0, %1874
  %1876 = getelementptr inbounds i8, ptr %1830, i64 82
  store i16 %1875, ptr %1876, align 2, !tbaa !44
  %1877 = getelementptr inbounds i8, ptr %1824, i64 28
  %1878 = load i16, ptr %1877, align 2, !tbaa !44
  %1879 = sub i16 0, %1878
  %1880 = getelementptr inbounds i8, ptr %1830, i64 98
  store i16 %1879, ptr %1880, align 2, !tbaa !44
  %1881 = getelementptr inbounds i8, ptr %1824, i64 30
  %1882 = load i16, ptr %1881, align 2, !tbaa !44
  %1883 = sub i16 0, %1882
  %1884 = getelementptr inbounds i8, ptr %1830, i64 114
  store i16 %1883, ptr %1884, align 2, !tbaa !44
  %1885 = getelementptr inbounds i8, ptr %1824, i64 32
  %1886 = load i16, ptr %1885, align 2, !tbaa !44
  %1887 = getelementptr inbounds i8, ptr %1830, i64 4
  store i16 %1886, ptr %1887, align 2, !tbaa !44
  %1888 = getelementptr inbounds i8, ptr %1824, i64 34
  %1889 = load i16, ptr %1888, align 2, !tbaa !44
  %1890 = getelementptr inbounds i8, ptr %1830, i64 20
  store i16 %1889, ptr %1890, align 2, !tbaa !44
  %1891 = getelementptr inbounds i8, ptr %1824, i64 36
  %1892 = load i16, ptr %1891, align 2, !tbaa !44
  %1893 = getelementptr inbounds i8, ptr %1830, i64 36
  store i16 %1892, ptr %1893, align 2, !tbaa !44
  %1894 = getelementptr inbounds i8, ptr %1824, i64 38
  %1895 = load i16, ptr %1894, align 2, !tbaa !44
  %1896 = getelementptr inbounds i8, ptr %1830, i64 52
  store i16 %1895, ptr %1896, align 2, !tbaa !44
  %1897 = getelementptr inbounds i8, ptr %1824, i64 40
  %1898 = load i16, ptr %1897, align 2, !tbaa !44
  %1899 = getelementptr inbounds i8, ptr %1830, i64 68
  store i16 %1898, ptr %1899, align 2, !tbaa !44
  %1900 = getelementptr inbounds i8, ptr %1824, i64 42
  %1901 = load i16, ptr %1900, align 2, !tbaa !44
  %1902 = getelementptr inbounds i8, ptr %1830, i64 84
  store i16 %1901, ptr %1902, align 2, !tbaa !44
  %1903 = getelementptr inbounds i8, ptr %1824, i64 44
  %1904 = load i16, ptr %1903, align 2, !tbaa !44
  %1905 = getelementptr inbounds i8, ptr %1830, i64 100
  store i16 %1904, ptr %1905, align 2, !tbaa !44
  %1906 = getelementptr inbounds i8, ptr %1824, i64 46
  %1907 = load i16, ptr %1906, align 2, !tbaa !44
  %1908 = getelementptr inbounds i8, ptr %1830, i64 116
  store i16 %1907, ptr %1908, align 2, !tbaa !44
  %1909 = getelementptr inbounds i8, ptr %1824, i64 48
  %1910 = load i16, ptr %1909, align 2, !tbaa !44
  %1911 = sub i16 0, %1910
  %1912 = getelementptr inbounds i8, ptr %1830, i64 6
  store i16 %1911, ptr %1912, align 2, !tbaa !44
  %1913 = getelementptr inbounds i8, ptr %1824, i64 50
  %1914 = load i16, ptr %1913, align 2, !tbaa !44
  %1915 = sub i16 0, %1914
  %1916 = getelementptr inbounds i8, ptr %1830, i64 22
  store i16 %1915, ptr %1916, align 2, !tbaa !44
  %1917 = getelementptr inbounds i8, ptr %1824, i64 52
  %1918 = load i16, ptr %1917, align 2, !tbaa !44
  %1919 = sub i16 0, %1918
  %1920 = getelementptr inbounds i8, ptr %1830, i64 38
  store i16 %1919, ptr %1920, align 2, !tbaa !44
  %1921 = getelementptr inbounds i8, ptr %1824, i64 54
  %1922 = load i16, ptr %1921, align 2, !tbaa !44
  %1923 = sub i16 0, %1922
  %1924 = getelementptr inbounds i8, ptr %1830, i64 54
  store i16 %1923, ptr %1924, align 2, !tbaa !44
  %1925 = getelementptr inbounds i8, ptr %1824, i64 56
  %1926 = load i16, ptr %1925, align 2, !tbaa !44
  %1927 = sub i16 0, %1926
  %1928 = getelementptr inbounds i8, ptr %1830, i64 70
  store i16 %1927, ptr %1928, align 2, !tbaa !44
  %1929 = getelementptr inbounds i8, ptr %1824, i64 58
  %1930 = load i16, ptr %1929, align 2, !tbaa !44
  %1931 = sub i16 0, %1930
  %1932 = getelementptr inbounds i8, ptr %1830, i64 86
  store i16 %1931, ptr %1932, align 2, !tbaa !44
  %1933 = getelementptr inbounds i8, ptr %1824, i64 60
  %1934 = load i16, ptr %1933, align 2, !tbaa !44
  %1935 = sub i16 0, %1934
  %1936 = getelementptr inbounds i8, ptr %1830, i64 102
  store i16 %1935, ptr %1936, align 2, !tbaa !44
  %1937 = getelementptr inbounds i8, ptr %1824, i64 62
  %1938 = load i16, ptr %1937, align 2, !tbaa !44
  %1939 = sub i16 0, %1938
  %1940 = getelementptr inbounds i8, ptr %1830, i64 118
  store i16 %1939, ptr %1940, align 2, !tbaa !44
  %1941 = getelementptr inbounds i8, ptr %1824, i64 64
  %1942 = load i16, ptr %1941, align 2, !tbaa !44
  %1943 = getelementptr inbounds i8, ptr %1830, i64 8
  store i16 %1942, ptr %1943, align 2, !tbaa !44
  %1944 = getelementptr inbounds i8, ptr %1824, i64 66
  %1945 = load i16, ptr %1944, align 2, !tbaa !44
  %1946 = getelementptr inbounds i8, ptr %1830, i64 24
  store i16 %1945, ptr %1946, align 2, !tbaa !44
  %1947 = getelementptr inbounds i8, ptr %1824, i64 68
  %1948 = load i16, ptr %1947, align 2, !tbaa !44
  %1949 = getelementptr inbounds i8, ptr %1830, i64 40
  store i16 %1948, ptr %1949, align 2, !tbaa !44
  %1950 = getelementptr inbounds i8, ptr %1824, i64 70
  %1951 = load i16, ptr %1950, align 2, !tbaa !44
  %1952 = getelementptr inbounds i8, ptr %1830, i64 56
  store i16 %1951, ptr %1952, align 2, !tbaa !44
  %1953 = getelementptr inbounds i8, ptr %1824, i64 72
  %1954 = load i16, ptr %1953, align 2, !tbaa !44
  %1955 = getelementptr inbounds i8, ptr %1830, i64 72
  store i16 %1954, ptr %1955, align 2, !tbaa !44
  %1956 = getelementptr inbounds i8, ptr %1824, i64 74
  %1957 = load i16, ptr %1956, align 2, !tbaa !44
  %1958 = getelementptr inbounds i8, ptr %1830, i64 88
  store i16 %1957, ptr %1958, align 2, !tbaa !44
  %1959 = getelementptr inbounds i8, ptr %1824, i64 76
  %1960 = load i16, ptr %1959, align 2, !tbaa !44
  %1961 = getelementptr inbounds i8, ptr %1830, i64 104
  store i16 %1960, ptr %1961, align 2, !tbaa !44
  %1962 = getelementptr inbounds i8, ptr %1824, i64 78
  %1963 = load i16, ptr %1962, align 2, !tbaa !44
  %1964 = getelementptr inbounds i8, ptr %1830, i64 120
  store i16 %1963, ptr %1964, align 2, !tbaa !44
  %1965 = getelementptr inbounds i8, ptr %1824, i64 80
  %1966 = load i16, ptr %1965, align 2, !tbaa !44
  %1967 = sub i16 0, %1966
  %1968 = getelementptr inbounds i8, ptr %1830, i64 10
  store i16 %1967, ptr %1968, align 2, !tbaa !44
  %1969 = getelementptr inbounds i8, ptr %1824, i64 82
  %1970 = load i16, ptr %1969, align 2, !tbaa !44
  %1971 = sub i16 0, %1970
  %1972 = getelementptr inbounds i8, ptr %1830, i64 26
  store i16 %1971, ptr %1972, align 2, !tbaa !44
  %1973 = getelementptr inbounds i8, ptr %1824, i64 84
  %1974 = load i16, ptr %1973, align 2, !tbaa !44
  %1975 = sub i16 0, %1974
  %1976 = getelementptr inbounds i8, ptr %1830, i64 42
  store i16 %1975, ptr %1976, align 2, !tbaa !44
  %1977 = getelementptr inbounds i8, ptr %1824, i64 86
  %1978 = load i16, ptr %1977, align 2, !tbaa !44
  %1979 = sub i16 0, %1978
  %1980 = getelementptr inbounds i8, ptr %1830, i64 58
  store i16 %1979, ptr %1980, align 2, !tbaa !44
  %1981 = getelementptr inbounds i8, ptr %1824, i64 88
  %1982 = load i16, ptr %1981, align 2, !tbaa !44
  %1983 = sub i16 0, %1982
  %1984 = getelementptr inbounds i8, ptr %1830, i64 74
  store i16 %1983, ptr %1984, align 2, !tbaa !44
  %1985 = getelementptr inbounds i8, ptr %1824, i64 90
  %1986 = load i16, ptr %1985, align 2, !tbaa !44
  %1987 = sub i16 0, %1986
  %1988 = getelementptr inbounds i8, ptr %1830, i64 90
  store i16 %1987, ptr %1988, align 2, !tbaa !44
  %1989 = getelementptr inbounds i8, ptr %1824, i64 92
  %1990 = load i16, ptr %1989, align 2, !tbaa !44
  %1991 = sub i16 0, %1990
  %1992 = getelementptr inbounds i8, ptr %1830, i64 106
  store i16 %1991, ptr %1992, align 2, !tbaa !44
  %1993 = getelementptr inbounds i8, ptr %1824, i64 94
  %1994 = load i16, ptr %1993, align 2, !tbaa !44
  %1995 = sub i16 0, %1994
  %1996 = getelementptr inbounds i8, ptr %1830, i64 122
  store i16 %1995, ptr %1996, align 2, !tbaa !44
  %1997 = getelementptr inbounds i8, ptr %1824, i64 96
  %1998 = load i16, ptr %1997, align 2, !tbaa !44
  %1999 = getelementptr inbounds i8, ptr %1830, i64 12
  store i16 %1998, ptr %1999, align 2, !tbaa !44
  %2000 = getelementptr inbounds i8, ptr %1824, i64 98
  %2001 = load i16, ptr %2000, align 2, !tbaa !44
  %2002 = getelementptr inbounds i8, ptr %1830, i64 28
  store i16 %2001, ptr %2002, align 2, !tbaa !44
  %2003 = getelementptr inbounds i8, ptr %1824, i64 100
  %2004 = load i16, ptr %2003, align 2, !tbaa !44
  %2005 = getelementptr inbounds i8, ptr %1830, i64 44
  store i16 %2004, ptr %2005, align 2, !tbaa !44
  %2006 = getelementptr inbounds i8, ptr %1824, i64 102
  %2007 = load i16, ptr %2006, align 2, !tbaa !44
  %2008 = getelementptr inbounds i8, ptr %1830, i64 60
  store i16 %2007, ptr %2008, align 2, !tbaa !44
  %2009 = getelementptr inbounds i8, ptr %1824, i64 104
  %2010 = load i16, ptr %2009, align 2, !tbaa !44
  %2011 = getelementptr inbounds i8, ptr %1830, i64 76
  store i16 %2010, ptr %2011, align 2, !tbaa !44
  %2012 = getelementptr inbounds i8, ptr %1824, i64 106
  %2013 = load i16, ptr %2012, align 2, !tbaa !44
  %2014 = getelementptr inbounds i8, ptr %1830, i64 92
  store i16 %2013, ptr %2014, align 2, !tbaa !44
  %2015 = getelementptr inbounds i8, ptr %1824, i64 108
  %2016 = load i16, ptr %2015, align 2, !tbaa !44
  %2017 = getelementptr inbounds i8, ptr %1830, i64 108
  store i16 %2016, ptr %2017, align 2, !tbaa !44
  %2018 = getelementptr inbounds i8, ptr %1824, i64 110
  %2019 = load i16, ptr %2018, align 2, !tbaa !44
  %2020 = getelementptr inbounds i8, ptr %1830, i64 124
  store i16 %2019, ptr %2020, align 2, !tbaa !44
  %2021 = getelementptr inbounds i8, ptr %1824, i64 112
  %2022 = load i16, ptr %2021, align 2, !tbaa !44
  %2023 = sub i16 0, %2022
  %2024 = getelementptr inbounds i8, ptr %1830, i64 14
  store i16 %2023, ptr %2024, align 2, !tbaa !44
  %2025 = getelementptr inbounds i8, ptr %1824, i64 114
  %2026 = load i16, ptr %2025, align 2, !tbaa !44
  %2027 = sub i16 0, %2026
  %2028 = getelementptr inbounds i8, ptr %1830, i64 30
  store i16 %2027, ptr %2028, align 2, !tbaa !44
  %2029 = getelementptr inbounds i8, ptr %1824, i64 116
  %2030 = load i16, ptr %2029, align 2, !tbaa !44
  %2031 = sub i16 0, %2030
  %2032 = getelementptr inbounds i8, ptr %1830, i64 46
  store i16 %2031, ptr %2032, align 2, !tbaa !44
  %2033 = getelementptr inbounds i8, ptr %1824, i64 118
  %2034 = load i16, ptr %2033, align 2, !tbaa !44
  %2035 = sub i16 0, %2034
  %2036 = getelementptr inbounds i8, ptr %1830, i64 62
  store i16 %2035, ptr %2036, align 2, !tbaa !44
  %2037 = getelementptr inbounds i8, ptr %1824, i64 120
  %2038 = load i16, ptr %2037, align 2, !tbaa !44
  %2039 = sub i16 0, %2038
  %2040 = getelementptr inbounds i8, ptr %1830, i64 78
  store i16 %2039, ptr %2040, align 2, !tbaa !44
  %2041 = getelementptr inbounds i8, ptr %1824, i64 122
  %2042 = load i16, ptr %2041, align 2, !tbaa !44
  %2043 = sub i16 0, %2042
  %2044 = getelementptr inbounds i8, ptr %1830, i64 94
  store i16 %2043, ptr %2044, align 2, !tbaa !44
  %2045 = getelementptr inbounds i8, ptr %1824, i64 124
  %2046 = load i16, ptr %2045, align 2, !tbaa !44
  %2047 = sub i16 0, %2046
  %2048 = getelementptr inbounds i8, ptr %1830, i64 110
  store i16 %2047, ptr %2048, align 2, !tbaa !44
  %2049 = getelementptr inbounds i8, ptr %1824, i64 126
  %2050 = load i16, ptr %2049, align 2, !tbaa !44
  %2051 = sub i16 0, %2050
  %2052 = getelementptr inbounds i8, ptr %1830, i64 126
  store i16 %2051, ptr %2052, align 2, !tbaa !44
  %2053 = add nuw nsw i64 %1821, 1
  %2054 = icmp eq i64 %2053, %1819
  br i1 %2054, label %2256, label %1820

2055:                                             ; preds = %1816, %2055
  %2056 = phi i64 [ %2254, %2055 ], [ 0, %1816 ]
  %2057 = getelementptr inbounds ptr, ptr %1813, i64 %2056
  %2058 = load ptr, ptr %2057, align 8, !tbaa !30
  %2059 = getelementptr inbounds [64 x i16], ptr %2058, i64 %1804
  %2060 = trunc nuw nsw i64 %2056 to i32
  %2061 = add i32 %1807, %2060
  %2062 = zext i32 %2061 to i64
  %2063 = getelementptr inbounds [64 x i16], ptr %1818, i64 %2062
  %2064 = load i16, ptr %2059, align 2, !tbaa !44
  store i16 %2064, ptr %2063, align 2, !tbaa !44
  %2065 = getelementptr inbounds i8, ptr %2059, i64 2
  %2066 = load i16, ptr %2065, align 2, !tbaa !44
  %2067 = getelementptr inbounds i8, ptr %2063, i64 16
  store i16 %2066, ptr %2067, align 2, !tbaa !44
  %2068 = getelementptr inbounds i8, ptr %2059, i64 4
  %2069 = load i16, ptr %2068, align 2, !tbaa !44
  %2070 = getelementptr inbounds i8, ptr %2063, i64 32
  store i16 %2069, ptr %2070, align 2, !tbaa !44
  %2071 = getelementptr inbounds i8, ptr %2059, i64 6
  %2072 = load i16, ptr %2071, align 2, !tbaa !44
  %2073 = getelementptr inbounds i8, ptr %2063, i64 48
  store i16 %2072, ptr %2073, align 2, !tbaa !44
  %2074 = getelementptr inbounds i8, ptr %2059, i64 8
  %2075 = load i16, ptr %2074, align 2, !tbaa !44
  %2076 = getelementptr inbounds i8, ptr %2063, i64 64
  store i16 %2075, ptr %2076, align 2, !tbaa !44
  %2077 = getelementptr inbounds i8, ptr %2059, i64 10
  %2078 = load i16, ptr %2077, align 2, !tbaa !44
  %2079 = getelementptr inbounds i8, ptr %2063, i64 80
  store i16 %2078, ptr %2079, align 2, !tbaa !44
  %2080 = getelementptr inbounds i8, ptr %2059, i64 12
  %2081 = load i16, ptr %2080, align 2, !tbaa !44
  %2082 = getelementptr inbounds i8, ptr %2063, i64 96
  store i16 %2081, ptr %2082, align 2, !tbaa !44
  %2083 = getelementptr inbounds i8, ptr %2059, i64 14
  %2084 = load i16, ptr %2083, align 2, !tbaa !44
  %2085 = getelementptr inbounds i8, ptr %2063, i64 112
  store i16 %2084, ptr %2085, align 2, !tbaa !44
  %2086 = getelementptr inbounds i8, ptr %2059, i64 16
  %2087 = load i16, ptr %2086, align 2, !tbaa !44
  %2088 = getelementptr inbounds i8, ptr %2063, i64 2
  store i16 %2087, ptr %2088, align 2, !tbaa !44
  %2089 = getelementptr inbounds i8, ptr %2059, i64 18
  %2090 = load i16, ptr %2089, align 2, !tbaa !44
  %2091 = getelementptr inbounds i8, ptr %2063, i64 18
  store i16 %2090, ptr %2091, align 2, !tbaa !44
  %2092 = getelementptr inbounds i8, ptr %2059, i64 20
  %2093 = load i16, ptr %2092, align 2, !tbaa !44
  %2094 = getelementptr inbounds i8, ptr %2063, i64 34
  store i16 %2093, ptr %2094, align 2, !tbaa !44
  %2095 = getelementptr inbounds i8, ptr %2059, i64 22
  %2096 = load i16, ptr %2095, align 2, !tbaa !44
  %2097 = getelementptr inbounds i8, ptr %2063, i64 50
  store i16 %2096, ptr %2097, align 2, !tbaa !44
  %2098 = getelementptr inbounds i8, ptr %2059, i64 24
  %2099 = load i16, ptr %2098, align 2, !tbaa !44
  %2100 = getelementptr inbounds i8, ptr %2063, i64 66
  store i16 %2099, ptr %2100, align 2, !tbaa !44
  %2101 = getelementptr inbounds i8, ptr %2059, i64 26
  %2102 = load i16, ptr %2101, align 2, !tbaa !44
  %2103 = getelementptr inbounds i8, ptr %2063, i64 82
  store i16 %2102, ptr %2103, align 2, !tbaa !44
  %2104 = getelementptr inbounds i8, ptr %2059, i64 28
  %2105 = load i16, ptr %2104, align 2, !tbaa !44
  %2106 = getelementptr inbounds i8, ptr %2063, i64 98
  store i16 %2105, ptr %2106, align 2, !tbaa !44
  %2107 = getelementptr inbounds i8, ptr %2059, i64 30
  %2108 = load i16, ptr %2107, align 2, !tbaa !44
  %2109 = getelementptr inbounds i8, ptr %2063, i64 114
  store i16 %2108, ptr %2109, align 2, !tbaa !44
  %2110 = getelementptr inbounds i8, ptr %2059, i64 32
  %2111 = load i16, ptr %2110, align 2, !tbaa !44
  %2112 = getelementptr inbounds i8, ptr %2063, i64 4
  store i16 %2111, ptr %2112, align 2, !tbaa !44
  %2113 = getelementptr inbounds i8, ptr %2059, i64 34
  %2114 = load i16, ptr %2113, align 2, !tbaa !44
  %2115 = getelementptr inbounds i8, ptr %2063, i64 20
  store i16 %2114, ptr %2115, align 2, !tbaa !44
  %2116 = getelementptr inbounds i8, ptr %2059, i64 36
  %2117 = load i16, ptr %2116, align 2, !tbaa !44
  %2118 = getelementptr inbounds i8, ptr %2063, i64 36
  store i16 %2117, ptr %2118, align 2, !tbaa !44
  %2119 = getelementptr inbounds i8, ptr %2059, i64 38
  %2120 = load i16, ptr %2119, align 2, !tbaa !44
  %2121 = getelementptr inbounds i8, ptr %2063, i64 52
  store i16 %2120, ptr %2121, align 2, !tbaa !44
  %2122 = getelementptr inbounds i8, ptr %2059, i64 40
  %2123 = load i16, ptr %2122, align 2, !tbaa !44
  %2124 = getelementptr inbounds i8, ptr %2063, i64 68
  store i16 %2123, ptr %2124, align 2, !tbaa !44
  %2125 = getelementptr inbounds i8, ptr %2059, i64 42
  %2126 = load i16, ptr %2125, align 2, !tbaa !44
  %2127 = getelementptr inbounds i8, ptr %2063, i64 84
  store i16 %2126, ptr %2127, align 2, !tbaa !44
  %2128 = getelementptr inbounds i8, ptr %2059, i64 44
  %2129 = load i16, ptr %2128, align 2, !tbaa !44
  %2130 = getelementptr inbounds i8, ptr %2063, i64 100
  store i16 %2129, ptr %2130, align 2, !tbaa !44
  %2131 = getelementptr inbounds i8, ptr %2059, i64 46
  %2132 = load i16, ptr %2131, align 2, !tbaa !44
  %2133 = getelementptr inbounds i8, ptr %2063, i64 116
  store i16 %2132, ptr %2133, align 2, !tbaa !44
  %2134 = getelementptr inbounds i8, ptr %2059, i64 48
  %2135 = load i16, ptr %2134, align 2, !tbaa !44
  %2136 = getelementptr inbounds i8, ptr %2063, i64 6
  store i16 %2135, ptr %2136, align 2, !tbaa !44
  %2137 = getelementptr inbounds i8, ptr %2059, i64 50
  %2138 = load i16, ptr %2137, align 2, !tbaa !44
  %2139 = getelementptr inbounds i8, ptr %2063, i64 22
  store i16 %2138, ptr %2139, align 2, !tbaa !44
  %2140 = getelementptr inbounds i8, ptr %2059, i64 52
  %2141 = load i16, ptr %2140, align 2, !tbaa !44
  %2142 = getelementptr inbounds i8, ptr %2063, i64 38
  store i16 %2141, ptr %2142, align 2, !tbaa !44
  %2143 = getelementptr inbounds i8, ptr %2059, i64 54
  %2144 = load i16, ptr %2143, align 2, !tbaa !44
  %2145 = getelementptr inbounds i8, ptr %2063, i64 54
  store i16 %2144, ptr %2145, align 2, !tbaa !44
  %2146 = getelementptr inbounds i8, ptr %2059, i64 56
  %2147 = load i16, ptr %2146, align 2, !tbaa !44
  %2148 = getelementptr inbounds i8, ptr %2063, i64 70
  store i16 %2147, ptr %2148, align 2, !tbaa !44
  %2149 = getelementptr inbounds i8, ptr %2059, i64 58
  %2150 = load i16, ptr %2149, align 2, !tbaa !44
  %2151 = getelementptr inbounds i8, ptr %2063, i64 86
  store i16 %2150, ptr %2151, align 2, !tbaa !44
  %2152 = getelementptr inbounds i8, ptr %2059, i64 60
  %2153 = load i16, ptr %2152, align 2, !tbaa !44
  %2154 = getelementptr inbounds i8, ptr %2063, i64 102
  store i16 %2153, ptr %2154, align 2, !tbaa !44
  %2155 = getelementptr inbounds i8, ptr %2059, i64 62
  %2156 = load i16, ptr %2155, align 2, !tbaa !44
  %2157 = getelementptr inbounds i8, ptr %2063, i64 118
  store i16 %2156, ptr %2157, align 2, !tbaa !44
  %2158 = getelementptr inbounds i8, ptr %2059, i64 64
  %2159 = load i16, ptr %2158, align 2, !tbaa !44
  %2160 = getelementptr inbounds i8, ptr %2063, i64 8
  store i16 %2159, ptr %2160, align 2, !tbaa !44
  %2161 = getelementptr inbounds i8, ptr %2059, i64 66
  %2162 = load i16, ptr %2161, align 2, !tbaa !44
  %2163 = getelementptr inbounds i8, ptr %2063, i64 24
  store i16 %2162, ptr %2163, align 2, !tbaa !44
  %2164 = getelementptr inbounds i8, ptr %2059, i64 68
  %2165 = load i16, ptr %2164, align 2, !tbaa !44
  %2166 = getelementptr inbounds i8, ptr %2063, i64 40
  store i16 %2165, ptr %2166, align 2, !tbaa !44
  %2167 = getelementptr inbounds i8, ptr %2059, i64 70
  %2168 = load i16, ptr %2167, align 2, !tbaa !44
  %2169 = getelementptr inbounds i8, ptr %2063, i64 56
  store i16 %2168, ptr %2169, align 2, !tbaa !44
  %2170 = getelementptr inbounds i8, ptr %2059, i64 72
  %2171 = load i16, ptr %2170, align 2, !tbaa !44
  %2172 = getelementptr inbounds i8, ptr %2063, i64 72
  store i16 %2171, ptr %2172, align 2, !tbaa !44
  %2173 = getelementptr inbounds i8, ptr %2059, i64 74
  %2174 = load i16, ptr %2173, align 2, !tbaa !44
  %2175 = getelementptr inbounds i8, ptr %2063, i64 88
  store i16 %2174, ptr %2175, align 2, !tbaa !44
  %2176 = getelementptr inbounds i8, ptr %2059, i64 76
  %2177 = load i16, ptr %2176, align 2, !tbaa !44
  %2178 = getelementptr inbounds i8, ptr %2063, i64 104
  store i16 %2177, ptr %2178, align 2, !tbaa !44
  %2179 = getelementptr inbounds i8, ptr %2059, i64 78
  %2180 = load i16, ptr %2179, align 2, !tbaa !44
  %2181 = getelementptr inbounds i8, ptr %2063, i64 120
  store i16 %2180, ptr %2181, align 2, !tbaa !44
  %2182 = getelementptr inbounds i8, ptr %2059, i64 80
  %2183 = load i16, ptr %2182, align 2, !tbaa !44
  %2184 = getelementptr inbounds i8, ptr %2063, i64 10
  store i16 %2183, ptr %2184, align 2, !tbaa !44
  %2185 = getelementptr inbounds i8, ptr %2059, i64 82
  %2186 = load i16, ptr %2185, align 2, !tbaa !44
  %2187 = getelementptr inbounds i8, ptr %2063, i64 26
  store i16 %2186, ptr %2187, align 2, !tbaa !44
  %2188 = getelementptr inbounds i8, ptr %2059, i64 84
  %2189 = load i16, ptr %2188, align 2, !tbaa !44
  %2190 = getelementptr inbounds i8, ptr %2063, i64 42
  store i16 %2189, ptr %2190, align 2, !tbaa !44
  %2191 = getelementptr inbounds i8, ptr %2059, i64 86
  %2192 = load i16, ptr %2191, align 2, !tbaa !44
  %2193 = getelementptr inbounds i8, ptr %2063, i64 58
  store i16 %2192, ptr %2193, align 2, !tbaa !44
  %2194 = getelementptr inbounds i8, ptr %2059, i64 88
  %2195 = load i16, ptr %2194, align 2, !tbaa !44
  %2196 = getelementptr inbounds i8, ptr %2063, i64 74
  store i16 %2195, ptr %2196, align 2, !tbaa !44
  %2197 = getelementptr inbounds i8, ptr %2059, i64 90
  %2198 = load i16, ptr %2197, align 2, !tbaa !44
  %2199 = getelementptr inbounds i8, ptr %2063, i64 90
  store i16 %2198, ptr %2199, align 2, !tbaa !44
  %2200 = getelementptr inbounds i8, ptr %2059, i64 92
  %2201 = load i16, ptr %2200, align 2, !tbaa !44
  %2202 = getelementptr inbounds i8, ptr %2063, i64 106
  store i16 %2201, ptr %2202, align 2, !tbaa !44
  %2203 = getelementptr inbounds i8, ptr %2059, i64 94
  %2204 = load i16, ptr %2203, align 2, !tbaa !44
  %2205 = getelementptr inbounds i8, ptr %2063, i64 122
  store i16 %2204, ptr %2205, align 2, !tbaa !44
  %2206 = getelementptr inbounds i8, ptr %2059, i64 96
  %2207 = load i16, ptr %2206, align 2, !tbaa !44
  %2208 = getelementptr inbounds i8, ptr %2063, i64 12
  store i16 %2207, ptr %2208, align 2, !tbaa !44
  %2209 = getelementptr inbounds i8, ptr %2059, i64 98
  %2210 = load i16, ptr %2209, align 2, !tbaa !44
  %2211 = getelementptr inbounds i8, ptr %2063, i64 28
  store i16 %2210, ptr %2211, align 2, !tbaa !44
  %2212 = getelementptr inbounds i8, ptr %2059, i64 100
  %2213 = load i16, ptr %2212, align 2, !tbaa !44
  %2214 = getelementptr inbounds i8, ptr %2063, i64 44
  store i16 %2213, ptr %2214, align 2, !tbaa !44
  %2215 = getelementptr inbounds i8, ptr %2059, i64 102
  %2216 = load i16, ptr %2215, align 2, !tbaa !44
  %2217 = getelementptr inbounds i8, ptr %2063, i64 60
  store i16 %2216, ptr %2217, align 2, !tbaa !44
  %2218 = getelementptr inbounds i8, ptr %2059, i64 104
  %2219 = load i16, ptr %2218, align 2, !tbaa !44
  %2220 = getelementptr inbounds i8, ptr %2063, i64 76
  store i16 %2219, ptr %2220, align 2, !tbaa !44
  %2221 = getelementptr inbounds i8, ptr %2059, i64 106
  %2222 = load i16, ptr %2221, align 2, !tbaa !44
  %2223 = getelementptr inbounds i8, ptr %2063, i64 92
  store i16 %2222, ptr %2223, align 2, !tbaa !44
  %2224 = getelementptr inbounds i8, ptr %2059, i64 108
  %2225 = load i16, ptr %2224, align 2, !tbaa !44
  %2226 = getelementptr inbounds i8, ptr %2063, i64 108
  store i16 %2225, ptr %2226, align 2, !tbaa !44
  %2227 = getelementptr inbounds i8, ptr %2059, i64 110
  %2228 = load i16, ptr %2227, align 2, !tbaa !44
  %2229 = getelementptr inbounds i8, ptr %2063, i64 124
  store i16 %2228, ptr %2229, align 2, !tbaa !44
  %2230 = getelementptr inbounds i8, ptr %2059, i64 112
  %2231 = load i16, ptr %2230, align 2, !tbaa !44
  %2232 = getelementptr inbounds i8, ptr %2063, i64 14
  store i16 %2231, ptr %2232, align 2, !tbaa !44
  %2233 = getelementptr inbounds i8, ptr %2059, i64 114
  %2234 = load i16, ptr %2233, align 2, !tbaa !44
  %2235 = getelementptr inbounds i8, ptr %2063, i64 30
  store i16 %2234, ptr %2235, align 2, !tbaa !44
  %2236 = getelementptr inbounds i8, ptr %2059, i64 116
  %2237 = load i16, ptr %2236, align 2, !tbaa !44
  %2238 = getelementptr inbounds i8, ptr %2063, i64 46
  store i16 %2237, ptr %2238, align 2, !tbaa !44
  %2239 = getelementptr inbounds i8, ptr %2059, i64 118
  %2240 = load i16, ptr %2239, align 2, !tbaa !44
  %2241 = getelementptr inbounds i8, ptr %2063, i64 62
  store i16 %2240, ptr %2241, align 2, !tbaa !44
  %2242 = getelementptr inbounds i8, ptr %2059, i64 120
  %2243 = load i16, ptr %2242, align 2, !tbaa !44
  %2244 = getelementptr inbounds i8, ptr %2063, i64 78
  store i16 %2243, ptr %2244, align 2, !tbaa !44
  %2245 = getelementptr inbounds i8, ptr %2059, i64 122
  %2246 = load i16, ptr %2245, align 2, !tbaa !44
  %2247 = getelementptr inbounds i8, ptr %2063, i64 94
  store i16 %2246, ptr %2247, align 2, !tbaa !44
  %2248 = getelementptr inbounds i8, ptr %2059, i64 124
  %2249 = load i16, ptr %2248, align 2, !tbaa !44
  %2250 = getelementptr inbounds i8, ptr %2063, i64 110
  store i16 %2249, ptr %2250, align 2, !tbaa !44
  %2251 = getelementptr inbounds i8, ptr %2059, i64 126
  %2252 = load i16, ptr %2251, align 2, !tbaa !44
  %2253 = getelementptr inbounds i8, ptr %2063, i64 126
  store i16 %2252, ptr %2253, align 2, !tbaa !44
  %2254 = add nuw nsw i64 %2056, 1
  %2255 = icmp eq i64 %2254, %1819
  br i1 %2255, label %2256, label %2055

2256:                                             ; preds = %2055, %1820, %1806
  %2257 = add i32 %1814, %1807
  %2258 = load i32, ptr %1780, align 4, !tbaa !25
  %2259 = icmp ult i32 %2257, %2258
  br i1 %2259, label %1806, label %2260

2260:                                             ; preds = %2256
  %2261 = load i32, ptr %1779, align 4, !tbaa !29
  br label %2262

2262:                                             ; preds = %2260, %1796
  %2263 = phi i32 [ %2261, %2260 ], [ %1797, %1796 ]
  %2264 = phi i32 [ %2258, %2260 ], [ 0, %1796 ]
  %2265 = add nuw nsw i64 %1799, 1
  %2266 = sext i32 %2263 to i64
  %2267 = icmp slt i64 %2265, %2266
  br i1 %2267, label %1796, label %2268, !llvm.loop !51

2268:                                             ; preds = %2262, %1793, %1783
  %2269 = phi i32 [ %1791, %1783 ], [ %1791, %1793 ], [ %2263, %2262 ]
  %2270 = add i32 %2269, %1785
  %2271 = load i32, ptr %1774, align 8, !tbaa !28
  %2272 = icmp ult i32 %2270, %2271
  br i1 %2272, label %1783, label %2273

2273:                                             ; preds = %2268
  %2274 = load i32, ptr %1760, align 4, !tbaa !34
  br label %2275

2275:                                             ; preds = %2273, %1766
  %2276 = phi i32 [ %2274, %2273 ], [ %1767, %1766 ]
  %2277 = add nuw nsw i64 %1768, 1
  %2278 = sext i32 %2276 to i64
  %2279 = icmp slt i64 %2277, %2278
  br i1 %2279, label %1766, label %3848

2280:                                             ; preds = %4
  %2281 = getelementptr inbounds i8, ptr %1, i64 48
  %2282 = load i32, ptr %2281, align 8, !tbaa !42
  %2283 = getelementptr inbounds i8, ptr %1, i64 312
  %2284 = load i32, ptr %2283, align 8, !tbaa !45
  %2285 = shl nsw i32 %2284, 3
  %2286 = udiv i32 %2282, %2285
  %2287 = getelementptr inbounds i8, ptr %1, i64 52
  %2288 = load i32, ptr %2287, align 4, !tbaa !43
  %2289 = getelementptr inbounds i8, ptr %1, i64 316
  %2290 = load i32, ptr %2289, align 4, !tbaa !47
  %2291 = shl nsw i32 %2290, 3
  %2292 = udiv i32 %2288, %2291
  %2293 = getelementptr inbounds i8, ptr %1, i64 76
  %2294 = load i32, ptr %2293, align 4, !tbaa !34
  %2295 = icmp sgt i32 %2294, 0
  br i1 %2295, label %2296, label %3848

2296:                                             ; preds = %2280
  %2297 = getelementptr inbounds i8, ptr %1, i64 88
  %2298 = getelementptr inbounds i8, ptr %0, i64 8
  br label %2299

2299:                                             ; preds = %3280, %2296
  %2300 = phi i32 [ %2294, %2296 ], [ %3281, %3280 ]
  %2301 = phi i64 [ 0, %2296 ], [ %3282, %3280 ]
  %2302 = load ptr, ptr %2297, align 8, !tbaa !35
  %2303 = getelementptr inbounds %struct.jpeg_component_info, ptr %2302, i64 %2301
  %2304 = getelementptr inbounds i8, ptr %2303, i64 8
  %2305 = load i32, ptr %2304, align 8, !tbaa !27
  %2306 = mul i32 %2305, %2286
  %2307 = getelementptr inbounds i8, ptr %2303, i64 12
  %2308 = load i32, ptr %2307, align 4, !tbaa !29
  %2309 = mul i32 %2308, %2292
  %2310 = getelementptr inbounds i8, ptr %2303, i64 32
  %2311 = load i32, ptr %2310, align 8, !tbaa !28
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %3280, label %2313

2313:                                             ; preds = %2299
  %2314 = getelementptr inbounds ptr, ptr %6, i64 %2301
  %2315 = getelementptr inbounds ptr, ptr %2, i64 %2301
  %2316 = icmp eq i32 %2306, 0
  %2317 = getelementptr inbounds i8, ptr %2303, i64 28
  %2318 = zext i32 %2306 to i64
  br label %2319

2319:                                             ; preds = %3273, %2313
  %2320 = phi i32 [ 0, %2313 ], [ %3275, %3273 ]
  %2321 = load ptr, ptr %2298, align 8, !tbaa !19
  %2322 = getelementptr inbounds i8, ptr %2321, i64 64
  %2323 = load ptr, ptr %2322, align 8, !tbaa !46
  %2324 = load ptr, ptr %2314, align 8, !tbaa !30
  %2325 = load i32, ptr %2307, align 4, !tbaa !29
  %2326 = tail call ptr %2323(ptr noundef %0, ptr noundef %2324, i32 noundef signext %2320, i32 noundef signext %2325, i32 noundef signext 1) #4
  %2327 = icmp ult i32 %2320, %2309
  %2328 = load ptr, ptr %2298, align 8, !tbaa !19
  %2329 = getelementptr inbounds i8, ptr %2328, i64 64
  %2330 = load ptr, ptr %2329, align 8, !tbaa !46
  %2331 = load ptr, ptr %2315, align 8, !tbaa !30
  %2332 = load i32, ptr %2307, align 4, !tbaa !29
  br i1 %2327, label %2333, label %2339

2333:                                             ; preds = %2319
  %2334 = add i32 %2320, %2332
  %2335 = sub i32 %2309, %2334
  %2336 = tail call ptr %2330(ptr noundef nonnull %0, ptr noundef %2331, i32 noundef signext %2335, i32 noundef signext %2332, i32 noundef signext 0) #4
  %2337 = load i32, ptr %2307, align 4, !tbaa !29
  %2338 = icmp sgt i32 %2337, 0
  br i1 %2338, label %2343, label %3273

2339:                                             ; preds = %2319
  %2340 = tail call ptr %2330(ptr noundef nonnull %0, ptr noundef %2331, i32 noundef signext %2320, i32 noundef signext %2332, i32 noundef signext 0) #4
  %2341 = load i32, ptr %2307, align 4, !tbaa !29
  %2342 = icmp sgt i32 %2341, 0
  br i1 %2342, label %2825, label %3273

2343:                                             ; preds = %2333
  %2344 = load i32, ptr %2317, align 4, !tbaa !25
  %2345 = zext nneg i32 %2337 to i64
  %2346 = zext i32 %2344 to i64
  %2347 = getelementptr ptr, ptr %2336, i64 %2345
  br label %2348

2348:                                             ; preds = %2822, %2343
  %2349 = phi i64 [ %2823, %2822 ], [ 0, %2343 ]
  %2350 = getelementptr inbounds ptr, ptr %2326, i64 %2349
  %2351 = load ptr, ptr %2350, align 8, !tbaa !30
  %2352 = xor i64 %2349, -1
  %2353 = getelementptr ptr, ptr %2347, i64 %2352
  %2354 = load ptr, ptr %2353, align 8, !tbaa !30
  br i1 %2316, label %2817, label %2583

2355:                                             ; preds = %2820, %2355
  %2356 = phi i64 [ %2821, %2820 ], [ %2581, %2355 ]
  %2357 = getelementptr inbounds [64 x i16], ptr %2351, i64 %2356
  %2358 = getelementptr inbounds [64 x i16], ptr %2354, i64 %2356
  %2359 = getelementptr inbounds i8, ptr %2358, i64 2
  %2360 = load i16, ptr %2358, align 2, !tbaa !44
  %2361 = getelementptr inbounds i8, ptr %2357, i64 2
  store i16 %2360, ptr %2357, align 2, !tbaa !44
  %2362 = getelementptr inbounds i8, ptr %2358, i64 4
  %2363 = load i16, ptr %2359, align 2, !tbaa !44
  %2364 = getelementptr inbounds i8, ptr %2357, i64 4
  store i16 %2363, ptr %2361, align 2, !tbaa !44
  %2365 = getelementptr inbounds i8, ptr %2358, i64 6
  %2366 = load i16, ptr %2362, align 2, !tbaa !44
  %2367 = getelementptr inbounds i8, ptr %2357, i64 6
  store i16 %2366, ptr %2364, align 2, !tbaa !44
  %2368 = getelementptr inbounds i8, ptr %2358, i64 8
  %2369 = load i16, ptr %2365, align 2, !tbaa !44
  %2370 = getelementptr inbounds i8, ptr %2357, i64 8
  store i16 %2369, ptr %2367, align 2, !tbaa !44
  %2371 = getelementptr inbounds i8, ptr %2358, i64 10
  %2372 = load i16, ptr %2368, align 2, !tbaa !44
  %2373 = getelementptr inbounds i8, ptr %2357, i64 10
  store i16 %2372, ptr %2370, align 2, !tbaa !44
  %2374 = getelementptr inbounds i8, ptr %2358, i64 12
  %2375 = load i16, ptr %2371, align 2, !tbaa !44
  %2376 = getelementptr inbounds i8, ptr %2357, i64 12
  store i16 %2375, ptr %2373, align 2, !tbaa !44
  %2377 = getelementptr inbounds i8, ptr %2358, i64 14
  %2378 = load i16, ptr %2374, align 2, !tbaa !44
  %2379 = getelementptr inbounds i8, ptr %2357, i64 14
  store i16 %2378, ptr %2376, align 2, !tbaa !44
  %2380 = getelementptr inbounds i8, ptr %2358, i64 16
  %2381 = load i16, ptr %2377, align 2, !tbaa !44
  %2382 = getelementptr inbounds i8, ptr %2357, i64 16
  store i16 %2381, ptr %2379, align 2, !tbaa !44
  %2383 = getelementptr inbounds i8, ptr %2358, i64 18
  %2384 = load i16, ptr %2380, align 2, !tbaa !44
  %2385 = sub i16 0, %2384
  %2386 = getelementptr inbounds i8, ptr %2357, i64 18
  store i16 %2385, ptr %2382, align 2, !tbaa !44
  %2387 = getelementptr inbounds i8, ptr %2358, i64 20
  %2388 = load i16, ptr %2383, align 2, !tbaa !44
  %2389 = sub i16 0, %2388
  %2390 = getelementptr inbounds i8, ptr %2357, i64 20
  store i16 %2389, ptr %2386, align 2, !tbaa !44
  %2391 = getelementptr inbounds i8, ptr %2358, i64 22
  %2392 = load i16, ptr %2387, align 2, !tbaa !44
  %2393 = sub i16 0, %2392
  %2394 = getelementptr inbounds i8, ptr %2357, i64 22
  store i16 %2393, ptr %2390, align 2, !tbaa !44
  %2395 = getelementptr inbounds i8, ptr %2358, i64 24
  %2396 = load i16, ptr %2391, align 2, !tbaa !44
  %2397 = sub i16 0, %2396
  %2398 = getelementptr inbounds i8, ptr %2357, i64 24
  store i16 %2397, ptr %2394, align 2, !tbaa !44
  %2399 = getelementptr inbounds i8, ptr %2358, i64 26
  %2400 = load i16, ptr %2395, align 2, !tbaa !44
  %2401 = sub i16 0, %2400
  %2402 = getelementptr inbounds i8, ptr %2357, i64 26
  store i16 %2401, ptr %2398, align 2, !tbaa !44
  %2403 = getelementptr inbounds i8, ptr %2358, i64 28
  %2404 = load i16, ptr %2399, align 2, !tbaa !44
  %2405 = sub i16 0, %2404
  %2406 = getelementptr inbounds i8, ptr %2357, i64 28
  store i16 %2405, ptr %2402, align 2, !tbaa !44
  %2407 = getelementptr inbounds i8, ptr %2358, i64 30
  %2408 = load i16, ptr %2403, align 2, !tbaa !44
  %2409 = sub i16 0, %2408
  %2410 = getelementptr inbounds i8, ptr %2357, i64 30
  store i16 %2409, ptr %2406, align 2, !tbaa !44
  %2411 = getelementptr inbounds i8, ptr %2358, i64 32
  %2412 = load i16, ptr %2407, align 2, !tbaa !44
  %2413 = sub i16 0, %2412
  %2414 = getelementptr inbounds i8, ptr %2357, i64 32
  store i16 %2413, ptr %2410, align 2, !tbaa !44
  %2415 = getelementptr inbounds i8, ptr %2358, i64 34
  %2416 = load i16, ptr %2411, align 2, !tbaa !44
  %2417 = getelementptr inbounds i8, ptr %2357, i64 34
  store i16 %2416, ptr %2414, align 2, !tbaa !44
  %2418 = getelementptr inbounds i8, ptr %2358, i64 36
  %2419 = load i16, ptr %2415, align 2, !tbaa !44
  %2420 = getelementptr inbounds i8, ptr %2357, i64 36
  store i16 %2419, ptr %2417, align 2, !tbaa !44
  %2421 = getelementptr inbounds i8, ptr %2358, i64 38
  %2422 = load i16, ptr %2418, align 2, !tbaa !44
  %2423 = getelementptr inbounds i8, ptr %2357, i64 38
  store i16 %2422, ptr %2420, align 2, !tbaa !44
  %2424 = getelementptr inbounds i8, ptr %2358, i64 40
  %2425 = load i16, ptr %2421, align 2, !tbaa !44
  %2426 = getelementptr inbounds i8, ptr %2357, i64 40
  store i16 %2425, ptr %2423, align 2, !tbaa !44
  %2427 = getelementptr inbounds i8, ptr %2358, i64 42
  %2428 = load i16, ptr %2424, align 2, !tbaa !44
  %2429 = getelementptr inbounds i8, ptr %2357, i64 42
  store i16 %2428, ptr %2426, align 2, !tbaa !44
  %2430 = getelementptr inbounds i8, ptr %2358, i64 44
  %2431 = load i16, ptr %2427, align 2, !tbaa !44
  %2432 = getelementptr inbounds i8, ptr %2357, i64 44
  store i16 %2431, ptr %2429, align 2, !tbaa !44
  %2433 = getelementptr inbounds i8, ptr %2358, i64 46
  %2434 = load i16, ptr %2430, align 2, !tbaa !44
  %2435 = getelementptr inbounds i8, ptr %2357, i64 46
  store i16 %2434, ptr %2432, align 2, !tbaa !44
  %2436 = getelementptr inbounds i8, ptr %2358, i64 48
  %2437 = load i16, ptr %2433, align 2, !tbaa !44
  %2438 = getelementptr inbounds i8, ptr %2357, i64 48
  store i16 %2437, ptr %2435, align 2, !tbaa !44
  %2439 = getelementptr inbounds i8, ptr %2358, i64 50
  %2440 = load i16, ptr %2436, align 2, !tbaa !44
  %2441 = sub i16 0, %2440
  %2442 = getelementptr inbounds i8, ptr %2357, i64 50
  store i16 %2441, ptr %2438, align 2, !tbaa !44
  %2443 = getelementptr inbounds i8, ptr %2358, i64 52
  %2444 = load i16, ptr %2439, align 2, !tbaa !44
  %2445 = sub i16 0, %2444
  %2446 = getelementptr inbounds i8, ptr %2357, i64 52
  store i16 %2445, ptr %2442, align 2, !tbaa !44
  %2447 = getelementptr inbounds i8, ptr %2358, i64 54
  %2448 = load i16, ptr %2443, align 2, !tbaa !44
  %2449 = sub i16 0, %2448
  %2450 = getelementptr inbounds i8, ptr %2357, i64 54
  store i16 %2449, ptr %2446, align 2, !tbaa !44
  %2451 = getelementptr inbounds i8, ptr %2358, i64 56
  %2452 = load i16, ptr %2447, align 2, !tbaa !44
  %2453 = sub i16 0, %2452
  %2454 = getelementptr inbounds i8, ptr %2357, i64 56
  store i16 %2453, ptr %2450, align 2, !tbaa !44
  %2455 = getelementptr inbounds i8, ptr %2358, i64 58
  %2456 = load i16, ptr %2451, align 2, !tbaa !44
  %2457 = sub i16 0, %2456
  %2458 = getelementptr inbounds i8, ptr %2357, i64 58
  store i16 %2457, ptr %2454, align 2, !tbaa !44
  %2459 = getelementptr inbounds i8, ptr %2358, i64 60
  %2460 = load i16, ptr %2455, align 2, !tbaa !44
  %2461 = sub i16 0, %2460
  %2462 = getelementptr inbounds i8, ptr %2357, i64 60
  store i16 %2461, ptr %2458, align 2, !tbaa !44
  %2463 = getelementptr inbounds i8, ptr %2358, i64 62
  %2464 = load i16, ptr %2459, align 2, !tbaa !44
  %2465 = sub i16 0, %2464
  %2466 = getelementptr inbounds i8, ptr %2357, i64 62
  store i16 %2465, ptr %2462, align 2, !tbaa !44
  %2467 = getelementptr inbounds i8, ptr %2358, i64 64
  %2468 = load i16, ptr %2463, align 2, !tbaa !44
  %2469 = sub i16 0, %2468
  %2470 = getelementptr inbounds i8, ptr %2357, i64 64
  store i16 %2469, ptr %2466, align 2, !tbaa !44
  %2471 = getelementptr inbounds i8, ptr %2358, i64 66
  %2472 = load i16, ptr %2467, align 2, !tbaa !44
  %2473 = getelementptr inbounds i8, ptr %2357, i64 66
  store i16 %2472, ptr %2470, align 2, !tbaa !44
  %2474 = getelementptr inbounds i8, ptr %2358, i64 68
  %2475 = load i16, ptr %2471, align 2, !tbaa !44
  %2476 = getelementptr inbounds i8, ptr %2357, i64 68
  store i16 %2475, ptr %2473, align 2, !tbaa !44
  %2477 = getelementptr inbounds i8, ptr %2358, i64 70
  %2478 = load i16, ptr %2474, align 2, !tbaa !44
  %2479 = getelementptr inbounds i8, ptr %2357, i64 70
  store i16 %2478, ptr %2476, align 2, !tbaa !44
  %2480 = getelementptr inbounds i8, ptr %2358, i64 72
  %2481 = load i16, ptr %2477, align 2, !tbaa !44
  %2482 = getelementptr inbounds i8, ptr %2357, i64 72
  store i16 %2481, ptr %2479, align 2, !tbaa !44
  %2483 = getelementptr inbounds i8, ptr %2358, i64 74
  %2484 = load i16, ptr %2480, align 2, !tbaa !44
  %2485 = getelementptr inbounds i8, ptr %2357, i64 74
  store i16 %2484, ptr %2482, align 2, !tbaa !44
  %2486 = getelementptr inbounds i8, ptr %2358, i64 76
  %2487 = load i16, ptr %2483, align 2, !tbaa !44
  %2488 = getelementptr inbounds i8, ptr %2357, i64 76
  store i16 %2487, ptr %2485, align 2, !tbaa !44
  %2489 = getelementptr inbounds i8, ptr %2358, i64 78
  %2490 = load i16, ptr %2486, align 2, !tbaa !44
  %2491 = getelementptr inbounds i8, ptr %2357, i64 78
  store i16 %2490, ptr %2488, align 2, !tbaa !44
  %2492 = getelementptr inbounds i8, ptr %2358, i64 80
  %2493 = load i16, ptr %2489, align 2, !tbaa !44
  %2494 = getelementptr inbounds i8, ptr %2357, i64 80
  store i16 %2493, ptr %2491, align 2, !tbaa !44
  %2495 = getelementptr inbounds i8, ptr %2358, i64 82
  %2496 = load i16, ptr %2492, align 2, !tbaa !44
  %2497 = sub i16 0, %2496
  %2498 = getelementptr inbounds i8, ptr %2357, i64 82
  store i16 %2497, ptr %2494, align 2, !tbaa !44
  %2499 = getelementptr inbounds i8, ptr %2358, i64 84
  %2500 = load i16, ptr %2495, align 2, !tbaa !44
  %2501 = sub i16 0, %2500
  %2502 = getelementptr inbounds i8, ptr %2357, i64 84
  store i16 %2501, ptr %2498, align 2, !tbaa !44
  %2503 = getelementptr inbounds i8, ptr %2358, i64 86
  %2504 = load i16, ptr %2499, align 2, !tbaa !44
  %2505 = sub i16 0, %2504
  %2506 = getelementptr inbounds i8, ptr %2357, i64 86
  store i16 %2505, ptr %2502, align 2, !tbaa !44
  %2507 = getelementptr inbounds i8, ptr %2358, i64 88
  %2508 = load i16, ptr %2503, align 2, !tbaa !44
  %2509 = sub i16 0, %2508
  %2510 = getelementptr inbounds i8, ptr %2357, i64 88
  store i16 %2509, ptr %2506, align 2, !tbaa !44
  %2511 = getelementptr inbounds i8, ptr %2358, i64 90
  %2512 = load i16, ptr %2507, align 2, !tbaa !44
  %2513 = sub i16 0, %2512
  %2514 = getelementptr inbounds i8, ptr %2357, i64 90
  store i16 %2513, ptr %2510, align 2, !tbaa !44
  %2515 = getelementptr inbounds i8, ptr %2358, i64 92
  %2516 = load i16, ptr %2511, align 2, !tbaa !44
  %2517 = sub i16 0, %2516
  %2518 = getelementptr inbounds i8, ptr %2357, i64 92
  store i16 %2517, ptr %2514, align 2, !tbaa !44
  %2519 = getelementptr inbounds i8, ptr %2358, i64 94
  %2520 = load i16, ptr %2515, align 2, !tbaa !44
  %2521 = sub i16 0, %2520
  %2522 = getelementptr inbounds i8, ptr %2357, i64 94
  store i16 %2521, ptr %2518, align 2, !tbaa !44
  %2523 = getelementptr inbounds i8, ptr %2358, i64 96
  %2524 = load i16, ptr %2519, align 2, !tbaa !44
  %2525 = sub i16 0, %2524
  %2526 = getelementptr inbounds i8, ptr %2357, i64 96
  store i16 %2525, ptr %2522, align 2, !tbaa !44
  %2527 = getelementptr inbounds i8, ptr %2358, i64 98
  %2528 = load i16, ptr %2523, align 2, !tbaa !44
  %2529 = getelementptr inbounds i8, ptr %2357, i64 98
  store i16 %2528, ptr %2526, align 2, !tbaa !44
  %2530 = getelementptr inbounds i8, ptr %2358, i64 100
  %2531 = load i16, ptr %2527, align 2, !tbaa !44
  %2532 = getelementptr inbounds i8, ptr %2357, i64 100
  store i16 %2531, ptr %2529, align 2, !tbaa !44
  %2533 = getelementptr inbounds i8, ptr %2358, i64 102
  %2534 = load i16, ptr %2530, align 2, !tbaa !44
  %2535 = getelementptr inbounds i8, ptr %2357, i64 102
  store i16 %2534, ptr %2532, align 2, !tbaa !44
  %2536 = getelementptr inbounds i8, ptr %2358, i64 104
  %2537 = load i16, ptr %2533, align 2, !tbaa !44
  %2538 = getelementptr inbounds i8, ptr %2357, i64 104
  store i16 %2537, ptr %2535, align 2, !tbaa !44
  %2539 = getelementptr inbounds i8, ptr %2358, i64 106
  %2540 = load i16, ptr %2536, align 2, !tbaa !44
  %2541 = getelementptr inbounds i8, ptr %2357, i64 106
  store i16 %2540, ptr %2538, align 2, !tbaa !44
  %2542 = getelementptr inbounds i8, ptr %2358, i64 108
  %2543 = load i16, ptr %2539, align 2, !tbaa !44
  %2544 = getelementptr inbounds i8, ptr %2357, i64 108
  store i16 %2543, ptr %2541, align 2, !tbaa !44
  %2545 = getelementptr inbounds i8, ptr %2358, i64 110
  %2546 = load i16, ptr %2542, align 2, !tbaa !44
  %2547 = getelementptr inbounds i8, ptr %2357, i64 110
  store i16 %2546, ptr %2544, align 2, !tbaa !44
  %2548 = getelementptr inbounds i8, ptr %2358, i64 112
  %2549 = load i16, ptr %2545, align 2, !tbaa !44
  %2550 = getelementptr inbounds i8, ptr %2357, i64 112
  store i16 %2549, ptr %2547, align 2, !tbaa !44
  %2551 = getelementptr inbounds i8, ptr %2358, i64 114
  %2552 = load i16, ptr %2548, align 2, !tbaa !44
  %2553 = sub i16 0, %2552
  %2554 = getelementptr inbounds i8, ptr %2357, i64 114
  store i16 %2553, ptr %2550, align 2, !tbaa !44
  %2555 = getelementptr inbounds i8, ptr %2358, i64 116
  %2556 = load i16, ptr %2551, align 2, !tbaa !44
  %2557 = sub i16 0, %2556
  %2558 = getelementptr inbounds i8, ptr %2357, i64 116
  store i16 %2557, ptr %2554, align 2, !tbaa !44
  %2559 = getelementptr inbounds i8, ptr %2358, i64 118
  %2560 = load i16, ptr %2555, align 2, !tbaa !44
  %2561 = sub i16 0, %2560
  %2562 = getelementptr inbounds i8, ptr %2357, i64 118
  store i16 %2561, ptr %2558, align 2, !tbaa !44
  %2563 = getelementptr inbounds i8, ptr %2358, i64 120
  %2564 = load i16, ptr %2559, align 2, !tbaa !44
  %2565 = sub i16 0, %2564
  %2566 = getelementptr inbounds i8, ptr %2357, i64 120
  store i16 %2565, ptr %2562, align 2, !tbaa !44
  %2567 = getelementptr inbounds i8, ptr %2358, i64 122
  %2568 = load i16, ptr %2563, align 2, !tbaa !44
  %2569 = sub i16 0, %2568
  %2570 = getelementptr inbounds i8, ptr %2357, i64 122
  store i16 %2569, ptr %2566, align 2, !tbaa !44
  %2571 = getelementptr inbounds i8, ptr %2358, i64 124
  %2572 = load i16, ptr %2567, align 2, !tbaa !44
  %2573 = sub i16 0, %2572
  %2574 = getelementptr inbounds i8, ptr %2357, i64 124
  store i16 %2573, ptr %2570, align 2, !tbaa !44
  %2575 = getelementptr inbounds i8, ptr %2358, i64 126
  %2576 = load i16, ptr %2571, align 2, !tbaa !44
  %2577 = sub i16 0, %2576
  %2578 = getelementptr inbounds i8, ptr %2357, i64 126
  store i16 %2577, ptr %2574, align 2, !tbaa !44
  %2579 = load i16, ptr %2575, align 2, !tbaa !44
  %2580 = sub i16 0, %2579
  store i16 %2580, ptr %2578, align 2, !tbaa !44
  %2581 = add nuw nsw i64 %2356, 1
  %2582 = icmp eq i64 %2581, %2346
  br i1 %2582, label %2822, label %2355

2583:                                             ; preds = %2348, %2583
  %2584 = phi i64 [ %2813, %2583 ], [ 0, %2348 ]
  %2585 = getelementptr inbounds [64 x i16], ptr %2351, i64 %2584
  %2586 = trunc nuw i64 %2584 to i32
  %2587 = xor i32 %2586, -1
  %2588 = add i32 %2306, %2587
  %2589 = zext i32 %2588 to i64
  %2590 = getelementptr inbounds [64 x i16], ptr %2354, i64 %2589
  %2591 = getelementptr inbounds i8, ptr %2590, i64 2
  %2592 = load i16, ptr %2590, align 2, !tbaa !44
  %2593 = getelementptr inbounds i8, ptr %2585, i64 2
  store i16 %2592, ptr %2585, align 2, !tbaa !44
  %2594 = getelementptr inbounds i8, ptr %2590, i64 4
  %2595 = load i16, ptr %2591, align 2, !tbaa !44
  %2596 = sub i16 0, %2595
  %2597 = getelementptr inbounds i8, ptr %2585, i64 4
  store i16 %2596, ptr %2593, align 2, !tbaa !44
  %2598 = getelementptr inbounds i8, ptr %2590, i64 6
  %2599 = load i16, ptr %2594, align 2, !tbaa !44
  %2600 = getelementptr inbounds i8, ptr %2585, i64 6
  store i16 %2599, ptr %2597, align 2, !tbaa !44
  %2601 = getelementptr inbounds i8, ptr %2590, i64 8
  %2602 = load i16, ptr %2598, align 2, !tbaa !44
  %2603 = sub i16 0, %2602
  %2604 = getelementptr inbounds i8, ptr %2585, i64 8
  store i16 %2603, ptr %2600, align 2, !tbaa !44
  %2605 = getelementptr inbounds i8, ptr %2590, i64 10
  %2606 = load i16, ptr %2601, align 2, !tbaa !44
  %2607 = getelementptr inbounds i8, ptr %2585, i64 10
  store i16 %2606, ptr %2604, align 2, !tbaa !44
  %2608 = getelementptr inbounds i8, ptr %2590, i64 12
  %2609 = load i16, ptr %2605, align 2, !tbaa !44
  %2610 = sub i16 0, %2609
  %2611 = getelementptr inbounds i8, ptr %2585, i64 12
  store i16 %2610, ptr %2607, align 2, !tbaa !44
  %2612 = getelementptr inbounds i8, ptr %2590, i64 14
  %2613 = load i16, ptr %2608, align 2, !tbaa !44
  %2614 = getelementptr inbounds i8, ptr %2585, i64 14
  store i16 %2613, ptr %2611, align 2, !tbaa !44
  %2615 = getelementptr inbounds i8, ptr %2590, i64 16
  %2616 = load i16, ptr %2612, align 2, !tbaa !44
  %2617 = sub i16 0, %2616
  %2618 = getelementptr inbounds i8, ptr %2585, i64 16
  store i16 %2617, ptr %2614, align 2, !tbaa !44
  %2619 = getelementptr inbounds i8, ptr %2590, i64 18
  %2620 = load i16, ptr %2615, align 2, !tbaa !44
  %2621 = sub i16 0, %2620
  %2622 = getelementptr inbounds i8, ptr %2585, i64 18
  store i16 %2621, ptr %2618, align 2, !tbaa !44
  %2623 = getelementptr inbounds i8, ptr %2590, i64 20
  %2624 = load i16, ptr %2619, align 2, !tbaa !44
  %2625 = getelementptr inbounds i8, ptr %2585, i64 20
  store i16 %2624, ptr %2622, align 2, !tbaa !44
  %2626 = getelementptr inbounds i8, ptr %2590, i64 22
  %2627 = load i16, ptr %2623, align 2, !tbaa !44
  %2628 = sub i16 0, %2627
  %2629 = getelementptr inbounds i8, ptr %2585, i64 22
  store i16 %2628, ptr %2625, align 2, !tbaa !44
  %2630 = getelementptr inbounds i8, ptr %2590, i64 24
  %2631 = load i16, ptr %2626, align 2, !tbaa !44
  %2632 = getelementptr inbounds i8, ptr %2585, i64 24
  store i16 %2631, ptr %2629, align 2, !tbaa !44
  %2633 = getelementptr inbounds i8, ptr %2590, i64 26
  %2634 = load i16, ptr %2630, align 2, !tbaa !44
  %2635 = sub i16 0, %2634
  %2636 = getelementptr inbounds i8, ptr %2585, i64 26
  store i16 %2635, ptr %2632, align 2, !tbaa !44
  %2637 = getelementptr inbounds i8, ptr %2590, i64 28
  %2638 = load i16, ptr %2633, align 2, !tbaa !44
  %2639 = getelementptr inbounds i8, ptr %2585, i64 28
  store i16 %2638, ptr %2636, align 2, !tbaa !44
  %2640 = getelementptr inbounds i8, ptr %2590, i64 30
  %2641 = load i16, ptr %2637, align 2, !tbaa !44
  %2642 = sub i16 0, %2641
  %2643 = getelementptr inbounds i8, ptr %2585, i64 30
  store i16 %2642, ptr %2639, align 2, !tbaa !44
  %2644 = getelementptr inbounds i8, ptr %2590, i64 32
  %2645 = load i16, ptr %2640, align 2, !tbaa !44
  %2646 = getelementptr inbounds i8, ptr %2585, i64 32
  store i16 %2645, ptr %2643, align 2, !tbaa !44
  %2647 = getelementptr inbounds i8, ptr %2590, i64 34
  %2648 = load i16, ptr %2644, align 2, !tbaa !44
  %2649 = getelementptr inbounds i8, ptr %2585, i64 34
  store i16 %2648, ptr %2646, align 2, !tbaa !44
  %2650 = getelementptr inbounds i8, ptr %2590, i64 36
  %2651 = load i16, ptr %2647, align 2, !tbaa !44
  %2652 = sub i16 0, %2651
  %2653 = getelementptr inbounds i8, ptr %2585, i64 36
  store i16 %2652, ptr %2649, align 2, !tbaa !44
  %2654 = getelementptr inbounds i8, ptr %2590, i64 38
  %2655 = load i16, ptr %2650, align 2, !tbaa !44
  %2656 = getelementptr inbounds i8, ptr %2585, i64 38
  store i16 %2655, ptr %2653, align 2, !tbaa !44
  %2657 = getelementptr inbounds i8, ptr %2590, i64 40
  %2658 = load i16, ptr %2654, align 2, !tbaa !44
  %2659 = sub i16 0, %2658
  %2660 = getelementptr inbounds i8, ptr %2585, i64 40
  store i16 %2659, ptr %2656, align 2, !tbaa !44
  %2661 = getelementptr inbounds i8, ptr %2590, i64 42
  %2662 = load i16, ptr %2657, align 2, !tbaa !44
  %2663 = getelementptr inbounds i8, ptr %2585, i64 42
  store i16 %2662, ptr %2660, align 2, !tbaa !44
  %2664 = getelementptr inbounds i8, ptr %2590, i64 44
  %2665 = load i16, ptr %2661, align 2, !tbaa !44
  %2666 = sub i16 0, %2665
  %2667 = getelementptr inbounds i8, ptr %2585, i64 44
  store i16 %2666, ptr %2663, align 2, !tbaa !44
  %2668 = getelementptr inbounds i8, ptr %2590, i64 46
  %2669 = load i16, ptr %2664, align 2, !tbaa !44
  %2670 = getelementptr inbounds i8, ptr %2585, i64 46
  store i16 %2669, ptr %2667, align 2, !tbaa !44
  %2671 = getelementptr inbounds i8, ptr %2590, i64 48
  %2672 = load i16, ptr %2668, align 2, !tbaa !44
  %2673 = sub i16 0, %2672
  %2674 = getelementptr inbounds i8, ptr %2585, i64 48
  store i16 %2673, ptr %2670, align 2, !tbaa !44
  %2675 = getelementptr inbounds i8, ptr %2590, i64 50
  %2676 = load i16, ptr %2671, align 2, !tbaa !44
  %2677 = sub i16 0, %2676
  %2678 = getelementptr inbounds i8, ptr %2585, i64 50
  store i16 %2677, ptr %2674, align 2, !tbaa !44
  %2679 = getelementptr inbounds i8, ptr %2590, i64 52
  %2680 = load i16, ptr %2675, align 2, !tbaa !44
  %2681 = getelementptr inbounds i8, ptr %2585, i64 52
  store i16 %2680, ptr %2678, align 2, !tbaa !44
  %2682 = getelementptr inbounds i8, ptr %2590, i64 54
  %2683 = load i16, ptr %2679, align 2, !tbaa !44
  %2684 = sub i16 0, %2683
  %2685 = getelementptr inbounds i8, ptr %2585, i64 54
  store i16 %2684, ptr %2681, align 2, !tbaa !44
  %2686 = getelementptr inbounds i8, ptr %2590, i64 56
  %2687 = load i16, ptr %2682, align 2, !tbaa !44
  %2688 = getelementptr inbounds i8, ptr %2585, i64 56
  store i16 %2687, ptr %2685, align 2, !tbaa !44
  %2689 = getelementptr inbounds i8, ptr %2590, i64 58
  %2690 = load i16, ptr %2686, align 2, !tbaa !44
  %2691 = sub i16 0, %2690
  %2692 = getelementptr inbounds i8, ptr %2585, i64 58
  store i16 %2691, ptr %2688, align 2, !tbaa !44
  %2693 = getelementptr inbounds i8, ptr %2590, i64 60
  %2694 = load i16, ptr %2689, align 2, !tbaa !44
  %2695 = getelementptr inbounds i8, ptr %2585, i64 60
  store i16 %2694, ptr %2692, align 2, !tbaa !44
  %2696 = getelementptr inbounds i8, ptr %2590, i64 62
  %2697 = load i16, ptr %2693, align 2, !tbaa !44
  %2698 = sub i16 0, %2697
  %2699 = getelementptr inbounds i8, ptr %2585, i64 62
  store i16 %2698, ptr %2695, align 2, !tbaa !44
  %2700 = getelementptr inbounds i8, ptr %2590, i64 64
  %2701 = load i16, ptr %2696, align 2, !tbaa !44
  %2702 = getelementptr inbounds i8, ptr %2585, i64 64
  store i16 %2701, ptr %2699, align 2, !tbaa !44
  %2703 = getelementptr inbounds i8, ptr %2590, i64 66
  %2704 = load i16, ptr %2700, align 2, !tbaa !44
  %2705 = getelementptr inbounds i8, ptr %2585, i64 66
  store i16 %2704, ptr %2702, align 2, !tbaa !44
  %2706 = getelementptr inbounds i8, ptr %2590, i64 68
  %2707 = load i16, ptr %2703, align 2, !tbaa !44
  %2708 = sub i16 0, %2707
  %2709 = getelementptr inbounds i8, ptr %2585, i64 68
  store i16 %2708, ptr %2705, align 2, !tbaa !44
  %2710 = getelementptr inbounds i8, ptr %2590, i64 70
  %2711 = load i16, ptr %2706, align 2, !tbaa !44
  %2712 = getelementptr inbounds i8, ptr %2585, i64 70
  store i16 %2711, ptr %2709, align 2, !tbaa !44
  %2713 = getelementptr inbounds i8, ptr %2590, i64 72
  %2714 = load i16, ptr %2710, align 2, !tbaa !44
  %2715 = sub i16 0, %2714
  %2716 = getelementptr inbounds i8, ptr %2585, i64 72
  store i16 %2715, ptr %2712, align 2, !tbaa !44
  %2717 = getelementptr inbounds i8, ptr %2590, i64 74
  %2718 = load i16, ptr %2713, align 2, !tbaa !44
  %2719 = getelementptr inbounds i8, ptr %2585, i64 74
  store i16 %2718, ptr %2716, align 2, !tbaa !44
  %2720 = getelementptr inbounds i8, ptr %2590, i64 76
  %2721 = load i16, ptr %2717, align 2, !tbaa !44
  %2722 = sub i16 0, %2721
  %2723 = getelementptr inbounds i8, ptr %2585, i64 76
  store i16 %2722, ptr %2719, align 2, !tbaa !44
  %2724 = getelementptr inbounds i8, ptr %2590, i64 78
  %2725 = load i16, ptr %2720, align 2, !tbaa !44
  %2726 = getelementptr inbounds i8, ptr %2585, i64 78
  store i16 %2725, ptr %2723, align 2, !tbaa !44
  %2727 = getelementptr inbounds i8, ptr %2590, i64 80
  %2728 = load i16, ptr %2724, align 2, !tbaa !44
  %2729 = sub i16 0, %2728
  %2730 = getelementptr inbounds i8, ptr %2585, i64 80
  store i16 %2729, ptr %2726, align 2, !tbaa !44
  %2731 = getelementptr inbounds i8, ptr %2590, i64 82
  %2732 = load i16, ptr %2727, align 2, !tbaa !44
  %2733 = sub i16 0, %2732
  %2734 = getelementptr inbounds i8, ptr %2585, i64 82
  store i16 %2733, ptr %2730, align 2, !tbaa !44
  %2735 = getelementptr inbounds i8, ptr %2590, i64 84
  %2736 = load i16, ptr %2731, align 2, !tbaa !44
  %2737 = getelementptr inbounds i8, ptr %2585, i64 84
  store i16 %2736, ptr %2734, align 2, !tbaa !44
  %2738 = getelementptr inbounds i8, ptr %2590, i64 86
  %2739 = load i16, ptr %2735, align 2, !tbaa !44
  %2740 = sub i16 0, %2739
  %2741 = getelementptr inbounds i8, ptr %2585, i64 86
  store i16 %2740, ptr %2737, align 2, !tbaa !44
  %2742 = getelementptr inbounds i8, ptr %2590, i64 88
  %2743 = load i16, ptr %2738, align 2, !tbaa !44
  %2744 = getelementptr inbounds i8, ptr %2585, i64 88
  store i16 %2743, ptr %2741, align 2, !tbaa !44
  %2745 = getelementptr inbounds i8, ptr %2590, i64 90
  %2746 = load i16, ptr %2742, align 2, !tbaa !44
  %2747 = sub i16 0, %2746
  %2748 = getelementptr inbounds i8, ptr %2585, i64 90
  store i16 %2747, ptr %2744, align 2, !tbaa !44
  %2749 = getelementptr inbounds i8, ptr %2590, i64 92
  %2750 = load i16, ptr %2745, align 2, !tbaa !44
  %2751 = getelementptr inbounds i8, ptr %2585, i64 92
  store i16 %2750, ptr %2748, align 2, !tbaa !44
  %2752 = getelementptr inbounds i8, ptr %2590, i64 94
  %2753 = load i16, ptr %2749, align 2, !tbaa !44
  %2754 = sub i16 0, %2753
  %2755 = getelementptr inbounds i8, ptr %2585, i64 94
  store i16 %2754, ptr %2751, align 2, !tbaa !44
  %2756 = getelementptr inbounds i8, ptr %2590, i64 96
  %2757 = load i16, ptr %2752, align 2, !tbaa !44
  %2758 = getelementptr inbounds i8, ptr %2585, i64 96
  store i16 %2757, ptr %2755, align 2, !tbaa !44
  %2759 = getelementptr inbounds i8, ptr %2590, i64 98
  %2760 = load i16, ptr %2756, align 2, !tbaa !44
  %2761 = getelementptr inbounds i8, ptr %2585, i64 98
  store i16 %2760, ptr %2758, align 2, !tbaa !44
  %2762 = getelementptr inbounds i8, ptr %2590, i64 100
  %2763 = load i16, ptr %2759, align 2, !tbaa !44
  %2764 = sub i16 0, %2763
  %2765 = getelementptr inbounds i8, ptr %2585, i64 100
  store i16 %2764, ptr %2761, align 2, !tbaa !44
  %2766 = getelementptr inbounds i8, ptr %2590, i64 102
  %2767 = load i16, ptr %2762, align 2, !tbaa !44
  %2768 = getelementptr inbounds i8, ptr %2585, i64 102
  store i16 %2767, ptr %2765, align 2, !tbaa !44
  %2769 = getelementptr inbounds i8, ptr %2590, i64 104
  %2770 = load i16, ptr %2766, align 2, !tbaa !44
  %2771 = sub i16 0, %2770
  %2772 = getelementptr inbounds i8, ptr %2585, i64 104
  store i16 %2771, ptr %2768, align 2, !tbaa !44
  %2773 = getelementptr inbounds i8, ptr %2590, i64 106
  %2774 = load i16, ptr %2769, align 2, !tbaa !44
  %2775 = getelementptr inbounds i8, ptr %2585, i64 106
  store i16 %2774, ptr %2772, align 2, !tbaa !44
  %2776 = getelementptr inbounds i8, ptr %2590, i64 108
  %2777 = load i16, ptr %2773, align 2, !tbaa !44
  %2778 = sub i16 0, %2777
  %2779 = getelementptr inbounds i8, ptr %2585, i64 108
  store i16 %2778, ptr %2775, align 2, !tbaa !44
  %2780 = getelementptr inbounds i8, ptr %2590, i64 110
  %2781 = load i16, ptr %2776, align 2, !tbaa !44
  %2782 = getelementptr inbounds i8, ptr %2585, i64 110
  store i16 %2781, ptr %2779, align 2, !tbaa !44
  %2783 = getelementptr inbounds i8, ptr %2590, i64 112
  %2784 = load i16, ptr %2780, align 2, !tbaa !44
  %2785 = sub i16 0, %2784
  %2786 = getelementptr inbounds i8, ptr %2585, i64 112
  store i16 %2785, ptr %2782, align 2, !tbaa !44
  %2787 = getelementptr inbounds i8, ptr %2590, i64 114
  %2788 = load i16, ptr %2783, align 2, !tbaa !44
  %2789 = sub i16 0, %2788
  %2790 = getelementptr inbounds i8, ptr %2585, i64 114
  store i16 %2789, ptr %2786, align 2, !tbaa !44
  %2791 = getelementptr inbounds i8, ptr %2590, i64 116
  %2792 = load i16, ptr %2787, align 2, !tbaa !44
  %2793 = getelementptr inbounds i8, ptr %2585, i64 116
  store i16 %2792, ptr %2790, align 2, !tbaa !44
  %2794 = getelementptr inbounds i8, ptr %2590, i64 118
  %2795 = load i16, ptr %2791, align 2, !tbaa !44
  %2796 = sub i16 0, %2795
  %2797 = getelementptr inbounds i8, ptr %2585, i64 118
  store i16 %2796, ptr %2793, align 2, !tbaa !44
  %2798 = getelementptr inbounds i8, ptr %2590, i64 120
  %2799 = load i16, ptr %2794, align 2, !tbaa !44
  %2800 = getelementptr inbounds i8, ptr %2585, i64 120
  store i16 %2799, ptr %2797, align 2, !tbaa !44
  %2801 = getelementptr inbounds i8, ptr %2590, i64 122
  %2802 = load i16, ptr %2798, align 2, !tbaa !44
  %2803 = sub i16 0, %2802
  %2804 = getelementptr inbounds i8, ptr %2585, i64 122
  store i16 %2803, ptr %2800, align 2, !tbaa !44
  %2805 = getelementptr inbounds i8, ptr %2590, i64 124
  %2806 = load i16, ptr %2801, align 2, !tbaa !44
  %2807 = getelementptr inbounds i8, ptr %2585, i64 124
  store i16 %2806, ptr %2804, align 2, !tbaa !44
  %2808 = getelementptr inbounds i8, ptr %2590, i64 126
  %2809 = load i16, ptr %2805, align 2, !tbaa !44
  %2810 = sub i16 0, %2809
  %2811 = getelementptr inbounds i8, ptr %2585, i64 126
  store i16 %2810, ptr %2807, align 2, !tbaa !44
  %2812 = load i16, ptr %2808, align 2, !tbaa !44
  store i16 %2812, ptr %2811, align 2, !tbaa !44
  %2813 = add nuw nsw i64 %2584, 1
  %2814 = icmp ult i64 %2813, %2318
  br i1 %2814, label %2583, label %2815

2815:                                             ; preds = %2583
  %2816 = trunc nuw i64 %2813 to i32
  br label %2817

2817:                                             ; preds = %2815, %2348
  %2818 = phi i32 [ 0, %2348 ], [ %2816, %2815 ]
  %2819 = icmp ult i32 %2818, %2344
  br i1 %2819, label %2820, label %2822

2820:                                             ; preds = %2817
  %2821 = zext i32 %2818 to i64
  br label %2355

2822:                                             ; preds = %2355, %2817
  %2823 = add nuw nsw i64 %2349, 1
  %2824 = icmp eq i64 %2823, %2345
  br i1 %2824, label %3273, label %2348

2825:                                             ; preds = %2339
  %2826 = load i32, ptr %2317, align 4, !tbaa !25
  %2827 = zext nneg i32 %2341 to i64
  %2828 = zext i32 %2826 to i64
  br label %2829

2829:                                             ; preds = %3270, %2825
  %2830 = phi i64 [ 0, %2825 ], [ %3271, %3270 ]
  %2831 = getelementptr inbounds ptr, ptr %2326, i64 %2830
  %2832 = load ptr, ptr %2831, align 8, !tbaa !30
  %2833 = getelementptr inbounds ptr, ptr %2340, i64 %2830
  %2834 = load ptr, ptr %2833, align 8, !tbaa !30
  br i1 %2316, label %2837, label %2842

2835:                                             ; preds = %2842
  %2836 = trunc nuw i64 %3072 to i32
  br label %2837

2837:                                             ; preds = %2835, %2829
  %2838 = phi i32 [ 0, %2829 ], [ %2836, %2835 ]
  %2839 = icmp ult i32 %2838, %2826
  br i1 %2839, label %2840, label %3270

2840:                                             ; preds = %2837
  %2841 = zext i32 %2838 to i64
  br label %3074

2842:                                             ; preds = %2829, %2842
  %2843 = phi i64 [ %3072, %2842 ], [ 0, %2829 ]
  %2844 = getelementptr inbounds [64 x i16], ptr %2832, i64 %2843
  %2845 = trunc nuw i64 %2843 to i32
  %2846 = xor i32 %2845, -1
  %2847 = add i32 %2306, %2846
  %2848 = zext i32 %2847 to i64
  %2849 = getelementptr inbounds [64 x i16], ptr %2834, i64 %2848
  %2850 = getelementptr inbounds i8, ptr %2849, i64 2
  %2851 = load i16, ptr %2849, align 2, !tbaa !44
  %2852 = getelementptr inbounds i8, ptr %2844, i64 2
  store i16 %2851, ptr %2844, align 2, !tbaa !44
  %2853 = getelementptr inbounds i8, ptr %2849, i64 4
  %2854 = load i16, ptr %2850, align 2, !tbaa !44
  %2855 = sub i16 0, %2854
  %2856 = getelementptr inbounds i8, ptr %2844, i64 4
  store i16 %2855, ptr %2852, align 2, !tbaa !44
  %2857 = getelementptr inbounds i8, ptr %2849, i64 6
  %2858 = load i16, ptr %2853, align 2, !tbaa !44
  %2859 = getelementptr inbounds i8, ptr %2844, i64 6
  store i16 %2858, ptr %2856, align 2, !tbaa !44
  %2860 = getelementptr inbounds i8, ptr %2849, i64 8
  %2861 = load i16, ptr %2857, align 2, !tbaa !44
  %2862 = sub i16 0, %2861
  %2863 = getelementptr inbounds i8, ptr %2844, i64 8
  store i16 %2862, ptr %2859, align 2, !tbaa !44
  %2864 = getelementptr inbounds i8, ptr %2849, i64 10
  %2865 = load i16, ptr %2860, align 2, !tbaa !44
  %2866 = getelementptr inbounds i8, ptr %2844, i64 10
  store i16 %2865, ptr %2863, align 2, !tbaa !44
  %2867 = getelementptr inbounds i8, ptr %2849, i64 12
  %2868 = load i16, ptr %2864, align 2, !tbaa !44
  %2869 = sub i16 0, %2868
  %2870 = getelementptr inbounds i8, ptr %2844, i64 12
  store i16 %2869, ptr %2866, align 2, !tbaa !44
  %2871 = getelementptr inbounds i8, ptr %2849, i64 14
  %2872 = load i16, ptr %2867, align 2, !tbaa !44
  %2873 = getelementptr inbounds i8, ptr %2844, i64 14
  store i16 %2872, ptr %2870, align 2, !tbaa !44
  %2874 = getelementptr inbounds i8, ptr %2849, i64 16
  %2875 = load i16, ptr %2871, align 2, !tbaa !44
  %2876 = sub i16 0, %2875
  %2877 = getelementptr inbounds i8, ptr %2844, i64 16
  store i16 %2876, ptr %2873, align 2, !tbaa !44
  %2878 = getelementptr inbounds i8, ptr %2849, i64 18
  %2879 = load i16, ptr %2874, align 2, !tbaa !44
  %2880 = getelementptr inbounds i8, ptr %2844, i64 18
  store i16 %2879, ptr %2877, align 2, !tbaa !44
  %2881 = getelementptr inbounds i8, ptr %2849, i64 20
  %2882 = load i16, ptr %2878, align 2, !tbaa !44
  %2883 = sub i16 0, %2882
  %2884 = getelementptr inbounds i8, ptr %2844, i64 20
  store i16 %2883, ptr %2880, align 2, !tbaa !44
  %2885 = getelementptr inbounds i8, ptr %2849, i64 22
  %2886 = load i16, ptr %2881, align 2, !tbaa !44
  %2887 = getelementptr inbounds i8, ptr %2844, i64 22
  store i16 %2886, ptr %2884, align 2, !tbaa !44
  %2888 = getelementptr inbounds i8, ptr %2849, i64 24
  %2889 = load i16, ptr %2885, align 2, !tbaa !44
  %2890 = sub i16 0, %2889
  %2891 = getelementptr inbounds i8, ptr %2844, i64 24
  store i16 %2890, ptr %2887, align 2, !tbaa !44
  %2892 = getelementptr inbounds i8, ptr %2849, i64 26
  %2893 = load i16, ptr %2888, align 2, !tbaa !44
  %2894 = getelementptr inbounds i8, ptr %2844, i64 26
  store i16 %2893, ptr %2891, align 2, !tbaa !44
  %2895 = getelementptr inbounds i8, ptr %2849, i64 28
  %2896 = load i16, ptr %2892, align 2, !tbaa !44
  %2897 = sub i16 0, %2896
  %2898 = getelementptr inbounds i8, ptr %2844, i64 28
  store i16 %2897, ptr %2894, align 2, !tbaa !44
  %2899 = getelementptr inbounds i8, ptr %2849, i64 30
  %2900 = load i16, ptr %2895, align 2, !tbaa !44
  %2901 = getelementptr inbounds i8, ptr %2844, i64 30
  store i16 %2900, ptr %2898, align 2, !tbaa !44
  %2902 = getelementptr inbounds i8, ptr %2849, i64 32
  %2903 = load i16, ptr %2899, align 2, !tbaa !44
  %2904 = sub i16 0, %2903
  %2905 = getelementptr inbounds i8, ptr %2844, i64 32
  store i16 %2904, ptr %2901, align 2, !tbaa !44
  %2906 = getelementptr inbounds i8, ptr %2849, i64 34
  %2907 = load i16, ptr %2902, align 2, !tbaa !44
  %2908 = getelementptr inbounds i8, ptr %2844, i64 34
  store i16 %2907, ptr %2905, align 2, !tbaa !44
  %2909 = getelementptr inbounds i8, ptr %2849, i64 36
  %2910 = load i16, ptr %2906, align 2, !tbaa !44
  %2911 = sub i16 0, %2910
  %2912 = getelementptr inbounds i8, ptr %2844, i64 36
  store i16 %2911, ptr %2908, align 2, !tbaa !44
  %2913 = getelementptr inbounds i8, ptr %2849, i64 38
  %2914 = load i16, ptr %2909, align 2, !tbaa !44
  %2915 = getelementptr inbounds i8, ptr %2844, i64 38
  store i16 %2914, ptr %2912, align 2, !tbaa !44
  %2916 = getelementptr inbounds i8, ptr %2849, i64 40
  %2917 = load i16, ptr %2913, align 2, !tbaa !44
  %2918 = sub i16 0, %2917
  %2919 = getelementptr inbounds i8, ptr %2844, i64 40
  store i16 %2918, ptr %2915, align 2, !tbaa !44
  %2920 = getelementptr inbounds i8, ptr %2849, i64 42
  %2921 = load i16, ptr %2916, align 2, !tbaa !44
  %2922 = getelementptr inbounds i8, ptr %2844, i64 42
  store i16 %2921, ptr %2919, align 2, !tbaa !44
  %2923 = getelementptr inbounds i8, ptr %2849, i64 44
  %2924 = load i16, ptr %2920, align 2, !tbaa !44
  %2925 = sub i16 0, %2924
  %2926 = getelementptr inbounds i8, ptr %2844, i64 44
  store i16 %2925, ptr %2922, align 2, !tbaa !44
  %2927 = getelementptr inbounds i8, ptr %2849, i64 46
  %2928 = load i16, ptr %2923, align 2, !tbaa !44
  %2929 = getelementptr inbounds i8, ptr %2844, i64 46
  store i16 %2928, ptr %2926, align 2, !tbaa !44
  %2930 = getelementptr inbounds i8, ptr %2849, i64 48
  %2931 = load i16, ptr %2927, align 2, !tbaa !44
  %2932 = sub i16 0, %2931
  %2933 = getelementptr inbounds i8, ptr %2844, i64 48
  store i16 %2932, ptr %2929, align 2, !tbaa !44
  %2934 = getelementptr inbounds i8, ptr %2849, i64 50
  %2935 = load i16, ptr %2930, align 2, !tbaa !44
  %2936 = getelementptr inbounds i8, ptr %2844, i64 50
  store i16 %2935, ptr %2933, align 2, !tbaa !44
  %2937 = getelementptr inbounds i8, ptr %2849, i64 52
  %2938 = load i16, ptr %2934, align 2, !tbaa !44
  %2939 = sub i16 0, %2938
  %2940 = getelementptr inbounds i8, ptr %2844, i64 52
  store i16 %2939, ptr %2936, align 2, !tbaa !44
  %2941 = getelementptr inbounds i8, ptr %2849, i64 54
  %2942 = load i16, ptr %2937, align 2, !tbaa !44
  %2943 = getelementptr inbounds i8, ptr %2844, i64 54
  store i16 %2942, ptr %2940, align 2, !tbaa !44
  %2944 = getelementptr inbounds i8, ptr %2849, i64 56
  %2945 = load i16, ptr %2941, align 2, !tbaa !44
  %2946 = sub i16 0, %2945
  %2947 = getelementptr inbounds i8, ptr %2844, i64 56
  store i16 %2946, ptr %2943, align 2, !tbaa !44
  %2948 = getelementptr inbounds i8, ptr %2849, i64 58
  %2949 = load i16, ptr %2944, align 2, !tbaa !44
  %2950 = getelementptr inbounds i8, ptr %2844, i64 58
  store i16 %2949, ptr %2947, align 2, !tbaa !44
  %2951 = getelementptr inbounds i8, ptr %2849, i64 60
  %2952 = load i16, ptr %2948, align 2, !tbaa !44
  %2953 = sub i16 0, %2952
  %2954 = getelementptr inbounds i8, ptr %2844, i64 60
  store i16 %2953, ptr %2950, align 2, !tbaa !44
  %2955 = getelementptr inbounds i8, ptr %2849, i64 62
  %2956 = load i16, ptr %2951, align 2, !tbaa !44
  %2957 = getelementptr inbounds i8, ptr %2844, i64 62
  store i16 %2956, ptr %2954, align 2, !tbaa !44
  %2958 = getelementptr inbounds i8, ptr %2849, i64 64
  %2959 = load i16, ptr %2955, align 2, !tbaa !44
  %2960 = sub i16 0, %2959
  %2961 = getelementptr inbounds i8, ptr %2844, i64 64
  store i16 %2960, ptr %2957, align 2, !tbaa !44
  %2962 = getelementptr inbounds i8, ptr %2849, i64 66
  %2963 = load i16, ptr %2958, align 2, !tbaa !44
  %2964 = getelementptr inbounds i8, ptr %2844, i64 66
  store i16 %2963, ptr %2961, align 2, !tbaa !44
  %2965 = getelementptr inbounds i8, ptr %2849, i64 68
  %2966 = load i16, ptr %2962, align 2, !tbaa !44
  %2967 = sub i16 0, %2966
  %2968 = getelementptr inbounds i8, ptr %2844, i64 68
  store i16 %2967, ptr %2964, align 2, !tbaa !44
  %2969 = getelementptr inbounds i8, ptr %2849, i64 70
  %2970 = load i16, ptr %2965, align 2, !tbaa !44
  %2971 = getelementptr inbounds i8, ptr %2844, i64 70
  store i16 %2970, ptr %2968, align 2, !tbaa !44
  %2972 = getelementptr inbounds i8, ptr %2849, i64 72
  %2973 = load i16, ptr %2969, align 2, !tbaa !44
  %2974 = sub i16 0, %2973
  %2975 = getelementptr inbounds i8, ptr %2844, i64 72
  store i16 %2974, ptr %2971, align 2, !tbaa !44
  %2976 = getelementptr inbounds i8, ptr %2849, i64 74
  %2977 = load i16, ptr %2972, align 2, !tbaa !44
  %2978 = getelementptr inbounds i8, ptr %2844, i64 74
  store i16 %2977, ptr %2975, align 2, !tbaa !44
  %2979 = getelementptr inbounds i8, ptr %2849, i64 76
  %2980 = load i16, ptr %2976, align 2, !tbaa !44
  %2981 = sub i16 0, %2980
  %2982 = getelementptr inbounds i8, ptr %2844, i64 76
  store i16 %2981, ptr %2978, align 2, !tbaa !44
  %2983 = getelementptr inbounds i8, ptr %2849, i64 78
  %2984 = load i16, ptr %2979, align 2, !tbaa !44
  %2985 = getelementptr inbounds i8, ptr %2844, i64 78
  store i16 %2984, ptr %2982, align 2, !tbaa !44
  %2986 = getelementptr inbounds i8, ptr %2849, i64 80
  %2987 = load i16, ptr %2983, align 2, !tbaa !44
  %2988 = sub i16 0, %2987
  %2989 = getelementptr inbounds i8, ptr %2844, i64 80
  store i16 %2988, ptr %2985, align 2, !tbaa !44
  %2990 = getelementptr inbounds i8, ptr %2849, i64 82
  %2991 = load i16, ptr %2986, align 2, !tbaa !44
  %2992 = getelementptr inbounds i8, ptr %2844, i64 82
  store i16 %2991, ptr %2989, align 2, !tbaa !44
  %2993 = getelementptr inbounds i8, ptr %2849, i64 84
  %2994 = load i16, ptr %2990, align 2, !tbaa !44
  %2995 = sub i16 0, %2994
  %2996 = getelementptr inbounds i8, ptr %2844, i64 84
  store i16 %2995, ptr %2992, align 2, !tbaa !44
  %2997 = getelementptr inbounds i8, ptr %2849, i64 86
  %2998 = load i16, ptr %2993, align 2, !tbaa !44
  %2999 = getelementptr inbounds i8, ptr %2844, i64 86
  store i16 %2998, ptr %2996, align 2, !tbaa !44
  %3000 = getelementptr inbounds i8, ptr %2849, i64 88
  %3001 = load i16, ptr %2997, align 2, !tbaa !44
  %3002 = sub i16 0, %3001
  %3003 = getelementptr inbounds i8, ptr %2844, i64 88
  store i16 %3002, ptr %2999, align 2, !tbaa !44
  %3004 = getelementptr inbounds i8, ptr %2849, i64 90
  %3005 = load i16, ptr %3000, align 2, !tbaa !44
  %3006 = getelementptr inbounds i8, ptr %2844, i64 90
  store i16 %3005, ptr %3003, align 2, !tbaa !44
  %3007 = getelementptr inbounds i8, ptr %2849, i64 92
  %3008 = load i16, ptr %3004, align 2, !tbaa !44
  %3009 = sub i16 0, %3008
  %3010 = getelementptr inbounds i8, ptr %2844, i64 92
  store i16 %3009, ptr %3006, align 2, !tbaa !44
  %3011 = getelementptr inbounds i8, ptr %2849, i64 94
  %3012 = load i16, ptr %3007, align 2, !tbaa !44
  %3013 = getelementptr inbounds i8, ptr %2844, i64 94
  store i16 %3012, ptr %3010, align 2, !tbaa !44
  %3014 = getelementptr inbounds i8, ptr %2849, i64 96
  %3015 = load i16, ptr %3011, align 2, !tbaa !44
  %3016 = sub i16 0, %3015
  %3017 = getelementptr inbounds i8, ptr %2844, i64 96
  store i16 %3016, ptr %3013, align 2, !tbaa !44
  %3018 = getelementptr inbounds i8, ptr %2849, i64 98
  %3019 = load i16, ptr %3014, align 2, !tbaa !44
  %3020 = getelementptr inbounds i8, ptr %2844, i64 98
  store i16 %3019, ptr %3017, align 2, !tbaa !44
  %3021 = getelementptr inbounds i8, ptr %2849, i64 100
  %3022 = load i16, ptr %3018, align 2, !tbaa !44
  %3023 = sub i16 0, %3022
  %3024 = getelementptr inbounds i8, ptr %2844, i64 100
  store i16 %3023, ptr %3020, align 2, !tbaa !44
  %3025 = getelementptr inbounds i8, ptr %2849, i64 102
  %3026 = load i16, ptr %3021, align 2, !tbaa !44
  %3027 = getelementptr inbounds i8, ptr %2844, i64 102
  store i16 %3026, ptr %3024, align 2, !tbaa !44
  %3028 = getelementptr inbounds i8, ptr %2849, i64 104
  %3029 = load i16, ptr %3025, align 2, !tbaa !44
  %3030 = sub i16 0, %3029
  %3031 = getelementptr inbounds i8, ptr %2844, i64 104
  store i16 %3030, ptr %3027, align 2, !tbaa !44
  %3032 = getelementptr inbounds i8, ptr %2849, i64 106
  %3033 = load i16, ptr %3028, align 2, !tbaa !44
  %3034 = getelementptr inbounds i8, ptr %2844, i64 106
  store i16 %3033, ptr %3031, align 2, !tbaa !44
  %3035 = getelementptr inbounds i8, ptr %2849, i64 108
  %3036 = load i16, ptr %3032, align 2, !tbaa !44
  %3037 = sub i16 0, %3036
  %3038 = getelementptr inbounds i8, ptr %2844, i64 108
  store i16 %3037, ptr %3034, align 2, !tbaa !44
  %3039 = getelementptr inbounds i8, ptr %2849, i64 110
  %3040 = load i16, ptr %3035, align 2, !tbaa !44
  %3041 = getelementptr inbounds i8, ptr %2844, i64 110
  store i16 %3040, ptr %3038, align 2, !tbaa !44
  %3042 = getelementptr inbounds i8, ptr %2849, i64 112
  %3043 = load i16, ptr %3039, align 2, !tbaa !44
  %3044 = sub i16 0, %3043
  %3045 = getelementptr inbounds i8, ptr %2844, i64 112
  store i16 %3044, ptr %3041, align 2, !tbaa !44
  %3046 = getelementptr inbounds i8, ptr %2849, i64 114
  %3047 = load i16, ptr %3042, align 2, !tbaa !44
  %3048 = getelementptr inbounds i8, ptr %2844, i64 114
  store i16 %3047, ptr %3045, align 2, !tbaa !44
  %3049 = getelementptr inbounds i8, ptr %2849, i64 116
  %3050 = load i16, ptr %3046, align 2, !tbaa !44
  %3051 = sub i16 0, %3050
  %3052 = getelementptr inbounds i8, ptr %2844, i64 116
  store i16 %3051, ptr %3048, align 2, !tbaa !44
  %3053 = getelementptr inbounds i8, ptr %2849, i64 118
  %3054 = load i16, ptr %3049, align 2, !tbaa !44
  %3055 = getelementptr inbounds i8, ptr %2844, i64 118
  store i16 %3054, ptr %3052, align 2, !tbaa !44
  %3056 = getelementptr inbounds i8, ptr %2849, i64 120
  %3057 = load i16, ptr %3053, align 2, !tbaa !44
  %3058 = sub i16 0, %3057
  %3059 = getelementptr inbounds i8, ptr %2844, i64 120
  store i16 %3058, ptr %3055, align 2, !tbaa !44
  %3060 = getelementptr inbounds i8, ptr %2849, i64 122
  %3061 = load i16, ptr %3056, align 2, !tbaa !44
  %3062 = getelementptr inbounds i8, ptr %2844, i64 122
  store i16 %3061, ptr %3059, align 2, !tbaa !44
  %3063 = getelementptr inbounds i8, ptr %2849, i64 124
  %3064 = load i16, ptr %3060, align 2, !tbaa !44
  %3065 = sub i16 0, %3064
  %3066 = getelementptr inbounds i8, ptr %2844, i64 124
  store i16 %3065, ptr %3062, align 2, !tbaa !44
  %3067 = getelementptr inbounds i8, ptr %2849, i64 126
  %3068 = load i16, ptr %3063, align 2, !tbaa !44
  %3069 = getelementptr inbounds i8, ptr %2844, i64 126
  store i16 %3068, ptr %3066, align 2, !tbaa !44
  %3070 = load i16, ptr %3067, align 2, !tbaa !44
  %3071 = sub i16 0, %3070
  store i16 %3071, ptr %3069, align 2, !tbaa !44
  %3072 = add nuw nsw i64 %2843, 1
  %3073 = icmp ult i64 %3072, %2318
  br i1 %3073, label %2842, label %2835

3074:                                             ; preds = %3074, %2840
  %3075 = phi i64 [ %2841, %2840 ], [ %3268, %3074 ]
  %3076 = getelementptr inbounds [64 x i16], ptr %2832, i64 %3075
  %3077 = getelementptr inbounds [64 x i16], ptr %2834, i64 %3075
  %3078 = getelementptr inbounds i8, ptr %3077, i64 2
  %3079 = load i16, ptr %3077, align 2, !tbaa !44
  %3080 = getelementptr inbounds i8, ptr %3076, i64 2
  store i16 %3079, ptr %3076, align 2, !tbaa !44
  %3081 = getelementptr inbounds i8, ptr %3077, i64 4
  %3082 = load i16, ptr %3078, align 2, !tbaa !44
  %3083 = getelementptr inbounds i8, ptr %3076, i64 4
  store i16 %3082, ptr %3080, align 2, !tbaa !44
  %3084 = getelementptr inbounds i8, ptr %3077, i64 6
  %3085 = load i16, ptr %3081, align 2, !tbaa !44
  %3086 = getelementptr inbounds i8, ptr %3076, i64 6
  store i16 %3085, ptr %3083, align 2, !tbaa !44
  %3087 = getelementptr inbounds i8, ptr %3077, i64 8
  %3088 = load i16, ptr %3084, align 2, !tbaa !44
  %3089 = getelementptr inbounds i8, ptr %3076, i64 8
  store i16 %3088, ptr %3086, align 2, !tbaa !44
  %3090 = getelementptr inbounds i8, ptr %3077, i64 10
  %3091 = load i16, ptr %3087, align 2, !tbaa !44
  %3092 = getelementptr inbounds i8, ptr %3076, i64 10
  store i16 %3091, ptr %3089, align 2, !tbaa !44
  %3093 = getelementptr inbounds i8, ptr %3077, i64 12
  %3094 = load i16, ptr %3090, align 2, !tbaa !44
  %3095 = getelementptr inbounds i8, ptr %3076, i64 12
  store i16 %3094, ptr %3092, align 2, !tbaa !44
  %3096 = getelementptr inbounds i8, ptr %3077, i64 14
  %3097 = load i16, ptr %3093, align 2, !tbaa !44
  %3098 = getelementptr inbounds i8, ptr %3076, i64 14
  store i16 %3097, ptr %3095, align 2, !tbaa !44
  %3099 = getelementptr inbounds i8, ptr %3077, i64 16
  %3100 = load i16, ptr %3096, align 2, !tbaa !44
  %3101 = getelementptr inbounds i8, ptr %3076, i64 16
  store i16 %3100, ptr %3098, align 2, !tbaa !44
  %3102 = getelementptr inbounds i8, ptr %3077, i64 18
  %3103 = load i16, ptr %3099, align 2, !tbaa !44
  %3104 = getelementptr inbounds i8, ptr %3076, i64 18
  store i16 %3103, ptr %3101, align 2, !tbaa !44
  %3105 = getelementptr inbounds i8, ptr %3077, i64 20
  %3106 = load i16, ptr %3102, align 2, !tbaa !44
  %3107 = getelementptr inbounds i8, ptr %3076, i64 20
  store i16 %3106, ptr %3104, align 2, !tbaa !44
  %3108 = getelementptr inbounds i8, ptr %3077, i64 22
  %3109 = load i16, ptr %3105, align 2, !tbaa !44
  %3110 = getelementptr inbounds i8, ptr %3076, i64 22
  store i16 %3109, ptr %3107, align 2, !tbaa !44
  %3111 = getelementptr inbounds i8, ptr %3077, i64 24
  %3112 = load i16, ptr %3108, align 2, !tbaa !44
  %3113 = getelementptr inbounds i8, ptr %3076, i64 24
  store i16 %3112, ptr %3110, align 2, !tbaa !44
  %3114 = getelementptr inbounds i8, ptr %3077, i64 26
  %3115 = load i16, ptr %3111, align 2, !tbaa !44
  %3116 = getelementptr inbounds i8, ptr %3076, i64 26
  store i16 %3115, ptr %3113, align 2, !tbaa !44
  %3117 = getelementptr inbounds i8, ptr %3077, i64 28
  %3118 = load i16, ptr %3114, align 2, !tbaa !44
  %3119 = getelementptr inbounds i8, ptr %3076, i64 28
  store i16 %3118, ptr %3116, align 2, !tbaa !44
  %3120 = getelementptr inbounds i8, ptr %3077, i64 30
  %3121 = load i16, ptr %3117, align 2, !tbaa !44
  %3122 = getelementptr inbounds i8, ptr %3076, i64 30
  store i16 %3121, ptr %3119, align 2, !tbaa !44
  %3123 = getelementptr inbounds i8, ptr %3077, i64 32
  %3124 = load i16, ptr %3120, align 2, !tbaa !44
  %3125 = getelementptr inbounds i8, ptr %3076, i64 32
  store i16 %3124, ptr %3122, align 2, !tbaa !44
  %3126 = getelementptr inbounds i8, ptr %3077, i64 34
  %3127 = load i16, ptr %3123, align 2, !tbaa !44
  %3128 = getelementptr inbounds i8, ptr %3076, i64 34
  store i16 %3127, ptr %3125, align 2, !tbaa !44
  %3129 = getelementptr inbounds i8, ptr %3077, i64 36
  %3130 = load i16, ptr %3126, align 2, !tbaa !44
  %3131 = getelementptr inbounds i8, ptr %3076, i64 36
  store i16 %3130, ptr %3128, align 2, !tbaa !44
  %3132 = getelementptr inbounds i8, ptr %3077, i64 38
  %3133 = load i16, ptr %3129, align 2, !tbaa !44
  %3134 = getelementptr inbounds i8, ptr %3076, i64 38
  store i16 %3133, ptr %3131, align 2, !tbaa !44
  %3135 = getelementptr inbounds i8, ptr %3077, i64 40
  %3136 = load i16, ptr %3132, align 2, !tbaa !44
  %3137 = getelementptr inbounds i8, ptr %3076, i64 40
  store i16 %3136, ptr %3134, align 2, !tbaa !44
  %3138 = getelementptr inbounds i8, ptr %3077, i64 42
  %3139 = load i16, ptr %3135, align 2, !tbaa !44
  %3140 = getelementptr inbounds i8, ptr %3076, i64 42
  store i16 %3139, ptr %3137, align 2, !tbaa !44
  %3141 = getelementptr inbounds i8, ptr %3077, i64 44
  %3142 = load i16, ptr %3138, align 2, !tbaa !44
  %3143 = getelementptr inbounds i8, ptr %3076, i64 44
  store i16 %3142, ptr %3140, align 2, !tbaa !44
  %3144 = getelementptr inbounds i8, ptr %3077, i64 46
  %3145 = load i16, ptr %3141, align 2, !tbaa !44
  %3146 = getelementptr inbounds i8, ptr %3076, i64 46
  store i16 %3145, ptr %3143, align 2, !tbaa !44
  %3147 = getelementptr inbounds i8, ptr %3077, i64 48
  %3148 = load i16, ptr %3144, align 2, !tbaa !44
  %3149 = getelementptr inbounds i8, ptr %3076, i64 48
  store i16 %3148, ptr %3146, align 2, !tbaa !44
  %3150 = getelementptr inbounds i8, ptr %3077, i64 50
  %3151 = load i16, ptr %3147, align 2, !tbaa !44
  %3152 = getelementptr inbounds i8, ptr %3076, i64 50
  store i16 %3151, ptr %3149, align 2, !tbaa !44
  %3153 = getelementptr inbounds i8, ptr %3077, i64 52
  %3154 = load i16, ptr %3150, align 2, !tbaa !44
  %3155 = getelementptr inbounds i8, ptr %3076, i64 52
  store i16 %3154, ptr %3152, align 2, !tbaa !44
  %3156 = getelementptr inbounds i8, ptr %3077, i64 54
  %3157 = load i16, ptr %3153, align 2, !tbaa !44
  %3158 = getelementptr inbounds i8, ptr %3076, i64 54
  store i16 %3157, ptr %3155, align 2, !tbaa !44
  %3159 = getelementptr inbounds i8, ptr %3077, i64 56
  %3160 = load i16, ptr %3156, align 2, !tbaa !44
  %3161 = getelementptr inbounds i8, ptr %3076, i64 56
  store i16 %3160, ptr %3158, align 2, !tbaa !44
  %3162 = getelementptr inbounds i8, ptr %3077, i64 58
  %3163 = load i16, ptr %3159, align 2, !tbaa !44
  %3164 = getelementptr inbounds i8, ptr %3076, i64 58
  store i16 %3163, ptr %3161, align 2, !tbaa !44
  %3165 = getelementptr inbounds i8, ptr %3077, i64 60
  %3166 = load i16, ptr %3162, align 2, !tbaa !44
  %3167 = getelementptr inbounds i8, ptr %3076, i64 60
  store i16 %3166, ptr %3164, align 2, !tbaa !44
  %3168 = getelementptr inbounds i8, ptr %3077, i64 62
  %3169 = load i16, ptr %3165, align 2, !tbaa !44
  %3170 = getelementptr inbounds i8, ptr %3076, i64 62
  store i16 %3169, ptr %3167, align 2, !tbaa !44
  %3171 = getelementptr inbounds i8, ptr %3077, i64 64
  %3172 = load i16, ptr %3168, align 2, !tbaa !44
  %3173 = getelementptr inbounds i8, ptr %3076, i64 64
  store i16 %3172, ptr %3170, align 2, !tbaa !44
  %3174 = getelementptr inbounds i8, ptr %3077, i64 66
  %3175 = load i16, ptr %3171, align 2, !tbaa !44
  %3176 = getelementptr inbounds i8, ptr %3076, i64 66
  store i16 %3175, ptr %3173, align 2, !tbaa !44
  %3177 = getelementptr inbounds i8, ptr %3077, i64 68
  %3178 = load i16, ptr %3174, align 2, !tbaa !44
  %3179 = getelementptr inbounds i8, ptr %3076, i64 68
  store i16 %3178, ptr %3176, align 2, !tbaa !44
  %3180 = getelementptr inbounds i8, ptr %3077, i64 70
  %3181 = load i16, ptr %3177, align 2, !tbaa !44
  %3182 = getelementptr inbounds i8, ptr %3076, i64 70
  store i16 %3181, ptr %3179, align 2, !tbaa !44
  %3183 = getelementptr inbounds i8, ptr %3077, i64 72
  %3184 = load i16, ptr %3180, align 2, !tbaa !44
  %3185 = getelementptr inbounds i8, ptr %3076, i64 72
  store i16 %3184, ptr %3182, align 2, !tbaa !44
  %3186 = getelementptr inbounds i8, ptr %3077, i64 74
  %3187 = load i16, ptr %3183, align 2, !tbaa !44
  %3188 = getelementptr inbounds i8, ptr %3076, i64 74
  store i16 %3187, ptr %3185, align 2, !tbaa !44
  %3189 = getelementptr inbounds i8, ptr %3077, i64 76
  %3190 = load i16, ptr %3186, align 2, !tbaa !44
  %3191 = getelementptr inbounds i8, ptr %3076, i64 76
  store i16 %3190, ptr %3188, align 2, !tbaa !44
  %3192 = getelementptr inbounds i8, ptr %3077, i64 78
  %3193 = load i16, ptr %3189, align 2, !tbaa !44
  %3194 = getelementptr inbounds i8, ptr %3076, i64 78
  store i16 %3193, ptr %3191, align 2, !tbaa !44
  %3195 = getelementptr inbounds i8, ptr %3077, i64 80
  %3196 = load i16, ptr %3192, align 2, !tbaa !44
  %3197 = getelementptr inbounds i8, ptr %3076, i64 80
  store i16 %3196, ptr %3194, align 2, !tbaa !44
  %3198 = getelementptr inbounds i8, ptr %3077, i64 82
  %3199 = load i16, ptr %3195, align 2, !tbaa !44
  %3200 = getelementptr inbounds i8, ptr %3076, i64 82
  store i16 %3199, ptr %3197, align 2, !tbaa !44
  %3201 = getelementptr inbounds i8, ptr %3077, i64 84
  %3202 = load i16, ptr %3198, align 2, !tbaa !44
  %3203 = getelementptr inbounds i8, ptr %3076, i64 84
  store i16 %3202, ptr %3200, align 2, !tbaa !44
  %3204 = getelementptr inbounds i8, ptr %3077, i64 86
  %3205 = load i16, ptr %3201, align 2, !tbaa !44
  %3206 = getelementptr inbounds i8, ptr %3076, i64 86
  store i16 %3205, ptr %3203, align 2, !tbaa !44
  %3207 = getelementptr inbounds i8, ptr %3077, i64 88
  %3208 = load i16, ptr %3204, align 2, !tbaa !44
  %3209 = getelementptr inbounds i8, ptr %3076, i64 88
  store i16 %3208, ptr %3206, align 2, !tbaa !44
  %3210 = getelementptr inbounds i8, ptr %3077, i64 90
  %3211 = load i16, ptr %3207, align 2, !tbaa !44
  %3212 = getelementptr inbounds i8, ptr %3076, i64 90
  store i16 %3211, ptr %3209, align 2, !tbaa !44
  %3213 = getelementptr inbounds i8, ptr %3077, i64 92
  %3214 = load i16, ptr %3210, align 2, !tbaa !44
  %3215 = getelementptr inbounds i8, ptr %3076, i64 92
  store i16 %3214, ptr %3212, align 2, !tbaa !44
  %3216 = getelementptr inbounds i8, ptr %3077, i64 94
  %3217 = load i16, ptr %3213, align 2, !tbaa !44
  %3218 = getelementptr inbounds i8, ptr %3076, i64 94
  store i16 %3217, ptr %3215, align 2, !tbaa !44
  %3219 = getelementptr inbounds i8, ptr %3077, i64 96
  %3220 = load i16, ptr %3216, align 2, !tbaa !44
  %3221 = getelementptr inbounds i8, ptr %3076, i64 96
  store i16 %3220, ptr %3218, align 2, !tbaa !44
  %3222 = getelementptr inbounds i8, ptr %3077, i64 98
  %3223 = load i16, ptr %3219, align 2, !tbaa !44
  %3224 = getelementptr inbounds i8, ptr %3076, i64 98
  store i16 %3223, ptr %3221, align 2, !tbaa !44
  %3225 = getelementptr inbounds i8, ptr %3077, i64 100
  %3226 = load i16, ptr %3222, align 2, !tbaa !44
  %3227 = getelementptr inbounds i8, ptr %3076, i64 100
  store i16 %3226, ptr %3224, align 2, !tbaa !44
  %3228 = getelementptr inbounds i8, ptr %3077, i64 102
  %3229 = load i16, ptr %3225, align 2, !tbaa !44
  %3230 = getelementptr inbounds i8, ptr %3076, i64 102
  store i16 %3229, ptr %3227, align 2, !tbaa !44
  %3231 = getelementptr inbounds i8, ptr %3077, i64 104
  %3232 = load i16, ptr %3228, align 2, !tbaa !44
  %3233 = getelementptr inbounds i8, ptr %3076, i64 104
  store i16 %3232, ptr %3230, align 2, !tbaa !44
  %3234 = getelementptr inbounds i8, ptr %3077, i64 106
  %3235 = load i16, ptr %3231, align 2, !tbaa !44
  %3236 = getelementptr inbounds i8, ptr %3076, i64 106
  store i16 %3235, ptr %3233, align 2, !tbaa !44
  %3237 = getelementptr inbounds i8, ptr %3077, i64 108
  %3238 = load i16, ptr %3234, align 2, !tbaa !44
  %3239 = getelementptr inbounds i8, ptr %3076, i64 108
  store i16 %3238, ptr %3236, align 2, !tbaa !44
  %3240 = getelementptr inbounds i8, ptr %3077, i64 110
  %3241 = load i16, ptr %3237, align 2, !tbaa !44
  %3242 = getelementptr inbounds i8, ptr %3076, i64 110
  store i16 %3241, ptr %3239, align 2, !tbaa !44
  %3243 = getelementptr inbounds i8, ptr %3077, i64 112
  %3244 = load i16, ptr %3240, align 2, !tbaa !44
  %3245 = getelementptr inbounds i8, ptr %3076, i64 112
  store i16 %3244, ptr %3242, align 2, !tbaa !44
  %3246 = getelementptr inbounds i8, ptr %3077, i64 114
  %3247 = load i16, ptr %3243, align 2, !tbaa !44
  %3248 = getelementptr inbounds i8, ptr %3076, i64 114
  store i16 %3247, ptr %3245, align 2, !tbaa !44
  %3249 = getelementptr inbounds i8, ptr %3077, i64 116
  %3250 = load i16, ptr %3246, align 2, !tbaa !44
  %3251 = getelementptr inbounds i8, ptr %3076, i64 116
  store i16 %3250, ptr %3248, align 2, !tbaa !44
  %3252 = getelementptr inbounds i8, ptr %3077, i64 118
  %3253 = load i16, ptr %3249, align 2, !tbaa !44
  %3254 = getelementptr inbounds i8, ptr %3076, i64 118
  store i16 %3253, ptr %3251, align 2, !tbaa !44
  %3255 = getelementptr inbounds i8, ptr %3077, i64 120
  %3256 = load i16, ptr %3252, align 2, !tbaa !44
  %3257 = getelementptr inbounds i8, ptr %3076, i64 120
  store i16 %3256, ptr %3254, align 2, !tbaa !44
  %3258 = getelementptr inbounds i8, ptr %3077, i64 122
  %3259 = load i16, ptr %3255, align 2, !tbaa !44
  %3260 = getelementptr inbounds i8, ptr %3076, i64 122
  store i16 %3259, ptr %3257, align 2, !tbaa !44
  %3261 = getelementptr inbounds i8, ptr %3077, i64 124
  %3262 = load i16, ptr %3258, align 2, !tbaa !44
  %3263 = getelementptr inbounds i8, ptr %3076, i64 124
  store i16 %3262, ptr %3260, align 2, !tbaa !44
  %3264 = getelementptr inbounds i8, ptr %3077, i64 126
  %3265 = load i16, ptr %3261, align 2, !tbaa !44
  %3266 = getelementptr inbounds i8, ptr %3076, i64 126
  store i16 %3265, ptr %3263, align 2, !tbaa !44
  %3267 = load i16, ptr %3264, align 2, !tbaa !44
  store i16 %3267, ptr %3266, align 2, !tbaa !44
  %3268 = add nuw nsw i64 %3075, 1
  %3269 = icmp eq i64 %3268, %2828
  br i1 %3269, label %3270, label %3074

3270:                                             ; preds = %3074, %2837
  %3271 = add nuw nsw i64 %2830, 1
  %3272 = icmp eq i64 %3271, %2827
  br i1 %3272, label %3273, label %2829

3273:                                             ; preds = %3270, %2822, %2339, %2333
  %3274 = phi i32 [ %2341, %2339 ], [ %2337, %2333 ], [ %2337, %2822 ], [ %2341, %3270 ]
  %3275 = add i32 %3274, %2320
  %3276 = load i32, ptr %2310, align 8, !tbaa !28
  %3277 = icmp ult i32 %3275, %3276
  br i1 %3277, label %2319, label %3278

3278:                                             ; preds = %3273
  %3279 = load i32, ptr %2293, align 4, !tbaa !34
  br label %3280

3280:                                             ; preds = %3278, %2299
  %3281 = phi i32 [ %3279, %3278 ], [ %2300, %2299 ]
  %3282 = add nuw nsw i64 %2301, 1
  %3283 = sext i32 %3281 to i64
  %3284 = icmp slt i64 %3282, %3283
  br i1 %3284, label %2299, label %3848

3285:                                             ; preds = %4
  %3286 = getelementptr inbounds i8, ptr %1, i64 52
  %3287 = load i32, ptr %3286, align 4, !tbaa !43
  %3288 = getelementptr inbounds i8, ptr %1, i64 316
  %3289 = load i32, ptr %3288, align 4, !tbaa !47
  %3290 = shl nsw i32 %3289, 3
  %3291 = udiv i32 %3287, %3290
  %3292 = getelementptr inbounds i8, ptr %1, i64 76
  %3293 = load i32, ptr %3292, align 4, !tbaa !34
  %3294 = icmp sgt i32 %3293, 0
  br i1 %3294, label %3295, label %3848

3295:                                             ; preds = %3285
  %3296 = getelementptr inbounds i8, ptr %1, i64 88
  %3297 = getelementptr inbounds i8, ptr %0, i64 8
  br label %3298

3298:                                             ; preds = %3843, %3295
  %3299 = phi i32 [ %3293, %3295 ], [ %3844, %3843 ]
  %3300 = phi i64 [ 0, %3295 ], [ %3845, %3843 ]
  %3301 = load ptr, ptr %3296, align 8, !tbaa !35
  %3302 = getelementptr inbounds %struct.jpeg_component_info, ptr %3301, i64 %3300
  %3303 = getelementptr inbounds i8, ptr %3302, i64 12
  %3304 = load i32, ptr %3303, align 4, !tbaa !29
  %3305 = mul i32 %3304, %3291
  %3306 = freeze i32 %3305
  %3307 = getelementptr inbounds i8, ptr %3302, i64 32
  %3308 = load i32, ptr %3307, align 8, !tbaa !28
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %3843, label %3310

3310:                                             ; preds = %3298
  %3311 = getelementptr inbounds ptr, ptr %6, i64 %3300
  %3312 = getelementptr inbounds i8, ptr %3302, i64 28
  %3313 = getelementptr inbounds ptr, ptr %2, i64 %3300
  %3314 = getelementptr inbounds i8, ptr %3302, i64 8
  br label %3315

3315:                                             ; preds = %3836, %3310
  %3316 = phi i32 [ %3304, %3310 ], [ %3837, %3836 ]
  %3317 = phi i32 [ 0, %3310 ], [ %3838, %3836 ]
  %3318 = load ptr, ptr %3297, align 8, !tbaa !19
  %3319 = getelementptr inbounds i8, ptr %3318, i64 64
  %3320 = load ptr, ptr %3319, align 8, !tbaa !46
  %3321 = load ptr, ptr %3311, align 8, !tbaa !30
  %3322 = tail call ptr %3320(ptr noundef %0, ptr noundef %3321, i32 noundef signext %3317, i32 noundef signext %3316, i32 noundef signext 1) #4
  %3323 = load i32, ptr %3303, align 4, !tbaa !29
  %3324 = icmp sgt i32 %3323, 0
  br i1 %3324, label %3325, label %3836

3325:                                             ; preds = %3315
  %3326 = load i32, ptr %3312, align 4, !tbaa !25
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %3836, label %3328

3328:                                             ; preds = %3325
  %3329 = icmp ult i32 %3317, %3306
  br i1 %3329, label %3330, label %3600

3330:                                             ; preds = %3328, %3594
  %3331 = phi i32 [ %3595, %3594 ], [ %3323, %3328 ]
  %3332 = phi i32 [ %3596, %3594 ], [ 1, %3328 ]
  %3333 = phi i64 [ %3597, %3594 ], [ 0, %3328 ]
  %3334 = icmp eq i32 %3332, 0
  br i1 %3334, label %3594, label %3335

3335:                                             ; preds = %3330
  %3336 = getelementptr inbounds ptr, ptr %3322, i64 %3333
  %3337 = trunc nuw nsw i64 %3333 to i32
  %3338 = add i32 %3317, %3337
  %3339 = xor i32 %3338, -1
  %3340 = add i32 %3306, %3339
  %3341 = zext i32 %3340 to i64
  br label %3342

3342:                                             ; preds = %3335, %3588
  %3343 = phi i32 [ %3589, %3588 ], [ 0, %3335 ]
  %3344 = load ptr, ptr %3297, align 8, !tbaa !19
  %3345 = getelementptr inbounds i8, ptr %3344, i64 64
  %3346 = load ptr, ptr %3345, align 8, !tbaa !46
  %3347 = load ptr, ptr %3313, align 8, !tbaa !30
  %3348 = load i32, ptr %3314, align 8, !tbaa !27
  %3349 = tail call ptr %3346(ptr noundef %0, ptr noundef %3347, i32 noundef signext %3343, i32 noundef signext %3348, i32 noundef signext 0) #4
  %3350 = load i32, ptr %3314, align 8, !tbaa !27
  %3351 = icmp sgt i32 %3350, 0
  br i1 %3351, label %3352, label %3588

3352:                                             ; preds = %3342
  %3353 = load ptr, ptr %3336, align 8, !tbaa !30
  %3354 = zext nneg i32 %3350 to i64
  br label %3355

3355:                                             ; preds = %3355, %3352
  %3356 = phi i64 [ %3586, %3355 ], [ 0, %3352 ]
  %3357 = trunc nuw nsw i64 %3356 to i32
  %3358 = add i32 %3343, %3357
  %3359 = zext i32 %3358 to i64
  %3360 = getelementptr inbounds [64 x i16], ptr %3353, i64 %3359
  %3361 = getelementptr inbounds ptr, ptr %3349, i64 %3356
  %3362 = load ptr, ptr %3361, align 8, !tbaa !30
  %3363 = getelementptr inbounds [64 x i16], ptr %3362, i64 %3341
  %3364 = load i16, ptr %3363, align 2, !tbaa !44
  store i16 %3364, ptr %3360, align 2, !tbaa !44
  %3365 = getelementptr inbounds i8, ptr %3363, i64 2
  %3366 = load i16, ptr %3365, align 2, !tbaa !44
  %3367 = sub i16 0, %3366
  %3368 = getelementptr inbounds i8, ptr %3360, i64 16
  store i16 %3367, ptr %3368, align 2, !tbaa !44
  %3369 = getelementptr inbounds i8, ptr %3363, i64 4
  %3370 = load i16, ptr %3369, align 2, !tbaa !44
  %3371 = getelementptr inbounds i8, ptr %3360, i64 32
  store i16 %3370, ptr %3371, align 2, !tbaa !44
  %3372 = getelementptr inbounds i8, ptr %3363, i64 6
  %3373 = load i16, ptr %3372, align 2, !tbaa !44
  %3374 = sub i16 0, %3373
  %3375 = getelementptr inbounds i8, ptr %3360, i64 48
  store i16 %3374, ptr %3375, align 2, !tbaa !44
  %3376 = getelementptr inbounds i8, ptr %3363, i64 8
  %3377 = load i16, ptr %3376, align 2, !tbaa !44
  %3378 = getelementptr inbounds i8, ptr %3360, i64 64
  store i16 %3377, ptr %3378, align 2, !tbaa !44
  %3379 = getelementptr inbounds i8, ptr %3363, i64 10
  %3380 = load i16, ptr %3379, align 2, !tbaa !44
  %3381 = sub i16 0, %3380
  %3382 = getelementptr inbounds i8, ptr %3360, i64 80
  store i16 %3381, ptr %3382, align 2, !tbaa !44
  %3383 = getelementptr inbounds i8, ptr %3363, i64 12
  %3384 = load i16, ptr %3383, align 2, !tbaa !44
  %3385 = getelementptr inbounds i8, ptr %3360, i64 96
  store i16 %3384, ptr %3385, align 2, !tbaa !44
  %3386 = getelementptr inbounds i8, ptr %3363, i64 14
  %3387 = load i16, ptr %3386, align 2, !tbaa !44
  %3388 = sub i16 0, %3387
  %3389 = getelementptr inbounds i8, ptr %3360, i64 112
  store i16 %3388, ptr %3389, align 2, !tbaa !44
  %3390 = getelementptr inbounds i8, ptr %3363, i64 16
  %3391 = load i16, ptr %3390, align 2, !tbaa !44
  %3392 = getelementptr inbounds i8, ptr %3360, i64 2
  store i16 %3391, ptr %3392, align 2, !tbaa !44
  %3393 = getelementptr inbounds i8, ptr %3363, i64 18
  %3394 = load i16, ptr %3393, align 2, !tbaa !44
  %3395 = sub i16 0, %3394
  %3396 = getelementptr inbounds i8, ptr %3360, i64 18
  store i16 %3395, ptr %3396, align 2, !tbaa !44
  %3397 = getelementptr inbounds i8, ptr %3363, i64 20
  %3398 = load i16, ptr %3397, align 2, !tbaa !44
  %3399 = getelementptr inbounds i8, ptr %3360, i64 34
  store i16 %3398, ptr %3399, align 2, !tbaa !44
  %3400 = getelementptr inbounds i8, ptr %3363, i64 22
  %3401 = load i16, ptr %3400, align 2, !tbaa !44
  %3402 = sub i16 0, %3401
  %3403 = getelementptr inbounds i8, ptr %3360, i64 50
  store i16 %3402, ptr %3403, align 2, !tbaa !44
  %3404 = getelementptr inbounds i8, ptr %3363, i64 24
  %3405 = load i16, ptr %3404, align 2, !tbaa !44
  %3406 = getelementptr inbounds i8, ptr %3360, i64 66
  store i16 %3405, ptr %3406, align 2, !tbaa !44
  %3407 = getelementptr inbounds i8, ptr %3363, i64 26
  %3408 = load i16, ptr %3407, align 2, !tbaa !44
  %3409 = sub i16 0, %3408
  %3410 = getelementptr inbounds i8, ptr %3360, i64 82
  store i16 %3409, ptr %3410, align 2, !tbaa !44
  %3411 = getelementptr inbounds i8, ptr %3363, i64 28
  %3412 = load i16, ptr %3411, align 2, !tbaa !44
  %3413 = getelementptr inbounds i8, ptr %3360, i64 98
  store i16 %3412, ptr %3413, align 2, !tbaa !44
  %3414 = getelementptr inbounds i8, ptr %3363, i64 30
  %3415 = load i16, ptr %3414, align 2, !tbaa !44
  %3416 = sub i16 0, %3415
  %3417 = getelementptr inbounds i8, ptr %3360, i64 114
  store i16 %3416, ptr %3417, align 2, !tbaa !44
  %3418 = getelementptr inbounds i8, ptr %3363, i64 32
  %3419 = load i16, ptr %3418, align 2, !tbaa !44
  %3420 = getelementptr inbounds i8, ptr %3360, i64 4
  store i16 %3419, ptr %3420, align 2, !tbaa !44
  %3421 = getelementptr inbounds i8, ptr %3363, i64 34
  %3422 = load i16, ptr %3421, align 2, !tbaa !44
  %3423 = sub i16 0, %3422
  %3424 = getelementptr inbounds i8, ptr %3360, i64 20
  store i16 %3423, ptr %3424, align 2, !tbaa !44
  %3425 = getelementptr inbounds i8, ptr %3363, i64 36
  %3426 = load i16, ptr %3425, align 2, !tbaa !44
  %3427 = getelementptr inbounds i8, ptr %3360, i64 36
  store i16 %3426, ptr %3427, align 2, !tbaa !44
  %3428 = getelementptr inbounds i8, ptr %3363, i64 38
  %3429 = load i16, ptr %3428, align 2, !tbaa !44
  %3430 = sub i16 0, %3429
  %3431 = getelementptr inbounds i8, ptr %3360, i64 52
  store i16 %3430, ptr %3431, align 2, !tbaa !44
  %3432 = getelementptr inbounds i8, ptr %3363, i64 40
  %3433 = load i16, ptr %3432, align 2, !tbaa !44
  %3434 = getelementptr inbounds i8, ptr %3360, i64 68
  store i16 %3433, ptr %3434, align 2, !tbaa !44
  %3435 = getelementptr inbounds i8, ptr %3363, i64 42
  %3436 = load i16, ptr %3435, align 2, !tbaa !44
  %3437 = sub i16 0, %3436
  %3438 = getelementptr inbounds i8, ptr %3360, i64 84
  store i16 %3437, ptr %3438, align 2, !tbaa !44
  %3439 = getelementptr inbounds i8, ptr %3363, i64 44
  %3440 = load i16, ptr %3439, align 2, !tbaa !44
  %3441 = getelementptr inbounds i8, ptr %3360, i64 100
  store i16 %3440, ptr %3441, align 2, !tbaa !44
  %3442 = getelementptr inbounds i8, ptr %3363, i64 46
  %3443 = load i16, ptr %3442, align 2, !tbaa !44
  %3444 = sub i16 0, %3443
  %3445 = getelementptr inbounds i8, ptr %3360, i64 116
  store i16 %3444, ptr %3445, align 2, !tbaa !44
  %3446 = getelementptr inbounds i8, ptr %3363, i64 48
  %3447 = load i16, ptr %3446, align 2, !tbaa !44
  %3448 = getelementptr inbounds i8, ptr %3360, i64 6
  store i16 %3447, ptr %3448, align 2, !tbaa !44
  %3449 = getelementptr inbounds i8, ptr %3363, i64 50
  %3450 = load i16, ptr %3449, align 2, !tbaa !44
  %3451 = sub i16 0, %3450
  %3452 = getelementptr inbounds i8, ptr %3360, i64 22
  store i16 %3451, ptr %3452, align 2, !tbaa !44
  %3453 = getelementptr inbounds i8, ptr %3363, i64 52
  %3454 = load i16, ptr %3453, align 2, !tbaa !44
  %3455 = getelementptr inbounds i8, ptr %3360, i64 38
  store i16 %3454, ptr %3455, align 2, !tbaa !44
  %3456 = getelementptr inbounds i8, ptr %3363, i64 54
  %3457 = load i16, ptr %3456, align 2, !tbaa !44
  %3458 = sub i16 0, %3457
  %3459 = getelementptr inbounds i8, ptr %3360, i64 54
  store i16 %3458, ptr %3459, align 2, !tbaa !44
  %3460 = getelementptr inbounds i8, ptr %3363, i64 56
  %3461 = load i16, ptr %3460, align 2, !tbaa !44
  %3462 = getelementptr inbounds i8, ptr %3360, i64 70
  store i16 %3461, ptr %3462, align 2, !tbaa !44
  %3463 = getelementptr inbounds i8, ptr %3363, i64 58
  %3464 = load i16, ptr %3463, align 2, !tbaa !44
  %3465 = sub i16 0, %3464
  %3466 = getelementptr inbounds i8, ptr %3360, i64 86
  store i16 %3465, ptr %3466, align 2, !tbaa !44
  %3467 = getelementptr inbounds i8, ptr %3363, i64 60
  %3468 = load i16, ptr %3467, align 2, !tbaa !44
  %3469 = getelementptr inbounds i8, ptr %3360, i64 102
  store i16 %3468, ptr %3469, align 2, !tbaa !44
  %3470 = getelementptr inbounds i8, ptr %3363, i64 62
  %3471 = load i16, ptr %3470, align 2, !tbaa !44
  %3472 = sub i16 0, %3471
  %3473 = getelementptr inbounds i8, ptr %3360, i64 118
  store i16 %3472, ptr %3473, align 2, !tbaa !44
  %3474 = getelementptr inbounds i8, ptr %3363, i64 64
  %3475 = load i16, ptr %3474, align 2, !tbaa !44
  %3476 = getelementptr inbounds i8, ptr %3360, i64 8
  store i16 %3475, ptr %3476, align 2, !tbaa !44
  %3477 = getelementptr inbounds i8, ptr %3363, i64 66
  %3478 = load i16, ptr %3477, align 2, !tbaa !44
  %3479 = sub i16 0, %3478
  %3480 = getelementptr inbounds i8, ptr %3360, i64 24
  store i16 %3479, ptr %3480, align 2, !tbaa !44
  %3481 = getelementptr inbounds i8, ptr %3363, i64 68
  %3482 = load i16, ptr %3481, align 2, !tbaa !44
  %3483 = getelementptr inbounds i8, ptr %3360, i64 40
  store i16 %3482, ptr %3483, align 2, !tbaa !44
  %3484 = getelementptr inbounds i8, ptr %3363, i64 70
  %3485 = load i16, ptr %3484, align 2, !tbaa !44
  %3486 = sub i16 0, %3485
  %3487 = getelementptr inbounds i8, ptr %3360, i64 56
  store i16 %3486, ptr %3487, align 2, !tbaa !44
  %3488 = getelementptr inbounds i8, ptr %3363, i64 72
  %3489 = load i16, ptr %3488, align 2, !tbaa !44
  %3490 = getelementptr inbounds i8, ptr %3360, i64 72
  store i16 %3489, ptr %3490, align 2, !tbaa !44
  %3491 = getelementptr inbounds i8, ptr %3363, i64 74
  %3492 = load i16, ptr %3491, align 2, !tbaa !44
  %3493 = sub i16 0, %3492
  %3494 = getelementptr inbounds i8, ptr %3360, i64 88
  store i16 %3493, ptr %3494, align 2, !tbaa !44
  %3495 = getelementptr inbounds i8, ptr %3363, i64 76
  %3496 = load i16, ptr %3495, align 2, !tbaa !44
  %3497 = getelementptr inbounds i8, ptr %3360, i64 104
  store i16 %3496, ptr %3497, align 2, !tbaa !44
  %3498 = getelementptr inbounds i8, ptr %3363, i64 78
  %3499 = load i16, ptr %3498, align 2, !tbaa !44
  %3500 = sub i16 0, %3499
  %3501 = getelementptr inbounds i8, ptr %3360, i64 120
  store i16 %3500, ptr %3501, align 2, !tbaa !44
  %3502 = getelementptr inbounds i8, ptr %3363, i64 80
  %3503 = load i16, ptr %3502, align 2, !tbaa !44
  %3504 = getelementptr inbounds i8, ptr %3360, i64 10
  store i16 %3503, ptr %3504, align 2, !tbaa !44
  %3505 = getelementptr inbounds i8, ptr %3363, i64 82
  %3506 = load i16, ptr %3505, align 2, !tbaa !44
  %3507 = sub i16 0, %3506
  %3508 = getelementptr inbounds i8, ptr %3360, i64 26
  store i16 %3507, ptr %3508, align 2, !tbaa !44
  %3509 = getelementptr inbounds i8, ptr %3363, i64 84
  %3510 = load i16, ptr %3509, align 2, !tbaa !44
  %3511 = getelementptr inbounds i8, ptr %3360, i64 42
  store i16 %3510, ptr %3511, align 2, !tbaa !44
  %3512 = getelementptr inbounds i8, ptr %3363, i64 86
  %3513 = load i16, ptr %3512, align 2, !tbaa !44
  %3514 = sub i16 0, %3513
  %3515 = getelementptr inbounds i8, ptr %3360, i64 58
  store i16 %3514, ptr %3515, align 2, !tbaa !44
  %3516 = getelementptr inbounds i8, ptr %3363, i64 88
  %3517 = load i16, ptr %3516, align 2, !tbaa !44
  %3518 = getelementptr inbounds i8, ptr %3360, i64 74
  store i16 %3517, ptr %3518, align 2, !tbaa !44
  %3519 = getelementptr inbounds i8, ptr %3363, i64 90
  %3520 = load i16, ptr %3519, align 2, !tbaa !44
  %3521 = sub i16 0, %3520
  %3522 = getelementptr inbounds i8, ptr %3360, i64 90
  store i16 %3521, ptr %3522, align 2, !tbaa !44
  %3523 = getelementptr inbounds i8, ptr %3363, i64 92
  %3524 = load i16, ptr %3523, align 2, !tbaa !44
  %3525 = getelementptr inbounds i8, ptr %3360, i64 106
  store i16 %3524, ptr %3525, align 2, !tbaa !44
  %3526 = getelementptr inbounds i8, ptr %3363, i64 94
  %3527 = load i16, ptr %3526, align 2, !tbaa !44
  %3528 = sub i16 0, %3527
  %3529 = getelementptr inbounds i8, ptr %3360, i64 122
  store i16 %3528, ptr %3529, align 2, !tbaa !44
  %3530 = getelementptr inbounds i8, ptr %3363, i64 96
  %3531 = load i16, ptr %3530, align 2, !tbaa !44
  %3532 = getelementptr inbounds i8, ptr %3360, i64 12
  store i16 %3531, ptr %3532, align 2, !tbaa !44
  %3533 = getelementptr inbounds i8, ptr %3363, i64 98
  %3534 = load i16, ptr %3533, align 2, !tbaa !44
  %3535 = sub i16 0, %3534
  %3536 = getelementptr inbounds i8, ptr %3360, i64 28
  store i16 %3535, ptr %3536, align 2, !tbaa !44
  %3537 = getelementptr inbounds i8, ptr %3363, i64 100
  %3538 = load i16, ptr %3537, align 2, !tbaa !44
  %3539 = getelementptr inbounds i8, ptr %3360, i64 44
  store i16 %3538, ptr %3539, align 2, !tbaa !44
  %3540 = getelementptr inbounds i8, ptr %3363, i64 102
  %3541 = load i16, ptr %3540, align 2, !tbaa !44
  %3542 = sub i16 0, %3541
  %3543 = getelementptr inbounds i8, ptr %3360, i64 60
  store i16 %3542, ptr %3543, align 2, !tbaa !44
  %3544 = getelementptr inbounds i8, ptr %3363, i64 104
  %3545 = load i16, ptr %3544, align 2, !tbaa !44
  %3546 = getelementptr inbounds i8, ptr %3360, i64 76
  store i16 %3545, ptr %3546, align 2, !tbaa !44
  %3547 = getelementptr inbounds i8, ptr %3363, i64 106
  %3548 = load i16, ptr %3547, align 2, !tbaa !44
  %3549 = sub i16 0, %3548
  %3550 = getelementptr inbounds i8, ptr %3360, i64 92
  store i16 %3549, ptr %3550, align 2, !tbaa !44
  %3551 = getelementptr inbounds i8, ptr %3363, i64 108
  %3552 = load i16, ptr %3551, align 2, !tbaa !44
  %3553 = getelementptr inbounds i8, ptr %3360, i64 108
  store i16 %3552, ptr %3553, align 2, !tbaa !44
  %3554 = getelementptr inbounds i8, ptr %3363, i64 110
  %3555 = load i16, ptr %3554, align 2, !tbaa !44
  %3556 = sub i16 0, %3555
  %3557 = getelementptr inbounds i8, ptr %3360, i64 124
  store i16 %3556, ptr %3557, align 2, !tbaa !44
  %3558 = getelementptr inbounds i8, ptr %3363, i64 112
  %3559 = load i16, ptr %3558, align 2, !tbaa !44
  %3560 = getelementptr inbounds i8, ptr %3360, i64 14
  store i16 %3559, ptr %3560, align 2, !tbaa !44
  %3561 = getelementptr inbounds i8, ptr %3363, i64 114
  %3562 = load i16, ptr %3561, align 2, !tbaa !44
  %3563 = sub i16 0, %3562
  %3564 = getelementptr inbounds i8, ptr %3360, i64 30
  store i16 %3563, ptr %3564, align 2, !tbaa !44
  %3565 = getelementptr inbounds i8, ptr %3363, i64 116
  %3566 = load i16, ptr %3565, align 2, !tbaa !44
  %3567 = getelementptr inbounds i8, ptr %3360, i64 46
  store i16 %3566, ptr %3567, align 2, !tbaa !44
  %3568 = getelementptr inbounds i8, ptr %3363, i64 118
  %3569 = load i16, ptr %3568, align 2, !tbaa !44
  %3570 = sub i16 0, %3569
  %3571 = getelementptr inbounds i8, ptr %3360, i64 62
  store i16 %3570, ptr %3571, align 2, !tbaa !44
  %3572 = getelementptr inbounds i8, ptr %3363, i64 120
  %3573 = load i16, ptr %3572, align 2, !tbaa !44
  %3574 = getelementptr inbounds i8, ptr %3360, i64 78
  store i16 %3573, ptr %3574, align 2, !tbaa !44
  %3575 = getelementptr inbounds i8, ptr %3363, i64 122
  %3576 = load i16, ptr %3575, align 2, !tbaa !44
  %3577 = sub i16 0, %3576
  %3578 = getelementptr inbounds i8, ptr %3360, i64 94
  store i16 %3577, ptr %3578, align 2, !tbaa !44
  %3579 = getelementptr inbounds i8, ptr %3363, i64 124
  %3580 = load i16, ptr %3579, align 2, !tbaa !44
  %3581 = getelementptr inbounds i8, ptr %3360, i64 110
  store i16 %3580, ptr %3581, align 2, !tbaa !44
  %3582 = getelementptr inbounds i8, ptr %3363, i64 126
  %3583 = load i16, ptr %3582, align 2, !tbaa !44
  %3584 = sub i16 0, %3583
  %3585 = getelementptr inbounds i8, ptr %3360, i64 126
  store i16 %3584, ptr %3585, align 2, !tbaa !44
  %3586 = add nuw nsw i64 %3356, 1
  %3587 = icmp eq i64 %3586, %3354
  br i1 %3587, label %3588, label %3355

3588:                                             ; preds = %3355, %3342
  %3589 = add i32 %3350, %3343
  %3590 = load i32, ptr %3312, align 4, !tbaa !25
  %3591 = icmp ult i32 %3589, %3590
  br i1 %3591, label %3342, label %3592

3592:                                             ; preds = %3588
  %3593 = load i32, ptr %3303, align 4, !tbaa !29
  br label %3594

3594:                                             ; preds = %3592, %3330
  %3595 = phi i32 [ %3331, %3330 ], [ %3593, %3592 ]
  %3596 = phi i32 [ 0, %3330 ], [ %3590, %3592 ]
  %3597 = add nuw nsw i64 %3333, 1
  %3598 = sext i32 %3595 to i64
  %3599 = icmp slt i64 %3597, %3598
  br i1 %3599, label %3330, label %3836, !llvm.loop !52

3600:                                             ; preds = %3328, %3830
  %3601 = phi i32 [ %3831, %3830 ], [ %3323, %3328 ]
  %3602 = phi i32 [ %3832, %3830 ], [ 1, %3328 ]
  %3603 = phi i64 [ %3833, %3830 ], [ 0, %3328 ]
  %3604 = icmp eq i32 %3602, 0
  br i1 %3604, label %3830, label %3605

3605:                                             ; preds = %3600
  %3606 = getelementptr inbounds ptr, ptr %3322, i64 %3603
  %3607 = trunc nuw nsw i64 %3603 to i32
  %3608 = add i32 %3317, %3607
  %3609 = zext i32 %3608 to i64
  br label %3610

3610:                                             ; preds = %3605, %3824
  %3611 = phi i32 [ %3825, %3824 ], [ 0, %3605 ]
  %3612 = load ptr, ptr %3297, align 8, !tbaa !19
  %3613 = getelementptr inbounds i8, ptr %3612, i64 64
  %3614 = load ptr, ptr %3613, align 8, !tbaa !46
  %3615 = load ptr, ptr %3313, align 8, !tbaa !30
  %3616 = load i32, ptr %3314, align 8, !tbaa !27
  %3617 = tail call ptr %3614(ptr noundef %0, ptr noundef %3615, i32 noundef signext %3611, i32 noundef signext %3616, i32 noundef signext 0) #4
  %3618 = load i32, ptr %3314, align 8, !tbaa !27
  %3619 = icmp sgt i32 %3618, 0
  br i1 %3619, label %3620, label %3824

3620:                                             ; preds = %3610
  %3621 = load ptr, ptr %3606, align 8, !tbaa !30
  %3622 = zext nneg i32 %3618 to i64
  br label %3623

3623:                                             ; preds = %3623, %3620
  %3624 = phi i64 [ 0, %3620 ], [ %3822, %3623 ]
  %3625 = trunc nuw nsw i64 %3624 to i32
  %3626 = add i32 %3611, %3625
  %3627 = zext i32 %3626 to i64
  %3628 = getelementptr inbounds [64 x i16], ptr %3621, i64 %3627
  %3629 = getelementptr inbounds ptr, ptr %3617, i64 %3624
  %3630 = load ptr, ptr %3629, align 8, !tbaa !30
  %3631 = getelementptr inbounds [64 x i16], ptr %3630, i64 %3609
  %3632 = load i16, ptr %3631, align 2, !tbaa !44
  store i16 %3632, ptr %3628, align 2, !tbaa !44
  %3633 = getelementptr inbounds i8, ptr %3631, i64 2
  %3634 = load i16, ptr %3633, align 2, !tbaa !44
  %3635 = getelementptr inbounds i8, ptr %3628, i64 16
  store i16 %3634, ptr %3635, align 2, !tbaa !44
  %3636 = getelementptr inbounds i8, ptr %3631, i64 4
  %3637 = load i16, ptr %3636, align 2, !tbaa !44
  %3638 = getelementptr inbounds i8, ptr %3628, i64 32
  store i16 %3637, ptr %3638, align 2, !tbaa !44
  %3639 = getelementptr inbounds i8, ptr %3631, i64 6
  %3640 = load i16, ptr %3639, align 2, !tbaa !44
  %3641 = getelementptr inbounds i8, ptr %3628, i64 48
  store i16 %3640, ptr %3641, align 2, !tbaa !44
  %3642 = getelementptr inbounds i8, ptr %3631, i64 8
  %3643 = load i16, ptr %3642, align 2, !tbaa !44
  %3644 = getelementptr inbounds i8, ptr %3628, i64 64
  store i16 %3643, ptr %3644, align 2, !tbaa !44
  %3645 = getelementptr inbounds i8, ptr %3631, i64 10
  %3646 = load i16, ptr %3645, align 2, !tbaa !44
  %3647 = getelementptr inbounds i8, ptr %3628, i64 80
  store i16 %3646, ptr %3647, align 2, !tbaa !44
  %3648 = getelementptr inbounds i8, ptr %3631, i64 12
  %3649 = load i16, ptr %3648, align 2, !tbaa !44
  %3650 = getelementptr inbounds i8, ptr %3628, i64 96
  store i16 %3649, ptr %3650, align 2, !tbaa !44
  %3651 = getelementptr inbounds i8, ptr %3631, i64 14
  %3652 = load i16, ptr %3651, align 2, !tbaa !44
  %3653 = getelementptr inbounds i8, ptr %3628, i64 112
  store i16 %3652, ptr %3653, align 2, !tbaa !44
  %3654 = getelementptr inbounds i8, ptr %3631, i64 16
  %3655 = load i16, ptr %3654, align 2, !tbaa !44
  %3656 = getelementptr inbounds i8, ptr %3628, i64 2
  store i16 %3655, ptr %3656, align 2, !tbaa !44
  %3657 = getelementptr inbounds i8, ptr %3631, i64 18
  %3658 = load i16, ptr %3657, align 2, !tbaa !44
  %3659 = getelementptr inbounds i8, ptr %3628, i64 18
  store i16 %3658, ptr %3659, align 2, !tbaa !44
  %3660 = getelementptr inbounds i8, ptr %3631, i64 20
  %3661 = load i16, ptr %3660, align 2, !tbaa !44
  %3662 = getelementptr inbounds i8, ptr %3628, i64 34
  store i16 %3661, ptr %3662, align 2, !tbaa !44
  %3663 = getelementptr inbounds i8, ptr %3631, i64 22
  %3664 = load i16, ptr %3663, align 2, !tbaa !44
  %3665 = getelementptr inbounds i8, ptr %3628, i64 50
  store i16 %3664, ptr %3665, align 2, !tbaa !44
  %3666 = getelementptr inbounds i8, ptr %3631, i64 24
  %3667 = load i16, ptr %3666, align 2, !tbaa !44
  %3668 = getelementptr inbounds i8, ptr %3628, i64 66
  store i16 %3667, ptr %3668, align 2, !tbaa !44
  %3669 = getelementptr inbounds i8, ptr %3631, i64 26
  %3670 = load i16, ptr %3669, align 2, !tbaa !44
  %3671 = getelementptr inbounds i8, ptr %3628, i64 82
  store i16 %3670, ptr %3671, align 2, !tbaa !44
  %3672 = getelementptr inbounds i8, ptr %3631, i64 28
  %3673 = load i16, ptr %3672, align 2, !tbaa !44
  %3674 = getelementptr inbounds i8, ptr %3628, i64 98
  store i16 %3673, ptr %3674, align 2, !tbaa !44
  %3675 = getelementptr inbounds i8, ptr %3631, i64 30
  %3676 = load i16, ptr %3675, align 2, !tbaa !44
  %3677 = getelementptr inbounds i8, ptr %3628, i64 114
  store i16 %3676, ptr %3677, align 2, !tbaa !44
  %3678 = getelementptr inbounds i8, ptr %3631, i64 32
  %3679 = load i16, ptr %3678, align 2, !tbaa !44
  %3680 = getelementptr inbounds i8, ptr %3628, i64 4
  store i16 %3679, ptr %3680, align 2, !tbaa !44
  %3681 = getelementptr inbounds i8, ptr %3631, i64 34
  %3682 = load i16, ptr %3681, align 2, !tbaa !44
  %3683 = getelementptr inbounds i8, ptr %3628, i64 20
  store i16 %3682, ptr %3683, align 2, !tbaa !44
  %3684 = getelementptr inbounds i8, ptr %3631, i64 36
  %3685 = load i16, ptr %3684, align 2, !tbaa !44
  %3686 = getelementptr inbounds i8, ptr %3628, i64 36
  store i16 %3685, ptr %3686, align 2, !tbaa !44
  %3687 = getelementptr inbounds i8, ptr %3631, i64 38
  %3688 = load i16, ptr %3687, align 2, !tbaa !44
  %3689 = getelementptr inbounds i8, ptr %3628, i64 52
  store i16 %3688, ptr %3689, align 2, !tbaa !44
  %3690 = getelementptr inbounds i8, ptr %3631, i64 40
  %3691 = load i16, ptr %3690, align 2, !tbaa !44
  %3692 = getelementptr inbounds i8, ptr %3628, i64 68
  store i16 %3691, ptr %3692, align 2, !tbaa !44
  %3693 = getelementptr inbounds i8, ptr %3631, i64 42
  %3694 = load i16, ptr %3693, align 2, !tbaa !44
  %3695 = getelementptr inbounds i8, ptr %3628, i64 84
  store i16 %3694, ptr %3695, align 2, !tbaa !44
  %3696 = getelementptr inbounds i8, ptr %3631, i64 44
  %3697 = load i16, ptr %3696, align 2, !tbaa !44
  %3698 = getelementptr inbounds i8, ptr %3628, i64 100
  store i16 %3697, ptr %3698, align 2, !tbaa !44
  %3699 = getelementptr inbounds i8, ptr %3631, i64 46
  %3700 = load i16, ptr %3699, align 2, !tbaa !44
  %3701 = getelementptr inbounds i8, ptr %3628, i64 116
  store i16 %3700, ptr %3701, align 2, !tbaa !44
  %3702 = getelementptr inbounds i8, ptr %3631, i64 48
  %3703 = load i16, ptr %3702, align 2, !tbaa !44
  %3704 = getelementptr inbounds i8, ptr %3628, i64 6
  store i16 %3703, ptr %3704, align 2, !tbaa !44
  %3705 = getelementptr inbounds i8, ptr %3631, i64 50
  %3706 = load i16, ptr %3705, align 2, !tbaa !44
  %3707 = getelementptr inbounds i8, ptr %3628, i64 22
  store i16 %3706, ptr %3707, align 2, !tbaa !44
  %3708 = getelementptr inbounds i8, ptr %3631, i64 52
  %3709 = load i16, ptr %3708, align 2, !tbaa !44
  %3710 = getelementptr inbounds i8, ptr %3628, i64 38
  store i16 %3709, ptr %3710, align 2, !tbaa !44
  %3711 = getelementptr inbounds i8, ptr %3631, i64 54
  %3712 = load i16, ptr %3711, align 2, !tbaa !44
  %3713 = getelementptr inbounds i8, ptr %3628, i64 54
  store i16 %3712, ptr %3713, align 2, !tbaa !44
  %3714 = getelementptr inbounds i8, ptr %3631, i64 56
  %3715 = load i16, ptr %3714, align 2, !tbaa !44
  %3716 = getelementptr inbounds i8, ptr %3628, i64 70
  store i16 %3715, ptr %3716, align 2, !tbaa !44
  %3717 = getelementptr inbounds i8, ptr %3631, i64 58
  %3718 = load i16, ptr %3717, align 2, !tbaa !44
  %3719 = getelementptr inbounds i8, ptr %3628, i64 86
  store i16 %3718, ptr %3719, align 2, !tbaa !44
  %3720 = getelementptr inbounds i8, ptr %3631, i64 60
  %3721 = load i16, ptr %3720, align 2, !tbaa !44
  %3722 = getelementptr inbounds i8, ptr %3628, i64 102
  store i16 %3721, ptr %3722, align 2, !tbaa !44
  %3723 = getelementptr inbounds i8, ptr %3631, i64 62
  %3724 = load i16, ptr %3723, align 2, !tbaa !44
  %3725 = getelementptr inbounds i8, ptr %3628, i64 118
  store i16 %3724, ptr %3725, align 2, !tbaa !44
  %3726 = getelementptr inbounds i8, ptr %3631, i64 64
  %3727 = load i16, ptr %3726, align 2, !tbaa !44
  %3728 = getelementptr inbounds i8, ptr %3628, i64 8
  store i16 %3727, ptr %3728, align 2, !tbaa !44
  %3729 = getelementptr inbounds i8, ptr %3631, i64 66
  %3730 = load i16, ptr %3729, align 2, !tbaa !44
  %3731 = getelementptr inbounds i8, ptr %3628, i64 24
  store i16 %3730, ptr %3731, align 2, !tbaa !44
  %3732 = getelementptr inbounds i8, ptr %3631, i64 68
  %3733 = load i16, ptr %3732, align 2, !tbaa !44
  %3734 = getelementptr inbounds i8, ptr %3628, i64 40
  store i16 %3733, ptr %3734, align 2, !tbaa !44
  %3735 = getelementptr inbounds i8, ptr %3631, i64 70
  %3736 = load i16, ptr %3735, align 2, !tbaa !44
  %3737 = getelementptr inbounds i8, ptr %3628, i64 56
  store i16 %3736, ptr %3737, align 2, !tbaa !44
  %3738 = getelementptr inbounds i8, ptr %3631, i64 72
  %3739 = load i16, ptr %3738, align 2, !tbaa !44
  %3740 = getelementptr inbounds i8, ptr %3628, i64 72
  store i16 %3739, ptr %3740, align 2, !tbaa !44
  %3741 = getelementptr inbounds i8, ptr %3631, i64 74
  %3742 = load i16, ptr %3741, align 2, !tbaa !44
  %3743 = getelementptr inbounds i8, ptr %3628, i64 88
  store i16 %3742, ptr %3743, align 2, !tbaa !44
  %3744 = getelementptr inbounds i8, ptr %3631, i64 76
  %3745 = load i16, ptr %3744, align 2, !tbaa !44
  %3746 = getelementptr inbounds i8, ptr %3628, i64 104
  store i16 %3745, ptr %3746, align 2, !tbaa !44
  %3747 = getelementptr inbounds i8, ptr %3631, i64 78
  %3748 = load i16, ptr %3747, align 2, !tbaa !44
  %3749 = getelementptr inbounds i8, ptr %3628, i64 120
  store i16 %3748, ptr %3749, align 2, !tbaa !44
  %3750 = getelementptr inbounds i8, ptr %3631, i64 80
  %3751 = load i16, ptr %3750, align 2, !tbaa !44
  %3752 = getelementptr inbounds i8, ptr %3628, i64 10
  store i16 %3751, ptr %3752, align 2, !tbaa !44
  %3753 = getelementptr inbounds i8, ptr %3631, i64 82
  %3754 = load i16, ptr %3753, align 2, !tbaa !44
  %3755 = getelementptr inbounds i8, ptr %3628, i64 26
  store i16 %3754, ptr %3755, align 2, !tbaa !44
  %3756 = getelementptr inbounds i8, ptr %3631, i64 84
  %3757 = load i16, ptr %3756, align 2, !tbaa !44
  %3758 = getelementptr inbounds i8, ptr %3628, i64 42
  store i16 %3757, ptr %3758, align 2, !tbaa !44
  %3759 = getelementptr inbounds i8, ptr %3631, i64 86
  %3760 = load i16, ptr %3759, align 2, !tbaa !44
  %3761 = getelementptr inbounds i8, ptr %3628, i64 58
  store i16 %3760, ptr %3761, align 2, !tbaa !44
  %3762 = getelementptr inbounds i8, ptr %3631, i64 88
  %3763 = load i16, ptr %3762, align 2, !tbaa !44
  %3764 = getelementptr inbounds i8, ptr %3628, i64 74
  store i16 %3763, ptr %3764, align 2, !tbaa !44
  %3765 = getelementptr inbounds i8, ptr %3631, i64 90
  %3766 = load i16, ptr %3765, align 2, !tbaa !44
  %3767 = getelementptr inbounds i8, ptr %3628, i64 90
  store i16 %3766, ptr %3767, align 2, !tbaa !44
  %3768 = getelementptr inbounds i8, ptr %3631, i64 92
  %3769 = load i16, ptr %3768, align 2, !tbaa !44
  %3770 = getelementptr inbounds i8, ptr %3628, i64 106
  store i16 %3769, ptr %3770, align 2, !tbaa !44
  %3771 = getelementptr inbounds i8, ptr %3631, i64 94
  %3772 = load i16, ptr %3771, align 2, !tbaa !44
  %3773 = getelementptr inbounds i8, ptr %3628, i64 122
  store i16 %3772, ptr %3773, align 2, !tbaa !44
  %3774 = getelementptr inbounds i8, ptr %3631, i64 96
  %3775 = load i16, ptr %3774, align 2, !tbaa !44
  %3776 = getelementptr inbounds i8, ptr %3628, i64 12
  store i16 %3775, ptr %3776, align 2, !tbaa !44
  %3777 = getelementptr inbounds i8, ptr %3631, i64 98
  %3778 = load i16, ptr %3777, align 2, !tbaa !44
  %3779 = getelementptr inbounds i8, ptr %3628, i64 28
  store i16 %3778, ptr %3779, align 2, !tbaa !44
  %3780 = getelementptr inbounds i8, ptr %3631, i64 100
  %3781 = load i16, ptr %3780, align 2, !tbaa !44
  %3782 = getelementptr inbounds i8, ptr %3628, i64 44
  store i16 %3781, ptr %3782, align 2, !tbaa !44
  %3783 = getelementptr inbounds i8, ptr %3631, i64 102
  %3784 = load i16, ptr %3783, align 2, !tbaa !44
  %3785 = getelementptr inbounds i8, ptr %3628, i64 60
  store i16 %3784, ptr %3785, align 2, !tbaa !44
  %3786 = getelementptr inbounds i8, ptr %3631, i64 104
  %3787 = load i16, ptr %3786, align 2, !tbaa !44
  %3788 = getelementptr inbounds i8, ptr %3628, i64 76
  store i16 %3787, ptr %3788, align 2, !tbaa !44
  %3789 = getelementptr inbounds i8, ptr %3631, i64 106
  %3790 = load i16, ptr %3789, align 2, !tbaa !44
  %3791 = getelementptr inbounds i8, ptr %3628, i64 92
  store i16 %3790, ptr %3791, align 2, !tbaa !44
  %3792 = getelementptr inbounds i8, ptr %3631, i64 108
  %3793 = load i16, ptr %3792, align 2, !tbaa !44
  %3794 = getelementptr inbounds i8, ptr %3628, i64 108
  store i16 %3793, ptr %3794, align 2, !tbaa !44
  %3795 = getelementptr inbounds i8, ptr %3631, i64 110
  %3796 = load i16, ptr %3795, align 2, !tbaa !44
  %3797 = getelementptr inbounds i8, ptr %3628, i64 124
  store i16 %3796, ptr %3797, align 2, !tbaa !44
  %3798 = getelementptr inbounds i8, ptr %3631, i64 112
  %3799 = load i16, ptr %3798, align 2, !tbaa !44
  %3800 = getelementptr inbounds i8, ptr %3628, i64 14
  store i16 %3799, ptr %3800, align 2, !tbaa !44
  %3801 = getelementptr inbounds i8, ptr %3631, i64 114
  %3802 = load i16, ptr %3801, align 2, !tbaa !44
  %3803 = getelementptr inbounds i8, ptr %3628, i64 30
  store i16 %3802, ptr %3803, align 2, !tbaa !44
  %3804 = getelementptr inbounds i8, ptr %3631, i64 116
  %3805 = load i16, ptr %3804, align 2, !tbaa !44
  %3806 = getelementptr inbounds i8, ptr %3628, i64 46
  store i16 %3805, ptr %3806, align 2, !tbaa !44
  %3807 = getelementptr inbounds i8, ptr %3631, i64 118
  %3808 = load i16, ptr %3807, align 2, !tbaa !44
  %3809 = getelementptr inbounds i8, ptr %3628, i64 62
  store i16 %3808, ptr %3809, align 2, !tbaa !44
  %3810 = getelementptr inbounds i8, ptr %3631, i64 120
  %3811 = load i16, ptr %3810, align 2, !tbaa !44
  %3812 = getelementptr inbounds i8, ptr %3628, i64 78
  store i16 %3811, ptr %3812, align 2, !tbaa !44
  %3813 = getelementptr inbounds i8, ptr %3631, i64 122
  %3814 = load i16, ptr %3813, align 2, !tbaa !44
  %3815 = getelementptr inbounds i8, ptr %3628, i64 94
  store i16 %3814, ptr %3815, align 2, !tbaa !44
  %3816 = getelementptr inbounds i8, ptr %3631, i64 124
  %3817 = load i16, ptr %3816, align 2, !tbaa !44
  %3818 = getelementptr inbounds i8, ptr %3628, i64 110
  store i16 %3817, ptr %3818, align 2, !tbaa !44
  %3819 = getelementptr inbounds i8, ptr %3631, i64 126
  %3820 = load i16, ptr %3819, align 2, !tbaa !44
  %3821 = getelementptr inbounds i8, ptr %3628, i64 126
  store i16 %3820, ptr %3821, align 2, !tbaa !44
  %3822 = add nuw nsw i64 %3624, 1
  %3823 = icmp eq i64 %3822, %3622
  br i1 %3823, label %3824, label %3623

3824:                                             ; preds = %3623, %3610
  %3825 = add i32 %3618, %3611
  %3826 = load i32, ptr %3312, align 4, !tbaa !25
  %3827 = icmp ult i32 %3825, %3826
  br i1 %3827, label %3610, label %3828

3828:                                             ; preds = %3824
  %3829 = load i32, ptr %3303, align 4, !tbaa !29
  br label %3830

3830:                                             ; preds = %3828, %3600
  %3831 = phi i32 [ %3601, %3600 ], [ %3829, %3828 ]
  %3832 = phi i32 [ 0, %3600 ], [ %3826, %3828 ]
  %3833 = add nuw nsw i64 %3603, 1
  %3834 = sext i32 %3831 to i64
  %3835 = icmp slt i64 %3833, %3834
  br i1 %3835, label %3600, label %3836, !llvm.loop !52

3836:                                             ; preds = %3830, %3594, %3325, %3315
  %3837 = phi i32 [ %3323, %3315 ], [ %3323, %3325 ], [ %3595, %3594 ], [ %3831, %3830 ]
  %3838 = add i32 %3837, %3317
  %3839 = load i32, ptr %3307, align 8, !tbaa !28
  %3840 = icmp ult i32 %3838, %3839
  br i1 %3840, label %3315, label %3841

3841:                                             ; preds = %3836
  %3842 = load i32, ptr %3292, align 4, !tbaa !34
  br label %3843

3843:                                             ; preds = %3841, %3298
  %3844 = phi i32 [ %3842, %3841 ], [ %3299, %3298 ]
  %3845 = add nuw nsw i64 %3300, 1
  %3846 = sext i32 %3844 to i64
  %3847 = icmp slt i64 %3845, %3846
  br i1 %3847, label %3298, label %3848

3848:                                             ; preds = %3280, %2275, %1748, %705, %422, %100, %3843, %3285, %2280, %1753, %710, %427, %105, %8, %4
  ret void
}

; Function Attrs: nounwind
define dso_local void @jcopy_markers_setup(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 254, i32 noundef signext 65535) #4
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 224, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 225, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 226, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 227, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 228, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 229, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 230, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 231, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 232, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 233, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 234, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 235, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 236, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 237, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 238, i32 noundef signext 65535) #4
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef signext 239, i32 noundef signext 65535) #4
  br label %7

7:                                                ; preds = %6, %2, %4
  ret void
}

declare dso_local void @jpeg_save_markers(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @jcopy_markers_execute(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 400
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 288
  %9 = getelementptr inbounds i8, ptr %1, i64 300
  br label %10

10:                                               ; preds = %7, %82
  %11 = phi ptr [ %5, %7 ], [ %83, %82 ]
  %12 = load i32, ptr %8, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %11, i64 8
  %16 = load i8, ptr %15, align 8, !tbaa !54
  %17 = icmp eq i8 %16, -32
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %11, i64 16
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %11, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = load i8, ptr %24, align 1, !tbaa !58
  %26 = icmp eq i8 %25, 74
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !58
  %30 = icmp eq i8 %29, 70
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %24, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !58
  %34 = icmp eq i8 %33, 73
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %24, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !58
  %38 = icmp eq i8 %37, 70
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %24, i64 4
  %41 = load i8, ptr %40, align 1, !tbaa !58
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %39, %35, %31, %27, %22, %18, %14, %10
  %44 = load i32, ptr %9, align 4, !tbaa !59
  %45 = icmp ne i32 %44, 0
  %46 = getelementptr inbounds i8, ptr %11, i64 8
  %47 = load i8, ptr %46, align 8, !tbaa !54
  %48 = icmp eq i8 %47, -18
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, ptr %11, i64 16
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %11, i64 24
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = load i8, ptr %56, align 1, !tbaa !58
  %58 = icmp eq i8 %57, 65
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !58
  %62 = icmp eq i8 %61, 100
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %56, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !58
  %66 = icmp eq i8 %65, 111
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %56, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !58
  %70 = icmp eq i8 %69, 98
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %56, i64 4
  %73 = load i8, ptr %72, align 1, !tbaa !58
  %74 = icmp eq i8 %73, 101
  br i1 %74, label %82, label %75

75:                                               ; preds = %43, %71, %67, %63, %59, %54, %50
  %76 = phi i8 [ -18, %71 ], [ -18, %67 ], [ -18, %63 ], [ -18, %59 ], [ -18, %54 ], [ -18, %50 ], [ %47, %43 ]
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %11, i64 24
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds i8, ptr %11, i64 16
  %81 = load i32, ptr %80, align 8, !tbaa !56
  tail call void @jpeg_write_marker(ptr noundef nonnull %1, i32 noundef signext %77, ptr noundef %79, i32 noundef signext %81) #4
  br label %82

82:                                               ; preds = %71, %39, %75
  %83 = load ptr, ptr %11, align 8, !tbaa !30
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %10

85:                                               ; preds = %82, %3
  ret void
}

declare dso_local void @jpeg_write_marker(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!13, !8, i64 60}
!13 = !{!"jpeg_decompress_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !14, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !11, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !11, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !8, i64 296, !11, i64 304, !8, i64 312, !8, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !8, i64 368, !8, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !15, i64 380, !15, i64 382, !8, i64 384, !9, i64 388, !8, i64 392, !11, i64 400, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !11, i64 424, !8, i64 432, !9, i64 440, !8, i64 472, !8, i64 476, !8, i64 480, !9, i64 484, !8, i64 524, !8, i64 528, !8, i64 532, !8, i64 536, !8, i64 540, !11, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624}
!14 = !{!"double", !9, i64 0}
!15 = !{!"short", !9, i64 0}
!16 = !{!13, !8, i64 56}
!17 = !{!7, !8, i64 12}
!18 = !{!7, !8, i64 0}
!19 = !{!13, !11, i64 8}
!20 = !{!21, !11, i64 0}
!21 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !22, i64 88, !22, i64 96}
!22 = !{!"long", !9, i64 0}
!23 = !{!13, !11, i64 304}
!24 = !{!21, !11, i64 40}
!25 = !{!26, !8, i64 28}
!26 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !11, i64 80, !11, i64 88}
!27 = !{!26, !8, i64 8}
!28 = !{!26, !8, i64 32}
!29 = !{!26, !8, i64 12}
!30 = !{!11, !11, i64 0}
!31 = !{!7, !11, i64 16}
!32 = !{!33, !8, i64 80}
!33 = !{!"jpeg_compress_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !14, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !11, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !8, i64 240, !11, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !15, i64 296, !15, i64 298, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !9, i64 328, !8, i64 360, !8, i64 364, !8, i64 368, !9, i64 372, !8, i64 412, !8, i64 416, !8, i64 420, !8, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !8, i64 512}
!34 = !{!33, !8, i64 76}
!35 = !{!33, !11, i64 88}
!36 = !{!26, !8, i64 16}
!37 = !{!33, !11, i64 0}
!38 = !{!39, !8, i64 40}
!39 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !9, i64 44, !8, i64 124, !22, i64 128, !11, i64 136, !8, i64 144, !11, i64 152, !8, i64 160, !8, i64 164}
!40 = !{!39, !11, i64 0}
!41 = !{!7, !8, i64 4}
!42 = !{!33, !8, i64 48}
!43 = !{!33, !8, i64 52}
!44 = !{!15, !15, i64 0}
!45 = !{!33, !8, i64 312}
!46 = !{!21, !11, i64 64}
!47 = !{!33, !8, i64 316}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unswitch.partial.disable"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = !{!33, !8, i64 288}
!54 = !{!55, !9, i64 8}
!55 = !{!"jpeg_marker_struct", !11, i64 0, !9, i64 8, !8, i64 12, !8, i64 16, !11, i64 24}
!56 = !{!55, !8, i64 16}
!57 = !{!55, !11, i64 24}
!58 = !{!9, !9, i64 0}
!59 = !{!33, !8, i64 300}
