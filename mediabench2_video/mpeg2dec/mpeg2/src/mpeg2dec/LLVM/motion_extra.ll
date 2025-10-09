; ModuleID = 'motion.c'
source_filename = "motion.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@top_field_first = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @motion_vectors(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = or i32 %8, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = sext i32 %3 to i64
  br label %23

17:                                               ; preds = %12
  %18 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #3
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %19
  store i32 %18, ptr %20, align 4, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %2, i64 8
  %22 = getelementptr inbounds [2 x i32], ptr %21, i64 0, i64 %19
  store i32 %18, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %15, %17
  %24 = phi i64 [ %16, %15 ], [ %19, %17 ]
  %25 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %24
  tail call void @motion_vector(ptr noundef %25, ptr noundef %1, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext 0)
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %0, i64 16
  %28 = getelementptr inbounds [2 x [2 x i32]], ptr %27, i64 0, i64 %24
  store i32 %26, ptr %28, align 4, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %25, i64 4
  %30 = load i32, ptr %29, align 4, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %28, i64 4
  store i32 %30, ptr %31, align 4, !tbaa !6
  br label %42

32:                                               ; preds = %10
  %33 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #3
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !6
  %36 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %34
  tail call void @motion_vector(ptr noundef %36, ptr noundef %1, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext 0)
  %37 = tail call signext i32 @Get_Bits(i32 noundef signext 1) #3
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  %39 = getelementptr inbounds [2 x i32], ptr %38, i64 0, i64 %34
  store i32 %37, ptr %39, align 4, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %0, i64 16
  %41 = getelementptr inbounds [2 x [2 x i32]], ptr %40, i64 0, i64 %34
  tail call void @motion_vector(ptr noundef nonnull %41, ptr noundef %1, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext 0)
  br label %42

42:                                               ; preds = %32, %23
  ret void
}

declare dso_local signext i32 @Get_Bits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @motion_vector(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = tail call signext i32 @Get_motion_code() #3
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call signext i32 @Get_Bits(i32 noundef signext %2) #3
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  %16 = shl i32 16, %2
  %17 = icmp ne i32 %6, 0
  %18 = load i32, ptr %0, align 4, !tbaa !6
  %19 = zext i1 %17 to i32
  %20 = ashr i32 %18, %19
  %21 = icmp sgt i32 %8, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = add nsw i32 %8, -1
  %24 = shl i32 %23, %2
  %25 = add i32 %24, 1
  %26 = add i32 %25, %15
  %27 = add nsw i32 %26, %20
  %28 = icmp slt i32 %27, %16
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = shl i32 -32, %2
  %31 = add i32 %27, %30
  br label %45

32:                                               ; preds = %14
  %33 = icmp slt i32 %8, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = xor i32 %8, -1
  %36 = shl i32 %35, %2
  %37 = add nsw i32 %15, %36
  %38 = xor i32 %37, -1
  %39 = add i32 %20, %38
  %40 = sub nsw i32 0, %16
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = shl i32 32, %2
  %44 = add nsw i32 %39, %43
  br label %45

45:                                               ; preds = %22, %29, %32, %34, %42
  %46 = phi i32 [ %31, %29 ], [ %27, %22 ], [ %44, %42 ], [ %39, %34 ], [ %20, %32 ]
  %47 = shl i32 %46, %19
  store i32 %47, ptr %0, align 4, !tbaa !6
  %48 = icmp eq i32 %4, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call signext i32 @Get_dmvector() #3
  store i32 %50, ptr %1, align 4, !tbaa !6
  br label %51

51:                                               ; preds = %49, %45
  %52 = tail call signext i32 @Get_motion_code() #3
  %53 = icmp ne i32 %3, 0
  %54 = icmp ne i32 %52, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = tail call signext i32 @Get_Bits(i32 noundef signext %3) #3
  br label %58

58:                                               ; preds = %51, %56
  %59 = phi i32 [ %57, %56 ], [ 0, %51 ]
  %60 = icmp ne i32 %5, 0
  %61 = getelementptr inbounds i8, ptr %0, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = zext i1 %60 to i32
  %64 = ashr i32 %62, %63
  %65 = getelementptr inbounds i8, ptr %0, i64 4
  %66 = shl i32 16, %3
  %67 = ashr i32 %64, %19
  %68 = icmp sgt i32 %52, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %58
  %70 = add nsw i32 %52, -1
  %71 = shl i32 %70, %3
  %72 = add i32 %71, 1
  %73 = add i32 %72, %59
  %74 = add nsw i32 %73, %67
  %75 = icmp slt i32 %74, %66
  br i1 %75, label %92, label %76

76:                                               ; preds = %69
  %77 = shl i32 -32, %3
  %78 = add i32 %74, %77
  br label %92

79:                                               ; preds = %58
  %80 = icmp slt i32 %52, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = xor i32 %52, -1
  %83 = shl i32 %82, %3
  %84 = add nsw i32 %59, %83
  %85 = xor i32 %84, -1
  %86 = add i32 %67, %85
  %87 = sub nsw i32 0, %66
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = shl i32 32, %3
  %91 = add nsw i32 %86, %90
  br label %92

92:                                               ; preds = %69, %76, %79, %81, %89
  %93 = phi i32 [ %78, %76 ], [ %74, %69 ], [ %91, %89 ], [ %86, %81 ], [ %67, %79 ]
  %94 = shl i32 %93, %19
  %95 = zext i1 %60 to i32
  %96 = shl i32 %94, %95
  store i32 %96, ptr %65, align 4, !tbaa !6
  br i1 %48, label %100, label %97

97:                                               ; preds = %92
  %98 = tail call signext i32 @Get_dmvector() #3
  %99 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %98, ptr %99, align 4, !tbaa !6
  br label %100

100:                                              ; preds = %97, %92
  ret void
}

