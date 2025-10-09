; ModuleID = 'conform.c'
source_filename = "conform.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.level_limits = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.motion_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"horizontal_size must be between 1 and 16383\00", align 1
@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"horizontal_size must be less than 4096 (MPEG-1)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"horizontal_size must not be a multiple of 4096\00", align 1
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"horizontal_size must be a even (4:2:0 / 4:2:2)\00", align 1
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"vertical_size must be between 1 and 16383\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"vertical size must be less than 4096 (MPEG-1)\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"vertical_size must not be a multiple of 4096\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"vertical_size must be a even (4:2:0)\00", align 1
@fieldpic = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"vertical_size must be a even (field pictures)\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"vertical_size must be a multiple of 4 (4:2:0 field pictures)\00", align 1
@aspectratio = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"pel_aspect_ratio must be between 1 and 14 (MPEG-1)\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"aspect_ratio_information must be 1, 2, 3 or 4\00", align 1
@frame_rate_code = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"frame_rate code must be between 1 and 8\00", align 1
@bit_rate = external dso_local local_unnamed_addr global double, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"bit_rate must be positive\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"bit_rate must be less than 429 Gbit/s\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"bit_rate must be less than 104 Mbit/s (MPEG-1)\00", align 1
@vbv_buffer_size = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [45 x i8] c"vbv_buffer_size must be in range 1..(2^18-1)\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"vbv_buffer_size must be less than 1024 (MPEG-1)\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"chroma_format must be in range 1...3\00", align 1
@video_format = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"video_format must be in range 0...4\00", align 1
@color_primaries = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [48 x i8] c"color_primaries must be in range 1...2 or 4...7\00", align 1
@transfer_characteristics = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [57 x i8] c"transfer_characteristics must be in range 1...2 or 4...7\00", align 1
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [52 x i8] c"matrix_coefficients must be in range 1...2 or 4...7\00", align 1
@display_horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [51 x i8] c"display_horizontal_size must be in range 0...16383\00", align 1
@display_vertical_size = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [49 x i8] c"display_vertical_size must be in range 0...16383\00", align 1
@dc_prec = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"intra_dc_precision must be in range 0...3\00", align 1
@M = external dso_local local_unnamed_addr global i32, align 4
@motion_data = external dso_local local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"f_code must be between 1 and 9\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"f_code must be le less than 8\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"search window must be positive\00", align 1
@profile = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [33 x i8] c"profile must be between 0 and 15\00", align 1
@level = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"level must be between 0 and 15\00", align 1
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [68 x i8] c"Warning: profile uses a reserved value, conformance checks skipped\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"undefined Profile\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"This encoder currently generates no scalable bitstreams\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"undefined Level\00", align 1
@maxval_tab = internal unnamed_addr constant [4 x %struct.level_limits] [%struct.level_limits { i32 9, i32 5, i32 1920, i32 1152, i32 62668800, i32 80, i32 597 }, %struct.level_limits { i32 9, i32 5, i32 1440, i32 1152, i32 47001600, i32 60, i32 448 }, %struct.level_limits { i32 8, i32 5, i32 720, i32 576, i32 10368000, i32 15, i32 112 }, %struct.level_limits { i32 7, i32 4, i32 352, i32 288, i32 3041280, i32 4, i32 29 }], align 4
@profile_level_defined = internal unnamed_addr constant [5 x [4 x i8]] [[4 x i8] c"\01\01\01\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\00\01\00"], align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"undefined profile@level combination\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Simple Profile does not allow B pictures\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"chroma format must be 4:2:0 in specified Profile\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"chroma format must be 4:2:0 or 4:2:2 in High Profile\00", align 1
@repeatfirst = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [32 x i8] c"repeat_first_first must be zero\00", align 1
@prog_seq = external dso_local local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [49 x i8] c"11 bit DC precision only allowed in High Profile\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"Picture rate greater than permitted in specified Level\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"forward horizontal f_code greater than permitted in specified Level\00", align 1
@.str.43 = private unnamed_addr constant [66 x i8] c"forward vertical f_code greater than permitted in specified Level\00", align 1
@.str.44 = private unnamed_addr constant [69 x i8] c"backward horizontal f_code greater than permitted in specified Level\00", align 1
@.str.45 = private unnamed_addr constant [67 x i8] c"backward vertical f_code greater than permitted in specified Level\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"Horizontal size is greater than permitted in specified Level\00", align 1
@frame_rate = external dso_local local_unnamed_addr global double, align 8
@.str.47 = private unnamed_addr constant [57 x i8] c"Sample rate is greater than permitted in specified Level\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Bit rate is greater than permitted in specified Level\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"vbv_buffer_size exceeds High Level limit\00", align 1

