; ModuleID = 'quant.c'
source_filename = "quant.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @Quant(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = add i32 %3, -3
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = sdiv i32 %2, -2
  %11 = shl nsw i32 %2, 1
  br label %35

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 4, !tbaa !6
  %14 = icmp slt i32 %13, 8
  %15 = add i32 %13, -2040
  %16 = icmp ult i32 %15, -2032
  %17 = select i1 %14, i32 1, i32 254
  %18 = sdiv i32 %13, 8
  %19 = select i1 %16, i32 %17, i32 %18
  store i32 %19, ptr %1, align 4, !tbaa !6
  %20 = shl nsw i32 %2, 1
  br label %21

21:                                               ; preds = %12, %21
  %22 = phi i64 [ 1, %12 ], [ %33, %21 ]
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !6
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = sdiv i32 %25, %20
  %27 = sub nsw i32 0, %26
  %28 = icmp slt i32 %24, 0
  %29 = select i1 %28, i32 %27, i32 %26
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 -127)
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 127)
  %32 = getelementptr inbounds i32, ptr %1, i64 %22
  store i32 %31, ptr %32, align 4, !tbaa !6
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, 64
  br i1 %34, label %57, label %21

35:                                               ; preds = %9, %35
  %36 = phi i64 [ 0, %9 ], [ %48, %35 ]
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !6
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = add i32 %39, %10
  %41 = sdiv i32 %40, %11
  %42 = sub nsw i32 0, %41
  %43 = icmp slt i32 %38, 0
  %44 = select i1 %43, i32 %42, i32 %41
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 -127)
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 127)
  %47 = getelementptr inbounds i32, ptr %1, i64 %36
  store i32 %46, ptr %47, align 4, !tbaa !6
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 64
  br i1 %49, label %57, label %35

50:                                               ; preds = %4, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %4 ]
  %52 = getelementptr inbounds i32, ptr %0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = getelementptr inbounds i32, ptr %1, i64 %51
  store i32 %53, ptr %54, align 4, !tbaa !6
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, 64
  br i1 %56, label %57, label %50

57:                                               ; preds = %35, %21, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @Dequant(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %4
  %7 = and i32 %2, -2147483647
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %6, %24
  %10 = phi i64 [ %27, %24 ], [ 0, %6 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %16 = shl nuw nsw i32 %15, 1
  %17 = or disjoint i32 %16, 1
  %18 = mul nuw nsw i32 %17, %2
  %19 = getelementptr inbounds i32, ptr %1, i64 %10
  store i32 %18, ptr %19, align 4, !tbaa !6
  %20 = load i32, ptr %11, align 4, !tbaa !6
  %21 = sub nsw i32 0, %18
  %22 = icmp slt i32 %20, 0
  %23 = select i1 %22, i32 %21, i32 %18
  br label %24

24:                                               ; preds = %9, %14
  %25 = phi i32 [ %23, %14 ], [ 0, %9 ]
  %26 = getelementptr inbounds i32, ptr %1, i64 %10
  store i32 %25, ptr %26, align 4
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, 64
  br i1 %28, label %50, label %9

29:                                               ; preds = %6, %45
  %30 = phi i64 [ %48, %45 ], [ 0, %6 ]
  %31 = getelementptr inbounds i32, ptr %0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @llvm.abs.i32(i32 %32, i1 true)
  %36 = shl nuw nsw i32 %35, 1
  %37 = or disjoint i32 %36, 1
  %38 = mul nsw i32 %37, %2
  %39 = add nsw i32 %38, -1
  %40 = getelementptr inbounds i32, ptr %1, i64 %30
  store i32 %39, ptr %40, align 4, !tbaa !6
  %41 = load i32, ptr %31, align 4, !tbaa !6
  %42 = sub nsw i32 1, %38
  %43 = icmp slt i32 %41, 0
  %44 = select i1 %43, i32 %42, i32 %39
  br label %45

45:                                               ; preds = %29, %34
  %46 = phi i32 [ %44, %34 ], [ 0, %29 ]
  %47 = getelementptr inbounds i32, ptr %1, i64 %30
  store i32 %46, ptr %47, align 4
  %48 = add nuw nsw i64 %30, 1
  %49 = icmp eq i64 %48, 64
  br i1 %49, label %50, label %29

50:                                               ; preds = %45, %24
  %51 = add i32 %3, -3
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, ptr %0, align 4, !tbaa !6
  %55 = shl nsw i32 %54, 3
  store i32 %55, ptr %1, align 4, !tbaa !6
  br label %63

56:                                               ; preds = %4, %56
  %57 = phi i64 [ %61, %56 ], [ 0, %4 ]
  %58 = getelementptr inbounds i32, ptr %0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !6
  %60 = getelementptr inbounds i32, ptr %1, i64 %57
  store i32 %59, ptr %60, align 4, !tbaa !6
  %61 = add nuw nsw i64 %57, 1
  %62 = icmp eq i64 %61, 64
  br i1 %62, label %63, label %56

63:                                               ; preds = %56, %53, %50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
