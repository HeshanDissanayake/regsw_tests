; ModuleID = 'gethdr.c'
source_filename = "gethdr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@Quiet_Flag = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unexpected next_start_code %08x (ignored)\0A\00", align 1
@ld = external dso_local local_unnamed_addr global ptr, align 8
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@Non_Linear_quantizer_scale = external dso_local local_unnamed_addr global [32 x i8], align 1
@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@aspect_ratio_information = external dso_local local_unnamed_addr global i32, align 4
@frame_rate_code = external dso_local local_unnamed_addr global i32, align 4
@bit_rate_value = external dso_local local_unnamed_addr global i32, align 4
@vbv_buffer_size = external dso_local local_unnamed_addr global i32, align 4
@constrained_parameters_flag = external dso_local local_unnamed_addr global i32, align 4
@scan = external dso_local local_unnamed_addr global [2 x [64 x i8]], align 1
@default_intra_quantizer_matrix = external dso_local local_unnamed_addr global [64 x i8], align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"reserved extension start code ID %d\0A\00", align 1
@layer_id = external dso_local local_unnamed_addr global i32, align 4
@profile_and_level_indication = external dso_local local_unnamed_addr global i32, align 4
@progressive_sequence = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@low_delay = external dso_local local_unnamed_addr global i32, align 4
@frame_rate_extension_n = external dso_local local_unnamed_addr global i32, align 4
@frame_rate_extension_d = external dso_local local_unnamed_addr global i32, align 4
@frame_rate_Table = internal unnamed_addr constant [16 x double] [double 0.000000e+00, double 0x4036FA1E2D85C116, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 8
@frame_rate = external dso_local local_unnamed_addr global double, align 8
@profile = external dso_local local_unnamed_addr global i32, align 4
@level = external dso_local local_unnamed_addr global i32, align 4
@bit_rate = external dso_local local_unnamed_addr global double, align 8
@video_format = external dso_local local_unnamed_addr global i32, align 4
@color_description = external dso_local local_unnamed_addr global i32, align 4
@color_primaries = external dso_local local_unnamed_addr global i32, align 4
@transfer_characteristics = external dso_local local_unnamed_addr global i32, align 4
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4
@display_horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@display_vertical_size = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_prediction_horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_prediction_vertical_size = external dso_local local_unnamed_addr global i32, align 4
@horizontal_subsampling_factor_m = external dso_local local_unnamed_addr global i32, align 4
@horizontal_subsampling_factor_n = external dso_local local_unnamed_addr global i32, align 4
@vertical_subsampling_factor_m = external dso_local local_unnamed_addr global i32, align 4
@vertical_subsampling_factor_n = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"temporal scalability not implemented\0A\00", align 1
@repeat_first_field = external dso_local local_unnamed_addr global i32, align 4
@top_field_first = external dso_local local_unnamed_addr global i32, align 4
@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@frame_center_horizontal_offset = external dso_local local_unnamed_addr global [3 x i32], align 4
@frame_center_vertical_offset = external dso_local local_unnamed_addr global [3 x i32], align 4
@f_code = external dso_local local_unnamed_addr global [2 x [2 x i32]], align 4
@intra_dc_precision = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_frame_dct = external dso_local local_unnamed_addr global i32, align 4
@concealment_motion_vectors = external dso_local local_unnamed_addr global i32, align 4
@intra_vlc_format = external dso_local local_unnamed_addr global i32, align 4
@chroma_420_type = external dso_local local_unnamed_addr global i32, align 4
@progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@composite_display_flag = external dso_local local_unnamed_addr global i32, align 4
@v_axis = external dso_local local_unnamed_addr global i32, align 4
@field_sequence = external dso_local local_unnamed_addr global i32, align 4
@sub_carrier = external dso_local local_unnamed_addr global i32, align 4
@burst_amplitude = external dso_local local_unnamed_addr global i32, align 4
@sub_carrier_phase = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_temporal_reference = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_horizontal_offset = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_vertical_offset = external dso_local local_unnamed_addr global i32, align 4
@spatial_temporal_weight_code_table_index = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_deinterlaced_field_select = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"temporal scalability not supported\0A\00", align 1
@copyright_flag = external dso_local local_unnamed_addr global i32, align 4
@copyright_identifier = external dso_local local_unnamed_addr global i32, align 4
@original_or_copy = external dso_local local_unnamed_addr global i32, align 4
@copyright_number_1 = external dso_local local_unnamed_addr global i32, align 4
@copyright_number_2 = external dso_local local_unnamed_addr global i32, align 4
@copyright_number_3 = external dso_local local_unnamed_addr global i32, align 4
@Verbose_Flag = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"copyright_extension (byte %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  copyright_flag =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  copyright_identifier=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  original_or_copy = %d (original=1, copy=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  copyright_number_1=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"  copyright_number_2=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  copyright_number_3=%d\0A\00", align 1
@base = external dso_local global %struct.layer_data, align 8
@True_Framenum_max = internal unnamed_addr global i32 -1, align 4
@Temporal_Reference_Base = internal unnamed_addr global i32 0, align 4
@Temporal_Reference_GOP_Reset = internal unnamed_addr global i1 false, align 4
@drop_flag = external dso_local local_unnamed_addr global i32, align 4
@hour = external dso_local local_unnamed_addr global i32, align 4
@minute = external dso_local local_unnamed_addr global i32, align 4
@sec = external dso_local local_unnamed_addr global i32, align 4
@frame = external dso_local local_unnamed_addr global i32, align 4
@closed_gop = external dso_local local_unnamed_addr global i32, align 4
@broken_link = external dso_local local_unnamed_addr global i32, align 4
@temporal_reference = external dso_local local_unnamed_addr global i32, align 4
@picture_coding_type = external dso_local local_unnamed_addr global i32, align 4
@vbv_delay = external dso_local local_unnamed_addr global i32, align 4
@full_pel_forward_vector = external dso_local local_unnamed_addr global i32, align 4
@forward_f_code = external dso_local local_unnamed_addr global i32, align 4
@full_pel_backward_vector = external dso_local local_unnamed_addr global i32, align 4
@backward_f_code = external dso_local local_unnamed_addr global i32, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap = internal unnamed_addr global i1 false, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_old = internal unnamed_addr global i32 0, align 4
@True_Framenum = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @Get_Hdr() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %224, %0
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2096
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = and i32 %4, 7
  tail call void @Flush_Buffer(i32 noundef signext %5) #4
  %6 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1, %8
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %9 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %8

11:                                               ; preds = %8, %1
  %12 = tail call signext i32 @Get_Bits32() #4
  switch i32 %12, label %221 [
    i32 435, label %13
    i32 440, label %145
    i32 256, label %160
    i32 439, label %228
  ]

13:                                               ; preds = %11
  %14 = tail call signext i32 @Get_Bits(i32 noundef signext 12) #4
  store i32 %14, ptr @horizontal_size, align 4, !tbaa !13
  %15 = tail call signext i32 @Get_Bits(i32 noundef signext 12) #4
  store i32 %15, ptr @vertical_size, align 4, !tbaa !13
  %16 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %16, ptr @aspect_ratio_information, align 4, !tbaa !13
  %17 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %17, ptr @frame_rate_code, align 4, !tbaa !13
  %18 = tail call signext i32 @Get_Bits(i32 noundef signext 18) #4
  store i32 %18, ptr @bit_rate_value, align 4, !tbaa !13
  %19 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %20 = tail call signext i32 @Get_Bits(i32 noundef signext 10) #4
  store i32 %20, ptr @vbv_buffer_size, align 4, !tbaa !13
  %21 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %21, ptr @constrained_parameters_flag, align 4, !tbaa !13
  %22 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %23 = load ptr, ptr @ld, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 3128
  store i32 %22, ptr %24, align 8, !tbaa !14
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = getelementptr inbounds i8, ptr %23, i64 2104
  br label %39

28:                                               ; preds = %13, %28
  %29 = phi i64 [ %37, %28 ], [ 0, %13 ]
  %30 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %31 = load ptr, ptr @ld, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 2104
  %33 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %29
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [64 x i32], ptr %32, i64 0, i64 %35
  store i32 %30, ptr %36, align 4, !tbaa !13
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, 64
  br i1 %38, label %47, label %28

39:                                               ; preds = %39, %26
  %40 = phi i64 [ 0, %26 ], [ %45, %39 ]
  %41 = getelementptr inbounds [64 x i8], ptr @default_intra_quantizer_matrix, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [64 x i32], ptr %27, i64 0, i64 %40
  store i32 %43, ptr %44, align 4, !tbaa !13
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, 64
  br i1 %46, label %47, label %39

47:                                               ; preds = %28, %39
  %48 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %49 = load ptr, ptr @ld, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 3132
  store i32 %48, ptr %50, align 4, !tbaa !16
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %52, label %117

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, ptr %49, i64 2360
  store i32 16, ptr %53, align 4, !tbaa !13
  %54 = getelementptr inbounds i8, ptr %49, i64 2364
  store i32 16, ptr %54, align 4, !tbaa !13
  %55 = getelementptr inbounds i8, ptr %49, i64 2368
  store i32 16, ptr %55, align 4, !tbaa !13
  %56 = getelementptr inbounds i8, ptr %49, i64 2372
  store i32 16, ptr %56, align 4, !tbaa !13
  %57 = getelementptr inbounds i8, ptr %49, i64 2376
  store i32 16, ptr %57, align 4, !tbaa !13
  %58 = getelementptr inbounds i8, ptr %49, i64 2380
  store i32 16, ptr %58, align 4, !tbaa !13
  %59 = getelementptr inbounds i8, ptr %49, i64 2384
  store i32 16, ptr %59, align 4, !tbaa !13
  %60 = getelementptr inbounds i8, ptr %49, i64 2388
  store i32 16, ptr %60, align 4, !tbaa !13
  %61 = getelementptr inbounds i8, ptr %49, i64 2392
  store i32 16, ptr %61, align 4, !tbaa !13
  %62 = getelementptr inbounds i8, ptr %49, i64 2396
  store i32 16, ptr %62, align 4, !tbaa !13
  %63 = getelementptr inbounds i8, ptr %49, i64 2400
  store i32 16, ptr %63, align 4, !tbaa !13
  %64 = getelementptr inbounds i8, ptr %49, i64 2404
  store i32 16, ptr %64, align 4, !tbaa !13
  %65 = getelementptr inbounds i8, ptr %49, i64 2408
  store i32 16, ptr %65, align 4, !tbaa !13
  %66 = getelementptr inbounds i8, ptr %49, i64 2412
  store i32 16, ptr %66, align 4, !tbaa !13
  %67 = getelementptr inbounds i8, ptr %49, i64 2416
  store i32 16, ptr %67, align 4, !tbaa !13
  %68 = getelementptr inbounds i8, ptr %49, i64 2420
  store i32 16, ptr %68, align 4, !tbaa !13
  %69 = getelementptr inbounds i8, ptr %49, i64 2424
  store i32 16, ptr %69, align 4, !tbaa !13
  %70 = getelementptr inbounds i8, ptr %49, i64 2428
  store i32 16, ptr %70, align 4, !tbaa !13
  %71 = getelementptr inbounds i8, ptr %49, i64 2432
  store i32 16, ptr %71, align 4, !tbaa !13
  %72 = getelementptr inbounds i8, ptr %49, i64 2436
  store i32 16, ptr %72, align 4, !tbaa !13
  %73 = getelementptr inbounds i8, ptr %49, i64 2440
  store i32 16, ptr %73, align 4, !tbaa !13
  %74 = getelementptr inbounds i8, ptr %49, i64 2444
  store i32 16, ptr %74, align 4, !tbaa !13
  %75 = getelementptr inbounds i8, ptr %49, i64 2448
  store i32 16, ptr %75, align 4, !tbaa !13
  %76 = getelementptr inbounds i8, ptr %49, i64 2452
  store i32 16, ptr %76, align 4, !tbaa !13
  %77 = getelementptr inbounds i8, ptr %49, i64 2456
  store i32 16, ptr %77, align 4, !tbaa !13
  %78 = getelementptr inbounds i8, ptr %49, i64 2460
  store i32 16, ptr %78, align 4, !tbaa !13
  %79 = getelementptr inbounds i8, ptr %49, i64 2464
  store i32 16, ptr %79, align 4, !tbaa !13
  %80 = getelementptr inbounds i8, ptr %49, i64 2468
  store i32 16, ptr %80, align 4, !tbaa !13
  %81 = getelementptr inbounds i8, ptr %49, i64 2472
  store i32 16, ptr %81, align 4, !tbaa !13
  %82 = getelementptr inbounds i8, ptr %49, i64 2476
  store i32 16, ptr %82, align 4, !tbaa !13
  %83 = getelementptr inbounds i8, ptr %49, i64 2480
  store i32 16, ptr %83, align 4, !tbaa !13
  %84 = getelementptr inbounds i8, ptr %49, i64 2484
  store i32 16, ptr %84, align 4, !tbaa !13
  %85 = getelementptr inbounds i8, ptr %49, i64 2488
  store i32 16, ptr %85, align 4, !tbaa !13
  %86 = getelementptr inbounds i8, ptr %49, i64 2492
  store i32 16, ptr %86, align 4, !tbaa !13
  %87 = getelementptr inbounds i8, ptr %49, i64 2496
  store i32 16, ptr %87, align 4, !tbaa !13
  %88 = getelementptr inbounds i8, ptr %49, i64 2500
  store i32 16, ptr %88, align 4, !tbaa !13
  %89 = getelementptr inbounds i8, ptr %49, i64 2504
  store i32 16, ptr %89, align 4, !tbaa !13
  %90 = getelementptr inbounds i8, ptr %49, i64 2508
  store i32 16, ptr %90, align 4, !tbaa !13
  %91 = getelementptr inbounds i8, ptr %49, i64 2512
  store i32 16, ptr %91, align 4, !tbaa !13
  %92 = getelementptr inbounds i8, ptr %49, i64 2516
  store i32 16, ptr %92, align 4, !tbaa !13
  %93 = getelementptr inbounds i8, ptr %49, i64 2520
  store i32 16, ptr %93, align 4, !tbaa !13
  %94 = getelementptr inbounds i8, ptr %49, i64 2524
  store i32 16, ptr %94, align 4, !tbaa !13
  %95 = getelementptr inbounds i8, ptr %49, i64 2528
  store i32 16, ptr %95, align 4, !tbaa !13
  %96 = getelementptr inbounds i8, ptr %49, i64 2532
  store i32 16, ptr %96, align 4, !tbaa !13
  %97 = getelementptr inbounds i8, ptr %49, i64 2536
  store i32 16, ptr %97, align 4, !tbaa !13
  %98 = getelementptr inbounds i8, ptr %49, i64 2540
  store i32 16, ptr %98, align 4, !tbaa !13
  %99 = getelementptr inbounds i8, ptr %49, i64 2544
  store i32 16, ptr %99, align 4, !tbaa !13
  %100 = getelementptr inbounds i8, ptr %49, i64 2548
  store i32 16, ptr %100, align 4, !tbaa !13
  %101 = getelementptr inbounds i8, ptr %49, i64 2552
  store i32 16, ptr %101, align 4, !tbaa !13
  %102 = getelementptr inbounds i8, ptr %49, i64 2556
  store i32 16, ptr %102, align 4, !tbaa !13
  %103 = getelementptr inbounds i8, ptr %49, i64 2560
  store i32 16, ptr %103, align 4, !tbaa !13
  %104 = getelementptr inbounds i8, ptr %49, i64 2564
  store i32 16, ptr %104, align 4, !tbaa !13
  %105 = getelementptr inbounds i8, ptr %49, i64 2568
  store i32 16, ptr %105, align 4, !tbaa !13
  %106 = getelementptr inbounds i8, ptr %49, i64 2572
  store i32 16, ptr %106, align 4, !tbaa !13
  %107 = getelementptr inbounds i8, ptr %49, i64 2576
  store i32 16, ptr %107, align 4, !tbaa !13
  %108 = getelementptr inbounds i8, ptr %49, i64 2580
  store i32 16, ptr %108, align 4, !tbaa !13
  %109 = getelementptr inbounds i8, ptr %49, i64 2584
  store i32 16, ptr %109, align 4, !tbaa !13
  %110 = getelementptr inbounds i8, ptr %49, i64 2588
  store i32 16, ptr %110, align 4, !tbaa !13
  %111 = getelementptr inbounds i8, ptr %49, i64 2592
  store i32 16, ptr %111, align 4, !tbaa !13
  %112 = getelementptr inbounds i8, ptr %49, i64 2596
  store i32 16, ptr %112, align 4, !tbaa !13
  %113 = getelementptr inbounds i8, ptr %49, i64 2600
  store i32 16, ptr %113, align 4, !tbaa !13
  %114 = getelementptr inbounds i8, ptr %49, i64 2604
  store i32 16, ptr %114, align 4, !tbaa !13
  %115 = getelementptr inbounds i8, ptr %49, i64 2608
  store i32 16, ptr %115, align 4, !tbaa !13
  %116 = getelementptr inbounds i8, ptr %49, i64 2612
  store i32 16, ptr %116, align 4, !tbaa !13
  br label %128

117:                                              ; preds = %47, %117
  %118 = phi i64 [ %126, %117 ], [ 0, %47 ]
  %119 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %120 = load ptr, ptr @ld, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 2360
  %122 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %118
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds [64 x i32], ptr %121, i64 0, i64 %124
  store i32 %119, ptr %125, align 4, !tbaa !13
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, 64
  br i1 %127, label %128, label %117

128:                                              ; preds = %117, %52
  %129 = phi ptr [ %49, %52 ], [ %120, %117 ]
  %130 = getelementptr inbounds i8, ptr %129, i64 2104
  %131 = getelementptr inbounds i8, ptr %129, i64 2616
  %132 = getelementptr inbounds i8, ptr %129, i64 2360
  %133 = getelementptr inbounds i8, ptr %129, i64 2872
  br label %134

134:                                              ; preds = %134, %128
  %135 = phi i64 [ 0, %128 ], [ %142, %134 ]
  %136 = getelementptr inbounds [64 x i32], ptr %130, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !13
  %138 = getelementptr inbounds [64 x i32], ptr %131, i64 0, i64 %135
  store i32 %137, ptr %138, align 4, !tbaa !13
  %139 = getelementptr inbounds [64 x i32], ptr %132, i64 0, i64 %135
  %140 = load i32, ptr %139, align 4, !tbaa !13
  %141 = getelementptr inbounds [64 x i32], ptr %133, i64 0, i64 %135
  store i32 %140, ptr %141, align 4, !tbaa !13
  %142 = add nuw nsw i64 %135, 1
  %143 = icmp eq i64 %142, 64
  br i1 %143, label %144, label %134

144:                                              ; preds = %134
  tail call fastcc void @extension_and_user_data()
  br label %224

145:                                              ; preds = %11
  %146 = load ptr, ptr @ld, align 8, !tbaa !6
  %147 = icmp eq ptr %146, @base
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, ptr @True_Framenum_max, align 4, !tbaa !13
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr @Temporal_Reference_Base, align 4, !tbaa !13
  store i1 true, ptr @Temporal_Reference_GOP_Reset, align 4
  br label %151

151:                                              ; preds = %145, %148
  %152 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %152, ptr @drop_flag, align 4, !tbaa !13
  %153 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %153, ptr @hour, align 4, !tbaa !13
  %154 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  store i32 %154, ptr @minute, align 4, !tbaa !13
  %155 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %156 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  store i32 %156, ptr @sec, align 4, !tbaa !13
  %157 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  store i32 %157, ptr @frame, align 4, !tbaa !13
  %158 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %158, ptr @closed_gop, align 4, !tbaa !13
  %159 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %159, ptr @broken_link, align 4, !tbaa !13
  tail call fastcc void @extension_and_user_data()
  br label %224

160:                                              ; preds = %11
  %161 = load ptr, ptr @ld, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 3160
  store i32 0, ptr %162, align 8, !tbaa !17
  %163 = tail call signext i32 @Get_Bits(i32 noundef signext 10) #4
  store i32 %163, ptr @temporal_reference, align 4, !tbaa !13
  %164 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  store i32 %164, ptr @picture_coding_type, align 4, !tbaa !13
  %165 = tail call signext i32 @Get_Bits(i32 noundef signext 16) #4
  store i32 %165, ptr @vbv_delay, align 4, !tbaa !13
  %166 = load i32, ptr @picture_coding_type, align 4
  %167 = and i32 %166, -2
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %170, ptr @full_pel_forward_vector, align 4, !tbaa !13
  %171 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  store i32 %171, ptr @forward_f_code, align 4, !tbaa !13
  %172 = load i32, ptr @picture_coding_type, align 4, !tbaa !13
  br label %173

173:                                              ; preds = %169, %160
  %174 = phi i32 [ %166, %160 ], [ %172, %169 ]
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %177, ptr @full_pel_backward_vector, align 4, !tbaa !13
  %178 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  store i32 %178, ptr @backward_f_code, align 4, !tbaa !13
  br label %179

179:                                              ; preds = %176, %173
  %180 = tail call signext i32 @Get_Bits1() #4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179, %182
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %183 = tail call signext i32 @Get_Bits1() #4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %182

185:                                              ; preds = %182, %179
  tail call fastcc void @extension_and_user_data()
  %186 = load ptr, ptr @ld, align 8, !tbaa !6
  %187 = icmp eq ptr %186, @base
  br i1 %187, label %188, label %228

188:                                              ; preds = %185
  %189 = load i32, ptr @picture_coding_type, align 4, !tbaa !13
  %190 = icmp eq i32 %189, 3
  %191 = load i32, ptr @temporal_reference, align 4, !tbaa !13
  br i1 %190, label %192, label %195

192:                                              ; preds = %188
  %193 = load i1, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %194 = load i32, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  br label %210

195:                                              ; preds = %188
  %196 = load i32, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %197 = icmp eq i32 %191, %196
  %198 = load i1, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br i1 %197, label %210, label %199

199:                                              ; preds = %195
  br i1 %198, label %200, label %203

200:                                              ; preds = %199
  %201 = load i32, ptr @Temporal_Reference_Base, align 4, !tbaa !13
  %202 = add nsw i32 %201, 1024
  store i32 %202, ptr @Temporal_Reference_Base, align 4, !tbaa !13
  store i1 false, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %203

203:                                              ; preds = %200, %199
  %204 = icmp sge i32 %191, %196
  %205 = load i1, ptr @Temporal_Reference_GOP_Reset, align 4
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  store i1 true, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %208

208:                                              ; preds = %207, %203
  %209 = xor i1 %206, true
  store i32 %191, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4, !tbaa !13
  store i1 false, ptr @Temporal_Reference_GOP_Reset, align 4
  br label %210

210:                                              ; preds = %208, %195, %192
  %211 = phi i32 [ %194, %192 ], [ %191, %208 ], [ %191, %195 ]
  %212 = phi i1 [ %193, %192 ], [ %209, %208 ], [ %198, %195 ]
  %213 = load i32, ptr @Temporal_Reference_Base, align 4, !tbaa !13
  %214 = add nsw i32 %213, %191
  %215 = icmp sle i32 %191, %211
  %216 = select i1 %212, i1 %215, i1 false
  %217 = add nsw i32 %214, 1024
  %218 = select i1 %216, i32 %217, i32 %214
  store i32 %218, ptr @True_Framenum, align 4, !tbaa !13
  %219 = load i32, ptr @True_Framenum_max, align 4
  %220 = tail call i32 @llvm.smax.i32(i32 %218, i32 %219)
  store i32 %220, ptr @True_Framenum_max, align 4, !tbaa !13
  br label %228

221:                                              ; preds = %11
  %222 = load i32, ptr @Quiet_Flag, align 4, !tbaa !13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221, %225, %151, %144
  br label %1

225:                                              ; preds = %221
  %226 = load ptr, ptr @stderr, align 8, !tbaa !6
  %227 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str, i32 noundef signext %12) #5
  br label %224

