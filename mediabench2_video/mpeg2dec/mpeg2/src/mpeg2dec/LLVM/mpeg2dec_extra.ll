; ModuleID = 'mpeg2dec.c'
source_filename = "mpeg2dec.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@Version = dso_local global [28 x i8] c"mpeg2decode V1.2a, 96/07/19\00", align 1
@Author = dso_local global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 1
@scan = dso_local local_unnamed_addr global [2 x [64 x i8]] [[64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?"], align 1
@default_intra_quantizer_matrix = dso_local local_unnamed_addr global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 1
@Non_Linear_quantizer_scale = dso_local local_unnamed_addr global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 1
@Inverse_Table_6_9 = dso_local local_unnamed_addr global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 4
@base = dso_local global %struct.layer_data zeroinitializer, align 8
@ld = dso_local local_unnamed_addr global ptr null, align 8
@Main_Bitstream_Filename = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"Base layer input file %s not found\0A\00", align 1
@Error_Text = dso_local global [256 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Decoder currently does not parse transport streams\0A\00", align 1
@System_Stream_Flag = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to recognize stream type\0A\00", align 1
@Two_Streams = dso_local local_unnamed_addr global i32 0, align 4
@enhan = dso_local global %struct.layer_data zeroinitializer, align 8
@Enhancement_Layer_Bitstream_Filename = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"enhancment layer bitstream file %s not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Output_Type = dso_local local_unnamed_addr global i32 0, align 4
@hiQdither = dso_local local_unnamed_addr global i32 0, align 4
@Quiet_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Trace_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Fault_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Verbose_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Spatial_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Reference_IDCT_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Frame_Store_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Display_Progressive_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Ersatz_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Big_Picture_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Verify_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Stats_Flag = dso_local local_unnamed_addr global i32 0, align 4
@User_Data_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Main_Bitstream_Flag = dso_local local_unnamed_addr global i32 0, align 4
@Output_Picture_Filename = dso_local local_unnamed_addr global ptr null, align 8
@Substitute_Picture_Filename = dso_local local_unnamed_addr global ptr null, align 8
@Clip = dso_local local_unnamed_addr global ptr null, align 8
@backward_reference_frame = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@forward_reference_frame = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@auxframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@current_frame = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@substitute_frame = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@llframe0 = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@llframe1 = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@lltmp = dso_local local_unnamed_addr global ptr null, align 8
@Lower_Layer_Picture_Filename = dso_local local_unnamed_addr global ptr null, align 8
@Coded_Picture_Width = dso_local local_unnamed_addr global i32 0, align 4
@Coded_Picture_Height = dso_local local_unnamed_addr global i32 0, align 4
@Chroma_Width = dso_local local_unnamed_addr global i32 0, align 4
@Chroma_Height = dso_local local_unnamed_addr global i32 0, align 4
@block_count = dso_local local_unnamed_addr global i32 0, align 4
@Second_Field = dso_local local_unnamed_addr global i32 0, align 4
@profile = dso_local local_unnamed_addr global i32 0, align 4
@level = dso_local local_unnamed_addr global i32 0, align 4
@horizontal_size = dso_local local_unnamed_addr global i32 0, align 4
@vertical_size = dso_local local_unnamed_addr global i32 0, align 4
@mb_width = dso_local local_unnamed_addr global i32 0, align 4
@mb_height = dso_local local_unnamed_addr global i32 0, align 4
@bit_rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@frame_rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@aspect_ratio_information = dso_local local_unnamed_addr global i32 0, align 4
@frame_rate_code = dso_local local_unnamed_addr global i32 0, align 4
@bit_rate_value = dso_local local_unnamed_addr global i32 0, align 4
@vbv_buffer_size = dso_local local_unnamed_addr global i32 0, align 4
@constrained_parameters_flag = dso_local local_unnamed_addr global i32 0, align 4
@profile_and_level_indication = dso_local local_unnamed_addr global i32 0, align 4
@progressive_sequence = dso_local local_unnamed_addr global i32 0, align 4
@chroma_format = dso_local local_unnamed_addr global i32 0, align 4
@low_delay = dso_local local_unnamed_addr global i32 0, align 4
@frame_rate_extension_n = dso_local local_unnamed_addr global i32 0, align 4
@frame_rate_extension_d = dso_local local_unnamed_addr global i32 0, align 4
@video_format = dso_local local_unnamed_addr global i32 0, align 4
@color_description = dso_local local_unnamed_addr global i32 0, align 4
@color_primaries = dso_local local_unnamed_addr global i32 0, align 4
@transfer_characteristics = dso_local local_unnamed_addr global i32 0, align 4
@matrix_coefficients = dso_local local_unnamed_addr global i32 0, align 4
@display_horizontal_size = dso_local local_unnamed_addr global i32 0, align 4
@display_vertical_size = dso_local local_unnamed_addr global i32 0, align 4
@temporal_reference = dso_local local_unnamed_addr global i32 0, align 4
@picture_coding_type = dso_local local_unnamed_addr global i32 0, align 4
@vbv_delay = dso_local local_unnamed_addr global i32 0, align 4
@full_pel_forward_vector = dso_local local_unnamed_addr global i32 0, align 4
@forward_f_code = dso_local local_unnamed_addr global i32 0, align 4
@full_pel_backward_vector = dso_local local_unnamed_addr global i32 0, align 4
@backward_f_code = dso_local local_unnamed_addr global i32 0, align 4
@f_code = dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 4
@intra_dc_precision = dso_local local_unnamed_addr global i32 0, align 4
@picture_structure = dso_local local_unnamed_addr global i32 0, align 4
@top_field_first = dso_local local_unnamed_addr global i32 0, align 4
@frame_pred_frame_dct = dso_local local_unnamed_addr global i32 0, align 4
@concealment_motion_vectors = dso_local local_unnamed_addr global i32 0, align 4
@intra_vlc_format = dso_local local_unnamed_addr global i32 0, align 4
@repeat_first_field = dso_local local_unnamed_addr global i32 0, align 4
@chroma_420_type = dso_local local_unnamed_addr global i32 0, align 4
@progressive_frame = dso_local local_unnamed_addr global i32 0, align 4
@composite_display_flag = dso_local local_unnamed_addr global i32 0, align 4
@v_axis = dso_local local_unnamed_addr global i32 0, align 4
@field_sequence = dso_local local_unnamed_addr global i32 0, align 4
@sub_carrier = dso_local local_unnamed_addr global i32 0, align 4
@burst_amplitude = dso_local local_unnamed_addr global i32 0, align 4
@sub_carrier_phase = dso_local local_unnamed_addr global i32 0, align 4
@frame_center_horizontal_offset = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@frame_center_vertical_offset = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@layer_id = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_prediction_horizontal_size = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_prediction_vertical_size = dso_local local_unnamed_addr global i32 0, align 4
@horizontal_subsampling_factor_m = dso_local local_unnamed_addr global i32 0, align 4
@horizontal_subsampling_factor_n = dso_local local_unnamed_addr global i32 0, align 4
@vertical_subsampling_factor_m = dso_local local_unnamed_addr global i32 0, align 4
@vertical_subsampling_factor_n = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_temporal_reference = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_horizontal_offset = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_vertical_offset = dso_local local_unnamed_addr global i32 0, align 4
@spatial_temporal_weight_code_table_index = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_progressive_frame = dso_local local_unnamed_addr global i32 0, align 4
@lower_layer_deinterlaced_field_select = dso_local local_unnamed_addr global i32 0, align 4
@copyright_flag = dso_local local_unnamed_addr global i32 0, align 4
@copyright_identifier = dso_local local_unnamed_addr global i32 0, align 4
@original_or_copy = dso_local local_unnamed_addr global i32 0, align 4
@copyright_number_1 = dso_local local_unnamed_addr global i32 0, align 4
@copyright_number_2 = dso_local local_unnamed_addr global i32 0, align 4
@copyright_number_3 = dso_local local_unnamed_addr global i32 0, align 4
@drop_flag = dso_local local_unnamed_addr global i32 0, align 4
@hour = dso_local local_unnamed_addr global i32 0, align 4
@minute = dso_local local_unnamed_addr global i32 0, align 4
@sec = dso_local local_unnamed_addr global i32 0, align 4
@frame = dso_local local_unnamed_addr global i32 0, align 4
@closed_gop = dso_local local_unnamed_addr global i32 0, align 4
@broken_link = dso_local local_unnamed_addr global i32 0, align 4
@Decode_Layer = dso_local local_unnamed_addr global i32 0, align 4
@global_MBA = dso_local local_unnamed_addr global i32 0, align 4
@global_pic = dso_local local_unnamed_addr global i32 0, align 4
@True_Framenum = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Clip[] malloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1195 x i8] c"Usage:  mpeg2decode {options}\0AOptions: -b  file  main bitstream (base or spatial enhancement layer)\0A         -cn file  conformance report (n: level)\0A         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\0A         -f        store/display interlaced video in frame format\0A         -g        concatenated file format for substitution method (-x)\0A         -in file  information & statistics report  (n: level)\0A         -l  file  file name pattern for lower layer sequence\0A                   (for spatial scalability)\0A         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\0A         -q        disable warnings to stderr\0A         -r        use double precision reference IDCT\0A         -t        enable low level tracing to stdout\0A         -u  file  print user_data to stdio or file\0A         -vn       verbose output (n: level)\0A         -x  file  filename pattern of picture substitution sequence\0A\0AFile patterns:  for sequential filenames, \22printf\22 style, e.g. rec%%d\0A                 or rec%%d%%c for fieldwise storage\0ALevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\0A\0AExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\0A         \0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"undefined option -%c ignored. Exiting program\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"streams out of sync\0A\00", align 1
@Initialize_Sequence.Table_6_20 = internal unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"unsupported scalability mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"backward_reference_frame[] malloc failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"forward_reference_frame[] malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"auxframe[] malloc failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"substitute_frame[] malloc failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"llframe0 malloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"llframe1 malloc failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lltmp malloc failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1
@str = private unnamed_addr constant [55 x i8] c"There must be a main bitstream specified (-b filename)\00", align 1
@str.30 = private unnamed_addr constant [39 x i8] c"ERROR: -x must be followed by filename\00", align 1
@str.31 = private unnamed_addr constant [40 x i8] c"This program not compiled for -v option\00", align 1
@str.32 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -t option\00", align 1
@str.33 = private unnamed_addr constant [39 x i8] c"ERROR: -o must be followed by filename\00", align 1
@str.34 = private unnamed_addr constant [39 x i8] c"ERROR: -l must be followed by filename\00", align 1
@str.35 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -i option\00", align 1
@str.36 = private unnamed_addr constant [39 x i8] c"ERROR: -e must be followed by filename\00", align 1
@str.37 = private unnamed_addr constant [49 x i8] c"This program not compiled for Verify_Flag option\00", align 1
@str.38 = private unnamed_addr constant [55 x i8] c"ERROR: -b must be followed the main bitstream filename\00", align 1

; Function Attrs: nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  store i32 0, ptr @Verbose_Flag, align 4, !tbaa !6
  store ptr @.str.29, ptr @Output_Picture_Filename, align 8, !tbaa !10
  store i32 0, ptr @hiQdither, align 4, !tbaa !6
  store i32 0, ptr @Output_Type, align 4, !tbaa !6
  store i32 0, ptr @Frame_Store_Flag, align 4, !tbaa !6
  store i32 0, ptr @Spatial_Flag, align 4, !tbaa !6
  store ptr @.str.29, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !10
  store i32 0, ptr @Reference_IDCT_Flag, align 4, !tbaa !6
  store i32 0, ptr @Trace_Flag, align 4, !tbaa !6
  store i32 0, ptr @Quiet_Flag, align 4, !tbaa !6
  store i32 0, ptr @Ersatz_Flag, align 4, !tbaa !6
  store ptr @.str.29, ptr @Substitute_Picture_Filename, align 8, !tbaa !10
  store i32 0, ptr @Two_Streams, align 4, !tbaa !6
  store ptr @.str.29, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !10
  store i32 0, ptr @Big_Picture_Flag, align 4, !tbaa !6
  store i32 0, ptr @Main_Bitstream_Flag, align 4, !tbaa !6
  store ptr @.str.29, ptr @Main_Bitstream_Filename, align 8, !tbaa !10
  store i32 0, ptr @Verify_Flag, align 4, !tbaa !6
  store i32 0, ptr @Stats_Flag, align 4, !tbaa !6
  store i32 0, ptr @User_Data_Flag, align 4, !tbaa !6
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @Version, ptr noundef nonnull @Author)
  %6 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  tail call void @exit(i32 noundef signext 0) #12
  unreachable

7:                                                ; preds = %2
  store i32 -1, ptr @Output_Type, align 4, !tbaa !6
  %8 = getelementptr i8, ptr %1, i64 8
  br label %9

9:                                                ; preds = %102, %7
  %10 = phi i32 [ 1, %7 ], [ %104, %102 ]
  %11 = sub nsw i32 %0, %10
  %12 = icmp eq i32 %11, 1
  %13 = sext i32 %10 to i64
  br i1 %12, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr ptr, ptr %8, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = load i8, ptr %16, align 1, !tbaa !12
  %18 = icmp eq i8 %17, 45
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ %18, %14 ], [ false, %9 ]
  %21 = getelementptr inbounds ptr, ptr %1, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = load i8, ptr %22, align 1, !tbaa !12
  %24 = icmp eq i8 %23, 45
  br i1 %24, label %25, label %102

