; ModuleID = 'src/image.c'
source_filename = "src/image.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.timeb = type { i64, i16, i16, i16 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }

@ONE_FOURTH_TAP = dso_local local_unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 20, i32 20], [2 x i32] [i32 -5, i32 -4], [2 x i32] [i32 1, i32 0]], align 4
@enc_picture = dso_local local_unnamed_addr global ptr null, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@start_frame_no_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@input = external dso_local local_unnamed_addr global ptr, align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@stats = external dso_local local_unnamed_addr global ptr, align 8
@decs = external dso_local local_unnamed_addr global ptr, align 8
@encode_one_frame.prev_frame_no = internal unnamed_addr global i32 0, align 4
@encode_one_frame.consecutive_non_reference_pictures = internal unnamed_addr global i32 0, align 4
@me_time = external dso_local local_unnamed_addr global i32, align 4
@enc_frame_picture = dso_local local_unnamed_addr global ptr null, align 8
@enc_frame_picture2 = dso_local local_unnamed_addr global ptr null, align 8
@enc_frame_picture3 = dso_local local_unnamed_addr global ptr null, align 8
@frame_ctr = external dso_local local_unnamed_addr global [5 x i32], align 4
@snr = external dso_local local_unnamed_addr global ptr, align 8
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@top_pic = external dso_local local_unnamed_addr global ptr, align 8
@bottom_pic = external dso_local local_unnamed_addr global ptr, align 8
@mb_adaptive = external dso_local local_unnamed_addr global i32, align 4
@QP = dso_local local_unnamed_addr global i32 0, align 4
@PicParSet = external dso_local local_unnamed_addr global [256 x ptr], align 8
@frame_pic_1 = external dso_local local_unnamed_addr global ptr, align 8
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@frame_pic_2 = external dso_local local_unnamed_addr global ptr, align 8
@frame_pic_3 = external dso_local local_unnamed_addr global ptr, align 8
@tot_time = external dso_local local_unnamed_addr global i32, align 4
@enc_bottom_picture = dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = external dso_local local_unnamed_addr global [10000 x i64], align 8
@total_frame_buffer = external dso_local local_unnamed_addr global i64, align 8
@frame_no = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [137 x i8] c"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\0A\00", align 1
@Pprev_bits = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Completed Encoding Frame %05d.\0D\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@enc_top_picture = dso_local local_unnamed_addr global ptr null, align 8
@nextP_tr_fld = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"alloc_storable_picture: s->imgY_11\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"alloc_storable_picture: s->imgY_11_w\00", align 1
@img4Y_tmp = external dso_local local_unnamed_addr global ptr, align 8
@rdopt = external dso_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@number_sp2_frames = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open SP output file '%s', exit (-1)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@lrec = external dso_local local_unnamed_addr global ptr, align 8
@lrec_uv = external dso_local local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Fatal: cannot open SP input file '%s', exit (-1)\0A\00", align 1
@last_P_no = dso_local local_unnamed_addr global ptr null, align 8
@last_P_no_frm = dso_local local_unnamed_addr global ptr null, align 8
@last_P_no_fld = dso_local local_unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"currStream->bits_to_go == 8\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"src/image.c\00", align 1
@__PRETTY_FUNCTION__.writeout_picture = private unnamed_addr constant [32 x i8] c"int writeout_picture(Picture *)\00", align 1
@WriteNALU = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org_frm = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_frm = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org = external dso_local local_unnamed_addr global ptr, align 8
@start_tr_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@nextP_tr_frm = external dso_local local_unnamed_addr global i32, align 4
@gop_structure = external dso_local local_unnamed_addr global ptr, align 8
@imgY_com = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_com = external dso_local local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"%04d(NVB)%8d \0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"%04d(IDR)%8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"FRM\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@intras = external dso_local local_unnamed_addr global i32, align 4
@Iprev_bits = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [59 x i8] c"%04d(I)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"%04d(SP) %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"%04d(B)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [80 x i8] c"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d %1d %2d %2d  %d   %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"%04d(P)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@p_in = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"p_in != -1\00", align 1
@__PRETTY_FUNCTION__.ReadOneFrame = private unnamed_addr constant [48 x i8] c"void ReadOneFrame(int, int, int, int, int, int)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"ReadOneFrame: buf\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"ReadOneFrame: cannot fseek to (Header size) in p_in\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@imgY_org_top = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_top = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org_bot = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org_bot = external dso_local local_unnamed_addr global ptr, align 8
@frame_pic = external dso_local local_unnamed_addr global ptr, align 8
@str.34 = private unnamed_addr constant [47 x i8] c"Fatal: cannot read in SP input file, exit (-1)\00", align 1
@str.35 = private unnamed_addr constant [47 x i8] c"Fatal: cannot seek in SP input file, exit (-1)\00", align 1

; Function Attrs: nounwind
define dso_local void @MbAffPostProc() local_unnamed_addr #0 {
  %1 = alloca [32 x [16 x i16]], align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #17
  %4 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 6424
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds i8, ptr %4, i64 6464
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90548
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds i8, ptr %9, i64 90304
  %14 = load i32, ptr %13, align 8, !tbaa !19
  %15 = icmp sgt i32 %14, 0
  br i1 %12, label %17, label %16

16:                                               ; preds = %0
  br i1 %15, label %18, label %214

17:                                               ; preds = %0
  br i1 %15, label %161, label %214

18:                                               ; preds = %16, %154
  %19 = phi ptr [ %155, %154 ], [ %9, %16 ]
  %20 = phi i64 [ %156, %154 ], [ 0, %16 ]
  %21 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 6472
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds i8, ptr %23, i64 %20
  %25 = load i8, ptr %24, align 1, !tbaa !21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %154, label %27

27:                                               ; preds = %18
  %28 = trunc nuw nsw i64 %20 to i32
  call void @get_mb_pos(i32 noundef signext %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %29 = load i32, ptr %3, align 4, !tbaa !22
  %30 = load i32, ptr %2, align 4, !tbaa !22
  %31 = sext i32 %30 to i64
  %32 = sext i32 %29 to i64
  %33 = getelementptr ptr, ptr %6, i64 %32
  br label %37

34:                                               ; preds = %37
  %35 = getelementptr ptr, ptr %6, i64 %32
  %36 = getelementptr ptr, ptr %6, i64 %32
  br label %45

37:                                               ; preds = %27, %37
  %38 = phi i64 [ 0, %27 ], [ %43, %37 ]
  %39 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %38
  %40 = getelementptr ptr, ptr %33, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i16, ptr %41, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %39, ptr noundef nonnull align 2 dereferenceable(32) %42, i64 32, i1 false)
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %34, label %37

45:                                               ; preds = %34, %45
  %46 = phi i64 [ 0, %34 ], [ %58, %45 ]
  %47 = shl nuw nsw i64 %46, 1
  %48 = getelementptr ptr, ptr %35, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds i16, ptr %49, i64 %31
  %51 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %50, ptr noundef nonnull align 2 dereferenceable(32) %51, i64 32, i1 false)
  %52 = or disjoint i64 %47, 1
  %53 = getelementptr ptr, ptr %36, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds i16, ptr %54, i64 %31
  %56 = or disjoint i64 %46, 16
  %57 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %55, ptr noundef nonnull align 2 dereferenceable(32) %57, i64 32, i1 false)
  %58 = add nuw nsw i64 %46, 1
  %59 = icmp eq i64 %58, 16
  br i1 %59, label %60, label %45

60:                                               ; preds = %45
  %61 = load ptr, ptr @img, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 90556
  %63 = load i32, ptr %62, align 4, !tbaa !23
  %64 = sdiv i32 16, %63
  %65 = sdiv i32 %30, %64
  store i32 %65, ptr %2, align 4, !tbaa !22
  %66 = getelementptr inbounds i8, ptr %61, i64 90560
  %67 = load i32, ptr %66, align 8, !tbaa !24
  %68 = sdiv i32 16, %67
  %69 = sdiv i32 %29, %68
  store i32 %69, ptr %3, align 4, !tbaa !22
  br label %70

70:                                               ; preds = %60, %152
  %71 = phi ptr [ %61, %60 ], [ %153, %152 ]
  %72 = phi i1 [ true, %60 ], [ false, %152 ]
  %73 = phi i64 [ 0, %60 ], [ 1, %152 ]
  %74 = getelementptr inbounds i8, ptr %71, i64 90560
  %75 = load i32, ptr %74, align 8, !tbaa !24
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %152

77:                                               ; preds = %70
  %78 = shl nuw i32 %75, 1
  %79 = getelementptr inbounds ptr, ptr %8, i64 %73
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = load i32, ptr %3, align 4, !tbaa !22
  %82 = load i32, ptr %2, align 4, !tbaa !22
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %71, i64 90556
  %85 = load i32, ptr %84, align 4, !tbaa !23
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 1
  %88 = sext i32 %81 to i64
  %89 = call i32 @llvm.smax.i32(i32 %78, i32 1)
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr ptr, ptr %80, i64 %88
  br label %97

92:                                               ; preds = %97
  %93 = load i32, ptr %74, align 8, !tbaa !24
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %152

95:                                               ; preds = %92
  %96 = getelementptr inbounds ptr, ptr %8, i64 %73
  br label %105

97:                                               ; preds = %77, %97
  %98 = phi i64 [ 0, %77 ], [ %103, %97 ]
  %99 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %98
  %100 = getelementptr ptr, ptr %91, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds i16, ptr %101, i64 %83
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %99, ptr align 2 %102, i64 %87, i1 false)
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, %90
  br i1 %104, label %92, label %97

105:                                              ; preds = %95, %105
  %106 = phi i64 [ 0, %95 ], [ %146, %105 ]
  %107 = phi ptr [ %71, %95 ], [ %147, %105 ]
  %108 = load ptr, ptr %96, align 8, !tbaa !6
  %109 = load i32, ptr %3, align 4, !tbaa !22
  %110 = shl nuw nsw i64 %106, 1
  %111 = trunc nuw nsw i64 %110 to i32
  %112 = add nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %108, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = load i32, ptr %2, align 4, !tbaa !22
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i16, ptr %115, i64 %117
  %119 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %106
  %120 = getelementptr inbounds i8, ptr %107, i64 90556
  %121 = load i32, ptr %120, align 4, !tbaa !23
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr nonnull align 2 %119, i64 %123, i1 false)
  %124 = load ptr, ptr %96, align 8, !tbaa !6
  %125 = load i32, ptr %3, align 4, !tbaa !22
  %126 = trunc i64 %110 to i32
  %127 = or disjoint i32 %126, 1
  %128 = add nsw i32 %127, %125
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %124, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = load i32, ptr %2, align 4, !tbaa !22
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %131, i64 %133
  %135 = load ptr, ptr @img, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 90560
  %137 = load i32, ptr %136, align 8, !tbaa !24
  %138 = trunc nuw nsw i64 %106 to i32
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %140
  %142 = getelementptr inbounds i8, ptr %135, i64 90556
  %143 = load i32, ptr %142, align 4, !tbaa !23
  %144 = sext i32 %143 to i64
  %145 = shl nsw i64 %144, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %134, ptr nonnull align 2 %141, i64 %145, i1 false)
  %146 = add nuw nsw i64 %106, 1
  %147 = load ptr, ptr @img, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %147, i64 90560
  %149 = load i32, ptr %148, align 8, !tbaa !24
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %146, %150
  br i1 %151, label %105, label %152

152:                                              ; preds = %105, %70, %92
  %153 = phi ptr [ %71, %92 ], [ %71, %70 ], [ %147, %105 ]
  br i1 %72, label %70, label %154

154:                                              ; preds = %152, %18
  %155 = phi ptr [ %19, %18 ], [ %153, %152 ]
  %156 = add nuw nsw i64 %20, 2
  %157 = getelementptr inbounds i8, ptr %155, i64 90304
  %158 = load i32, ptr %157, align 8, !tbaa !19
  %159 = trunc nuw i64 %156 to i32
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %18, label %214

161:                                              ; preds = %17, %206
  %162 = phi ptr [ %207, %206 ], [ %9, %17 ]
  %163 = phi ptr [ %208, %206 ], [ %4, %17 ]
  %164 = phi i64 [ %209, %206 ], [ 0, %17 ]
  %165 = getelementptr inbounds i8, ptr %163, i64 6472
  %166 = load ptr, ptr %165, align 8, !tbaa !20
  %167 = getelementptr inbounds i8, ptr %166, i64 %164
  %168 = load i8, ptr %167, align 1, !tbaa !21
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %206, label %170

170:                                              ; preds = %161
  %171 = trunc nuw nsw i64 %164 to i32
  call void @get_mb_pos(i32 noundef signext %171, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %172 = load i32, ptr %3, align 4, !tbaa !22
  %173 = load i32, ptr %2, align 4, !tbaa !22
  %174 = sext i32 %173 to i64
  %175 = sext i32 %172 to i64
  %176 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %177 = getelementptr ptr, ptr %6, i64 %175
  br label %181

178:                                              ; preds = %181
  %179 = getelementptr ptr, ptr %6, i64 %175
  %180 = getelementptr ptr, ptr %6, i64 %175
  br label %189

181:                                              ; preds = %170, %181
  %182 = phi i64 [ 0, %170 ], [ %187, %181 ]
  %183 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %182
  %184 = getelementptr ptr, ptr %177, i64 %182
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = getelementptr inbounds i16, ptr %185, i64 %174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %183, ptr noundef nonnull align 2 dereferenceable(32) %186, i64 32, i1 false)
  %187 = add nuw nsw i64 %182, 1
  %188 = icmp eq i64 %187, 32
  br i1 %188, label %178, label %181

189:                                              ; preds = %178, %189
  %190 = phi i64 [ 0, %178 ], [ %202, %189 ]
  %191 = shl nuw nsw i64 %190, 1
  %192 = getelementptr ptr, ptr %179, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds i16, ptr %193, i64 %174
  %195 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %194, ptr noundef nonnull align 2 dereferenceable(32) %195, i64 32, i1 false)
  %196 = or disjoint i64 %191, 1
  %197 = getelementptr ptr, ptr %180, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !6
  %199 = getelementptr inbounds i16, ptr %198, i64 %174
  %200 = or disjoint i64 %190, 16
  %201 = getelementptr inbounds [32 x [16 x i16]], ptr %1, i64 0, i64 %200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %199, ptr noundef nonnull align 2 dereferenceable(32) %201, i64 32, i1 false)
  %202 = add nuw nsw i64 %190, 1
  %203 = icmp eq i64 %202, 16
  br i1 %203, label %204, label %189

204:                                              ; preds = %189
  %205 = load ptr, ptr @img, align 8, !tbaa !6
  br label %206

206:                                              ; preds = %204, %161
  %207 = phi ptr [ %205, %204 ], [ %162, %161 ]
  %208 = phi ptr [ %176, %204 ], [ %163, %161 ]
  %209 = add nuw nsw i64 %164, 2
  %210 = getelementptr inbounds i8, ptr %207, i64 90304
  %211 = load i32, ptr %210, align 8, !tbaa !19
  %212 = trunc nuw i64 %209 to i32
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %161, label %214

214:                                              ; preds = %154, %206, %16, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @get_mb_pos(i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @code_a_picture(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31560
  store ptr %0, ptr %3, align 8, !tbaa !25
  %4 = load i32, ptr %2, align 8, !tbaa !26
  %5 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %2, i64 28
  %9 = load i32, ptr %8, align 4, !tbaa !27
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr @input, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 1236
  %14 = load i32, ptr %13, align 4, !tbaa !28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %2, i64 24
  %18 = load i32, ptr %17, align 8, !tbaa !30
  %19 = add i32 %18, -2
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %2, i64 28
  %23 = load i32, ptr %22, align 4, !tbaa !27
  %24 = icmp ne i32 %23, 2
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %16, %11, %21, %7
  %27 = phi i32 [ 1, %7 ], [ 0, %11 ], [ %25, %21 ], [ 0, %16 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !31
  store i32 0, ptr %0, align 8, !tbaa !33
  %29 = getelementptr inbounds i8, ptr %0, i64 812
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %0, i64 820
  store float 0.000000e+00, ptr %30, align 4, !tbaa !35
  %31 = getelementptr inbounds i8, ptr %0, i64 816
  store float 0.000000e+00, ptr %31, align 8, !tbaa !36
  tail call void @RandomIntraNewPicture() #17
  %32 = load ptr, ptr @img, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 90476
  store i32 1, ptr %33, align 4, !tbaa !37
  %34 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %35 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %36 = tail call signext i32 @FmoInit(ptr noundef %32, ptr noundef %34, ptr noundef %35) #17
  %37 = tail call signext i32 @FmoStartPicture() #17
  tail call void @CalculateQuantParam() #17
  tail call void @CalculateOffsetParam() #17
  %38 = load ptr, ptr @input, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 3892
  %40 = load i32, ptr %39, align 4, !tbaa !38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  tail call void @CalculateQuant8Param() #17
  tail call void @CalculateOffset8Param() #17
  br label %43

43:                                               ; preds = %42, %26
  tail call void @reset_pic_bin_count() #17
  %44 = load ptr, ptr @img, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 90592
  store i32 0, ptr %45, align 8, !tbaa !39
  %46 = getelementptr inbounds i8, ptr %44, i64 90304
  %47 = load i32, ptr %46, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %43, %69
  %50 = phi i32 [ %71, %69 ], [ 0, %43 ]
  %51 = phi i32 [ %70, %69 ], [ 0, %43 ]
  %52 = tail call signext i32 @FmoSliceGroupCompletelyCoded(i32 noundef signext %50) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49, %54
  %55 = phi i32 [ %57, %54 ], [ %51, %49 ]
  %56 = tail call signext i32 @encode_one_slice(i32 noundef signext %50, ptr noundef nonnull %0, i32 noundef signext %55) #17
  %57 = add i32 %56, %55
  %58 = load ptr, ptr @img, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 12
  %60 = load i32, ptr %59, align 4, !tbaa !40
  tail call void @FmoSetLastMacroblockInSlice(i32 noundef signext %60) #17
  %61 = load ptr, ptr @img, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 20
  %63 = load i32, ptr %62, align 4, !tbaa !41
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !41
  %65 = load ptr, ptr @stats, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 24
  store i32 0, ptr %66, align 8, !tbaa !42
  %67 = tail call signext i32 @FmoSliceGroupCompletelyCoded(i32 noundef signext %50) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %54, label %69

69:                                               ; preds = %54, %49
  %70 = phi i32 [ %51, %49 ], [ %57, %54 ]
  %71 = add nuw nsw i32 %50, 1
  %72 = load ptr, ptr @img, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 90304
  %74 = load i32, ptr %73, align 8, !tbaa !19
  %75 = icmp ult i32 %70, %74
  br i1 %75, label %49, label %76

76:                                               ; preds = %69, %43
  %77 = tail call signext i32 @FmoEndPicture() #17
  %78 = load ptr, ptr @input, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %78, i64 3136
  %80 = load i32, ptr %79, align 8, !tbaa !44
  %81 = icmp eq i32 %80, 3
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %81, label %83, label %107

83:                                               ; preds = %76
  %84 = getelementptr inbounds i8, ptr %82, i64 24
  %85 = load i32, ptr %84, align 8, !tbaa !30
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %107, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %78, i64 3576
  %89 = load i32, ptr %88, align 8, !tbaa !45
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87, %91
  %92 = phi i64 [ %99, %91 ], [ 0, %87 ]
  %93 = load ptr, ptr @img, align 8, !tbaa !6
  %94 = load ptr, ptr @decs, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %94, i64 24
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = getelementptr inbounds ptr, ptr %96, i64 %92
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  tail call void @DeblockFrame(ptr noundef %93, ptr noundef %98, ptr noundef null) #17
  %99 = add nuw nsw i64 %92, 1
  %100 = load ptr, ptr @input, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 3576
  %102 = load i32, ptr %101, align 8, !tbaa !45
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %91, label %105

105:                                              ; preds = %91
  %106 = load ptr, ptr @img, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %105, %87, %83, %76
  %108 = phi ptr [ %106, %105 ], [ %82, %87 ], [ %82, %83 ], [ %82, %76 ]
  %109 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 6424
  %111 = load ptr, ptr %110, align 8, !tbaa !10
  %112 = getelementptr inbounds i8, ptr %109, i64 6464
  %113 = load ptr, ptr %112, align 8, !tbaa !13
  tail call void @DeblockFrame(ptr noundef %108, ptr noundef %111, ptr noundef %113) #17
  %114 = load ptr, ptr @img, align 8, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %114, i64 90220
  %116 = load i32, ptr %115, align 4, !tbaa !48
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  tail call void @MbAffPostProc()
  br label %119

119:                                              ; preds = %118, %107
  ret void
}

declare dso_local void @RandomIntraNewPicture() local_unnamed_addr #2

declare dso_local signext i32 @FmoInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @FmoStartPicture() local_unnamed_addr #2

declare dso_local void @CalculateQuantParam() local_unnamed_addr #2

declare dso_local void @CalculateOffsetParam() local_unnamed_addr #2

declare dso_local void @CalculateQuant8Param() local_unnamed_addr #2

declare dso_local void @CalculateOffset8Param() local_unnamed_addr #2

declare dso_local void @reset_pic_bin_count() local_unnamed_addr #2

declare dso_local signext i32 @FmoSliceGroupCompletelyCoded(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @encode_one_slice(i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @FmoSetLastMacroblockInSlice(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @FmoEndPicture() local_unnamed_addr #2

declare dso_local void @DeblockFrame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @encode_one_frame() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.timeb, align 8
  %4 = alloca %struct.timeb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  store i32 0, ptr @me_time, align 4, !tbaa !22
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 89212
  store i32 0, ptr %6, align 4, !tbaa !49
  store ptr null, ptr @enc_frame_picture, align 8, !tbaa !6
  store ptr null, ptr @enc_frame_picture2, align 8, !tbaa !6
  store ptr null, ptr @enc_frame_picture3, align 8, !tbaa !6
  %7 = call signext i32 @ftime(ptr noundef nonnull %3) #17
  %8 = call i64 @time(ptr noundef nonnull %1) #17
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90448
  store i32 0, ptr %10, align 8, !tbaa !50
  %11 = load ptr, ptr @input, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 60
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr %9, align 8, !tbaa !26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = call signext i32 @write_PPS(i32 noundef signext 0, i32 noundef signext 0) #17
  %20 = load ptr, ptr @stats, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 1500
  store i32 %19, ptr %21, align 4, !tbaa !52
  %22 = getelementptr inbounds i8, ptr %20, i64 1496
  %23 = load i32, ptr %22, align 8, !tbaa !53
  %24 = add nsw i32 %23, %19
  store i32 %24, ptr %22, align 8, !tbaa !53
  %25 = load ptr, ptr @img, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %18, %15, %0
  %27 = phi ptr [ %25, %18 ], [ %9, %15 ], [ %9, %0 ]
  %28 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %28, ptr @imgY_org, align 8, !tbaa !6
  %29 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %29, ptr @imgUV_org, align 8, !tbaa !6
  %30 = load ptr, ptr @last_P_no_frm, align 8, !tbaa !6
  store ptr %30, ptr @last_P_no, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %27, i64 12
  store i32 0, ptr %31, align 4, !tbaa !40
  %32 = getelementptr inbounds i8, ptr %27, i64 20
  store i32 0, ptr %32, align 4, !tbaa !41
  %33 = load ptr, ptr @stats, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 24
  store i32 0, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds i8, ptr %27, i64 136
  %36 = getelementptr inbounds i8, ptr %27, i64 96
  store i32 0, ptr %36, align 8, !tbaa !54
  %37 = getelementptr inbounds i8, ptr %27, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, i8 0, i64 32, i1 false)
  %38 = load i32, ptr %37, align 4, !tbaa !55
  %39 = sdiv i32 %38, 16
  %40 = getelementptr inbounds i8, ptr %27, i64 60
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = sdiv i32 %41, 16
  %43 = mul nsw i32 %42, %39
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %27, i64 31576
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = zext nneg i32 %43 to i64
  br label %49

49:                                               ; preds = %49, %45
  %50 = phi i64 [ 0, %45 ], [ %52, %49 ]
  %51 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 1
  store i32 -1, ptr %51, align 4, !tbaa !58
  %52 = add nuw nsw i64 %50, 1
  %53 = icmp eq i64 %52, %48
  br i1 %53, label %54, label %49

54:                                               ; preds = %49, %26
  %55 = getelementptr inbounds i8, ptr %27, i64 89316
  %56 = load i32, ptr %55, align 4, !tbaa !61
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %205

58:                                               ; preds = %54
  %59 = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !22
  %60 = load i32, ptr %27, align 8, !tbaa !26
  %61 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %62 = sub nsw i32 %60, %61
  %63 = load ptr, ptr @input, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, ptr %63, i64 20
  %65 = load i32, ptr %64, align 4, !tbaa !62
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %66, %62
  %68 = add nsw i32 %67, %59
  %69 = getelementptr inbounds i8, ptr %27, i64 89200
  store i32 %68, ptr %69, align 8, !tbaa !63
  %70 = getelementptr inbounds i8, ptr %27, i64 89284
  %71 = load i32, ptr %70, align 4, !tbaa !64
  %72 = getelementptr inbounds i8, ptr %27, i64 89288
  store i32 %71, ptr %72, align 8, !tbaa !65
  store i32 %68, ptr %70, align 4, !tbaa !64
  %73 = getelementptr inbounds i8, ptr %63, i64 3112
  %74 = load i32, ptr %73, align 8, !tbaa !66
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %58
  %77 = add nsw i32 %60, 1
  %78 = getelementptr inbounds i8, ptr %63, i64 8
  %79 = load i32, ptr %78, align 8, !tbaa !67
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 %74, ptr %69, align 8, !tbaa !63
  br label %82

82:                                               ; preds = %81, %76, %58
  %83 = phi i32 [ %74, %81 ], [ %68, %76 ], [ %68, %58 ]
  %84 = icmp eq i32 %60, %61
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, ptr %63, i64 1244
  %87 = load i32, ptr %86, align 4, !tbaa !68
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 %83, ptr @nextP_tr_frm, align 4, !tbaa !22
  br label %90

90:                                               ; preds = %89, %85, %82
  %91 = getelementptr inbounds i8, ptr %63, i64 3908
  %92 = load i32, ptr %91, align 4, !tbaa !69
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %193

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %27, i64 24
  %96 = load i32, ptr %95, align 8, !tbaa !30
  %97 = icmp eq i32 %96, 2
  %98 = getelementptr inbounds i8, ptr %63, i64 3124
  %99 = load i32, ptr %98, align 4, !tbaa !70
  %100 = icmp sgt i32 %99, 0
  br i1 %97, label %101, label %124

101:                                              ; preds = %94
  br i1 %100, label %102, label %120

102:                                              ; preds = %101
  %103 = icmp slt i32 %83, %99
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds i8, ptr %63, i64 1296
  %106 = load i32, ptr %105, align 8, !tbaa !71
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104, %102
  %109 = shl nuw nsw i32 %99, 1
  %110 = srem i32 %83, %109
  %111 = icmp slt i32 %110, %99
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %63, i64 1296
  %114 = load i32, ptr %113, align 8, !tbaa !71
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %104
  %117 = getelementptr inbounds i8, ptr %63, i64 3128
  %118 = load i32, ptr %117, align 8, !tbaa !72
  %119 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %118, ptr %119, align 8, !tbaa !73
  br label %193

120:                                              ; preds = %112, %108, %101
  %121 = getelementptr inbounds i8, ptr %63, i64 12
  %122 = load i32, ptr %121, align 4, !tbaa !74
  %123 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %122, ptr %123, align 8, !tbaa !73
  br label %193

124:                                              ; preds = %94
  br i1 %100, label %125, label %148

125:                                              ; preds = %124
  %126 = icmp slt i32 %83, %99
  br i1 %126, label %131, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %63, i64 1296
  %129 = load i32, ptr %128, align 8, !tbaa !71
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127, %125
  %132 = shl nuw nsw i32 %99, 1
  %133 = srem i32 %83, %132
  %134 = icmp slt i32 %133, %99
  br i1 %134, label %148, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %63, i64 1296
  %137 = load i32, ptr %136, align 8, !tbaa !71
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %148

139:                                              ; preds = %135, %127
  %140 = getelementptr inbounds i8, ptr %63, i64 3116
  %141 = load i32, ptr %140, align 4, !tbaa !75
  %142 = getelementptr inbounds i8, ptr %27, i64 90316
  %143 = load i32, ptr %142, align 4, !tbaa !76
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %139
  %146 = getelementptr inbounds i8, ptr %63, i64 4324
  %147 = load i32, ptr %146, align 4, !tbaa !77
  br label %162

148:                                              ; preds = %135, %131, %124
  %149 = getelementptr inbounds i8, ptr %63, i64 16
  %150 = load i32, ptr %149, align 8, !tbaa !78
  %151 = getelementptr inbounds i8, ptr %27, i64 90316
  %152 = load i32, ptr %151, align 4, !tbaa !76
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = getelementptr inbounds i8, ptr %63, i64 4324
  %156 = load i32, ptr %155, align 4, !tbaa !77
  br label %157

157:                                              ; preds = %154, %148
  %158 = phi i32 [ %156, %154 ], [ 0, %148 ]
  %159 = add nsw i32 %158, %150
  %160 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %159, ptr %160, align 8, !tbaa !73
  %161 = icmp eq i32 %96, 3
  br i1 %161, label %167, label %193

162:                                              ; preds = %145, %139
  %163 = phi i32 [ %147, %145 ], [ 0, %139 ]
  %164 = add nsw i32 %163, %141
  %165 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %164, ptr %165, align 8, !tbaa !73
  %166 = icmp eq i32 %96, 3
  br i1 %166, label %168, label %193

167:                                              ; preds = %157
  br i1 %100, label %168, label %186

168:                                              ; preds = %167, %162
  %169 = shl nuw nsw i32 %99, 1
  %170 = srem i32 %83, %169
  %171 = icmp slt i32 %170, %99
  br i1 %171, label %186, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds i8, ptr %63, i64 3116
  %174 = load i32, ptr %173, align 4, !tbaa !75
  %175 = getelementptr inbounds i8, ptr %63, i64 16
  %176 = load i32, ptr %175, align 8, !tbaa !78
  %177 = getelementptr inbounds i8, ptr %63, i64 1284
  %178 = load i32, ptr %177, align 4, !tbaa !79
  %179 = sub i32 %174, %176
  %180 = add i32 %179, %178
  %181 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %180, ptr %181, align 8, !tbaa !73
  %182 = getelementptr inbounds i8, ptr %63, i64 1288
  %183 = load i32, ptr %182, align 8, !tbaa !80
  %184 = add i32 %183, %179
  %185 = getelementptr inbounds i8, ptr %27, i64 44
  store i32 %184, ptr %185, align 4, !tbaa !81
  br label %193

186:                                              ; preds = %168, %167
  %187 = getelementptr inbounds i8, ptr %63, i64 1284
  %188 = load i32, ptr %187, align 4, !tbaa !79
  %189 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %188, ptr %189, align 8, !tbaa !73
  %190 = getelementptr inbounds i8, ptr %63, i64 1288
  %191 = load i32, ptr %190, align 8, !tbaa !80
  %192 = getelementptr inbounds i8, ptr %27, i64 44
  store i32 %191, ptr %192, align 4, !tbaa !81
  br label %193

193:                                              ; preds = %186, %172, %162, %157, %120, %116, %90
  %194 = getelementptr inbounds i8, ptr %27, i64 88
  %195 = load i32, ptr %194, align 8, !tbaa !82
  %196 = getelementptr inbounds i8, ptr %27, i64 92
  store i32 %195, ptr %196, align 4, !tbaa !83
  %197 = getelementptr inbounds i8, ptr %63, i64 80
  %198 = load i32, ptr %197, align 8, !tbaa !84
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %375

200:                                              ; preds = %193
  %201 = load i32, ptr %27, align 8, !tbaa !26
  %202 = sub nsw i32 %201, %61
  %203 = sdiv i32 %202, %198
  %204 = srem i32 %203, %42
  store i32 %204, ptr %194, align 8, !tbaa !82
  br label %375

205:                                              ; preds = %54
  %206 = load ptr, ptr @input, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 20
  %208 = load i32, ptr %207, align 4, !tbaa !62
  %209 = add nsw i32 %208, 1
  %210 = getelementptr inbounds i8, ptr %27, i64 89312
  store i32 %209, ptr %210, align 8, !tbaa !85
  %211 = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !22
  %212 = load i32, ptr %27, align 8, !tbaa !26
  %213 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %214 = sub nsw i32 %212, %213
  %215 = add nsw i32 %214, -1
  %216 = mul nsw i32 %215, %209
  %217 = add nsw i32 %216, %211
  %218 = mul nsw i32 %214, %209
  %219 = add nsw i32 %218, %211
  store i32 %217, ptr %30, align 4, !tbaa !22
  %220 = getelementptr inbounds i8, ptr %27, i64 90192
  %221 = load i32, ptr %220, align 8, !tbaa !86
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %235

223:                                              ; preds = %205
  %224 = load i32, ptr %30, align 4
  br label %225

225:                                              ; preds = %223, %225
  %226 = phi i32 [ %224, %223 ], [ %230, %225 ]
  %227 = phi i64 [ 1, %223 ], [ %231, %225 ]
  %228 = getelementptr i32, ptr %30, i64 %227
  %229 = load i32, ptr %210, align 8, !tbaa !85
  %230 = sub nsw i32 %226, %229
  store i32 %230, ptr %228, align 4, !tbaa !22
  %231 = add nuw nsw i64 %227, 1
  %232 = load i32, ptr %220, align 8, !tbaa !86
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %225, label %235

235:                                              ; preds = %225, %205
  %236 = getelementptr inbounds i8, ptr %206, i64 3112
  %237 = load i32, ptr %236, align 8, !tbaa !66
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr %27, align 8, !tbaa !26
  %241 = add nsw i32 %240, 1
  %242 = getelementptr inbounds i8, ptr %206, i64 8
  %243 = load i32, ptr %242, align 8, !tbaa !67
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = sub nsw i32 %237, %217
  store i32 %246, ptr %210, align 8, !tbaa !85
  br label %247

247:                                              ; preds = %245, %239, %235
  %248 = phi i32 [ %237, %245 ], [ %219, %239 ], [ %219, %235 ]
  %249 = load i32, ptr %207, align 4, !tbaa !62
  %250 = add nsw i32 %249, 1
  %251 = sitofp i32 %250 to double
  %252 = getelementptr inbounds i8, ptr %206, i64 1244
  %253 = load i32, ptr %252, align 4, !tbaa !68
  %254 = sitofp i32 %253 to double
  %255 = fadd double %254, 1.000000e+00
  %256 = fdiv double %251, %255
  %257 = getelementptr inbounds i8, ptr %27, i64 89304
  store double %256, ptr %257, align 8, !tbaa !87
  %258 = getelementptr inbounds i8, ptr %206, i64 1944
  %259 = load i32, ptr %258, align 8, !tbaa !88
  switch i32 %259, label %261 [
    i32 3, label %260
    i32 0, label %270
  ]

260:                                              ; preds = %247
  store double 1.000000e+00, ptr %257, align 8, !tbaa !87
  br label %261

261:                                              ; preds = %260, %247
  %262 = phi double [ %256, %247 ], [ 1.000000e+00, %260 ]
  %263 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %264 = load i32, ptr %55, align 4, !tbaa !61
  %265 = sext i32 %264 to i64
  %266 = getelementptr %struct.GOP_DATA, ptr %263, i64 %265
  %267 = getelementptr i8, ptr %266, i64 -20
  %268 = load i32, ptr %267, align 4, !tbaa !89
  %269 = add nsw i32 %268, 1
  br label %272

270:                                              ; preds = %247
  %271 = load i32, ptr %55, align 4, !tbaa !61
  br label %272

272:                                              ; preds = %270, %261
  %273 = phi i32 [ %271, %270 ], [ %269, %261 ]
  %274 = phi double [ %256, %270 ], [ %262, %261 ]
  %275 = phi i32 [ %271, %270 ], [ %264, %261 ]
  %276 = phi i1 [ true, %270 ], [ false, %261 ]
  %277 = sitofp i32 %273 to double
  %278 = fmul double %274, %277
  %279 = fptosi double %278 to i32
  %280 = add nsw i32 %217, %279
  %281 = getelementptr inbounds i8, ptr %27, i64 89200
  %282 = icmp slt i32 %280, %248
  %283 = add nsw i32 %248, -1
  %284 = select i1 %282, i32 %280, i32 %283
  store i32 %284, ptr %281, align 8, !tbaa !63
  %285 = getelementptr inbounds i8, ptr %206, i64 3908
  %286 = load i32, ptr %285, align 4, !tbaa !69
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %367

288:                                              ; preds = %272
  br i1 %276, label %289, label %368

289:                                              ; preds = %288
  %290 = getelementptr inbounds i8, ptr %206, i64 3124
  %291 = load i32, ptr %290, align 4, !tbaa !70
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %314

293:                                              ; preds = %289
  %294 = icmp slt i32 %284, %291
  br i1 %294, label %299, label %295

295:                                              ; preds = %293
  %296 = getelementptr inbounds i8, ptr %206, i64 1296
  %297 = load i32, ptr %296, align 8, !tbaa !71
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %321, label %299

299:                                              ; preds = %295, %293
  %300 = shl nuw nsw i32 %291, 1
  %301 = srem i32 %284, %300
  %302 = icmp slt i32 %301, %291
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds i8, ptr %206, i64 1296
  %305 = load i32, ptr %304, align 8, !tbaa !71
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %321, label %307

307:                                              ; preds = %303, %299
  %308 = getelementptr inbounds i8, ptr %206, i64 1248
  %309 = load i32, ptr %308, align 8, !tbaa !91
  %310 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %309, ptr %310, align 8, !tbaa !73
  %311 = getelementptr inbounds i8, ptr %27, i64 90316
  %312 = load i32, ptr %311, align 4, !tbaa !76
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %375, label %328

314:                                              ; preds = %289
  %315 = getelementptr inbounds i8, ptr %206, i64 1248
  %316 = load i32, ptr %315, align 8, !tbaa !91
  %317 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %316, ptr %317, align 8, !tbaa !73
  %318 = getelementptr inbounds i8, ptr %27, i64 90316
  %319 = load i32, ptr %318, align 4, !tbaa !76
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %375, label %354

321:                                              ; preds = %303, %295
  %322 = getelementptr inbounds i8, ptr %206, i64 3120
  %323 = load i32, ptr %322, align 8, !tbaa !92
  %324 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %323, ptr %324, align 8, !tbaa !73
  %325 = getelementptr inbounds i8, ptr %27, i64 90316
  %326 = load i32, ptr %325, align 4, !tbaa !76
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %375, label %328

328:                                              ; preds = %321, %307
  br i1 %294, label %333, label %329

329:                                              ; preds = %328
  %330 = getelementptr inbounds i8, ptr %206, i64 1296
  %331 = load i32, ptr %330, align 8, !tbaa !71
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %329, %328
  %334 = shl nuw nsw i32 %291, 1
  %335 = srem i32 %284, %334
  %336 = icmp slt i32 %335, %291
  br i1 %336, label %354, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds i8, ptr %206, i64 1296
  %339 = load i32, ptr %338, align 8, !tbaa !71
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %354

341:                                              ; preds = %337, %329
  %342 = getelementptr inbounds i8, ptr %206, i64 3120
  %343 = load i32, ptr %342, align 8, !tbaa !92
  %344 = getelementptr inbounds i8, ptr %206, i64 3132
  %345 = load i32, ptr %344, align 4, !tbaa !93
  %346 = add nsw i32 %345, %343
  %347 = getelementptr inbounds i8, ptr %27, i64 90492
  %348 = load i32, ptr %347, align 4, !tbaa !94
  %349 = sub nsw i32 0, %348
  %350 = icmp slt i32 %346, %349
  %351 = call i32 @llvm.smin.i32(i32 %346, i32 51)
  %352 = select i1 %350, i32 %349, i32 %351
  %353 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %352, ptr %353, align 8, !tbaa !73
  br label %375

354:                                              ; preds = %337, %333, %314
  %355 = getelementptr inbounds i8, ptr %206, i64 1248
  %356 = load i32, ptr %355, align 8, !tbaa !91
  %357 = getelementptr inbounds i8, ptr %206, i64 1252
  %358 = load i32, ptr %357, align 4, !tbaa !95
  %359 = add nsw i32 %358, %356
  %360 = getelementptr inbounds i8, ptr %27, i64 90492
  %361 = load i32, ptr %360, align 4, !tbaa !94
  %362 = sub nsw i32 0, %361
  %363 = icmp slt i32 %359, %362
  %364 = call i32 @llvm.smin.i32(i32 %359, i32 51)
  %365 = select i1 %363, i32 %362, i32 %364
  %366 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %365, ptr %366, align 8, !tbaa !73
  br label %375

367:                                              ; preds = %272
  br i1 %276, label %375, label %368

368:                                              ; preds = %367, %288
  %369 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %370 = sext i32 %275 to i64
  %371 = getelementptr %struct.GOP_DATA, ptr %369, i64 %370
  %372 = getelementptr i8, ptr %371, i64 -12
  %373 = load i32, ptr %372, align 4, !tbaa !96
  %374 = getelementptr inbounds i8, ptr %27, i64 40
  store i32 %373, ptr %374, align 8, !tbaa !73
  br label %375

375:                                              ; preds = %193, %200, %307, %314, %321, %341, %354, %367, %368
  %376 = getelementptr inbounds i8, ptr %27, i64 90200
  %377 = load i32, ptr %376, align 8, !tbaa !97
  call void @UpdateSubseqInfo(i32 noundef signext %377) #17
  call void @UpdateSceneInformation(i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1) #17
  %378 = load ptr, ptr @img, align 8, !tbaa !6
  %379 = getelementptr inbounds i8, ptr %378, i64 90324
  store i32 0, ptr %379, align 4, !tbaa !98
  %380 = getelementptr inbounds i8, ptr %378, i64 90328
  store i32 0, ptr %380, align 8, !tbaa !99
  %381 = getelementptr inbounds i8, ptr %378, i64 90336
  store ptr null, ptr %381, align 8, !tbaa !100
  %382 = getelementptr inbounds i8, ptr %378, i64 89316
  %383 = load i32, ptr %382, align 4, !tbaa !61
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %418, label %385

385:                                              ; preds = %375
  %386 = load ptr, ptr @input, align 8, !tbaa !6
  %387 = getelementptr inbounds i8, ptr %386, i64 1944
  %388 = load i32, ptr %387, align 8, !tbaa !88
  %389 = icmp eq i32 %388, 0
  %390 = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !22
  %391 = load i32, ptr %378, align 8, !tbaa !26
  %392 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %393 = xor i32 %392, -1
  %394 = add i32 %391, %393
  %395 = getelementptr inbounds i8, ptr %386, i64 20
  %396 = load i32, ptr %395, align 4, !tbaa !62
  %397 = add nsw i32 %396, 1
  %398 = mul nsw i32 %397, %394
  %399 = add nsw i32 %398, %390
  %400 = getelementptr inbounds i8, ptr %378, i64 89304
  %401 = load double, ptr %400, align 8, !tbaa !87
  br i1 %389, label %413, label %402

402:                                              ; preds = %385
  %403 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %404 = sext i32 %383 to i64
  %405 = getelementptr %struct.GOP_DATA, ptr %403, i64 %404
  %406 = getelementptr i8, ptr %405, i64 -20
  %407 = load i32, ptr %406, align 4, !tbaa !89
  %408 = add nsw i32 %407, 1
  %409 = sitofp i32 %408 to double
  %410 = fmul double %401, %409
  %411 = fptosi double %410 to i32
  %412 = add nsw i32 %399, %411
  br label %438

413:                                              ; preds = %385
  %414 = sitofp i32 %383 to double
  %415 = fmul double %401, %414
  %416 = fptosi double %415 to i32
  %417 = add nsw i32 %399, %416
  br label %438

418:                                              ; preds = %375
  %419 = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !22
  %420 = load i32, ptr %378, align 8, !tbaa !26
  %421 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %422 = sub nsw i32 %420, %421
  %423 = load ptr, ptr @input, align 8, !tbaa !6
  %424 = getelementptr inbounds i8, ptr %423, i64 20
  %425 = load i32, ptr %424, align 4, !tbaa !62
  %426 = add nsw i32 %425, 1
  %427 = mul nsw i32 %426, %422
  %428 = add nsw i32 %427, %419
  store i32 %428, ptr @frame_no, align 4, !tbaa !22
  %429 = getelementptr inbounds i8, ptr %423, i64 3112
  %430 = load i32, ptr %429, align 8, !tbaa !66
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %441, label %432

432:                                              ; preds = %418
  %433 = load i32, ptr %378, align 8, !tbaa !26
  %434 = add nsw i32 %433, 1
  %435 = getelementptr inbounds i8, ptr %423, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !67
  %437 = icmp eq i32 %434, %436
  br i1 %437, label %438, label %441

438:                                              ; preds = %432, %413, %402
  %439 = phi ptr [ %386, %402 ], [ %386, %413 ], [ %423, %432 ]
  %440 = phi i32 [ %412, %402 ], [ %417, %413 ], [ %430, %432 ]
  store i32 %440, ptr @frame_no, align 4, !tbaa !22
  br label %441

441:                                              ; preds = %418, %432, %438
  %442 = phi ptr [ %423, %418 ], [ %423, %432 ], [ %439, %438 ]
  %443 = phi i32 [ %428, %418 ], [ %428, %432 ], [ %440, %438 ]
  %444 = getelementptr inbounds i8, ptr %442, i64 224
  %445 = load i32, ptr %444, align 8, !tbaa !101
  %446 = getelementptr inbounds i8, ptr %442, i64 68
  %447 = load i32, ptr %446, align 4, !tbaa !102
  %448 = getelementptr inbounds i8, ptr %442, i64 72
  %449 = load i32, ptr %448, align 8, !tbaa !103
  %450 = getelementptr inbounds i8, ptr %442, i64 3980
  %451 = load i32, ptr %450, align 4, !tbaa !104
  %452 = getelementptr inbounds i8, ptr %442, i64 3976
  %453 = load i32, ptr %452, align 8, !tbaa !105
  %454 = getelementptr inbounds i8, ptr %378, i64 90480
  %455 = load i32, ptr %454, align 8, !tbaa !106
  %456 = sdiv i32 %455, 8
  %457 = mul nsw i32 %449, %447
  %458 = mul nsw i32 %453, %451
  %459 = mul i32 %457, %456
  %460 = mul i32 %458, %456
  %461 = shl nsw i32 %460, 1
  %462 = add nsw i32 %461, %459
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, ptr %442, i64 3984
  %465 = load i32, ptr %464, align 8, !tbaa !107
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %471

467:                                              ; preds = %441
  %468 = getelementptr inbounds i8, ptr %442, i64 76
  %469 = load i32, ptr %468, align 4, !tbaa !108
  %470 = icmp eq i32 %469, 3
  br label %471

471:                                              ; preds = %467, %441
  %472 = phi i1 [ false, %441 ], [ %470, %467 ]
  %473 = load i32, ptr @p_in, align 4, !tbaa !22
  %474 = icmp eq i32 %473, -1
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14, i32 noundef signext 2428, ptr noundef nonnull @__PRETTY_FUNCTION__.ReadOneFrame) #18
  unreachable

476:                                              ; preds = %471
  %477 = zext i32 %459 to i64
  %478 = call noalias ptr @malloc(i64 noundef %477) #19
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %482

480:                                              ; preds = %476
  call void @no_mem_exit(ptr noundef nonnull @.str.29) #17
  %481 = load i32, ptr @p_in, align 4, !tbaa !22
  br label %482

482:                                              ; preds = %480, %476
  %483 = phi i32 [ %481, %480 ], [ %473, %476 ]
  %484 = sext i32 %445 to i64
  %485 = call i64 @lseek64(i32 noundef signext %483, i64 noundef %484, i32 noundef signext 0) #17
  %486 = icmp eq i64 %485, %484
  br i1 %486, label %488, label %487

487:                                              ; preds = %482
  call void @error(ptr noundef nonnull @.str.30, i32 noundef signext -1) #17
  br label %488

488:                                              ; preds = %487, %482
  %489 = load i32, ptr @p_in, align 4, !tbaa !22
  %490 = load ptr, ptr @input, align 8, !tbaa !6
  %491 = getelementptr inbounds i8, ptr %490, i64 1240
  %492 = load i32, ptr %491, align 8, !tbaa !109
  %493 = sext i32 %492 to i64
  %494 = mul nsw i64 %493, %463
  %495 = call i64 @lseek64(i32 noundef signext %489, i64 noundef %494, i32 noundef signext 1) #17
  %496 = icmp eq i64 %495, -1
  br i1 %496, label %497, label %502

497:                                              ; preds = %488
  %498 = load ptr, ptr @input, align 8, !tbaa !6
  %499 = getelementptr inbounds i8, ptr %498, i64 1240
  %500 = load i32, ptr %499, align 8, !tbaa !109
  %501 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.31, i32 noundef signext %500) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext -1) #17
  br label %502

502:                                              ; preds = %497, %488
  %503 = load i32, ptr @p_in, align 4, !tbaa !22
  %504 = sext i32 %443 to i64
  %505 = mul nsw i64 %463, %504
  %506 = call i64 @lseek64(i32 noundef signext %503, i64 noundef %505, i32 noundef signext 1) #17
  %507 = icmp eq i64 %506, -1
  br i1 %507, label %508, label %514

508:                                              ; preds = %502
  %509 = load ptr, ptr @input, align 8, !tbaa !6
  %510 = getelementptr inbounds i8, ptr %509, i64 1240
  %511 = load i32, ptr %510, align 8, !tbaa !109
  %512 = add nsw i32 %511, %443
  %513 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.31, i32 noundef signext %512) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext -1) #17
  br label %514

514:                                              ; preds = %508, %502
  %515 = load ptr, ptr @img, align 8, !tbaa !6
  %516 = getelementptr inbounds i8, ptr %515, i64 90480
  %517 = load i32, ptr %516, align 8, !tbaa !106
  %518 = and i32 %517, 7
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %568

520:                                              ; preds = %514
  br i1 %472, label %521, label %526

521:                                              ; preds = %520
  %522 = load i32, ptr @p_in, align 4, !tbaa !22
  %523 = sdiv i32 %462, 3
  %524 = sext i32 %523 to i64
  %525 = call i64 @lseek64(i32 noundef signext %522, i64 noundef %524, i32 noundef signext 1) #17
  br label %526

526:                                              ; preds = %521, %520
  %527 = load i32, ptr @p_in, align 4, !tbaa !22
  %528 = sext i32 %459 to i64
  %529 = call i64 @read(i32 noundef signext %527, ptr noundef %478, i64 noundef %528) #17
  %530 = icmp eq i64 %529, %528
  br i1 %530, label %533, label %531

531:                                              ; preds = %526
  %532 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef signext %459)
  call void @report_stats_on_error() #17
  call void @exit(i32 noundef signext -1) #18
  unreachable

533:                                              ; preds = %526
  %534 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  call void @buf2img(ptr noundef %534, ptr noundef %478, i32 noundef signext %447, i32 noundef signext %449, i32 noundef signext %456)
  %535 = load ptr, ptr @img, align 8, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %535, i64 90548
  %537 = load i32, ptr %536, align 4, !tbaa !14
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %570, label %539

539:                                              ; preds = %533
  %540 = load i32, ptr @p_in, align 4, !tbaa !22
  %541 = sext i32 %460 to i64
  %542 = call i64 @read(i32 noundef signext %540, ptr noundef %478, i64 noundef %541) #17
  %543 = icmp eq i64 %542, %541
  br i1 %543, label %546, label %544

544:                                              ; preds = %539
  %545 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef signext %459)
  call void @report_stats_on_error() #17
  call void @exit(i32 noundef signext -1) #18
  unreachable

546:                                              ; preds = %539
  %547 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  %548 = load ptr, ptr %547, align 8, !tbaa !6
  call void @buf2img(ptr noundef %548, ptr noundef %478, i32 noundef signext %451, i32 noundef signext %453, i32 noundef signext %456)
  br i1 %472, label %549, label %553

549:                                              ; preds = %546
  %550 = load i32, ptr @p_in, align 4, !tbaa !22
  %551 = sub nsw i64 0, %463
  %552 = call i64 @lseek64(i32 noundef signext %550, i64 noundef %551, i32 noundef signext 1) #17
  br label %553

553:                                              ; preds = %549, %546
  %554 = load i32, ptr @p_in, align 4, !tbaa !22
  %555 = call i64 @read(i32 noundef signext %554, ptr noundef %478, i64 noundef %541) #17
  %556 = icmp eq i64 %555, %541
  br i1 %556, label %559, label %557

557:                                              ; preds = %553
  %558 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef signext %459)
  call void @report_stats_on_error() #17
  call void @exit(i32 noundef signext -1) #18
  unreachable

559:                                              ; preds = %553
  %560 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  %561 = getelementptr inbounds i8, ptr %560, i64 8
  %562 = load ptr, ptr %561, align 8, !tbaa !6
  call void @buf2img(ptr noundef %562, ptr noundef %478, i32 noundef signext %451, i32 noundef signext %453, i32 noundef signext %456)
  br i1 %472, label %563, label %570

563:                                              ; preds = %559
  %564 = load i32, ptr @p_in, align 4, !tbaa !22
  %565 = shl nsw i64 %463, 1
  %566 = sdiv i64 %565, 3
  %567 = call i64 @lseek64(i32 noundef signext %564, i64 noundef %566, i32 noundef signext 1) #17
  br label %570

568:                                              ; preds = %514
  %569 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33)
  call void @exit(i32 noundef signext -1) #18
  unreachable

570:                                              ; preds = %533, %559, %563
  call void @free(ptr noundef %478) #17
  %571 = load ptr, ptr @input, align 8, !tbaa !6
  %572 = getelementptr inbounds i8, ptr %571, i64 72
  %573 = load i32, ptr %572, align 8, !tbaa !103
  %574 = load ptr, ptr @img, align 8, !tbaa !6
  %575 = getelementptr inbounds i8, ptr %574, i64 52
  %576 = load i32, ptr %575, align 4, !tbaa !55
  %577 = getelementptr inbounds i8, ptr %574, i64 60
  %578 = load i32, ptr %577, align 4, !tbaa !56
  %579 = getelementptr inbounds i8, ptr %571, i64 3980
  %580 = load i32, ptr %579, align 4, !tbaa !104
  %581 = getelementptr inbounds i8, ptr %571, i64 3976
  %582 = load i32, ptr %581, align 8, !tbaa !105
  %583 = getelementptr inbounds i8, ptr %574, i64 56
  %584 = load i32, ptr %583, align 8, !tbaa !110
  %585 = getelementptr inbounds i8, ptr %574, i64 64
  %586 = load i32, ptr %585, align 8, !tbaa !111
  %587 = icmp sgt i32 %573, 0
  br i1 %587, label %588, label %605

588:                                              ; preds = %570
  %589 = getelementptr inbounds i8, ptr %571, i64 68
  %590 = load i32, ptr %589, align 4, !tbaa !102
  %591 = icmp slt i32 %590, %576
  %592 = load ptr, ptr @imgY_org_frm, align 8
  %593 = sext i32 %590 to i64
  %594 = zext nneg i32 %573 to i64
  %595 = sext i32 %576 to i64
  %596 = shl nsw i64 %593, 1
  br label %597

597:                                              ; preds = %618, %588
  %598 = phi i64 [ 0, %588 ], [ %619, %618 ]
  br i1 %591, label %599, label %618

599:                                              ; preds = %597
  %600 = getelementptr inbounds ptr, ptr %592, i64 %598
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  %602 = getelementptr i8, ptr %601, i64 %596
  %603 = getelementptr i8, ptr %602, i64 -2
  %604 = load i16, ptr %603, align 2
  br label %613

605:                                              ; preds = %618, %570
  %606 = icmp slt i32 %573, %578
  br i1 %606, label %607, label %638

607:                                              ; preds = %605
  %608 = icmp sgt i32 %576, 0
  %609 = load ptr, ptr @imgY_org_frm, align 8
  %610 = sext i32 %573 to i64
  %611 = sext i32 %578 to i64
  %612 = zext nneg i32 %576 to i64
  br label %621

613:                                              ; preds = %613, %599
  %614 = phi i64 [ %593, %599 ], [ %616, %613 ]
  %615 = getelementptr i16, ptr %601, i64 %614
  store i16 %604, ptr %615, align 2, !tbaa !112
  %616 = add nsw i64 %614, 1
  %617 = icmp eq i64 %616, %595
  br i1 %617, label %618, label %613

618:                                              ; preds = %613, %597
  %619 = add nuw nsw i64 %598, 1
  %620 = icmp eq i64 %619, %594
  br i1 %620, label %605, label %597

621:                                              ; preds = %635, %607
  %622 = phi i64 [ %610, %607 ], [ %636, %635 ]
  br i1 %608, label %623, label %635

623:                                              ; preds = %621
  %624 = getelementptr ptr, ptr %609, i64 %622
  %625 = getelementptr i8, ptr %624, i64 -8
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  %627 = load ptr, ptr %624, align 8, !tbaa !6
  br label %628

628:                                              ; preds = %628, %623
  %629 = phi i64 [ 0, %623 ], [ %633, %628 ]
  %630 = getelementptr inbounds i16, ptr %626, i64 %629
  %631 = load i16, ptr %630, align 2, !tbaa !112
  %632 = getelementptr inbounds i16, ptr %627, i64 %629
  store i16 %631, ptr %632, align 2, !tbaa !112
  %633 = add nuw nsw i64 %629, 1
  %634 = icmp eq i64 %633, %612
  br i1 %634, label %635, label %628

635:                                              ; preds = %628, %621
  %636 = add nsw i64 %622, 1
  %637 = icmp eq i64 %636, %611
  br i1 %637, label %638, label %621

638:                                              ; preds = %635, %605
  %639 = getelementptr inbounds i8, ptr %574, i64 90548
  %640 = load i32, ptr %639, align 4, !tbaa !14
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %733, label %642

642:                                              ; preds = %638
  %643 = icmp sgt i32 %582, 0
  br i1 %643, label %644, label %688

644:                                              ; preds = %642
  %645 = icmp slt i32 %580, %584
  %646 = load ptr, ptr @imgUV_org_frm, align 8
  %647 = getelementptr inbounds i8, ptr %646, i64 8
  %648 = sext i32 %580 to i64
  %649 = zext nneg i32 %582 to i64
  %650 = sext i32 %584 to i64
  %651 = shl nsw i64 %648, 1
  %652 = add nsw i64 %651, -2
  %653 = shl nsw i64 %650, 1
  %654 = shl nsw i64 %648, 1
  %655 = add nsw i64 %654, -2
  br label %656

656:                                              ; preds = %703, %644
  %657 = phi i64 [ 0, %644 ], [ %704, %703 ]
  br i1 %645, label %658, label %703

658:                                              ; preds = %656
  %659 = load ptr, ptr %646, align 8, !tbaa !6
  %660 = getelementptr inbounds ptr, ptr %659, i64 %657
  %661 = load ptr, ptr %660, align 8, !tbaa !6
  %662 = load ptr, ptr %647, align 8, !tbaa !6
  %663 = getelementptr inbounds ptr, ptr %662, i64 %657
  %664 = load ptr, ptr %663, align 8, !tbaa !6
  %665 = getelementptr i8, ptr %661, i64 %652
  %666 = getelementptr i8, ptr %661, i64 %653
  %667 = getelementptr i8, ptr %664, i64 %652
  %668 = getelementptr i8, ptr %664, i64 %653
  %669 = icmp ult ptr %665, %668
  %670 = icmp ult ptr %667, %666
  %671 = and i1 %669, %670
  br i1 %671, label %672, label %683

672:                                              ; preds = %658, %672
  %673 = phi i64 [ %681, %672 ], [ %648, %658 ]
  %674 = add nsw i64 %673, -1
  %675 = getelementptr inbounds i16, ptr %661, i64 %674
  %676 = load i16, ptr %675, align 2, !tbaa !112
  %677 = getelementptr inbounds i16, ptr %661, i64 %673
  store i16 %676, ptr %677, align 2, !tbaa !112
  %678 = getelementptr inbounds i16, ptr %664, i64 %674
  %679 = load i16, ptr %678, align 2, !tbaa !112
  %680 = getelementptr inbounds i16, ptr %664, i64 %673
  store i16 %679, ptr %680, align 2, !tbaa !112
  %681 = add nsw i64 %673, 1
  %682 = icmp eq i64 %681, %650
  br i1 %682, label %703, label %672

683:                                              ; preds = %658
  %684 = getelementptr i8, ptr %661, i64 %655
  %685 = load i16, ptr %684, align 2
  %686 = getelementptr i8, ptr %664, i64 %655
  %687 = load i16, ptr %686, align 2
  br label %697

688:                                              ; preds = %703, %642
  %689 = icmp slt i32 %582, %586
  br i1 %689, label %690, label %733

690:                                              ; preds = %688
  %691 = icmp sgt i32 %584, 0
  %692 = load ptr, ptr @imgUV_org_frm, align 8
  %693 = getelementptr inbounds i8, ptr %692, i64 8
  %694 = sext i32 %582 to i64
  %695 = sext i32 %586 to i64
  %696 = zext nneg i32 %584 to i64
  br label %706

697:                                              ; preds = %697, %683
  %698 = phi i64 [ %648, %683 ], [ %701, %697 ]
  %699 = getelementptr inbounds i16, ptr %661, i64 %698
  store i16 %685, ptr %699, align 2, !tbaa !112
  %700 = getelementptr inbounds i16, ptr %664, i64 %698
  store i16 %687, ptr %700, align 2, !tbaa !112
  %701 = add nsw i64 %698, 1
  %702 = icmp eq i64 %701, %650
  br i1 %702, label %703, label %697

703:                                              ; preds = %697, %672, %656
  %704 = add nuw nsw i64 %657, 1
  %705 = icmp eq i64 %704, %649
  br i1 %705, label %688, label %656

706:                                              ; preds = %730, %690
  %707 = phi i64 [ %694, %690 ], [ %731, %730 ]
  br i1 %691, label %708, label %730

708:                                              ; preds = %706
  %709 = load ptr, ptr %692, align 8, !tbaa !6
  %710 = add nsw i64 %707, -1
  %711 = getelementptr inbounds ptr, ptr %709, i64 %710
  %712 = load ptr, ptr %711, align 8, !tbaa !6
  %713 = getelementptr inbounds ptr, ptr %709, i64 %707
  %714 = load ptr, ptr %713, align 8, !tbaa !6
  %715 = load ptr, ptr %693, align 8, !tbaa !6
  %716 = getelementptr inbounds ptr, ptr %715, i64 %710
  %717 = load ptr, ptr %716, align 8, !tbaa !6
  %718 = getelementptr inbounds ptr, ptr %715, i64 %707
  %719 = load ptr, ptr %718, align 8, !tbaa !6
  br label %720

720:                                              ; preds = %720, %708
  %721 = phi i64 [ 0, %708 ], [ %728, %720 ]
  %722 = getelementptr inbounds i16, ptr %712, i64 %721
  %723 = load i16, ptr %722, align 2, !tbaa !112
  %724 = getelementptr inbounds i16, ptr %714, i64 %721
  store i16 %723, ptr %724, align 2, !tbaa !112
  %725 = getelementptr inbounds i16, ptr %717, i64 %721
  %726 = load i16, ptr %725, align 2, !tbaa !112
  %727 = getelementptr inbounds i16, ptr %719, i64 %721
  store i16 %726, ptr %727, align 2, !tbaa !112
  %728 = add nuw nsw i64 %721, 1
  %729 = icmp eq i64 %728, %696
  br i1 %729, label %730, label %720

730:                                              ; preds = %720, %706
  %731 = add nsw i64 %707, 1
  %732 = icmp eq i64 %731, %695
  br i1 %732, label %733, label %706

733:                                              ; preds = %730, %638, %688
  %734 = getelementptr inbounds i8, ptr %571, i64 1256
  %735 = load i32, ptr %734, align 8, !tbaa !113
  %736 = getelementptr inbounds i8, ptr %574, i64 89404
  store i32 %735, ptr %736, align 4, !tbaa !114
  %737 = getelementptr inbounds i8, ptr %571, i64 3600
  %738 = load i32, ptr %737, align 8, !tbaa !115
  %739 = getelementptr inbounds i8, ptr %574, i64 89392
  store i32 %738, ptr %739, align 8, !tbaa !116
  %740 = getelementptr inbounds i8, ptr %571, i64 3604
  %741 = load i32, ptr %740, align 4, !tbaa !117
  %742 = getelementptr inbounds i8, ptr %574, i64 89396
  store i32 %741, ptr %742, align 4, !tbaa !118
  %743 = getelementptr inbounds i8, ptr %571, i64 3608
  %744 = load i32, ptr %743, align 8, !tbaa !119
  %745 = getelementptr inbounds i8, ptr %574, i64 89400
  store i32 %744, ptr %745, align 8, !tbaa !120
  %746 = getelementptr inbounds i8, ptr %571, i64 4260
  %747 = load i32, ptr %746, align 4, !tbaa !121
  %748 = getelementptr inbounds i8, ptr %574, i64 90212
  store i32 %747, ptr %748, align 4, !tbaa !122
  %749 = getelementptr inbounds i8, ptr %574, i64 24
  %750 = load i32, ptr %749, align 8, !tbaa !30
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds [5 x i32], ptr @frame_ctr, i64 0, i64 %751
  %753 = load i32, ptr %752, align 4, !tbaa !22
  %754 = add nsw i32 %753, 1
  store i32 %754, ptr %752, align 4, !tbaa !22
  %755 = load ptr, ptr @snr, align 8, !tbaa !6
  %756 = getelementptr inbounds i8, ptr %755, i64 120
  %757 = load i32, ptr %756, align 4, !tbaa !123
  %758 = add nsw i32 %757, 1
  store i32 %758, ptr %756, align 4, !tbaa !123
  %759 = load i32, ptr %749, align 8, !tbaa !30
  %760 = icmp eq i32 %759, 3
  br i1 %760, label %761, label %767

761:                                              ; preds = %733
  %762 = getelementptr inbounds i8, ptr %571, i64 1296
  %763 = load i32, ptr %762, align 8, !tbaa !71
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %768, label %765

765:                                              ; preds = %761
  store i32 1, ptr @sp2_frame_indicator, align 4, !tbaa !22
  call void @read_SP_coefficients()
  %766 = load ptr, ptr @input, align 8, !tbaa !6
  br label %768

767:                                              ; preds = %733
  store i32 0, ptr @sp2_frame_indicator, align 4, !tbaa !22
  br label %768

768:                                              ; preds = %761, %765, %767
  %769 = phi ptr [ %571, %761 ], [ %766, %765 ], [ %571, %767 ]
  %770 = getelementptr inbounds i8, ptr %769, i64 3552
  %771 = load i32, ptr %770, align 8, !tbaa !125
  %772 = icmp eq i32 %771, 1
  %773 = load ptr, ptr @img, align 8, !tbaa !6
  %774 = getelementptr inbounds i8, ptr %773, i64 90424
  br i1 %772, label %775, label %781

775:                                              ; preds = %768
  store i32 1, ptr %774, align 8, !tbaa !126
  %776 = getelementptr inbounds i8, ptr %773, i64 90264
  store i32 1, ptr %776, align 8, !tbaa !127
  %777 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %778 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  call void @field_picture(ptr noundef %777, ptr noundef %778)
  %779 = load ptr, ptr @img, align 8, !tbaa !6
  %780 = getelementptr inbounds i8, ptr %779, i64 89208
  store i32 1, ptr %780, align 8, !tbaa !128
  br label %1169

781:                                              ; preds = %768
  store i32 0, ptr %774, align 8, !tbaa !126
  %782 = getelementptr inbounds i8, ptr %769, i64 3556
  %783 = load i32, ptr %782, align 4, !tbaa !129
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %781
  %786 = getelementptr inbounds i8, ptr %773, i64 90264
  store i32 0, ptr %786, align 8, !tbaa !127
  %787 = getelementptr inbounds i8, ptr %769, i64 3908
  %788 = load i32, ptr %787, align 4, !tbaa !69
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %820, label %795

790:                                              ; preds = %781
  store i32 1, ptr @mb_adaptive, align 4, !tbaa !22
  %791 = getelementptr inbounds i8, ptr %773, i64 90264
  store i32 0, ptr %791, align 8, !tbaa !127
  %792 = getelementptr inbounds i8, ptr %769, i64 3908
  %793 = load i32, ptr %792, align 4, !tbaa !69
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %820, label %798

795:                                              ; preds = %785
  %796 = getelementptr inbounds i8, ptr %769, i64 3920
  %797 = load i32, ptr %796, align 8, !tbaa !130
  br label %814

798:                                              ; preds = %790
  %799 = getelementptr inbounds i8, ptr %769, i64 3920
  %800 = load i32, ptr %799, align 8, !tbaa !130
  %801 = getelementptr inbounds i8, ptr %773, i64 90432
  %802 = load i32, ptr %801, align 8, !tbaa !131
  %803 = icmp slt i32 %800, %802
  br i1 %803, label %804, label %814

804:                                              ; preds = %798
  %805 = getelementptr inbounds i8, ptr %773, i64 24
  %806 = load i32, ptr %805, align 8, !tbaa !30
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %814

808:                                              ; preds = %804
  %809 = getelementptr inbounds i8, ptr %773, i64 90436
  %810 = load i32, ptr %809, align 4, !tbaa !132
  %811 = icmp eq i32 %810, 0
  %812 = zext i1 %811 to i32
  %813 = shl nsw i32 %800, %812
  br label %814

814:                                              ; preds = %808, %798, %804, %795
  %815 = phi i32 [ %797, %795 ], [ %800, %804 ], [ %800, %798 ], [ %813, %808 ]
  %816 = getelementptr inbounds i8, ptr %773, i64 90444
  store i32 %815, ptr %816, align 4, !tbaa !133
  call void @rc_init_pict(i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 1) #17
  %817 = call signext i32 @updateQuantizationParameter(i32 noundef signext 0) #17
  %818 = load ptr, ptr @img, align 8, !tbaa !6
  %819 = getelementptr inbounds i8, ptr %818, i64 40
  store i32 %817, ptr %819, align 8, !tbaa !73
  store i32 0, ptr @QP, align 4, !tbaa !22
  br label %820

820:                                              ; preds = %790, %814, %785
  %821 = phi ptr [ %818, %814 ], [ %773, %785 ], [ %773, %790 ]
  %822 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %823 = getelementptr inbounds i8, ptr %822, i64 1148
  %824 = load i32, ptr %823, align 4, !tbaa !134
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %828, label %826

826:                                              ; preds = %820
  %827 = getelementptr inbounds i8, ptr %821, i64 90420
  store i32 0, ptr %827, align 4, !tbaa !138
  br label %828

828:                                              ; preds = %826, %820
  %829 = load ptr, ptr @input, align 8, !tbaa !6
  %830 = getelementptr inbounds i8, ptr %829, i64 64
  %831 = load i32, ptr %830, align 8, !tbaa !139
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %835, label %833

833:                                              ; preds = %828
  %834 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %834, ptr @active_pps, align 8, !tbaa !6
  br label %835

835:                                              ; preds = %833, %828
  %836 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  call void @frame_picture(ptr noundef %836, i32 noundef signext 0)
  %837 = load ptr, ptr @input, align 8, !tbaa !6
  %838 = getelementptr inbounds i8, ptr %837, i64 1920
  %839 = load i32, ptr %838, align 8, !tbaa !140
  %840 = icmp eq i32 %839, 0
  %841 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %840, label %842, label %846

842:                                              ; preds = %835
  %843 = getelementptr inbounds i8, ptr %841, i64 24
  %844 = load i32, ptr %843, align 8, !tbaa !30
  %845 = icmp eq i32 %844, 2
  br i1 %845, label %1063, label %846

846:                                              ; preds = %842, %835
  %847 = getelementptr inbounds i8, ptr %837, i64 1916
  %848 = load i32, ptr %847, align 4, !tbaa !141
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %1063, label %850

850:                                              ; preds = %846
  %851 = getelementptr inbounds i8, ptr %841, i64 40
  %852 = load i32, ptr %851, align 8, !tbaa !73
  %853 = load i32, ptr @intras, align 4, !tbaa !22
  %854 = getelementptr inbounds i8, ptr %841, i64 24
  %855 = load i32, ptr %854, align 8, !tbaa !30
  %856 = icmp eq i32 %855, 2
  br i1 %856, label %886, label %857

857:                                              ; preds = %850
  %858 = getelementptr inbounds i8, ptr %837, i64 64
  %859 = load i32, ptr %858, align 8, !tbaa !139
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %886, label %861

861:                                              ; preds = %857
  %862 = icmp eq i32 %855, 0
  br i1 %862, label %863, label %884

863:                                              ; preds = %861
  %864 = call signext i32 @test_wp_P_slice(i32 noundef signext 0) #17
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %866, label %871

866:                                              ; preds = %863
  %867 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 8), align 8, !tbaa !6
  store ptr %867, ptr @active_pps, align 8, !tbaa !6
  %868 = load ptr, ptr @img, align 8, !tbaa !6
  %869 = getelementptr inbounds i8, ptr %868, i64 40
  %870 = load i32, ptr %869, align 8, !tbaa !73
  br label %892

871:                                              ; preds = %863
  %872 = load ptr, ptr @input, align 8, !tbaa !6
  %873 = getelementptr inbounds i8, ptr %872, i64 1924
  %874 = load i32, ptr %873, align 4, !tbaa !142
  %875 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %875, ptr @active_pps, align 8, !tbaa !6
  %876 = load ptr, ptr @img, align 8, !tbaa !6
  %877 = getelementptr inbounds i8, ptr %876, i64 90212
  %878 = load i32, ptr %877, align 4, !tbaa !122
  %879 = icmp eq i32 %878, 0
  %880 = getelementptr inbounds i8, ptr %876, i64 40
  %881 = load i32, ptr %880, align 8, !tbaa !73
  br i1 %879, label %882, label %897

882:                                              ; preds = %871
  %883 = add nsw i32 %881, -1
  store i32 %883, ptr %880, align 8, !tbaa !73
  br label %897

884:                                              ; preds = %861
  %885 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 16), align 8, !tbaa !6
  store ptr %885, ptr @active_pps, align 8, !tbaa !6
  br label %892

886:                                              ; preds = %857, %850
  %887 = getelementptr inbounds i8, ptr %841, i64 90212
  %888 = load i32, ptr %887, align 4, !tbaa !122
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %892

890:                                              ; preds = %886
  %891 = add nsw i32 %852, -1
  store i32 %891, ptr %851, align 8, !tbaa !73
  br label %892

892:                                              ; preds = %890, %886, %884, %866
  %893 = phi i32 [ %870, %866 ], [ %852, %884 ], [ %852, %886 ], [ %891, %890 ]
  %894 = phi ptr [ %868, %866 ], [ %841, %884 ], [ %841, %886 ], [ %841, %890 ]
  %895 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %896 = getelementptr inbounds i8, ptr %894, i64 90448
  store i32 0, ptr %896, align 8, !tbaa !50
  br label %903

897:                                              ; preds = %882, %871
  %898 = phi i32 [ %883, %882 ], [ %881, %871 ]
  %899 = getelementptr inbounds i8, ptr %876, i64 90448
  store i32 0, ptr %899, align 8, !tbaa !50
  %900 = icmp eq i32 %874, 0
  br i1 %900, label %903, label %901

901:                                              ; preds = %897
  %902 = getelementptr inbounds i8, ptr %876, i64 89212
  store i32 0, ptr %902, align 4, !tbaa !49
  store ptr null, ptr @enc_frame_picture2, align 8, !tbaa !6
  br label %913

903:                                              ; preds = %897, %892
  %904 = phi i32 [ %893, %892 ], [ %898, %897 ]
  %905 = phi ptr [ %895, %892 ], [ %875, %897 ]
  %906 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  call void @frame_picture(ptr noundef %906, i32 noundef signext 1)
  %907 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  %908 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  %909 = call signext i32 @picture_coding_decision(ptr noundef %907, ptr noundef %908, i32 noundef signext %852) #17
  %910 = load ptr, ptr @img, align 8, !tbaa !6
  %911 = getelementptr inbounds i8, ptr %910, i64 89212
  store i32 %909, ptr %911, align 4, !tbaa !49
  %912 = icmp eq i32 %909, 0
  br i1 %912, label %913, label %933

913:                                              ; preds = %903, %901
  %914 = phi i32 [ %874, %901 ], [ 0, %903 ]
  %915 = phi ptr [ %875, %901 ], [ %905, %903 ]
  %916 = phi i32 [ %898, %901 ], [ %904, %903 ]
  %917 = phi ptr [ %876, %901 ], [ %910, %903 ]
  %918 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  store ptr %918, ptr @enc_picture, align 8, !tbaa !6
  %919 = getelementptr inbounds i8, ptr %917, i64 24
  %920 = load i32, ptr %919, align 8, !tbaa !30
  %921 = icmp eq i32 %920, 2
  br i1 %921, label %930, label %922

922:                                              ; preds = %913
  %923 = load ptr, ptr @input, align 8, !tbaa !6
  %924 = getelementptr inbounds i8, ptr %923, i64 64
  %925 = load i32, ptr %924, align 8, !tbaa !139
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %930, label %927

927:                                              ; preds = %922
  %928 = getelementptr inbounds i8, ptr %917, i64 40
  store i32 %852, ptr %928, align 8, !tbaa !73
  %929 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %929, ptr @active_pps, align 8, !tbaa !6
  br label %932

930:                                              ; preds = %922, %913
  %931 = getelementptr inbounds i8, ptr %917, i64 40
  store i32 %852, ptr %931, align 8, !tbaa !73
  br label %932

932:                                              ; preds = %930, %927
  store i32 %853, ptr @intras, align 4, !tbaa !22
  br label %937

933:                                              ; preds = %903
  %934 = load i32, ptr @intras, align 4, !tbaa !22
  %935 = getelementptr inbounds i8, ptr %910, i64 24
  %936 = load i32, ptr %935, align 8, !tbaa !30
  br label %937

937:                                              ; preds = %933, %932
  %938 = phi i32 [ 0, %933 ], [ %914, %932 ]
  %939 = phi ptr [ %905, %933 ], [ %915, %932 ]
  %940 = phi i32 [ %904, %933 ], [ %916, %932 ]
  %941 = phi ptr [ %910, %933 ], [ %917, %932 ]
  %942 = phi i32 [ %936, %933 ], [ %920, %932 ]
  %943 = phi ptr [ @frame_pic_2, %933 ], [ @frame_pic_1, %932 ]
  %944 = phi i32 [ %934, %933 ], [ %853, %932 ]
  %945 = load ptr, ptr %943, align 8, !tbaa !6
  store ptr %945, ptr @frame_pic, align 8, !tbaa !6
  %946 = getelementptr inbounds i8, ptr %941, i64 24
  %947 = icmp eq i32 %942, 2
  br i1 %947, label %1007, label %948

948:                                              ; preds = %937
  %949 = load ptr, ptr @input, align 8, !tbaa !6
  %950 = getelementptr inbounds i8, ptr %949, i64 64
  %951 = load i32, ptr %950, align 8, !tbaa !139
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %1007, label %953

953:                                              ; preds = %948
  %954 = getelementptr inbounds i8, ptr %941, i64 40
  store i32 %852, ptr %954, align 8, !tbaa !73
  %955 = icmp eq i32 %942, 0
  br i1 %955, label %956, label %993

956:                                              ; preds = %953
  %957 = mul nsw i32 %944, 100
  %958 = getelementptr inbounds i8, ptr %941, i64 90308
  %959 = load i32, ptr %958, align 4, !tbaa !143
  %960 = udiv i32 %957, %959
  %961 = icmp ugt i32 %960, 74
  br i1 %961, label %962, label %963

962:                                              ; preds = %956
  store i32 2, ptr %946, align 8, !tbaa !30
  br label %1015

963:                                              ; preds = %956
  %964 = call signext i32 @test_wp_P_slice(i32 noundef signext 1) #17
  %965 = icmp eq i32 %964, 1
  br i1 %965, label %966, label %968

966:                                              ; preds = %963
  %967 = load ptr, ptr @img, align 8, !tbaa !6
  br label %1015

968:                                              ; preds = %963
  %969 = load ptr, ptr @input, align 8, !tbaa !6
  %970 = getelementptr inbounds i8, ptr %969, i64 1928
  %971 = load i32, ptr %970, align 8, !tbaa !144
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %981, label %973

973:                                              ; preds = %968
  %974 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %975 = getelementptr inbounds i8, ptr %974, i64 4
  %976 = load i32, ptr %975, align 4, !tbaa !145
  %977 = icmp eq i32 %976, 66
  br i1 %977, label %981, label %978

978:                                              ; preds = %973
  %979 = load ptr, ptr @img, align 8, !tbaa !6
  %980 = getelementptr inbounds i8, ptr %979, i64 24
  store i32 1, ptr %980, align 8, !tbaa !30
  br label %1015

981:                                              ; preds = %973, %968
  %982 = getelementptr inbounds i8, ptr %969, i64 1924
  %983 = load i32, ptr %982, align 4, !tbaa !142
  %984 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %984, ptr @active_pps, align 8, !tbaa !6
  %985 = load ptr, ptr @img, align 8, !tbaa !6
  %986 = getelementptr inbounds i8, ptr %985, i64 90212
  %987 = load i32, ptr %986, align 4, !tbaa !122
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %1020

989:                                              ; preds = %981
  %990 = getelementptr inbounds i8, ptr %985, i64 40
  %991 = load i32, ptr %990, align 8, !tbaa !73
  %992 = add nsw i32 %991, 1
  store i32 %992, ptr %990, align 8, !tbaa !73
  br label %1020

993:                                              ; preds = %953
  %994 = call signext i32 @test_wp_B_slice(i32 noundef signext 0) #17
  %995 = icmp eq i32 %994, 1
  %996 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %995, label %1015, label %997

997:                                              ; preds = %993
  %998 = load ptr, ptr @input, align 8, !tbaa !6
  %999 = getelementptr inbounds i8, ptr %998, i64 1932
  %1000 = load i32, ptr %999, align 4, !tbaa !146
  %1001 = getelementptr inbounds i8, ptr %996, i64 90316
  %1002 = load i32, ptr %1001, align 4, !tbaa !76
  %1003 = icmp eq i32 %1002, 0
  %1004 = select i1 %1003, i32 1, i32 -1
  %1005 = add nsw i32 %1004, %852
  %1006 = getelementptr inbounds i8, ptr %996, i64 40
  store i32 %1005, ptr %1006, align 8, !tbaa !73
  br label %1020

1007:                                             ; preds = %948, %937
  %1008 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %1008, ptr @active_pps, align 8, !tbaa !6
  %1009 = getelementptr inbounds i8, ptr %941, i64 90212
  %1010 = load i32, ptr %1009, align 4, !tbaa !122
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1020

1012:                                             ; preds = %1007
  %1013 = add nsw i32 %852, 1
  %1014 = getelementptr inbounds i8, ptr %941, i64 40
  store i32 %1013, ptr %1014, align 8, !tbaa !73
  br label %1020

1015:                                             ; preds = %966, %993, %978, %962
  %1016 = phi ptr [ %941, %962 ], [ %979, %978 ], [ %967, %966 ], [ %996, %993 ]
  %1017 = phi ptr [ @PicParSet, %962 ], [ @PicParSet, %978 ], [ getelementptr inbounds (i8, ptr @PicParSet, i64 8), %966 ], [ getelementptr inbounds (i8, ptr @PicParSet, i64 8), %993 ]
  %1018 = load ptr, ptr %1017, align 8, !tbaa !6
  store ptr %1018, ptr @active_pps, align 8, !tbaa !6
  %1019 = getelementptr inbounds i8, ptr %1016, i64 90448
  store i32 0, ptr %1019, align 8, !tbaa !50
  br label %1029

1020:                                             ; preds = %1012, %1007, %997, %989, %981
  %1021 = phi ptr [ %985, %981 ], [ %985, %989 ], [ %996, %997 ], [ %941, %1007 ], [ %941, %1012 ]
  %1022 = phi i32 [ %983, %981 ], [ %983, %989 ], [ %1000, %997 ], [ %938, %1007 ], [ %938, %1012 ]
  %1023 = getelementptr inbounds i8, ptr %1021, i64 90448
  store i32 0, ptr %1023, align 8, !tbaa !50
  %1024 = icmp eq i32 %1022, 0
  br i1 %1024, label %1029, label %1025

1025:                                             ; preds = %1020
  store ptr null, ptr @enc_frame_picture3, align 8, !tbaa !6
  %1026 = getelementptr inbounds i8, ptr %1021, i64 40
  store i32 %852, ptr %1026, align 8, !tbaa !73
  %1027 = getelementptr inbounds i8, ptr %1021, i64 89212
  %1028 = load i32, ptr %1027, align 4, !tbaa !49
  br label %1049

1029:                                             ; preds = %1020, %1015
  %1030 = load ptr, ptr @frame_pic_3, align 8, !tbaa !6
  call void @frame_picture(ptr noundef %1030, i32 noundef signext 2)
  %1031 = load ptr, ptr @img, align 8, !tbaa !6
  %1032 = getelementptr inbounds i8, ptr %1031, i64 89212
  %1033 = load i32, ptr %1032, align 4, !tbaa !49
  %1034 = icmp eq i32 %1033, 0
  %1035 = load ptr, ptr @frame_pic_3, align 8, !tbaa !6
  br i1 %1034, label %1036, label %1042

1036:                                             ; preds = %1029
  %1037 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  %1038 = call signext i32 @picture_coding_decision(ptr noundef %1037, ptr noundef %1035, i32 noundef signext %852) #17
  %1039 = shl nsw i32 %1038, 1
  %1040 = load ptr, ptr @img, align 8, !tbaa !6
  %1041 = getelementptr inbounds i8, ptr %1040, i64 89212
  store i32 %1039, ptr %1041, align 4, !tbaa !49
  br label %1049

1042:                                             ; preds = %1029
  %1043 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  %1044 = call signext i32 @picture_coding_decision(ptr noundef %1043, ptr noundef %1035, i32 noundef signext %852) #17
  %1045 = load ptr, ptr @img, align 8, !tbaa !6
  %1046 = getelementptr inbounds i8, ptr %1045, i64 89212
  %1047 = load i32, ptr %1046, align 4, !tbaa !49
  %1048 = add i32 %1047, %1044
  store i32 %1048, ptr %1046, align 4, !tbaa !49
  br label %1049

1049:                                             ; preds = %1042, %1036, %1025
  %1050 = phi i32 [ %1039, %1036 ], [ %1048, %1042 ], [ %1028, %1025 ]
  %1051 = phi ptr [ %1040, %1036 ], [ %1045, %1042 ], [ %1021, %1025 ]
  switch i32 %1050, label %1063 [
    i32 0, label %1052
    i32 1, label %1056
  ]

1052:                                             ; preds = %1049
  %1053 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  store ptr %1053, ptr @enc_picture, align 8, !tbaa !6
  %1054 = getelementptr inbounds i8, ptr %1051, i64 24
  store i32 %855, ptr %1054, align 8, !tbaa !30
  %1055 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  br label %1059

1056:                                             ; preds = %1049
  %1057 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !6
  store ptr %1057, ptr @enc_picture, align 8, !tbaa !6
  %1058 = getelementptr inbounds i8, ptr %1051, i64 24
  store i32 %855, ptr %1058, align 8, !tbaa !30
  br label %1059

1059:                                             ; preds = %1056, %1052
  %1060 = phi ptr [ %939, %1056 ], [ %1055, %1052 ]
  %1061 = phi i32 [ %940, %1056 ], [ %852, %1052 ]
  store ptr %1060, ptr @active_pps, align 8, !tbaa !6
  %1062 = getelementptr inbounds i8, ptr %1051, i64 40
  store i32 %1061, ptr %1062, align 8, !tbaa !73
  store i32 %944, ptr @intras, align 4, !tbaa !22
  br label %1063

1063:                                             ; preds = %1059, %1049, %846, %842
  %1064 = phi ptr [ %1051, %1059 ], [ %1051, %1049 ], [ %841, %846 ], [ %841, %842 ]
  %1065 = getelementptr inbounds i8, ptr %1064, i64 24
  %1066 = load i32, ptr %1065, align 8, !tbaa !30
  %1067 = icmp eq i32 %1066, 3
  %1068 = load i32, ptr @si_frame_indicator, align 4
  %1069 = icmp eq i32 %1068, 0
  %1070 = select i1 %1067, i1 %1069, i1 false
  %1071 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %1070, label %1072, label %1082

1072:                                             ; preds = %1063
  %1073 = getelementptr inbounds i8, ptr %1071, i64 1292
  %1074 = load i32, ptr %1073, align 4, !tbaa !147
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1086, label %1076

1076:                                             ; preds = %1072
  store i32 1, ptr @si_frame_indicator, align 4, !tbaa !22
  %1077 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  call void @frame_picture(ptr noundef %1077, i32 noundef signext 0)
  %1078 = load ptr, ptr @img, align 8, !tbaa !6
  %1079 = getelementptr inbounds i8, ptr %1078, i64 24
  %1080 = load i32, ptr %1079, align 8, !tbaa !30
  %1081 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1082

1082:                                             ; preds = %1076, %1063
  %1083 = phi ptr [ %1081, %1076 ], [ %1071, %1063 ]
  %1084 = phi i32 [ %1080, %1076 ], [ %1066, %1063 ]
  %1085 = icmp eq i32 %1084, 3
  br i1 %1085, label %1086, label %1093

1086:                                             ; preds = %1072, %1082
  %1087 = phi ptr [ %1083, %1082 ], [ %1071, %1072 ]
  %1088 = getelementptr inbounds i8, ptr %1087, i64 1300
  %1089 = load i32, ptr %1088, align 4, !tbaa !148
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1093, label %1091

1091:                                             ; preds = %1086
  call void @output_SP_coefficients()
  %1092 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1093

1093:                                             ; preds = %1091, %1086, %1082
  %1094 = phi ptr [ %1092, %1091 ], [ %1087, %1086 ], [ %1083, %1082 ]
  %1095 = getelementptr inbounds i8, ptr %1094, i64 3556
  %1096 = load i32, ptr %1095, align 4, !tbaa !129
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1099, label %1098

1098:                                             ; preds = %1093
  store i32 0, ptr @mb_adaptive, align 4, !tbaa !22
  br label %1099

1099:                                             ; preds = %1098, %1093
  %1100 = getelementptr inbounds i8, ptr %1094, i64 3552
  %1101 = load i32, ptr %1100, align 8, !tbaa !125
  %1102 = icmp eq i32 %1101, 2
  %1103 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %1102, label %1104, label %1167

1104:                                             ; preds = %1099
  %1105 = getelementptr inbounds i8, ptr %1103, i64 90424
  store i32 1, ptr %1105, align 8, !tbaa !126
  %1106 = getelementptr inbounds i8, ptr %1103, i64 90448
  store i32 0, ptr %1106, align 8, !tbaa !50
  %1107 = getelementptr inbounds i8, ptr %1103, i64 90452
  store i32 0, ptr %1107, align 4, !tbaa !149
  %1108 = getelementptr inbounds i8, ptr %1103, i64 90264
  store i32 1, ptr %1108, align 8, !tbaa !127
  %1109 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %1110 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  call void @field_picture(ptr noundef %1109, ptr noundef %1110)
  %1111 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %1112 = load ptr, ptr @img, align 8, !tbaa !6
  %1113 = getelementptr inbounds i8, ptr %1112, i64 89212
  %1114 = load i32, ptr %1113, align 4, !tbaa !49
  %1115 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  %1116 = getelementptr inbounds i8, ptr %1112, i64 90500
  %1117 = load i32, ptr %1116, align 4, !tbaa !150
  %1118 = sitofp i32 %1117 to double
  %1119 = getelementptr inbounds i8, ptr %1112, i64 40
  %1120 = load i32, ptr %1119, align 8, !tbaa !73
  %1121 = add nsw i32 %1120, -12
  %1122 = sitofp i32 %1121 to double
  %1123 = fdiv double %1122, 3.000000e+00
  %1124 = fadd double %1123, %1118
  %1125 = getelementptr inbounds i8, ptr %1111, i64 812
  %1126 = getelementptr inbounds i8, ptr %1111, i64 816
  %1127 = getelementptr inbounds i8, ptr %1111, i64 820
  %1128 = getelementptr inbounds i8, ptr %1111, i64 808
  %1129 = getelementptr inbounds i8, ptr %1115, i64 808
  %1130 = icmp eq i32 %1114, 1
  %1131 = icmp eq i32 %1114, 0
  %1132 = load ptr, ptr @frame_pic_1, align 8
  %1133 = load ptr, ptr @frame_pic_2, align 8
  %1134 = load ptr, ptr @frame_pic_3, align 8
  %1135 = select i1 %1130, ptr %1133, ptr %1134
  %1136 = select i1 %1131, ptr %1132, ptr %1135
  %1137 = call double @exp2(double %1124) #17
  %1138 = fmul double %1137, 6.800000e-01
  %1139 = getelementptr inbounds i8, ptr %1136, i64 812
  %1140 = load float, ptr %1139, align 4, !tbaa !34
  %1141 = getelementptr inbounds i8, ptr %1136, i64 816
  %1142 = load float, ptr %1141, align 8, !tbaa !36
  %1143 = fadd float %1140, %1142
  %1144 = getelementptr inbounds i8, ptr %1136, i64 820
  %1145 = load float, ptr %1144, align 4, !tbaa !35
  %1146 = fadd float %1143, %1145
  %1147 = load float, ptr %1125, align 4, !tbaa !34
  %1148 = load float, ptr %1126, align 8, !tbaa !36
  %1149 = fadd float %1147, %1148
  %1150 = load float, ptr %1127, align 4, !tbaa !35
  %1151 = fadd float %1149, %1150
  %1152 = load i32, ptr %1128, align 8, !tbaa !151
  %1153 = load i32, ptr %1129, align 8, !tbaa !151
  %1154 = add nsw i32 %1153, %1152
  %1155 = getelementptr inbounds i8, ptr %1136, i64 808
  %1156 = load i32, ptr %1155, align 8, !tbaa !151
  %1157 = call signext i32 @decide_fld_frame(float noundef %1146, float noundef %1151, i32 noundef signext %1154, i32 noundef signext %1156, double noundef %1138) #17
  %1158 = load ptr, ptr @img, align 8, !tbaa !6
  %1159 = getelementptr inbounds i8, ptr %1158, i64 89208
  store i32 %1157, ptr %1159, align 8, !tbaa !128
  call void @update_field_frame_contexts(i32 noundef signext %1157) #17
  %1160 = load ptr, ptr @img, align 8, !tbaa !6
  %1161 = getelementptr inbounds i8, ptr %1160, i64 89208
  %1162 = load i32, ptr %1161, align 8, !tbaa !128
  %1163 = icmp eq i32 %1162, 0
  %1164 = getelementptr inbounds i8, ptr %1160, i64 90428
  br i1 %1163, label %1165, label %1166

1165:                                             ; preds = %1104
  store i32 1, ptr %1164, align 4, !tbaa !152
  br label %1174

1166:                                             ; preds = %1104
  store i32 0, ptr %1164, align 4, !tbaa !152
  br label %1169

1167:                                             ; preds = %1099
  %1168 = getelementptr inbounds i8, ptr %1103, i64 89208
  store i32 0, ptr %1168, align 8, !tbaa !128
  br label %1174

1169:                                             ; preds = %775, %1166
  %1170 = phi i32 [ %1162, %1166 ], [ 1, %775 ]
  %1171 = phi ptr [ %1160, %1166 ], [ %779, %775 ]
  %1172 = load ptr, ptr @stats, align 8, !tbaa !6
  %1173 = getelementptr inbounds i8, ptr %1172, i64 1480
  br label %1178

1174:                                             ; preds = %1167, %1165
  %1175 = phi ptr [ %1160, %1165 ], [ %1103, %1167 ]
  %1176 = load ptr, ptr @stats, align 8, !tbaa !6
  %1177 = getelementptr inbounds i8, ptr %1176, i64 1476
  br label %1178

1178:                                             ; preds = %1174, %1169
  %1179 = phi ptr [ %1176, %1174 ], [ %1172, %1169 ]
  %1180 = phi ptr [ %1177, %1174 ], [ %1173, %1169 ]
  %1181 = phi i1 [ true, %1174 ], [ false, %1169 ]
  %1182 = phi ptr [ %1175, %1174 ], [ %1171, %1169 ]
  %1183 = phi i32 [ 0, %1174 ], [ %1170, %1169 ]
  %1184 = load i32, ptr %1180, align 4, !tbaa !22
  %1185 = getelementptr inbounds i8, ptr %1179, i64 28
  %1186 = load i32, ptr %1185, align 4, !tbaa !153
  %1187 = add nsw i32 %1186, %1184
  store i32 %1187, ptr %1185, align 4, !tbaa !153
  %1188 = getelementptr inbounds i8, ptr %1182, i64 24
  %1189 = load i32, ptr %1188, align 8, !tbaa !30
  %1190 = icmp eq i32 %1189, 1
  br i1 %1190, label %1193, label %1191

1191:                                             ; preds = %1178
  %1192 = getelementptr inbounds i8, ptr %1182, i64 89280
  store i32 %1183, ptr %1192, align 8, !tbaa !154
  br label %1193

1193:                                             ; preds = %1191, %1178
  %1194 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %1194, ptr @imgY_org, align 8, !tbaa !6
  %1195 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %1195, ptr @imgUV_org, align 8, !tbaa !6
  br i1 %1181, label %1202, label %1196

1196:                                             ; preds = %1193
  %1197 = load ptr, ptr @snr, align 8, !tbaa !6
  store float 0.000000e+00, ptr %1197, align 4, !tbaa !155
  %1198 = getelementptr inbounds i8, ptr %1197, i64 4
  store float 0.000000e+00, ptr %1198, align 4, !tbaa !156
  %1199 = getelementptr inbounds i8, ptr %1197, i64 8
  store float 0.000000e+00, ptr %1199, align 4, !tbaa !157
  %1200 = load ptr, ptr @top_pic, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1200)
  %1201 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1201)
  br label %1249

1202:                                             ; preds = %1193
  %1203 = load ptr, ptr @input, align 8, !tbaa !6
  %1204 = getelementptr inbounds i8, ptr %1203, i64 3552
  %1205 = load i32, ptr %1204, align 8, !tbaa !125
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1207, label %1211

1207:                                             ; preds = %1202
  %1208 = getelementptr inbounds i8, ptr %1203, i64 3556
  %1209 = load i32, ptr %1208, align 4, !tbaa !129
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1229, label %1211

1211:                                             ; preds = %1207, %1202
  %1212 = getelementptr inbounds i8, ptr %1182, i64 60
  %1213 = getelementptr inbounds i8, ptr %1182, i64 64
  %1214 = load i32, ptr %1182, align 8, !tbaa !26
  %1215 = shl nsw i32 %1214, 1
  %1216 = getelementptr inbounds i8, ptr %1182, i64 89204
  %1217 = or disjoint i32 %1215, 1
  store i32 1, ptr %1216, align 4, !tbaa !158
  %1218 = sdiv i32 %1217, 2
  store i32 %1218, ptr %1182, align 8, !tbaa !26
  %1219 = getelementptr inbounds i8, ptr %1203, i64 72
  %1220 = load i32, ptr %1219, align 8, !tbaa !103
  %1221 = getelementptr inbounds i8, ptr %1182, i64 90580
  %1222 = load i32, ptr %1221, align 4, !tbaa !159
  %1223 = add nsw i32 %1222, %1220
  store i32 %1223, ptr %1212, align 4, !tbaa !56
  %1224 = getelementptr inbounds i8, ptr %1182, i64 68
  %1225 = load i32, ptr %1224, align 4, !tbaa !160
  store i32 %1225, ptr %1213, align 8, !tbaa !111
  %1226 = load ptr, ptr @snr, align 8, !tbaa !6
  store float 0.000000e+00, ptr %1226, align 4, !tbaa !155
  %1227 = getelementptr inbounds i8, ptr %1226, i64 4
  store float 0.000000e+00, ptr %1227, align 4, !tbaa !156
  %1228 = getelementptr inbounds i8, ptr %1226, i64 8
  store float 0.000000e+00, ptr %1228, align 4, !tbaa !157
  store ptr %1195, ptr @imgUV_org, align 8, !tbaa !6
  br label %1229

1229:                                             ; preds = %1207, %1211
  %1230 = getelementptr inbounds i8, ptr %1203, i64 1916
  %1231 = load i32, ptr %1230, align 4, !tbaa !141
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1240, label %1233

1233:                                             ; preds = %1229
  %1234 = getelementptr inbounds i8, ptr %1182, i64 89212
  %1235 = load i32, ptr %1234, align 4, !tbaa !49
  switch i32 %1235, label %1240 [
    i32 2, label %1236
    i32 1, label %1238
  ]

1236:                                             ; preds = %1233
  %1237 = load ptr, ptr @frame_pic_3, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1237)
  br label %1249

1238:                                             ; preds = %1233
  %1239 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1239)
  br label %1249

1240:                                             ; preds = %1233, %1229
  %1241 = icmp eq i32 %1189, 3
  %1242 = load i32, ptr @si_frame_indicator, align 4
  %1243 = icmp eq i32 %1242, 1
  %1244 = select i1 %1241, i1 %1243, i1 false
  br i1 %1244, label %1245, label %1247

1245:                                             ; preds = %1240
  %1246 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1246)
  store i32 0, ptr @si_frame_indicator, align 4, !tbaa !22
  br label %1249

1247:                                             ; preds = %1240
  %1248 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  call fastcc void @writeout_picture(ptr noundef %1248)
  br label %1249

1249:                                             ; preds = %1236, %1245, %1247, %1238, %1196
  %1250 = load ptr, ptr @frame_pic_3, align 8, !tbaa !6
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1253, label %1252

1252:                                             ; preds = %1249
  call void @free_slice_list(ptr noundef nonnull %1250) #17
  br label %1253

1253:                                             ; preds = %1252, %1249
  %1254 = load ptr, ptr @frame_pic_2, align 8, !tbaa !6
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1257, label %1256

1256:                                             ; preds = %1253
  call void @free_slice_list(ptr noundef nonnull %1254) #17
  br label %1257

1257:                                             ; preds = %1256, %1253
  %1258 = load ptr, ptr @frame_pic_1, align 8, !tbaa !6
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1261, label %1260

1260:                                             ; preds = %1257
  call void @free_slice_list(ptr noundef nonnull %1258) #17
  br label %1261

1261:                                             ; preds = %1260, %1257
  %1262 = load ptr, ptr @top_pic, align 8, !tbaa !6
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1265, label %1264

1264:                                             ; preds = %1261
  call void @free_slice_list(ptr noundef nonnull %1262) #17
  br label %1265

1265:                                             ; preds = %1264, %1261
  %1266 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1269, label %1268

1268:                                             ; preds = %1265
  call void @free_slice_list(ptr noundef nonnull %1266) #17
  br label %1269

1269:                                             ; preds = %1268, %1265
  %1270 = load ptr, ptr @input, align 8, !tbaa !6
  %1271 = getelementptr inbounds i8, ptr %1270, i64 3908
  %1272 = load i32, ptr %1271, align 4, !tbaa !69
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1282, label %1274

1274:                                             ; preds = %1269
  %1275 = load ptr, ptr @stats, align 8, !tbaa !6
  %1276 = getelementptr inbounds i8, ptr %1275, i64 16
  %1277 = load i32, ptr %1276, align 8, !tbaa !161
  %1278 = getelementptr inbounds i8, ptr %1275, i64 20
  %1279 = load i32, ptr %1278, align 4, !tbaa !162
  %1280 = sub nsw i32 %1277, %1279
  call void @rc_update_pict_frame(i32 noundef signext %1280) #17
  %1281 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1282

1282:                                             ; preds = %1274, %1269
  %1283 = phi ptr [ %1281, %1274 ], [ %1270, %1269 ]
  %1284 = phi i32 [ %1280, %1274 ], [ 0, %1269 ]
  %1285 = getelementptr inbounds i8, ptr %1283, i64 3904
  %1286 = load i32, ptr %1285, align 8, !tbaa !163
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1672, label %1288

1288:                                             ; preds = %1282
  %1289 = load ptr, ptr @img, align 8, !tbaa !6
  %1290 = getelementptr inbounds i8, ptr %1289, i64 90532
  %1291 = load i32, ptr %1290, align 4, !tbaa !164
  %1292 = mul nsw i32 %1291, %1291
  %1293 = getelementptr inbounds i8, ptr %1289, i64 90536
  %1294 = load i32, ptr %1293, align 8, !tbaa !165
  %1295 = mul nsw i32 %1294, %1294
  %1296 = getelementptr inbounds i8, ptr %1283, i64 72
  %1297 = load i32, ptr %1296, align 8, !tbaa !103
  %1298 = getelementptr inbounds i8, ptr %1283, i64 68
  %1299 = load i32, ptr %1298, align 4, !tbaa !102
  %1300 = mul nsw i32 %1299, %1297
  %1301 = getelementptr inbounds i8, ptr %1283, i64 3976
  %1302 = load i32, ptr %1301, align 8, !tbaa !105
  %1303 = getelementptr inbounds i8, ptr %1283, i64 3980
  %1304 = load i32, ptr %1303, align 4, !tbaa !104
  %1305 = mul nsw i32 %1304, %1302
  %1306 = getelementptr inbounds i8, ptr %1289, i64 89208
  %1307 = load i32, ptr %1306, align 8, !tbaa !128
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1414, label %1309

1309:                                             ; preds = %1288
  %1310 = icmp sgt i32 %1299, 0
  br i1 %1310, label %1311, label %1347

1311:                                             ; preds = %1309
  %1312 = icmp sgt i32 %1297, 0
  %1313 = getelementptr inbounds i8, ptr %1289, i64 89184
  %1314 = load ptr, ptr @imgY_org, align 8
  %1315 = load ptr, ptr @imgY_com, align 8
  %1316 = zext nneg i32 %1299 to i64
  %1317 = zext nneg i32 %1297 to i64
  br label %1318

1318:                                             ; preds = %1343, %1311
  %1319 = phi i64 [ 0, %1311 ], [ %1345, %1343 ]
  %1320 = phi i64 [ 0, %1311 ], [ %1344, %1343 ]
  br i1 %1312, label %1321, label %1343

1321:                                             ; preds = %1318
  %1322 = load ptr, ptr %1313, align 8, !tbaa !166
  br label %1323

1323:                                             ; preds = %1323, %1321
  %1324 = phi i64 [ 0, %1321 ], [ %1341, %1323 ]
  %1325 = phi i64 [ %1320, %1321 ], [ %1340, %1323 ]
  %1326 = getelementptr inbounds ptr, ptr %1314, i64 %1324
  %1327 = load ptr, ptr %1326, align 8, !tbaa !6
  %1328 = getelementptr inbounds i16, ptr %1327, i64 %1319
  %1329 = load i16, ptr %1328, align 2, !tbaa !112
  %1330 = zext i16 %1329 to i64
  %1331 = getelementptr inbounds ptr, ptr %1315, i64 %1324
  %1332 = load ptr, ptr %1331, align 8, !tbaa !6
  %1333 = getelementptr inbounds i16, ptr %1332, i64 %1319
  %1334 = load i16, ptr %1333, align 2, !tbaa !112
  %1335 = zext i16 %1334 to i64
  %1336 = sub nsw i64 %1330, %1335
  %1337 = getelementptr inbounds i32, ptr %1322, i64 %1336
  %1338 = load i32, ptr %1337, align 4, !tbaa !22
  %1339 = sext i32 %1338 to i64
  %1340 = add nsw i64 %1325, %1339
  %1341 = add nuw nsw i64 %1324, 1
  %1342 = icmp eq i64 %1341, %1317
  br i1 %1342, label %1343, label %1323

1343:                                             ; preds = %1323, %1318
  %1344 = phi i64 [ %1320, %1318 ], [ %1340, %1323 ]
  %1345 = add nuw nsw i64 %1319, 1
  %1346 = icmp eq i64 %1345, %1316
  br i1 %1346, label %1347, label %1318

1347:                                             ; preds = %1343, %1309
  %1348 = phi i64 [ 0, %1309 ], [ %1344, %1343 ]
  %1349 = getelementptr inbounds i8, ptr %1289, i64 90548
  %1350 = load i32, ptr %1349, align 4, !tbaa !14
  %1351 = icmp ne i32 %1350, 0
  %1352 = icmp sgt i32 %1304, 0
  %1353 = select i1 %1351, i1 %1352, i1 false
  br i1 %1353, label %1354, label %1529

1354:                                             ; preds = %1347
  %1355 = icmp sgt i32 %1302, 0
  %1356 = getelementptr inbounds i8, ptr %1289, i64 89184
  %1357 = load ptr, ptr @imgUV_org, align 8
  %1358 = load ptr, ptr @imgUV_com, align 8
  %1359 = getelementptr inbounds i8, ptr %1357, i64 8
  %1360 = getelementptr inbounds i8, ptr %1358, i64 8
  %1361 = zext nneg i32 %1304 to i64
  %1362 = zext nneg i32 %1302 to i64
  br label %1363

1363:                                             ; preds = %1409, %1354
  %1364 = phi i64 [ 0, %1354 ], [ %1412, %1409 ]
  %1365 = phi i64 [ 0, %1354 ], [ %1411, %1409 ]
  %1366 = phi i64 [ 0, %1354 ], [ %1410, %1409 ]
  br i1 %1355, label %1367, label %1409

1367:                                             ; preds = %1363
  %1368 = load ptr, ptr %1356, align 8, !tbaa !166
  %1369 = load ptr, ptr %1357, align 8, !tbaa !6
  %1370 = load ptr, ptr %1358, align 8, !tbaa !6
  %1371 = load ptr, ptr %1359, align 8, !tbaa !6
  %1372 = load ptr, ptr %1360, align 8, !tbaa !6
  br label %1373

1373:                                             ; preds = %1373, %1367
  %1374 = phi i64 [ 0, %1367 ], [ %1407, %1373 ]
  %1375 = phi i64 [ %1365, %1367 ], [ %1391, %1373 ]
  %1376 = phi i64 [ %1366, %1367 ], [ %1406, %1373 ]
  %1377 = getelementptr inbounds ptr, ptr %1369, i64 %1374
  %1378 = load ptr, ptr %1377, align 8, !tbaa !6
  %1379 = getelementptr inbounds i16, ptr %1378, i64 %1364
  %1380 = load i16, ptr %1379, align 2, !tbaa !112
  %1381 = zext i16 %1380 to i64
  %1382 = getelementptr inbounds ptr, ptr %1370, i64 %1374
  %1383 = load ptr, ptr %1382, align 8, !tbaa !6
  %1384 = getelementptr inbounds i16, ptr %1383, i64 %1364
  %1385 = load i16, ptr %1384, align 2, !tbaa !112
  %1386 = zext i16 %1385 to i64
  %1387 = sub nsw i64 %1381, %1386
  %1388 = getelementptr inbounds i32, ptr %1368, i64 %1387
  %1389 = load i32, ptr %1388, align 4, !tbaa !22
  %1390 = sext i32 %1389 to i64
  %1391 = add nsw i64 %1375, %1390
  %1392 = getelementptr inbounds ptr, ptr %1371, i64 %1374
  %1393 = load ptr, ptr %1392, align 8, !tbaa !6
  %1394 = getelementptr inbounds i16, ptr %1393, i64 %1364
  %1395 = load i16, ptr %1394, align 2, !tbaa !112
  %1396 = zext i16 %1395 to i64
  %1397 = getelementptr inbounds ptr, ptr %1372, i64 %1374
  %1398 = load ptr, ptr %1397, align 8, !tbaa !6
  %1399 = getelementptr inbounds i16, ptr %1398, i64 %1364
  %1400 = load i16, ptr %1399, align 2, !tbaa !112
  %1401 = zext i16 %1400 to i64
  %1402 = sub nsw i64 %1396, %1401
  %1403 = getelementptr inbounds i32, ptr %1368, i64 %1402
  %1404 = load i32, ptr %1403, align 4, !tbaa !22
  %1405 = sext i32 %1404 to i64
  %1406 = add nsw i64 %1376, %1405
  %1407 = add nuw nsw i64 %1374, 1
  %1408 = icmp eq i64 %1407, %1362
  br i1 %1408, label %1409, label %1373

1409:                                             ; preds = %1373, %1363
  %1410 = phi i64 [ %1366, %1363 ], [ %1406, %1373 ]
  %1411 = phi i64 [ %1365, %1363 ], [ %1391, %1373 ]
  %1412 = add nuw nsw i64 %1364, 1
  %1413 = icmp eq i64 %1412, %1361
  br i1 %1413, label %1529, label %1363

1414:                                             ; preds = %1288
  %1415 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %1415, ptr @imgY_org, align 8, !tbaa !6
  %1416 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %1416, ptr @imgUV_org, align 8, !tbaa !6
  %1417 = getelementptr inbounds i8, ptr %1283, i64 3552
  %1418 = load i32, ptr %1417, align 8, !tbaa !125
  %1419 = icmp eq i32 %1418, 2
  br i1 %1419, label %1420, label %1422

1420:                                             ; preds = %1414
  %1421 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  store ptr %1421, ptr @enc_picture, align 8, !tbaa !6
  br label %1422

1422:                                             ; preds = %1420, %1414
  %1423 = icmp sgt i32 %1299, 0
  br i1 %1423, label %1424, label %1461

1424:                                             ; preds = %1422
  %1425 = icmp sgt i32 %1297, 0
  %1426 = getelementptr inbounds i8, ptr %1289, i64 89184
  %1427 = load ptr, ptr @enc_picture, align 8
  %1428 = getelementptr inbounds i8, ptr %1427, i64 6424
  %1429 = zext nneg i32 %1299 to i64
  %1430 = zext nneg i32 %1297 to i64
  br label %1431

1431:                                             ; preds = %1457, %1424
  %1432 = phi i64 [ 0, %1424 ], [ %1459, %1457 ]
  %1433 = phi i64 [ 0, %1424 ], [ %1458, %1457 ]
  br i1 %1425, label %1434, label %1457

1434:                                             ; preds = %1431
  %1435 = load ptr, ptr %1426, align 8, !tbaa !166
  %1436 = load ptr, ptr %1428, align 8, !tbaa !10
  br label %1437

1437:                                             ; preds = %1437, %1434
  %1438 = phi i64 [ 0, %1434 ], [ %1455, %1437 ]
  %1439 = phi i64 [ %1433, %1434 ], [ %1454, %1437 ]
  %1440 = getelementptr inbounds ptr, ptr %1415, i64 %1438
  %1441 = load ptr, ptr %1440, align 8, !tbaa !6
  %1442 = getelementptr inbounds i16, ptr %1441, i64 %1432
  %1443 = load i16, ptr %1442, align 2, !tbaa !112
  %1444 = zext i16 %1443 to i64
  %1445 = getelementptr inbounds ptr, ptr %1436, i64 %1438
  %1446 = load ptr, ptr %1445, align 8, !tbaa !6
  %1447 = getelementptr inbounds i16, ptr %1446, i64 %1432
  %1448 = load i16, ptr %1447, align 2, !tbaa !112
  %1449 = zext i16 %1448 to i64
  %1450 = sub nsw i64 %1444, %1449
  %1451 = getelementptr inbounds i32, ptr %1435, i64 %1450
  %1452 = load i32, ptr %1451, align 4, !tbaa !22
  %1453 = sext i32 %1452 to i64
  %1454 = add nsw i64 %1439, %1453
  %1455 = add nuw nsw i64 %1438, 1
  %1456 = icmp eq i64 %1455, %1430
  br i1 %1456, label %1457, label %1437

1457:                                             ; preds = %1437, %1431
  %1458 = phi i64 [ %1433, %1431 ], [ %1454, %1437 ]
  %1459 = add nuw nsw i64 %1432, 1
  %1460 = icmp eq i64 %1459, %1429
  br i1 %1460, label %1461, label %1431

1461:                                             ; preds = %1457, %1422
  %1462 = phi i64 [ 0, %1422 ], [ %1458, %1457 ]
  %1463 = getelementptr inbounds i8, ptr %1289, i64 90548
  %1464 = load i32, ptr %1463, align 4, !tbaa !14
  %1465 = icmp ne i32 %1464, 0
  %1466 = icmp sgt i32 %1304, 0
  %1467 = select i1 %1465, i1 %1466, i1 false
  br i1 %1467, label %1468, label %1529

1468:                                             ; preds = %1461
  %1469 = icmp sgt i32 %1302, 0
  %1470 = getelementptr inbounds i8, ptr %1289, i64 89184
  %1471 = load ptr, ptr @enc_picture, align 8
  %1472 = getelementptr inbounds i8, ptr %1471, i64 6464
  %1473 = getelementptr inbounds i8, ptr %1416, i64 8
  %1474 = zext nneg i32 %1304 to i64
  %1475 = zext nneg i32 %1302 to i64
  br label %1476

1476:                                             ; preds = %1524, %1468
  %1477 = phi i64 [ 0, %1468 ], [ %1527, %1524 ]
  %1478 = phi i64 [ 0, %1468 ], [ %1526, %1524 ]
  %1479 = phi i64 [ 0, %1468 ], [ %1525, %1524 ]
  br i1 %1469, label %1480, label %1524

1480:                                             ; preds = %1476
  %1481 = load ptr, ptr %1470, align 8, !tbaa !166
  %1482 = load ptr, ptr %1416, align 8, !tbaa !6
  %1483 = load ptr, ptr %1472, align 8, !tbaa !13
  %1484 = load ptr, ptr %1483, align 8, !tbaa !6
  %1485 = load ptr, ptr %1473, align 8, !tbaa !6
  %1486 = getelementptr inbounds i8, ptr %1483, i64 8
  %1487 = load ptr, ptr %1486, align 8, !tbaa !6
  br label %1488

1488:                                             ; preds = %1488, %1480
  %1489 = phi i64 [ 0, %1480 ], [ %1522, %1488 ]
  %1490 = phi i64 [ %1478, %1480 ], [ %1506, %1488 ]
  %1491 = phi i64 [ %1479, %1480 ], [ %1521, %1488 ]
  %1492 = getelementptr inbounds ptr, ptr %1482, i64 %1489
  %1493 = load ptr, ptr %1492, align 8, !tbaa !6
  %1494 = getelementptr inbounds i16, ptr %1493, i64 %1477
  %1495 = load i16, ptr %1494, align 2, !tbaa !112
  %1496 = zext i16 %1495 to i64
  %1497 = getelementptr inbounds ptr, ptr %1484, i64 %1489
  %1498 = load ptr, ptr %1497, align 8, !tbaa !6
  %1499 = getelementptr inbounds i16, ptr %1498, i64 %1477
  %1500 = load i16, ptr %1499, align 2, !tbaa !112
  %1501 = zext i16 %1500 to i64
  %1502 = sub nsw i64 %1496, %1501
  %1503 = getelementptr inbounds i32, ptr %1481, i64 %1502
  %1504 = load i32, ptr %1503, align 4, !tbaa !22
  %1505 = sext i32 %1504 to i64
  %1506 = add nsw i64 %1490, %1505
  %1507 = getelementptr inbounds ptr, ptr %1485, i64 %1489
  %1508 = load ptr, ptr %1507, align 8, !tbaa !6
  %1509 = getelementptr inbounds i16, ptr %1508, i64 %1477
  %1510 = load i16, ptr %1509, align 2, !tbaa !112
  %1511 = zext i16 %1510 to i64
  %1512 = getelementptr inbounds ptr, ptr %1487, i64 %1489
  %1513 = load ptr, ptr %1512, align 8, !tbaa !6
  %1514 = getelementptr inbounds i16, ptr %1513, i64 %1477
  %1515 = load i16, ptr %1514, align 2, !tbaa !112
  %1516 = zext i16 %1515 to i64
  %1517 = sub nsw i64 %1511, %1516
  %1518 = getelementptr inbounds i32, ptr %1481, i64 %1517
  %1519 = load i32, ptr %1518, align 4, !tbaa !22
  %1520 = sext i32 %1519 to i64
  %1521 = add nsw i64 %1491, %1520
  %1522 = add nuw nsw i64 %1489, 1
  %1523 = icmp eq i64 %1522, %1475
  br i1 %1523, label %1524, label %1488

1524:                                             ; preds = %1488, %1476
  %1525 = phi i64 [ %1479, %1476 ], [ %1521, %1488 ]
  %1526 = phi i64 [ %1478, %1476 ], [ %1506, %1488 ]
  %1527 = add nuw nsw i64 %1477, 1
  %1528 = icmp eq i64 %1527, %1474
  br i1 %1528, label %1529, label %1476

1529:                                             ; preds = %1409, %1524, %1461, %1347
  %1530 = phi i64 [ 0, %1347 ], [ 0, %1461 ], [ %1525, %1524 ], [ %1410, %1409 ]
  %1531 = phi i64 [ 0, %1347 ], [ 0, %1461 ], [ %1526, %1524 ], [ %1411, %1409 ]
  %1532 = phi i64 [ %1348, %1347 ], [ %1462, %1461 ], [ %1462, %1524 ], [ %1348, %1409 ]
  %1533 = sitofp i64 %1532 to float
  %1534 = load ptr, ptr @snr, align 8, !tbaa !6
  %1535 = getelementptr inbounds i8, ptr %1534, i64 96
  store float %1533, ptr %1535, align 4, !tbaa !167
  %1536 = sitofp i64 %1531 to float
  %1537 = getelementptr inbounds i8, ptr %1534, i64 100
  store float %1536, ptr %1537, align 4, !tbaa !168
  %1538 = sitofp i64 %1530 to float
  %1539 = getelementptr inbounds i8, ptr %1534, i64 104
  store float %1538, ptr %1539, align 4, !tbaa !169
  %1540 = call i64 @llvm.umax.i64(i64 %1532, i64 1)
  %1541 = uitofp nneg i32 %1292 to double
  %1542 = sitofp i32 %1300 to double
  %1543 = sitofp i64 %1540 to double
  %1544 = fdiv double %1542, %1543
  %1545 = fmul double %1544, %1541
  %1546 = call double @log10(double noundef %1545) #17
  %1547 = fmul double %1546, 1.000000e+01
  %1548 = fptrunc double %1547 to float
  %1549 = load ptr, ptr @snr, align 8, !tbaa !6
  store float %1548, ptr %1549, align 4, !tbaa !155
  %1550 = load ptr, ptr @img, align 8, !tbaa !6
  %1551 = getelementptr inbounds i8, ptr %1550, i64 90548
  %1552 = load i32, ptr %1551, align 4, !tbaa !14
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1576, label %1554

1554:                                             ; preds = %1529
  %1555 = call i64 @llvm.umax.i64(i64 %1530, i64 1)
  %1556 = call i64 @llvm.umax.i64(i64 %1531, i64 1)
  %1557 = uitofp nneg i32 %1295 to double
  %1558 = sitofp i32 %1305 to double
  %1559 = sitofp i64 %1556 to double
  %1560 = fdiv double %1558, %1559
  %1561 = fmul double %1560, %1557
  %1562 = call double @log10(double noundef %1561) #17
  %1563 = fmul double %1562, 1.000000e+01
  %1564 = fptrunc double %1563 to float
  %1565 = load ptr, ptr @snr, align 8, !tbaa !6
  %1566 = getelementptr inbounds i8, ptr %1565, i64 4
  store float %1564, ptr %1566, align 4, !tbaa !156
  %1567 = sitofp i64 %1555 to double
  %1568 = fdiv double %1558, %1567
  %1569 = fmul double %1568, %1557
  %1570 = call double @log10(double noundef %1569) #17
  %1571 = fmul double %1570, 1.000000e+01
  %1572 = fptrunc double %1571 to float
  %1573 = load ptr, ptr @snr, align 8, !tbaa !6
  %1574 = getelementptr inbounds i8, ptr %1573, i64 8
  store float %1572, ptr %1574, align 4, !tbaa !157
  %1575 = load ptr, ptr @img, align 8, !tbaa !6
  br label %1579

1576:                                             ; preds = %1529
  %1577 = getelementptr inbounds i8, ptr %1549, i64 4
  store float 0.000000e+00, ptr %1577, align 4, !tbaa !156
  %1578 = getelementptr inbounds i8, ptr %1549, i64 8
  store float 0.000000e+00, ptr %1578, align 4, !tbaa !157
  br label %1579

1579:                                             ; preds = %1576, %1554
  %1580 = phi float [ %1572, %1554 ], [ 0.000000e+00, %1576 ]
  %1581 = phi ptr [ %1573, %1554 ], [ %1549, %1576 ]
  %1582 = phi ptr [ %1575, %1554 ], [ %1550, %1576 ]
  %1583 = load i32, ptr %1582, align 8, !tbaa !26
  %1584 = icmp eq i32 %1583, 0
  %1585 = getelementptr inbounds i8, ptr %1581, i64 88
  br i1 %1584, label %1586, label %1605

1586:                                             ; preds = %1579
  %1587 = load float, ptr %1581, align 4, !tbaa !155
  %1588 = getelementptr inbounds i8, ptr %1581, i64 12
  store float %1587, ptr %1588, align 4, !tbaa !170
  %1589 = getelementptr inbounds i8, ptr %1581, i64 4
  %1590 = load float, ptr %1589, align 4, !tbaa !156
  %1591 = getelementptr inbounds i8, ptr %1581, i64 16
  store float %1590, ptr %1591, align 4, !tbaa !171
  %1592 = getelementptr inbounds i8, ptr %1581, i64 20
  store float %1580, ptr %1592, align 4, !tbaa !172
  %1593 = getelementptr inbounds i8, ptr %1581, i64 84
  store float %1587, ptr %1593, align 4, !tbaa !173
  store float %1590, ptr %1585, align 4, !tbaa !174
  %1594 = getelementptr inbounds i8, ptr %1581, i64 92
  store float %1580, ptr %1594, align 4, !tbaa !175
  %1595 = getelementptr inbounds i8, ptr %1581, i64 96
  %1596 = load float, ptr %1595, align 4, !tbaa !167
  %1597 = getelementptr inbounds i8, ptr %1581, i64 108
  store float %1596, ptr %1597, align 4, !tbaa !176
  %1598 = getelementptr inbounds i8, ptr %1581, i64 100
  %1599 = load float, ptr %1598, align 4, !tbaa !168
  %1600 = getelementptr inbounds i8, ptr %1581, i64 112
  store float %1599, ptr %1600, align 4, !tbaa !177
  %1601 = getelementptr inbounds i8, ptr %1581, i64 104
  %1602 = load float, ptr %1601, align 4, !tbaa !169
  %1603 = getelementptr inbounds i8, ptr %1581, i64 116
  store float %1602, ptr %1603, align 4, !tbaa !178
  %1604 = getelementptr inbounds i8, ptr %1581, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %1604, i8 0, i64 60, i1 false)
  br label %1643

1605:                                             ; preds = %1579
  %1606 = getelementptr inbounds i8, ptr %1581, i64 120
  %1607 = load i32, ptr %1606, align 4, !tbaa !123
  %1608 = add nsw i32 %1607, -1
  %1609 = getelementptr inbounds i8, ptr %1581, i64 84
  %1610 = load float, ptr %1609, align 4, !tbaa !173
  %1611 = sitofp i32 %1608 to float
  %1612 = load float, ptr %1581, align 4, !tbaa !155
  %1613 = call float @llvm.fmuladd.f32(float %1610, float %1611, float %1612)
  %1614 = sitofp i32 %1607 to float
  %1615 = fdiv float %1613, %1614
  store float %1615, ptr %1609, align 4, !tbaa !173
  %1616 = load float, ptr %1585, align 4, !tbaa !174
  %1617 = getelementptr inbounds i8, ptr %1581, i64 4
  %1618 = load float, ptr %1617, align 4, !tbaa !156
  %1619 = call float @llvm.fmuladd.f32(float %1616, float %1611, float %1618)
  %1620 = fdiv float %1619, %1614
  store float %1620, ptr %1585, align 4, !tbaa !174
  %1621 = getelementptr inbounds i8, ptr %1581, i64 92
  %1622 = load float, ptr %1621, align 4, !tbaa !175
  %1623 = call float @llvm.fmuladd.f32(float %1622, float %1611, float %1580)
  %1624 = fdiv float %1623, %1614
  store float %1624, ptr %1621, align 4, !tbaa !175
  %1625 = getelementptr inbounds i8, ptr %1581, i64 108
  %1626 = load float, ptr %1625, align 4, !tbaa !176
  %1627 = getelementptr inbounds i8, ptr %1581, i64 96
  %1628 = load float, ptr %1627, align 4, !tbaa !167
  %1629 = call float @llvm.fmuladd.f32(float %1626, float %1611, float %1628)
  %1630 = fdiv float %1629, %1614
  store float %1630, ptr %1625, align 4, !tbaa !176
  %1631 = getelementptr inbounds i8, ptr %1581, i64 112
  %1632 = load float, ptr %1631, align 4, !tbaa !177
  %1633 = getelementptr inbounds i8, ptr %1581, i64 100
  %1634 = load float, ptr %1633, align 4, !tbaa !168
  %1635 = call float @llvm.fmuladd.f32(float %1632, float %1611, float %1634)
  %1636 = fdiv float %1635, %1614
  store float %1636, ptr %1631, align 4, !tbaa !177
  %1637 = getelementptr inbounds i8, ptr %1581, i64 116
  %1638 = load float, ptr %1637, align 4, !tbaa !178
  %1639 = getelementptr inbounds i8, ptr %1581, i64 104
  %1640 = load float, ptr %1639, align 4, !tbaa !169
  %1641 = call float @llvm.fmuladd.f32(float %1638, float %1611, float %1640)
  %1642 = fdiv float %1641, %1614
  store float %1642, ptr %1637, align 4, !tbaa !178
  br label %1643

1643:                                             ; preds = %1586, %1605
  %1644 = phi float [ %1587, %1586 ], [ %1612, %1605 ]
  %1645 = getelementptr inbounds i8, ptr %1581, i64 24
  %1646 = getelementptr inbounds i8, ptr %1582, i64 24
  %1647 = load i32, ptr %1646, align 8, !tbaa !30
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds [5 x float], ptr %1645, i64 0, i64 %1648
  %1650 = load float, ptr %1649, align 4, !tbaa !179
  %1651 = getelementptr inbounds [5 x i32], ptr @frame_ctr, i64 0, i64 %1648
  %1652 = load i32, ptr %1651, align 4, !tbaa !22
  %1653 = add nsw i32 %1652, -1
  %1654 = sitofp i32 %1653 to float
  %1655 = call float @llvm.fmuladd.f32(float %1650, float %1654, float %1644)
  %1656 = sitofp i32 %1652 to float
  %1657 = fdiv float %1655, %1656
  store float %1657, ptr %1649, align 4, !tbaa !179
  %1658 = getelementptr inbounds i8, ptr %1581, i64 44
  %1659 = getelementptr inbounds [5 x float], ptr %1658, i64 0, i64 %1648
  %1660 = load float, ptr %1659, align 4, !tbaa !179
  %1661 = getelementptr inbounds i8, ptr %1581, i64 4
  %1662 = load float, ptr %1661, align 4, !tbaa !156
  %1663 = call float @llvm.fmuladd.f32(float %1660, float %1654, float %1662)
  %1664 = fdiv float %1663, %1656
  store float %1664, ptr %1659, align 4, !tbaa !179
  %1665 = getelementptr inbounds i8, ptr %1581, i64 64
  %1666 = getelementptr inbounds [5 x float], ptr %1665, i64 0, i64 %1648
  %1667 = load float, ptr %1666, align 4, !tbaa !179
  %1668 = getelementptr inbounds i8, ptr %1581, i64 8
  %1669 = load float, ptr %1668, align 4, !tbaa !157
  %1670 = call float @llvm.fmuladd.f32(float %1667, float %1654, float %1669)
  %1671 = fdiv float %1670, %1656
  store float %1671, ptr %1666, align 4, !tbaa !179
  br label %1679

1672:                                             ; preds = %1282
  %1673 = load ptr, ptr @snr, align 8, !tbaa !6
  store float 0.000000e+00, ptr %1673, align 4, !tbaa !155
  %1674 = getelementptr inbounds i8, ptr %1673, i64 4
  store float 0.000000e+00, ptr %1674, align 4, !tbaa !156
  %1675 = getelementptr inbounds i8, ptr %1673, i64 8
  store float 0.000000e+00, ptr %1675, align 4, !tbaa !157
  %1676 = getelementptr inbounds i8, ptr %1673, i64 96
  store float 0.000000e+00, ptr %1676, align 4, !tbaa !167
  %1677 = getelementptr inbounds i8, ptr %1673, i64 100
  store float 0.000000e+00, ptr %1677, align 4, !tbaa !168
  %1678 = getelementptr inbounds i8, ptr %1673, i64 104
  store float 0.000000e+00, ptr %1678, align 4, !tbaa !169
  br label %1679

1679:                                             ; preds = %1672, %1643
  %1680 = call i64 @time(ptr noundef nonnull %2) #17
  %1681 = call signext i32 @ftime(ptr noundef nonnull %4) #17
  %1682 = load i64, ptr %2, align 8, !tbaa !180
  %1683 = getelementptr inbounds i8, ptr %4, i64 8
  %1684 = load i16, ptr %1683, align 8, !tbaa !182
  %1685 = zext i16 %1684 to i64
  %1686 = load i64, ptr %1, align 8, !tbaa !180
  %1687 = getelementptr inbounds i8, ptr %3, i64 8
  %1688 = load i16, ptr %1687, align 8, !tbaa !182
  %1689 = zext i16 %1688 to i64
  %1690 = sub i64 %1682, %1686
  %1691 = mul i64 %1690, 1000
  %1692 = sub nsw i64 %1685, %1689
  %1693 = add i64 %1692, %1691
  %1694 = trunc i64 %1693 to i32
  %1695 = load i32, ptr @tot_time, align 4, !tbaa !22
  %1696 = add nsw i32 %1695, %1694
  store i32 %1696, ptr @tot_time, align 4, !tbaa !22
  %1697 = load ptr, ptr @input, align 8, !tbaa !6
  %1698 = getelementptr inbounds i8, ptr %1697, i64 3552
  %1699 = load i32, ptr %1698, align 8, !tbaa !125
  %1700 = icmp eq i32 %1699, 2
  %1701 = load ptr, ptr @img, align 8, !tbaa !6
  %1702 = getelementptr inbounds i8, ptr %1701, i64 89208
  %1703 = load i32, ptr %1702, align 8, !tbaa !128
  %1704 = icmp eq i32 %1703, 0
  br i1 %1700, label %1705, label %1712

1705:                                             ; preds = %1679
  br i1 %1704, label %1709, label %1706

1706:                                             ; preds = %1705
  %1707 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  call void @store_picture_in_dpb(ptr noundef %1707) #17
  %1708 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1708) #17
  br label %1730

1709:                                             ; preds = %1705
  %1710 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  call void @replace_top_pic_with_frame(ptr noundef %1710) #17
  %1711 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1711) #17
  br label %1730

1712:                                             ; preds = %1679
  br i1 %1704, label %1715, label %1713

1713:                                             ; preds = %1712
  %1714 = load ptr, ptr @enc_bottom_picture, align 8, !tbaa !6
  call void @store_picture_in_dpb(ptr noundef %1714) #17
  br label %1730

1715:                                             ; preds = %1712
  %1716 = getelementptr inbounds i8, ptr %1701, i64 89212
  %1717 = load i32, ptr %1716, align 4, !tbaa !49
  switch i32 %1717, label %1726 [
    i32 2, label %1718
    i32 1, label %1722
  ]

1718:                                             ; preds = %1715
  %1719 = load ptr, ptr @enc_frame_picture3, align 8, !tbaa !6
  call void @store_picture_in_dpb(ptr noundef %1719) #17
  %1720 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1720) #17
  %1721 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1721) #17
  br label %1730

1722:                                             ; preds = %1715
  %1723 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !6
  call void @store_picture_in_dpb(ptr noundef %1723) #17
  %1724 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1724) #17
  %1725 = load ptr, ptr @enc_frame_picture3, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1725) #17
  br label %1730

1726:                                             ; preds = %1715
  %1727 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  call void @store_picture_in_dpb(ptr noundef %1727) #17
  %1728 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1728) #17
  %1729 = load ptr, ptr @enc_frame_picture3, align 8, !tbaa !6
  call void @free_storable_picture(ptr noundef %1729) #17
  br label %1730

1730:                                             ; preds = %1713, %1722, %1726, %1718, %1706, %1709
  %1731 = load ptr, ptr @stats, align 8, !tbaa !6
  %1732 = getelementptr inbounds i8, ptr %1731, i64 16
  %1733 = load i32, ptr %1732, align 8, !tbaa !161
  %1734 = getelementptr inbounds i8, ptr %1731, i64 20
  %1735 = load i32, ptr %1734, align 4, !tbaa !162
  %1736 = sub nsw i32 %1733, %1735
  %1737 = sext i32 %1736 to i64
  %1738 = load i64, ptr @total_frame_buffer, align 8, !tbaa !180
  %1739 = getelementptr inbounds [10000 x i64], ptr @Bit_Buffer, i64 0, i64 %1738
  store i64 %1737, ptr %1739, align 8, !tbaa !180
  %1740 = add i64 %1738, 1
  store i64 %1740, ptr @total_frame_buffer, align 8, !tbaa !180
  %1741 = load ptr, ptr @img, align 8, !tbaa !6
  %1742 = getelementptr inbounds i8, ptr %1741, i64 90224
  %1743 = load i32, ptr %1742, align 8, !tbaa !184
  %1744 = icmp eq i32 %1743, 2
  br i1 %1744, label %1745, label %1763

1745:                                             ; preds = %1730
  %1746 = getelementptr inbounds i8, ptr %1741, i64 90316
  %1747 = load i32, ptr %1746, align 4, !tbaa !76
  %1748 = icmp eq i32 %1747, 0
  %1749 = load i32, ptr @encode_one_frame.consecutive_non_reference_pictures, align 4
  %1750 = add nsw i32 %1749, 1
  %1751 = select i1 %1748, i32 %1750, i32 0
  store i32 %1751, ptr @encode_one_frame.consecutive_non_reference_pictures, align 4, !tbaa !22
  %1752 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1753 = load i32, ptr @encode_one_frame.prev_frame_no, align 4, !tbaa !22
  %1754 = icmp slt i32 %1752, %1753
  %1755 = icmp sgt i32 %1751, 1
  %1756 = select i1 %1754, i1 true, i1 %1755
  br i1 %1756, label %1757, label %1760

1757:                                             ; preds = %1745
  call void @error(ptr noundef nonnull @.str, i32 noundef signext -1) #17
  %1758 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1759 = load ptr, ptr @stats, align 8, !tbaa !6
  br label %1760

1760:                                             ; preds = %1745, %1757
  %1761 = phi ptr [ %1731, %1745 ], [ %1759, %1757 ]
  %1762 = phi i32 [ %1752, %1745 ], [ %1758, %1757 ]
  store i32 %1762, ptr @encode_one_frame.prev_frame_no, align 4, !tbaa !22
  br label %1763

1763:                                             ; preds = %1760, %1730
  %1764 = phi ptr [ %1761, %1760 ], [ %1731, %1730 ]
  %1765 = getelementptr inbounds i8, ptr %1764, i64 1500
  %1766 = load i32, ptr %1765, align 4, !tbaa !52
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1776, label %1768

1768:                                             ; preds = %1763
  %1769 = load ptr, ptr @input, align 8, !tbaa !6
  %1770 = getelementptr inbounds i8, ptr %1769, i64 3904
  %1771 = load i32, ptr %1770, align 8, !tbaa !163
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1776, label %1773

1773:                                             ; preds = %1768
  %1774 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1775 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef signext %1774, i32 noundef signext %1766)
  br label %1776

1776:                                             ; preds = %1773, %1768, %1763
  %1777 = load ptr, ptr @img, align 8, !tbaa !6
  %1778 = load i32, ptr %1777, align 8, !tbaa !26
  %1779 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %1780 = icmp eq i32 %1778, %1779
  br i1 %1780, label %1781, label %1867

1781:                                             ; preds = %1776
  %1782 = load i32, ptr @me_time, align 4, !tbaa !22
  %1783 = load ptr, ptr @input, align 8, !tbaa !6
  %1784 = getelementptr inbounds i8, ptr %1783, i64 3904
  %1785 = load i32, ptr %1784, align 8, !tbaa !163
  switch i32 %1785, label %1845 [
    i32 1, label %1786
    i32 2, label %1812
  ]

1786:                                             ; preds = %1781
  %1787 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1788 = load ptr, ptr @stats, align 8, !tbaa !6
  %1789 = getelementptr inbounds i8, ptr %1788, i64 16
  %1790 = load i32, ptr %1789, align 8, !tbaa !161
  %1791 = getelementptr inbounds i8, ptr %1788, i64 20
  %1792 = load i32, ptr %1791, align 4, !tbaa !162
  %1793 = sub nsw i32 %1790, %1792
  %1794 = getelementptr inbounds i8, ptr %1777, i64 40
  %1795 = load i32, ptr %1794, align 8, !tbaa !73
  %1796 = load ptr, ptr @snr, align 8, !tbaa !6
  %1797 = load float, ptr %1796, align 4, !tbaa !155
  %1798 = fpext float %1797 to double
  %1799 = getelementptr inbounds i8, ptr %1796, i64 4
  %1800 = load float, ptr %1799, align 4, !tbaa !156
  %1801 = fpext float %1800 to double
  %1802 = getelementptr inbounds i8, ptr %1796, i64 8
  %1803 = load float, ptr %1802, align 4, !tbaa !157
  %1804 = fpext float %1803 to double
  %1805 = getelementptr inbounds i8, ptr %1777, i64 89208
  %1806 = load i32, ptr %1805, align 8, !tbaa !128
  %1807 = icmp eq i32 %1806, 0
  %1808 = select i1 %1807, ptr @.str.18, ptr @.str.17
  %1809 = getelementptr inbounds i8, ptr %1777, i64 90316
  %1810 = load i32, ptr %1809, align 4, !tbaa !76
  %1811 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef signext %1787, i32 noundef signext %1793, i32 noundef signext %1795, double noundef %1798, double noundef %1801, double noundef %1804, i32 noundef signext %1694, i32 noundef signext %1782, ptr noundef nonnull %1808, i32 noundef signext %1810)
  br label %1845

1812:                                             ; preds = %1781
  %1813 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1814 = load ptr, ptr @stats, align 8, !tbaa !6
  %1815 = getelementptr inbounds i8, ptr %1814, i64 16
  %1816 = load i32, ptr %1815, align 8, !tbaa !161
  %1817 = getelementptr inbounds i8, ptr %1814, i64 20
  %1818 = load i32, ptr %1817, align 4, !tbaa !162
  %1819 = sub nsw i32 %1816, %1818
  %1820 = getelementptr inbounds i8, ptr %1777, i64 40
  %1821 = load i32, ptr %1820, align 8, !tbaa !73
  %1822 = load ptr, ptr @snr, align 8, !tbaa !6
  %1823 = load float, ptr %1822, align 4, !tbaa !155
  %1824 = fpext float %1823 to double
  %1825 = getelementptr inbounds i8, ptr %1822, i64 4
  %1826 = load float, ptr %1825, align 4, !tbaa !156
  %1827 = fpext float %1826 to double
  %1828 = getelementptr inbounds i8, ptr %1822, i64 8
  %1829 = load float, ptr %1828, align 4, !tbaa !157
  %1830 = fpext float %1829 to double
  %1831 = getelementptr inbounds i8, ptr %1777, i64 89208
  %1832 = load i32, ptr %1831, align 8, !tbaa !128
  %1833 = icmp eq i32 %1832, 0
  %1834 = select i1 %1833, ptr @.str.18, ptr @.str.17
  %1835 = load i32, ptr @intras, align 4, !tbaa !22
  %1836 = getelementptr inbounds i8, ptr %1777, i64 89408
  %1837 = load i32, ptr %1836, align 8, !tbaa !185
  %1838 = getelementptr inbounds i8, ptr %1777, i64 89412
  %1839 = load i32, ptr %1838, align 4, !tbaa !186
  %1840 = getelementptr inbounds i8, ptr %1777, i64 89212
  %1841 = load i32, ptr %1840, align 4, !tbaa !49
  %1842 = getelementptr inbounds i8, ptr %1777, i64 90316
  %1843 = load i32, ptr %1842, align 4, !tbaa !76
  %1844 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef signext %1813, i32 noundef signext %1819, i32 noundef signext 0, i32 noundef signext %1821, double noundef %1824, double noundef %1827, double noundef %1830, i32 noundef signext %1694, i32 noundef signext %1782, ptr noundef nonnull %1834, i32 noundef signext %1835, i32 noundef signext %1837, i32 noundef signext %1839, i32 noundef signext %1841, i32 noundef signext %1843)
  br label %1845

1845:                                             ; preds = %1812, %1786, %1781
  %1846 = load ptr, ptr @input, align 8, !tbaa !6
  %1847 = getelementptr inbounds i8, ptr %1846, i64 3908
  %1848 = load i32, ptr %1847, align 4, !tbaa !69
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1862, label %1850

1850:                                             ; preds = %1845
  %1851 = getelementptr inbounds i8, ptr %1846, i64 3552
  %1852 = load i32, ptr %1851, align 8, !tbaa !125
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %1854, label %1858

1854:                                             ; preds = %1850
  %1855 = getelementptr inbounds i8, ptr %1846, i64 3556
  %1856 = load i32, ptr %1855, align 4, !tbaa !129
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1862, label %1858

1858:                                             ; preds = %1854, %1850
  %1859 = load ptr, ptr @stats, align 8, !tbaa !6
  %1860 = getelementptr inbounds i8, ptr %1859, i64 16
  %1861 = load i32, ptr %1860, align 8, !tbaa !161
  store i32 %1861, ptr @Iprev_bits, align 4, !tbaa !22
  br label %1862

1862:                                             ; preds = %1845, %1854, %1858
  %1863 = load ptr, ptr @stats, align 8, !tbaa !6
  %1864 = getelementptr inbounds i8, ptr %1863, i64 16
  %1865 = load i32, ptr %1864, align 8, !tbaa !161
  %1866 = getelementptr inbounds i8, ptr %1863, i64 712
  store i32 %1865, ptr %1866, align 8, !tbaa !187
  store i32 0, ptr %1864, align 8, !tbaa !161
  br label %2145

1867:                                             ; preds = %1776
  %1868 = load ptr, ptr @input, align 8, !tbaa !6
  %1869 = getelementptr inbounds i8, ptr %1868, i64 3908
  %1870 = load i32, ptr %1869, align 4, !tbaa !69
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1895, label %1872

1872:                                             ; preds = %1867
  %1873 = getelementptr inbounds i8, ptr %1868, i64 3552
  %1874 = load i32, ptr %1873, align 8, !tbaa !125
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1878, label %1876

1876:                                             ; preds = %1872
  %1877 = load ptr, ptr @stats, align 8, !tbaa !6
  br label %1889

1878:                                             ; preds = %1872
  %1879 = getelementptr inbounds i8, ptr %1868, i64 3556
  %1880 = load i32, ptr %1879, align 4, !tbaa !129
  %1881 = icmp eq i32 %1880, 0
  %1882 = load ptr, ptr @stats, align 8, !tbaa !6
  br i1 %1881, label %1883, label %1889

1883:                                             ; preds = %1878
  %1884 = getelementptr inbounds i8, ptr %1882, i64 16
  %1885 = load i32, ptr %1884, align 8, !tbaa !161
  %1886 = getelementptr inbounds i8, ptr %1882, i64 20
  %1887 = load i32, ptr %1886, align 4, !tbaa !162
  %1888 = sub nsw i32 %1885, %1887
  br label %1895

1889:                                             ; preds = %1876, %1878
  %1890 = phi ptr [ %1877, %1876 ], [ %1882, %1878 ]
  %1891 = getelementptr inbounds i8, ptr %1890, i64 16
  %1892 = load i32, ptr %1891, align 8, !tbaa !161
  %1893 = load i32, ptr @Pprev_bits, align 4, !tbaa !22
  %1894 = sub nsw i32 %1892, %1893
  store i32 %1892, ptr @Pprev_bits, align 4, !tbaa !22
  br label %1895

1895:                                             ; preds = %1883, %1889, %1867
  %1896 = phi i32 [ %1894, %1889 ], [ %1888, %1883 ], [ %1284, %1867 ]
  %1897 = getelementptr inbounds i8, ptr %1777, i64 24
  %1898 = load i32, ptr %1897, align 8, !tbaa !30
  %1899 = load ptr, ptr @stats, align 8, !tbaa !6
  %1900 = getelementptr inbounds i8, ptr %1899, i64 16
  %1901 = load i32, ptr %1900, align 8, !tbaa !161
  %1902 = getelementptr inbounds i8, ptr %1899, i64 20
  %1903 = load i32, ptr %1902, align 4, !tbaa !162
  %1904 = sub nsw i32 %1901, %1903
  %1905 = getelementptr inbounds i8, ptr %1868, i64 3904
  switch i32 %1898, label %2089 [
    i32 2, label %1906
    i32 3, label %1975
    i32 1, label %2031
  ]

1906:                                             ; preds = %1895
  %1907 = getelementptr inbounds i8, ptr %1899, i64 712
  %1908 = load i32, ptr %1907, align 8, !tbaa !187
  %1909 = add nsw i32 %1908, %1904
  store i32 %1909, ptr %1907, align 8, !tbaa !187
  %1910 = load i32, ptr @me_time, align 4, !tbaa !22
  %1911 = load i32, ptr %1905, align 8, !tbaa !163
  switch i32 %1911, label %2145 [
    i32 1, label %1912
    i32 2, label %1940
  ]

1912:                                             ; preds = %1906
  %1913 = getelementptr inbounds i8, ptr %1777, i64 31560
  %1914 = load ptr, ptr %1913, align 8, !tbaa !25
  %1915 = getelementptr inbounds i8, ptr %1914, i64 4
  %1916 = load i32, ptr %1915, align 4, !tbaa !31
  %1917 = icmp eq i32 %1916, 1
  %1918 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1919 = getelementptr inbounds i8, ptr %1777, i64 40
  %1920 = load i32, ptr %1919, align 8, !tbaa !73
  %1921 = load ptr, ptr @snr, align 8, !tbaa !6
  %1922 = load float, ptr %1921, align 4, !tbaa !155
  %1923 = fpext float %1922 to double
  %1924 = getelementptr inbounds i8, ptr %1921, i64 4
  %1925 = load float, ptr %1924, align 4, !tbaa !156
  %1926 = fpext float %1925 to double
  %1927 = getelementptr inbounds i8, ptr %1921, i64 8
  %1928 = load float, ptr %1927, align 4, !tbaa !157
  %1929 = fpext float %1928 to double
  %1930 = getelementptr inbounds i8, ptr %1777, i64 89208
  %1931 = load i32, ptr %1930, align 8, !tbaa !128
  %1932 = icmp eq i32 %1931, 0
  %1933 = select i1 %1932, ptr @.str.18, ptr @.str.17
  %1934 = getelementptr inbounds i8, ptr %1777, i64 90316
  %1935 = load i32, ptr %1934, align 4, !tbaa !76
  br i1 %1917, label %1936, label %1938

1936:                                             ; preds = %1912
  %1937 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef signext %1918, i32 noundef signext %1904, i32 noundef signext %1920, double noundef %1923, double noundef %1926, double noundef %1929, i32 noundef signext %1694, i32 noundef signext %1910, ptr noundef nonnull %1933, i32 noundef signext %1935)
  br label %2145

1938:                                             ; preds = %1912
  %1939 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef signext %1918, i32 noundef signext %1904, i32 noundef signext %1920, double noundef %1923, double noundef %1926, double noundef %1929, i32 noundef signext %1694, i32 noundef signext %1910, ptr noundef nonnull %1933, i32 noundef signext %1935)
  br label %2145

1940:                                             ; preds = %1906
  %1941 = getelementptr inbounds i8, ptr %1777, i64 31560
  %1942 = load ptr, ptr %1941, align 8, !tbaa !25
  %1943 = getelementptr inbounds i8, ptr %1942, i64 4
  %1944 = load i32, ptr %1943, align 4, !tbaa !31
  %1945 = icmp eq i32 %1944, 1
  %1946 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1947 = getelementptr inbounds i8, ptr %1777, i64 40
  %1948 = load i32, ptr %1947, align 8, !tbaa !73
  %1949 = load ptr, ptr @snr, align 8, !tbaa !6
  %1950 = load float, ptr %1949, align 4, !tbaa !155
  %1951 = fpext float %1950 to double
  %1952 = getelementptr inbounds i8, ptr %1949, i64 4
  %1953 = load float, ptr %1952, align 4, !tbaa !156
  %1954 = fpext float %1953 to double
  %1955 = getelementptr inbounds i8, ptr %1949, i64 8
  %1956 = load float, ptr %1955, align 4, !tbaa !157
  %1957 = fpext float %1956 to double
  %1958 = getelementptr inbounds i8, ptr %1777, i64 89208
  %1959 = load i32, ptr %1958, align 8, !tbaa !128
  %1960 = icmp eq i32 %1959, 0
  %1961 = select i1 %1960, ptr @.str.18, ptr @.str.17
  %1962 = load i32, ptr @intras, align 4, !tbaa !22
  %1963 = getelementptr inbounds i8, ptr %1777, i64 89408
  %1964 = load i32, ptr %1963, align 8, !tbaa !185
  %1965 = getelementptr inbounds i8, ptr %1777, i64 89412
  %1966 = load i32, ptr %1965, align 4, !tbaa !186
  %1967 = getelementptr inbounds i8, ptr %1777, i64 89212
  %1968 = load i32, ptr %1967, align 4, !tbaa !49
  %1969 = getelementptr inbounds i8, ptr %1777, i64 90316
  %1970 = load i32, ptr %1969, align 4, !tbaa !76
  br i1 %1945, label %1971, label %1973

1971:                                             ; preds = %1940
  %1972 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef signext %1946, i32 noundef signext %1904, i32 noundef signext 0, i32 noundef signext %1948, double noundef %1951, double noundef %1954, double noundef %1957, i32 noundef signext %1694, i32 noundef signext %1910, ptr noundef nonnull %1961, i32 noundef signext %1962, i32 noundef signext %1964, i32 noundef signext %1966, i32 noundef signext %1968, i32 noundef signext %1970)
  br label %2145

1973:                                             ; preds = %1940
  %1974 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef signext %1946, i32 noundef signext %1904, i32 noundef signext 0, i32 noundef signext %1948, double noundef %1951, double noundef %1954, double noundef %1957, i32 noundef signext %1694, i32 noundef signext %1910, ptr noundef nonnull %1961, i32 noundef signext %1962, i32 noundef signext %1964, i32 noundef signext %1966, i32 noundef signext %1968, i32 noundef signext %1970)
  br label %2145

1975:                                             ; preds = %1895
  %1976 = getelementptr inbounds i8, ptr %1899, i64 716
  %1977 = load i32, ptr %1976, align 4, !tbaa !188
  %1978 = add nsw i32 %1977, %1904
  store i32 %1978, ptr %1976, align 4, !tbaa !188
  %1979 = load i32, ptr @me_time, align 4, !tbaa !22
  %1980 = load i32, ptr %1905, align 8, !tbaa !163
  switch i32 %1980, label %2145 [
    i32 1, label %1981
    i32 2, label %2001
  ]

1981:                                             ; preds = %1975
  %1982 = load i32, ptr @frame_no, align 4, !tbaa !22
  %1983 = getelementptr inbounds i8, ptr %1777, i64 40
  %1984 = load i32, ptr %1983, align 8, !tbaa !73
  %1985 = load ptr, ptr @snr, align 8, !tbaa !6
  %1986 = load float, ptr %1985, align 4, !tbaa !155
  %1987 = fpext float %1986 to double
  %1988 = getelementptr inbounds i8, ptr %1985, i64 4
  %1989 = load float, ptr %1988, align 4, !tbaa !156
  %1990 = fpext float %1989 to double
  %1991 = getelementptr inbounds i8, ptr %1985, i64 8
  %1992 = load float, ptr %1991, align 4, !tbaa !157
  %1993 = fpext float %1992 to double
  %1994 = getelementptr inbounds i8, ptr %1777, i64 89208
  %1995 = load i32, ptr %1994, align 8, !tbaa !128
  %1996 = icmp eq i32 %1995, 0
  %1997 = select i1 %1996, ptr @.str.18, ptr @.str.17
  %1998 = getelementptr inbounds i8, ptr %1777, i64 90316
  %1999 = load i32, ptr %1998, align 4, !tbaa !76
  %2000 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef signext %1982, i32 noundef signext %1904, i32 noundef signext %1984, double noundef %1987, double noundef %1990, double noundef %1993, i32 noundef signext %1694, i32 noundef signext %1979, ptr noundef nonnull %1997, i32 noundef signext %1999)
  br label %2145

2001:                                             ; preds = %1975
  %2002 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2003 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %2004 = getelementptr inbounds i8, ptr %2003, i64 192
  %2005 = load i32, ptr %2004, align 8, !tbaa !189
  %2006 = getelementptr inbounds i8, ptr %1777, i64 40
  %2007 = load i32, ptr %2006, align 8, !tbaa !73
  %2008 = load ptr, ptr @snr, align 8, !tbaa !6
  %2009 = load float, ptr %2008, align 4, !tbaa !155
  %2010 = fpext float %2009 to double
  %2011 = getelementptr inbounds i8, ptr %2008, i64 4
  %2012 = load float, ptr %2011, align 4, !tbaa !156
  %2013 = fpext float %2012 to double
  %2014 = getelementptr inbounds i8, ptr %2008, i64 8
  %2015 = load float, ptr %2014, align 4, !tbaa !157
  %2016 = fpext float %2015 to double
  %2017 = getelementptr inbounds i8, ptr %1777, i64 89208
  %2018 = load i32, ptr %2017, align 8, !tbaa !128
  %2019 = icmp eq i32 %2018, 0
  %2020 = select i1 %2019, ptr @.str.18, ptr @.str.17
  %2021 = load i32, ptr @intras, align 4, !tbaa !22
  %2022 = getelementptr inbounds i8, ptr %1777, i64 89408
  %2023 = load i32, ptr %2022, align 8, !tbaa !185
  %2024 = getelementptr inbounds i8, ptr %1777, i64 89412
  %2025 = load i32, ptr %2024, align 4, !tbaa !186
  %2026 = getelementptr inbounds i8, ptr %1777, i64 89212
  %2027 = load i32, ptr %2026, align 4, !tbaa !49
  %2028 = getelementptr inbounds i8, ptr %1777, i64 90316
  %2029 = load i32, ptr %2028, align 4, !tbaa !76
  %2030 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef signext %2002, i32 noundef signext %1904, i32 noundef signext %2005, i32 noundef signext %2007, double noundef %2010, double noundef %2013, double noundef %2016, i32 noundef signext %1694, i32 noundef signext %1979, ptr noundef nonnull %2020, i32 noundef signext %2021, i32 noundef signext %2023, i32 noundef signext %2025, i32 noundef signext %2027, i32 noundef signext %2029)
  br label %2145

2031:                                             ; preds = %1895
  %2032 = getelementptr inbounds i8, ptr %1899, i64 720
  %2033 = load i32, ptr %2032, align 8, !tbaa !191
  %2034 = add nsw i32 %2033, %1904
  store i32 %2034, ptr %2032, align 8, !tbaa !191
  %2035 = load i32, ptr @me_time, align 4, !tbaa !22
  %2036 = load i32, ptr %1905, align 8, !tbaa !163
  switch i32 %2036, label %2145 [
    i32 1, label %2037
    i32 2, label %2057
  ]

2037:                                             ; preds = %2031
  %2038 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2039 = getelementptr inbounds i8, ptr %1777, i64 40
  %2040 = load i32, ptr %2039, align 8, !tbaa !73
  %2041 = load ptr, ptr @snr, align 8, !tbaa !6
  %2042 = load float, ptr %2041, align 4, !tbaa !155
  %2043 = fpext float %2042 to double
  %2044 = getelementptr inbounds i8, ptr %2041, i64 4
  %2045 = load float, ptr %2044, align 4, !tbaa !156
  %2046 = fpext float %2045 to double
  %2047 = getelementptr inbounds i8, ptr %2041, i64 8
  %2048 = load float, ptr %2047, align 4, !tbaa !157
  %2049 = fpext float %2048 to double
  %2050 = getelementptr inbounds i8, ptr %1777, i64 89208
  %2051 = load i32, ptr %2050, align 8, !tbaa !128
  %2052 = icmp eq i32 %2051, 0
  %2053 = select i1 %2052, ptr @.str.18, ptr @.str.17
  %2054 = getelementptr inbounds i8, ptr %1777, i64 90316
  %2055 = load i32, ptr %2054, align 4, !tbaa !76
  %2056 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef signext %2038, i32 noundef signext %1904, i32 noundef signext %2040, double noundef %2043, double noundef %2046, double noundef %2049, i32 noundef signext %1694, i32 noundef signext %2035, ptr noundef nonnull %2053, i32 noundef signext %2055)
  br label %2145

2057:                                             ; preds = %2031
  %2058 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2059 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %2060 = getelementptr inbounds i8, ptr %2059, i64 196
  %2061 = load i32, ptr %2060, align 4, !tbaa !192
  %2062 = getelementptr inbounds i8, ptr %1777, i64 40
  %2063 = load i32, ptr %2062, align 8, !tbaa !73
  %2064 = load ptr, ptr @snr, align 8, !tbaa !6
  %2065 = load float, ptr %2064, align 4, !tbaa !155
  %2066 = fpext float %2065 to double
  %2067 = getelementptr inbounds i8, ptr %2064, i64 4
  %2068 = load float, ptr %2067, align 4, !tbaa !156
  %2069 = fpext float %2068 to double
  %2070 = getelementptr inbounds i8, ptr %2064, i64 8
  %2071 = load float, ptr %2070, align 4, !tbaa !157
  %2072 = fpext float %2071 to double
  %2073 = getelementptr inbounds i8, ptr %1777, i64 89208
  %2074 = load i32, ptr %2073, align 8, !tbaa !128
  %2075 = icmp eq i32 %2074, 0
  %2076 = select i1 %2075, ptr @.str.18, ptr @.str.17
  %2077 = load i32, ptr @intras, align 4, !tbaa !22
  %2078 = getelementptr inbounds i8, ptr %1777, i64 89404
  %2079 = load i32, ptr %2078, align 4, !tbaa !114
  %2080 = getelementptr inbounds i8, ptr %1777, i64 89408
  %2081 = load i32, ptr %2080, align 8, !tbaa !185
  %2082 = getelementptr inbounds i8, ptr %1777, i64 89412
  %2083 = load i32, ptr %2082, align 4, !tbaa !186
  %2084 = getelementptr inbounds i8, ptr %1777, i64 89212
  %2085 = load i32, ptr %2084, align 4, !tbaa !49
  %2086 = getelementptr inbounds i8, ptr %1777, i64 90316
  %2087 = load i32, ptr %2086, align 4, !tbaa !76
  %2088 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef signext %2058, i32 noundef signext %1904, i32 noundef signext %2061, i32 noundef signext %2063, double noundef %2066, double noundef %2069, double noundef %2072, i32 noundef signext %1694, i32 noundef signext %2035, ptr noundef nonnull %2076, i32 noundef signext %2077, i32 noundef signext %2079, i32 noundef signext %2081, i32 noundef signext %2083, i32 noundef signext %2085, i32 noundef signext %2087)
  br label %2145

2089:                                             ; preds = %1895
  %2090 = getelementptr inbounds i8, ptr %1899, i64 716
  %2091 = load i32, ptr %2090, align 4, !tbaa !188
  %2092 = add nsw i32 %2091, %1904
  store i32 %2092, ptr %2090, align 4, !tbaa !188
  %2093 = load i32, ptr @me_time, align 4, !tbaa !22
  %2094 = load i32, ptr %1905, align 8, !tbaa !163
  switch i32 %2094, label %2145 [
    i32 1, label %2095
    i32 2, label %2115
  ]

2095:                                             ; preds = %2089
  %2096 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2097 = getelementptr inbounds i8, ptr %1777, i64 40
  %2098 = load i32, ptr %2097, align 8, !tbaa !73
  %2099 = load ptr, ptr @snr, align 8, !tbaa !6
  %2100 = load float, ptr %2099, align 4, !tbaa !155
  %2101 = fpext float %2100 to double
  %2102 = getelementptr inbounds i8, ptr %2099, i64 4
  %2103 = load float, ptr %2102, align 4, !tbaa !156
  %2104 = fpext float %2103 to double
  %2105 = getelementptr inbounds i8, ptr %2099, i64 8
  %2106 = load float, ptr %2105, align 4, !tbaa !157
  %2107 = fpext float %2106 to double
  %2108 = getelementptr inbounds i8, ptr %1777, i64 89208
  %2109 = load i32, ptr %2108, align 8, !tbaa !128
  %2110 = icmp eq i32 %2109, 0
  %2111 = select i1 %2110, ptr @.str.18, ptr @.str.17
  %2112 = getelementptr inbounds i8, ptr %1777, i64 90316
  %2113 = load i32, ptr %2112, align 4, !tbaa !76
  %2114 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef signext %2096, i32 noundef signext %1904, i32 noundef signext %2098, double noundef %2101, double noundef %2104, double noundef %2107, i32 noundef signext %1694, i32 noundef signext %2093, ptr noundef nonnull %2111, i32 noundef signext %2113)
  br label %2145

2115:                                             ; preds = %2089
  %2116 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2117 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %2118 = getelementptr inbounds i8, ptr %2117, i64 192
  %2119 = load i32, ptr %2118, align 8, !tbaa !189
  %2120 = getelementptr inbounds i8, ptr %1777, i64 40
  %2121 = load i32, ptr %2120, align 8, !tbaa !73
  %2122 = load ptr, ptr @snr, align 8, !tbaa !6
  %2123 = load float, ptr %2122, align 4, !tbaa !155
  %2124 = fpext float %2123 to double
  %2125 = getelementptr inbounds i8, ptr %2122, i64 4
  %2126 = load float, ptr %2125, align 4, !tbaa !156
  %2127 = fpext float %2126 to double
  %2128 = getelementptr inbounds i8, ptr %2122, i64 8
  %2129 = load float, ptr %2128, align 4, !tbaa !157
  %2130 = fpext float %2129 to double
  %2131 = getelementptr inbounds i8, ptr %1777, i64 89208
  %2132 = load i32, ptr %2131, align 8, !tbaa !128
  %2133 = icmp eq i32 %2132, 0
  %2134 = select i1 %2133, ptr @.str.18, ptr @.str.17
  %2135 = load i32, ptr @intras, align 4, !tbaa !22
  %2136 = getelementptr inbounds i8, ptr %1777, i64 89408
  %2137 = load i32, ptr %2136, align 8, !tbaa !185
  %2138 = getelementptr inbounds i8, ptr %1777, i64 89412
  %2139 = load i32, ptr %2138, align 4, !tbaa !186
  %2140 = getelementptr inbounds i8, ptr %1777, i64 89212
  %2141 = load i32, ptr %2140, align 4, !tbaa !49
  %2142 = getelementptr inbounds i8, ptr %1777, i64 90316
  %2143 = load i32, ptr %2142, align 4, !tbaa !76
  %2144 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef signext %2116, i32 noundef signext %1904, i32 noundef signext %2119, i32 noundef signext %2121, double noundef %2124, double noundef %2127, double noundef %2130, i32 noundef signext %1694, i32 noundef signext %2093, ptr noundef nonnull %2134, i32 noundef signext %2135, i32 noundef signext %2137, i32 noundef signext %2139, i32 noundef signext %2141, i32 noundef signext %2143)
  br label %2145

2145:                                             ; preds = %2115, %2095, %2089, %2057, %2037, %2031, %2001, %1981, %1975, %1973, %1971, %1938, %1936, %1906, %1862
  %2146 = phi i32 [ %1284, %1862 ], [ %1896, %1906 ], [ %1896, %1936 ], [ %1896, %1938 ], [ %1896, %1971 ], [ %1896, %1973 ], [ %1896, %1975 ], [ %1896, %1981 ], [ %1896, %2001 ], [ %1896, %2031 ], [ %1896, %2037 ], [ %1896, %2057 ], [ %1896, %2089 ], [ %1896, %2095 ], [ %1896, %2115 ]
  %2147 = load ptr, ptr @input, align 8, !tbaa !6
  %2148 = getelementptr inbounds i8, ptr %2147, i64 3904
  %2149 = load i32, ptr %2148, align 8, !tbaa !163
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2151, label %2154

2151:                                             ; preds = %2145
  %2152 = load i32, ptr @frame_no, align 4, !tbaa !22
  %2153 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef signext %2152)
  br label %2154

2154:                                             ; preds = %2151, %2145
  %2155 = load ptr, ptr @stdout, align 8, !tbaa !6
  %2156 = call signext i32 @fflush(ptr noundef %2155)
  %2157 = load ptr, ptr @stats, align 8, !tbaa !6
  %2158 = getelementptr inbounds i8, ptr %2157, i64 16
  %2159 = load i32, ptr %2158, align 8, !tbaa !161
  %2160 = getelementptr inbounds i8, ptr %2157, i64 20
  store i32 %2159, ptr %2160, align 4, !tbaa !162
  %2161 = load ptr, ptr @input, align 8, !tbaa !6
  %2162 = getelementptr inbounds i8, ptr %2161, i64 3908
  %2163 = load i32, ptr %2162, align 4, !tbaa !69
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2180, label %2165

2165:                                             ; preds = %2154
  call void @rc_update_pict(i32 noundef signext %2146) #17
  %2166 = load ptr, ptr @img, align 8, !tbaa !6
  %2167 = getelementptr inbounds i8, ptr %2166, i64 24
  %2168 = load i32, ptr %2167, align 8, !tbaa !30
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2170, label %2180

2170:                                             ; preds = %2165
  %2171 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %2172 = getelementptr inbounds i8, ptr %2171, i64 1148
  %2173 = load i32, ptr %2172, align 4, !tbaa !134
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2175, label %2179

2175:                                             ; preds = %2170
  %2176 = getelementptr inbounds i8, ptr %2166, i64 90436
  %2177 = load i32, ptr %2176, align 4, !tbaa !132
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2179, label %2180

2179:                                             ; preds = %2175, %2170
  call void @updateRCModel() #17
  br label %2180

2180:                                             ; preds = %2179, %2165, %2175, %2154
  %2181 = load ptr, ptr @stats, align 8, !tbaa !6
  %2182 = getelementptr inbounds i8, ptr %2181, i64 1500
  store i32 0, ptr %2182, align 4, !tbaa !52
  %2183 = load ptr, ptr @img, align 8, !tbaa !6
  %2184 = load i32, ptr %2183, align 8, !tbaa !26
  %2185 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !22
  %2186 = icmp ne i32 %2184, %2185
  %2187 = zext i1 %2186 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret i32 %2187
}

declare dso_local signext i32 @ftime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @time(ptr noundef) local_unnamed_addr #0

declare dso_local signext i32 @write_PPS(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @field_picture(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stats, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 1480
  store i32 0, ptr %4, align 8, !tbaa !193
  %5 = getelementptr inbounds i8, ptr %3, i64 1488
  store ptr %4, ptr %5, align 8, !tbaa !194
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = shl nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !26
  %9 = getelementptr inbounds i8, ptr %6, i64 90192
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = shl nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !86
  %12 = load ptr, ptr @input, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 72
  %14 = load i32, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds i8, ptr %6, i64 90580
  %16 = load i32, ptr %15, align 4, !tbaa !159
  %17 = add nsw i32 %16, %14
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds i8, ptr %6, i64 60
  store i32 %18, ptr %19, align 4, !tbaa !56
  %20 = getelementptr inbounds i8, ptr %6, i64 68
  %21 = load i32, ptr %20, align 4, !tbaa !160
  %22 = sdiv i32 %21, 2
  %23 = getelementptr inbounds i8, ptr %6, i64 64
  store i32 %22, ptr %23, align 8, !tbaa !111
  %24 = getelementptr inbounds i8, ptr %6, i64 89208
  store i32 1, ptr %24, align 8, !tbaa !128
  %25 = getelementptr inbounds i8, ptr %6, i64 90308
  %26 = load i32, ptr %25, align 4, !tbaa !143
  %27 = lshr i32 %26, 1
  %28 = getelementptr inbounds i8, ptr %6, i64 90304
  store i32 %27, ptr %28, align 8, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %6, i64 28
  %30 = load i32, ptr %29, align 4, !tbaa !27
  %31 = getelementptr inbounds i8, ptr %6, i64 52
  %32 = load i32, ptr %31, align 4, !tbaa !55
  %33 = getelementptr inbounds i8, ptr %6, i64 56
  %34 = load i32, ptr %33, align 8, !tbaa !110
  %35 = tail call ptr @alloc_storable_picture(i32 noundef signext %30, i32 noundef signext %32, i32 noundef signext %18, i32 noundef signext %34, i32 noundef signext %22) #17
  store ptr %35, ptr @enc_top_picture, align 8, !tbaa !6
  %36 = load ptr, ptr @img, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 90268
  %38 = load i32, ptr %37, align 4, !tbaa !195
  %39 = getelementptr inbounds i8, ptr %35, i64 4
  store i32 %38, ptr %39, align 4, !tbaa !196
  %40 = getelementptr inbounds i8, ptr %35, i64 16
  store i32 %38, ptr %40, align 8, !tbaa !197
  %41 = getelementptr inbounds i8, ptr %36, i64 90284
  %42 = load i32, ptr %41, align 4, !tbaa !198
  %43 = getelementptr inbounds i8, ptr %35, i64 6364
  store i32 %42, ptr %43, align 4, !tbaa !199
  %44 = getelementptr inbounds i8, ptr %35, i64 6360
  store i32 %42, ptr %44, align 8, !tbaa !200
  %45 = getelementptr inbounds i8, ptr %35, i64 6412
  store i32 0, ptr %45, align 4, !tbaa !201
  %46 = getelementptr inbounds i8, ptr %36, i64 90220
  store i32 0, ptr %46, align 4, !tbaa !48
  %47 = getelementptr inbounds i8, ptr %35, i64 6416
  store i32 0, ptr %47, align 8, !tbaa !202
  %48 = getelementptr inbounds i8, ptr %36, i64 90280
  store i32 %38, ptr %48, align 8, !tbaa !203
  %49 = getelementptr inbounds i8, ptr %36, i64 28
  store i32 1, ptr %49, align 4, !tbaa !27
  store ptr %35, ptr @enc_picture, align 8, !tbaa !6
  %50 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 1148
  %52 = load i32, ptr %51, align 4, !tbaa !134
  %53 = getelementptr inbounds i8, ptr %35, i64 6556
  store i32 %52, ptr %53, align 4, !tbaa !204
  %54 = getelementptr inbounds i8, ptr %50, i64 1160
  %55 = load i32, ptr %54, align 4, !tbaa !205
  %56 = getelementptr inbounds i8, ptr %35, i64 6560
  store i32 %55, ptr %56, align 8, !tbaa !206
  %57 = getelementptr inbounds i8, ptr %50, i64 32
  %58 = load i32, ptr %57, align 4, !tbaa !207
  %59 = getelementptr inbounds i8, ptr %35, i64 6552
  store i32 %58, ptr %59, align 8, !tbaa !208
  %60 = icmp eq i32 %55, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %2
  %62 = getelementptr inbounds i8, ptr %50, i64 1164
  %63 = load i32, ptr %62, align 4, !tbaa !209
  %64 = getelementptr inbounds i8, ptr %50, i64 1168
  %65 = load i32, ptr %64, align 4, !tbaa !210
  %66 = getelementptr inbounds i8, ptr %50, i64 1172
  %67 = load i32, ptr %66, align 4, !tbaa !211
  %68 = getelementptr inbounds i8, ptr %50, i64 1176
  %69 = load i32, ptr %68, align 4, !tbaa !212
  br label %70

70:                                               ; preds = %2, %61
  %71 = phi i32 [ %63, %61 ], [ 0, %2 ]
  %72 = phi i32 [ %65, %61 ], [ 0, %2 ]
  %73 = phi i32 [ %67, %61 ], [ 0, %2 ]
  %74 = phi i32 [ %69, %61 ], [ 0, %2 ]
  %75 = getelementptr inbounds i8, ptr %35, i64 6564
  store i32 %71, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %35, i64 6568
  store i32 %72, ptr %76, align 8
  %77 = getelementptr inbounds i8, ptr %35, i64 6572
  store i32 %73, ptr %77, align 4
  %78 = getelementptr inbounds i8, ptr %35, i64 6576
  store i32 %74, ptr %78, align 8
  %79 = getelementptr inbounds i8, ptr %36, i64 89204
  store i32 0, ptr %79, align 4, !tbaa !158
  %80 = load ptr, ptr @imgY_org_top, align 8, !tbaa !6
  store ptr %80, ptr @imgY_org, align 8, !tbaa !6
  %81 = load ptr, ptr @imgUV_org_top, align 8, !tbaa !6
  store ptr %81, ptr @imgUV_org, align 8, !tbaa !6
  tail call fastcc void @init_field()
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 24
  %84 = load i32, ptr %83, align 8, !tbaa !30
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, ptr @nextP_tr_fld, align 4, !tbaa !22
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr @nextP_tr_fld, align 4, !tbaa !22
  br label %89

89:                                               ; preds = %86, %70
  %90 = getelementptr inbounds i8, ptr %82, i64 89208
  store i32 1, ptr %90, align 8, !tbaa !128
  %91 = load ptr, ptr @input, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %91, i64 3908
  %93 = load i32, ptr %92, align 4, !tbaa !69
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %91, i64 3920
  %97 = load i32, ptr %96, align 8, !tbaa !130
  %98 = getelementptr inbounds i8, ptr %82, i64 90444
  store i32 %97, ptr %98, align 4, !tbaa !133
  %99 = getelementptr inbounds i8, ptr %91, i64 3552
  %100 = load i32, ptr %99, align 8, !tbaa !125
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  tail call void @rc_init_pict(i32 noundef signext 0, i32 noundef signext 1, i32 noundef signext %102) #17
  %103 = tail call signext i32 @updateQuantizationParameter(i32 noundef signext 1) #17
  %104 = load ptr, ptr @img, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 40
  store i32 %103, ptr %105, align 8, !tbaa !73
  br label %106

106:                                              ; preds = %95, %89
  %107 = phi ptr [ %104, %95 ], [ %82, %89 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 90420
  store i32 1, ptr %108, align 4, !tbaa !138
  %109 = load ptr, ptr @top_pic, align 8, !tbaa !6
  tail call void @code_a_picture(ptr noundef %109)
  %110 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  store i32 1, ptr %110, align 8, !tbaa !213
  %111 = load ptr, ptr @enc_top_picture, align 8, !tbaa !6
  tail call void @store_picture_in_dpb(ptr noundef %111) #17
  %112 = load ptr, ptr @img, align 8, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %112, i64 31568
  %114 = load ptr, ptr %113, align 8, !tbaa !214
  %115 = getelementptr inbounds i8, ptr %114, i64 24
  %116 = load ptr, ptr %115, align 8, !tbaa !215
  %117 = load ptr, ptr %116, align 8, !tbaa !217
  %118 = load i32, ptr %117, align 8, !tbaa !220
  %119 = shl nsw i32 %118, 3
  %120 = getelementptr inbounds i8, ptr %0, i64 808
  store i32 %119, ptr %120, align 8, !tbaa !151
  %121 = getelementptr inbounds i8, ptr %112, i64 28
  %122 = load i32, ptr %121, align 4, !tbaa !27
  %123 = getelementptr inbounds i8, ptr %112, i64 52
  %124 = load i32, ptr %123, align 4, !tbaa !55
  %125 = getelementptr inbounds i8, ptr %112, i64 60
  %126 = load i32, ptr %125, align 4, !tbaa !56
  %127 = getelementptr inbounds i8, ptr %112, i64 56
  %128 = load i32, ptr %127, align 8, !tbaa !110
  %129 = getelementptr inbounds i8, ptr %112, i64 64
  %130 = load i32, ptr %129, align 8, !tbaa !111
  %131 = tail call ptr @alloc_storable_picture(i32 noundef signext %122, i32 noundef signext %124, i32 noundef signext %126, i32 noundef signext %128, i32 noundef signext %130) #17
  store ptr %131, ptr @enc_bottom_picture, align 8, !tbaa !6
  %132 = load ptr, ptr @img, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 90272
  %134 = load i32, ptr %133, align 8, !tbaa !222
  %135 = getelementptr inbounds i8, ptr %131, i64 4
  store i32 %134, ptr %135, align 4, !tbaa !196
  %136 = getelementptr inbounds i8, ptr %131, i64 16
  store i32 %134, ptr %136, align 8, !tbaa !197
  %137 = getelementptr inbounds i8, ptr %132, i64 90284
  %138 = load i32, ptr %137, align 4, !tbaa !198
  %139 = getelementptr inbounds i8, ptr %131, i64 6364
  store i32 %138, ptr %139, align 4, !tbaa !199
  %140 = getelementptr inbounds i8, ptr %131, i64 6360
  store i32 %138, ptr %140, align 8, !tbaa !200
  %141 = getelementptr inbounds i8, ptr %131, i64 6412
  store i32 0, ptr %141, align 4, !tbaa !201
  %142 = getelementptr inbounds i8, ptr %132, i64 90220
  store i32 0, ptr %142, align 4, !tbaa !48
  %143 = getelementptr inbounds i8, ptr %131, i64 6416
  store i32 0, ptr %143, align 8, !tbaa !202
  %144 = getelementptr inbounds i8, ptr %132, i64 90280
  store i32 %134, ptr %144, align 8, !tbaa !203
  %145 = getelementptr inbounds i8, ptr %132, i64 28
  store i32 2, ptr %145, align 4, !tbaa !27
  store ptr %131, ptr @enc_picture, align 8, !tbaa !6
  %146 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 1148
  %148 = load i32, ptr %147, align 4, !tbaa !134
  %149 = getelementptr inbounds i8, ptr %131, i64 6556
  store i32 %148, ptr %149, align 4, !tbaa !204
  %150 = getelementptr inbounds i8, ptr %146, i64 1160
  %151 = load i32, ptr %150, align 4, !tbaa !205
  %152 = getelementptr inbounds i8, ptr %131, i64 6560
  store i32 %151, ptr %152, align 8, !tbaa !206
  %153 = getelementptr inbounds i8, ptr %146, i64 32
  %154 = load i32, ptr %153, align 4, !tbaa !207
  %155 = getelementptr inbounds i8, ptr %131, i64 6552
  store i32 %154, ptr %155, align 8, !tbaa !208
  %156 = icmp eq i32 %151, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %106
  %158 = getelementptr inbounds i8, ptr %146, i64 1164
  %159 = load i32, ptr %158, align 4, !tbaa !209
  %160 = getelementptr inbounds i8, ptr %146, i64 1168
  %161 = load i32, ptr %160, align 4, !tbaa !210
  %162 = getelementptr inbounds i8, ptr %146, i64 1172
  %163 = load i32, ptr %162, align 4, !tbaa !211
  %164 = getelementptr inbounds i8, ptr %146, i64 1176
  %165 = load i32, ptr %164, align 4, !tbaa !212
  br label %166

166:                                              ; preds = %106, %157
  %167 = phi i32 [ %159, %157 ], [ 0, %106 ]
  %168 = phi i32 [ %161, %157 ], [ 0, %106 ]
  %169 = phi i32 [ %163, %157 ], [ 0, %106 ]
  %170 = phi i32 [ %165, %157 ], [ 0, %106 ]
  %171 = getelementptr inbounds i8, ptr %131, i64 6564
  store i32 %167, ptr %171, align 4
  %172 = getelementptr inbounds i8, ptr %131, i64 6568
  store i32 %168, ptr %172, align 8
  %173 = getelementptr inbounds i8, ptr %131, i64 6572
  store i32 %169, ptr %173, align 4
  %174 = getelementptr inbounds i8, ptr %131, i64 6576
  store i32 %170, ptr %174, align 8
  %175 = getelementptr inbounds i8, ptr %132, i64 89204
  store i32 1, ptr %175, align 4, !tbaa !158
  %176 = load ptr, ptr @imgY_org_bot, align 8, !tbaa !6
  store ptr %176, ptr @imgY_org, align 8, !tbaa !6
  %177 = load ptr, ptr @imgUV_org_bot, align 8, !tbaa !6
  store ptr %177, ptr @imgUV_org, align 8, !tbaa !6
  %178 = load i32, ptr %132, align 8, !tbaa !26
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %132, align 8, !tbaa !26
  tail call fastcc void @init_field()
  %180 = load ptr, ptr @img, align 8, !tbaa !6
  %181 = getelementptr inbounds i8, ptr %180, i64 24
  %182 = load i32, ptr %181, align 8, !tbaa !30
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %166
  %185 = load i32, ptr @nextP_tr_fld, align 4, !tbaa !22
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr @nextP_tr_fld, align 4, !tbaa !22
  %187 = load ptr, ptr @input, align 8, !tbaa !6
  br label %200

188:                                              ; preds = %166
  %189 = icmp eq i32 %182, 2
  %190 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %189, label %191, label %200

191:                                              ; preds = %188
  %192 = getelementptr inbounds i8, ptr %190, i64 3560
  %193 = load i32, ptr %192, align 8, !tbaa !223
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds i8, ptr %190, i64 1940
  %197 = load i32, ptr %196, align 4, !tbaa !224
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i32
  store i32 %199, ptr %181, align 8, !tbaa !30
  br label %200

200:                                              ; preds = %184, %195, %191, %188
  %201 = phi ptr [ %187, %184 ], [ %190, %195 ], [ %190, %191 ], [ %190, %188 ]
  %202 = getelementptr inbounds i8, ptr %180, i64 89208
  store i32 1, ptr %202, align 8, !tbaa !128
  %203 = getelementptr inbounds i8, ptr %201, i64 3908
  %204 = load i32, ptr %203, align 4, !tbaa !69
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %200
  tail call void @setbitscount(i32 noundef signext %119) #17
  tail call void @rc_init_pict(i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0) #17
  %207 = tail call signext i32 @updateQuantizationParameter(i32 noundef signext 0) #17
  %208 = load ptr, ptr @img, align 8, !tbaa !6
  %209 = getelementptr inbounds i8, ptr %208, i64 40
  store i32 %207, ptr %209, align 8, !tbaa !73
  br label %210

210:                                              ; preds = %206, %200
  %211 = phi ptr [ %208, %206 ], [ %180, %200 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 90420
  store i32 0, ptr %212, align 4, !tbaa !138
  %213 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  store i32 2, ptr %213, align 8, !tbaa !213
  %214 = load ptr, ptr @bottom_pic, align 8, !tbaa !6
  tail call void @code_a_picture(ptr noundef %214)
  %215 = load ptr, ptr @img, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 31568
  %217 = load ptr, ptr %216, align 8, !tbaa !214
  %218 = getelementptr inbounds i8, ptr %217, i64 24
  %219 = load ptr, ptr %218, align 8, !tbaa !215
  %220 = load ptr, ptr %219, align 8, !tbaa !217
  %221 = load i32, ptr %220, align 8, !tbaa !220
  %222 = shl nsw i32 %221, 3
  %223 = getelementptr inbounds i8, ptr %1, i64 808
  store i32 %222, ptr %223, align 8, !tbaa !151
  %224 = getelementptr inbounds i8, ptr %0, i64 812
  %225 = getelementptr inbounds i8, ptr %0, i64 816
  %226 = getelementptr inbounds i8, ptr %0, i64 820
  %227 = load i32, ptr %215, align 8, !tbaa !26
  %228 = sdiv i32 %227, 2
  store i32 %228, ptr %215, align 8, !tbaa !26
  %229 = getelementptr inbounds i8, ptr %215, i64 90192
  %230 = load i32, ptr %229, align 8, !tbaa !86
  %231 = sdiv i32 %230, 2
  store i32 %231, ptr %229, align 8, !tbaa !86
  %232 = load ptr, ptr @input, align 8, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %232, i64 72
  %234 = load i32, ptr %233, align 8, !tbaa !103
  %235 = getelementptr inbounds i8, ptr %215, i64 90580
  %236 = load i32, ptr %235, align 4, !tbaa !159
  %237 = add nsw i32 %236, %234
  %238 = getelementptr inbounds i8, ptr %215, i64 60
  store i32 %237, ptr %238, align 4, !tbaa !56
  %239 = getelementptr inbounds i8, ptr %215, i64 68
  %240 = load i32, ptr %239, align 4, !tbaa !160
  %241 = getelementptr inbounds i8, ptr %215, i64 64
  store i32 %240, ptr %241, align 8, !tbaa !111
  tail call void @combine_field() #17
  %242 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %242, ptr @imgY_org, align 8, !tbaa !6
  %243 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %243, ptr @imgUV_org, align 8, !tbaa !6
  tail call fastcc void @find_distortion()
  %244 = load ptr, ptr @snr, align 8, !tbaa !6
  %245 = load float, ptr %244, align 4, !tbaa !155
  store float %245, ptr %224, align 4, !tbaa !179
  %246 = getelementptr inbounds i8, ptr %244, i64 4
  %247 = load float, ptr %246, align 4, !tbaa !156
  store float %247, ptr %225, align 4, !tbaa !179
  %248 = getelementptr inbounds i8, ptr %244, i64 8
  %249 = load float, ptr %248, align 4, !tbaa !157
  store float %249, ptr %226, align 4, !tbaa !179
  ret void
}

declare dso_local void @rc_init_pict(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @updateQuantizationParameter(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @frame_picture(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 0, ptr %4, align 4, !tbaa !27
  %5 = getelementptr inbounds i8, ptr %3, i64 90308
  %6 = load i32, ptr %5, align 4, !tbaa !143
  %7 = getelementptr inbounds i8, ptr %3, i64 90304
  store i32 %6, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds i8, ptr %3, i64 52
  %9 = load i32, ptr %8, align 4, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %3, i64 60
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = getelementptr inbounds i8, ptr %3, i64 56
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = getelementptr inbounds i8, ptr %3, i64 64
  %15 = load i32, ptr %14, align 8, !tbaa !111
  %16 = tail call ptr @alloc_storable_picture(i32 noundef signext 0, i32 noundef signext %9, i32 noundef signext %11, i32 noundef signext %13, i32 noundef signext %15) #17
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  %19 = getelementptr inbounds i8, ptr %16, i64 12
  %20 = getelementptr inbounds i8, ptr %16, i64 16
  %21 = getelementptr inbounds i8, ptr %16, i64 6364
  %22 = getelementptr inbounds i8, ptr %16, i64 6360
  %23 = getelementptr inbounds i8, ptr %16, i64 6412
  switch i32 %1, label %82 [
    i32 2, label %24
    i32 1, label %53
  ]

24:                                               ; preds = %2
  store ptr %16, ptr @enc_frame_picture3, align 8, !tbaa !6
  %25 = load ptr, ptr @img, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 90276
  %27 = load i32, ptr %26, align 4, !tbaa !225
  store i32 %27, ptr %17, align 4, !tbaa !196
  %28 = getelementptr inbounds i8, ptr %25, i64 90280
  store i32 %27, ptr %28, align 8, !tbaa !203
  %29 = getelementptr inbounds i8, ptr %25, i64 90268
  %30 = load i32, ptr %29, align 4, !tbaa !195
  store i32 %30, ptr %18, align 8, !tbaa !226
  %31 = getelementptr inbounds i8, ptr %25, i64 90272
  %32 = load i32, ptr %31, align 8, !tbaa !222
  store i32 %32, ptr %19, align 4, !tbaa !227
  store i32 %27, ptr %20, align 8, !tbaa !197
  %33 = getelementptr inbounds i8, ptr %25, i64 90284
  %34 = load i32, ptr %33, align 4, !tbaa !198
  store i32 %34, ptr %21, align 4, !tbaa !199
  store i32 %34, ptr %22, align 8, !tbaa !200
  store i32 1, ptr %23, align 4, !tbaa !201
  %35 = load ptr, ptr @input, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 3556
  %37 = load i32, ptr %36, align 4, !tbaa !129
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds i8, ptr %25, i64 90220
  store i32 %39, ptr %40, align 4, !tbaa !48
  %41 = getelementptr inbounds i8, ptr %16, i64 6416
  store i32 %39, ptr %41, align 8, !tbaa !202
  store ptr %16, ptr @enc_picture, align 8, !tbaa !6
  %42 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 1148
  %44 = load i32, ptr %43, align 4, !tbaa !134
  %45 = getelementptr inbounds i8, ptr %16, i64 6556
  store i32 %44, ptr %45, align 4, !tbaa !204
  %46 = getelementptr inbounds i8, ptr %42, i64 1160
  %47 = load i32, ptr %46, align 4, !tbaa !205
  %48 = getelementptr inbounds i8, ptr %16, i64 6560
  store i32 %47, ptr %48, align 8, !tbaa !206
  %49 = getelementptr inbounds i8, ptr %42, i64 32
  %50 = load i32, ptr %49, align 4, !tbaa !207
  %51 = getelementptr inbounds i8, ptr %16, i64 6552
  store i32 %50, ptr %51, align 8, !tbaa !208
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %122, label %111

53:                                               ; preds = %2
  store ptr %16, ptr @enc_frame_picture2, align 8, !tbaa !6
  %54 = load ptr, ptr @img, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 90276
  %56 = load i32, ptr %55, align 4, !tbaa !225
  store i32 %56, ptr %17, align 4, !tbaa !196
  %57 = getelementptr inbounds i8, ptr %54, i64 90280
  store i32 %56, ptr %57, align 8, !tbaa !203
  %58 = getelementptr inbounds i8, ptr %54, i64 90268
  %59 = load i32, ptr %58, align 4, !tbaa !195
  store i32 %59, ptr %18, align 8, !tbaa !226
  %60 = getelementptr inbounds i8, ptr %54, i64 90272
  %61 = load i32, ptr %60, align 8, !tbaa !222
  store i32 %61, ptr %19, align 4, !tbaa !227
  store i32 %56, ptr %20, align 8, !tbaa !197
  %62 = getelementptr inbounds i8, ptr %54, i64 90284
  %63 = load i32, ptr %62, align 4, !tbaa !198
  store i32 %63, ptr %21, align 4, !tbaa !199
  store i32 %63, ptr %22, align 8, !tbaa !200
  store i32 1, ptr %23, align 4, !tbaa !201
  %64 = load ptr, ptr @input, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 3556
  %66 = load i32, ptr %65, align 4, !tbaa !129
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds i8, ptr %54, i64 90220
  store i32 %68, ptr %69, align 4, !tbaa !48
  %70 = getelementptr inbounds i8, ptr %16, i64 6416
  store i32 %68, ptr %70, align 8, !tbaa !202
  store ptr %16, ptr @enc_picture, align 8, !tbaa !6
  %71 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 1148
  %73 = load i32, ptr %72, align 4, !tbaa !134
  %74 = getelementptr inbounds i8, ptr %16, i64 6556
  store i32 %73, ptr %74, align 4, !tbaa !204
  %75 = getelementptr inbounds i8, ptr %71, i64 1160
  %76 = load i32, ptr %75, align 4, !tbaa !205
  %77 = getelementptr inbounds i8, ptr %16, i64 6560
  store i32 %76, ptr %77, align 8, !tbaa !206
  %78 = getelementptr inbounds i8, ptr %71, i64 32
  %79 = load i32, ptr %78, align 4, !tbaa !207
  %80 = getelementptr inbounds i8, ptr %16, i64 6552
  store i32 %79, ptr %80, align 8, !tbaa !208
  %81 = icmp eq i32 %76, 0
  br i1 %81, label %122, label %111

82:                                               ; preds = %2
  store ptr %16, ptr @enc_frame_picture, align 8, !tbaa !6
  %83 = load ptr, ptr @img, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 90276
  %85 = load i32, ptr %84, align 4, !tbaa !225
  store i32 %85, ptr %17, align 4, !tbaa !196
  %86 = getelementptr inbounds i8, ptr %83, i64 90280
  store i32 %85, ptr %86, align 8, !tbaa !203
  %87 = getelementptr inbounds i8, ptr %83, i64 90268
  %88 = load i32, ptr %87, align 4, !tbaa !195
  store i32 %88, ptr %18, align 8, !tbaa !226
  %89 = getelementptr inbounds i8, ptr %83, i64 90272
  %90 = load i32, ptr %89, align 8, !tbaa !222
  store i32 %90, ptr %19, align 4, !tbaa !227
  store i32 %85, ptr %20, align 8, !tbaa !197
  %91 = getelementptr inbounds i8, ptr %83, i64 90284
  %92 = load i32, ptr %91, align 4, !tbaa !198
  store i32 %92, ptr %21, align 4, !tbaa !199
  store i32 %92, ptr %22, align 8, !tbaa !200
  store i32 1, ptr %23, align 4, !tbaa !201
  %93 = load ptr, ptr @input, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 3556
  %95 = load i32, ptr %94, align 4, !tbaa !129
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds i8, ptr %83, i64 90220
  store i32 %97, ptr %98, align 4, !tbaa !48
  %99 = getelementptr inbounds i8, ptr %16, i64 6416
  store i32 %97, ptr %99, align 8, !tbaa !202
  store ptr %16, ptr @enc_picture, align 8, !tbaa !6
  %100 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 1148
  %102 = load i32, ptr %101, align 4, !tbaa !134
  %103 = getelementptr inbounds i8, ptr %16, i64 6556
  store i32 %102, ptr %103, align 4, !tbaa !204
  %104 = getelementptr inbounds i8, ptr %100, i64 1160
  %105 = load i32, ptr %104, align 4, !tbaa !205
  %106 = getelementptr inbounds i8, ptr %16, i64 6560
  store i32 %105, ptr %106, align 8, !tbaa !206
  %107 = getelementptr inbounds i8, ptr %100, i64 32
  %108 = load i32, ptr %107, align 4, !tbaa !207
  %109 = getelementptr inbounds i8, ptr %16, i64 6552
  store i32 %108, ptr %109, align 8, !tbaa !208
  %110 = icmp eq i32 %105, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %82, %53, %24
  %112 = phi ptr [ %42, %24 ], [ %71, %53 ], [ %100, %82 ]
  %113 = phi ptr [ %25, %24 ], [ %54, %53 ], [ %83, %82 ]
  %114 = getelementptr inbounds i8, ptr %112, i64 1164
  %115 = load i32, ptr %114, align 4, !tbaa !209
  %116 = getelementptr inbounds i8, ptr %112, i64 1168
  %117 = load i32, ptr %116, align 4, !tbaa !210
  %118 = getelementptr inbounds i8, ptr %112, i64 1172
  %119 = load i32, ptr %118, align 4, !tbaa !211
  %120 = getelementptr inbounds i8, ptr %112, i64 1176
  %121 = load i32, ptr %120, align 4, !tbaa !212
  br label %122

122:                                              ; preds = %111, %82, %53, %24
  %123 = phi i32 [ 0, %24 ], [ 0, %53 ], [ 0, %82 ], [ %115, %111 ]
  %124 = phi i32 [ 0, %24 ], [ 0, %53 ], [ 0, %82 ], [ %117, %111 ]
  %125 = phi i32 [ 0, %24 ], [ 0, %53 ], [ 0, %82 ], [ %119, %111 ]
  %126 = phi i32 [ 0, %24 ], [ 0, %53 ], [ 0, %82 ], [ %121, %111 ]
  %127 = phi ptr [ %25, %24 ], [ %54, %53 ], [ %83, %82 ], [ %113, %111 ]
  %128 = getelementptr inbounds i8, ptr %16, i64 6564
  store i32 %123, ptr %128, align 4
  %129 = getelementptr inbounds i8, ptr %16, i64 6568
  store i32 %124, ptr %129, align 8
  %130 = getelementptr inbounds i8, ptr %16, i64 6572
  store i32 %125, ptr %130, align 4
  %131 = getelementptr inbounds i8, ptr %16, i64 6576
  store i32 %126, ptr %131, align 8
  %132 = load ptr, ptr @stats, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 1476
  store i32 0, ptr %133, align 4, !tbaa !228
  %134 = getelementptr inbounds i8, ptr %132, i64 1488
  store ptr %133, ptr %134, align 8, !tbaa !194
  %135 = getelementptr inbounds i8, ptr %127, i64 89208
  store i32 0, ptr %135, align 8, !tbaa !128
  tail call void @code_a_picture(ptr noundef %0)
  %136 = load ptr, ptr @img, align 8, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %136, i64 31568
  %138 = load ptr, ptr %137, align 8, !tbaa !214
  %139 = getelementptr inbounds i8, ptr %138, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !215
  %141 = load ptr, ptr %140, align 8, !tbaa !217
  %142 = load i32, ptr %141, align 8, !tbaa !220
  %143 = shl nsw i32 %142, 3
  %144 = getelementptr inbounds i8, ptr %0, i64 808
  store i32 %143, ptr %144, align 8, !tbaa !151
  %145 = getelementptr inbounds i8, ptr %136, i64 28
  %146 = load i32, ptr %145, align 4, !tbaa !27
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %122
  tail call fastcc void @find_distortion()
  %149 = load ptr, ptr @snr, align 8, !tbaa !6
  %150 = load float, ptr %149, align 4, !tbaa !155
  %151 = getelementptr inbounds i8, ptr %0, i64 812
  store float %150, ptr %151, align 4, !tbaa !34
  %152 = getelementptr inbounds i8, ptr %149, i64 4
  %153 = load float, ptr %152, align 4, !tbaa !156
  %154 = getelementptr inbounds i8, ptr %0, i64 816
  store float %153, ptr %154, align 8, !tbaa !36
  %155 = getelementptr inbounds i8, ptr %149, i64 8
  %156 = load float, ptr %155, align 4, !tbaa !157
  %157 = getelementptr inbounds i8, ptr %0, i64 820
  store float %156, ptr %157, align 4, !tbaa !35
  br label %158

158:                                              ; preds = %148, %122
  ret void
}

declare dso_local void @update_field_frame_contexts(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @writeout_picture(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31560
  store ptr %0, ptr %3, align 8, !tbaa !25
  %4 = load i32, ptr %0, align 8, !tbaa !33
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %98

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  br label %8

8:                                                ; preds = %6, %93
  %9 = phi i32 [ %4, %6 ], [ %94, %93 ]
  %10 = phi i64 [ 0, %6 ], [ %95, %93 ]
  %11 = getelementptr inbounds [100 x ptr], ptr %7, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 16
  %14 = load i32, ptr %13, align 8, !tbaa !229
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %93

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %12, i64 24
  br label %18

18:                                               ; preds = %16, %77
  %19 = phi i64 [ 0, %16 ], [ %87, %77 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !215
  %21 = getelementptr inbounds %struct.datapartition, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !230
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef signext 722, ptr noundef nonnull @__PRETTY_FUNCTION__.writeout_picture) #18
  unreachable

27:                                               ; preds = %18
  %28 = load ptr, ptr @img, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 90308
  %30 = load i32, ptr %29, align 4, !tbaa !143
  %31 = getelementptr inbounds i8, ptr %28, i64 90484
  %32 = load i32, ptr %31, align 4, !tbaa !231
  %33 = shl nsw i32 %32, 8
  %34 = or disjoint i32 %33, 128
  %35 = getelementptr inbounds i8, ptr %28, i64 90488
  %36 = load i32, ptr %35, align 8, !tbaa !232
  %37 = shl nsw i32 %36, 9
  %38 = add nsw i32 %34, %37
  %39 = mul i32 %38, %30
  %40 = add i32 %39, 500
  %41 = tail call ptr @AllocNALU(i32 noundef signext %40) #17
  %42 = load ptr, ptr @img, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 12
  %44 = load i32, ptr %43, align 4, !tbaa !40
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 5, i32 4
  store i32 %46, ptr %41, align 8, !tbaa !233
  %47 = load i32, ptr %22, align 8, !tbaa !220
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds i8, ptr %41, i64 4
  store i32 %48, ptr %49, align 4, !tbaa !235
  %50 = getelementptr inbounds i8, ptr %41, i64 24
  %51 = load ptr, ptr %50, align 8, !tbaa !236
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = getelementptr inbounds i8, ptr %22, i64 32
  %54 = load ptr, ptr %53, align 8, !tbaa !237
  %55 = zext i32 %47 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %54, i64 %55, i1 false)
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 31560
  %58 = load ptr, ptr %57, align 8, !tbaa !25
  %59 = getelementptr inbounds i8, ptr %58, i64 4
  %60 = load i32, ptr %59, align 4, !tbaa !31
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %27
  %63 = getelementptr inbounds i8, ptr %41, i64 12
  store i32 5, ptr %63, align 4, !tbaa !238
  br label %77

64:                                               ; preds = %27
  %65 = load ptr, ptr @input, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 2992
  %67 = load i32, ptr %66, align 8, !tbaa !239
  %68 = icmp eq i32 %67, 0
  %69 = trunc i64 %19 to i32
  %70 = add i32 %69, 2
  %71 = select i1 %68, i32 1, i32 %70
  %72 = getelementptr inbounds i8, ptr %41, i64 12
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds i8, ptr %56, i64 90316
  %74 = load i32, ptr %73, align 4, !tbaa !76
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 0, i32 2
  br label %77

77:                                               ; preds = %62, %64
  %78 = phi i32 [ 3, %62 ], [ %76, %64 ]
  %79 = getelementptr inbounds i8, ptr %41, i64 16
  store i32 %78, ptr %79, align 8, !tbaa !240
  %80 = getelementptr inbounds i8, ptr %41, i64 20
  store i32 0, ptr %80, align 4, !tbaa !241
  %81 = load ptr, ptr @WriteNALU, align 8, !tbaa !6
  %82 = tail call signext i32 %81(ptr noundef nonnull %41) #17
  %83 = load ptr, ptr @stats, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 16
  %85 = load i32, ptr %84, align 8, !tbaa !161
  %86 = add nsw i32 %85, %82
  store i32 %86, ptr %84, align 8, !tbaa !161
  tail call void @FreeNALU(ptr noundef nonnull %41) #17
  %87 = add nuw nsw i64 %19, 1
  %88 = load i32, ptr %13, align 8, !tbaa !229
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %18, label %91

91:                                               ; preds = %77
  %92 = load i32, ptr %0, align 8, !tbaa !33
  br label %93

93:                                               ; preds = %91, %8
  %94 = phi i32 [ %92, %91 ], [ %9, %8 ]
  %95 = add nuw nsw i64 %10, 1
  %96 = sext i32 %94 to i64
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %8, label %98

98:                                               ; preds = %93, %1
  ret void
}

declare dso_local void @free_slice_list(ptr noundef) local_unnamed_addr #2

declare dso_local void @rc_update_pict_frame(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @store_picture_in_dpb(ptr noundef) local_unnamed_addr #2

declare dso_local void @free_storable_picture(ptr noundef) local_unnamed_addr #2

declare dso_local void @replace_top_pic_with_frame(ptr noundef) local_unnamed_addr #2

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

declare dso_local void @rc_update_pict(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @updateRCModel() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @copy_params() local_unnamed_addr #5 {
  %1 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1148
  %3 = load i32, ptr %2, align 4, !tbaa !134
  %4 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 6556
  store i32 %3, ptr %5, align 4, !tbaa !204
  %6 = getelementptr inbounds i8, ptr %1, i64 1160
  %7 = load i32, ptr %6, align 4, !tbaa !205
  %8 = getelementptr inbounds i8, ptr %4, i64 6560
  store i32 %7, ptr %8, align 8, !tbaa !206
  %9 = getelementptr inbounds i8, ptr %1, i64 32
  %10 = load i32, ptr %9, align 4, !tbaa !207
  %11 = getelementptr inbounds i8, ptr %4, i64 6552
  store i32 %10, ptr %11, align 8, !tbaa !208
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %1, i64 1164
  %15 = load i32, ptr %14, align 4, !tbaa !209
  %16 = getelementptr inbounds i8, ptr %1, i64 1168
  %17 = load i32, ptr %16, align 4, !tbaa !210
  %18 = getelementptr inbounds i8, ptr %1, i64 1172
  %19 = load i32, ptr %18, align 4, !tbaa !211
  %20 = getelementptr inbounds i8, ptr %1, i64 1176
  %21 = load i32, ptr %20, align 4, !tbaa !212
  br label %22

22:                                               ; preds = %0, %13
  %23 = phi i32 [ %15, %13 ], [ 0, %0 ]
  %24 = phi i32 [ %17, %13 ], [ 0, %0 ]
  %25 = phi i32 [ %19, %13 ], [ 0, %0 ]
  %26 = phi i32 [ %21, %13 ], [ 0, %0 ]
  %27 = getelementptr inbounds i8, ptr %4, i64 6564
  store i32 %23, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %4, i64 6568
  store i32 %24, ptr %28, align 8
  %29 = getelementptr inbounds i8, ptr %4, i64 6572
  store i32 %25, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %4, i64 6576
  store i32 %26, ptr %30, align 8
  ret void
}

declare dso_local ptr @alloc_storable_picture(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @find_distortion() unnamed_addr #6 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 28
  %3 = load i32, ptr %2, align 4, !tbaa !27
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %119, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @input, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 68
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 72
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = icmp sgt i32 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 89184
  %15 = load ptr, ptr @imgY_org, align 8
  %16 = load ptr, ptr @imgY_com, align 8
  %17 = zext nneg i32 %8 to i64
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %10, %44
  %20 = phi i64 [ 0, %10 ], [ %46, %44 ]
  %21 = phi i64 [ 0, %10 ], [ %45, %44 ]
  br i1 %13, label %22, label %44

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !166
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %42, %24 ]
  %26 = phi i64 [ %21, %22 ], [ %41, %24 ]
  %27 = getelementptr inbounds ptr, ptr %15, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i16, ptr %28, i64 %20
  %30 = load i16, ptr %29, align 2, !tbaa !112
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %16, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds i16, ptr %33, i64 %20
  %35 = load i16, ptr %34, align 2, !tbaa !112
  %36 = zext i16 %35 to i64
  %37 = sub nsw i64 %31, %36
  %38 = getelementptr inbounds i32, ptr %23, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !22
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %26, %40
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %44, label %24

44:                                               ; preds = %24, %19
  %45 = phi i64 [ %21, %19 ], [ %41, %24 ]
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, %17
  br i1 %47, label %48, label %19

48:                                               ; preds = %44, %5
  %49 = phi i64 [ 0, %5 ], [ %45, %44 ]
  %50 = getelementptr inbounds i8, ptr %1, i64 90548
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %237, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %6, i64 3980
  %55 = load i32, ptr %54, align 4, !tbaa !104
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %237

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %6, i64 3976
  %59 = load i32, ptr %58, align 8, !tbaa !105
  %60 = icmp sgt i32 %59, 0
  %61 = getelementptr inbounds i8, ptr %1, i64 89184
  %62 = load ptr, ptr @imgUV_org, align 8
  %63 = load ptr, ptr @imgUV_com, align 8
  %64 = getelementptr inbounds i8, ptr %62, i64 8
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  %66 = zext nneg i32 %55 to i64
  %67 = zext nneg i32 %59 to i64
  br label %68

68:                                               ; preds = %57, %114
  %69 = phi i64 [ 0, %57 ], [ %117, %114 ]
  %70 = phi i64 [ 0, %57 ], [ %116, %114 ]
  %71 = phi i64 [ 0, %57 ], [ %115, %114 ]
  br i1 %60, label %72, label %114

72:                                               ; preds = %68
  %73 = load ptr, ptr %61, align 8, !tbaa !166
  %74 = load ptr, ptr %62, align 8, !tbaa !6
  %75 = load ptr, ptr %63, align 8, !tbaa !6
  %76 = load ptr, ptr %64, align 8, !tbaa !6
  %77 = load ptr, ptr %65, align 8, !tbaa !6
  br label %78

78:                                               ; preds = %72, %78
  %79 = phi i64 [ 0, %72 ], [ %112, %78 ]
  %80 = phi i64 [ %70, %72 ], [ %111, %78 ]
  %81 = phi i64 [ %71, %72 ], [ %96, %78 ]
  %82 = getelementptr inbounds ptr, ptr %74, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds i16, ptr %83, i64 %69
  %85 = load i16, ptr %84, align 2, !tbaa !112
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %75, i64 %79
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds i16, ptr %88, i64 %69
  %90 = load i16, ptr %89, align 2, !tbaa !112
  %91 = zext i16 %90 to i64
  %92 = sub nsw i64 %86, %91
  %93 = getelementptr inbounds i32, ptr %73, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !22
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %81, %95
  %97 = getelementptr inbounds ptr, ptr %76, i64 %79
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i16, ptr %98, i64 %69
  %100 = load i16, ptr %99, align 2, !tbaa !112
  %101 = zext i16 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %77, i64 %79
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = getelementptr inbounds i16, ptr %103, i64 %69
  %105 = load i16, ptr %104, align 2, !tbaa !112
  %106 = zext i16 %105 to i64
  %107 = sub nsw i64 %101, %106
  %108 = getelementptr inbounds i32, ptr %73, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !22
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %80, %110
  %112 = add nuw nsw i64 %79, 1
  %113 = icmp eq i64 %112, %67
  br i1 %113, label %114, label %78

114:                                              ; preds = %78, %68
  %115 = phi i64 [ %71, %68 ], [ %96, %78 ]
  %116 = phi i64 [ %70, %68 ], [ %111, %78 ]
  %117 = add nuw nsw i64 %69, 1
  %118 = icmp eq i64 %117, %66
  br i1 %118, label %237, label %68

119:                                              ; preds = %0
  %120 = load ptr, ptr @imgY_org_frm, align 8, !tbaa !6
  store ptr %120, ptr @imgY_org, align 8, !tbaa !6
  %121 = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !6
  store ptr %121, ptr @imgUV_org, align 8, !tbaa !6
  %122 = load ptr, ptr @input, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 68
  %124 = load i32, ptr %123, align 4, !tbaa !102
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, ptr %122, i64 72
  %128 = load i32, ptr %127, align 8, !tbaa !103
  %129 = icmp sgt i32 %128, 0
  %130 = getelementptr inbounds i8, ptr %1, i64 89184
  %131 = load ptr, ptr @enc_picture, align 8
  %132 = getelementptr inbounds i8, ptr %131, i64 6424
  %133 = zext nneg i32 %124 to i64
  %134 = zext nneg i32 %128 to i64
  br label %135

135:                                              ; preds = %126, %161
  %136 = phi i64 [ 0, %126 ], [ %163, %161 ]
  %137 = phi i64 [ 0, %126 ], [ %162, %161 ]
  br i1 %129, label %138, label %161

138:                                              ; preds = %135
  %139 = load ptr, ptr %130, align 8, !tbaa !166
  %140 = load ptr, ptr %132, align 8, !tbaa !10
  br label %141

141:                                              ; preds = %138, %141
  %142 = phi i64 [ 0, %138 ], [ %159, %141 ]
  %143 = phi i64 [ %137, %138 ], [ %158, %141 ]
  %144 = getelementptr inbounds ptr, ptr %120, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = getelementptr inbounds i16, ptr %145, i64 %136
  %147 = load i16, ptr %146, align 2, !tbaa !112
  %148 = zext i16 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %140, i64 %142
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds i16, ptr %150, i64 %136
  %152 = load i16, ptr %151, align 2, !tbaa !112
  %153 = zext i16 %152 to i64
  %154 = sub nsw i64 %148, %153
  %155 = getelementptr inbounds i32, ptr %139, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !22
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %143, %157
  %159 = add nuw nsw i64 %142, 1
  %160 = icmp eq i64 %159, %134
  br i1 %160, label %161, label %141

161:                                              ; preds = %141, %135
  %162 = phi i64 [ %137, %135 ], [ %158, %141 ]
  %163 = add nuw nsw i64 %136, 1
  %164 = icmp eq i64 %163, %133
  br i1 %164, label %165, label %135

165:                                              ; preds = %161, %119
  %166 = phi i64 [ 0, %119 ], [ %162, %161 ]
  %167 = getelementptr inbounds i8, ptr %1, i64 90548
  %168 = load i32, ptr %167, align 4, !tbaa !14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %237, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds i8, ptr %122, i64 3980
  %172 = load i32, ptr %171, align 4, !tbaa !104
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %237

174:                                              ; preds = %170
  %175 = getelementptr inbounds i8, ptr %122, i64 3976
  %176 = load i32, ptr %175, align 8, !tbaa !105
  %177 = icmp sgt i32 %176, 0
  %178 = getelementptr inbounds i8, ptr %1, i64 89184
  %179 = load ptr, ptr @enc_picture, align 8
  %180 = getelementptr inbounds i8, ptr %179, i64 6464
  %181 = getelementptr inbounds i8, ptr %121, i64 8
  %182 = zext nneg i32 %172 to i64
  %183 = zext nneg i32 %176 to i64
  br label %184

184:                                              ; preds = %174, %232
  %185 = phi i64 [ 0, %174 ], [ %235, %232 ]
  %186 = phi i64 [ 0, %174 ], [ %234, %232 ]
  %187 = phi i64 [ 0, %174 ], [ %233, %232 ]
  br i1 %177, label %188, label %232

188:                                              ; preds = %184
  %189 = load ptr, ptr %178, align 8, !tbaa !166
  %190 = load ptr, ptr %121, align 8, !tbaa !6
  %191 = load ptr, ptr %180, align 8, !tbaa !13
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = load ptr, ptr %181, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %191, i64 8
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  br label %196

196:                                              ; preds = %188, %196
  %197 = phi i64 [ 0, %188 ], [ %230, %196 ]
  %198 = phi i64 [ %186, %188 ], [ %229, %196 ]
  %199 = phi i64 [ %187, %188 ], [ %214, %196 ]
  %200 = getelementptr inbounds ptr, ptr %190, i64 %197
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = getelementptr inbounds i16, ptr %201, i64 %185
  %203 = load i16, ptr %202, align 2, !tbaa !112
  %204 = zext i16 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %192, i64 %197
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds i16, ptr %206, i64 %185
  %208 = load i16, ptr %207, align 2, !tbaa !112
  %209 = zext i16 %208 to i64
  %210 = sub nsw i64 %204, %209
  %211 = getelementptr inbounds i32, ptr %189, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !22
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %199, %213
  %215 = getelementptr inbounds ptr, ptr %193, i64 %197
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds i16, ptr %216, i64 %185
  %218 = load i16, ptr %217, align 2, !tbaa !112
  %219 = zext i16 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %195, i64 %197
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  %222 = getelementptr inbounds i16, ptr %221, i64 %185
  %223 = load i16, ptr %222, align 2, !tbaa !112
  %224 = zext i16 %223 to i64
  %225 = sub nsw i64 %219, %224
  %226 = getelementptr inbounds i32, ptr %189, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !22
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %198, %228
  %230 = add nuw nsw i64 %197, 1
  %231 = icmp eq i64 %230, %183
  br i1 %231, label %232, label %196

232:                                              ; preds = %196, %184
  %233 = phi i64 [ %187, %184 ], [ %214, %196 ]
  %234 = phi i64 [ %186, %184 ], [ %229, %196 ]
  %235 = add nuw nsw i64 %185, 1
  %236 = icmp eq i64 %235, %182
  br i1 %236, label %237, label %184

237:                                              ; preds = %114, %232, %53, %170, %165, %48
  %238 = phi i64 [ %49, %48 ], [ %166, %165 ], [ %166, %170 ], [ %49, %53 ], [ %166, %232 ], [ %49, %114 ]
  %239 = phi i64 [ 0, %48 ], [ 0, %165 ], [ 0, %170 ], [ 0, %53 ], [ %233, %232 ], [ %115, %114 ]
  %240 = phi i64 [ 0, %48 ], [ 0, %165 ], [ 0, %170 ], [ 0, %53 ], [ %234, %232 ], [ %116, %114 ]
  %241 = sitofp i64 %238 to float
  %242 = load ptr, ptr @snr, align 8, !tbaa !6
  store float %241, ptr %242, align 4, !tbaa !155
  %243 = sitofp i64 %239 to float
  %244 = getelementptr inbounds i8, ptr %242, i64 4
  store float %243, ptr %244, align 4, !tbaa !156
  %245 = sitofp i64 %240 to float
  %246 = getelementptr inbounds i8, ptr %242, i64 8
  store float %245, ptr %246, align 4, !tbaa !157
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @init_field() unnamed_addr #6 {
  %1 = load ptr, ptr @last_P_no_fld, align 8, !tbaa !6
  store ptr %1, ptr @last_P_no, align 8, !tbaa !6
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 12
  store i32 0, ptr %3, align 4, !tbaa !40
  %4 = getelementptr inbounds i8, ptr %2, i64 20
  store i32 0, ptr %4, align 4, !tbaa !41
  %5 = load ptr, ptr @stats, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %6, align 8, !tbaa !42
  %7 = load ptr, ptr @input, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 20
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = shl nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !62
  %11 = getelementptr inbounds i8, ptr %7, i64 1244
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = shl nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !68
  %14 = load i32, ptr %2, align 8, !tbaa !26
  %15 = sdiv i32 %14, 2
  store i32 %15, ptr %2, align 8, !tbaa !26
  %16 = getelementptr inbounds i8, ptr %2, i64 90192
  %17 = load i32, ptr %16, align 8, !tbaa !86
  %18 = sdiv i32 %17, 2
  store i32 %18, ptr %16, align 8, !tbaa !86
  %19 = getelementptr inbounds i8, ptr %2, i64 136
  %20 = getelementptr inbounds i8, ptr %2, i64 96
  store i32 0, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds i8, ptr %2, i64 89316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = icmp eq i32 %22, 0
  %24 = add nsw i32 %10, 2
  br i1 %23, label %25, label %170

25:                                               ; preds = %0
  %26 = mul nsw i32 %15, %24
  %27 = getelementptr inbounds i8, ptr %2, i64 89204
  %28 = load i32, ptr %27, align 4, !tbaa !158
  %29 = add nsw i32 %28, %26
  %30 = getelementptr inbounds i8, ptr %2, i64 89200
  store i32 %29, ptr %30, align 8, !tbaa !63
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %2, i64 89292
  %34 = load i32, ptr %33, align 4, !tbaa !242
  %35 = getelementptr inbounds i8, ptr %2, i64 89296
  store i32 %34, ptr %35, align 8, !tbaa !243
  store i32 %29, ptr %33, align 4, !tbaa !242
  br label %36

36:                                               ; preds = %32, %25
  %37 = getelementptr inbounds i8, ptr %7, i64 3112
  %38 = load i32, ptr %37, align 8, !tbaa !66
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %15, 1
  %42 = getelementptr inbounds i8, ptr %7, i64 8
  %43 = load i32, ptr %42, align 8, !tbaa !67
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 %38, ptr %30, align 8, !tbaa !63
  br label %46

46:                                               ; preds = %45, %40, %36
  %47 = phi i32 [ %38, %45 ], [ %29, %40 ], [ %29, %36 ]
  %48 = add i32 %14, 1
  %49 = icmp ult i32 %48, 3
  %50 = icmp eq i32 %12, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 %47, ptr @nextP_tr_fld, align 4, !tbaa !22
  br label %53

53:                                               ; preds = %52, %46
  %54 = getelementptr inbounds i8, ptr %7, i64 3908
  %55 = load i32, ptr %54, align 4, !tbaa !69
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %156

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %2, i64 24
  %59 = load i32, ptr %58, align 8, !tbaa !30
  %60 = icmp eq i32 %59, 2
  %61 = getelementptr inbounds i8, ptr %7, i64 3124
  %62 = load i32, ptr %61, align 4, !tbaa !70
  %63 = icmp sgt i32 %62, 0
  br i1 %60, label %64, label %87

64:                                               ; preds = %57
  br i1 %63, label %65, label %83

65:                                               ; preds = %64
  %66 = icmp slt i32 %47, %62
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds i8, ptr %7, i64 1296
  %69 = load i32, ptr %68, align 8, !tbaa !71
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67, %65
  %72 = shl nuw nsw i32 %62, 1
  %73 = srem i32 %47, %72
  %74 = icmp slt i32 %73, %62
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %7, i64 1296
  %77 = load i32, ptr %76, align 8, !tbaa !71
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %75, %67
  %80 = getelementptr inbounds i8, ptr %7, i64 3128
  %81 = load i32, ptr %80, align 8, !tbaa !72
  %82 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %81, ptr %82, align 8, !tbaa !73
  br label %156

83:                                               ; preds = %64, %75, %71
  %84 = getelementptr inbounds i8, ptr %7, i64 12
  %85 = load i32, ptr %84, align 4, !tbaa !74
  %86 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %85, ptr %86, align 8, !tbaa !73
  br label %156

87:                                               ; preds = %57
  br i1 %63, label %88, label %111

88:                                               ; preds = %87
  %89 = icmp slt i32 %47, %62
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds i8, ptr %7, i64 1296
  %92 = load i32, ptr %91, align 8, !tbaa !71
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90, %88
  %95 = shl nuw nsw i32 %62, 1
  %96 = srem i32 %47, %95
  %97 = icmp slt i32 %96, %62
  br i1 %97, label %111, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, ptr %7, i64 1296
  %100 = load i32, ptr %99, align 8, !tbaa !71
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %111

102:                                              ; preds = %98, %90
  %103 = getelementptr inbounds i8, ptr %7, i64 3116
  %104 = load i32, ptr %103, align 4, !tbaa !75
  %105 = getelementptr inbounds i8, ptr %2, i64 90316
  %106 = load i32, ptr %105, align 4, !tbaa !76
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = getelementptr inbounds i8, ptr %7, i64 4324
  %110 = load i32, ptr %109, align 4, !tbaa !77
  br label %125

111:                                              ; preds = %87, %98, %94
  %112 = getelementptr inbounds i8, ptr %7, i64 16
  %113 = load i32, ptr %112, align 8, !tbaa !78
  %114 = getelementptr inbounds i8, ptr %2, i64 90316
  %115 = load i32, ptr %114, align 4, !tbaa !76
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = getelementptr inbounds i8, ptr %7, i64 4324
  %119 = load i32, ptr %118, align 4, !tbaa !77
  br label %120

120:                                              ; preds = %117, %111
  %121 = phi i32 [ %119, %117 ], [ 0, %111 ]
  %122 = add nsw i32 %121, %113
  %123 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %122, ptr %123, align 8, !tbaa !73
  %124 = icmp eq i32 %59, 3
  br i1 %124, label %130, label %156

125:                                              ; preds = %108, %102
  %126 = phi i32 [ %110, %108 ], [ 0, %102 ]
  %127 = add nsw i32 %126, %104
  %128 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %127, ptr %128, align 8, !tbaa !73
  %129 = icmp eq i32 %59, 3
  br i1 %129, label %131, label %156

130:                                              ; preds = %120
  br i1 %63, label %131, label %149

131:                                              ; preds = %125, %130
  %132 = shl nuw nsw i32 %62, 1
  %133 = srem i32 %47, %132
  %134 = icmp slt i32 %133, %62
  br i1 %134, label %149, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %7, i64 3116
  %137 = load i32, ptr %136, align 4, !tbaa !75
  %138 = getelementptr inbounds i8, ptr %7, i64 16
  %139 = load i32, ptr %138, align 8, !tbaa !78
  %140 = getelementptr inbounds i8, ptr %7, i64 1284
  %141 = load i32, ptr %140, align 4, !tbaa !79
  %142 = sub i32 %137, %139
  %143 = add i32 %142, %141
  %144 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %143, ptr %144, align 8, !tbaa !73
  %145 = getelementptr inbounds i8, ptr %7, i64 1288
  %146 = load i32, ptr %145, align 8, !tbaa !80
  %147 = add i32 %142, %146
  %148 = getelementptr inbounds i8, ptr %2, i64 44
  store i32 %147, ptr %148, align 4, !tbaa !81
  br label %156

149:                                              ; preds = %131, %130
  %150 = getelementptr inbounds i8, ptr %7, i64 1284
  %151 = load i32, ptr %150, align 4, !tbaa !79
  %152 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %151, ptr %152, align 8, !tbaa !73
  %153 = getelementptr inbounds i8, ptr %7, i64 1288
  %154 = load i32, ptr %153, align 8, !tbaa !80
  %155 = getelementptr inbounds i8, ptr %2, i64 44
  store i32 %154, ptr %155, align 4, !tbaa !81
  br label %156

156:                                              ; preds = %125, %83, %79, %135, %149, %120, %53
  %157 = getelementptr inbounds i8, ptr %2, i64 88
  %158 = load i32, ptr %157, align 8, !tbaa !82
  %159 = getelementptr inbounds i8, ptr %2, i64 92
  store i32 %158, ptr %159, align 4, !tbaa !83
  %160 = getelementptr inbounds i8, ptr %7, i64 80
  %161 = load i32, ptr %160, align 8, !tbaa !84
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %369

163:                                              ; preds = %156
  %164 = load i32, ptr %2, align 8, !tbaa !26
  %165 = sdiv i32 %164, %161
  %166 = getelementptr inbounds i8, ptr %2, i64 52
  %167 = load i32, ptr %166, align 4, !tbaa !55
  %168 = sdiv i32 %167, 16
  %169 = srem i32 %165, %168
  store i32 %169, ptr %157, align 8, !tbaa !82
  br label %369

170:                                              ; preds = %0
  %171 = getelementptr inbounds i8, ptr %2, i64 89312
  store i32 %24, ptr %171, align 8, !tbaa !85
  %172 = add nsw i32 %15, -1
  %173 = mul nsw i32 %172, %24
  %174 = getelementptr inbounds i8, ptr %2, i64 89204
  %175 = load i32, ptr %174, align 4, !tbaa !158
  %176 = add nsw i32 %175, %173
  %177 = mul nsw i32 %15, %24
  %178 = add nsw i32 %175, %177
  %179 = icmp eq i32 %175, 0
  %180 = getelementptr inbounds i8, ptr %1, i64 4
  br i1 %179, label %181, label %203

181:                                              ; preds = %170
  %182 = or disjoint i32 %173, 1
  store i32 %182, ptr %1, align 4, !tbaa !22
  store i32 %176, ptr %180, align 4, !tbaa !22
  %183 = load i32, ptr %16, align 8, !tbaa !86
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %225, label %185

185:                                              ; preds = %181, %185
  %186 = phi i64 [ %199, %185 ], [ 1, %181 ]
  %187 = shl nuw nsw i64 %186, 1
  %188 = getelementptr i32, ptr %1, i64 %187
  %189 = getelementptr i8, ptr %188, i64 -8
  %190 = load i32, ptr %189, align 4, !tbaa !22
  %191 = load i32, ptr %171, align 8, !tbaa !85
  %192 = sub nsw i32 %190, %191
  store i32 %192, ptr %188, align 4, !tbaa !22
  %193 = getelementptr i8, ptr %188, i64 -4
  %194 = load i32, ptr %193, align 4, !tbaa !22
  %195 = load i32, ptr %171, align 8, !tbaa !85
  %196 = sub nsw i32 %194, %195
  %197 = or disjoint i64 %187, 1
  %198 = getelementptr inbounds i32, ptr %1, i64 %197
  store i32 %196, ptr %198, align 4, !tbaa !22
  %199 = add nuw nsw i64 %186, 1
  %200 = load i32, ptr %16, align 8, !tbaa !86
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %186, %201
  br i1 %202, label %185, label %225

203:                                              ; preds = %170
  %204 = add nsw i32 %178, -1
  store i32 %204, ptr %1, align 4, !tbaa !22
  store i32 %176, ptr %180, align 4, !tbaa !22
  %205 = load i32, ptr %16, align 8, !tbaa !86
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %225, label %207

207:                                              ; preds = %203, %207
  %208 = phi i64 [ %221, %207 ], [ 1, %203 ]
  %209 = shl nuw nsw i64 %208, 1
  %210 = getelementptr i32, ptr %1, i64 %209
  %211 = getelementptr i8, ptr %210, i64 -8
  %212 = load i32, ptr %211, align 4, !tbaa !22
  %213 = load i32, ptr %171, align 8, !tbaa !85
  %214 = sub nsw i32 %212, %213
  store i32 %214, ptr %210, align 4, !tbaa !22
  %215 = getelementptr i8, ptr %210, i64 -4
  %216 = load i32, ptr %215, align 4, !tbaa !22
  %217 = load i32, ptr %171, align 8, !tbaa !85
  %218 = sub nsw i32 %216, %217
  %219 = or disjoint i64 %209, 1
  %220 = getelementptr inbounds i32, ptr %1, i64 %219
  store i32 %218, ptr %220, align 4, !tbaa !22
  %221 = add nuw nsw i64 %208, 1
  %222 = load i32, ptr %16, align 8, !tbaa !86
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %208, %223
  br i1 %224, label %207, label %225

225:                                              ; preds = %207, %185, %203, %181
  %226 = phi i32 [ %205, %203 ], [ %183, %181 ], [ %200, %185 ], [ %222, %207 ]
  %227 = getelementptr inbounds i8, ptr %7, i64 3112
  %228 = load i32, ptr %227, align 8, !tbaa !66
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %2, align 8, !tbaa !26
  %232 = add nsw i32 %231, 1
  %233 = getelementptr inbounds i8, ptr %7, i64 8
  %234 = load i32, ptr %233, align 8, !tbaa !67
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = sub nsw i32 %228, %176
  store i32 %237, ptr %171, align 8, !tbaa !85
  br label %238

238:                                              ; preds = %236, %230, %225
  %239 = phi i32 [ %228, %236 ], [ %178, %230 ], [ %178, %225 ]
  %240 = load i32, ptr %8, align 4, !tbaa !62
  %241 = add nsw i32 %240, 1
  %242 = sitofp i32 %241 to double
  %243 = load i32, ptr %11, align 4, !tbaa !68
  %244 = sitofp i32 %243 to double
  %245 = fadd double %244, 1.000000e+00
  %246 = fdiv double %242, %245
  %247 = getelementptr inbounds i8, ptr %2, i64 89304
  store double %246, ptr %247, align 8, !tbaa !87
  %248 = getelementptr inbounds i8, ptr %7, i64 1944
  %249 = load i32, ptr %248, align 8, !tbaa !88
  switch i32 %249, label %251 [
    i32 3, label %250
    i32 0, label %260
  ]

250:                                              ; preds = %238
  store double 1.000000e+00, ptr %247, align 8, !tbaa !87
  br label %251

251:                                              ; preds = %238, %250
  %252 = phi double [ %246, %238 ], [ 1.000000e+00, %250 ]
  %253 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %254 = load i32, ptr %21, align 4, !tbaa !61
  %255 = sext i32 %254 to i64
  %256 = getelementptr %struct.GOP_DATA, ptr %253, i64 %255
  %257 = getelementptr i8, ptr %256, i64 -20
  %258 = load i32, ptr %257, align 4, !tbaa !89
  %259 = add nsw i32 %258, 1
  br label %262

260:                                              ; preds = %238
  %261 = load i32, ptr %21, align 4, !tbaa !61
  br label %262

262:                                              ; preds = %260, %251
  %263 = phi i32 [ %261, %260 ], [ %259, %251 ]
  %264 = phi double [ %246, %260 ], [ %252, %251 ]
  %265 = phi i32 [ %261, %260 ], [ %254, %251 ]
  %266 = phi i1 [ true, %260 ], [ false, %251 ]
  %267 = fadd double %264, 1.000000e+00
  %268 = sitofp i32 %263 to double
  %269 = fmul double %267, %268
  %270 = fptosi double %269 to i32
  %271 = add nsw i32 %176, %270
  %272 = getelementptr inbounds i8, ptr %2, i64 89200
  store i32 %271, ptr %272, align 8, !tbaa !63
  %273 = icmp slt i32 %271, %239
  br i1 %273, label %277, label %274

274:                                              ; preds = %262
  %275 = getelementptr inbounds i8, ptr %2, i64 89200
  %276 = add nsw i32 %239, -1
  store i32 %276, ptr %275, align 8, !tbaa !63
  br label %277

277:                                              ; preds = %274, %262
  %278 = phi i32 [ %276, %274 ], [ %271, %262 ]
  %279 = getelementptr inbounds i8, ptr %7, i64 3908
  %280 = load i32, ptr %279, align 4, !tbaa !69
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %361

282:                                              ; preds = %277
  br i1 %266, label %283, label %362

283:                                              ; preds = %282
  %284 = getelementptr inbounds i8, ptr %7, i64 3124
  %285 = load i32, ptr %284, align 4, !tbaa !70
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %308

287:                                              ; preds = %283
  %288 = icmp slt i32 %278, %285
  br i1 %288, label %293, label %289

289:                                              ; preds = %287
  %290 = getelementptr inbounds i8, ptr %7, i64 1296
  %291 = load i32, ptr %290, align 8, !tbaa !71
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %315, label %293

293:                                              ; preds = %289, %287
  %294 = shl nuw nsw i32 %285, 1
  %295 = srem i32 %278, %294
  %296 = icmp slt i32 %295, %285
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds i8, ptr %7, i64 1296
  %299 = load i32, ptr %298, align 8, !tbaa !71
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %315, label %301

301:                                              ; preds = %293, %297
  %302 = getelementptr inbounds i8, ptr %7, i64 1248
  %303 = load i32, ptr %302, align 8, !tbaa !91
  %304 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %303, ptr %304, align 8, !tbaa !73
  %305 = getelementptr inbounds i8, ptr %2, i64 90316
  %306 = load i32, ptr %305, align 4, !tbaa !76
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %369, label %322

308:                                              ; preds = %283
  %309 = getelementptr inbounds i8, ptr %7, i64 1248
  %310 = load i32, ptr %309, align 8, !tbaa !91
  %311 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %310, ptr %311, align 8, !tbaa !73
  %312 = getelementptr inbounds i8, ptr %2, i64 90316
  %313 = load i32, ptr %312, align 4, !tbaa !76
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %369, label %348

315:                                              ; preds = %289, %297
  %316 = getelementptr inbounds i8, ptr %7, i64 3120
  %317 = load i32, ptr %316, align 8, !tbaa !92
  %318 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %317, ptr %318, align 8, !tbaa !73
  %319 = getelementptr inbounds i8, ptr %2, i64 90316
  %320 = load i32, ptr %319, align 4, !tbaa !76
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %369, label %322

322:                                              ; preds = %301, %315
  br i1 %288, label %327, label %323

323:                                              ; preds = %322
  %324 = getelementptr inbounds i8, ptr %7, i64 1296
  %325 = load i32, ptr %324, align 8, !tbaa !71
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %335, label %327

327:                                              ; preds = %323, %322
  %328 = shl nuw nsw i32 %285, 1
  %329 = srem i32 %278, %328
  %330 = icmp slt i32 %329, %285
  br i1 %330, label %348, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %7, i64 1296
  %333 = load i32, ptr %332, align 8, !tbaa !71
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %348

335:                                              ; preds = %331, %323
  %336 = getelementptr inbounds i8, ptr %7, i64 3120
  %337 = load i32, ptr %336, align 8, !tbaa !92
  %338 = getelementptr inbounds i8, ptr %7, i64 3132
  %339 = load i32, ptr %338, align 4, !tbaa !93
  %340 = add nsw i32 %339, %337
  %341 = getelementptr inbounds i8, ptr %2, i64 90492
  %342 = load i32, ptr %341, align 4, !tbaa !94
  %343 = sub nsw i32 0, %342
  %344 = icmp slt i32 %340, %343
  %345 = tail call i32 @llvm.smin.i32(i32 %340, i32 51)
  %346 = select i1 %344, i32 %343, i32 %345
  %347 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %346, ptr %347, align 8, !tbaa !73
  br label %369

348:                                              ; preds = %308, %331, %327
  %349 = getelementptr inbounds i8, ptr %7, i64 1248
  %350 = load i32, ptr %349, align 8, !tbaa !91
  %351 = getelementptr inbounds i8, ptr %7, i64 1252
  %352 = load i32, ptr %351, align 4, !tbaa !95
  %353 = add nsw i32 %352, %350
  %354 = getelementptr inbounds i8, ptr %2, i64 90492
  %355 = load i32, ptr %354, align 4, !tbaa !94
  %356 = sub nsw i32 0, %355
  %357 = icmp slt i32 %353, %356
  %358 = tail call i32 @llvm.smin.i32(i32 %353, i32 51)
  %359 = select i1 %357, i32 %356, i32 %358
  %360 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %359, ptr %360, align 8, !tbaa !73
  br label %369

361:                                              ; preds = %277
  br i1 %266, label %369, label %362

362:                                              ; preds = %282, %361
  %363 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %364 = sext i32 %265 to i64
  %365 = getelementptr %struct.GOP_DATA, ptr %363, i64 %364
  %366 = getelementptr i8, ptr %365, i64 -12
  %367 = load i32, ptr %366, align 4, !tbaa !96
  %368 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 %367, ptr %368, align 8, !tbaa !73
  br label %369

369:                                              ; preds = %308, %315, %335, %348, %301, %362, %361, %156, %163
  %370 = phi i32 [ %226, %308 ], [ %226, %315 ], [ %226, %335 ], [ %226, %348 ], [ %226, %301 ], [ %226, %362 ], [ %226, %361 ], [ %18, %156 ], [ %18, %163 ]
  %371 = phi i32 [ %243, %308 ], [ %243, %315 ], [ %243, %335 ], [ %243, %348 ], [ %243, %301 ], [ %243, %362 ], [ %243, %361 ], [ %13, %156 ], [ %13, %163 ]
  %372 = phi i32 [ %240, %308 ], [ %240, %315 ], [ %240, %335 ], [ %240, %348 ], [ %240, %301 ], [ %240, %362 ], [ %240, %361 ], [ %10, %156 ], [ %10, %163 ]
  %373 = sdiv i32 %372, 2
  store i32 %373, ptr %8, align 4, !tbaa !62
  %374 = sdiv i32 %371, 2
  store i32 %374, ptr %11, align 4, !tbaa !68
  %375 = shl nsw i32 %370, 1
  store i32 %375, ptr %16, align 8, !tbaa !86
  %376 = load i32, ptr %2, align 8, !tbaa !26
  %377 = shl nsw i32 %376, 1
  %378 = getelementptr inbounds i8, ptr %2, i64 89204
  %379 = load i32, ptr %378, align 4, !tbaa !158
  %380 = add nsw i32 %377, %379
  store i32 %380, ptr %2, align 8, !tbaa !26
  ret void
}

declare dso_local void @setbitscount(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @UnifiedOneForthPix(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 6396
  %3 = load i32, ptr %2, align 4, !tbaa !244
  %4 = add nsw i32 %3, 7
  %5 = getelementptr inbounds i8, ptr %0, i64 6424
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds i8, ptr %0, i64 6392
  %8 = load i32, ptr %7, align 8, !tbaa !245
  %9 = add nsw i32 %8, -1
  %10 = add nsw i32 %3, -1
  %11 = getelementptr inbounds i8, ptr %0, i64 6448
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %752

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %0, i64 6432
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %752

18:                                               ; preds = %14
  %19 = mul nsw i32 %8, %3
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 1
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #19
  store ptr %22, ptr %15, align 8, !tbaa !247
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #17
  %25 = load i32, ptr %2, align 4, !tbaa !244
  %26 = load i32, ptr %7, align 8, !tbaa !245
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ %8, %18 ]
  %29 = phi i32 [ %25, %24 ], [ %3, %18 ]
  %30 = shl i32 %29, 2
  %31 = add i32 %30, 32
  %32 = shl i32 %28, 2
  %33 = add i32 %32, 32
  %34 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull %11, i32 noundef signext %31, i32 noundef signext %33) #17
  %35 = load ptr, ptr @input, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 1904
  %37 = load i32, ptr %36, align 8, !tbaa !248
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds i8, ptr %35, i64 1908
  %41 = load i32, ptr %40, align 4, !tbaa !249
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %35, i64 64
  %45 = load i32, ptr %44, align 8, !tbaa !139
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43, %39, %27
  %48 = load i32, ptr %7, align 8, !tbaa !245
  %49 = load i32, ptr %2, align 4, !tbaa !244
  %50 = mul nsw i32 %49, %48
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 1
  %53 = tail call noalias ptr @malloc(i64 noundef %52) #19
  %54 = getelementptr inbounds i8, ptr %0, i64 6440
  store ptr %53, ptr %54, align 8, !tbaa !250
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #17
  %57 = load i32, ptr %2, align 4, !tbaa !244
  %58 = load i32, ptr %7, align 8, !tbaa !245
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i32 [ %58, %56 ], [ %48, %47 ]
  %61 = phi i32 [ %57, %56 ], [ %49, %47 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 6456
  %63 = shl i32 %61, 2
  %64 = add i32 %63, 32
  %65 = shl i32 %60, 2
  %66 = add i32 %65, 32
  %67 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull %62, i32 noundef signext %64, i32 noundef signext %66) #17
  br label %68

68:                                               ; preds = %59, %43
  %69 = load ptr, ptr %11, align 8, !tbaa !246
  %70 = load ptr, ptr %15, align 8, !tbaa !247
  %71 = load i32, ptr %2, align 4, !tbaa !244
  %72 = icmp sgt i32 %71, -8
  %73 = load i32, ptr %7, align 8, !tbaa !245
  br i1 %72, label %74, label %77

74:                                               ; preds = %68
  %75 = load ptr, ptr @img4Y_tmp, align 8
  %76 = getelementptr i8, ptr %75, i64 32
  br label %110

77:                                               ; preds = %195, %68
  %78 = phi i32 [ %73, %68 ], [ %197, %195 ]
  %79 = phi i32 [ %71, %68 ], [ %196, %195 ]
  %80 = shl i32 %78, 1
  %81 = add i32 %80, 16
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %420

83:                                               ; preds = %77
  %84 = load ptr, ptr @img4Y_tmp, align 8, !tbaa !6
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %84, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %84, i64 16
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %84, i64 24
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load ptr, ptr @img, align 8
  %93 = getelementptr inbounds i8, ptr %92, i64 90532
  %94 = load ptr, ptr %69, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %69, i64 16
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %84, i64 32
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %69, i64 32
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %69, i64 48
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = add i32 %3, 5
  %104 = icmp sgt i32 %3, -3
  %105 = tail call i32 @llvm.smax.i32(i32 %103, i32 3)
  %106 = sext i32 %103 to i64
  %107 = zext nneg i32 %81 to i64
  %108 = zext nneg i32 %105 to i64
  %109 = sext i32 %4 to i64
  br label %202

110:                                              ; preds = %74, %195
  %111 = phi i32 [ %71, %74 ], [ %196, %195 ]
  %112 = phi i32 [ %73, %74 ], [ %197, %195 ]
  %113 = phi i64 [ -4, %74 ], [ %198, %195 ]
  %114 = icmp sgt i32 %112, -8
  br i1 %114, label %115, label %195

115:                                              ; preds = %110
  %116 = trunc nsw i64 %113 to i32
  %117 = tail call i32 @llvm.smin.i32(i32 %10, i32 %116)
  %118 = tail call i32 @llvm.smax.i32(i32 %117, i32 0)
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %6, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr ptr, ptr %76, i64 %113
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  br label %124

124:                                              ; preds = %115, %124
  %125 = phi i64 [ -4, %115 ], [ %133, %124 ]
  %126 = trunc nsw i64 %125 to i32
  %127 = tail call i32 @llvm.smin.i32(i32 %9, i32 %126)
  %128 = tail call i32 @llvm.smax.i32(i32 %127, i32 0)
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %121, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !112
  %132 = zext i16 %131 to i32
  %133 = add nsw i64 %125, 1
  %134 = trunc nsw i64 %133 to i32
  %135 = tail call i32 @llvm.smin.i32(i32 %9, i32 %134)
  %136 = tail call i32 @llvm.smax.i32(i32 %135, i32 0)
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds i16, ptr %121, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !112
  %140 = zext i16 %139 to i32
  %141 = add nuw nsw i32 %140, %132
  %142 = mul nuw nsw i32 %141, 20
  %143 = trunc i64 %125 to i32
  %144 = add i32 %143, -1
  %145 = tail call i32 @llvm.smin.i32(i32 %9, i32 %144)
  %146 = tail call i32 @llvm.smax.i32(i32 %145, i32 0)
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds i16, ptr %121, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !112
  %150 = zext i16 %149 to i32
  %151 = trunc i64 %125 to i32
  %152 = add i32 %151, 2
  %153 = tail call i32 @llvm.smin.i32(i32 %9, i32 %152)
  %154 = tail call i32 @llvm.smax.i32(i32 %153, i32 0)
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds i16, ptr %121, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !112
  %158 = zext i16 %157 to i32
  %159 = add nuw nsw i32 %158, %150
  %160 = mul nsw i32 %159, -5
  %161 = trunc i64 %125 to i32
  %162 = add i32 %161, -2
  %163 = tail call i32 @llvm.smin.i32(i32 %9, i32 %162)
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 0)
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds i16, ptr %121, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !112
  %168 = zext i16 %167 to i32
  %169 = trunc i64 %125 to i32
  %170 = add i32 %169, 3
  %171 = tail call i32 @llvm.smin.i32(i32 %9, i32 %170)
  %172 = tail call i32 @llvm.smax.i32(i32 %171, i32 0)
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds i16, ptr %121, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !112
  %176 = zext i16 %175 to i32
  %177 = add nuw nsw i32 %142, %168
  %178 = add nsw i32 %177, %160
  %179 = add nsw i32 %178, %176
  %180 = shl nuw nsw i32 %132, 10
  %181 = shl i32 %126, 1
  %182 = add i32 %181, 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %123, i64 %183
  store i32 %180, ptr %184, align 4, !tbaa !22
  %185 = shl nsw i32 %179, 5
  %186 = add i32 %181, 9
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %123, i64 %187
  store i32 %185, ptr %188, align 4, !tbaa !22
  %189 = load i32, ptr %7, align 8, !tbaa !245
  %190 = add nsw i32 %189, 3
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %125, %191
  br i1 %192, label %124, label %193

193:                                              ; preds = %124
  %194 = load i32, ptr %2, align 4, !tbaa !244
  br label %195

195:                                              ; preds = %193, %110
  %196 = phi i32 [ %194, %193 ], [ %111, %110 ]
  %197 = phi i32 [ %189, %193 ], [ %112, %110 ]
  %198 = add nsw i64 %113, 1
  %199 = add nsw i32 %196, 3
  %200 = sext i32 %199 to i64
  %201 = icmp slt i64 %113, %200
  br i1 %201, label %110, label %77

202:                                              ; preds = %83, %417
  %203 = phi i64 [ 0, %83 ], [ %418, %417 ]
  %204 = getelementptr inbounds i32, ptr %85, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !22
  %206 = getelementptr inbounds i32, ptr %87, i64 %203
  %207 = load i32, ptr %206, align 4, !tbaa !22
  %208 = add nsw i32 %207, %205
  %209 = mul nsw i32 %208, 20
  %210 = getelementptr inbounds i32, ptr %89, i64 %203
  %211 = load i32, ptr %210, align 4, !tbaa !22
  %212 = add nsw i32 %211, %205
  %213 = mul nsw i32 %212, -5
  %214 = add nsw i32 %213, %209
  %215 = getelementptr inbounds i32, ptr %91, i64 %203
  %216 = load i32, ptr %215, align 4, !tbaa !22
  %217 = add nsw i32 %216, %205
  %218 = add nsw i32 %214, %217
  %219 = ashr i32 %218, 5
  %220 = add nsw i32 %205, 512
  %221 = ashr i32 %220, 10
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %202
  %224 = load i32, ptr %93, align 4, !tbaa !164
  %225 = tail call i32 @llvm.smin.i32(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %223, %202
  %227 = phi i32 [ 0, %202 ], [ %225, %223 ]
  %228 = trunc i32 %227 to i16
  %229 = trunc i64 %203 to i32
  %230 = shl i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i16, ptr %94, i64 %231
  store i16 %228, ptr %232, align 2, !tbaa !112
  %233 = add nsw i32 %219, 512
  %234 = ashr i32 %233, 10
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %226
  %237 = load i32, ptr %93, align 4, !tbaa !164
  %238 = tail call i32 @llvm.smin.i32(i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %236, %226
  %240 = phi i32 [ 0, %226 ], [ %238, %236 ]
  %241 = trunc i32 %240 to i16
  %242 = getelementptr inbounds i16, ptr %96, i64 %231
  store i16 %241, ptr %242, align 2, !tbaa !112
  %243 = add nsw i32 %211, %207
  %244 = mul nsw i32 %243, 20
  %245 = mul nsw i32 %217, -5
  %246 = getelementptr inbounds i32, ptr %98, i64 %203
  %247 = load i32, ptr %246, align 4, !tbaa !22
  %248 = add i32 %244, %205
  %249 = add i32 %248, %245
  %250 = add i32 %249, %247
  %251 = ashr i32 %250, 5
  %252 = add nsw i32 %207, 512
  %253 = ashr i32 %252, 10
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %239
  %256 = load i32, ptr %93, align 4, !tbaa !164
  %257 = tail call i32 @llvm.smin.i32(i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %255, %239
  %259 = phi i32 [ 0, %239 ], [ %257, %255 ]
  %260 = trunc i32 %259 to i16
  %261 = getelementptr inbounds i16, ptr %100, i64 %231
  store i16 %260, ptr %261, align 2, !tbaa !112
  %262 = add nsw i32 %251, 512
  %263 = ashr i32 %262, 10
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %258
  %266 = load i32, ptr %93, align 4, !tbaa !164
  %267 = tail call i32 @llvm.smin.i32(i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %265, %258
  %269 = phi i32 [ 0, %258 ], [ %267, %265 ]
  %270 = trunc i32 %269 to i16
  %271 = getelementptr inbounds i16, ptr %102, i64 %231
  store i16 %270, ptr %271, align 2, !tbaa !112
  br i1 %104, label %272, label %275

272:                                              ; preds = %268
  %273 = load ptr, ptr @img, align 8
  %274 = getelementptr inbounds i8, ptr %273, i64 90532
  br label %278

275:                                              ; preds = %332, %268
  %276 = load ptr, ptr @img, align 8
  %277 = getelementptr inbounds i8, ptr %276, i64 90532
  br label %341

278:                                              ; preds = %272, %332
  %279 = phi i32 [ %211, %272 ], [ %288, %332 ]
  %280 = phi i64 [ 2, %272 ], [ %284, %332 ]
  %281 = trunc nuw nsw i64 %280 to i32
  %282 = shl i32 %281, 2
  %283 = getelementptr inbounds ptr, ptr %84, i64 %280
  %284 = add nuw nsw i64 %280, 1
  %285 = getelementptr inbounds ptr, ptr %84, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = getelementptr inbounds i32, ptr %286, i64 %203
  %288 = load i32, ptr %287, align 4, !tbaa !22
  %289 = add nsw i32 %288, %279
  %290 = mul nsw i32 %289, 20
  %291 = getelementptr i8, ptr %283, i64 -8
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = getelementptr inbounds i32, ptr %292, i64 %203
  %294 = load i32, ptr %293, align 4, !tbaa !22
  %295 = getelementptr inbounds i8, ptr %283, i64 16
  %296 = load ptr, ptr %295, align 8, !tbaa !6
  %297 = getelementptr inbounds i32, ptr %296, i64 %203
  %298 = load i32, ptr %297, align 4, !tbaa !22
  %299 = add nsw i32 %298, %294
  %300 = mul nsw i32 %299, -5
  %301 = getelementptr i8, ptr %283, i64 -16
  %302 = load ptr, ptr %301, align 8, !tbaa !6
  %303 = getelementptr inbounds i32, ptr %302, i64 %203
  %304 = load i32, ptr %303, align 4, !tbaa !22
  %305 = getelementptr inbounds i8, ptr %283, i64 24
  %306 = load ptr, ptr %305, align 8, !tbaa !6
  %307 = getelementptr inbounds i32, ptr %306, i64 %203
  %308 = load i32, ptr %307, align 4, !tbaa !22
  %309 = add i32 %300, %290
  %310 = add i32 %309, %304
  %311 = add i32 %310, %308
  %312 = ashr i32 %311, 5
  %313 = add nsw i32 %279, 512
  %314 = ashr i32 %313, 10
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %278
  %317 = load i32, ptr %274, align 4, !tbaa !164
  %318 = tail call i32 @llvm.smin.i32(i32 %314, i32 %317)
  br label %319

319:                                              ; preds = %316, %278
  %320 = phi i32 [ 0, %278 ], [ %318, %316 ]
  %321 = trunc i32 %320 to i16
  %322 = sext i32 %282 to i64
  %323 = getelementptr inbounds ptr, ptr %69, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  %325 = getelementptr inbounds i16, ptr %324, i64 %231
  store i16 %321, ptr %325, align 2, !tbaa !112
  %326 = add nsw i32 %312, 512
  %327 = ashr i32 %326, 10
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %319
  %330 = load i32, ptr %274, align 4, !tbaa !164
  %331 = tail call i32 @llvm.smin.i32(i32 %327, i32 %330)
  br label %332

332:                                              ; preds = %329, %319
  %333 = phi i32 [ 0, %319 ], [ %331, %329 ]
  %334 = trunc i32 %333 to i16
  %335 = or disjoint i32 %282, 2
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %69, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !6
  %339 = getelementptr inbounds i16, ptr %338, i64 %231
  store i16 %334, ptr %339, align 2, !tbaa !112
  %340 = icmp eq i64 %284, %108
  br i1 %340, label %275, label %278

341:                                              ; preds = %275, %408
  %342 = phi i64 [ %106, %275 ], [ %349, %408 ]
  %343 = trunc nsw i64 %342 to i32
  %344 = shl i32 %343, 2
  %345 = getelementptr inbounds ptr, ptr %84, i64 %342
  %346 = load ptr, ptr %345, align 8, !tbaa !6
  %347 = getelementptr inbounds i32, ptr %346, i64 %203
  %348 = load i32, ptr %347, align 4, !tbaa !22
  %349 = add nsw i64 %342, 1
  %350 = trunc nsw i64 %349 to i32
  %351 = tail call i32 @llvm.smin.i32(i32 %4, i32 %350)
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds ptr, ptr %84, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds i32, ptr %354, i64 %203
  %356 = load i32, ptr %355, align 4, !tbaa !22
  %357 = add nsw i32 %356, %348
  %358 = mul nsw i32 %357, 20
  %359 = getelementptr i8, ptr %345, i64 -8
  %360 = load ptr, ptr %359, align 8, !tbaa !6
  %361 = getelementptr inbounds i32, ptr %360, i64 %203
  %362 = load i32, ptr %361, align 4, !tbaa !22
  %363 = trunc i64 %342 to i32
  %364 = add i32 %363, 2
  %365 = tail call i32 @llvm.smin.i32(i32 %4, i32 %364)
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds ptr, ptr %84, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !6
  %369 = getelementptr inbounds i32, ptr %368, i64 %203
  %370 = load i32, ptr %369, align 4, !tbaa !22
  %371 = add nsw i32 %370, %362
  %372 = mul nsw i32 %371, -5
  %373 = getelementptr i8, ptr %345, i64 -16
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = getelementptr inbounds i32, ptr %374, i64 %203
  %376 = load i32, ptr %375, align 4, !tbaa !22
  %377 = trunc i64 %342 to i32
  %378 = add i32 %377, 3
  %379 = tail call i32 @llvm.smin.i32(i32 %4, i32 %378)
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds ptr, ptr %84, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !6
  %383 = getelementptr inbounds i32, ptr %382, i64 %203
  %384 = load i32, ptr %383, align 4, !tbaa !22
  %385 = add i32 %372, %358
  %386 = add i32 %385, %376
  %387 = add i32 %386, %384
  %388 = ashr i32 %387, 5
  %389 = add nsw i32 %348, 512
  %390 = ashr i32 %389, 10
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %341
  %393 = load i32, ptr %277, align 4, !tbaa !164
  %394 = tail call i32 @llvm.smin.i32(i32 %390, i32 %393)
  br label %395

395:                                              ; preds = %392, %341
  %396 = phi i32 [ 0, %341 ], [ %394, %392 ]
  %397 = trunc i32 %396 to i16
  %398 = sext i32 %344 to i64
  %399 = getelementptr inbounds ptr, ptr %69, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds i16, ptr %400, i64 %231
  store i16 %397, ptr %401, align 2, !tbaa !112
  %402 = add nsw i32 %388, 512
  %403 = ashr i32 %402, 10
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %395
  %406 = load i32, ptr %277, align 4, !tbaa !164
  %407 = tail call i32 @llvm.smin.i32(i32 %403, i32 %406)
  br label %408

408:                                              ; preds = %405, %395
  %409 = phi i32 [ 0, %395 ], [ %407, %405 ]
  %410 = trunc i32 %409 to i16
  %411 = or disjoint i32 %344, 2
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds ptr, ptr %69, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !6
  %415 = getelementptr inbounds i16, ptr %414, i64 %231
  store i16 %410, ptr %415, align 2, !tbaa !112
  %416 = icmp slt i64 %342, %109
  br i1 %416, label %341, label %417

417:                                              ; preds = %408
  %418 = add nuw nsw i64 %203, 1
  %419 = icmp eq i64 %418, %107
  br i1 %419, label %420, label %202

420:                                              ; preds = %417, %77
  %421 = shl i32 %78, 2
  %422 = add i32 %421, 30
  %423 = shl i32 %79, 2
  %424 = add i32 %423, 28
  %425 = add i32 %423, 30
  %426 = add i32 %423, 32
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %450

428:                                              ; preds = %420
  %429 = add i32 %421, 28
  %430 = icmp sgt i32 %429, 0
  %431 = add i32 %421, 31
  %432 = icmp slt i32 %429, %431
  %433 = sext i32 %429 to i64
  %434 = zext nneg i32 %426 to i64
  %435 = or disjoint i64 %433, 2
  %436 = trunc nsw i64 %435 to i32
  %437 = tail call i32 @llvm.smin.i32(i32 %422, i32 %436)
  %438 = sext i32 %437 to i64
  %439 = or disjoint i64 %433, 1
  %440 = add i32 %421, 32
  %441 = tail call i32 @llvm.smin.i32(i32 %422, i32 %440)
  %442 = sext i32 %441 to i64
  %443 = or disjoint i64 %433, 3
  br label %444

444:                                              ; preds = %428, %542
  %445 = phi i64 [ 0, %428 ], [ %543, %542 ]
  br i1 %430, label %446, label %501

446:                                              ; preds = %444
  %447 = getelementptr inbounds ptr, ptr %69, i64 %445
  %448 = load ptr, ptr %447, align 8, !tbaa !6
  %449 = load i16, ptr %448, align 2, !tbaa !112
  br label %527

450:                                              ; preds = %542, %420
  %451 = add i32 %421, 32
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %721

453:                                              ; preds = %450
  %454 = icmp sgt i32 %424, 0
  %455 = add i32 %423, 31
  %456 = icmp slt i32 %424, %455
  %457 = sext i32 %424 to i64
  %458 = zext nneg i32 %451 to i64
  %459 = getelementptr inbounds ptr, ptr %69, i64 %457
  %460 = or disjoint i64 %457, 2
  %461 = trunc nsw i64 %460 to i32
  %462 = tail call i32 @llvm.smin.i32(i32 %425, i32 %461)
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds ptr, ptr %69, i64 %463
  %465 = or disjoint i64 %457, 1
  %466 = getelementptr inbounds ptr, ptr %69, i64 %465
  %467 = getelementptr inbounds ptr, ptr %69, i64 %460
  %468 = add i32 %423, 32
  %469 = tail call i32 @llvm.smin.i32(i32 %425, i32 %468)
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds ptr, ptr %69, i64 %470
  %472 = or disjoint i64 %457, 3
  %473 = getelementptr inbounds ptr, ptr %69, i64 %472
  %474 = getelementptr inbounds ptr, ptr %69, i64 %457
  %475 = or disjoint i64 %457, 2
  %476 = trunc nsw i64 %475 to i32
  %477 = tail call i32 @llvm.smin.i32(i32 %425, i32 %476)
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds ptr, ptr %69, i64 %478
  %480 = or disjoint i64 %457, 1
  %481 = getelementptr inbounds ptr, ptr %69, i64 %480
  %482 = add i32 %423, 32
  %483 = tail call i32 @llvm.smin.i32(i32 %425, i32 %482)
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds ptr, ptr %69, i64 %484
  %486 = getelementptr inbounds ptr, ptr %69, i64 %457
  %487 = or disjoint i64 %457, 2
  %488 = trunc nsw i64 %487 to i32
  %489 = tail call i32 @llvm.smin.i32(i32 %425, i32 %488)
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %69, i64 %490
  %492 = or disjoint i64 %457, 1
  %493 = getelementptr inbounds ptr, ptr %69, i64 %492
  %494 = getelementptr inbounds ptr, ptr %69, i64 %487
  %495 = add i32 %423, 32
  %496 = tail call i32 @llvm.smin.i32(i32 %425, i32 %495)
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds ptr, ptr %69, i64 %497
  %499 = or disjoint i64 %457, 3
  %500 = getelementptr inbounds ptr, ptr %69, i64 %499
  br label %554

501:                                              ; preds = %527, %444
  br i1 %432, label %502, label %542

502:                                              ; preds = %501
  %503 = getelementptr inbounds ptr, ptr %69, i64 %445
  %504 = load ptr, ptr %503, align 8, !tbaa !6
  %505 = getelementptr inbounds i16, ptr %504, i64 %433
  %506 = load i16, ptr %505, align 2, !tbaa !112
  %507 = zext i16 %506 to i32
  %508 = getelementptr inbounds i16, ptr %504, i64 %438
  %509 = load i16, ptr %508, align 2, !tbaa !112
  %510 = zext i16 %509 to i32
  %511 = add nuw nsw i32 %507, 1
  %512 = add nuw nsw i32 %511, %510
  %513 = lshr i32 %512, 1
  %514 = trunc nuw i32 %513 to i16
  %515 = getelementptr inbounds i16, ptr %504, i64 %439
  store i16 %514, ptr %515, align 2, !tbaa !112
  %516 = getelementptr inbounds i16, ptr %504, i64 %435
  %517 = load i16, ptr %516, align 2, !tbaa !112
  %518 = zext i16 %517 to i32
  %519 = getelementptr inbounds i16, ptr %504, i64 %442
  %520 = load i16, ptr %519, align 2, !tbaa !112
  %521 = zext i16 %520 to i32
  %522 = add nuw nsw i32 %518, 1
  %523 = add nuw nsw i32 %522, %521
  %524 = lshr i32 %523, 1
  %525 = trunc nuw i32 %524 to i16
  %526 = getelementptr inbounds i16, ptr %504, i64 %443
  store i16 %525, ptr %526, align 2, !tbaa !112
  br label %542

527:                                              ; preds = %446, %527
  %528 = phi i16 [ %449, %446 ], [ %533, %527 ]
  %529 = phi i64 [ 0, %446 ], [ %531, %527 ]
  %530 = zext i16 %528 to i32
  %531 = add nuw nsw i64 %529, 2
  %532 = getelementptr inbounds i16, ptr %448, i64 %531
  %533 = load i16, ptr %532, align 2, !tbaa !112
  %534 = zext i16 %533 to i32
  %535 = add nuw nsw i32 %530, 1
  %536 = add nuw nsw i32 %535, %534
  %537 = lshr i32 %536, 1
  %538 = trunc nuw i32 %537 to i16
  %539 = or disjoint i64 %529, 1
  %540 = getelementptr inbounds i16, ptr %448, i64 %539
  store i16 %538, ptr %540, align 2, !tbaa !112
  %541 = icmp slt i64 %531, %433
  br i1 %541, label %527, label %501

542:                                              ; preds = %502, %501
  %543 = add nuw nsw i64 %445, 2
  %544 = icmp ult i64 %543, %434
  br i1 %544, label %444, label %450

545:                                              ; preds = %696, %685, %670
  %546 = phi ptr [ %684, %670 ], [ %473, %685 ], [ %500, %696 ]
  %547 = phi i32 [ %682, %670 ], [ %695, %685 ], [ %720, %696 ]
  %548 = lshr i32 %547, 1
  %549 = trunc i32 %548 to i16
  %550 = load ptr, ptr %546, align 8, !tbaa !6
  %551 = getelementptr inbounds i16, ptr %550, i64 %555
  store i16 %549, ptr %551, align 2, !tbaa !112
  br label %552

552:                                              ; preds = %545, %568
  %553 = icmp eq i64 %556, %458
  br i1 %553, label %721, label %554

554:                                              ; preds = %453, %552
  %555 = phi i64 [ 0, %453 ], [ %556, %552 ]
  %556 = add nuw nsw i64 %555, 1
  %557 = trunc nuw nsw i64 %556 to i32
  %558 = tail call i32 @llvm.smin.i32(i32 %422, i32 %557)
  %559 = add nsw i64 %555, -1
  br i1 %454, label %560, label %568

560:                                              ; preds = %554
  %561 = trunc nuw nsw i64 %555 to i32
  %562 = and i32 %561, 1
  %563 = icmp eq i32 %562, 0
  %564 = and i32 %561, 3
  %565 = icmp eq i32 %564, 1
  %566 = icmp eq i32 %564, 3
  %567 = sext i32 %558 to i64
  br label %576

568:                                              ; preds = %635, %554
  br i1 %456, label %569, label %552

569:                                              ; preds = %568
  %570 = trunc nuw nsw i64 %555 to i32
  %571 = and i32 %570, 1
  %572 = icmp eq i32 %571, 0
  %573 = and i32 %570, 3
  %574 = icmp eq i32 %573, 3
  %575 = sext i32 %558 to i64
  br i1 %572, label %696, label %638

576:                                              ; preds = %560, %635
  %577 = phi i64 [ 0, %560 ], [ %636, %635 ]
  br i1 %563, label %578, label %597

578:                                              ; preds = %576
  %579 = getelementptr inbounds ptr, ptr %69, i64 %577
  %580 = load ptr, ptr %579, align 8, !tbaa !6
  %581 = getelementptr inbounds i16, ptr %580, i64 %555
  %582 = load i16, ptr %581, align 2, !tbaa !112
  %583 = zext i16 %582 to i32
  %584 = getelementptr inbounds i8, ptr %579, i64 16
  %585 = load ptr, ptr %584, align 8, !tbaa !6
  %586 = getelementptr inbounds i16, ptr %585, i64 %555
  %587 = load i16, ptr %586, align 2, !tbaa !112
  %588 = zext i16 %587 to i32
  %589 = add nuw nsw i32 %583, 1
  %590 = add nuw nsw i32 %589, %588
  %591 = lshr i32 %590, 1
  %592 = trunc nuw i32 %591 to i16
  %593 = or disjoint i64 %577, 1
  %594 = getelementptr inbounds ptr, ptr %69, i64 %593
  %595 = load ptr, ptr %594, align 8, !tbaa !6
  %596 = getelementptr inbounds i16, ptr %595, i64 %555
  store i16 %592, ptr %596, align 2, !tbaa !112
  br label %635

597:                                              ; preds = %576
  %598 = trunc nuw nsw i64 %577 to i32
  %599 = and i32 %598, 2
  %600 = icmp eq i32 %599, 0
  %601 = and i1 %565, %600
  %602 = icmp ne i32 %599, 0
  %603 = and i1 %566, %602
  %604 = or i1 %601, %603
  %605 = getelementptr inbounds ptr, ptr %69, i64 %577
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = getelementptr inbounds i8, ptr %605, i64 16
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = or disjoint i64 %577, 1
  %610 = getelementptr inbounds ptr, ptr %69, i64 %609
  %611 = load ptr, ptr %610, align 8, !tbaa !6
  %612 = getelementptr inbounds i16, ptr %611, i64 %555
  br i1 %604, label %613, label %624

613:                                              ; preds = %597
  %614 = getelementptr inbounds i16, ptr %606, i64 %567
  %615 = load i16, ptr %614, align 2, !tbaa !112
  %616 = zext i16 %615 to i32
  %617 = getelementptr inbounds i16, ptr %608, i64 %559
  %618 = load i16, ptr %617, align 2, !tbaa !112
  %619 = zext i16 %618 to i32
  %620 = add nuw nsw i32 %616, 1
  %621 = add nuw nsw i32 %620, %619
  %622 = lshr i32 %621, 1
  %623 = trunc nuw i32 %622 to i16
  store i16 %623, ptr %612, align 2, !tbaa !112
  br label %635

624:                                              ; preds = %597
  %625 = getelementptr inbounds i16, ptr %606, i64 %559
  %626 = load i16, ptr %625, align 2, !tbaa !112
  %627 = zext i16 %626 to i32
  %628 = getelementptr inbounds i16, ptr %608, i64 %567
  %629 = load i16, ptr %628, align 2, !tbaa !112
  %630 = zext i16 %629 to i32
  %631 = add nuw nsw i32 %627, 1
  %632 = add nuw nsw i32 %631, %630
  %633 = lshr i32 %632, 1
  %634 = trunc nuw i32 %633 to i16
  store i16 %634, ptr %612, align 2, !tbaa !112
  br label %635

635:                                              ; preds = %578, %624, %613
  %636 = add nuw nsw i64 %577, 2
  %637 = icmp slt i64 %636, %457
  br i1 %637, label %576, label %568

638:                                              ; preds = %569
  %639 = icmp eq i32 %573, 1
  br i1 %639, label %640, label %655

640:                                              ; preds = %638
  %641 = load ptr, ptr %474, align 8, !tbaa !6
  %642 = getelementptr inbounds i16, ptr %641, i64 %575
  %643 = load i16, ptr %642, align 2, !tbaa !112
  %644 = zext i16 %643 to i32
  %645 = load ptr, ptr %479, align 8, !tbaa !6
  %646 = getelementptr inbounds i16, ptr %645, i64 %559
  %647 = load i16, ptr %646, align 2, !tbaa !112
  %648 = zext i16 %647 to i32
  %649 = add nuw nsw i32 %644, 1
  %650 = add nuw nsw i32 %649, %648
  %651 = lshr i32 %650, 1
  %652 = trunc nuw i32 %651 to i16
  %653 = load ptr, ptr %481, align 8, !tbaa !6
  %654 = getelementptr inbounds i16, ptr %653, i64 %555
  store i16 %652, ptr %654, align 2, !tbaa !112
  br label %670

655:                                              ; preds = %638
  %656 = load ptr, ptr %459, align 8, !tbaa !6
  %657 = getelementptr inbounds i16, ptr %656, i64 %559
  %658 = load i16, ptr %657, align 2, !tbaa !112
  %659 = zext i16 %658 to i32
  %660 = load ptr, ptr %464, align 8, !tbaa !6
  %661 = getelementptr inbounds i16, ptr %660, i64 %575
  %662 = load i16, ptr %661, align 2, !tbaa !112
  %663 = zext i16 %662 to i32
  %664 = add nuw nsw i32 %659, 1
  %665 = add nuw nsw i32 %664, %663
  %666 = lshr i32 %665, 1
  %667 = trunc nuw i32 %666 to i16
  %668 = load ptr, ptr %466, align 8, !tbaa !6
  %669 = getelementptr inbounds i16, ptr %668, i64 %555
  store i16 %667, ptr %669, align 2, !tbaa !112
  br i1 %574, label %685, label %670

670:                                              ; preds = %640, %655
  %671 = phi i64 [ %475, %640 ], [ %460, %655 ]
  %672 = getelementptr inbounds ptr, ptr %69, i64 %671
  %673 = load ptr, ptr %672, align 8, !tbaa !6
  %674 = getelementptr inbounds i16, ptr %673, i64 %559
  %675 = load i16, ptr %674, align 2, !tbaa !112
  %676 = zext i16 %675 to i32
  %677 = load ptr, ptr %485, align 8, !tbaa !6
  %678 = getelementptr inbounds i16, ptr %677, i64 %575
  %679 = load i16, ptr %678, align 2, !tbaa !112
  %680 = zext i16 %679 to i32
  %681 = add nuw nsw i32 %676, 1
  %682 = add nuw nsw i32 %681, %680
  %683 = or disjoint i64 %671, 1
  %684 = getelementptr inbounds ptr, ptr %69, i64 %683
  br label %545

685:                                              ; preds = %655
  %686 = load ptr, ptr %467, align 8, !tbaa !6
  %687 = getelementptr inbounds i16, ptr %686, i64 %575
  %688 = load i16, ptr %687, align 2, !tbaa !112
  %689 = zext i16 %688 to i32
  %690 = load ptr, ptr %471, align 8, !tbaa !6
  %691 = getelementptr inbounds i16, ptr %690, i64 %559
  %692 = load i16, ptr %691, align 2, !tbaa !112
  %693 = zext i16 %692 to i32
  %694 = add nuw nsw i32 %689, 1
  %695 = add nuw nsw i32 %694, %693
  br label %545

696:                                              ; preds = %569
  %697 = load ptr, ptr %486, align 8, !tbaa !6
  %698 = getelementptr inbounds i16, ptr %697, i64 %555
  %699 = load i16, ptr %698, align 2, !tbaa !112
  %700 = zext i16 %699 to i32
  %701 = load ptr, ptr %491, align 8, !tbaa !6
  %702 = getelementptr inbounds i16, ptr %701, i64 %555
  %703 = load i16, ptr %702, align 2, !tbaa !112
  %704 = zext i16 %703 to i32
  %705 = add nuw nsw i32 %700, 1
  %706 = add nuw nsw i32 %705, %704
  %707 = lshr i32 %706, 1
  %708 = trunc nuw i32 %707 to i16
  %709 = load ptr, ptr %493, align 8, !tbaa !6
  %710 = getelementptr inbounds i16, ptr %709, i64 %555
  store i16 %708, ptr %710, align 2, !tbaa !112
  %711 = load ptr, ptr %494, align 8, !tbaa !6
  %712 = getelementptr inbounds i16, ptr %711, i64 %555
  %713 = load i16, ptr %712, align 2, !tbaa !112
  %714 = zext i16 %713 to i32
  %715 = load ptr, ptr %498, align 8, !tbaa !6
  %716 = getelementptr inbounds i16, ptr %715, i64 %555
  %717 = load i16, ptr %716, align 2, !tbaa !112
  %718 = zext i16 %717 to i32
  %719 = add nuw nsw i32 %714, 1
  %720 = add nuw nsw i32 %719, %718
  br label %545

721:                                              ; preds = %552, %450
  %722 = icmp sgt i32 %79, 0
  br i1 %722, label %723, label %752

723:                                              ; preds = %721
  %724 = icmp sgt i32 %78, 0
  %725 = zext i32 %78 to i64
  %726 = zext nneg i32 %79 to i64
  br label %727

727:                                              ; preds = %749, %723
  %728 = phi i64 [ 0, %723 ], [ %750, %749 ]
  %729 = mul nuw nsw i64 %728, %725
  br i1 %724, label %730, label %749

730:                                              ; preds = %727
  %731 = trunc nuw nsw i64 %728 to i32
  %732 = shl i32 %731, 2
  %733 = add i32 %732, 16
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds ptr, ptr %69, i64 %734
  br label %736

736:                                              ; preds = %736, %730
  %737 = phi i64 [ 0, %730 ], [ %747, %736 ]
  %738 = add nuw nsw i64 %737, %729
  %739 = load ptr, ptr %735, align 8, !tbaa !6
  %740 = trunc nuw nsw i64 %737 to i32
  %741 = shl i32 %740, 2
  %742 = add i32 %741, 16
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i16, ptr %739, i64 %743
  %745 = load i16, ptr %744, align 2, !tbaa !112
  %746 = trunc i64 %738 to i32
  tail call void @PutPel_11(ptr noundef %70, i32 noundef signext %746, i16 noundef zeroext %745) #17
  %747 = add nuw nsw i64 %737, 1
  %748 = icmp eq i64 %747, %725
  br i1 %748, label %749, label %736

749:                                              ; preds = %736, %727
  %750 = add nuw nsw i64 %728, 1
  %751 = icmp eq i64 %750, %726
  br i1 %751, label %752, label %727

752:                                              ; preds = %749, %721, %1, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @get_mem2Dpel(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef signext i32 @dummy_slice_too_big(i32 noundef signext %0) local_unnamed_addr #8 {
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @copy_rdopt_data(i32 noundef signext %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 12
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %2, i64 31576
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %7
  %9 = getelementptr inbounds i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !30
  %11 = icmp eq i32 %10, 1
  %12 = getelementptr inbounds i8, ptr %8, i64 428
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 1640
  %16 = load i32, ptr %15, align 8, !tbaa !252
  %17 = getelementptr inbounds i8, ptr %14, i64 1560
  %18 = load i32, ptr %17, align 8, !tbaa !254
  %19 = getelementptr inbounds i8, ptr %8, i64 72
  store i32 %18, ptr %19, align 8, !tbaa !255
  %20 = getelementptr inbounds i8, ptr %14, i64 1624
  %21 = load i32, ptr %20, align 8, !tbaa !256
  %22 = getelementptr inbounds i8, ptr %8, i64 364
  store i32 %21, ptr %22, align 4, !tbaa !257
  %23 = getelementptr inbounds i8, ptr %14, i64 1632
  %24 = load i64, ptr %23, align 8, !tbaa !258
  %25 = getelementptr inbounds i8, ptr %8, i64 368
  store i64 %24, ptr %25, align 8, !tbaa !259
  %26 = getelementptr inbounds i8, ptr %14, i64 1564
  %27 = load i16, ptr %26, align 4, !tbaa !260
  %28 = getelementptr inbounds i8, ptr %8, i64 476
  store i16 %27, ptr %28, align 4, !tbaa !261
  %29 = getelementptr inbounds i8, ptr %14, i64 1696
  %30 = load i32, ptr %29, align 8, !tbaa !262
  %31 = getelementptr inbounds i8, ptr %2, i64 90196
  store i32 %30, ptr %31, align 4, !tbaa !263
  %32 = getelementptr inbounds i8, ptr %14, i64 1716
  %33 = load i32, ptr %32, align 4, !tbaa !264
  %34 = getelementptr inbounds i8, ptr %8, i64 488
  store i32 %33, ptr %34, align 8, !tbaa !265
  %35 = getelementptr inbounds i8, ptr %14, i64 1720
  %36 = load i32, ptr %35, align 8, !tbaa !266
  %37 = getelementptr inbounds i8, ptr %8, i64 492
  store i32 %36, ptr %37, align 4, !tbaa !267
  %38 = getelementptr inbounds i8, ptr %14, i64 1728
  %39 = load i32, ptr %38, align 8, !tbaa !268
  %40 = getelementptr inbounds i8, ptr %8, i64 496
  store i32 %39, ptr %40, align 8, !tbaa !269
  %41 = getelementptr inbounds i8, ptr %14, i64 1724
  %42 = load i32, ptr %41, align 4, !tbaa !270
  %43 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 %42, ptr %43, align 8, !tbaa !271
  %44 = getelementptr inbounds i8, ptr %14, i64 1712
  %45 = load i32, ptr %44, align 8, !tbaa !272
  %46 = getelementptr inbounds i8, ptr %8, i64 12
  store i32 %45, ptr %46, align 4, !tbaa !273
  %47 = getelementptr inbounds i8, ptr %14, i64 1700
  %48 = load i32, ptr %47, align 4, !tbaa !274
  %49 = getelementptr inbounds i8, ptr %8, i64 416
  store i32 %48, ptr %49, align 8, !tbaa !275
  %50 = getelementptr inbounds i8, ptr %2, i64 90540
  %51 = load i32, ptr %50, align 4, !tbaa !276
  %52 = icmp sgt i32 %51, -4
  br i1 %52, label %53, label %196

53:                                               ; preds = %1, %53
  %54 = phi ptr [ %188, %53 ], [ %2, %1 ]
  %55 = phi i64 [ %187, %53 ], [ 0, %1 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 14136
  %57 = load ptr, ptr %56, align 8, !tbaa !277
  %58 = getelementptr inbounds ptr, ptr %57, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %62, i64 1544
  %64 = load ptr, ptr %63, align 8, !tbaa !278
  %65 = getelementptr inbounds ptr, ptr %64, i64 %55
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %61, ptr noundef nonnull align 4 dereferenceable(260) %68, i64 260, i1 false)
  %69 = load ptr, ptr @img, align 8, !tbaa !6
  %70 = getelementptr inbounds i8, ptr %69, i64 14136
  %71 = load ptr, ptr %70, align 8, !tbaa !277
  %72 = getelementptr inbounds ptr, ptr %71, i64 %55
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 8
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %77, i64 1544
  %79 = load ptr, ptr %78, align 8, !tbaa !278
  %80 = getelementptr inbounds ptr, ptr %79, i64 %55
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %76, ptr noundef nonnull align 4 dereferenceable(260) %84, i64 260, i1 false)
  %85 = load ptr, ptr @img, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 14136
  %87 = load ptr, ptr %86, align 8, !tbaa !277
  %88 = getelementptr inbounds ptr, ptr %87, i64 %55
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 8
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 1544
  %95 = load ptr, ptr %94, align 8, !tbaa !278
  %96 = getelementptr inbounds ptr, ptr %95, i64 %55
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %92, ptr noundef nonnull align 4 dereferenceable(260) %100, i64 260, i1 false)
  %101 = load ptr, ptr @img, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 14136
  %103 = load ptr, ptr %102, align 8, !tbaa !277
  %104 = getelementptr inbounds ptr, ptr %103, i64 %55
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 8
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %110, i64 1544
  %112 = load ptr, ptr %111, align 8, !tbaa !278
  %113 = getelementptr inbounds ptr, ptr %112, i64 %55
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %114, i64 8
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 8
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %109, ptr noundef nonnull align 4 dereferenceable(260) %118, i64 260, i1 false)
  %119 = load ptr, ptr @img, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %119, i64 14136
  %121 = load ptr, ptr %120, align 8, !tbaa !277
  %122 = getelementptr inbounds ptr, ptr %121, i64 %55
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 16
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %128 = getelementptr inbounds i8, ptr %127, i64 1544
  %129 = load ptr, ptr %128, align 8, !tbaa !278
  %130 = getelementptr inbounds ptr, ptr %129, i64 %55
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %131, i64 16
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %126, ptr noundef nonnull align 4 dereferenceable(260) %134, i64 260, i1 false)
  %135 = load ptr, ptr @img, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 14136
  %137 = load ptr, ptr %136, align 8, !tbaa !277
  %138 = getelementptr inbounds ptr, ptr %137, i64 %55
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 16
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 8
  %143 = load ptr, ptr %142, align 8, !tbaa !6
  %144 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 1544
  %146 = load ptr, ptr %145, align 8, !tbaa !278
  %147 = getelementptr inbounds ptr, ptr %146, i64 %55
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %148, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds i8, ptr %150, i64 8
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %143, ptr noundef nonnull align 4 dereferenceable(260) %152, i64 260, i1 false)
  %153 = load ptr, ptr @img, align 8, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %153, i64 14136
  %155 = load ptr, ptr %154, align 8, !tbaa !277
  %156 = getelementptr inbounds ptr, ptr %155, i64 %55
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %157, i64 24
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 1544
  %163 = load ptr, ptr %162, align 8, !tbaa !278
  %164 = getelementptr inbounds ptr, ptr %163, i64 %55
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = getelementptr inbounds i8, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %160, ptr noundef nonnull align 4 dereferenceable(260) %168, i64 260, i1 false)
  %169 = load ptr, ptr @img, align 8, !tbaa !6
  %170 = getelementptr inbounds i8, ptr %169, i64 14136
  %171 = load ptr, ptr %170, align 8, !tbaa !277
  %172 = getelementptr inbounds ptr, ptr %171, i64 %55
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds i8, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 8
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %179 = getelementptr inbounds i8, ptr %178, i64 1544
  %180 = load ptr, ptr %179, align 8, !tbaa !278
  %181 = getelementptr inbounds ptr, ptr %180, i64 %55
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %182, i64 24
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 8
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %177, ptr noundef nonnull align 4 dereferenceable(260) %186, i64 260, i1 false)
  %187 = add nuw nsw i64 %55, 1
  %188 = load ptr, ptr @img, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 90540
  %190 = load i32, ptr %189, align 4, !tbaa !276
  %191 = add nsw i32 %190, 3
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %55, %192
  br i1 %193, label %53, label %194

194:                                              ; preds = %53
  %195 = load ptr, ptr @rdopt, align 8, !tbaa !6
  br label %196

196:                                              ; preds = %194, %1
  %197 = phi ptr [ %195, %194 ], [ %14, %1 ]
  %198 = phi ptr [ %188, %194 ], [ %2, %1 ]
  %199 = getelementptr inbounds i8, ptr %198, i64 14144
  %200 = load ptr, ptr %199, align 8, !tbaa !279
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %197, i64 1552
  %204 = load ptr, ptr %203, align 8, !tbaa !280
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %202, ptr noundef nonnull align 4 dereferenceable(72) %206, i64 72, i1 false)
  %207 = load ptr, ptr @img, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 14144
  %209 = load ptr, ptr %208, align 8, !tbaa !279
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds i8, ptr %210, i64 8
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %214 = getelementptr inbounds i8, ptr %213, i64 1552
  %215 = load ptr, ptr %214, align 8, !tbaa !280
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %216, i64 8
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %212, ptr noundef nonnull align 4 dereferenceable(72) %218, i64 72, i1 false)
  %219 = load ptr, ptr @img, align 8, !tbaa !6
  %220 = getelementptr inbounds i8, ptr %219, i64 14144
  %221 = load ptr, ptr %220, align 8, !tbaa !279
  %222 = getelementptr inbounds i8, ptr %221, i64 8
  %223 = load ptr, ptr %222, align 8, !tbaa !6
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %226 = getelementptr inbounds i8, ptr %225, i64 1552
  %227 = load ptr, ptr %226, align 8, !tbaa !280
  %228 = getelementptr inbounds i8, ptr %227, i64 8
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %224, ptr noundef nonnull align 4 dereferenceable(72) %230, i64 72, i1 false)
  %231 = load ptr, ptr @img, align 8, !tbaa !6
  %232 = getelementptr inbounds i8, ptr %231, i64 14144
  %233 = load ptr, ptr %232, align 8, !tbaa !279
  %234 = getelementptr inbounds i8, ptr %233, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds i8, ptr %235, i64 8
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %239 = getelementptr inbounds i8, ptr %238, i64 1552
  %240 = load ptr, ptr %239, align 8, !tbaa !280
  %241 = getelementptr inbounds i8, ptr %240, i64 8
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = getelementptr inbounds i8, ptr %242, i64 8
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %237, ptr noundef nonnull align 4 dereferenceable(72) %244, i64 72, i1 false)
  %245 = load ptr, ptr @img, align 8, !tbaa !6
  %246 = getelementptr inbounds i8, ptr %245, i64 14144
  %247 = load ptr, ptr %246, align 8, !tbaa !279
  %248 = getelementptr inbounds i8, ptr %247, i64 16
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %252 = getelementptr inbounds i8, ptr %251, i64 1552
  %253 = load ptr, ptr %252, align 8, !tbaa !280
  %254 = getelementptr inbounds i8, ptr %253, i64 16
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %250, ptr noundef nonnull align 4 dereferenceable(72) %256, i64 72, i1 false)
  %257 = load ptr, ptr @img, align 8, !tbaa !6
  %258 = getelementptr inbounds i8, ptr %257, i64 14144
  %259 = load ptr, ptr %258, align 8, !tbaa !279
  %260 = getelementptr inbounds i8, ptr %259, i64 16
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 8
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %265 = getelementptr inbounds i8, ptr %264, i64 1552
  %266 = load ptr, ptr %265, align 8, !tbaa !280
  %267 = getelementptr inbounds i8, ptr %266, i64 16
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds i8, ptr %268, i64 8
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %263, ptr noundef nonnull align 4 dereferenceable(72) %270, i64 72, i1 false)
  %271 = sext i32 %13 to i64
  %272 = load ptr, ptr @img, align 8, !tbaa !6
  %273 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %273, i64 6480
  %275 = load ptr, ptr %274, align 8, !tbaa !281
  %276 = load ptr, ptr %275, align 8, !tbaa !6
  %277 = getelementptr inbounds i8, ptr %272, i64 144
  %278 = load i32, ptr %277, align 8, !tbaa !282
  br label %279

279:                                              ; preds = %196, %279
  %280 = phi i32 [ %278, %196 ], [ %306, %279 ]
  %281 = phi ptr [ %276, %196 ], [ %301, %279 ]
  %282 = phi ptr [ %272, %196 ], [ %304, %279 ]
  %283 = phi i64 [ 0, %196 ], [ %340, %279 ]
  %284 = getelementptr inbounds i8, ptr %282, i64 148
  %285 = load i32, ptr %284, align 4, !tbaa !283
  %286 = trunc nuw nsw i64 %283 to i32
  %287 = add nsw i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds ptr, ptr %281, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = sext i32 %280 to i64
  %292 = getelementptr inbounds i8, ptr %290, i64 %291
  %293 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %294 = getelementptr inbounds i8, ptr %293, i64 1664
  %295 = getelementptr inbounds [4 x [4 x i8]], ptr %294, i64 0, i64 %283
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %292, align 1
  %297 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %298 = getelementptr inbounds i8, ptr %297, i64 24
  %299 = getelementptr inbounds i8, ptr %297, i64 6480
  %300 = load ptr, ptr %299, align 8, !tbaa !281
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = getelementptr inbounds ptr, ptr %301, i64 %288
  %303 = load ptr, ptr %302, align 8, !tbaa !6
  %304 = load ptr, ptr @img, align 8, !tbaa !6
  %305 = getelementptr inbounds i8, ptr %304, i64 144
  %306 = load i32, ptr %305, align 8, !tbaa !282
  %307 = getelementptr inbounds i8, ptr %297, i64 6488
  %308 = load ptr, ptr %307, align 8, !tbaa !284
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = getelementptr inbounds ptr, ptr %309, i64 %288
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = sext i32 %306 to i64
  %313 = getelementptr inbounds i8, ptr %303, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !21
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds [6 x [33 x i64]], ptr %298, i64 0, i64 %271, i64 %315
  %317 = load i64, ptr %316, align 8, !tbaa !285
  %318 = getelementptr inbounds i64, ptr %311, i64 %312
  store i64 %317, ptr %318, align 8, !tbaa !285
  %319 = add nsw i64 %312, 1
  %320 = getelementptr inbounds i8, ptr %303, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !21
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds [6 x [33 x i64]], ptr %298, i64 0, i64 %271, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !285
  %325 = getelementptr inbounds i64, ptr %311, i64 %319
  store i64 %324, ptr %325, align 8, !tbaa !285
  %326 = add nsw i64 %312, 2
  %327 = getelementptr inbounds i8, ptr %303, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !21
  %329 = zext i8 %328 to i64
  %330 = getelementptr inbounds [6 x [33 x i64]], ptr %298, i64 0, i64 %271, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !285
  %332 = getelementptr inbounds i64, ptr %311, i64 %326
  store i64 %331, ptr %332, align 8, !tbaa !285
  %333 = add nsw i64 %312, 3
  %334 = getelementptr inbounds i8, ptr %303, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !21
  %336 = zext i8 %335 to i64
  %337 = getelementptr inbounds [6 x [33 x i64]], ptr %298, i64 0, i64 %271, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !285
  %339 = getelementptr inbounds i64, ptr %311, i64 %333
  store i64 %338, ptr %339, align 8, !tbaa !285
  %340 = add nuw nsw i64 %283, 1
  %341 = icmp eq i64 %340, 4
  br i1 %341, label %342, label %279

342:                                              ; preds = %279
  br i1 %11, label %343, label %413

343:                                              ; preds = %342
  %344 = add nsw i32 %13, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, ptr %300, i64 8
  %347 = load ptr, ptr %346, align 8, !tbaa !6
  br label %348

348:                                              ; preds = %343, %348
  %349 = phi i32 [ %306, %343 ], [ %376, %348 ]
  %350 = phi ptr [ %347, %343 ], [ %371, %348 ]
  %351 = phi ptr [ %304, %343 ], [ %374, %348 ]
  %352 = phi i64 [ 0, %343 ], [ %411, %348 ]
  %353 = getelementptr inbounds i8, ptr %351, i64 148
  %354 = load i32, ptr %353, align 4, !tbaa !283
  %355 = trunc nuw nsw i64 %352 to i32
  %356 = add nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds ptr, ptr %350, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = sext i32 %349 to i64
  %361 = getelementptr inbounds i8, ptr %359, i64 %360
  %362 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %363 = getelementptr inbounds i8, ptr %362, i64 1680
  %364 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 %352
  %365 = load i32, ptr %364, align 4
  store i32 %365, ptr %361, align 1
  %366 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %367 = getelementptr inbounds i8, ptr %366, i64 24
  %368 = getelementptr inbounds i8, ptr %366, i64 6480
  %369 = load ptr, ptr %368, align 8, !tbaa !281
  %370 = getelementptr inbounds i8, ptr %369, i64 8
  %371 = load ptr, ptr %370, align 8, !tbaa !6
  %372 = getelementptr inbounds ptr, ptr %371, i64 %357
  %373 = load ptr, ptr %372, align 8, !tbaa !6
  %374 = load ptr, ptr @img, align 8, !tbaa !6
  %375 = getelementptr inbounds i8, ptr %374, i64 144
  %376 = load i32, ptr %375, align 8, !tbaa !282
  %377 = getelementptr inbounds i8, ptr %366, i64 6488
  %378 = load ptr, ptr %377, align 8, !tbaa !284
  %379 = getelementptr inbounds i8, ptr %378, i64 8
  %380 = load ptr, ptr %379, align 8, !tbaa !6
  %381 = getelementptr inbounds ptr, ptr %380, i64 %357
  %382 = load ptr, ptr %381, align 8, !tbaa !6
  %383 = sext i32 %376 to i64
  %384 = getelementptr inbounds i8, ptr %373, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !21
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds [6 x [33 x i64]], ptr %367, i64 0, i64 %345, i64 %386
  %388 = load i64, ptr %387, align 8, !tbaa !285
  %389 = getelementptr inbounds i64, ptr %382, i64 %383
  store i64 %388, ptr %389, align 8, !tbaa !285
  %390 = add nsw i64 %383, 1
  %391 = getelementptr inbounds i8, ptr %373, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !21
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds [6 x [33 x i64]], ptr %367, i64 0, i64 %345, i64 %393
  %395 = load i64, ptr %394, align 8, !tbaa !285
  %396 = getelementptr inbounds i64, ptr %382, i64 %390
  store i64 %395, ptr %396, align 8, !tbaa !285
  %397 = add nsw i64 %383, 2
  %398 = getelementptr inbounds i8, ptr %373, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !21
  %400 = zext i8 %399 to i64
  %401 = getelementptr inbounds [6 x [33 x i64]], ptr %367, i64 0, i64 %345, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !285
  %403 = getelementptr inbounds i64, ptr %382, i64 %397
  store i64 %402, ptr %403, align 8, !tbaa !285
  %404 = add nsw i64 %383, 3
  %405 = getelementptr inbounds i8, ptr %373, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !21
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds [6 x [33 x i64]], ptr %367, i64 0, i64 %345, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !285
  %410 = getelementptr inbounds i64, ptr %382, i64 %404
  store i64 %409, ptr %410, align 8, !tbaa !285
  %411 = add nuw nsw i64 %352, 1
  %412 = icmp eq i64 %411, 4
  br i1 %412, label %413, label %348

413:                                              ; preds = %348, %342
  %414 = phi ptr [ %297, %342 ], [ %366, %348 ]
  %415 = getelementptr inbounds i8, ptr %414, i64 6424
  br label %416

416:                                              ; preds = %413, %416
  %417 = phi i64 [ 0, %413 ], [ %434, %416 ]
  %418 = load ptr, ptr %415, align 8, !tbaa !10
  %419 = load ptr, ptr @img, align 8, !tbaa !6
  %420 = getelementptr inbounds i8, ptr %419, i64 156
  %421 = load i32, ptr %420, align 4, !tbaa !286
  %422 = trunc nuw nsw i64 %417 to i32
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %418, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !6
  %427 = getelementptr inbounds i8, ptr %419, i64 152
  %428 = load i32, ptr %427, align 8, !tbaa !287
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i16, ptr %426, i64 %429
  %431 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %432 = getelementptr inbounds i8, ptr %431, i64 8
  %433 = getelementptr inbounds [16 x [16 x i16]], ptr %432, i64 0, i64 %417
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %430, ptr noundef nonnull align 8 dereferenceable(32) %433, i64 32, i1 false)
  %434 = add nuw nsw i64 %417, 1
  %435 = icmp eq i64 %434, 16
  br i1 %435, label %436, label %416

436:                                              ; preds = %416
  %437 = load ptr, ptr @img, align 8, !tbaa !6
  %438 = getelementptr inbounds i8, ptr %437, i64 90548
  %439 = load i32, ptr %438, align 4, !tbaa !14
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %499, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds i8, ptr %437, i64 90560
  %443 = load i32, ptr %442, align 8, !tbaa !24
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %499

445:                                              ; preds = %441, %445
  %446 = phi i64 [ %493, %445 ], [ 0, %441 ]
  %447 = phi ptr [ %494, %445 ], [ %437, %441 ]
  %448 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %449 = getelementptr inbounds i8, ptr %448, i64 6464
  %450 = load ptr, ptr %449, align 8, !tbaa !13
  %451 = load ptr, ptr %450, align 8, !tbaa !6
  %452 = getelementptr inbounds i8, ptr %447, i64 164
  %453 = load i32, ptr %452, align 4, !tbaa !288
  %454 = trunc nuw nsw i64 %446 to i32
  %455 = add nsw i32 %453, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds ptr, ptr %451, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = getelementptr inbounds i8, ptr %447, i64 160
  %460 = load i32, ptr %459, align 8, !tbaa !289
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i16, ptr %458, i64 %461
  %463 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %464 = getelementptr inbounds i8, ptr %463, i64 520
  %465 = getelementptr inbounds [16 x [16 x i16]], ptr %464, i64 0, i64 %446
  %466 = getelementptr inbounds i8, ptr %447, i64 90556
  %467 = load i32, ptr %466, align 4, !tbaa !23
  %468 = sext i32 %467 to i64
  %469 = shl nsw i64 %468, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %462, ptr nonnull align 8 %465, i64 %469, i1 false)
  %470 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %471 = getelementptr inbounds i8, ptr %470, i64 6464
  %472 = load ptr, ptr %471, align 8, !tbaa !13
  %473 = getelementptr inbounds i8, ptr %472, i64 8
  %474 = load ptr, ptr %473, align 8, !tbaa !6
  %475 = load ptr, ptr @img, align 8, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %475, i64 164
  %477 = load i32, ptr %476, align 4, !tbaa !288
  %478 = add nsw i32 %477, %454
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds ptr, ptr %474, i64 %479
  %481 = load ptr, ptr %480, align 8, !tbaa !6
  %482 = getelementptr inbounds i8, ptr %475, i64 160
  %483 = load i32, ptr %482, align 8, !tbaa !289
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i16, ptr %481, i64 %484
  %486 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %487 = getelementptr inbounds i8, ptr %486, i64 1032
  %488 = getelementptr inbounds [16 x [16 x i16]], ptr %487, i64 0, i64 %446
  %489 = getelementptr inbounds i8, ptr %475, i64 90556
  %490 = load i32, ptr %489, align 4, !tbaa !23
  %491 = sext i32 %490 to i64
  %492 = shl nsw i64 %491, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %485, ptr nonnull align 8 %488, i64 %492, i1 false)
  %493 = add nuw nsw i64 %446, 1
  %494 = load ptr, ptr @img, align 8, !tbaa !6
  %495 = getelementptr inbounds i8, ptr %494, i64 90560
  %496 = load i32, ptr %495, align 8, !tbaa !24
  %497 = sext i32 %496 to i64
  %498 = icmp slt i64 %493, %497
  br i1 %498, label %445, label %499

499:                                              ; preds = %445, %441, %436
  %500 = getelementptr inbounds i8, ptr %8, i64 376
  %501 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %501, i64 1568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %500, ptr noundef nonnull align 8 dereferenceable(16) %502, i64 16, i1 false)
  %503 = getelementptr inbounds i8, ptr %8, i64 392
  %504 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %505 = getelementptr inbounds i8, ptr %504, i64 1584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %503, ptr noundef nonnull align 8 dereferenceable(16) %505, i64 16, i1 false)
  %506 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %507 = getelementptr inbounds i8, ptr %506, i64 1704
  %508 = load i32, ptr %507, align 8, !tbaa !290
  %509 = getelementptr inbounds i8, ptr %8, i64 468
  store i32 %508, ptr %509, align 4, !tbaa !291
  %510 = icmp eq i32 %16, 8
  br i1 %510, label %511, label %543

511:                                              ; preds = %499
  %512 = getelementptr inbounds i8, ptr %8, i64 332
  %513 = getelementptr inbounds i8, ptr %506, i64 1608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %512, ptr noundef nonnull align 8 dereferenceable(16) %513, i64 16, i1 false)
  %514 = load ptr, ptr @img, align 8, !tbaa !6
  %515 = getelementptr inbounds i8, ptr %514, i64 148
  %516 = load i32, ptr %515, align 4, !tbaa !283
  %517 = sext i32 %516 to i64
  br label %518

518:                                              ; preds = %511, %518
  %519 = phi i64 [ %517, %511 ], [ %536, %518 ]
  %520 = phi ptr [ %514, %511 ], [ %537, %518 ]
  %521 = getelementptr inbounds i8, ptr %520, i64 104
  %522 = load ptr, ptr %521, align 8, !tbaa !292
  %523 = getelementptr inbounds ptr, ptr %522, i64 %519
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = getelementptr inbounds i8, ptr %520, i64 144
  %526 = load i32, ptr %525, align 8, !tbaa !282
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %524, i64 %527
  %529 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %530 = getelementptr inbounds i8, ptr %529, i64 1600
  %531 = load ptr, ptr %530, align 8, !tbaa !293
  %532 = getelementptr inbounds ptr, ptr %531, i64 %519
  %533 = load ptr, ptr %532, align 8, !tbaa !6
  %534 = getelementptr inbounds i8, ptr %533, i64 %527
  %535 = load i32, ptr %534, align 1
  store i32 %535, ptr %528, align 1
  %536 = add nsw i64 %519, 1
  %537 = load ptr, ptr @img, align 8, !tbaa !6
  %538 = getelementptr inbounds i8, ptr %537, i64 148
  %539 = load i32, ptr %538, align 4, !tbaa !283
  %540 = add nsw i32 %539, 3
  %541 = sext i32 %540 to i64
  %542 = icmp slt i64 %519, %541
  br i1 %542, label %518, label %601

543:                                              ; preds = %499
  %544 = and i32 %16, -5
  %545 = icmp eq i32 %544, 9
  %546 = getelementptr inbounds i8, ptr %8, i64 332
  br i1 %545, label %570, label %547

547:                                              ; preds = %543
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %546, i8 2, i64 16, i1 false)
  %548 = load ptr, ptr @img, align 8, !tbaa !6
  %549 = getelementptr inbounds i8, ptr %548, i64 148
  %550 = load i32, ptr %549, align 4, !tbaa !283
  %551 = sext i32 %550 to i64
  br label %552

552:                                              ; preds = %547, %552
  %553 = phi i64 [ %551, %547 ], [ %563, %552 ]
  %554 = phi ptr [ %548, %547 ], [ %564, %552 ]
  %555 = getelementptr inbounds i8, ptr %554, i64 104
  %556 = load ptr, ptr %555, align 8, !tbaa !292
  %557 = getelementptr inbounds ptr, ptr %556, i64 %553
  %558 = load ptr, ptr %557, align 8, !tbaa !6
  %559 = getelementptr inbounds i8, ptr %554, i64 144
  %560 = load i32, ptr %559, align 8, !tbaa !282
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, ptr %558, i64 %561
  store i32 33686018, ptr %562, align 1
  %563 = add nsw i64 %553, 1
  %564 = load ptr, ptr @img, align 8, !tbaa !6
  %565 = getelementptr inbounds i8, ptr %564, i64 148
  %566 = load i32, ptr %565, align 4, !tbaa !283
  %567 = add nsw i32 %566, 3
  %568 = sext i32 %567 to i64
  %569 = icmp slt i64 %553, %568
  br i1 %569, label %552, label %601

570:                                              ; preds = %543
  %571 = getelementptr inbounds i8, ptr %506, i64 1608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %546, ptr noundef nonnull align 8 dereferenceable(16) %571, i64 16, i1 false)
  %572 = load ptr, ptr @img, align 8, !tbaa !6
  %573 = getelementptr inbounds i8, ptr %572, i64 148
  %574 = load i32, ptr %573, align 4, !tbaa !283
  %575 = sext i32 %574 to i64
  br label %576

576:                                              ; preds = %570, %576
  %577 = phi i64 [ %575, %570 ], [ %594, %576 ]
  %578 = phi ptr [ %572, %570 ], [ %595, %576 ]
  %579 = getelementptr inbounds i8, ptr %578, i64 104
  %580 = load ptr, ptr %579, align 8, !tbaa !292
  %581 = getelementptr inbounds ptr, ptr %580, i64 %577
  %582 = load ptr, ptr %581, align 8, !tbaa !6
  %583 = getelementptr inbounds i8, ptr %578, i64 144
  %584 = load i32, ptr %583, align 8, !tbaa !282
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, ptr %582, i64 %585
  %587 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %588 = getelementptr inbounds i8, ptr %587, i64 1600
  %589 = load ptr, ptr %588, align 8, !tbaa !293
  %590 = getelementptr inbounds ptr, ptr %589, i64 %577
  %591 = load ptr, ptr %590, align 8, !tbaa !6
  %592 = getelementptr inbounds i8, ptr %591, i64 %585
  %593 = load i32, ptr %592, align 1
  store i32 %593, ptr %586, align 1
  %594 = add nsw i64 %577, 1
  %595 = load ptr, ptr @img, align 8, !tbaa !6
  %596 = getelementptr inbounds i8, ptr %595, i64 148
  %597 = load i32, ptr %596, align 4, !tbaa !283
  %598 = add nsw i32 %597, 3
  %599 = sext i32 %598 to i64
  %600 = icmp slt i64 %577, %599
  br i1 %600, label %576, label %601

601:                                              ; preds = %552, %576, %518
  %602 = phi ptr [ %537, %518 ], [ %595, %576 ], [ %564, %552 ]
  %603 = getelementptr inbounds i8, ptr %602, i64 90220
  %604 = load i32, ptr %603, align 4, !tbaa !48
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %1208, label %606

606:                                              ; preds = %601
  %607 = getelementptr inbounds i8, ptr %602, i64 36
  %608 = load i32, ptr %607, align 4, !tbaa !294
  %609 = icmp sgt i32 %608, 0
  %610 = getelementptr inbounds i8, ptr %602, i64 89336
  %611 = getelementptr inbounds i8, ptr %602, i64 89328
  %612 = zext nneg i32 %608 to i64
  br label %613

613:                                              ; preds = %956, %606
  %614 = phi i64 [ 0, %606 ], [ %957, %956 ]
  %615 = load ptr, ptr @rdopt, align 8
  %616 = getelementptr inbounds i8, ptr %615, i64 1656
  %617 = getelementptr inbounds i8, ptr %615, i64 1648
  br label %618

618:                                              ; preds = %953, %613
  %619 = phi i64 [ 0, %613 ], [ %954, %953 ]
  br i1 %609, label %620, label %953

620:                                              ; preds = %618
  %621 = load ptr, ptr %616, align 8, !tbaa !295
  %622 = getelementptr inbounds ptr, ptr %621, i64 %619
  %623 = load ptr, ptr %622, align 8, !tbaa !6
  %624 = getelementptr inbounds ptr, ptr %623, i64 %614
  %625 = load ptr, ptr %624, align 8, !tbaa !6
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  %627 = load ptr, ptr %610, align 8, !tbaa !296
  %628 = getelementptr inbounds ptr, ptr %627, i64 %619
  %629 = load ptr, ptr %628, align 8, !tbaa !6
  %630 = getelementptr inbounds ptr, ptr %629, i64 %614
  %631 = load ptr, ptr %630, align 8, !tbaa !6
  %632 = load ptr, ptr %631, align 8, !tbaa !6
  %633 = getelementptr inbounds i8, ptr %625, i64 8
  %634 = load ptr, ptr %633, align 8, !tbaa !6
  %635 = getelementptr inbounds i8, ptr %631, i64 8
  %636 = load ptr, ptr %635, align 8, !tbaa !6
  %637 = load ptr, ptr %617, align 8, !tbaa !297
  %638 = getelementptr inbounds ptr, ptr %637, i64 %619
  %639 = load ptr, ptr %638, align 8, !tbaa !6
  %640 = getelementptr inbounds ptr, ptr %639, i64 %614
  %641 = load ptr, ptr %640, align 8, !tbaa !6
  %642 = load ptr, ptr %641, align 8, !tbaa !6
  %643 = load ptr, ptr %611, align 8, !tbaa !298
  %644 = getelementptr inbounds ptr, ptr %643, i64 %619
  %645 = load ptr, ptr %644, align 8, !tbaa !6
  %646 = getelementptr inbounds ptr, ptr %645, i64 %614
  %647 = load ptr, ptr %646, align 8, !tbaa !6
  %648 = load ptr, ptr %647, align 8, !tbaa !6
  %649 = getelementptr inbounds i8, ptr %641, i64 8
  %650 = load ptr, ptr %649, align 8, !tbaa !6
  %651 = getelementptr inbounds i8, ptr %647, i64 8
  %652 = load ptr, ptr %651, align 8, !tbaa !6
  br label %653

653:                                              ; preds = %653, %620
  %654 = phi i64 [ 0, %620 ], [ %951, %653 ]
  %655 = getelementptr inbounds ptr, ptr %626, i64 %654
  %656 = load ptr, ptr %655, align 8, !tbaa !6
  %657 = getelementptr inbounds ptr, ptr %632, i64 %654
  %658 = load ptr, ptr %657, align 8, !tbaa !6
  %659 = getelementptr inbounds ptr, ptr %634, i64 %654
  %660 = load ptr, ptr %659, align 8, !tbaa !6
  %661 = getelementptr inbounds ptr, ptr %636, i64 %654
  %662 = load ptr, ptr %661, align 8, !tbaa !6
  %663 = getelementptr inbounds ptr, ptr %642, i64 %654
  %664 = load ptr, ptr %663, align 8, !tbaa !6
  %665 = getelementptr inbounds ptr, ptr %648, i64 %654
  %666 = load ptr, ptr %665, align 8, !tbaa !6
  %667 = getelementptr inbounds ptr, ptr %650, i64 %654
  %668 = load ptr, ptr %667, align 8, !tbaa !6
  %669 = getelementptr inbounds ptr, ptr %652, i64 %654
  %670 = load ptr, ptr %669, align 8, !tbaa !6
  %671 = load ptr, ptr %656, align 8, !tbaa !6
  %672 = load i16, ptr %671, align 2, !tbaa !112
  %673 = load ptr, ptr %658, align 8, !tbaa !6
  store i16 %672, ptr %673, align 2, !tbaa !112
  %674 = getelementptr inbounds i8, ptr %671, i64 2
  %675 = load i16, ptr %674, align 2, !tbaa !112
  %676 = getelementptr inbounds i8, ptr %673, i64 2
  store i16 %675, ptr %676, align 2, !tbaa !112
  %677 = load ptr, ptr %660, align 8, !tbaa !6
  %678 = load i16, ptr %677, align 2, !tbaa !112
  %679 = load ptr, ptr %662, align 8, !tbaa !6
  store i16 %678, ptr %679, align 2, !tbaa !112
  %680 = getelementptr inbounds i8, ptr %677, i64 2
  %681 = load i16, ptr %680, align 2, !tbaa !112
  %682 = getelementptr inbounds i8, ptr %679, i64 2
  store i16 %681, ptr %682, align 2, !tbaa !112
  %683 = load ptr, ptr %664, align 8, !tbaa !6
  %684 = load i16, ptr %683, align 2, !tbaa !112
  %685 = load ptr, ptr %666, align 8, !tbaa !6
  store i16 %684, ptr %685, align 2, !tbaa !112
  %686 = getelementptr inbounds i8, ptr %683, i64 2
  %687 = load i16, ptr %686, align 2, !tbaa !112
  %688 = getelementptr inbounds i8, ptr %685, i64 2
  store i16 %687, ptr %688, align 2, !tbaa !112
  %689 = load ptr, ptr %668, align 8, !tbaa !6
  %690 = load i16, ptr %689, align 2, !tbaa !112
  %691 = load ptr, ptr %670, align 8, !tbaa !6
  store i16 %690, ptr %691, align 2, !tbaa !112
  %692 = getelementptr inbounds i8, ptr %689, i64 2
  %693 = load i16, ptr %692, align 2, !tbaa !112
  %694 = getelementptr inbounds i8, ptr %691, i64 2
  store i16 %693, ptr %694, align 2, !tbaa !112
  %695 = getelementptr inbounds i8, ptr %656, i64 8
  %696 = load ptr, ptr %695, align 8, !tbaa !6
  %697 = load i16, ptr %696, align 2, !tbaa !112
  %698 = getelementptr inbounds i8, ptr %658, i64 8
  %699 = load ptr, ptr %698, align 8, !tbaa !6
  store i16 %697, ptr %699, align 2, !tbaa !112
  %700 = getelementptr inbounds i8, ptr %696, i64 2
  %701 = load i16, ptr %700, align 2, !tbaa !112
  %702 = getelementptr inbounds i8, ptr %699, i64 2
  store i16 %701, ptr %702, align 2, !tbaa !112
  %703 = getelementptr inbounds i8, ptr %660, i64 8
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  %705 = load i16, ptr %704, align 2, !tbaa !112
  %706 = getelementptr inbounds i8, ptr %662, i64 8
  %707 = load ptr, ptr %706, align 8, !tbaa !6
  store i16 %705, ptr %707, align 2, !tbaa !112
  %708 = getelementptr inbounds i8, ptr %704, i64 2
  %709 = load i16, ptr %708, align 2, !tbaa !112
  %710 = getelementptr inbounds i8, ptr %707, i64 2
  store i16 %709, ptr %710, align 2, !tbaa !112
  %711 = getelementptr inbounds i8, ptr %664, i64 8
  %712 = load ptr, ptr %711, align 8, !tbaa !6
  %713 = load i16, ptr %712, align 2, !tbaa !112
  %714 = getelementptr inbounds i8, ptr %666, i64 8
  %715 = load ptr, ptr %714, align 8, !tbaa !6
  store i16 %713, ptr %715, align 2, !tbaa !112
  %716 = getelementptr inbounds i8, ptr %712, i64 2
  %717 = load i16, ptr %716, align 2, !tbaa !112
  %718 = getelementptr inbounds i8, ptr %715, i64 2
  store i16 %717, ptr %718, align 2, !tbaa !112
  %719 = getelementptr inbounds i8, ptr %668, i64 8
  %720 = load ptr, ptr %719, align 8, !tbaa !6
  %721 = load i16, ptr %720, align 2, !tbaa !112
  %722 = getelementptr inbounds i8, ptr %670, i64 8
  %723 = load ptr, ptr %722, align 8, !tbaa !6
  store i16 %721, ptr %723, align 2, !tbaa !112
  %724 = getelementptr inbounds i8, ptr %720, i64 2
  %725 = load i16, ptr %724, align 2, !tbaa !112
  %726 = getelementptr inbounds i8, ptr %723, i64 2
  store i16 %725, ptr %726, align 2, !tbaa !112
  %727 = getelementptr inbounds i8, ptr %656, i64 16
  %728 = load ptr, ptr %727, align 8, !tbaa !6
  %729 = load i16, ptr %728, align 2, !tbaa !112
  %730 = getelementptr inbounds i8, ptr %658, i64 16
  %731 = load ptr, ptr %730, align 8, !tbaa !6
  store i16 %729, ptr %731, align 2, !tbaa !112
  %732 = getelementptr inbounds i8, ptr %728, i64 2
  %733 = load i16, ptr %732, align 2, !tbaa !112
  %734 = getelementptr inbounds i8, ptr %731, i64 2
  store i16 %733, ptr %734, align 2, !tbaa !112
  %735 = getelementptr inbounds i8, ptr %660, i64 16
  %736 = load ptr, ptr %735, align 8, !tbaa !6
  %737 = load i16, ptr %736, align 2, !tbaa !112
  %738 = getelementptr inbounds i8, ptr %662, i64 16
  %739 = load ptr, ptr %738, align 8, !tbaa !6
  store i16 %737, ptr %739, align 2, !tbaa !112
  %740 = getelementptr inbounds i8, ptr %736, i64 2
  %741 = load i16, ptr %740, align 2, !tbaa !112
  %742 = getelementptr inbounds i8, ptr %739, i64 2
  store i16 %741, ptr %742, align 2, !tbaa !112
  %743 = getelementptr inbounds i8, ptr %664, i64 16
  %744 = load ptr, ptr %743, align 8, !tbaa !6
  %745 = load i16, ptr %744, align 2, !tbaa !112
  %746 = getelementptr inbounds i8, ptr %666, i64 16
  %747 = load ptr, ptr %746, align 8, !tbaa !6
  store i16 %745, ptr %747, align 2, !tbaa !112
  %748 = getelementptr inbounds i8, ptr %744, i64 2
  %749 = load i16, ptr %748, align 2, !tbaa !112
  %750 = getelementptr inbounds i8, ptr %747, i64 2
  store i16 %749, ptr %750, align 2, !tbaa !112
  %751 = getelementptr inbounds i8, ptr %668, i64 16
  %752 = load ptr, ptr %751, align 8, !tbaa !6
  %753 = load i16, ptr %752, align 2, !tbaa !112
  %754 = getelementptr inbounds i8, ptr %670, i64 16
  %755 = load ptr, ptr %754, align 8, !tbaa !6
  store i16 %753, ptr %755, align 2, !tbaa !112
  %756 = getelementptr inbounds i8, ptr %752, i64 2
  %757 = load i16, ptr %756, align 2, !tbaa !112
  %758 = getelementptr inbounds i8, ptr %755, i64 2
  store i16 %757, ptr %758, align 2, !tbaa !112
  %759 = getelementptr inbounds i8, ptr %656, i64 24
  %760 = load ptr, ptr %759, align 8, !tbaa !6
  %761 = load i16, ptr %760, align 2, !tbaa !112
  %762 = getelementptr inbounds i8, ptr %658, i64 24
  %763 = load ptr, ptr %762, align 8, !tbaa !6
  store i16 %761, ptr %763, align 2, !tbaa !112
  %764 = getelementptr inbounds i8, ptr %760, i64 2
  %765 = load i16, ptr %764, align 2, !tbaa !112
  %766 = getelementptr inbounds i8, ptr %763, i64 2
  store i16 %765, ptr %766, align 2, !tbaa !112
  %767 = getelementptr inbounds i8, ptr %660, i64 24
  %768 = load ptr, ptr %767, align 8, !tbaa !6
  %769 = load i16, ptr %768, align 2, !tbaa !112
  %770 = getelementptr inbounds i8, ptr %662, i64 24
  %771 = load ptr, ptr %770, align 8, !tbaa !6
  store i16 %769, ptr %771, align 2, !tbaa !112
  %772 = getelementptr inbounds i8, ptr %768, i64 2
  %773 = load i16, ptr %772, align 2, !tbaa !112
  %774 = getelementptr inbounds i8, ptr %771, i64 2
  store i16 %773, ptr %774, align 2, !tbaa !112
  %775 = getelementptr inbounds i8, ptr %664, i64 24
  %776 = load ptr, ptr %775, align 8, !tbaa !6
  %777 = load i16, ptr %776, align 2, !tbaa !112
  %778 = getelementptr inbounds i8, ptr %666, i64 24
  %779 = load ptr, ptr %778, align 8, !tbaa !6
  store i16 %777, ptr %779, align 2, !tbaa !112
  %780 = getelementptr inbounds i8, ptr %776, i64 2
  %781 = load i16, ptr %780, align 2, !tbaa !112
  %782 = getelementptr inbounds i8, ptr %779, i64 2
  store i16 %781, ptr %782, align 2, !tbaa !112
  %783 = getelementptr inbounds i8, ptr %668, i64 24
  %784 = load ptr, ptr %783, align 8, !tbaa !6
  %785 = load i16, ptr %784, align 2, !tbaa !112
  %786 = getelementptr inbounds i8, ptr %670, i64 24
  %787 = load ptr, ptr %786, align 8, !tbaa !6
  store i16 %785, ptr %787, align 2, !tbaa !112
  %788 = getelementptr inbounds i8, ptr %784, i64 2
  %789 = load i16, ptr %788, align 2, !tbaa !112
  %790 = getelementptr inbounds i8, ptr %787, i64 2
  store i16 %789, ptr %790, align 2, !tbaa !112
  %791 = getelementptr inbounds i8, ptr %656, i64 32
  %792 = load ptr, ptr %791, align 8, !tbaa !6
  %793 = load i16, ptr %792, align 2, !tbaa !112
  %794 = getelementptr inbounds i8, ptr %658, i64 32
  %795 = load ptr, ptr %794, align 8, !tbaa !6
  store i16 %793, ptr %795, align 2, !tbaa !112
  %796 = getelementptr inbounds i8, ptr %792, i64 2
  %797 = load i16, ptr %796, align 2, !tbaa !112
  %798 = getelementptr inbounds i8, ptr %795, i64 2
  store i16 %797, ptr %798, align 2, !tbaa !112
  %799 = getelementptr inbounds i8, ptr %660, i64 32
  %800 = load ptr, ptr %799, align 8, !tbaa !6
  %801 = load i16, ptr %800, align 2, !tbaa !112
  %802 = getelementptr inbounds i8, ptr %662, i64 32
  %803 = load ptr, ptr %802, align 8, !tbaa !6
  store i16 %801, ptr %803, align 2, !tbaa !112
  %804 = getelementptr inbounds i8, ptr %800, i64 2
  %805 = load i16, ptr %804, align 2, !tbaa !112
  %806 = getelementptr inbounds i8, ptr %803, i64 2
  store i16 %805, ptr %806, align 2, !tbaa !112
  %807 = getelementptr inbounds i8, ptr %664, i64 32
  %808 = load ptr, ptr %807, align 8, !tbaa !6
  %809 = load i16, ptr %808, align 2, !tbaa !112
  %810 = getelementptr inbounds i8, ptr %666, i64 32
  %811 = load ptr, ptr %810, align 8, !tbaa !6
  store i16 %809, ptr %811, align 2, !tbaa !112
  %812 = getelementptr inbounds i8, ptr %808, i64 2
  %813 = load i16, ptr %812, align 2, !tbaa !112
  %814 = getelementptr inbounds i8, ptr %811, i64 2
  store i16 %813, ptr %814, align 2, !tbaa !112
  %815 = getelementptr inbounds i8, ptr %668, i64 32
  %816 = load ptr, ptr %815, align 8, !tbaa !6
  %817 = load i16, ptr %816, align 2, !tbaa !112
  %818 = getelementptr inbounds i8, ptr %670, i64 32
  %819 = load ptr, ptr %818, align 8, !tbaa !6
  store i16 %817, ptr %819, align 2, !tbaa !112
  %820 = getelementptr inbounds i8, ptr %816, i64 2
  %821 = load i16, ptr %820, align 2, !tbaa !112
  %822 = getelementptr inbounds i8, ptr %819, i64 2
  store i16 %821, ptr %822, align 2, !tbaa !112
  %823 = getelementptr inbounds i8, ptr %656, i64 40
  %824 = load ptr, ptr %823, align 8, !tbaa !6
  %825 = load i16, ptr %824, align 2, !tbaa !112
  %826 = getelementptr inbounds i8, ptr %658, i64 40
  %827 = load ptr, ptr %826, align 8, !tbaa !6
  store i16 %825, ptr %827, align 2, !tbaa !112
  %828 = getelementptr inbounds i8, ptr %824, i64 2
  %829 = load i16, ptr %828, align 2, !tbaa !112
  %830 = getelementptr inbounds i8, ptr %827, i64 2
  store i16 %829, ptr %830, align 2, !tbaa !112
  %831 = getelementptr inbounds i8, ptr %660, i64 40
  %832 = load ptr, ptr %831, align 8, !tbaa !6
  %833 = load i16, ptr %832, align 2, !tbaa !112
  %834 = getelementptr inbounds i8, ptr %662, i64 40
  %835 = load ptr, ptr %834, align 8, !tbaa !6
  store i16 %833, ptr %835, align 2, !tbaa !112
  %836 = getelementptr inbounds i8, ptr %832, i64 2
  %837 = load i16, ptr %836, align 2, !tbaa !112
  %838 = getelementptr inbounds i8, ptr %835, i64 2
  store i16 %837, ptr %838, align 2, !tbaa !112
  %839 = getelementptr inbounds i8, ptr %664, i64 40
  %840 = load ptr, ptr %839, align 8, !tbaa !6
  %841 = load i16, ptr %840, align 2, !tbaa !112
  %842 = getelementptr inbounds i8, ptr %666, i64 40
  %843 = load ptr, ptr %842, align 8, !tbaa !6
  store i16 %841, ptr %843, align 2, !tbaa !112
  %844 = getelementptr inbounds i8, ptr %840, i64 2
  %845 = load i16, ptr %844, align 2, !tbaa !112
  %846 = getelementptr inbounds i8, ptr %843, i64 2
  store i16 %845, ptr %846, align 2, !tbaa !112
  %847 = getelementptr inbounds i8, ptr %668, i64 40
  %848 = load ptr, ptr %847, align 8, !tbaa !6
  %849 = load i16, ptr %848, align 2, !tbaa !112
  %850 = getelementptr inbounds i8, ptr %670, i64 40
  %851 = load ptr, ptr %850, align 8, !tbaa !6
  store i16 %849, ptr %851, align 2, !tbaa !112
  %852 = getelementptr inbounds i8, ptr %848, i64 2
  %853 = load i16, ptr %852, align 2, !tbaa !112
  %854 = getelementptr inbounds i8, ptr %851, i64 2
  store i16 %853, ptr %854, align 2, !tbaa !112
  %855 = getelementptr inbounds i8, ptr %656, i64 48
  %856 = load ptr, ptr %855, align 8, !tbaa !6
  %857 = load i16, ptr %856, align 2, !tbaa !112
  %858 = getelementptr inbounds i8, ptr %658, i64 48
  %859 = load ptr, ptr %858, align 8, !tbaa !6
  store i16 %857, ptr %859, align 2, !tbaa !112
  %860 = getelementptr inbounds i8, ptr %856, i64 2
  %861 = load i16, ptr %860, align 2, !tbaa !112
  %862 = getelementptr inbounds i8, ptr %859, i64 2
  store i16 %861, ptr %862, align 2, !tbaa !112
  %863 = getelementptr inbounds i8, ptr %660, i64 48
  %864 = load ptr, ptr %863, align 8, !tbaa !6
  %865 = load i16, ptr %864, align 2, !tbaa !112
  %866 = getelementptr inbounds i8, ptr %662, i64 48
  %867 = load ptr, ptr %866, align 8, !tbaa !6
  store i16 %865, ptr %867, align 2, !tbaa !112
  %868 = getelementptr inbounds i8, ptr %864, i64 2
  %869 = load i16, ptr %868, align 2, !tbaa !112
  %870 = getelementptr inbounds i8, ptr %867, i64 2
  store i16 %869, ptr %870, align 2, !tbaa !112
  %871 = getelementptr inbounds i8, ptr %664, i64 48
  %872 = load ptr, ptr %871, align 8, !tbaa !6
  %873 = load i16, ptr %872, align 2, !tbaa !112
  %874 = getelementptr inbounds i8, ptr %666, i64 48
  %875 = load ptr, ptr %874, align 8, !tbaa !6
  store i16 %873, ptr %875, align 2, !tbaa !112
  %876 = getelementptr inbounds i8, ptr %872, i64 2
  %877 = load i16, ptr %876, align 2, !tbaa !112
  %878 = getelementptr inbounds i8, ptr %875, i64 2
  store i16 %877, ptr %878, align 2, !tbaa !112
  %879 = getelementptr inbounds i8, ptr %668, i64 48
  %880 = load ptr, ptr %879, align 8, !tbaa !6
  %881 = load i16, ptr %880, align 2, !tbaa !112
  %882 = getelementptr inbounds i8, ptr %670, i64 48
  %883 = load ptr, ptr %882, align 8, !tbaa !6
  store i16 %881, ptr %883, align 2, !tbaa !112
  %884 = getelementptr inbounds i8, ptr %880, i64 2
  %885 = load i16, ptr %884, align 2, !tbaa !112
  %886 = getelementptr inbounds i8, ptr %883, i64 2
  store i16 %885, ptr %886, align 2, !tbaa !112
  %887 = getelementptr inbounds i8, ptr %656, i64 56
  %888 = load ptr, ptr %887, align 8, !tbaa !6
  %889 = load i16, ptr %888, align 2, !tbaa !112
  %890 = getelementptr inbounds i8, ptr %658, i64 56
  %891 = load ptr, ptr %890, align 8, !tbaa !6
  store i16 %889, ptr %891, align 2, !tbaa !112
  %892 = getelementptr inbounds i8, ptr %888, i64 2
  %893 = load i16, ptr %892, align 2, !tbaa !112
  %894 = getelementptr inbounds i8, ptr %891, i64 2
  store i16 %893, ptr %894, align 2, !tbaa !112
  %895 = getelementptr inbounds i8, ptr %660, i64 56
  %896 = load ptr, ptr %895, align 8, !tbaa !6
  %897 = load i16, ptr %896, align 2, !tbaa !112
  %898 = getelementptr inbounds i8, ptr %662, i64 56
  %899 = load ptr, ptr %898, align 8, !tbaa !6
  store i16 %897, ptr %899, align 2, !tbaa !112
  %900 = getelementptr inbounds i8, ptr %896, i64 2
  %901 = load i16, ptr %900, align 2, !tbaa !112
  %902 = getelementptr inbounds i8, ptr %899, i64 2
  store i16 %901, ptr %902, align 2, !tbaa !112
  %903 = getelementptr inbounds i8, ptr %664, i64 56
  %904 = load ptr, ptr %903, align 8, !tbaa !6
  %905 = load i16, ptr %904, align 2, !tbaa !112
  %906 = getelementptr inbounds i8, ptr %666, i64 56
  %907 = load ptr, ptr %906, align 8, !tbaa !6
  store i16 %905, ptr %907, align 2, !tbaa !112
  %908 = getelementptr inbounds i8, ptr %904, i64 2
  %909 = load i16, ptr %908, align 2, !tbaa !112
  %910 = getelementptr inbounds i8, ptr %907, i64 2
  store i16 %909, ptr %910, align 2, !tbaa !112
  %911 = getelementptr inbounds i8, ptr %668, i64 56
  %912 = load ptr, ptr %911, align 8, !tbaa !6
  %913 = load i16, ptr %912, align 2, !tbaa !112
  %914 = getelementptr inbounds i8, ptr %670, i64 56
  %915 = load ptr, ptr %914, align 8, !tbaa !6
  store i16 %913, ptr %915, align 2, !tbaa !112
  %916 = getelementptr inbounds i8, ptr %912, i64 2
  %917 = load i16, ptr %916, align 2, !tbaa !112
  %918 = getelementptr inbounds i8, ptr %915, i64 2
  store i16 %917, ptr %918, align 2, !tbaa !112
  %919 = getelementptr inbounds i8, ptr %656, i64 64
  %920 = load ptr, ptr %919, align 8, !tbaa !6
  %921 = load i16, ptr %920, align 2, !tbaa !112
  %922 = getelementptr inbounds i8, ptr %658, i64 64
  %923 = load ptr, ptr %922, align 8, !tbaa !6
  store i16 %921, ptr %923, align 2, !tbaa !112
  %924 = getelementptr inbounds i8, ptr %920, i64 2
  %925 = load i16, ptr %924, align 2, !tbaa !112
  %926 = getelementptr inbounds i8, ptr %923, i64 2
  store i16 %925, ptr %926, align 2, !tbaa !112
  %927 = getelementptr inbounds i8, ptr %660, i64 64
  %928 = load ptr, ptr %927, align 8, !tbaa !6
  %929 = load i16, ptr %928, align 2, !tbaa !112
  %930 = getelementptr inbounds i8, ptr %662, i64 64
  %931 = load ptr, ptr %930, align 8, !tbaa !6
  store i16 %929, ptr %931, align 2, !tbaa !112
  %932 = getelementptr inbounds i8, ptr %928, i64 2
  %933 = load i16, ptr %932, align 2, !tbaa !112
  %934 = getelementptr inbounds i8, ptr %931, i64 2
  store i16 %933, ptr %934, align 2, !tbaa !112
  %935 = getelementptr inbounds i8, ptr %664, i64 64
  %936 = load ptr, ptr %935, align 8, !tbaa !6
  %937 = load i16, ptr %936, align 2, !tbaa !112
  %938 = getelementptr inbounds i8, ptr %666, i64 64
  %939 = load ptr, ptr %938, align 8, !tbaa !6
  store i16 %937, ptr %939, align 2, !tbaa !112
  %940 = getelementptr inbounds i8, ptr %936, i64 2
  %941 = load i16, ptr %940, align 2, !tbaa !112
  %942 = getelementptr inbounds i8, ptr %939, i64 2
  store i16 %941, ptr %942, align 2, !tbaa !112
  %943 = getelementptr inbounds i8, ptr %668, i64 64
  %944 = load ptr, ptr %943, align 8, !tbaa !6
  %945 = load i16, ptr %944, align 2, !tbaa !112
  %946 = getelementptr inbounds i8, ptr %670, i64 64
  %947 = load ptr, ptr %946, align 8, !tbaa !6
  store i16 %945, ptr %947, align 2, !tbaa !112
  %948 = getelementptr inbounds i8, ptr %944, i64 2
  %949 = load i16, ptr %948, align 2, !tbaa !112
  %950 = getelementptr inbounds i8, ptr %947, i64 2
  store i16 %949, ptr %950, align 2, !tbaa !112
  %951 = add nuw nsw i64 %654, 1
  %952 = icmp eq i64 %951, %612
  br i1 %952, label %953, label %653

953:                                              ; preds = %653, %618
  %954 = add nuw nsw i64 %619, 1
  %955 = icmp eq i64 %954, 4
  br i1 %955, label %956, label %618

956:                                              ; preds = %953
  %957 = add nuw nsw i64 %614, 1
  %958 = icmp eq i64 %957, 4
  br i1 %958, label %959, label %613

959:                                              ; preds = %956
  %960 = load i32, ptr %19, align 8, !tbaa !255
  switch i32 %960, label %961 [
    i32 9, label %1090
    i32 10, label %1090
    i32 13, label %1090
    i32 14, label %1090
  ]

961:                                              ; preds = %959
  %962 = getelementptr inbounds i8, ptr %615, i64 1664
  %963 = getelementptr inbounds i8, ptr %602, i64 148
  %964 = getelementptr inbounds i8, ptr %602, i64 144
  %965 = getelementptr inbounds i8, ptr %615, i64 1680
  br label %966

966:                                              ; preds = %961, %1087
  %967 = phi i64 [ 0, %961 ], [ %1088, %1087 ]
  %968 = trunc nuw nsw i64 %967 to i32
  %969 = and i64 %967, 2
  %970 = load ptr, ptr @enc_picture, align 8
  %971 = getelementptr inbounds i8, ptr %970, i64 6504
  br label %972

972:                                              ; preds = %966, %1084
  %973 = phi i64 [ 0, %966 ], [ %1085, %1084 ]
  %974 = trunc nuw nsw i64 %973 to i32
  %975 = lshr i64 %973, 1
  %976 = and i64 %975, 2147483647
  %977 = or i64 %976, %969
  %978 = getelementptr inbounds [4 x i32], ptr %500, i64 0, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !22
  %980 = getelementptr inbounds [4 x i32], ptr %503, i64 0, i64 %977
  %981 = load i32, ptr %980, align 4, !tbaa !22
  %982 = icmp eq i32 %981, 1
  br i1 %982, label %1020, label %983

983:                                              ; preds = %972
  %984 = load ptr, ptr %616, align 8, !tbaa !295
  %985 = getelementptr inbounds ptr, ptr %984, i64 %967
  %986 = load ptr, ptr %985, align 8, !tbaa !6
  %987 = getelementptr inbounds ptr, ptr %986, i64 %973
  %988 = load ptr, ptr %987, align 8, !tbaa !6
  %989 = load ptr, ptr %988, align 8, !tbaa !6
  %990 = getelementptr inbounds [4 x [4 x i8]], ptr %962, i64 0, i64 %967, i64 %973
  %991 = load i8, ptr %990, align 1, !tbaa !21
  %992 = zext i8 %991 to i64
  %993 = getelementptr inbounds ptr, ptr %989, i64 %992
  %994 = load ptr, ptr %993, align 8, !tbaa !6
  %995 = sext i32 %979 to i64
  %996 = getelementptr inbounds ptr, ptr %994, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !6
  %998 = load i16, ptr %997, align 2, !tbaa !112
  %999 = load ptr, ptr %971, align 8, !tbaa !299
  %1000 = load ptr, ptr %999, align 8, !tbaa !6
  %1001 = load i32, ptr %963, align 4, !tbaa !283
  %1002 = add nsw i32 %1001, %968
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds ptr, ptr %1000, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !6
  %1006 = load i32, ptr %964, align 8, !tbaa !282
  %1007 = add nsw i32 %1006, %974
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds ptr, ptr %1005, i64 %1008
  %1010 = load ptr, ptr %1009, align 8, !tbaa !6
  store i16 %998, ptr %1010, align 2, !tbaa !112
  %1011 = load i8, ptr %990, align 1, !tbaa !21
  %1012 = zext i8 %1011 to i64
  %1013 = getelementptr inbounds ptr, ptr %989, i64 %1012
  %1014 = load ptr, ptr %1013, align 8, !tbaa !6
  %1015 = getelementptr inbounds ptr, ptr %1014, i64 %995
  %1016 = load ptr, ptr %1015, align 8, !tbaa !6
  %1017 = getelementptr inbounds i8, ptr %1016, i64 2
  %1018 = load i16, ptr %1017, align 2, !tbaa !112
  %1019 = getelementptr inbounds i8, ptr %1010, i64 2
  store i16 %1018, ptr %1019, align 2, !tbaa !112
  br i1 %11, label %1041, label %1084

1020:                                             ; preds = %972
  %1021 = load ptr, ptr %971, align 8, !tbaa !299
  %1022 = load ptr, ptr %1021, align 8, !tbaa !6
  %1023 = load i32, ptr %963, align 4, !tbaa !283
  %1024 = add nsw i32 %1023, %968
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds ptr, ptr %1022, i64 %1025
  %1027 = load ptr, ptr %1026, align 8, !tbaa !6
  %1028 = load i32, ptr %964, align 8, !tbaa !282
  %1029 = add nsw i32 %1028, %974
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds ptr, ptr %1027, i64 %1030
  %1032 = load ptr, ptr %1031, align 8, !tbaa !6
  store i16 0, ptr %1032, align 2, !tbaa !112
  %1033 = getelementptr inbounds i8, ptr %1032, i64 2
  store i16 0, ptr %1033, align 2, !tbaa !112
  br i1 %11, label %1034, label %1084

1034:                                             ; preds = %1020
  %1035 = load ptr, ptr %616, align 8, !tbaa !295
  %1036 = getelementptr inbounds ptr, ptr %1035, i64 %967
  %1037 = load ptr, ptr %1036, align 8, !tbaa !6
  %1038 = getelementptr inbounds ptr, ptr %1037, i64 %973
  %1039 = load ptr, ptr %1038, align 8, !tbaa !6
  %1040 = sext i32 %979 to i64
  br label %1043

1041:                                             ; preds = %983
  %1042 = icmp eq i32 %981, 0
  br i1 %1042, label %1073, label %1043

1043:                                             ; preds = %1034, %1041
  %1044 = phi i64 [ %1030, %1034 ], [ %1008, %1041 ]
  %1045 = phi i64 [ %1025, %1034 ], [ %1003, %1041 ]
  %1046 = phi ptr [ %1021, %1034 ], [ %999, %1041 ]
  %1047 = phi i64 [ %1040, %1034 ], [ %995, %1041 ]
  %1048 = phi ptr [ %1039, %1034 ], [ %988, %1041 ]
  %1049 = getelementptr inbounds i8, ptr %1048, i64 8
  %1050 = load ptr, ptr %1049, align 8, !tbaa !6
  %1051 = getelementptr inbounds [4 x [4 x i8]], ptr %965, i64 0, i64 %967, i64 %973
  %1052 = load i8, ptr %1051, align 1, !tbaa !21
  %1053 = zext i8 %1052 to i64
  %1054 = getelementptr inbounds ptr, ptr %1050, i64 %1053
  %1055 = load ptr, ptr %1054, align 8, !tbaa !6
  %1056 = getelementptr inbounds ptr, ptr %1055, i64 %1047
  %1057 = load ptr, ptr %1056, align 8, !tbaa !6
  %1058 = load i16, ptr %1057, align 2, !tbaa !112
  %1059 = getelementptr inbounds i8, ptr %1046, i64 8
  %1060 = load ptr, ptr %1059, align 8, !tbaa !6
  %1061 = getelementptr inbounds ptr, ptr %1060, i64 %1045
  %1062 = load ptr, ptr %1061, align 8, !tbaa !6
  %1063 = getelementptr inbounds ptr, ptr %1062, i64 %1044
  %1064 = load ptr, ptr %1063, align 8, !tbaa !6
  store i16 %1058, ptr %1064, align 2, !tbaa !112
  %1065 = load i8, ptr %1051, align 1, !tbaa !21
  %1066 = zext i8 %1065 to i64
  %1067 = getelementptr inbounds ptr, ptr %1050, i64 %1066
  %1068 = load ptr, ptr %1067, align 8, !tbaa !6
  %1069 = getelementptr inbounds ptr, ptr %1068, i64 %1047
  %1070 = load ptr, ptr %1069, align 8, !tbaa !6
  %1071 = getelementptr inbounds i8, ptr %1070, i64 2
  %1072 = load i16, ptr %1071, align 2, !tbaa !112
  br label %1080

1073:                                             ; preds = %1041
  %1074 = getelementptr inbounds i8, ptr %999, i64 8
  %1075 = load ptr, ptr %1074, align 8, !tbaa !6
  %1076 = getelementptr inbounds ptr, ptr %1075, i64 %1003
  %1077 = load ptr, ptr %1076, align 8, !tbaa !6
  %1078 = getelementptr inbounds ptr, ptr %1077, i64 %1008
  %1079 = load ptr, ptr %1078, align 8, !tbaa !6
  store i16 0, ptr %1079, align 2, !tbaa !112
  br label %1080

1080:                                             ; preds = %1043, %1073
  %1081 = phi ptr [ %1079, %1073 ], [ %1064, %1043 ]
  %1082 = phi i16 [ 0, %1073 ], [ %1072, %1043 ]
  %1083 = getelementptr inbounds i8, ptr %1081, i64 2
  store i16 %1082, ptr %1083, align 2, !tbaa !112
  br label %1084

1084:                                             ; preds = %1080, %1020, %983
  %1085 = add nuw nsw i64 %973, 1
  %1086 = icmp eq i64 %1085, 4
  br i1 %1086, label %1087, label %972

1087:                                             ; preds = %1084
  %1088 = add nuw nsw i64 %967, 1
  %1089 = icmp eq i64 %1088, 4
  br i1 %1089, label %1208, label %966

1090:                                             ; preds = %959, %959, %959, %959
  %1091 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1092 = getelementptr inbounds i8, ptr %1091, i64 6504
  %1093 = load ptr, ptr %1092, align 8, !tbaa !299
  %1094 = load ptr, ptr %1093, align 8, !tbaa !6
  %1095 = load ptr, ptr @img, align 8, !tbaa !6
  %1096 = getelementptr inbounds i8, ptr %1095, i64 148
  %1097 = load i32, ptr %1096, align 4, !tbaa !283
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds ptr, ptr %1094, i64 %1098
  %1100 = load ptr, ptr %1099, align 8, !tbaa !6
  %1101 = getelementptr inbounds i8, ptr %1095, i64 144
  %1102 = load i32, ptr %1101, align 8, !tbaa !282
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds ptr, ptr %1100, i64 %1103
  %1105 = load ptr, ptr %1104, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1105, i8 0, i64 16, i1 false)
  %1106 = load ptr, ptr %1092, align 8, !tbaa !299
  %1107 = load ptr, ptr %1106, align 8, !tbaa !6
  %1108 = load ptr, ptr @img, align 8, !tbaa !6
  %1109 = getelementptr inbounds i8, ptr %1108, i64 148
  %1110 = load i32, ptr %1109, align 4, !tbaa !283
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr ptr, ptr %1107, i64 %1111
  %1113 = getelementptr i8, ptr %1112, i64 8
  %1114 = load ptr, ptr %1113, align 8, !tbaa !6
  %1115 = getelementptr inbounds i8, ptr %1108, i64 144
  %1116 = load i32, ptr %1115, align 8, !tbaa !282
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds ptr, ptr %1114, i64 %1117
  %1119 = load ptr, ptr %1118, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1119, i8 0, i64 16, i1 false)
  %1120 = load ptr, ptr %1092, align 8, !tbaa !299
  %1121 = load ptr, ptr %1120, align 8, !tbaa !6
  %1122 = load ptr, ptr @img, align 8, !tbaa !6
  %1123 = getelementptr inbounds i8, ptr %1122, i64 148
  %1124 = load i32, ptr %1123, align 4, !tbaa !283
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr ptr, ptr %1121, i64 %1125
  %1127 = getelementptr i8, ptr %1126, i64 16
  %1128 = load ptr, ptr %1127, align 8, !tbaa !6
  %1129 = getelementptr inbounds i8, ptr %1122, i64 144
  %1130 = load i32, ptr %1129, align 8, !tbaa !282
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds ptr, ptr %1128, i64 %1131
  %1133 = load ptr, ptr %1132, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1133, i8 0, i64 16, i1 false)
  %1134 = load ptr, ptr %1092, align 8, !tbaa !299
  %1135 = load ptr, ptr %1134, align 8, !tbaa !6
  %1136 = load ptr, ptr @img, align 8, !tbaa !6
  %1137 = getelementptr inbounds i8, ptr %1136, i64 148
  %1138 = load i32, ptr %1137, align 4, !tbaa !283
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr ptr, ptr %1135, i64 %1139
  %1141 = getelementptr i8, ptr %1140, i64 24
  %1142 = load ptr, ptr %1141, align 8, !tbaa !6
  %1143 = getelementptr inbounds i8, ptr %1136, i64 144
  %1144 = load i32, ptr %1143, align 8, !tbaa !282
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds ptr, ptr %1142, i64 %1145
  %1147 = load ptr, ptr %1146, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1147, i8 0, i64 16, i1 false)
  br i1 %11, label %1148, label %1208

1148:                                             ; preds = %1090
  %1149 = load ptr, ptr %1092, align 8, !tbaa !299
  %1150 = getelementptr inbounds i8, ptr %1149, i64 8
  %1151 = load ptr, ptr %1150, align 8, !tbaa !6
  %1152 = load ptr, ptr @img, align 8, !tbaa !6
  %1153 = getelementptr inbounds i8, ptr %1152, i64 148
  %1154 = load i32, ptr %1153, align 4, !tbaa !283
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds ptr, ptr %1151, i64 %1155
  %1157 = load ptr, ptr %1156, align 8, !tbaa !6
  %1158 = getelementptr inbounds i8, ptr %1152, i64 144
  %1159 = load i32, ptr %1158, align 8, !tbaa !282
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds ptr, ptr %1157, i64 %1160
  %1162 = load ptr, ptr %1161, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1162, i8 0, i64 16, i1 false)
  %1163 = load ptr, ptr %1092, align 8, !tbaa !299
  %1164 = getelementptr inbounds i8, ptr %1163, i64 8
  %1165 = load ptr, ptr %1164, align 8, !tbaa !6
  %1166 = load ptr, ptr @img, align 8, !tbaa !6
  %1167 = getelementptr inbounds i8, ptr %1166, i64 148
  %1168 = load i32, ptr %1167, align 4, !tbaa !283
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr ptr, ptr %1165, i64 %1169
  %1171 = getelementptr i8, ptr %1170, i64 8
  %1172 = load ptr, ptr %1171, align 8, !tbaa !6
  %1173 = getelementptr inbounds i8, ptr %1166, i64 144
  %1174 = load i32, ptr %1173, align 8, !tbaa !282
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds ptr, ptr %1172, i64 %1175
  %1177 = load ptr, ptr %1176, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1177, i8 0, i64 16, i1 false)
  %1178 = load ptr, ptr %1092, align 8, !tbaa !299
  %1179 = getelementptr inbounds i8, ptr %1178, i64 8
  %1180 = load ptr, ptr %1179, align 8, !tbaa !6
  %1181 = load ptr, ptr @img, align 8, !tbaa !6
  %1182 = getelementptr inbounds i8, ptr %1181, i64 148
  %1183 = load i32, ptr %1182, align 4, !tbaa !283
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr ptr, ptr %1180, i64 %1184
  %1186 = getelementptr i8, ptr %1185, i64 16
  %1187 = load ptr, ptr %1186, align 8, !tbaa !6
  %1188 = getelementptr inbounds i8, ptr %1181, i64 144
  %1189 = load i32, ptr %1188, align 8, !tbaa !282
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds ptr, ptr %1187, i64 %1190
  %1192 = load ptr, ptr %1191, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1192, i8 0, i64 16, i1 false)
  %1193 = load ptr, ptr %1092, align 8, !tbaa !299
  %1194 = getelementptr inbounds i8, ptr %1193, i64 8
  %1195 = load ptr, ptr %1194, align 8, !tbaa !6
  %1196 = load ptr, ptr @img, align 8, !tbaa !6
  %1197 = getelementptr inbounds i8, ptr %1196, i64 148
  %1198 = load i32, ptr %1197, align 4, !tbaa !283
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr ptr, ptr %1195, i64 %1199
  %1201 = getelementptr i8, ptr %1200, i64 24
  %1202 = load ptr, ptr %1201, align 8, !tbaa !6
  %1203 = getelementptr inbounds i8, ptr %1196, i64 144
  %1204 = load i32, ptr %1203, align 8, !tbaa !282
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds ptr, ptr %1202, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1207, i8 0, i64 16, i1 false)
  br label %1208

1208:                                             ; preds = %1087, %1148, %1090, %601
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind
define dso_local void @buf2img(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = sext i32 %4 to i64
  %7 = icmp ugt i32 %4, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 500) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call signext i32 @testEndian() #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %114

14:                                               ; preds = %12
  %15 = icmp sgt i32 %2, 0
  %16 = sext i32 %2 to i64
  %17 = zext nneg i32 %3 to i64
  %18 = zext nneg i32 %2 to i64
  br label %97

19:                                               ; preds = %9
  switch i32 %4, label %96 [
    i32 1, label %32
    i32 2, label %26
    i32 4, label %20
  ]

20:                                               ; preds = %19
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %96

22:                                               ; preds = %20
  %23 = icmp sgt i32 %2, 0
  %24 = zext i32 %2 to i64
  %25 = zext nneg i32 %3 to i64
  br label %75

26:                                               ; preds = %19
  %27 = icmp sgt i32 %3, 0
  br i1 %27, label %28, label %114

28:                                               ; preds = %26
  %29 = icmp sgt i32 %2, 0
  %30 = zext i32 %2 to i64
  %31 = zext nneg i32 %3 to i64
  br label %56

32:                                               ; preds = %19
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %32
  %35 = icmp sgt i32 %2, 0
  %36 = zext i32 %2 to i64
  %37 = zext nneg i32 %3 to i64
  br label %38

38:                                               ; preds = %34, %53
  %39 = phi i64 [ 0, %34 ], [ %54, %53 ]
  br i1 %35, label %40, label %53

40:                                               ; preds = %38
  %41 = mul nuw nsw i64 %39, %36
  %42 = getelementptr inbounds ptr, ptr %0, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %1, i64 %41
  br label %45

45:                                               ; preds = %40, %45
  %46 = phi i64 [ 0, %40 ], [ %51, %45 ]
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !21
  %49 = zext i8 %48 to i16
  %50 = getelementptr inbounds i16, ptr %43, i64 %46
  store i16 %49, ptr %50, align 2, !tbaa !112
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %36
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %38
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %114, label %38

56:                                               ; preds = %28, %72
  %57 = phi i64 [ 0, %28 ], [ %73, %72 ]
  br i1 %29, label %58, label %72

58:                                               ; preds = %56
  %59 = mul nuw nsw i64 %57, %30
  %60 = getelementptr inbounds ptr, ptr %0, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %58, %62
  %63 = phi i64 [ 0, %58 ], [ %70, %62 ]
  %64 = add nuw nsw i64 %63, %59
  %65 = shl nuw nsw i64 %64, 1
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = load i16, ptr %66, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %69 = getelementptr inbounds i16, ptr %61, i64 %63
  store i16 %68, ptr %69, align 2, !tbaa !112
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, %30
  br i1 %71, label %72, label %62

72:                                               ; preds = %62, %56
  %73 = add nuw nsw i64 %57, 1
  %74 = icmp eq i64 %73, %31
  br i1 %74, label %114, label %56

75:                                               ; preds = %22, %93
  %76 = phi i64 [ 0, %22 ], [ %94, %93 ]
  br i1 %23, label %77, label %93

77:                                               ; preds = %75
  %78 = mul nuw nsw i64 %76, %24
  %79 = getelementptr inbounds ptr, ptr %0, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  br label %81

81:                                               ; preds = %77, %81
  %82 = phi i64 [ 0, %77 ], [ %91, %81 ]
  %83 = add nuw nsw i64 %82, %78
  %84 = shl i64 %83, 2
  %85 = and i64 %84, 4294967292
  %86 = getelementptr inbounds i8, ptr %1, i64 %85
  %87 = load i32, ptr %86, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds i16, ptr %80, i64 %82
  store i16 %89, ptr %90, align 2, !tbaa !112
  %91 = add nuw nsw i64 %82, 1
  %92 = icmp eq i64 %91, %24
  br i1 %92, label %93, label %81

93:                                               ; preds = %81, %75
  %94 = add nuw nsw i64 %76, 1
  %95 = icmp eq i64 %94, %25
  br i1 %95, label %96, label %75

96:                                               ; preds = %93, %20, %19
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef signext 500) #17
  br label %114

97:                                               ; preds = %14, %111
  %98 = phi i64 [ 0, %14 ], [ %112, %111 ]
  br i1 %15, label %99, label %111

99:                                               ; preds = %97
  %100 = getelementptr inbounds ptr, ptr %0, i64 %98
  %101 = mul nuw nsw i64 %98, %16
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ 0, %99 ], [ %109, %102 ]
  %104 = load ptr, ptr %100, align 8, !tbaa !6
  %105 = getelementptr inbounds i16, ptr %104, i64 %103
  store i16 0, ptr %105, align 2, !tbaa !112
  %106 = add nuw nsw i64 %103, %101
  %107 = mul nsw i64 %106, %6
  %108 = getelementptr inbounds i8, ptr %1, i64 %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %105, ptr align 1 %108, i64 %6, i1 false)
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %109, %18
  br i1 %110, label %111, label %102

111:                                              ; preds = %102, %97
  %112 = add nuw nsw i64 %98, 1
  %113 = icmp eq i64 %112, %17
  br i1 %113, label %114, label %97

114:                                              ; preds = %72, %53, %111, %26, %32, %12, %96
  ret void
}

declare dso_local signext i32 @testEndian() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @output_SP_coefficients() local_unnamed_addr #0 {
  %1 = load i32, ptr @number_sp2_frames, align 4, !tbaa !22
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 1304
  br i1 %2, label %5, label %15

5:                                                ; preds = %0
  %6 = tail call ptr @fopen64(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load ptr, ptr @input, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 1304
  %11 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %10)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

12:                                               ; preds = %5
  %13 = load i32, ptr @number_sp2_frames, align 4, !tbaa !22
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @number_sp2_frames, align 4, !tbaa !22
  br label %22

15:                                               ; preds = %0
  %16 = tail call ptr @fopen64(ptr noundef nonnull %4, ptr noundef nonnull @.str.8) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 1304
  %21 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %20)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

22:                                               ; preds = %15, %12
  %23 = phi ptr [ %6, %12 ], [ %16, %15 ]
  %24 = load ptr, ptr @img, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 60
  %26 = load i32, ptr %25, align 4, !tbaa !56
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %33, %22
  %29 = phi ptr [ %24, %22 ], [ %44, %33 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 64
  %31 = load i32, ptr %30, align 8, !tbaa !111
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %49, label %86

33:                                               ; preds = %22, %33
  %34 = phi i64 [ %43, %33 ], [ 0, %22 ]
  %35 = phi ptr [ %44, %33 ], [ %24, %22 ]
  %36 = load ptr, ptr @lrec, align 8, !tbaa !6
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %35, i64 52
  %40 = load i32, ptr %39, align 4, !tbaa !55
  %41 = sext i32 %40 to i64
  %42 = tail call i64 @fwrite(ptr noundef %38, i64 noundef 4, i64 noundef %41, ptr noundef nonnull %23)
  %43 = add nuw nsw i64 %34, 1
  %44 = load ptr, ptr @img, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 60
  %46 = load i32, ptr %45, align 4, !tbaa !56
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %33, label %28

49:                                               ; preds = %28, %49
  %50 = phi i64 [ %60, %49 ], [ 0, %28 ]
  %51 = phi ptr [ %61, %49 ], [ %29, %28 ]
  %52 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds ptr, ptr %53, i64 %50
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %51, i64 56
  %57 = load i32, ptr %56, align 8, !tbaa !110
  %58 = sext i32 %57 to i64
  %59 = tail call i64 @fwrite(ptr noundef %55, i64 noundef 4, i64 noundef %58, ptr noundef nonnull %23)
  %60 = add nuw nsw i64 %50, 1
  %61 = load ptr, ptr @img, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !111
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %49, label %66

66:                                               ; preds = %49
  %67 = icmp sgt i32 %63, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %66, %68
  %69 = phi i64 [ %80, %68 ], [ 0, %66 ]
  %70 = phi ptr [ %81, %68 ], [ %61, %66 ]
  %71 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds ptr, ptr %73, i64 %69
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %70, i64 56
  %77 = load i32, ptr %76, align 8, !tbaa !110
  %78 = sext i32 %77 to i64
  %79 = tail call i64 @fwrite(ptr noundef %75, i64 noundef 4, i64 noundef %78, ptr noundef nonnull %23)
  %80 = add nuw nsw i64 %69, 1
  %81 = load ptr, ptr @img, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %81, i64 64
  %83 = load i32, ptr %82, align 8, !tbaa !111
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %68, label %86

86:                                               ; preds = %68, %28, %66
  %87 = tail call signext i32 @fclose(ptr noundef nonnull %23)
  ret void
}

declare dso_local ptr @fopen64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @read_SP_coefficients() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3124
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 89200
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = shl nuw nsw i32 %3, 1
  %10 = srem i32 %8, %9
  %11 = icmp slt i32 %10, %3
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %1, i64 1504
  %14 = tail call ptr @fopen64(ptr noundef nonnull %13, ptr noundef nonnull @.str.9) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load ptr, ptr @input, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 1704
  %19 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %18)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

20:                                               ; preds = %5, %0
  %21 = getelementptr inbounds i8, ptr %1, i64 1704
  %22 = tail call ptr @fopen64(ptr noundef nonnull %21, ptr noundef nonnull @.str.9) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 1504
  %27 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %26)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

28:                                               ; preds = %20, %12
  %29 = phi ptr [ %14, %12 ], [ %22, %20 ]
  %30 = load ptr, ptr @img, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 52
  %32 = load i32, ptr %31, align 4, !tbaa !55
  %33 = getelementptr inbounds i8, ptr %30, i64 60
  %34 = load i32, ptr %33, align 4, !tbaa !56
  %35 = mul i32 %32, 3
  %36 = mul i32 %35, %34
  %37 = sdiv i32 %36, 2
  %38 = load i32, ptr @number_sp2_frames, align 4, !tbaa !22
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call signext i32 @fseek(ptr noundef nonnull %29, i64 noundef %41, i32 noundef signext 0)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

46:                                               ; preds = %28
  %47 = load i32, ptr @number_sp2_frames, align 4, !tbaa !22
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @number_sp2_frames, align 4, !tbaa !22
  %49 = load ptr, ptr @img, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 60
  %51 = load i32, ptr %50, align 4, !tbaa !56
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %65, label %60

53:                                               ; preds = %65
  %54 = add nuw nsw i64 %66, 1
  %55 = load ptr, ptr @img, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %55, i64 60
  %57 = load i32, ptr %56, align 4, !tbaa !56
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %46
  %61 = phi ptr [ %49, %46 ], [ %55, %53 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !111
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %86, label %124

65:                                               ; preds = %46, %53
  %66 = phi i64 [ %54, %53 ], [ 0, %46 ]
  %67 = phi ptr [ %55, %53 ], [ %49, %46 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 52
  %69 = load i32, ptr %68, align 4, !tbaa !55
  %70 = load ptr, ptr @lrec, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = sext i32 %69 to i64
  %74 = tail call i64 @fread(ptr noundef %72, i64 noundef 4, i64 noundef %73, ptr noundef nonnull %29)
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %69, %75
  br i1 %76, label %53, label %77

77:                                               ; preds = %65
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

79:                                               ; preds = %86
  %80 = add nuw nsw i64 %87, 1
  %81 = load ptr, ptr @img, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %81, i64 64
  %83 = load i32, ptr %82, align 8, !tbaa !111
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %60, %79
  %87 = phi i64 [ %80, %79 ], [ 0, %60 ]
  %88 = phi ptr [ %81, %79 ], [ %61, %60 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 56
  %90 = load i32, ptr %89, align 8, !tbaa !110
  %91 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds ptr, ptr %92, i64 %87
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = sext i32 %90 to i64
  %96 = tail call i64 @fread(ptr noundef %94, i64 noundef 4, i64 noundef %95, ptr noundef nonnull %29)
  %97 = trunc i64 %96 to i32
  %98 = icmp eq i32 %90, %97
  br i1 %98, label %79, label %99

99:                                               ; preds = %86, %103
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

101:                                              ; preds = %79
  %102 = icmp sgt i32 %83, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %101, %117
  %104 = phi i64 [ %118, %117 ], [ 0, %101 ]
  %105 = phi ptr [ %119, %117 ], [ %81, %101 ]
  %106 = getelementptr inbounds i8, ptr %105, i64 56
  %107 = load i32, ptr %106, align 8, !tbaa !110
  %108 = load ptr, ptr @lrec_uv, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 8
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %104
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = sext i32 %107 to i64
  %114 = tail call i64 @fread(ptr noundef %112, i64 noundef 4, i64 noundef %113, ptr noundef nonnull %29)
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %107, %115
  br i1 %116, label %117, label %99

117:                                              ; preds = %103
  %118 = add nuw nsw i64 %104, 1
  %119 = load ptr, ptr @img, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %119, i64 64
  %121 = load i32, ptr %120, align 8, !tbaa !111
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %118, %122
  br i1 %123, label %103, label %124

124:                                              ; preds = %117, %60, %101
  %125 = tail call signext i32 @fclose(ptr noundef nonnull %29)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #10

declare dso_local ptr @AllocNALU(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @FreeNALU(ptr noundef) local_unnamed_addr #2

declare dso_local void @combine_field() local_unnamed_addr #2

declare dso_local signext i32 @decide_fld_frame(float noundef, float noundef, i32 noundef signext, i32 noundef signext, double noundef) local_unnamed_addr #2

declare dso_local void @UpdateSubseqInfo(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @UpdateSceneInformation(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @PutPel_11(ptr noundef, i32 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nounwind
declare dso_local i64 @lseek64(i32 noundef signext, i64 noundef, i32 noundef signext) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef signext, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare dso_local void @report_stats_on_error() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare dso_local signext i32 @test_wp_P_slice(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @picture_coding_decision(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @test_wp_B_slice(i32 noundef signext) local_unnamed_addr #2

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!10 = !{!11, !7, i64 6424}
!11 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 6464}
!14 = !{!15, !12, i64 90548}
!15 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !16, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !17, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !17, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !18, i64 90584, !12, i64 90588, !12, i64 90592}
!16 = !{!"float", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = !{!15, !12, i64 90304}
!20 = !{!11, !7, i64 6472}
!21 = !{!8, !8, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!15, !12, i64 90556}
!24 = !{!15, !12, i64 90560}
!25 = !{!15, !7, i64 31560}
!26 = !{!15, !12, i64 0}
!27 = !{!15, !12, i64 28}
!28 = !{!29, !12, i64 1236}
!29 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !17, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!30 = !{!15, !12, i64 24}
!31 = !{!32, !12, i64 4}
!32 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 808, !16, i64 812, !16, i64 816, !16, i64 820}
!33 = !{!32, !12, i64 0}
!34 = !{!32, !16, i64 812}
!35 = !{!32, !16, i64 820}
!36 = !{!32, !16, i64 816}
!37 = !{!15, !12, i64 90476}
!38 = !{!29, !12, i64 3892}
!39 = !{!15, !12, i64 90592}
!40 = !{!15, !12, i64 12}
!41 = !{!15, !12, i64 20}
!42 = !{!43, !12, i64 24}
!43 = !{!"", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 72, !8, i64 372, !8, i64 672, !12, i64 688, !7, i64 696, !7, i64 704, !12, i64 712, !12, i64 716, !12, i64 720, !16, i64 724, !16, i64 728, !16, i64 732, !8, i64 736, !8, i64 1036, !8, i64 1336, !8, i64 1356, !8, i64 1376, !8, i64 1396, !8, i64 1416, !8, i64 1436, !8, i64 1456, !12, i64 1476, !12, i64 1480, !7, i64 1488, !12, i64 1496, !12, i64 1500}
!44 = !{!29, !12, i64 3136}
!45 = !{!29, !12, i64 3576}
!46 = !{!47, !7, i64 24}
!47 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!48 = !{!15, !12, i64 90220}
!49 = !{!15, !12, i64 89212}
!50 = !{!15, !12, i64 90448}
!51 = !{!29, !12, i64 60}
!52 = !{!43, !12, i64 1500}
!53 = !{!43, !12, i64 1496}
!54 = !{!15, !12, i64 96}
!55 = !{!15, !12, i64 52}
!56 = !{!15, !12, i64 60}
!57 = !{!15, !7, i64 31576}
!58 = !{!59, !12, i64 4}
!59 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !60, i64 368, !8, i64 376, !8, i64 392, !60, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !18, i64 476, !17, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!60 = !{!"long long", !8, i64 0}
!61 = !{!15, !12, i64 89316}
!62 = !{!29, !12, i64 20}
!63 = !{!15, !12, i64 89200}
!64 = !{!15, !12, i64 89284}
!65 = !{!15, !12, i64 89288}
!66 = !{!29, !12, i64 3112}
!67 = !{!29, !12, i64 8}
!68 = !{!29, !12, i64 1244}
!69 = !{!29, !12, i64 3908}
!70 = !{!29, !12, i64 3124}
!71 = !{!29, !12, i64 1296}
!72 = !{!29, !12, i64 3128}
!73 = !{!15, !12, i64 40}
!74 = !{!29, !12, i64 12}
!75 = !{!29, !12, i64 3116}
!76 = !{!15, !12, i64 90316}
!77 = !{!29, !12, i64 4324}
!78 = !{!29, !12, i64 16}
!79 = !{!29, !12, i64 1284}
!80 = !{!29, !12, i64 1288}
!81 = !{!15, !12, i64 44}
!82 = !{!15, !12, i64 88}
!83 = !{!15, !12, i64 92}
!84 = !{!29, !12, i64 80}
!85 = !{!15, !12, i64 89312}
!86 = !{!15, !12, i64 90192}
!87 = !{!15, !17, i64 89304}
!88 = !{!29, !12, i64 1944}
!89 = !{!90, !12, i64 4}
!90 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!91 = !{!29, !12, i64 1248}
!92 = !{!29, !12, i64 3120}
!93 = !{!29, !12, i64 3132}
!94 = !{!15, !12, i64 90492}
!95 = !{!29, !12, i64 1252}
!96 = !{!90, !12, i64 12}
!97 = !{!15, !12, i64 90200}
!98 = !{!15, !12, i64 90324}
!99 = !{!15, !12, i64 90328}
!100 = !{!15, !7, i64 90336}
!101 = !{!29, !12, i64 224}
!102 = !{!29, !12, i64 68}
!103 = !{!29, !12, i64 72}
!104 = !{!29, !12, i64 3980}
!105 = !{!29, !12, i64 3976}
!106 = !{!15, !12, i64 90480}
!107 = !{!29, !12, i64 3984}
!108 = !{!29, !12, i64 76}
!109 = !{!29, !12, i64 1240}
!110 = !{!15, !12, i64 56}
!111 = !{!15, !12, i64 64}
!112 = !{!18, !18, i64 0}
!113 = !{!29, !12, i64 1256}
!114 = !{!15, !12, i64 89404}
!115 = !{!29, !12, i64 3600}
!116 = !{!15, !12, i64 89392}
!117 = !{!29, !12, i64 3604}
!118 = !{!15, !12, i64 89396}
!119 = !{!29, !12, i64 3608}
!120 = !{!15, !12, i64 89400}
!121 = !{!29, !12, i64 4260}
!122 = !{!15, !12, i64 90212}
!123 = !{!124, !12, i64 120}
!124 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !8, i64 44, !8, i64 64, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !12, i64 120}
!125 = !{!29, !12, i64 3552}
!126 = !{!15, !12, i64 90424}
!127 = !{!15, !12, i64 90264}
!128 = !{!15, !12, i64 89208}
!129 = !{!29, !12, i64 3556}
!130 = !{!29, !12, i64 3920}
!131 = !{!15, !12, i64 90432}
!132 = !{!15, !12, i64 90436}
!133 = !{!15, !12, i64 90444}
!134 = !{!135, !12, i64 1148}
!135 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !136, i64 1184}
!136 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !137, i64 84, !12, i64 496, !137, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!137 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!138 = !{!15, !12, i64 90420}
!139 = !{!29, !12, i64 64}
!140 = !{!29, !12, i64 1920}
!141 = !{!29, !12, i64 1916}
!142 = !{!29, !12, i64 1924}
!143 = !{!15, !12, i64 90308}
!144 = !{!29, !12, i64 1928}
!145 = !{!135, !12, i64 4}
!146 = !{!29, !12, i64 1932}
!147 = !{!29, !12, i64 1292}
!148 = !{!29, !12, i64 1300}
!149 = !{!15, !12, i64 90452}
!150 = !{!15, !12, i64 90500}
!151 = !{!32, !12, i64 808}
!152 = !{!15, !12, i64 90428}
!153 = !{!43, !12, i64 28}
!154 = !{!15, !12, i64 89280}
!155 = !{!124, !16, i64 0}
!156 = !{!124, !16, i64 4}
!157 = !{!124, !16, i64 8}
!158 = !{!15, !12, i64 89204}
!159 = !{!15, !12, i64 90580}
!160 = !{!15, !12, i64 68}
!161 = !{!43, !12, i64 16}
!162 = !{!43, !12, i64 20}
!163 = !{!29, !12, i64 3904}
!164 = !{!15, !12, i64 90532}
!165 = !{!15, !12, i64 90536}
!166 = !{!15, !7, i64 89184}
!167 = !{!124, !16, i64 96}
!168 = !{!124, !16, i64 100}
!169 = !{!124, !16, i64 104}
!170 = !{!124, !16, i64 12}
!171 = !{!124, !16, i64 16}
!172 = !{!124, !16, i64 20}
!173 = !{!124, !16, i64 84}
!174 = !{!124, !16, i64 88}
!175 = !{!124, !16, i64 92}
!176 = !{!124, !16, i64 108}
!177 = !{!124, !16, i64 112}
!178 = !{!124, !16, i64 116}
!179 = !{!16, !16, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"long", !8, i64 0}
!182 = !{!183, !18, i64 8}
!183 = !{!"timeb", !181, i64 0, !18, i64 8, !18, i64 10, !18, i64 12}
!184 = !{!15, !12, i64 90224}
!185 = !{!15, !12, i64 89408}
!186 = !{!15, !12, i64 89412}
!187 = !{!43, !12, i64 712}
!188 = !{!43, !12, i64 716}
!189 = !{!190, !12, i64 192}
!190 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!191 = !{!43, !12, i64 720}
!192 = !{!190, !12, i64 196}
!193 = !{!43, !12, i64 1480}
!194 = !{!43, !7, i64 1488}
!195 = !{!15, !12, i64 90268}
!196 = !{!11, !12, i64 4}
!197 = !{!11, !12, i64 16}
!198 = !{!15, !12, i64 90284}
!199 = !{!11, !12, i64 6364}
!200 = !{!11, !12, i64 6360}
!201 = !{!11, !12, i64 6412}
!202 = !{!11, !12, i64 6416}
!203 = !{!15, !12, i64 90280}
!204 = !{!11, !12, i64 6556}
!205 = !{!135, !12, i64 1160}
!206 = !{!11, !12, i64 6560}
!207 = !{!135, !12, i64 32}
!208 = !{!11, !12, i64 6552}
!209 = !{!135, !12, i64 1164}
!210 = !{!135, !12, i64 1168}
!211 = !{!135, !12, i64 1172}
!212 = !{!135, !12, i64 1176}
!213 = !{!11, !12, i64 0}
!214 = !{!15, !7, i64 31568}
!215 = !{!216, !7, i64 24}
!216 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!217 = !{!218, !7, i64 0}
!218 = !{!"datapartition", !7, i64 0, !219, i64 8, !7, i64 104}
!219 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!220 = !{!221, !12, i64 0}
!221 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !7, i64 32, !12, i64 40}
!222 = !{!15, !12, i64 90272}
!223 = !{!29, !12, i64 3560}
!224 = !{!29, !12, i64 1940}
!225 = !{!15, !12, i64 90276}
!226 = !{!11, !12, i64 8}
!227 = !{!11, !12, i64 12}
!228 = !{!43, !12, i64 1476}
!229 = !{!216, !12, i64 16}
!230 = !{!221, !12, i64 4}
!231 = !{!15, !12, i64 90484}
!232 = !{!15, !12, i64 90488}
!233 = !{!234, !12, i64 0}
!234 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24}
!235 = !{!234, !12, i64 4}
!236 = !{!234, !7, i64 24}
!237 = !{!221, !7, i64 32}
!238 = !{!234, !12, i64 12}
!239 = !{!29, !12, i64 2992}
!240 = !{!234, !12, i64 16}
!241 = !{!234, !12, i64 20}
!242 = !{!15, !12, i64 89292}
!243 = !{!15, !12, i64 89296}
!244 = !{!11, !12, i64 6396}
!245 = !{!11, !12, i64 6392}
!246 = !{!11, !7, i64 6448}
!247 = !{!11, !7, i64 6432}
!248 = !{!29, !12, i64 1904}
!249 = !{!29, !12, i64 1908}
!250 = !{!11, !7, i64 6440}
!251 = !{!59, !12, i64 428}
!252 = !{!253, !12, i64 1640}
!253 = !{!"", !17, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !7, i64 1544, !7, i64 1552, !12, i64 1560, !18, i64 1564, !8, i64 1568, !8, i64 1584, !7, i64 1600, !8, i64 1608, !12, i64 1624, !60, i64 1632, !12, i64 1640, !7, i64 1648, !7, i64 1656, !8, i64 1664, !12, i64 1696, !12, i64 1700, !12, i64 1704, !12, i64 1708, !12, i64 1712, !12, i64 1716, !12, i64 1720, !12, i64 1724, !12, i64 1728}
!254 = !{!253, !12, i64 1560}
!255 = !{!59, !12, i64 72}
!256 = !{!253, !12, i64 1624}
!257 = !{!59, !12, i64 364}
!258 = !{!253, !60, i64 1632}
!259 = !{!59, !60, i64 368}
!260 = !{!253, !18, i64 1564}
!261 = !{!59, !18, i64 476}
!262 = !{!253, !12, i64 1696}
!263 = !{!15, !12, i64 90196}
!264 = !{!253, !12, i64 1716}
!265 = !{!59, !12, i64 488}
!266 = !{!253, !12, i64 1720}
!267 = !{!59, !12, i64 492}
!268 = !{!253, !12, i64 1728}
!269 = !{!59, !12, i64 496}
!270 = !{!253, !12, i64 1724}
!271 = !{!59, !12, i64 8}
!272 = !{!253, !12, i64 1712}
!273 = !{!59, !12, i64 12}
!274 = !{!253, !12, i64 1700}
!275 = !{!59, !12, i64 416}
!276 = !{!15, !12, i64 90540}
!277 = !{!15, !7, i64 14136}
!278 = !{!253, !7, i64 1544}
!279 = !{!15, !7, i64 14144}
!280 = !{!253, !7, i64 1552}
!281 = !{!11, !7, i64 6480}
!282 = !{!15, !12, i64 144}
!283 = !{!15, !12, i64 148}
!284 = !{!11, !7, i64 6488}
!285 = !{!60, !60, i64 0}
!286 = !{!15, !12, i64 156}
!287 = !{!15, !12, i64 152}
!288 = !{!15, !12, i64 164}
!289 = !{!15, !12, i64 160}
!290 = !{!253, !12, i64 1704}
!291 = !{!59, !12, i64 468}
!292 = !{!15, !7, i64 104}
!293 = !{!253, !7, i64 1600}
!294 = !{!15, !12, i64 36}
!295 = !{!253, !7, i64 1656}
!296 = !{!15, !7, i64 89336}
!297 = !{!253, !7, i64 1648}
!298 = !{!15, !7, i64 89328}
!299 = !{!11, !7, i64 6504}