; Function Attrs: nounwind
define dso_local void @range_checks() local_unnamed_addr #0 {
  %1 = load i32, ptr @horizontal_size, align 4
  %2 = add i32 %1, -16384
  %3 = icmp ult i32 %2, -16383
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @error(ptr noundef nonnull @.str) #3
  %5 = load i32, ptr @horizontal_size, align 4
  br label %6

6:                                                ; preds = %0, %4
  %7 = phi i32 [ %1, %0 ], [ %5, %4 ]
  %8 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %9 = icmp ne i32 %8, 0
  %10 = icmp sgt i32 %7, 4095
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.1) #3
  %13 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %13, %12 ], [ %7, %6 ]
  %16 = and i32 %15, 4095
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @error(ptr noundef nonnull @.str.2) #3
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.3) #3
  br label %27

27:                                               ; preds = %26, %22, %19
  %28 = load i32, ptr @vertical_size, align 4
  %29 = add i32 %28, -16384
  %30 = icmp ult i32 %29, -16383
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.4) #3
  %32 = load i32, ptr @vertical_size, align 4
  br label %33

33:                                               ; preds = %27, %31
  %34 = phi i32 [ %28, %27 ], [ %32, %31 ]
  %35 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %36 = icmp ne i32 %35, 0
  %37 = icmp sgt i32 %34, 4095
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.5) #3
  %40 = load i32, ptr @vertical_size, align 4, !tbaa !6
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ %40, %39 ], [ %34, %33 ]
  %43 = and i32 %42, 4095
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @error(ptr noundef nonnull @.str.6) #3
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @error(ptr noundef nonnull @.str.7) #3
  br label %54

54:                                               ; preds = %53, %49, %46
  %55 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @error(ptr noundef nonnull @.str.8) #3
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %67 = and i32 %66, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @error(ptr noundef nonnull @.str.9) #3
  br label %70

70:                                               ; preds = %62, %65, %69, %54
  %71 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr @aspectratio, align 4
  br i1 %72, label %77, label %74

74:                                               ; preds = %70
  %75 = add i32 %73, -15
  %76 = icmp ult i32 %75, -14
  br i1 %76, label %80, label %82

77:                                               ; preds = %70
  %78 = add i32 %73, -5
  %79 = icmp ult i32 %78, -4
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74
  %81 = phi ptr [ @.str.10, %74 ], [ @.str.11, %77 ]
  tail call void @error(ptr noundef nonnull %81) #3
  br label %82

82:                                               ; preds = %80, %77, %74
  %83 = load i32, ptr @frame_rate_code, align 4
  %84 = add i32 %83, -9
  %85 = icmp ult i32 %84, -8
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @error(ptr noundef nonnull @.str.12) #3
  br label %87

87:                                               ; preds = %82, %86
  %88 = load double, ptr @bit_rate, align 8
  %89 = fcmp ugt double %88, 0.000000e+00
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  tail call void @error(ptr noundef nonnull @.str.13) #3
  %91 = load double, ptr @bit_rate, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi double [ %91, %90 ], [ %88, %87 ]
  %94 = fcmp ogt double %93, 0x4258FFFFFF9C0000
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  tail call void @error(ptr noundef nonnull @.str.14) #3
  %96 = load double, ptr @bit_rate, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi double [ %96, %95 ], [ %93, %92 ]
  %99 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %100 = icmp ne i32 %99, 0
  %101 = fcmp ogt double %98, 0x4198FFF9C0000000
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @error(ptr noundef nonnull @.str.15) #3
  br label %104

