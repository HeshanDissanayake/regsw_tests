; ModuleID = 'mpeg2enc.c'
source_filename = "mpeg2enc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.motion_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@version = dso_local global [27 x i8] c"mpeg2encode V1.2, 96/07/19\00", align 1
@author = dso_local global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 1
@zig_zag_scan = dso_local local_unnamed_addr global [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 1
@alternate_scan = dso_local local_unnamed_addr global [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?", align 1
@default_intra_quantizer_matrix = dso_local local_unnamed_addr global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 1
@non_linear_mquant_table = dso_local local_unnamed_addr global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 1
@map_non_linear_mquant = dso_local local_unnamed_addr global [113 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\10\11\11\11\12\12\12\12\13\13\13\13\14\14\14\14\15\15\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F", align 1
@.str = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@outfile = dso_local local_unnamed_addr global ptr null, align 8
@errortext = dso_local global [256 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't create output file %s\00", align 1
@statfile = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@newrefframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@oldrefframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@auxframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@neworgframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@oldorgframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@auxorgframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@predframe = dso_local local_unnamed_addr global [3 x ptr] zeroinitializer, align 8
@blocks = dso_local local_unnamed_addr global ptr null, align 8
@intra_q = dso_local local_unnamed_addr global [64 x i8] zeroinitializer, align 1
@inter_q = dso_local local_unnamed_addr global [64 x i8] zeroinitializer, align 1
@chrom_intra_q = dso_local local_unnamed_addr global [64 x i8] zeroinitializer, align 1
@chrom_inter_q = dso_local local_unnamed_addr global [64 x i8] zeroinitializer, align 1
@dc_dct_pred = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@mbinfo = dso_local local_unnamed_addr global ptr null, align 8
@motion_data = dso_local local_unnamed_addr global ptr null, align 8
@clp = dso_local local_unnamed_addr global ptr null, align 8
@id_string = dso_local global [256 x i8] zeroinitializer, align 1
@tplorg = dso_local global [256 x i8] zeroinitializer, align 1
@tplref = dso_local global [256 x i8] zeroinitializer, align 1
@iqname = dso_local global [256 x i8] zeroinitializer, align 1
@niqname = dso_local global [256 x i8] zeroinitializer, align 1
@statname = dso_local global [256 x i8] zeroinitializer, align 1
@inputtype = dso_local global i32 0, align 4
@quiet = dso_local local_unnamed_addr global i32 0, align 4
@N = dso_local global i32 0, align 4
@M = dso_local global i32 0, align 4
@P = dso_local global i32 0, align 4
@nframes = dso_local global i32 0, align 4
@frame0 = dso_local global i32 0, align 4
@tc0 = dso_local local_unnamed_addr global i32 0, align 4
@mpeg1 = dso_local global i32 0, align 4
@fieldpic = dso_local global i32 0, align 4
@horizontal_size = dso_local global i32 0, align 4
@vertical_size = dso_local global i32 0, align 4
@width = dso_local local_unnamed_addr global i32 0, align 4
@height = dso_local local_unnamed_addr global i32 0, align 4
@chrom_width = dso_local local_unnamed_addr global i32 0, align 4
@chrom_height = dso_local local_unnamed_addr global i32 0, align 4
@block_count = dso_local local_unnamed_addr global i32 0, align 4
@mb_width = dso_local local_unnamed_addr global i32 0, align 4
@mb_height = dso_local local_unnamed_addr global i32 0, align 4
@width2 = dso_local local_unnamed_addr global i32 0, align 4
@height2 = dso_local local_unnamed_addr global i32 0, align 4
@mb_height2 = dso_local local_unnamed_addr global i32 0, align 4
@chrom_width2 = dso_local local_unnamed_addr global i32 0, align 4
@aspectratio = dso_local global i32 0, align 4
@frame_rate_code = dso_local global i32 0, align 4
@frame_rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@bit_rate = dso_local global double 0.000000e+00, align 8
@vbv_buffer_size = dso_local global i32 0, align 4
@constrparms = dso_local global i32 0, align 4
@load_iquant = dso_local local_unnamed_addr global i32 0, align 4
@load_niquant = dso_local local_unnamed_addr global i32 0, align 4
@load_ciquant = dso_local local_unnamed_addr global i32 0, align 4
@load_cniquant = dso_local local_unnamed_addr global i32 0, align 4
@profile = dso_local global i32 0, align 4
@level = dso_local global i32 0, align 4
@prog_seq = dso_local global i32 0, align 4
@chroma_format = dso_local global i32 0, align 4
@low_delay = dso_local global i32 0, align 4
@video_format = dso_local global i32 0, align 4
@color_primaries = dso_local global i32 0, align 4
@transfer_characteristics = dso_local global i32 0, align 4
@matrix_coefficients = dso_local global i32 0, align 4
@display_horizontal_size = dso_local global i32 0, align 4
@display_vertical_size = dso_local global i32 0, align 4
@temp_ref = dso_local local_unnamed_addr global i32 0, align 4
@pict_type = dso_local local_unnamed_addr global i32 0, align 4
@vbv_delay = dso_local local_unnamed_addr global i32 0, align 4
@forw_hor_f_code = dso_local local_unnamed_addr global i32 0, align 4
@forw_vert_f_code = dso_local local_unnamed_addr global i32 0, align 4
@back_hor_f_code = dso_local local_unnamed_addr global i32 0, align 4
@back_vert_f_code = dso_local local_unnamed_addr global i32 0, align 4
@dc_prec = dso_local global i32 0, align 4
@pict_struct = dso_local local_unnamed_addr global i32 0, align 4
@topfirst = dso_local global i32 0, align 4
@frame_pred_dct_tab = dso_local global [3 x i32] zeroinitializer, align 4
@frame_pred_dct = dso_local local_unnamed_addr global i32 0, align 4
@conceal_tab = dso_local global [3 x i32] zeroinitializer, align 4
@qscale_tab = dso_local global [3 x i32] zeroinitializer, align 4
@q_scale_type = dso_local local_unnamed_addr global i32 0, align 4
@intravlc_tab = dso_local global [3 x i32] zeroinitializer, align 4
@intravlc = dso_local local_unnamed_addr global i32 0, align 4
@altscan_tab = dso_local global [3 x i32] zeroinitializer, align 4
@altscan = dso_local local_unnamed_addr global i32 0, align 4
@repeatfirst = dso_local global i32 0, align 4
@prog_frame = dso_local global i32 0, align 4
@init.block_count_tab = internal unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Couldn't create statistics output file %s\00", align 1
@readparmfile.ratetab = internal unnamed_addr constant [8 x double] [double 0x4037F9DCB5112287, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01], align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Couldn't open parameter file %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%d:%d:%d:%d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@r = external dso_local global i32, align 4
@avg_act = external dso_local global double, align 8
@Xi = external dso_local global i32, align 4
@Xp = external dso_local global i32, align 4
@Xb = external dso_local global i32, align 4
@d0i = external dso_local global i32, align 4
@d0p = external dso_local global i32, align 4
@d0b = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"N must be positive\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"M must be positive\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"N must be an integer multiple of M\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Warning: setting constrained_parameters_flag = 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Warning: setting progressive_sequence = 1\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Warning: setting chroma_format = 1 (4:2:0)\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Warning: setting intra_dc_precision = 0\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Warning: setting qscale_tab[%d] = 0\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Warning: setting intravlc_tab[%d] = 0\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Warning: setting altscan_tab[%d] = 0\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Warning: setting progressive_frame = 1\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Warning: setting field_pictures = 0\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Warning: setting repeat_first_field = 0\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Warning: setting frame_pred_frame_dct[%d] = 1\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Warning: setting top_field_first = 0\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"Warning: reducing forward horizontal search width to %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"Warning: reducing forward vertical search width to %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"Warning: reducing backward horizontal search width to %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"Warning: reducing backward vertical search width to %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Couldn't open quant matrix file %s\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"invalid value in quant matrix\00", align 1
@str = private unnamed_addr constant [34 x i8] c"Usage: mpeg2encode in.par out.m2v\00", align 1

; Function Attrs: nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 1
  %9 = icmp eq i32 %0, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @version, ptr noundef nonnull @author)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef signext 0) #10
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #11
  %16 = tail call ptr @fopen(ptr noundef %15, ptr noundef nonnull @.str.7)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %15) #11
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull readonly @errortext) #12
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call signext i32 @putc(i32 noundef signext 10, ptr noundef %22)
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

