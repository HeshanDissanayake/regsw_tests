; ModuleID = 'src/rdopt_coding_state.c'
source_filename = "src/rdopt_coding_state.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind
define dso_local void @delete_coding_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds i8, ptr %0, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  tail call void @delete_contexts_MotionInfo(ptr noundef %15) #6
  %16 = getelementptr inbounds i8, ptr %0, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  tail call void @delete_contexts_TextureInfo(ptr noundef %17) #6
  tail call void @free(ptr noundef nonnull %0) #6
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

declare dso_local void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #2

declare dso_local void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local noalias noundef ptr @create_coding_state() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(352) ptr @calloc(i64 noundef 1, i64 noundef 352) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @input, align 8, !tbaa !16
  %6 = getelementptr inbounds i8, ptr %5, i64 2992
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 3
  store i32 %9, ptr %1, align 8, !tbaa !20
  %10 = getelementptr inbounds i8, ptr %5, i64 2984
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = icmp eq i32 %11, 1
  %13 = zext nneg i32 %9 to i64
  br i1 %12, label %14, label %19

14:                                               ; preds = %4
  %15 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 96) #7
  %16 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %15, ptr %16, align 8, !tbaa !6
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #6
  br label %19

19:                                               ; preds = %4, %14, %18
  %20 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 48) #7
  %21 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %20, ptr %21, align 8, !tbaa !13
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #6
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr @input, align 8, !tbaa !16
  %26 = getelementptr inbounds i8, ptr %25, i64 2984
  %27 = load i32, ptr %26, align 8, !tbaa !21
  %28 = getelementptr inbounds i8, ptr %1, i64 24
  store i32 %27, ptr %28, align 8, !tbaa !22
  %29 = icmp eq i32 %27, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = tail call ptr @create_contexts_MotionInfo() #6
  %32 = tail call ptr @create_contexts_TextureInfo() #6
  br label %33

33:                                               ; preds = %24, %30
  %34 = phi ptr [ %31, %30 ], [ null, %24 ]
  %35 = phi ptr [ %32, %30 ], [ null, %24 ]
  %36 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds i8, ptr %1, i64 40
  store ptr %35, ptr %37, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

declare dso_local ptr @create_contexts_MotionInfo() local_unnamed_addr #2

declare dso_local ptr @create_contexts_TextureInfo() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @store_coding_state(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @img, align 8, !tbaa !16
  %3 = getelementptr inbounds i8, ptr %2, i64 31560
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds i8, ptr %4, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i32 [ %9, %8 ], [ 1, %1 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 31568
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = getelementptr inbounds i8, ptr %2, i64 31576
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = getelementptr inbounds i8, ptr %2, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !31
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18
  %20 = load ptr, ptr @input, align 8, !tbaa !16
  %21 = getelementptr inbounds i8, ptr %20, i64 3136
  %22 = load i32, ptr %21, align 8, !tbaa !32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %81, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = icmp eq i32 %26, 1
  %28 = icmp sgt i32 %11, 0
  br i1 %27, label %34, label %29

29:                                               ; preds = %24
  br i1 %28, label %30, label %71

30:                                               ; preds = %29
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  %32 = getelementptr inbounds i8, ptr %13, i64 24
  %33 = zext nneg i32 %11 to i64
  br label %62

34:                                               ; preds = %24
  br i1 %28, label %35, label %53

35:                                               ; preds = %34
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  %37 = getelementptr inbounds i8, ptr %13, i64 24
  %38 = getelementptr inbounds i8, ptr %0, i64 16
  %39 = zext nneg i32 %11 to i64
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %51, %40 ]
  %42 = load ptr, ptr %36, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.EncodingEnvironment, ptr %42, i64 %41
  %44 = load ptr, ptr %37, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.datapartition, ptr %44, i64 %41, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %43, ptr noundef nonnull align 8 dereferenceable(96) %45, i64 96, i1 false)
  %46 = load ptr, ptr %38, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.Bitstream, ptr %46, i64 %41
  %48 = load ptr, ptr %37, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.datapartition, ptr %48, i64 %41
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %50, i64 48, i1 false)
  %51 = add nuw nsw i64 %41, 1
  %52 = icmp eq i64 %51, %39
  br i1 %52, label %53, label %40

53:                                               ; preds = %40, %34
  %54 = getelementptr inbounds i8, ptr %0, i64 32
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  %56 = getelementptr inbounds i8, ptr %13, i64 32
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %55, ptr noundef nonnull align 8 dereferenceable(1504) %57, i64 1504, i1 false)
  %58 = getelementptr inbounds i8, ptr %0, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  %60 = getelementptr inbounds i8, ptr %13, i64 40
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12128) %59, ptr noundef nonnull align 8 dereferenceable(12128) %61, i64 12128, i1 false)
  br label %71

