; ModuleID = 'puthdr.c'
source_filename = "puthdr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@aspectratio = external dso_local local_unnamed_addr global i32, align 4
@frame_rate_code = external dso_local local_unnamed_addr global i32, align 4
@bit_rate = external dso_local local_unnamed_addr global double, align 8
@vbv_buffer_size = external dso_local local_unnamed_addr global i32, align 4
@constrparms = external dso_local local_unnamed_addr global i32, align 4
@load_iquant = external dso_local local_unnamed_addr global i32, align 4
@intra_q = external dso_local local_unnamed_addr global [64 x i8], align 1
@zig_zag_scan = external dso_local local_unnamed_addr global [64 x i8], align 1
@load_niquant = external dso_local local_unnamed_addr global i32, align 4
@inter_q = external dso_local local_unnamed_addr global [64 x i8], align 1
@profile = external dso_local local_unnamed_addr global i32, align 4
@level = external dso_local local_unnamed_addr global i32, align 4
@prog_seq = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@video_format = external dso_local local_unnamed_addr global i32, align 4
@color_primaries = external dso_local local_unnamed_addr global i32, align 4
@transfer_characteristics = external dso_local local_unnamed_addr global i32, align 4
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4
@display_horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@display_vertical_size = external dso_local local_unnamed_addr global i32, align 4
@tc0 = external dso_local local_unnamed_addr global i32, align 4
@temp_ref = external dso_local local_unnamed_addr global i32, align 4
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@vbv_delay = external dso_local local_unnamed_addr global i32, align 4
@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@forw_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@forw_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@dc_prec = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@topfirst = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_dct = external dso_local local_unnamed_addr global i32, align 4
@q_scale_type = external dso_local local_unnamed_addr global i32, align 4
@intravlc = external dso_local local_unnamed_addr global i32, align 4
@altscan = external dso_local local_unnamed_addr global i32, align 4
@repeatfirst = external dso_local local_unnamed_addr global i32, align 4
@prog_frame = external dso_local local_unnamed_addr global i32, align 4
@frame_rate = external dso_local local_unnamed_addr global double, align 8

; Function Attrs: nounwind
define dso_local void @putseqhdr() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 435, i32 noundef signext 32) #3
  %1 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 12) #3
  %2 = load i32, ptr @vertical_size, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %2, i32 noundef signext 12) #3
  %3 = load i32, ptr @aspectratio, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %3, i32 noundef signext 4) #3
  %4 = load i32, ptr @frame_rate_code, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %4, i32 noundef signext 4) #3
  %5 = load double, ptr @bit_rate, align 8, !tbaa !10
  %6 = fdiv double %5, 4.000000e+02
  %7 = tail call double @llvm.ceil.f64(double %6)
  %8 = fptosi double %7 to i32
  tail call void @putbits(i32 noundef signext %8, i32 noundef signext 18) #3
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #3
  %9 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %9, i32 noundef signext 10) #3
  %10 = load i32, ptr @constrparms, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %10, i32 noundef signext 1) #3
  %11 = load i32, ptr @load_iquant, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %11, i32 noundef signext 1) #3
  %12 = load i32, ptr @load_iquant, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %0, %14
  %15 = phi i64 [ %22, %14 ], [ 0, %0 ]
  %16 = getelementptr inbounds [64 x i8], ptr @zig_zag_scan, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !12
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [64 x i8], ptr @intra_q, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !12
  %21 = zext i8 %20 to i32
  tail call void @putbits(i32 noundef signext %21, i32 noundef signext 8) #3
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, 64
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %0
  %25 = load i32, ptr @load_niquant, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %25, i32 noundef signext 1) #3
  %26 = load i32, ptr @load_niquant, align 4, !tbaa !6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %36, %28 ], [ 0, %24 ]
  %30 = getelementptr inbounds [64 x i8], ptr @zig_zag_scan, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [64 x i8], ptr @inter_q, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !12
  %35 = zext i8 %34 to i32
  tail call void @putbits(i32 noundef signext %35, i32 noundef signext 8) #3
  %36 = add nuw nsw i64 %29, 1
  %37 = icmp eq i64 %36, 64
  br i1 %37, label %38, label %28

38:                                               ; preds = %28, %24
  ret void
}