228:                                              ; preds = %11, %210, %185
  %229 = phi i32 [ 1, %185 ], [ 1, %210 ], [ 0, %11 ]
  ret i32 %229
}

; Function Attrs: nounwind
define dso_local void @next_start_code() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2096
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = and i32 %3, 7
  tail call void @Flush_Buffer(i32 noundef signext %4) #4
  %5 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %0, %7
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %8 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %7

10:                                               ; preds = %7, %0
  ret void
}

declare dso_local signext i32 @Get_Bits32() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local void @Flush_Buffer(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @Show_Bits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @slice_header() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3144
  %3 = load i32, ptr %2, align 8, !tbaa !18
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @vertical_size, align 4
  %6 = icmp sgt i32 %5, 2800
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  %10 = load ptr, ptr @ld, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %0, %8
  %12 = phi ptr [ %10, %8 ], [ %1, %0 ]
  %13 = phi i32 [ %9, %8 ], [ 0, %0 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 3148
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = tail call signext i32 @Get_Bits(i32 noundef signext 7) #4
  %19 = load ptr, ptr @ld, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 3164
  store i32 %18, ptr %20, align 4, !tbaa !20
  br label %21

21:                                               ; preds = %17, %11
  %22 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  %23 = load ptr, ptr @ld, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 3144
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %23, i64 3152
  %29 = load i32, ptr %28, align 8, !tbaa !21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i32
  br label %38

36:                                               ; preds = %27
  %37 = shl i32 %22, 1
  br label %38

38:                                               ; preds = %21, %31, %36
  %39 = phi i32 [ %35, %31 ], [ %37, %36 ], [ %22, %21 ]
  %40 = getelementptr inbounds i8, ptr %23, i64 3168
  store i32 %39, ptr %40, align 8, !tbaa !22
  %41 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %45 = load ptr, ptr @ld, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 3172
  store i32 %44, ptr %46, align 4, !tbaa !23
  %47 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %48 = tail call signext i32 @Get_Bits(i32 noundef signext 6) #4
  %49 = tail call signext i32 @Get_Bits1() #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43, %51
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %52 = tail call signext i32 @Get_Bits1() #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %51

54:                                               ; preds = %38
  %55 = load ptr, ptr @ld, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %55, i64 3172
  store i32 0, ptr %56, align 4, !tbaa !23
  br label %57

57:                                               ; preds = %51, %43, %54
  ret i32 %13
}

declare dso_local signext i32 @Get_Bits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @marker_bit(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @extension_and_user_data() unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2096
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = and i32 %3, 7
  tail call void @Flush_Buffer(i32 noundef signext %4) #4
  %5 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %0, %7
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %8 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %7

10:                                               ; preds = %7, %0
  br label %11

11:                                               ; preds = %308, %10
  %12 = tail call signext i32 @Show_Bits(i32 noundef signext 32) #4
  switch i32 %12, label %312 [
    i32 437, label %13
    i32 434, label %301
  ]

13:                                               ; preds = %11
  tail call void @Flush_Buffer32() #4
  %14 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  switch i32 %14, label %288 [
    i32 1, label %15
    i32 2, label %69
    i32 3, label %81
    i32 5, label %153
    i32 7, label %178
    i32 8, label %207
    i32 9, label %235
    i32 10, label %252
    i32 4, label %253
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr @ld, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 3144
  store i32 1, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds i8, ptr %16, i64 3148
  store i32 0, ptr %18, align 4, !tbaa !19
  store i32 0, ptr @layer_id, align 4, !tbaa !13
  %19 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %19, ptr @profile_and_level_indication, align 4, !tbaa !13
  %20 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %20, ptr @progressive_sequence, align 4, !tbaa !13
  %21 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  store i32 %21, ptr @chroma_format, align 4, !tbaa !13
  %22 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  %23 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  %24 = tail call signext i32 @Get_Bits(i32 noundef signext 12) #4
  %25 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %26 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %27 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %27, ptr @low_delay, align 4, !tbaa !13
  %28 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  store i32 %28, ptr @frame_rate_extension_n, align 4, !tbaa !13
  %29 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %29, ptr @frame_rate_extension_d, align 4, !tbaa !13
  %30 = load i32, ptr @frame_rate_code, align 4, !tbaa !13
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x double], ptr @frame_rate_Table, i64 0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !24
  %34 = load i32, ptr @frame_rate_extension_n, align 4, !tbaa !13
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %29, 1
  %37 = sdiv i32 %35, %36
  %38 = sitofp i32 %37 to double
  %39 = fmul double %33, %38
  store double %39, ptr @frame_rate, align 8, !tbaa !24
  %40 = load i32, ptr @profile_and_level_indication, align 4, !tbaa !13
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %15
  %44 = and i32 %40, 15
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  store i32 133, ptr @profile, align 4, !tbaa !13
  br label %50

47:                                               ; preds = %15
  %48 = ashr i32 %40, 4
  store i32 %48, ptr @profile, align 4, !tbaa !13
  %49 = and i32 %40, 15
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 8, %46 ], [ %49, %47 ]
  store i32 %51, ptr @level, align 4, !tbaa !13
  br label %52

52:                                               ; preds = %43, %50
  %53 = shl i32 %22, 12
  %54 = load i32, ptr @horizontal_size, align 4, !tbaa !13
  %55 = and i32 %54, 4095
  %56 = or disjoint i32 %55, %53
  store i32 %56, ptr @horizontal_size, align 4, !tbaa !13
  %57 = shl i32 %23, 12
  %58 = load i32, ptr @vertical_size, align 4, !tbaa !13
  %59 = and i32 %58, 4095
  %60 = or disjoint i32 %59, %57
  store i32 %60, ptr @vertical_size, align 4, !tbaa !13
  %61 = shl i32 %24, 18
  %62 = load i32, ptr @bit_rate_value, align 4, !tbaa !13
  %63 = add nsw i32 %62, %61
  store i32 %63, ptr @bit_rate_value, align 4, !tbaa !13
  %64 = sitofp i32 %63 to double
  %65 = fmul double %64, 4.000000e+02
  store double %65, ptr @bit_rate, align 8, !tbaa !24
  %66 = shl i32 %26, 10
  %67 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !13
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr @vbv_buffer_size, align 4, !tbaa !13
  br label %291

69:                                               ; preds = %13
  %70 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  store i32 %70, ptr @video_format, align 4, !tbaa !13
  %71 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %71, ptr @color_description, align 4, !tbaa !13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %74, ptr @color_primaries, align 4, !tbaa !13
  %75 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %75, ptr @transfer_characteristics, align 4, !tbaa !13
  %76 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %76, ptr @matrix_coefficients, align 4, !tbaa !13
  br label %77

77:                                               ; preds = %69, %73
  %78 = tail call signext i32 @Get_Bits(i32 noundef signext 14) #4
  store i32 %78, ptr @display_horizontal_size, align 4, !tbaa !13
  %79 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %80 = tail call signext i32 @Get_Bits(i32 noundef signext 14) #4
  store i32 %80, ptr @display_vertical_size, align 4, !tbaa !13
  br label %291

81:                                               ; preds = %13
  %82 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %83 = load ptr, ptr @ld, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 3128
  store i32 %82, ptr %84, align 8, !tbaa !14
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %81, %86
  %87 = phi i64 [ %99, %86 ], [ 0, %81 ]
  %88 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %89 = load ptr, ptr @ld, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 2104
  %91 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %87
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [64 x i32], ptr %90, i64 0, i64 %93
  store i32 %88, ptr %94, align 4, !tbaa !13
  %95 = getelementptr inbounds i8, ptr %89, i64 2616
  %96 = load i8, ptr %91, align 1, !tbaa !15
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds [64 x i32], ptr %95, i64 0, i64 %97
  store i32 %88, ptr %98, align 4, !tbaa !13
  %99 = add nuw nsw i64 %87, 1
  %100 = icmp eq i64 %99, 64
  br i1 %100, label %101, label %86

101:                                              ; preds = %86, %81
  %102 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %103 = load ptr, ptr @ld, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 3132
  store i32 %102, ptr %104, align 4, !tbaa !16
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %101, %106
  %107 = phi i64 [ %119, %106 ], [ 0, %101 ]
  %108 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %109 = load ptr, ptr @ld, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 2360
  %111 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %107
  %112 = load i8, ptr %111, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [64 x i32], ptr %110, i64 0, i64 %113
  store i32 %108, ptr %114, align 4, !tbaa !13
  %115 = getelementptr inbounds i8, ptr %109, i64 2872
  %116 = load i8, ptr %111, align 1, !tbaa !15
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds [64 x i32], ptr %115, i64 0, i64 %117
  store i32 %108, ptr %118, align 4, !tbaa !13
  %119 = add nuw nsw i64 %107, 1
  %120 = icmp eq i64 %119, 64
  br i1 %120, label %121, label %106

121:                                              ; preds = %106, %101
  %122 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %123 = load ptr, ptr @ld, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 3136
  store i32 %122, ptr %124, align 8, !tbaa !26
  %125 = icmp eq i32 %122, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %121, %126
  %127 = phi i64 [ %135, %126 ], [ 0, %121 ]
  %128 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %129 = load ptr, ptr @ld, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 2616
  %131 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %127
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds [64 x i32], ptr %130, i64 0, i64 %133
  store i32 %128, ptr %134, align 4, !tbaa !13
  %135 = add nuw nsw i64 %127, 1
  %136 = icmp eq i64 %135, 64
  br i1 %136, label %137, label %126

137:                                              ; preds = %126, %121
  %138 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %139 = load ptr, ptr @ld, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 3140
  store i32 %138, ptr %140, align 4, !tbaa !27
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %291, label %142

142:                                              ; preds = %137, %142
  %143 = phi i64 [ %151, %142 ], [ 0, %137 ]
  %144 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  %145 = load ptr, ptr @ld, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %145, i64 2872
  %147 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %143
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [64 x i32], ptr %146, i64 0, i64 %149
  store i32 %144, ptr %150, align 4, !tbaa !13
  %151 = add nuw nsw i64 %143, 1
  %152 = icmp eq i64 %151, 64
  br i1 %152, label %291, label %142

153:                                              ; preds = %13
  %154 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  %155 = add i32 %154, 1
  %156 = load ptr, ptr @ld, align 8, !tbaa !6
  %157 = getelementptr inbounds i8, ptr %156, i64 3148
  store i32 %155, ptr %157, align 4, !tbaa !19
  %158 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %158, ptr @layer_id, align 4, !tbaa !13
  %159 = load ptr, ptr @ld, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %159, i64 3148
  %161 = load i32, ptr %160, align 4, !tbaa !19
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %174

163:                                              ; preds = %153
  %164 = tail call signext i32 @Get_Bits(i32 noundef signext 14) #4
  store i32 %164, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !13
  %165 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %166 = tail call signext i32 @Get_Bits(i32 noundef signext 14) #4
  store i32 %166, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !13
  %167 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %167, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !13
  %168 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %168, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !13
  %169 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %169, ptr @vertical_subsampling_factor_m, align 4, !tbaa !13
  %170 = tail call signext i32 @Get_Bits(i32 noundef signext 5) #4
  store i32 %170, ptr @vertical_subsampling_factor_n, align 4, !tbaa !13
  %171 = load ptr, ptr @ld, align 8, !tbaa !6
  %172 = getelementptr inbounds i8, ptr %171, i64 3148
  %173 = load i32, ptr %172, align 4, !tbaa !19
  br label %174

174:                                              ; preds = %163, %153
  %175 = phi i32 [ %173, %163 ], [ %161, %153 ]
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %291

177:                                              ; preds = %174
  tail call void @Error(ptr noundef nonnull @.str.6) #4
  br label %291

178:                                              ; preds = %13
  %179 = load i32, ptr @progressive_sequence, align 4, !tbaa !13
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr @repeat_first_field, align 4, !tbaa !13
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr @top_field_first, align 4, !tbaa !13
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, i64 2, i64 3
  br label %195

188:                                              ; preds = %178
  %189 = load i32, ptr @picture_structure, align 4, !tbaa !13
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, ptr @repeat_first_field, align 4, !tbaa !13
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i64 2, i64 3
  br label %195

195:                                              ; preds = %191, %188, %184, %181
  %196 = phi i64 [ %187, %184 ], [ 1, %181 ], [ 1, %188 ], [ %194, %191 ]
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %205, %197 ]
  %199 = tail call signext i32 @Get_Bits(i32 noundef signext 16) #4
  %200 = getelementptr inbounds [3 x i32], ptr @frame_center_horizontal_offset, i64 0, i64 %198
  store i32 %199, ptr %200, align 4, !tbaa !13
  %201 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %202 = tail call signext i32 @Get_Bits(i32 noundef signext 16) #4
  %203 = getelementptr inbounds [3 x i32], ptr @frame_center_vertical_offset, i64 0, i64 %198
  store i32 %202, ptr %203, align 4, !tbaa !13
  %204 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %205 = add nuw nsw i64 %198, 1
  %206 = icmp eq i64 %205, %196
  br i1 %206, label %291, label %197

