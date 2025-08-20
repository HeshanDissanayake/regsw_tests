; ModuleID = 'jcmainct.c'
source_filename = "jcmainct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_c_main_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 112) #1
  %7 = getelementptr inbounds i8, ptr %0, i64 440
  store ptr %6, ptr %7, align 8, !tbaa !17
  store ptr @start_pass_main, ptr %6, align 8, !tbaa !18
  %8 = getelementptr inbounds i8, ptr %0, i64 256
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !22
  %15 = getelementptr inbounds i8, ptr %14, i64 40
  store i32 4, ptr %15, align 8, !tbaa !23
  %16 = load ptr, ptr %14, align 8, !tbaa !25
  tail call void %16(ptr noundef nonnull %0) #1
  br label %44

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %0, i64 76
  %19 = load i32, ptr %18, align 4, !tbaa !26
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %0, i64 88
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds i8, ptr %6, i64 32
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %39, %25 ]
  %27 = phi ptr [ %23, %21 ], [ %40, %25 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa !28
  %31 = getelementptr inbounds i8, ptr %27, i64 28
  %32 = load i32, ptr %31, align 4, !tbaa !29
  %33 = shl i32 %32, 3
  %34 = getelementptr inbounds i8, ptr %27, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !31
  %36 = shl nsw i32 %35, 3
  %37 = tail call ptr %30(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %33, i32 noundef signext %36) #1
  %38 = getelementptr inbounds [10 x ptr], ptr %24, i64 0, i64 %26
  store ptr %37, ptr %38, align 8, !tbaa !32
  %39 = add nuw nsw i64 %26, 1
  %40 = getelementptr inbounds i8, ptr %27, i64 96
  %41 = load i32, ptr %18, align 4, !tbaa !26
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %25, label %44, !llvm.loop !33

44:                                               ; preds = %25, %17, %13, %2
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_main(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 440
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 256
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 0, ptr %9, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 0, ptr %10, align 4, !tbaa !36
  %11 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %11, align 8, !tbaa !37
  %12 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %1, ptr %12, align 4, !tbaa !38
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @process_data_simple_main, ptr %15, align 8, !tbaa !39
  br label %20

16:                                               ; preds = %8
  %17 = load ptr, ptr %0, align 8, !tbaa !22
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 4, ptr %18, align 8, !tbaa !23
  %19 = load ptr, ptr %17, align 8, !tbaa !25
  tail call void %19(ptr noundef nonnull %0) #1
  br label %20

20:                                               ; preds = %14, %16, %2
  ret void
}

; Function Attrs: nounwind
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 440
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 16
  %8 = getelementptr inbounds i8, ptr %0, i64 320
  %9 = load i32, ptr %7, align 8, !tbaa !35
  %10 = load i32, ptr %8, align 8, !tbaa !40
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %4
  %13 = getelementptr inbounds i8, ptr %6, i64 20
  %14 = getelementptr inbounds i8, ptr %0, i64 448
  %15 = getelementptr inbounds i8, ptr %6, i64 32
  %16 = getelementptr inbounds i8, ptr %0, i64 456
  %17 = getelementptr inbounds i8, ptr %6, i64 24
  %18 = load i32, ptr %13, align 4, !tbaa !36
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load ptr, ptr %14, align 8, !tbaa !41
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  tail call void %23(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef nonnull %15, ptr noundef nonnull %13, i32 noundef signext 8) #1
  %24 = load i32, ptr %13, align 4, !tbaa !36
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i32 [ %24, %20 ], [ %18, %12 ]
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load ptr, ptr %16, align 8, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = tail call signext i32 %31(ptr noundef nonnull %0, ptr noundef nonnull %15) #1
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %17, align 8, !tbaa !37
  %35 = icmp eq i32 %34, 0
  br i1 %33, label %59, label %36

36:                                               ; preds = %28
  br i1 %35, label %40, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %2, align 4, !tbaa !47
  %39 = add i32 %38, 1
  store i32 %39, ptr %2, align 4, !tbaa !47
  store i32 0, ptr %17, align 8, !tbaa !37
  br label %40

40:                                               ; preds = %37, %36
  store i32 0, ptr %13, align 4, !tbaa !36
  %41 = load i32, ptr %7, align 8, !tbaa !35
  %42 = add i32 %41, 1
  store i32 %42, ptr %7, align 8, !tbaa !35
  %43 = load i32, ptr %8, align 8, !tbaa !40
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %40, %68
  %46 = load ptr, ptr %14, align 8, !tbaa !41
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  tail call void %48(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef nonnull %15, ptr noundef nonnull %13, i32 noundef signext 8) #1
  %49 = load i32, ptr %13, align 4, !tbaa !36
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load ptr, ptr %16, align 8, !tbaa !44
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = tail call signext i32 %54(ptr noundef nonnull %0, ptr noundef nonnull %15) #1
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %17, align 8, !tbaa !37
  %58 = icmp eq i32 %57, 0
  br i1 %56, label %59, label %64

59:                                               ; preds = %51, %28
  %60 = phi i1 [ %35, %28 ], [ %58, %51 ]
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = load i32, ptr %2, align 4, !tbaa !47
  %63 = add i32 %62, -1
  store i32 %63, ptr %2, align 4, !tbaa !47
  store i32 1, ptr %17, align 8, !tbaa !37
  br label %73

64:                                               ; preds = %51
  br i1 %58, label %68, label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %2, align 4, !tbaa !47
  %67 = add i32 %66, 1
  store i32 %67, ptr %2, align 4, !tbaa !47
  store i32 0, ptr %17, align 8, !tbaa !37
  br label %68

68:                                               ; preds = %65, %64
  store i32 0, ptr %13, align 4, !tbaa !36
  %69 = load i32, ptr %7, align 8, !tbaa !35
  %70 = add i32 %69, 1
  store i32 %70, ptr %7, align 8, !tbaa !35
  %71 = load i32, ptr %8, align 8, !tbaa !40
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %45, label %73, !llvm.loop !48

73:                                               ; preds = %25, %40, %45, %68, %4, %59, %61
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 440}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !9, i64 32}
!20 = !{!"jpeg_c_main_controller", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 256}
!22 = !{!7, !8, i64 0}
!23 = !{!24, !11, i64 40}
!24 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!25 = !{!24, !8, i64 0}
!26 = !{!7, !11, i64 76}
!27 = !{!7, !8, i64 88}
!28 = !{!15, !8, i64 16}
!29 = !{!30, !11, i64 28}
!30 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!31 = !{!30, !11, i64 12}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!19, !11, i64 16}
!36 = !{!19, !11, i64 20}
!37 = !{!19, !11, i64 24}
!38 = !{!19, !11, i64 28}
!39 = !{!19, !8, i64 8}
!40 = !{!7, !11, i64 320}
!41 = !{!7, !8, i64 448}
!42 = !{!43, !8, i64 8}
!43 = !{!"jpeg_c_prep_controller", !8, i64 0, !8, i64 8}
!44 = !{!7, !8, i64 456}
!45 = !{!46, !8, i64 8}
!46 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!47 = !{!11, !11, i64 0}
!48 = distinct !{!48, !34, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
