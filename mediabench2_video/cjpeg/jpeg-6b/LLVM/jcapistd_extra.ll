; ModuleID = 'jcapistd.c'
source_filename = "jcapistd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jpeg_start_compress(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %4, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @jpeg_suppress_tables(ptr noundef nonnull %0, i32 noundef signext 0) #4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %0, align 8, !tbaa !14
  %17 = getelementptr inbounds i8, ptr %16, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %18(ptr noundef nonnull %0) #4
  %19 = getelementptr inbounds i8, ptr %0, i64 40
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr inbounds i8, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  tail call void %22(ptr noundef nonnull %0) #4
  tail call void @jinit_compress_master(ptr noundef nonnull %0) #4
  %23 = getelementptr inbounds i8, ptr %0, i64 432
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  tail call void %25(ptr noundef nonnull %0) #4
  %26 = getelementptr inbounds i8, ptr %0, i64 304
  store i32 0, ptr %26, align 8, !tbaa !27
  %27 = getelementptr inbounds i8, ptr %0, i64 256
  %28 = load i32, ptr %27, align 8, !tbaa !28
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 101, i32 102
  store i32 %30, ptr %3, align 4, !tbaa !6
  ret void
}

declare dso_local void @jpeg_suppress_tables(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @jinit_compress_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_write_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = getelementptr inbounds i8, ptr %0, i64 36
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 101
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 20, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %6, ptr %11, align 4, !tbaa !18
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds i8, ptr %0, i64 304
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds i8, ptr %0, i64 52
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, ptr %21, i64 40
  store i32 123, ptr %22, align 8, !tbaa !15
  %23 = getelementptr inbounds i8, ptr %21, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  tail call void %24(ptr noundef nonnull %0, i32 noundef signext -1) #4
  br label %25

25:                                               ; preds = %20, %14
  %26 = getelementptr inbounds i8, ptr %0, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %15, align 8, !tbaa !27
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %27, i64 8
  store i64 %31, ptr %32, align 8, !tbaa !32
  %33 = load i32, ptr %17, align 4, !tbaa !29
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %27, i64 16
  store i64 %34, ptr %35, align 8, !tbaa !34
  %36 = load ptr, ptr %27, align 8, !tbaa !35
  tail call void %36(ptr noundef nonnull %0) #4
  br label %37

37:                                               ; preds = %29, %25
  %38 = getelementptr inbounds i8, ptr %0, i64 432
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds i8, ptr %39, i64 24
  %41 = load i32, ptr %40, align 8, !tbaa !36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %39, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  tail call void %45(ptr noundef nonnull %0) #4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, ptr %17, align 4, !tbaa !29
  %48 = load i32, ptr %15, align 8, !tbaa !27
  %49 = sub i32 %47, %48
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  store i32 0, ptr %4, align 4, !tbaa !38
  %51 = getelementptr inbounds i8, ptr %0, i64 440
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  call void %54(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef signext %50) #4
  %55 = load i32, ptr %4, align 4, !tbaa !38
  %56 = load i32, ptr %15, align 8, !tbaa !27
  %57 = add i32 %56, %55
  store i32 %57, ptr %15, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_write_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 102
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %5, ptr %10, align 4, !tbaa !18
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds i8, ptr %0, i64 304
  %15 = load i32, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds i8, ptr %0, i64 52
  %17 = load i32, ptr %16, align 4, !tbaa !29
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !14
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  store i32 123, ptr %21, align 8, !tbaa !15
  %22 = getelementptr inbounds i8, ptr %20, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  tail call void %23(ptr noundef nonnull %0, i32 noundef signext -1) #4
  br label %62

24:                                               ; preds = %13
  %25 = getelementptr inbounds i8, ptr %0, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = zext i32 %15 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 8
  store i64 %29, ptr %30, align 8, !tbaa !32
  %31 = zext i32 %17 to i64
  %32 = getelementptr inbounds i8, ptr %26, i64 16
  store i64 %31, ptr %32, align 8, !tbaa !34
  %33 = load ptr, ptr %26, align 8, !tbaa !35
  tail call void %33(ptr noundef nonnull %0) #4
  br label %34

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds i8, ptr %0, i64 432
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = getelementptr inbounds i8, ptr %36, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %36, i64 8
  %42 = load ptr, ptr %41, align 8, !tbaa !37
  tail call void %42(ptr noundef nonnull %0) #4
  br label %43

43:                                               ; preds = %40, %34
  %44 = getelementptr inbounds i8, ptr %0, i64 316
  %45 = load i32, ptr %44, align 4, !tbaa !42
  %46 = shl nsw i32 %45, 3
  %47 = icmp ugt i32 %46, %2
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 8, !tbaa !14
  %50 = getelementptr inbounds i8, ptr %49, i64 40
  store i32 23, ptr %50, align 8, !tbaa !15
  %51 = load ptr, ptr %49, align 8, !tbaa !19
  tail call void %51(ptr noundef nonnull %0) #4
  br label %52

52:                                               ; preds = %48, %43
  %53 = getelementptr inbounds i8, ptr %0, i64 456
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds i8, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = tail call signext i32 %56(ptr noundef nonnull %0, ptr noundef %1) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %14, align 8, !tbaa !27
  %61 = add i32 %60, %46
  store i32 %61, ptr %14, align 8, !tbaa !27
  br label %62

62:                                               ; preds = %52, %59, %19
  %63 = phi i32 [ 0, %19 ], [ %46, %59 ], [ 0, %52 ]
  ret i32 %63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !17, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!16, !8, i64 0}
!20 = !{!16, !8, i64 32}
!21 = !{!7, !8, i64 40}
!22 = !{!23, !8, i64 16}
!23 = !{!"jpeg_destination_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!24 = !{!7, !8, i64 432}
!25 = !{!26, !8, i64 0}
!26 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28}
!27 = !{!7, !11, i64 304}
!28 = !{!7, !11, i64 256}
!29 = !{!7, !11, i64 52}
!30 = !{!16, !8, i64 8}
!31 = !{!7, !8, i64 16}
!32 = !{!33, !17, i64 8}
!33 = !{!"jpeg_progress_mgr", !8, i64 0, !17, i64 8, !17, i64 16, !11, i64 24, !11, i64 28}
!34 = !{!33, !17, i64 16}
!35 = !{!33, !8, i64 0}
!36 = !{!26, !11, i64 24}
!37 = !{!26, !8, i64 8}
!38 = !{!11, !11, i64 0}
!39 = !{!7, !8, i64 440}
!40 = !{!41, !8, i64 8}
!41 = !{!"jpeg_c_main_controller", !8, i64 0, !8, i64 8}
!42 = !{!7, !11, i64 316}
!43 = !{!7, !8, i64 456}
!44 = !{!45, !8, i64 8}
!45 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
