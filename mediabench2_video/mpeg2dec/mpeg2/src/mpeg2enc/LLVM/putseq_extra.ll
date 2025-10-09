; ModuleID = 'putseq.c'
source_filename = "putseq.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.motion_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@putseq.ipb = internal unnamed_addr constant [5 x i8] c" IPBD", align 1
@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@id_string = external dso_local global [256 x i8], align 1
@nframes = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"Encoding frame %d \00", align 1
@N = external dso_local local_unnamed_addr global i32, align 4
@M = external dso_local local_unnamed_addr global i32, align 4
@oldorgframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@oldrefframe = external dso_local global [3 x ptr], align 8
@neworgframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@newrefframe = external dso_local global [3 x ptr], align 8
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@forw_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@forw_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@motion_data = external dso_local local_unnamed_addr global ptr, align 8
@auxorgframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@auxframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@temp_ref = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_dct_tab = external dso_local local_unnamed_addr global [3 x i32], align 4
@frame_pred_dct = external dso_local local_unnamed_addr global i32, align 4
@qscale_tab = external dso_local local_unnamed_addr global [3 x i32], align 4
@q_scale_type = external dso_local local_unnamed_addr global i32, align 4
@intravlc_tab = external dso_local local_unnamed_addr global [3 x i32], align 4
@intravlc = external dso_local local_unnamed_addr global i32, align 4
@altscan_tab = external dso_local local_unnamed_addr global [3 x i32], align 4
@altscan = external dso_local local_unnamed_addr global i32, align 4
@statfile = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"\0AFrame %d (#%d in display order):\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" picture_type=%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" temporal_reference=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" frame_pred_frame_dct=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" q_scale_type=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" intra_vlc_format=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" alternate_scan=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c" forward search window: %d...%d / %d...%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c" forward vector range: %d...%d.5 / %d...%d.5\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c" backward search window: %d...%d / %d...%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c" backward vector range: %d...%d.5 / %d...%d.5\0A\00", align 1
@tplorg = external dso_local global [256 x i8], align 1
@frame0 = external dso_local local_unnamed_addr global i32, align 4
@fieldpic = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"\0Afirst field  (%s) \00", align 1
@topfirst = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bot\00", align 1
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@mbinfo = external dso_local local_unnamed_addr global ptr, align 8
@predframe = external dso_local global [3 x ptr], align 8
@blocks = external dso_local local_unnamed_addr global ptr, align 8
@mb_height2 = external dso_local local_unnamed_addr global i32, align 4
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@block_count = external dso_local local_unnamed_addr global i32, align 4
@dc_prec = external dso_local local_unnamed_addr global i32, align 4
@intra_q = external dso_local global [64 x i8], align 1
@inter_q = external dso_local global [64 x i8], align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"second field (%s) \00", align 1
@mb_height = external dso_local local_unnamed_addr global i32, align 4
@tplref = external dso_local global [256 x i8], align 1

; Function Attrs: nounwind
define dso_local void @putseq() local_unnamed_addr #0 {
  %1 = alloca [256 x i8], align 1
  %2 = alloca [3 x ptr], align 8
  %3 = alloca [3 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  tail call void @rc_init_seq() #7
  tail call void @putseqhdr() #7
  %4 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @putseqext() #7
  tail call void @putseqdispext() #7
  br label %7

7:                                                ; preds = %6, %0
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @id_string) #8
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @putuserdata(ptr noundef nonnull @id_string) #7
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, ptr @nframes, align 4, !tbaa !6
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %467

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  %17 = getelementptr inbounds i8, ptr %2, i64 16
  %18 = getelementptr inbounds i8, ptr %3, i64 16
  br label %19

