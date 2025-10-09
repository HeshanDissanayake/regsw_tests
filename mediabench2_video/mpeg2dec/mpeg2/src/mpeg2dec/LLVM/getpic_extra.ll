; ModuleID = 'getpic.c'
source_filename = "getpic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@Second_Field = external dso_local local_unnamed_addr global i32, align 4
@Ersatz_Flag = external dso_local local_unnamed_addr global i32, align 4
@base = external dso_local global %struct.layer_data, align 8
@backward_reference_frame = external dso_local global [3 x ptr], align 8
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@mb_height = external dso_local local_unnamed_addr global i32, align 4
@Two_Streams = external dso_local local_unnamed_addr global i32, align 4
@enhan = external dso_local global %struct.layer_data, align 8
@Fault_Flag = external dso_local local_unnamed_addr global i32, align 4
@ld = external dso_local local_unnamed_addr global ptr, align 8
@Quiet_Flag = external dso_local local_unnamed_addr global i32, align 4
@Non_Linear_quantizer_scale = external dso_local local_unnamed_addr global [32 x i8], align 1
@concealment_motion_vectors = external dso_local local_unnamed_addr global i32, align 4
@f_code = external dso_local local_unnamed_addr global [2 x [2 x i32]], align 4
@forward_f_code = external dso_local local_unnamed_addr global i32, align 4
@full_pel_forward_vector = external dso_local local_unnamed_addr global i32, align 4
@backward_f_code = external dso_local local_unnamed_addr global i32, align 4
@full_pel_backward_vector = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@block_count = external dso_local local_unnamed_addr global i32, align 4
@picture_coding_type = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"D picture end_of_macroblock bit\00", align 1
@macroblock_modes.stwc_table = internal unnamed_addr constant [3 x [4 x i8]] [[4 x i8] c"\06\03\07\04", [4 x i8] c"\02\01\05\04", [4 x i8] c"\02\05\07\04"], align 1
@macroblock_modes.stwclass_table = internal unnamed_addr constant [9 x i8] c"\00\01\02\01\01\02\03\03\04", align 1
@spatial_temporal_weight_code_table_index = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_frame_dct = external dso_local local_unnamed_addr global i32, align 4
@Reference_IDCT_Flag = external dso_local local_unnamed_addr global i32, align 4
@current_frame = external dso_local local_unnamed_addr global [3 x ptr], align 8
@Coded_Picture_Width = external dso_local local_unnamed_addr global i32, align 4
@Chroma_Width = external dso_local local_unnamed_addr global i32, align 4
@Clip = external dso_local local_unnamed_addr global ptr, align 8
@auxframe = external dso_local global [3 x ptr], align 8
@forward_reference_frame = external dso_local global [3 x ptr], align 8
@frame_reorder.Oldref_progressive_frame = internal unnamed_addr global i32 0, align 4
@frame_reorder.Newref_progressive_frame = internal unnamed_addr global i32 0, align 4
@progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [29 x i8] c"odd number of field pictures\00", align 1
@str.9 = private unnamed_addr constant [34 x i8] c"last frame incomplete, not stored\00", align 1
@str.11 = private unnamed_addr constant [38 x i8] c"start_of_slice(): MBAinc unsuccessful\00", align 1
@str.12 = private unnamed_addr constant [29 x i8] c"DP: Premature end of picture\00", align 1
@str.13 = private unnamed_addr constant [43 x i8] c"start_of_slice(): Premature end of picture\00", align 1
@str.14 = private unnamed_addr constant [30 x i8] c"SNR: Premature end of picture\00", align 1
@str.15 = private unnamed_addr constant [27 x i8] c"Cant't synchronize streams\00", align 1
@str.16 = private unnamed_addr constant [32 x i8] c"Too many macroblocks in picture\00", align 1

; Function Attrs: nounwind
define dso_local void @Decode_Picture(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [2 x [2 x [2 x i32]]], align 4
  %15 = alloca [2 x [2 x i32]], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 3
  %21 = load i32, ptr @Second_Field, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr @Second_Field, align 4, !tbaa !6
  %26 = load i32, ptr @picture_structure, align 4, !tbaa !6
  br label %27

27:                                               ; preds = %24, %2
  %28 = phi i32 [ 0, %24 ], [ %21, %2 ]
  %29 = phi i32 [ %26, %24 ], [ %19, %2 ]
  %30 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %31 = icmp eq i32 %30, 3
  %32 = icmp eq i32 %29, 2
  %33 = icmp eq i32 %28, 0
  %34 = load i32, ptr @Coded_Picture_Width, align 4
  %35 = load i32, ptr @Chroma_Width, align 4
  br i1 %31, label %36, label %47

36:                                               ; preds = %27
  br i1 %32, label %38, label %37

37:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @current_frame, ptr noundef nonnull align 8 dereferenceable(24) @auxframe, i64 24, i1 false), !tbaa !10
  br label %79

38:                                               ; preds = %36
  %39 = load ptr, ptr @auxframe, align 8, !tbaa !10
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  store ptr %41, ptr @current_frame, align 8, !tbaa !10
  %42 = load ptr, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  %43 = sext i32 %35 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  store ptr %44, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %45 = load ptr, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  store ptr %46, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  br label %79

47:                                               ; preds = %27
  br i1 %32, label %48, label %70

48:                                               ; preds = %47
  br i1 %33, label %58, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @backward_reference_frame, align 8, !tbaa !10
  %51 = sext i32 %34 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  store ptr %52, ptr @current_frame, align 8, !tbaa !10
  %53 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %54 = sext i32 %35 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  store ptr %55, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %56 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %57 = getelementptr inbounds i8, ptr %56, i64 %54
  store ptr %57, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  br label %79

58:                                               ; preds = %48
  %59 = load ptr, ptr @forward_reference_frame, align 8, !tbaa !10
  %60 = load ptr, ptr @backward_reference_frame, align 8, !tbaa !10
  store ptr %60, ptr @forward_reference_frame, align 8, !tbaa !10
  store ptr %59, ptr @backward_reference_frame, align 8, !tbaa !10
  %61 = sext i32 %34 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  store ptr %62, ptr @current_frame, align 8, !tbaa !10
  %63 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %64 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  store ptr %64, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  store ptr %63, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %65 = sext i32 %35 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  store ptr %66, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %67 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %68 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  store ptr %68, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  store ptr %67, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %69 = getelementptr inbounds i8, ptr %67, i64 %65
  store ptr %69, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  br label %79

70:                                               ; preds = %47
  br i1 %33, label %72, label %71

71:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @current_frame, ptr noundef nonnull align 8 dereferenceable(24) @backward_reference_frame, i64 24, i1 false), !tbaa !10
  br label %79

72:                                               ; preds = %70
  %73 = load ptr, ptr @forward_reference_frame, align 8, !tbaa !10
  %74 = load ptr, ptr @backward_reference_frame, align 8, !tbaa !10
  store ptr %74, ptr @forward_reference_frame, align 8, !tbaa !10
  store ptr %73, ptr @backward_reference_frame, align 8, !tbaa !10
  store ptr %73, ptr @current_frame, align 8, !tbaa !10
  %75 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %76 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  store ptr %76, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  store ptr %75, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  store ptr %75, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %77 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %78 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  store ptr %78, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  store ptr %77, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  store ptr %77, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  br label %79

79:                                               ; preds = %37, %38, %49, %58, %71, %72
  %80 = load i32, ptr @Ersatz_Flag, align 4, !tbaa !6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  tail call void @Substitute_Frame_Buffer(i32 noundef signext %0, i32 noundef signext %1) #7
  %83 = load i32, ptr @Second_Field, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %83, %82 ], [ %28, %79 ]
  %86 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3160), align 8, !tbaa !12
  %87 = icmp eq i32 %86, 0
  %88 = icmp ne i32 %85, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  tail call void @Spatial_Prediction() #7
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32, ptr @mb_width, align 4, !tbaa !6
  %93 = load i32, ptr @mb_height, align 4, !tbaa !6
  %94 = mul nsw i32 %93, %92
  %95 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %96 = icmp ne i32 %95, 3
  %97 = zext i1 %96 to i32
  %98 = ashr i32 %94, %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  store ptr @base, ptr @ld, align 8, !tbaa !10
  store i32 0, ptr @Fault_Flag, align 4, !tbaa !6
  tail call void @next_start_code() #7
  %99 = tail call signext i32 @Show_Bits(i32 noundef signext 32) #7
  %100 = add i32 %99, -432
  %101 = icmp ult i32 %100, -175
  br i1 %101, label %110, label %102

