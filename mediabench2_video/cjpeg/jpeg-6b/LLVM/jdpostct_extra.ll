; ModuleID = 'jdpostct.c'
source_filename = "jdpostct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_d_post_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 48) #5
  %7 = getelementptr inbounds i8, ptr %0, i64 568
  store ptr %6, ptr %7, align 8, !tbaa !17
  store ptr @start_pass_dpost, ptr %6, align 8, !tbaa !18
  %8 = getelementptr inbounds i8, ptr %6, i64 16
  %9 = getelementptr inbounds i8, ptr %6, i64 24
  %10 = getelementptr inbounds i8, ptr %0, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %11 = load i32, ptr %10, align 4, !tbaa !21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %0, i64 412
  %15 = load i32, ptr %14, align 4, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 %15, ptr %16, align 8, !tbaa !23
  %17 = icmp eq i32 %1, 0
  %18 = load ptr, ptr %3, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %0, i64 136
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds i8, ptr %0, i64 144
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = mul i32 %22, %20
  br i1 %17, label %35, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds i8, ptr %18, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = getelementptr inbounds i8, ptr %0, i64 140
  %28 = load i32, ptr %27, align 4, !tbaa !27
  %29 = zext i32 %28 to i64
  %30 = zext i32 %15 to i64
  %31 = tail call i64 @jround_up(i64 noundef %29, i64 noundef %30) #5
  %32 = trunc i64 %31 to i32
  %33 = load i32, ptr %16, align 8, !tbaa !23
  %34 = tail call ptr %26(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %23, i32 noundef signext %32, i32 noundef signext %33) #5
  store ptr %34, ptr %8, align 8, !tbaa !28
  br label %39

35:                                               ; preds = %13
  %36 = getelementptr inbounds i8, ptr %18, i64 16
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = tail call ptr %37(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %23, i32 noundef signext %15) #5
  store ptr %38, ptr %9, align 8, !tbaa !30
  br label %39

