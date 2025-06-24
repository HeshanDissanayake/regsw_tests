; ModuleID = 'qsort_modified.c'
source_filename = "qsort_modified.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@load_count = dso_local local_unnamed_addr global i64 0, align 8
@store_count = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Usage: %s <array_length> <insertion_threshold> <max_value>\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Sorted %d elements with Insertion Sort threshold = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Total Loads: %lld, Total Stores: %lld\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @insertion_sort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i64, ptr @load_count, align 8, !tbaa !6
  %6 = sub nsw i32 %2, %1
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  store i64 %8, ptr @load_count, align 8, !tbaa !6
  %9 = load i64, ptr @store_count, align 8, !tbaa !6
  %10 = add nsw i64 %9, %7
  store i64 %10, ptr @store_count, align 8, !tbaa !6
  %11 = getelementptr i8, ptr %0, i64 4
  %12 = icmp slt i32 %1, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = sext i32 %1 to i64
  %15 = add i32 %1, -1
  %16 = sext i32 %2 to i64
  br label %18

17:                                               ; preds = %36, %4
  ret void

18:                                               ; preds = %13, %36
  %19 = phi i64 [ %14, %13 ], [ %20, %36 ]
  %20 = add nsw i64 %19, 1
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %23 = icmp slt i64 %19, %14
  %24 = trunc nsw i64 %19 to i32
  br i1 %23, label %36, label %25

25:                                               ; preds = %18, %30
  %26 = phi i64 [ %32, %30 ], [ %19, %18 ]
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !10
  %29 = icmp sgt i32 %28, %22
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %27, i64 4
  store i32 %28, ptr %31, align 4, !tbaa !10
  %32 = add nsw i64 %26, -1
  %33 = icmp sgt i64 %26, %14
  br i1 %33, label %25, label %36, !llvm.loop !12

34:                                               ; preds = %25
  %35 = trunc nsw i64 %26 to i32
  br label %36