declare dso_local void @alignbits() local_unnamed_addr #1

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind
define dso_local void @putseqext() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 437, i32 noundef signext 32) #3
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 4) #3
  %1 = load i32, ptr @profile, align 4, !tbaa !6
  %2 = shl i32 %1, 4
  %3 = load i32, ptr @level, align 4, !tbaa !6
  %4 = or i32 %2, %3
  tail call void @putbits(i32 noundef signext %4, i32 noundef signext 8) #3
  %5 = load i32, ptr @prog_seq, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %5, i32 noundef signext 1) #3
  %6 = load i32, ptr @chroma_format, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %6, i32 noundef signext 2) #3
  %7 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %8 = ashr i32 %7, 12
  tail call void @putbits(i32 noundef signext %8, i32 noundef signext 2) #3
  %9 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %10 = ashr i32 %9, 12
  tail call void @putbits(i32 noundef signext %10, i32 noundef signext 2) #3
  %11 = load double, ptr @bit_rate, align 8, !tbaa !10
  %12 = fdiv double %11, 4.000000e+02
  %13 = tail call double @llvm.ceil.f64(double %12)
  %14 = fptosi double %13 to i32
  %15 = ashr i32 %14, 18
  tail call void @putbits(i32 noundef signext %15, i32 noundef signext 12) #3
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #3
  %16 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !6
  %17 = ashr i32 %16, 10
  tail call void @putbits(i32 noundef signext %17, i32 noundef signext 8) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 2) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @putseqdispext() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 437, i32 noundef signext 32) #3
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 4) #3
  %1 = load i32, ptr @video_format, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 3) #3
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #3
  %2 = load i32, ptr @color_primaries, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %2, i32 noundef signext 8) #3
  %3 = load i32, ptr @transfer_characteristics, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %3, i32 noundef signext 8) #3
  %4 = load i32, ptr @matrix_coefficients, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %4, i32 noundef signext 8) #3
  %5 = load i32, ptr @display_horizontal_size, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %5, i32 noundef signext 14) #3
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #3
  %6 = load i32, ptr @display_vertical_size, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %6, i32 noundef signext 14) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @putuserdata(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 434, i32 noundef signext 32) #3
  %2 = load i8, ptr %0, align 1, !tbaa !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = zext i8 %5 to i32
  tail call void @putbits(i32 noundef signext %8, i32 noundef signext 8) #3
  %9 = load i8, ptr %7, align 1, !tbaa !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @putgophdr(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 440, i32 noundef signext 32) #3
  %3 = load i32, ptr @tc0, align 4, !tbaa !6
  %4 = add nsw i32 %3, %0
  %5 = load double, ptr @frame_rate, align 8, !tbaa !10
  %6 = fadd double %5, 5.000000e-01
  %7 = fptosi double %6 to i32
  %8 = freeze i32 %4
  %9 = freeze i32 %7
  %10 = sdiv i32 %8, %9
  %11 = mul i32 %10, %9
  %12 = sub i32 %8, %11
  %13 = sdiv i32 %10, 60
  %14 = mul i32 %13, 60
  %15 = sub i32 %10, %14
  %16 = srem i32 %13, 60
  %17 = sdiv i32 %10, 3600
  %18 = srem i32 %17, 24
  %19 = shl nsw i32 %18, 19
  %20 = shl nsw i32 %16, 13
  %21 = shl nsw i32 %15, 6
  %22 = or i32 %12, %21
  %23 = or i32 %22, %20
  %24 = or i32 %23, %19
  %25 = or i32 %24, 4096
  tail call void @putbits(i32 noundef signext %25, i32 noundef signext 25) #3
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 1) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @putpicthdr() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 256, i32 noundef signext 32) #3
  tail call void @calc_vbv_delay() #3
  %1 = load i32, ptr @temp_ref, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 10) #3
  %2 = load i32, ptr @pict_type, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %2, i32 noundef signext 3) #3
  %3 = load i32, ptr @vbv_delay, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %3, i32 noundef signext 16) #3
  %4 = load i32, ptr @pict_type, align 4
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  %8 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @forw_hor_f_code, align 4
  %11 = select i1 %9, i32 7, i32 %10
  tail call void @putbits(i32 noundef signext %11, i32 noundef signext 3) #3
  %12 = load i32, ptr @pict_type, align 4, !tbaa !6
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i32 [ %12, %7 ], [ %4, %0 ]
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  %17 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr @back_hor_f_code, align 4
  %20 = select i1 %18, i32 7, i32 %19
  tail call void @putbits(i32 noundef signext %20, i32 noundef signext 3) #3
  br label %21

21:                                               ; preds = %16, %13
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  ret void
}

declare dso_local void @calc_vbv_delay() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @putpictcodext() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 437, i32 noundef signext 32) #3
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext 4) #3
  %1 = load i32, ptr @forw_hor_f_code, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 4) #3
  %2 = load i32, ptr @forw_vert_f_code, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %2, i32 noundef signext 4) #3
  %3 = load i32, ptr @back_hor_f_code, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %3, i32 noundef signext 4) #3
  %4 = load i32, ptr @back_vert_f_code, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %4, i32 noundef signext 4) #3
  %5 = load i32, ptr @dc_prec, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %5, i32 noundef signext 2) #3
  %6 = load i32, ptr @pict_struct, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %6, i32 noundef signext 2) #3
  %7 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 3
  %9 = load i32, ptr @topfirst, align 4
  %10 = select i1 %8, i32 %9, i32 0
  tail call void @putbits(i32 noundef signext %10, i32 noundef signext 1) #3
  %11 = load i32, ptr @frame_pred_dct, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %11, i32 noundef signext 1) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  %12 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %12, i32 noundef signext 1) #3
  %13 = load i32, ptr @intravlc, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %13, i32 noundef signext 1) #3
  %14 = load i32, ptr @altscan, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %14, i32 noundef signext 1) #3
  %15 = load i32, ptr @repeatfirst, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %15, i32 noundef signext 1) #3
  %16 = load i32, ptr @prog_frame, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %16, i32 noundef signext 1) #3
  %17 = load i32, ptr @prog_frame, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %17, i32 noundef signext 1) #3
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @putseqend() local_unnamed_addr #0 {
  tail call void @alignbits() #3
  tail call void @putbits(i32 noundef signext 439, i32 noundef signext 32) #3
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!11 = !{!"double", !8, i64 0}
!12 = !{!8, !8, i64 0}
