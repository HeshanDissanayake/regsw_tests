; ModuleID = 'src/lencod.c'
source_filename = "src/lencod.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32, i32, i32, i32, [2 x [5 x i32]], i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, [4 x [16 x [16 x i32]]], [3 x [16 x [16 x i32]]], [4 x [2 x [16 x [16 x i32]]]], [1 x [2 x [16 x [16 x i32]]]], ptr, ptr, ptr, [1200 x %struct.syntaxelement], ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, ptr, ptr, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, ptr, i32, i32 }
%struct.SNRParameters = type { float, float, float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, i32 }
%struct.Decoders = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@inputs = dso_local global %struct.InputParameters zeroinitializer, align 8
@input = dso_local local_unnamed_addr global ptr @inputs, align 8
@images = dso_local global %struct.ImageParameters zeroinitializer, align 8
@img = dso_local local_unnamed_addr global ptr @images, align 8
@statistics = dso_local global %struct.StatParameters zeroinitializer, align 8
@stats = dso_local local_unnamed_addr global ptr @statistics, align 8
@snrs = dso_local global %struct.SNRParameters zeroinitializer, align 4
@snr = dso_local local_unnamed_addr global ptr @snrs, align 8
@decoders = dso_local global %struct.Decoders zeroinitializer, align 8
@decs = dso_local local_unnamed_addr global ptr @decoders, align 8
@initial_Bframes = dso_local local_unnamed_addr global i32 0, align 4
@In2ndIGOP = dso_local local_unnamed_addr global i32 0, align 4
@start_frame_no_in_this_IGOP = dso_local local_unnamed_addr global i32 0, align 4
@start_tr_in_this_IGOP = dso_local local_unnamed_addr global i32 0, align 4
@FirstFrameIn2ndIGOP = dso_local local_unnamed_addr global i32 0, align 4
@cabac_encoding = dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = external dso_local local_unnamed_addr global i32, align 4
@p_in = external dso_local local_unnamed_addr global i32, align 4
@p_dec = external dso_local local_unnamed_addr global i32, align 4
@p_trace = external dso_local local_unnamed_addr global ptr, align 8
@p_log = external dso_local local_unnamed_addr global ptr, align 8
@p_stat = external dso_local local_unnamed_addr global ptr, align 8
@frame_statistic_start = dso_local local_unnamed_addr global i32 0, align 4
@frame_pic_1 = external dso_local local_unnamed_addr global ptr, align 8
@frame_pic_2 = external dso_local local_unnamed_addr global ptr, align 8
@frame_pic_3 = external dso_local local_unnamed_addr global ptr, align 8
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@lrec = external dso_local local_unnamed_addr global ptr, align 8
@lrec_uv = external dso_local local_unnamed_addr global ptr, align 8
@number_sp2_frames = external dso_local local_unnamed_addr global i32, align 4
@top_pic = external dso_local local_unnamed_addr global ptr, align 8
@bottom_pic = external dso_local local_unnamed_addr global ptr, align 8
@dpb = external dso_local local_unnamed_addr global %struct.decoded_picture_buffer, align 8
@enc_bottom_picture = external dso_local local_unnamed_addr global ptr, align 8
@enc_top_picture = external dso_local local_unnamed_addr global ptr, align 8
@enc_frame_picture = external dso_local local_unnamed_addr global ptr, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@frame_ctr = external dso_local local_unnamed_addr global [5 x i32], align 4
@tot_time = external dso_local local_unnamed_addr global i32, align 4
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@Co_located = external dso_local local_unnamed_addr global ptr, align 8
@init_img.mb_width_cr = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 4
@init_img.mb_height_cr = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 4
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@rddata_top_frame_mb = external dso_local global %struct.RD_DATA, align 8
@rddata_bot_frame_mb = external dso_local global %struct.RD_DATA, align 8
@rddata_top_field_mb = external dso_local global %struct.RD_DATA, align 8
@rddata_bot_field_mb = external dso_local global %struct.RD_DATA, align 8
@.str = private unnamed_addr constant [20 x i8] c"init_img: img->quad\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"init_img: img->mb_data\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"init_img: img->intra_block\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"malloc_picture: Picture structure\00", align 1
@report_frame_statistic.last_mode_use = internal unnamed_addr global [5 x [15 x i32]] zeroinitializer, align 4
@report_frame_statistic.last_b8_mode_0 = internal unnamed_addr global [5 x [2 x i32]] zeroinitializer, align 4
@report_frame_statistic.last_mode_chroma_use = internal unnamed_addr global [4 x i32] zeroinitializer, align 4
@report_frame_statistic.last_bit_ctr_n = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"stat_frame.dat\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"stat_frame.dat.dat\00", align 1
@.str.9 = private unnamed_addr constant [469 x i8] c" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.10 = private unnamed_addr constant [469 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\0A\00", align 1
@.str.11 = private unnamed_addr constant [469 x i8] c"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"|%4s/%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"10.2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" %1.5s |\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@frame_no = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"  %d/%d  |\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %9d|\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" %2.4f| %2.4f| %2.4f|\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" %5d|\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c" Freq. for encoded bitstream       : %1.0f\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c" Hadamard transform                : Used for QPel\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c" Hadamard transform                : Used\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c" Hadamard transform                : Not used\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c" Image format                      : %dx%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c" Error robustness                  : On\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c" Error robustness                  : Off\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c" Search range                      : %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c" Total number of references        : %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c" References for P slices           : %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c" List0 references for B slices     : %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c" List1 references for B slices     : %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c" Total encoding time for the seq.  : %.3f sec (%.2f fps)\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c" Total ME time for sequence        : %.3f sec \0A\00", align 1
@me_tot_time = external dso_local local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [37 x i8] c" Sequence type                     :\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c" Pyramid (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"-RB\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c" %s (QP: I %d, P %d, RB %d) \0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c" %s (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c" IPPP (QP: I %d, P %d) \0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CAVLC\0A\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CABAC\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c" Profile/Level IDC                 : (%d,%d)\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c" Motion Estimation Scheme          : HEX\0A\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c" Motion Estimation Scheme          : SHEX\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c" Motion Estimation Scheme          : EPZS\0A\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c" Motion Estimation Scheme          : Full Search\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c" Search range restrictions         : none\0A\00", align 1
@.str.59 = private unnamed_addr constant [61 x i8] c" Search range restrictions         : older reference frames\0A\00", align 1
@.str.60 = private unnamed_addr constant [80 x i8] c" Search range restrictions         : smaller blocks and older reference frames\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c" RD-optimized mode decision        : used\0A\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c" RD-optimized mode decision        : not used\0A\00", align 1
@.str.63 = private unnamed_addr constant [51 x i8] c" Data Partitioning Mode            : 1 partition \0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : 3 partitions \0A\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : not supported\0A\00", align 1
@.str.66 = private unnamed_addr constant [68 x i8] c" Output File Format                : H.264 Bit Stream File Format \0A\00", align 1
@.str.67 = private unnamed_addr constant [62 x i8] c" Output File Format                : RTP Packet File Format \0A\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c" Output File Format                : not supported\0A\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c" Residue Color Transform           : used\0A\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c" Residue Color Transform           : not used\0A\00", align 1
@.str.71 = private unnamed_addr constant [81 x i8] c"------------------ Average data all frames  -----------------------------------\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c" SNR Y(dB)                         : %5.2f\0A\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c" SNR U(dB)                         : %5.2f\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c" SNR V(dB)                         : %5.2f\0A\00", align 1
@.str.75 = private unnamed_addr constant [52 x i8] c" cSNR Y(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c" cSNR U(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c" cSNR V(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.78 = private unnamed_addr constant [70 x i8] c" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \0A\00", align 1
@.str.79 = private unnamed_addr constant [44 x i8] c" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\0A\00", align 1
@.str.80 = private unnamed_addr constant [65 x i8] c" Total bits                        : %d (I %5d, P %5d, NVB %d) \0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c" Bits to avoid Startcode Emulation : %d \0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c" Bits for parameter sets           : %d \0A\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"Exit JM %s encoder ver %s \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"10 (FRExt)\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"stats.dat\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@.str.88 = private unnamed_addr constant [66 x i8] c" -------------------------------------------------------------- \0A\00", align 1
@.str.89 = private unnamed_addr constant [66 x i8] c"  This file contains statistics for the last encoded sequence   \0A\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c" Sequence                     : %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c" No.of coded pictures         : %4d\0A\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c" Freq. for encoded bitstream  : %4.0f\0A\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c" I Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c" P Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c" B Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c" Total Bitrate(kb/s)          : %6.2f\0A\00", align 1
@.str.97 = private unnamed_addr constant [47 x i8] c" Hadamard transform           : Used for QPel\0A\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c" Hadamard transform           : Used\0A\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c" Hadamard transform           : Not used\0A\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c" Image format                 : %dx%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c" Error robustness             : On\0A\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c" Error robustness             : Off\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c" Search range                 : %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c" Total number of references   : %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c" References for P slices      : %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c" List0 refs for B slices      : %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c" List1 refs for B slices      : %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CAVLC\0A\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CABAC\0A\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c" Profile/Level IDC            : (%d,%d)\0A\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c" MB Field Coding : On \0A\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c" Search range restrictions    : none\0A\00", align 1
@.str.113 = private unnamed_addr constant [56 x i8] c" Search range restrictions    : older reference frames\0A\00", align 1
@.str.114 = private unnamed_addr constant [75 x i8] c" Search range restrictions    : smaller blocks and older reference frames\0A\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c" RD-optimized mode decision   : used\0A\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c" RD-optimized mode decision   : not used\0A\00", align 1
@.str.117 = private unnamed_addr constant [58 x i8] c" ---------------------|----------------|---------------|\0A\00", align 1
@.str.118 = private unnamed_addr constant [58 x i8] c"     Item             |     Intra      |   All frames  |\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c" SNR Y(dB)            |\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c" %5.2f          |\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c" %5.2f         |\0A\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c" SNR U/V (dB)         |\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f    |\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f   |\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c" Average quant        |\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c" %5d          |\00", align 1
@.str.127 = private unnamed_addr constant [75 x i8] c"\0A ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str.128 = private unnamed_addr constant [74 x i8] c"     SNR              |        I       |       P       |       B       |\0A\00", align 1
@.str.129 = private unnamed_addr constant [74 x i8] c" ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str.130 = private unnamed_addr constant [71 x i8] c" SNR Y(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.131 = private unnamed_addr constant [71 x i8] c" SNR U(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.132 = private unnamed_addr constant [71 x i8] c" SNR V(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"\0A ---------------------|----------------|\0A\00", align 1
@.str.134 = private unnamed_addr constant [42 x i8] c"   Intra              |   Mode used    |\0A\00", align 1
@.str.135 = private unnamed_addr constant [42 x i8] c" ---------------------|----------------|\0A\00", align 1
@.str.136 = private unnamed_addr constant [40 x i8] c" Mode 0  intra 4x4    |  %5d         |\0A\00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c" Mode 1  intra 8x8    |  %5d         |\0A\00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c" Mode 2+ intra 16x16  |  %5d         |\0A\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c" Mode    intra IPCM   |  %5d         |\0A\00", align 1
@.str.140 = private unnamed_addr constant [61 x i8] c"\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str.141 = private unnamed_addr constant [60 x i8] c"   Inter              |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str.142 = private unnamed_addr constant [59 x i8] c" ---------------------|----------------|-----------------|\00", align 1
@.str.143 = private unnamed_addr constant [55 x i8] c"\0A Mode  0  (copy)      |  %5d         |    %8.2f     |\00", align 1
@.str.144 = private unnamed_addr constant [55 x i8] c"\0A Mode  1  (16x16)     |  %5d         |    %8.2f     |\00", align 1
@.str.145 = private unnamed_addr constant [55 x i8] c"\0A Mode  2  (16x8)      |  %5d         |    %8.2f     |\00", align 1
@.str.146 = private unnamed_addr constant [55 x i8] c"\0A Mode  3  (8x16)      |  %5d         |    %8.2f     |\00", align 1
@.str.147 = private unnamed_addr constant [55 x i8] c"\0A Mode  4  (8x8)       |  %5d         |    %8.2f     |\00", align 1
@.str.148 = private unnamed_addr constant [58 x i8] c"\0A Mode  5  intra 4x4   |  %5d         |-----------------|\00", align 1
@.str.149 = private unnamed_addr constant [40 x i8] c"\0A Mode  6  intra 8x8   |  %5d         |\00", align 1
@.str.150 = private unnamed_addr constant [40 x i8] c"\0A Mode  7+ intra 16x16 |  %5d         |\00", align 1
@.str.151 = private unnamed_addr constant [40 x i8] c"\0A Mode     intra IPCM  |  %5d         |\00", align 1
@.str.152 = private unnamed_addr constant [62 x i8] c"\0A\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str.153 = private unnamed_addr constant [60 x i8] c"   B frame            |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str.154 = private unnamed_addr constant [78 x i8] c"\0A\0A ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str.155 = private unnamed_addr constant [76 x i8] c"  Bit usage:          |      Intra     |      Inter     |    B frame     |\0A\00", align 1
@.str.156 = private unnamed_addr constant [76 x i8] c" ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c" Header               |\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c" %10.2f     |\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c" Mode                 |\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c" Motion Info          |\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"        ./.     |\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c" CBP Y/C              |\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c" Coeffs. Y            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.164 = private unnamed_addr constant [64 x i8] c" Coeffs. C            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.165 = private unnamed_addr constant [64 x i8] c" Delta quant          | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.166 = private unnamed_addr constant [64 x i8] c" Stuffing Bits        | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.167 = private unnamed_addr constant [24 x i8] c" average bits/frame   |\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"log.dat\00", align 1
@.str.169 = private unnamed_addr constant [298 x i8] c" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ \0A\00", align 1
@.str.170 = private unnamed_addr constant [298 x i8] c"|                   Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                            |\0A\00", align 1
@.str.171 = private unnamed_addr constant [298 x i8] c"|    ver    | Date  | Time  |         Sequence             | #Img |P/MbInt| QPI| QPP| QPB| Format  |Iperiod| #B | FMES | Hdmd | S.R |#Ref | Freq |Coding|RD-opt|Intra upd|8x8Tr| SNRY 1| SNRU 1| SNRV 1| SNRY N| SNRU N| SNRV N|#Bitr I|#Bitr P|#Bitr B|#Bitr IPB|     Total Time   |      Me Time     |\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"%30.30s|\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"%5d |\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c" %-3d|\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"  %3d  |\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"  HEX |\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c" SHEX |\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c" EPZS |\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"  OFF |\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"  QPL |\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"  ON  |\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c" %3d |\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c" %2d  |\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c" %5.2f|\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"   %d  |\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"   ON    |\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"   OFF   |\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"  %d  |\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"%7.3f|\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"%7.0f|\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"%9.0f|\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"   %12d   |\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"   %12d   |\0A\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"data.txt\00", align 1
@.str.199 = private unnamed_addr constant [88 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %5d %.3f\0A\00", align 1
@__const.information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 1
@.str.200 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str.201 = private unnamed_addr constant [85 x i8] c"------------------------------- JM %s %s ------------------------------------------\0A\00", align 1
@.str.202 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str.203 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str.204 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str.205 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str.206 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str.208 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@imgY_org_frm = external dso_local global ptr, align 8
@imgUV_org_frm = external dso_local global ptr, align 8
@imgY_org_top = external dso_local global ptr, align 8
@imgY_org_bot = external dso_local global ptr, align 8
@imgUV_org_top = external dso_local local_unnamed_addr global ptr, align 8
@.str.213 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = external dso_local local_unnamed_addr global ptr, align 8
@.str.214 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external dso_local local_unnamed_addr global ptr, align 8
@.str.215 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external dso_local local_unnamed_addr global ptr, align 8
@yPicPos = external dso_local local_unnamed_addr global ptr, align 8
@.str.216 = private unnamed_addr constant [29 x i8] c"init_global_buffers: yPicPos\00", align 1
@xPicPos = external dso_local local_unnamed_addr global ptr, align 8
@.str.217 = private unnamed_addr constant [29 x i8] c"init_global_buffers: xPicPos\00", align 1
@wp_weight = external dso_local global ptr, align 8
@wp_offset = external dso_local global ptr, align 8
@wbp_weight = external dso_local global ptr, align 8
@direct_ref_idx = external dso_local global ptr, align 8
@direct_pdir = external dso_local global ptr, align 8
@img4Y_tmp = external dso_local global ptr, align 8
@.str.218 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = external dso_local global ptr, align 8
@refresh_map = external dso_local global ptr, align 8
@imgY_com = external dso_local global ptr, align 8
@imgUV_com = external dso_local global ptr, align 8
@.str.219 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str.220 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str.221 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
@str.222 = private unnamed_addr constant [94 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D L0 L1 RDP Ref\00", align 1
@str.223 = private unnamed_addr constant [94 x i8] c"---------------------------------------------------------------------------------------------\00", align 1
@str.225 = private unnamed_addr constant [80 x i8] c"  Frame  Bit/pic    QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld Ref  \00", align 1
@str.227 = private unnamed_addr constant [80 x i8] c"-------------------------------------------------------------------------------\00", align 1
@str.228 = private unnamed_addr constant [25 x i8] c"\0AEncoding. Please Wait.\0A\00", align 1
@switch.table.report = private unnamed_addr constant [3 x ptr] [ptr @.str.178, ptr @.str.179, ptr @.str.180], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @init_stats() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1244
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = load ptr, ptr @stats, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 688
  store i32 %3, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %4, i64 712
  store i32 0, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %4, i64 716
  store i32 0, ptr %7, align 4, !tbaa !18
  %8 = getelementptr inbounds i8, ptr %4, i64 720
  store i32 0, ptr %8, align 8, !tbaa !19
  %9 = load ptr, ptr @snr, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr noundef %1) local_unnamed_addr #1 {
  store i32 0, ptr @giRDOpt_B8OnlyFlag, align 4, !tbaa !20
  store i32 -1, ptr @p_in, align 4, !tbaa !20
  store i32 -1, ptr @p_dec, align 4, !tbaa !20
  store ptr null, ptr @p_trace, align 8, !tbaa !6
  store ptr null, ptr @p_log, align 8, !tbaa !6
  store ptr null, ptr @p_stat, align 8, !tbaa !6
  store i32 1, ptr @frame_statistic_start, align 4, !tbaa !20
  tail call void @Configure(i32 noundef signext %0, ptr noundef %1) #19
  tail call void @Init_QMatrix() #19
  tail call void @Init_QOffsetMatrix() #19
  tail call void @AllocNalPayloadBuffer() #19
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 3880
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 90224
  store i32 %5, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, ptr %6, i64 90228
  store i32 0, ptr %8, align 4, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %6, i64 90240
  store i32 1, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds i8, ptr %3, i64 1940
  %11 = load i32, ptr %10, align 4, !tbaa !27
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %3, i64 1244
  %15 = load i32, ptr %14, align 4, !tbaa !10
  %16 = mul nsw i32 %15, -2
  %17 = shl i32 %15, 1
  %18 = add i32 %17, 2
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i32 [ %16, %13 ], [ 0, %2 ]
  %21 = phi i32 [ %18, %13 ], [ 2, %2 ]
  %22 = getelementptr inbounds i8, ptr %6, i64 90232
  store i32 %20, ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %6, i64 90244
  store i32 %21, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %3, i64 3552
  %25 = load i32, ptr %24, align 8, !tbaa !28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %3, i64 3556
  %29 = load i32, ptr %28, align 4, !tbaa !29
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds i8, ptr %6, i64 90236
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %28, align 4, !tbaa !29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %37

35:                                               ; preds = %19
  %36 = getelementptr inbounds i8, ptr %6, i64 90236
  store i32 1, ptr %36, align 4, !tbaa !30
  br label %37

37:                                               ; preds = %35, %27
  br label %38

38:                                               ; preds = %27, %37
  %39 = phi i32 [ 1, %37 ], [ 0, %27 ]
  %40 = getelementptr inbounds i8, ptr %6, i64 90312
  store i32 %39, ptr %40, align 8, !tbaa !31
  %41 = getelementptr inbounds i8, ptr %6, i64 90252
  store i32 %39, ptr %41, align 4, !tbaa !32
  tail call void @GenerateParameterSets() #19
  tail call void @SetLevelIndices()
  tail call void @init_img()
  %42 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %45

45:                                               ; preds = %38, %44
  store ptr %42, ptr @frame_pic_1, align 8, !tbaa !6
  %46 = load ptr, ptr @input, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 1916
  %48 = load i32, ptr %47, align 4, !tbaa !33
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %54

54:                                               ; preds = %50, %53
  store ptr %51, ptr @frame_pic_2, align 8, !tbaa !6
  %55 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %58

58:                                               ; preds = %54, %57
  store ptr %55, ptr @frame_pic_3, align 8, !tbaa !6
  br label %59

59:                                               ; preds = %58, %45
  store i32 0, ptr @si_frame_indicator, align 4, !tbaa !20
  %60 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %63

63:                                               ; preds = %59, %62
  store ptr %60, ptr @frame_pic_2, align 8, !tbaa !6
  %64 = load ptr, ptr @img, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 60
  %66 = load i32, ptr %65, align 4, !tbaa !34
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = tail call noalias ptr @malloc(i64 noundef %68) #21
  store ptr %69, ptr @lrec, align 8, !tbaa !6
  %70 = icmp sgt i32 %66, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %63, %71
  %72 = phi i64 [ %81, %71 ], [ 0, %63 ]
  %73 = phi ptr [ %82, %71 ], [ %64, %63 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 52
  %75 = load i32, ptr %74, align 4, !tbaa !35
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 2
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #21
  %79 = load ptr, ptr @lrec, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %72
  store ptr %78, ptr %80, align 8, !tbaa !6
  %81 = add nuw nsw i64 %72, 1
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 60
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %71, label %87

87:                                               ; preds = %71
  %88 = shl nsw i64 %85, 3
  br label %89

89:                                               ; preds = %87, %63
  %90 = phi i64 [ %88, %87 ], [ %68, %63 ]
  %91 = phi i32 [ %84, %87 ], [ %66, %63 ]
  %92 = phi ptr [ %82, %87 ], [ %64, %63 ]
  %93 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  store ptr %93, ptr @lrec_uv, align 8, !tbaa !6
  %94 = tail call noalias ptr @malloc(i64 noundef %90) #21
  store ptr %94, ptr %93, align 8, !tbaa !6
  %95 = tail call noalias ptr @malloc(i64 noundef %90) #21
  %96 = getelementptr inbounds i8, ptr %93, i64 8
  store ptr %95, ptr %96, align 8, !tbaa !6
  %97 = icmp sgt i32 %91, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %89, %98
  %99 = phi i64 [ %119, %98 ], [ 0, %89 ]
  %100 = phi ptr [ %120, %98 ], [ %92, %89 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 52
  %102 = load i32, ptr %101, align 4, !tbaa !35
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  %105 = tail call noalias ptr @malloc(i64 noundef %104) #21
  %106 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %99
  store ptr %105, ptr %108, align 8, !tbaa !6
  %109 = load ptr, ptr @img, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 52
  %111 = load i32, ptr %110, align 4, !tbaa !35
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 2
  %114 = tail call noalias ptr @malloc(i64 noundef %113) #21
  %115 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %115, i64 8
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds ptr, ptr %117, i64 %99
  store ptr %114, ptr %118, align 8, !tbaa !6
  %119 = add nuw nsw i64 %99, 1
  %120 = load ptr, ptr @img, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 60
  %122 = load i32, ptr %121, align 4, !tbaa !34
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %119, %123
  br i1 %124, label %98, label %125

125:                                              ; preds = %98, %89
  store i32 0, ptr @number_sp2_frames, align 4, !tbaa !20
  %126 = load ptr, ptr @input, align 8, !tbaa !6
  %127 = getelementptr inbounds i8, ptr %126, i64 3552
  %128 = load i32, ptr %127, align 8, !tbaa !28
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %125
  %131 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %134

134:                                              ; preds = %130, %133
  store ptr %131, ptr @top_pic, align 8, !tbaa !6
  %135 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %138

138:                                              ; preds = %134, %137
  store ptr %135, ptr @bottom_pic, align 8, !tbaa !6
  br label %139

139:                                              ; preds = %138, %125
  tail call void @init_rdopt() #19
  %140 = load ptr, ptr @input, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 1944
  %142 = load i32, ptr %141, align 8, !tbaa !36
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  tail call void @init_gop_structure() #19
  %145 = load ptr, ptr @input, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %145, i64 1944
  %147 = load i32, ptr %146, align 8, !tbaa !36
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  tail call void @interpret_gop_structure() #19
  br label %151

150:                                              ; preds = %144
  tail call void @create_pyramid() #19
  br label %151

151:                                              ; preds = %149, %150, %139
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 48), align 8, !tbaa !37
  tail call void @init_dpb() #19
  tail call void @init_out_buffer() #19
  %152 = load ptr, ptr @input, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %152, i64 1244
  %154 = load i32, ptr %153, align 4, !tbaa !10
  %155 = load ptr, ptr @stats, align 8, !tbaa !6
  %156 = getelementptr inbounds i8, ptr %155, i64 688
  store i32 %154, ptr %156, align 8, !tbaa !14
  %157 = getelementptr inbounds i8, ptr %155, i64 712
  store i32 0, ptr %157, align 8, !tbaa !17
  %158 = getelementptr inbounds i8, ptr %155, i64 716
  store i32 0, ptr %158, align 4, !tbaa !18
  %159 = getelementptr inbounds i8, ptr %155, i64 720
  store i32 0, ptr %159, align 8, !tbaa !19
  %160 = load ptr, ptr @snr, align 8, !tbaa !6
  %161 = getelementptr inbounds i8, ptr %160, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %160, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %161, i8 0, i64 40, i1 false)
  store ptr null, ptr @enc_bottom_picture, align 8, !tbaa !6
  store ptr null, ptr @enc_top_picture, align 8, !tbaa !6
  store ptr null, ptr @enc_frame_picture, align 8, !tbaa !6
  store ptr null, ptr @enc_picture, align 8, !tbaa !6
  %162 = tail call signext i32 @init_global_buffers()
  tail call void @create_context_memory() #19
  tail call void @Init_Motion_Search_Module() #19
  tail call void @information_init()
  %163 = load ptr, ptr @input, align 8, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %163, i64 3908
  %165 = load i32, ptr %164, align 4, !tbaa !39
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %151
  tail call void @rc_init_seq() #19
  %168 = load ptr, ptr @input, align 8, !tbaa !6
  br label %169

169:                                              ; preds = %167, %151
  %170 = phi ptr [ %168, %167 ], [ %163, %151 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 3964
  %172 = load i32, ptr %171, align 4, !tbaa !40
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  tail call void @DefineThreshold() #19
  %175 = load ptr, ptr @input, align 8, !tbaa !6
  br label %176

176:                                              ; preds = %174, %169
  %177 = phi ptr [ %175, %174 ], [ %170, %169 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @frame_ctr, i8 0, i64 20, i1 false)
  %178 = load ptr, ptr @img, align 8, !tbaa !6
  %179 = getelementptr inbounds i8, ptr %178, i64 90588
  store i32 0, ptr %179, align 4, !tbaa !41
  store i32 0, ptr @tot_time, align 4, !tbaa !20
  %180 = getelementptr inbounds i8, ptr %177, i64 3112
  %181 = load i32, ptr %180, align 8, !tbaa !42
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = getelementptr inbounds i8, ptr %177, i64 20
  %185 = load i32, ptr %184, align 4, !tbaa !43
  %186 = add nsw i32 %185, %181
  %187 = add nsw i32 %185, 1
  %188 = sdiv i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = getelementptr inbounds i8, ptr %177, i64 8
  store i32 %189, ptr %190, align 8, !tbaa !44
  br label %191

191:                                              ; preds = %183, %176
  %192 = getelementptr inbounds i8, ptr %177, i64 1244
  %193 = load i32, ptr %192, align 4, !tbaa !10
  store i32 %193, ptr @initial_Bframes, align 4, !tbaa !20
  tail call void @PatchInputNoFrames() #19
  %194 = load ptr, ptr @stats, align 8, !tbaa !6
  %195 = getelementptr inbounds i8, ptr %194, i64 1496
  store i32 0, ptr %195, align 8, !tbaa !45
  %196 = tail call signext i32 @start_sequence() #19
  %197 = load ptr, ptr @stats, align 8, !tbaa !6
  %198 = getelementptr inbounds i8, ptr %197, i64 24
  store i32 %196, ptr %198, align 8, !tbaa !46
  %199 = getelementptr inbounds i8, ptr %197, i64 1500
  %200 = load i32, ptr %199, align 4, !tbaa !47
  %201 = getelementptr inbounds i8, ptr %197, i64 1496
  %202 = load i32, ptr %201, align 8, !tbaa !45
  %203 = add nsw i32 %202, %200
  store i32 %203, ptr %201, align 8, !tbaa !45
  store i32 0, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %204 = load ptr, ptr @img, align 8, !tbaa !6
  store i32 0, ptr %204, align 8, !tbaa !48
  %205 = load ptr, ptr @input, align 8, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %205, i64 8
  %207 = load i32, ptr %206, align 8, !tbaa !44
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %529

209:                                              ; preds = %191, %523
  %210 = phi ptr [ %502, %523 ], [ %206, %191 ]
  %211 = phi ptr [ %501, %523 ], [ %205, %191 ]
  %212 = phi i32 [ %526, %523 ], [ 0, %191 ]
  %213 = phi ptr [ %508, %523 ], [ %204, %191 ]
  %214 = phi i32 [ %527, %523 ], [ 0, %191 ]
  %215 = phi i32 [ %500, %523 ], [ 0, %191 ]
  %216 = getelementptr inbounds i8, ptr %211, i64 1228
  %217 = load i32, ptr %216, align 4, !tbaa !49
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %209
  %220 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %221 = sub nsw i32 %212, %220
  %222 = srem i32 %221, %217
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %245, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds i8, ptr %211, i64 4320
  %226 = load i32, ptr %225, align 8, !tbaa !50
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %245, label %228

228:                                              ; preds = %224
  %229 = add nsw i32 %212, 1
  %230 = srem i32 %229, 2
  br label %245

231:                                              ; preds = %209
  %232 = icmp eq i32 %212, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, ptr %211, i64 4320
  %235 = load i32, ptr %234, align 8, !tbaa !50
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = add nsw i32 %212, 1
  %239 = srem i32 %238, 2
  br label %240

240:                                              ; preds = %237, %233, %231
  %241 = phi i32 [ %239, %237 ], [ 1, %233 ], [ 1, %231 ]
  %242 = getelementptr inbounds i8, ptr %213, i64 90316
  store i32 %241, ptr %242, align 4, !tbaa !51
  %243 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %244 = sub nsw i32 %212, %243
  br label %252

245:                                              ; preds = %219, %224, %228
  %246 = phi i32 [ %230, %228 ], [ 1, %224 ], [ 1, %219 ]
  %247 = getelementptr inbounds i8, ptr %213, i64 90316
  store i32 %246, ptr %247, align 4, !tbaa !51
  %248 = getelementptr inbounds i8, ptr %211, i64 1236
  %249 = load i32, ptr %248, align 4, !tbaa !52
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 %221, i32 %222
  br label %252

252:                                              ; preds = %245, %240
  %253 = phi i32 [ %243, %240 ], [ %220, %245 ]
  %254 = phi i32 [ %244, %240 ], [ %251, %245 ]
  %255 = getelementptr inbounds i8, ptr %211, i64 20
  %256 = load i32, ptr %255, align 4, !tbaa !43
  %257 = shl i32 %256, 1
  %258 = add i32 %257, 2
  %259 = mul nsw i32 %258, %254
  %260 = getelementptr inbounds i8, ptr %213, i64 90268
  store i32 %259, ptr %260, align 4, !tbaa !53
  %261 = getelementptr inbounds i8, ptr %211, i64 3552
  %262 = load i32, ptr %261, align 8, !tbaa !28
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %252
  %265 = getelementptr inbounds i8, ptr %211, i64 3556
  %266 = load i32, ptr %265, align 4, !tbaa !29
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %264, %252
  %269 = or disjoint i32 %259, 1
  br label %270

270:                                              ; preds = %264, %268
  %271 = phi i32 [ %269, %268 ], [ %259, %264 ]
  %272 = getelementptr inbounds i8, ptr %213, i64 90272
  store i32 %271, ptr %272, align 8, !tbaa !54
  %273 = getelementptr inbounds i8, ptr %213, i64 90272
  %274 = getelementptr inbounds i8, ptr %213, i64 90276
  store i32 %259, ptr %274, align 4, !tbaa !55
  %275 = getelementptr inbounds i8, ptr %211, i64 1940
  %276 = load i32, ptr %275, align 4, !tbaa !27
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %282, label %278

278:                                              ; preds = %270
  %279 = getelementptr inbounds i8, ptr %211, i64 1944
  %280 = load i32, ptr %279, align 8, !tbaa !36
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %278, %270
  %283 = getelementptr inbounds i8, ptr %211, i64 1244
  %284 = load i32, ptr %283, align 4, !tbaa !10
  %285 = icmp eq i32 %284, 0
  %286 = icmp slt i32 %212, 2
  %287 = or i1 %286, %285
  br i1 %287, label %288, label %315

288:                                              ; preds = %282, %278
  br i1 %218, label %307, label %289

289:                                              ; preds = %288
  %290 = getelementptr inbounds i8, ptr %211, i64 1236
  %291 = load i32, ptr %290, align 4, !tbaa !52
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %307, label %293

293:                                              ; preds = %289
  %294 = add i32 %212, %214
  %295 = sub i32 %294, %253
  %296 = srem i32 %295, %217
  %297 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !20
  %298 = add i32 %297, 4
  %299 = shl nuw i32 1, %298
  %300 = srem i32 %296, %299
  %301 = getelementptr inbounds i8, ptr %213, i64 90284
  %302 = sub nsw i32 %212, %253
  %303 = srem i32 %302, %217
  %304 = icmp eq i32 %303, 0
  %305 = select i1 %304, i32 0, i32 %300
  store i32 %305, ptr %301, align 4
  %306 = select i1 %304, i32 0, i32 %215
  br label %334

307:                                              ; preds = %289, %288
  %308 = add i32 %212, %214
  %309 = sub i32 %308, %253
  %310 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !20
  %311 = add i32 %310, 4
  %312 = shl nuw i32 1, %311
  %313 = srem i32 %309, %312
  %314 = getelementptr inbounds i8, ptr %213, i64 90284
  store i32 %313, ptr %314, align 4, !tbaa !56
  br label %334

315:                                              ; preds = %282
  br i1 %218, label %325, label %316

316:                                              ; preds = %315
  %317 = getelementptr inbounds i8, ptr %211, i64 1236
  %318 = load i32, ptr %317, align 4, !tbaa !52
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %316
  %321 = srem i32 %212, %217
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = getelementptr inbounds i8, ptr %213, i64 90284
  store i32 0, ptr %324, align 4, !tbaa !56
  br label %325

325:                                              ; preds = %320, %323, %316, %315
  %326 = phi i32 [ 0, %323 ], [ %215, %320 ], [ %215, %316 ], [ %215, %315 ]
  %327 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !20
  %328 = add i32 %327, 4
  %329 = getelementptr inbounds i8, ptr %213, i64 90284
  %330 = load i32, ptr %329, align 4, !tbaa !56
  %331 = shl nsw i32 -1, %328
  %332 = xor i32 %331, -1
  %333 = and i32 %330, %332
  store i32 %333, ptr %329, align 4, !tbaa !56
  br label %334

334:                                              ; preds = %293, %307, %325
  %335 = phi i32 [ %215, %307 ], [ %326, %325 ], [ %306, %293 ]
  %336 = getelementptr inbounds i8, ptr %213, i64 90256
  store i32 0, ptr %336, align 8, !tbaa !20
  %337 = load i32, ptr %275, align 4, !tbaa !27
  %338 = icmp ne i32 %337, 1
  %339 = icmp eq i32 %212, 0
  %340 = or i1 %339, %338
  br i1 %340, label %345, label %341

341:                                              ; preds = %334
  %342 = getelementptr inbounds i8, ptr %211, i64 1244
  %343 = load i32, ptr %342, align 4, !tbaa !10
  %344 = shl nsw i32 %343, 1
  store i32 %344, ptr %336, align 8, !tbaa !20
  br label %345

345:                                              ; preds = %341, %334
  %346 = load i32, ptr %216, align 4, !tbaa !49
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = icmp eq i32 %212, %253
  br i1 %349, label %366, label %354

350:                                              ; preds = %345
  %351 = sub nsw i32 %212, %253
  %352 = srem i32 %351, %346
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %366, label %354

354:                                              ; preds = %350, %348
  %355 = getelementptr inbounds i8, ptr %211, i64 1280
  %356 = load i32, ptr %355, align 8, !tbaa !57
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = sub nsw i32 %212, %253
  %360 = srem i32 %359, %356
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %358, %354
  %363 = load i32, ptr %275, align 4, !tbaa !27
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i32
  br label %366

366:                                              ; preds = %348, %350, %358, %362
  %367 = phi i32 [ 2, %348 ], [ 2, %350 ], [ %365, %362 ], [ 3, %358 ]
  %368 = getelementptr inbounds i8, ptr %213, i64 24
  store i32 %367, ptr %368, align 8, !tbaa !58
  %369 = getelementptr inbounds i8, ptr %211, i64 1244
  %370 = load i32, ptr %369, align 4, !tbaa !10
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %401, label %372

372:                                              ; preds = %366
  %373 = getelementptr inbounds i8, ptr %211, i64 3112
  %374 = load i32, ptr %373, align 8, !tbaa !42
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %401, label %376

376:                                              ; preds = %372
  %377 = add nsw i32 %212, 1
  %378 = sub i32 %377, %253
  %379 = load i32, ptr %210, align 8, !tbaa !44
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %401

381:                                              ; preds = %376
  %382 = load i32, ptr %255, align 4, !tbaa !43
  %383 = add nsw i32 %382, 1
  %384 = sitofp i32 %383 to float
  %385 = fpext float %384 to double
  %386 = sitofp i32 %370 to double
  %387 = fadd double %386, 1.000000e+00
  %388 = fdiv double %385, %387
  %389 = fadd double %388, 4.999990e-01
  %390 = fptosi double %389 to i32
  %391 = add nsw i32 %212, -1
  %392 = mul nsw i32 %383, %391
  %393 = sub nsw i32 %374, %392
  %394 = sdiv i32 %393, %390
  %395 = add nsw i32 %394, -1
  store i32 %395, ptr %369, align 4, !tbaa !10
  %396 = load i32, ptr @initial_Bframes, align 4, !tbaa !20
  %397 = sub nsw i32 %395, %396
  %398 = shl nsw i32 %397, 1
  store i32 %398, ptr %336, align 8, !tbaa !20
  %399 = add nsw i32 %259, %398
  store i32 %399, ptr %260, align 4, !tbaa !53
  %400 = add nsw i32 %271, %398
  store i32 %400, ptr %273, align 8, !tbaa !54
  store i32 %399, ptr %274, align 4, !tbaa !55
  br label %401

401:                                              ; preds = %381, %376, %372, %366
  %402 = icmp eq i32 %367, 2
  br i1 %402, label %403, label %451

403:                                              ; preds = %401
  %404 = getelementptr inbounds i8, ptr %211, i64 3908
  %405 = load i32, ptr %404, align 4, !tbaa !39
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %451, label %407

407:                                              ; preds = %403
  %408 = load i32, ptr %216, align 4, !tbaa !49
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %407
  %411 = load i32, ptr %210, align 8, !tbaa !44
  %412 = add nsw i32 %411, -1
  %413 = load i32, ptr %369, align 4, !tbaa !10
  %414 = mul nsw i32 %412, %413
  br label %444

415:                                              ; preds = %407
  %416 = load i32, ptr %369, align 4, !tbaa !10
  %417 = add nsw i32 %416, 1
  %418 = mul nsw i32 %417, %408
  %419 = select i1 %339, i32 %416, i32 0
  %420 = sub nsw i32 %418, %419
  %421 = sdiv i32 %212, %408
  %422 = load i32, ptr %210, align 8, !tbaa !44
  %423 = sdiv i32 %422, %408
  %424 = icmp slt i32 %421, %423
  br i1 %424, label %436, label %425

425:                                              ; preds = %415
  br i1 %339, label %432, label %426

426:                                              ; preds = %425
  %427 = sub nsw i32 %422, %212
  %428 = add nsw i32 %427, -1
  %429 = mul nsw i32 %428, %416
  %430 = add i32 %427, %416
  %431 = add i32 %430, %429
  br label %436

432:                                              ; preds = %425
  %433 = add nsw i32 %422, -1
  %434 = mul nsw i32 %433, %416
  %435 = add nsw i32 %434, %422
  br label %436

436:                                              ; preds = %426, %432, %415
  %437 = phi i32 [ %431, %426 ], [ %435, %432 ], [ %420, %415 ]
  %438 = zext i1 %339 to i32
  %439 = shl nsw i32 %416, %438
  %440 = add nsw i32 %437, %439
  %441 = sdiv i32 %440, %417
  %442 = add nsw i32 %441, -1
  %443 = sub i32 %437, %441
  br label %444

444:                                              ; preds = %436, %410
  %445 = phi i32 [ %412, %410 ], [ %442, %436 ]
  %446 = phi i32 [ %414, %410 ], [ %443, %436 ]
  tail call void @rc_init_GOP(i32 noundef signext %445, i32 noundef signext %446) #19
  %447 = load ptr, ptr @img, align 8, !tbaa !6
  %448 = load i32, ptr %447, align 8, !tbaa !48
  %449 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %450 = load ptr, ptr @input, align 8, !tbaa !6
  br label %451

451:                                              ; preds = %403, %444, %401
  %452 = phi ptr [ %211, %403 ], [ %450, %444 ], [ %211, %401 ]
  %453 = phi i32 [ %253, %403 ], [ %449, %444 ], [ %253, %401 ]
  %454 = phi i32 [ %212, %403 ], [ %448, %444 ], [ %212, %401 ]
  %455 = phi ptr [ %213, %403 ], [ %447, %444 ], [ %213, %401 ]
  %456 = sub nsw i32 %454, %453
  %457 = getelementptr inbounds i8, ptr %452, i64 3584
  %458 = load i32, ptr %457, align 8, !tbaa !59
  %459 = add nsw i32 %458, 1
  %460 = srem i32 %456, %459
  %461 = icmp ne i32 %460, 0
  %462 = zext i1 %461 to i32
  %463 = getelementptr inbounds i8, ptr %455, i64 90200
  store i32 %462, ptr %463, align 8
  %464 = tail call signext i32 @encode_one_frame() #19
  %465 = load ptr, ptr @img, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 24
  %467 = load i32, ptr %466, align 8, !tbaa !58
  %468 = icmp eq i32 %467, 2
  %469 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %468, label %470, label %478

470:                                              ; preds = %451
  %471 = getelementptr inbounds i8, ptr %469, i64 1232
  %472 = load i32, ptr %471, align 8, !tbaa !60
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %470
  %475 = getelementptr inbounds i8, ptr %465, i64 90280
  %476 = load i32, ptr %475, align 8, !tbaa !61
  %477 = getelementptr inbounds i8, ptr %465, i64 90588
  store i32 %476, ptr %477, align 4, !tbaa !41
  br label %478

478:                                              ; preds = %474, %470, %451
  %479 = getelementptr inbounds i8, ptr %469, i64 3896
  %480 = load i32, ptr %479, align 8, !tbaa !62
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %478
  tail call void @report_frame_statistic()
  %483 = load ptr, ptr @img, align 8, !tbaa !6
  br label %484

484:                                              ; preds = %482, %478
  %485 = phi ptr [ %483, %482 ], [ %465, %478 ]
  %486 = getelementptr inbounds i8, ptr %485, i64 90316
  %487 = load i32, ptr %486, align 4, !tbaa !51
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %499

489:                                              ; preds = %484
  %490 = add nsw i32 %335, 1
  %491 = getelementptr inbounds i8, ptr %485, i64 90284
  %492 = load i32, ptr %491, align 4, !tbaa !56
  %493 = add i32 %492, 2147483647
  %494 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !20
  %495 = add i32 %494, 4
  %496 = shl nsw i32 -1, %495
  %497 = xor i32 %496, -1
  %498 = and i32 %493, %497
  store i32 %498, ptr %491, align 4, !tbaa !56
  br label %499

499:                                              ; preds = %489, %484
  %500 = phi i32 [ %490, %489 ], [ %335, %484 ]
  tail call void @encode_enhancement_layer() #19
  %501 = load ptr, ptr @input, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %501, i64 8
  %503 = load i32, ptr %502, align 8, !tbaa !44
  %504 = add nsw i32 %503, -1
  %505 = getelementptr inbounds i8, ptr %501, i64 3588
  %506 = load i32, ptr %505, align 4, !tbaa !63
  %507 = icmp eq i32 %506, 0
  %508 = load ptr, ptr @img, align 8, !tbaa !6
  %509 = load i32, ptr %508, align 8, !tbaa !48
  br i1 %507, label %523, label %510

510:                                              ; preds = %499
  %511 = icmp ne i32 %509, %504
  %512 = load i32, ptr @In2ndIGOP, align 4
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %511, i1 true, i1 %513
  br i1 %514, label %523, label %515

515:                                              ; preds = %510
  store i32 1, ptr @In2ndIGOP, align 4, !tbaa !20
  store i32 %503, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %516 = getelementptr inbounds i8, ptr %501, i64 20
  %517 = load i32, ptr %516, align 4, !tbaa !43
  %518 = add nsw i32 %517, 1
  %519 = mul nsw i32 %518, %504
  %520 = add nsw i32 %519, 1
  store i32 %520, ptr @start_tr_in_this_IGOP, align 4, !tbaa !20
  %521 = add nsw i32 %506, %503
  store i32 %521, ptr %502, align 8, !tbaa !44
  %522 = load i32, ptr %508, align 8, !tbaa !48
  br label %523

523:                                              ; preds = %499, %510, %515
  %524 = phi i32 [ %503, %499 ], [ %503, %510 ], [ %521, %515 ]
  %525 = phi i32 [ %509, %499 ], [ %509, %510 ], [ %522, %515 ]
  %526 = add nsw i32 %525, 1
  store i32 %526, ptr %508, align 8, !tbaa !48
  %527 = sub i32 0, %500
  %528 = icmp slt i32 %526, %524
  br i1 %528, label %209, label %529

529:                                              ; preds = %523, %191
  %530 = tail call signext i32 @terminate_sequence() #19
  tail call void @flush_dpb() #19
  %531 = load i32, ptr @p_in, align 4, !tbaa !20
  %532 = tail call signext i32 @close(i32 noundef signext %531) #19
  %533 = load i32, ptr @p_dec, align 4, !tbaa !20
  %534 = icmp eq i32 %533, -1
  br i1 %534, label %537, label %535

535:                                              ; preds = %529
  %536 = tail call signext i32 @close(i32 noundef signext %533) #19
  br label %537

537:                                              ; preds = %535, %529
  %538 = load ptr, ptr @p_trace, align 8, !tbaa !6
  %539 = icmp eq ptr %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %537
  %541 = tail call signext i32 @fclose(ptr noundef nonnull %538)
  br label %542

542:                                              ; preds = %540, %537
  tail call void @Clear_Motion_Search_Module() #19
  tail call void @RandomIntraUninit() #19
  tail call void @FmoUninit() #19
  %543 = load ptr, ptr @input, align 8, !tbaa !6
  %544 = getelementptr inbounds i8, ptr %543, i64 1944
  %545 = load i32, ptr %544, align 8, !tbaa !36
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %548, label %547

547:                                              ; preds = %542
  tail call void @clear_gop_structure() #19
  br label %548

548:                                              ; preds = %547, %542
  tail call void @clear_rdopt() #19
  tail call void @calc_buffer() #19
  tail call void @report()
  %549 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  %550 = icmp eq ptr %549, null
  br i1 %550, label %552, label %551

551:                                              ; preds = %548
  tail call void @free_slice_list(ptr noundef nonnull %549) #19
  tail call void @free(ptr noundef nonnull %549) #19
  br label %552

552:                                              ; preds = %548, %551
  %553 = load ptr, ptr @input, align 8, !tbaa !6
  %554 = getelementptr inbounds i8, ptr %553, i64 1916
  %555 = load i32, ptr %554, align 4, !tbaa !33
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %552
  %558 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  %559 = icmp eq ptr %558, null
  br i1 %559, label %561, label %560

560:                                              ; preds = %557
  tail call void @free_slice_list(ptr noundef nonnull %558) #19
  tail call void @free(ptr noundef nonnull %558) #19
  br label %561

561:                                              ; preds = %557, %560
  %562 = load ptr, ptr @frame_pic_3, align 8, !tbaa !6
  %563 = icmp eq ptr %562, null
  br i1 %563, label %565, label %564

564:                                              ; preds = %561
  tail call void @free_slice_list(ptr noundef nonnull %562) #19
  tail call void @free(ptr noundef nonnull %562) #19
  br label %565

565:                                              ; preds = %564, %561, %552
  %566 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %567 = icmp eq ptr %566, null
  br i1 %567, label %569, label %568

568:                                              ; preds = %565
  tail call void @free_slice_list(ptr noundef nonnull %566) #19
  tail call void @free(ptr noundef nonnull %566) #19
  br label %569

569:                                              ; preds = %568, %565
  %570 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  %571 = icmp eq ptr %570, null
  br i1 %571, label %573, label %572

572:                                              ; preds = %569
  tail call void @free_slice_list(ptr noundef nonnull %570) #19
  tail call void @free(ptr noundef nonnull %570) #19
  br label %573

573:                                              ; preds = %572, %569
  tail call void @free_dpb() #19
  %574 = load ptr, ptr @Co_located, align 8, !tbaa !6
  tail call void @free_colocated(ptr noundef %574) #19
  tail call void @uninit_out_buffer() #19
  tail call void @free_global_buffers()
  tail call void @free_img()
  tail call void @free_context_memory() #19
  tail call void @FreeNalPayloadBuffer() #19
  tail call void @FreeParameterSets() #19
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare dso_local void @Configure(i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @Init_QMatrix() local_unnamed_addr #3

declare dso_local void @Init_QOffsetMatrix() local_unnamed_addr #3

declare dso_local void @AllocNalPayloadBuffer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @init_poc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3880
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90224
  store i32 %3, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds i8, ptr %4, i64 90228
  store i32 0, ptr %6, align 4, !tbaa !25
  %7 = getelementptr inbounds i8, ptr %4, i64 90240
  store i32 1, ptr %7, align 8, !tbaa !26
  %8 = getelementptr inbounds i8, ptr %1, i64 1940
  %9 = load i32, ptr %8, align 4, !tbaa !27
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 1244
  %13 = load i32, ptr %12, align 4, !tbaa !10
  %14 = mul nsw i32 %13, -2
  %15 = shl i32 %13, 1
  %16 = add i32 %15, 2
  br label %17

17:                                               ; preds = %0, %11
  %18 = phi i32 [ %14, %11 ], [ 0, %0 ]
  %19 = phi i32 [ %16, %11 ], [ 2, %0 ]
  %20 = getelementptr inbounds i8, ptr %4, i64 90232
  store i32 %18, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %4, i64 90244
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 3552
  %23 = load i32, ptr %22, align 8, !tbaa !28
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, ptr %1, i64 3556
  %27 = load i32, ptr %26, align 4, !tbaa !29
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds i8, ptr %4, i64 90236
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %26, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %35

33:                                               ; preds = %17
  %34 = getelementptr inbounds i8, ptr %4, i64 90236
  store i32 1, ptr %34, align 4, !tbaa !30
  br label %35

35:                                               ; preds = %33, %25
  br label %36

36:                                               ; preds = %25, %35
  %37 = phi i32 [ 1, %35 ], [ 0, %25 ]
  %38 = getelementptr inbounds i8, ptr %4, i64 90312
  store i32 %37, ptr %38, align 8, !tbaa !31
  %39 = getelementptr inbounds i8, ptr %4, i64 90252
  store i32 %37, ptr %39, align 4, !tbaa !32
  ret void
}

declare dso_local void @GenerateParameterSets() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @SetLevelIndices() local_unnamed_addr #0 {
  %1 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 4, !tbaa !64
  switch i32 %3, label %56 [
    i32 10, label %4
    i32 11, label %7
    i32 12, label %15
    i32 13, label %18
    i32 20, label %21
    i32 21, label %24
    i32 22, label %27
    i32 30, label %30
    i32 31, label %33
    i32 32, label %36
    i32 40, label %39
    i32 41, label %42
    i32 42, label %45
    i32 50, label %53
  ]

4:                                                ; preds = %0
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %6, align 8, !tbaa !68
  br label %59

7:                                                ; preds = %0
  %8 = getelementptr inbounds i8, ptr %1, i64 20
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @img, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  br i1 %10, label %13, label %14

13:                                               ; preds = %7
  store i32 2, ptr %12, align 8, !tbaa !68
  br label %59

14:                                               ; preds = %7
  store i32 1, ptr %12, align 8, !tbaa !68
  br label %59

15:                                               ; preds = %0
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 8
  store i32 3, ptr %17, align 8, !tbaa !68
  br label %59

18:                                               ; preds = %0
  %19 = load ptr, ptr @img, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 8
  store i32 4, ptr %20, align 8, !tbaa !68
  br label %59

21:                                               ; preds = %0
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  store i32 5, ptr %23, align 8, !tbaa !68
  br label %59

24:                                               ; preds = %0
  %25 = load ptr, ptr @img, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  store i32 6, ptr %26, align 8, !tbaa !68
  br label %59

27:                                               ; preds = %0
  %28 = load ptr, ptr @img, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  store i32 7, ptr %29, align 8, !tbaa !68
  br label %59

30:                                               ; preds = %0
  %31 = load ptr, ptr @img, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store i32 8, ptr %32, align 8, !tbaa !68
  br label %59

33:                                               ; preds = %0
  %34 = load ptr, ptr @img, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %34, i64 8
  store i32 9, ptr %35, align 8, !tbaa !68
  br label %59

36:                                               ; preds = %0
  %37 = load ptr, ptr @img, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 8
  store i32 10, ptr %38, align 8, !tbaa !68
  br label %59

39:                                               ; preds = %0
  %40 = load ptr, ptr @img, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 8
  store i32 11, ptr %41, align 8, !tbaa !68
  br label %59

42:                                               ; preds = %0
  %43 = load ptr, ptr @img, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  store i32 12, ptr %44, align 8, !tbaa !68
  br label %59

45:                                               ; preds = %0
  %46 = getelementptr inbounds i8, ptr %1, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !70
  %48 = icmp ult i32 %47, 89
  %49 = load ptr, ptr @img, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  br i1 %48, label %51, label %52

51:                                               ; preds = %45
  store i32 13, ptr %50, align 8, !tbaa !68
  br label %59

52:                                               ; preds = %45
  store i32 14, ptr %50, align 8, !tbaa !68
  br label %59

53:                                               ; preds = %0
  %54 = load ptr, ptr @img, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 8
  store i32 15, ptr %55, align 8, !tbaa !68
  br label %59

56:                                               ; preds = %0
  %57 = load ptr, ptr @img, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  store i32 16, ptr %58, align 8, !tbaa !68
  br label %59

59:                                               ; preds = %51, %52, %13, %14, %56, %53, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %4
  ret void
}

; Function Attrs: nounwind
define dso_local void @init_img() local_unnamed_addr #1 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 76
  %3 = load i32, ptr %2, align 4, !tbaa !71
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90548
  store i32 %3, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds i8, ptr %1, i64 3968
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds i8, ptr %4, i64 90484
  store i32 %7, ptr %8, align 4, !tbaa !74
  %9 = mul i32 %7, 6
  %10 = add i32 %9, -48
  %11 = getelementptr inbounds i8, ptr %4, i64 90492
  store i32 %10, ptr %11, align 4, !tbaa !75
  %12 = shl i32 %7, 1
  %13 = add i32 %12, -16
  %14 = getelementptr inbounds i8, ptr %4, i64 90500
  store i32 %13, ptr %14, align 4, !tbaa !76
  %15 = add nsw i32 %7, -1
  %16 = shl nuw i32 1, %15
  %17 = getelementptr inbounds i8, ptr %4, i64 90528
  store i32 %16, ptr %17, align 8, !tbaa !77
  %18 = shl nsw i32 -1, %7
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds i8, ptr %4, i64 90532
  store i32 %19, ptr %20, align 4, !tbaa !78
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %0
  %23 = getelementptr inbounds i8, ptr %1, i64 3972
  %24 = load i32, ptr %23, align 4, !tbaa !79
  %25 = getelementptr inbounds i8, ptr %4, i64 90488
  store i32 %24, ptr %25, align 8, !tbaa !80
  %26 = shl nsw i32 -1, %24
  %27 = xor i32 %26, -1
  %28 = getelementptr inbounds i8, ptr %4, i64 90536
  store i32 %27, ptr %28, align 8, !tbaa !81
  %29 = shl nuw i32 1, %3
  %30 = and i32 %29, -2
  %31 = getelementptr inbounds i8, ptr %4, i64 90540
  store i32 %30, ptr %31, align 4, !tbaa !82
  %32 = shl i32 %30, 1
  %33 = getelementptr inbounds i8, ptr %4, i64 90544
  store i32 %32, ptr %33, align 8, !tbaa !83
  %34 = icmp ult i32 %3, 3
  %35 = select i1 %34, i32 8, i32 16
  %36 = getelementptr inbounds i8, ptr %4, i64 90556
  store i32 %35, ptr %36, align 4, !tbaa !84
  %37 = and i32 %3, -2
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 16, i32 8
  %40 = getelementptr inbounds i8, ptr %4, i64 90560
  store i32 %39, ptr %40, align 8, !tbaa !85
  %41 = mul i32 %24, 6
  %42 = add i32 %41, -48
  %43 = getelementptr inbounds i8, ptr %4, i64 90496
  store i32 %42, ptr %43, align 8, !tbaa !86
  %44 = getelementptr inbounds i8, ptr %4, i64 90572
  %45 = load i32, ptr %44, align 4, !tbaa !87
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %22
  %48 = add i32 %41, -42
  store i32 %48, ptr %43, align 8, !tbaa !86
  br label %56

49:                                               ; preds = %0
  %50 = getelementptr inbounds i8, ptr %4, i64 90488
  store i32 0, ptr %50, align 8, !tbaa !80
  %51 = getelementptr inbounds i8, ptr %4, i64 90536
  store i32 0, ptr %51, align 8, !tbaa !81
  %52 = getelementptr inbounds i8, ptr %4, i64 90540
  store i32 0, ptr %52, align 4, !tbaa !82
  %53 = getelementptr inbounds i8, ptr %4, i64 90544
  store i32 0, ptr %53, align 8, !tbaa !83
  %54 = getelementptr inbounds i8, ptr %4, i64 90556
  %55 = getelementptr inbounds i8, ptr %4, i64 90496
  store i32 0, ptr %55, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  br label %65

56:                                               ; preds = %22, %47
  %57 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 212
  %59 = load i32, ptr %58, align 4, !tbaa !88
  %60 = getelementptr inbounds i8, ptr %4, i64 90564
  store i32 %59, ptr %60, align 4, !tbaa !20
  %61 = getelementptr inbounds i8, ptr %57, i64 216
  %62 = load i32, ptr %61, align 8, !tbaa !90
  %63 = getelementptr inbounds i8, ptr %4, i64 90568
  store i32 %62, ptr %63, align 4, !tbaa !20
  %64 = tail call i32 @llvm.smax.i32(i32 %7, i32 %24)
  br label %65

65:                                               ; preds = %56, %49
  %66 = phi i32 [ %7, %49 ], [ %64, %56 ]
  %67 = icmp sgt i32 %66, 8
  %68 = select i1 %67, i32 16, i32 8
  %69 = getelementptr inbounds i8, ptr %4, i64 90480
  store i32 %68, ptr %69, align 8, !tbaa !91
  %70 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %70, i64 1132
  %72 = load i32, ptr %71, align 4, !tbaa !92
  %73 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %72, ptr %73, align 8, !tbaa !93
  %74 = getelementptr inbounds i8, ptr %70, i64 1148
  %75 = load i32, ptr %74, align 4, !tbaa !94
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = shl i32 %72, %77
  %79 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %78, ptr %79, align 4, !tbaa !95
  %80 = getelementptr inbounds i8, ptr %1, i64 36
  %81 = load i32, ptr %80, align 4, !tbaa !96
  %82 = getelementptr inbounds i8, ptr %4, i64 90192
  store i32 %81, ptr %82, align 8, !tbaa !97
  %83 = getelementptr inbounds i8, ptr %4, i64 90460
  store i32 0, ptr %83, align 4, !tbaa !98
  %84 = getelementptr inbounds i8, ptr %1, i64 3056
  %85 = load double, ptr %84, align 8, !tbaa !99
  %86 = fptrunc double %85 to float
  %87 = getelementptr inbounds i8, ptr %4, i64 48
  store float %86, ptr %87, align 8, !tbaa !100
  %88 = getelementptr inbounds i8, ptr %4, i64 89328
  %89 = tail call signext i32 @get_mem_mv(ptr noundef nonnull %88)
  %90 = load ptr, ptr @img, align 8, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %90, i64 89336
  %92 = tail call signext i32 @get_mem_mv(ptr noundef nonnull %91)
  %93 = load ptr, ptr @input, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 1264
  %95 = load i32, ptr %94, align 8, !tbaa !101
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %65
  %98 = load ptr, ptr @img, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %98, i64 89344
  %100 = tail call signext i32 @get_mem_mv(ptr noundef nonnull %99)
  %101 = load ptr, ptr @img, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 89352
  %103 = tail call signext i32 @get_mem_mv(ptr noundef nonnull %102)
  br label %104

104:                                              ; preds = %97, %65
  %105 = load ptr, ptr @img, align 8, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %105, i64 14136
  %107 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull %106)
  %108 = load ptr, ptr @img, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 14144
  %110 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull %109)
  %111 = load ptr, ptr @input, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %111, i64 3556
  %113 = load i32, ptr %112, align 4, !tbaa !29
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %104
  %116 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1648))
  %117 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1656))
  %118 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1648))
  %119 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1656))
  %120 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1648))
  %121 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1656))
  %122 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1648))
  %123 = tail call signext i32 @get_mem_mv(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1656))
  %124 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1544))
  %125 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1552))
  %126 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1544))
  %127 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1552))
  %128 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1544))
  %129 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1552))
  %130 = tail call signext i32 @get_mem_ACcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1544))
  %131 = tail call signext i32 @get_mem_DCcoeff(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1552))
  br label %132

