; ModuleID = 'sac.c'
source_filename = "sac.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@high = internal unnamed_addr global i64 0, align 8
@low = internal unnamed_addr global i64 0, align 8
@code_value = internal unnamed_addr global i64 0, align 8
@sacindex = internal unnamed_addr global i64 0, align 8
@bit = internal unnamed_addr global i64 0, align 8
@zerorun = internal unnamed_addr global i64 0, align 8
@trace = external dso_local local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [26 x i8] c"Arithmetic Decoder Reset \00", align 1
@str.4 = private unnamed_addr constant [67 x i8] c"Startcode Found:Finishing Arithmetic Decoding using 'Garbage bits'\00", align 1
@str.5 = private unnamed_addr constant [48 x i8] c"PSC/GBSC, Header Data, or Encoded Stream Error \00", align 1
@str.6 = private unnamed_addr constant [45 x i8] c"Removing Startcode Emulation Prevention bit \00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @decode_a_symbol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @high, align 8, !tbaa !6
  %3 = load i64, ptr @low, align 8, !tbaa !6
  %4 = sub nsw i64 %2, %3
  %5 = add nsw i64 %4, 1
  %6 = load i64, ptr @code_value, align 8, !tbaa !6
  %7 = sub i64 %6, %3
  %8 = add i64 %7, 1
  %9 = load i32, ptr %0, align 4, !tbaa !10
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %8, %10
  %12 = add nsw i64 %11, -1
  %13 = sdiv i64 %12, %5
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 1, %1 ], [ %20, %14 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !10
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %13, %18
  %20 = add nuw nsw i64 %15, 1
  br i1 %19, label %14, label %21

21:                                               ; preds = %14
  store i64 %15, ptr @sacindex, align 8, !tbaa !6
  %22 = add nsw i64 %3, -1
  %23 = getelementptr i8, ptr %16, i64 -4
  %24 = load i32, ptr %23, align 4, !tbaa !10
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %5, %25
  %27 = sdiv i64 %26, %10
  %28 = add nsw i64 %22, %27
  store i64 %28, ptr @high, align 8, !tbaa !6
  %29 = mul nsw i64 %5, %18
  %30 = sdiv i64 %29, %10
  %31 = add nsw i64 %30, %3
  store i64 %31, ptr @low, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %86, %21
  %33 = phi i64 [ %92, %86 ], [ %31, %21 ]
  %34 = phi i64 [ %90, %86 ], [ %6, %21 ]
  %35 = phi i64 [ %91, %86 ], [ %28, %21 ]
  %36 = icmp slt i64 %35, 32768
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i64 %33, 32767
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = icmp sgt i64 %33, 16383
  %41 = icmp ult i64 %35, 49152
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %93

43:                                               ; preds = %39, %37
  %44 = phi i64 [ -32768, %37 ], [ -16384, %39 ]
  %45 = add nsw i64 %34, %44
  store i64 %45, ptr @code_value, align 8, !tbaa !6
  %46 = add nsw i64 %33, %44
  %47 = add nsw i64 %35, %44
  br label %48

48:                                               ; preds = %43, %32
  %49 = phi i64 [ %35, %32 ], [ %47, %43 ]
  %50 = phi i64 [ %33, %32 ], [ %46, %43 ]
  %51 = shl nsw i64 %50, 1
  store i64 %51, ptr @low, align 8, !tbaa !6
  %52 = shl nsw i64 %49, 1
  %53 = or disjoint i64 %52, 1
  store i64 %53, ptr @high, align 8, !tbaa !6
  %54 = tail call signext i32 @showbits(i32 noundef signext 17) #3
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %81, label %56

56:                                               ; preds = %48
  %57 = tail call signext i32 @getbits(i32 noundef signext 1) #3
  %58 = zext i32 %57 to i64
  store i64 %58, ptr @bit, align 8, !tbaa !6
  %59 = load i64, ptr @zerorun, align 8, !tbaa !6
  %60 = icmp sgt i64 %59, 13
  %61 = icmp eq i32 %57, 0
  br i1 %60, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32, ptr @trace, align 4, !tbaa !10
  %64 = icmp eq i32 %63, 0
  br i1 %61, label %65, label %69

65:                                               ; preds = %62
  br i1 %64, label %68, label %66

66:                                               ; preds = %65
  %67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  br label %68

68:                                               ; preds = %66, %65
  store i64 1, ptr @zerorun, align 8, !tbaa !6
  br label %86

69:                                               ; preds = %62
  br i1 %64, label %72, label %70

70:                                               ; preds = %69
  %71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  br label %72

72:                                               ; preds = %70, %69
  %73 = tail call signext i32 @getbits(i32 noundef signext 1) #3
  %74 = zext i32 %73 to i64
  store i64 %74, ptr @bit, align 8, !tbaa !6
  %75 = icmp eq i32 %73, 0
  %76 = zext i1 %75 to i64
  store i64 %76, ptr @zerorun, align 8, !tbaa !6
  br label %86

77:                                               ; preds = %56
  br i1 %61, label %78, label %80

78:                                               ; preds = %77
  %79 = add nsw i64 %59, 1
  store i64 %79, ptr @zerorun, align 8, !tbaa !6
  br label %86

80:                                               ; preds = %77
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %86

81:                                               ; preds = %48
  store i64 0, ptr @bit, align 8, !tbaa !6
  %82 = load i32, ptr @trace, align 4, !tbaa !10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  br label %86

86:                                               ; preds = %68, %72, %78, %80, %81, %84
  %87 = load i64, ptr @code_value, align 8, !tbaa !6
  %88 = shl nsw i64 %87, 1
  %89 = load i64, ptr @bit, align 8, !tbaa !6
  %90 = add nsw i64 %88, %89
  store i64 %90, ptr @code_value, align 8, !tbaa !6
  %91 = load i64, ptr @high, align 8
  %92 = load i64, ptr @low, align 8, !tbaa !6
  br label %32

93:                                               ; preds = %39
  %94 = load i64, ptr @sacindex, align 8, !tbaa !6
  %95 = trunc i64 %94 to i32
  %96 = add i32 %95, -1
  ret i32 %96
}