24:                                               ; preds = %13
  %25 = tail call ptr @fgets(ptr noundef nonnull @id_string, i32 noundef signext 254, ptr noundef nonnull %16)
  %26 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %27 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @tplorg) #11
  %28 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %29 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @tplref) #11
  %30 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %31 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @iqname) #11
  %32 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %33 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @niqname) #11
  %34 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %35 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @statname) #11
  %36 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %37 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @inputtype) #11
  %38 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %39 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @nframes) #11
  %40 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %41 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @frame0) #11
  %42 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %43 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %44 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %45 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @N) #11
  %46 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %47 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @M) #11
  %48 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %49 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @mpeg1) #11
  %50 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %51 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @fieldpic) #11
  %52 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %53 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @horizontal_size) #11
  %54 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %55 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @vertical_size) #11
  %56 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %57 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @aspectratio) #11
  %58 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %59 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @frame_rate_code) #11
  %60 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %61 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @bit_rate) #11
  %62 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %63 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @vbv_buffer_size) #11
  %64 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %65 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @low_delay) #11
  %66 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %67 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @constrparms) #11
  %68 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %69 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @profile) #11
  %70 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %71 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @level) #11
  %72 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %73 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @prog_seq) #11
  %74 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %75 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @chroma_format) #11
  %76 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %77 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @video_format) #11
  %78 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %79 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @color_primaries) #11
  %80 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %81 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @transfer_characteristics) #11
  %82 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %83 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @matrix_coefficients) #11
  %84 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %85 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @display_horizontal_size) #11
  %86 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %87 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @display_vertical_size) #11
  %88 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %89 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @dc_prec) #11
  %90 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %91 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @topfirst) #11
  %92 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %93 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @frame_pred_dct_tab, ptr noundef nonnull getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 4), ptr noundef nonnull getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 8)) #11
  %94 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %95 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @conceal_tab, ptr noundef nonnull getelementptr inbounds (i8, ptr @conceal_tab, i64 4), ptr noundef nonnull getelementptr inbounds (i8, ptr @conceal_tab, i64 8)) #11
  %96 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %97 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @qscale_tab, ptr noundef nonnull getelementptr inbounds (i8, ptr @qscale_tab, i64 4), ptr noundef nonnull getelementptr inbounds (i8, ptr @qscale_tab, i64 8)) #11
  %98 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %99 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @intravlc_tab, ptr noundef nonnull getelementptr inbounds (i8, ptr @intravlc_tab, i64 4), ptr noundef nonnull getelementptr inbounds (i8, ptr @intravlc_tab, i64 8)) #11
  %100 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %101 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @altscan_tab, ptr noundef nonnull getelementptr inbounds (i8, ptr @altscan_tab, i64 4), ptr noundef nonnull getelementptr inbounds (i8, ptr @altscan_tab, i64 8)) #11
  %102 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %103 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @repeatfirst) #11
  %104 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %105 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @prog_frame) #11
  %106 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %107 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @P) #11
  %108 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %109 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @r) #11
  %110 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %111 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @avg_act) #11
  %112 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %113 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @Xi) #11
  %114 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %115 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @Xp) #11
  %116 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %117 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @Xb) #11
  %118 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %119 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @d0i) #11
  %120 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %121 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @d0p) #11
  %122 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %123 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @d0b) #11
  %124 = load i32, ptr @N, align 4, !tbaa !10
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %24
  %127 = load ptr, ptr @stderr, align 8, !tbaa !6
  %128 = call i64 @fwrite(ptr nonnull @.str.14, i64 18, i64 1, ptr %127) #13
  %129 = load ptr, ptr @stderr, align 8, !tbaa !6
  %130 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %129)
  call void @exit(i32 noundef signext 1) #10
  unreachable

131:                                              ; preds = %24
  %132 = load i32, ptr @M, align 4, !tbaa !10
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load ptr, ptr @stderr, align 8, !tbaa !6
  %136 = call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %135) #13
  %137 = load ptr, ptr @stderr, align 8, !tbaa !6
  %138 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %137)
  call void @exit(i32 noundef signext 1) #10
  unreachable

139:                                              ; preds = %131
  %140 = urem i32 %124, %132
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @stderr, align 8, !tbaa !6
  %144 = call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %143) #13
  %145 = load ptr, ptr @stderr, align 8, !tbaa !6
  %146 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %145)
  call void @exit(i32 noundef signext 1) #10
  unreachable

147:                                              ; preds = %139
  %148 = zext nneg i32 %132 to i64
  %149 = shl nuw nsw i64 %148, 5
  %150 = call noalias ptr @malloc(i64 noundef %149) #14
  store ptr %150, ptr @motion_data, align 8, !tbaa !6
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %147
  %153 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef nonnull %16)
  %154 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %154, i64 4
  %156 = getelementptr inbounds i8, ptr %154, i64 8
  %157 = getelementptr inbounds i8, ptr %154, i64 12
  %158 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.17, ptr noundef %154, ptr noundef nonnull %155, ptr noundef nonnull %156, ptr noundef nonnull %157) #11
  %159 = load i32, ptr @M, align 4, !tbaa !10
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %166, label %187

161:                                              ; preds = %147
  %162 = load ptr, ptr @stderr, align 8, !tbaa !6
  %163 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %162) #13
  %164 = load ptr, ptr @stderr, align 8, !tbaa !6
  %165 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %164)
  call void @exit(i32 noundef signext 1) #10
  unreachable

166:                                              ; preds = %152, %166
  %167 = phi i64 [ %183, %166 ], [ 1, %152 ]
  %168 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef %16)
  %169 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %170 = getelementptr inbounds %struct.motion_data, ptr %169, i64 %167
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  %172 = getelementptr inbounds i8, ptr %170, i64 8
  %173 = getelementptr inbounds i8, ptr %170, i64 12
  %174 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.17, ptr noundef nonnull %170, ptr noundef nonnull %171, ptr noundef nonnull %172, ptr noundef nonnull %173) #11
  %175 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef signext 254, ptr noundef %16)
  %176 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.motion_data, ptr %176, i64 %167
  %178 = getelementptr inbounds i8, ptr %177, i64 16
  %179 = getelementptr inbounds i8, ptr %177, i64 20
  %180 = getelementptr inbounds i8, ptr %177, i64 24
  %181 = getelementptr inbounds i8, ptr %177, i64 28
  %182 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.17, ptr noundef nonnull %178, ptr noundef nonnull %179, ptr noundef nonnull %180, ptr noundef nonnull %181) #11
  %183 = add nuw nsw i64 %167, 1
  %184 = load i32, ptr @M, align 4, !tbaa !10
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %166, label %187, !llvm.loop !12

