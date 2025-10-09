; ModuleID = 'putmpg.c'
source_filename = "putmpg.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@dc_dct_pred = external dso_local local_unnamed_addr global [3 x i32], align 4
@altscan = external dso_local local_unnamed_addr global i32, align 4
@alternate_scan = external dso_local local_unnamed_addr global [64 x i8], align 1
@zig_zag_scan = external dso_local local_unnamed_addr global [64 x i8], align 1
@intravlc = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid motion vector\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @putintrablk(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 2, !tbaa !6
  %4 = sext i16 %3 to i32
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [3 x i32], ptr @dc_dct_pred, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = sub nsw i32 %4, %7
  store i32 %4, ptr %6, align 4, !tbaa !10
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @putDClum(i32 noundef signext %8) #4
  br label %12

11:                                               ; preds = %2
  tail call void @putDCchrom(i32 noundef signext %8) #4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, ptr @altscan, align 4, !tbaa !10
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi i32 [ %13, %12 ], [ %33, %32 ]
  %16 = phi i64 [ 1, %12 ], [ %35, %32 ]
  %17 = phi i32 [ 0, %12 ], [ %34, %32 ]
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %18, ptr @zig_zag_scan, ptr @alternate_scan
  %20 = getelementptr inbounds i8, ptr %19, i64 %16
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i16, ptr %0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !6
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %14
  %27 = sext i16 %24 to i32
  %28 = load i32, ptr @intravlc, align 4, !tbaa !10
  tail call void @putAC(i32 noundef signext %17, i32 noundef signext %27, i32 noundef signext %28) #4
  %29 = load i32, ptr @altscan, align 4, !tbaa !10
  br label %32

30:                                               ; preds = %14
  %31 = add nsw i32 %17, 1
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i32 [ %29, %26 ], [ %15, %30 ]
  %34 = phi i32 [ 0, %26 ], [ %31, %30 ]
  %35 = add nuw nsw i64 %16, 1
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %37, label %14

37:                                               ; preds = %32
  %38 = load i32, ptr @intravlc, align 4, !tbaa !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @putbits(i32 noundef signext 6, i32 noundef signext 4) #4
  br label %42

41:                                               ; preds = %37
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 2) #4
  br label %42

42:                                               ; preds = %41, %40
  ret void
}

declare dso_local void @putDClum(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @putDCchrom(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @putAC(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @putnonintrablk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %22
  %3 = phi i64 [ 0, %1 ], [ %25, %22 ]
  %4 = phi i32 [ 1, %1 ], [ %24, %22 ]
  %5 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %6 = load i32, ptr @altscan, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @zig_zag_scan, ptr @alternate_scan
  %9 = getelementptr inbounds i8, ptr %8, i64 %3
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !6
  %14 = sext i16 %13 to i32
  %15 = icmp eq i16 %13, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @putACfirst(i32 noundef signext %5, i32 noundef signext %14) #4
  br label %22

19:                                               ; preds = %16
  tail call void @putAC(i32 noundef signext %5, i32 noundef signext %14, i32 noundef signext 0) #4
  br label %22

20:                                               ; preds = %2
  %21 = add nsw i32 %5, 1
  br label %22

22:                                               ; preds = %18, %19, %20
  %23 = phi i32 [ %21, %20 ], [ 0, %19 ], [ 0, %18 ]
  %24 = phi i32 [ %4, %20 ], [ 0, %19 ], [ 0, %18 ]
  %25 = add nuw nsw i64 %3, 1
  %26 = icmp eq i64 %25, 64
  br i1 %26, label %27, label %2

27:                                               ; preds = %22
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 2) #4
  ret void
}

declare dso_local void @putACfirst(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @putmv(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, -1
  %4 = shl i32 -16, %3
  %5 = shl i32 16, %3
  %6 = shl i32 32, %3
  %7 = icmp sgt i32 %5, %0
  %8 = icmp sgt i32 %4, %0
  %9 = select i1 %8, i32 %6, i32 0
  %10 = sub i32 0, %6
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = add i32 %11, %0
  %13 = icmp slt i32 %12, %4
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = icmp slt i32 %12, %5
  %16 = load i32, ptr @quiet, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %25, label %22

19:                                               ; preds = %2
  %20 = load i32, ptr @quiet, align 4, !tbaa !10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !13
  %24 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %23) #5
  br label %25

25:                                               ; preds = %19, %22, %14
  %26 = icmp slt i32 %12, 0
  %27 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %28 = shl nsw i32 -1, %3
  %29 = xor i32 %28, -1
  %30 = add nuw i32 %27, %29
  %31 = ashr i32 %30, %3
  %32 = sub nsw i32 0, %31
  %33 = select i1 %26, i32 %32, i32 %31
  tail call void @putmotioncode(i32 noundef signext %33) #4
  %34 = icmp ne i32 %3, 0
  %35 = icmp ne i32 %31, 0
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = and i32 %30, %29
  tail call void @putbits(i32 noundef signext %38, i32 noundef signext %3) #4
  br label %39

39:                                               ; preds = %37, %25
  ret void
}

declare dso_local void @putmotioncode(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { cold }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
