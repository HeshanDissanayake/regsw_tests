; ModuleID = 'subspic.c'
source_filename = "subspic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@Substitute_Frame_Buffer.previous_temporal_reference = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.bgate = internal unnamed_addr global i1 false, align 4
@Second_Field = external dso_local local_unnamed_addr global i32, align 4
@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@picture_coding_type = external dso_local local_unnamed_addr global i32, align 4
@Substitute_Picture_Filename = external dso_local local_unnamed_addr global ptr, align 8
@forward_reference_frame = external dso_local global [3 x ptr], align 8
@temporal_reference = external dso_local local_unnamed_addr global i32, align 4
@backward_reference_frame = external dso_local global [3 x ptr], align 8
@current_frame = external dso_local global [3 x ptr], align 8
@.str = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@Big_Picture_Flag = external dso_local local_unnamed_addr global i32, align 4
@substitute_frame = external dso_local local_unnamed_addr global [3 x ptr], align 8
@Coded_Picture_Width = external dso_local local_unnamed_addr global i32, align 4
@Coded_Picture_Height = external dso_local local_unnamed_addr global i32, align 4
@Chroma_Width = external dso_local local_unnamed_addr global i32, align 4
@Chroma_Height = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Error_Text = external dso_local global [256 x i8], align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1
@str = private unnamed_addr constant [31 x i8] c"was unable to substitute frame\00", align 1

; Function Attrs: nounwind
define dso_local void @Substitute_Frame_Buffer(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load i32, ptr @Second_Field, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %9 = icmp ne i32 %8, 3
  %10 = select i1 %9, i1 %5, i1 false
  %11 = load i32, ptr @picture_coding_type, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %10, label %28, label %13

13:                                               ; preds = %7
  br i1 %12, label %14, label %17

14:                                               ; preds = %13
  %15 = add nsw i32 %0, -1
  %16 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !10
  tail call fastcc void @Read_Frame(ptr noundef %16, ptr noundef nonnull @forward_reference_frame, i32 noundef signext %15)
  br label %41

17:                                               ; preds = %13
  %18 = icmp ne i32 %11, 3
  %19 = load i1, ptr @Substitute_Frame_Buffer.bgate, align 4
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !6
  %23 = load i32, ptr @temporal_reference, align 4, !tbaa !6
  %24 = add i32 %0, -1
  %25 = add i32 %24, %22
  %26 = sub i32 %25, %23
  %27 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !10
  tail call fastcc void @Read_Frame(ptr noundef %27, ptr noundef nonnull @backward_reference_frame, i32 noundef signext %26)
  br label %41

28:                                               ; preds = %7
  br i1 %12, label %29, label %46

29:                                               ; preds = %28
  %30 = load i32, ptr @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !6
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @temporal_reference, align 4, !tbaa !6
  %34 = load i32, ptr @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !6
  %35 = add i32 %0, -1
  %36 = add i32 %35, %33
  %37 = sub i32 %36, %34
  br label %38

38:                                               ; preds = %29, %32
  %39 = phi i32 [ %37, %32 ], [ %0, %29 ]
  %40 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !10
  tail call fastcc void @Read_Frame(ptr noundef %40, ptr noundef nonnull @current_frame, i32 noundef signext %39)
  br label %41

41:                                               ; preds = %2, %38, %14, %21, %17
  %42 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %43 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %44 = load i32, ptr @Second_Field, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %28
  %47 = phi i1 [ %45, %41 ], [ true, %28 ]
  %48 = phi i32 [ %43, %41 ], [ %8, %28 ]
  %49 = phi i32 [ %42, %41 ], [ %11, %28 ]
  %50 = icmp eq i32 %49, 3
  store i1 %50, ptr @Substitute_Frame_Buffer.bgate, align 4
  %51 = icmp ne i32 %48, 3
  %52 = select i1 %51, i1 %47, i1 false
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, ptr @temporal_reference, align 4, !tbaa !6
  store i32 %54, ptr @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !6
  br label %55

55:                                               ; preds = %46, %53
  %56 = xor i1 %50, true
  %57 = icmp eq i32 %48, 3
  %58 = select i1 %57, i1 true, i1 %47
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, ptr @temporal_reference, align 4, !tbaa !6
  store i32 %61, ptr @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !6
  br label %62

62:                                               ; preds = %60, %55
  store i32 %49, ptr @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @Read_Frame(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca [256 x i8], align 1
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %2)
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr @Big_Picture_Flag, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %79, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %117, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %17 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %18 = mul nsw i32 %17, %16
  %19 = load i32, ptr @chroma_format, align 4, !tbaa !6
  switch i32 %19, label %27 [
    i32 3, label %20
    i32 2, label %22
    i32 1, label %24
  ]

20:                                               ; preds = %15
  %21 = mul nsw i32 %18, 3
  br label %29

22:                                               ; preds = %15
  %23 = shl nsw i32 %18, 1
  br label %29

24:                                               ; preds = %15
  %25 = ashr i32 %18, 1
  %26 = add nsw i32 %25, %18
  br label %29

27:                                               ; preds = %15
  %28 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef signext %19)
  br label %29