25:                                               ; preds = %19
  %26 = tail call ptr @__ctype_toupper_loc() #13
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !12
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i32, ptr %27, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !6
  switch i32 %32, label %98 [
    i32 66, label %33
    i32 67, label %42
    i32 69, label %44
    i32 70, label %53
    i32 71, label %54
    i32 73, label %55
    i32 76, label %57
    i32 79, label %66
    i32 81, label %82
    i32 82, label %83
    i32 84, label %84
    i32 85, label %86
    i32 86, label %87
    i32 88, label %89
  ]

33:                                               ; preds = %25
  store i32 1, ptr @Main_Bitstream_Flag, align 4, !tbaa !6
  %34 = or i1 %12, %20
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  br label %102

37:                                               ; preds = %33
  %38 = add nsw i32 %10, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  store ptr %41, ptr @Main_Bitstream_Filename, align 8, !tbaa !10
  br label %102

42:                                               ; preds = %25
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  br label %102

44:                                               ; preds = %25
  store i32 1, ptr @Two_Streams, align 4, !tbaa !6
  %45 = or i1 %12, %20
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  tail call void @exit(i32 noundef signext -1) #12
  unreachable

48:                                               ; preds = %44
  %49 = add nsw i32 %10, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  store ptr %52, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !10
  br label %102