187:                                              ; preds = %166, %152
  %188 = call signext i32 @fclose(ptr noundef %16)
  %189 = load i32, ptr @mpeg1, align 4, !tbaa !10
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, ptr @mpeg1, align 4, !tbaa !10
  %192 = load i32, ptr @fieldpic, align 4, !tbaa !10
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i32
  store i32 %194, ptr @fieldpic, align 4, !tbaa !10
  %195 = load i32, ptr @low_delay, align 4, !tbaa !10
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i32
  store i32 %197, ptr @low_delay, align 4, !tbaa !10
  %198 = load i32, ptr @constrparms, align 4, !tbaa !10
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i32
  store i32 %200, ptr @constrparms, align 4, !tbaa !10
  %201 = load i32, ptr @prog_seq, align 4, !tbaa !10
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  store i32 %203, ptr @prog_seq, align 4, !tbaa !10
  %204 = load i32, ptr @topfirst, align 4, !tbaa !10
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i32
  store i32 %206, ptr @topfirst, align 4, !tbaa !10
  %207 = load i32, ptr @frame_pred_dct_tab, align 4, !tbaa !10
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i32
  store i32 %209, ptr @frame_pred_dct_tab, align 4, !tbaa !10
  %210 = load i32, ptr @conceal_tab, align 4, !tbaa !10
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i32
  store i32 %212, ptr @conceal_tab, align 4, !tbaa !10
  %213 = load i32, ptr @qscale_tab, align 4, !tbaa !10
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i32
  store i32 %215, ptr @qscale_tab, align 4, !tbaa !10
  %216 = load i32, ptr @intravlc_tab, align 4, !tbaa !10
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i32
  store i32 %218, ptr @intravlc_tab, align 4, !tbaa !10
  %219 = load i32, ptr @altscan_tab, align 4, !tbaa !10
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i32
  store i32 %221, ptr @altscan_tab, align 4, !tbaa !10
  %222 = load i32, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 4), align 4, !tbaa !10
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i32
  store i32 %224, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 4), align 4, !tbaa !10
  %225 = load i32, ptr getelementptr inbounds (i8, ptr @conceal_tab, i64 4), align 4, !tbaa !10
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i32
  store i32 %227, ptr getelementptr inbounds (i8, ptr @conceal_tab, i64 4), align 4, !tbaa !10
  %228 = load i32, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 4), align 4, !tbaa !10
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i32
  store i32 %230, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 4), align 4, !tbaa !10
  %231 = load i32, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 4), align 4, !tbaa !10
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i32
  store i32 %233, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 4), align 4, !tbaa !10
  %234 = load i32, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 4), align 4, !tbaa !10
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i32
  store i32 %236, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 4), align 4, !tbaa !10
  %237 = load i32, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 8), align 4, !tbaa !10
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i32
  store i32 %239, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 8), align 4, !tbaa !10
  %240 = load i32, ptr getelementptr inbounds (i8, ptr @conceal_tab, i64 8), align 4, !tbaa !10
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i32
  store i32 %242, ptr getelementptr inbounds (i8, ptr @conceal_tab, i64 8), align 4, !tbaa !10
  %243 = load i32, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 8), align 4, !tbaa !10
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i32
  store i32 %245, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 8), align 4, !tbaa !10
  %246 = load i32, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 8), align 4, !tbaa !10
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  store i32 %248, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 8), align 4, !tbaa !10
  %249 = load i32, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 8), align 4, !tbaa !10
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i32
  store i32 %251, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 8), align 4, !tbaa !10
  %252 = load i32, ptr @repeatfirst, align 4, !tbaa !10
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i32
  store i32 %254, ptr @repeatfirst, align 4, !tbaa !10
  %255 = load i32, ptr @prog_frame, align 4, !tbaa !10
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i32
  store i32 %257, ptr @prog_frame, align 4, !tbaa !10
  call void @range_checks() #11
  %258 = load i32, ptr @frame_rate_code, align 4, !tbaa !10
  %259 = add nsw i32 %258, -1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [8 x double], ptr @readparmfile.ratetab, i64 0, i64 %260
  %262 = load double, ptr %261, align 8, !tbaa !14
  store double %262, ptr @frame_rate, align 8, !tbaa !14
  %263 = load i32, ptr %4, align 4, !tbaa !10
  %264 = mul nsw i32 %263, 60
  %265 = load i32, ptr %5, align 4, !tbaa !10
  %266 = add nsw i32 %265, %264
  %267 = mul nsw i32 %266, 60
  %268 = load i32, ptr %6, align 4, !tbaa !10
  %269 = add nsw i32 %267, %268
  %270 = fadd double %262, 5.000000e-01
  %271 = fptosi double %270 to i32
  %272 = mul nsw i32 %269, %271
  %273 = load i32, ptr %7, align 4, !tbaa !10
  %274 = add nsw i32 %272, %273
  store i32 %274, ptr @tc0, align 4, !tbaa !10
  %275 = load i32, ptr @mpeg1, align 4, !tbaa !10
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %187
  call void @profile_and_level_checks() #11
  br label %370

278:                                              ; preds = %187
  %279 = load i32, ptr @constrparms, align 4, !tbaa !10
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %373, label %281

281:                                              ; preds = %278
  %282 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %283 = icmp sgt i32 %282, 768
  %284 = load i32, ptr @vertical_size, align 4
  %285 = icmp sgt i32 %284, 576
  %286 = select i1 %283, i1 true, i1 %285
  br i1 %286, label %301, label %287

287:                                              ; preds = %281
  %288 = add nsw i32 %282, 15
  %289 = sdiv i32 %288, 16
  %290 = add nsw i32 %284, 15
  %291 = sdiv i32 %290, 16
  %292 = mul nsw i32 %291, %289
  %293 = icmp sgt i32 %292, 396
  br i1 %293, label %301, label %294

294:                                              ; preds = %287
  %295 = sitofp i32 %292 to double
  %296 = fmul double %262, %295
  %297 = fcmp ogt double %296, 9.900000e+03
  %298 = add nsw i64 %260, -5
  %299 = icmp ult i64 %298, 3
  %300 = or i1 %299, %297
  br i1 %300, label %301, label %308

301:                                              ; preds = %294, %287, %281
  %302 = load i32, ptr @quiet, align 4, !tbaa !10
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load ptr, ptr @stderr, align 8, !tbaa !6
  %306 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %305) #13
  br label %307

307:                                              ; preds = %304, %301
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %370

308:                                              ; preds = %294
  %309 = load i32, ptr @M, align 4, !tbaa !10
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %370

311:                                              ; preds = %308
  %312 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %313 = zext nneg i32 %309 to i64
  %314 = load i32, ptr %312, align 4, !tbaa !16
  %315 = icmp sgt i32 %314, 4
  br i1 %315, label %327, label %316

316:                                              ; preds = %311
  %317 = getelementptr inbounds i8, ptr %312, i64 4
  %318 = load i32, ptr %317, align 4, !tbaa !18
  %319 = icmp sgt i32 %318, 4
  br i1 %319, label %338, label %320

320:                                              ; preds = %316
  %321 = icmp eq i32 %309, 1
  br i1 %321, label %370, label %322

322:                                              ; preds = %320, %367
  %323 = phi i64 [ %368, %367 ], [ 1, %320 ]
  %324 = getelementptr inbounds %struct.motion_data, ptr %312, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !16
  %326 = icmp sgt i32 %325, 4
  br i1 %326, label %327, label %334

327:                                              ; preds = %322, %311
  %328 = load i32, ptr @quiet, align 4, !tbaa !10
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load ptr, ptr @stderr, align 8, !tbaa !6
  %332 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %331) #13
  br label %333

333:                                              ; preds = %330, %327
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %370

334:                                              ; preds = %322
  %335 = getelementptr inbounds i8, ptr %324, i64 4
  %336 = load i32, ptr %335, align 4, !tbaa !18
  %337 = icmp sgt i32 %336, 4
  br i1 %337, label %338, label %345

338:                                              ; preds = %334, %316
  %339 = load i32, ptr @quiet, align 4, !tbaa !10
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load ptr, ptr @stderr, align 8, !tbaa !6
  %343 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %342) #13
  br label %344

344:                                              ; preds = %341, %338
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %370

345:                                              ; preds = %334
  %346 = getelementptr inbounds i8, ptr %324, i64 16
  %347 = load i32, ptr %346, align 4, !tbaa !19
  %348 = icmp sgt i32 %347, 4
  br i1 %348, label %349, label %356

349:                                              ; preds = %345
  %350 = load i32, ptr @quiet, align 4, !tbaa !10
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = load ptr, ptr @stderr, align 8, !tbaa !6
  %354 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %353) #13
  br label %355

355:                                              ; preds = %352, %349
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %370

356:                                              ; preds = %345
  %357 = getelementptr inbounds i8, ptr %324, i64 20
  %358 = load i32, ptr %357, align 4, !tbaa !20
  %359 = icmp sgt i32 %358, 4
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = load i32, ptr @quiet, align 4, !tbaa !10
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load ptr, ptr @stderr, align 8, !tbaa !6
  %365 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %364) #13
  br label %366

366:                                              ; preds = %363, %360
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %370

367:                                              ; preds = %356
  %368 = add nuw nsw i64 %323, 1
  %369 = icmp eq i64 %368, %313
  br i1 %369, label %370, label %322, !llvm.loop !21

370:                                              ; preds = %367, %366, %355, %344, %333, %320, %308, %307, %277
  %371 = load i32, ptr @mpeg1, align 4, !tbaa !10
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %495, label %373

373:                                              ; preds = %370, %278
  %374 = load i32, ptr @prog_seq, align 4, !tbaa !10
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %373
  %377 = load i32, ptr @quiet, align 4, !tbaa !10
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load ptr, ptr @stderr, align 8, !tbaa !6
  %381 = call i64 @fwrite(ptr nonnull @.str.19, i64 42, i64 1, ptr %380) #13
  br label %382

382:                                              ; preds = %379, %376
  store i32 1, ptr @prog_seq, align 4, !tbaa !10
  br label %383

383:                                              ; preds = %382, %373
  %384 = load i32, ptr @chroma_format, align 4, !tbaa !10
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = load i32, ptr @quiet, align 4, !tbaa !10
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load ptr, ptr @stderr, align 8, !tbaa !6
  %391 = call i64 @fwrite(ptr nonnull @.str.20, i64 43, i64 1, ptr %390) #13
  br label %392