19:                                               ; preds = %14, %456
  %20 = phi i32 [ %464, %456 ], [ 0, %14 ]
  %21 = phi i32 [ %125, %456 ], [ undef, %14 ]
  %22 = phi i32 [ %124, %456 ], [ undef, %14 ]
  %23 = phi i32 [ %458, %456 ], [ undef, %14 ]
  %24 = phi i32 [ %457, %456 ], [ undef, %14 ]
  %25 = load i32, ptr @quiet, align 4, !tbaa !6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load ptr, ptr @stderr, align 8, !tbaa !10
  %29 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef signext %20) #9
  %30 = load ptr, ptr @stderr, align 8, !tbaa !10
  %31 = call signext i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, ptr @N, align 4, !tbaa !6
  %34 = load i32, ptr @M, align 4
  %35 = add nsw i32 %34, -1
  %36 = add nsw i32 %35, %20
  %37 = freeze i32 %36
  %38 = srem i32 %37, %33
  %39 = add i32 %34, %38
  %40 = sub i32 %37, %39
  %41 = add i32 %40, 1
  %42 = call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = icmp eq i32 %20, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %32
  %45 = add nsw i32 %20, -1
  %46 = srem i32 %45, %34
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @auxorgframe, i64 24, i1 false), !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @auxframe, i64 24, i1 false), !tbaa !10
  store i32 3, ptr @pict_type, align 4, !tbaa !6
  %49 = add nsw i32 %20, -2
  %50 = srem i32 %49, %34
  %51 = add nsw i32 %50, 1
  %52 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.motion_data, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !12
  store i32 %55, ptr @forw_hor_f_code, align 4, !tbaa !6
  %56 = getelementptr inbounds %struct.motion_data, ptr %52, i64 %53, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !14
  store i32 %57, ptr @forw_vert_f_code, align 4, !tbaa !6
  %58 = getelementptr inbounds %struct.motion_data, ptr %52, i64 %53, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !15
  store i32 %59, ptr @back_hor_f_code, align 4, !tbaa !6
  %60 = getelementptr inbounds %struct.motion_data, ptr %52, i64 %53, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !16
  store i32 %61, ptr @back_vert_f_code, align 4, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %54, i64 8
  %63 = load i32, ptr %62, align 4, !tbaa !17
  %64 = getelementptr inbounds i8, ptr %54, i64 12
  %65 = load i32, ptr %64, align 4, !tbaa !18
  %66 = getelementptr inbounds i8, ptr %54, i64 24
  %67 = load i32, ptr %66, align 4, !tbaa !19
  %68 = getelementptr inbounds i8, ptr %54, i64 28
  %69 = load i32, ptr %68, align 4, !tbaa !20
  br label %119

70:                                               ; preds = %32, %44
  %71 = phi i32 [ %45, %44 ], [ -1, %32 ]
  %72 = load ptr, ptr @oldorgframe, align 8, !tbaa !10
  store ptr %72, ptr %2, align 8, !tbaa !10
  %73 = load ptr, ptr @oldrefframe, align 8, !tbaa !10
  store ptr %73, ptr %3, align 8, !tbaa !10
  %74 = load ptr, ptr @neworgframe, align 8, !tbaa !10
  store ptr %74, ptr @oldorgframe, align 8, !tbaa !10
  %75 = load ptr, ptr @newrefframe, align 8, !tbaa !10
  store ptr %75, ptr @oldrefframe, align 8, !tbaa !10
  store ptr %72, ptr @neworgframe, align 8, !tbaa !10
  store ptr %73, ptr @newrefframe, align 8, !tbaa !10
  %76 = load ptr, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 8), align 8, !tbaa !10
  store ptr %76, ptr %15, align 8, !tbaa !10
  %77 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !10
  store ptr %77, ptr %16, align 8, !tbaa !10
  %78 = load ptr, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 8), align 8, !tbaa !10
  store ptr %78, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 8), align 8, !tbaa !10
  %79 = load ptr, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 8), align 8, !tbaa !10
  store ptr %79, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !10
  store ptr %76, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 8), align 8, !tbaa !10
  store ptr %77, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 8), align 8, !tbaa !10
  %80 = load ptr, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 16), align 8, !tbaa !10
  store ptr %80, ptr %17, align 8, !tbaa !10
  %81 = load ptr, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !10
  store ptr %81, ptr %18, align 8, !tbaa !10
  %82 = load ptr, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 16), align 8, !tbaa !10
  store ptr %82, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 16), align 8, !tbaa !10
  %83 = load ptr, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 16), align 8, !tbaa !10
  store ptr %83, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !10
  store ptr %80, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 16), align 8, !tbaa !10
  store ptr %81, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 16), align 8, !tbaa !10
  %84 = add i32 %71, %34
  %85 = select i1 %43, i32 0, i32 %84
  %86 = load i32, ptr @nframes, align 4, !tbaa !6
  %87 = icmp slt i32 %85, %86
  %88 = add nsw i32 %86, -1
  %89 = select i1 %87, i32 %85, i32 %88
  %90 = icmp eq i32 %20, %42
  br i1 %90, label %91, label %110

91:                                               ; preds = %70
  store i32 1, ptr @pict_type, align 4, !tbaa !6
  store i32 15, ptr @forw_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @forw_hor_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_hor_f_code, align 4, !tbaa !6
  br i1 %43, label %92, label %98