53:                                               ; preds = %25
  store i32 1, ptr @Frame_Store_Flag, align 4, !tbaa !6
  br label %102

54:                                               ; preds = %25
  store i32 1, ptr @Big_Picture_Flag, align 4, !tbaa !6
  br label %102

55:                                               ; preds = %25
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  br label %102

57:                                               ; preds = %25
  store i32 1, ptr @Spatial_Flag, align 4, !tbaa !6
  %58 = or i1 %12, %20
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef signext -1) #12
  unreachable

61:                                               ; preds = %57
  %62 = add nsw i32 %10, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %1, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  store ptr %65, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !10
  br label %102

66:                                               ; preds = %25
  %67 = getelementptr inbounds i8, ptr %22, i64 2
  %68 = tail call i64 @strtol(ptr nocapture noundef nonnull %67, ptr noundef null, i32 noundef signext 10) #14
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr @Output_Type, align 4, !tbaa !6
  %70 = and i32 %69, -2
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store ptr @.str.13, ptr @Output_Picture_Filename, align 8, !tbaa !10
  br label %102

73:                                               ; preds = %66
  %74 = or i1 %12, %20
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  tail call void @exit(i32 noundef signext -1) #12
  unreachable

77:                                               ; preds = %73
  %78 = add nsw i32 %10, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !10
  store ptr %81, ptr @Output_Picture_Filename, align 8, !tbaa !10
  br label %102

82:                                               ; preds = %25
  store i32 1, ptr @Quiet_Flag, align 4, !tbaa !6
  br label %102

83:                                               ; preds = %25
  store i32 1, ptr @Reference_IDCT_Flag, align 4, !tbaa !6
  br label %102

84:                                               ; preds = %25
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %102

86:                                               ; preds = %25
  store i32 1, ptr @User_Data_Flag, align 4, !tbaa !6
  br label %87

87:                                               ; preds = %86, %25
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %102

89:                                               ; preds = %25
  store i32 1, ptr @Ersatz_Flag, align 4, !tbaa !6
  %90 = or i1 %12, %20
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  tail call void @exit(i32 noundef signext -1) #12
  unreachable

93:                                               ; preds = %89
  %94 = add nsw i32 %10, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  store ptr %97, ptr @Substitute_Picture_Filename, align 8, !tbaa !10
  br label %102

98:                                               ; preds = %25
  %99 = zext i8 %29 to i32
  %100 = load ptr, ptr @stderr, align 8, !tbaa !10
  %101 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.18, i32 noundef signext %99) #15
  tail call void @exit(i32 noundef signext -1) #12
  unreachable

