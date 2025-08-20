; ModuleID = 'wrppm.c'
source_filename = "wrppm.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_write_ppm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 80) #4
  store ptr @start_output_ppm, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_output_ppm, ptr %6, align 8, !tbaa !20
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #4
  %7 = getelementptr inbounds i8, ptr %0, i64 136
  %8 = load i32, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %0, i64 144
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds i8, ptr %5, i64 72
  store i32 %11, ptr %12, align 8, !tbaa !23
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds i8, ptr %5, i64 64
  store i64 %13, ptr %14, align 8, !tbaa !24
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef signext 1, i64 noundef %13) #4
  %18 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %17, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds i8, ptr %0, i64 108
  %20 = load i32, ptr %19, align 4, !tbaa !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr %2, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !27
  %26 = load i32, ptr %7, align 8, !tbaa !21
  %27 = getelementptr inbounds i8, ptr %0, i64 148
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = mul i32 %28, %26
  %30 = tail call ptr %25(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %29, i32 noundef signext 1) #4
  %31 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %30, ptr %31, align 8, !tbaa !29
  %32 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 1, ptr %32, align 8, !tbaa !30
  %33 = load i32, ptr %19, align 4, !tbaa !26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @copy_pixel_rows, ptr %36, align 8, !tbaa !31
  br label %49

37:                                               ; preds = %22
  %38 = getelementptr inbounds i8, ptr %0, i64 64
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = icmp eq i32 %39, 1
  %41 = getelementptr inbounds i8, ptr %5, i64 8
  br i1 %40, label %42, label %43

42:                                               ; preds = %37
  store ptr @put_demapped_gray, ptr %41, align 8, !tbaa !31
  br label %49

43:                                               ; preds = %37
  store ptr @put_demapped_rgb, ptr %41, align 8, !tbaa !31
  br label %49

44:                                               ; preds = %1
  %45 = getelementptr inbounds i8, ptr %5, i64 56
  store ptr %17, ptr %45, align 8, !tbaa !33
  %46 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %45, ptr %46, align 8, !tbaa !29
  %47 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 1, ptr %47, align 8, !tbaa !30
  %48 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @put_pixel_rows, ptr %48, align 8, !tbaa !31
  br label %49

49:                                               ; preds = %35, %43, %42, %44
  ret ptr %5
}

; Function Attrs: nounwind
define internal void @start_output_ppm(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 64
  %4 = load i32, ptr %3, align 8, !tbaa !32
  switch i32 %4, label %25 [
    i32 1, label %5
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 140
  %12 = load i32, ptr %11, align 4, !tbaa !35
  %13 = zext i32 %12 to i64
  %14 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i64 noundef %10, i64 noundef %13, i32 noundef signext 255) #4
  br label %29

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %1, i64 24
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds i8, ptr %0, i64 136
  %19 = load i32, ptr %18, align 8, !tbaa !21
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 140
  %22 = load i32, ptr %21, align 4, !tbaa !35
  %23 = zext i32 %22 to i64
  %24 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.1, i64 noundef %20, i64 noundef %23, i32 noundef signext 255) #4
  br label %29

25:                                               ; preds = %2
  %26 = load ptr, ptr %0, align 8, !tbaa !36
  %27 = getelementptr inbounds i8, ptr %26, i64 40
  store i32 1025, ptr %27, align 8, !tbaa !37
  %28 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void %28(ptr noundef nonnull %0) #4
  br label %29

29:                                               ; preds = %25, %15, %5
  ret void
}

