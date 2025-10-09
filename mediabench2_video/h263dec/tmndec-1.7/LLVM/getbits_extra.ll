; ModuleID = 'getbits.c'
source_filename = "getbits.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@ld = external dso_local local_unnamed_addr global ptr, align 8
@msk = internal unnamed_addr constant [33 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647, i32 -1], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local void @initbits() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2080
  store i32 0, ptr %2, align 8, !tbaa !10
  %3 = getelementptr inbounds i8, ptr %1, i64 2052
  %4 = getelementptr inbounds i8, ptr %1, i64 2056
  store ptr %3, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, ptr %1, i64 2084
  store i32 0, ptr %5, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind
define dso_local void @fillbfr() local_unnamed_addr #1 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2064
  %3 = getelementptr inbounds i8, ptr %1, i64 2072
  %4 = load i8, ptr %3, align 8, !tbaa !15
  store i8 %4, ptr %2, align 8, !tbaa !15
  %5 = getelementptr inbounds i8, ptr %1, i64 2073
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = getelementptr inbounds i8, ptr %1, i64 2065
  store i8 %6, ptr %7, align 1, !tbaa !15
  %8 = getelementptr inbounds i8, ptr %1, i64 2074
  %9 = load i8, ptr %8, align 2, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %1, i64 2066
  store i8 %9, ptr %10, align 2, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %1, i64 2075
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = getelementptr inbounds i8, ptr %1, i64 2067
  store i8 %12, ptr %13, align 1, !tbaa !15
  %14 = getelementptr inbounds i8, ptr %1, i64 2056
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds i8, ptr %1, i64 2052
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %1, i64 4
  %20 = load i32, ptr %1, align 8, !tbaa !16
  %21 = tail call signext i32 @read(i32 noundef signext %20, ptr noundef nonnull %19, i32 noundef signext 2048) #4
  %22 = load ptr, ptr @ld, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  %24 = getelementptr inbounds i8, ptr %22, i64 2056
  store ptr %23, ptr %24, align 8, !tbaa !13
  %25 = icmp slt i32 %21, 2048
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %28 = zext nneg i32 %27 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %28, %26 ], [ %41, %29 ]
  %31 = load ptr, ptr @ld, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = add nuw nsw i64 %30, 1
  %34 = getelementptr inbounds [2051 x i8], ptr %32, i64 0, i64 %30
  store i8 0, ptr %34, align 1, !tbaa !15
  %35 = load ptr, ptr @ld, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 4
  %37 = add nuw nsw i64 %30, 2
  %38 = getelementptr inbounds [2051 x i8], ptr %36, i64 0, i64 %33
  store i8 0, ptr %38, align 1, !tbaa !15
  %39 = load ptr, ptr @ld, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 4
  %41 = add nuw nsw i64 %30, 3
  %42 = getelementptr inbounds [2051 x i8], ptr %40, i64 0, i64 %37
  store i8 -4, ptr %42, align 1, !tbaa !15
  %43 = icmp ult i64 %30, 2045
  br i1 %43, label %29, label %44

44:                                               ; preds = %29
  %45 = load ptr, ptr @ld, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 2056
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  br label %48

48:                                               ; preds = %44, %18, %0
  %49 = phi ptr [ %47, %44 ], [ %23, %18 ], [ %15, %0 ]
  %50 = phi ptr [ %45, %44 ], [ %22, %18 ], [ %1, %0 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 2056
  %52 = load i8, ptr %49, align 1, !tbaa !15
  %53 = getelementptr inbounds i8, ptr %50, i64 2068
  store i8 %52, ptr %53, align 1, !tbaa !15
  %54 = getelementptr inbounds i8, ptr %49, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = getelementptr inbounds i8, ptr %50, i64 2069
  store i8 %55, ptr %56, align 1, !tbaa !15
  %57 = getelementptr inbounds i8, ptr %49, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = getelementptr inbounds i8, ptr %50, i64 2070
  store i8 %58, ptr %59, align 1, !tbaa !15
  %60 = getelementptr inbounds i8, ptr %49, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = getelementptr inbounds i8, ptr %50, i64 2071
  store i8 %61, ptr %62, align 1, !tbaa !15
  %63 = getelementptr inbounds i8, ptr %49, i64 4
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = getelementptr inbounds i8, ptr %50, i64 2072
  store i8 %64, ptr %65, align 1, !tbaa !15
  %66 = getelementptr inbounds i8, ptr %49, i64 5
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = getelementptr inbounds i8, ptr %50, i64 2073
  store i8 %67, ptr %68, align 1, !tbaa !15
  %69 = getelementptr inbounds i8, ptr %49, i64 6
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = getelementptr inbounds i8, ptr %50, i64 2074
  store i8 %70, ptr %71, align 1, !tbaa !15
  %72 = getelementptr inbounds i8, ptr %49, i64 7
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = getelementptr inbounds i8, ptr %50, i64 2075
  store i8 %73, ptr %74, align 1, !tbaa !15
  %75 = getelementptr inbounds i8, ptr %49, i64 8
  store ptr %75, ptr %51, align 8, !tbaa !13
  %76 = getelementptr inbounds i8, ptr %50, i64 2080
  %77 = load i32, ptr %76, align 8, !tbaa !10
  %78 = add nsw i32 %77, 64
  store i32 %78, ptr %76, align 8, !tbaa !10
  ret void
}

