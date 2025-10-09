; ModuleID = 'putvlc.c'
source_filename = "putvlc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.VLCtable = type { i32, i32 }

@mvtab = internal unnamed_addr constant [33 x %struct.VLCtable] [%struct.VLCtable { i32 1, i32 1 }, %struct.VLCtable { i32 1, i32 2 }, %struct.VLCtable { i32 1, i32 3 }, %struct.VLCtable { i32 1, i32 4 }, %struct.VLCtable { i32 3, i32 6 }, %struct.VLCtable { i32 5, i32 7 }, %struct.VLCtable { i32 4, i32 7 }, %struct.VLCtable { i32 3, i32 7 }, %struct.VLCtable { i32 11, i32 9 }, %struct.VLCtable { i32 10, i32 9 }, %struct.VLCtable { i32 9, i32 9 }, %struct.VLCtable { i32 17, i32 10 }, %struct.VLCtable { i32 16, i32 10 }, %struct.VLCtable { i32 15, i32 10 }, %struct.VLCtable { i32 14, i32 10 }, %struct.VLCtable { i32 13, i32 10 }, %struct.VLCtable { i32 12, i32 10 }, %struct.VLCtable { i32 11, i32 10 }, %struct.VLCtable { i32 10, i32 10 }, %struct.VLCtable { i32 9, i32 10 }, %struct.VLCtable { i32 8, i32 10 }, %struct.VLCtable { i32 7, i32 10 }, %struct.VLCtable { i32 6, i32 10 }, %struct.VLCtable { i32 5, i32 10 }, %struct.VLCtable { i32 4, i32 10 }, %struct.VLCtable { i32 7, i32 11 }, %struct.VLCtable { i32 6, i32 11 }, %struct.VLCtable { i32 5, i32 11 }, %struct.VLCtable { i32 4, i32 11 }, %struct.VLCtable { i32 3, i32 11 }, %struct.VLCtable { i32 2, i32 11 }, %struct.VLCtable { i32 3, i32 12 }, %struct.VLCtable { i32 2, i32 12 }], align 4
@cbpcm_intra_tab = internal unnamed_addr constant [15 x %struct.VLCtable] [%struct.VLCtable { i32 1, i32 9 }, %struct.VLCtable { i32 1, i32 1 }, %struct.VLCtable { i32 1, i32 4 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 1, i32 3 }, %struct.VLCtable { i32 1, i32 6 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 2, i32 3 }, %struct.VLCtable { i32 2, i32 6 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 3, i32 3 }, %struct.VLCtable { i32 3, i32 6 }], align 4
@cbpcm_inter_tab = internal unnamed_addr constant [29 x %struct.VLCtable] [%struct.VLCtable { i32 1, i32 1 }, %struct.VLCtable { i32 3, i32 3 }, %struct.VLCtable { i32 2, i32 3 }, %struct.VLCtable { i32 3, i32 5 }, %struct.VLCtable { i32 4, i32 6 }, %struct.VLCtable { i32 1, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 3, i32 4 }, %struct.VLCtable { i32 7, i32 7 }, %struct.VLCtable { i32 5, i32 7 }, %struct.VLCtable { i32 4, i32 8 }, %struct.VLCtable { i32 4, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 2, i32 4 }, %struct.VLCtable { i32 6, i32 7 }, %struct.VLCtable { i32 4, i32 7 }, %struct.VLCtable { i32 3, i32 8 }, %struct.VLCtable { i32 3, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable { i32 5, i32 6 }, %struct.VLCtable { i32 5, i32 9 }, %struct.VLCtable { i32 5, i32 8 }, %struct.VLCtable { i32 3, i32 7 }, %struct.VLCtable { i32 2, i32 9 }], align 4
@cbpy_tab = internal unnamed_addr constant [16 x %struct.VLCtable] [%struct.VLCtable { i32 3, i32 4 }, %struct.VLCtable { i32 5, i32 5 }, %struct.VLCtable { i32 4, i32 5 }, %struct.VLCtable { i32 9, i32 4 }, %struct.VLCtable { i32 3, i32 5 }, %struct.VLCtable { i32 7, i32 4 }, %struct.VLCtable { i32 2, i32 6 }, %struct.VLCtable { i32 11, i32 4 }, %struct.VLCtable { i32 2, i32 5 }, %struct.VLCtable { i32 3, i32 6 }, %struct.VLCtable { i32 5, i32 4 }, %struct.VLCtable { i32 10, i32 4 }, %struct.VLCtable { i32 4, i32 4 }, %struct.VLCtable { i32 8, i32 4 }, %struct.VLCtable { i32 6, i32 4 }, %struct.VLCtable { i32 3, i32 2 }], align 4
@.str = private unnamed_addr constant [22 x i8] c"last >= 0 && last < 2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"putvlc.c\00", align 1
@__PRETTY_FUNCTION__.put_coeff = private unnamed_addr constant [29 x i8] c"int put_coeff(int, int, int)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"run >= 0 && run < 64\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"level > 0 && level < 128\00", align 1
@coeff_tab0 = internal unnamed_addr constant [2 x [12 x %struct.VLCtable]] [[12 x %struct.VLCtable] [%struct.VLCtable { i32 2, i32 2 }, %struct.VLCtable { i32 15, i32 4 }, %struct.VLCtable { i32 21, i32 6 }, %struct.VLCtable { i32 23, i32 7 }, %struct.VLCtable { i32 31, i32 8 }, %struct.VLCtable { i32 37, i32 9 }, %struct.VLCtable { i32 36, i32 9 }, %struct.VLCtable { i32 33, i32 10 }, %struct.VLCtable { i32 32, i32 10 }, %struct.VLCtable { i32 7, i32 11 }, %struct.VLCtable { i32 6, i32 11 }, %struct.VLCtable { i32 32, i32 11 }], [12 x %struct.VLCtable] [%struct.VLCtable { i32 6, i32 3 }, %struct.VLCtable { i32 20, i32 6 }, %struct.VLCtable { i32 30, i32 8 }, %struct.VLCtable { i32 15, i32 10 }, %struct.VLCtable { i32 33, i32 11 }, %struct.VLCtable { i32 80, i32 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer]], align 4
@coeff_tab1 = internal unnamed_addr constant [25 x [4 x %struct.VLCtable]] [[4 x %struct.VLCtable] [%struct.VLCtable { i32 14, i32 4 }, %struct.VLCtable { i32 29, i32 8 }, %struct.VLCtable { i32 14, i32 10 }, %struct.VLCtable { i32 81, i32 12 }], [4 x %struct.VLCtable] [%struct.VLCtable { i32 13, i32 5 }, %struct.VLCtable { i32 35, i32 9 }, %struct.VLCtable { i32 13, i32 10 }, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 12, i32 5 }, %struct.VLCtable { i32 34, i32 9 }, %struct.VLCtable { i32 82, i32 12 }, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 11, i32 5 }, %struct.VLCtable { i32 12, i32 10 }, %struct.VLCtable { i32 83, i32 12 }, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 19, i32 6 }, %struct.VLCtable { i32 11, i32 10 }, %struct.VLCtable { i32 84, i32 12 }, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 18, i32 6 }, %struct.VLCtable { i32 10, i32 10 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 17, i32 6 }, %struct.VLCtable { i32 9, i32 10 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 16, i32 6 }, %struct.VLCtable { i32 8, i32 10 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 22, i32 7 }, %struct.VLCtable { i32 85, i32 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 21, i32 7 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 20, i32 7 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 28, i32 8 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 27, i32 8 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 33, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 32, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 31, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 30, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 29, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 28, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 27, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 26, i32 9 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 34, i32 11 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 35, i32 11 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 86, i32 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer], [4 x %struct.VLCtable] [%struct.VLCtable { i32 87, i32 12 }, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer, %struct.VLCtable zeroinitializer]], align 4
@coeff_tab2 = internal unnamed_addr constant [2 x [3 x %struct.VLCtable]] [[3 x %struct.VLCtable] [%struct.VLCtable { i32 7, i32 4 }, %struct.VLCtable { i32 25, i32 9 }, %struct.VLCtable { i32 5, i32 11 }], [3 x %struct.VLCtable] [%struct.VLCtable { i32 15, i32 6 }, %struct.VLCtable { i32 4, i32 11 }, %struct.VLCtable zeroinitializer]], align 4
@coeff_tab3 = internal unnamed_addr constant [40 x %struct.VLCtable] [%struct.VLCtable { i32 14, i32 6 }, %struct.VLCtable { i32 13, i32 6 }, %struct.VLCtable { i32 12, i32 6 }, %struct.VLCtable { i32 19, i32 7 }, %struct.VLCtable { i32 18, i32 7 }, %struct.VLCtable { i32 17, i32 7 }, %struct.VLCtable { i32 16, i32 7 }, %struct.VLCtable { i32 26, i32 8 }, %struct.VLCtable { i32 25, i32 8 }, %struct.VLCtable { i32 24, i32 8 }, %struct.VLCtable { i32 23, i32 8 }, %struct.VLCtable { i32 22, i32 8 }, %struct.VLCtable { i32 21, i32 8 }, %struct.VLCtable { i32 20, i32 8 }, %struct.VLCtable { i32 19, i32 8 }, %struct.VLCtable { i32 24, i32 9 }, %struct.VLCtable { i32 23, i32 9 }, %struct.VLCtable { i32 22, i32 9 }, %struct.VLCtable { i32 21, i32 9 }, %struct.VLCtable { i32 20, i32 9 }, %struct.VLCtable { i32 19, i32 9 }, %struct.VLCtable { i32 18, i32 9 }, %struct.VLCtable { i32 17, i32 9 }, %struct.VLCtable { i32 7, i32 10 }, %struct.VLCtable { i32 6, i32 10 }, %struct.VLCtable { i32 5, i32 10 }, %struct.VLCtable { i32 4, i32 10 }, %struct.VLCtable { i32 36, i32 11 }, %struct.VLCtable { i32 37, i32 11 }, %struct.VLCtable { i32 38, i32 11 }, %struct.VLCtable { i32 39, i32 11 }, %struct.VLCtable { i32 88, i32 12 }, %struct.VLCtable { i32 89, i32 12 }, %struct.VLCtable { i32 90, i32 12 }, %struct.VLCtable { i32 91, i32 12 }, %struct.VLCtable { i32 92, i32 12 }, %struct.VLCtable { i32 93, i32 12 }, %struct.VLCtable { i32 94, i32 12 }, %struct.VLCtable { i32 95, i32 12 }, %struct.VLCtable zeroinitializer], align 4