62:                                               ; preds = %30, %62
  %63 = phi i64 [ 0, %30 ], [ %69, %62 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !13
  %65 = getelementptr inbounds %struct.Bitstream, ptr %64, i64 %63
  %66 = load ptr, ptr %32, align 8, !tbaa !33
  %67 = getelementptr inbounds %struct.datapartition, ptr %66, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull align 8 dereferenceable(48) %68, i64 48, i1 false)
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %33
  br i1 %70, label %71, label %62

71:                                               ; preds = %62, %29, %53
  %72 = load i32, ptr %19, align 8, !tbaa !40
  %73 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %72, ptr %73, align 8, !tbaa !42
  %74 = getelementptr inbounds i8, ptr %0, i64 52
  %75 = getelementptr inbounds i8, ptr %19, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %74, ptr noundef nonnull align 4 dereferenceable(32) %75, i64 32, i1 false)
  %76 = getelementptr inbounds i8, ptr %0, i64 84
  %77 = getelementptr inbounds i8, ptr %19, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %76, ptr noundef nonnull align 4 dereferenceable(256) %77, i64 256, i1 false)
  %78 = getelementptr inbounds i8, ptr %19, i64 408
  %79 = load i64, ptr %78, align 8, !tbaa !43
  %80 = getelementptr inbounds i8, ptr %0, i64 344
  store i64 %79, ptr %80, align 8, !tbaa !44
  br label %81

81:                                               ; preds = %10, %71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @reset_coding_state(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @img, align 8, !tbaa !16
  %3 = getelementptr inbounds i8, ptr %2, i64 31560
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds i8, ptr %4, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i32 [ %9, %8 ], [ 1, %1 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 31568
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = getelementptr inbounds i8, ptr %2, i64 31576
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = getelementptr inbounds i8, ptr %2, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !31
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18
  %20 = load ptr, ptr @input, align 8, !tbaa !16
  %21 = getelementptr inbounds i8, ptr %20, i64 3136
  %22 = load i32, ptr %21, align 8, !tbaa !32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %81, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = icmp eq i32 %26, 1
  %28 = icmp sgt i32 %11, 0
  br i1 %27, label %34, label %29

29:                                               ; preds = %24
  br i1 %28, label %30, label %71

30:                                               ; preds = %29
  %31 = getelementptr inbounds i8, ptr %13, i64 24
  %32 = getelementptr inbounds i8, ptr %0, i64 16
  %33 = zext nneg i32 %11 to i64
  br label %62

34:                                               ; preds = %24
  br i1 %28, label %35, label %53

35:                                               ; preds = %34
  %36 = getelementptr inbounds i8, ptr %13, i64 24
  %37 = getelementptr inbounds i8, ptr %0, i64 8
  %38 = getelementptr inbounds i8, ptr %0, i64 16
  %39 = zext nneg i32 %11 to i64
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %51, %40 ]
  %42 = load ptr, ptr %36, align 8, !tbaa !33
  %43 = getelementptr inbounds %struct.datapartition, ptr %42, i64 %41, i32 1
  %44 = load ptr, ptr %37, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.EncodingEnvironment, ptr %44, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %43, ptr noundef nonnull align 8 dereferenceable(96) %45, i64 96, i1 false)
  %46 = load ptr, ptr %36, align 8, !tbaa !33
  %47 = getelementptr inbounds %struct.datapartition, ptr %46, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = load ptr, ptr %38, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.Bitstream, ptr %49, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull align 8 dereferenceable(48) %50, i64 48, i1 false)
  %51 = add nuw nsw i64 %41, 1
  %52 = icmp eq i64 %51, %39
  br i1 %52, label %53, label %40

53:                                               ; preds = %40, %34
  %54 = getelementptr inbounds i8, ptr %13, i64 32
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %0, i64 32
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %55, ptr noundef nonnull align 8 dereferenceable(1504) %57, i64 1504, i1 false)
  %58 = getelementptr inbounds i8, ptr %13, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !39
  %60 = getelementptr inbounds i8, ptr %0, i64 40
  %61 = load ptr, ptr %60, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12128) %59, ptr noundef nonnull align 8 dereferenceable(12128) %61, i64 12128, i1 false)
  br label %71