declare dso_local signext i32 @read(...) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @showbits(i32 noundef signext %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2080
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp slt i32 %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  tail call void @fillbfr()
  %7 = load ptr, ptr @ld, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 2080
  %9 = load i32, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 2064
  %14 = sub nsw i32 96, %11
  %15 = ashr i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !15
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or disjoint i32 %24, %20
  %26 = getelementptr inbounds i8, ptr %17, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %25, %29
  %31 = getelementptr inbounds i8, ptr %17, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %30, %33
  %35 = add i32 %11, 7
  %36 = and i32 %35, 7
  %37 = sub i32 %36, %0
  %38 = add i32 %37, 25
  %39 = lshr i32 %34, %38
  %40 = sext i32 %0 to i64
  %41 = getelementptr inbounds [33 x i32], ptr @msk, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !17
  %43 = and i32 %39, %42
  ret i32 %43
}

; Function Attrs: nounwind
define dso_local signext i32 @getbits1() local_unnamed_addr #1 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2080
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  tail call void @fillbfr()
  %6 = load ptr, ptr @ld, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 2080
  %8 = load i32, ptr %7, align 8, !tbaa !10
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i32 [ %8, %5 ], [ %3, %0 ]
  %11 = phi ptr [ %6, %5 ], [ %1, %0 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 2064
  %13 = sub nsw i32 96, %10
  %14 = ashr i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %16, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = getelementptr inbounds i8, ptr %16, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = getelementptr inbounds i8, ptr %11, i64 2084
  %25 = load i32, ptr %24, align 4, !tbaa !14
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %11, i64 2080
  %28 = add nsw i32 %10, -1
  store i32 %28, ptr %27, align 8, !tbaa !10
  %29 = icmp slt i32 %10, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  tail call void @fillbfr()
  br label %31

31:                                               ; preds = %9, %30
  %32 = zext i8 %19 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = zext i8 %17 to i32
  %35 = shl nuw i32 %34, 24
  %36 = or disjoint i32 %33, %35
  %37 = zext i8 %21 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %36, %38
  %40 = zext i8 %23 to i32
  %41 = or disjoint i32 %39, %40
  %42 = add i32 %10, 7
  %43 = and i32 %42, 7
  %44 = or disjoint i32 %43, 24
  %45 = lshr i32 %41, %44
  %46 = and i32 %45, 1
  ret i32 %46
}

; Function Attrs: nounwind
define dso_local signext i32 @getbits(i32 noundef signext %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2080
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp slt i32 %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  tail call void @fillbfr()
  %7 = load ptr, ptr @ld, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 2080
  %9 = load i32, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 2064
  %14 = sub nsw i32 96, %11
  %15 = ashr i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = getelementptr inbounds i8, ptr %17, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !15
  %23 = getelementptr inbounds i8, ptr %17, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds [33 x i32], ptr @msk, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !17
  %28 = getelementptr inbounds i8, ptr %12, i64 2084
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = add nsw i32 %29, %0
  store i32 %30, ptr %28, align 4, !tbaa !14
  %31 = getelementptr inbounds i8, ptr %12, i64 2080
  %32 = sub nsw i32 %11, %0
  store i32 %32, ptr %31, align 8, !tbaa !10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  tail call void @fillbfr()
  br label %35

35:                                               ; preds = %10, %34
  %36 = zext i8 %20 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = zext i8 %18 to i32
  %39 = shl nuw i32 %38, 24
  %40 = or disjoint i32 %37, %39
  %41 = zext i8 %22 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or disjoint i32 %40, %42
  %44 = zext i8 %24 to i32
  %45 = or disjoint i32 %43, %44
  %46 = add i32 %11, 7
  %47 = and i32 %46, 7
  %48 = sub i32 %47, %0
  %49 = add i32 %48, 25
  %50 = lshr i32 %45, %49
  %51 = and i32 %50, %27
  ret i32 %51
}

; Function Attrs: nounwind
define dso_local void @flushbits(i32 noundef signext %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2084
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = add nsw i32 %4, %0
  store i32 %5, ptr %3, align 4, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %2, i64 2080
  %7 = load i32, ptr %6, align 8, !tbaa !10
  %8 = sub nsw i32 %7, %0
  store i32 %8, ptr %6, align 8, !tbaa !10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fillbfr()
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 2080}
!11 = !{!"ld", !12, i64 0, !8, i64 4, !7, i64 2056, !8, i64 2064, !12, i64 2080, !12, i64 2084, !8, i64 2088}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 2056}
!14 = !{!11, !12, i64 2084}
!15 = !{!8, !8, i64 0}
!16 = !{!11, !12, i64 0}
!17 = !{!12, !12, i64 0}