207:                                              ; preds = %13
  %208 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %208, ptr @f_code, align 4, !tbaa !13
  %209 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %209, ptr getelementptr inbounds (i8, ptr @f_code, i64 4), align 4, !tbaa !13
  %210 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %210, ptr getelementptr inbounds (i8, ptr @f_code, i64 8), align 4, !tbaa !13
  %211 = tail call signext i32 @Get_Bits(i32 noundef signext 4) #4
  store i32 %211, ptr getelementptr inbounds (i8, ptr @f_code, i64 12), align 4, !tbaa !13
  %212 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  store i32 %212, ptr @intra_dc_precision, align 4, !tbaa !13
  %213 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  store i32 %213, ptr @picture_structure, align 4, !tbaa !13
  %214 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %214, ptr @top_field_first, align 4, !tbaa !13
  %215 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %215, ptr @frame_pred_frame_dct, align 4, !tbaa !13
  %216 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %216, ptr @concealment_motion_vectors, align 4, !tbaa !13
  %217 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %218 = load ptr, ptr @ld, align 8, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %218, i64 3152
  store i32 %217, ptr %219, align 8, !tbaa !21
  %220 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %220, ptr @intra_vlc_format, align 4, !tbaa !13
  %221 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %222 = load ptr, ptr @ld, align 8, !tbaa !6
  %223 = getelementptr inbounds i8, ptr %222, i64 3156
  store i32 %221, ptr %223, align 4, !tbaa !28
  %224 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %224, ptr @repeat_first_field, align 4, !tbaa !13
  %225 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %225, ptr @chroma_420_type, align 4, !tbaa !13
  %226 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %226, ptr @progressive_frame, align 4, !tbaa !13
  %227 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %227, ptr @composite_display_flag, align 4, !tbaa !13
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %291, label %229