102:                                              ; preds = %93, %87, %84, %83, %82, %77, %72, %61, %55, %54, %53, %48, %42, %37, %35, %19
  %103 = phi i32 [ %94, %93 ], [ %10, %87 ], [ %10, %84 ], [ %10, %83 ], [ %10, %82 ], [ %10, %72 ], [ %78, %77 ], [ %62, %61 ], [ %10, %55 ], [ %10, %54 ], [ %10, %53 ], [ %49, %48 ], [ %10, %42 ], [ %10, %35 ], [ %38, %37 ], [ %10, %19 ]
  %104 = add nsw i32 %103, 1
  %105 = icmp slt i32 %104, %0
  br i1 %105, label %9, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr @Main_Bitstream_Flag, align 4, !tbaa !6
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, ptr @Output_Type, align 4
  %113 = and i32 %112, -2
  %114 = icmp eq i32 %113, 4
  %115 = load i32, ptr @Frame_Store_Flag, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  %118 = zext i1 %117 to i32
  store i32 %118, ptr @Display_Progressive_Flag, align 4, !tbaa !6
  %119 = icmp eq i32 %112, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 9, ptr @Output_Type, align 4, !tbaa !6
  store ptr @.str.13, ptr @Output_Picture_Filename, align 8, !tbaa !10
  br label %121

121:                                              ; preds = %111, %120
  store ptr @base, ptr @ld, align 8, !tbaa !10
  %122 = load ptr, ptr @Main_Bitstream_Filename, align 8, !tbaa !10
  %123 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef %122, i32 noundef signext 0) #14
  store i32 %123, ptr @base, align 8, !tbaa !13
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load ptr, ptr @stderr, align 8, !tbaa !10
  %127 = load ptr, ptr @Main_Bitstream_Filename, align 8, !tbaa !10
  %128 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str, ptr noundef %127) #15
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

129:                                              ; preds = %121
  %130 = icmp eq i32 %123, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %129
  tail call void @Initialize_Buffer() #14
  %132 = tail call signext i32 @Show_Bits(i32 noundef signext 8) #14
  %133 = icmp eq i32 %132, 71
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) @Error_Text, ptr noundef nonnull align 1 dereferenceable(52) @.str.1, i64 52, i1 false)
  %135 = load ptr, ptr @stderr, align 8, !tbaa !10
  %136 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull readonly @Error_Text) #15
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

137:                                              ; preds = %131
  tail call void @next_start_code() #14
  %138 = tail call signext i32 @Show_Bits(i32 noundef signext 32) #14
  switch i32 %138, label %140 [
    i32 435, label %143
    i32 442, label %139
    i32 480, label %139
  ]

139:                                              ; preds = %137, %137
  store i32 1, ptr @System_Stream_Flag, align 4, !tbaa !6
  br label %143

140:                                              ; preds = %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) @Error_Text, ptr noundef nonnull align 1 dereferenceable(33) @.str.2, i64 33, i1 false)
  %141 = load ptr, ptr @stderr, align 8, !tbaa !10
  %142 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull readonly @Error_Text) #15
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

143:                                              ; preds = %137, %139
  %144 = load i32, ptr @base, align 8, !tbaa !13
  %145 = tail call signext i32 @lseek(i32 noundef signext %144, i64 noundef 0, i32 noundef signext 0) #14
  tail call void @Initialize_Buffer() #14
  %146 = load i32, ptr @base, align 8, !tbaa !13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = tail call signext i32 @lseek(i32 noundef signext %146, i64 noundef 0, i32 noundef signext 0) #14
  br label %150

150:                                              ; preds = %129, %148, %143
  tail call void @Initialize_Buffer() #14
  %151 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  %154 = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !10
  %155 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef %154, i32 noundef signext 0) #14
  store i32 %155, ptr @enhan, align 8, !tbaa !13
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !10
  %159 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %158) #14
  %160 = load ptr, ptr @stderr, align 8, !tbaa !10
  %161 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull readonly @Error_Text) #15
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

162:                                              ; preds = %153
  tail call void @Initialize_Buffer() #14
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %163

163:                                              ; preds = %162, %150
  %164 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #16
  store ptr %164, ptr @Clip, align 8, !tbaa !10
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load ptr, ptr @stderr, align 8, !tbaa !10
  %168 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 21, i64 1, ptr %167) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

169:                                              ; preds = %163
  %170 = getelementptr inbounds i8, ptr %164, i64 384
  store ptr %170, ptr @Clip, align 8, !tbaa !10
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i64 [ -384, %169 ], [ %179, %171 ]
  %173 = trunc nsw i64 %172 to i32
  %174 = tail call i32 @llvm.smin.i32(i32 %173, i32 255)
  %175 = tail call i32 @llvm.smax.i32(i32 %174, i32 0)
  %176 = trunc nuw i32 %175 to i8
  %177 = load ptr, ptr @Clip, align 8, !tbaa !10
  %178 = getelementptr inbounds i8, ptr %177, i64 %172
  store i8 %176, ptr %178, align 1, !tbaa !12
  %179 = add nsw i64 %172, 1
  %180 = icmp eq i64 %179, 640
  br i1 %180, label %181, label %171

181:                                              ; preds = %171
  %182 = load i32, ptr @Reference_IDCT_Flag, align 4, !tbaa !6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  tail call void @Initialize_Reference_IDCT() #14
  br label %186

185:                                              ; preds = %181
  tail call void @Initialize_Fast_IDCT() #14
  br label %186

186:                                              ; preds = %184, %185
  br label %187

187:                                              ; preds = %528, %186
  %188 = phi i32 [ 0, %186 ], [ %472, %528 ]
  store ptr @base, ptr @ld, align 8, !tbaa !10
  %189 = tail call signext i32 @Get_Hdr() #14
  %190 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %187
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  %193 = tail call signext i32 @Get_Hdr() #14
  %194 = icmp eq i32 %193, %189
  %195 = load i32, ptr @Quiet_Flag, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 true, i1 %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr @stderr, align 8, !tbaa !10
  %200 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr %199) #17
  br label %201