; Function Attrs: nounwind
define dso_local signext i32 @put_mv(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 31
  %3 = sub nsw i32 64, %0
  %4 = select i1 %2, i32 %3, i32 %0
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [33 x %struct.VLCtable], ptr @mvtab, i64 0, i64 %5
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = load i32, ptr %6, align 4, !tbaa !11
  tail call void @putbits(i32 noundef signext %8, i32 noundef signext %9) #3
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = zext i1 %2 to i32
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %12) #3
  %13 = add nsw i32 %8, 1
  br label %14

14:                                               ; preds = %1, %11
  %15 = phi i32 [ %13, %11 ], [ %8, %1 ]
  ret i32 %15
}

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local noundef signext i32 @put_cbpcm_intra(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 1
  %4 = and i32 %3, 1
  %5 = shl i32 %0, 2
  %6 = and i32 %5, 12
  %7 = or disjoint i32 %4, %6
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [15 x %struct.VLCtable], ptr @cbpcm_intra_tab, i64 0, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = load i32, ptr %9, align 4, !tbaa !11
  tail call void @putbits(i32 noundef signext %11, i32 noundef signext %12) #3
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @put_cbpcm_inter(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 7
  %4 = shl i32 %0, 3
  %5 = and i32 %4, 24
  %6 = or disjoint i32 %3, %5
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [29 x %struct.VLCtable], ptr @cbpcm_inter_tab, i64 0, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = load i32, ptr %8, align 4, !tbaa !11
  tail call void @putbits(i32 noundef signext %10, i32 noundef signext %11) #3
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @put_cbpy(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = ashr i32 %0, 2
  %4 = icmp slt i32 %1, 3
  %5 = xor i32 %3, 15
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x %struct.VLCtable], ptr @cbpy_tab, i64 0, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = load i32, ptr %8, align 4, !tbaa !11
  tail call void @putbits(i32 noundef signext %10, i32 noundef signext %11) #3
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @put_coeff(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 115, ptr noundef nonnull @__PRETTY_FUNCTION__.put_coeff) #4
  unreachable

6:                                                ; preds = %3
  %7 = icmp ult i32 %0, 64
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 116, ptr noundef nonnull @__PRETTY_FUNCTION__.put_coeff) #4
  unreachable

9:                                                ; preds = %6
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, 127
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef signext 117, ptr noundef nonnull @__PRETTY_FUNCTION__.put_coeff) #4
  unreachable

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  %15 = icmp ult i32 %0, 2
  br i1 %14, label %16, label %32