92:                                               ; preds = %91
  %93 = sub nsw i32 %33, %35
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 %86)
  %95 = shl i32 %34, 1
  %96 = add i32 %95, -2
  %97 = add nsw i32 %96, %94
  br label %102

98:                                               ; preds = %91
  %99 = sub nsw i32 %86, %20
  %100 = call i32 @llvm.smin.i32(i32 %33, i32 %99)
  %101 = add nsw i32 %100, %35
  br label %102

102:                                              ; preds = %98, %92
  %103 = phi i32 [ %94, %92 ], [ %100, %98 ]
  %104 = phi i32 [ %97, %92 ], [ %101, %98 ]
  %105 = sdiv i32 %104, %34
  %106 = add nsw i32 %105, -1
  %107 = sub i32 %103, %105
  call void @rc_init_GOP(i32 noundef signext %106, i32 noundef signext %107) #7
  %108 = zext i1 %43 to i32
  call void @putgophdr(i32 noundef signext %20, i32 noundef signext %108) #7
  %109 = load i32, ptr @pict_type, align 4, !tbaa !6
  br label %119

110:                                              ; preds = %70
  store i32 2, ptr @pict_type, align 4, !tbaa !6
  %111 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %112 = load i32, ptr %111, align 4, !tbaa !12
  store i32 %112, ptr @forw_hor_f_code, align 4, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %111, i64 4
  %114 = load i32, ptr %113, align 4, !tbaa !14
  store i32 %114, ptr @forw_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_hor_f_code, align 4, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %111, i64 8
  %116 = load i32, ptr %115, align 4, !tbaa !17
  %117 = getelementptr inbounds i8, ptr %111, i64 12
  %118 = load i32, ptr %117, align 4, !tbaa !18
  br label %119

119:                                              ; preds = %102, %110, %48
  %120 = phi i32 [ %109, %102 ], [ 2, %110 ], [ 3, %48 ]
  %121 = phi i32 [ %89, %102 ], [ %89, %110 ], [ %45, %48 ]
  %122 = phi i32 [ %24, %102 ], [ %116, %110 ], [ %63, %48 ]
  %123 = phi i32 [ %23, %102 ], [ %118, %110 ], [ %65, %48 ]
  %124 = phi i32 [ %22, %102 ], [ %22, %110 ], [ %67, %48 ]
  %125 = phi i32 [ %21, %102 ], [ %21, %110 ], [ %69, %48 ]
  %126 = sub nsw i32 %121, %42
  store i32 %126, ptr @temp_ref, align 4, !tbaa !6
  %127 = add nsw i32 %120, -1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i32], ptr @frame_pred_dct_tab, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !6
  store i32 %130, ptr @frame_pred_dct, align 4, !tbaa !6
  %131 = getelementptr inbounds [3 x i32], ptr @qscale_tab, i64 0, i64 %128
  %132 = load i32, ptr %131, align 4, !tbaa !6
  store i32 %132, ptr @q_scale_type, align 4, !tbaa !6
  %133 = getelementptr inbounds [3 x i32], ptr @intravlc_tab, i64 0, i64 %128
  %134 = load i32, ptr %133, align 4, !tbaa !6
  store i32 %134, ptr @intravlc, align 4, !tbaa !6
  %135 = getelementptr inbounds [3 x i32], ptr @altscan_tab, i64 0, i64 %128
  %136 = load i32, ptr %135, align 4, !tbaa !6
  store i32 %136, ptr @altscan, align 4, !tbaa !6
  %137 = load ptr, ptr @statfile, align 8, !tbaa !10
  %138 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.1, i32 noundef signext %20, i32 noundef signext %121) #7
  %139 = load ptr, ptr @statfile, align 8, !tbaa !10
  %140 = load i32, ptr @pict_type, align 4, !tbaa !6
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [5 x i8], ptr @putseq.ipb, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !21
  %144 = zext i8 %143 to i32
  %145 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.2, i32 noundef signext %144) #7
  %146 = load ptr, ptr @statfile, align 8, !tbaa !10
  %147 = load i32, ptr @temp_ref, align 4, !tbaa !6
  %148 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.3, i32 noundef signext %147) #7
  %149 = load ptr, ptr @statfile, align 8, !tbaa !10
  %150 = load i32, ptr @frame_pred_dct, align 4, !tbaa !6
  %151 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.4, i32 noundef signext %150) #7
  %152 = load ptr, ptr @statfile, align 8, !tbaa !10
  %153 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  %154 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.5, i32 noundef signext %153) #7
  %155 = load ptr, ptr @statfile, align 8, !tbaa !10
  %156 = load i32, ptr @intravlc, align 4, !tbaa !6
  %157 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.6, i32 noundef signext %156) #7
  %158 = load ptr, ptr @statfile, align 8, !tbaa !10
  %159 = load i32, ptr @altscan, align 4, !tbaa !6
  %160 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.7, i32 noundef signext %159) #7
  %161 = load i32, ptr @pict_type, align 4, !tbaa !6
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %195, label %163