102:                                              ; preds = %91
  %103 = getelementptr inbounds i8, ptr %13, i64 8
  %104 = getelementptr inbounds i8, ptr %13, i64 4
  %105 = getelementptr inbounds i8, ptr %14, i64 16
  %106 = getelementptr inbounds i8, ptr %14, i64 20
  %107 = getelementptr inbounds i8, ptr %14, i64 4
  %108 = getelementptr inbounds i8, ptr %15, i64 4
  %109 = getelementptr inbounds i8, ptr %14, i64 8
  br label %113

110:                                              ; preds = %904, %91
  %111 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %908, label %911

113:                                              ; preds = %904, %102
  %114 = phi i32 [ %99, %102 ], [ %905, %904 ]
  call void @Flush_Buffer32() #7
  %115 = call signext i32 @slice_header() #7
  %116 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  call void @next_start_code() #7
  %119 = call signext i32 @Show_Bits(i32 noundef signext 32) #7
  %120 = add i32 %119, -432
  %121 = icmp ult i32 %120, -175
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %908, label %911

125:                                              ; preds = %118
  call void @Flush_Buffer32() #7
  %126 = call signext i32 @slice_header() #7
  %127 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !15
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %130

130:                                              ; preds = %129, %125, %113
  %131 = phi i32 [ %119, %129 ], [ %119, %125 ], [ %114, %113 ]
  %132 = phi i32 [ %126, %129 ], [ %126, %125 ], [ %115, %113 ]
  %133 = call signext i32 @Get_macroblock_address_increment() #7
  %134 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %904

138:                                              ; preds = %130
  %139 = shl i32 %132, 7
  %140 = and i32 %131, 255
  %141 = add nsw i32 %140, -1
  %142 = add i32 %141, %139
  %143 = load i32, ptr @mb_width, align 4, !tbaa !6
  %144 = mul i32 %143, %142
  %145 = add i32 %133, -1
  %146 = add i32 %145, %144
  store i32 0, ptr %103, align 4, !tbaa !6
  store i32 0, ptr %104, align 4, !tbaa !6
  store i32 0, ptr %13, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 4 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %147 = icmp slt i32 %146, %98
  br i1 %147, label %148, label %911

148:                                              ; preds = %138, %891
  %149 = phi i32 [ %892, %891 ], [ %146, %138 ]
  %150 = phi i32 [ %893, %891 ], [ 1, %138 ]
  %151 = phi i32 [ %900, %891 ], [ 0, %138 ]
  %152 = phi i32 [ %902, %891 ], [ 0, %138 ]
  store ptr @base, ptr @ld, align 8, !tbaa !10
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %156 = icmp eq i32 %155, 1
  %157 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4
  %158 = icmp eq i32 %157, 1
  %159 = select i1 %156, i1 %158, i1 false
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  br label %161

161:                                              ; preds = %160, %154
  %162 = call signext i32 @Show_Bits(i32 noundef signext 23) #7
  %163 = icmp eq i32 %162, 0
  %164 = load i32, ptr @Fault_Flag, align 4
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %904, label %167

167:                                              ; preds = %161
  %168 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %169 = icmp eq i32 %168, 1
  %170 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4
  %171 = icmp eq i32 %170, 1
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  br label %174

174:                                              ; preds = %173, %167
  %175 = call signext i32 @Get_macroblock_address_increment() #7
  %176 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %904

178:                                              ; preds = %174, %148
  %179 = phi i32 [ %175, %174 ], [ %150, %148 ]
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %380

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %182 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4, !tbaa !15
  %186 = icmp slt i32 %185, 3
  %187 = select i1 %186, ptr @enhan, ptr @base
  store ptr %187, ptr @ld, align 8, !tbaa !10
  br label %188

188:                                              ; preds = %184, %181
  call fastcc void @macroblock_modes(ptr noundef nonnull %10, ptr noundef nonnull writeonly %17, ptr noundef nonnull %18, ptr noundef nonnull writeonly %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull writeonly %12)
  %189 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %378

191:                                              ; preds = %188
  %192 = load i32, ptr %10, align 4, !tbaa !6
  %193 = and i32 %192, 16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %218, label %195

195:                                              ; preds = %191
  %196 = call signext i32 @Get_Bits(i32 noundef signext 5) #7
  %197 = load ptr, ptr @ld, align 8, !tbaa !10
  %198 = getelementptr inbounds i8, ptr %197, i64 3144
  %199 = load i32, ptr %198, align 8, !tbaa !16
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds i8, ptr %197, i64 3152
  %203 = load i32, ptr %202, align 8, !tbaa !17
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = sext i32 %196 to i64
  %207 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !18
  %209 = zext i8 %208 to i32
  br label %212

210:                                              ; preds = %201
  %211 = shl i32 %196, 1
  br label %212

212:                                              ; preds = %210, %205, %195
  %213 = phi i32 [ %209, %205 ], [ %211, %210 ], [ %196, %195 ]
  %214 = getelementptr inbounds i8, ptr %197, i64 3168
  store i32 %213, ptr %214, align 8, !tbaa !19
  %215 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  store i32 %213, ptr getelementptr inbounds (i8, ptr @base, i64 3168), align 8, !tbaa !19
  br label %218

218:                                              ; preds = %217, %212, %191
  %219 = and i32 %192, 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = and i32 %192, 1
  %223 = icmp ne i32 %222, 0
  %224 = load i32, ptr @concealment_motion_vectors, align 4
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %245

227:                                              ; preds = %221, %218
  %228 = load ptr, ptr @ld, align 8, !tbaa !10
  %229 = getelementptr inbounds i8, ptr %228, i64 3144
  %230 = load i32, ptr %229, align 8, !tbaa !16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %227
  %233 = load i32, ptr %6, align 4, !tbaa !6
  %234 = load i32, ptr %7, align 4, !tbaa !6
  %235 = load i32, ptr @f_code, align 4, !tbaa !6
  %236 = add nsw i32 %235, -1
  %237 = load i32, ptr getelementptr inbounds (i8, ptr @f_code, i64 4), align 4, !tbaa !6
  %238 = add nsw i32 %237, -1
  %239 = load i32, ptr %8, align 4, !tbaa !6
  %240 = load i32, ptr %9, align 4, !tbaa !6
  call void @motion_vectors(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef signext 0, i32 noundef signext %233, i32 noundef signext %234, i32 noundef signext %236, i32 noundef signext %238, i32 noundef signext %239, i32 noundef signext %240) #7
  br label %245

241:                                              ; preds = %227
  %242 = load i32, ptr @forward_f_code, align 4, !tbaa !6
  %243 = add nsw i32 %242, -1
  %244 = load i32, ptr @full_pel_forward_vector, align 4, !tbaa !6
  call void @motion_vector(ptr noundef nonnull %14, ptr noundef nonnull %16, i32 noundef signext %243, i32 noundef signext %243, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %244) #7
  br label %245

245:                                              ; preds = %241, %232, %221
  %246 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %378

248:                                              ; preds = %245
  %249 = and i32 %192, 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %271, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @ld, align 8, !tbaa !10
  %253 = getelementptr inbounds i8, ptr %252, i64 3144
  %254 = load i32, ptr %253, align 8, !tbaa !16
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %251
  %257 = load i32, ptr %6, align 4, !tbaa !6
  %258 = load i32, ptr %7, align 4, !tbaa !6
  %259 = load i32, ptr getelementptr inbounds (i8, ptr @f_code, i64 8), align 4, !tbaa !6
  %260 = add nsw i32 %259, -1
  %261 = load i32, ptr getelementptr inbounds (i8, ptr @f_code, i64 12), align 4, !tbaa !6
  %262 = add nsw i32 %261, -1
  %263 = load i32, ptr %9, align 4, !tbaa !6
  call void @motion_vectors(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef signext 1, i32 noundef signext %257, i32 noundef signext %258, i32 noundef signext %260, i32 noundef signext %262, i32 noundef signext 0, i32 noundef signext %263) #7
  br label %268