392:                                              ; preds = %389, %386
  store i32 1, ptr @chroma_format, align 4, !tbaa !10
  br label %393

393:                                              ; preds = %392, %383
  %394 = load i32, ptr @dc_prec, align 4, !tbaa !10
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %403, label %396

396:                                              ; preds = %393
  %397 = load i32, ptr @quiet, align 4, !tbaa !10
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load ptr, ptr @stderr, align 8, !tbaa !6
  %401 = call i64 @fwrite(ptr nonnull @.str.21, i64 40, i64 1, ptr %400) #13
  br label %402

402:                                              ; preds = %399, %396
  store i32 0, ptr @dc_prec, align 4, !tbaa !10
  br label %403

403:                                              ; preds = %402, %393
  %404 = load i32, ptr @qscale_tab, align 4, !tbaa !10
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %403
  %407 = load i32, ptr @quiet, align 4, !tbaa !10
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load ptr, ptr @stderr, align 8, !tbaa !6
  %411 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef nonnull @.str.22, i32 noundef signext 0) #12
  br label %412

412:                                              ; preds = %409, %406
  store i32 0, ptr @qscale_tab, align 4, !tbaa !10
  br label %413

413:                                              ; preds = %412, %403
  %414 = load i32, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 4), align 4, !tbaa !10
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %423, label %416

416:                                              ; preds = %413
  %417 = load i32, ptr @quiet, align 4, !tbaa !10
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load ptr, ptr @stderr, align 8, !tbaa !6
  %421 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.22, i32 noundef signext 1) #12
  br label %422

422:                                              ; preds = %419, %416
  store i32 0, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 4), align 4, !tbaa !10
  br label %423

423:                                              ; preds = %422, %413
  %424 = load i32, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 8), align 4, !tbaa !10
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %433, label %426

426:                                              ; preds = %423
  %427 = load i32, ptr @quiet, align 4, !tbaa !10
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = load ptr, ptr @stderr, align 8, !tbaa !6
  %431 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.22, i32 noundef signext 2) #12
  br label %432

432:                                              ; preds = %429, %426
  store i32 0, ptr getelementptr inbounds (i8, ptr @qscale_tab, i64 8), align 4, !tbaa !10
  br label %433

433:                                              ; preds = %432, %423
  %434 = load i32, ptr @intravlc_tab, align 4, !tbaa !10
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr @quiet, align 4, !tbaa !10
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load ptr, ptr @stderr, align 8, !tbaa !6
  %441 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef nonnull @.str.23, i32 noundef signext 0) #12
  br label %442

442:                                              ; preds = %439, %436
  store i32 0, ptr @intravlc_tab, align 4, !tbaa !10
  br label %443

443:                                              ; preds = %442, %433
  %444 = load i32, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 4), align 4, !tbaa !10
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %453, label %446

446:                                              ; preds = %443
  %447 = load i32, ptr @quiet, align 4, !tbaa !10
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = load ptr, ptr @stderr, align 8, !tbaa !6
  %451 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %450, ptr noundef nonnull @.str.23, i32 noundef signext 1) #12
  br label %452

452:                                              ; preds = %449, %446
  store i32 0, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 4), align 4, !tbaa !10
  br label %453

453:                                              ; preds = %452, %443
  %454 = load i32, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 8), align 4, !tbaa !10
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %463, label %456

456:                                              ; preds = %453
  %457 = load i32, ptr @quiet, align 4, !tbaa !10
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load ptr, ptr @stderr, align 8, !tbaa !6
  %461 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %460, ptr noundef nonnull @.str.23, i32 noundef signext 2) #12
  br label %462

462:                                              ; preds = %459, %456
  store i32 0, ptr getelementptr inbounds (i8, ptr @intravlc_tab, i64 8), align 4, !tbaa !10
  br label %463

463:                                              ; preds = %462, %453
  %464 = load i32, ptr @altscan_tab, align 4, !tbaa !10
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %473, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr @quiet, align 4, !tbaa !10
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load ptr, ptr @stderr, align 8, !tbaa !6
  %471 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %470, ptr noundef nonnull @.str.24, i32 noundef signext 0) #12
  br label %472

472:                                              ; preds = %469, %466
  store i32 0, ptr @altscan_tab, align 4, !tbaa !10
  br label %473

473:                                              ; preds = %472, %463
  %474 = load i32, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 4), align 4, !tbaa !10
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %473
  %477 = load i32, ptr @quiet, align 4, !tbaa !10
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load ptr, ptr @stderr, align 8, !tbaa !6
  %481 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %480, ptr noundef nonnull @.str.24, i32 noundef signext 1) #12
  br label %482

482:                                              ; preds = %479, %476
  store i32 0, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 4), align 4, !tbaa !10
  br label %483

483:                                              ; preds = %482, %473
  %484 = load i32, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 8), align 4, !tbaa !10
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %493, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr @quiet, align 4, !tbaa !10
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %486
  %490 = load ptr, ptr @stderr, align 8, !tbaa !6
  %491 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %490, ptr noundef nonnull @.str.24, i32 noundef signext 2) #12
  br label %492

492:                                              ; preds = %489, %486
  store i32 0, ptr getelementptr inbounds (i8, ptr @altscan_tab, i64 8), align 4, !tbaa !10
  br label %493

493:                                              ; preds = %492, %483
  %494 = load i32, ptr @mpeg1, align 4, !tbaa !10
  br label %495

495:                                              ; preds = %493, %370
  %496 = phi i32 [ %494, %493 ], [ 0, %370 ]
  %497 = icmp eq i32 %496, 0
  %498 = load i32, ptr @constrparms, align 4
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %497, i1 %499, i1 false
  br i1 %500, label %501, label %508

501:                                              ; preds = %495
  %502 = load i32, ptr @quiet, align 4, !tbaa !10
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %507

504:                                              ; preds = %501
  %505 = load ptr, ptr @stderr, align 8, !tbaa !6
  %506 = call i64 @fwrite(ptr nonnull @.str.18, i64 49, i64 1, ptr %505) #13
  br label %507

507:                                              ; preds = %504, %501
  store i32 0, ptr @constrparms, align 4, !tbaa !10
  br label %508

508:                                              ; preds = %507, %495
  %509 = load i32, ptr @prog_seq, align 4, !tbaa !10
  %510 = icmp eq i32 %509, 0
  %511 = load i32, ptr @prog_frame, align 4
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %510, i1 true, i1 %512
  br i1 %513, label %521, label %514

514:                                              ; preds = %508
  %515 = load i32, ptr @quiet, align 4, !tbaa !10
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %514
  %518 = load ptr, ptr @stderr, align 8, !tbaa !6
  %519 = call i64 @fwrite(ptr nonnull @.str.25, i64 39, i64 1, ptr %518) #13
  br label %520

520:                                              ; preds = %517, %514
  store i32 1, ptr @prog_frame, align 4, !tbaa !10
  br label %521

521:                                              ; preds = %520, %508
  %522 = phi i32 [ 1, %520 ], [ %511, %508 ]
  %523 = icmp ne i32 %522, 0
  %524 = load i32, ptr @fieldpic, align 4
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %523, i1 %525, i1 false
  br i1 %526, label %527, label %536

527:                                              ; preds = %521
  %528 = load i32, ptr @quiet, align 4, !tbaa !10
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %527
  %531 = load ptr, ptr @stderr, align 8, !tbaa !6
  %532 = call i64 @fwrite(ptr nonnull @.str.26, i64 36, i64 1, ptr %531) #13
  %533 = load i32, ptr @prog_frame, align 4, !tbaa !10
  br label %534

534:                                              ; preds = %530, %527
  %535 = phi i32 [ %533, %530 ], [ %522, %527 ]
  store i32 0, ptr @fieldpic, align 4, !tbaa !10
  br label %536

536:                                              ; preds = %534, %521
  %537 = phi i32 [ %535, %534 ], [ %522, %521 ]
  %538 = icmp eq i32 %537, 0
  %539 = load i32, ptr @repeatfirst, align 4
  %540 = icmp ne i32 %539, 0
  %541 = select i1 %538, i1 %540, i1 false
  br i1 %541, label %542, label %551

542:                                              ; preds = %536
  %543 = load i32, ptr @quiet, align 4, !tbaa !10
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %549