62:                                               ; preds = %30, %62
  %63 = phi i64 [ 0, %30 ], [ %69, %62 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !33
  %65 = getelementptr inbounds %struct.datapartition, ptr %64, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = load ptr, ptr %32, align 8, !tbaa !13
  %68 = getelementptr inbounds %struct.Bitstream, ptr %67, i64 %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %66, ptr noundef nonnull align 8 dereferenceable(48) %68, i64 48, i1 false)
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %33
  br i1 %70, label %71, label %62

71:                                               ; preds = %62, %29, %53
  %72 = getelementptr inbounds i8, ptr %0, i64 48
  %73 = load i32, ptr %72, align 8, !tbaa !42
  store i32 %73, ptr %19, align 8, !tbaa !40
  %74 = getelementptr inbounds i8, ptr %19, i64 20
  %75 = getelementptr inbounds i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %74, ptr noundef nonnull align 4 dereferenceable(32) %75, i64 32, i1 false)
  %76 = getelementptr inbounds i8, ptr %19, i64 76
  %77 = getelementptr inbounds i8, ptr %0, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %76, ptr noundef nonnull align 4 dereferenceable(256) %77, i64 256, i1 false)
  %78 = getelementptr inbounds i8, ptr %0, i64 344
  %79 = load i64, ptr %78, align 8, !tbaa !44
  %80 = getelementptr inbounds i8, ptr %19, i64 408
  store i64 %79, ptr %80, align 8, !tbaa !43
  br label %81