163:                                              ; preds = %119
  %164 = load ptr, ptr @statfile, align 8, !tbaa !10
  %165 = sub nsw i32 0, %122
  %166 = sub nsw i32 0, %123
  %167 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.8, i32 noundef signext %165, i32 noundef signext %122, i32 noundef signext %166, i32 noundef signext %123) #7
  %168 = load ptr, ptr @statfile, align 8, !tbaa !10
  %169 = load i32, ptr @forw_hor_f_code, align 4, !tbaa !6
  %170 = shl i32 4, %169
  %171 = sub nsw i32 0, %170
  %172 = add nsw i32 %170, -1
  %173 = load i32, ptr @forw_vert_f_code, align 4, !tbaa !6
  %174 = shl i32 4, %173
  %175 = sub nsw i32 0, %174
  %176 = add nsw i32 %174, -1
  %177 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.9, i32 noundef signext %171, i32 noundef signext %172, i32 noundef signext %175, i32 noundef signext %176) #7
  %178 = load i32, ptr @pict_type, align 4, !tbaa !6
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %195

180:                                              ; preds = %163
  %181 = load ptr, ptr @statfile, align 8, !tbaa !10
  %182 = sub nsw i32 0, %124
  %183 = sub nsw i32 0, %125
  %184 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.10, i32 noundef signext %182, i32 noundef signext %124, i32 noundef signext %183, i32 noundef signext %125) #7
  %185 = load ptr, ptr @statfile, align 8, !tbaa !10
  %186 = load i32, ptr @back_hor_f_code, align 4, !tbaa !6
  %187 = shl i32 4, %186
  %188 = sub nsw i32 0, %187
  %189 = add nsw i32 %187, -1
  %190 = load i32, ptr @back_vert_f_code, align 4, !tbaa !6
  %191 = shl i32 4, %190
  %192 = sub nsw i32 0, %191
  %193 = add nsw i32 %191, -1
  %194 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.11, i32 noundef signext %188, i32 noundef signext %189, i32 noundef signext %192, i32 noundef signext %193) #7
  br label %195

195:                                              ; preds = %119, %180, %163
  %196 = load i32, ptr @frame0, align 4, !tbaa !6
  %197 = add nsw i32 %196, %121
  %198 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @tplorg, i32 noundef signext %197) #7
  call void @readframe(ptr noundef nonnull %1, ptr noundef nonnull %2) #7
  %199 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %386, label %201

201:                                              ; preds = %195
  %202 = load i32, ptr @quiet, align 4, !tbaa !6
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load ptr, ptr @stderr, align 8, !tbaa !10
  %206 = load i32, ptr @topfirst, align 4, !tbaa !6
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, ptr @.str.14, ptr @.str.13
  %209 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.12, ptr noundef nonnull %208) #9
  %210 = load ptr, ptr @stderr, align 8, !tbaa !10
  %211 = call signext i32 @fflush(ptr noundef %210)
  br label %212

212:                                              ; preds = %204, %201
  %213 = load i32, ptr @topfirst, align 4, !tbaa !6
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i32 2, i32 1
  store i32 %215, ptr @pict_struct, align 4, !tbaa !6
  %216 = load ptr, ptr @oldorgframe, align 8, !tbaa !10
  %217 = load ptr, ptr @neworgframe, align 8, !tbaa !10
  %218 = load ptr, ptr @oldrefframe, align 8, !tbaa !10
  %219 = load ptr, ptr @newrefframe, align 8, !tbaa !10
  %220 = load ptr, ptr %2, align 8, !tbaa !10
  %221 = load ptr, ptr %3, align 8, !tbaa !10
  %222 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @motion_estimation(ptr noundef %216, ptr noundef %217, ptr noundef %218, ptr noundef %219, ptr noundef %220, ptr noundef %221, i32 noundef signext %122, i32 noundef signext %123, i32 noundef signext %124, i32 noundef signext %125, ptr noundef %222, i32 noundef signext 0, i32 noundef signext 0) #7
  %223 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @predict(ptr noundef nonnull @oldrefframe, ptr noundef nonnull @newrefframe, ptr noundef nonnull @predframe, i32 noundef signext 0, ptr noundef %223) #7
  %224 = load ptr, ptr @predframe, align 8, !tbaa !10
  %225 = load ptr, ptr %2, align 8, !tbaa !10
  %226 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @dct_type_estimation(ptr noundef %224, ptr noundef %225, ptr noundef %226) #7
  %227 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %228 = load ptr, ptr @blocks, align 8, !tbaa !10
  call void @transform(ptr noundef nonnull @predframe, ptr noundef nonnull %2, ptr noundef %227, ptr noundef %228) #7
  %229 = load ptr, ptr %2, align 8, !tbaa !10
  call void @putpict(ptr noundef %229) #7
  %230 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %231 = load i32, ptr @mb_width, align 4, !tbaa !6
  %232 = mul nsw i32 %231, %230
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %285