545:                                              ; preds = %542
  %546 = load ptr, ptr @stderr, align 8, !tbaa !6
  %547 = call i64 @fwrite(ptr nonnull @.str.27, i64 40, i64 1, ptr %546) #13
  %548 = load i32, ptr @prog_frame, align 4, !tbaa !10
  br label %549

549:                                              ; preds = %545, %542
  %550 = phi i32 [ %548, %545 ], [ 0, %542 ]
  store i32 0, ptr @repeatfirst, align 4, !tbaa !10
  br label %551

551:                                              ; preds = %549, %536
  %552 = phi i32 [ 0, %549 ], [ %539, %536 ]
  %553 = phi i32 [ %550, %549 ], [ %537, %536 ]
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %587, label %555

555:                                              ; preds = %551
  %556 = load i32, ptr @frame_pred_dct_tab, align 4, !tbaa !10
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %565

558:                                              ; preds = %555
  %559 = load i32, ptr @quiet, align 4, !tbaa !10
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558
  %562 = load ptr, ptr @stderr, align 8, !tbaa !6
  %563 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %562, ptr noundef nonnull @.str.28, i32 noundef signext 0) #12
  br label %564

564:                                              ; preds = %561, %558
  store i32 1, ptr @frame_pred_dct_tab, align 4, !tbaa !10
  br label %565

565:                                              ; preds = %564, %555
  %566 = load i32, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 4), align 4, !tbaa !10
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %575

568:                                              ; preds = %565
  %569 = load i32, ptr @quiet, align 4, !tbaa !10
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %568
  %572 = load ptr, ptr @stderr, align 8, !tbaa !6
  %573 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %572, ptr noundef nonnull @.str.28, i32 noundef signext 1) #12
  br label %574

574:                                              ; preds = %571, %568
  store i32 1, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 4), align 4, !tbaa !10
  br label %575

575:                                              ; preds = %574, %565
  %576 = load i32, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 8), align 4, !tbaa !10
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %585

578:                                              ; preds = %575
  %579 = load i32, ptr @quiet, align 4, !tbaa !10
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %578
  %582 = load ptr, ptr @stderr, align 8, !tbaa !6
  %583 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef nonnull @.str.28, i32 noundef signext 2) #12
  br label %584

584:                                              ; preds = %581, %578
  store i32 1, ptr getelementptr inbounds (i8, ptr @frame_pred_dct_tab, i64 8), align 4, !tbaa !10
  br label %585

585:                                              ; preds = %584, %575
  %586 = load i32, ptr @repeatfirst, align 4
  br label %587

587:                                              ; preds = %585, %551
  %588 = phi i32 [ %586, %585 ], [ %552, %551 ]
  %589 = load i32, ptr @prog_seq, align 4, !tbaa !10
  %590 = icmp ne i32 %589, 0
  %591 = icmp eq i32 %588, 0
  %592 = select i1 %590, i1 %591, i1 false
  %593 = load i32, ptr @topfirst, align 4
  %594 = icmp ne i32 %593, 0
  %595 = select i1 %592, i1 %594, i1 false
  br i1 %595, label %596, label %603

596:                                              ; preds = %587
  %597 = load i32, ptr @quiet, align 4, !tbaa !10
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = load ptr, ptr @stderr, align 8, !tbaa !6
  %601 = call i64 @fwrite(ptr nonnull @.str.29, i64 37, i64 1, ptr %600) #13
  br label %602

602:                                              ; preds = %599, %596
  store i32 0, ptr @topfirst, align 4, !tbaa !10
  br label %603

603:                                              ; preds = %602, %587
  %604 = load i32, ptr @M, align 4, !tbaa !10
  %605 = icmp sgt i32 %604, 0
  br i1 %605, label %606, label %770

606:                                              ; preds = %603
  %607 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %608 = getelementptr inbounds i8, ptr %607, i64 8
  %609 = load i32, ptr %608, align 4, !tbaa !22
  %610 = load i32, ptr %607, align 4, !tbaa !16
  %611 = shl i32 4, %610
  %612 = add nsw i32 %611, -1
  %613 = icmp slt i32 %609, %611
  br i1 %613, label %628, label %614

614:                                              ; preds = %606
  %615 = load i32, ptr @quiet, align 4, !tbaa !10
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %614
  %618 = load ptr, ptr @stderr, align 8, !tbaa !6
  %619 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %618, ptr noundef nonnull @.str.30, i32 noundef signext %612) #12
  %620 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %621 = load i32, ptr %620, align 4, !tbaa !16
  %622 = shl i32 4, %621
  %623 = add nsw i32 %622, -1
  br label %624

624:                                              ; preds = %617, %614
  %625 = phi i32 [ %623, %617 ], [ %612, %614 ]
  %626 = phi ptr [ %620, %617 ], [ %607, %614 ]
  %627 = getelementptr inbounds i8, ptr %626, i64 8
  store i32 %625, ptr %627, align 4, !tbaa !22
  br label %628

628:                                              ; preds = %624, %606
  %629 = phi ptr [ %626, %624 ], [ %607, %606 ]
  %630 = getelementptr inbounds i8, ptr %629, i64 12
  %631 = load i32, ptr %630, align 4, !tbaa !23
  %632 = getelementptr inbounds i8, ptr %629, i64 4
  %633 = load i32, ptr %632, align 4, !tbaa !18
  %634 = shl i32 4, %633
  %635 = add nsw i32 %634, -1
  %636 = icmp slt i32 %631, %634
  br i1 %636, label %652, label %637

637:                                              ; preds = %628
  %638 = load i32, ptr @quiet, align 4, !tbaa !10
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %648

640:                                              ; preds = %637
  %641 = load ptr, ptr @stderr, align 8, !tbaa !6
  %642 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %641, ptr noundef nonnull @.str.31, i32 noundef signext %635) #12
  %643 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %644 = getelementptr inbounds i8, ptr %643, i64 4
  %645 = load i32, ptr %644, align 4, !tbaa !18
  %646 = shl i32 4, %645
  %647 = add nsw i32 %646, -1
  br label %648

648:                                              ; preds = %640, %637
  %649 = phi i32 [ %647, %640 ], [ %635, %637 ]
  %650 = phi ptr [ %643, %640 ], [ %629, %637 ]
  %651 = getelementptr inbounds i8, ptr %650, i64 12
  store i32 %649, ptr %651, align 4, !tbaa !23
  br label %652

652:                                              ; preds = %648, %628
  %653 = phi ptr [ %650, %648 ], [ %629, %628 ]
  %654 = load i32, ptr @M, align 4, !tbaa !10
  %655 = icmp sgt i32 %654, 1
  br i1 %655, label %656, label %770

656:                                              ; preds = %652, %763
  %657 = phi ptr [ %764, %763 ], [ %653, %652 ]
  %658 = phi ptr [ %765, %763 ], [ %653, %652 ]
  %659 = phi i64 [ %766, %763 ], [ 1, %652 ]
  %660 = getelementptr inbounds %struct.motion_data, ptr %658, i64 %659
  %661 = getelementptr inbounds i8, ptr %660, i64 8
  %662 = load i32, ptr %661, align 4, !tbaa !22
  %663 = load i32, ptr %660, align 4, !tbaa !16
  %664 = shl i32 4, %663
  %665 = add nsw i32 %664, -1
  %666 = icmp slt i32 %662, %664
  br i1 %666, label %683, label %667

667:                                              ; preds = %656
  %668 = load i32, ptr @quiet, align 4, !tbaa !10
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %678

670:                                              ; preds = %667
  %671 = load ptr, ptr @stderr, align 8, !tbaa !6
  %672 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %671, ptr noundef nonnull @.str.30, i32 noundef signext %665) #12
  %673 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %674 = getelementptr inbounds %struct.motion_data, ptr %673, i64 %659
  %675 = load i32, ptr %674, align 4, !tbaa !16
  %676 = shl i32 4, %675
  %677 = add nsw i32 %676, -1
  br label %678

678:                                              ; preds = %670, %667
  %679 = phi i32 [ %677, %670 ], [ %665, %667 ]
  %680 = phi ptr [ %673, %670 ], [ %657, %667 ]
  %681 = phi ptr [ %673, %670 ], [ %658, %667 ]
  %682 = getelementptr inbounds %struct.motion_data, ptr %681, i64 %659, i32 2
  store i32 %679, ptr %682, align 4, !tbaa !22
  br label %683