132:                                              ; preds = %115, %104
  %133 = load ptr, ptr @img, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %133, i64 90532
  %135 = load i32, ptr %134, align 4, !tbaa !78
  %136 = getelementptr inbounds i8, ptr %133, i64 90536
  %137 = load i32, ptr %136, align 8, !tbaa !81
  %138 = tail call i32 @llvm.smax.i32(i32 %135, i32 %137)
  %139 = shl i32 %138, 1
  %140 = add i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = tail call noalias ptr @calloc(i64 noundef %141, i64 noundef 4) #20
  %143 = getelementptr inbounds i8, ptr %133, i64 89184
  store ptr %142, ptr %143, align 8, !tbaa !102
  %144 = icmp eq ptr %142, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %132
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #19
  %146 = load ptr, ptr @img, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 89184
  %148 = load ptr, ptr %147, align 8, !tbaa !102
  br label %149

149:                                              ; preds = %145, %132
  %150 = phi ptr [ %148, %145 ], [ %142, %132 ]
  %151 = phi ptr [ %146, %145 ], [ %133, %132 ]
  %152 = ashr exact i32 %140, 1
  %153 = getelementptr inbounds i8, ptr %151, i64 89184
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, ptr %150, i64 %154
  store ptr %155, ptr %153, align 8, !tbaa !102
  %156 = icmp sgt i32 %152, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %149
  %158 = zext nneg i32 %152 to i64
  br label %159

159:                                              ; preds = %157, %159
  %160 = phi i64 [ 0, %157 ], [ %166, %159 ]
  %161 = mul nuw nsw i64 %160, %160
  %162 = sub nsw i64 0, %160
  %163 = getelementptr inbounds i32, ptr %155, i64 %162
  %164 = trunc nsw i64 %161 to i32
  store i32 %164, ptr %163, align 4, !tbaa !20
  %165 = getelementptr inbounds i32, ptr %155, i64 %160
  store i32 %164, ptr %165, align 4, !tbaa !20
  %166 = add nuw nsw i64 %160, 1
  %167 = icmp eq i64 %166, %158
  br i1 %167, label %168, label %159

168:                                              ; preds = %159, %149
  %169 = load ptr, ptr @input, align 8, !tbaa !6
  %170 = getelementptr inbounds i8, ptr %169, i64 68
  %171 = load i32, ptr %170, align 4, !tbaa !103
  %172 = getelementptr inbounds i8, ptr %151, i64 90576
  %173 = load i32, ptr %172, align 8, !tbaa !104
  %174 = add nsw i32 %173, %171
  %175 = getelementptr inbounds i8, ptr %151, i64 52
  store i32 %174, ptr %175, align 4, !tbaa !35
  %176 = getelementptr inbounds i8, ptr %169, i64 72
  %177 = load i32, ptr %176, align 8, !tbaa !105
  %178 = getelementptr inbounds i8, ptr %151, i64 90580
  %179 = load i32, ptr %178, align 4, !tbaa !106
  %180 = add nsw i32 %179, %177
  %181 = getelementptr inbounds i8, ptr %151, i64 60
  store i32 %180, ptr %181, align 4, !tbaa !34
  %182 = getelementptr inbounds i8, ptr %151, i64 90548
  %183 = load i32, ptr %182, align 4, !tbaa !72
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %168
  %186 = sext i32 %183 to i64
  %187 = getelementptr inbounds [4 x i32], ptr @init_img.mb_width_cr, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !20
  %189 = sdiv i32 16, %188
  %190 = sdiv i32 %174, %189
  %191 = getelementptr inbounds [4 x i32], ptr @init_img.mb_height_cr, i64 0, i64 %186
  %192 = load i32, ptr %191, align 4, !tbaa !20
  %193 = sdiv i32 16, %192
  %194 = sdiv i32 %180, %193
  %195 = sdiv i32 %171, %189
  %196 = sdiv i32 %177, %193
  br label %197

197:                                              ; preds = %168, %185
  %198 = phi i32 [ %190, %185 ], [ 0, %168 ]
  %199 = phi i32 [ %194, %185 ], [ 0, %168 ]
  %200 = phi i32 [ %195, %185 ], [ 0, %168 ]
  %201 = phi i32 [ %196, %185 ], [ 0, %168 ]
  %202 = getelementptr inbounds i8, ptr %151, i64 56
  store i32 %198, ptr %202, align 8
  %203 = getelementptr inbounds i8, ptr %151, i64 64
  store i32 %199, ptr %203, align 8
  %204 = getelementptr inbounds i8, ptr %169, i64 3980
  store i32 %200, ptr %204, align 4
  %205 = getelementptr inbounds i8, ptr %169, i64 3976
  store i32 %201, ptr %205, align 8
  %206 = load i32, ptr %203, align 8, !tbaa !107
  %207 = getelementptr inbounds i8, ptr %151, i64 68
  store i32 %206, ptr %207, align 4, !tbaa !108
  %208 = sdiv i32 %174, 16
  %209 = getelementptr inbounds i8, ptr %151, i64 90288
  store i32 %208, ptr %209, align 8, !tbaa !109
  %210 = sdiv i32 %180, 16
  %211 = getelementptr inbounds i8, ptr %151, i64 90296
  store i32 %210, ptr %211, align 8, !tbaa !110
  %212 = mul i32 %210, %208
  %213 = getelementptr inbounds i8, ptr %151, i64 90308
  store i32 %212, ptr %213, align 4, !tbaa !111
  %214 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %215 = getelementptr inbounds i8, ptr %214, i64 1148
  %216 = load i32, ptr %215, align 4, !tbaa !94
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = lshr i32 %210, %218
  %220 = getelementptr inbounds i8, ptr %151, i64 90292
  store i32 %219, ptr %220, align 4, !tbaa !112
  %221 = zext i32 %212 to i64
  %222 = tail call noalias ptr @calloc(i64 noundef %221, i64 noundef 528) #20
  %223 = getelementptr inbounds i8, ptr %151, i64 31576
  store ptr %222, ptr %223, align 8, !tbaa !113
  %224 = icmp eq ptr %222, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %197
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #19
  %226 = load ptr, ptr @input, align 8, !tbaa !6
  %227 = load ptr, ptr @img, align 8, !tbaa !6
  br label %228

228:                                              ; preds = %225, %197
  %229 = phi ptr [ %227, %225 ], [ %151, %197 ]
  %230 = phi ptr [ %226, %225 ], [ %169, %197 ]
  %231 = getelementptr inbounds i8, ptr %230, i64 220
  %232 = load i32, ptr %231, align 4, !tbaa !114
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %228
  %235 = getelementptr inbounds i8, ptr %229, i64 90308
  %236 = load i32, ptr %235, align 4, !tbaa !111
  %237 = zext i32 %236 to i64
  %238 = tail call noalias ptr @calloc(i64 noundef %237, i64 noundef 4) #20
  %239 = getelementptr inbounds i8, ptr %229, i64 89192
  store ptr %238, ptr %239, align 8, !tbaa !115
  %240 = icmp eq ptr %238, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #19
  %242 = load ptr, ptr @img, align 8, !tbaa !6
  br label %243

243:                                              ; preds = %234, %241, %228
  %244 = phi ptr [ %229, %234 ], [ %242, %241 ], [ %229, %228 ]
  %245 = getelementptr inbounds i8, ptr %244, i64 104
  %246 = getelementptr inbounds i8, ptr %244, i64 60
  %247 = load i32, ptr %246, align 4, !tbaa !34
  %248 = sdiv i32 %247, 4
  %249 = getelementptr inbounds i8, ptr %244, i64 52
  %250 = load i32, ptr %249, align 4, !tbaa !35
  %251 = sdiv i32 %250, 4
  %252 = tail call signext i32 @get_mem2D(ptr noundef nonnull %245, i32 noundef signext %248, i32 noundef signext %251) #19
  %253 = load ptr, ptr @img, align 8, !tbaa !6
  %254 = getelementptr inbounds i8, ptr %253, i64 112
  %255 = getelementptr inbounds i8, ptr %253, i64 60
  %256 = load i32, ptr %255, align 4, !tbaa !34
  %257 = sdiv i32 %256, 4
  %258 = getelementptr inbounds i8, ptr %253, i64 52
  %259 = load i32, ptr %258, align 4, !tbaa !35
  %260 = sdiv i32 %259, 4
  %261 = tail call signext i32 @get_mem2D(ptr noundef nonnull %254, i32 noundef signext %257, i32 noundef signext %260) #19
  %262 = load ptr, ptr @img, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 60
  %264 = load i32, ptr %263, align 4, !tbaa !34
  %265 = sdiv i32 %264, 4
  %266 = getelementptr inbounds i8, ptr %262, i64 52
  %267 = load i32, ptr %266, align 4, !tbaa !35
  %268 = sdiv i32 %267, 4
  %269 = tail call signext i32 @get_mem2D(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1600), i32 noundef signext %265, i32 noundef signext %268) #19
  %270 = load ptr, ptr @input, align 8, !tbaa !6
  %271 = getelementptr inbounds i8, ptr %270, i64 3556
  %272 = load i32, ptr %271, align 4, !tbaa !29
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %299, label %274

274:                                              ; preds = %243
  %275 = load ptr, ptr @img, align 8, !tbaa !6
  %276 = getelementptr inbounds i8, ptr %275, i64 60
  %277 = load i32, ptr %276, align 4, !tbaa !34
  %278 = sdiv i32 %277, 4
  %279 = getelementptr inbounds i8, ptr %275, i64 52
  %280 = load i32, ptr %279, align 4, !tbaa !35
  %281 = sdiv i32 %280, 4
  %282 = tail call signext i32 @get_mem2D(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1600), i32 noundef signext %278, i32 noundef signext %281) #19
  %283 = load ptr, ptr @img, align 8, !tbaa !6
  %284 = getelementptr inbounds i8, ptr %283, i64 60
  %285 = load i32, ptr %284, align 4, !tbaa !34
  %286 = sdiv i32 %285, 4
  %287 = getelementptr inbounds i8, ptr %283, i64 52
  %288 = load i32, ptr %287, align 4, !tbaa !35
  %289 = sdiv i32 %288, 4
  %290 = tail call signext i32 @get_mem2D(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1600), i32 noundef signext %286, i32 noundef signext %289) #19
  %291 = load ptr, ptr @img, align 8, !tbaa !6
  %292 = getelementptr inbounds i8, ptr %291, i64 60
  %293 = load i32, ptr %292, align 4, !tbaa !34
  %294 = sdiv i32 %293, 4
  %295 = getelementptr inbounds i8, ptr %291, i64 52
  %296 = load i32, ptr %295, align 4, !tbaa !35
  %297 = sdiv i32 %296, 4
  %298 = tail call signext i32 @get_mem2D(ptr noundef nonnull getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1600), i32 noundef signext %294, i32 noundef signext %297) #19
  br label %299