declare dso_local signext i32 @Get_motion_code() local_unnamed_addr #1

declare dso_local signext i32 @Get_dmvector() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @Dual_Prime_Arithmetic(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #2 {
  %5 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %68

7:                                                ; preds = %4
  %8 = load i32, ptr @top_field_first, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = icmp sgt i32 %2, 0
  %12 = zext i1 %11 to i32
  %13 = add nsw i32 %12, %2
  %14 = ashr i32 %13, 1
  %15 = load i32, ptr %1, align 4, !tbaa !6
  %16 = add nsw i32 %15, %14
  store i32 %16, ptr %0, align 4, !tbaa !6
  %17 = icmp sgt i32 %3, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %18, %3
  %20 = ashr i32 %19, 1
  %21 = getelementptr inbounds i8, ptr %1, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = add nsw i32 %20, -1
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %24, ptr %25, align 4, !tbaa !6
  %26 = mul nsw i32 %2, 3
  %27 = add nsw i32 %26, %12
  %28 = ashr i32 %27, 1
  %29 = load i32, ptr %1, align 4, !tbaa !6
  %30 = add nsw i32 %29, %28
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %30, ptr %31, align 4, !tbaa !6
  %32 = mul nsw i32 %3, 3
  %33 = add nsw i32 %32, %18
  %34 = ashr i32 %33, 1
  %35 = load i32, ptr %21, align 4, !tbaa !6
  %36 = add nsw i32 %34, 1
  %37 = add i32 %36, %35
  %38 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %37, ptr %38, align 4, !tbaa !6
  br label %89

39:                                               ; preds = %7
  %40 = mul nsw i32 %2, 3
  %41 = icmp sgt i32 %2, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = ashr i32 %43, 1
  %45 = load i32, ptr %1, align 4, !tbaa !6
  %46 = add nsw i32 %45, %44
  store i32 %46, ptr %0, align 4, !tbaa !6
  %47 = mul nsw i32 %3, 3
  %48 = icmp sgt i32 %3, 0
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %47, %49
  %51 = ashr i32 %50, 1
  %52 = getelementptr inbounds i8, ptr %1, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = add nsw i32 %51, -1
  %55 = add i32 %54, %53
  %56 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %55, ptr %56, align 4, !tbaa !6
  %57 = add nsw i32 %42, %2
  %58 = ashr i32 %57, 1
  %59 = load i32, ptr %1, align 4, !tbaa !6
  %60 = add nsw i32 %59, %58
  %61 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %60, ptr %61, align 4, !tbaa !6
  %62 = add nsw i32 %49, %3
  %63 = ashr i32 %62, 1
  %64 = load i32, ptr %52, align 4, !tbaa !6
  %65 = add nsw i32 %63, 1
  %66 = add i32 %65, %64
  %67 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %66, ptr %67, align 4, !tbaa !6
  br label %89

68:                                               ; preds = %4
  %69 = icmp sgt i32 %2, 0
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %70, %2
  %72 = ashr i32 %71, 1
  %73 = load i32, ptr %1, align 4, !tbaa !6
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr %0, align 4, !tbaa !6
  %75 = icmp sgt i32 %3, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %76, %3
  %78 = ashr i32 %77, 1
  %79 = getelementptr inbounds i8, ptr %1, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !6
  %81 = add nsw i32 %80, %78
  %82 = getelementptr inbounds i8, ptr %0, i64 4
  %83 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = add nsw i32 %81, -1
  store i32 %86, ptr %82, align 4, !tbaa !6
  br label %89

87:                                               ; preds = %68
  %88 = add nsw i32 %81, 1
  store i32 %88, ptr %82, align 4, !tbaa !6
  br label %89

89:                                               ; preds = %85, %87, %10, %39
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