29:                                               ; preds = %27, %24, %22, %20
  %30 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %26, %24 ], [ %18, %27 ]
  %31 = mul nsw i32 %30, %2
  %32 = sext i32 %31 to i64
  %33 = tail call signext i32 @fseek(ptr noundef nonnull %13, i64 noundef %32, i32 noundef signext 0)
  %34 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %39, %29
  %37 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %53, label %77

39:                                               ; preds = %29, %39
  %40 = phi i32 [ %48, %39 ], [ 0, %29 ]
  %41 = load ptr, ptr @substitute_frame, align 8, !tbaa !10
  %42 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %43 = mul nsw i32 %42, %40
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = sext i32 %42 to i64
  %47 = tail call i64 @fread(ptr noundef %45, i64 noundef 1, i64 noundef %46, ptr noundef nonnull %13)
  %48 = add nuw nsw i32 %40, 1
  %49 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %39, label %36

51:                                               ; preds = %53
  %52 = icmp sgt i32 %63, 0
  br i1 %52, label %65, label %77

53:                                               ; preds = %36, %53
  %54 = phi i32 [ %62, %53 ], [ 0, %36 ]
  %55 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %56 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = sext i32 %56 to i64
  %61 = tail call i64 @fread(ptr noundef %59, i64 noundef 1, i64 noundef %60, ptr noundef nonnull %13)
  %62 = add nuw nsw i32 %54, 1
  %63 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %53, label %51

65:                                               ; preds = %51, %65
  %66 = phi i32 [ %74, %65 ], [ 0, %51 ]
  %67 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 16), align 8, !tbaa !10
  %68 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %69 = mul nsw i32 %68, %66
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %67, i64 %70
  %72 = sext i32 %68 to i64
  %73 = tail call i64 @fread(ptr noundef %71, i64 noundef 1, i64 noundef %72, ptr noundef nonnull %13)
  %74 = add nuw nsw i32 %66, 1
  %75 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %65, label %77

77:                                               ; preds = %65, %36, %51
  %78 = tail call signext i32 @fclose(ptr noundef nonnull %13)
  br label %120

79:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #6
  %80 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef signext %2) #6
  %81 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %4) #6
  %82 = load ptr, ptr @substitute_frame, align 8, !tbaa !10
  %83 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %84 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %85 = mul nsw i32 %84, %83
  %86 = call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %5, i32 noundef signext 0) #6
  %87 = call signext i32 @read(i32 noundef signext %86, ptr noundef %82, i32 noundef signext %85) #6
  %88 = icmp eq i32 %87, %85
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef signext %87, i32 noundef signext %85, ptr noundef nonnull %5)
  br label %91

91:                                               ; preds = %89, %79
  %92 = call signext i32 @close(i32 noundef signext %86) #6
  %93 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %4) #6
  %94 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %95 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %96 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %97 = mul nsw i32 %96, %95
  %98 = call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %5, i32 noundef signext 0) #6
  %99 = call signext i32 @read(i32 noundef signext %98, ptr noundef %94, i32 noundef signext %97) #6
  %100 = icmp eq i32 %99, %97
  br i1 %100, label %103, label %101