36:                                               ; preds = %30, %34, %18
  %37 = phi i32 [ %24, %18 ], [ %35, %34 ], [ %15, %30 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr i32, ptr %11, i64 %38
  store i32 %22, ptr %39, align 4, !tbaa !10
  %40 = icmp eq i64 %20, %16
  br i1 %40, label %17, label %18, !llvm.loop !14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext range(i32 -2147483647, -2147483648) i32 @partition(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = load i64, ptr @load_count, align 8, !tbaa !6
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr @load_count, align 8, !tbaa !6
  %9 = load i64, ptr @store_count, align 8, !tbaa !6
  %10 = icmp slt i32 %1, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = add nsw i32 %1, -1
  %13 = sext i32 %1 to i64
  br label %25

14:                                               ; preds = %40
  store i64 %30, ptr @load_count, align 8, !tbaa !6
  %15 = add nsw i32 %42, 1
  %16 = load i32, ptr %5, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i64 [ %41, %14 ], [ %9, %3 ]
  %19 = phi i32 [ %16, %14 ], [ %6, %3 ]
  %20 = phi i32 [ %15, %14 ], [ %1, %3 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !10
  store i32 %19, ptr %22, align 4, !tbaa !10
  store i32 %23, ptr %5, align 4, !tbaa !10
  %24 = add nsw i64 %18, 2
  store i64 %24, ptr @store_count, align 8, !tbaa !6
  ret i32 %20

25:                                               ; preds = %11, %40
  %26 = phi i64 [ %13, %11 ], [ %43, %40 ]
  %27 = phi i32 [ %12, %11 ], [ %42, %40 ]
  %28 = phi i64 [ %8, %11 ], [ %30, %40 ]
  %29 = phi i64 [ %9, %11 ], [ %41, %40 ]
  %30 = add nsw i64 %28, 1
  %31 = getelementptr inbounds i32, ptr %0, i64 %26
  %32 = load i32, ptr %31, align 4, !tbaa !10
  %33 = icmp slt i32 %32, %6
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = add nsw i32 %27, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !10
  store i32 %32, ptr %37, align 4, !tbaa !10
  store i32 %38, ptr %31, align 4, !tbaa !10
  %39 = add nsw i64 %29, 2
  br label %40

40:                                               ; preds = %25, %34
  %41 = phi i64 [ %39, %34 ], [ %29, %25 ]
  %42 = phi i32 [ %35, %34 ], [ %27, %25 ]
  %43 = add nsw i64 %26, 1
  %44 = icmp eq i64 %43, %4
  br i1 %44, label %14, label %25, !llvm.loop !15
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @quicksort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #1 {
  %5 = sub nsw i32 %2, %1
  %6 = icmp slt i32 %5, %3
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = add nsw i64 %8, 1
  %11 = getelementptr i8, ptr %0, i64 4
  br label %49

12:                                               ; preds = %77, %4
  %13 = phi i32 [ %1, %4 ], [ %84, %77 ]
  %14 = phi i32 [ %5, %4 ], [ %85, %77 ]
  %15 = load i64, ptr @load_count, align 8, !tbaa !6
  %16 = sext i32 %14 to i64
  %17 = add nsw i64 %15, %16
  store i64 %17, ptr @load_count, align 8, !tbaa !6
  %18 = load i64, ptr @store_count, align 8, !tbaa !6
  %19 = add nsw i64 %18, %16
  store i64 %19, ptr @store_count, align 8, !tbaa !6
  %20 = getelementptr i8, ptr %0, i64 4
  %21 = icmp slt i32 %13, %2
  br i1 %21, label %22, label %87

22:                                               ; preds = %12
  %23 = sext i32 %13 to i64
  %24 = add i32 %13, -1
  %25 = sext i32 %2 to i64
  br label %26

26:                                               ; preds = %44, %22
  %27 = phi i64 [ %23, %22 ], [ %28, %44 ]
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !10
  %31 = icmp slt i64 %27, %23
  %32 = trunc nsw i64 %27 to i32
  br i1 %31, label %44, label %33

33:                                               ; preds = %26, %38
  %34 = phi i64 [ %40, %38 ], [ %27, %26 ]
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !10
  %37 = icmp sgt i32 %36, %30
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %35, i64 4
  store i32 %36, ptr %39, align 4, !tbaa !10
  %40 = add nsw i64 %34, -1
  %41 = icmp sgt i64 %34, %23
  br i1 %41, label %33, label %44, !llvm.loop !12

42:                                               ; preds = %33
  %43 = trunc nsw i64 %34 to i32
  br label %44

44:                                               ; preds = %38, %42, %26
  %45 = phi i32 [ %32, %26 ], [ %43, %42 ], [ %24, %38 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr i32, ptr %20, i64 %46
  store i32 %30, ptr %47, align 4, !tbaa !10
  %48 = icmp eq i64 %28, %25
  br i1 %48, label %87, label %26, !llvm.loop !14

49:                                               ; preds = %7, %77
  %50 = phi i32 [ %1, %7 ], [ %84, %77 ]
  %51 = icmp slt i32 %50, %2
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load i32, ptr %9, align 4, !tbaa !10
  %54 = load i64, ptr @load_count, align 8, !tbaa !6
  %55 = load i64, ptr @store_count, align 8, !tbaa !6
  %56 = add nsw i32 %50, -1
  %57 = sext i32 %50 to i64
  %58 = add i64 %10, %54
  br label %59

59:                                               ; preds = %72, %52
  %60 = phi i64 [ %57, %52 ], [ %75, %72 ]
  %61 = phi i32 [ %56, %52 ], [ %74, %72 ]
  %62 = phi i64 [ %55, %52 ], [ %73, %72 ]
  %63 = getelementptr inbounds i32, ptr %0, i64 %60
  %64 = load i32, ptr %63, align 4, !tbaa !10
  %65 = icmp slt i32 %64, %53
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = add nsw i32 %61, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !10
  store i32 %64, ptr %69, align 4, !tbaa !10
  store i32 %70, ptr %63, align 4, !tbaa !10
  %71 = add nsw i64 %62, 2
  br label %72

72:                                               ; preds = %66, %59
  %73 = phi i64 [ %71, %66 ], [ %62, %59 ]
  %74 = phi i32 [ %67, %66 ], [ %61, %59 ]
  %75 = add nsw i64 %60, 1
  %76 = icmp eq i64 %75, %8
  br i1 %76, label %77, label %59, !llvm.loop !15

77:                                               ; preds = %72
  %78 = sub i64 %58, %57
  store i64 %78, ptr @load_count, align 8, !tbaa !6
  %79 = load i32, ptr %9, align 4, !tbaa !10
  %80 = sext i32 %74 to i64
  %81 = getelementptr i32, ptr %11, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !10
  store i32 %79, ptr %81, align 4, !tbaa !10
  store i32 %82, ptr %9, align 4, !tbaa !10
  %83 = add nsw i64 %73, 2
  store i64 %83, ptr @store_count, align 8, !tbaa !6
  tail call void @quicksort(ptr noundef nonnull %0, i32 noundef signext %50, i32 noundef signext %74, i32 noundef signext %3)
  %84 = add nsw i32 %74, 2
  %85 = sub nsw i32 %2, %84
  %86 = icmp slt i32 %85, %3
  br i1 %86, label %12, label %49

87:                                               ; preds = %49, %44, %12
  ret void
}

; Function Attrs: nounwind
define dso_local void @generate_random_array(ptr nocapture noundef writeonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %15, %8 ]
  %10 = tail call signext i32 @rand() #9
  %11 = srem i32 %10, %2
  %12 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %11, ptr %12, align 4, !tbaa !10
  %13 = load i64, ptr @store_count, align 8, !tbaa !6
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr @store_count, align 8, !tbaa !6
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %7, label %8, !llvm.loop !16
}

declare dso_local signext i32 @rand() local_unnamed_addr #3

; Function Attrs: nofree nounwind
define dso_local void @print_array(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %8

6:                                                ; preds = %8, %2
  %7 = tail call i32 @putchar(i32 10)
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %13, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %11)
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %6, label %8, !llvm.loop !17
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !18
  %6 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %5)
  br label %38

7:                                                ; preds = %2
  tail call void @srand(i32 noundef signext 3) #9
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call signext i32 @atoi(ptr nocapture noundef %9)
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = tail call signext i32 @atoi(ptr nocapture noundef %12)
  %14 = getelementptr inbounds i8, ptr %1, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = tail call signext i32 @atoi(ptr nocapture noundef %15)
  %17 = sext i32 %10 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #10
  %20 = icmp sgt i32 %10, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %7
  %22 = zext nneg i32 %10 to i64
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %30, %23 ]
  %25 = tail call signext i32 @rand() #9
  %26 = srem i32 %25, %16
  %27 = getelementptr inbounds i32, ptr %19, i64 %24
  store i32 %26, ptr %27, align 4, !tbaa !10
  %28 = load i64, ptr @store_count, align 8, !tbaa !6
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr @store_count, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !16

32:                                               ; preds = %23, %7
  %33 = add nsw i32 %10, -1
  tail call void @quicksort(ptr noundef %19, i32 noundef signext 0, i32 noundef signext %33, i32 noundef signext %13)
  %34 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %10, i32 noundef signext %13)
  %35 = load i64, ptr @load_count, align 8, !tbaa !6
  %36 = load i64, ptr @store_count, align 8, !tbaa !6
  %37 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %35, i64 noundef %36)
  tail call void @free(ptr noundef %19)
  br label %38

38:                                               ; preds = %32, %4
  %39 = phi i32 [ 1, %4 ], [ 0, %32 ]
  ret i32 %39
}

declare dso_local void @srand(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dso_local signext i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #8

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !8, i64 0}