39:                                               ; preds = %24, %35, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_dpost(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  switch i32 %1, label %50 [
    i32 0, label %5
    i32 3, label %30
    i32 2, label %40
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 108
  %7 = load i32, ptr %6, align 4, !tbaa !21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @post_process_1pass, ptr %10, align 8, !tbaa !31
  %11 = getelementptr inbounds i8, ptr %4, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 56
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds i8, ptr %4, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds i8, ptr %4, i64 32
  %22 = load i32, ptr %21, align 8, !tbaa !23
  %23 = tail call ptr %18(ptr noundef nonnull %0, ptr noundef %20, i32 noundef signext 0, i32 noundef signext %22, i32 noundef signext 1) #5
  store ptr %23, ptr %11, align 8, !tbaa !30
  br label %54

24:                                               ; preds = %5
  %25 = getelementptr inbounds i8, ptr %0, i64 608
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %28, ptr %29, align 8, !tbaa !31
  br label %54

30:                                               ; preds = %2
  %31 = getelementptr inbounds i8, ptr %4, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !36
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 4, ptr %36, align 8, !tbaa !37
  %37 = load ptr, ptr %35, align 8, !tbaa !39
  tail call void %37(ptr noundef nonnull %0) #5
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @post_process_prepass, ptr %39, align 8, !tbaa !31
  br label %54

40:                                               ; preds = %2
  %41 = getelementptr inbounds i8, ptr %4, i64 16
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8, !tbaa !36
  %46 = getelementptr inbounds i8, ptr %45, i64 40
  store i32 4, ptr %46, align 8, !tbaa !37
  %47 = load ptr, ptr %45, align 8, !tbaa !39
  tail call void %47(ptr noundef nonnull %0) #5
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @post_process_2pass, ptr %49, align 8, !tbaa !31
  br label %54

50:                                               ; preds = %2
  %51 = load ptr, ptr %0, align 8, !tbaa !36
  %52 = getelementptr inbounds i8, ptr %51, i64 40
  store i32 4, ptr %52, align 8, !tbaa !37
  %53 = load ptr, ptr %51, align 8, !tbaa !39
  tail call void %53(ptr noundef nonnull %0) #5
  br label %54

54:                                               ; preds = %24, %14, %9, %50, %48, %38
  %55 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 0, ptr %55, align 8, !tbaa !40
  %56 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 0, ptr %56, align 4, !tbaa !41
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @post_process_1pass(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds i8, ptr %0, i64 568
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %11 = load i32, ptr %5, align 4, !tbaa !42
  %12 = sub i32 %6, %11
  %13 = getelementptr inbounds i8, ptr %10, i64 32
  %14 = load i32, ptr %13, align 8, !tbaa !23
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  store i32 0, ptr %8, align 4, !tbaa !42
  %16 = getelementptr inbounds i8, ptr %0, i64 608
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds i8, ptr %10, i64 24
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  call void %19(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %21, ptr noundef nonnull %8, i32 noundef signext %15) #5
  %22 = getelementptr inbounds i8, ptr %0, i64 624
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = load ptr, ptr %20, align 8, !tbaa !30
  %27 = load i32, ptr %5, align 4, !tbaa !42
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %4, i64 %28
  %30 = load i32, ptr %8, align 4, !tbaa !42
  call void %25(ptr noundef %0, ptr noundef %26, ptr noundef %29, i32 noundef signext %30) #5
  %31 = load i32, ptr %8, align 4, !tbaa !42
  %32 = load i32, ptr %5, align 4, !tbaa !42
  %33 = add i32 %32, %31
  store i32 %33, ptr %5, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  ret void
}

; Function Attrs: nounwind
define internal void @post_process_prepass(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr nocapture readnone %4, ptr nocapture noundef %5, i32 signext %6) #0 {
  %8 = getelementptr inbounds i8, ptr %0, i64 568
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  br label %30

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds i8, ptr %9, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds i8, ptr %9, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = getelementptr inbounds i8, ptr %9, i64 32
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = tail call ptr %20(ptr noundef nonnull %0, ptr noundef %22, i32 noundef signext %24, i32 noundef signext %26, i32 noundef signext 1) #5
  %28 = getelementptr inbounds i8, ptr %9, i64 24
  store ptr %27, ptr %28, align 8, !tbaa !30
  %29 = load i32, ptr %10, align 8, !tbaa !40
  br label %30

30:                                               ; preds = %13, %16
  %31 = phi ptr [ %27, %16 ], [ %15, %13 ]
  %32 = phi i32 [ %29, %16 ], [ %11, %13 ]
  %33 = getelementptr inbounds i8, ptr %0, i64 608
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = getelementptr inbounds i8, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %9, i64 32
  %38 = load i32, ptr %37, align 8, !tbaa !23
  tail call void %36(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %31, ptr noundef nonnull %10, i32 noundef signext %38) #5
  %39 = load i32, ptr %10, align 8, !tbaa !40
  %40 = icmp ugt i32 %39, %32
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = getelementptr inbounds i8, ptr %9, i64 24
  %43 = sub i32 %39, %32
  %44 = getelementptr inbounds i8, ptr %0, i64 624
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = getelementptr inbounds i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = load ptr, ptr %42, align 8, !tbaa !30
  %49 = zext i32 %32 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  tail call void %47(ptr noundef nonnull %0, ptr noundef %50, ptr noundef null, i32 noundef signext %43) #5
  %51 = load i32, ptr %5, align 4, !tbaa !42
  %52 = add i32 %51, %43
  store i32 %52, ptr %5, align 4, !tbaa !42
  %53 = load i32, ptr %10, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %41, %30
  %55 = phi i32 [ %53, %41 ], [ %39, %30 ]
  %56 = load i32, ptr %37, align 8, !tbaa !23
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %9, i64 36
  %60 = load i32, ptr %59, align 4, !tbaa !41
  %61 = add i32 %60, %56
  store i32 %61, ptr %59, align 4, !tbaa !41
  store i32 0, ptr %10, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: nounwind
define internal void @post_process_2pass(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 signext %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef signext %6) #0 {
  %8 = getelementptr inbounds i8, ptr %0, i64 568
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  br label %30

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds i8, ptr %9, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds i8, ptr %9, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = getelementptr inbounds i8, ptr %9, i64 32
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = tail call ptr %20(ptr noundef nonnull %0, ptr noundef %22, i32 noundef signext %24, i32 noundef signext %26, i32 noundef signext 0) #5
  %28 = getelementptr inbounds i8, ptr %9, i64 24
  store ptr %27, ptr %28, align 8, !tbaa !30
  %29 = load i32, ptr %10, align 8, !tbaa !40
  br label %30

30:                                               ; preds = %13, %16
  %31 = phi ptr [ %27, %16 ], [ %15, %13 ]
  %32 = phi i32 [ %29, %16 ], [ %11, %13 ]
  %33 = getelementptr inbounds i8, ptr %9, i64 32
  %34 = load i32, ptr %33, align 8, !tbaa !23
  %35 = sub i32 %34, %32
  %36 = load i32, ptr %5, align 4, !tbaa !42
  %37 = sub i32 %6, %36
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %37)
  %39 = getelementptr inbounds i8, ptr %0, i64 140
  %40 = load i32, ptr %39, align 4, !tbaa !27
  %41 = getelementptr inbounds i8, ptr %9, i64 36
  %42 = load i32, ptr %41, align 4, !tbaa !41
  %43 = sub i32 %40, %42
  %44 = tail call i32 @llvm.umin.i32(i32 %38, i32 %43)
  %45 = getelementptr inbounds i8, ptr %0, i64 624
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = zext i32 %32 to i64
  %50 = getelementptr inbounds ptr, ptr %31, i64 %49
  %51 = zext i32 %36 to i64
  %52 = getelementptr inbounds ptr, ptr %4, i64 %51
  tail call void %48(ptr noundef nonnull %0, ptr noundef %50, ptr noundef %52, i32 noundef signext %44) #5
  %53 = load i32, ptr %5, align 4, !tbaa !42
  %54 = add i32 %53, %44
  store i32 %54, ptr %5, align 4, !tbaa !42
  %55 = load i32, ptr %10, align 8, !tbaa !40
  %56 = add i32 %55, %44
  store i32 %56, ptr %10, align 8, !tbaa !40
  %57 = load i32, ptr %33, align 8, !tbaa !23
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %30
  %60 = load i32, ptr %41, align 4, !tbaa !41
  %61 = add i32 %60, %57
  store i32 %61, ptr %41, align 4, !tbaa !41
  store i32 0, ptr %10, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %59, %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 568}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !11, i64 40}
!20 = !{!"jpeg_d_post_controller", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 108}
!22 = !{!7, !11, i64 412}
!23 = !{!19, !11, i64 32}
!24 = !{!7, !11, i64 136}
!25 = !{!7, !11, i64 144}
!26 = !{!15, !8, i64 32}
!27 = !{!7, !11, i64 140}
!28 = !{!19, !8, i64 16}
!29 = !{!15, !8, i64 16}
!30 = !{!19, !8, i64 24}
!31 = !{!19, !8, i64 8}
!32 = !{!15, !8, i64 56}
!33 = !{!7, !8, i64 608}
!34 = !{!35, !8, i64 8}
!35 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!36 = !{!7, !8, i64 0}
!37 = !{!38, !11, i64 40}
!38 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!39 = !{!38, !8, i64 0}
!40 = !{!19, !11, i64 40}
!41 = !{!19, !11, i64 36}
!42 = !{!11, !11, i64 0}
!43 = !{!7, !8, i64 624}
!44 = !{!45, !8, i64 8}
!45 = !{!"jpeg_color_quantizer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
