; ModuleID = 'coremark.c'
source_filename = "coremark.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@intpat = internal unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 8
@floatpat = internal unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 8
@scipat = internal unnamed_addr constant [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 8
@errpat = internal unnamed_addr constant [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 8
@.str = private unnamed_addr constant [5 x i8] c"5012\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-874\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"+122\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"35.54400\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".1234500\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-110.700\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"+0.64400\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"5.500e+3\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"-.123e-2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"-87e+832\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"+0.6e-12\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"T0.3e-1F\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-T.T++Tq\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"1T3.4e4z\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"34.0e-T^\00", align 1
@switch.table.core_init_state = private unnamed_addr constant [8 x ptr] [ptr @intpat, ptr @intpat, ptr @intpat, ptr @floatpat, ptr @floatpat, ptr @scipat, ptr @scipat, ptr @errpat], align 8
@switch.table.core_init_state.16 = private unnamed_addr constant [8 x i32] [i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 8], align 4

; Function Attrs: nounwind
define dso_local zeroext i16 @core_bench_state(i32 noundef signext %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store ptr %1, ptr %9, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !10
  %10 = load i8, ptr %1, align 1, !tbaa !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %19, %6
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = icmp eq i32 %0, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = trunc i16 %2 to i8
  %18 = sext i16 %4 to i64
  br label %28

19:                                               ; preds = %6, %19
  %20 = call signext i32 @core_state_transition(ptr noundef nonnull %9, ptr noundef nonnull %8)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !10
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !10
  %25 = load ptr, ptr %9, align 8, !tbaa !6
  %26 = load i8, ptr %25, align 1, !tbaa !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %12, label %19, !llvm.loop !13

28:                                               ; preds = %16, %34
  %29 = phi ptr [ %1, %16 ], [ %35, %34 ]
  %30 = load i8, ptr %29, align 1, !tbaa !12
  %31 = icmp eq i8 %30, 44
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = xor i8 %30, %17
  store i8 %33, ptr %29, align 1, !tbaa !12
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds i8, ptr %29, i64 %18
  %36 = icmp ult ptr %35, %14
  br i1 %36, label %28, label %37, !llvm.loop !15

37:                                               ; preds = %34, %12
  store ptr %1, ptr %9, align 8, !tbaa !6
  %38 = load i8, ptr %1, align 1, !tbaa !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %44, %37
  br i1 %15, label %53, label %41

41:                                               ; preds = %40
  %42 = trunc i16 %3 to i8
  %43 = sext i16 %4 to i64
  br label %100

44:                                               ; preds = %37, %44
  %45 = call signext i32 @core_state_transition(ptr noundef nonnull %9, ptr noundef nonnull %8)
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !10
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !10
  %50 = load ptr, ptr %9, align 8, !tbaa !6
  %51 = load i8, ptr %50, align 1, !tbaa !12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %40, label %44, !llvm.loop !16

53:                                               ; preds = %106, %40
  %54 = load i32, ptr %7, align 4, !tbaa !10
  %55 = tail call zeroext i16 @crcu32(i32 noundef signext %54, i16 noundef zeroext %5) #6
  %56 = load i32, ptr %8, align 4, !tbaa !10
  %57 = tail call zeroext i16 @crcu32(i32 noundef signext %56, i16 noundef zeroext %55) #6
  %58 = getelementptr inbounds i8, ptr %7, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !10
  %60 = tail call zeroext i16 @crcu32(i32 noundef signext %59, i16 noundef zeroext %57) #6
  %61 = getelementptr inbounds i8, ptr %8, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !10
  %63 = tail call zeroext i16 @crcu32(i32 noundef signext %62, i16 noundef zeroext %60) #6
  %64 = getelementptr inbounds i8, ptr %7, i64 8
  %65 = load i32, ptr %64, align 4, !tbaa !10
  %66 = tail call zeroext i16 @crcu32(i32 noundef signext %65, i16 noundef zeroext %63) #6
  %67 = getelementptr inbounds i8, ptr %8, i64 8
  %68 = load i32, ptr %67, align 4, !tbaa !10
  %69 = tail call zeroext i16 @crcu32(i32 noundef signext %68, i16 noundef zeroext %66) #6
  %70 = getelementptr inbounds i8, ptr %7, i64 12
  %71 = load i32, ptr %70, align 4, !tbaa !10
  %72 = tail call zeroext i16 @crcu32(i32 noundef signext %71, i16 noundef zeroext %69) #6
  %73 = getelementptr inbounds i8, ptr %8, i64 12
  %74 = load i32, ptr %73, align 4, !tbaa !10
  %75 = tail call zeroext i16 @crcu32(i32 noundef signext %74, i16 noundef zeroext %72) #6
  %76 = getelementptr inbounds i8, ptr %7, i64 16
  %77 = load i32, ptr %76, align 4, !tbaa !10
  %78 = tail call zeroext i16 @crcu32(i32 noundef signext %77, i16 noundef zeroext %75) #6
  %79 = getelementptr inbounds i8, ptr %8, i64 16
  %80 = load i32, ptr %79, align 4, !tbaa !10
  %81 = tail call zeroext i16 @crcu32(i32 noundef signext %80, i16 noundef zeroext %78) #6
  %82 = getelementptr inbounds i8, ptr %7, i64 20
  %83 = load i32, ptr %82, align 4, !tbaa !10
  %84 = tail call zeroext i16 @crcu32(i32 noundef signext %83, i16 noundef zeroext %81) #6
  %85 = getelementptr inbounds i8, ptr %8, i64 20
  %86 = load i32, ptr %85, align 4, !tbaa !10
  %87 = tail call zeroext i16 @crcu32(i32 noundef signext %86, i16 noundef zeroext %84) #6
  %88 = getelementptr inbounds i8, ptr %7, i64 24
  %89 = load i32, ptr %88, align 4, !tbaa !10
  %90 = tail call zeroext i16 @crcu32(i32 noundef signext %89, i16 noundef zeroext %87) #6
  %91 = getelementptr inbounds i8, ptr %8, i64 24
  %92 = load i32, ptr %91, align 4, !tbaa !10
  %93 = tail call zeroext i16 @crcu32(i32 noundef signext %92, i16 noundef zeroext %90) #6
  %94 = getelementptr inbounds i8, ptr %7, i64 28
  %95 = load i32, ptr %94, align 4, !tbaa !10
  %96 = tail call zeroext i16 @crcu32(i32 noundef signext %95, i16 noundef zeroext %93) #6
  %97 = getelementptr inbounds i8, ptr %8, i64 28
  %98 = load i32, ptr %97, align 4, !tbaa !10
  %99 = tail call zeroext i16 @crcu32(i32 noundef signext %98, i16 noundef zeroext %96) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  ret i16 %99

100:                                              ; preds = %41, %106
  %101 = phi ptr [ %1, %41 ], [ %107, %106 ]
  %102 = load i8, ptr %101, align 1, !tbaa !12
  %103 = icmp eq i8 %102, 44
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = xor i8 %102, %42
  store i8 %105, ptr %101, align 1, !tbaa !12
  br label %106

106:                                              ; preds = %104, %100
  %107 = getelementptr inbounds i8, ptr %101, i64 %43
  %108 = icmp ult ptr %107, %14
  br i1 %108, label %100, label %53, !llvm.loop !17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext i32 @core_state_transition(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load i8, ptr %3, align 1, !tbaa !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 4
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = getelementptr inbounds i8, ptr %1, i64 20
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  br label %13

13:                                               ; preds = %6, %62
  %14 = phi i8 [ %4, %6 ], [ %65, %62 ]
  %15 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %16 = phi ptr [ %3, %6 ], [ %64, %62 ]
  %17 = icmp eq i8 %14, 44
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  br label %69

20:                                               ; preds = %13
  switch i32 %15, label %62 [
    i32 0, label %21
    i32 2, label %29
    i32 4, label %34
    i32 5, label %39
    i32 3, label %45
    i32 6, label %46
    i32 7, label %49
  ]

21:                                               ; preds = %20
  %22 = add i8 %14, -58
  %23 = icmp ult i8 %22, -10
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  switch i8 %14, label %26 [
    i8 45, label %57
    i8 43, label %57
    i8 46, label %25
  ]

25:                                               ; preds = %24
  br label %57

26:                                               ; preds = %24
  %27 = load i32, ptr %7, align 4, !tbaa !10
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4, !tbaa !10
  br label %57

29:                                               ; preds = %20
  %30 = add i8 %14, -58
  %31 = icmp ult i8 %30, -10
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = icmp eq i8 %14, 46
  br i1 %33, label %57, label %52

34:                                               ; preds = %20
  %35 = icmp eq i8 %14, 46
  br i1 %35, label %57, label %36

36:                                               ; preds = %34
  %37 = add i8 %14, -58
  %38 = icmp ult i8 %37, -10
  br i1 %38, label %52, label %62

39:                                               ; preds = %20
  %40 = and i8 %14, -33
  %41 = icmp eq i8 %40, 69
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = add i8 %14, -58
  %44 = icmp ult i8 %43, -10
  br i1 %44, label %52, label %62

45:                                               ; preds = %20
  switch i8 %14, label %52 [
    i8 45, label %57
    i8 43, label %57
  ]

46:                                               ; preds = %20
  %47 = add i8 %14, -58
  %48 = icmp ult i8 %47, -10
  br i1 %48, label %52, label %57

49:                                               ; preds = %20
  %50 = add i8 %14, -58
  %51 = icmp ult i8 %50, -10
  br i1 %51, label %52, label %62

52:                                               ; preds = %49, %46, %45, %42, %36, %32
  %53 = phi ptr [ %12, %32 ], [ %11, %36 ], [ %10, %42 ], [ %9, %45 ], [ %8, %46 ], [ %7, %49 ]
  %54 = load i32, ptr %53, align 4, !tbaa !10
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4, !tbaa !10
  %56 = getelementptr inbounds i8, ptr %16, i64 1
  br label %69

57:                                               ; preds = %46, %45, %45, %39, %34, %32, %29, %25, %26, %21, %24, %24
  %58 = phi ptr [ %1, %24 ], [ %1, %24 ], [ %1, %21 ], [ %1, %26 ], [ %1, %25 ], [ %12, %29 ], [ %12, %32 ], [ %11, %34 ], [ %10, %39 ], [ %9, %45 ], [ %9, %45 ], [ %8, %46 ]
  %59 = phi i32 [ 2, %24 ], [ 2, %24 ], [ 4, %21 ], [ 1, %26 ], [ 5, %25 ], [ 4, %29 ], [ 5, %32 ], [ 5, %34 ], [ 3, %39 ], [ 6, %45 ], [ 6, %45 ], [ 7, %46 ]
  %60 = load i32, ptr %58, align 4, !tbaa !10
  %61 = add i32 %60, 1
  store i32 %61, ptr %58, align 4, !tbaa !10
  br label %62

62:                                               ; preds = %57, %36, %42, %49, %20
  %63 = phi i32 [ %15, %20 ], [ 7, %49 ], [ 5, %42 ], [ 4, %36 ], [ %59, %57 ]
  %64 = getelementptr inbounds i8, ptr %16, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %66 = icmp ne i8 %65, 0
  %67 = icmp ne i32 %63, 1
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %13, label %69, !llvm.loop !18

69:                                               ; preds = %62, %52, %2, %18
  %70 = phi i32 [ %15, %18 ], [ 0, %2 ], [ 1, %52 ], [ %63, %62 ]
  %71 = phi ptr [ %19, %18 ], [ %3, %2 ], [ %56, %52 ], [ %64, %62 ]
  store ptr %71, ptr %0, align 8, !tbaa !6
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local zeroext i16 @crcu32(i32 noundef signext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @core_init_state(i32 noundef signext %0, i16 noundef signext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = add i32 %0, -1
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %15, label %6

6:                                                ; preds = %36, %3
  %7 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %8 = icmp ult i32 %7, %0
  br i1 %8, label %9, label %55

9:                                                ; preds = %6
  %10 = zext i32 %7 to i64
  %11 = getelementptr i8, ptr %2, i64 %10
  %12 = sub i32 %4, %7
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %11, i8 0, i64 %14, i1 false), !tbaa !12
  br label %55

15:                                               ; preds = %3, %36
  %16 = phi ptr [ %51, %36 ], [ null, %3 ]
  %17 = phi i32 [ %46, %36 ], [ 0, %3 ]
  %18 = phi i32 [ %37, %36 ], [ 0, %3 ]
  %19 = phi i16 [ %38, %36 ], [ %1, %3 ]
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds i8, ptr %2, i64 %22
  %24 = zext nneg i32 %17 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %30, %25 ]
  %27 = getelementptr inbounds i8, ptr %16, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !12
  %29 = getelementptr inbounds i8, ptr %23, i64 %26
  store i8 %28, ptr %29, align 1, !tbaa !12
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %32, label %25, !llvm.loop !19

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 44, ptr %33, align 1, !tbaa !12
  %34 = add i32 %18, 1
  %35 = add i32 %34, %17
  br label %36

36:                                               ; preds = %32, %15
  %37 = phi i32 [ %35, %32 ], [ %18, %15 ]
  %38 = add i16 %19, 1
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 7
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_init_state, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = zext nneg i32 %40 to i64
  %45 = getelementptr inbounds [8 x i32], ptr @switch.table.core_init_state.16, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %39, 3
  %48 = and i32 %47, 3
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [4 x ptr], ptr %43, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = add i32 %37, 1
  %53 = add i32 %52, %46
  %54 = icmp ult i32 %53, %4
  br i1 %54, label %15, label %6, !llvm.loop !20

55:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