201:                                              ; preds = %198, %192
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %202

202:                                              ; preds = %201, %187
  %203 = icmp eq i32 %189, 1
  br i1 %203, label %204, label %529

204:                                              ; preds = %202
  %205 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %206 = icmp ne i32 %205, 0
  %207 = load i32, ptr getelementptr inbounds (i8, ptr @enhan, i64 3148), align 4
  %208 = icmp ne i32 %207, 3
  %209 = select i1 %206, i1 %208, i1 false
  %210 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4
  %211 = freeze i32 %210
  %212 = icmp ne i32 %211, 1
  %213 = and i1 %209, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %204
  %215 = load ptr, ptr @stderr, align 8, !tbaa !10
  %216 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 29, i64 1, ptr %215) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

217:                                              ; preds = %204
  %218 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3144), align 8, !tbaa !15
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  store i32 1, ptr @progressive_sequence, align 4, !tbaa !6
  store i32 1, ptr @progressive_frame, align 4, !tbaa !6
  store i32 3, ptr @picture_structure, align 4, !tbaa !6
  store i32 1, ptr @frame_pred_frame_dct, align 4, !tbaa !6
  store i32 1, ptr @chroma_format, align 4, !tbaa !6
  store i32 5, ptr @matrix_coefficients, align 4, !tbaa !6
  %221 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %222 = add nsw i32 %221, 15
  %223 = sdiv i32 %222, 16
  store i32 %223, ptr @mb_width, align 4, !tbaa !6
  br label %235

224:                                              ; preds = %217
  %225 = load i32, ptr @progressive_sequence, align 4
  %226 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %227 = add nsw i32 %226, 15
  %228 = sdiv i32 %227, 16
  store i32 %228, ptr @mb_width, align 4, !tbaa !6
  %229 = icmp eq i32 %225, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %232 = add nsw i32 %231, 31
  %233 = sdiv i32 %232, 32
  %234 = shl nsw i32 %233, 1
  br label %240

235:                                              ; preds = %224, %220
  %236 = phi i32 [ %223, %220 ], [ %228, %224 ]
  %237 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %238 = add nsw i32 %237, 15
  %239 = sdiv i32 %238, 16
  br label %240

240:                                              ; preds = %235, %230
  %241 = phi i32 [ %228, %230 ], [ %236, %235 ]
  %242 = phi i32 [ %234, %230 ], [ %239, %235 ]
  store i32 %242, ptr @mb_height, align 4, !tbaa !6
  %243 = shl nsw i32 %241, 4
  store i32 %243, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %244 = shl nsw i32 %242, 4
  store i32 %244, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %245 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %246 = icmp eq i32 %245, 3
  %247 = shl nsw i32 %241, 3
  %248 = select i1 %246, i32 %243, i32 %247
  store i32 %248, ptr @Chroma_Width, align 4, !tbaa !6
  %249 = icmp eq i32 %245, 1
  %250 = zext i1 %249 to i32
  %251 = ashr exact i32 %244, %250
  store i32 %251, ptr @Chroma_Height, align 4, !tbaa !6
  %252 = add nsw i32 %245, -1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [3 x i32], ptr @Initialize_Sequence.Table_6_20, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !6
  store i32 %255, ptr @block_count, align 4, !tbaa !6
  %256 = mul nsw i32 %244, %243
  %257 = mul nsw i32 %251, %248
  %258 = load i32, ptr @Ersatz_Flag, align 4
  %259 = freeze i32 %258
  %260 = icmp eq i32 %259, 0
  %261 = icmp eq i32 %211, 2
  %262 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4
  %263 = load i32, ptr @lower_layer_prediction_vertical_size, align 4
  %264 = mul nsw i32 %263, %262
  %265 = sext i32 %256 to i64
  %266 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %266, ptr @backward_reference_frame, align 8, !tbaa !10
  %267 = icmp eq ptr %266, null
  br i1 %261, label %268, label %372

268:                                              ; preds = %240
  br i1 %260, label %270, label %269

269:                                              ; preds = %268
  br i1 %267, label %400, label %317

270:                                              ; preds = %268
  br i1 %267, label %400, label %271

271:                                              ; preds = %270
  %272 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %272, ptr @forward_reference_frame, align 8, !tbaa !10
  %273 = icmp eq ptr %272, null
  br i1 %273, label %406, label %274

274:                                              ; preds = %271
  %275 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %275, ptr @auxframe, align 8, !tbaa !10
  %276 = icmp eq ptr %275, null
  br i1 %276, label %412, label %277

277:                                              ; preds = %274
  %278 = sext i32 %264 to i64
  %279 = tail call noalias ptr @malloc(i64 noundef %278) #16
  store ptr %279, ptr @llframe0, align 8, !tbaa !10
  %280 = icmp eq ptr %279, null
  br i1 %280, label %446, label %281

281:                                              ; preds = %277
  %282 = tail call noalias ptr @malloc(i64 noundef %278) #16
  store ptr %282, ptr @llframe1, align 8, !tbaa !10
  %283 = icmp eq ptr %282, null
  br i1 %283, label %449, label %284

284:                                              ; preds = %281
  %285 = sext i32 %257 to i64
  %286 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %286, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %287 = icmp eq ptr %286, null
  br i1 %287, label %400, label %288

288:                                              ; preds = %284
  %289 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %289, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %290 = icmp eq ptr %289, null
  br i1 %290, label %406, label %291

291:                                              ; preds = %288
  %292 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %292, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  %293 = icmp eq ptr %292, null
  br i1 %293, label %412, label %294

294:                                              ; preds = %291
  %295 = sdiv i32 %264, 4
  %296 = sext i32 %295 to i64
  %297 = tail call noalias ptr @malloc(i64 noundef %296) #16
  store ptr %297, ptr getelementptr inbounds (i8, ptr @llframe0, i64 8), align 8, !tbaa !10
  %298 = icmp eq ptr %297, null
  br i1 %298, label %446, label %299