; Function Attrs: nounwind
define dso_local void @decoder_reset() local_unnamed_addr #0 {
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  store i64 0, ptr @code_value, align 8, !tbaa !6
  store i64 0, ptr @low, align 8, !tbaa !6
  store i64 65535, ptr @high, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %1 = load i64, ptr @code_value, align 8, !tbaa !6
  %2 = shl nsw i64 %1, 1
  %3 = load i64, ptr @bit, align 8, !tbaa !6
  %4 = add nsw i64 %2, %3
  store i64 %4, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %5 = load i64, ptr @code_value, align 8, !tbaa !6
  %6 = shl nsw i64 %5, 1
  %7 = load i64, ptr @bit, align 8, !tbaa !6
  %8 = add nsw i64 %6, %7
  store i64 %8, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %9 = load i64, ptr @code_value, align 8, !tbaa !6
  %10 = shl nsw i64 %9, 1
  %11 = load i64, ptr @bit, align 8, !tbaa !6
  %12 = add nsw i64 %10, %11
  store i64 %12, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %13 = load i64, ptr @code_value, align 8, !tbaa !6
  %14 = shl nsw i64 %13, 1
  %15 = load i64, ptr @bit, align 8, !tbaa !6
  %16 = add nsw i64 %14, %15
  store i64 %16, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %17 = load i64, ptr @code_value, align 8, !tbaa !6
  %18 = shl nsw i64 %17, 1
  %19 = load i64, ptr @bit, align 8, !tbaa !6
  %20 = add nsw i64 %18, %19
  store i64 %20, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %21 = load i64, ptr @code_value, align 8, !tbaa !6
  %22 = shl nsw i64 %21, 1
  %23 = load i64, ptr @bit, align 8, !tbaa !6
  %24 = add nsw i64 %22, %23
  store i64 %24, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %25 = load i64, ptr @code_value, align 8, !tbaa !6
  %26 = shl nsw i64 %25, 1
  %27 = load i64, ptr @bit, align 8, !tbaa !6
  %28 = add nsw i64 %26, %27
  store i64 %28, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %29 = load i64, ptr @code_value, align 8, !tbaa !6
  %30 = shl nsw i64 %29, 1
  %31 = load i64, ptr @bit, align 8, !tbaa !6
  %32 = add nsw i64 %30, %31
  store i64 %32, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %33 = load i64, ptr @code_value, align 8, !tbaa !6
  %34 = shl nsw i64 %33, 1
  %35 = load i64, ptr @bit, align 8, !tbaa !6
  %36 = add nsw i64 %34, %35
  store i64 %36, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %37 = load i64, ptr @code_value, align 8, !tbaa !6
  %38 = shl nsw i64 %37, 1
  %39 = load i64, ptr @bit, align 8, !tbaa !6
  %40 = add nsw i64 %38, %39
  store i64 %40, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %41 = load i64, ptr @code_value, align 8, !tbaa !6
  %42 = shl nsw i64 %41, 1
  %43 = load i64, ptr @bit, align 8, !tbaa !6
  %44 = add nsw i64 %42, %43
  store i64 %44, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %45 = load i64, ptr @code_value, align 8, !tbaa !6
  %46 = shl nsw i64 %45, 1
  %47 = load i64, ptr @bit, align 8, !tbaa !6
  %48 = add nsw i64 %46, %47
  store i64 %48, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %49 = load i64, ptr @code_value, align 8, !tbaa !6
  %50 = shl nsw i64 %49, 1
  %51 = load i64, ptr @bit, align 8, !tbaa !6
  %52 = add nsw i64 %50, %51
  store i64 %52, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %53 = load i64, ptr @code_value, align 8, !tbaa !6
  %54 = shl nsw i64 %53, 1
  %55 = load i64, ptr @bit, align 8, !tbaa !6
  %56 = add nsw i64 %54, %55
  store i64 %56, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %57 = load i64, ptr @code_value, align 8, !tbaa !6
  %58 = shl nsw i64 %57, 1
  %59 = load i64, ptr @bit, align 8, !tbaa !6
  %60 = add nsw i64 %58, %59
  store i64 %60, ptr @code_value, align 8, !tbaa !6
  tail call void @bit_out_psc_layer()
  %61 = load i64, ptr @code_value, align 8, !tbaa !6
  %62 = shl nsw i64 %61, 1
  %63 = load i64, ptr @bit, align 8, !tbaa !6
  %64 = add nsw i64 %62, %63
  store i64 %64, ptr @code_value, align 8, !tbaa !6
  %65 = load i32, ptr @trace, align 4, !tbaa !10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %0
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %69