234:                                              ; preds = %212, %278
  %235 = phi i64 [ %279, %278 ], [ 0, %212 ]
  %236 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %237 = getelementptr inbounds %struct.mbinfo, ptr %236, i64 %235
  %238 = load i32, ptr %237, align 8, !tbaa !22
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  %241 = load i32, ptr @block_count, align 4, !tbaa !6
  %242 = icmp sgt i32 %241, 0
  br i1 %240, label %246, label %243

243:                                              ; preds = %234
  br i1 %242, label %244, label %278

244:                                              ; preds = %243
  %245 = trunc nuw nsw i64 %235 to i32
  br label %249

246:                                              ; preds = %234
  br i1 %242, label %247, label %278

247:                                              ; preds = %246
  %248 = trunc nuw nsw i64 %235 to i32
  br label %264

249:                                              ; preds = %244, %249
  %250 = phi i32 [ %262, %249 ], [ %241, %244 ]
  %251 = phi i32 [ %261, %249 ], [ 0, %244 ]
  %252 = load ptr, ptr @blocks, align 8, !tbaa !10
  %253 = mul nsw i32 %250, %245
  %254 = add nsw i32 %253, %251
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [64 x i16], ptr %252, i64 %255
  %257 = load i32, ptr @dc_prec, align 4, !tbaa !6
  %258 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %259 = getelementptr inbounds %struct.mbinfo, ptr %258, i64 %235, i32 3
  %260 = load i32, ptr %259, align 4, !tbaa !25
  call void @iquant_intra(ptr noundef %256, ptr noundef %256, i32 noundef signext %257, ptr noundef nonnull @intra_q, i32 noundef signext %260) #7
  %261 = add nuw nsw i32 %251, 1
  %262 = load i32, ptr @block_count, align 4, !tbaa !6
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %249, label %278

264:                                              ; preds = %247, %264
  %265 = phi i32 [ %276, %264 ], [ %241, %247 ]
  %266 = phi i32 [ %275, %264 ], [ 0, %247 ]
  %267 = load ptr, ptr @blocks, align 8, !tbaa !10
  %268 = mul nsw i32 %265, %248
  %269 = add nsw i32 %268, %266
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [64 x i16], ptr %267, i64 %270
  %272 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %273 = getelementptr inbounds %struct.mbinfo, ptr %272, i64 %235, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !25
  call void @iquant_non_intra(ptr noundef %271, ptr noundef %271, ptr noundef nonnull @inter_q, i32 noundef signext %274) #7
  %275 = add nuw nsw i32 %266, 1
  %276 = load i32, ptr @block_count, align 4, !tbaa !6
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %264, label %278

278:                                              ; preds = %249, %264, %243, %246
  %279 = add nuw nsw i64 %235, 1
  %280 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %281 = load i32, ptr @mb_width, align 4, !tbaa !6
  %282 = mul nsw i32 %281, %280
  %283 = sext i32 %282 to i64
  %284 = icmp slt i64 %279, %283
  br i1 %284, label %234, label %285

285:                                              ; preds = %278, %212
  %286 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %287 = load ptr, ptr @blocks, align 8, !tbaa !10
  call void @itransform(ptr noundef nonnull @predframe, ptr noundef nonnull %3, ptr noundef %286, ptr noundef %287) #7
  call void @calcSNR(ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  call void @stats() #7
  %288 = load i32, ptr @quiet, align 4, !tbaa !6
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %285
  %291 = load ptr, ptr @stderr, align 8, !tbaa !10
  %292 = load i32, ptr @topfirst, align 4, !tbaa !6
  %293 = icmp eq i32 %292, 0
  %294 = select i1 %293, ptr @.str.13, ptr @.str.14
  %295 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %291, ptr noundef nonnull @.str.15, ptr noundef nonnull %294) #9
  %296 = load ptr, ptr @stderr, align 8, !tbaa !10
  %297 = call signext i32 @fflush(ptr noundef %296)
  br label %298