299:                                              ; preds = %274, %243
  %300 = load ptr, ptr @img, align 8, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %300, i64 128
  %302 = getelementptr inbounds i8, ptr %300, i64 90308
  %303 = load i32, ptr %302, align 4, !tbaa !111
  %304 = getelementptr inbounds i8, ptr %300, i64 90540
  %305 = load i32, ptr %304, align 4, !tbaa !82
  %306 = add nsw i32 %305, 4
  %307 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull %301, i32 noundef signext %303, i32 noundef signext 4, i32 noundef signext %306) #19
  %308 = load ptr, ptr @img, align 8, !tbaa !6
  %309 = getelementptr inbounds i8, ptr %308, i64 90504
  %310 = getelementptr inbounds i8, ptr %308, i64 90492
  %311 = load i32, ptr %310, align 4, !tbaa !75
  %312 = add nsw i32 %311, 52
  %313 = tail call signext i32 @get_mem2Ddb_offset(ptr noundef nonnull %309, i32 noundef signext 10, i32 noundef signext %312, i32 noundef signext %311) #19
  %314 = load ptr, ptr @img, align 8, !tbaa !6
  %315 = getelementptr inbounds i8, ptr %314, i64 90512
  %316 = getelementptr inbounds i8, ptr %314, i64 90492
  %317 = load i32, ptr %316, align 4, !tbaa !75
  %318 = add nsw i32 %317, 52
  %319 = tail call signext i32 @get_mem2Ddb_offset(ptr noundef nonnull %315, i32 noundef signext 10, i32 noundef signext %318, i32 noundef signext %317) #19
  %320 = load ptr, ptr @img, align 8, !tbaa !6
  %321 = getelementptr inbounds i8, ptr %320, i64 90520
  %322 = getelementptr inbounds i8, ptr %320, i64 90492
  %323 = load i32, ptr %322, align 4, !tbaa !75
  %324 = add nsw i32 %323, 52
  %325 = tail call signext i32 @get_mem2Dint_offset(ptr noundef nonnull %321, i32 noundef signext 10, i32 noundef signext %324, i32 noundef signext %323) #19
  tail call void @CAVLC_init()
  %326 = load ptr, ptr @img, align 8, !tbaa !6
  %327 = getelementptr inbounds i8, ptr %326, i64 52
  %328 = load i32, ptr %327, align 4, !tbaa !35
  %329 = icmp sgt i32 %328, 3
  br i1 %329, label %330, label %365

330:                                              ; preds = %299, %357
  %331 = phi ptr [ %358, %357 ], [ %326, %299 ]
  %332 = phi i64 [ %359, %357 ], [ 0, %299 ]
  %333 = getelementptr inbounds i8, ptr %331, i64 60
  %334 = load i32, ptr %333, align 4, !tbaa !34
  %335 = icmp sgt i32 %334, 3
  br i1 %335, label %336, label %357

336:                                              ; preds = %330, %336
  %337 = phi i64 [ %350, %336 ], [ 0, %330 ]
  %338 = phi ptr [ %351, %336 ], [ %331, %330 ]
  %339 = getelementptr inbounds i8, ptr %338, i64 104
  %340 = load ptr, ptr %339, align 8, !tbaa !116
  %341 = getelementptr inbounds ptr, ptr %340, i64 %337
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %342, i64 %332
  store i8 -1, ptr %343, align 1, !tbaa !117
  %344 = load ptr, ptr @img, align 8, !tbaa !6
  %345 = getelementptr inbounds i8, ptr %344, i64 112
  %346 = load ptr, ptr %345, align 8, !tbaa !118
  %347 = getelementptr inbounds ptr, ptr %346, i64 %337
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = getelementptr inbounds i8, ptr %348, i64 %332
  store i8 -1, ptr %349, align 1, !tbaa !117
  %350 = add nuw nsw i64 %337, 1
  %351 = load ptr, ptr @img, align 8, !tbaa !6
  %352 = getelementptr inbounds i8, ptr %351, i64 60
  %353 = load i32, ptr %352, align 4, !tbaa !34
  %354 = sdiv i32 %353, 4
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %350, %355
  br i1 %356, label %336, label %357

357:                                              ; preds = %336, %330
  %358 = phi ptr [ %331, %330 ], [ %351, %336 ]
  %359 = add nuw nsw i64 %332, 1
  %360 = getelementptr inbounds i8, ptr %358, i64 52
  %361 = load i32, ptr %360, align 4, !tbaa !35
  %362 = sdiv i32 %361, 4
  %363 = sext i32 %362 to i64
  %364 = icmp slt i64 %359, %363
  br i1 %364, label %330, label %365

365:                                              ; preds = %357, %299
  %366 = phi ptr [ %326, %299 ], [ %358, %357 ]
  %367 = phi i32 [ %328, %299 ], [ %361, %357 ]
  %368 = getelementptr inbounds i8, ptr %366, i64 88
  store i32 0, ptr %368, align 8, !tbaa !119
  %369 = sdiv i32 %367, 16
  %370 = getelementptr inbounds i8, ptr %366, i64 60
  %371 = load i32, ptr %370, align 4, !tbaa !34
  %372 = sdiv i32 %371, 16
  %373 = load ptr, ptr @input, align 8, !tbaa !6
  %374 = getelementptr inbounds i8, ptr %373, i64 3592
  %375 = load i32, ptr %374, align 8, !tbaa !120
  tail call void @RandomIntraInit(i32 noundef signext %369, i32 noundef signext %372, i32 noundef signext %375) #19
  tail call void @InitSEIMessages() #19
  %376 = load ptr, ptr @input, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 3596
  %378 = load i32, ptr %377, align 4, !tbaa !121
  %379 = icmp eq i32 %378, 0
  %380 = getelementptr inbounds i8, ptr %376, i64 3608
  br i1 %379, label %387, label %381

381:                                              ; preds = %365
  %382 = getelementptr inbounds i8, ptr %376, i64 3604
  %383 = load i32, ptr %382, align 4, !tbaa !122
  %384 = shl i32 %383, 1
  store i32 %384, ptr %382, align 4, !tbaa !122
  %385 = load i32, ptr %380, align 8, !tbaa !123
  %386 = shl i32 %385, 1
  br label %390

387:                                              ; preds = %365
  %388 = getelementptr inbounds i8, ptr %376, i64 3600
  store i32 0, ptr %388, align 8, !tbaa !124
  %389 = getelementptr inbounds i8, ptr %376, i64 3604
  store i32 0, ptr %389, align 4, !tbaa !122
  br label %390

390:                                              ; preds = %387, %381
  %391 = phi i32 [ 0, %387 ], [ %386, %381 ]
  store i32 %391, ptr %380, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind
define dso_local noalias noundef ptr @malloc_picture() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(824) ptr @calloc(i64 noundef 1, i64 noundef 824) #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare dso_local void @init_rdopt() local_unnamed_addr #3

declare dso_local void @init_gop_structure() local_unnamed_addr #3

declare dso_local void @interpret_gop_structure() local_unnamed_addr #3

declare dso_local void @create_pyramid() local_unnamed_addr #3

declare dso_local void @init_dpb() local_unnamed_addr #3

declare dso_local void @init_out_buffer() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @init_global_buffers() local_unnamed_addr #1 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = shl nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #21
  store ptr %7, ptr @last_P_no_frm, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.215) #19
  br label %10

10:                                               ; preds = %9, %0
  %11 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 1148
  %13 = load i32, ptr %12, align 4, !tbaa !94
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !95
  %19 = shl nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #21
  store ptr %22, ptr @last_P_no_fld, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  tail call void @no_mem_exit(ptr noundef nonnull @.str.215) #19
  br label %25

25:                                               ; preds = %15, %24, %10
  %26 = tail call signext i32 @init_orig_buffers()
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 90308
  %29 = load i32, ptr %28, align 4, !tbaa !111
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #21
  store ptr %32, ptr @yPicPos, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  tail call void @no_mem_exit(ptr noundef nonnull @.str.216) #19
  %35 = load ptr, ptr @img, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 90308
  %37 = load i32, ptr %36, align 4, !tbaa !111
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  br label %40

40:                                               ; preds = %34, %25
  %41 = phi i64 [ %39, %34 ], [ %31, %25 ]
  %42 = phi i32 [ %37, %34 ], [ %29, %25 ]
  %43 = phi ptr [ %35, %34 ], [ %27, %25 ]
  %44 = trunc i64 %41 to i32
  %45 = add i32 %26, %44
  %46 = tail call noalias ptr @malloc(i64 noundef %41) #21
  store ptr %46, ptr @xPicPos, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.217) #19
  %49 = load ptr, ptr @img, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 90308
  %51 = load i32, ptr %50, align 4, !tbaa !111
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i32 [ %51, %48 ], [ %42, %40 ]
  %54 = phi ptr [ %49, %48 ], [ %43, %40 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 90308
  %56 = shl i32 %53, 2
  %57 = add i32 %45, %56
  %58 = icmp sgt i32 %53, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %54, i64 90288
  %61 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  %62 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %72, %63 ]
  %65 = load i32, ptr %60, align 8, !tbaa !109
  %66 = trunc nuw nsw i64 %64 to i32
  %67 = urem i32 %66, %65
  %68 = getelementptr inbounds i32, ptr %61, i64 %64
  store i32 %67, ptr %68, align 4, !tbaa !20
  %69 = load i32, ptr %60, align 8, !tbaa !109
  %70 = udiv i32 %66, %69
  %71 = getelementptr inbounds i32, ptr %62, i64 %64
  store i32 %70, ptr %71, align 4, !tbaa !20
  %72 = add nuw nsw i64 %64, 1
  %73 = load i32, ptr %55, align 4, !tbaa !111
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %63, label %76

76:                                               ; preds = %63, %52
  %77 = load ptr, ptr @input, align 8, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %77, i64 1904
  %79 = load i32, ptr %78, align 8, !tbaa !125
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %77, i64 1908
  %83 = load i32, ptr %82, align 4, !tbaa !126
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %77, i64 64
  %87 = load i32, ptr %86, align 8, !tbaa !127
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85, %81, %76
  %90 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @wp_weight, i32 noundef signext 6, i32 noundef signext 32, i32 noundef signext 3) #19
  %91 = add nsw i32 %90, %57
  %92 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @wp_offset, i32 noundef signext 6, i32 noundef signext 32, i32 noundef signext 3) #19
  %93 = add nsw i32 %91, %92
  %94 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @wbp_weight, i32 noundef signext 6, i32 noundef signext 32, i32 noundef signext 32, i32 noundef signext 3) #19
  %95 = add nsw i32 %93, %94
  %96 = load ptr, ptr @input, align 8, !tbaa !6
  br label %97

97:                                               ; preds = %89, %85
  %98 = phi ptr [ %96, %89 ], [ %77, %85 ]
  %99 = phi i32 [ %95, %89 ], [ %57, %85 ]
  %100 = getelementptr inbounds i8, ptr %98, i64 1244
  %101 = load i32, ptr %100, align 4, !tbaa !10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds i8, ptr %98, i64 1940
  %105 = load i32, ptr %104, align 4, !tbaa !27
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %103, %97
  %108 = load ptr, ptr @img, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 60
  %110 = load i32, ptr %109, align 4, !tbaa !34
  %111 = ashr i32 %110, 2
  %112 = getelementptr inbounds i8, ptr %108, i64 52
  %113 = load i32, ptr %112, align 4, !tbaa !35
  %114 = ashr i32 %113, 2
  %115 = tail call signext i32 @get_mem3D(ptr noundef nonnull @direct_ref_idx, i32 noundef signext 2, i32 noundef signext %111, i32 noundef signext %114) #19
  %116 = add nsw i32 %115, %99
  %117 = load ptr, ptr @img, align 8, !tbaa !6
  %118 = getelementptr inbounds i8, ptr %117, i64 60
  %119 = load i32, ptr %118, align 4, !tbaa !34
  %120 = ashr i32 %119, 2
  %121 = getelementptr inbounds i8, ptr %117, i64 52
  %122 = load i32, ptr %121, align 4, !tbaa !35
  %123 = ashr i32 %122, 2
  %124 = tail call signext i32 @get_mem2Dshort(ptr noundef nonnull @direct_pdir, i32 noundef signext %120, i32 noundef signext %123) #19
  %125 = add nsw i32 %116, %124
  br label %126

126:                                              ; preds = %107, %103
  %127 = phi i32 [ %125, %107 ], [ %99, %103 ]
  %128 = load ptr, ptr @img, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 60
  %130 = load i32, ptr %129, align 4, !tbaa !34
  %131 = add nsw i32 %130, 8
  %132 = getelementptr inbounds i8, ptr %128, i64 52
  %133 = load i32, ptr %132, align 4, !tbaa !35
  %134 = shl i32 %133, 2
  %135 = add i32 %134, 32
  %136 = tail call signext i32 @get_mem2Dint(ptr noundef nonnull @img4Y_tmp, i32 noundef signext %131, i32 noundef signext %135) #19
  %137 = add nsw i32 %136, %127
  %138 = load ptr, ptr @input, align 8, !tbaa !6
  %139 = getelementptr inbounds i8, ptr %138, i64 3136
  %140 = load i32, ptr %139, align 8, !tbaa !128
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %237

142:                                              ; preds = %126
  %143 = load ptr, ptr @decs, align 8, !tbaa !6
  %144 = tail call signext i32 @get_mem2Dint(ptr noundef %143, i32 noundef signext 16, i32 noundef signext 16) #19
  %145 = add nsw i32 %144, %137
  %146 = load ptr, ptr @input, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 3576
  %148 = load i32, ptr %147, align 8, !tbaa !129
  %149 = sext i32 %148 to i64
  %150 = tail call noalias ptr @calloc(i64 noundef %149, i64 noundef 8) #20
  %151 = load ptr, ptr @decs, align 8, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %151, i64 16
  store ptr %150, ptr %152, align 8, !tbaa !130
  %153 = icmp eq ptr %150, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %142
  tail call void @no_mem_exit(ptr noundef nonnull @.str.218) #19
  %155 = load ptr, ptr @input, align 8, !tbaa !6
  %156 = getelementptr inbounds i8, ptr %155, i64 3576
  %157 = load i32, ptr %156, align 8, !tbaa !129
  br label %158

158:                                              ; preds = %154, %142
  %159 = phi i32 [ %157, %154 ], [ %148, %142 ]
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %158, %161
  %162 = phi i64 [ %178, %161 ], [ 0, %158 ]
  %163 = phi i32 [ %177, %161 ], [ %145, %158 ]
  %164 = load ptr, ptr @decs, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !130
  %167 = getelementptr inbounds ptr, ptr %166, i64 %162
  %168 = load ptr, ptr @img, align 8, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %168, i64 36
  %170 = load i32, ptr %169, align 4, !tbaa !95
  %171 = add nsw i32 %170, 1
  %172 = getelementptr inbounds i8, ptr %168, i64 60
  %173 = load i32, ptr %172, align 4, !tbaa !34
  %174 = getelementptr inbounds i8, ptr %168, i64 52
  %175 = load i32, ptr %174, align 4, !tbaa !35
  %176 = tail call signext i32 @get_mem3Dpel(ptr noundef %167, i32 noundef signext %171, i32 noundef signext %173, i32 noundef signext %175) #19
  %177 = add nsw i32 %176, %163
  %178 = add nuw nsw i64 %162, 1
  %179 = load ptr, ptr @input, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 3576
  %181 = load i32, ptr %180, align 8, !tbaa !129
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %178, %182
  br i1 %183, label %161, label %184

184:                                              ; preds = %161, %158
  %185 = phi i32 [ %145, %158 ], [ %177, %161 ]
  %186 = load ptr, ptr @decs, align 8, !tbaa !6
  %187 = getelementptr inbounds i8, ptr %186, i64 32
  %188 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull %187, i32 noundef signext 4, i32 noundef signext 4) #19
  %189 = add nsw i32 %188, %185
  %190 = load ptr, ptr @decs, align 8, !tbaa !6
  %191 = getelementptr inbounds i8, ptr %190, i64 8
  %192 = load ptr, ptr @input, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %192, i64 3576
  %194 = load i32, ptr %193, align 8, !tbaa !129
  %195 = load ptr, ptr @img, align 8, !tbaa !6
  %196 = getelementptr inbounds i8, ptr %195, i64 60
  %197 = load i32, ptr %196, align 4, !tbaa !34
  %198 = getelementptr inbounds i8, ptr %195, i64 52
  %199 = load i32, ptr %198, align 4, !tbaa !35
  %200 = tail call signext i32 @get_mem3Dpel(ptr noundef nonnull %191, i32 noundef signext %194, i32 noundef signext %197, i32 noundef signext %199) #19
  %201 = add nsw i32 %189, %200
  %202 = load ptr, ptr @decs, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %202, i64 24
  %204 = load ptr, ptr @input, align 8, !tbaa !6
  %205 = getelementptr inbounds i8, ptr %204, i64 3576
  %206 = load i32, ptr %205, align 8, !tbaa !129
  %207 = load ptr, ptr @img, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 60
  %209 = load i32, ptr %208, align 4, !tbaa !34
  %210 = getelementptr inbounds i8, ptr %207, i64 52
  %211 = load i32, ptr %210, align 4, !tbaa !35
  %212 = tail call signext i32 @get_mem3Dpel(ptr noundef nonnull %203, i32 noundef signext %206, i32 noundef signext %209, i32 noundef signext %211) #19
  %213 = add nsw i32 %201, %212
  %214 = load ptr, ptr @decs, align 8, !tbaa !6
  %215 = getelementptr inbounds i8, ptr %214, i64 40
  %216 = load ptr, ptr @img, align 8, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %216, i64 60
  %218 = load i32, ptr %217, align 4, !tbaa !34
  %219 = sdiv i32 %218, 16
  %220 = getelementptr inbounds i8, ptr %216, i64 52
  %221 = load i32, ptr %220, align 4, !tbaa !35
  %222 = sdiv i32 %221, 16
  %223 = tail call signext i32 @get_mem2D(ptr noundef nonnull %215, i32 noundef signext %219, i32 noundef signext %222) #19
  %224 = add nsw i32 %213, %223
  %225 = load ptr, ptr @decs, align 8, !tbaa !6
  %226 = getelementptr inbounds i8, ptr %225, i64 48
  %227 = load ptr, ptr @img, align 8, !tbaa !6
  %228 = getelementptr inbounds i8, ptr %227, i64 52
  %229 = load i32, ptr %228, align 4, !tbaa !35
  %230 = sdiv i32 %229, 16
  %231 = getelementptr inbounds i8, ptr %227, i64 60
  %232 = load i32, ptr %231, align 4, !tbaa !34
  %233 = sdiv i32 %232, 16
  %234 = tail call signext i32 @get_mem2D(ptr noundef nonnull %226, i32 noundef signext %230, i32 noundef signext %233) #19
  %235 = add nsw i32 %224, %234
  %236 = load ptr, ptr @input, align 8, !tbaa !6
  br label %237

237:                                              ; preds = %184, %126
  %238 = phi ptr [ %236, %184 ], [ %138, %126 ]
  %239 = phi i32 [ %235, %184 ], [ %137, %126 ]
  %240 = getelementptr inbounds i8, ptr %238, i64 3580
  %241 = load i32, ptr %240, align 4, !tbaa !132
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %260, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr @img, align 8, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %244, i64 60
  %246 = load i32, ptr %245, align 4, !tbaa !34
  %247 = getelementptr inbounds i8, ptr %244, i64 52
  %248 = load i32, ptr %247, align 4, !tbaa !35
  %249 = tail call signext i32 @get_mem2D(ptr noundef nonnull @pixel_map, i32 noundef signext %246, i32 noundef signext %248) #19
  %250 = add nsw i32 %249, %239
  %251 = load ptr, ptr @img, align 8, !tbaa !6
  %252 = getelementptr inbounds i8, ptr %251, i64 60
  %253 = load i32, ptr %252, align 4, !tbaa !34
  %254 = sdiv i32 %253, 8
  %255 = getelementptr inbounds i8, ptr %251, i64 52
  %256 = load i32, ptr %255, align 4, !tbaa !35
  %257 = sdiv i32 %256, 8
  %258 = tail call signext i32 @get_mem2D(ptr noundef nonnull @refresh_map, i32 noundef signext %254, i32 noundef signext %257) #19
  %259 = add nsw i32 %250, %258
  br label %260

260:                                              ; preds = %243, %237
  %261 = phi i32 [ %259, %243 ], [ %239, %237 ]
  %262 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 1148
  %264 = load i32, ptr %263, align 4, !tbaa !94
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %260
  %267 = load ptr, ptr @img, align 8, !tbaa !6
  %268 = getelementptr inbounds i8, ptr %267, i64 60
  %269 = load i32, ptr %268, align 4, !tbaa !34
  %270 = getelementptr inbounds i8, ptr %267, i64 52
  %271 = load i32, ptr %270, align 4, !tbaa !35
  %272 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull @imgY_com, i32 noundef signext %269, i32 noundef signext %271) #19
  %273 = add nsw i32 %272, %261
  %274 = load ptr, ptr @img, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 90548
  %276 = load i32, ptr %275, align 4, !tbaa !72
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %266
  %279 = getelementptr inbounds i8, ptr %274, i64 64
  %280 = load i32, ptr %279, align 8, !tbaa !107
  %281 = getelementptr inbounds i8, ptr %274, i64 56
  %282 = load i32, ptr %281, align 8, !tbaa !133
  %283 = tail call signext i32 @get_mem3Dpel(ptr noundef nonnull @imgUV_com, i32 noundef signext 2, i32 noundef signext %280, i32 noundef signext %282) #19
  %284 = add nsw i32 %283, %273
  br label %285

285:                                              ; preds = %266, %278, %260
  %286 = phi i32 [ %261, %260 ], [ %284, %278 ], [ %273, %266 ]
  %287 = load ptr, ptr @input, align 8, !tbaa !6
  %288 = getelementptr inbounds i8, ptr %287, i64 3964
  %289 = load i32, ptr %288, align 4, !tbaa !40
  switch i32 %289, label %299 [
    i32 1, label %290
    i32 2, label %293
    i32 3, label %296
  ]

290:                                              ; preds = %285
  %291 = tail call signext i32 @get_mem_FME() #19
  %292 = add nsw i32 %291, %286
  br label %299

293:                                              ; preds = %285
  tail call void @simplified_init_FME() #19
  %294 = tail call signext i32 @simplified_get_mem_FME() #19
  %295 = add nsw i32 %294, %286
  br label %299

296:                                              ; preds = %285
  %297 = tail call signext i32 @EPZSInit() #19
  %298 = add nsw i32 %297, %286
  br label %299

299:                                              ; preds = %285, %293, %296, %290
  %300 = phi i32 [ %292, %290 ], [ %295, %293 ], [ %298, %296 ], [ %286, %285 ]
  %301 = load ptr, ptr @input, align 8, !tbaa !6
  %302 = getelementptr inbounds i8, ptr %301, i64 3908
  %303 = load i32, ptr %302, align 4, !tbaa !39
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %299
  tail call void @rc_alloc() #19
  br label %306

306:                                              ; preds = %305, %299
  ret i32 %300
}

declare dso_local void @create_context_memory() local_unnamed_addr #3

declare dso_local void @Init_Motion_Search_Module() local_unnamed_addr #3

; Function Attrs: nofree nounwind
define dso_local void @information_init() local_unnamed_addr #5 {
  %1 = alloca [4 x [10 x i8]], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(40) @__const.information_init.yuv_types, i64 40, i1 false)
  %2 = load ptr, ptr @input, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 3904
  %4 = load i32, ptr %3, align 8, !tbaa !134
  %5 = icmp ult i32 %4, 2
  %6 = select i1 %5, ptr @.str.200, ptr @.str.201
  %7 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14)
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 228
  %10 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef nonnull %9)
  %11 = load ptr, ptr @input, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 428
  %13 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, ptr noundef nonnull %12)
  %14 = load i32, ptr @p_dec, align 4, !tbaa !20
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load ptr, ptr @input, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 628
  %19 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, ptr noundef nonnull %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load ptr, ptr @img, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 90548
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x [10 x i8]], ptr %1, i64 0, i64 %24
  %26 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef nonnull %25)
  %27 = load ptr, ptr @input, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %27, i64 1244
  %31 = load i32, ptr %30, align 4, !tbaa !10
  %32 = add nsw i32 %29, -1
  %33 = mul nsw i32 %31, %32
  %34 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, i32 noundef signext %29, i32 noundef signext %33)
  %35 = load ptr, ptr @input, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 3552
  %37 = load i32, ptr %36, align 8, !tbaa !28
  %38 = getelementptr inbounds i8, ptr %35, i64 3556
  %39 = load i32, ptr %38, align 4, !tbaa !29
  %40 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef signext %37, i32 noundef signext %39)
  %41 = load ptr, ptr @input, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 3892
  %43 = load i32, ptr %42, align 4, !tbaa !135
  %44 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.208, i32 noundef signext %43)
  %45 = load ptr, ptr @input, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 3904
  %47 = load i32, ptr %46, align 8, !tbaa !134
  switch i32 %47, label %54 [
    i32 1, label %49
    i32 2, label %48
  ]

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %20, %48
  %50 = phi ptr [ @str.223, %48 ], [ @str.227, %20 ]
  %51 = phi ptr [ @str.222, %48 ], [ @str.225, %20 ]
  %52 = phi ptr [ @str.223, %48 ], [ @str.227, %20 ]
  %53 = call i32 @puts(ptr nonnull dereferenceable(1) %50)
  br label %54

54:                                               ; preds = %49, %20
  %55 = phi ptr [ @str.227, %20 ], [ %51, %49 ]
  %56 = phi ptr [ @str.228, %20 ], [ %52, %49 ]
  %57 = call i32 @puts(ptr nonnull dereferenceable(1) %55)
  %58 = call i32 @puts(ptr nonnull dereferenceable(1) %56)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #19
  ret void
}

declare dso_local void @rc_init_seq() local_unnamed_addr #3

declare dso_local void @DefineThreshold() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local void @PatchInputNoFrames() local_unnamed_addr #3

declare dso_local signext i32 @start_sequence() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @SetImgType() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1228
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  br i1 %4, label %8, label %10

8:                                                ; preds = %0
  %9 = icmp eq i32 %6, %7
  br i1 %9, label %27, label %14

10:                                               ; preds = %0
  %11 = sub nsw i32 %6, %7
  %12 = srem i32 %11, %3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %8, %10
  %15 = getelementptr inbounds i8, ptr %1, i64 1280
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = sub nsw i32 %6, %7
  %20 = srem i32 %19, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds i8, ptr %1, i64 1940
  %24 = load i32, ptr %23, align 4, !tbaa !27
  %25 = icmp eq i32 %24, 2
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %22, %18, %10, %8
  %28 = phi i32 [ 2, %8 ], [ 2, %10 ], [ %26, %22 ], [ 3, %18 ]
  %29 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 %28, ptr %29, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare dso_local void @rc_init_GOP(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @encode_one_frame() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @report_frame_statistic() local_unnamed_addr #1 {
  %1 = alloca [20 x i8], align 1
  %2 = alloca i64, align 8
  %3 = alloca [1000 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #19
  %4 = tail call ptr @fopen64(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = tail call ptr @fopen64(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #19
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #19
  br label %21

11:                                               ; preds = %6
  %12 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 468, i64 1, ptr nonnull %7)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 468, i64 1, ptr nonnull %7)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 468, i64 1, ptr nonnull %7)
  br label %21

15:                                               ; preds = %0
  %16 = tail call signext i32 @fclose(ptr noundef nonnull %4)
  %17 = tail call ptr @fopen64(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #19
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #19
  br label %21

21:                                               ; preds = %15, %19, %9, %11
  %22 = phi ptr [ null, %9 ], [ %7, %11 ], [ null, %19 ], [ %17, %15 ]
  %23 = load i32, ptr @frame_statistic_start, align 4, !tbaa !20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 468, i64 1, ptr %22)
  %27 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 468, i64 1, ptr %22)
  br label %28

28:                                               ; preds = %25, %21
  %29 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #19
  %30 = tail call i64 @time(ptr noundef null) #19
  store i64 %30, ptr %2, align 8, !tbaa !136
  %31 = call i64 @time(ptr noundef nonnull %2) #19
  %32 = call ptr @localtime(ptr noundef nonnull %2) #19
  %33 = call i64 @strftime(ptr noundef nonnull %3, i64 noundef 1000, ptr noundef nonnull @.str.15, ptr noundef %32) #19
  %34 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #19
  %35 = call i64 @strftime(ptr noundef nonnull %3, i64 noundef 1000, ptr noundef nonnull @.str.17, ptr noundef %32) #19
  %36 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #19
  %37 = load ptr, ptr @input, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 228
  br label %39

39:                                               ; preds = %28, %39
  %40 = phi i64 [ 0, %28 ], [ %50, %39 ]
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #22
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, -20
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = zext nneg i32 %44 to i64
  %46 = add nuw nsw i64 %40, %45
  %47 = getelementptr inbounds [200 x i8], ptr %38, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !117
  %49 = getelementptr inbounds [20 x i8], ptr %1, i64 0, i64 %40
  store i8 %48, ptr %49, align 1, !tbaa !117
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, 20
  br i1 %51, label %52, label %39

52:                                               ; preds = %39
  %53 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef nonnull %1) #19
  %54 = load i32, ptr @frame_no, align 4, !tbaa !20
  %55 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef signext %54) #19
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 40
  %58 = load i32, ptr %57, align 8, !tbaa !138
  %59 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef signext %58) #19
  %60 = load ptr, ptr @input, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %60, i64 3552
  %62 = load i32, ptr %61, align 8, !tbaa !28
  %63 = getelementptr inbounds i8, ptr %60, i64 3556
  %64 = load i32, ptr %63, align 4, !tbaa !29
  %65 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef signext %62, i32 noundef signext %64) #19
  %66 = load ptr, ptr @img, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 90284
  %68 = load i32, ptr %67, align 4, !tbaa !56
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr @stats, align 8, !tbaa !6
  br i1 %69, label %71, label %74

71:                                               ; preds = %52
  %72 = getelementptr inbounds i8, ptr %70, i64 712
  %73 = load i32, ptr %72, align 8, !tbaa !17
  br label %79