299:                                              ; preds = %294
  %300 = tail call noalias ptr @malloc(i64 noundef %296) #16
  store ptr %300, ptr getelementptr inbounds (i8, ptr @llframe1, i64 8), align 8, !tbaa !10
  %301 = icmp eq ptr %300, null
  br i1 %301, label %449, label %302

302:                                              ; preds = %299
  %303 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %303, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %304 = icmp eq ptr %303, null
  br i1 %304, label %400, label %305

305:                                              ; preds = %302
  %306 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %306, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %307 = icmp eq ptr %306, null
  br i1 %307, label %406, label %308

308:                                              ; preds = %305
  %309 = tail call noalias ptr @malloc(i64 noundef %285) #16
  store ptr %309, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  %310 = icmp eq ptr %309, null
  br i1 %310, label %412, label %311

311:                                              ; preds = %308
  %312 = tail call noalias ptr @malloc(i64 noundef %296) #16
  store ptr %312, ptr getelementptr inbounds (i8, ptr @llframe0, i64 16), align 8, !tbaa !10
  %313 = icmp eq ptr %312, null
  br i1 %313, label %446, label %314

314:                                              ; preds = %311
  %315 = tail call noalias ptr @malloc(i64 noundef %296) #16
  store ptr %315, ptr getelementptr inbounds (i8, ptr @llframe1, i64 16), align 8, !tbaa !10
  %316 = icmp eq ptr %315, null
  br i1 %316, label %449, label %452

317:                                              ; preds = %269
  %318 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %318, ptr @forward_reference_frame, align 8, !tbaa !10
  %319 = icmp eq ptr %318, null
  br i1 %319, label %406, label %320

320:                                              ; preds = %317
  %321 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %321, ptr @auxframe, align 8, !tbaa !10
  %322 = icmp eq ptr %321, null
  br i1 %322, label %412, label %323

323:                                              ; preds = %320
  %324 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %324, ptr @substitute_frame, align 8, !tbaa !10
  %325 = icmp eq ptr %324, null
  br i1 %325, label %418, label %326

326:                                              ; preds = %323
  %327 = sext i32 %264 to i64
  %328 = tail call noalias ptr @malloc(i64 noundef %327) #16
  store ptr %328, ptr @llframe0, align 8, !tbaa !10
  %329 = icmp eq ptr %328, null
  br i1 %329, label %446, label %330

330:                                              ; preds = %326
  %331 = tail call noalias ptr @malloc(i64 noundef %327) #16
  store ptr %331, ptr @llframe1, align 8, !tbaa !10
  %332 = icmp eq ptr %331, null
  br i1 %332, label %449, label %333

333:                                              ; preds = %330
  %334 = sext i32 %257 to i64
  %335 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %335, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %336 = icmp eq ptr %335, null
  br i1 %336, label %400, label %337

337:                                              ; preds = %333
  %338 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %338, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %339 = icmp eq ptr %338, null
  br i1 %339, label %406, label %340

340:                                              ; preds = %337
  %341 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %341, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  %342 = icmp eq ptr %341, null
  br i1 %342, label %412, label %343

343:                                              ; preds = %340
  %344 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %344, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %345 = icmp eq ptr %344, null
  br i1 %345, label %418, label %346

346:                                              ; preds = %343
  %347 = sdiv i32 %264, 4
  %348 = sext i32 %347 to i64
  %349 = tail call noalias ptr @malloc(i64 noundef %348) #16
  store ptr %349, ptr getelementptr inbounds (i8, ptr @llframe0, i64 8), align 8, !tbaa !10
  %350 = icmp eq ptr %349, null
  br i1 %350, label %446, label %351

351:                                              ; preds = %346
  %352 = tail call noalias ptr @malloc(i64 noundef %348) #16
  store ptr %352, ptr getelementptr inbounds (i8, ptr @llframe1, i64 8), align 8, !tbaa !10
  %353 = icmp eq ptr %352, null
  br i1 %353, label %449, label %354

354:                                              ; preds = %351
  %355 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %355, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %356 = icmp eq ptr %355, null
  br i1 %356, label %400, label %357

357:                                              ; preds = %354
  %358 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %358, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %359 = icmp eq ptr %358, null
  br i1 %359, label %406, label %360

360:                                              ; preds = %357
  %361 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %361, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  %362 = icmp eq ptr %361, null
  br i1 %362, label %412, label %363

363:                                              ; preds = %360
  %364 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %364, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 16), align 8, !tbaa !10
  %365 = icmp eq ptr %364, null
  br i1 %365, label %418, label %366

366:                                              ; preds = %363
  %367 = tail call noalias ptr @malloc(i64 noundef %348) #16
  store ptr %367, ptr getelementptr inbounds (i8, ptr @llframe0, i64 16), align 8, !tbaa !10
  %368 = icmp eq ptr %367, null
  br i1 %368, label %446, label %369

369:                                              ; preds = %366
  %370 = tail call noalias ptr @malloc(i64 noundef %348) #16
  store ptr %370, ptr getelementptr inbounds (i8, ptr @llframe1, i64 16), align 8, !tbaa !10
  %371 = icmp eq ptr %370, null
  br i1 %371, label %449, label %452

372:                                              ; preds = %240
  br i1 %260, label %374, label %373

373:                                              ; preds = %372
  br i1 %267, label %400, label %403

374:                                              ; preds = %372
  br i1 %267, label %400, label %375

375:                                              ; preds = %374
  %376 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %376, ptr @forward_reference_frame, align 8, !tbaa !10
  %377 = icmp eq ptr %376, null
  br i1 %377, label %406, label %378

378:                                              ; preds = %375
  %379 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %379, ptr @auxframe, align 8, !tbaa !10
  %380 = icmp eq ptr %379, null
  br i1 %380, label %412, label %381

