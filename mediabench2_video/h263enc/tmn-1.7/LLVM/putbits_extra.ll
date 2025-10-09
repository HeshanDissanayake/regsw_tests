; ModuleID = 'putbits.c'
source_filename = "putbits.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@outcnt = internal unnamed_addr global i32 0, align 4
@bytecnt = internal unnamed_addr global i32 0, align 4
@trace = external dso_local local_unnamed_addr global i32, align 4
@tf = external dso_local local_unnamed_addr global ptr, align 8
@outbfr = internal unnamed_addr global i8 0, align 1
@streamfile = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @initbits() local_unnamed_addr #0 {
  store i32 8, ptr @outcnt, align 4, !tbaa !6
  store i32 0, ptr @bytecnt, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @putbits(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #1 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  %4 = load i32, ptr @trace, align 4, !tbaa !6
  %5 = icmp ne i32 %4, 0
  %6 = icmp sgt i32 %0, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  store i8 34, ptr %3, align 1, !tbaa !10
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ %9, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = trunc nsw i64 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i8 48, i8 49
  %18 = sub nsw i64 %9, %12
  %19 = getelementptr inbounds i8, ptr %3, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !10
  %20 = icmp eq i64 %12, 0
  br i1 %20, label %21, label %10

21:                                               ; preds = %10
  %22 = getelementptr i8, ptr %3, i64 %9
  %23 = getelementptr i8, ptr %22, i64 1
  store i8 34, ptr %23, align 1, !tbaa !10
  %24 = getelementptr i8, ptr %22, i64 2
  store i8 10, ptr %24, align 1, !tbaa !10
  %25 = getelementptr i8, ptr %22, i64 3
  store i8 0, ptr %25, align 1, !tbaa !10
  %26 = load ptr, ptr @tf, align 8, !tbaa !11
  %27 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull %3) #5
  br label %28

28:                                               ; preds = %21, %2
  br i1 %6, label %29, label %59

29:                                               ; preds = %28
  %30 = add nsw i32 %0, -1
  %31 = shl nuw i32 1, %30
  %32 = load i8, ptr @outbfr, align 1, !tbaa !10
  %33 = load i32, ptr @outcnt, align 4, !tbaa !6
  br label %34

34:                                               ; preds = %29, %54
  %35 = phi i32 [ %55, %54 ], [ %33, %29 ]
  %36 = phi i8 [ %56, %54 ], [ %32, %29 ]
  %37 = phi i32 [ %44, %54 ], [ %31, %29 ]
  %38 = phi i32 [ %57, %54 ], [ 0, %29 ]
  %39 = shl i8 %36, 1
  %40 = and i32 %37, %1
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i8
  %43 = or disjoint i8 %39, %42
  store i8 %43, ptr @outbfr, align 1, !tbaa !10
  %44 = lshr i32 %37, 1
  %45 = add nsw i32 %35, -1
  store i32 %45, ptr @outcnt, align 4, !tbaa !6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = zext i8 %43 to i32
  %49 = load ptr, ptr @streamfile, align 8, !tbaa !11
  %50 = tail call signext i32 @putc(i32 noundef signext %48, ptr noundef %49)
  store i32 8, ptr @outcnt, align 4, !tbaa !6
  %51 = load i32, ptr @bytecnt, align 4, !tbaa !6
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr @bytecnt, align 4, !tbaa !6
  %53 = load i8, ptr @outbfr, align 1, !tbaa !10
  br label %54

54:                                               ; preds = %34, %47
  %55 = phi i32 [ %45, %34 ], [ 8, %47 ]
  %56 = phi i8 [ %43, %34 ], [ %53, %47 ]
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, %0
  br i1 %58, label %59, label %34

59:                                               ; preds = %54, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define dso_local void @BitPrint(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store i8 34, ptr %2, align 1, !tbaa !10
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %6, %5 ], [ %9, %7 ]
  %9 = add nsw i64 %8, -1
  %10 = trunc nsw i64 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 48, i8 49
  %15 = sub nsw i64 %6, %9
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !10
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %18, label %7

18:                                               ; preds = %7, %3
  %19 = phi i64 [ 0, %3 ], [ %6, %7 ]
  %20 = getelementptr i8, ptr %2, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  store i8 34, ptr %21, align 1, !tbaa !10
  %22 = getelementptr i8, ptr %20, i64 2
  store i8 10, ptr %22, align 1, !tbaa !10
  %23 = getelementptr i8, ptr %20, i64 3
  store i8 0, ptr %23, align 1, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
define dso_local signext range(i32 9, 8) i32 @alignbits() local_unnamed_addr #1 {
  %1 = load i32, ptr @outcnt, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 8
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @putbits(i32 noundef signext %1, i32 noundef signext 0)
  br label %4

4:                                                ; preds = %0, %3
  %5 = phi i32 [ %1, %3 ], [ 0, %0 ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local signext i32 @bitcount() local_unnamed_addr #4 {
  %1 = load i32, ptr @bytecnt, align 4, !tbaa !6
  %2 = shl nsw i32 %1, 3
  %3 = load i32, ptr @outcnt, align 4, !tbaa !6
  %4 = sub i32 %2, %3
  %5 = add i32 %4, 8
  ret i32 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