104:                                              ; preds = %103, %97
  %105 = load i32, ptr @vbv_buffer_size, align 4
  %106 = add i32 %105, -262144
  %107 = icmp ult i32 %106, -262143
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  tail call void @error(ptr noundef nonnull @.str.16) #3
  %109 = load i32, ptr @vbv_buffer_size, align 4
  br label %110

110:                                              ; preds = %104, %108
  %111 = phi i32 [ %105, %104 ], [ %109, %108 ]
  %112 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %113 = icmp ne i32 %112, 0
  %114 = icmp sgt i32 %111, 1023
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  tail call void @error(ptr noundef nonnull @.str.17) #3
  br label %117

117:                                              ; preds = %116, %110
  %118 = load i32, ptr @chroma_format, align 4
  %119 = add i32 %118, -4
  %120 = icmp ult i32 %119, -3
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @error(ptr noundef nonnull @.str.18) #3
  br label %122

122:                                              ; preds = %117, %121
  %123 = load i32, ptr @video_format, align 4
  %124 = icmp ugt i32 %123, 4
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  tail call void @error(ptr noundef nonnull @.str.19) #3
  br label %126

126:                                              ; preds = %122, %125
  %127 = load i32, ptr @color_primaries, align 4
  %128 = add i32 %127, -8
  %129 = icmp ult i32 %128, -7
  %130 = icmp eq i32 %127, 3
  %131 = or i1 %130, %129
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  tail call void @error(ptr noundef nonnull @.str.20) #3
  br label %133

133:                                              ; preds = %126, %132
  %134 = load i32, ptr @transfer_characteristics, align 4
  %135 = add i32 %134, -8
  %136 = icmp ult i32 %135, -7
  %137 = icmp eq i32 %134, 3
  %138 = or i1 %137, %136
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  tail call void @error(ptr noundef nonnull @.str.21) #3
  br label %140

140:                                              ; preds = %133, %139
  %141 = load i32, ptr @matrix_coefficients, align 4
  %142 = add i32 %141, -8
  %143 = icmp ult i32 %142, -7
  %144 = icmp eq i32 %141, 3
  %145 = or i1 %144, %143
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  tail call void @error(ptr noundef nonnull @.str.22) #3
  br label %147

147:                                              ; preds = %140, %146
  %148 = load i32, ptr @display_horizontal_size, align 4
  %149 = icmp ugt i32 %148, 16383
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  tail call void @error(ptr noundef nonnull @.str.23) #3
  br label %151

151:                                              ; preds = %147, %150
  %152 = load i32, ptr @display_vertical_size, align 4
  %153 = icmp ugt i32 %152, 16383
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  tail call void @error(ptr noundef nonnull @.str.24) #3
  br label %155

155:                                              ; preds = %151, %154
  %156 = load i32, ptr @dc_prec, align 4
  %157 = icmp ugt i32 %156, 3
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call void @error(ptr noundef nonnull @.str.25) #3
  br label %159

159:                                              ; preds = %155, %158
  %160 = load i32, ptr @M, align 4, !tbaa !6
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %313

162:                                              ; preds = %159
  %163 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %164 = load i32, ptr %163, align 4, !tbaa !12
  %165 = add i32 %164, -10
  %166 = icmp ult i32 %165, -9
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %168 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %169

