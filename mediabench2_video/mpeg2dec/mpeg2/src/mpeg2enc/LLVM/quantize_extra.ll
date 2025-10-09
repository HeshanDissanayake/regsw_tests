; ModuleID = 'quantize.c'
source_filename = "quantize.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@mpeg1 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local noundef signext i32 @quant_intra(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = load i16, ptr %0, align 2, !tbaa !6
  %7 = sext i16 %6 to i32
  %8 = lshr i32 8, %2
  %9 = icmp sgt i16 %6, -1
  %10 = lshr i32 4, %2
  br i1 %9, label %11, label %14

11:                                               ; preds = %5
  %12 = add nuw nsw i32 %10, %7
  %13 = udiv i32 %12, %8
  br label %18

14:                                               ; preds = %5
  %15 = sub nsw i32 %10, %7
  %16 = udiv i32 %15, %8
  %17 = sub nsw i32 0, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %1, align 2, !tbaa !6
  %21 = mul nsw i32 %4, 3
  %22 = add nsw i32 %21, 2
  %23 = ashr i32 %22, 2
  %24 = shl nsw i32 %4, 1
  %25 = load i32, ptr @mpeg1, align 4
  %26 = freeze i32 %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %18, %28
  %29 = phi i64 [ %51, %28 ], [ 1, %18 ]
  %30 = getelementptr inbounds i16, ptr %0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %3, i64 %29
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i32
  %35 = tail call i16 @llvm.abs.i16(i16 %31, i1 false)
  %36 = zext i16 %35 to i32
  %37 = shl nuw nsw i32 %36, 5
  %38 = lshr i32 %34, 1
  %39 = add nuw nsw i32 %37, %38
  %40 = udiv i32 %39, %34
  %41 = add nsw i32 %40, %23
  %42 = sdiv i32 %41, %24
  %43 = icmp sgt i32 %42, 255
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 2047)
  %45 = select i1 %43, i32 %44, i32 %42
  %46 = sub nsw i32 0, %45
  %47 = icmp slt i16 %31, 0
  %48 = select i1 %47, i32 %46, i32 %45
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %1, i64 %29
  store i16 %49, ptr %50, align 2, !tbaa !6
  %51 = add nuw nsw i64 %29, 1
  %52 = icmp eq i64 %51, 64
  br i1 %52, label %76, label %28

53:                                               ; preds = %18, %53
  %54 = phi i64 [ %74, %53 ], [ 1, %18 ]
  %55 = getelementptr inbounds i16, ptr %0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %3, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !10
  %59 = zext i8 %58 to i32
  %60 = tail call i16 @llvm.abs.i16(i16 %56, i1 false)
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 5
  %63 = lshr i32 %59, 1
  %64 = add nuw nsw i32 %62, %63
  %65 = udiv i32 %64, %59
  %66 = add nsw i32 %65, %23
  %67 = sdiv i32 %66, %24
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 255)
  %69 = sub nsw i32 0, %68
  %70 = icmp slt i16 %56, 0
  %71 = select i1 %70, i32 %69, i32 %68
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds i16, ptr %1, i64 %54
  store i16 %72, ptr %73, align 2, !tbaa !6
  %74 = add nuw nsw i64 %54, 1
  %75 = icmp eq i64 %74, 64
  br i1 %75, label %76, label %53

76:                                               ; preds = %53, %28
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @quant_non_intra(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 %3, 1
  %6 = load i32, ptr @mpeg1, align 4
  %7 = freeze i32 %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %35, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %34, %9 ], [ 0, %4 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %10
  %13 = load i16, ptr %12, align 2, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %2, i64 %10
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = tail call i16 @llvm.abs.i16(i16 %13, i1 false)
  %18 = zext i16 %17 to i32
  %19 = shl nuw nsw i32 %18, 5
  %20 = lshr i32 %16, 1
  %21 = add nuw nsw i32 %19, %20
  %22 = udiv i32 %21, %16
  %23 = sdiv i32 %22, %5
  %24 = icmp sgt i32 %23, 255
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 2047)
  %26 = select i1 %24, i32 %25, i32 %23
  %27 = sub nsw i32 0, %26
  %28 = icmp slt i16 %13, 0
  %29 = select i1 %28, i32 %27, i32 %26
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds i16, ptr %1, i64 %10
  store i16 %30, ptr %31, align 2, !tbaa !6
  %32 = and i32 %29, 65535
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %11, i32 1
  %35 = add nuw nsw i64 %10, 1
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %63, label %9

37:                                               ; preds = %4, %37
  %38 = phi i64 [ %61, %37 ], [ 0, %4 ]
  %39 = phi i32 [ %60, %37 ], [ 0, %4 ]
  %40 = getelementptr inbounds i16, ptr %0, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %2, i64 %38
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = tail call i16 @llvm.abs.i16(i16 %41, i1 false)
  %46 = zext i16 %45 to i32
  %47 = shl nuw nsw i32 %46, 5
  %48 = lshr i32 %44, 1
  %49 = add nuw nsw i32 %47, %48
  %50 = udiv i32 %49, %44
  %51 = sdiv i32 %50, %5
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 255)
  %53 = sub nsw i32 0, %52
  %54 = icmp slt i16 %41, 0
  %55 = select i1 %54, i32 %53, i32 %52
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds i16, ptr %1, i64 %38
  store i16 %56, ptr %57, align 2, !tbaa !6
  %58 = and i32 %55, 65535
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 %39, i32 1
  %61 = add nuw nsw i64 %38, 1
  %62 = icmp eq i64 %61, 64
  br i1 %62, label %63, label %37