298:                                              ; preds = %290, %285
  %299 = load i32, ptr @topfirst, align 4, !tbaa !6
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %300, i32 1, i32 2
  store i32 %301, ptr @pict_struct, align 4, !tbaa !6
  %302 = load i32, ptr @pict_type, align 4, !tbaa !6
  %303 = icmp eq i32 %302, 1
  %304 = zext i1 %303 to i32
  br i1 %303, label %305, label %314

305:                                              ; preds = %298
  store i32 2, ptr @pict_type, align 4, !tbaa !6
  %306 = load ptr, ptr @motion_data, align 8, !tbaa !10
  %307 = load i32, ptr %306, align 4, !tbaa !12
  store i32 %307, ptr @forw_hor_f_code, align 4, !tbaa !6
  %308 = getelementptr inbounds i8, ptr %306, i64 4
  %309 = load i32, ptr %308, align 4, !tbaa !14
  store i32 %309, ptr @forw_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_vert_f_code, align 4, !tbaa !6
  store i32 15, ptr @back_hor_f_code, align 4, !tbaa !6
  %310 = getelementptr inbounds i8, ptr %306, i64 8
  %311 = load i32, ptr %310, align 4, !tbaa !17
  %312 = getelementptr inbounds i8, ptr %306, i64 12
  %313 = load i32, ptr %312, align 4, !tbaa !18
  br label %314

314:                                              ; preds = %305, %298
  %315 = phi i32 [ %311, %305 ], [ %122, %298 ]
  %316 = phi i32 [ %313, %305 ], [ %123, %298 ]
  %317 = load ptr, ptr @oldorgframe, align 8, !tbaa !10
  %318 = load ptr, ptr @neworgframe, align 8, !tbaa !10
  %319 = load ptr, ptr @oldrefframe, align 8, !tbaa !10
  %320 = load ptr, ptr @newrefframe, align 8, !tbaa !10
  %321 = load ptr, ptr %2, align 8, !tbaa !10
  %322 = load ptr, ptr %3, align 8, !tbaa !10
  %323 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @motion_estimation(ptr noundef %317, ptr noundef %318, ptr noundef %319, ptr noundef %320, ptr noundef %321, ptr noundef %322, i32 noundef signext %315, i32 noundef signext %316, i32 noundef signext %124, i32 noundef signext %125, ptr noundef %323, i32 noundef signext 1, i32 noundef signext %304) #7
  %324 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @predict(ptr noundef nonnull @oldrefframe, ptr noundef nonnull @newrefframe, ptr noundef nonnull @predframe, i32 noundef signext 1, ptr noundef %324) #7
  %325 = load ptr, ptr @predframe, align 8, !tbaa !10
  %326 = load ptr, ptr %2, align 8, !tbaa !10
  %327 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @dct_type_estimation(ptr noundef %325, ptr noundef %326, ptr noundef %327) #7
  %328 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %329 = load ptr, ptr @blocks, align 8, !tbaa !10
  call void @transform(ptr noundef nonnull @predframe, ptr noundef nonnull %2, ptr noundef %328, ptr noundef %329) #7
  %330 = load ptr, ptr %2, align 8, !tbaa !10
  call void @putpict(ptr noundef %330) #7
  %331 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %332 = load i32, ptr @mb_width, align 4, !tbaa !6
  %333 = mul nsw i32 %332, %331
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %456

335:                                              ; preds = %314, %379
  %336 = phi i64 [ %380, %379 ], [ 0, %314 ]
  %337 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %338 = getelementptr inbounds %struct.mbinfo, ptr %337, i64 %336
  %339 = load i32, ptr %338, align 8, !tbaa !22
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  %342 = load i32, ptr @block_count, align 4, !tbaa !6
  %343 = icmp sgt i32 %342, 0
  br i1 %341, label %347, label %344

344:                                              ; preds = %335
  br i1 %343, label %345, label %379

345:                                              ; preds = %344
  %346 = trunc nuw nsw i64 %336 to i32
  br label %350

347:                                              ; preds = %335
  br i1 %343, label %348, label %379

348:                                              ; preds = %347
  %349 = trunc nuw nsw i64 %336 to i32
  br label %365