74:                                               ; preds = %52
  %75 = getelementptr inbounds i8, ptr %70, i64 20
  %76 = load i32, ptr %75, align 4, !tbaa !139
  %77 = load i32, ptr @report_frame_statistic.last_bit_ctr_n, align 4, !tbaa !20
  %78 = sub nsw i32 %76, %77
  store i32 %76, ptr @report_frame_statistic.last_bit_ctr_n, align 4, !tbaa !20
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i32 [ %73, %71 ], [ %78, %74 ]
  %81 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef signext %80) #19
  %82 = load ptr, ptr @snr, align 8, !tbaa !6
  %83 = load float, ptr %82, align 4, !tbaa !140
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds i8, ptr %82, i64 4
  %86 = load float, ptr %85, align 4, !tbaa !142
  %87 = fpext float %86 to double
  %88 = getelementptr inbounds i8, ptr %82, i64 8
  %89 = load float, ptr %88, align 4, !tbaa !143
  %90 = fpext float %89 to double
  %91 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.23, double noundef %84, double noundef %87, double noundef %90) #19
  %92 = load ptr, ptr @stats, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 892
  %94 = load i32, ptr %93, align 4, !tbaa !20
  %95 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 156), align 4, !tbaa !20
  %96 = sub nsw i32 %94, %95
  %97 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %96) #19
  %98 = load ptr, ptr @stats, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %98, i64 908
  %100 = load i32, ptr %99, align 4, !tbaa !20
  %101 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 172), align 4, !tbaa !20
  %102 = sub nsw i32 %100, %101
  %103 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %102) #19
  %104 = load ptr, ptr @stats, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 896
  %106 = load i32, ptr %105, align 8, !tbaa !20
  %107 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 160), align 4, !tbaa !20
  %108 = sub nsw i32 %106, %107
  %109 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %108) #19
  %110 = load ptr, ptr @stats, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %110, i64 672
  %112 = load i32, ptr %111, align 8, !tbaa !20
  %113 = load i32, ptr @report_frame_statistic.last_mode_chroma_use, align 4, !tbaa !20
  %114 = sub nsw i32 %112, %113
  %115 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %114) #19
  %116 = load ptr, ptr @stats, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 676
  %118 = load i32, ptr %117, align 4, !tbaa !20
  %119 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_chroma_use, i64 4), align 4, !tbaa !20
  %120 = sub nsw i32 %118, %119
  %121 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %120) #19
  %122 = load ptr, ptr @stats, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 680
  %124 = load i32, ptr %123, align 8, !tbaa !20
  %125 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_chroma_use, i64 8), align 4, !tbaa !20
  %126 = sub nsw i32 %124, %125
  %127 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %126) #19
  %128 = load ptr, ptr @stats, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 684
  %130 = load i32, ptr %129, align 4, !tbaa !20
  %131 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_chroma_use, i64 12), align 4, !tbaa !20
  %132 = sub nsw i32 %130, %131
  %133 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %132) #19
  %134 = load ptr, ptr @stats, align 8, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %134, i64 772
  %136 = load i32, ptr %135, align 4, !tbaa !20
  %137 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 36), align 4, !tbaa !20
  %138 = sub nsw i32 %136, %137
  %139 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %138) #19
  %140 = load ptr, ptr @stats, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 788
  %142 = load i32, ptr %141, align 4, !tbaa !20
  %143 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 52), align 4, !tbaa !20
  %144 = sub nsw i32 %142, %143
  %145 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %144) #19
  %146 = load ptr, ptr @stats, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 776
  %148 = load i32, ptr %147, align 8, !tbaa !20
  %149 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 40), align 4, !tbaa !20
  %150 = sub nsw i32 %148, %149
  %151 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %150) #19
  %152 = load ptr, ptr @stats, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %152, i64 736
  %154 = load i32, ptr %153, align 8, !tbaa !20
  %155 = load i32, ptr @report_frame_statistic.last_mode_use, align 4, !tbaa !20
  %156 = sub nsw i32 %154, %155
  %157 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %156) #19
  %158 = load ptr, ptr @stats, align 8, !tbaa !6
  %159 = getelementptr inbounds i8, ptr %158, i64 740
  %160 = load i32, ptr %159, align 4, !tbaa !20
  %161 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 4), align 4, !tbaa !20
  %162 = sub nsw i32 %160, %161
  %163 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %162) #19
  %164 = load ptr, ptr @stats, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 744
  %166 = load i32, ptr %165, align 8, !tbaa !20
  %167 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 8), align 4, !tbaa !20
  %168 = sub nsw i32 %166, %167
  %169 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %168) #19
  %170 = load ptr, ptr @stats, align 8, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %170, i64 748
  %172 = load i32, ptr %171, align 4, !tbaa !20
  %173 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 12), align 4, !tbaa !20
  %174 = sub nsw i32 %172, %173
  %175 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %174) #19
  %176 = load ptr, ptr @stats, align 8, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %176, i64 76
  %178 = load i32, ptr %177, align 4, !tbaa !20
  %179 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %178) #19
  %180 = load ptr, ptr @stats, align 8, !tbaa !6
  %181 = getelementptr inbounds i8, ptr %180, i64 376
  %182 = load i32, ptr %181, align 4, !tbaa !20
  %183 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %182) #19
  %184 = load ptr, ptr @stats, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 80
  %186 = load i32, ptr %185, align 8, !tbaa !20
  %187 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %186) #19
  %188 = load ptr, ptr @stats, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 380
  %190 = load i32, ptr %189, align 4, !tbaa !20
  %191 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %190) #19
  %192 = load ptr, ptr @stats, align 8, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %192, i64 84
  %194 = load i32, ptr %193, align 4, !tbaa !20
  %195 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %194) #19
  %196 = load ptr, ptr @stats, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 384
  %198 = load i32, ptr %197, align 4, !tbaa !20
  %199 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %198) #19
  %200 = load ptr, ptr @stats, align 8, !tbaa !6
  %201 = getelementptr inbounds i8, ptr %200, i64 768
  %202 = load i32, ptr %201, align 8, !tbaa !20
  %203 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 32), align 4, !tbaa !20
  %204 = sub nsw i32 %202, %203
  %205 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %204) #19
  %206 = load ptr, ptr @stats, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 752
  %208 = load i32, ptr %207, align 8, !tbaa !20
  %209 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 16), align 4, !tbaa !20
  %210 = sub nsw i32 %208, %209
  %211 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %210) #19
  %212 = load ptr, ptr @stats, align 8, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %212, i64 88
  %214 = load i32, ptr %213, align 8, !tbaa !20
  %215 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %214) #19
  %216 = load ptr, ptr @stats, align 8, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %216, i64 388
  %218 = load i32, ptr %217, align 4, !tbaa !20
  %219 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %218) #19
  %220 = load ptr, ptr @stats, align 8, !tbaa !6
  %221 = getelementptr inbounds i8, ptr %220, i64 756
  %222 = load i32, ptr %221, align 4, !tbaa !20
  %223 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 20), align 4, !tbaa !20
  %224 = sub nsw i32 %222, %223
  %225 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %224) #19
  %226 = load ptr, ptr @stats, align 8, !tbaa !6
  %227 = getelementptr inbounds i8, ptr %226, i64 760
  %228 = load i32, ptr %227, align 8, !tbaa !20
  %229 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 24), align 4, !tbaa !20
  %230 = sub nsw i32 %228, %229
  %231 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %230) #19
  %232 = load ptr, ptr @stats, align 8, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %232, i64 764
  %234 = load i32, ptr %233, align 4, !tbaa !20
  %235 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 28), align 4, !tbaa !20
  %236 = sub nsw i32 %234, %235
  %237 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %236) #19
  %238 = load ptr, ptr @stats, align 8, !tbaa !6
  %239 = getelementptr inbounds i8, ptr %238, i64 832
  %240 = load i32, ptr %239, align 4, !tbaa !20
  %241 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 96), align 4, !tbaa !20
  %242 = sub nsw i32 %240, %241
  %243 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %242) #19
  %244 = load ptr, ptr @stats, align 8, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %244, i64 848
  %246 = load i32, ptr %245, align 4, !tbaa !20
  %247 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 112), align 4, !tbaa !20
  %248 = sub nsw i32 %246, %247
  %249 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %248) #19
  %250 = load ptr, ptr @stats, align 8, !tbaa !6
  %251 = getelementptr inbounds i8, ptr %250, i64 836
  %252 = load i32, ptr %251, align 4, !tbaa !20
  %253 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 100), align 4, !tbaa !20
  %254 = sub nsw i32 %252, %253
  %255 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %254) #19
  %256 = load ptr, ptr @stats, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %256, i64 796
  %258 = load i32, ptr %257, align 4, !tbaa !20
  %259 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 60), align 4, !tbaa !20
  %260 = sub nsw i32 %258, %259
  %261 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %260) #19
  %262 = load ptr, ptr @stats, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 800
  %264 = load i32, ptr %263, align 4, !tbaa !20
  %265 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 64), align 4, !tbaa !20
  %266 = sub nsw i32 %264, %265
  %267 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %266) #19
  %268 = load ptr, ptr @stats, align 8, !tbaa !6
  %269 = getelementptr inbounds i8, ptr %268, i64 804
  %270 = load i32, ptr %269, align 4, !tbaa !20
  %271 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 68), align 4, !tbaa !20
  %272 = sub nsw i32 %270, %271
  %273 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %272) #19
  %274 = load ptr, ptr @stats, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 808
  %276 = load i32, ptr %275, align 4, !tbaa !20
  %277 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 72), align 4, !tbaa !20
  %278 = sub nsw i32 %276, %277
  %279 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %278) #19
  %280 = load ptr, ptr @stats, align 8, !tbaa !6
  %281 = getelementptr inbounds i8, ptr %280, i64 132
  %282 = load i32, ptr %281, align 4, !tbaa !20
  %283 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %282) #19
  %284 = load ptr, ptr @stats, align 8, !tbaa !6
  %285 = getelementptr inbounds i8, ptr %284, i64 432
  %286 = load i32, ptr %285, align 4, !tbaa !20
  %287 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %286) #19
  %288 = load ptr, ptr @stats, align 8, !tbaa !6
  %289 = getelementptr inbounds i8, ptr %288, i64 136
  %290 = load i32, ptr %289, align 4, !tbaa !20
  %291 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %290) #19
  %292 = load ptr, ptr @stats, align 8, !tbaa !6
  %293 = getelementptr inbounds i8, ptr %292, i64 436
  %294 = load i32, ptr %293, align 4, !tbaa !20
  %295 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %294) #19
  %296 = load ptr, ptr @stats, align 8, !tbaa !6
  %297 = getelementptr inbounds i8, ptr %296, i64 140
  %298 = load i32, ptr %297, align 4, !tbaa !20
  %299 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %298) #19
  %300 = load ptr, ptr @stats, align 8, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %300, i64 440
  %302 = load i32, ptr %301, align 4, !tbaa !20
  %303 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %302) #19
  %304 = load ptr, ptr @stats, align 8, !tbaa !6
  %305 = getelementptr inbounds i8, ptr %304, i64 144
  %306 = load i32, ptr %305, align 4, !tbaa !20
  %307 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %306) #19
  %308 = load ptr, ptr @stats, align 8, !tbaa !6
  %309 = getelementptr inbounds i8, ptr %308, i64 444
  %310 = load i32, ptr %309, align 4, !tbaa !20
  %311 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %310) #19
  %312 = load ptr, ptr @stats, align 8, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %312, i64 828
  %314 = load i32, ptr %313, align 4, !tbaa !20
  %315 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 92), align 4, !tbaa !20
  %316 = sub nsw i32 %314, %315
  %317 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %316) #19
  %318 = load ptr, ptr @stats, align 8, !tbaa !6
  %319 = getelementptr inbounds i8, ptr %318, i64 40
  %320 = load i32, ptr %319, align 8, !tbaa !20
  %321 = getelementptr inbounds i8, ptr %318, i64 44
  %322 = load i32, ptr %321, align 4, !tbaa !20
  %323 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 4, !tbaa !20
  %324 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 12), align 4, !tbaa !20
  %325 = add i32 %322, %320
  %326 = add i32 %323, %324
  %327 = sub i32 %325, %326
  %328 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %327) #19
  %329 = load ptr, ptr @stats, align 8, !tbaa !6
  %330 = getelementptr inbounds i8, ptr %329, i64 44
  %331 = load i32, ptr %330, align 4, !tbaa !20
  %332 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 12), align 4, !tbaa !20
  %333 = sub nsw i32 %331, %332
  %334 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %333) #19
  %335 = load ptr, ptr @stats, align 8, !tbaa !6
  %336 = getelementptr inbounds i8, ptr %335, i64 40
  %337 = load i32, ptr %336, align 8, !tbaa !20
  %338 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 4, !tbaa !20
  %339 = sub nsw i32 %337, %338
  %340 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %339) #19
  %341 = load ptr, ptr @stats, align 8, !tbaa !6
  %342 = getelementptr inbounds i8, ptr %341, i64 812
  %343 = load i32, ptr %342, align 4, !tbaa !20
  %344 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 76), align 4, !tbaa !20
  %345 = sub nsw i32 %343, %344
  %346 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %345) #19
  %347 = load ptr, ptr @stats, align 8, !tbaa !6
  %348 = getelementptr inbounds i8, ptr %347, i64 148
  %349 = load i32, ptr %348, align 4, !tbaa !20
  %350 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %349) #19
  %351 = load ptr, ptr @stats, align 8, !tbaa !6
  %352 = getelementptr inbounds i8, ptr %351, i64 448
  %353 = load i32, ptr %352, align 4, !tbaa !20
  %354 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %353) #19
  %355 = load ptr, ptr @stats, align 8, !tbaa !6
  %356 = getelementptr inbounds i8, ptr %355, i64 816
  %357 = load i32, ptr %356, align 4, !tbaa !20
  %358 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 80), align 4, !tbaa !20
  %359 = sub nsw i32 %357, %358
  %360 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %359) #19
  %361 = load ptr, ptr @stats, align 8, !tbaa !6
  %362 = getelementptr inbounds i8, ptr %361, i64 820
  %363 = load i32, ptr %362, align 4, !tbaa !20
  %364 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 84), align 4, !tbaa !20
  %365 = sub nsw i32 %363, %364
  %366 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %365) #19
  %367 = load ptr, ptr @stats, align 8, !tbaa !6
  %368 = getelementptr inbounds i8, ptr %367, i64 824
  %369 = load i32, ptr %368, align 4, !tbaa !20
  %370 = load i32, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 88), align 4, !tbaa !20
  %371 = sub nsw i32 %369, %370
  %372 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef signext %371) #19
  %373 = call i32 @fputc(i32 10, ptr %22)
  %374 = load ptr, ptr @stats, align 8, !tbaa !6
  %375 = getelementptr inbounds i8, ptr %374, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 120), ptr noundef nonnull align 8 dereferenceable(60) %375, i64 60, i1 false)
  %376 = getelementptr inbounds i8, ptr %374, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @report_frame_statistic.last_mode_use, ptr noundef nonnull align 8 dereferenceable(60) %376, i64 60, i1 false)
  %377 = getelementptr inbounds i8, ptr %374, i64 796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds (i8, ptr @report_frame_statistic.last_mode_use, i64 60), ptr noundef nonnull align 4 dereferenceable(60) %377, i64 60, i1 false)
  %378 = getelementptr inbounds i8, ptr %374, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %378, i8 0, i64 120, i1 false)
  %379 = getelementptr inbounds i8, ptr %374, i64 372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %379, i8 0, i64 120, i1 false)
  %380 = getelementptr inbounds i8, ptr %374, i64 40
  %381 = load i64, ptr %380, align 8
  store i64 %381, ptr getelementptr inbounds (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 4
  %382 = getelementptr inbounds i8, ptr %374, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @report_frame_statistic.last_mode_chroma_use, ptr noundef nonnull align 8 dereferenceable(16) %382, i64 16, i1 false)
  store i32 0, ptr @frame_statistic_start, align 4, !tbaa !20
  %383 = call signext i32 @fclose(ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #19
  ret void
}

declare dso_local void @encode_enhancement_layer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @process_2nd_IGOP() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !44
  %4 = add nsw i32 %3, -1
  %5 = getelementptr inbounds i8, ptr %1, i64 3588
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = icmp ne i32 %10, %4
  %12 = load i32, ptr @In2ndIGOP, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  store i32 1, ptr @In2ndIGOP, align 4, !tbaa !20
  store i32 %3, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !20
  %16 = getelementptr inbounds i8, ptr %1, i64 20
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %18, %4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @start_tr_in_this_IGOP, align 4, !tbaa !20
  %21 = add nsw i32 %6, %3
  store i32 %21, ptr %2, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %8, %0, %15
  ret void
}

declare dso_local signext i32 @terminate_sequence() local_unnamed_addr #3

declare dso_local void @flush_dpb() local_unnamed_addr #3

declare dso_local signext i32 @close(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

declare dso_local void @Clear_Motion_Search_Module() local_unnamed_addr #3

declare dso_local void @RandomIntraUninit() local_unnamed_addr #3

declare dso_local void @FmoUninit() local_unnamed_addr #3

declare dso_local void @clear_gop_structure() local_unnamed_addr #3

declare dso_local void @clear_rdopt() local_unnamed_addr #3

declare dso_local void @calc_buffer(...) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @report() local_unnamed_addr #1 {
  %1 = alloca [30 x i8], align 1
  %2 = alloca i64, align 8
  %3 = alloca [1000 x i8], align 1
  %4 = alloca [80 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #19
  %5 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 8), align 4, !tbaa !20
  %6 = load i32, ptr @frame_ctr, align 4
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 12), align 4
  %8 = add nsw i32 %7, %6
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %10 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %11 = load ptr, ptr @stats, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 1036
  %13 = getelementptr inbounds i8, ptr %11, i64 1336
  %14 = getelementptr inbounds i8, ptr %11, i64 1456
  %15 = getelementptr inbounds i8, ptr %11, i64 1436
  %16 = getelementptr inbounds i8, ptr %11, i64 1416
  %17 = getelementptr inbounds i8, ptr %11, i64 1396
  %18 = getelementptr inbounds i8, ptr %11, i64 1356
  %19 = getelementptr inbounds i8, ptr %11, i64 1376
  %20 = load i32, ptr %12, align 4, !tbaa !20
  %21 = getelementptr inbounds i8, ptr %11, i64 1040
  %22 = load i32, ptr %21, align 4, !tbaa !20
  %23 = add nsw i32 %20, %22
  %24 = getelementptr inbounds i8, ptr %11, i64 1044
  %25 = load i32, ptr %24, align 4, !tbaa !20
  %26 = add nsw i32 %23, %25
  %27 = getelementptr inbounds i8, ptr %11, i64 1048
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = add nsw i32 %26, %28
  %30 = getelementptr inbounds i8, ptr %11, i64 1052
  %31 = load i32, ptr %30, align 4, !tbaa !20
  %32 = add nsw i32 %29, %31
  %33 = getelementptr inbounds i8, ptr %11, i64 1056
  %34 = load i32, ptr %33, align 4, !tbaa !20
  %35 = add nsw i32 %32, %34
  %36 = getelementptr inbounds i8, ptr %11, i64 1060
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = add nsw i32 %35, %37
  %39 = getelementptr inbounds i8, ptr %11, i64 1064
  %40 = load i32, ptr %39, align 4, !tbaa !20
  %41 = add nsw i32 %38, %40
  %42 = getelementptr inbounds i8, ptr %11, i64 1068
  %43 = load i32, ptr %42, align 4, !tbaa !20
  %44 = add nsw i32 %41, %43
  %45 = getelementptr inbounds i8, ptr %11, i64 1072
  %46 = load i32, ptr %45, align 4, !tbaa !20
  %47 = add nsw i32 %44, %46
  %48 = getelementptr inbounds i8, ptr %11, i64 1076
  %49 = load i32, ptr %48, align 4, !tbaa !20
  %50 = add nsw i32 %47, %49
  %51 = getelementptr inbounds i8, ptr %11, i64 1080
  %52 = load i32, ptr %51, align 4, !tbaa !20
  %53 = add nsw i32 %50, %52
  %54 = getelementptr inbounds i8, ptr %11, i64 1084
  %55 = load i32, ptr %54, align 4, !tbaa !20
  %56 = add nsw i32 %53, %55
  %57 = getelementptr inbounds i8, ptr %11, i64 1088
  %58 = load i32, ptr %57, align 4, !tbaa !20
  %59 = add nsw i32 %56, %58
  %60 = getelementptr inbounds i8, ptr %11, i64 1092
  %61 = load i32, ptr %60, align 4, !tbaa !20
  %62 = add nsw i32 %59, %61
  %63 = load i32, ptr %19, align 4, !tbaa !20
  %64 = add nsw i32 %62, %63
  %65 = load i32, ptr %18, align 4, !tbaa !20
  %66 = add nsw i32 %65, %64
  %67 = load i32, ptr %17, align 4, !tbaa !20
  %68 = add nsw i32 %67, %66
  %69 = load i32, ptr %16, align 4, !tbaa !20
  %70 = add nsw i32 %69, %68
  %71 = load i32, ptr %15, align 4, !tbaa !20
  %72 = add nsw i32 %71, %70
  %73 = load i32, ptr %14, align 4, !tbaa !20
  %74 = add nsw i32 %73, %72
  %75 = load i32, ptr %13, align 4, !tbaa !20
  %76 = add nsw i32 %75, %74
  %77 = getelementptr inbounds i8, ptr %11, i64 1096
  %78 = load i32, ptr %77, align 4, !tbaa !20
  %79 = getelementptr inbounds i8, ptr %11, i64 1100
  %80 = load i32, ptr %79, align 4, !tbaa !20
  %81 = add nsw i32 %78, %80
  %82 = getelementptr inbounds i8, ptr %11, i64 1104
  %83 = load i32, ptr %82, align 4, !tbaa !20
  %84 = add nsw i32 %81, %83
  %85 = getelementptr inbounds i8, ptr %11, i64 1108
  %86 = load i32, ptr %85, align 4, !tbaa !20
  %87 = add nsw i32 %84, %86
  %88 = getelementptr inbounds i8, ptr %11, i64 1112
  %89 = load i32, ptr %88, align 4, !tbaa !20
  %90 = add nsw i32 %87, %89
  %91 = getelementptr inbounds i8, ptr %11, i64 1116
  %92 = load i32, ptr %91, align 4, !tbaa !20
  %93 = add nsw i32 %90, %92
  %94 = getelementptr inbounds i8, ptr %11, i64 1120
  %95 = load i32, ptr %94, align 4, !tbaa !20
  %96 = add nsw i32 %93, %95
  %97 = getelementptr inbounds i8, ptr %11, i64 1124
  %98 = load i32, ptr %97, align 4, !tbaa !20
  %99 = add nsw i32 %96, %98
  %100 = getelementptr inbounds i8, ptr %11, i64 1128
  %101 = load i32, ptr %100, align 4, !tbaa !20
  %102 = add nsw i32 %99, %101
  %103 = getelementptr inbounds i8, ptr %11, i64 1132
  %104 = load i32, ptr %103, align 4, !tbaa !20
  %105 = add nsw i32 %102, %104
  %106 = getelementptr inbounds i8, ptr %11, i64 1136
  %107 = load i32, ptr %106, align 4, !tbaa !20
  %108 = add nsw i32 %105, %107
  %109 = getelementptr inbounds i8, ptr %11, i64 1140
  %110 = load i32, ptr %109, align 4, !tbaa !20
  %111 = add nsw i32 %108, %110
  %112 = getelementptr inbounds i8, ptr %11, i64 1144
  %113 = load i32, ptr %112, align 4, !tbaa !20
  %114 = add nsw i32 %111, %113
  %115 = getelementptr inbounds i8, ptr %11, i64 1148
  %116 = load i32, ptr %115, align 4, !tbaa !20
  %117 = add nsw i32 %114, %116
  %118 = getelementptr inbounds i8, ptr %11, i64 1152
  %119 = load i32, ptr %118, align 4, !tbaa !20
  %120 = add nsw i32 %117, %119
  %121 = getelementptr inbounds i8, ptr %11, i64 1380
  %122 = load i32, ptr %121, align 4, !tbaa !20
  %123 = add nsw i32 %120, %122
  %124 = getelementptr inbounds i8, ptr %11, i64 1360
  %125 = load i32, ptr %124, align 4, !tbaa !20
  %126 = add nsw i32 %125, %123
  %127 = getelementptr inbounds i8, ptr %11, i64 1400
  %128 = load i32, ptr %127, align 4, !tbaa !20
  %129 = add nsw i32 %128, %126
  %130 = getelementptr inbounds i8, ptr %11, i64 1420
  %131 = load i32, ptr %130, align 4, !tbaa !20
  %132 = add nsw i32 %131, %129
  %133 = getelementptr inbounds i8, ptr %11, i64 1440
  %134 = load i32, ptr %133, align 4, !tbaa !20
  %135 = add nsw i32 %134, %132
  %136 = getelementptr inbounds i8, ptr %11, i64 1460
  %137 = load i32, ptr %136, align 4, !tbaa !20
  %138 = add nsw i32 %137, %135
  %139 = getelementptr inbounds i8, ptr %11, i64 1340
  %140 = load i32, ptr %139, align 4, !tbaa !20
  %141 = add nsw i32 %140, %138
  %142 = getelementptr inbounds i8, ptr %11, i64 1156
  %143 = load i32, ptr %142, align 4, !tbaa !20
  %144 = getelementptr inbounds i8, ptr %11, i64 1160
  %145 = load i32, ptr %144, align 4, !tbaa !20
  %146 = add nsw i32 %143, %145
  %147 = getelementptr inbounds i8, ptr %11, i64 1164
  %148 = load i32, ptr %147, align 4, !tbaa !20
  %149 = add nsw i32 %146, %148
  %150 = getelementptr inbounds i8, ptr %11, i64 1168
  %151 = load i32, ptr %150, align 4, !tbaa !20
  %152 = add nsw i32 %149, %151
  %153 = getelementptr inbounds i8, ptr %11, i64 1172
  %154 = load i32, ptr %153, align 4, !tbaa !20
  %155 = add nsw i32 %152, %154
  %156 = getelementptr inbounds i8, ptr %11, i64 1176
  %157 = load i32, ptr %156, align 4, !tbaa !20
  %158 = add nsw i32 %155, %157
  %159 = getelementptr inbounds i8, ptr %11, i64 1180
  %160 = load i32, ptr %159, align 4, !tbaa !20
  %161 = add nsw i32 %158, %160
  %162 = getelementptr inbounds i8, ptr %11, i64 1184
  %163 = load i32, ptr %162, align 4, !tbaa !20
  %164 = add nsw i32 %161, %163
  %165 = getelementptr inbounds i8, ptr %11, i64 1188
  %166 = load i32, ptr %165, align 4, !tbaa !20
  %167 = add nsw i32 %164, %166
  %168 = getelementptr inbounds i8, ptr %11, i64 1192
  %169 = load i32, ptr %168, align 4, !tbaa !20
  %170 = add nsw i32 %167, %169
  %171 = getelementptr inbounds i8, ptr %11, i64 1196
  %172 = load i32, ptr %171, align 4, !tbaa !20
  %173 = add nsw i32 %170, %172
  %174 = getelementptr inbounds i8, ptr %11, i64 1200
  %175 = load i32, ptr %174, align 4, !tbaa !20
  %176 = add nsw i32 %173, %175
  %177 = getelementptr inbounds i8, ptr %11, i64 1204
  %178 = load i32, ptr %177, align 4, !tbaa !20
  %179 = add nsw i32 %176, %178
  %180 = getelementptr inbounds i8, ptr %11, i64 1208
  %181 = load i32, ptr %180, align 4, !tbaa !20
  %182 = add nsw i32 %179, %181
  %183 = getelementptr inbounds i8, ptr %11, i64 1212
  %184 = load i32, ptr %183, align 4, !tbaa !20
  %185 = add nsw i32 %182, %184
  %186 = getelementptr inbounds i8, ptr %11, i64 1384
  %187 = load i32, ptr %186, align 4, !tbaa !20
  %188 = add nsw i32 %185, %187
  %189 = getelementptr inbounds i8, ptr %11, i64 1364
  %190 = load i32, ptr %189, align 4, !tbaa !20
  %191 = add nsw i32 %190, %188
  %192 = getelementptr inbounds i8, ptr %11, i64 1404
  %193 = load i32, ptr %192, align 4, !tbaa !20
  %194 = add nsw i32 %193, %191
  %195 = getelementptr inbounds i8, ptr %11, i64 1424
  %196 = load i32, ptr %195, align 4, !tbaa !20
  %197 = add nsw i32 %196, %194
  %198 = getelementptr inbounds i8, ptr %11, i64 1444
  %199 = load i32, ptr %198, align 4, !tbaa !20
  %200 = add nsw i32 %199, %197
  %201 = getelementptr inbounds i8, ptr %11, i64 1464
  %202 = load i32, ptr %201, align 4, !tbaa !20
  %203 = add nsw i32 %202, %200
  %204 = getelementptr inbounds i8, ptr %11, i64 1344
  %205 = load i32, ptr %204, align 4, !tbaa !20
  %206 = add nsw i32 %205, %203
  %207 = load ptr, ptr @img, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 48
  %209 = load float, ptr %208, align 8, !tbaa !100
  %210 = getelementptr inbounds i8, ptr %11, i64 688
  %211 = load i32, ptr %210, align 8, !tbaa !14
  %212 = add nsw i32 %211, 1
  %213 = sitofp i32 %212 to float
  %214 = fmul float %209, %213
  %215 = load ptr, ptr @input, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 20
  %217 = load i32, ptr %216, align 4, !tbaa !43
  %218 = add nsw i32 %217, 1
  %219 = sitofp i32 %218 to float
  %220 = fdiv float %214, %219
  %221 = getelementptr inbounds i8, ptr %11, i64 712
  %222 = load i32, ptr %221, align 8, !tbaa !17
  %223 = sitofp i32 %222 to float
  %224 = fmul float %220, %223
  %225 = getelementptr inbounds i8, ptr %215, i64 8
  %226 = load i32, ptr %225, align 8, !tbaa !44
  %227 = add nsw i32 %226, %10
  %228 = sitofp i32 %227 to float
  %229 = fdiv float %224, %228
  %230 = getelementptr inbounds i8, ptr %11, i64 724
  store float %229, ptr %230, align 4, !tbaa !144
  %231 = getelementptr inbounds i8, ptr %11, i64 716
  %232 = load i32, ptr %231, align 4, !tbaa !18
  %233 = sitofp i32 %232 to float
  %234 = fmul float %220, %233
  %235 = fdiv float %234, %228
  %236 = getelementptr inbounds i8, ptr %11, i64 728
  store float %235, ptr %236, align 8, !tbaa !145
  %237 = getelementptr inbounds i8, ptr %11, i64 720
  %238 = load i32, ptr %237, align 8, !tbaa !19
  %239 = sitofp i32 %238 to float
  %240 = fmul float %220, %239
  %241 = fdiv float %240, %228
  %242 = getelementptr inbounds i8, ptr %11, i64 732
  store float %241, ptr %242, align 4, !tbaa !146
  %243 = load ptr, ptr @stdout, align 8, !tbaa !6
  %244 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 80, i64 1, ptr %243)
  %245 = load ptr, ptr @input, align 8, !tbaa !6
  %246 = getelementptr inbounds i8, ptr %245, i64 3904
  %247 = load i32, ptr %246, align 8, !tbaa !134
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %546, label %249

249:                                              ; preds = %0
  %250 = load ptr, ptr @stdout, align 8, !tbaa !6
  %251 = load ptr, ptr @img, align 8, !tbaa !6
  %252 = getelementptr inbounds i8, ptr %251, i64 48
  %253 = load float, ptr %252, align 8, !tbaa !100
  %254 = getelementptr inbounds i8, ptr %245, i64 20
  %255 = load i32, ptr %254, align 4, !tbaa !43
  %256 = add nsw i32 %255, 1
  %257 = sitofp i32 %256 to float
  %258 = fdiv float %253, %257
  %259 = fpext float %258 to double
  %260 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.27, double noundef %259) #19
  %261 = load ptr, ptr @input, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 24
  %263 = load i32, ptr %262, align 8, !tbaa !147
  %264 = load ptr, ptr @stdout, align 8, !tbaa !6
  switch i32 %263, label %269 [
    i32 2, label %265
    i32 1, label %267
  ]

265:                                              ; preds = %249
  %266 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 51, i64 1, ptr %264)
  br label %271

267:                                              ; preds = %249
  %268 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 42, i64 1, ptr %264)
  br label %271

269:                                              ; preds = %249
  %270 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 46, i64 1, ptr %264)
  br label %271

271:                                              ; preds = %269, %267, %265
  %272 = load ptr, ptr @stdout, align 8, !tbaa !6
  %273 = load ptr, ptr @input, align 8, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %273, i64 68
  %275 = load i32, ptr %274, align 4, !tbaa !103
  %276 = getelementptr inbounds i8, ptr %273, i64 72
  %277 = load i32, ptr %276, align 8, !tbaa !105
  %278 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.31, i32 noundef signext %275, i32 noundef signext %277) #19
  %279 = load ptr, ptr @input, align 8, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %279, i64 80
  %281 = load i32, ptr %280, align 8, !tbaa !148
  %282 = icmp eq i32 %281, 0
  %283 = load ptr, ptr @stdout, align 8, !tbaa !6
  br i1 %282, label %286, label %284

284:                                              ; preds = %271
  %285 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 40, i64 1, ptr %283)
  br label %288

286:                                              ; preds = %271
  %287 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 41, i64 1, ptr %283)
  br label %288

288:                                              ; preds = %286, %284
  %289 = load ptr, ptr @stdout, align 8, !tbaa !6
  %290 = load ptr, ptr @input, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 32
  %292 = load i32, ptr %291, align 8, !tbaa !149
  %293 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.34, i32 noundef signext %292) #19
  %294 = load ptr, ptr @stdout, align 8, !tbaa !6
  %295 = load ptr, ptr @input, align 8, !tbaa !6
  %296 = getelementptr inbounds i8, ptr %295, i64 36
  %297 = load i32, ptr %296, align 4, !tbaa !96
  %298 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef nonnull @.str.35, i32 noundef signext %297) #19
  %299 = load ptr, ptr @stdout, align 8, !tbaa !6
  %300 = load ptr, ptr @input, align 8, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %300, i64 40
  %302 = load i32, ptr %301, align 8, !tbaa !150
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %288
  %305 = getelementptr inbounds i8, ptr %300, i64 36
  %306 = load i32, ptr %305, align 4, !tbaa !96
  br label %307

307:                                              ; preds = %288, %304
  %308 = phi i32 [ %306, %304 ], [ %302, %288 ]
  %309 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef nonnull @.str.36, i32 noundef signext %308) #19
  %310 = load ptr, ptr @stats, align 8, !tbaa !6
  %311 = getelementptr inbounds i8, ptr %310, i64 688
  %312 = load i32, ptr %311, align 8, !tbaa !14
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %337, label %314

314:                                              ; preds = %307
  %315 = load ptr, ptr @stdout, align 8, !tbaa !6
  %316 = load ptr, ptr @input, align 8, !tbaa !6
  %317 = getelementptr inbounds i8, ptr %316, i64 44
  %318 = load i32, ptr %317, align 4, !tbaa !151
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %314
  %321 = getelementptr inbounds i8, ptr %316, i64 36
  %322 = load i32, ptr %321, align 4, !tbaa !96
  br label %323

323:                                              ; preds = %314, %320
  %324 = phi i32 [ %322, %320 ], [ %318, %314 ]
  %325 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef nonnull @.str.37, i32 noundef signext %324) #19
  %326 = load ptr, ptr @stdout, align 8, !tbaa !6
  %327 = load ptr, ptr @input, align 8, !tbaa !6
  %328 = getelementptr inbounds i8, ptr %327, i64 48
  %329 = load i32, ptr %328, align 8, !tbaa !152
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %323
  %332 = getelementptr inbounds i8, ptr %327, i64 36
  %333 = load i32, ptr %332, align 4, !tbaa !96
  br label %334

334:                                              ; preds = %323, %331
  %335 = phi i32 [ %333, %331 ], [ %329, %323 ]
  %336 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.38, i32 noundef signext %335) #19
  br label %337

337:                                              ; preds = %334, %307
  %338 = load ptr, ptr @stdout, align 8, !tbaa !6
  %339 = load i32, ptr @tot_time, align 4, !tbaa !20
  %340 = sitofp i32 %339 to double
  %341 = fmul double %340, 1.000000e-03
  %342 = load ptr, ptr @input, align 8, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %342, i64 8
  %344 = load i32, ptr %343, align 8, !tbaa !44
  %345 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %346 = add nsw i32 %345, %344
  %347 = sitofp i32 %346 to double
  %348 = fmul double %347, 1.000000e+03
  %349 = fdiv double %348, %340
  %350 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef nonnull @.str.39, double noundef %341, double noundef %349) #19
  %351 = load ptr, ptr @stdout, align 8, !tbaa !6
  %352 = load i32, ptr @me_tot_time, align 4, !tbaa !20
  %353 = sitofp i32 %352 to double
  %354 = fmul double %353, 1.000000e-03
  %355 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.40, double noundef %354) #19
  %356 = load ptr, ptr @stdout, align 8, !tbaa !6
  %357 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 36, i64 1, ptr %356)
  %358 = load ptr, ptr @stats, align 8, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %358, i64 688
  %360 = load i32, ptr %359, align 8, !tbaa !14
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %441

362:                                              ; preds = %337
  %363 = load ptr, ptr @input, align 8
  %364 = getelementptr inbounds i8, ptr %363, i64 1944
  %365 = load i32, ptr %364, align 8, !tbaa !36
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %376, label %367

367:                                              ; preds = %362
  %368 = load ptr, ptr @stdout, align 8, !tbaa !6
  %369 = getelementptr inbounds i8, ptr %363, i64 12
  %370 = load i32, ptr %369, align 4, !tbaa !153
  %371 = getelementptr inbounds i8, ptr %363, i64 16
  %372 = load i32, ptr %371, align 8, !tbaa !154
  %373 = getelementptr inbounds i8, ptr %363, i64 1248
  %374 = load i32, ptr %373, align 8, !tbaa !155
  %375 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef nonnull @.str.42, i32 noundef signext %370, i32 noundef signext %372, i32 noundef signext %374) #19
  br label %466

376:                                              ; preds = %362
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #19
  store i16 73, ptr %4, align 2
  %377 = getelementptr inbounds i8, ptr %363, i64 1940
  br label %378

378:                                              ; preds = %376, %378
  %379 = phi i32 [ %389, %378 ], [ 0, %376 ]
  %380 = load i32, ptr %377, align 4, !tbaa !27
  %381 = icmp eq i32 %380, 0
  %382 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %383 = trunc i64 %382 to i32
  %384 = sub i32 79, %383
  %385 = call i32 @llvm.smax.i32(i32 %384, i32 0)
  %386 = zext nneg i32 %385 to i64
  %387 = select i1 %381, ptr @.str.45, ptr @.str.44
  %388 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull %387, i64 noundef %386) #19
  %389 = add nuw nsw i32 %379, 1
  %390 = load i32, ptr %359, align 8, !tbaa !14
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %378, label %392

392:                                              ; preds = %378
  %393 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %394 = trunc i64 %393 to i32
  %395 = sub i32 79, %394
  %396 = call i32 @llvm.smax.i32(i32 %395, i32 0)
  %397 = zext nneg i32 %396 to i64
  %398 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull @.str.46, i64 noundef %397) #19
  %399 = load i32, ptr %359, align 8, !tbaa !14
  %400 = icmp sgt i32 %399, 0
  br i1 %400, label %401, label %415

401:                                              ; preds = %392, %401
  %402 = phi i32 [ %412, %401 ], [ 0, %392 ]
  %403 = load i32, ptr %377, align 4, !tbaa !27
  %404 = icmp eq i32 %403, 0
  %405 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %406 = trunc i64 %405 to i32
  %407 = sub i32 79, %406
  %408 = call i32 @llvm.smax.i32(i32 %407, i32 0)
  %409 = zext nneg i32 %408 to i64
  %410 = select i1 %404, ptr @.str.45, ptr @.str.44
  %411 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull %410, i64 noundef %409) #19
  %412 = add nuw nsw i32 %402, 1
  %413 = load i32, ptr %359, align 8, !tbaa !14
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %401, label %415

415:                                              ; preds = %401, %392
  %416 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %417 = trunc i64 %416 to i32
  %418 = sub i32 79, %417
  %419 = call i32 @llvm.smax.i32(i32 %418, i32 0)
  %420 = zext nneg i32 %419 to i64
  %421 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull @.str.46, i64 noundef %420) #19
  %422 = load i32, ptr %377, align 4, !tbaa !27
  %423 = icmp eq i32 %422, 0
  %424 = load ptr, ptr @stdout, align 8, !tbaa !6
  %425 = getelementptr inbounds i8, ptr %363, i64 12
  %426 = load i32, ptr %425, align 4, !tbaa !153
  %427 = getelementptr inbounds i8, ptr %363, i64 16
  %428 = load i32, ptr %427, align 8, !tbaa !154
  %429 = getelementptr inbounds i8, ptr %363, i64 1248
  %430 = load i32, ptr %429, align 8, !tbaa !155
  br i1 %423, label %438, label %431

431:                                              ; preds = %415
  %432 = getelementptr inbounds i8, ptr %363, i64 1252
  %433 = load i32, ptr %432, align 4, !tbaa !156
  %434 = add nsw i32 %433, %430
  %435 = call i32 @llvm.smin.i32(i32 %434, i32 51)
  %436 = call i32 @llvm.smax.i32(i32 %435, i32 0)
  %437 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef nonnull @.str.47, ptr noundef nonnull %4, i32 noundef signext %426, i32 noundef signext %428, i32 noundef signext %436) #19
  br label %440

438:                                              ; preds = %415
  %439 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef nonnull @.str.48, ptr noundef nonnull %4, i32 noundef signext %426, i32 noundef signext %428, i32 noundef signext %430) #19
  br label %440

440:                                              ; preds = %438, %431
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #19
  br label %466

441:                                              ; preds = %337
  %442 = icmp eq i32 %360, 0
  %443 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %442, label %444, label %455

444:                                              ; preds = %441
  %445 = getelementptr inbounds i8, ptr %443, i64 1280
  %446 = load i32, ptr %445, align 8, !tbaa !57
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %444
  %449 = load ptr, ptr @stdout, align 8, !tbaa !6
  %450 = getelementptr inbounds i8, ptr %443, i64 12
  %451 = load i32, ptr %450, align 4, !tbaa !153
  %452 = getelementptr inbounds i8, ptr %443, i64 16
  %453 = load i32, ptr %452, align 8, !tbaa !154
  %454 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %449, ptr noundef nonnull @.str.49, i32 noundef signext %451, i32 noundef signext %453) #19
  br label %466