381:                                              ; preds = %378
  %382 = sext i32 %257 to i64
  %383 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %383, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %384 = icmp eq ptr %383, null
  br i1 %384, label %400, label %385

385:                                              ; preds = %381
  %386 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %386, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %387 = icmp eq ptr %386, null
  br i1 %387, label %406, label %388

388:                                              ; preds = %385
  %389 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %389, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  %390 = icmp eq ptr %389, null
  br i1 %390, label %412, label %391

391:                                              ; preds = %388
  %392 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %392, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %393 = icmp eq ptr %392, null
  br i1 %393, label %400, label %394

394:                                              ; preds = %391
  %395 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %395, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %396 = icmp eq ptr %395, null
  br i1 %396, label %406, label %397

397:                                              ; preds = %394
  %398 = tail call noalias ptr @malloc(i64 noundef %382) #16
  store ptr %398, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  %399 = icmp eq ptr %398, null
  br i1 %399, label %412, label %465

400:                                              ; preds = %434, %421, %391, %381, %374, %373, %354, %333, %302, %284, %270, %269
  %401 = load ptr, ptr @stderr, align 8, !tbaa !10
  %402 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 41, i64 1, ptr %401) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

403:                                              ; preds = %373
  %404 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %404, ptr @forward_reference_frame, align 8, !tbaa !10
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %409

406:                                              ; preds = %437, %425, %403, %394, %385, %375, %357, %337, %317, %305, %288, %271
  %407 = load ptr, ptr @stderr, align 8, !tbaa !10
  %408 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 40, i64 1, ptr %407) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

409:                                              ; preds = %403
  %410 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %410, ptr @auxframe, align 8, !tbaa !10
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %440, %428, %409, %397, %388, %378, %360, %340, %320, %308, %291, %274
  %413 = load ptr, ptr @stderr, align 8, !tbaa !10
  %414 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 25, i64 1, ptr %413) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

415:                                              ; preds = %409
  %416 = tail call noalias ptr @malloc(i64 noundef %265) #16
  store ptr %416, ptr @substitute_frame, align 8, !tbaa !10
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %421

418:                                              ; preds = %443, %431, %415, %363, %343, %323
  %419 = load ptr, ptr @stderr, align 8, !tbaa !10
  %420 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 33, i64 1, ptr %419) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

421:                                              ; preds = %415
  %422 = sext i32 %257 to i64
  %423 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %423, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  %424 = icmp eq ptr %423, null
  br i1 %424, label %400, label %425

425:                                              ; preds = %421
  %426 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %426, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  %427 = icmp eq ptr %426, null
  br i1 %427, label %406, label %428

428:                                              ; preds = %425
  %429 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %429, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  %430 = icmp eq ptr %429, null
  br i1 %430, label %412, label %431

431:                                              ; preds = %428
  %432 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %432, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %433 = icmp eq ptr %432, null
  br i1 %433, label %418, label %434

434:                                              ; preds = %431
  %435 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %435, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  %436 = icmp eq ptr %435, null
  br i1 %436, label %400, label %437

437:                                              ; preds = %434
  %438 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %438, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  %439 = icmp eq ptr %438, null
  br i1 %439, label %406, label %440

440:                                              ; preds = %437
  %441 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %441, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  %442 = icmp eq ptr %441, null
  br i1 %442, label %412, label %443

443:                                              ; preds = %440
  %444 = tail call noalias ptr @malloc(i64 noundef %422) #16
  store ptr %444, ptr getelementptr inbounds (i8, ptr @substitute_frame, i64 16), align 8, !tbaa !10
  %445 = icmp eq ptr %444, null
  br i1 %445, label %418, label %465

446:                                              ; preds = %366, %346, %326, %311, %294, %277
  %447 = load ptr, ptr @stderr, align 8, !tbaa !10
  %448 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 23, i64 1, ptr %447) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

449:                                              ; preds = %369, %351, %330, %314, %299, %281
  %450 = load ptr, ptr @stderr, align 8, !tbaa !10
  %451 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 23, i64 1, ptr %450) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

452:                                              ; preds = %369, %314
  %453 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !6
  %454 = mul nsw i32 %453, %263
  %455 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !6
  %456 = sdiv i32 %454, %455
  %457 = mul nsw i32 %456, %262
  %458 = sext i32 %457 to i64
  %459 = shl nsw i64 %458, 1
  %460 = tail call noalias ptr @malloc(i64 noundef %459) #16
  store ptr %460, ptr @lltmp, align 8, !tbaa !10
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %452
  %463 = load ptr, ptr @stderr, align 8, !tbaa !10
  %464 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 20, i64 1, ptr %463) #17
  tail call void @exit(i32 noundef signext 1) #12
  unreachable

465:                                              ; preds = %452, %443, %397
  tail call void @Decode_Picture(i32 noundef signext %188, i32 noundef signext 0) #14
  %466 = load i32, ptr @Second_Field, align 4, !tbaa !6
  %467 = icmp eq i32 %466, 0
  %468 = zext i1 %467 to i32
  %469 = add nsw i32 %188, %468
  br label %470

470:                                              ; preds = %488, %465
  %471 = phi i32 [ %468, %465 ], [ %492, %488 ]
  %472 = phi i32 [ %469, %465 ], [ %493, %488 ]
  store ptr @base, ptr @ld, align 8, !tbaa !10
  %473 = tail call signext i32 @Get_Hdr() #14
  %474 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %486, label %476

476:                                              ; preds = %470
  store ptr @enhan, ptr @ld, align 8, !tbaa !10
  %477 = tail call signext i32 @Get_Hdr() #14
  %478 = icmp eq i32 %477, %473
  %479 = load i32, ptr @Quiet_Flag, align 4
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %478, i1 true, i1 %480
  br i1 %481, label %485, label %482

482:                                              ; preds = %476
  %483 = load ptr, ptr @stderr, align 8, !tbaa !10
  %484 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr %483) #17
  br label %485