81:                                               ; preds = %10, %71
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 8}
!7 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 84, !12, i64 344}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"long long", !9, i64 0}
!13 = !{!7, !11, i64 16}
!14 = !{!7, !11, i64 32}
!15 = !{!7, !11, i64 40}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !8, i64 2992}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 148, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !9, i64 228, !9, i64 428, !9, i64 628, !9, i64 828, !9, i64 1028, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !8, i64 1244, !8, i64 1248, !8, i64 1252, !8, i64 1256, !8, i64 1260, !8, i64 1264, !8, i64 1268, !8, i64 1272, !8, i64 1276, !8, i64 1280, !8, i64 1284, !8, i64 1288, !8, i64 1292, !8, i64 1296, !8, i64 1300, !9, i64 1304, !9, i64 1504, !9, i64 1704, !8, i64 1904, !8, i64 1908, !8, i64 1912, !8, i64 1916, !8, i64 1920, !8, i64 1924, !8, i64 1928, !8, i64 1932, !8, i64 1936, !8, i64 1940, !8, i64 1944, !8, i64 1948, !9, i64 1952, !8, i64 2976, !8, i64 2980, !8, i64 2984, !8, i64 2988, !8, i64 2992, !8, i64 2996, !8, i64 3000, !8, i64 3004, !8, i64 3008, !8, i64 3012, !8, i64 3016, !8, i64 3020, !8, i64 3024, !8, i64 3028, !8, i64 3032, !8, i64 3036, !8, i64 3040, !8, i64 3044, !8, i64 3048, !8, i64 3052, !19, i64 3056, !8, i64 3064, !8, i64 3068, !8, i64 3072, !8, i64 3076, !8, i64 3080, !8, i64 3084, !8, i64 3088, !8, i64 3092, !8, i64 3096, !8, i64 3100, !8, i64 3104, !8, i64 3108, !8, i64 3112, !8, i64 3116, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !9, i64 3152, !9, i64 3352, !8, i64 3552, !8, i64 3556, !8, i64 3560, !8, i64 3564, !8, i64 3568, !8, i64 3572, !8, i64 3576, !8, i64 3580, !8, i64 3584, !8, i64 3588, !8, i64 3592, !8, i64 3596, !8, i64 3600, !8, i64 3604, !8, i64 3608, !8, i64 3612, !8, i64 3616, !8, i64 3620, !9, i64 3624, !8, i64 3824, !8, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !8, i64 3864, !8, i64 3868, !8, i64 3872, !8, i64 3876, !8, i64 3880, !8, i64 3884, !8, i64 3888, !8, i64 3892, !8, i64 3896, !8, i64 3900, !8, i64 3904, !8, i64 3908, !8, i64 3912, !8, i64 3916, !8, i64 3920, !8, i64 3924, !8, i64 3928, !9, i64 3932, !8, i64 3964, !8, i64 3968, !8, i64 3972, !8, i64 3976, !8, i64 3980, !8, i64 3984, !8, i64 3988, !8, i64 3992, !8, i64 3996, !8, i64 4000, !8, i64 4004, !9, i64 4008, !9, i64 4056, !8, i64 4256, !8, i64 4260, !8, i64 4264, !8, i64 4268, !9, i64 4272, !8, i64 4312, !8, i64 4316, !8, i64 4320, !8, i64 4324}
!19 = !{!"double", !9, i64 0}
!20 = !{!7, !8, i64 0}
!21 = !{!18, !8, i64 2984}
!22 = !{!7, !8, i64 24}
!23 = !{!24, !11, i64 31560}
!24 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !25, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !9, i64 184, !9, i64 4792, !9, i64 7352, !9, i64 8504, !9, i64 12600, !9, i64 13112, !11, i64 14136, !11, i64 14144, !9, i64 14152, !9, i64 18248, !9, i64 21320, !9, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !9, i64 31584, !11, i64 89184, !11, i64 89192, !8, i64 89200, !8, i64 89204, !8, i64 89208, !8, i64 89212, !9, i64 89216, !8, i64 89280, !8, i64 89284, !8, i64 89288, !8, i64 89292, !8, i64 89296, !19, i64 89304, !8, i64 89312, !8, i64 89316, !8, i64 89320, !8, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !9, i64 89360, !8, i64 89392, !8, i64 89396, !8, i64 89400, !8, i64 89404, !8, i64 89408, !8, i64 89412, !8, i64 89416, !8, i64 89420, !9, i64 89424, !8, i64 90192, !8, i64 90196, !8, i64 90200, !8, i64 90204, !8, i64 90208, !8, i64 90212, !8, i64 90216, !8, i64 90220, !8, i64 90224, !8, i64 90228, !8, i64 90232, !8, i64 90236, !8, i64 90240, !9, i64 90244, !8, i64 90248, !8, i64 90252, !9, i64 90256, !8, i64 90264, !8, i64 90268, !8, i64 90272, !8, i64 90276, !8, i64 90280, !8, i64 90284, !8, i64 90288, !8, i64 90292, !8, i64 90296, !8, i64 90300, !8, i64 90304, !8, i64 90308, !8, i64 90312, !8, i64 90316, !8, i64 90320, !8, i64 90324, !8, i64 90328, !11, i64 90336, !8, i64 90344, !8, i64 90348, !8, i64 90352, !8, i64 90356, !8, i64 90360, !19, i64 90368, !8, i64 90376, !8, i64 90380, !8, i64 90384, !8, i64 90388, !8, i64 90392, !8, i64 90396, !8, i64 90400, !11, i64 90408, !8, i64 90416, !8, i64 90420, !8, i64 90424, !8, i64 90428, !8, i64 90432, !8, i64 90436, !8, i64 90440, !8, i64 90444, !8, i64 90448, !8, i64 90452, !8, i64 90456, !8, i64 90460, !8, i64 90464, !8, i64 90468, !8, i64 90472, !8, i64 90476, !8, i64 90480, !8, i64 90484, !8, i64 90488, !8, i64 90492, !8, i64 90496, !8, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !8, i64 90528, !8, i64 90532, !8, i64 90536, !8, i64 90540, !8, i64 90544, !8, i64 90548, !8, i64 90552, !8, i64 90556, !8, i64 90560, !9, i64 90564, !8, i64 90572, !8, i64 90576, !8, i64 90580, !26, i64 90584, !8, i64 90588, !8, i64 90592}
!25 = !{!"float", !9, i64 0}
!26 = !{!"short", !9, i64 0}
!27 = !{!28, !8, i64 4}
!28 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !8, i64 808, !25, i64 812, !25, i64 816, !25, i64 820}
!29 = !{!24, !11, i64 31568}
!30 = !{!24, !11, i64 31576}
!31 = !{!24, !8, i64 12}
!32 = !{!18, !8, i64 3136}
!33 = !{!34, !11, i64 24}
!34 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !8, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !9, i64 128}
!35 = !{!36, !11, i64 0}
!36 = !{!"datapartition", !11, i64 0, !37, i64 8, !11, i64 104}
!37 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !8, i64 92}
!38 = !{!34, !11, i64 32}
!39 = !{!34, !11, i64 40}
!40 = !{!41, !8, i64 0}
!41 = !{!"macroblock", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !11, i64 56, !11, i64 64, !8, i64 72, !9, i64 76, !9, i64 332, !9, i64 348, !8, i64 364, !12, i64 368, !9, i64 376, !9, i64 392, !12, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !26, i64 476, !19, i64 480, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520}
!42 = !{!7, !8, i64 48}
!43 = !{!41, !12, i64 408}
!44 = !{!7, !12, i64 344}
