; ModuleID = 'sac.c'
source_filename = "sac.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@high = internal unnamed_addr global i64 65535, align 8
@low = internal unnamed_addr global i64 0, align 8
@opposite_bits = internal unnamed_addr global i64 0, align 8
@trace = external dso_local local_unnamed_addr global i32, align 4
@tf = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"encoder_flush:\0A\00", align 1
@zerorun = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"PSC emulation ... Bit stuffed.\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @AR_Encode(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr @high, align 8, !tbaa !6
  %6 = load i64, ptr @low, align 8, !tbaa !6
  %7 = sub nsw i64 %5, %6
  %8 = add nsw i64 %7, 1
  %9 = add nsw i64 %6, -1
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !10
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %8, %13
  %15 = load i32, ptr %1, align 4, !tbaa !10
  %16 = sext i32 %15 to i64
  %17 = sdiv i64 %14, %16
  %18 = add nsw i64 %9, %17
  store i64 %18, ptr @high, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %11, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !10
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %8, %21
  %23 = sdiv i64 %22, %16
  %24 = add nsw i64 %23, %6
  store i64 %24, ptr @low, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %53, %4
  %26 = phi i64 [ %57, %53 ], [ %24, %4 ]
  %27 = phi i64 [ %59, %53 ], [ %18, %4 ]
  %28 = phi i32 [ %56, %53 ], [ 0, %4 ]
  %29 = icmp slt i64 %27, 32768
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = tail call signext i32 @bit_opp_bits(i32 noundef signext 0)
  %32 = add nsw i32 %31, %28
  %33 = load i64, ptr @low, align 8, !tbaa !6
  %34 = load i64, ptr @high, align 8, !tbaa !6
  br label %53

35:                                               ; preds = %25
  %36 = icmp sgt i64 %26, 32767
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = tail call signext i32 @bit_opp_bits(i32 noundef signext 1)
  %39 = add nsw i32 %38, %28
  %40 = load i64, ptr @low, align 8, !tbaa !6
  %41 = add nsw i64 %40, -32768
  %42 = load i64, ptr @high, align 8, !tbaa !6
  %43 = add nsw i64 %42, -32768
  br label %53

44:                                               ; preds = %35
  %45 = icmp sgt i64 %26, 16383
  %46 = icmp ult i64 %27, 49152
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %50 = add nsw i64 %49, 1
  store i64 %50, ptr @opposite_bits, align 8, !tbaa !6
  %51 = add nsw i64 %26, -16384
  %52 = add nsw i64 %27, -16384
  br label %53

53:                                               ; preds = %37, %48, %30
  %54 = phi i64 [ %34, %30 ], [ %43, %37 ], [ %52, %48 ]
  %55 = phi i64 [ %33, %30 ], [ %41, %37 ], [ %51, %48 ]
  %56 = phi i32 [ %32, %30 ], [ %39, %37 ], [ %28, %48 ]
  %57 = shl nsw i64 %55, 1
  store i64 %57, ptr @low, align 8, !tbaa !6
  %58 = shl nsw i64 %54, 1
  %59 = or disjoint i64 %58, 1
  store i64 %59, ptr @high, align 8, !tbaa !6
  br label %25

60:                                               ; preds = %44, %2
  %61 = phi i32 [ -1, %2 ], [ %28, %44 ]
  ret i32 %61
}

; Function Attrs: nounwind
define dso_local signext i32 @bit_opp_bits(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @zerorun, align 8, !tbaa !6
  %3 = icmp sgt i64 %2, 13
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load i32, ptr @trace, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @tf, align 8, !tbaa !12
  %9 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %8)
  br label %10

10:                                               ; preds = %7, %4
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %1, %10
  %12 = phi i32 [ 2, %10 ], [ 1, %1 ]
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %0) #5
  %13 = icmp eq i32 %0, 0
  %14 = load i64, ptr @zerorun, align 8
  %15 = add nsw i64 %14, 1
  %16 = select i1 %13, i64 %15, i64 0
  store i64 %16, ptr @zerorun, align 8, !tbaa !6
  %17 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %11
  %20 = zext i1 %13 to i32
  br i1 %13, label %21, label %42