229:                                              ; preds = %207
  %230 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %230, ptr @v_axis, align 4, !tbaa !13
  %231 = tail call signext i32 @Get_Bits(i32 noundef signext 3) #4
  store i32 %231, ptr @field_sequence, align 4, !tbaa !13
  %232 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %232, ptr @sub_carrier, align 4, !tbaa !13
  %233 = tail call signext i32 @Get_Bits(i32 noundef signext 7) #4
  store i32 %233, ptr @burst_amplitude, align 4, !tbaa !13
  %234 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %234, ptr @sub_carrier_phase, align 4, !tbaa !13
  br label %291

235:                                              ; preds = %13
  %236 = load ptr, ptr @ld, align 8, !tbaa !6
  %237 = getelementptr inbounds i8, ptr %236, i64 3160
  store i32 1, ptr %237, align 8, !tbaa !17
  %238 = tail call signext i32 @Get_Bits(i32 noundef signext 10) #4
  store i32 %238, ptr @lower_layer_temporal_reference, align 4, !tbaa !13
  %239 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %240 = tail call signext i32 @Get_Bits(i32 noundef signext 15) #4
  %241 = icmp sgt i32 %240, 16383
  %242 = add nsw i32 %240, -32768
  %243 = select i1 %241, i32 %242, i32 %240
  store i32 %243, ptr @lower_layer_horizontal_offset, align 4, !tbaa !13
  %244 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %245 = tail call signext i32 @Get_Bits(i32 noundef signext 15) #4
  %246 = icmp sgt i32 %245, 16383
  %247 = add nsw i32 %245, -32768
  %248 = select i1 %246, i32 %247, i32 %245
  store i32 %248, ptr @lower_layer_vertical_offset, align 4, !tbaa !13
  %249 = tail call signext i32 @Get_Bits(i32 noundef signext 2) #4
  store i32 %249, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !13
  %250 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %250, ptr @lower_layer_progressive_frame, align 4, !tbaa !13
  %251 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %251, ptr @lower_layer_deinterlaced_field_select, align 4, !tbaa !13
  br label %291