264:                                              ; preds = %251
  %265 = load i32, ptr @backward_f_code, align 4, !tbaa !6
  %266 = add nsw i32 %265, -1
  %267 = load i32, ptr @full_pel_backward_vector, align 4, !tbaa !6
  call void @motion_vector(ptr noundef nonnull %109, ptr noundef nonnull %16, i32 noundef signext %266, i32 noundef signext %266, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %267) #7
  br label %268

268:                                              ; preds = %264, %256
  %269 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %378

271:                                              ; preds = %268, %248
  %272 = and i32 %192, 1
  %273 = icmp ne i32 %272, 0
  %274 = load i32, ptr @concealment_motion_vectors, align 4
  %275 = icmp ne i32 %274, 0
  %276 = select i1 %273, i1 %275, i1 false
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  call void @Flush_Buffer(i32 noundef signext 1) #7
  br label %278

278:                                              ; preds = %277, %271
  %279 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %280 = icmp eq i32 %279, 1
  %281 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3164), align 4
  %282 = icmp eq i32 %281, 3
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  br label %285

285:                                              ; preds = %284, %278
  %286 = and i32 %192, 2
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %285
  %289 = call signext i32 @Get_coded_block_pattern() #7
  %290 = load i32, ptr @chroma_format, align 4, !tbaa !6
  switch i32 %290, label %305 [
    i32 2, label %291
    i32 3, label %295
  ]

291:                                              ; preds = %288
  %292 = shl i32 %289, 2
  %293 = call signext i32 @Get_Bits(i32 noundef signext 2) #7
  %294 = or i32 %293, %292
  br label %305

295:                                              ; preds = %288
  %296 = shl i32 %289, 6
  %297 = call signext i32 @Get_Bits(i32 noundef signext 6) #7
  %298 = or i32 %297, %296
  br label %305

299:                                              ; preds = %285
  %300 = icmp eq i32 %272, 0
  %301 = load i32, ptr @block_count, align 4
  %302 = shl nsw i32 -1, %301
  %303 = xor i32 %302, -1
  %304 = select i1 %300, i32 0, i32 %303
  br label %305

305:                                              ; preds = %299, %295, %291, %288
  %306 = phi i32 [ %294, %291 ], [ %298, %295 ], [ %304, %299 ], [ %289, %288 ]
  %307 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %378

309:                                              ; preds = %305
  %310 = load i32, ptr @block_count, align 4, !tbaa !6
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %350

312:                                              ; preds = %309
  %313 = icmp eq i32 %272, 0
  br label %314

314:                                              ; preds = %345, %312
  %315 = phi i64 [ %346, %345 ], [ 0, %312 ]
  %316 = phi i32 [ %347, %345 ], [ %310, %312 ]
  %317 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %321, label %319

319:                                              ; preds = %314
  %320 = load ptr, ptr @ld, align 8, !tbaa !10
  br label %322

321:                                              ; preds = %314
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %322

322:                                              ; preds = %321, %319
  %323 = phi ptr [ %320, %319 ], [ @base, %321 ]
  %324 = getelementptr i8, ptr %323, i64 3176
  %325 = getelementptr [12 x [64 x i16]], ptr %324, i64 0, i64 %315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %325, i8 0, i64 128, i1 false), !tbaa !20
  %326 = trunc nuw nsw i64 %315 to i32
  %327 = xor i32 %326, -1
  %328 = add i32 %316, %327
  %329 = shl nuw i32 1, %328
  %330 = and i32 %329, %306
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %345, label %332

332:                                              ; preds = %322
  %333 = getelementptr inbounds i8, ptr %323, i64 3144
  %334 = load i32, ptr %333, align 8, !tbaa !16
  %335 = icmp eq i32 %334, 0
  br i1 %313, label %339, label %336

336:                                              ; preds = %332
  br i1 %335, label %338, label %337

337:                                              ; preds = %336
  call void @Decode_MPEG2_Intra_Block(i32 noundef signext %326, ptr noundef nonnull %13) #7
  br label %342

338:                                              ; preds = %336
  call void @Decode_MPEG1_Intra_Block(i32 noundef signext %326, ptr noundef nonnull %13) #7
  br label %342

339:                                              ; preds = %332
  br i1 %335, label %341, label %340

340:                                              ; preds = %339
  call void @Decode_MPEG2_Non_Intra_Block(i32 noundef signext %326) #7
  br label %342

341:                                              ; preds = %339
  call void @Decode_MPEG1_Non_Intra_Block(i32 noundef signext %326) #7
  br label %342

342:                                              ; preds = %341, %340, %338, %337
  %343 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %378

345:                                              ; preds = %342, %322
  %346 = add nuw nsw i64 %315, 1
  %347 = load i32, ptr @block_count, align 4, !tbaa !6
  %348 = sext i32 %347 to i64
  %349 = icmp slt i64 %346, %348
  br i1 %349, label %314, label %350

350:                                              ; preds = %345, %309
  %351 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %352 = icmp eq i32 %351, 4
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  call void @marker_bit(ptr noundef nonnull @.str.6) #7
  br label %354

354:                                              ; preds = %353, %350
  %355 = icmp eq i32 %272, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %354
  store i32 0, ptr %103, align 4, !tbaa !6
  store i32 0, ptr %104, align 4, !tbaa !6
  store i32 0, ptr %13, align 4, !tbaa !6
  br label %361

357:                                              ; preds = %354
  %358 = load i32, ptr @concealment_motion_vectors, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br label %361

361:                                              ; preds = %360, %357, %356
  %362 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %363 = icmp eq i32 %362, 2
  %364 = and i32 %192, 9
  %365 = icmp eq i32 %364, 0
  %366 = and i1 %365, %363
  br i1 %366, label %367, label %374

367:                                              ; preds = %361
  store i32 0, ptr %106, align 4, !tbaa !6
  store i32 0, ptr %105, align 4, !tbaa !6
  store i32 0, ptr %107, align 4, !tbaa !6
  store i32 0, ptr %14, align 4, !tbaa !6
  %368 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %369 = icmp eq i32 %368, 3
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  store i32 2, ptr %11, align 4, !tbaa !6
  br label %374

371:                                              ; preds = %367
  store i32 1, ptr %11, align 4, !tbaa !6
  %372 = icmp eq i32 %368, 2
  %373 = zext i1 %372 to i32
  store i32 %373, ptr %15, align 4, !tbaa !6
  br label %374

374:                                              ; preds = %371, %370, %361
  %375 = load i32, ptr %18, align 4, !tbaa !6
  %376 = icmp eq i32 %375, 4
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br label %379

378:                                              ; preds = %305, %268, %245, %188, %342
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %904

379:                                              ; preds = %377, %374
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %408

380:                                              ; preds = %178
  %381 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %384

384:                                              ; preds = %383, %380
  %385 = load i32, ptr @block_count, align 4, !tbaa !6
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %384
  %388 = load ptr, ptr @ld, align 8, !tbaa !10
  %389 = getelementptr i8, ptr %388, i64 3176
  %390 = zext nneg i32 %385 to i64
  %391 = shl nuw nsw i64 %390, 7
  call void @llvm.memset.p0.i64(ptr align 2 %389, i8 0, i64 %391, i1 false), !tbaa !20
  br label %392

392:                                              ; preds = %387, %384
  store i32 0, ptr %103, align 4, !tbaa !6
  store i32 0, ptr %104, align 4, !tbaa !6
  store i32 0, ptr %13, align 4, !tbaa !6
  %393 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  store i32 0, ptr %106, align 4, !tbaa !6
  store i32 0, ptr %105, align 4, !tbaa !6
  store i32 0, ptr %107, align 4, !tbaa !6
  store i32 0, ptr %14, align 4, !tbaa !6
  br label %396

