; ModuleID = 'jfdctint.c'
source_filename = "jfdctint.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_fdct_islow(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 7, %1 ], [ %92, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %91, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %4, i64 28
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = add nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 %5, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %4, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %4, i64 24
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = add nsw i32 %15, %13
  %17 = sext i32 %16 to i64
  %18 = sub nsw i32 %13, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %4, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %4, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !6
  %24 = add nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = sub nsw i32 %21, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %4, i64 12
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %4, i64 16
  %31 = load i32, ptr %30, align 4, !tbaa !6
  %32 = add nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = sub nsw i32 %29, %31
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %9
  %37 = sub nsw i64 %9, %33
  %38 = add nsw i64 %25, %17
  %39 = sub nsw i64 %17, %25
  %40 = add nsw i64 %36, %38
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 2
  store i32 %42, ptr %4, align 4, !tbaa !6
  %43 = sub nsw i64 %36, %38
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 2
  store i32 %45, ptr %30, align 4, !tbaa !6
  %46 = add nsw i64 %37, %39
  %47 = mul nsw i64 %46, 4433
  %48 = mul nsw i64 %37, 6270
  %49 = add nsw i64 %47, 1024
  %50 = add nsw i64 %49, %48
  %51 = lshr i64 %50, 11
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %20, align 4, !tbaa !6
  %53 = mul i64 %39, 8796093007071
  %54 = add i64 %49, %53
  %55 = lshr i64 %54, 11
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %14, align 4, !tbaa !6
  %57 = add nsw i64 %35, %11
  %58 = add nsw i64 %27, %19
  %59 = add nsw i64 %35, %19
  %60 = add nsw i64 %27, %11
  %61 = add nsw i64 %59, %60
  %62 = mul nsw i64 %61, 9633
  %63 = mul nsw i64 %35, 2446
  %64 = mul nsw i64 %27, 16819
  %65 = mul nsw i64 %19, 25172
  %66 = mul nsw i64 %11, 12299
  %67 = mul nsw i64 %57, -7373
  %68 = mul nsw i64 %58, -20995
  %69 = mul nsw i64 %59, -16069
  %70 = mul nsw i64 %60, -3196
  %71 = add nsw i64 %62, %69
  %72 = add nsw i64 %62, %70
  %73 = add nsw i64 %67, 1024
  %74 = add nsw i64 %73, %63
  %75 = add nsw i64 %74, %71
  %76 = lshr i64 %75, 11
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %6, align 4, !tbaa !6
  %78 = add nsw i64 %68, 1024
  %79 = add nsw i64 %78, %64
  %80 = add nsw i64 %79, %72
  %81 = lshr i64 %80, 11
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %22, align 4, !tbaa !6
  %83 = add nsw i64 %78, %65
  %84 = add nsw i64 %83, %71
  %85 = lshr i64 %84, 11
  %86 = trunc i64 %85 to i32
  store i32 %86, ptr %28, align 4, !tbaa !6
  %87 = add nsw i64 %73, %66
  %88 = add nsw i64 %87, %72
  %89 = lshr i64 %88, 11
  %90 = trunc i64 %89 to i32
  store i32 %90, ptr %12, align 4, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %4, i64 32
  %92 = add nsw i32 %3, -1
  %93 = icmp eq i32 %3, 0
  br i1 %93, label %94, label %2