101:                                              ; preds = %91
  %102 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef signext %99, i32 noundef signext %97, ptr noundef nonnull %5)
  br label %103

103:                                              ; preds = %101, %91
  %104 = call signext i32 @close(i32 noundef signext %98) #6
  %105 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %4) #6
  %106 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 16), align 8, !tbaa !10
  %107 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %108 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %109 = mul nsw i32 %108, %107
  %110 = call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %5, i32 noundef signext 0) #6
  %111 = call signext i32 @read(i32 noundef signext %110, ptr noundef %106, i32 noundef signext %109) #6
  %112 = icmp eq i32 %111, %109
  br i1 %112, label %115, label %113

113:                                              ; preds = %103
  %114 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef signext %111, i32 noundef signext %109, ptr noundef nonnull %5)
  br label %115

115:                                              ; preds = %103, %113
  %116 = call signext i32 @close(i32 noundef signext %110) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  br label %120

117:                                              ; preds = %12
  %118 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0) #6
  %119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %120

120:                                              ; preds = %77, %115, %117
  %121 = load i32, ptr @Second_Field, align 4, !tbaa !6
  %122 = icmp ne i32 %121, 0
  %123 = load i32, ptr @picture_coding_type, align 4
  %124 = icmp eq i32 %123, 2
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %128 = freeze i32 %127
  %129 = icmp ne i32 %128, 1
  %130 = icmp ne i32 %128, 3
  %131 = select i1 %130, i32 2, i32 1
  br label %132

132:                                              ; preds = %120, %126
  %133 = phi i1 [ %130, %126 ], [ false, %120 ]
  %134 = phi i1 [ %129, %126 ], [ true, %120 ]
  %135 = phi i32 [ %131, %126 ], [ 1, %120 ]
  %136 = load ptr, ptr @substitute_frame, align 8, !tbaa !10
  %137 = load ptr, ptr %1, align 8, !tbaa !10
  %138 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %139 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %132
  %142 = icmp sgt i32 %138, 0
  br i1 %142, label %143, label %168

143:                                              ; preds = %141
  %144 = zext i1 %133 to i32
  %145 = shl nuw i32 %138, %144
  %146 = and i1 %134, %133
  %147 = zext nneg i32 %138 to i64
  %148 = sext i32 %145 to i64
  %149 = select i1 %146, i64 %147, i64 0
  br label %150

150:                                              ; preds = %163, %143
  %151 = phi i64 [ %149, %143 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %143 ], [ %164, %163 ]
  %153 = phi i32 [ 0, %143 ], [ %166, %163 ]
  %154 = getelementptr i8, ptr %136, i64 %151
  %155 = getelementptr i8, ptr %137, i64 %152
  br label %156

156:                                              ; preds = %156, %150
  %157 = phi i64 [ 0, %150 ], [ %161, %156 ]
  %158 = getelementptr i8, ptr %154, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !12
  %160 = getelementptr i8, ptr %155, i64 %157
  store i8 %159, ptr %160, align 1, !tbaa !12
  %161 = add nuw nsw i64 %157, 1
  %162 = icmp eq i64 %161, %147
  br i1 %162, label %163, label %156

163:                                              ; preds = %156
  %164 = add nsw i64 %152, %148
  %165 = add nsw i64 %151, %148
  %166 = add nuw nsw i32 %153, %135
  %167 = icmp slt i32 %166, %139
  br i1 %167, label %150, label %172

168:                                              ; preds = %141, %168
  %169 = phi i32 [ %170, %168 ], [ 0, %141 ]
  %170 = add nuw nsw i32 %169, %135
  %171 = icmp slt i32 %170, %139
  br i1 %171, label %168, label %172

172:                                              ; preds = %168, %163, %132
  %173 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %174 = getelementptr inbounds i8, ptr %1, i64 8
  %175 = load ptr, ptr %174, align 8, !tbaa !10
  %176 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %177 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %251

179:                                              ; preds = %172
  %180 = icmp sgt i32 %176, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %179
  %182 = zext i1 %133 to i32
  %183 = shl nuw i32 %176, %182
  %184 = and i1 %134, %133
  %185 = zext nneg i32 %176 to i64
  %186 = sext i32 %183 to i64
  %187 = select i1 %184, i64 %185, i64 0
  br label %188