396:                                              ; preds = %395, %392
  %397 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %398 = icmp eq i32 %397, 3
  br i1 %398, label %402, label %399

399:                                              ; preds = %396
  %400 = icmp eq i32 %397, 2
  %401 = zext i1 %400 to i32
  store i32 %401, ptr %108, align 4, !tbaa !6
  store i32 %401, ptr %15, align 4, !tbaa !6
  br label %402

402:                                              ; preds = %399, %396
  %403 = phi i32 [ 1, %399 ], [ 2, %396 ]
  store i32 %403, ptr %11, align 4
  %404 = icmp eq i32 %393, 1
  %405 = select i1 %404, i32 8, i32 0
  store i32 %405, ptr %17, align 4, !tbaa !6
  %406 = load i32, ptr %10, align 4, !tbaa !6
  %407 = and i32 %406, -2
  store i32 %407, ptr %10, align 4, !tbaa !6
  br label %408

408:                                              ; preds = %402, %379
  %409 = phi i32 [ %192, %379 ], [ %407, %402 ]
  %410 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %411 = icmp ne i32 %410, 0
  %412 = load i32, ptr getelementptr inbounds (i8, ptr @enhan, i64 3148), align 4
  %413 = icmp eq i32 %412, 3
  %414 = select i1 %411, i1 %413, i1 false
  br i1 %414, label %415, label %537

415:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  %416 = icmp eq i32 %152, 0
  br i1 %416, label %417, label %438

417:                                              ; preds = %415
  %418 = call signext i32 @Show_Bits(i32 noundef signext 23) #7
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %417
  call void @next_start_code() #7
  %421 = call signext i32 @Show_Bits(i32 noundef signext 32) #7
  %422 = add i32 %421, -432
  %423 = icmp ult i32 %422, -175
  br i1 %423, label %424, label %441

424:                                              ; preds = %420
  %425 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %534

427:                                              ; preds = %424
  %428 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %534

429:                                              ; preds = %417
  %430 = icmp slt i32 %151, %98
  br i1 %430, label %436, label %431

431:                                              ; preds = %429
  %432 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %534

434:                                              ; preds = %431
  %435 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %534

436:                                              ; preds = %429
  %437 = call signext i32 @Get_macroblock_address_increment() #7
  br label %438

438:                                              ; preds = %436, %415
  %439 = phi i32 [ %437, %436 ], [ %152, %415 ]
  %440 = icmp eq i32 %151, %149
  br i1 %440, label %460, label %453

441:                                              ; preds = %420
  call void @Flush_Buffer32() #7
  %442 = call signext i32 @slice_header() #7
  %443 = call signext i32 @Get_macroblock_address_increment() #7
  %444 = shl i32 %442, 7
  %445 = and i32 %421, 255
  %446 = add nsw i32 %445, -1
  %447 = add i32 %446, %444
  %448 = load i32, ptr @mb_width, align 4, !tbaa !6
  %449 = mul nsw i32 %448, %447
  %450 = add i32 %443, -1
  %451 = add i32 %450, %449
  %452 = icmp eq i32 %451, %149
  br i1 %452, label %470, label %453

453:                                              ; preds = %441, %438
  %454 = phi i32 [ %451, %441 ], [ %151, %438 ]
  %455 = phi i32 [ 1, %441 ], [ %439, %438 ]
  %456 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %534

458:                                              ; preds = %453
  %459 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %534

460:                                              ; preds = %438
  %461 = icmp eq i32 %439, 1
  br i1 %461, label %470, label %462

462:                                              ; preds = %460
  %463 = load i32, ptr @block_count, align 4, !tbaa !6
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %532

465:                                              ; preds = %462
  %466 = load ptr, ptr @ld, align 8, !tbaa !10
  %467 = getelementptr i8, ptr %466, i64 3176
  %468 = zext nneg i32 %463 to i64
  %469 = shl nuw nsw i64 %468, 7
  call void @llvm.memset.p0.i64(ptr align 2 %467, i8 0, i64 %469, i1 false), !tbaa !20
  br label %532

470:                                              ; preds = %460, %441
  call fastcc void @macroblock_modes(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %471 = load i32, ptr %3, align 4, !tbaa !6
  %472 = and i32 %471, 2
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %476, label %474

474:                                              ; preds = %470
  %475 = load i32, ptr %4, align 4, !tbaa !6
  store i32 %475, ptr %12, align 4, !tbaa !6
  br label %476

476:                                              ; preds = %474, %470
  %477 = and i32 %471, 16
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %495, label %479

479:                                              ; preds = %476
  %480 = call signext i32 @Get_Bits(i32 noundef signext 5) #7
  %481 = load ptr, ptr @ld, align 8, !tbaa !10
  %482 = getelementptr inbounds i8, ptr %481, i64 3152
  %483 = load i32, ptr %482, align 8, !tbaa !17
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %490, label %485

485:                                              ; preds = %479
  %486 = sext i32 %480 to i64
  %487 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !18
  %489 = zext i8 %488 to i32
  br label %492

490:                                              ; preds = %479
  %491 = shl i32 %480, 1
  br label %492

492:                                              ; preds = %490, %485
  %493 = phi i32 [ %489, %485 ], [ %491, %490 ]
  %494 = getelementptr inbounds i8, ptr %481, i64 3168
  store i32 %493, ptr %494, align 8, !tbaa !19
  br label %495

495:                                              ; preds = %492, %476
  br i1 %473, label %505, label %496

496:                                              ; preds = %495
  %497 = call signext i32 @Get_coded_block_pattern() #7
  %498 = load i32, ptr @chroma_format, align 4, !tbaa !6
  switch i32 %498, label %505 [
    i32 2, label %500
    i32 3, label %499
  ]

499:                                              ; preds = %496
  br label %500

500:                                              ; preds = %499, %496
  %501 = phi i32 [ 6, %499 ], [ %498, %496 ]
  %502 = shl i32 %497, %501
  %503 = call signext i32 @Get_Bits(i32 noundef signext %501) #7
  %504 = or i32 %503, %502
  br label %505

505:                                              ; preds = %500, %496, %495
  %506 = phi i32 [ %497, %496 ], [ 0, %495 ], [ %504, %500 ]
  %507 = load i32, ptr @block_count, align 4, !tbaa !6
  %508 = icmp sgt i32 %507, 0
  br i1 %508, label %509, label %532

509:                                              ; preds = %505
  %510 = load ptr, ptr @ld, align 8, !tbaa !10
  br label %511

511:                                              ; preds = %526, %509
  %512 = phi i32 [ %507, %509 ], [ %527, %526 ]
  %513 = phi ptr [ %510, %509 ], [ %528, %526 ]
  %514 = phi i64 [ 0, %509 ], [ %529, %526 ]
  %515 = getelementptr i8, ptr %513, i64 3176
  %516 = getelementptr [12 x [64 x i16]], ptr %515, i64 0, i64 %514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %516, i8 0, i64 128, i1 false), !tbaa !20
  %517 = trunc nuw nsw i64 %514 to i32
  %518 = xor i32 %517, -1
  %519 = add i32 %512, %518
  %520 = shl nuw i32 1, %519
  %521 = and i32 %520, %506
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %511
  call void @Decode_MPEG2_Non_Intra_Block(i32 noundef signext %517) #7
  %524 = load ptr, ptr @ld, align 8, !tbaa !10
  %525 = load i32, ptr @block_count, align 4, !tbaa !6
  br label %526

526:                                              ; preds = %523, %511
  %527 = phi i32 [ %512, %511 ], [ %525, %523 ]
  %528 = phi ptr [ %513, %511 ], [ %524, %523 ]
  %529 = add nuw nsw i64 %514, 1
  %530 = sext i32 %527 to i64
  %531 = icmp slt i64 %529, %530
  br i1 %531, label %511, label %532

532:                                              ; preds = %526, %505, %465, %462
  %533 = phi i32 [ 1, %505 ], [ %439, %465 ], [ %439, %462 ], [ 1, %526 ]
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %534