455:                                              ; preds = %444, %441
  %456 = load ptr, ptr @stdout, align 8, !tbaa !6
  %457 = getelementptr inbounds i8, ptr %443, i64 12
  %458 = load i32, ptr %457, align 4, !tbaa !153
  %459 = getelementptr inbounds i8, ptr %443, i64 16
  %460 = load i32, ptr %459, align 8, !tbaa !154
  %461 = getelementptr inbounds i8, ptr %443, i64 1284
  %462 = load i32, ptr %461, align 4, !tbaa !157
  %463 = getelementptr inbounds i8, ptr %443, i64 1288
  %464 = load i32, ptr %463, align 8, !tbaa !158
  %465 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %456, ptr noundef nonnull @.str.50, i32 noundef signext %458, i32 noundef signext %460, i32 noundef signext %462, i32 noundef signext %464) #19
  br label %466

466:                                              ; preds = %440, %455, %448, %367
  %467 = load ptr, ptr @input, align 8, !tbaa !6
  %468 = getelementptr inbounds i8, ptr %467, i64 2984
  %469 = load i32, ptr %468, align 8, !tbaa !159
  %470 = icmp eq i32 %469, 0
  %471 = load ptr, ptr @stdout, align 8, !tbaa !6
  %472 = select i1 %470, ptr @.str.51, ptr @.str.52
  %473 = call i64 @fwrite(ptr nonnull %472, i64 43, i64 1, ptr %471)
  %474 = load ptr, ptr @stdout, align 8, !tbaa !6
  %475 = load ptr, ptr @input, align 8, !tbaa !6
  %476 = load i32, ptr %475, align 8, !tbaa !160
  %477 = getelementptr inbounds i8, ptr %475, i64 4
  %478 = load i32, ptr %477, align 4, !tbaa !161
  %479 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %474, ptr noundef nonnull @.str.53, i32 noundef signext %476, i32 noundef signext %478) #19
  %480 = load ptr, ptr @input, align 8, !tbaa !6
  %481 = getelementptr inbounds i8, ptr %480, i64 3964
  %482 = load i32, ptr %481, align 4, !tbaa !40
  %483 = load ptr, ptr @stdout, align 8, !tbaa !6
  switch i32 %482, label %491 [
    i32 1, label %484
    i32 2, label %486
    i32 3, label %488
  ]

484:                                              ; preds = %466
  %485 = call i64 @fwrite(ptr nonnull @.str.54, i64 41, i64 1, ptr %483)
  br label %493

486:                                              ; preds = %466
  %487 = call i64 @fwrite(ptr nonnull @.str.55, i64 42, i64 1, ptr %483)
  br label %493

488:                                              ; preds = %466
  %489 = call i64 @fwrite(ptr nonnull @.str.56, i64 42, i64 1, ptr %483)
  %490 = load ptr, ptr @stdout, align 8, !tbaa !6
  call void @EPZSOutputStats(ptr noundef %490, i16 noundef signext 0) #19
  br label %493

491:                                              ; preds = %466
  %492 = call i64 @fwrite(ptr nonnull @.str.57, i64 49, i64 1, ptr %483)
  br label %493

493:                                              ; preds = %486, %491, %488, %484
  %494 = load ptr, ptr @input, align 8, !tbaa !6
  %495 = getelementptr inbounds i8, ptr %494, i64 3108
  %496 = load i32, ptr %495, align 4, !tbaa !162
  %497 = load ptr, ptr @stdout, align 8, !tbaa !6
  switch i32 %496, label %502 [
    i32 2, label %498
    i32 1, label %500
  ]

498:                                              ; preds = %493
  %499 = call i64 @fwrite(ptr nonnull @.str.58, i64 42, i64 1, ptr %497)
  br label %504

500:                                              ; preds = %493
  %501 = call i64 @fwrite(ptr nonnull @.str.59, i64 60, i64 1, ptr %497)
  br label %504

502:                                              ; preds = %493
  %503 = call i64 @fwrite(ptr nonnull @.str.60, i64 79, i64 1, ptr %497)
  br label %504

504:                                              ; preds = %500, %502, %498
  %505 = load ptr, ptr @input, align 8, !tbaa !6
  %506 = getelementptr inbounds i8, ptr %505, i64 3136
  %507 = load i32, ptr %506, align 8, !tbaa !128
  %508 = icmp eq i32 %507, 0
  %509 = load ptr, ptr @stdout, align 8, !tbaa !6
  br i1 %508, label %512, label %510

510:                                              ; preds = %504
  %511 = call i64 @fwrite(ptr nonnull @.str.61, i64 42, i64 1, ptr %509)
  br label %514

512:                                              ; preds = %504
  %513 = call i64 @fwrite(ptr nonnull @.str.62, i64 46, i64 1, ptr %509)
  br label %514

514:                                              ; preds = %512, %510
  %515 = load ptr, ptr @input, align 8, !tbaa !6
  %516 = getelementptr inbounds i8, ptr %515, i64 2992
  %517 = load i32, ptr %516, align 8, !tbaa !163
  %518 = load ptr, ptr @stdout, align 8, !tbaa !6
  switch i32 %517, label %523 [
    i32 0, label %519
    i32 1, label %521
  ]

519:                                              ; preds = %514
  %520 = call i64 @fwrite(ptr nonnull @.str.63, i64 50, i64 1, ptr %518)
  br label %525

521:                                              ; preds = %514
  %522 = call i64 @fwrite(ptr nonnull @.str.64, i64 51, i64 1, ptr %518)
  br label %525

523:                                              ; preds = %514
  %524 = call i64 @fwrite(ptr nonnull @.str.65, i64 51, i64 1, ptr %518)
  br label %525

525:                                              ; preds = %523, %521, %519
  %526 = load ptr, ptr @input, align 8, !tbaa !6
  %527 = getelementptr inbounds i8, ptr %526, i64 2988
  %528 = load i32, ptr %527, align 4, !tbaa !164
  %529 = load ptr, ptr @stdout, align 8, !tbaa !6
  switch i32 %528, label %534 [
    i32 0, label %530
    i32 1, label %532
  ]

530:                                              ; preds = %525
  %531 = call i64 @fwrite(ptr nonnull @.str.66, i64 67, i64 1, ptr %529)
  br label %536

532:                                              ; preds = %525
  %533 = call i64 @fwrite(ptr nonnull @.str.67, i64 61, i64 1, ptr %529)
  br label %536

534:                                              ; preds = %525
  %535 = call i64 @fwrite(ptr nonnull @.str.68, i64 51, i64 1, ptr %529)
  br label %536

536:                                              ; preds = %534, %532, %530
  %537 = load ptr, ptr @input, align 8, !tbaa !6
  %538 = getelementptr inbounds i8, ptr %537, i64 4000
  %539 = load i32, ptr %538, align 8, !tbaa !165
  %540 = icmp eq i32 %539, 0
  %541 = load ptr, ptr @stdout, align 8, !tbaa !6
  br i1 %540, label %544, label %542

542:                                              ; preds = %536
  %543 = call i64 @fwrite(ptr nonnull @.str.69, i64 42, i64 1, ptr %541)
  br label %546

544:                                              ; preds = %536
  %545 = call i64 @fwrite(ptr nonnull @.str.70, i64 46, i64 1, ptr %541)
  br label %546

546:                                              ; preds = %542, %544, %0
  %547 = load ptr, ptr @stdout, align 8, !tbaa !6
  %548 = call i64 @fwrite(ptr nonnull @.str.71, i64 80, i64 1, ptr %547)
  %549 = load ptr, ptr @input, align 8, !tbaa !6
  %550 = getelementptr inbounds i8, ptr %549, i64 3904
  %551 = load i32, ptr %550, align 8, !tbaa !134
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %652, label %553

553:                                              ; preds = %546
  %554 = getelementptr inbounds i8, ptr %549, i64 72
  %555 = load i32, ptr %554, align 8, !tbaa !105
  %556 = getelementptr inbounds i8, ptr %549, i64 68
  %557 = load i32, ptr %556, align 4, !tbaa !103
  %558 = mul nsw i32 %557, %555
  %559 = getelementptr inbounds i8, ptr %549, i64 3976
  %560 = load i32, ptr %559, align 8, !tbaa !166
  %561 = getelementptr inbounds i8, ptr %549, i64 3980
  %562 = load i32, ptr %561, align 4, !tbaa !167
  %563 = mul nsw i32 %562, %560
  %564 = load ptr, ptr @img, align 8, !tbaa !6
  %565 = getelementptr inbounds i8, ptr %564, i64 90532
  %566 = load i32, ptr %565, align 4, !tbaa !78
  %567 = mul nsw i32 %566, %566
  %568 = getelementptr inbounds i8, ptr %564, i64 90536
  %569 = load i32, ptr %568, align 8, !tbaa !81
  %570 = mul nsw i32 %569, %569
  %571 = uitofp nneg i32 %567 to double
  %572 = sitofp i32 %558 to double
  %573 = load ptr, ptr @snr, align 8, !tbaa !6
  %574 = getelementptr inbounds i8, ptr %573, i64 108
  %575 = load float, ptr %574, align 4, !tbaa !168
  %576 = fcmp oeq float %575, 0.000000e+00
  %577 = fpext float %575 to double
  %578 = select i1 %576, double 1.000000e+00, double %577
  %579 = fdiv double %572, %578
  %580 = fmul double %579, %571
  %581 = call double @log10(double noundef %580) #19
  %582 = fmul double %581, 1.000000e+01
  %583 = fptrunc double %582 to float
  %584 = uitofp nneg i32 %570 to double
  %585 = sitofp i32 %563 to double
  %586 = load ptr, ptr @snr, align 8, !tbaa !6
  %587 = getelementptr inbounds i8, ptr %586, i64 112
  %588 = load float, ptr %587, align 4, !tbaa !169
  %589 = fcmp oeq float %588, 0.000000e+00
  %590 = fpext float %588 to double
  %591 = select i1 %589, double 1.000000e+00, double %590
  %592 = fdiv double %585, %591
  %593 = fmul double %592, %584
  %594 = call double @log10(double noundef %593) #19
  %595 = fmul double %594, 1.000000e+01
  %596 = fptrunc double %595 to float
  %597 = load ptr, ptr @snr, align 8, !tbaa !6
  %598 = getelementptr inbounds i8, ptr %597, i64 116
  %599 = load float, ptr %598, align 4, !tbaa !170
  %600 = fcmp oeq float %599, 0.000000e+00
  %601 = fpext float %599 to double
  %602 = select i1 %600, double 1.000000e+00, double %601
  %603 = fdiv double %585, %602
  %604 = fmul double %603, %584
  %605 = call double @log10(double noundef %604) #19
  %606 = fmul double %605, 1.000000e+01
  %607 = fptrunc double %606 to float
  %608 = load ptr, ptr @stdout, align 8, !tbaa !6
  %609 = load ptr, ptr @snr, align 8, !tbaa !6
  %610 = getelementptr inbounds i8, ptr %609, i64 84
  %611 = load float, ptr %610, align 4, !tbaa !171
  %612 = fpext float %611 to double
  %613 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %608, ptr noundef nonnull @.str.72, double noundef %612) #19
  %614 = load ptr, ptr @stdout, align 8, !tbaa !6
  %615 = load ptr, ptr @snr, align 8, !tbaa !6
  %616 = getelementptr inbounds i8, ptr %615, i64 88
  %617 = load float, ptr %616, align 4, !tbaa !172
  %618 = fpext float %617 to double
  %619 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %614, ptr noundef nonnull @.str.73, double noundef %618) #19
  %620 = load ptr, ptr @stdout, align 8, !tbaa !6
  %621 = load ptr, ptr @snr, align 8, !tbaa !6
  %622 = getelementptr inbounds i8, ptr %621, i64 92
  %623 = load float, ptr %622, align 4, !tbaa !173
  %624 = fpext float %623 to double
  %625 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %620, ptr noundef nonnull @.str.74, double noundef %624) #19
  %626 = load ptr, ptr @stdout, align 8, !tbaa !6
  %627 = fpext float %583 to double
  %628 = load ptr, ptr @snr, align 8, !tbaa !6
  %629 = getelementptr inbounds i8, ptr %628, i64 108
  %630 = load float, ptr %629, align 4, !tbaa !168
  %631 = sitofp i32 %558 to float
  %632 = fdiv float %630, %631
  %633 = fpext float %632 to double
  %634 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %626, ptr noundef nonnull @.str.75, double noundef %627, double noundef %633) #19
  %635 = load ptr, ptr @stdout, align 8, !tbaa !6
  %636 = fpext float %596 to double
  %637 = load ptr, ptr @snr, align 8, !tbaa !6
  %638 = getelementptr inbounds i8, ptr %637, i64 112
  %639 = load float, ptr %638, align 4, !tbaa !169
  %640 = sitofp i32 %563 to float
  %641 = fdiv float %639, %640
  %642 = fpext float %641 to double
  %643 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %635, ptr noundef nonnull @.str.76, double noundef %636, double noundef %642) #19
  %644 = load ptr, ptr @stdout, align 8, !tbaa !6
  %645 = fpext float %607 to double
  %646 = load ptr, ptr @snr, align 8, !tbaa !6
  %647 = getelementptr inbounds i8, ptr %646, i64 116
  %648 = load float, ptr %647, align 4, !tbaa !170
  %649 = fdiv float %648, %640
  %650 = fpext float %649 to double
  %651 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %644, ptr noundef nonnull @.str.77, double noundef %645, double noundef %650) #19
  br label %665

652:                                              ; preds = %546
  %653 = load ptr, ptr @stdout, align 8, !tbaa !6
  %654 = load i32, ptr @tot_time, align 4, !tbaa !20
  %655 = sitofp i32 %654 to double
  %656 = fmul double %655, 1.000000e-03
  %657 = getelementptr inbounds i8, ptr %549, i64 8
  %658 = load i32, ptr %657, align 8, !tbaa !44
  %659 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %660 = add nsw i32 %659, %658
  %661 = sitofp i32 %660 to double
  %662 = fmul double %661, 1.000000e+03
  %663 = fdiv double %662, %655
  %664 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %653, ptr noundef nonnull @.str.39, double noundef %656, double noundef %663) #19
  br label %665

665:                                              ; preds = %652, %553
  %666 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %667 = icmp eq i32 %666, 0
  %668 = load ptr, ptr @stdout, align 8, !tbaa !6
  %669 = load ptr, ptr @stats, align 8, !tbaa !6
  %670 = getelementptr inbounds i8, ptr %669, i64 716
  %671 = load i32, ptr %670, align 4, !tbaa !18
  %672 = getelementptr inbounds i8, ptr %669, i64 712
  %673 = load i32, ptr %672, align 8, !tbaa !17
  %674 = add nsw i32 %673, %671
  br i1 %667, label %707, label %675

675:                                              ; preds = %665
  %676 = getelementptr inbounds i8, ptr %669, i64 720
  %677 = load i32, ptr %676, align 8, !tbaa !19
  %678 = add nsw i32 %674, %677
  %679 = getelementptr inbounds i8, ptr %669, i64 1496
  %680 = load i32, ptr %679, align 8, !tbaa !45
  %681 = add nsw i32 %678, %680
  %682 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %668, ptr noundef nonnull @.str.78, i32 noundef signext %681, i32 noundef signext %673, i32 noundef signext %671, i32 noundef signext %677, i32 noundef signext %680) #19
  %683 = load ptr, ptr @img, align 8, !tbaa !6
  %684 = getelementptr inbounds i8, ptr %683, i64 48
  %685 = load float, ptr %684, align 8, !tbaa !100
  %686 = load ptr, ptr @stats, align 8, !tbaa !6
  %687 = getelementptr inbounds i8, ptr %686, i64 688
  %688 = load i32, ptr %687, align 8, !tbaa !14
  %689 = add nsw i32 %688, 1
  %690 = sitofp i32 %689 to float
  %691 = fmul float %685, %690
  %692 = load ptr, ptr @input, align 8, !tbaa !6
  %693 = getelementptr inbounds i8, ptr %692, i64 20
  %694 = load i32, ptr %693, align 4, !tbaa !43
  %695 = add nsw i32 %694, 1
  %696 = sitofp i32 %695 to float
  %697 = fdiv float %691, %696
  %698 = sitofp i32 %681 to float
  %699 = fmul float %697, %698
  %700 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 8), align 4, !tbaa !20
  %701 = load i32, ptr @frame_ctr, align 4, !tbaa !20
  %702 = add nsw i32 %701, %700
  %703 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %704 = add nsw i32 %702, %703
  %705 = sitofp i32 %704 to float
  %706 = fdiv float %699, %705
  br label %728

707:                                              ; preds = %665
  %708 = getelementptr inbounds i8, ptr %669, i64 1496
  %709 = load i32, ptr %708, align 8, !tbaa !45
  %710 = add nsw i32 %674, %709
  %711 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %668, ptr noundef nonnull @.str.80, i32 noundef signext %710, i32 noundef signext %673, i32 noundef signext %671, i32 noundef signext %709) #19
  %712 = load ptr, ptr @img, align 8, !tbaa !6
  %713 = getelementptr inbounds i8, ptr %712, i64 48
  %714 = load float, ptr %713, align 8, !tbaa !100
  %715 = load ptr, ptr @input, align 8, !tbaa !6
  %716 = getelementptr inbounds i8, ptr %715, i64 20
  %717 = load i32, ptr %716, align 4, !tbaa !43
  %718 = add nsw i32 %717, 1
  %719 = sitofp i32 %718 to float
  %720 = fdiv float %714, %719
  %721 = sitofp i32 %710 to float
  %722 = fmul float %720, %721
  %723 = getelementptr inbounds i8, ptr %715, i64 8
  %724 = load i32, ptr %723, align 8, !tbaa !44
  %725 = sitofp i32 %724 to float
  %726 = fdiv float %722, %725
  %727 = load ptr, ptr @stats, align 8, !tbaa !6
  br label %728

728:                                              ; preds = %707, %675
  %729 = phi ptr [ %727, %707 ], [ %686, %675 ]
  %730 = phi float [ %726, %707 ], [ %706, %675 ]
  %731 = phi float [ %720, %707 ], [ %697, %675 ]
  %732 = getelementptr inbounds i8, ptr %729, i64 12
  store float %730, ptr %732, align 4, !tbaa !174
  %733 = load ptr, ptr @stdout, align 8, !tbaa !6
  %734 = fpext float %731 to double
  %735 = fdiv float %730, 1.000000e+03
  %736 = fpext float %735 to double
  %737 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %733, ptr noundef nonnull @.str.79, double noundef %734, double noundef %736) #19
  %738 = load ptr, ptr @stdout, align 8, !tbaa !6
  %739 = load ptr, ptr @stats, align 8, !tbaa !6
  %740 = getelementptr inbounds i8, ptr %739, i64 28
  %741 = load i32, ptr %740, align 4, !tbaa !175
  %742 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %738, ptr noundef nonnull @.str.81, i32 noundef signext %741) #19
  %743 = load ptr, ptr @stdout, align 8, !tbaa !6
  %744 = load ptr, ptr @stats, align 8, !tbaa !6
  %745 = getelementptr inbounds i8, ptr %744, i64 1496
  %746 = load i32, ptr %745, align 8, !tbaa !45
  %747 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %743, ptr noundef nonnull @.str.82, i32 noundef signext %746) #19
  %748 = load ptr, ptr @stdout, align 8, !tbaa !6
  %749 = call i64 @fwrite(ptr nonnull @.str.26, i64 80, i64 1, ptr %748)
  %750 = load ptr, ptr @stdout, align 8, !tbaa !6
  %751 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %750, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.13) #19
  %752 = load ptr, ptr @stdout, align 8, !tbaa !6
  %753 = call i32 @fputc(i32 10, ptr %752)
  %754 = call ptr @fopen64(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #19
  store ptr %754, ptr @p_stat, align 8, !tbaa !6
  %755 = icmp eq ptr %754, null
  br i1 %755, label %756, label %759

756:                                              ; preds = %728
  %757 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85) #19
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #19
  %758 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br label %759

759:                                              ; preds = %756, %728
  %760 = phi ptr [ %758, %756 ], [ %754, %728 ]
  %761 = call i64 @fwrite(ptr nonnull @.str.88, i64 65, i64 1, ptr %760)
  %762 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %763 = call i64 @fwrite(ptr nonnull @.str.89, i64 65, i64 1, ptr %762)
  %764 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %765 = call i64 @fwrite(ptr nonnull @.str.88, i64 65, i64 1, ptr %764)
  %766 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %767 = load ptr, ptr @input, align 8, !tbaa !6
  %768 = getelementptr inbounds i8, ptr %767, i64 228
  %769 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %766, ptr noundef nonnull @.str.90, ptr noundef nonnull %768) #19
  %770 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %771 = load ptr, ptr @input, align 8, !tbaa !6
  %772 = getelementptr inbounds i8, ptr %771, i64 8
  %773 = load i32, ptr %772, align 8, !tbaa !44
  %774 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %775 = add nsw i32 %774, %773
  %776 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %770, ptr noundef nonnull @.str.91, i32 noundef signext %775) #19
  %777 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %778 = fpext float %731 to double
  %779 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %777, ptr noundef nonnull @.str.92, double noundef %778) #19
  %780 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %781 = load ptr, ptr @stats, align 8, !tbaa !6
  %782 = getelementptr inbounds i8, ptr %781, i64 724
  %783 = load float, ptr %782, align 4, !tbaa !144
  %784 = fdiv float %783, 1.000000e+03
  %785 = fpext float %784 to double
  %786 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %780, ptr noundef nonnull @.str.93, double noundef %785) #19
  %787 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %788 = load ptr, ptr @stats, align 8, !tbaa !6
  %789 = getelementptr inbounds i8, ptr %788, i64 728
  %790 = load float, ptr %789, align 8, !tbaa !145
  %791 = fdiv float %790, 1.000000e+03
  %792 = fpext float %791 to double
  %793 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %787, ptr noundef nonnull @.str.94, double noundef %792) #19
  %794 = load ptr, ptr @stats, align 8, !tbaa !6
  %795 = getelementptr inbounds i8, ptr %794, i64 688
  %796 = load i32, ptr %795, align 8, !tbaa !14
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %806, label %798

798:                                              ; preds = %759
  %799 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %800 = getelementptr inbounds i8, ptr %794, i64 732
  %801 = load float, ptr %800, align 4, !tbaa !146
  %802 = fdiv float %801, 1.000000e+03
  %803 = fpext float %802 to double
  %804 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %799, ptr noundef nonnull @.str.95, double noundef %803) #19
  %805 = load ptr, ptr @stats, align 8, !tbaa !6
  br label %806

806:                                              ; preds = %798, %759
  %807 = phi ptr [ %805, %798 ], [ %794, %759 ]
  %808 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %809 = getelementptr inbounds i8, ptr %807, i64 12
  %810 = load float, ptr %809, align 4, !tbaa !174
  %811 = fdiv float %810, 1.000000e+03
  %812 = fpext float %811 to double
  %813 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %808, ptr noundef nonnull @.str.96, double noundef %812) #19
  %814 = load ptr, ptr @input, align 8, !tbaa !6
  %815 = getelementptr inbounds i8, ptr %814, i64 24
  %816 = load i32, ptr %815, align 8, !tbaa !147
  %817 = load ptr, ptr @p_stat, align 8, !tbaa !6
  switch i32 %816, label %822 [
    i32 2, label %818
    i32 1, label %820
  ]

818:                                              ; preds = %806
  %819 = call i64 @fwrite(ptr nonnull @.str.97, i64 46, i64 1, ptr %817)
  br label %824

820:                                              ; preds = %806
  %821 = call i64 @fwrite(ptr nonnull @.str.98, i64 37, i64 1, ptr %817)
  br label %824

822:                                              ; preds = %806
  %823 = call i64 @fwrite(ptr nonnull @.str.99, i64 41, i64 1, ptr %817)
  br label %824

824:                                              ; preds = %822, %820, %818
  %825 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %826 = load ptr, ptr @input, align 8, !tbaa !6
  %827 = getelementptr inbounds i8, ptr %826, i64 68
  %828 = load i32, ptr %827, align 4, !tbaa !103
  %829 = getelementptr inbounds i8, ptr %826, i64 72
  %830 = load i32, ptr %829, align 8, !tbaa !105
  %831 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef nonnull @.str.100, i32 noundef signext %828, i32 noundef signext %830) #19
  %832 = load ptr, ptr @input, align 8, !tbaa !6
  %833 = getelementptr inbounds i8, ptr %832, i64 80
  %834 = load i32, ptr %833, align 8, !tbaa !148
  %835 = icmp eq i32 %834, 0
  %836 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %835, label %839, label %837

837:                                              ; preds = %824
  %838 = call i64 @fwrite(ptr nonnull @.str.101, i64 35, i64 1, ptr %836)
  br label %841

839:                                              ; preds = %824
  %840 = call i64 @fwrite(ptr nonnull @.str.102, i64 36, i64 1, ptr %836)
  br label %841

841:                                              ; preds = %839, %837
  %842 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %843 = load ptr, ptr @input, align 8, !tbaa !6
  %844 = getelementptr inbounds i8, ptr %843, i64 32
  %845 = load i32, ptr %844, align 8, !tbaa !149
  %846 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %842, ptr noundef nonnull @.str.103, i32 noundef signext %845) #19
  %847 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %848 = load ptr, ptr @input, align 8, !tbaa !6
  %849 = getelementptr inbounds i8, ptr %848, i64 36
  %850 = load i32, ptr %849, align 4, !tbaa !96
  %851 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %847, ptr noundef nonnull @.str.104, i32 noundef signext %850) #19
  %852 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %853 = load ptr, ptr @input, align 8, !tbaa !6
  %854 = getelementptr inbounds i8, ptr %853, i64 40
  %855 = load i32, ptr %854, align 8, !tbaa !150
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %841
  %858 = getelementptr inbounds i8, ptr %853, i64 36
  %859 = load i32, ptr %858, align 4, !tbaa !96
  br label %860

860:                                              ; preds = %841, %857
  %861 = phi i32 [ %859, %857 ], [ %855, %841 ]
  %862 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %852, ptr noundef nonnull @.str.105, i32 noundef signext %861) #19
  %863 = load ptr, ptr @stats, align 8, !tbaa !6
  %864 = getelementptr inbounds i8, ptr %863, i64 688
  %865 = load i32, ptr %864, align 8, !tbaa !14
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %890, label %867

867:                                              ; preds = %860
  %868 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %869 = load ptr, ptr @input, align 8, !tbaa !6
  %870 = getelementptr inbounds i8, ptr %869, i64 44
  %871 = load i32, ptr %870, align 4, !tbaa !151
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %876

873:                                              ; preds = %867
  %874 = getelementptr inbounds i8, ptr %869, i64 36
  %875 = load i32, ptr %874, align 4, !tbaa !96
  br label %876

876:                                              ; preds = %867, %873
  %877 = phi i32 [ %875, %873 ], [ %871, %867 ]
  %878 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %868, ptr noundef nonnull @.str.106, i32 noundef signext %877) #19
  %879 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %880 = load ptr, ptr @input, align 8, !tbaa !6
  %881 = getelementptr inbounds i8, ptr %880, i64 48
  %882 = load i32, ptr %881, align 8, !tbaa !152
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %887

884:                                              ; preds = %876
  %885 = getelementptr inbounds i8, ptr %880, i64 36
  %886 = load i32, ptr %885, align 4, !tbaa !96
  br label %887

887:                                              ; preds = %876, %884
  %888 = phi i32 [ %886, %884 ], [ %882, %876 ]
  %889 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %879, ptr noundef nonnull @.str.107, i32 noundef signext %888) #19
  br label %890

890:                                              ; preds = %887, %860
  %891 = load ptr, ptr @input, align 8, !tbaa !6
  %892 = getelementptr inbounds i8, ptr %891, i64 2984
  %893 = load i32, ptr %892, align 8, !tbaa !159
  %894 = icmp eq i32 %893, 0
  %895 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %896 = select i1 %894, ptr @.str.108, ptr @.str.109
  %897 = call i64 @fwrite(ptr nonnull %896, i64 38, i64 1, ptr %895)
  %898 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %899 = load ptr, ptr @input, align 8, !tbaa !6
  %900 = load i32, ptr %899, align 8, !tbaa !160
  %901 = getelementptr inbounds i8, ptr %899, i64 4
  %902 = load i32, ptr %901, align 4, !tbaa !161
  %903 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %898, ptr noundef nonnull @.str.110, i32 noundef signext %900, i32 noundef signext %902) #19
  %904 = load ptr, ptr @input, align 8, !tbaa !6
  %905 = getelementptr inbounds i8, ptr %904, i64 3556
  %906 = load i32, ptr %905, align 4, !tbaa !29
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %912, label %908

908:                                              ; preds = %890
  %909 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %910 = call i64 @fwrite(ptr nonnull @.str.111, i64 23, i64 1, ptr %909)
  %911 = load ptr, ptr @input, align 8, !tbaa !6
  br label %912

912:                                              ; preds = %908, %890
  %913 = phi ptr [ %911, %908 ], [ %904, %890 ]
  %914 = getelementptr inbounds i8, ptr %913, i64 3964
  %915 = load i32, ptr %914, align 4, !tbaa !40
  %916 = icmp eq i32 %915, 3
  br i1 %916, label %917, label %920

917:                                              ; preds = %912
  %918 = load ptr, ptr @p_stat, align 8, !tbaa !6
  call void @EPZSOutputStats(ptr noundef %918, i16 noundef signext 1) #19
  %919 = load ptr, ptr @input, align 8, !tbaa !6
  br label %920

920:                                              ; preds = %917, %912
  %921 = phi ptr [ %919, %917 ], [ %913, %912 ]
  %922 = getelementptr inbounds i8, ptr %921, i64 3108
  %923 = load i32, ptr %922, align 4, !tbaa !162
  %924 = load ptr, ptr @p_stat, align 8, !tbaa !6
  switch i32 %923, label %929 [
    i32 2, label %925
    i32 1, label %927
  ]

925:                                              ; preds = %920
  %926 = call i64 @fwrite(ptr nonnull @.str.112, i64 37, i64 1, ptr %924)
  br label %931

927:                                              ; preds = %920
  %928 = call i64 @fwrite(ptr nonnull @.str.113, i64 55, i64 1, ptr %924)
  br label %931

929:                                              ; preds = %920
  %930 = call i64 @fwrite(ptr nonnull @.str.114, i64 74, i64 1, ptr %924)
  br label %931

931:                                              ; preds = %927, %929, %925
  %932 = load ptr, ptr @input, align 8, !tbaa !6
  %933 = getelementptr inbounds i8, ptr %932, i64 3136
  %934 = load i32, ptr %933, align 8, !tbaa !128
  %935 = icmp eq i32 %934, 0
  %936 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %935, label %939, label %937

937:                                              ; preds = %931
  %938 = call i64 @fwrite(ptr nonnull @.str.115, i64 37, i64 1, ptr %936)
  br label %941

939:                                              ; preds = %931
  %940 = call i64 @fwrite(ptr nonnull @.str.116, i64 41, i64 1, ptr %936)
  br label %941

