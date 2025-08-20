; ModuleID = 'jdtrans.c'
source_filename = "jdtrans.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local ptr @jpeg_read_coefficients(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !6
  switch i32 %3, label %103 [
    i32 202, label %4
    i32 209, label %60
    i32 210, label %93
    i32 207, label %93
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 88
  store i32 1, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %0, i64 316
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !16
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 1, ptr %11, align 8, !tbaa !17
  %12 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #2
  br label %19

13:                                               ; preds = %4
  %14 = getelementptr inbounds i8, ptr %0, i64 312
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @jinit_phuff_decoder(ptr noundef nonnull %0) #2
  br label %19

18:                                               ; preds = %13
  tail call void @jinit_huff_decoder(ptr noundef nonnull %0) #2
  br label %19

19:                                               ; preds = %18, %17, %9
  tail call void @jinit_d_coef_controller(ptr noundef nonnull %0, i32 noundef signext 1) #2
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds i8, ptr %21, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  tail call void %23(ptr noundef nonnull %0) #2
  %24 = getelementptr inbounds i8, ptr %0, i64 576
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds i8, ptr %25, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !26
  tail call void %27(ptr noundef nonnull %0) #2
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds i8, ptr %0, i64 312
  %33 = load i32, ptr %32, align 8, !tbaa !21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %0, i64 56
  %37 = load i32, ptr %36, align 8, !tbaa !29
  %38 = mul nsw i32 %37, 3
  %39 = add nsw i32 %38, 2
  br label %48

40:                                               ; preds = %31
  %41 = load ptr, ptr %24, align 8, !tbaa !25
  %42 = getelementptr inbounds i8, ptr %41, i64 32
  %43 = load i32, ptr %42, align 8, !tbaa !30
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %0, i64 56
  %47 = load i32, ptr %46, align 8, !tbaa !29
  br label %48

48:                                               ; preds = %45, %40, %35
  %49 = phi i32 [ %39, %35 ], [ %47, %45 ], [ 1, %40 ]
  %50 = getelementptr inbounds i8, ptr %29, i64 8
  store i64 0, ptr %50, align 8, !tbaa !31
  %51 = getelementptr inbounds i8, ptr %0, i64 420
  %52 = load i32, ptr %51, align 4, !tbaa !33
  %53 = zext i32 %52 to i64
  %54 = sext i32 %49 to i64
  %55 = mul nsw i64 %53, %54
  %56 = getelementptr inbounds i8, ptr %29, i64 16
  store i64 %55, ptr %56, align 8, !tbaa !34
  %57 = getelementptr inbounds i8, ptr %29, i64 24
  store i32 0, ptr %57, align 8, !tbaa !35
  %58 = getelementptr inbounds i8, ptr %29, i64 28
  store i32 1, ptr %58, align 4, !tbaa !36
  br label %59

59:                                               ; preds = %48, %19
  store i32 209, ptr %2, align 4, !tbaa !6
  br label %60

60:                                               ; preds = %1, %59
  %61 = getelementptr inbounds i8, ptr %0, i64 16
  %62 = getelementptr inbounds i8, ptr %0, i64 576
  %63 = getelementptr inbounds i8, ptr %0, i64 420
  %64 = load ptr, ptr %61, align 8, !tbaa !28
  br label %65

65:                                               ; preds = %80, %60
  %66 = phi ptr [ %64, %60 ], [ %75, %80 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !37
  tail call void %69(ptr noundef nonnull %0) #2
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr %62, align 8, !tbaa !25
  %72 = load ptr, ptr %71, align 8, !tbaa !38
  %73 = tail call signext i32 %72(ptr noundef nonnull %0) #2
  switch i32 %73, label %74 [
    i32 0, label %110
    i32 2, label %92
  ]

74:                                               ; preds = %70
  %75 = load ptr, ptr %61, align 8, !tbaa !28
  %76 = icmp ne ptr %75, null
  %77 = and i32 %73, -3
  %78 = icmp eq i32 %77, 1
  %79 = and i1 %78, %76
  br i1 %79, label %81, label %80

80:                                               ; preds = %74, %88, %81
  br label %65

81:                                               ; preds = %74
  %82 = getelementptr inbounds i8, ptr %75, i64 8
  %83 = load i64, ptr %82, align 8, !tbaa !31
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr %82, align 8, !tbaa !31
  %85 = getelementptr inbounds i8, ptr %75, i64 16
  %86 = load i64, ptr %85, align 8, !tbaa !34
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %80, label %88

88:                                               ; preds = %81
  %89 = load i32, ptr %63, align 4, !tbaa !33
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %86, %90
  store i64 %91, ptr %85, align 8, !tbaa !34
  br label %80

92:                                               ; preds = %70
  store i32 210, ptr %2, align 4, !tbaa !6
  br label %93

93:                                               ; preds = %1, %1, %92
  %94 = phi i32 [ 210, %92 ], [ %3, %1 ], [ %3, %1 ]
  %95 = getelementptr inbounds i8, ptr %0, i64 88
  %96 = load i32, ptr %95, align 8, !tbaa !14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds i8, ptr %0, i64 560
  %100 = load ptr, ptr %99, align 8, !tbaa !39
  %101 = getelementptr inbounds i8, ptr %100, i64 32
  %102 = load ptr, ptr %101, align 8, !tbaa !40
  br label %110

103:                                              ; preds = %1, %93
  %104 = phi i32 [ %94, %93 ], [ %3, %1 ]
  %105 = load ptr, ptr %0, align 8, !tbaa !16
  %106 = getelementptr inbounds i8, ptr %105, i64 40
  store i32 20, ptr %106, align 8, !tbaa !17
  %107 = getelementptr inbounds i8, ptr %105, i64 44
  store i32 %104, ptr %107, align 4, !tbaa !42
  %108 = load ptr, ptr %0, align 8, !tbaa !16
  %109 = load ptr, ptr %108, align 8, !tbaa !20
  tail call void %109(ptr noundef nonnull %0) #2
  br label %110

110:                                              ; preds = %70, %103, %98
  %111 = phi ptr [ %102, %98 ], [ null, %103 ], [ null, %70 ]
  ret ptr %111
}

declare dso_local void @jinit_phuff_decoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_huff_decoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_d_coef_controller(ptr noundef, i32 noundef signext) local_unnamed_addr #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !11, i64 88}
!15 = !{!7, !11, i64 316}
!16 = !{!7, !8, i64 0}
!17 = !{!18, !11, i64 40}
!18 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !19, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!19 = !{!"long", !9, i64 0}
!20 = !{!18, !8, i64 0}
!21 = !{!7, !11, i64 312}
!22 = !{!7, !8, i64 8}
!23 = !{!24, !8, i64 48}
!24 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !19, i64 88, !19, i64 96}
!25 = !{!7, !8, i64 576}
!26 = !{!27, !8, i64 16}
!27 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!28 = !{!7, !8, i64 16}
!29 = !{!7, !11, i64 56}
!30 = !{!27, !11, i64 32}
!31 = !{!32, !19, i64 8}
!32 = !{!"jpeg_progress_mgr", !8, i64 0, !19, i64 8, !19, i64 16, !11, i64 24, !11, i64 28}
!33 = !{!7, !11, i64 420}
!34 = !{!32, !19, i64 16}
!35 = !{!32, !11, i64 24}
!36 = !{!32, !11, i64 28}
!37 = !{!32, !8, i64 0}
!38 = !{!27, !8, i64 0}
!39 = !{!7, !8, i64 560}
!40 = !{!41, !8, i64 32}
!41 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!42 = !{!9, !9, i64 0}