252:                                              ; preds = %13
  tail call void @Error(ptr noundef nonnull @.str.11) #4
  br label %291

253:                                              ; preds = %13
  %254 = load ptr, ptr @ld, align 8, !tbaa !6
  %255 = getelementptr inbounds i8, ptr %254, i64 2100
  %256 = load i32, ptr %255, align 4, !tbaa !29
  %257 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %257, ptr @copyright_flag, align 4, !tbaa !13
  %258 = tail call signext i32 @Get_Bits(i32 noundef signext 8) #4
  store i32 %258, ptr @copyright_identifier, align 4, !tbaa !13
  %259 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  store i32 %259, ptr @original_or_copy, align 4, !tbaa !13
  %260 = tail call signext i32 @Get_Bits(i32 noundef signext 7) #4
  %261 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %262 = tail call signext i32 @Get_Bits(i32 noundef signext 20) #4
  store i32 %262, ptr @copyright_number_1, align 4, !tbaa !13
  %263 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %264 = tail call signext i32 @Get_Bits(i32 noundef signext 22) #4
  store i32 %264, ptr @copyright_number_2, align 4, !tbaa !13
  %265 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #4
  %266 = tail call signext i32 @Get_Bits(i32 noundef signext 22) #4
  store i32 %266, ptr @copyright_number_3, align 4, !tbaa !13
  %267 = load i32, ptr @Verbose_Flag, align 4, !tbaa !13
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %291