485:                                              ; preds = %482, %476
  store ptr @base, ptr @ld, align 8, !tbaa !10
  br label %486

486:                                              ; preds = %485, %470
  %487 = icmp eq i32 %473, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %486
  tail call void @Decode_Picture(i32 noundef signext %472, i32 noundef signext %471) #14
  %489 = load i32, ptr @Second_Field, align 4, !tbaa !6
  %490 = icmp eq i32 %489, 0
  %491 = zext i1 %490 to i32
  %492 = add nuw nsw i32 %471, %491
  %493 = add nsw i32 %472, %491
  br label %470

494:                                              ; preds = %486
  %495 = icmp eq i32 %471, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %494
  tail call void @Output_Last_Frame_of_Sequence(i32 noundef signext %472) #14
  br label %497

497:                                              ; preds = %496, %494
  store i32 0, ptr getelementptr inbounds (i8, ptr @base, i64 3144), align 8, !tbaa !15
  %498 = load ptr, ptr @backward_reference_frame, align 8, !tbaa !10
  tail call void @free(ptr noundef %498) #14
  %499 = load ptr, ptr @forward_reference_frame, align 8, !tbaa !10
  tail call void @free(ptr noundef %499) #14
  %500 = load ptr, ptr @auxframe, align 8, !tbaa !10
  tail call void @free(ptr noundef %500) #14
  %501 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !16
  %502 = icmp eq i32 %501, 2
  br i1 %502, label %503, label %506

503:                                              ; preds = %497
  %504 = load ptr, ptr @llframe0, align 8, !tbaa !10
  tail call void @free(ptr noundef %504) #14
  %505 = load ptr, ptr @llframe1, align 8, !tbaa !10
  tail call void @free(ptr noundef %505) #14
  br label %506

506:                                              ; preds = %503, %497
  %507 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !10
  tail call void @free(ptr noundef %507) #14
  %508 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !10
  tail call void @free(ptr noundef %508) #14
  %509 = load ptr, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !10
  tail call void @free(ptr noundef %509) #14
  %510 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !16
  %511 = icmp eq i32 %510, 2
  br i1 %511, label %512, label %515

512:                                              ; preds = %506
  %513 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe0, i64 8), align 8, !tbaa !10
  tail call void @free(ptr noundef %513) #14
  %514 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe1, i64 8), align 8, !tbaa !10
  tail call void @free(ptr noundef %514) #14
  br label %515

515:                                              ; preds = %512, %506
  %516 = load ptr, ptr getelementptr inbounds (i8, ptr @backward_reference_frame, i64 16), align 8, !tbaa !10
  tail call void @free(ptr noundef %516) #14
  %517 = load ptr, ptr getelementptr inbounds (i8, ptr @forward_reference_frame, i64 16), align 8, !tbaa !10
  tail call void @free(ptr noundef %517) #14
  %518 = load ptr, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !10
  tail call void @free(ptr noundef %518) #14
  %519 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !16
  %520 = icmp eq i32 %519, 2
  br i1 %520, label %521, label %528

521:                                              ; preds = %515
  %522 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe0, i64 16), align 8, !tbaa !10
  tail call void @free(ptr noundef %522) #14
  %523 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe1, i64 16), align 8, !tbaa !10
  tail call void @free(ptr noundef %523) #14
  %524 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3148), align 4, !tbaa !16
  %525 = icmp eq i32 %524, 2
  br i1 %525, label %526, label %528

526:                                              ; preds = %521
  %527 = load ptr, ptr @lltmp, align 8, !tbaa !10
  tail call void @free(ptr noundef %527) #14
  br label %528

528:                                              ; preds = %526, %521, %515
  br label %187

529:                                              ; preds = %202
  %530 = load i32, ptr @base, align 8, !tbaa !13
  %531 = tail call signext i32 @close(i32 noundef signext %530) #14
  %532 = load i32, ptr @Two_Streams, align 4, !tbaa !6
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %537, label %534

534:                                              ; preds = %529
  %535 = load i32, ptr @enhan, align 8, !tbaa !13
  %536 = tail call signext i32 @close(i32 noundef signext %535) #14
  br label %537

537:                                              ; preds = %534, %529
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef signext i32 @open(ptr nocapture noundef readonly, i32 noundef signext, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @Initialize_Buffer() local_unnamed_addr #4

declare dso_local signext i32 @Show_Bits(i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
define dso_local void @Error(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !10
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %0) #15
  tail call void @exit(i32 noundef signext 1) #12
  unreachable
}

declare dso_local void @next_start_code() local_unnamed_addr #4

declare dso_local signext i32 @lseek(...) local_unnamed_addr #4

declare dso_local signext i32 @close(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
define dso_local void @Print_Bits(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = xor i32 %6, -1
  %8 = add i32 %7, %1
  %9 = lshr i32 %0, %8
  %10 = and i32 %9, 1
  %11 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef signext %10)
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare dso_local void @Initialize_Reference_IDCT() local_unnamed_addr #4

declare dso_local void @Initialize_Fast_IDCT() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef signext) local_unnamed_addr #7

declare dso_local signext i32 @Get_Hdr() local_unnamed_addr #4

declare dso_local void @Decode_Picture(i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @Output_Last_Frame_of_Sequence(i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }

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
!13 = !{!14, !7, i64 0}
!14 = !{!"layer_data", !7, i64 0, !8, i64 4, !11, i64 2056, !8, i64 2064, !7, i64 2080, !11, i64 2088, !7, i64 2096, !7, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !7, i64 3128, !7, i64 3132, !7, i64 3136, !7, i64 3140, !7, i64 3144, !7, i64 3148, !7, i64 3152, !7, i64 3156, !7, i64 3160, !7, i64 3164, !7, i64 3168, !7, i64 3172, !8, i64 3176}
!15 = !{!14, !7, i64 3144}
!16 = !{!14, !7, i64 3148}
