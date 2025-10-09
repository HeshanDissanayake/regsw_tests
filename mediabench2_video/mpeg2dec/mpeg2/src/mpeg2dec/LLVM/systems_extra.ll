; ModuleID = 'systems.c'
source_filename = "systems.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@ld = external dso_local local_unnamed_addr global ptr, align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = external dso_local local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [18 x i8] c"MPEG-2 PES packet\00", align 1

; Function Attrs: nounwind
define dso_local void @Next_Packet() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %123, %0
  %2 = tail call signext i32 @Get_Word() #5
  %3 = shl i32 %2, 16
  %4 = tail call signext i32 @Get_Word() #5
  %5 = or i32 %3, %4
  %6 = and i32 %5, -256
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %15, label %8

8:                                                ; preds = %1, %8
  %9 = phi i32 [ %12, %8 ], [ %5, %1 ]
  %10 = shl i32 %9, 8
  %11 = tail call signext i32 @Get_Byte() #5
  %12 = or i32 %11, %10
  %13 = and i32 %12, -256
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %1
  %16 = phi i32 [ %5, %1 ], [ %12, %8 ]
  switch i32 %16, label %114 [
    i32 442, label %17
    i32 480, label %22
    i32 441, label %89
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr @ld, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 2056
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %21, ptr %19, align 8, !tbaa !10
  br label %123

22:                                               ; preds = %15
  %23 = tail call signext i32 @Get_Word() #5
  %24 = load ptr, ptr @ld, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 2056
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds i8, ptr %24, i64 2088
  store ptr %28, ptr %29, align 8, !tbaa !13
  %30 = tail call signext i32 @Get_Byte() #5
  %31 = and i32 %30, -64
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load ptr, ptr @ld, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %34, i64 2056
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr %35, align 8, !tbaa !10
  %38 = tail call signext i32 @Get_Byte() #5
  %39 = load ptr, ptr @ld, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 2056
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  store ptr %43, ptr %40, align 8, !tbaa !10
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %127

45:                                               ; preds = %22
  %46 = icmp eq i32 %30, 255
  br i1 %46, label %47, label %50

47:                                               ; preds = %45, %47
  %48 = tail call signext i32 @Get_Byte() #5
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %47, label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %30, %45 ], [ %48, %47 ]
  %52 = icmp ugt i32 %51, 63
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = icmp ugt i32 %51, 127
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load ptr, ptr @stderr, align 8, !tbaa !6
  %57 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 23, i64 1, ptr %56) #6
  tail call void @exit(i32 noundef signext 1) #7
  unreachable

58:                                               ; preds = %53
  %59 = load ptr, ptr @ld, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 2056
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %62, ptr %60, align 8, !tbaa !10
  %63 = tail call signext i32 @Get_Byte() #5
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i32 [ %63, %58 ], [ %51, %50 ]
  %66 = icmp ugt i32 %65, 47
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = icmp ugt i32 %65, 63
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load ptr, ptr @stderr, align 8, !tbaa !6
  %71 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 23, i64 1, ptr %70) #6
  tail call void @exit(i32 noundef signext 1) #7
  unreachable

72:                                               ; preds = %67
  %73 = load ptr, ptr @ld, align 8, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %73, i64 2056
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = getelementptr inbounds i8, ptr %75, i64 9
  store ptr %76, ptr %74, align 8, !tbaa !10
  br label %127

77:                                               ; preds = %64
  %78 = icmp ugt i32 %65, 31
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load ptr, ptr @ld, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 2056
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %81, align 8, !tbaa !10
  br label %127

84:                                               ; preds = %77
  %85 = icmp eq i32 %65, 15
  br i1 %85, label %127, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr @stderr, align 8, !tbaa !6
  %88 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 23, i64 1, ptr %87) #6
  tail call void @exit(i32 noundef signext 1) #7
  unreachable

89:                                               ; preds = %15, %89
  %90 = phi i64 [ %105, %89 ], [ 0, %15 ]
  %91 = load ptr, ptr @ld, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %91, i64 4
  %93 = or disjoint i64 %90, 1
  %94 = getelementptr inbounds [2048 x i8], ptr %92, i64 0, i64 %90
  store i8 0, ptr %94, align 1, !tbaa !14
  %95 = load ptr, ptr @ld, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 4
  %97 = or disjoint i64 %90, 2
  %98 = getelementptr inbounds [2048 x i8], ptr %96, i64 0, i64 %93
  store i8 0, ptr %98, align 1, !tbaa !14
  %99 = load ptr, ptr @ld, align 8, !tbaa !6
  %100 = getelementptr inbounds i8, ptr %99, i64 4
  %101 = or disjoint i64 %90, 3
  %102 = getelementptr inbounds [2048 x i8], ptr %100, i64 0, i64 %97
  store i8 1, ptr %102, align 1, !tbaa !14
  %103 = load ptr, ptr @ld, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 4
  %105 = add nuw nsw i64 %90, 4
  %106 = getelementptr inbounds [2048 x i8], ptr %104, i64 0, i64 %101
  store i8 -73, ptr %106, align 1, !tbaa !14
  %107 = icmp ult i64 %90, 2044
  br i1 %107, label %89, label %108