269:                                              ; preds = %253
  %270 = ashr i32 %256, 3
  %271 = add nsw i32 %270, -4
  %272 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef signext %271)
  %273 = load i32, ptr @Verbose_Flag, align 4, !tbaa !13
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %275, label %291

275:                                              ; preds = %269
  %276 = load i32, ptr @copyright_flag, align 4, !tbaa !13
  %277 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef signext %276)
  %278 = load i32, ptr @copyright_identifier, align 4, !tbaa !13
  %279 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef signext %278)
  %280 = load i32, ptr @original_or_copy, align 4, !tbaa !13
  %281 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef signext %280)
  %282 = load i32, ptr @copyright_number_1, align 4, !tbaa !13
  %283 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef signext %282)
  %284 = load i32, ptr @copyright_number_2, align 4, !tbaa !13
  %285 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef signext %284)
  %286 = load i32, ptr @copyright_number_3, align 4, !tbaa !13
  %287 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef signext %286)
  br label %291

288:                                              ; preds = %13
  %289 = load ptr, ptr @stderr, align 8, !tbaa !6
  %290 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.2, i32 noundef signext %14) #5
  br label %291

291:                                              ; preds = %197, %142, %275, %269, %253, %229, %207, %177, %174, %137, %288, %252, %235, %77, %52
  %292 = load ptr, ptr @ld, align 8, !tbaa !6
  %293 = getelementptr inbounds i8, ptr %292, i64 2096
  %294 = load i32, ptr %293, align 8, !tbaa !10
  %295 = and i32 %294, 7
  tail call void @Flush_Buffer(i32 noundef signext %295) #4
  %296 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %308, label %298