683:                                              ; preds = %678, %656
  %684 = phi ptr [ %680, %678 ], [ %657, %656 ]
  %685 = phi ptr [ %681, %678 ], [ %658, %656 ]
  %686 = getelementptr inbounds %struct.motion_data, ptr %685, i64 %659
  %687 = getelementptr inbounds i8, ptr %686, i64 12
  %688 = load i32, ptr %687, align 4, !tbaa !23
  %689 = getelementptr inbounds i8, ptr %686, i64 4
  %690 = load i32, ptr %689, align 4, !tbaa !18
  %691 = shl i32 4, %690
  %692 = add nsw i32 %691, -1
  %693 = icmp slt i32 %688, %691
  br i1 %693, label %710, label %694

694:                                              ; preds = %683
  %695 = load i32, ptr @quiet, align 4, !tbaa !10
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %705

697:                                              ; preds = %694
  %698 = load ptr, ptr @stderr, align 8, !tbaa !6
  %699 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %698, ptr noundef nonnull @.str.31, i32 noundef signext %692) #12
  %700 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %701 = getelementptr inbounds %struct.motion_data, ptr %700, i64 %659, i32 1
  %702 = load i32, ptr %701, align 4, !tbaa !18
  %703 = shl i32 4, %702
  %704 = add nsw i32 %703, -1
  br label %705

705:                                              ; preds = %697, %694
  %706 = phi i32 [ %704, %697 ], [ %692, %694 ]
  %707 = phi ptr [ %700, %697 ], [ %684, %694 ]
  %708 = phi ptr [ %700, %697 ], [ %685, %694 ]
  %709 = getelementptr inbounds %struct.motion_data, ptr %708, i64 %659, i32 3
  store i32 %706, ptr %709, align 4, !tbaa !23
  br label %710

710:                                              ; preds = %705, %683
  %711 = phi ptr [ %707, %705 ], [ %684, %683 ]
  %712 = phi ptr [ %708, %705 ], [ %685, %683 ]
  %713 = getelementptr inbounds %struct.motion_data, ptr %712, i64 %659
  %714 = getelementptr inbounds i8, ptr %713, i64 24
  %715 = load i32, ptr %714, align 4, !tbaa !24
  %716 = getelementptr inbounds i8, ptr %713, i64 16
  %717 = load i32, ptr %716, align 4, !tbaa !19
  %718 = shl i32 4, %717
  %719 = add nsw i32 %718, -1
  %720 = icmp slt i32 %715, %718
  br i1 %720, label %737, label %721

721:                                              ; preds = %710
  %722 = load i32, ptr @quiet, align 4, !tbaa !10
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %732

724:                                              ; preds = %721
  %725 = load ptr, ptr @stderr, align 8, !tbaa !6
  %726 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %725, ptr noundef nonnull @.str.32, i32 noundef signext %719) #12
  %727 = load ptr, ptr @motion_data, align 8, !tbaa !6
  %728 = getelementptr inbounds %struct.motion_data, ptr %727, i64 %659, i32 4
  %729 = load i32, ptr %728, align 4, !tbaa !19
  %730 = shl i32 4, %729
  %731 = add nsw i32 %730, -1
  br label %732

732:                                              ; preds = %724, %721
  %733 = phi i32 [ %731, %724 ], [ %719, %721 ]
  %734 = phi ptr [ %727, %724 ], [ %711, %721 ]
  %735 = phi ptr [ %727, %724 ], [ %712, %721 ]
  %736 = getelementptr inbounds %struct.motion_data, ptr %735, i64 %659, i32 6
  store i32 %733, ptr %736, align 4, !tbaa !24
  br label %737

737:                                              ; preds = %732, %710
  %738 = phi ptr [ %734, %732 ], [ %711, %710 ]
  %739 = phi ptr [ %735, %732 ], [ %712, %710 ]
  %740 = getelementptr inbounds %struct.motion_data, ptr %739, i64 %659
  %741 = getelementptr inbounds i8, ptr %740, i64 28
  %742 = load i32, ptr %741, align 4, !tbaa !25
  %743 = getelementptr inbounds i8, ptr %740, i64 20
  %744 = load i32, ptr %743, align 4, !tbaa !20
  %745 = shl i32 4, %744
  %746 = add nsw i32 %745, -1
  %747 = icmp slt i32 %742, %745
  br i1 %747, label %763, label %748

748:                                              ; preds = %737
  %749 = load i32, ptr @quiet, align 4, !tbaa !10
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %755

751:                                              ; preds = %748
  %752 = load ptr, ptr @stderr, align 8, !tbaa !6
  %753 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %752, ptr noundef nonnull @.str.33, i32 noundef signext %746) #12
  %754 = load ptr, ptr @motion_data, align 8, !tbaa !6
  br label %755

755:                                              ; preds = %751, %748
  %756 = phi ptr [ %754, %751 ], [ %738, %748 ]
  %757 = getelementptr inbounds %struct.motion_data, ptr %756, i64 %659
  %758 = getelementptr inbounds i8, ptr %757, i64 20
  %759 = load i32, ptr %758, align 4, !tbaa !20
  %760 = shl i32 4, %759
  %761 = add nsw i32 %760, -1
  %762 = getelementptr inbounds i8, ptr %757, i64 28
  store i32 %761, ptr %762, align 4, !tbaa !25
  br label %763

763:                                              ; preds = %755, %737
  %764 = phi ptr [ %756, %755 ], [ %738, %737 ]
  %765 = phi ptr [ %756, %755 ], [ %739, %737 ]
  %766 = add nuw nsw i64 %659, 1
  %767 = load i32, ptr @M, align 4, !tbaa !10
  %768 = sext i32 %767 to i64
  %769 = icmp slt i64 %766, %768
  br i1 %769, label %656, label %770, !llvm.loop !26

770:                                              ; preds = %763, %603, %652
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %771 = load i8, ptr @iqname, align 1, !tbaa !27
  %772 = icmp eq i8 %771, 45
  br i1 %772, label %773, label %774

773:                                              ; preds = %770
  store i32 0, ptr @load_iquant, align 4, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) @intra_q, ptr noundef nonnull align 1 dereferenceable(64) @default_intra_quantizer_matrix, i64 64, i1 false), !tbaa !27
  br label %801

774:                                              ; preds = %770
  store i32 1, ptr @load_iquant, align 4, !tbaa !10
  %775 = call ptr @fopen(ptr noundef nonnull @iqname, ptr noundef nonnull @.str.7)
  %776 = icmp eq ptr %775, null
  br i1 %776, label %777, label %783

777:                                              ; preds = %774
  %778 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull @iqname) #11
  %779 = load ptr, ptr @stderr, align 8, !tbaa !6
  %780 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %779, ptr noundef nonnull readonly @errortext) #12
  %781 = load ptr, ptr @stderr, align 8, !tbaa !6
  %782 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %781)
  call void @exit(i32 noundef signext 1) #10
  unreachable

783:                                              ; preds = %774, %794
  %784 = phi i64 [ %797, %794 ], [ 0, %774 ]
  %785 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %775, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #11
  %786 = load i32, ptr %3, align 4
  %787 = add i32 %786, -256
  %788 = icmp ult i32 %787, -255
  br i1 %788, label %789, label %794

789:                                              ; preds = %783
  %790 = load ptr, ptr @stderr, align 8, !tbaa !6
  %791 = call i64 @fwrite(ptr nonnull @.str.35, i64 29, i64 1, ptr %790) #13
  %792 = load ptr, ptr @stderr, align 8, !tbaa !6
  %793 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %792)
  call void @exit(i32 noundef signext 1) #10
  unreachable

794:                                              ; preds = %783
  %795 = trunc nuw i32 %786 to i8
  %796 = getelementptr inbounds [64 x i8], ptr @intra_q, i64 0, i64 %784
  store i8 %795, ptr %796, align 1, !tbaa !27
  %797 = add nuw nsw i64 %784, 1
  %798 = icmp eq i64 %797, 64
  br i1 %798, label %799, label %783

799:                                              ; preds = %794
  %800 = call signext i32 @fclose(ptr noundef nonnull %775)
  br label %801

801:                                              ; preds = %799, %773
  %802 = load i8, ptr @niqname, align 1, !tbaa !27
  %803 = icmp eq i8 %802, 45
  br i1 %803, label %804, label %805

804:                                              ; preds = %801
  store i32 0, ptr @load_niquant, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) @inter_q, i8 16, i64 64, i1 false), !tbaa !27
  br label %832