; Function Attrs: nounwind
define internal void @finish_output_ppm(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = tail call signext i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !40
  %7 = tail call signext i32 @ferror(ptr noundef %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !36
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 37, ptr %11, align 8, !tbaa !37
  %12 = load ptr, ptr %10, align 8, !tbaa !39
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define internal void @copy_pixel_rows(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 signext %2) #2 {
  %4 = getelementptr inbounds i8, ptr %1, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %1, i64 72
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %1, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %20, %13 ], [ %7, %9 ]
  %15 = phi ptr [ %17, %13 ], [ %12, %9 ]
  %16 = phi ptr [ %19, %13 ], [ %5, %9 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = load i8, ptr %15, align 1, !tbaa !42
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !42
  %20 = add i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !43

22:                                               ; preds = %13
  %23 = load ptr, ptr %4, align 8, !tbaa !25
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %26 = getelementptr inbounds i8, ptr %1, i64 64
  %27 = load i64, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds i8, ptr %1, i64 24
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call i64 @fwrite(ptr noundef %25, i64 noundef 1, i64 noundef %27, ptr noundef %29)
  ret void
}

; Function Attrs: nofree nounwind
define internal void @put_demapped_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 signext %2) #2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 160
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds i8, ptr %1, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %1, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %26, %16 ], [ %10, %12 ]
  %18 = phi ptr [ %25, %16 ], [ %8, %12 ]
  %19 = phi ptr [ %20, %16 ], [ %15, %12 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %19, align 1, !tbaa !42
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !42
  %25 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %24, ptr %18, align 1, !tbaa !42
  %26 = add i32 %17, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !46

28:                                               ; preds = %16
  %29 = load ptr, ptr %7, align 8, !tbaa !25
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi ptr [ %29, %28 ], [ %8, %3 ]
  %32 = getelementptr inbounds i8, ptr %1, i64 64
  %33 = load i64, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds i8, ptr %1, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = tail call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %33, ptr noundef %35)
  ret void
}

; Function Attrs: nofree nounwind
define internal void @put_demapped_rgb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 signext %2) #2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 160
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %5, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds i8, ptr %1, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds i8, ptr %0, i64 136
  %14 = load i32, ptr %13, align 8, !tbaa !21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds i8, ptr %1, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %36, %20 ], [ %14, %16 ]
  %22 = phi ptr [ %35, %20 ], [ %12, %16 ]
  %23 = phi ptr [ %24, %20 ], [ %19, %16 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %23, align 1, !tbaa !42
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i8, ptr %6, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !42
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %28, ptr %22, align 1, !tbaa !42
  %30 = getelementptr inbounds i8, ptr %8, i64 %26
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %31, ptr %29, align 1, !tbaa !42
  %33 = getelementptr inbounds i8, ptr %10, i64 %26
  %34 = load i8, ptr %33, align 1, !tbaa !42
  %35 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %34, ptr %32, align 1, !tbaa !42
  %36 = add i32 %21, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %20, !llvm.loop !47

38:                                               ; preds = %20
  %39 = load ptr, ptr %11, align 8, !tbaa !25
  br label %40

40:                                               ; preds = %38, %3
  %41 = phi ptr [ %39, %38 ], [ %12, %3 ]
  %42 = getelementptr inbounds i8, ptr %1, i64 64
  %43 = load i64, ptr %42, align 8, !tbaa !24
  %44 = getelementptr inbounds i8, ptr %1, i64 24
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = tail call i64 @fwrite(ptr noundef %41, i64 noundef 1, i64 noundef %43, ptr noundef %45)
  ret void
}

; Function Attrs: nofree nounwind
define internal void @put_pixel_rows(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 signext %2) #2 {
  %4 = getelementptr inbounds i8, ptr %1, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %1, i64 64
  %7 = load i64, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call i64 @fwrite(ptr noundef %5, i64 noundef 1, i64 noundef %7, ptr noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare dso_local noundef signext i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind }

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
!17 = !{!18, !8, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 48, !8, i64 56, !16, i64 64, !11, i64 72}
!19 = !{!"djpeg_dest_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 16}
!21 = !{!7, !11, i64 136}
!22 = !{!7, !11, i64 144}
!23 = !{!18, !11, i64 72}
!24 = !{!18, !16, i64 64}
!25 = !{!18, !8, i64 48}
!26 = !{!7, !11, i64 108}
!27 = !{!15, !8, i64 16}
!28 = !{!7, !11, i64 148}
!29 = !{!18, !8, i64 32}
!30 = !{!18, !11, i64 40}
!31 = !{!18, !8, i64 8}
!32 = !{!7, !11, i64 64}
!33 = !{!18, !8, i64 56}
!34 = !{!18, !8, i64 24}
!35 = !{!7, !11, i64 140}
!36 = !{!7, !8, i64 0}
!37 = !{!38, !11, i64 40}
!38 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!39 = !{!38, !8, i64 0}
!40 = !{!19, !8, i64 24}
!41 = !{!8, !8, i64 0}
!42 = !{!9, !9, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!7, !8, i64 160}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