169:                                              ; preds = %167, %162
  %170 = phi ptr [ %168, %167 ], [ %163, %162 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !14
  %173 = add i32 %172, -10
  %174 = icmp ult i32 %173, -9
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %176 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %177

177:                                              ; preds = %175, %169
  %178 = phi ptr [ %176, %175 ], [ %170, %169 ]
  %179 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %178, align 4, !tbaa !12
  %183 = icmp sgt i32 %182, 7
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %185 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %186 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %181, %184
  %189 = phi ptr [ %186, %184 ], [ %178, %181 ]
  %190 = getelementptr inbounds i8, ptr %189, i64 4
  %191 = load i32, ptr %190, align 4, !tbaa !14
  %192 = icmp sgt i32 %191, 7
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %194 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %195

195:                                              ; preds = %193, %188, %184, %177
  %196 = phi ptr [ %194, %193 ], [ %189, %188 ], [ %186, %184 ], [ %178, %177 ]
  %197 = getelementptr inbounds i8, ptr %196, i64 8
  %198 = load i32, ptr %197, align 4, !tbaa !15
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  tail call void @error(ptr noundef nonnull @.str.28) #3
  %201 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %202

202:                                              ; preds = %200, %195
  %203 = phi ptr [ %201, %200 ], [ %196, %195 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 12
  %205 = load i32, ptr %204, align 4, !tbaa !16
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  tail call void @error(ptr noundef nonnull @.str.28) #3
  br label %208

208:                                              ; preds = %202, %207
  %209 = load i32, ptr @M, align 4, !tbaa !6
  %210 = icmp sgt i32 %209, 1
  br i1 %210, label %211, label %313

211:                                              ; preds = %208, %308
  %212 = phi i64 [ %309, %308 ], [ 1, %208 ]
  %213 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %214 = getelementptr inbounds %struct.motion_data, ptr %213, i64 %212
  %215 = load i32, ptr %214, align 4, !tbaa !12
  %216 = add i32 %215, -10
  %217 = icmp ult i32 %216, -9
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %219 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %220

220:                                              ; preds = %211, %218
  %221 = phi ptr [ %213, %211 ], [ %219, %218 ]
  %222 = getelementptr inbounds %struct.motion_data, ptr %221, i64 %212, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !14
  %224 = add i32 %223, -10
  %225 = icmp ult i32 %224, -9
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %227 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %228

228:                                              ; preds = %220, %226
  %229 = phi ptr [ %221, %220 ], [ %227, %226 ]
  %230 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.motion_data, ptr %229, i64 %212
  %234 = load i32, ptr %233, align 4, !tbaa !12
  %235 = icmp sgt i32 %234, 7
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %237 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %238 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %232, %236
  %241 = phi ptr [ %238, %236 ], [ %229, %232 ]
  %242 = getelementptr inbounds %struct.motion_data, ptr %241, i64 %212, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !14
  %244 = icmp sgt i32 %243, 7
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %246 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %247

247:                                              ; preds = %228, %245, %240, %236
  %248 = phi ptr [ %229, %228 ], [ %246, %245 ], [ %241, %240 ], [ %238, %236 ]
  %249 = getelementptr inbounds %struct.motion_data, ptr %248, i64 %212, i32 2
  %250 = load i32, ptr %249, align 4, !tbaa !15
  %251 = icmp slt i32 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  tail call void @error(ptr noundef nonnull @.str.28) #3
  %253 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %254

254:                                              ; preds = %252, %247
  %255 = phi ptr [ %253, %252 ], [ %248, %247 ]
  %256 = getelementptr inbounds %struct.motion_data, ptr %255, i64 %212, i32 3
  %257 = load i32, ptr %256, align 4, !tbaa !16
  %258 = icmp slt i32 %257, 1
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  tail call void @error(ptr noundef nonnull @.str.28) #3
  br label %260

260:                                              ; preds = %254, %259
  %261 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %262 = getelementptr inbounds %struct.motion_data, ptr %261, i64 %212, i32 4
  %263 = load i32, ptr %262, align 4, !tbaa !17
  %264 = add i32 %263, -10
  %265 = icmp ult i32 %264, -9
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %267 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %268

268:                                              ; preds = %260, %266
  %269 = phi ptr [ %261, %260 ], [ %267, %266 ]
  %270 = getelementptr inbounds %struct.motion_data, ptr %269, i64 %212, i32 5
  %271 = load i32, ptr %270, align 4, !tbaa !18
  %272 = add i32 %271, -10
  %273 = icmp ult i32 %272, -9
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  tail call void @error(ptr noundef nonnull @.str.26) #3
  %275 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %276

276:                                              ; preds = %268, %274
  %277 = phi ptr [ %269, %268 ], [ %275, %274 ]
  %278 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %295, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.motion_data, ptr %277, i64 %212, i32 4
  %282 = load i32, ptr %281, align 4, !tbaa !17
  %283 = icmp sgt i32 %282, 7
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %285 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %286 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %280, %284
  %289 = phi ptr [ %286, %284 ], [ %277, %280 ]
  %290 = getelementptr inbounds %struct.motion_data, ptr %289, i64 %212, i32 5
  %291 = load i32, ptr %290, align 4, !tbaa !18
  %292 = icmp sgt i32 %291, 7
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  tail call void @error(ptr noundef nonnull @.str.27) #3
  %294 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %295

295:                                              ; preds = %276, %293, %288, %284
  %296 = phi ptr [ %277, %276 ], [ %294, %293 ], [ %289, %288 ], [ %286, %284 ]
  %297 = getelementptr inbounds %struct.motion_data, ptr %296, i64 %212, i32 6
  %298 = load i32, ptr %297, align 4, !tbaa !19
  %299 = icmp slt i32 %298, 1
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  tail call void @error(ptr noundef nonnull @.str.28) #3
  %301 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %302

302:                                              ; preds = %300, %295
  %303 = phi ptr [ %301, %300 ], [ %296, %295 ]
  %304 = getelementptr inbounds %struct.motion_data, ptr %303, i64 %212, i32 7
  %305 = load i32, ptr %304, align 4, !tbaa !20
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  tail call void @error(ptr noundef nonnull @.str.28) #3
  br label %308

308:                                              ; preds = %307, %302
  %309 = add nuw nsw i64 %212, 1
  %310 = load i32, ptr @M, align 4, !tbaa !6
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %211, label %313, !llvm.loop !21

313:                                              ; preds = %308, %208, %159
  ret void
}

declare dso_local void @error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @profile_and_level_checks() local_unnamed_addr #0 {
  %1 = load i32, ptr @profile, align 4
  %2 = icmp ugt i32 %1, 15
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @error(ptr noundef nonnull @.str.29) #3
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr @level, align 4
  %6 = icmp ugt i32 %5, 15
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.30) #3
  br label %8