941:                                              ; preds = %939, %937
  %942 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %943 = call i64 @fwrite(ptr nonnull @.str.117, i64 57, i64 1, ptr %942)
  %944 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %945 = call i64 @fwrite(ptr nonnull @.str.118, i64 57, i64 1, ptr %944)
  %946 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %947 = call i64 @fwrite(ptr nonnull @.str.117, i64 57, i64 1, ptr %946)
  %948 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %949 = call i64 @fwrite(ptr nonnull @.str.119, i64 23, i64 1, ptr %948)
  %950 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %951 = load ptr, ptr @snr, align 8, !tbaa !6
  %952 = getelementptr inbounds i8, ptr %951, i64 12
  %953 = load float, ptr %952, align 4, !tbaa !176
  %954 = fpext float %953 to double
  %955 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %950, ptr noundef nonnull @.str.120, double noundef %954) #19
  %956 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %957 = load ptr, ptr @snr, align 8, !tbaa !6
  %958 = getelementptr inbounds i8, ptr %957, i64 84
  %959 = load float, ptr %958, align 4, !tbaa !171
  %960 = fpext float %959 to double
  %961 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %956, ptr noundef nonnull @.str.121, double noundef %960) #19
  %962 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %963 = call i64 @fwrite(ptr nonnull @.str.122, i64 23, i64 1, ptr %962)
  %964 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %965 = load ptr, ptr @snr, align 8, !tbaa !6
  %966 = getelementptr inbounds i8, ptr %965, i64 16
  %967 = load float, ptr %966, align 4, !tbaa !177
  %968 = fpext float %967 to double
  %969 = getelementptr inbounds i8, ptr %965, i64 20
  %970 = load float, ptr %969, align 4, !tbaa !178
  %971 = fpext float %970 to double
  %972 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %964, ptr noundef nonnull @.str.123, double noundef %968, double noundef %971) #19
  %973 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %974 = load ptr, ptr @snr, align 8, !tbaa !6
  %975 = getelementptr inbounds i8, ptr %974, i64 88
  %976 = load float, ptr %975, align 4, !tbaa !172
  %977 = fpext float %976 to double
  %978 = getelementptr inbounds i8, ptr %974, i64 92
  %979 = load float, ptr %978, align 4, !tbaa !173
  %980 = fpext float %979 to double
  %981 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %973, ptr noundef nonnull @.str.124, double noundef %977, double noundef %980) #19
  %982 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %983 = call i64 @fwrite(ptr nonnull @.str.125, i64 23, i64 1, ptr %982)
  %984 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %985 = load ptr, ptr @input, align 8, !tbaa !6
  %986 = getelementptr inbounds i8, ptr %985, i64 12
  %987 = load i32, ptr %986, align 4, !tbaa !153
  %988 = call i32 @llvm.abs.i32(i32 %987, i1 true)
  %989 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %984, ptr noundef nonnull @.str.126, i32 noundef signext %988) #19
  %990 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %991 = load ptr, ptr @stats, align 8, !tbaa !6
  %992 = getelementptr inbounds i8, ptr %991, i64 4
  %993 = load i32, ptr %992, align 4, !tbaa !179
  %994 = sitofp i32 %993 to float
  %995 = fpext float %994 to double
  %996 = load i32, ptr %991, align 8, !tbaa !180
  %997 = icmp slt i32 %996, 1
  %998 = sitofp i32 %996 to float
  %999 = fpext float %998 to double
  %1000 = select i1 %997, double 1.000000e+00, double %999
  %1001 = fdiv double %995, %1000
  %1002 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %990, ptr noundef nonnull @.str.121, double noundef %1001) #19
  %1003 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1004 = call i64 @fwrite(ptr nonnull @.str.127, i64 74, i64 1, ptr %1003)
  %1005 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1006 = call i64 @fwrite(ptr nonnull @.str.128, i64 73, i64 1, ptr %1005)
  %1007 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1008 = call i64 @fwrite(ptr nonnull @.str.129, i64 73, i64 1, ptr %1007)
  %1009 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1010 = load ptr, ptr @snr, align 8, !tbaa !6
  %1011 = getelementptr inbounds i8, ptr %1010, i64 24
  %1012 = getelementptr inbounds i8, ptr %1010, i64 32
  %1013 = load float, ptr %1012, align 4, !tbaa !181
  %1014 = fpext float %1013 to double
  %1015 = load float, ptr %1011, align 4, !tbaa !181
  %1016 = fpext float %1015 to double
  %1017 = getelementptr inbounds i8, ptr %1010, i64 28
  %1018 = load float, ptr %1017, align 4, !tbaa !181
  %1019 = fpext float %1018 to double
  %1020 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1009, ptr noundef nonnull @.str.130, double noundef %1014, double noundef %1016, double noundef %1019) #19
  %1021 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1022 = load ptr, ptr @snr, align 8, !tbaa !6
  %1023 = getelementptr inbounds i8, ptr %1022, i64 44
  %1024 = getelementptr inbounds i8, ptr %1022, i64 52
  %1025 = load float, ptr %1024, align 4, !tbaa !181
  %1026 = fpext float %1025 to double
  %1027 = load float, ptr %1023, align 4, !tbaa !181
  %1028 = fpext float %1027 to double
  %1029 = getelementptr inbounds i8, ptr %1022, i64 48
  %1030 = load float, ptr %1029, align 4, !tbaa !181
  %1031 = fpext float %1030 to double
  %1032 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1021, ptr noundef nonnull @.str.131, double noundef %1026, double noundef %1028, double noundef %1031) #19
  %1033 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1034 = load ptr, ptr @snr, align 8, !tbaa !6
  %1035 = getelementptr inbounds i8, ptr %1034, i64 64
  %1036 = getelementptr inbounds i8, ptr %1034, i64 72
  %1037 = load float, ptr %1036, align 4, !tbaa !181
  %1038 = fpext float %1037 to double
  %1039 = load float, ptr %1035, align 4, !tbaa !181
  %1040 = fpext float %1039 to double
  %1041 = getelementptr inbounds i8, ptr %1034, i64 68
  %1042 = load float, ptr %1041, align 4, !tbaa !181
  %1043 = fpext float %1042 to double
  %1044 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1033, ptr noundef nonnull @.str.132, double noundef %1038, double noundef %1040, double noundef %1043) #19
  %1045 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1046 = call i64 @fwrite(ptr nonnull @.str.133, i64 42, i64 1, ptr %1045)
  %1047 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1048 = call i64 @fwrite(ptr nonnull @.str.134, i64 41, i64 1, ptr %1047)
  %1049 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1050 = call i64 @fwrite(ptr nonnull @.str.135, i64 41, i64 1, ptr %1049)
  %1051 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1052 = load ptr, ptr @stats, align 8, !tbaa !6
  %1053 = getelementptr inbounds i8, ptr %1052, i64 892
  %1054 = load i32, ptr %1053, align 4, !tbaa !20
  %1055 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1051, ptr noundef nonnull @.str.136, i32 noundef signext %1054) #19
  %1056 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1057 = load ptr, ptr @stats, align 8, !tbaa !6
  %1058 = getelementptr inbounds i8, ptr %1057, i64 908
  %1059 = load i32, ptr %1058, align 4, !tbaa !20
  %1060 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1056, ptr noundef nonnull @.str.137, i32 noundef signext %1059) #19
  %1061 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1062 = load ptr, ptr @stats, align 8, !tbaa !6
  %1063 = getelementptr inbounds i8, ptr %1062, i64 896
  %1064 = load i32, ptr %1063, align 8, !tbaa !20
  %1065 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1061, ptr noundef nonnull @.str.138, i32 noundef signext %1064) #19
  %1066 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1067 = load ptr, ptr @stats, align 8, !tbaa !6
  %1068 = getelementptr inbounds i8, ptr %1067, i64 912
  %1069 = load i32, ptr %1068, align 8, !tbaa !20
  %1070 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1066, ptr noundef nonnull @.str.139, i32 noundef signext %1069) #19
  %1071 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1072 = call i64 @fwrite(ptr nonnull @.str.140, i64 60, i64 1, ptr %1071)
  %1073 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1074 = call i64 @fwrite(ptr nonnull @.str.141, i64 59, i64 1, ptr %1073)
  %1075 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1076 = call i64 @fwrite(ptr nonnull @.str.142, i64 58, i64 1, ptr %1075)
  %1077 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1078 = load ptr, ptr @stats, align 8, !tbaa !6
  %1079 = getelementptr inbounds i8, ptr %1078, i64 736
  %1080 = load i32, ptr %1079, align 8, !tbaa !20
  %1081 = getelementptr inbounds i8, ptr %1078, i64 1036
  %1082 = load i32, ptr %1081, align 4, !tbaa !20
  %1083 = sitofp i32 %1082 to float
  %1084 = uitofp nneg i32 %9 to float
  %1085 = fdiv float %1083, %1084
  %1086 = fpext float %1085 to double
  %1087 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1077, ptr noundef nonnull @.str.143, i32 noundef signext %1080, double noundef %1086) #19
  %1088 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1089 = load ptr, ptr @stats, align 8, !tbaa !6
  %1090 = getelementptr inbounds i8, ptr %1089, i64 740
  %1091 = load i32, ptr %1090, align 4, !tbaa !20
  %1092 = getelementptr inbounds i8, ptr %1089, i64 1040
  %1093 = load i32, ptr %1092, align 4, !tbaa !20
  %1094 = sitofp i32 %1093 to float
  %1095 = fdiv float %1094, %1084
  %1096 = fpext float %1095 to double
  %1097 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1088, ptr noundef nonnull @.str.144, i32 noundef signext %1091, double noundef %1096) #19
  %1098 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1099 = load ptr, ptr @stats, align 8, !tbaa !6
  %1100 = getelementptr inbounds i8, ptr %1099, i64 744
  %1101 = load i32, ptr %1100, align 8, !tbaa !20
  %1102 = getelementptr inbounds i8, ptr %1099, i64 1044
  %1103 = load i32, ptr %1102, align 4, !tbaa !20
  %1104 = sitofp i32 %1103 to float
  %1105 = fdiv float %1104, %1084
  %1106 = fpext float %1105 to double
  %1107 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1098, ptr noundef nonnull @.str.145, i32 noundef signext %1101, double noundef %1106) #19
  %1108 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1109 = load ptr, ptr @stats, align 8, !tbaa !6
  %1110 = getelementptr inbounds i8, ptr %1109, i64 748
  %1111 = load i32, ptr %1110, align 4, !tbaa !20
  %1112 = getelementptr inbounds i8, ptr %1109, i64 1048
  %1113 = load i32, ptr %1112, align 4, !tbaa !20
  %1114 = sitofp i32 %1113 to float
  %1115 = fdiv float %1114, %1084
  %1116 = fpext float %1115 to double
  %1117 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1108, ptr noundef nonnull @.str.146, i32 noundef signext %1111, double noundef %1116) #19
  %1118 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1119 = load ptr, ptr @stats, align 8, !tbaa !6
  %1120 = getelementptr inbounds i8, ptr %1119, i64 768
  %1121 = load i32, ptr %1120, align 8, !tbaa !20
  %1122 = getelementptr inbounds i8, ptr %1119, i64 1068
  %1123 = load i32, ptr %1122, align 4, !tbaa !20
  %1124 = sitofp i32 %1123 to float
  %1125 = fdiv float %1124, %1084
  %1126 = fpext float %1125 to double
  %1127 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1118, ptr noundef nonnull @.str.147, i32 noundef signext %1121, double noundef %1126) #19
  %1128 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1129 = load ptr, ptr @stats, align 8, !tbaa !6
  %1130 = getelementptr inbounds i8, ptr %1129, i64 772
  %1131 = load i32, ptr %1130, align 4, !tbaa !20
  %1132 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1128, ptr noundef nonnull @.str.148, i32 noundef signext %1131) #19
  %1133 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1134 = load ptr, ptr @stats, align 8, !tbaa !6
  %1135 = getelementptr inbounds i8, ptr %1134, i64 788
  %1136 = load i32, ptr %1135, align 4, !tbaa !20
  %1137 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1133, ptr noundef nonnull @.str.149, i32 noundef signext %1136) #19
  %1138 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1139 = load ptr, ptr @stats, align 8, !tbaa !6
  %1140 = getelementptr inbounds i8, ptr %1139, i64 776
  %1141 = load i32, ptr %1140, align 8, !tbaa !20
  %1142 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1138, ptr noundef nonnull @.str.150, i32 noundef signext %1141) #19
  %1143 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1144 = load ptr, ptr @stats, align 8, !tbaa !6
  %1145 = getelementptr inbounds i8, ptr %1144, i64 792
  %1146 = load i32, ptr %1145, align 8, !tbaa !20
  %1147 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1143, ptr noundef nonnull @.str.151, i32 noundef signext %1146) #19
  %1148 = load ptr, ptr @stats, align 8, !tbaa !6
  %1149 = getelementptr inbounds i8, ptr %1148, i64 1036
  %1150 = load i32, ptr %1149, align 4, !tbaa !20
  %1151 = getelementptr inbounds i8, ptr %1148, i64 1040
  %1152 = load i32, ptr %1151, align 4, !tbaa !20
  %1153 = add nsw i32 %1152, %1150
  %1154 = getelementptr inbounds i8, ptr %1148, i64 1044
  %1155 = load i32, ptr %1154, align 4, !tbaa !20
  %1156 = add nsw i32 %1153, %1155
  %1157 = getelementptr inbounds i8, ptr %1148, i64 1048
  %1158 = load i32, ptr %1157, align 4, !tbaa !20
  %1159 = add nsw i32 %1156, %1158
  %1160 = getelementptr inbounds i8, ptr %1148, i64 1068
  %1161 = load i32, ptr %1160, align 4, !tbaa !20
  %1162 = add nsw i32 %1159, %1161
  %1163 = sitofp i32 %1162 to float
  %1164 = fdiv float %1163, %1084
  %1165 = getelementptr inbounds i8, ptr %1148, i64 688
  %1166 = load i32, ptr %1165, align 8, !tbaa !14
  %1167 = icmp ne i32 %1166, 0
  %1168 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1169 = icmp ne i32 %1168, 0
  %1170 = select i1 %1167, i1 %1169, i1 false
  br i1 %1170, label %1171, label %1277

1171:                                             ; preds = %941
  %1172 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1173 = call i64 @fwrite(ptr nonnull @.str.152, i64 61, i64 1, ptr %1172)
  %1174 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1175 = call i64 @fwrite(ptr nonnull @.str.153, i64 59, i64 1, ptr %1174)
  %1176 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1177 = call i64 @fwrite(ptr nonnull @.str.142, i64 58, i64 1, ptr %1176)
  %1178 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1179 = load ptr, ptr @stats, align 8, !tbaa !6
  %1180 = getelementptr inbounds i8, ptr %1179, i64 796
  %1181 = load i32, ptr %1180, align 4, !tbaa !20
  %1182 = getelementptr inbounds i8, ptr %1179, i64 1096
  %1183 = load i32, ptr %1182, align 4, !tbaa !20
  %1184 = sitofp i32 %1183 to float
  %1185 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1186 = sitofp i32 %1185 to float
  %1187 = fdiv float %1184, %1186
  %1188 = fpext float %1187 to double
  %1189 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1178, ptr noundef nonnull @.str.143, i32 noundef signext %1181, double noundef %1188) #19
  %1190 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1191 = load ptr, ptr @stats, align 8, !tbaa !6
  %1192 = getelementptr inbounds i8, ptr %1191, i64 800
  %1193 = load i32, ptr %1192, align 4, !tbaa !20
  %1194 = getelementptr inbounds i8, ptr %1191, i64 1100
  %1195 = load i32, ptr %1194, align 4, !tbaa !20
  %1196 = sitofp i32 %1195 to float
  %1197 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1198 = sitofp i32 %1197 to float
  %1199 = fdiv float %1196, %1198
  %1200 = fpext float %1199 to double
  %1201 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1190, ptr noundef nonnull @.str.144, i32 noundef signext %1193, double noundef %1200) #19
  %1202 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1203 = load ptr, ptr @stats, align 8, !tbaa !6
  %1204 = getelementptr inbounds i8, ptr %1203, i64 804
  %1205 = load i32, ptr %1204, align 4, !tbaa !20
  %1206 = getelementptr inbounds i8, ptr %1203, i64 1104
  %1207 = load i32, ptr %1206, align 4, !tbaa !20
  %1208 = sitofp i32 %1207 to float
  %1209 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1210 = sitofp i32 %1209 to float
  %1211 = fdiv float %1208, %1210
  %1212 = fpext float %1211 to double
  %1213 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1202, ptr noundef nonnull @.str.145, i32 noundef signext %1205, double noundef %1212) #19
  %1214 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1215 = load ptr, ptr @stats, align 8, !tbaa !6
  %1216 = getelementptr inbounds i8, ptr %1215, i64 808
  %1217 = load i32, ptr %1216, align 4, !tbaa !20
  %1218 = getelementptr inbounds i8, ptr %1215, i64 1108
  %1219 = load i32, ptr %1218, align 4, !tbaa !20
  %1220 = sitofp i32 %1219 to float
  %1221 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1222 = sitofp i32 %1221 to float
  %1223 = fdiv float %1220, %1222
  %1224 = fpext float %1223 to double
  %1225 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1214, ptr noundef nonnull @.str.146, i32 noundef signext %1217, double noundef %1224) #19
  %1226 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1227 = load ptr, ptr @stats, align 8, !tbaa !6
  %1228 = getelementptr inbounds i8, ptr %1227, i64 828
  %1229 = load i32, ptr %1228, align 4, !tbaa !20
  %1230 = getelementptr inbounds i8, ptr %1227, i64 1128
  %1231 = load i32, ptr %1230, align 4, !tbaa !20
  %1232 = sitofp i32 %1231 to float
  %1233 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1234 = sitofp i32 %1233 to float
  %1235 = fdiv float %1232, %1234
  %1236 = fpext float %1235 to double
  %1237 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1226, ptr noundef nonnull @.str.147, i32 noundef signext %1229, double noundef %1236) #19
  %1238 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1239 = load ptr, ptr @stats, align 8, !tbaa !6
  %1240 = getelementptr inbounds i8, ptr %1239, i64 832
  %1241 = load i32, ptr %1240, align 4, !tbaa !20
  %1242 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1238, ptr noundef nonnull @.str.148, i32 noundef signext %1241) #19
  %1243 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1244 = load ptr, ptr @stats, align 8, !tbaa !6
  %1245 = getelementptr inbounds i8, ptr %1244, i64 848
  %1246 = load i32, ptr %1245, align 4, !tbaa !20
  %1247 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1243, ptr noundef nonnull @.str.149, i32 noundef signext %1246) #19
  %1248 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1249 = load ptr, ptr @stats, align 8, !tbaa !6
  %1250 = getelementptr inbounds i8, ptr %1249, i64 836
  %1251 = load i32, ptr %1250, align 4, !tbaa !20
  %1252 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1248, ptr noundef nonnull @.str.150, i32 noundef signext %1251) #19
  %1253 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1254 = load ptr, ptr @stats, align 8, !tbaa !6
  %1255 = getelementptr inbounds i8, ptr %1254, i64 852
  %1256 = load i32, ptr %1255, align 4, !tbaa !20
  %1257 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1253, ptr noundef nonnull @.str.151, i32 noundef signext %1256) #19
  %1258 = load ptr, ptr @stats, align 8, !tbaa !6
  %1259 = getelementptr inbounds i8, ptr %1258, i64 1096
  %1260 = load i32, ptr %1259, align 4, !tbaa !20
  %1261 = getelementptr inbounds i8, ptr %1258, i64 1100
  %1262 = load i32, ptr %1261, align 4, !tbaa !20
  %1263 = add nsw i32 %1262, %1260
  %1264 = getelementptr inbounds i8, ptr %1258, i64 1104
  %1265 = load i32, ptr %1264, align 4, !tbaa !20
  %1266 = add nsw i32 %1263, %1265
  %1267 = getelementptr inbounds i8, ptr %1258, i64 1108
  %1268 = load i32, ptr %1267, align 4, !tbaa !20
  %1269 = add nsw i32 %1266, %1268
  %1270 = getelementptr inbounds i8, ptr %1258, i64 1128
  %1271 = load i32, ptr %1270, align 4, !tbaa !20
  %1272 = add nsw i32 %1269, %1271
  %1273 = sitofp i32 %1272 to float
  %1274 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !20
  %1275 = sitofp i32 %1274 to float
  %1276 = fdiv float %1273, %1275
  br label %1277

1277:                                             ; preds = %1171, %941
  %1278 = phi float [ %1276, %1171 ], [ 0.000000e+00, %941 ]
  %1279 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1280 = call i64 @fwrite(ptr nonnull @.str.154, i64 77, i64 1, ptr %1279)
  %1281 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1282 = call i64 @fwrite(ptr nonnull @.str.155, i64 75, i64 1, ptr %1281)
  %1283 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1284 = call i64 @fwrite(ptr nonnull @.str.156, i64 75, i64 1, ptr %1283)
  %1285 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1286 = call i64 @fwrite(ptr nonnull @.str.157, i64 23, i64 1, ptr %1285)
  %1287 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1288 = load ptr, ptr @stats, align 8, !tbaa !6
  %1289 = getelementptr inbounds i8, ptr %1288, i64 1384
  %1290 = load i32, ptr %1289, align 8, !tbaa !20
  %1291 = sitofp i32 %1290 to float
  %1292 = sitofp i32 %5 to float
  %1293 = fdiv float %1291, %1292
  %1294 = fpext float %1293 to double
  %1295 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1287, ptr noundef nonnull @.str.158, double noundef %1294) #19
  %1296 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1297 = load ptr, ptr @stats, align 8, !tbaa !6
  %1298 = getelementptr inbounds i8, ptr %1297, i64 1376
  %1299 = load i32, ptr %1298, align 8, !tbaa !20
  %1300 = sitofp i32 %1299 to float
  %1301 = fdiv float %1300, %1084
  %1302 = fpext float %1301 to double
  %1303 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1296, ptr noundef nonnull @.str.158, double noundef %1302) #19
  %1304 = load ptr, ptr @stats, align 8, !tbaa !6
  %1305 = getelementptr inbounds i8, ptr %1304, i64 688
  %1306 = load i32, ptr %1305, align 8, !tbaa !14
  %1307 = icmp ne i32 %1306, 0
  %1308 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1309 = icmp ne i32 %1308, 0
  %1310 = select i1 %1307, i1 %1309, i1 false
  %1311 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %1310, label %1312, label %1319

1312:                                             ; preds = %1277
  %1313 = getelementptr inbounds i8, ptr %1304, i64 1380
  %1314 = load i32, ptr %1313, align 4, !tbaa !20
  %1315 = sitofp i32 %1314 to float
  %1316 = sitofp i32 %1308 to float
  %1317 = fdiv float %1315, %1316
  %1318 = fpext float %1317 to double
  br label %1319

1319:                                             ; preds = %1277, %1312
  %1320 = phi double [ %1318, %1312 ], [ 0.000000e+00, %1277 ]
  %1321 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1311, ptr noundef nonnull @.str.158, double noundef %1320) #19
  %1322 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1323 = call i32 @fputc(i32 10, ptr %1322)
  %1324 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1325 = call i64 @fwrite(ptr nonnull @.str.159, i64 23, i64 1, ptr %1324)
  %1326 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1327 = load ptr, ptr @stats, align 8, !tbaa !6
  %1328 = getelementptr inbounds i8, ptr %1327, i64 1364
  %1329 = load i32, ptr %1328, align 4, !tbaa !20
  %1330 = sitofp i32 %1329 to float
  %1331 = fdiv float %1330, %1292
  %1332 = fpext float %1331 to double
  %1333 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1326, ptr noundef nonnull @.str.158, double noundef %1332) #19
  %1334 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1335 = load ptr, ptr @stats, align 8, !tbaa !6
  %1336 = getelementptr inbounds i8, ptr %1335, i64 1356
  %1337 = load i32, ptr %1336, align 4, !tbaa !20
  %1338 = sitofp i32 %1337 to float
  %1339 = fdiv float %1338, %1084
  %1340 = fpext float %1339 to double
  %1341 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1334, ptr noundef nonnull @.str.158, double noundef %1340) #19
  %1342 = load ptr, ptr @stats, align 8, !tbaa !6
  %1343 = getelementptr inbounds i8, ptr %1342, i64 688
  %1344 = load i32, ptr %1343, align 8, !tbaa !14
  %1345 = icmp ne i32 %1344, 0
  %1346 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1347 = icmp ne i32 %1346, 0
  %1348 = select i1 %1345, i1 %1347, i1 false
  %1349 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %1348, label %1350, label %1357

1350:                                             ; preds = %1319
  %1351 = getelementptr inbounds i8, ptr %1342, i64 1360
  %1352 = load i32, ptr %1351, align 4, !tbaa !20
  %1353 = sitofp i32 %1352 to float
  %1354 = sitofp i32 %1346 to float
  %1355 = fdiv float %1353, %1354
  %1356 = fpext float %1355 to double
  br label %1357

1357:                                             ; preds = %1319, %1350
  %1358 = phi double [ %1356, %1350 ], [ 0.000000e+00, %1319 ]
  %1359 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1349, ptr noundef nonnull @.str.158, double noundef %1358) #19
  %1360 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1361 = call i32 @fputc(i32 10, ptr %1360)
  %1362 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1363 = call i64 @fwrite(ptr nonnull @.str.160, i64 23, i64 1, ptr %1362)
  %1364 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1365 = call i64 @fwrite(ptr nonnull @.str.161, i64 17, i64 1, ptr %1364)
  %1366 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1367 = fpext float %1164 to double
  %1368 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1366, ptr noundef nonnull @.str.158, double noundef %1367) #19
  %1369 = load ptr, ptr @stats, align 8, !tbaa !6
  %1370 = getelementptr inbounds i8, ptr %1369, i64 688
  %1371 = load i32, ptr %1370, align 8, !tbaa !14
  %1372 = icmp ne i32 %1371, 0
  %1373 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1374 = icmp ne i32 %1373, 0
  %1375 = select i1 %1372, i1 %1374, i1 false
  %1376 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1377 = fpext float %1278 to double
  %1378 = select i1 %1375, double %1377, double 0.000000e+00
  %1379 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1376, ptr noundef nonnull @.str.158, double noundef %1378) #19
  %1380 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1381 = call i32 @fputc(i32 10, ptr %1380)
  %1382 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1383 = call i64 @fwrite(ptr nonnull @.str.162, i64 23, i64 1, ptr %1382)
  %1384 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1385 = load ptr, ptr @stats, align 8, !tbaa !6
  %1386 = getelementptr inbounds i8, ptr %1385, i64 1404
  %1387 = load i32, ptr %1386, align 4, !tbaa !20
  %1388 = sitofp i32 %1387 to float
  %1389 = fdiv float %1388, %1292
  %1390 = fpext float %1389 to double
  %1391 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1384, ptr noundef nonnull @.str.158, double noundef %1390) #19
  %1392 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1393 = load ptr, ptr @stats, align 8, !tbaa !6
  %1394 = getelementptr inbounds i8, ptr %1393, i64 1396
  %1395 = load i32, ptr %1394, align 4, !tbaa !20
  %1396 = sitofp i32 %1395 to float
  %1397 = fdiv float %1396, %1084
  %1398 = fpext float %1397 to double
  %1399 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1392, ptr noundef nonnull @.str.158, double noundef %1398) #19
  %1400 = load ptr, ptr @stats, align 8, !tbaa !6
  %1401 = getelementptr inbounds i8, ptr %1400, i64 688
  %1402 = load i32, ptr %1401, align 8, !tbaa !14
  %1403 = icmp ne i32 %1402, 0
  %1404 = icmp ne i32 %10, 0
  %1405 = select i1 %1403, i1 %1404, i1 false
  %1406 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %1405, label %1407, label %1414

1407:                                             ; preds = %1357
  %1408 = getelementptr inbounds i8, ptr %1400, i64 1400
  %1409 = load i32, ptr %1408, align 4, !tbaa !20
  %1410 = sitofp i32 %1409 to float
  %1411 = sitofp i32 %10 to float
  %1412 = fdiv float %1410, %1411
  %1413 = fpext float %1412 to double
  br label %1414

1414:                                             ; preds = %1357, %1407
  %1415 = phi double [ %1413, %1407 ], [ 0.000000e+00, %1357 ]
  %1416 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1406, ptr noundef nonnull @.str.158, double noundef %1415) #19
  %1417 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1418 = call i32 @fputc(i32 10, ptr %1417)
  %1419 = load ptr, ptr @stats, align 8, !tbaa !6
  %1420 = getelementptr inbounds i8, ptr %1419, i64 688
  %1421 = load i32, ptr %1420, align 8, !tbaa !14
  %1422 = icmp ne i32 %1421, 0
  %1423 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1424 = icmp ne i32 %1423, 0
  %1425 = select i1 %1422, i1 %1424, i1 false
  %1426 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1427 = getelementptr inbounds i8, ptr %1419, i64 1416
  %1428 = getelementptr inbounds i8, ptr %1419, i64 1424
  %1429 = load i32, ptr %1428, align 8, !tbaa !20
  %1430 = sitofp i32 %1429 to float
  %1431 = fdiv float %1430, %1292
  %1432 = fpext float %1431 to double
  %1433 = load i32, ptr %1427, align 8, !tbaa !20
  %1434 = sitofp i32 %1433 to float
  %1435 = uitofp nneg i32 %9 to float
  %1436 = fdiv float %1434, %1435
  %1437 = fpext float %1436 to double
  br i1 %1425, label %1438, label %1445

1438:                                             ; preds = %1414
  %1439 = getelementptr inbounds i8, ptr %1419, i64 1420
  %1440 = load i32, ptr %1439, align 4, !tbaa !20
  %1441 = sitofp i32 %1440 to float
  %1442 = sitofp i32 %1423 to float
  %1443 = fdiv float %1441, %1442
  %1444 = fpext float %1443 to double
  br label %1445

1445:                                             ; preds = %1414, %1438
  %1446 = phi double [ %1444, %1438 ], [ 0.000000e+00, %1414 ]
  %1447 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1426, ptr noundef nonnull @.str.163, double noundef %1432, double noundef %1437, double noundef %1446) #19
  %1448 = load ptr, ptr @stats, align 8, !tbaa !6
  %1449 = getelementptr inbounds i8, ptr %1448, i64 688
  %1450 = load i32, ptr %1449, align 8, !tbaa !14
  %1451 = icmp ne i32 %1450, 0
  %1452 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1453 = icmp ne i32 %1452, 0
  %1454 = select i1 %1451, i1 %1453, i1 false
  %1455 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1456 = getelementptr inbounds i8, ptr %1448, i64 1436
  %1457 = getelementptr inbounds i8, ptr %1448, i64 1444
  %1458 = load i32, ptr %1457, align 4, !tbaa !20
  %1459 = sitofp i32 %1458 to float
  %1460 = fdiv float %1459, %1292
  %1461 = fpext float %1460 to double
  %1462 = load i32, ptr %1456, align 4, !tbaa !20
  %1463 = sitofp i32 %1462 to float
  %1464 = uitofp nneg i32 %9 to float
  %1465 = fdiv float %1463, %1464
  %1466 = fpext float %1465 to double
  br i1 %1454, label %1467, label %1474

1467:                                             ; preds = %1445
  %1468 = getelementptr inbounds i8, ptr %1448, i64 1440
  %1469 = load i32, ptr %1468, align 4, !tbaa !20
  %1470 = sitofp i32 %1469 to float
  %1471 = sitofp i32 %1452 to float
  %1472 = fdiv float %1470, %1471
  %1473 = fpext float %1472 to double
  br label %1474

1474:                                             ; preds = %1445, %1467
  %1475 = phi double [ %1473, %1467 ], [ 0.000000e+00, %1445 ]
  %1476 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1455, ptr noundef nonnull @.str.164, double noundef %1461, double noundef %1466, double noundef %1475) #19
  %1477 = load ptr, ptr @stats, align 8, !tbaa !6
  %1478 = getelementptr inbounds i8, ptr %1477, i64 688
  %1479 = load i32, ptr %1478, align 8, !tbaa !14
  %1480 = icmp ne i32 %1479, 0
  %1481 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1482 = icmp ne i32 %1481, 0
  %1483 = select i1 %1480, i1 %1482, i1 false
  %1484 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1485 = getelementptr inbounds i8, ptr %1477, i64 1456
  %1486 = getelementptr inbounds i8, ptr %1477, i64 1464
  %1487 = load i32, ptr %1486, align 8, !tbaa !20
  %1488 = sitofp i32 %1487 to float
  %1489 = fdiv float %1488, %1292
  %1490 = fpext float %1489 to double
  %1491 = load i32, ptr %1485, align 8, !tbaa !20
  %1492 = sitofp i32 %1491 to float
  %1493 = uitofp nneg i32 %9 to float
  %1494 = fdiv float %1492, %1493
  %1495 = fpext float %1494 to double
  br i1 %1483, label %1496, label %1503

1496:                                             ; preds = %1474
  %1497 = getelementptr inbounds i8, ptr %1477, i64 1460
  %1498 = load i32, ptr %1497, align 4, !tbaa !20
  %1499 = sitofp i32 %1498 to float
  %1500 = sitofp i32 %1481 to float
  %1501 = fdiv float %1499, %1500
  %1502 = fpext float %1501 to double
  br label %1503

1503:                                             ; preds = %1474, %1496
  %1504 = phi double [ %1502, %1496 ], [ 0.000000e+00, %1474 ]
  %1505 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1484, ptr noundef nonnull @.str.165, double noundef %1490, double noundef %1495, double noundef %1504) #19
  %1506 = load ptr, ptr @stats, align 8, !tbaa !6
  %1507 = getelementptr inbounds i8, ptr %1506, i64 688
  %1508 = load i32, ptr %1507, align 8, !tbaa !14
  %1509 = icmp ne i32 %1508, 0
  %1510 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1511 = icmp ne i32 %1510, 0
  %1512 = select i1 %1509, i1 %1511, i1 false
  %1513 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1514 = getelementptr inbounds i8, ptr %1506, i64 1336
  %1515 = getelementptr inbounds i8, ptr %1506, i64 1344
  %1516 = load i32, ptr %1515, align 8, !tbaa !20
  %1517 = sitofp i32 %1516 to float
  %1518 = fdiv float %1517, %1292
  %1519 = fpext float %1518 to double
  %1520 = load i32, ptr %1514, align 8, !tbaa !20
  %1521 = sitofp i32 %1520 to float
  %1522 = uitofp nneg i32 %9 to float
  %1523 = fdiv float %1521, %1522
  %1524 = fpext float %1523 to double
  br i1 %1512, label %1525, label %1532

1525:                                             ; preds = %1503
  %1526 = getelementptr inbounds i8, ptr %1506, i64 1340
  %1527 = load i32, ptr %1526, align 4, !tbaa !20
  %1528 = sitofp i32 %1527 to float
  %1529 = sitofp i32 %1510 to float
  %1530 = fdiv float %1528, %1529
  %1531 = fpext float %1530 to double
  br label %1532

1532:                                             ; preds = %1503, %1525
  %1533 = phi double [ %1531, %1525 ], [ 0.000000e+00, %1503 ]
  %1534 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1513, ptr noundef nonnull @.str.166, double noundef %1519, double noundef %1524, double noundef %1533) #19
  %1535 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1536 = call i64 @fwrite(ptr nonnull @.str.156, i64 75, i64 1, ptr %1535)
  %1537 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1538 = call i64 @fwrite(ptr nonnull @.str.167, i64 23, i64 1, ptr %1537)
  %1539 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1540 = sitofp i32 %206 to float
  %1541 = fdiv float %1540, %1292
  %1542 = fpext float %1541 to double
  %1543 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1539, ptr noundef nonnull @.str.158, double noundef %1542) #19
  %1544 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1545 = sitofp i32 %76 to float
  %1546 = fdiv float %1545, %1522
  %1547 = fpext float %1546 to double
  %1548 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1544, ptr noundef nonnull @.str.158, double noundef %1547) #19
  %1549 = load ptr, ptr @stats, align 8, !tbaa !6
  %1550 = getelementptr inbounds i8, ptr %1549, i64 688
  %1551 = load i32, ptr %1550, align 8, !tbaa !14
  %1552 = icmp ne i32 %1551, 0
  %1553 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1554 = icmp ne i32 %1553, 0
  %1555 = select i1 %1552, i1 %1554, i1 false
  %1556 = load ptr, ptr @p_stat, align 8, !tbaa !6
  br i1 %1555, label %1557, label %1562

1557:                                             ; preds = %1532
  %1558 = sitofp i32 %141 to float
  %1559 = sitofp i32 %1553 to float
  %1560 = fdiv float %1558, %1559
  %1561 = fpext float %1560 to double
  br label %1562

1562:                                             ; preds = %1532, %1557
  %1563 = phi double [ %1561, %1557 ], [ 0.000000e+00, %1532 ]
  %1564 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1556, ptr noundef nonnull @.str.158, double noundef %1563) #19
  %1565 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1566 = call i32 @fputc(i32 10, ptr %1565)
  %1567 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1568 = call i64 @fwrite(ptr nonnull @.str.156, i64 75, i64 1, ptr %1567)
  %1569 = load ptr, ptr @p_stat, align 8, !tbaa !6
  %1570 = call signext i32 @fclose(ptr noundef %1569)
  %1571 = call ptr @fopen64(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.5) #19
  store ptr %1571, ptr @p_log, align 8, !tbaa !6
  %1572 = icmp eq ptr %1571, null
  br i1 %1572, label %1573, label %1588

1573:                                             ; preds = %1562
  %1574 = call ptr @fopen64(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.6) #19
  store ptr %1574, ptr @p_log, align 8, !tbaa !6
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1576, label %1578

1576:                                             ; preds = %1573
  %1577 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.168) #19
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #19
  br label %1594

1578:                                             ; preds = %1573
  %1579 = call i64 @fwrite(ptr nonnull @.str.169, i64 297, i64 1, ptr nonnull %1574)
  %1580 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1581 = call i64 @fwrite(ptr nonnull @.str.170, i64 297, i64 1, ptr %1580)
  %1582 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1583 = call i64 @fwrite(ptr nonnull @.str.169, i64 297, i64 1, ptr %1582)
  %1584 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1585 = call i64 @fwrite(ptr nonnull @.str.171, i64 297, i64 1, ptr %1584)
  %1586 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1587 = call i64 @fwrite(ptr nonnull @.str.169, i64 297, i64 1, ptr %1586)
  br label %1594

1588:                                             ; preds = %1562
  %1589 = call signext i32 @fclose(ptr noundef nonnull %1571)
  %1590 = call ptr @fopen64(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.6) #19
  store ptr %1590, ptr @p_log, align 8, !tbaa !6
  %1591 = icmp eq ptr %1590, null
  br i1 %1591, label %1592, label %1594

1592:                                             ; preds = %1588
  %1593 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.168) #19
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #19
  br label %1594

1594:                                             ; preds = %1588, %1592, %1576, %1578
  %1595 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1596 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1595, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #19
  %1597 = call i64 @time(ptr noundef null) #19
  store i64 %1597, ptr %2, align 8, !tbaa !136
  %1598 = call i64 @time(ptr noundef nonnull %2) #19
  %1599 = call ptr @localtime(ptr noundef nonnull %2) #19
  %1600 = call i64 @strftime(ptr noundef nonnull %3, i64 noundef 1000, ptr noundef nonnull @.str.15, ptr noundef %1599) #19
  %1601 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1602 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1601, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #19
  %1603 = call i64 @strftime(ptr noundef nonnull %3, i64 noundef 1000, ptr noundef nonnull @.str.17, ptr noundef %1599) #19
  %1604 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1605 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1604, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #19
  %1606 = load ptr, ptr @input, align 8, !tbaa !6
  %1607 = getelementptr inbounds i8, ptr %1606, i64 228
  br label %1608

1608:                                             ; preds = %1594, %1608
  %1609 = phi i64 [ 0, %1594 ], [ %1621, %1608 ]
  %1610 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1607) #22
  %1611 = trunc i64 %1610 to i32
  %1612 = icmp slt i32 %1611, 30
  %1613 = add i64 %1610, 4294967266
  %1614 = select i1 %1612, i64 0, i64 %1613
  %1615 = add i64 %1614, %1609
  %1616 = shl i64 %1615, 32
  %1617 = ashr exact i64 %1616, 32
  %1618 = getelementptr inbounds [200 x i8], ptr %1607, i64 0, i64 %1617
  %1619 = load i8, ptr %1618, align 1, !tbaa !117
  %1620 = getelementptr inbounds [30 x i8], ptr %1, i64 0, i64 %1609
  store i8 %1619, ptr %1620, align 1, !tbaa !117
  %1621 = add nuw nsw i64 %1609, 1
  %1622 = icmp eq i64 %1621, 30
  br i1 %1622, label %1623, label %1608

1623:                                             ; preds = %1608
  %1624 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1625 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1624, ptr noundef nonnull @.str.173, ptr noundef nonnull %1) #19
  %1626 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1627 = load ptr, ptr @input, align 8, !tbaa !6
  %1628 = getelementptr inbounds i8, ptr %1627, i64 8
  %1629 = load i32, ptr %1628, align 8, !tbaa !44
  %1630 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1626, ptr noundef nonnull @.str.174, i32 noundef signext %1629) #19
  %1631 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1632 = load ptr, ptr @input, align 8, !tbaa !6
  %1633 = getelementptr inbounds i8, ptr %1632, i64 3552
  %1634 = load i32, ptr %1633, align 8, !tbaa !28
  %1635 = getelementptr inbounds i8, ptr %1632, i64 3556
  %1636 = load i32, ptr %1635, align 4, !tbaa !29
  %1637 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1631, ptr noundef nonnull @.str.21, i32 noundef signext %1634, i32 noundef signext %1636) #19
  %1638 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1639 = load ptr, ptr @input, align 8, !tbaa !6
  %1640 = getelementptr inbounds i8, ptr %1639, i64 12
  %1641 = load i32, ptr %1640, align 4, !tbaa !153
  %1642 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1638, ptr noundef nonnull @.str.175, i32 noundef signext %1641) #19
  %1643 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1644 = load ptr, ptr @input, align 8, !tbaa !6
  %1645 = getelementptr inbounds i8, ptr %1644, i64 16
  %1646 = load i32, ptr %1645, align 8, !tbaa !154
  %1647 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1643, ptr noundef nonnull @.str.175, i32 noundef signext %1646) #19
  %1648 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1649 = load ptr, ptr @input, align 8, !tbaa !6
  %1650 = getelementptr inbounds i8, ptr %1649, i64 1248
  %1651 = load i32, ptr %1650, align 8, !tbaa !155
  %1652 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1648, ptr noundef nonnull @.str.175, i32 noundef signext %1651) #19
  %1653 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1654 = load ptr, ptr @input, align 8, !tbaa !6
  %1655 = getelementptr inbounds i8, ptr %1654, i64 68
  %1656 = load i32, ptr %1655, align 4, !tbaa !103
  %1657 = getelementptr inbounds i8, ptr %1654, i64 72
  %1658 = load i32, ptr %1657, align 8, !tbaa !105
  %1659 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1653, ptr noundef nonnull @.str.176, i32 noundef signext %1656, i32 noundef signext %1658) #19
  %1660 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1661 = load ptr, ptr @input, align 8, !tbaa !6
  %1662 = getelementptr inbounds i8, ptr %1661, i64 1228
  %1663 = load i32, ptr %1662, align 4, !tbaa !49
  %1664 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1660, ptr noundef nonnull @.str.177, i32 noundef signext %1663) #19
  %1665 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1666 = load ptr, ptr @stats, align 8, !tbaa !6
  %1667 = getelementptr inbounds i8, ptr %1666, i64 688
  %1668 = load i32, ptr %1667, align 8, !tbaa !14
  %1669 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1665, ptr noundef nonnull @.str.20, i32 noundef signext %1668) #19
  %1670 = load ptr, ptr @input, align 8, !tbaa !6
  %1671 = getelementptr inbounds i8, ptr %1670, i64 3964
  %1672 = load i32, ptr %1671, align 4, !tbaa !40
  %1673 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1674 = add i32 %1672, -1
  %1675 = icmp ult i32 %1674, 3
  br i1 %1675, label %1676, label %1680