805:                                              ; preds = %801
  store i32 1, ptr @load_niquant, align 4, !tbaa !10
  %806 = call ptr @fopen(ptr noundef nonnull @niqname, ptr noundef nonnull @.str.7)
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  %809 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull @niqname) #11
  %810 = load ptr, ptr @stderr, align 8, !tbaa !6
  %811 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %810, ptr noundef nonnull readonly @errortext) #12
  %812 = load ptr, ptr @stderr, align 8, !tbaa !6
  %813 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %812)
  call void @exit(i32 noundef signext 1) #10
  unreachable

814:                                              ; preds = %805, %825
  %815 = phi i64 [ %828, %825 ], [ 0, %805 ]
  %816 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %806, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #11
  %817 = load i32, ptr %3, align 4
  %818 = add i32 %817, -256
  %819 = icmp ult i32 %818, -255
  br i1 %819, label %820, label %825

820:                                              ; preds = %814
  %821 = load ptr, ptr @stderr, align 8, !tbaa !6
  %822 = call i64 @fwrite(ptr nonnull @.str.35, i64 29, i64 1, ptr %821) #13
  %823 = load ptr, ptr @stderr, align 8, !tbaa !6
  %824 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %823)
  call void @exit(i32 noundef signext 1) #10
  unreachable

825:                                              ; preds = %814
  %826 = trunc nuw i32 %817 to i8
  %827 = getelementptr inbounds [64 x i8], ptr @inter_q, i64 0, i64 %815
  store i8 %826, ptr %827, align 1, !tbaa !27
  %828 = add nuw nsw i64 %815, 1
  %829 = icmp eq i64 %828, 64
  br i1 %829, label %830, label %814

830:                                              ; preds = %825
  %831 = call signext i32 @fclose(ptr noundef nonnull %806)
  br label %832

832:                                              ; preds = %804, %830
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %833 = getelementptr inbounds i8, ptr %1, i64 16
  %834 = load ptr, ptr %833, align 8, !tbaa !6
  %835 = call ptr @fopen(ptr noundef %834, ptr noundef nonnull @.str.2)
  store ptr %835, ptr @outfile, align 8, !tbaa !6
  %836 = icmp eq ptr %835, null
  br i1 %836, label %837, label %844

837:                                              ; preds = %832
  %838 = load ptr, ptr %833, align 8, !tbaa !6
  %839 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %838) #11
  %840 = load ptr, ptr @stderr, align 8, !tbaa !6
  %841 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %840, ptr noundef nonnull readonly @errortext) #12
  %842 = load ptr, ptr @stderr, align 8, !tbaa !6
  %843 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %842)
  call void @exit(i32 noundef signext 1) #10
  unreachable

844:                                              ; preds = %832
  call void @initbits() #11
  call void @init_fdct() #11
  call void @init_idct() #11
  %845 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %846 = add nsw i32 %845, 15
  %847 = sdiv i32 %846, 16
  store i32 %847, ptr @mb_width, align 4, !tbaa !10
  %848 = load i32, ptr @prog_seq, align 4, !tbaa !10
  %849 = icmp eq i32 %848, 0
  %850 = load i32, ptr @vertical_size, align 4, !tbaa !10
  br i1 %849, label %854, label %851

851:                                              ; preds = %844
  %852 = add nsw i32 %850, 15
  %853 = sdiv i32 %852, 16
  br label %858

854:                                              ; preds = %844
  %855 = add nsw i32 %850, 31
  %856 = sdiv i32 %855, 32
  %857 = shl nsw i32 %856, 1
  br label %858

858:                                              ; preds = %854, %851
  %859 = phi i32 [ %853, %851 ], [ %857, %854 ]
  store i32 %859, ptr @mb_height, align 4, !tbaa !10
  %860 = load i32, ptr @fieldpic, align 4, !tbaa !10
  %861 = icmp ne i32 %860, 0
  %862 = zext i1 %861 to i32
  %863 = ashr i32 %859, %862
  store i32 %863, ptr @mb_height2, align 4, !tbaa !10
  %864 = shl nsw i32 %847, 4
  store i32 %864, ptr @width, align 4, !tbaa !10
  %865 = shl nsw i32 %859, 4
  store i32 %865, ptr @height, align 4, !tbaa !10
  %866 = load i32, ptr @chroma_format, align 4, !tbaa !10
  %867 = icmp eq i32 %866, 3
  %868 = shl nsw i32 %847, 3
  %869 = select i1 %867, i32 %864, i32 %868
  store i32 %869, ptr @chrom_width, align 4, !tbaa !10
  %870 = icmp eq i32 %866, 1
  %871 = zext i1 %870 to i32
  %872 = ashr exact i32 %865, %871
  store i32 %872, ptr @chrom_height, align 4, !tbaa !10
  %873 = ashr exact i32 %865, %862
  store i32 %873, ptr @height2, align 4, !tbaa !10
  %874 = shl i32 %864, %862
  store i32 %874, ptr @width2, align 4, !tbaa !10
  %875 = shl i32 %869, %862
  store i32 %875, ptr @chrom_width2, align 4, !tbaa !10
  %876 = add nsw i32 %866, -1
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [3 x i32], ptr @init.block_count_tab, i64 0, i64 %877
  %879 = load i32, ptr %878, align 4, !tbaa !10
  store i32 %879, ptr @block_count, align 4, !tbaa !10
  %880 = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #14
  store ptr %880, ptr @clp, align 8, !tbaa !6
  %881 = icmp eq ptr %880, null
  br i1 %881, label %882, label %887

882:                                              ; preds = %858
  %883 = load ptr, ptr @stderr, align 8, !tbaa !6
  %884 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %883) #13
  %885 = load ptr, ptr @stderr, align 8, !tbaa !6
  %886 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %885)
  call void @exit(i32 noundef signext 1) #10
  unreachable

887:                                              ; preds = %858
  %888 = getelementptr inbounds i8, ptr %880, i64 384
  store ptr %888, ptr @clp, align 8, !tbaa !6
  br label %899

889:                                              ; preds = %899
  %890 = load i32, ptr @chrom_width, align 4
  %891 = load i32, ptr @chrom_height, align 4
  %892 = mul nsw i32 %891, %890
  %893 = load i32, ptr @width, align 4
  %894 = load i32, ptr @height, align 4
  %895 = mul nsw i32 %894, %893
  %896 = sext i32 %895 to i64
  %897 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %897, ptr @newrefframe, align 8, !tbaa !6
  %898 = icmp eq ptr %897, null
  br i1 %898, label %960, label %965

899:                                              ; preds = %899, %887
  %900 = phi i64 [ -384, %887 ], [ %907, %899 ]
  %901 = trunc nsw i64 %900 to i32
  %902 = call i32 @llvm.smin.i32(i32 %901, i32 255)
  %903 = call i32 @llvm.smax.i32(i32 %902, i32 0)
  %904 = trunc nuw i32 %903 to i8
  %905 = load ptr, ptr @clp, align 8, !tbaa !6
  %906 = getelementptr inbounds i8, ptr %905, i64 %900
  store i8 %904, ptr %906, align 1, !tbaa !27
  %907 = add nsw i64 %900, 1
  %908 = icmp eq i64 %907, 640
  br i1 %908, label %889, label %899

909:                                              ; preds = %1005
  %910 = sext i32 %892 to i64
  %911 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %911, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 8), align 8, !tbaa !6
  %912 = icmp eq ptr %911, null
  br i1 %912, label %960, label %913

913:                                              ; preds = %909
  %914 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %914, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 8), align 8, !tbaa !6
  %915 = icmp eq ptr %914, null
  br i1 %915, label %968, label %916

916:                                              ; preds = %913
  %917 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %917, ptr getelementptr inbounds (i8, ptr @auxframe, i64 8), align 8, !tbaa !6
  %918 = icmp eq ptr %917, null
  br i1 %918, label %976, label %919

919:                                              ; preds = %916
  %920 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %920, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 8), align 8, !tbaa !6
  %921 = icmp eq ptr %920, null
  br i1 %921, label %984, label %922

922:                                              ; preds = %919
  %923 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %923, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 8), align 8, !tbaa !6
  %924 = icmp eq ptr %923, null
  br i1 %924, label %992, label %925

925:                                              ; preds = %922
  %926 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %926, ptr getelementptr inbounds (i8, ptr @auxorgframe, i64 8), align 8, !tbaa !6
  %927 = icmp eq ptr %926, null
  br i1 %927, label %1000, label %928

928:                                              ; preds = %925
  %929 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %929, ptr getelementptr inbounds (i8, ptr @predframe, i64 8), align 8, !tbaa !6
  %930 = icmp eq ptr %929, null
  br i1 %930, label %1008, label %931