8:                                                ; preds = %4, %7
  %9 = load i32, ptr @profile, align 4
  %10 = icmp sgt i32 %9, 7
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, ptr @quiet, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %203

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !10
  %16 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 67, i64 1, ptr %15) #4
  br label %203

17:                                               ; preds = %8
  %18 = add i32 %9, -6
  %19 = icmp ult i32 %18, -5
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call void @error(ptr noundef nonnull @.str.32) #3
  %21 = load i32, ptr @profile, align 4
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i32 [ %9, %17 ], [ %21, %20 ]
  %24 = and i32 %23, -2
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.33) #3
  br label %27

27:                                               ; preds = %22, %26
  %28 = load i32, ptr @level, align 4
  %29 = add i32 %28, -4
  %30 = icmp ult i32 %29, 7
  %31 = and i32 %28, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %30, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.34) #3
  %35 = load i32, ptr @level, align 4, !tbaa !6
  %36 = add nsw i32 %35, -4
  br label %37

37:                                               ; preds = %27, %34
  %38 = phi i32 [ %29, %27 ], [ %36, %34 ]
  %39 = ashr i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x %struct.level_limits], ptr @maxval_tab, i64 0, i64 %40
  %42 = load i32, ptr @profile, align 4, !tbaa !6
  %43 = add nsw i32 %42, -1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x [4 x i8]], ptr @profile_level_defined, i64 0, i64 %44, i64 %40
  %46 = load i8, ptr %45, align 1, !tbaa !23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  tail call void @error(ptr noundef nonnull @.str.35) #3
  %49 = load i32, ptr @profile, align 4, !tbaa !6
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi i32 [ %49, %48 ], [ %42, %37 ]
  %52 = icmp eq i32 %51, 5
  %53 = load i32, ptr @M, align 4
  %54 = icmp ne i32 %53, 1
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  tail call void @error(ptr noundef nonnull @.str.36) #3
  %57 = load i32, ptr @profile, align 4, !tbaa !6
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %57, %56 ], [ %51, %50 ]
  %60 = icmp ne i32 %59, 1
  %61 = load i32, ptr @chroma_format, align 4
  %62 = icmp ne i32 %61, 1
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  tail call void @error(ptr noundef nonnull @.str.37) #3
  %65 = load i32, ptr @profile, align 4, !tbaa !6
  %66 = load i32, ptr @chroma_format, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i32 [ %66, %64 ], [ %61, %58 ]
  %69 = phi i32 [ %65, %64 ], [ %59, %58 ]
  %70 = icmp eq i32 %69, 1
  %71 = icmp eq i32 %68, 3
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  tail call void @error(ptr noundef nonnull @.str.38) #3
  %74 = load i32, ptr @profile, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %74, %73 ], [ %69, %67 ]
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, ptr @frame_rate_code, align 4, !tbaa !6
  %80 = icmp slt i32 %79, 3
  %81 = load i32, ptr @repeatfirst, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  tail call void @error(ptr noundef nonnull @.str.39) #3
  %85 = load i32, ptr @frame_rate_code, align 4, !tbaa !6
  %86 = load i32, ptr @repeatfirst, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = phi i32 [ %86, %84 ], [ %81, %78 ]
  %89 = phi i32 [ %85, %84 ], [ %79, %78 ]
  %90 = icmp slt i32 %89, 7
  %91 = load i32, ptr @prog_seq, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  %94 = icmp ne i32 %88, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  tail call void @error(ptr noundef nonnull @.str.39) #3
  br label %97