108:                                              ; preds = %89
  %109 = load ptr, ptr @ld, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 4
  %111 = getelementptr inbounds i8, ptr %109, i64 2056
  store ptr %110, ptr %111, align 8, !tbaa !10
  %112 = getelementptr inbounds i8, ptr %109, i64 2052
  %113 = getelementptr inbounds i8, ptr %109, i64 2088
  store ptr %112, ptr %113, align 8, !tbaa !13
  br label %127

114:                                              ; preds = %15
  %115 = icmp ugt i32 %16, 442
  br i1 %115, label %116, label %124

116:                                              ; preds = %114
  %117 = tail call signext i32 @Get_Word() #5
  %118 = load ptr, ptr @ld, align 8, !tbaa !6
  %119 = getelementptr inbounds i8, ptr %118, i64 2056
  %120 = load ptr, ptr %119, align 8, !tbaa !10
  %121 = zext i32 %117 to i64
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  store ptr %122, ptr %119, align 8, !tbaa !10
  br label %123

123:                                              ; preds = %116, %17
  br label %1

124:                                              ; preds = %114
  %125 = load ptr, ptr @stderr, align 8, !tbaa !6
  %126 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.2, i32 noundef signext %16) #8
  tail call void @exit(i32 noundef signext 1) #7
  unreachable

127:                                              ; preds = %72, %84, %79, %108, %33
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @Get_Long() local_unnamed_addr #0 {
  %1 = tail call signext i32 @Get_Word() #5
  %2 = shl i32 %1, 16
  %3 = tail call signext i32 @Get_Word() #5
  %4 = or i32 %2, %3
  ret i32 %4
}

declare dso_local signext i32 @Get_Byte() local_unnamed_addr #1

declare dso_local signext i32 @Get_Word() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @Flush_Buffer32() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2080
  store i32 0, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds i8, ptr %1, i64 2096
  %4 = load i32, ptr %3, align 8, !tbaa !16
  %5 = add nsw i32 %4, -32
  %6 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %1, i64 2056
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %1, i64 2088
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = icmp ult ptr %10, %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %8
  %16 = icmp slt i32 %4, 57
  br i1 %16, label %17, label %65

17:                                               ; preds = %15, %26
  %18 = phi ptr [ %30, %26 ], [ %1, %15 ]
  %19 = phi i32 [ %34, %26 ], [ %5, %15 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 2056
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %18, i64 2088
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @Next_Packet()
  br label %26

26:                                               ; preds = %25, %17
  %27 = tail call signext i32 @Get_Byte() #5
  %28 = sub nsw i32 24, %19
  %29 = shl i32 %27, %28
  %30 = load ptr, ptr @ld, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 2080
  %32 = load i32, ptr %31, align 8, !tbaa !15
  %33 = or i32 %32, %29
  store i32 %33, ptr %31, align 8, !tbaa !15
  %34 = add nsw i32 %19, 8
  %35 = icmp slt i32 %19, 17
  br i1 %35, label %17, label %65

36:                                               ; preds = %8, %0
  %37 = icmp slt i32 %4, 57
  br i1 %37, label %38, label %65

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %1, i64 2056
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %38, %51
  %42 = phi ptr [ %53, %51 ], [ %1, %38 ]
  %43 = phi ptr [ %55, %51 ], [ %40, %38 ]
  %44 = phi i32 [ %63, %51 ], [ %5, %38 ]
  %45 = getelementptr inbounds i8, ptr %42, i64 2052
  %46 = icmp ult ptr %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  tail call void @Fill_Buffer() #5
  %48 = load ptr, ptr @ld, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 2056
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %53 = phi ptr [ %48, %47 ], [ %42, %41 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 2056
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %55, ptr %54, align 8, !tbaa !10
  %56 = load i8, ptr %52, align 1, !tbaa !14
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 24, %44
  %59 = shl i32 %57, %58
  %60 = getelementptr inbounds i8, ptr %53, i64 2080
  %61 = load i32, ptr %60, align 8, !tbaa !15
  %62 = or i32 %59, %61
  store i32 %62, ptr %60, align 8, !tbaa !15
  %63 = add nsw i32 %44, 8
  %64 = icmp slt i32 %44, 17
  br i1 %64, label %41, label %65

65:                                               ; preds = %26, %51, %15, %36
  %66 = phi ptr [ %1, %36 ], [ %1, %15 ], [ %53, %51 ], [ %30, %26 ]
  %67 = phi i32 [ %5, %36 ], [ %5, %15 ], [ %63, %51 ], [ %34, %26 ]
  %68 = getelementptr inbounds i8, ptr %66, i64 2096
  store i32 %67, ptr %68, align 8, !tbaa !16
  ret void
}

declare dso_local void @Fill_Buffer() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext i32 @Get_Bits32() local_unnamed_addr #0 {
  %1 = tail call signext i32 @Show_Bits(i32 noundef signext 32) #5
  tail call void @Flush_Buffer32()
  ret i32 %1
}

declare dso_local signext i32 @Show_Bits(i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{!11, !7, i64 2056}
!11 = !{!"layer_data", !12, i64 0, !8, i64 4, !7, i64 2056, !8, i64 2064, !12, i64 2080, !7, i64 2088, !12, i64 2096, !12, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !12, i64 3152, !12, i64 3156, !12, i64 3160, !12, i64 3164, !12, i64 3168, !12, i64 3172, !8, i64 3176}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 2088}
!14 = !{!8, !8, i64 0}
!15 = !{!11, !12, i64 2080}
!16 = !{!11, !12, i64 2096}
!17 = !{!12, !12, i64 0}
