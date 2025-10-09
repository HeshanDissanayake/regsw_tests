; ModuleID = 'jfdctflt.c'
source_filename = "jfdctflt.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_fdct_float(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 7, %1 ], [ %53, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %52, %2 ]
  %5 = load float, ptr %4, align 4, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %4, i64 28
  %7 = load float, ptr %6, align 4, !tbaa !6
  %8 = fadd float %5, %7
  %9 = fsub float %5, %7
  %10 = getelementptr inbounds i8, ptr %4, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %4, i64 24
  %13 = load float, ptr %12, align 4, !tbaa !6
  %14 = fadd float %11, %13
  %15 = fsub float %11, %13
  %16 = getelementptr inbounds i8, ptr %4, i64 8
  %17 = load float, ptr %16, align 4, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %4, i64 20
  %19 = load float, ptr %18, align 4, !tbaa !6
  %20 = fadd float %17, %19
  %21 = fsub float %17, %19
  %22 = getelementptr inbounds i8, ptr %4, i64 12
  %23 = load float, ptr %22, align 4, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %4, i64 16
  %25 = load float, ptr %24, align 4, !tbaa !6
  %26 = fadd float %23, %25
  %27 = fsub float %23, %25
  %28 = fadd float %8, %26
  %29 = fsub float %8, %26
  %30 = fadd float %14, %20
  %31 = fsub float %14, %20
  %32 = fadd float %30, %28
  store float %32, ptr %4, align 4, !tbaa !6
  %33 = fsub float %28, %30
  store float %33, ptr %24, align 4, !tbaa !6
  %34 = fadd float %31, %29
  %35 = fmul float %34, 0x3FE6A09E60000000
  %36 = fadd float %29, %35
  store float %36, ptr %16, align 4, !tbaa !6
  %37 = fsub float %29, %35
  store float %37, ptr %12, align 4, !tbaa !6
  %38 = fadd float %21, %27
  %39 = fadd float %15, %21
  %40 = fadd float %9, %15
  %41 = fsub float %38, %40
  %42 = fmul float %41, 0x3FD87DE2A0000000
  %43 = tail call float @llvm.fmuladd.f32(float %38, float 0x3FE1517A80000000, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %40, float 0x3FF4E7AEA0000000, float %42)
  %45 = fmul float %39, 0x3FE6A09E60000000
  %46 = fadd float %9, %45
  %47 = fsub float %9, %45
  %48 = fadd float %47, %43
  store float %48, ptr %18, align 4, !tbaa !6
  %49 = fsub float %47, %43
  store float %49, ptr %22, align 4, !tbaa !6
  %50 = fadd float %46, %44
  store float %50, ptr %10, align 4, !tbaa !6
  %51 = fsub float %46, %44
  store float %51, ptr %6, align 4, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %4, i64 32
  %53 = add nsw i32 %3, -1
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %55, label %2

55:                                               ; preds = %2, %55
  %56 = phi i32 [ %106, %55 ], [ 7, %2 ]
  %57 = phi ptr [ %105, %55 ], [ %0, %2 ]
  %58 = load float, ptr %57, align 4, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %57, i64 224
  %60 = load float, ptr %59, align 4, !tbaa !6
  %61 = fadd float %58, %60
  %62 = fsub float %58, %60
  %63 = getelementptr inbounds i8, ptr %57, i64 32
  %64 = load float, ptr %63, align 4, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %57, i64 192
  %66 = load float, ptr %65, align 4, !tbaa !6
  %67 = fadd float %64, %66
  %68 = fsub float %64, %66
  %69 = getelementptr inbounds i8, ptr %57, i64 64
  %70 = load float, ptr %69, align 4, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %57, i64 160
  %72 = load float, ptr %71, align 4, !tbaa !6
  %73 = fadd float %70, %72
  %74 = fsub float %70, %72
  %75 = getelementptr inbounds i8, ptr %57, i64 96
  %76 = load float, ptr %75, align 4, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %57, i64 128
  %78 = load float, ptr %77, align 4, !tbaa !6
  %79 = fadd float %76, %78
  %80 = fsub float %76, %78
  %81 = fadd float %61, %79
  %82 = fsub float %61, %79
  %83 = fadd float %67, %73
  %84 = fsub float %67, %73
  %85 = fadd float %83, %81
  store float %85, ptr %57, align 4, !tbaa !6
  %86 = fsub float %81, %83
  store float %86, ptr %77, align 4, !tbaa !6
  %87 = fadd float %84, %82
  %88 = fmul float %87, 0x3FE6A09E60000000
  %89 = fadd float %82, %88
  store float %89, ptr %69, align 4, !tbaa !6
  %90 = fsub float %82, %88
  store float %90, ptr %65, align 4, !tbaa !6
  %91 = fadd float %74, %80
  %92 = fadd float %68, %74
  %93 = fadd float %62, %68
  %94 = fsub float %91, %93
  %95 = fmul float %94, 0x3FD87DE2A0000000
  %96 = tail call float @llvm.fmuladd.f32(float %91, float 0x3FE1517A80000000, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %93, float 0x3FF4E7AEA0000000, float %95)
  %98 = fmul float %92, 0x3FE6A09E60000000
  %99 = fadd float %62, %98
  %100 = fsub float %62, %98
  %101 = fadd float %100, %96
  store float %101, ptr %71, align 4, !tbaa !6
  %102 = fsub float %100, %96
  store float %102, ptr %75, align 4, !tbaa !6
  %103 = fadd float %99, %97
  store float %103, ptr %63, align 4, !tbaa !6
  %104 = fsub float %99, %97
  store float %104, ptr %59, align 4, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %57, i64 4
  %106 = add nsw i32 %56, -1
  %107 = icmp eq i32 %56, 0
  br i1 %107, label %108, label %55

108:                                              ; preds = %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