350:                                              ; preds = %345, %350
  %351 = phi i32 [ %363, %350 ], [ %342, %345 ]
  %352 = phi i32 [ %362, %350 ], [ 0, %345 ]
  %353 = load ptr, ptr @blocks, align 8, !tbaa !10
  %354 = mul nsw i32 %351, %346
  %355 = add nsw i32 %354, %352
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [64 x i16], ptr %353, i64 %356
  %358 = load i32, ptr @dc_prec, align 4, !tbaa !6
  %359 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %360 = getelementptr inbounds %struct.mbinfo, ptr %359, i64 %336, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !25
  call void @iquant_intra(ptr noundef %357, ptr noundef %357, i32 noundef signext %358, ptr noundef nonnull @intra_q, i32 noundef signext %361) #7
  %362 = add nuw nsw i32 %352, 1
  %363 = load i32, ptr @block_count, align 4, !tbaa !6
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %350, label %379

365:                                              ; preds = %348, %365
  %366 = phi i32 [ %377, %365 ], [ %342, %348 ]
  %367 = phi i32 [ %376, %365 ], [ 0, %348 ]
  %368 = load ptr, ptr @blocks, align 8, !tbaa !10
  %369 = mul nsw i32 %366, %349
  %370 = add nsw i32 %369, %367
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [64 x i16], ptr %368, i64 %371
  %373 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %374 = getelementptr inbounds %struct.mbinfo, ptr %373, i64 %336, i32 3
  %375 = load i32, ptr %374, align 4, !tbaa !25
  call void @iquant_non_intra(ptr noundef %372, ptr noundef %372, ptr noundef nonnull @inter_q, i32 noundef signext %375) #7
  %376 = add nuw nsw i32 %367, 1
  %377 = load i32, ptr @block_count, align 4, !tbaa !6
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %365, label %379

379:                                              ; preds = %350, %365, %344, %347
  %380 = add nuw nsw i64 %336, 1
  %381 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %382 = load i32, ptr @mb_width, align 4, !tbaa !6
  %383 = mul nsw i32 %382, %381
  %384 = sext i32 %383 to i64
  %385 = icmp slt i64 %380, %384
  br i1 %385, label %335, label %456

386:                                              ; preds = %195
  store i32 3, ptr @pict_struct, align 4, !tbaa !6
  %387 = load ptr, ptr @oldorgframe, align 8, !tbaa !10
  %388 = load ptr, ptr @neworgframe, align 8, !tbaa !10
  %389 = load ptr, ptr @oldrefframe, align 8, !tbaa !10
  %390 = load ptr, ptr @newrefframe, align 8, !tbaa !10
  %391 = load ptr, ptr %2, align 8, !tbaa !10
  %392 = load ptr, ptr %3, align 8, !tbaa !10
  %393 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @motion_estimation(ptr noundef %387, ptr noundef %388, ptr noundef %389, ptr noundef %390, ptr noundef %391, ptr noundef %392, i32 noundef signext %122, i32 noundef signext %123, i32 noundef signext %124, i32 noundef signext %125, ptr noundef %393, i32 noundef signext 0, i32 noundef signext 0) #7
  %394 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @predict(ptr noundef nonnull @oldrefframe, ptr noundef nonnull @newrefframe, ptr noundef nonnull @predframe, i32 noundef signext 0, ptr noundef %394) #7
  %395 = load ptr, ptr @predframe, align 8, !tbaa !10
  %396 = load ptr, ptr %2, align 8, !tbaa !10
  %397 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  call void @dct_type_estimation(ptr noundef %395, ptr noundef %396, ptr noundef %397) #7
  %398 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %399 = load ptr, ptr @blocks, align 8, !tbaa !10
  call void @transform(ptr noundef nonnull @predframe, ptr noundef nonnull %2, ptr noundef %398, ptr noundef %399) #7
  %400 = load ptr, ptr %2, align 8, !tbaa !10
  call void @putpict(ptr noundef %400) #7
  %401 = load i32, ptr @mb_height, align 4, !tbaa !6
  %402 = load i32, ptr @mb_width, align 4, !tbaa !6
  %403 = mul nsw i32 %402, %401
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %456

405:                                              ; preds = %386, %449
  %406 = phi i64 [ %450, %449 ], [ 0, %386 ]
  %407 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %408 = getelementptr inbounds %struct.mbinfo, ptr %407, i64 %406
  %409 = load i32, ptr %408, align 8, !tbaa !22
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  %412 = load i32, ptr @block_count, align 4, !tbaa !6
  %413 = icmp sgt i32 %412, 0
  br i1 %411, label %417, label %414

414:                                              ; preds = %405
  br i1 %413, label %415, label %449

415:                                              ; preds = %414
  %416 = trunc nuw nsw i64 %406 to i32
  br label %420

417:                                              ; preds = %405
  br i1 %413, label %418, label %449