188:                                              ; preds = %201, %181
  %189 = phi i64 [ %187, %181 ], [ %203, %201 ]
  %190 = phi i64 [ 0, %181 ], [ %202, %201 ]
  %191 = phi i32 [ 0, %181 ], [ %204, %201 ]
  %192 = getelementptr i8, ptr %173, i64 %189
  %193 = getelementptr i8, ptr %175, i64 %190
  br label %194

194:                                              ; preds = %194, %188
  %195 = phi i64 [ 0, %188 ], [ %199, %194 ]
  %196 = getelementptr i8, ptr %192, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !12
  %198 = getelementptr i8, ptr %193, i64 %195
  store i8 %197, ptr %198, align 1, !tbaa !12
  %199 = add nuw nsw i64 %195, 1
  %200 = icmp eq i64 %199, %185
  br i1 %200, label %201, label %194

201:                                              ; preds = %194
  %202 = add nsw i64 %190, %186
  %203 = add nsw i64 %189, %186
  %204 = add nuw nsw i32 %191, %135
  %205 = icmp slt i32 %204, %177
  br i1 %205, label %188, label %210

206:                                              ; preds = %179, %206
  %207 = phi i32 [ %208, %206 ], [ 0, %179 ]
  %208 = add nuw nsw i32 %207, %135
  %209 = icmp slt i32 %208, %177
  br i1 %209, label %206, label %213

210:                                              ; preds = %201
  %211 = load i32, ptr @Chroma_Height, align 4, !tbaa !6
  %212 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  br label %213

213:                                              ; preds = %206, %210
  %214 = phi i32 [ %212, %210 ], [ %176, %206 ]
  %215 = phi i32 [ %211, %210 ], [ %177, %206 ]
  %216 = load ptr, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 16), align 8, !tbaa !10
  %217 = getelementptr inbounds i8, ptr %1, i64 16
  %218 = load ptr, ptr %217, align 8, !tbaa !10
  %219 = icmp sgt i32 %215, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %213
  %221 = icmp sgt i32 %214, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %220
  %223 = zext i1 %133 to i32
  %224 = shl nuw i32 %214, %223
  %225 = and i1 %134, %133
  %226 = zext nneg i32 %214 to i64
  %227 = sext i32 %224 to i64
  %228 = select i1 %225, i64 %226, i64 0
  br label %229

229:                                              ; preds = %242, %222
  %230 = phi i64 [ %228, %222 ], [ %244, %242 ]
  %231 = phi i64 [ 0, %222 ], [ %243, %242 ]
  %232 = phi i32 [ 0, %222 ], [ %245, %242 ]
  %233 = getelementptr i8, ptr %216, i64 %230
  %234 = getelementptr i8, ptr %218, i64 %231
  br label %235

235:                                              ; preds = %235, %229
  %236 = phi i64 [ 0, %229 ], [ %240, %235 ]
  %237 = getelementptr i8, ptr %233, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !12
  %239 = getelementptr i8, ptr %234, i64 %236
  store i8 %238, ptr %239, align 1, !tbaa !12
  %240 = add nuw nsw i64 %236, 1
  %241 = icmp eq i64 %240, %226
  br i1 %241, label %242, label %235

242:                                              ; preds = %235
  %243 = add nsw i64 %231, %227
  %244 = add nsw i64 %230, %227
  %245 = add nuw nsw i32 %232, %135
  %246 = icmp slt i32 %245, %215
  br i1 %246, label %229, label %251

247:                                              ; preds = %220, %247
  %248 = phi i32 [ %249, %247 ], [ 0, %220 ]
  %249 = add nuw nsw i32 %248, %135
  %250 = icmp slt i32 %249, %215
  br i1 %250, label %247, label %251

251:                                              ; preds = %247, %242, %172, %213
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare dso_local noundef signext i32 @open(ptr nocapture noundef readonly, i32 noundef signext, ...) local_unnamed_addr #3

declare dso_local signext i32 @read(...) local_unnamed_addr #4

declare dso_local signext i32 @close(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