298:                                              ; preds = %291, %298
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %299 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %308, label %298

301:                                              ; preds = %11
  tail call void @Flush_Buffer32() #4
  %302 = load ptr, ptr @ld, align 8, !tbaa !6
  %303 = getelementptr inbounds i8, ptr %302, i64 2096
  %304 = load i32, ptr %303, align 8, !tbaa !10
  %305 = and i32 %304, 7
  tail call void @Flush_Buffer(i32 noundef signext %305) #4
  %306 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %309, %298, %301, %291
  br label %11

309:                                              ; preds = %301, %309
  tail call void @Flush_Buffer(i32 noundef signext 8) #4
  %310 = tail call signext i32 @Show_Bits(i32 noundef signext 24) #4
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %308, label %309

312:                                              ; preds = %11
  ret void
}

declare dso_local void @Flush_Buffer32() local_unnamed_addr #1

declare dso_local void @Error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local signext i32 @Get_Bits1() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!10 = !{!11, !12, i64 2096}
!11 = !{!"layer_data", !12, i64 0, !8, i64 4, !7, i64 2056, !8, i64 2064, !12, i64 2080, !7, i64 2088, !12, i64 2096, !12, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !12, i64 3152, !12, i64 3156, !12, i64 3160, !12, i64 3164, !12, i64 3168, !12, i64 3172, !8, i64 3176}
!12 = !{!"int", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 3128}
!15 = !{!8, !8, i64 0}
!16 = !{!11, !12, i64 3132}
!17 = !{!11, !12, i64 3160}
!18 = !{!11, !12, i64 3144}
!19 = !{!11, !12, i64 3148}
!20 = !{!11, !12, i64 3164}
!21 = !{!11, !12, i64 3152}
!22 = !{!11, !12, i64 3168}
!23 = !{!11, !12, i64 3172}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !8, i64 0}
!26 = !{!11, !12, i64 3136}
!27 = !{!11, !12, i64 3140}
!28 = !{!11, !12, i64 3156}
!29 = !{!11, !12, i64 2100}