534:                                              ; preds = %532, %458, %453, %434, %431, %427, %424
  %535 = phi i32 [ %151, %427 ], [ %151, %424 ], [ %149, %532 ], [ %454, %458 ], [ %454, %453 ], [ %151, %434 ], [ %151, %431 ]
  %536 = phi i32 [ 0, %427 ], [ 0, %424 ], [ %533, %532 ], [ %455, %458 ], [ %455, %453 ], [ 0, %434 ], [ 0, %431 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %537

537:                                              ; preds = %534, %408
  %538 = phi i32 [ %535, %534 ], [ %151, %408 ]
  %539 = phi i32 [ %536, %534 ], [ %152, %408 ]
  %540 = load i32, ptr %12, align 4, !tbaa !6
  %541 = load i32, ptr @mb_width, align 4, !tbaa !6
  %542 = freeze i32 %149
  %543 = freeze i32 %541
  %544 = sdiv i32 %542, %543
  %545 = mul i32 %544, %543
  %546 = sub i32 %542, %545
  %547 = shl nsw i32 %546, 4
  %548 = shl nsw i32 %544, 4
  %549 = and i32 %409, 1
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %537
  %552 = load i32, ptr %17, align 4, !tbaa !6
  %553 = load i32, ptr %11, align 4, !tbaa !6
  call void @form_predictions(i32 noundef signext %547, i32 noundef signext %548, i32 noundef signext %409, i32 noundef signext %553, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef signext %552) #7
  br label %554

554:                                              ; preds = %551, %537
  %555 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !14
  %556 = icmp eq i32 %555, 1
  br i1 %556, label %557, label %558

557:                                              ; preds = %554
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %558

558:                                              ; preds = %557, %554
  %559 = load i32, ptr @block_count, align 4, !tbaa !6
  %560 = icmp sgt i32 %559, 0
  br i1 %560, label %561, label %891

561:                                              ; preds = %558
  %562 = icmp ne i32 %540, 0
  %563 = sext i32 %547 to i64
  %564 = icmp eq i32 %540, 0
  br label %565

565:                                              ; preds = %886, %561
  %566 = phi i64 [ 0, %561 ], [ %887, %886 ]
  %567 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %568 = icmp ne i32 %567, 0
  %569 = load i32, ptr getelementptr inbounds (i8, ptr @enhan, i64 3148), align 4
  %570 = icmp eq i32 %569, 3
  %571 = select i1 %568, i1 %570, i1 false
  br i1 %571, label %572, label %588

572:                                              ; preds = %565
  %573 = getelementptr inbounds [12 x [64 x i16]], ptr getelementptr inbounds (i8, ptr @base, i64 3176), i64 0, i64 %566
  %574 = getelementptr inbounds [12 x [64 x i16]], ptr getelementptr inbounds (i8, ptr @enhan, i64 3176), i64 0, i64 %566
  br label %575

575:                                              ; preds = %575, %572
  %576 = phi i32 [ 0, %572 ], [ %584, %575 ]
  %577 = phi ptr [ %574, %572 ], [ %579, %575 ]
  %578 = phi ptr [ %573, %572 ], [ %581, %575 ]
  %579 = getelementptr inbounds i8, ptr %577, i64 2
  %580 = load i16, ptr %577, align 2, !tbaa !20
  %581 = getelementptr inbounds i8, ptr %578, i64 2
  %582 = load i16, ptr %578, align 2, !tbaa !20
  %583 = add i16 %582, %580
  store i16 %583, ptr %578, align 2, !tbaa !20
  %584 = add nuw nsw i32 %576, 1
  %585 = icmp eq i32 %584, 64
  br i1 %585, label %586, label %575

586:                                              ; preds = %575
  %587 = load ptr, ptr @ld, align 8, !tbaa !10
  br label %593

588:                                              ; preds = %565
  %589 = load ptr, ptr @ld, align 8, !tbaa !10
  %590 = getelementptr inbounds i8, ptr %589, i64 3144
  %591 = load i32, ptr %590, align 8, !tbaa !16
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %615, label %593

593:                                              ; preds = %588, %586
  %594 = phi ptr [ %587, %586 ], [ %589, %588 ]
  %595 = getelementptr inbounds i8, ptr %594, i64 3176
  %596 = getelementptr inbounds [12 x [64 x i16]], ptr %595, i64 0, i64 %566
  br label %597

597:                                              ; preds = %597, %593
  %598 = phi i64 [ 0, %593 ], [ %606, %597 ]
  %599 = phi i32 [ 0, %593 ], [ %605, %597 ]
  %600 = getelementptr inbounds i16, ptr %596, i64 %598
  %601 = load i16, ptr %600, align 2, !tbaa !20
  %602 = call i16 @llvm.smax.i16(i16 %601, i16 -2048)
  %603 = call i16 @llvm.smin.i16(i16 %602, i16 2047)
  %604 = zext i16 %603 to i32
  store i16 %603, ptr %600, align 2, !tbaa !20
  %605 = add i32 %599, %604
  %606 = add nuw nsw i64 %598, 1
  %607 = icmp eq i64 %606, 64
  br i1 %607, label %608, label %597

608:                                              ; preds = %597
  %609 = and i32 %605, 1
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %615

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %596, i64 126
  %613 = load i16, ptr %612, align 2, !tbaa !20
  %614 = xor i16 %613, 1
  store i16 %614, ptr %612, align 2, !tbaa !20
  br label %615

615:                                              ; preds = %611, %608, %588
  %616 = phi ptr [ %594, %611 ], [ %594, %608 ], [ %589, %588 ]
  %617 = load i32, ptr @Reference_IDCT_Flag, align 4, !tbaa !6
  %618 = icmp eq i32 %617, 0
  %619 = getelementptr inbounds i8, ptr %616, i64 3176
  %620 = getelementptr inbounds [12 x [64 x i16]], ptr %619, i64 0, i64 %566
  br i1 %618, label %622, label %621

621:                                              ; preds = %615
  call void @Reference_IDCT(ptr noundef nonnull %620) #7
  br label %623

622:                                              ; preds = %615
  call void @Fast_IDCT(ptr noundef nonnull %620) #7
  br label %623

623:                                              ; preds = %622, %621
  %624 = icmp ult i64 %566, 4
  %625 = trunc nuw i64 %566 to i32
  %626 = and i32 %625, 1
  %627 = add nuw nsw i32 %626, 1
  br i1 %624, label %628, label %666

628:                                              ; preds = %623
  %629 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %630 = icmp eq i32 %629, 3
  %631 = load ptr, ptr @current_frame, align 8, !tbaa !10
  %632 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  br i1 %630, label %633, label %654

633:                                              ; preds = %628
  %634 = shl nuw nsw i32 %626, 3
  %635 = zext nneg i32 %634 to i64
  br i1 %564, label %645, label %636

636:                                              ; preds = %633
  %637 = lshr i32 %625, 1
  %638 = or disjoint i32 %637, %548
  %639 = mul nsw i32 %632, %638
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, ptr %631, i64 %640
  %642 = getelementptr inbounds i8, ptr %641, i64 %563
  %643 = getelementptr inbounds i8, ptr %642, i64 %635
  %644 = shl i32 %632, 1
  br label %720

645:                                              ; preds = %633
  %646 = shl nuw nsw i32 %625, 2
  %647 = and i32 %646, 8
  %648 = or disjoint i32 %647, %548
  %649 = mul nsw i32 %632, %648
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i8, ptr %631, i64 %650
  %652 = getelementptr inbounds i8, ptr %651, i64 %563
  %653 = getelementptr inbounds i8, ptr %652, i64 %635
  br label %720

654:                                              ; preds = %628
  %655 = shl i32 %632, 1
  %656 = shl nuw nsw i32 %625, 2
  %657 = and i32 %656, 8
  %658 = or disjoint i32 %657, %548
  %659 = mul nsw i32 %655, %658
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i8, ptr %631, i64 %660
  %662 = getelementptr inbounds i8, ptr %661, i64 %563
  %663 = shl nuw nsw i32 %626, 3
  %664 = zext nneg i32 %663 to i64
  %665 = getelementptr inbounds i8, ptr %662, i64 %664
  br label %720

666:                                              ; preds = %623
  %667 = load i32, ptr @chroma_format, align 4
  %668 = icmp ne i32 %667, 3
  %669 = zext i1 %668 to i32
  %670 = ashr exact i32 %547, %669
  %671 = icmp eq i32 %667, 1
  %672 = zext i1 %671 to i32
  %673 = ashr exact i32 %548, %672
  %674 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %675 = icmp eq i32 %674, 3
  br i1 %675, label %676, label %704

676:                                              ; preds = %666
  %677 = icmp ne i32 %667, 1
  %678 = select i1 %562, i1 %677, i1 false
  %679 = zext nneg i32 %627 to i64
  %680 = getelementptr inbounds [3 x ptr], ptr @current_frame, i64 0, i64 %679
  %681 = load ptr, ptr %680, align 8, !tbaa !10
  %682 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %683 = sext i32 %670 to i64
  %684 = and i64 %566, 8
  br i1 %678, label %685, label %695

685:                                              ; preds = %676
  %686 = lshr i32 %625, 1
  %687 = and i32 %686, 1
  %688 = or disjoint i32 %687, %548
  %689 = mul nsw i32 %682, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, ptr %681, i64 %690
  %692 = getelementptr inbounds i8, ptr %691, i64 %683
  %693 = getelementptr inbounds i8, ptr %692, i64 %684
  %694 = shl i32 %682, 1
  br label %720

695:                                              ; preds = %676
  %696 = shl i32 %625, 2
  %697 = and i32 %696, 8
  %698 = add nsw i32 %673, %697
  %699 = mul nsw i32 %682, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %681, i64 %700
  %702 = getelementptr inbounds i8, ptr %701, i64 %683
  %703 = getelementptr inbounds i8, ptr %702, i64 %684
  br label %720

704:                                              ; preds = %666
  %705 = zext nneg i32 %627 to i64
  %706 = getelementptr inbounds [3 x ptr], ptr @current_frame, i64 0, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !10
  %708 = load i32, ptr @Chroma_Width, align 4, !tbaa !6
  %709 = shl i32 %708, 1
  %710 = shl i32 %625, 2
  %711 = and i32 %710, 8
  %712 = add nsw i32 %673, %711
  %713 = mul nsw i32 %709, %712
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, ptr %707, i64 %714
  %716 = sext i32 %670 to i64
  %717 = getelementptr inbounds i8, ptr %715, i64 %716
  %718 = and i64 %566, 8
  %719 = getelementptr inbounds i8, ptr %717, i64 %718
  br label %720

720:                                              ; preds = %704, %695, %685, %654, %645, %636
  %721 = phi i32 [ %644, %636 ], [ %632, %645 ], [ %655, %654 ], [ %694, %685 ], [ %682, %695 ], [ %709, %704 ]
  %722 = phi ptr [ %643, %636 ], [ %653, %645 ], [ %665, %654 ], [ %693, %685 ], [ %703, %695 ], [ %719, %704 ]
  %723 = add nsw i32 %721, -8
  %724 = load ptr, ptr @ld, align 8, !tbaa !10
  %725 = getelementptr inbounds i8, ptr %724, i64 3176
  %726 = getelementptr inbounds [12 x [64 x i16]], ptr %725, i64 0, i64 %566
  %727 = sext i32 %723 to i64
  br i1 %550, label %728, label %815

728:                                              ; preds = %720, %728
  %729 = phi ptr [ %803, %728 ], [ %726, %720 ]
  %730 = phi ptr [ %812, %728 ], [ %722, %720 ]
  %731 = phi i32 [ %813, %728 ], [ 0, %720 ]
  %732 = load ptr, ptr @Clip, align 8, !tbaa !10
  %733 = getelementptr inbounds i8, ptr %729, i64 2
  %734 = load i16, ptr %729, align 2, !tbaa !20
  %735 = sext i16 %734 to i64
  %736 = load i8, ptr %730, align 1, !tbaa !18
  %737 = zext i8 %736 to i64
  %738 = getelementptr i8, ptr %732, i64 %735
  %739 = getelementptr i8, ptr %738, i64 %737
  %740 = load i8, ptr %739, align 1, !tbaa !18
  store i8 %740, ptr %730, align 1, !tbaa !18
  %741 = getelementptr inbounds i8, ptr %730, i64 1
  %742 = load ptr, ptr @Clip, align 8, !tbaa !10
  %743 = getelementptr inbounds i8, ptr %729, i64 4
  %744 = load i16, ptr %733, align 2, !tbaa !20
  %745 = sext i16 %744 to i64
  %746 = load i8, ptr %741, align 1, !tbaa !18
  %747 = zext i8 %746 to i64
  %748 = getelementptr i8, ptr %742, i64 %745
  %749 = getelementptr i8, ptr %748, i64 %747
  %750 = load i8, ptr %749, align 1, !tbaa !18
  store i8 %750, ptr %741, align 1, !tbaa !18
  %751 = getelementptr inbounds i8, ptr %730, i64 2
  %752 = load ptr, ptr @Clip, align 8, !tbaa !10
  %753 = getelementptr inbounds i8, ptr %729, i64 6
  %754 = load i16, ptr %743, align 2, !tbaa !20
  %755 = sext i16 %754 to i64
  %756 = load i8, ptr %751, align 1, !tbaa !18
  %757 = zext i8 %756 to i64
  %758 = getelementptr i8, ptr %752, i64 %755
  %759 = getelementptr i8, ptr %758, i64 %757
  %760 = load i8, ptr %759, align 1, !tbaa !18
  store i8 %760, ptr %751, align 1, !tbaa !18
  %761 = getelementptr inbounds i8, ptr %730, i64 3
  %762 = load ptr, ptr @Clip, align 8, !tbaa !10
  %763 = getelementptr inbounds i8, ptr %729, i64 8
  %764 = load i16, ptr %753, align 2, !tbaa !20
  %765 = sext i16 %764 to i64
  %766 = load i8, ptr %761, align 1, !tbaa !18
  %767 = zext i8 %766 to i64
  %768 = getelementptr i8, ptr %762, i64 %765
  %769 = getelementptr i8, ptr %768, i64 %767
  %770 = load i8, ptr %769, align 1, !tbaa !18
  store i8 %770, ptr %761, align 1, !tbaa !18
  %771 = getelementptr inbounds i8, ptr %730, i64 4
  %772 = load ptr, ptr @Clip, align 8, !tbaa !10
  %773 = getelementptr inbounds i8, ptr %729, i64 10
  %774 = load i16, ptr %763, align 2, !tbaa !20
  %775 = sext i16 %774 to i64
  %776 = load i8, ptr %771, align 1, !tbaa !18
  %777 = zext i8 %776 to i64
  %778 = getelementptr i8, ptr %772, i64 %775
  %779 = getelementptr i8, ptr %778, i64 %777
  %780 = load i8, ptr %779, align 1, !tbaa !18
  store i8 %780, ptr %771, align 1, !tbaa !18
  %781 = getelementptr inbounds i8, ptr %730, i64 5
  %782 = load ptr, ptr @Clip, align 8, !tbaa !10
  %783 = getelementptr inbounds i8, ptr %729, i64 12
  %784 = load i16, ptr %773, align 2, !tbaa !20
  %785 = sext i16 %784 to i64
  %786 = load i8, ptr %781, align 1, !tbaa !18
  %787 = zext i8 %786 to i64
  %788 = getelementptr i8, ptr %782, i64 %785
  %789 = getelementptr i8, ptr %788, i64 %787
  %790 = load i8, ptr %789, align 1, !tbaa !18
  store i8 %790, ptr %781, align 1, !tbaa !18
  %791 = getelementptr inbounds i8, ptr %730, i64 6
  %792 = load ptr, ptr @Clip, align 8, !tbaa !10
  %793 = getelementptr inbounds i8, ptr %729, i64 14
  %794 = load i16, ptr %783, align 2, !tbaa !20
  %795 = sext i16 %794 to i64
  %796 = load i8, ptr %791, align 1, !tbaa !18
  %797 = zext i8 %796 to i64
  %798 = getelementptr i8, ptr %792, i64 %795
  %799 = getelementptr i8, ptr %798, i64 %797
  %800 = load i8, ptr %799, align 1, !tbaa !18
  store i8 %800, ptr %791, align 1, !tbaa !18
  %801 = getelementptr inbounds i8, ptr %730, i64 7
  %802 = load ptr, ptr @Clip, align 8, !tbaa !10
  %803 = getelementptr inbounds i8, ptr %729, i64 16
  %804 = load i16, ptr %793, align 2, !tbaa !20
  %805 = sext i16 %804 to i64
  %806 = load i8, ptr %801, align 1, !tbaa !18
  %807 = zext i8 %806 to i64
  %808 = getelementptr i8, ptr %802, i64 %805
  %809 = getelementptr i8, ptr %808, i64 %807
  %810 = load i8, ptr %809, align 1, !tbaa !18
  store i8 %810, ptr %801, align 1, !tbaa !18
  %811 = getelementptr inbounds i8, ptr %730, i64 8
  %812 = getelementptr inbounds i8, ptr %811, i64 %727
  %813 = add nuw nsw i32 %731, 1
  %814 = icmp eq i32 %813, 8
  br i1 %814, label %886, label %728

815:                                              ; preds = %720, %815
  %816 = phi ptr [ %876, %815 ], [ %726, %720 ]
  %817 = phi ptr [ %883, %815 ], [ %722, %720 ]
  %818 = phi i32 [ %884, %815 ], [ 0, %720 ]
  %819 = load ptr, ptr @Clip, align 8, !tbaa !10
  %820 = getelementptr inbounds i8, ptr %816, i64 2
  %821 = load i16, ptr %816, align 2, !tbaa !20
  %822 = sext i16 %821 to i64
  %823 = getelementptr i8, ptr %819, i64 %822
  %824 = getelementptr i8, ptr %823, i64 128
  %825 = load i8, ptr %824, align 1, !tbaa !18
  %826 = getelementptr inbounds i8, ptr %817, i64 1
  store i8 %825, ptr %817, align 1, !tbaa !18
  %827 = load ptr, ptr @Clip, align 8, !tbaa !10
  %828 = getelementptr inbounds i8, ptr %816, i64 4
  %829 = load i16, ptr %820, align 2, !tbaa !20
  %830 = sext i16 %829 to i64
  %831 = getelementptr i8, ptr %827, i64 %830
  %832 = getelementptr i8, ptr %831, i64 128
  %833 = load i8, ptr %832, align 1, !tbaa !18
  %834 = getelementptr inbounds i8, ptr %817, i64 2
  store i8 %833, ptr %826, align 1, !tbaa !18
  %835 = load ptr, ptr @Clip, align 8, !tbaa !10
  %836 = getelementptr inbounds i8, ptr %816, i64 6
  %837 = load i16, ptr %828, align 2, !tbaa !20
  %838 = sext i16 %837 to i64
  %839 = getelementptr i8, ptr %835, i64 %838
  %840 = getelementptr i8, ptr %839, i64 128
  %841 = load i8, ptr %840, align 1, !tbaa !18
  %842 = getelementptr inbounds i8, ptr %817, i64 3
  store i8 %841, ptr %834, align 1, !tbaa !18
  %843 = load ptr, ptr @Clip, align 8, !tbaa !10
  %844 = getelementptr inbounds i8, ptr %816, i64 8
  %845 = load i16, ptr %836, align 2, !tbaa !20
  %846 = sext i16 %845 to i64
  %847 = getelementptr i8, ptr %843, i64 %846
  %848 = getelementptr i8, ptr %847, i64 128
  %849 = load i8, ptr %848, align 1, !tbaa !18
  %850 = getelementptr inbounds i8, ptr %817, i64 4
  store i8 %849, ptr %842, align 1, !tbaa !18
  %851 = load ptr, ptr @Clip, align 8, !tbaa !10
  %852 = getelementptr inbounds i8, ptr %816, i64 10
  %853 = load i16, ptr %844, align 2, !tbaa !20
  %854 = sext i16 %853 to i64
  %855 = getelementptr i8, ptr %851, i64 %854
  %856 = getelementptr i8, ptr %855, i64 128
  %857 = load i8, ptr %856, align 1, !tbaa !18
  %858 = getelementptr inbounds i8, ptr %817, i64 5
  store i8 %857, ptr %850, align 1, !tbaa !18
  %859 = load ptr, ptr @Clip, align 8, !tbaa !10
  %860 = getelementptr inbounds i8, ptr %816, i64 12
  %861 = load i16, ptr %852, align 2, !tbaa !20
  %862 = sext i16 %861 to i64
  %863 = getelementptr i8, ptr %859, i64 %862
  %864 = getelementptr i8, ptr %863, i64 128
  %865 = load i8, ptr %864, align 1, !tbaa !18
  %866 = getelementptr inbounds i8, ptr %817, i64 6
  store i8 %865, ptr %858, align 1, !tbaa !18
  %867 = load ptr, ptr @Clip, align 8, !tbaa !10
  %868 = getelementptr inbounds i8, ptr %816, i64 14
  %869 = load i16, ptr %860, align 2, !tbaa !20
  %870 = sext i16 %869 to i64
  %871 = getelementptr i8, ptr %867, i64 %870
  %872 = getelementptr i8, ptr %871, i64 128
  %873 = load i8, ptr %872, align 1, !tbaa !18
  %874 = getelementptr inbounds i8, ptr %817, i64 7
  store i8 %873, ptr %866, align 1, !tbaa !18
  %875 = load ptr, ptr @Clip, align 8, !tbaa !10
  %876 = getelementptr inbounds i8, ptr %816, i64 16
  %877 = load i16, ptr %868, align 2, !tbaa !20
  %878 = sext i16 %877 to i64
  %879 = getelementptr i8, ptr %875, i64 %878
  %880 = getelementptr i8, ptr %879, i64 128
  %881 = load i8, ptr %880, align 1, !tbaa !18
  %882 = getelementptr inbounds i8, ptr %817, i64 8
  store i8 %881, ptr %874, align 1, !tbaa !18
  %883 = getelementptr inbounds i8, ptr %882, i64 %727
  %884 = add nuw nsw i32 %818, 1
  %885 = icmp eq i32 %884, 8
  br i1 %885, label %886, label %815

886:                                              ; preds = %815, %728
  %887 = add nuw nsw i64 %566, 1
  %888 = load i32, ptr @block_count, align 4, !tbaa !6
  %889 = sext i32 %888 to i64
  %890 = icmp slt i64 %887, %889
  br i1 %890, label %565, label %891

891:                                              ; preds = %886, %558
  %892 = add nsw i32 %149, 1
  %893 = add nsw i32 %179, -1
  %894 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %895 = icmp ne i32 %894, 0
  %896 = load i32, ptr getelementptr inbounds (i8, ptr @enhan, i64 3148), align 4
  %897 = icmp eq i32 %896, 3
  %898 = select i1 %895, i1 %897, i1 false
  %899 = zext i1 %898 to i32
  %900 = add nsw i32 %538, %899
  %901 = sext i1 %898 to i32
  %902 = add nsw i32 %539, %901
  %903 = icmp slt i32 %892, %98
  br i1 %903, label %148, label %911

904:                                              ; preds = %174, %161, %378, %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  store ptr @base, ptr @ld, align 8, !tbaa !10
  store i32 0, ptr @Fault_Flag, align 4, !tbaa !6
  call void @next_start_code() #7
  %905 = call signext i32 @Show_Bits(i32 noundef signext 32) #7
  %906 = add i32 %905, -432
  %907 = icmp ult i32 %906, -175
  br i1 %907, label %110, label %113

908:                                              ; preds = %122, %110
  %909 = phi ptr [ @str.13, %110 ], [ @str.12, %122 ]
  %910 = call i32 @puts(ptr nonnull dereferenceable(1) %909)
  br label %911

911:                                              ; preds = %138, %891, %110, %122, %908
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %912 = icmp eq i32 %1, 0
  br i1 %912, label %929, label %913

913:                                              ; preds = %911
  %914 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %915 = icmp eq i32 %914, 3
  %916 = load i32, ptr @Second_Field, align 4
  %917 = icmp ne i32 %916, 0
  %918 = select i1 %915, i1 true, i1 %917
  br i1 %918, label %919, label %938

919:                                              ; preds = %913
  %920 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %921 = icmp eq i32 %920, 3
  br i1 %921, label %922, label %924

922:                                              ; preds = %919
  %923 = add nsw i32 %0, -1
  call void @Write_Frame(ptr noundef nonnull @auxframe, i32 noundef signext %923) #7
  br label %931

924:                                              ; preds = %919
  %925 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  store i32 %925, ptr @frame_reorder.Newref_progressive_frame, align 4, !tbaa !6
  %926 = load i32, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !6
  store i32 %926, ptr @progressive_frame, align 4, !tbaa !6
  %927 = add nsw i32 %0, -1
  call void @Write_Frame(ptr noundef nonnull @forward_reference_frame, i32 noundef signext %927) #7
  %928 = load i32, ptr @frame_reorder.Newref_progressive_frame, align 4, !tbaa !6
  store i32 %928, ptr @progressive_frame, align 4, !tbaa !6
  store i32 %928, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !6
  br label %931

929:                                              ; preds = %911
  %930 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  store i32 %930, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !6
  br label %931

931:                                              ; preds = %922, %924, %929
  %932 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %933 = icmp eq i32 %932, 3
  br i1 %933, label %940, label %934

934:                                              ; preds = %931
  %935 = load i32, ptr @Second_Field, align 4, !tbaa !6
  %936 = icmp eq i32 %935, 0
  %937 = zext i1 %936 to i32
  br label %938

938:                                              ; preds = %934, %913
  %939 = phi i32 [ %937, %934 ], [ 1, %913 ]
  store i32 %939, ptr @Second_Field, align 4, !tbaa !6
  br label %940

940:                                              ; preds = %938, %931
  ret void
}