16:                                               ; preds = %13
  %17 = icmp ult i32 %1, 13
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = zext nneg i32 %0 to i64
  %21 = zext nneg i32 %10 to i64
  %22 = getelementptr inbounds [2 x [12 x %struct.VLCtable]], ptr @coeff_tab0, i64 0, i64 %20, i64 %21
  br label %47

23:                                               ; preds = %16
  %24 = add nsw i32 %0, -2
  %25 = icmp ult i32 %24, 25
  %26 = icmp ult i32 %1, 5
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = zext nneg i32 %24 to i64
  %30 = zext nneg i32 %10 to i64
  %31 = getelementptr inbounds [25 x [4 x %struct.VLCtable]], ptr @coeff_tab1, i64 0, i64 %29, i64 %30
  br label %47

32:                                               ; preds = %13
  %33 = icmp ult i32 %1, 4
  %34 = and i1 %15, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = zext nneg i32 %0 to i64
  %37 = zext nneg i32 %10 to i64
  %38 = getelementptr inbounds [2 x [3 x %struct.VLCtable]], ptr @coeff_tab2, i64 0, i64 %36, i64 %37
  br label %47

39:                                               ; preds = %32
  %40 = add nsw i32 %0, -2
  %41 = icmp ult i32 %40, 40
  %42 = icmp eq i32 %1, 1
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = zext nneg i32 %40 to i64
  %46 = getelementptr inbounds [40 x %struct.VLCtable], ptr @coeff_tab3, i64 0, i64 %45
  br label %47

47:                                               ; preds = %28, %19, %35, %44
  %48 = phi ptr [ %31, %28 ], [ %22, %19 ], [ %38, %35 ], [ %46, %44 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !6
  %51 = load i32, ptr %48, align 4, !tbaa !11
  tail call void @putbits(i32 noundef signext %50, i32 noundef signext %51) #3
  br label %52

52:                                               ; preds = %47, %39, %23
  %53 = phi i32 [ 0, %23 ], [ 0, %39 ], [ %50, %47 ]
  ret i32 %53
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 4}
!7 = !{!"", !8, i64 0, !8, i64 4}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 0}