97:                                               ; preds = %87, %96, %75
  %98 = load i32, ptr @profile, align 4, !tbaa !6
  %99 = icmp ne i32 %98, 1
  %100 = load i32, ptr @dc_prec, align 4
  %101 = icmp eq i32 %100, 3
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @error(ptr noundef nonnull @.str.40) #3
  br label %104

104:                                              ; preds = %103, %97
  %105 = load i32, ptr @frame_rate_code, align 4, !tbaa !6
  %106 = icmp sgt i32 %105, 5
  %107 = load i32, ptr @level, align 4
  %108 = icmp sgt i32 %107, 7
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  tail call void @error(ptr noundef nonnull @.str.41) #3
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32, ptr @M, align 4, !tbaa !6
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %164

114:                                              ; preds = %111
  %115 = load i32, ptr %41, align 4, !tbaa !24
  %116 = getelementptr inbounds i8, ptr %41, i64 4
  %117 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %118 = load i32, ptr %117, align 4, !tbaa !12
  %119 = icmp sgt i32 %118, %115
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  tail call void @error(ptr noundef nonnull @.str.42) #3
  %121 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi ptr [ %121, %120 ], [ %117, %114 ]
  %124 = getelementptr inbounds i8, ptr %123, i64 4
  %125 = load i32, ptr %124, align 4, !tbaa !14
  %126 = load i32, ptr %116, align 4, !tbaa !26
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  tail call void @error(ptr noundef nonnull @.str.43) #3
  br label %129

129:                                              ; preds = %122, %128
  %130 = load i32, ptr @M, align 4, !tbaa !6
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %164

132:                                              ; preds = %129, %159
  %133 = phi i64 [ %160, %159 ], [ 1, %129 ]
  %134 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %135 = getelementptr inbounds %struct.motion_data, ptr %134, i64 %133
  %136 = load i32, ptr %135, align 4, !tbaa !12
  %137 = icmp sgt i32 %136, %115
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  tail call void @error(ptr noundef nonnull @.str.42) #3
  %139 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %139, %138 ], [ %134, %132 ]
  %142 = getelementptr inbounds %struct.motion_data, ptr %141, i64 %133, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !14
  %144 = icmp sgt i32 %143, %126
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  tail call void @error(ptr noundef nonnull @.str.43) #3
  br label %146