declare dso_local void @Substitute_Frame_Buffer(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @Spatial_Prediction() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @Output_Last_Frame_of_Sequence(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @Second_Field, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %8

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -1
  tail call void @Write_Frame(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %7) #7
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

declare dso_local void @Write_Frame(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare dso_local signext i32 @Show_Bits(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @Get_macroblock_address_increment() local_unnamed_addr #1

declare dso_local void @next_start_code() local_unnamed_addr #1

declare dso_local void @Flush_Buffer32() local_unnamed_addr #1

declare dso_local signext i32 @slice_header() local_unnamed_addr #1

; Function Attrs: nounwind
define internal fastcc void @macroblock_modes(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = tail call signext i32 @Get_macroblock_type() #7
  %11 = load i32, ptr @Fault_Flag, align 4, !tbaa !6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = and i32 %10, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #7
  %21 = load i32, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !6
  %22 = add nsw i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [3 x [4 x i8]], ptr @macroblock_modes.stwc_table, i64 0, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !18
  %27 = zext i8 %26 to i32
  br label %31

28:                                               ; preds = %13
  %29 = lshr i32 %10, 3
  %30 = and i32 %29, 8
  br label %31

31:                                               ; preds = %16, %19, %28
  %32 = phi i32 [ %27, %19 ], [ %30, %28 ], [ 4, %16 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [9 x i8], ptr @macroblock_modes.stwclass_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !18
  %36 = zext i8 %35 to i32
  %37 = and i32 %10, 12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr @picture_structure, align 4
  %41 = icmp ne i32 %40, 3
  %42 = load i32, ptr @frame_pred_frame_dct, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %55, label %64

45:                                               ; preds = %31
  %46 = and i32 %10, 1
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr @concealment_motion_vectors, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, ptr @picture_structure, align 4
  %53 = icmp eq i32 %52, 3
  %54 = select i1 %53, i32 2, i32 1
  br label %60

55:                                               ; preds = %39
  %56 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #7
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i32 [ 0, %45 ], [ %56, %55 ]
  %59 = load i32, ptr @picture_structure, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i32 [ %59, %57 ], [ %52, %51 ]
  %62 = phi i32 [ %58, %57 ], [ %54, %51 ]
  %63 = icmp eq i32 %61, 3
  br i1 %63, label %64, label %74

64:                                               ; preds = %39, %60
  %65 = phi i32 [ %62, %60 ], [ 2, %39 ]
  %66 = icmp eq i32 %65, 1
  %67 = lshr i64 27, %33
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  %70 = select i1 %66, i1 %69, i1 false
  %71 = select i1 %70, i32 2, i32 1
  %72 = icmp eq i32 %65, 2
  %73 = zext i1 %72 to i32
  br label %77

74:                                               ; preds = %60
  %75 = icmp eq i32 %62, 2
  %76 = select i1 %75, i32 2, i32 1
  br label %77

77:                                               ; preds = %74, %64
  %78 = phi i1 [ true, %64 ], [ false, %74 ]
  %79 = phi i32 [ %65, %64 ], [ %62, %74 ]
  %80 = phi i1 [ false, %64 ], [ true, %74 ]
  %81 = phi i32 [ %73, %64 ], [ 0, %74 ]
  %82 = phi i32 [ %71, %64 ], [ %76, %74 ]
  %83 = icmp eq i32 %79, 3
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %81, 0
  %86 = and i1 %78, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, ptr @frame_pred_frame_dct, align 4
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %80, i1 true, i1 %89
  %91 = and i32 %10, 3
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %77
  %95 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #7
  br label %96

96:                                               ; preds = %77, %94
  %97 = phi i32 [ %95, %94 ], [ 0, %77 ]
  store i32 %10, ptr %0, align 4, !tbaa !6
  store i32 %32, ptr %1, align 4, !tbaa !6
  store i32 %36, ptr %2, align 4, !tbaa !6
  store i32 %79, ptr %3, align 4, !tbaa !6
  store i32 %82, ptr %4, align 4, !tbaa !6
  store i32 %81, ptr %5, align 4, !tbaa !6
  store i32 %84, ptr %6, align 4, !tbaa !6
  store i32 %87, ptr %7, align 4, !tbaa !6
  store i32 %97, ptr %8, align 4, !tbaa !6
  br label %98

98:                                               ; preds = %9, %96
  ret void
}

declare dso_local signext i32 @Get_Bits(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @motion_vectors(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @motion_vector(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @Flush_Buffer(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @Get_coded_block_pattern() local_unnamed_addr #1

declare dso_local void @Decode_MPEG2_Intra_Block(i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local void @Decode_MPEG1_Intra_Block(i32 noundef signext, ptr noundef) local_unnamed_addr #1

declare dso_local void @Decode_MPEG2_Non_Intra_Block(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @Decode_MPEG1_Non_Intra_Block(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @marker_bit(ptr noundef) local_unnamed_addr #1

declare dso_local signext i32 @Get_macroblock_type() local_unnamed_addr #1

declare dso_local void @form_predictions(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @Reference_IDCT(ptr noundef) local_unnamed_addr #1

declare dso_local void @Fast_IDCT(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!12 = !{!13, !7, i64 3160}
!13 = !{!"layer_data", !7, i64 0, !8, i64 4, !11, i64 2056, !8, i64 2064, !7, i64 2080, !11, i64 2088, !7, i64 2096, !7, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !7, i64 3128, !7, i64 3132, !7, i64 3136, !7, i64 3140, !7, i64 3144, !7, i64 3148, !7, i64 3152, !7, i64 3156, !7, i64 3160, !7, i64 3164, !7, i64 3168, !7, i64 3172, !8, i64 3176}
!14 = !{!13, !7, i64 3148}
!15 = !{!13, !7, i64 3164}
!16 = !{!13, !7, i64 3144}
!17 = !{!13, !7, i64 3152}
!18 = !{!8, !8, i64 0}
!19 = !{!13, !7, i64 3168}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !8, i64 0}