63:                                               ; preds = %37, %9
  %64 = phi i32 [ %34, %9 ], [ %60, %37 ]
  ret i32 %64
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @iquant_intra(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @mpeg1, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 0
  %8 = load i16, ptr %0, align 2, !tbaa !6
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 3, %2
  %11 = shl i32 %9, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %1, align 2, !tbaa !6
  br i1 %7, label %39, label %13

13:                                               ; preds = %5, %13
  %14 = phi i64 [ %37, %13 ], [ 1, %5 ]
  %15 = getelementptr inbounds i16, ptr %0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !6
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds i8, ptr %3, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = mul i32 %17, %4
  %22 = mul i32 %21, %20
  %23 = sdiv i32 %22, 16
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %22, -16
  %27 = icmp ult i32 %26, -31
  %28 = and i1 %27, %25
  %29 = icmp sgt i32 %22, 15
  %30 = select i1 %29, i32 -1, i32 1
  %31 = select i1 %28, i32 %30, i32 0
  %32 = add nsw i32 %31, %23
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 -2048)
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 2047)
  %35 = trunc nsw i32 %34 to i16
  %36 = getelementptr inbounds i16, ptr %1, i64 %14
  store i16 %35, ptr %36, align 2, !tbaa !6
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, 64
  br i1 %38, label %68, label %13

39:                                               ; preds = %5
  %40 = shl i32 %11, 16
  %41 = ashr exact i32 %40, 16
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 1, %39 ], [ %59, %42 ]
  %44 = phi i32 [ %41, %39 ], [ %58, %42 ]
  %45 = getelementptr inbounds i16, ptr %0, i64 %43
  %46 = load i16, ptr %45, align 2, !tbaa !6
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds i8, ptr %3, i64 %43
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = zext i8 %49 to i32
  %51 = mul i32 %47, %4
  %52 = mul i32 %51, %50
  %53 = sdiv i32 %52, 16
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 -2048)
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 2047)
  %56 = trunc nsw i32 %55 to i16
  %57 = getelementptr inbounds i16, ptr %1, i64 %43
  store i16 %56, ptr %57, align 2, !tbaa !6
  %58 = add nsw i32 %55, %44
  %59 = add nuw nsw i64 %43, 1
  %60 = icmp eq i64 %59, 64
  br i1 %60, label %61, label %42

61:                                               ; preds = %42
  %62 = and i32 %58, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, ptr %1, i64 126
  %66 = load i16, ptr %65, align 2, !tbaa !6
  %67 = xor i16 %66, 1
  store i16 %67, ptr %65, align 2, !tbaa !6
  br label %68

68:                                               ; preds = %13, %61, %64
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @iquant_non_intra(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @mpeg1, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %4, %33
  %8 = phi i64 [ %39, %33 ], [ 0, %4 ]
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !6
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = sext i16 %10 to i32
  %14 = shl nsw i32 %13, 1
  %15 = icmp sgt i16 %10, 0
  %16 = select i1 %15, i32 1, i32 -1
  %17 = add nsw i32 %14, %16
  %18 = getelementptr inbounds i8, ptr %2, i64 %8
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = mul i32 %17, %3
  %22 = mul i32 %21, %20
  %23 = sdiv i32 %22, 32
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %22, -32
  %27 = icmp ult i32 %26, -63
  %28 = and i1 %27, %25
  br i1 %28, label %29, label %33

29:                                               ; preds = %12
  %30 = icmp sgt i32 %22, 31
  %31 = select i1 %30, i32 -1, i32 1
  %32 = add nsw i32 %31, %23
  br label %33

33:                                               ; preds = %29, %12, %7
  %34 = phi i32 [ %32, %29 ], [ %23, %12 ], [ 0, %7 ]
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 -2048)
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 2047)
  %37 = trunc nsw i32 %36 to i16
  %38 = getelementptr inbounds i16, ptr %1, i64 %8
  store i16 %37, ptr %38, align 2, !tbaa !6
  %39 = add nuw nsw i64 %8, 1
  %40 = icmp eq i64 %39, 64
  br i1 %40, label %75, label %7

41:                                               ; preds = %4, %59
  %42 = phi i64 [ %66, %59 ], [ 0, %4 ]
  %43 = phi i32 [ %65, %59 ], [ 0, %4 ]
  %44 = getelementptr inbounds i16, ptr %0, i64 %42
  %45 = load i16, ptr %44, align 2, !tbaa !6
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = sext i16 %45 to i32
  %49 = shl nsw i32 %48, 1
  %50 = icmp sgt i16 %45, 0
  %51 = select i1 %50, i32 1, i32 -1
  %52 = add nsw i32 %49, %51
  %53 = getelementptr inbounds i8, ptr %2, i64 %42
  %54 = load i8, ptr %53, align 1, !tbaa !10
  %55 = zext i8 %54 to i32
  %56 = mul i32 %52, %3
  %57 = mul i32 %56, %55
  %58 = sdiv i32 %57, 32
  br label %59

59:                                               ; preds = %47, %41
  %60 = phi i32 [ %58, %47 ], [ 0, %41 ]
  %61 = tail call i32 @llvm.smax.i32(i32 %60, i32 -2048)
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 2047)
  %63 = trunc nsw i32 %62 to i16
  %64 = getelementptr inbounds i16, ptr %1, i64 %42
  store i16 %63, ptr %64, align 2, !tbaa !6
  %65 = add nsw i32 %62, %43
  %66 = add nuw nsw i64 %42, 1
  %67 = icmp eq i64 %66, 64
  br i1 %67, label %68, label %41

68:                                               ; preds = %59
  %69 = and i32 %65, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %1, i64 126
  %73 = load i16, ptr %72, align 2, !tbaa !6
  %74 = xor i16 %73, 1
  store i16 %74, ptr %72, align 2, !tbaa !6
  br label %75

75:                                               ; preds = %33, %68, %71
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