931:                                              ; preds = %928
  %932 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %932, ptr getelementptr inbounds (i8, ptr @newrefframe, i64 16), align 8, !tbaa !6
  %933 = icmp eq ptr %932, null
  br i1 %933, label %960, label %934

934:                                              ; preds = %931
  %935 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %935, ptr getelementptr inbounds (i8, ptr @oldrefframe, i64 16), align 8, !tbaa !6
  %936 = icmp eq ptr %935, null
  br i1 %936, label %968, label %937

937:                                              ; preds = %934
  %938 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %938, ptr getelementptr inbounds (i8, ptr @auxframe, i64 16), align 8, !tbaa !6
  %939 = icmp eq ptr %938, null
  br i1 %939, label %976, label %940

940:                                              ; preds = %937
  %941 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %941, ptr getelementptr inbounds (i8, ptr @neworgframe, i64 16), align 8, !tbaa !6
  %942 = icmp eq ptr %941, null
  br i1 %942, label %984, label %943

943:                                              ; preds = %940
  %944 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %944, ptr getelementptr inbounds (i8, ptr @oldorgframe, i64 16), align 8, !tbaa !6
  %945 = icmp eq ptr %944, null
  br i1 %945, label %992, label %946

946:                                              ; preds = %943
  %947 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %947, ptr getelementptr inbounds (i8, ptr @auxorgframe, i64 16), align 8, !tbaa !6
  %948 = icmp eq ptr %947, null
  br i1 %948, label %1000, label %949

949:                                              ; preds = %946
  %950 = call noalias ptr @malloc(i64 noundef %910) #14
  store ptr %950, ptr getelementptr inbounds (i8, ptr @predframe, i64 16), align 8, !tbaa !6
  %951 = icmp eq ptr %950, null
  br i1 %951, label %1008, label %952

952:                                              ; preds = %949
  %953 = load i32, ptr @mb_width, align 4, !tbaa !10
  %954 = load i32, ptr @mb_height2, align 4, !tbaa !10
  %955 = mul nsw i32 %954, %953
  %956 = sext i32 %955 to i64
  %957 = mul nsw i64 %956, 96
  %958 = call noalias ptr @malloc(i64 noundef %957) #14
  store ptr %958, ptr @mbinfo, align 8, !tbaa !6
  %959 = icmp eq ptr %958, null
  br i1 %959, label %1013, label %1018

960:                                              ; preds = %931, %909, %889
  %961 = load ptr, ptr @stderr, align 8, !tbaa !6
  %962 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %961) #13
  %963 = load ptr, ptr @stderr, align 8, !tbaa !6
  %964 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %963)
  call void @exit(i32 noundef signext 1) #10
  unreachable

965:                                              ; preds = %889
  %966 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %966, ptr @oldrefframe, align 8, !tbaa !6
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %973

968:                                              ; preds = %965, %934, %913
  %969 = load ptr, ptr @stderr, align 8, !tbaa !6
  %970 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %969) #13
  %971 = load ptr, ptr @stderr, align 8, !tbaa !6
  %972 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %971)
  call void @exit(i32 noundef signext 1) #10
  unreachable

973:                                              ; preds = %965
  %974 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %974, ptr @auxframe, align 8, !tbaa !6
  %975 = icmp eq ptr %974, null
  br i1 %975, label %976, label %981

976:                                              ; preds = %973, %937, %916
  %977 = load ptr, ptr @stderr, align 8, !tbaa !6
  %978 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %977) #13
  %979 = load ptr, ptr @stderr, align 8, !tbaa !6
  %980 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %979)
  call void @exit(i32 noundef signext 1) #10
  unreachable

981:                                              ; preds = %973
  %982 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %982, ptr @neworgframe, align 8, !tbaa !6
  %983 = icmp eq ptr %982, null
  br i1 %983, label %984, label %989

984:                                              ; preds = %981, %940, %919
  %985 = load ptr, ptr @stderr, align 8, !tbaa !6
  %986 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %985) #13
  %987 = load ptr, ptr @stderr, align 8, !tbaa !6
  %988 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %987)
  call void @exit(i32 noundef signext 1) #10
  unreachable

989:                                              ; preds = %981
  %990 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %990, ptr @oldorgframe, align 8, !tbaa !6
  %991 = icmp eq ptr %990, null
  br i1 %991, label %992, label %997

992:                                              ; preds = %989, %943, %922
  %993 = load ptr, ptr @stderr, align 8, !tbaa !6
  %994 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %993) #13
  %995 = load ptr, ptr @stderr, align 8, !tbaa !6
  %996 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %995)
  call void @exit(i32 noundef signext 1) #10
  unreachable

997:                                              ; preds = %989
  %998 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %998, ptr @auxorgframe, align 8, !tbaa !6
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1000, label %1005

1000:                                             ; preds = %997, %946, %925
  %1001 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1002 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %1001) #13
  %1003 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1004 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %1003)
  call void @exit(i32 noundef signext 1) #10
  unreachable

1005:                                             ; preds = %997
  %1006 = call noalias ptr @malloc(i64 noundef %896) #14
  store ptr %1006, ptr @predframe, align 8, !tbaa !6
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %909

1008:                                             ; preds = %1005, %949, %928
  %1009 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1010 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %1009) #13
  %1011 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1012 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %1011)
  call void @exit(i32 noundef signext 1) #10
  unreachable

1013:                                             ; preds = %952
  %1014 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1015 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %1014) #13
  %1016 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1017 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %1016)
  call void @exit(i32 noundef signext 1) #10
  unreachable

1018:                                             ; preds = %952
  %1019 = load i32, ptr @block_count, align 4, !tbaa !10
  %1020 = mul nsw i32 %1019, %955
  %1021 = sext i32 %1020 to i64
  %1022 = shl nsw i64 %1021, 7
  %1023 = call noalias ptr @malloc(i64 noundef %1022) #14
  store ptr %1023, ptr @blocks, align 8, !tbaa !6
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1025, label %1030

1025:                                             ; preds = %1018
  %1026 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1027 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %1026) #13
  %1028 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1029 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %1028)
  call void @exit(i32 noundef signext 1) #10
  unreachable

1030:                                             ; preds = %1018
  %1031 = load i8, ptr @statname, align 1, !tbaa !27
  %1032 = icmp eq i8 %1031, 45
  br i1 %1032, label %1033, label %1035

1033:                                             ; preds = %1030
  %1034 = load ptr, ptr @stdout, align 8, !tbaa !6
  store ptr %1034, ptr @statfile, align 8, !tbaa !6
  br label %1044

1035:                                             ; preds = %1030
  %1036 = call ptr @fopen(ptr noundef nonnull @statname, ptr noundef nonnull @.str.5)
  store ptr %1036, ptr @statfile, align 8, !tbaa !6
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1038, label %1044

1038:                                             ; preds = %1035
  %1039 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @statname) #11
  %1040 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1041 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1040, ptr noundef nonnull readonly @errortext) #12
  %1042 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1043 = call signext i32 @putc(i32 noundef signext 10, ptr noundef %1042)
  call void @exit(i32 noundef signext 1) #10
  unreachable

1044:                                             ; preds = %1033, %1035
  call void @putseq() #11
  %1045 = load ptr, ptr @outfile, align 8, !tbaa !6
  %1046 = call signext i32 @fclose(ptr noundef %1045)
  %1047 = load ptr, ptr @statfile, align 8, !tbaa !6
  %1048 = call signext i32 @fclose(ptr noundef %1047)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
define dso_local void @error(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  %3 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %0) #12
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call signext i32 @putc(i32 noundef signext 10, ptr noundef %4)
  tail call void @exit(i32 noundef signext 1) #10
  unreachable
}

declare dso_local void @putseq() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare dso_local void @initbits() local_unnamed_addr #3

declare dso_local void @init_fdct() local_unnamed_addr #3

declare dso_local void @init_idct() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local noundef ptr @fgets(ptr noundef, i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare dso_local void @range_checks() local_unnamed_addr #3

declare dso_local void @profile_and_level_checks(...) local_unnamed_addr #3

declare dso_local signext i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"motion_data", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!18 = !{!17, !11, i64 4}
!19 = !{!17, !11, i64 16}
!20 = !{!17, !11, i64 20}
!21 = distinct !{!21, !13}
!22 = !{!17, !11, i64 8}
!23 = !{!17, !11, i64 12}
!24 = !{!17, !11, i64 24}
!25 = !{!17, !11, i64 28}
!26 = distinct !{!26, !13}
!27 = !{!8, !8, i64 0}