1676:                                             ; preds = %1623
  %1677 = zext nneg i32 %1674 to i64
  %1678 = getelementptr inbounds [3 x ptr], ptr @switch.table.report, i64 0, i64 %1677
  %1679 = load ptr, ptr %1678, align 8
  br label %1680

1680:                                             ; preds = %1623, %1676
  %1681 = phi ptr [ %1679, %1676 ], [ @.str.181, %1623 ]
  %1682 = call i64 @fwrite(ptr nonnull %1681, i64 7, i64 1, ptr %1673)
  %1683 = load ptr, ptr @input, align 8, !tbaa !6
  %1684 = getelementptr inbounds i8, ptr %1683, i64 24
  %1685 = load i32, ptr %1684, align 8, !tbaa !147
  %1686 = icmp eq i32 %1685, 1
  %1687 = select i1 %1686, ptr @.str.183, ptr @.str.181
  %1688 = icmp eq i32 %1685, 2
  %1689 = select i1 %1688, ptr @.str.182, ptr %1687
  %1690 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1691 = call i64 @fwrite(ptr nonnull %1689, i64 7, i64 1, ptr %1690)
  %1692 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1693 = load ptr, ptr @input, align 8, !tbaa !6
  %1694 = getelementptr inbounds i8, ptr %1693, i64 32
  %1695 = load i32, ptr %1694, align 8, !tbaa !149
  %1696 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1692, ptr noundef nonnull @.str.184, i32 noundef signext %1695) #19
  %1697 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1698 = load ptr, ptr @input, align 8, !tbaa !6
  %1699 = getelementptr inbounds i8, ptr %1698, i64 36
  %1700 = load i32, ptr %1699, align 4, !tbaa !96
  %1701 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1697, ptr noundef nonnull @.str.185, i32 noundef signext %1700) #19
  %1702 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1703 = load ptr, ptr @img, align 8, !tbaa !6
  %1704 = getelementptr inbounds i8, ptr %1703, i64 48
  %1705 = load float, ptr %1704, align 8, !tbaa !100
  %1706 = load ptr, ptr @stats, align 8, !tbaa !6
  %1707 = getelementptr inbounds i8, ptr %1706, i64 688
  %1708 = load i32, ptr %1707, align 8, !tbaa !14
  %1709 = add nsw i32 %1708, 1
  %1710 = sitofp i32 %1709 to float
  %1711 = fmul float %1705, %1710
  %1712 = load ptr, ptr @input, align 8, !tbaa !6
  %1713 = getelementptr inbounds i8, ptr %1712, i64 20
  %1714 = load i32, ptr %1713, align 4, !tbaa !43
  %1715 = add nsw i32 %1714, 1
  %1716 = sitofp i32 %1715 to float
  %1717 = fdiv float %1711, %1716
  %1718 = fpext float %1717 to double
  %1719 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1702, ptr noundef nonnull @.str.186, double noundef %1718) #19
  %1720 = load ptr, ptr @input, align 8, !tbaa !6
  %1721 = getelementptr inbounds i8, ptr %1720, i64 2984
  %1722 = load i32, ptr %1721, align 8, !tbaa !159
  %1723 = icmp eq i32 %1722, 0
  %1724 = select i1 %1723, ptr @.str.187, ptr @.str.188
  %1725 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1726 = call i64 @fwrite(ptr nonnull %1724, i64 7, i64 1, ptr %1725)
  %1727 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1728 = load ptr, ptr @input, align 8, !tbaa !6
  %1729 = getelementptr inbounds i8, ptr %1728, i64 3136
  %1730 = load i32, ptr %1729, align 8, !tbaa !128
  %1731 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1727, ptr noundef nonnull @.str.189, i32 noundef signext %1730) #19
  %1732 = load ptr, ptr @input, align 8, !tbaa !6
  %1733 = getelementptr inbounds i8, ptr %1732, i64 80
  %1734 = load i32, ptr %1733, align 8, !tbaa !148
  %1735 = icmp eq i32 %1734, 1
  %1736 = select i1 %1735, ptr @.str.190, ptr @.str.191
  %1737 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1738 = call i64 @fwrite(ptr nonnull %1736, i64 10, i64 1, ptr %1737)
  %1739 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1740 = load ptr, ptr @input, align 8, !tbaa !6
  %1741 = getelementptr inbounds i8, ptr %1740, i64 3892
  %1742 = load i32, ptr %1741, align 4, !tbaa !135
  %1743 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1739, ptr noundef nonnull @.str.192, i32 noundef signext %1742) #19
  %1744 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1745 = load ptr, ptr @snr, align 8, !tbaa !6
  %1746 = getelementptr inbounds i8, ptr %1745, i64 12
  %1747 = load float, ptr %1746, align 4, !tbaa !176
  %1748 = fpext float %1747 to double
  %1749 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1744, ptr noundef nonnull @.str.193, double noundef %1748) #19
  %1750 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1751 = load ptr, ptr @snr, align 8, !tbaa !6
  %1752 = getelementptr inbounds i8, ptr %1751, i64 16
  %1753 = load float, ptr %1752, align 4, !tbaa !177
  %1754 = fpext float %1753 to double
  %1755 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1750, ptr noundef nonnull @.str.193, double noundef %1754) #19
  %1756 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1757 = load ptr, ptr @snr, align 8, !tbaa !6
  %1758 = getelementptr inbounds i8, ptr %1757, i64 20
  %1759 = load float, ptr %1758, align 4, !tbaa !178
  %1760 = fpext float %1759 to double
  %1761 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1756, ptr noundef nonnull @.str.193, double noundef %1760) #19
  %1762 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1763 = load ptr, ptr @snr, align 8, !tbaa !6
  %1764 = getelementptr inbounds i8, ptr %1763, i64 84
  %1765 = load float, ptr %1764, align 4, !tbaa !171
  %1766 = fpext float %1765 to double
  %1767 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1762, ptr noundef nonnull @.str.193, double noundef %1766) #19
  %1768 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1769 = load ptr, ptr @snr, align 8, !tbaa !6
  %1770 = getelementptr inbounds i8, ptr %1769, i64 88
  %1771 = load float, ptr %1770, align 4, !tbaa !172
  %1772 = fpext float %1771 to double
  %1773 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1768, ptr noundef nonnull @.str.193, double noundef %1772) #19
  %1774 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1775 = load ptr, ptr @snr, align 8, !tbaa !6
  %1776 = getelementptr inbounds i8, ptr %1775, i64 92
  %1777 = load float, ptr %1776, align 4, !tbaa !173
  %1778 = fpext float %1777 to double
  %1779 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1774, ptr noundef nonnull @.str.193, double noundef %1778) #19
  %1780 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1781 = load ptr, ptr @stats, align 8, !tbaa !6
  %1782 = getelementptr inbounds i8, ptr %1781, i64 724
  %1783 = load float, ptr %1782, align 4, !tbaa !144
  %1784 = fpext float %1783 to double
  %1785 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1780, ptr noundef nonnull @.str.194, double noundef %1784) #19
  %1786 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1787 = load ptr, ptr @stats, align 8, !tbaa !6
  %1788 = getelementptr inbounds i8, ptr %1787, i64 728
  %1789 = load float, ptr %1788, align 8, !tbaa !145
  %1790 = fpext float %1789 to double
  %1791 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1786, ptr noundef nonnull @.str.194, double noundef %1790) #19
  %1792 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1793 = load ptr, ptr @stats, align 8, !tbaa !6
  %1794 = getelementptr inbounds i8, ptr %1793, i64 732
  %1795 = load float, ptr %1794, align 4, !tbaa !146
  %1796 = fpext float %1795 to double
  %1797 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1792, ptr noundef nonnull @.str.194, double noundef %1796) #19
  %1798 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1799 = load ptr, ptr @stats, align 8, !tbaa !6
  %1800 = getelementptr inbounds i8, ptr %1799, i64 12
  %1801 = load float, ptr %1800, align 4, !tbaa !174
  %1802 = fpext float %1801 to double
  %1803 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1798, ptr noundef nonnull @.str.195, double noundef %1802) #19
  %1804 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1805 = load i32, ptr @tot_time, align 4, !tbaa !20
  %1806 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1804, ptr noundef nonnull @.str.196, i32 noundef signext %1805) #19
  %1807 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1808 = load i32, ptr @me_tot_time, align 4, !tbaa !20
  %1809 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1807, ptr noundef nonnull @.str.197, i32 noundef signext %1808) #19
  %1810 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1811 = call signext i32 @fclose(ptr noundef %1810)
  %1812 = call ptr @fopen64(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.6) #19
  store ptr %1812, ptr @p_log, align 8, !tbaa !6
  %1813 = load ptr, ptr @stats, align 8, !tbaa !6
  %1814 = getelementptr inbounds i8, ptr %1813, i64 688
  %1815 = load i32, ptr %1814, align 8, !tbaa !14
  %1816 = icmp ne i32 %1815, 0
  %1817 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1816, i1 %1818, i1 false
  %1820 = load ptr, ptr @input, align 8, !tbaa !6
  %1821 = getelementptr inbounds i8, ptr %1820, i64 8
  %1822 = load i32, ptr %1821, align 8, !tbaa !44
  br i1 %1819, label %1823, label %1863

1823:                                             ; preds = %1680
  %1824 = getelementptr inbounds i8, ptr %1820, i64 12
  %1825 = load i32, ptr %1824, align 4, !tbaa !153
  %1826 = getelementptr inbounds i8, ptr %1820, i64 16
  %1827 = load i32, ptr %1826, align 8, !tbaa !154
  %1828 = load ptr, ptr @snr, align 8, !tbaa !6
  %1829 = getelementptr inbounds i8, ptr %1828, i64 12
  %1830 = load float, ptr %1829, align 4, !tbaa !176
  %1831 = fpext float %1830 to double
  %1832 = getelementptr inbounds i8, ptr %1828, i64 16
  %1833 = load float, ptr %1832, align 4, !tbaa !177
  %1834 = fpext float %1833 to double
  %1835 = getelementptr inbounds i8, ptr %1828, i64 20
  %1836 = load float, ptr %1835, align 4, !tbaa !178
  %1837 = fpext float %1836 to double
  %1838 = getelementptr inbounds i8, ptr %1813, i64 712
  %1839 = load i32, ptr %1838, align 8, !tbaa !17
  %1840 = getelementptr inbounds i8, ptr %1828, i64 84
  %1841 = load float, ptr %1840, align 4, !tbaa !171
  %1842 = fpext float %1841 to double
  %1843 = getelementptr inbounds i8, ptr %1828, i64 88
  %1844 = load float, ptr %1843, align 4, !tbaa !172
  %1845 = fpext float %1844 to double
  %1846 = getelementptr inbounds i8, ptr %1828, i64 92
  %1847 = load float, ptr %1846, align 4, !tbaa !173
  %1848 = fpext float %1847 to double
  %1849 = getelementptr inbounds i8, ptr %1813, i64 16
  %1850 = load i32, ptr %1849, align 8, !tbaa !182
  %1851 = add nsw i32 %1850, %1839
  %1852 = add nsw i32 %1822, %1817
  %1853 = sdiv i32 %1851, %1852
  %1854 = getelementptr inbounds i8, ptr %1813, i64 720
  %1855 = load i32, ptr %1854, align 8, !tbaa !19
  %1856 = sdiv i32 %1855, %1817
  %1857 = load i32, ptr @tot_time, align 4, !tbaa !20
  %1858 = sitofp i32 %1857 to double
  %1859 = fmul double %1858, 1.000000e-03
  %1860 = sitofp i32 %1852 to double
  %1861 = fdiv double %1859, %1860
  %1862 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1812, ptr noundef nonnull @.str.199, i32 noundef signext %1822, i32 noundef signext %1825, i32 noundef signext %1827, double noundef %1831, double noundef %1834, double noundef %1837, i32 noundef signext %1839, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef signext 0, double noundef %1842, double noundef %1845, double noundef %1848, i32 noundef signext %1853, i32 noundef signext %1856, double noundef %1861) #19
  br label %1901

1863:                                             ; preds = %1680
  %1864 = icmp eq i32 %1822, 0
  br i1 %1864, label %1901, label %1865

1865:                                             ; preds = %1863
  %1866 = getelementptr inbounds i8, ptr %1820, i64 12
  %1867 = load i32, ptr %1866, align 4, !tbaa !153
  %1868 = getelementptr inbounds i8, ptr %1820, i64 16
  %1869 = load i32, ptr %1868, align 8, !tbaa !154
  %1870 = load ptr, ptr @snr, align 8, !tbaa !6
  %1871 = getelementptr inbounds i8, ptr %1870, i64 12
  %1872 = load float, ptr %1871, align 4, !tbaa !176
  %1873 = fpext float %1872 to double
  %1874 = getelementptr inbounds i8, ptr %1870, i64 16
  %1875 = load float, ptr %1874, align 4, !tbaa !177
  %1876 = fpext float %1875 to double
  %1877 = getelementptr inbounds i8, ptr %1870, i64 20
  %1878 = load float, ptr %1877, align 4, !tbaa !178
  %1879 = fpext float %1878 to double
  %1880 = getelementptr inbounds i8, ptr %1813, i64 712
  %1881 = load i32, ptr %1880, align 8, !tbaa !17
  %1882 = getelementptr inbounds i8, ptr %1870, i64 84
  %1883 = load float, ptr %1882, align 4, !tbaa !171
  %1884 = fpext float %1883 to double
  %1885 = getelementptr inbounds i8, ptr %1870, i64 88
  %1886 = load float, ptr %1885, align 4, !tbaa !172
  %1887 = fpext float %1886 to double
  %1888 = getelementptr inbounds i8, ptr %1870, i64 92
  %1889 = load float, ptr %1888, align 4, !tbaa !173
  %1890 = fpext float %1889 to double
  %1891 = getelementptr inbounds i8, ptr %1813, i64 16
  %1892 = load i32, ptr %1891, align 8, !tbaa !182
  %1893 = add nsw i32 %1892, %1881
  %1894 = sdiv i32 %1893, %1822
  %1895 = load i32, ptr @tot_time, align 4, !tbaa !20
  %1896 = sitofp i32 %1895 to double
  %1897 = fmul double %1896, 1.000000e-03
  %1898 = sitofp i32 %1822 to double
  %1899 = fdiv double %1897, %1898
  %1900 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1812, ptr noundef nonnull @.str.199, i32 noundef signext %1822, i32 noundef signext %1867, i32 noundef signext %1869, double noundef %1873, double noundef %1876, double noundef %1879, i32 noundef signext %1881, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef signext 0, double noundef %1884, double noundef %1887, double noundef %1890, i32 noundef signext %1894, i32 noundef signext 0, double noundef %1899) #19
  br label %1901

1901:                                             ; preds = %1863, %1865, %1823
  %1902 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1903 = call signext i32 @fclose(ptr noundef %1902)
  %1904 = load ptr, ptr @input, align 8, !tbaa !6
  %1905 = getelementptr inbounds i8, ptr %1904, i64 3896
  %1906 = load i32, ptr %1905, align 8, !tbaa !62
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1917, label %1908

1908:                                             ; preds = %1901
  %1909 = call ptr @fopen64(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #19
  store ptr %1909, ptr @p_log, align 8, !tbaa !6
  %1910 = icmp eq ptr %1909, null
  br i1 %1910, label %1911, label %1913

1911:                                             ; preds = %1908
  %1912 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #19
  br label %1917

1913:                                             ; preds = %1908
  %1914 = call i64 @fwrite(ptr nonnull @.str.9, i64 468, i64 1, ptr nonnull %1909)
  %1915 = load ptr, ptr @p_log, align 8, !tbaa !6
  %1916 = call signext i32 @fclose(ptr noundef %1915)
  br label %1917

1917:                                             ; preds = %1911, %1913, %1901
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %1) #19
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_picture(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free_slice_list(ptr noundef nonnull %0) #19
  tail call void @free(ptr noundef nonnull %0) #19
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

declare dso_local void @free_dpb() local_unnamed_addr #3

declare dso_local void @free_colocated(ptr noundef) local_unnamed_addr #3

declare dso_local void @uninit_out_buffer() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @free_global_buffers() local_unnamed_addr #1 {
  %1 = load ptr, ptr @last_P_no_frm, align 8, !tbaa !6
  tail call void @free(ptr noundef %1) #19
  %2 = load ptr, ptr @last_P_no_fld, align 8, !tbaa !6
  tail call void @free(ptr noundef %2) #19
  tail call void @free_orig_planes()
  %3 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  tail call void @free(ptr noundef %3) #19
  %4 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  tail call void @free(ptr noundef %4) #19
  tail call void @free_QMatrix() #19
  tail call void @free_QOffsets() #19
  %5 = load ptr, ptr @input, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 1904
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %5, i64 1908
  %11 = load i32, ptr %10, align 4, !tbaa !126
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %5, i64 64
  %15 = load i32, ptr %14, align 8, !tbaa !127
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %9, %0
  %18 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  tail call void @free_mem3Dint(ptr noundef %18, i32 noundef signext 6) #19
  %19 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  tail call void @free_mem3Dint(ptr noundef %19, i32 noundef signext 6) #19
  %20 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  tail call void @free_mem4Dint(ptr noundef %20, i32 noundef signext 6, i32 noundef signext 32) #19
  br label %21

21:                                               ; preds = %17, %13
  %22 = load ptr, ptr @stats, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 688
  %24 = load i32, ptr %23, align 8, !tbaa !14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load ptr, ptr @input, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 1940
  %29 = load i32, ptr %28, align 4, !tbaa !27
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  tail call void @free_mem3D(ptr noundef %32, i32 noundef signext 2) #19
  %33 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  tail call void @free_mem2Dshort(ptr noundef %33) #19
  br label %34

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr @img4Y_tmp, align 8, !tbaa !6
  tail call void @free_mem2Dint(ptr noundef %35) #19
  %36 = load ptr, ptr @img, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 104
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  tail call void @free_mem2D(ptr noundef %38) #19
  %39 = load ptr, ptr @img, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 112
  %41 = load ptr, ptr %40, align 8, !tbaa !118
  tail call void @free_mem2D(ptr noundef %41) #19
  %42 = load ptr, ptr @img, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 31576
  %44 = load ptr, ptr %43, align 8, !tbaa !113
  tail call void @free(ptr noundef %44) #19
  %45 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1600), align 8, !tbaa !183
  tail call void @free_mem2D(ptr noundef %45) #19
  %46 = load ptr, ptr @input, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 220
  %48 = load i32, ptr %47, align 4, !tbaa !114
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr @img, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 89192
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  tail call void @free(ptr noundef %53) #19
  %54 = load ptr, ptr @input, align 8, !tbaa !6
  br label %55

55:                                               ; preds = %50, %34
  %56 = phi ptr [ %54, %50 ], [ %46, %34 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 3136
  %58 = load i32, ptr %57, align 8, !tbaa !128
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %165

60:                                               ; preds = %55
  %61 = load ptr, ptr @decs, align 8, !tbaa !6
  %62 = load ptr, ptr %61, align 8, !tbaa !186
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  tail call void @free(ptr noundef %63) #19
  %64 = load ptr, ptr @decs, align 8, !tbaa !6
  %65 = load ptr, ptr %64, align 8, !tbaa !186
  tail call void @free(ptr noundef %65) #19
  %66 = load ptr, ptr @decs, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 32
  %68 = load ptr, ptr %67, align 8, !tbaa !187
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  tail call void @free(ptr noundef %69) #19
  %70 = load ptr, ptr @decs, align 8, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %70, i64 32
  %72 = load ptr, ptr %71, align 8, !tbaa !187
  tail call void @free(ptr noundef %72) #19
  %73 = load ptr, ptr @input, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 3576
  %75 = load i32, ptr %74, align 8, !tbaa !129
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %140

77:                                               ; preds = %60, %128
  %78 = phi i64 [ %134, %128 ], [ 0, %60 ]
  %79 = load ptr, ptr @decs, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %79, i64 8
  %81 = load ptr, ptr %80, align 8, !tbaa !188
  %82 = getelementptr inbounds ptr, ptr %81, i64 %78
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  tail call void @free(ptr noundef %84) #19
  %85 = load ptr, ptr @decs, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !188
  %88 = getelementptr inbounds ptr, ptr %87, i64 %78
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  tail call void @free(ptr noundef %89) #19
  %90 = load ptr, ptr @decs, align 8, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %90, i64 24
  %92 = load ptr, ptr %91, align 8, !tbaa !189
  %93 = getelementptr inbounds ptr, ptr %92, i64 %78
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  tail call void @free(ptr noundef %95) #19
  %96 = load ptr, ptr @decs, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 24
  %98 = load ptr, ptr %97, align 8, !tbaa !189
  %99 = getelementptr inbounds ptr, ptr %98, i64 %78
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  tail call void @free(ptr noundef %100) #19
  %101 = load ptr, ptr @img, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 36
  %103 = load i32, ptr %102, align 4, !tbaa !95
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %77, %105
  %106 = phi i64 [ %122, %105 ], [ 0, %77 ]
  %107 = load ptr, ptr @decs, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 16
  %109 = load ptr, ptr %108, align 8, !tbaa !130
  %110 = getelementptr inbounds ptr, ptr %109, i64 %78
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds ptr, ptr %111, i64 %106
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  tail call void @free(ptr noundef %114) #19
  %115 = load ptr, ptr @decs, align 8, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %115, i64 16
  %117 = load ptr, ptr %116, align 8, !tbaa !130
  %118 = getelementptr inbounds ptr, ptr %117, i64 %78
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds ptr, ptr %119, i64 %106
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  tail call void @free(ptr noundef %121) #19
  %122 = add nuw nsw i64 %106, 1
  %123 = load ptr, ptr @img, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 36
  %125 = load i32, ptr %124, align 4, !tbaa !95
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %106, %126
  br i1 %127, label %105, label %128

128:                                              ; preds = %105, %77
  %129 = load ptr, ptr @decs, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 16
  %131 = load ptr, ptr %130, align 8, !tbaa !130
  %132 = getelementptr inbounds ptr, ptr %131, i64 %78
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  tail call void @free(ptr noundef %133) #19
  %134 = add nuw nsw i64 %78, 1
  %135 = load ptr, ptr @input, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 3576
  %137 = load i32, ptr %136, align 8, !tbaa !129
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %134, %138
  br i1 %139, label %77, label %140

140:                                              ; preds = %128, %60
  %141 = load ptr, ptr @decs, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 8
  %143 = load ptr, ptr %142, align 8, !tbaa !188
  tail call void @free(ptr noundef %143) #19
  %144 = load ptr, ptr @decs, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 24
  %146 = load ptr, ptr %145, align 8, !tbaa !189
  tail call void @free(ptr noundef %146) #19
  %147 = load ptr, ptr @decs, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %147, i64 16
  %149 = load ptr, ptr %148, align 8, !tbaa !130
  tail call void @free(ptr noundef %149) #19
  %150 = load ptr, ptr @decs, align 8, !tbaa !6
  %151 = getelementptr inbounds i8, ptr %150, i64 40
  %152 = load ptr, ptr %151, align 8, !tbaa !190
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  tail call void @free(ptr noundef %153) #19
  %154 = load ptr, ptr @decs, align 8, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %154, i64 40
  %156 = load ptr, ptr %155, align 8, !tbaa !190
  tail call void @free(ptr noundef %156) #19
  %157 = load ptr, ptr @decs, align 8, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %157, i64 48
  %159 = load ptr, ptr %158, align 8, !tbaa !191
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  tail call void @free(ptr noundef %160) #19
  %161 = load ptr, ptr @decs, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 48
  %163 = load ptr, ptr %162, align 8, !tbaa !191
  tail call void @free(ptr noundef %163) #19
  %164 = load ptr, ptr @input, align 8, !tbaa !6
  br label %165

165:                                              ; preds = %140, %55
  %166 = phi ptr [ %164, %140 ], [ %56, %55 ]
  %167 = getelementptr inbounds i8, ptr %166, i64 3580
  %168 = load i32, ptr %167, align 4, !tbaa !132
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  tail call void @free(ptr noundef %172) #19
  %173 = load ptr, ptr @pixel_map, align 8, !tbaa !6
  tail call void @free(ptr noundef %173) #19
  %174 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  tail call void @free(ptr noundef %175) #19
  %176 = load ptr, ptr @refresh_map, align 8, !tbaa !6
  tail call void @free(ptr noundef %176) #19
  br label %177

177:                                              ; preds = %170, %165
  %178 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %179 = getelementptr inbounds i8, ptr %178, i64 1148
  %180 = load i32, ptr %179, align 4, !tbaa !94
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load ptr, ptr @imgY_com, align 8, !tbaa !6
  tail call void @free_mem2Dpel(ptr noundef %183) #19
  %184 = load ptr, ptr @img, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 90548
  %186 = load i32, ptr %185, align 4, !tbaa !72
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %182
  %189 = load ptr, ptr @imgUV_com, align 8, !tbaa !6
  tail call void @free_mem3Dpel(ptr noundef %189, i32 noundef signext 2) #19
  br label %190

190:                                              ; preds = %182, %188, %177
  %191 = load ptr, ptr @img, align 8, !tbaa !6
  %192 = getelementptr inbounds i8, ptr %191, i64 128
  %193 = load ptr, ptr %192, align 8, !tbaa !192
  %194 = getelementptr inbounds i8, ptr %191, i64 90308
  %195 = load i32, ptr %194, align 4, !tbaa !111
  tail call void @free_mem3Dint(ptr noundef %193, i32 noundef signext %195) #19
  %196 = load ptr, ptr @img, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 90504
  %198 = load ptr, ptr %197, align 8, !tbaa !193
  %199 = getelementptr inbounds i8, ptr %196, i64 90492
  %200 = load i32, ptr %199, align 4, !tbaa !75
  tail call void @free_mem2Ddb_offset(ptr noundef %198, i32 noundef signext %200) #19
  %201 = load ptr, ptr @img, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 90512
  %203 = load ptr, ptr %202, align 8, !tbaa !194
  %204 = getelementptr inbounds i8, ptr %201, i64 90492
  %205 = load i32, ptr %204, align 4, !tbaa !75
  tail call void @free_mem2Ddb_offset(ptr noundef %203, i32 noundef signext %205) #19
  %206 = load ptr, ptr @img, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 90520
  %208 = load ptr, ptr %207, align 8, !tbaa !195
  %209 = getelementptr inbounds i8, ptr %206, i64 90492
  %210 = load i32, ptr %209, align 4, !tbaa !75
  tail call void @free_mem2Dint_offset(ptr noundef %208, i32 noundef signext %210) #19
  %211 = load ptr, ptr @input, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %211, i64 3964
  %213 = load i32, ptr %212, align 4, !tbaa !40
  switch i32 %213, label %217 [
    i32 1, label %214
    i32 2, label %215
    i32 3, label %216
  ]

214:                                              ; preds = %190
  tail call void @free_mem_FME() #19
  br label %217

215:                                              ; preds = %190
  tail call void @simplified_free_mem_FME() #19
  br label %217

216:                                              ; preds = %190
  tail call void @EPZSDelete() #19
  br label %217

217:                                              ; preds = %190, %215, %216, %214
  %218 = load ptr, ptr @input, align 8, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %218, i64 3908
  %220 = load i32, ptr %219, align 4, !tbaa !39
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  tail call void @rc_free() #19
  br label %223

223:                                              ; preds = %222, %217
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_img() local_unnamed_addr #1 {
  tail call void @CloseSEIMessages() #19
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 89328
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  tail call void @free_mem_mv(ptr noundef %3)
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 89336
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  tail call void @free_mem_mv(ptr noundef %6)
  %7 = load ptr, ptr @input, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 1264
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr @img, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 89344
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  tail call void @free_mem_mv(ptr noundef %14)
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 89352
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  tail call void @free_mem_mv(ptr noundef %17)
  br label %18

18:                                               ; preds = %11, %0
  %19 = load ptr, ptr @img, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 14136
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  tail call void @free_mem_ACcoeff(ptr noundef %21)
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 14144
  %24 = load ptr, ptr %23, align 8, !tbaa !201
  tail call void @free_mem_DCcoeff(ptr noundef %24)
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 3556
  %27 = load i32, ptr %26, align 4, !tbaa !29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1648), align 8, !tbaa !202
  tail call void @free_mem_mv(ptr noundef %30)
  %31 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1656), align 8, !tbaa !203
  tail call void @free_mem_mv(ptr noundef %31)
  %32 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1648), align 8, !tbaa !202
  tail call void @free_mem_mv(ptr noundef %32)
  %33 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1656), align 8, !tbaa !203
  tail call void @free_mem_mv(ptr noundef %33)
  %34 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1648), align 8, !tbaa !202
  tail call void @free_mem_mv(ptr noundef %34)
  %35 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1656), align 8, !tbaa !203
  tail call void @free_mem_mv(ptr noundef %35)
  %36 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1648), align 8, !tbaa !202
  tail call void @free_mem_mv(ptr noundef %36)
  %37 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1656), align 8, !tbaa !203
  tail call void @free_mem_mv(ptr noundef %37)
  %38 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1544), align 8, !tbaa !204
  tail call void @free_mem_ACcoeff(ptr noundef %38)
  %39 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_frame_mb, i64 1552), align 8, !tbaa !205
  tail call void @free_mem_DCcoeff(ptr noundef %39)
  %40 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1544), align 8, !tbaa !204
  tail call void @free_mem_ACcoeff(ptr noundef %40)
  %41 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1552), align 8, !tbaa !205
  tail call void @free_mem_DCcoeff(ptr noundef %41)
  %42 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1544), align 8, !tbaa !204
  tail call void @free_mem_ACcoeff(ptr noundef %42)
  %43 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1552), align 8, !tbaa !205
  tail call void @free_mem_DCcoeff(ptr noundef %43)
  %44 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1544), align 8, !tbaa !204
  tail call void @free_mem_ACcoeff(ptr noundef %44)
  %45 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1552), align 8, !tbaa !205
  tail call void @free_mem_DCcoeff(ptr noundef %45)
  br label %46

46:                                               ; preds = %29, %18
  %47 = load ptr, ptr @img, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 90532
  %49 = load i32, ptr %48, align 4, !tbaa !78
  %50 = getelementptr inbounds i8, ptr %47, i64 90536
  %51 = load i32, ptr %50, align 8, !tbaa !81
  %52 = getelementptr inbounds i8, ptr %47, i64 89184
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = tail call i32 @llvm.smax.i32(i32 %49, i32 %51)
  %55 = xor i32 %54, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  tail call void @free(ptr noundef %57) #19
  %58 = load ptr, ptr @input, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 3556
  %60 = load i32, ptr %59, align 4, !tbaa !29
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %46
  %63 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_frame_mb, i64 1600), align 8, !tbaa !183
  tail call void @free_mem2D(ptr noundef %63) #19
  %64 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_top_field_mb, i64 1600), align 8, !tbaa !183
  tail call void @free_mem2D(ptr noundef %64) #19
  %65 = load ptr, ptr getelementptr inbounds (i8, ptr @rddata_bot_field_mb, i64 1600), align 8, !tbaa !183
  tail call void @free_mem2D(ptr noundef %65) #19
  br label %66

66:                                               ; preds = %62, %46
  ret void
}

declare dso_local void @free_context_memory() local_unnamed_addr #3

declare dso_local void @FreeNalPayloadBuffer() local_unnamed_addr #3

declare dso_local void @FreeParameterSets() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @report_stats_on_error() local_unnamed_addr #1 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = load i32, ptr %1, align 8, !tbaa !48
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %2, ptr %4, align 8, !tbaa !44
  %5 = tail call signext i32 @terminate_sequence() #19
  tail call void @flush_dpb() #19
  %6 = load i32, ptr @p_in, align 4, !tbaa !20
  %7 = tail call signext i32 @close(i32 noundef signext %6) #19
  %8 = load i32, ptr @p_dec, align 4, !tbaa !20
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = tail call signext i32 @close(i32 noundef signext %8) #19
  br label %12

12:                                               ; preds = %10, %0
  %13 = load ptr, ptr @p_trace, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call signext i32 @fclose(ptr noundef nonnull %13)
  br label %17

17:                                               ; preds = %15, %12
  tail call void @Clear_Motion_Search_Module() #19
  tail call void @RandomIntraUninit() #19
  tail call void @FmoUninit() #19
  %18 = load ptr, ptr @input, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 1944
  %20 = load i32, ptr %19, align 8, !tbaa !36
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @clear_gop_structure() #19
  br label %23

23:                                               ; preds = %22, %17
  tail call void @clear_rdopt() #19
  tail call void @calc_buffer() #19
  %24 = load ptr, ptr @input, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 3896
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @report_frame_statistic()
  br label %29

29:                                               ; preds = %28, %23
  tail call void @report()
  %30 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @free_slice_list(ptr noundef nonnull %30) #19
  tail call void @free(ptr noundef nonnull %30) #19
  br label %33

33:                                               ; preds = %29, %32
  %34 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @free_slice_list(ptr noundef nonnull %34) #19
  tail call void @free(ptr noundef nonnull %34) #19
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @free_slice_list(ptr noundef nonnull %38) #19
  tail call void @free(ptr noundef nonnull %38) #19
  br label %41

41:                                               ; preds = %40, %37
  tail call void @free_dpb() #19
  %42 = load ptr, ptr @Co_located, align 8, !tbaa !6
  tail call void @free_colocated(ptr noundef %42) #19
  tail call void @uninit_out_buffer() #19
  tail call void @free_global_buffers()
  tail call void @free_img()
  tail call void @free_context_memory() #19
  tail call void @FreeNalPayloadBuffer() #19
  tail call void @FreeParameterSets() #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @CAVLC_init() local_unnamed_addr #7 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 90304
  %3 = load i32, ptr %2, align 8, !tbaa !206
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %80, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 90540
  %7 = getelementptr inbounds i8, ptr %1, i64 128
  %8 = load i32, ptr %6, align 4, !tbaa !82
  br label %9

9:                                                ; preds = %5, %74
  %10 = phi i32 [ %8, %5 ], [ %75, %74 ]
  %11 = phi i64 [ 0, %5 ], [ %76, %74 ]
  %12 = icmp eq i32 %10, -4
  br i1 %12, label %74, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !192
  %15 = getelementptr inbounds ptr, ptr %14, i64 %11
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %21, %18 ]
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 0, ptr %20, align 4, !tbaa !20
  %21 = add nuw nsw i64 %19, 1
  %22 = load i32, ptr %6, align 4, !tbaa !82
  %23 = add i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %18, label %26

26:                                               ; preds = %18
  %27 = icmp eq i32 %22, -4
  br i1 %27, label %74, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %7, align 8, !tbaa !192
  %30 = getelementptr inbounds ptr, ptr %29, i64 %11
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %34, %28
  %35 = phi i64 [ 0, %28 ], [ %37, %34 ]
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !20
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %6, align 4, !tbaa !82
  %39 = add i32 %38, 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %34, label %42

42:                                               ; preds = %34
  %43 = icmp eq i32 %38, -4
  br i1 %43, label %74, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %7, align 8, !tbaa !192
  %46 = getelementptr inbounds ptr, ptr %45, i64 %11
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  br label %50

