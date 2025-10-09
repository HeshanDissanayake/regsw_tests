; ModuleID = 'gethdr.c'
source_filename = "gethdr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@syntax_arith_coding = external dso_local local_unnamed_addr global i32, align 4
@temp_ref = external dso_local local_unnamed_addr global i32, align 4
@prev_temp_ref = external dso_local local_unnamed_addr global i32, align 4
@trd = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@source_format = external dso_local local_unnamed_addr global i32, align 4
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@mv_outside_frame = external dso_local local_unnamed_addr global i32, align 4
@long_vectors = external dso_local local_unnamed_addr global i32, align 4
@adv_pred_mode = external dso_local local_unnamed_addr global i32, align 4
@pb_frame = external dso_local local_unnamed_addr global i32, align 4
@quant = external dso_local local_unnamed_addr global i32, align 4
@trb = external dso_local local_unnamed_addr global i32, align 4
@bquant = external dso_local local_unnamed_addr global i32, align 4
@verbose = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"  temp_ref=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"  trb=%d\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"warning: spare in picture header should be \221\22\00", align 1
@str.8 = private unnamed_addr constant [45 x i8] c"warning: H.261 distinction bit should be \220\22\00", align 1
@str.9 = private unnamed_addr constant [65 x i8] c"warning: document camera indicator not supported in this version\00", align 1
@str.10 = private unnamed_addr constant [54 x i8] c"warning: frozen picture not supported in this version\00", align 1
@str.11 = private unnamed_addr constant [41 x i8] c"error: CPM not supported in this version\00", align 1
@str.12 = private unnamed_addr constant [50 x i8] c"error: split-screen not supported in this version\00", align 1

; Function Attrs: nounwind
define dso_local signext range(i32 33, 32) i32 @getheader() local_unnamed_addr #0 {
  %1 = tail call signext i32 @showbits(i32 noundef signext 17) #5
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %0, %3
  tail call void @flushbits(i32 noundef signext 1) #5
  %4 = tail call signext i32 @showbits(i32 noundef signext 17) #5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %3

6:                                                ; preds = %3, %0
  %7 = tail call signext i32 @getbits(i32 noundef signext 17) #5
  %8 = tail call signext i32 @getbits(i32 noundef signext 5) #5
  switch i32 %8, label %107 [
    i32 31, label %109
    i32 0, label %9
  ]

9:                                                ; preds = %6
  %10 = load i32, ptr @temp_ref, align 4, !tbaa !6
  store i32 %10, ptr @prev_temp_ref, align 4, !tbaa !6
  %11 = tail call signext i32 @getbits(i32 noundef signext 8) #5
  store i32 %11, ptr @temp_ref, align 4, !tbaa !6
  %12 = load i32, ptr @prev_temp_ref, align 4, !tbaa !6
  %13 = sub nsw i32 %11, %12
  %14 = lshr i32 %13, 23
  %15 = and i32 %14, 256
  %16 = add i32 %15, %13
  store i32 %16, ptr @trd, align 4, !tbaa !6
  %17 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %18 = icmp ne i32 %17, 0
  %19 = load i32, ptr @quiet, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %24

24:                                               ; preds = %22, %9
  %25 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %26 = icmp eq i32 %25, 0
  %27 = load i32, ptr @quiet, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %32

32:                                               ; preds = %30, %24
  %33 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @quiet, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %40

40:                                               ; preds = %38, %35
  tail call void @exit(i32 noundef signext -1) #6
  unreachable

41:                                               ; preds = %32
  %42 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr @quiet, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %49

49:                                               ; preds = %47, %41
  %50 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @quiet, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %57

57:                                               ; preds = %55, %49
  %58 = tail call signext i32 @getbits(i32 noundef signext 3) #5
  store i32 %58, ptr @source_format, align 4, !tbaa !6
  %59 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  store i32 %59, ptr @pict_type, align 4, !tbaa !6
  %60 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  store i32 %60, ptr @mv_outside_frame, align 4, !tbaa !6
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, ptr @long_vectors, align 4, !tbaa !6
  %63 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  store i32 %63, ptr @syntax_arith_coding, align 4, !tbaa !6
  %64 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  store i32 %64, ptr @adv_pred_mode, align 4, !tbaa !6
  %65 = icmp eq i32 %64, 0
  %66 = load i32, ptr @mv_outside_frame, align 4
  %67 = select i1 %65, i32 %66, i32 1
  store i32 %67, ptr @mv_outside_frame, align 4, !tbaa !6
  %68 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  store i32 %68, ptr @pb_frame, align 4, !tbaa !6
  %69 = tail call signext i32 @getbits(i32 noundef signext 5) #5
  store i32 %69, ptr @quant, align 4, !tbaa !6
  %70 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %57
  %73 = load i32, ptr @quiet, align 4, !tbaa !6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %77

77:                                               ; preds = %75, %72
  tail call void @exit(i32 noundef signext -1) #6
  unreachable

78:                                               ; preds = %57
  %79 = load i32, ptr @pb_frame, align 4, !tbaa !6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = tail call signext i32 @getbits(i32 noundef signext 3) #5
  store i32 %82, ptr @trb, align 4, !tbaa !6
  %83 = tail call signext i32 @getbits(i32 noundef signext 2) #5
  store i32 %83, ptr @bquant, align 4, !tbaa !6
  br label %85

84:                                               ; preds = %78
  store i32 0, ptr @trb, align 4, !tbaa !6
  br label %85

85:                                               ; preds = %84, %81
  %86 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85, %88
  %89 = tail call signext i32 @getbits(i32 noundef signext 8) #5
  %90 = tail call signext i32 @getbits(i32 noundef signext 1) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %88

92:                                               ; preds = %88, %85
  %93 = load i32, ptr @verbose, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, ptr @temp_ref, align 4, !tbaa !6
  %97 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef signext %96)
  %98 = load i32, ptr @pb_frame, align 4, !tbaa !6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr @trb, align 4, !tbaa !6
  %102 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef signext %101)
  br label %103

103:                                              ; preds = %92, %95, %100
  %104 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call void @decoder_reset() #5
  br label %107

107:                                              ; preds = %6, %103, %106
  %108 = add i32 %8, 1
  br label %109

109:                                              ; preds = %6, %107
  %110 = phi i32 [ %108, %107 ], [ 0, %6 ]
  ret i32 %110
}

; Function Attrs: nounwind
define dso_local void @startcode() local_unnamed_addr #0 {
  %1 = tail call signext i32 @showbits(i32 noundef signext 17) #5
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %0, %3
  tail call void @flushbits(i32 noundef signext 1) #5
  %4 = tail call signext i32 @showbits(i32 noundef signext 17) #5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %3

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local signext i32 @getbits(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @decoder_reset(...) local_unnamed_addr #1

declare dso_local signext i32 @showbits(i32 noundef signext) local_unnamed_addr #1

declare dso_local void @flushbits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