69:                                               ; preds = %67, %0
  ret void
}

; Function Attrs: nounwind
define dso_local void @bit_out_psc_layer() local_unnamed_addr #0 {
  %1 = tail call signext i32 @showbits(i32 noundef signext 17) #3
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %28, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 @getbits(i32 noundef signext 1) #3
  %5 = zext i32 %4 to i64
  store i64 %5, ptr @bit, align 8, !tbaa !6
  %6 = load i64, ptr @zerorun, align 8, !tbaa !6
  %7 = icmp sgt i64 %6, 13
  %8 = icmp eq i32 %4, 0
  br i1 %7, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, ptr @trace, align 4, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %12, label %16

12:                                               ; preds = %9
  br i1 %11, label %15, label %13

13:                                               ; preds = %12
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  br label %15

15:                                               ; preds = %13, %12
  store i64 1, ptr @zerorun, align 8, !tbaa !6
  br label %33

16:                                               ; preds = %9
  br i1 %11, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  br label %19

19:                                               ; preds = %17, %16
  %20 = tail call signext i32 @getbits(i32 noundef signext 1) #3
  %21 = zext i32 %20 to i64
  store i64 %21, ptr @bit, align 8, !tbaa !6
  %22 = icmp eq i32 %20, 0
  %23 = zext i1 %22 to i64
  store i64 %23, ptr @zerorun, align 8, !tbaa !6
  br label %33

24:                                               ; preds = %3
  br i1 %8, label %25, label %27

25:                                               ; preds = %24
  %26 = add nsw i64 %6, 1
  store i64 %26, ptr @zerorun, align 8, !tbaa !6
  br label %33

27:                                               ; preds = %24
  store i64 0, ptr @zerorun, align 8, !tbaa !6
  br label %33

28:                                               ; preds = %0
  store i64 0, ptr @bit, align 8, !tbaa !6
  %29 = load i32, ptr @trace, align 4, !tbaa !10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  br label %33

33:                                               ; preds = %28, %31, %19, %15, %27, %25
  ret void
}

declare dso_local signext i32 @showbits(i32 noundef signext) local_unnamed_addr #1

declare dso_local signext i32 @getbits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind }
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
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