50:                                               ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %53, %50 ]
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 0, ptr %52, align 4, !tbaa !20
  %53 = add nuw nsw i64 %51, 1
  %54 = load i32, ptr %6, align 4, !tbaa !82
  %55 = add i32 %54, 4
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %50, label %58

58:                                               ; preds = %50
  %59 = icmp eq i32 %54, -4
  br i1 %59, label %74, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %7, align 8, !tbaa !192
  %62 = getelementptr inbounds ptr, ptr %61, i64 %11
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, ptr %63, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  br label %66

66:                                               ; preds = %66, %60
  %67 = phi i64 [ 0, %60 ], [ %69, %66 ]
  %68 = getelementptr inbounds i32, ptr %65, i64 %67
  store i32 0, ptr %68, align 4, !tbaa !20
  %69 = add nuw nsw i64 %67, 1
  %70 = load i32, ptr %6, align 4, !tbaa !82
  %71 = add i32 %70, 4
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %66, label %74

74:                                               ; preds = %66, %9, %26, %42, %58
  %75 = phi i32 [ -4, %58 ], [ -4, %42 ], [ -4, %26 ], [ -4, %9 ], [ %70, %66 ]
  %76 = add nuw nsw i64 %11, 1
  %77 = load i32, ptr %2, align 8, !tbaa !206
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %9, label %80

80:                                               ; preds = %74, %0
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem_mv(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #20
  store ptr %2, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %5

5:                                                ; preds = %4, %1
  br label %6

6:                                                ; preds = %5, %188
  %7 = phi i64 [ %189, %188 ], [ 0, %5 ]
  %8 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = getelementptr inbounds ptr, ptr %9, i64 %7
  store ptr %8, ptr %10, align 8, !tbaa !6
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %13

13:                                               ; preds = %12, %6
  br label %14

14:                                               ; preds = %13, %185
  %15 = phi i64 [ %186, %185 ], [ 0, %13 ]
  %16 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  %17 = load ptr, ptr %0, align 8, !tbaa !6
  %18 = getelementptr inbounds ptr, ptr %17, i64 %7
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds ptr, ptr %19, i64 %15
  store ptr %16, ptr %20, align 8, !tbaa !6
  %21 = icmp eq ptr %16, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %23

23:                                               ; preds = %22, %14
  %24 = load ptr, ptr @img, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %23, %182
  %26 = phi ptr [ %24, %23 ], [ %184, %182 ]
  %27 = phi i1 [ true, %23 ], [ false, %182 ]
  %28 = phi i64 [ 0, %23 ], [ 1, %182 ]
  %29 = getelementptr inbounds i8, ptr %26, i64 36
  %30 = load i32, ptr %29, align 4, !tbaa !95
  %31 = sext i32 %30 to i64
  %32 = tail call noalias ptr @calloc(i64 noundef %31, i64 noundef 8) #20
  %33 = load ptr, ptr %0, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %7
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds ptr, ptr %35, i64 %15
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  store ptr %32, ptr %38, align 8, !tbaa !6
  %39 = icmp eq ptr %32, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %41

41:                                               ; preds = %40, %25
  %42 = load ptr, ptr @img, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 36
  %44 = load i32, ptr %43, align 4, !tbaa !95
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %182

46:                                               ; preds = %41, %72
  %47 = phi i64 [ %176, %72 ], [ 0, %41 ]
  %48 = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 9, i64 noundef 8) #20
  %49 = load ptr, ptr %0, align 8, !tbaa !6
  %50 = getelementptr inbounds ptr, ptr %49, i64 %7
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = getelementptr inbounds ptr, ptr %51, i64 %15
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds ptr, ptr %53, i64 %28
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %55, i64 %47
  store ptr %48, ptr %56, align 8, !tbaa !6
  %57 = icmp eq ptr %48, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %59

59:                                               ; preds = %58, %46
  %60 = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 18, i64 noundef 2) #20
  %61 = load ptr, ptr %0, align 8, !tbaa !6
  %62 = getelementptr inbounds ptr, ptr %61, i64 %7
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds ptr, ptr %63, i64 %15
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %28
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %67, i64 %47
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  store ptr %60, ptr %69, align 8, !tbaa !6
  %70 = icmp eq ptr %60, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  tail call void @no_mem_exit(ptr noundef nonnull @.str.219) #19
  br label %72

72:                                               ; preds = %71, %59
  %73 = load ptr, ptr %0, align 8, !tbaa !6
  %74 = getelementptr inbounds ptr, ptr %73, i64 %7
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %15
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %28
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %47
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr i8, ptr %81, i64 8
  %83 = load ptr, ptr %81, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 4
  store ptr %84, ptr %82, align 8, !tbaa !6
  %85 = load ptr, ptr %0, align 8, !tbaa !6
  %86 = getelementptr inbounds ptr, ptr %85, i64 %7
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %15
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds ptr, ptr %89, i64 %28
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds ptr, ptr %91, i64 %47
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = getelementptr i8, ptr %93, i64 16
  %95 = getelementptr i8, ptr %93, i64 8
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 4
  store ptr %97, ptr %94, align 8, !tbaa !6
  %98 = load ptr, ptr %0, align 8, !tbaa !6
  %99 = getelementptr inbounds ptr, ptr %98, i64 %7
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %15
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %28
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds ptr, ptr %104, i64 %47
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr i8, ptr %106, i64 24
  %108 = getelementptr i8, ptr %106, i64 16
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 4
  store ptr %110, ptr %107, align 8, !tbaa !6
  %111 = load ptr, ptr %0, align 8, !tbaa !6
  %112 = getelementptr inbounds ptr, ptr %111, i64 %7
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds ptr, ptr %113, i64 %15
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds ptr, ptr %115, i64 %28
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds ptr, ptr %117, i64 %47
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = getelementptr i8, ptr %119, i64 32
  %121 = getelementptr i8, ptr %119, i64 24
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 4
  store ptr %123, ptr %120, align 8, !tbaa !6
  %124 = load ptr, ptr %0, align 8, !tbaa !6
  %125 = getelementptr inbounds ptr, ptr %124, i64 %7
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds ptr, ptr %126, i64 %15
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = getelementptr inbounds ptr, ptr %128, i64 %28
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = getelementptr inbounds ptr, ptr %130, i64 %47
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr i8, ptr %132, i64 40
  %134 = getelementptr i8, ptr %132, i64 32
  %135 = load ptr, ptr %134, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 4
  store ptr %136, ptr %133, align 8, !tbaa !6
  %137 = load ptr, ptr %0, align 8, !tbaa !6
  %138 = getelementptr inbounds ptr, ptr %137, i64 %7
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = getelementptr inbounds ptr, ptr %139, i64 %15
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = getelementptr inbounds ptr, ptr %141, i64 %28
  %143 = load ptr, ptr %142, align 8, !tbaa !6
  %144 = getelementptr inbounds ptr, ptr %143, i64 %47
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = getelementptr i8, ptr %145, i64 48
  %147 = getelementptr i8, ptr %145, i64 40
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 4
  store ptr %149, ptr %146, align 8, !tbaa !6
  %150 = load ptr, ptr %0, align 8, !tbaa !6
  %151 = getelementptr inbounds ptr, ptr %150, i64 %7
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = getelementptr inbounds ptr, ptr %152, i64 %15
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = getelementptr inbounds ptr, ptr %154, i64 %28
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  %157 = getelementptr inbounds ptr, ptr %156, i64 %47
  %158 = load ptr, ptr %157, align 8, !tbaa !6
  %159 = getelementptr i8, ptr %158, i64 56
  %160 = getelementptr i8, ptr %158, i64 48
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 4
  store ptr %162, ptr %159, align 8, !tbaa !6
  %163 = load ptr, ptr %0, align 8, !tbaa !6
  %164 = getelementptr inbounds ptr, ptr %163, i64 %7
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = getelementptr inbounds ptr, ptr %165, i64 %15
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds ptr, ptr %167, i64 %28
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds ptr, ptr %169, i64 %47
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = getelementptr i8, ptr %171, i64 64
  %173 = getelementptr i8, ptr %171, i64 56
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  store ptr %175, ptr %172, align 8, !tbaa !6
  %176 = add nuw nsw i64 %47, 1
  %177 = load ptr, ptr @img, align 8, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %177, i64 36
  %179 = load i32, ptr %178, align 4, !tbaa !95
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %176, %180
  br i1 %181, label %46, label %182

182:                                              ; preds = %72, %41
  %183 = phi i32 [ %44, %41 ], [ %179, %72 ]
  %184 = phi ptr [ %42, %41 ], [ %177, %72 ]
  br i1 %27, label %25, label %185

185:                                              ; preds = %182
  %186 = add nuw nsw i64 %15, 1
  %187 = icmp eq i64 %186, 4
  br i1 %187, label %188, label %14

188:                                              ; preds = %185
  %189 = add nuw nsw i64 %7, 1
  %190 = icmp eq i64 %189, 4
  br i1 %190, label %191, label %6

191:                                              ; preds = %188
  %192 = mul i32 %183, 576
  ret i32 %192
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem_ACcoeff(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90540
  %4 = load i32, ptr %3, align 4, !tbaa !82
  %5 = add nsw i32 %4, 4
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #20
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.220) #19
  br label %10

10:                                               ; preds = %9, %1
  %11 = icmp sgt i32 %4, -4
  br i1 %11, label %12, label %56

12:                                               ; preds = %10
  %13 = zext nneg i32 %5 to i64
  br label %14

14:                                               ; preds = %12, %53
  %15 = phi i64 [ 0, %12 ], [ %54, %53 ]
  %16 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #20
  %17 = load ptr, ptr %0, align 8, !tbaa !6
  %18 = getelementptr inbounds ptr, ptr %17, i64 %15
  store ptr %16, ptr %18, align 8, !tbaa !6
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.220) #19
  br label %21

21:                                               ; preds = %20, %14
  br label %22

22:                                               ; preds = %21, %50
  %23 = phi i64 [ %51, %50 ], [ 0, %21 ]
  %24 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %15
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  store ptr %24, ptr %28, align 8, !tbaa !6
  %29 = icmp eq ptr %24, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call void @no_mem_exit(ptr noundef nonnull @.str.220) #19
  br label %31

31:                                               ; preds = %30, %22
  %32 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %33 = load ptr, ptr %0, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %15
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds ptr, ptr %35, i64 %23
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  store ptr %32, ptr %37, align 8, !tbaa !6
  %38 = icmp eq ptr %32, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @no_mem_exit(ptr noundef nonnull @.str.220) #19
  br label %40

40:                                               ; preds = %31, %39
  %41 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !6
  %43 = getelementptr inbounds ptr, ptr %42, i64 %15
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds ptr, ptr %44, i64 %23
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %41, ptr %47, align 8, !tbaa !6
  %48 = icmp eq ptr %41, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.220) #19
  br label %50

50:                                               ; preds = %49, %40
  %51 = add nuw nsw i64 %23, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %22

53:                                               ; preds = %50
  %54 = add nuw nsw i64 %15, 1
  %55 = icmp eq i64 %54, %13
  br i1 %55, label %56, label %14

56:                                               ; preds = %53, %10
  %57 = mul i32 %5, 2080
  ret i32 %57
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem_DCcoeff(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #20
  store ptr %2, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  store ptr %8, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  store ptr %12, ptr %14, align 8, !tbaa !6
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %17

17:                                               ; preds = %11, %16
  %18 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %19 = load ptr, ptr %0, align 8, !tbaa !6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %18, ptr %21, align 8, !tbaa !6
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %24

24:                                               ; preds = %23, %17
  %25 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  %26 = load ptr, ptr %0, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  store ptr %25, ptr %27, align 8, !tbaa !6
  %28 = icmp eq ptr %25, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %30

30:                                               ; preds = %29, %24
  %31 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %32 = load ptr, ptr %0, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  store ptr %31, ptr %34, align 8, !tbaa !6
  %35 = icmp eq ptr %31, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %37

37:                                               ; preds = %36, %30
  %38 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %39 = load ptr, ptr %0, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 8
  store ptr %38, ptr %42, align 8, !tbaa !6
  %43 = icmp eq ptr %38, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %45

45:                                               ; preds = %44, %37
  %46 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  %47 = load ptr, ptr %0, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 16
  store ptr %46, ptr %48, align 8, !tbaa !6
  %49 = icmp eq ptr %46, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %51

51:                                               ; preds = %50, %45
  %52 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %53 = load ptr, ptr %0, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 16
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  store ptr %52, ptr %55, align 8, !tbaa !6
  %56 = icmp eq ptr %52, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %58

58:                                               ; preds = %57, %51
  %59 = tail call noalias dereferenceable_or_null(260) ptr @calloc(i64 noundef 65, i64 noundef 4) #20
  %60 = load ptr, ptr %0, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %60, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %62, i64 8
  store ptr %59, ptr %63, align 8, !tbaa !6
  %64 = icmp eq ptr %59, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  tail call void @no_mem_exit(ptr noundef nonnull @.str.221) #19
  br label %66

66:                                               ; preds = %65, %58
  ret i32 1560
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2D(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem3Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2Ddb_offset(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2Dint_offset(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @RandomIntraInit(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @InitSEIMessages(...) local_unnamed_addr #3

declare dso_local void @CloseSEIMessages(...) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @free_mem_mv(ptr nocapture noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %75
  %3 = phi i64 [ 0, %1 ], [ %77, %75 ]
  %4 = getelementptr inbounds ptr, ptr %0, i64 %3
  br label %5

5:                                                ; preds = %2, %64
  %6 = phi i64 [ 0, %2 ], [ %73, %64 ]
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 36
  %9 = load i32, ptr %8, align 4, !tbaa !95
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %26, %11 ], [ 0, %5 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !6
  %14 = getelementptr inbounds ptr, ptr %13, i64 %6
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  tail call void @free(ptr noundef %19) #19
  %20 = load ptr, ptr %4, align 8, !tbaa !6
  %21 = getelementptr inbounds ptr, ptr %20, i64 %6
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds ptr, ptr %23, i64 %12
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  tail call void @free(ptr noundef %25) #19
  %26 = add nuw nsw i64 %12, 1
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !95
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %11, label %32

32:                                               ; preds = %11, %5
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %6
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  tail call void @free(ptr noundef %36) #19
  %37 = load ptr, ptr @img, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !95
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %32, %41
  %42 = phi i64 [ %58, %41 ], [ 0, %32 ]
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %6
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds ptr, ptr %47, i64 %42
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  tail call void @free(ptr noundef %50) #19
  %51 = load ptr, ptr %4, align 8, !tbaa !6
  %52 = getelementptr inbounds ptr, ptr %51, i64 %6
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %55, i64 %42
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  tail call void @free(ptr noundef %57) #19
  %58 = add nuw nsw i64 %42, 1
  %59 = load ptr, ptr @img, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 36
  %61 = load i32, ptr %60, align 4, !tbaa !95
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %41, label %64

64:                                               ; preds = %41, %32
  %65 = load ptr, ptr %4, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %6
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  tail call void @free(ptr noundef %69) #19
  %70 = load ptr, ptr %4, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %6
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  tail call void @free(ptr noundef %72) #19
  %73 = add nuw nsw i64 %6, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %5

75:                                               ; preds = %64
  %76 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @free(ptr noundef %76) #19
  %77 = add nuw nsw i64 %3, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %2

79:                                               ; preds = %75
  tail call void @free(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem_ACcoeff(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90540
  %4 = load i32, ptr %3, align 4, !tbaa !82
  %5 = icmp sgt i32 %4, -4
  br i1 %5, label %6, label %62

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %55, %6 ], [ 0, %1 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  tail call void @free(ptr noundef %11) #19
  %12 = load ptr, ptr %8, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  tail call void @free(ptr noundef %15) #19
  %16 = load ptr, ptr %8, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  tail call void @free(ptr noundef %17) #19
  %18 = load ptr, ptr %8, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @free(ptr noundef %21) #19
  %22 = load ptr, ptr %8, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  tail call void @free(ptr noundef %26) #19
  %27 = load ptr, ptr %8, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  tail call void @free(ptr noundef %29) #19
  %30 = load ptr, ptr %8, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  tail call void @free(ptr noundef %33) #19
  %34 = load ptr, ptr %8, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  tail call void @free(ptr noundef %38) #19
  %39 = load ptr, ptr %8, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  tail call void @free(ptr noundef %41) #19
  %42 = load ptr, ptr %8, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 24
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  tail call void @free(ptr noundef %45) #19
  %46 = load ptr, ptr %8, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 24
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  tail call void @free(ptr noundef %50) #19
  %51 = load ptr, ptr %8, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 24
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  tail call void @free(ptr noundef %53) #19
  %54 = load ptr, ptr %8, align 8, !tbaa !6
  tail call void @free(ptr noundef %54) #19
  %55 = add nuw nsw i64 %7, 1
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 90540
  %58 = load i32, ptr %57, align 4, !tbaa !82
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %7, %60
  br i1 %61, label %6, label %62

62:                                               ; preds = %6, %1
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @free_mem_DCcoeff(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @free(ptr noundef %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  tail call void @free(ptr noundef %6) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free(ptr noundef %7) #19
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  tail call void @free(ptr noundef %10) #19
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @free(ptr noundef %13) #19
  %14 = load ptr, ptr %8, align 8, !tbaa !6
  tail call void @free(ptr noundef %14) #19
  %15 = getelementptr inbounds i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  tail call void @free(ptr noundef %17) #19
  %18 = load ptr, ptr %15, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call void @free(ptr noundef %20) #19
  %21 = load ptr, ptr %15, align 8, !tbaa !6
  tail call void @free(ptr noundef %21) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare dso_local void @free_mem2D(ptr noundef) local_unnamed_addr #3

declare dso_local void @free_slice_list(ptr noundef) local_unnamed_addr #3

declare dso_local ptr @fopen64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i64 @time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local ptr @localtime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

declare dso_local void @EPZSOutputStats(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log10(double noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local signext i32 @init_orig_buffers() local_unnamed_addr #1 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 60
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %1, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !35
  %6 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull @imgY_org_frm, i32 noundef signext %3, i32 noundef signext %5) #19
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 90548
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %7, i64 64
  %13 = load i32, ptr %12, align 8, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %7, i64 56
  %15 = load i32, ptr %14, align 8, !tbaa !133
  %16 = tail call signext i32 @get_mem3Dpel(ptr noundef nonnull @imgUV_org_frm, i32 noundef signext 2, i32 noundef signext %13, i32 noundef signext %15) #19
  %17 = add nsw i32 %16, %6
  br label %18

18:                                               ; preds = %11, %0
  %19 = phi i32 [ %17, %11 ], [ %6, %0 ]
  %20 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 1148
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  %25 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  %26 = load ptr, ptr @img, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 60
  %28 = load i32, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds i8, ptr %26, i64 52
  %30 = load i32, ptr %29, align 4, !tbaa !35
  %31 = tail call signext i32 @init_top_bot_planes(ptr noundef %25, i32 noundef signext %28, i32 noundef signext %30, ptr noundef nonnull @imgY_org_top, ptr noundef nonnull @imgY_org_bot) #19
  %32 = load ptr, ptr @img, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 90548
  %34 = load i32, ptr %33, align 4, !tbaa !72
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %24
  %37 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  store ptr %37, ptr @imgUV_org_top, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @no_mem_exit(ptr noundef nonnull @.str.213) #19
  br label %40

40:                                               ; preds = %39, %36
  %41 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 2, i64 noundef 8) #20
  store ptr %41, ptr @imgUV_org_bot, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.214) #19
  %44 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %44, %43 ], [ %41, %40 ]
  %47 = add i32 %19, 32
  %48 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = load ptr, ptr @img, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 64
  %52 = load i32, ptr %51, align 8, !tbaa !107
  %53 = getelementptr inbounds i8, ptr %50, i64 56
  %54 = load i32, ptr %53, align 8, !tbaa !133
  %55 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  %56 = tail call signext i32 @init_top_bot_planes(ptr noundef %49, i32 noundef signext %52, i32 noundef signext %54, ptr noundef %55, ptr noundef %46) #19
  %57 = add nsw i32 %47, %56
  %58 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load ptr, ptr @img, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds i8, ptr %61, i64 56
  %65 = load i32, ptr %64, align 8, !tbaa !133
  %66 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  %68 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  %70 = tail call signext i32 @init_top_bot_planes(ptr noundef %60, i32 noundef signext %63, i32 noundef signext %65, ptr noundef nonnull %67, ptr noundef nonnull %69) #19
  %71 = add nsw i32 %57, %70
  br label %72

72:                                               ; preds = %24, %45, %18
  %73 = phi i32 [ %19, %18 ], [ %71, %45 ], [ %19, %24 ]
  ret i32 %73
}

declare dso_local signext i32 @get_mem2Dpel(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem3Dpel(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @init_top_bot_planes(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem3D(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2Dshort(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem_FME() local_unnamed_addr #3

declare dso_local void @simplified_init_FME() local_unnamed_addr #3

declare dso_local signext i32 @simplified_get_mem_FME() local_unnamed_addr #3

declare dso_local signext i32 @EPZSInit() local_unnamed_addr #3

declare dso_local void @rc_alloc() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @free_orig_planes() local_unnamed_addr #1 {
  %1 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  tail call void @free_mem2Dpel(ptr noundef %1) #19
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90548
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  tail call void @free_mem3Dpel(ptr noundef %7, i32 noundef signext 2) #19
  br label %8

8:                                                ; preds = %6, %0
  %9 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 1148
  %11 = load i32, ptr %10, align 4, !tbaa !94
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load ptr, ptr @imgY_org_top, align 8, !tbaa !6
  %15 = load ptr, ptr @imgY_org_bot, align 8, !tbaa !6
  tail call void @free_top_bot_planes(ptr noundef %14, ptr noundef %15) #19
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 90548
  %18 = load i32, ptr %17, align 4, !tbaa !72
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  tail call void @free_top_bot_planes(ptr noundef %22, ptr noundef %24) #19
  %25 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  tail call void @free_top_bot_planes(ptr noundef %27, ptr noundef %30) #19
  %31 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  tail call void @free(ptr noundef %31) #19
  %32 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  tail call void @free(ptr noundef %32) #19
  br label %33

33:                                               ; preds = %13, %20, %8
  ret void
}

declare dso_local void @free_mem2Dpel(ptr noundef) local_unnamed_addr #3

declare dso_local void @free_mem3Dpel(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_top_bot_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @free_QMatrix() local_unnamed_addr #3

declare dso_local void @free_QOffsets() local_unnamed_addr #3

declare dso_local void @free_mem3Dint(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem3D(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem2Dshort(ptr noundef) local_unnamed_addr #3

declare dso_local void @free_mem2Dint(ptr noundef) local_unnamed_addr #3

declare dso_local void @free_mem2Ddb_offset(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem2Dint_offset(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem_FME() local_unnamed_addr #3

declare dso_local void @simplified_free_mem_FME() local_unnamed_addr #3

declare dso_local void @EPZSDelete() local_unnamed_addr #3

declare dso_local void @rc_free() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @combine_field() local_unnamed_addr #7 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 60
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %42

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %35, %5 ], [ 0, %0 ]
  %7 = phi ptr [ %36, %5 ], [ %1, %0 ]
  %8 = load ptr, ptr @imgY_com, align 8, !tbaa !6
  %9 = shl nuw nsw i64 %6, 1
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load ptr, ptr @enc_top_picture, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 6424
  %14 = load ptr, ptr %13, align 8, !tbaa !207
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %7, i64 52
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %11, ptr align 2 %16, i64 %20, i1 false)
  %21 = load ptr, ptr @imgY_com, align 8, !tbaa !6
  %22 = or disjoint i64 %9, 1
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 6424
  %27 = load ptr, ptr %26, align 8, !tbaa !207
  %28 = getelementptr inbounds ptr, ptr %27, i64 %6
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load ptr, ptr @img, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 52
  %32 = load i32, ptr %31, align 4, !tbaa !35
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %24, ptr align 2 %29, i64 %34, i1 false)
  %35 = add nuw nsw i64 %6, 1
  %36 = load ptr, ptr @img, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 60
  %38 = load i32, ptr %37, align 4, !tbaa !34
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %35, %40
  br i1 %41, label %5, label %42

42:                                               ; preds = %5, %0
  %43 = phi ptr [ %1, %0 ], [ %36, %5 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 90548
  %45 = load i32, ptr %44, align 4, !tbaa !72
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 64
  %49 = load i32, ptr %48, align 8, !tbaa !107
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %126

51:                                               ; preds = %47, %51
  %52 = phi i64 [ %119, %51 ], [ 0, %47 ]
  %53 = phi ptr [ %120, %51 ], [ %43, %47 ]
  %54 = load ptr, ptr @imgUV_com, align 8, !tbaa !6
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = shl nuw nsw i64 %52, 1
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load ptr, ptr @enc_top_picture, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 6464
  %61 = load ptr, ptr %60, align 8, !tbaa !209
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %52
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %53, i64 56
  %66 = load i32, ptr %65, align 8, !tbaa !133
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %58, ptr align 2 %64, i64 %68, i1 false)
  %69 = load ptr, ptr @imgUV_com, align 8, !tbaa !6
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = or disjoint i64 %56, 1
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 6464
  %76 = load ptr, ptr %75, align 8, !tbaa !209
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %52
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load ptr, ptr @img, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 56
  %82 = load i32, ptr %81, align 8, !tbaa !133
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %79, i64 %84, i1 false)
  %85 = load ptr, ptr @imgUV_com, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %56
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load ptr, ptr @enc_top_picture, align 8, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %90, i64 6464
  %92 = load ptr, ptr %91, align 8, !tbaa !209
  %93 = getelementptr inbounds i8, ptr %92, i64 8
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds ptr, ptr %94, i64 %52
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = load ptr, ptr @img, align 8, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %97, i64 56
  %99 = load i32, ptr %98, align 8, !tbaa !133
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %89, ptr align 2 %96, i64 %101, i1 false)
  %102 = load ptr, ptr @imgUV_com, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %102, i64 8
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds ptr, ptr %104, i64 %71
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 6464
  %109 = load ptr, ptr %108, align 8, !tbaa !209
  %110 = getelementptr inbounds i8, ptr %109, i64 8
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds ptr, ptr %111, i64 %52
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load ptr, ptr @img, align 8, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %114, i64 56
  %116 = load i32, ptr %115, align 8, !tbaa !133
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr align 2 %113, i64 %118, i1 false)
  %119 = add nuw nsw i64 %52, 1
  %120 = load ptr, ptr @img, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 64
  %122 = load i32, ptr %121, align 8, !tbaa !107
  %123 = sdiv i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %119, %124
  br i1 %125, label %51, label %126

126:                                              ; preds = %51, %47, %42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext range(i32 0, 2) i32 @decide_fld_frame(float noundef %0, float noundef %1, i32 noundef signext %2, i32 noundef signext %3, double noundef %4) local_unnamed_addr #15 {
  %6 = sitofp i32 %3 to double
  %7 = fpext float %0 to double
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %4, double %7)
  %9 = sitofp i32 %2 to double
  %10 = fpext float %1 to double
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %4, double %10)
  %12 = fcmp ule double %11, %8
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !12, i64 1244}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !12, i64 688}
!15 = !{!"", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 72, !8, i64 372, !8, i64 672, !12, i64 688, !7, i64 696, !7, i64 704, !12, i64 712, !12, i64 716, !12, i64 720, !16, i64 724, !16, i64 728, !16, i64 732, !8, i64 736, !8, i64 1036, !8, i64 1336, !8, i64 1356, !8, i64 1376, !8, i64 1396, !8, i64 1416, !8, i64 1436, !8, i64 1456, !12, i64 1476, !12, i64 1480, !7, i64 1488, !12, i64 1496, !12, i64 1500}
!16 = !{!"float", !8, i64 0}
!17 = !{!15, !12, i64 712}
!18 = !{!15, !12, i64 716}
!19 = !{!15, !12, i64 720}
!20 = !{!12, !12, i64 0}
!21 = !{!11, !12, i64 3880}
!22 = !{!23, !12, i64 90224}
!23 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !16, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !24, i64 90584, !12, i64 90588, !12, i64 90592}
!24 = !{!"short", !8, i64 0}
!25 = !{!23, !12, i64 90228}
!26 = !{!23, !12, i64 90240}
!27 = !{!11, !12, i64 1940}
!28 = !{!11, !12, i64 3552}
!29 = !{!11, !12, i64 3556}
!30 = !{!23, !12, i64 90236}
!31 = !{!23, !12, i64 90312}
!32 = !{!23, !12, i64 90252}
!33 = !{!11, !12, i64 1916}
!34 = !{!23, !12, i64 60}
!35 = !{!23, !12, i64 52}
!36 = !{!11, !12, i64 1944}
!37 = !{!38, !12, i64 48}
!38 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 56}
!39 = !{!11, !12, i64 3908}
!40 = !{!11, !12, i64 3964}
!41 = !{!23, !12, i64 90588}
!42 = !{!11, !12, i64 3112}
!43 = !{!11, !12, i64 20}
!44 = !{!11, !12, i64 8}
!45 = !{!15, !12, i64 1496}
!46 = !{!15, !12, i64 24}
!47 = !{!15, !12, i64 1500}
!48 = !{!23, !12, i64 0}
!49 = !{!11, !12, i64 1228}
!50 = !{!11, !12, i64 4320}
!51 = !{!23, !12, i64 90316}
!52 = !{!11, !12, i64 1236}
!53 = !{!23, !12, i64 90268}
!54 = !{!23, !12, i64 90272}
!55 = !{!23, !12, i64 90276}
!56 = !{!23, !12, i64 90284}
!57 = !{!11, !12, i64 1280}
!58 = !{!23, !12, i64 24}
!59 = !{!11, !12, i64 3584}
!60 = !{!11, !12, i64 1232}
!61 = !{!23, !12, i64 90280}
!62 = !{!11, !12, i64 3896}
!63 = !{!11, !12, i64 3588}
!64 = !{!65, !12, i64 24}
!65 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !66, i64 1184}
!66 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !67, i64 84, !12, i64 496, !67, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!67 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!68 = !{!23, !12, i64 8}
!69 = !{!65, !12, i64 20}
!70 = !{!65, !12, i64 4}
!71 = !{!11, !12, i64 76}
!72 = !{!23, !12, i64 90548}
!73 = !{!11, !12, i64 3968}
!74 = !{!23, !12, i64 90484}
!75 = !{!23, !12, i64 90492}
!76 = !{!23, !12, i64 90500}
!77 = !{!23, !12, i64 90528}
!78 = !{!23, !12, i64 90532}
!79 = !{!11, !12, i64 3972}
!80 = !{!23, !12, i64 90488}
!81 = !{!23, !12, i64 90536}
!82 = !{!23, !12, i64 90540}
!83 = !{!23, !12, i64 90544}
!84 = !{!23, !12, i64 90556}
!85 = !{!23, !12, i64 90560}
!86 = !{!23, !12, i64 90496}
!87 = !{!23, !12, i64 90572}
!88 = !{!89, !12, i64 212}
!89 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!90 = !{!89, !12, i64 216}
!91 = !{!23, !12, i64 90480}
!92 = !{!65, !12, i64 1132}
!93 = !{!23, !12, i64 32}
!94 = !{!65, !12, i64 1148}
!95 = !{!23, !12, i64 36}
!96 = !{!11, !12, i64 36}
!97 = !{!23, !12, i64 90192}
!98 = !{!23, !12, i64 90460}
!99 = !{!11, !13, i64 3056}
!100 = !{!23, !16, i64 48}
!101 = !{!11, !12, i64 1264}
!102 = !{!23, !7, i64 89184}
!103 = !{!11, !12, i64 68}
!104 = !{!23, !12, i64 90576}
!105 = !{!11, !12, i64 72}
!106 = !{!23, !12, i64 90580}
!107 = !{!23, !12, i64 64}
!108 = !{!23, !12, i64 68}
!109 = !{!23, !12, i64 90288}
!110 = !{!23, !12, i64 90296}
!111 = !{!23, !12, i64 90308}
!112 = !{!23, !12, i64 90292}
!113 = !{!23, !7, i64 31576}
!114 = !{!11, !12, i64 220}
!115 = !{!23, !7, i64 89192}
!116 = !{!23, !7, i64 104}
!117 = !{!8, !8, i64 0}
!118 = !{!23, !7, i64 112}
!119 = !{!23, !12, i64 88}
!120 = !{!11, !12, i64 3592}
!121 = !{!11, !12, i64 3596}
!122 = !{!11, !12, i64 3604}
!123 = !{!11, !12, i64 3608}
!124 = !{!11, !12, i64 3600}
!125 = !{!11, !12, i64 1904}
!126 = !{!11, !12, i64 1908}
!127 = !{!11, !12, i64 64}
!128 = !{!11, !12, i64 3136}
!129 = !{!11, !12, i64 3576}
!130 = !{!131, !7, i64 16}
!131 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!132 = !{!11, !12, i64 3580}
!133 = !{!23, !12, i64 56}
!134 = !{!11, !12, i64 3904}
!135 = !{!11, !12, i64 3892}
!136 = !{!137, !137, i64 0}
!137 = !{!"long", !8, i64 0}
!138 = !{!23, !12, i64 40}
!139 = !{!15, !12, i64 20}
!140 = !{!141, !16, i64 0}
!141 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !8, i64 44, !8, i64 64, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !12, i64 120}
!142 = !{!141, !16, i64 4}
!143 = !{!141, !16, i64 8}
!144 = !{!15, !16, i64 724}
!145 = !{!15, !16, i64 728}
!146 = !{!15, !16, i64 732}
!147 = !{!11, !12, i64 24}
!148 = !{!11, !12, i64 80}
!149 = !{!11, !12, i64 32}
!150 = !{!11, !12, i64 40}
!151 = !{!11, !12, i64 44}
!152 = !{!11, !12, i64 48}
!153 = !{!11, !12, i64 12}
!154 = !{!11, !12, i64 16}
!155 = !{!11, !12, i64 1248}
!156 = !{!11, !12, i64 1252}
!157 = !{!11, !12, i64 1284}
!158 = !{!11, !12, i64 1288}
!159 = !{!11, !12, i64 2984}
!160 = !{!11, !12, i64 0}
!161 = !{!11, !12, i64 4}
!162 = !{!11, !12, i64 3108}
!163 = !{!11, !12, i64 2992}
!164 = !{!11, !12, i64 2988}
!165 = !{!11, !12, i64 4000}
!166 = !{!11, !12, i64 3976}
!167 = !{!11, !12, i64 3980}
!168 = !{!141, !16, i64 108}
!169 = !{!141, !16, i64 112}
!170 = !{!141, !16, i64 116}
!171 = !{!141, !16, i64 84}
!172 = !{!141, !16, i64 88}
!173 = !{!141, !16, i64 92}
!174 = !{!15, !16, i64 12}
!175 = !{!15, !12, i64 28}
!176 = !{!141, !16, i64 12}
!177 = !{!141, !16, i64 16}
!178 = !{!141, !16, i64 20}
!179 = !{!15, !12, i64 4}
!180 = !{!15, !12, i64 0}
!181 = !{!16, !16, i64 0}
!182 = !{!15, !12, i64 16}
!183 = !{!184, !7, i64 1600}
!184 = !{!"", !13, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !7, i64 1544, !7, i64 1552, !12, i64 1560, !24, i64 1564, !8, i64 1568, !8, i64 1584, !7, i64 1600, !8, i64 1608, !12, i64 1624, !185, i64 1632, !12, i64 1640, !7, i64 1648, !7, i64 1656, !8, i64 1664, !12, i64 1696, !12, i64 1700, !12, i64 1704, !12, i64 1708, !12, i64 1712, !12, i64 1716, !12, i64 1720, !12, i64 1724, !12, i64 1728}
!185 = !{!"long long", !8, i64 0}
!186 = !{!131, !7, i64 0}
!187 = !{!131, !7, i64 32}
!188 = !{!131, !7, i64 8}
!189 = !{!131, !7, i64 24}
!190 = !{!131, !7, i64 40}
!191 = !{!131, !7, i64 48}
!192 = !{!23, !7, i64 128}
!193 = !{!23, !7, i64 90504}
!194 = !{!23, !7, i64 90512}
!195 = !{!23, !7, i64 90520}
!196 = !{!23, !7, i64 89328}
!197 = !{!23, !7, i64 89336}
!198 = !{!23, !7, i64 89344}
!199 = !{!23, !7, i64 89352}
!200 = !{!23, !7, i64 14136}
!201 = !{!23, !7, i64 14144}
!202 = !{!184, !7, i64 1648}
!203 = !{!184, !7, i64 1656}
!204 = !{!184, !7, i64 1544}
!205 = !{!184, !7, i64 1552}
!206 = !{!23, !12, i64 90304}
!207 = !{!208, !7, i64 6424}
!208 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!209 = !{!208, !7, i64 6464}