94:                                               ; preds = %2, %94
  %95 = phi i32 [ %186, %94 ], [ 7, %2 ]
  %96 = phi ptr [ %185, %94 ], [ %0, %2 ]
  %97 = load i32, ptr %96, align 4, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %96, i64 224
  %99 = load i32, ptr %98, align 4, !tbaa !6
  %100 = add nsw i32 %99, %97
  %101 = sext i32 %100 to i64
  %102 = sub nsw i32 %97, %99
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %96, i64 32
  %105 = load i32, ptr %104, align 4, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %96, i64 192
  %107 = load i32, ptr %106, align 4, !tbaa !6
  %108 = add nsw i32 %107, %105
  %109 = sext i32 %108 to i64
  %110 = sub nsw i32 %105, %107
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %96, i64 64
  %113 = load i32, ptr %112, align 4, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %96, i64 160
  %115 = load i32, ptr %114, align 4, !tbaa !6
  %116 = add nsw i32 %115, %113
  %117 = sext i32 %116 to i64
  %118 = sub nsw i32 %113, %115
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %96, i64 96
  %121 = load i32, ptr %120, align 4, !tbaa !6
  %122 = getelementptr inbounds i8, ptr %96, i64 128
  %123 = load i32, ptr %122, align 4, !tbaa !6
  %124 = add nsw i32 %123, %121
  %125 = sext i32 %124 to i64
  %126 = sub nsw i32 %121, %123
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %101
  %129 = sub nsw i64 %101, %125
  %130 = add nsw i64 %117, %109
  %131 = sub nsw i64 %109, %117
  %132 = add nsw i64 %130, 2
  %133 = add nsw i64 %132, %128
  %134 = lshr i64 %133, 2
  %135 = trunc i64 %134 to i32
  store i32 %135, ptr %96, align 4, !tbaa !6
  %136 = sub nsw i64 %128, %130
  %137 = add nsw i64 %136, 2
  %138 = lshr i64 %137, 2
  %139 = trunc i64 %138 to i32
  store i32 %139, ptr %122, align 4, !tbaa !6
  %140 = add nsw i64 %129, %131
  %141 = mul nsw i64 %140, 4433
  %142 = mul nsw i64 %129, 6270
  %143 = add nsw i64 %141, 16384
  %144 = add nsw i64 %143, %142
  %145 = lshr i64 %144, 15
  %146 = trunc i64 %145 to i32
  store i32 %146, ptr %112, align 4, !tbaa !6
  %147 = mul i64 %131, 140737488340191
  %148 = add i64 %143, %147
  %149 = lshr i64 %148, 15
  %150 = trunc i64 %149 to i32
  store i32 %150, ptr %106, align 4, !tbaa !6
  %151 = add nsw i64 %127, %103
  %152 = add nsw i64 %119, %111
  %153 = add nsw i64 %127, %111
  %154 = add nsw i64 %119, %103
  %155 = add nsw i64 %153, %154
  %156 = mul nsw i64 %155, 9633
  %157 = mul nsw i64 %127, 2446
  %158 = mul nsw i64 %119, 16819
  %159 = mul nsw i64 %111, 25172
  %160 = mul nsw i64 %103, 12299
  %161 = mul nsw i64 %151, -7373
  %162 = mul nsw i64 %152, -20995
  %163 = mul nsw i64 %153, -16069
  %164 = mul nsw i64 %154, -3196
  %165 = add nsw i64 %156, %163
  %166 = add nsw i64 %156, %164
  %167 = add nsw i64 %161, 16384
  %168 = add nsw i64 %167, %157
  %169 = add nsw i64 %168, %165
  %170 = lshr i64 %169, 15
  %171 = trunc i64 %170 to i32
  store i32 %171, ptr %98, align 4, !tbaa !6
  %172 = add nsw i64 %162, 16384
  %173 = add nsw i64 %172, %158
  %174 = add nsw i64 %173, %166
  %175 = lshr i64 %174, 15
  %176 = trunc i64 %175 to i32
  store i32 %176, ptr %114, align 4, !tbaa !6
  %177 = add nsw i64 %172, %159
  %178 = add nsw i64 %177, %165
  %179 = lshr i64 %178, 15
  %180 = trunc i64 %179 to i32
  store i32 %180, ptr %120, align 4, !tbaa !6
  %181 = add nsw i64 %167, %160
  %182 = add nsw i64 %181, %166
  %183 = lshr i64 %182, 15
  %184 = trunc i64 %183 to i32
  store i32 %184, ptr %104, align 4, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %96, i64 4
  %186 = add nsw i32 %95, -1
  %187 = icmp eq i32 %95, 0
  br i1 %187, label %188, label %94

188:                                              ; preds = %94
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