146:                                              ; preds = %140, %145
  %147 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %148 = getelementptr inbounds %struct.motion_data, ptr %147, i64 %133, i32 4
  %149 = load i32, ptr %148, align 4, !tbaa !17
  %150 = icmp sgt i32 %149, %115
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  tail call void @error(ptr noundef nonnull @.str.44) #3
  %152 = load ptr, ptr @motion_data, align 8, !tbaa !10
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi ptr [ %152, %151 ], [ %147, %146 ]
  %155 = getelementptr inbounds %struct.motion_data, ptr %154, i64 %133, i32 5
  %156 = load i32, ptr %155, align 4, !tbaa !18
  %157 = icmp sgt i32 %156, %126
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  tail call void @error(ptr noundef nonnull @.str.45) #3
  br label %159

159:                                              ; preds = %158, %153
  %160 = add nuw nsw i64 %133, 1
  %161 = load i32, ptr @M, align 4, !tbaa !6
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %132, label %164, !llvm.loop !27

164:                                              ; preds = %159, %129, %111
  %165 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %166 = getelementptr inbounds i8, ptr %41, i64 8
  %167 = load i32, ptr %166, align 4, !tbaa !28
  %168 = icmp sgt i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  tail call void @error(ptr noundef nonnull @.str.46) #3
  br label %170

170:                                              ; preds = %169, %164
  %171 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %172 = getelementptr inbounds i8, ptr %41, i64 12
  %173 = load i32, ptr %172, align 4, !tbaa !29
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  tail call void @error(ptr noundef nonnull @.str.46) #3
  %176 = load i32, ptr @vertical_size, align 4, !tbaa !6
  br label %177

177:                                              ; preds = %175, %170
  %178 = phi i32 [ %176, %175 ], [ %171, %170 ]
  %179 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %180 = mul nsw i32 %178, %179
  %181 = sitofp i32 %180 to double
  %182 = load double, ptr @frame_rate, align 8, !tbaa !30
  %183 = fmul double %182, %181
  %184 = getelementptr inbounds i8, ptr %41, i64 16
  %185 = load i32, ptr %184, align 4, !tbaa !32
  %186 = sitofp i32 %185 to double
  %187 = fcmp ogt double %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  tail call void @error(ptr noundef nonnull @.str.47) #3
  br label %189

189:                                              ; preds = %188, %177
  %190 = load double, ptr @bit_rate, align 8, !tbaa !30
  %191 = getelementptr inbounds i8, ptr %41, i64 20
  %192 = load i32, ptr %191, align 4, !tbaa !33
  %193 = sitofp i32 %192 to double
  %194 = fmul double %193, 1.000000e+06
  %195 = fcmp ogt double %190, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  tail call void @error(ptr noundef nonnull @.str.48) #3
  br label %197

197:                                              ; preds = %196, %189
  %198 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !6
  %199 = getelementptr inbounds i8, ptr %41, i64 24
  %200 = load i32, ptr %199, align 4, !tbaa !34
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  tail call void @error(ptr noundef nonnull @.str.49) #3
  br label %203

203:                                              ; preds = %197, %202, %11, %14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
!12 = !{!13, !7, i64 0}
!13 = !{!"motion_data", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!14 = !{!13, !7, i64 4}
!15 = !{!13, !7, i64 8}
!16 = !{!13, !7, i64 12}
!17 = !{!13, !7, i64 16}
!18 = !{!13, !7, i64 20}
!19 = !{!13, !7, i64 24}
!20 = !{!13, !7, i64 28}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !7, i64 0}
!25 = !{!"level_limits", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!26 = !{!25, !7, i64 4}
!27 = distinct !{!27, !22}
!28 = !{!25, !7, i64 8}
!29 = !{!25, !7, i64 12}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !8, i64 0}
!32 = !{!25, !7, i64 16}
!33 = !{!25, !7, i64 20}
!34 = !{!25, !7, i64 24}
