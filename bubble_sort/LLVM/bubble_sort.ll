; ModuleID = 'bubble_sort.c'
source_filename = "bubble_sort.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @bubbleSort(ptr nocapture noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %9, label %33

5:                                                ; preds = %31
  %6 = add nuw nsw i32 %11, 1
  %7 = add i32 %10, -1
  %8 = icmp eq i32 %6, %3
  br i1 %8, label %33, label %9, !llvm.loop !6

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %7, %5 ], [ %3, %2 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %12 = sub nsw i32 %11, %1
  %13 = icmp slt i32 %12, -1
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = zext i32 %10 to i64
  %16 = load i32, ptr %0, align 4, !tbaa !8
  br label %17

17:                                               ; preds = %14, %27
  %18 = phi i32 [ %16, %14 ], [ %28, %27 ]
  %19 = phi i64 [ 0, %14 ], [ %21, %27 ]
  %20 = phi i32 [ 0, %14 ], [ %29, %27 ]
  %21 = add nuw nsw i64 %19, 1
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 %23, ptr %26, align 4, !tbaa !8
  store i32 %18, ptr %22, align 4, !tbaa !8
  br label %27

27:                                               ; preds = %17, %25
  %28 = phi i32 [ %18, %25 ], [ %23, %17 ]
  %29 = phi i32 [ 1, %25 ], [ %20, %17 ]
  %30 = icmp eq i64 %21, %15
  br i1 %30, label %31, label %17, !llvm.loop !12

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %5

33:                                               ; preds = %9, %5, %31, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @printArray(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "lw n21, $0\0A", "*m,~{x20}"(ptr elementtype(i32) %0) #2, !srcloc !13
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %3) #2, !srcloc !14
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %4) #2, !srcloc !15
  %5 = getelementptr inbounds i8, ptr %0, i64 12
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %5) #2, !srcloc !16
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %6) #2, !srcloc !17
  %7 = getelementptr inbounds i8, ptr %0, i64 20
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %7) #2, !srcloc !18
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void asm sideeffect "lw x20, $0\0A", "*m,~{x20}"(ptr nonnull elementtype(i32) %8) #2, !srcloc !19
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+reserve-x12,+reserve-x13,+reserve-x14,+reserve-x15,+reserve-x16,+reserve-x17,+reserve-x18,+reserve-x19,+reserve-x21,+reserve-x22,+reserve-x23,+reserve-x24,+reserve-x25,+reserve-x26,+reserve-x27,+reserve-x28,+reserve-x29,+reserve-x30,+reserve-x31,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+reserve-x12,+reserve-x13,+reserve-x14,+reserve-x15,+reserve-x16,+reserve-x17,+reserve-x18,+reserve-x19,+reserve-x21,+reserve-x22,+reserve-x23,+reserve-x24,+reserve-x25,+reserve-x26,+reserve-x27,+reserve-x28,+reserve-x29,+reserve-x30,+reserve-x31,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !7}
!13 = !{i64 944}
!14 = !{i64 1003}
!15 = !{i64 1062}
!16 = !{i64 1121}
!17 = !{i64 1180}
!18 = !{i64 1239}
!19 = !{i64 1298}