21:                                               ; preds = %19
  %22 = icmp sgt i64 %14, 12
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = load i32, ptr @trace, align 4, !tbaa !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @tf, align 8, !tbaa !12
  %28 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %27)
  br label %29

29:                                               ; preds = %26, %23
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %29, %21
  %31 = phi i32 [ 2, %29 ], [ 1, %21 ]
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %20) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  %32 = add nuw nsw i32 %31, %12
  %33 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr @opposite_bits, align 8, !tbaa !6
  %35 = icmp sgt i64 %33, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %30, %36
  %37 = phi i32 [ %38, %36 ], [ %32, %30 ]
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %20) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  %38 = add nuw nsw i32 %37, 1
  %39 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr @opposite_bits, align 8, !tbaa !6
  %41 = icmp sgt i64 %39, 1
  br i1 %41, label %36, label %61, !llvm.loop !14

42:                                               ; preds = %19, %53
  %43 = phi i64 [ %56, %53 ], [ 0, %19 ]
  %44 = phi i32 [ %57, %53 ], [ %12, %19 ]
  %45 = icmp sgt i64 %43, 13
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, ptr @trace, align 4, !tbaa !10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @tf, align 8, !tbaa !12
  %51 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %49, %46
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %53

53:                                               ; preds = %42, %52
  %54 = phi i32 [ 2, %52 ], [ 1, %42 ]
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %20) #5
  %55 = load i64, ptr @zerorun, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, ptr @zerorun, align 8, !tbaa !6
  %57 = add nuw nsw i32 %54, %44
  %58 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %59 = add nsw i64 %58, -1
  store i64 %59, ptr @opposite_bits, align 8, !tbaa !6
  %60 = icmp sgt i64 %58, 1
  br i1 %60, label %42, label %61

61:                                               ; preds = %53, %30, %36, %11
  %62 = phi i32 [ %12, %11 ], [ %32, %30 ], [ %38, %36 ], [ %57, %53 ]
  ret i32 %62
}

; Function Attrs: nounwind
define dso_local signext range(i32 1, 3) i32 @bit_in_psc_layer(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @zerorun, align 8, !tbaa !6
  %3 = icmp sgt i64 %2, 13
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load i32, ptr @trace, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @tf, align 8, !tbaa !12
  %9 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %8)
  br label %10

10:                                               ; preds = %7, %4
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #5
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ 2, %10 ], [ 1, %1 ]
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %0) #5
  %13 = icmp eq i32 %0, 0
  %14 = load i64, ptr @zerorun, align 8
  %15 = add nsw i64 %14, 1
  %16 = select i1 %13, i64 %15, i64 0
  store i64 %16, ptr @zerorun, align 8, !tbaa !6
  ret i32 %12
}

; Function Attrs: nounwind
define dso_local signext i32 @encoder_flush() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @tf, align 8, !tbaa !12
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, ptr @opposite_bits, align 8, !tbaa !6
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr @opposite_bits, align 8, !tbaa !6
  %9 = load i64, ptr @low, align 8, !tbaa !6
  %10 = icmp sgt i64 %9, 16383
  %11 = zext i1 %10 to i32
  %12 = tail call signext i32 @bit_opp_bits(i32 noundef signext %11)
  store i64 0, ptr @low, align 8, !tbaa !6
  store i64 65535, ptr @high, align 8, !tbaa !6
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  ret i32 %12
}

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local signext i32 @indexfn(i32 noundef signext %0, ptr nocapture noundef readonly %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %5 = add nuw i32 %4, 1
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %12, %3
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %17, label %7

15:                                               ; preds = %7
  %16 = trunc nuw nsw i64 %8 to i32
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi i32 [ %16, %15 ], [ -1, %12 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