418:                                              ; preds = %417
  %419 = trunc nuw nsw i64 %406 to i32
  br label %435

420:                                              ; preds = %415, %420
  %421 = phi i32 [ %433, %420 ], [ %412, %415 ]
  %422 = phi i32 [ %432, %420 ], [ 0, %415 ]
  %423 = load ptr, ptr @blocks, align 8, !tbaa !10
  %424 = mul nsw i32 %421, %416
  %425 = add nsw i32 %424, %422
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [64 x i16], ptr %423, i64 %426
  %428 = load i32, ptr @dc_prec, align 4, !tbaa !6
  %429 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %430 = getelementptr inbounds %struct.mbinfo, ptr %429, i64 %406, i32 3
  %431 = load i32, ptr %430, align 4, !tbaa !25
  call void @iquant_intra(ptr noundef %427, ptr noundef %427, i32 noundef signext %428, ptr noundef nonnull @intra_q, i32 noundef signext %431) #7
  %432 = add nuw nsw i32 %422, 1
  %433 = load i32, ptr @block_count, align 4, !tbaa !6
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %420, label %449

435:                                              ; preds = %418, %435
  %436 = phi i32 [ %447, %435 ], [ %412, %418 ]
  %437 = phi i32 [ %446, %435 ], [ 0, %418 ]
  %438 = load ptr, ptr @blocks, align 8, !tbaa !10
  %439 = mul nsw i32 %436, %419
  %440 = add nsw i32 %439, %437
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [64 x i16], ptr %438, i64 %441
  %443 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %444 = getelementptr inbounds %struct.mbinfo, ptr %443, i64 %406, i32 3
  %445 = load i32, ptr %444, align 4, !tbaa !25
  call void @iquant_non_intra(ptr noundef %442, ptr noundef %442, ptr noundef nonnull @inter_q, i32 noundef signext %445) #7
  %446 = add nuw nsw i32 %437, 1
  %447 = load i32, ptr @block_count, align 4, !tbaa !6
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %435, label %449

449:                                              ; preds = %420, %435, %414, %417
  %450 = add nuw nsw i64 %406, 1
  %451 = load i32, ptr @mb_height, align 4, !tbaa !6
  %452 = load i32, ptr @mb_width, align 4, !tbaa !6
  %453 = mul nsw i32 %452, %451
  %454 = sext i32 %453 to i64
  %455 = icmp slt i64 %450, %454
  br i1 %455, label %405, label %456

456:                                              ; preds = %379, %449, %386, %314
  %457 = phi i32 [ %315, %314 ], [ %122, %386 ], [ %122, %449 ], [ %315, %379 ]
  %458 = phi i32 [ %316, %314 ], [ %123, %386 ], [ %123, %449 ], [ %316, %379 ]
  %459 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %460 = load ptr, ptr @blocks, align 8, !tbaa !10
  call void @itransform(ptr noundef nonnull @predframe, ptr noundef nonnull %3, ptr noundef %459, ptr noundef %460) #7
  call void @calcSNR(ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  call void @stats() #7
  %461 = load i32, ptr @frame0, align 4, !tbaa !6
  %462 = add nsw i32 %461, %121
  %463 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @tplref, i32 noundef signext %462) #7
  call void @writeframe(ptr noundef nonnull %1, ptr noundef nonnull %3) #7
  %464 = add nuw nsw i32 %20, 1
  %465 = load i32, ptr @nframes, align 4, !tbaa !6
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %19, label %467

467:                                              ; preds = %456, %11
  call void @putseqend() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @rc_init_seq() local_unnamed_addr #2

declare dso_local void @putseqhdr() local_unnamed_addr #2

declare dso_local void @putseqext() local_unnamed_addr #2

declare dso_local void @putseqdispext() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare dso_local void @putuserdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local void @rc_init_GOP(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putgophdr(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare dso_local void @readframe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @motion_estimation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @predict(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local void @dct_type_estimation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @putpict(ptr noundef) local_unnamed_addr #2

declare dso_local void @iquant_intra(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @iquant_non_intra(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @itransform(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @calcSNR(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @stats() local_unnamed_addr #2

declare dso_local void @writeframe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local void @putseqend() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { cold nounwind }

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
!15 = !{!13, !7, i64 16}
!16 = !{!13, !7, i64 20}
!17 = !{!13, !7, i64 8}
!18 = !{!13, !7, i64 12}
!19 = !{!13, !7, i64 24}
!20 = !{!13, !7, i64 28}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !24, i64 80, !7, i64 88}
!24 = !{!"double", !8, i64 0}
!25 = !{!23, !7, i64 12}
