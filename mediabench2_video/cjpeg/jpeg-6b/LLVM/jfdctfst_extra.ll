; ModuleID = 'jfdctfst.c'
source_filename = "jfdctfst.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_fdct_ifast(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 7, %1 ], [ %70, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %69, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %4, i64 28
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = add nsw i32 %7, %5
  %9 = sub nsw i32 %5, %7
  %10 = getelementptr inbounds i8, ptr %4, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %4, i64 24
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = getelementptr inbounds i8, ptr %4, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %4, i64 20
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = add nsw i32 %19, %17
  %21 = sub nsw i32 %17, %19
  %22 = getelementptr inbounds i8, ptr %4, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %4, i64 16
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = add nsw i32 %25, %23
  %27 = sub nsw i32 %23, %25
  %28 = add nsw i32 %26, %8
  %29 = sub nsw i32 %8, %26
  %30 = add nsw i32 %20, %14
  %31 = sub i32 %14, %20
  %32 = add nsw i32 %28, %30
  store i32 %32, ptr %4, align 4, !tbaa !6
  %33 = sub nsw i32 %28, %30
  store i32 %33, ptr %24, align 4, !tbaa !6
  %34 = add nsw i32 %31, %29
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 181
  %37 = lshr i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %29, %38
  store i32 %39, ptr %16, align 4, !tbaa !6
  %40 = sub nsw i32 %29, %38
  store i32 %40, ptr %12, align 4, !tbaa !6
  %41 = add nsw i32 %27, %21
  %42 = add nsw i32 %21, %15
  %43 = add nsw i32 %15, %9
  %44 = sub nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 98
  %47 = lshr i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %41 to i64
  %50 = mul nsw i64 %49, 139
  %51 = lshr i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %48, %52
  %54 = sext i32 %43 to i64
  %55 = mul nsw i64 %54, 334
  %56 = lshr i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %48, %57
  %59 = sext i32 %42 to i64
  %60 = mul nsw i64 %59, 181
  %61 = lshr i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %9, %62
  %64 = sub nsw i32 %9, %62
  %65 = add nsw i32 %53, %64
  store i32 %65, ptr %18, align 4, !tbaa !6
  %66 = sub nsw i32 %64, %53
  store i32 %66, ptr %22, align 4, !tbaa !6
  %67 = add nsw i32 %58, %63
  store i32 %67, ptr %10, align 4, !tbaa !6
  %68 = sub nsw i32 %63, %58
  store i32 %68, ptr %6, align 4, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %4, i64 32
  %70 = add nsw i32 %3, -1
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %72, label %2, !llvm.loop !10

72:                                               ; preds = %2, %72
  %73 = phi i32 [ %140, %72 ], [ 7, %2 ]
  %74 = phi ptr [ %139, %72 ], [ %0, %2 ]
  %75 = load i32, ptr %74, align 4, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %74, i64 224
  %77 = load i32, ptr %76, align 4, !tbaa !6
  %78 = add nsw i32 %77, %75
  %79 = sub nsw i32 %75, %77
  %80 = getelementptr inbounds i8, ptr %74, i64 32
  %81 = load i32, ptr %80, align 4, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %74, i64 192
  %83 = load i32, ptr %82, align 4, !tbaa !6
  %84 = add nsw i32 %83, %81
  %85 = sub nsw i32 %81, %83
  %86 = getelementptr inbounds i8, ptr %74, i64 64
  %87 = load i32, ptr %86, align 4, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %74, i64 160
  %89 = load i32, ptr %88, align 4, !tbaa !6
  %90 = add nsw i32 %89, %87
  %91 = sub nsw i32 %87, %89
  %92 = getelementptr inbounds i8, ptr %74, i64 96
  %93 = load i32, ptr %92, align 4, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %74, i64 128
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = add nsw i32 %95, %93
  %97 = sub nsw i32 %93, %95
  %98 = add nsw i32 %96, %78
  %99 = sub nsw i32 %78, %96
  %100 = add nsw i32 %90, %84
  %101 = sub i32 %84, %90
  %102 = add nsw i32 %98, %100
  store i32 %102, ptr %74, align 4, !tbaa !6
  %103 = sub nsw i32 %98, %100
  store i32 %103, ptr %94, align 4, !tbaa !6
  %104 = add nsw i32 %101, %99
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 181
  %107 = lshr i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = add nsw i32 %99, %108
  store i32 %109, ptr %86, align 4, !tbaa !6
  %110 = sub nsw i32 %99, %108
  store i32 %110, ptr %82, align 4, !tbaa !6
  %111 = add nsw i32 %97, %91
  %112 = add nsw i32 %91, %85
  %113 = add nsw i32 %85, %79
  %114 = sub nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, 98
  %117 = lshr i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = sext i32 %111 to i64
  %120 = mul nsw i64 %119, 139
  %121 = lshr i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = sext i32 %113 to i64
  %125 = mul nsw i64 %124, 334
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = add nsw i32 %118, %127
  %129 = sext i32 %112 to i64
  %130 = mul nsw i64 %129, 181
  %131 = lshr i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = add nsw i32 %79, %132
  %134 = sub nsw i32 %79, %132
  %135 = add nsw i32 %123, %134
  store i32 %135, ptr %88, align 4, !tbaa !6
  %136 = sub nsw i32 %134, %123
  store i32 %136, ptr %92, align 4, !tbaa !6
  %137 = add nsw i32 %128, %133
  store i32 %137, ptr %80, align 4, !tbaa !6
  %138 = sub nsw i32 %133, %128
  store i32 %138, ptr %76, align 4, !tbaa !6
  %139 = getelementptr inbounds i8, ptr %74, i64 4
  %140 = add nsw i32 %73, -1
  %141 = icmp eq i32 %73, 0
  br i1 %141, label %142, label %72, !llvm.loop !12

142:                                              ; preds = %72
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
