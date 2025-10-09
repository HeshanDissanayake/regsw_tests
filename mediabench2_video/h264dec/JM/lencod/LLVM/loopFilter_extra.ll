; ModuleID = 'src/loopFilter.c'
source_filename = "src/loopFilter.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@ALPHA_TABLE = dso_local local_unnamed_addr global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 1
@BETA_TABLE = dso_local local_unnamed_addr global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 1
@CLIP_TAB = dso_local local_unnamed_addr global [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 1
@chroma_edge = dso_local local_unnamed_addr global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\FF\FF\03"], [4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\FF\01\02\02", [4 x i8] c"\FF\FF\03\03"]], align 1
@__const.DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 4
@.str = private unnamed_addr constant [34 x i8] c"MbQ->luma_transform_size_8x8_flag\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"src/loopFilter.c\00", align 1
@__PRETTY_FUNCTION__.DeblockMb = private unnamed_addr constant [78 x i8] c"void DeblockMb(ImageParameters *, unsigned short **, unsigned short ***, int)\00", align 1
@mixedModeEdgeFlag = dso_local local_unnamed_addr global i8 0, align 1
@ININT_STRENGTH = dso_local local_unnamed_addr global [4 x i32] [i32 67372036, i32 50529027, i32 50529027, i32 50529027], align 4
@BLK_NUM = dso_local local_unnamed_addr global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\04\08\0C", [4 x i8] c"\01\05\09\0D", [4 x i8] c"\02\06\0A\0E", [4 x i8] c"\03\07\0B\0F"], [4 x [4 x i8]] [[4 x i8] c"\00\01\02\03", [4 x i8] c"\04\05\06\07", [4 x i8] c"\08\09\0A\0B", [4 x i8] c"\0C\0D\0E\0F"]], align 1
@BLK_4_TO_8 = dso_local local_unnamed_addr global [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 1
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@__const.EdgeLoop.pelnum_cr = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 4
@fieldModeFilteringFlag = dso_local local_unnamed_addr global i8 0, align 1
@QP_SCALE_CR = external dso_local local_unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind
define dso_local void @DeblockFrame(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 90304
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %3 ]
  tail call void @DeblockMb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %8)
  %9 = add nuw i32 %8, 1
  %10 = load i32, ptr %4, align 8, !tbaa !6
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %7, label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @DeblockMb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.DeblockMb.filterNon8x8LumaEdgesFlag, i64 12, i1 false)
  %9 = getelementptr inbounds i8, ptr %0, i64 90460
  store i32 1, ptr %9, align 4, !tbaa !15
  call void @get_mb_pos(i32 noundef signext %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %10 = load i32, ptr %6, align 4, !tbaa !16
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, ptr %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds i8, ptr %0, i64 31576
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds %struct.macroblock, ptr %16, i64 %17
  %19 = getelementptr inbounds i8, ptr %18, i64 72
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 13
  %22 = getelementptr inbounds i8, ptr %18, i64 468
  %23 = load i32, ptr %22, align 4, !tbaa !21
  %24 = icmp eq i32 %23, 0
  br i1 %21, label %27, label %25

25:                                               ; preds = %4
  %26 = zext i1 %24 to i32
  br label %29

27:                                               ; preds = %4
  br i1 %24, label %28, label %29

28:                                               ; preds = %27
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 127, ptr noundef nonnull @__PRETTY_FUNCTION__.DeblockMb) #8
  unreachable

29:                                               ; preds = %25, %27
  %30 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %31 = getelementptr inbounds i8, ptr %8, i64 12
  store i32 %30, ptr %31, align 4, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %8, i64 4
  store i32 %30, ptr %32, align 4, !tbaa !16
  %33 = getelementptr inbounds i8, ptr %0, i64 90220
  %34 = load i32, ptr %33, align 4, !tbaa !22
  %35 = icmp ne i32 %34, 0
  %36 = icmp eq i32 %13, 16
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = getelementptr inbounds i8, ptr %18, i64 424
  %40 = load i32, ptr %39, align 8, !tbaa !23
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i1 [ %14, %29 ], [ %41, %38 ]
  %44 = getelementptr inbounds i8, ptr %0, i64 28
  %45 = load i32, ptr %44, align 4, !tbaa !24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = icmp eq i32 %34, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, ptr %18, i64 424
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = freeze i32 %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42, %49
  br label %55

55:                                               ; preds = %47, %49, %54
  %56 = phi i32 [ 2, %54 ], [ 4, %49 ], [ 4, %47 ]
  %57 = getelementptr inbounds i8, ptr %18, i64 508
  %58 = load i32, ptr %57, align 4, !tbaa !25
  switch i32 %58, label %74 [
    i32 1, label %216
    i32 2, label %59
  ]

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %18, i64 448
  %61 = load i32, ptr %60, align 8, !tbaa !26
  %62 = icmp eq i32 %34, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %18, i64 424
  %65 = load i32, ptr %64, align 8, !tbaa !23
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %3, 1
  %68 = icmp eq i32 %67, 0
  %69 = or i1 %68, %66
  br i1 %69, label %70, label %74

70:                                               ; preds = %63, %59
  %71 = getelementptr inbounds i8, ptr %18, i64 452
  %72 = load i32, ptr %71, align 4, !tbaa !27
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %63, %55, %70
  %75 = phi i1 [ %73, %70 ], [ %43, %55 ], [ true, %63 ]
  %76 = phi i32 [ %61, %70 ], [ %12, %55 ], [ %61, %63 ]
  %77 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %3, ptr %77, align 4, !tbaa !28
  call void @CheckAvailabilityOfNeighbors() #7
  %78 = getelementptr inbounds i8, ptr %0, i64 90548
  %79 = getelementptr inbounds i8, ptr %18, i64 512
  %80 = getelementptr inbounds i8, ptr %18, i64 516
  %81 = getelementptr inbounds i8, ptr %0, i64 52
  %82 = icmp eq ptr %2, null
  %83 = getelementptr inbounds i8, ptr %0, i64 56
  %84 = getelementptr inbounds i8, ptr %2, i64 8
  %85 = getelementptr inbounds i8, ptr %18, i64 424
  %86 = icmp ne i32 %76, 0
  %87 = getelementptr inbounds i8, ptr %5, i64 1
  %88 = getelementptr inbounds i8, ptr %5, i64 2
  %89 = getelementptr inbounds i8, ptr %5, i64 3
  %90 = getelementptr inbounds i8, ptr %5, i64 4
  %91 = getelementptr inbounds i8, ptr %5, i64 5
  %92 = getelementptr inbounds i8, ptr %5, i64 6
  %93 = getelementptr inbounds i8, ptr %5, i64 7
  %94 = getelementptr inbounds i8, ptr %5, i64 8
  %95 = getelementptr inbounds i8, ptr %5, i64 9
  %96 = getelementptr inbounds i8, ptr %5, i64 10
  %97 = getelementptr inbounds i8, ptr %5, i64 11
  %98 = getelementptr inbounds i8, ptr %5, i64 12
  %99 = getelementptr inbounds i8, ptr %5, i64 13
  %100 = getelementptr inbounds i8, ptr %5, i64 14
  %101 = getelementptr inbounds i8, ptr %5, i64 15
  br label %102

102:                                              ; preds = %74, %215
  %103 = phi i1 [ false, %74 ], [ true, %215 ]
  %104 = phi i1 [ true, %74 ], [ false, %215 ]
  %105 = phi i64 [ 0, %74 ], [ 1, %215 ]
  %106 = select i1 %103, i1 %75, i1 false
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = xor i1 %103, true
  %109 = select i1 %108, i1 %86, i1 false
  br label %110

110:                                              ; preds = %102, %107
  %111 = phi i1 [ %109, %107 ], [ true, %102 ]
  %112 = trunc nuw nsw i64 %105 to i32
  br label %113

113:                                              ; preds = %110, %212
  %114 = phi i64 [ 0, %110 ], [ %213, %212 ]
  %115 = icmp ne i64 %114, 0
  %116 = select i1 %115, i1 true, i1 %111
  br i1 %116, label %117, label %212

117:                                              ; preds = %113
  %118 = load i32, ptr %78, align 4, !tbaa !29
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr @chroma_edge, i64 0, i64 %105, i64 %114, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = trunc nuw nsw i64 %114 to i32
  call void @GetStrength(ptr noundef nonnull %5, ptr noundef %0, i32 noundef signext %3, i32 noundef signext %112, i32 noundef signext %122, i32 noundef signext %56)
  %123 = load i8, ptr %5, align 1, !tbaa !30
  %124 = zext i8 %123 to i32
  %125 = load i8, ptr %87, align 1, !tbaa !30
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %124, %126
  %128 = load i8, ptr %88, align 1, !tbaa !30
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %127, %129
  %131 = load i8, ptr %89, align 1, !tbaa !30
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i32 %130, %132
  %134 = load i8, ptr %90, align 1, !tbaa !30
  %135 = zext i8 %134 to i32
  %136 = add nuw nsw i32 %133, %135
  %137 = load i8, ptr %91, align 1, !tbaa !30
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %136, %138
  %140 = load i8, ptr %92, align 1, !tbaa !30
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %139, %141
  %143 = load i8, ptr %93, align 1, !tbaa !30
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %142, %144
  %146 = load i8, ptr %94, align 1, !tbaa !30
  %147 = zext i8 %146 to i32
  %148 = add nuw nsw i32 %145, %147
  %149 = load i8, ptr %95, align 1, !tbaa !30
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %148, %150
  %152 = load i8, ptr %96, align 1, !tbaa !30
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %151, %153
  %155 = load i8, ptr %97, align 1, !tbaa !30
  %156 = zext i8 %155 to i32
  %157 = add nuw nsw i32 %154, %156
  %158 = load i8, ptr %98, align 1, !tbaa !30
  %159 = zext i8 %158 to i32
  %160 = add nuw nsw i32 %157, %159
  %161 = load i8, ptr %99, align 1, !tbaa !30
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %160, %162
  %164 = load i8, ptr %100, align 1, !tbaa !30
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %163, %165
  %167 = load i8, ptr %101, align 1, !tbaa !30
  %168 = zext i8 %167 to i32
  %169 = zext i8 %121 to i32
  %170 = or i32 %166, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %190, label %172

172:                                              ; preds = %117
  %173 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %114
  %174 = load i32, ptr %173, align 4, !tbaa !16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, ptr %79, align 8, !tbaa !31
  %178 = load i32, ptr %80, align 4, !tbaa !32
  %179 = load i32, ptr %81, align 4, !tbaa !33
  call void @EdgeLoop(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %177, i32 noundef signext %178, i32 noundef signext %112, i32 noundef signext %122, i32 noundef signext %179, i32 noundef signext 0, i32 noundef signext 0)
  br label %180

180:                                              ; preds = %176, %172
  br i1 %82, label %190, label %181

181:                                              ; preds = %180
  %182 = load ptr, ptr %2, align 8, !tbaa !34
  %183 = load i32, ptr %79, align 8, !tbaa !31
  %184 = load i32, ptr %80, align 4, !tbaa !32
  %185 = load i32, ptr %83, align 8, !tbaa !35
  call void @EdgeLoop(ptr noundef %182, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %183, i32 noundef signext %184, i32 noundef signext %112, i32 noundef signext %169, i32 noundef signext %185, i32 noundef signext 1, i32 noundef signext 0)
  %186 = load ptr, ptr %84, align 8, !tbaa !34
  %187 = load i32, ptr %79, align 8, !tbaa !31
  %188 = load i32, ptr %80, align 4, !tbaa !32
  %189 = load i32, ptr %83, align 8, !tbaa !35
  call void @EdgeLoop(ptr noundef %186, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %187, i32 noundef signext %188, i32 noundef signext %112, i32 noundef signext %169, i32 noundef signext %189, i32 noundef signext 1, i32 noundef signext 1)
  br label %190

190:                                              ; preds = %180, %181, %117
  %191 = or i1 %104, %115
  br i1 %191, label %212, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr %85, align 8, !tbaa !23
  %194 = icmp eq i32 %193, 0
  %195 = load i8, ptr @mixedModeEdgeFlag, align 1
  %196 = icmp ne i8 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  store i32 2, ptr %9, align 4, !tbaa !15
  call void @GetStrength(ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext 1, i32 noundef signext 4, i32 noundef signext %56)
  %199 = load i32, ptr %79, align 8, !tbaa !31
  %200 = load i32, ptr %80, align 4, !tbaa !32
  %201 = load i32, ptr %81, align 4, !tbaa !33
  call void @EdgeLoop(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %199, i32 noundef signext %200, i32 noundef signext 1, i32 noundef signext 4, i32 noundef signext %201, i32 noundef signext 0, i32 noundef signext 0)
  br i1 %82, label %211, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr %2, align 8, !tbaa !34
  %204 = load i32, ptr %79, align 8, !tbaa !31
  %205 = load i32, ptr %80, align 4, !tbaa !32
  %206 = load i32, ptr %83, align 8, !tbaa !35
  call void @EdgeLoop(ptr noundef %203, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %204, i32 noundef signext %205, i32 noundef signext 1, i32 noundef signext 4, i32 noundef signext %206, i32 noundef signext 1, i32 noundef signext 0)
  %207 = load ptr, ptr %84, align 8, !tbaa !34
  %208 = load i32, ptr %79, align 8, !tbaa !31
  %209 = load i32, ptr %80, align 4, !tbaa !32
  %210 = load i32, ptr %83, align 8, !tbaa !35
  call void @EdgeLoop(ptr noundef %207, ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef signext %3, i32 noundef signext %208, i32 noundef signext %209, i32 noundef signext 1, i32 noundef signext 4, i32 noundef signext %210, i32 noundef signext 1, i32 noundef signext 1)
  br label %211

211:                                              ; preds = %202, %198
  store i32 1, ptr %9, align 4, !tbaa !15
  br label %212

212:                                              ; preds = %113, %211, %192, %190
  %213 = add nuw nsw i64 %114, 1
  %214 = icmp eq i64 %213, 4
  br i1 %214, label %215, label %113

215:                                              ; preds = %212
  br i1 %104, label %102, label %216

216:                                              ; preds = %215, %55
  store i32 0, ptr %9, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @get_mb_pos(i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #4

declare dso_local void @CheckAvailabilityOfNeighbors() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @GetStrength(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr @enc_picture, align 8, !tbaa !34
  %11 = getelementptr inbounds i8, ptr %10, i64 6504
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds i8, ptr %12, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %10, i64 6488
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %21 = getelementptr inbounds i8, ptr %1, i64 31576
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23
  %25 = icmp eq i32 %3, 0
  %26 = shl i32 %4, 2
  %27 = icmp slt i32 %4, 4
  %28 = select i1 %27, i32 %26, i32 1
  %29 = add i32 %3, -1
  %30 = getelementptr inbounds i8, ptr %9, i64 8
  %31 = getelementptr inbounds i8, ptr %9, i64 12
  %32 = getelementptr inbounds i8, ptr %9, i64 4
  %33 = getelementptr inbounds i8, ptr %24, i64 424
  %34 = getelementptr inbounds i8, ptr %1, i64 24
  %35 = icmp eq i32 %4, 0
  %36 = getelementptr inbounds i8, ptr %1, i64 90220
  %37 = getelementptr inbounds i8, ptr %1, i64 28
  %38 = getelementptr inbounds i8, ptr %24, i64 72
  %39 = getelementptr inbounds i8, ptr %24, i64 368
  %40 = getelementptr inbounds i8, ptr %9, i64 20
  %41 = getelementptr inbounds i8, ptr %9, i64 16
  br label %42

42:                                               ; preds = %6, %321
  %43 = phi i64 [ 0, %6 ], [ %322, %321 ]
  %44 = trunc nuw nsw i64 %43 to i32
  %45 = select i1 %25, i32 %26, i32 %44
  %46 = select i1 %25, i32 %44, i32 %28
  %47 = add i32 %29, %45
  %48 = sub nsw i32 %46, %3
  call void @getNeighbour(i32 noundef signext %2, i32 noundef signext %47, i32 noundef signext %48, i32 noundef signext 1, ptr noundef nonnull %9) #7
  %49 = load i32, ptr %30, align 4, !tbaa !39
  %50 = load i32, ptr %31, align 4, !tbaa !41
  %51 = load ptr, ptr %21, align 8, !tbaa !17
  %52 = load i32, ptr %32, align 4, !tbaa !42
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.macroblock, ptr %51, i64 %53
  %55 = load i32, ptr %33, align 8, !tbaa !23
  %56 = getelementptr inbounds i8, ptr %54, i64 424
  %57 = load i32, ptr %56, align 8, !tbaa !23
  %58 = icmp ne i32 %55, %57
  %59 = zext i1 %58 to i8
  store i8 %59, ptr @mixedModeEdgeFlag, align 1, !tbaa !30
  %60 = and i32 %46, -4
  %61 = ashr i32 %45, 2
  %62 = add nsw i32 %60, %61
  %63 = and i32 %50, -4
  %64 = ashr i32 %49, 2
  %65 = add nsw i32 %63, %64
  %66 = load i32, ptr %34, align 8, !tbaa !43
  %67 = add i32 %66, -3
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %86

69:                                               ; preds = %42
  br i1 %35, label %70, label %83

70:                                               ; preds = %69
  %71 = load i32, ptr %36, align 4, !tbaa !22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, ptr %37, align 4, !tbaa !24
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %75, %25
  br i1 %76, label %82, label %83

77:                                               ; preds = %70
  %78 = icmp eq i32 %57, 0
  %79 = icmp eq i32 %55, 0
  %80 = select i1 %78, i1 %79, i1 false
  %81 = or i1 %25, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %77
  br label %83

83:                                               ; preds = %73, %77, %69, %82
  %84 = phi i8 [ 4, %82 ], [ 3, %69 ], [ 3, %77 ], [ 3, %73 ]
  %85 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 %84, ptr %85, align 1, !tbaa !30
  br label %321

86:                                               ; preds = %42
  br i1 %35, label %87, label %100

87:                                               ; preds = %86
  %88 = load i32, ptr %36, align 4, !tbaa !22
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, ptr %37, align 4, !tbaa !24
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %92, %25
  br i1 %93, label %99, label %100

94:                                               ; preds = %87
  %95 = icmp eq i32 %57, 0
  %96 = icmp eq i32 %55, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = or i1 %25, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90, %94
  br label %100

100:                                              ; preds = %90, %94, %86, %99
  %101 = phi i8 [ 4, %99 ], [ 3, %86 ], [ 3, %94 ], [ 3, %90 ]
  %102 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 %101, ptr %102, align 1, !tbaa !30
  %103 = getelementptr inbounds i8, ptr %54, i64 72
  %104 = load i32, ptr %103, align 8, !tbaa !18
  switch i32 %104, label %105 [
    i32 9, label %321
    i32 10, label %321
    i32 14, label %321
    i32 13, label %321
  ]

105:                                              ; preds = %100
  %106 = load i32, ptr %38, align 8, !tbaa !18
  switch i32 %106, label %107 [
    i32 9, label %321
    i32 10, label %321
    i32 14, label %321
    i32 13, label %321
  ]

107:                                              ; preds = %105
  %108 = load i64, ptr %39, align 8, !tbaa !44
  %109 = shl nuw i32 1, %62
  %110 = sext i32 %109 to i64
  %111 = and i64 %108, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = getelementptr inbounds i8, ptr %54, i64 368
  %115 = load i64, ptr %114, align 8, !tbaa !44
  %116 = shl nuw i32 1, %65
  %117 = sext i32 %116 to i64
  %118 = and i64 %115, %117
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113, %107
  store i8 2, ptr %102, align 1, !tbaa !30
  br label %321

121:                                              ; preds = %113
  %122 = load i8, ptr @mixedModeEdgeFlag, align 1, !tbaa !30
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i8 1, ptr %102, align 1, !tbaa !30
  br label %321

125:                                              ; preds = %121
  call void @get_mb_block_pos(i32 noundef signext %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %126 = load i32, ptr %8, align 4, !tbaa !16
  %127 = shl i32 %126, 2
  %128 = ashr i32 %62, 2
  %129 = add nsw i32 %127, %128
  %130 = load i32, ptr %7, align 4, !tbaa !16
  %131 = shl i32 %130, 2
  %132 = and i32 %61, 3
  %133 = or disjoint i32 %131, %132
  %134 = load i32, ptr %40, align 4, !tbaa !45
  %135 = ashr i32 %134, 2
  %136 = load i32, ptr %41, align 4, !tbaa !46
  %137 = ashr i32 %136, 2
  %138 = sext i32 %129 to i64
  %139 = sext i32 %133 to i64
  %140 = getelementptr inbounds ptr, ptr %18, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = getelementptr inbounds i64, ptr %141, i64 %139
  %143 = load i64, ptr %142, align 8, !tbaa !47
  %144 = sext i32 %135 to i64
  %145 = sext i32 %137 to i64
  %146 = getelementptr inbounds ptr, ptr %18, i64 %144
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = getelementptr inbounds i64, ptr %147, i64 %145
  %149 = load i64, ptr %148, align 8, !tbaa !47
  %150 = getelementptr inbounds ptr, ptr %20, i64 %138
  %151 = load ptr, ptr %150, align 8, !tbaa !34
  %152 = getelementptr inbounds i64, ptr %151, i64 %139
  %153 = load i64, ptr %152, align 8, !tbaa !47
  %154 = getelementptr inbounds ptr, ptr %20, i64 %144
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = getelementptr inbounds i64, ptr %155, i64 %145
  %157 = load i64, ptr %156, align 8, !tbaa !47
  %158 = icmp eq i64 %143, %149
  %159 = icmp eq i64 %153, %157
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %165, label %161

161:                                              ; preds = %125
  %162 = icmp eq i64 %143, %157
  %163 = icmp eq i64 %153, %149
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %320

165:                                              ; preds = %161, %125
  store i8 0, ptr %102, align 1, !tbaa !30
  %166 = icmp eq i64 %143, %153
  %167 = getelementptr inbounds ptr, ptr %13, i64 %138
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  %169 = getelementptr inbounds ptr, ptr %168, i64 %139
  %170 = load ptr, ptr %169, align 8, !tbaa !34
  %171 = load i16, ptr %170, align 2, !tbaa !48
  %172 = sext i16 %171 to i32
  br i1 %166, label %257, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds i8, ptr %170, i64 2
  %175 = load i16, ptr %174, align 2, !tbaa !48
  %176 = sext i16 %175 to i32
  %177 = getelementptr inbounds ptr, ptr %15, i64 %138
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  %179 = getelementptr inbounds ptr, ptr %178, i64 %139
  %180 = load ptr, ptr %179, align 8, !tbaa !34
  %181 = load i16, ptr %180, align 2, !tbaa !48
  %182 = sext i16 %181 to i32
  br i1 %158, label %183, label %220

183:                                              ; preds = %173
  %184 = getelementptr inbounds ptr, ptr %13, i64 %144
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = getelementptr inbounds ptr, ptr %185, i64 %145
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  %188 = load i16, ptr %187, align 2, !tbaa !48
  %189 = sext i16 %188 to i32
  %190 = sub nsw i32 %172, %189
  %191 = call i32 @llvm.abs.i32(i32 %190, i1 true)
  %192 = getelementptr inbounds i8, ptr %187, i64 2
  %193 = load i16, ptr %192, align 2, !tbaa !48
  %194 = sext i16 %193 to i32
  %195 = sub nsw i32 %176, %194
  %196 = call i32 @llvm.abs.i32(i32 %195, i1 true)
  %197 = icmp sge i32 %196, %5
  %198 = getelementptr inbounds ptr, ptr %15, i64 %144
  %199 = load ptr, ptr %198, align 8, !tbaa !34
  %200 = getelementptr inbounds ptr, ptr %199, i64 %145
  %201 = load ptr, ptr %200, align 8, !tbaa !34
  %202 = load i16, ptr %201, align 2, !tbaa !48
  %203 = sext i16 %202 to i32
  %204 = sub nsw i32 %182, %203
  %205 = call i32 @llvm.abs.i32(i32 %204, i1 true)
  %206 = or i32 %205, %191
  %207 = icmp ugt i32 %206, 3
  %208 = or i1 %197, %207
  %209 = getelementptr inbounds i8, ptr %180, i64 2
  %210 = load i16, ptr %209, align 2, !tbaa !48
  %211 = sext i16 %210 to i32
  %212 = getelementptr inbounds i8, ptr %201, i64 2
  %213 = load i16, ptr %212, align 2, !tbaa !48
  %214 = sext i16 %213 to i32
  %215 = sub nsw i32 %211, %214
  %216 = call i32 @llvm.abs.i32(i32 %215, i1 true)
  %217 = icmp sge i32 %216, %5
  %218 = or i1 %208, %217
  %219 = zext i1 %218 to i8
  store i8 %219, ptr %102, align 1, !tbaa !30
  br label %321

220:                                              ; preds = %173
  %221 = getelementptr inbounds ptr, ptr %15, i64 %144
  %222 = load ptr, ptr %221, align 8, !tbaa !34
  %223 = getelementptr inbounds ptr, ptr %222, i64 %145
  %224 = load ptr, ptr %223, align 8, !tbaa !34
  %225 = load i16, ptr %224, align 2, !tbaa !48
  %226 = sext i16 %225 to i32
  %227 = sub nsw i32 %172, %226
  %228 = call i32 @llvm.abs.i32(i32 %227, i1 true)
  %229 = getelementptr inbounds i8, ptr %224, i64 2
  %230 = load i16, ptr %229, align 2, !tbaa !48
  %231 = sext i16 %230 to i32
  %232 = sub nsw i32 %176, %231
  %233 = call i32 @llvm.abs.i32(i32 %232, i1 true)
  %234 = icmp sge i32 %233, %5
  %235 = getelementptr inbounds ptr, ptr %13, i64 %144
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  %237 = getelementptr inbounds ptr, ptr %236, i64 %145
  %238 = load ptr, ptr %237, align 8, !tbaa !34
  %239 = load i16, ptr %238, align 2, !tbaa !48
  %240 = sext i16 %239 to i32
  %241 = sub nsw i32 %182, %240
  %242 = call i32 @llvm.abs.i32(i32 %241, i1 true)
  %243 = or i32 %242, %228
  %244 = icmp ugt i32 %243, 3
  %245 = or i1 %234, %244
  %246 = getelementptr inbounds i8, ptr %180, i64 2
  %247 = load i16, ptr %246, align 2, !tbaa !48
  %248 = sext i16 %247 to i32
  %249 = getelementptr inbounds i8, ptr %238, i64 2
  %250 = load i16, ptr %249, align 2, !tbaa !48
  %251 = sext i16 %250 to i32
  %252 = sub nsw i32 %248, %251
  %253 = call i32 @llvm.abs.i32(i32 %252, i1 true)
  %254 = icmp sge i32 %253, %5
  %255 = or i1 %245, %254
  %256 = zext i1 %255 to i8
  store i8 %256, ptr %102, align 1, !tbaa !30
  br label %321

257:                                              ; preds = %165
  %258 = getelementptr inbounds ptr, ptr %13, i64 %144
  %259 = load ptr, ptr %258, align 8, !tbaa !34
  %260 = getelementptr inbounds ptr, ptr %259, i64 %145
  %261 = load ptr, ptr %260, align 8, !tbaa !34
  %262 = load i16, ptr %261, align 2, !tbaa !48
  %263 = sext i16 %262 to i32
  %264 = sub nsw i32 %172, %263
  %265 = call i32 @llvm.abs.i32(i32 %264, i1 true)
  %266 = getelementptr inbounds i8, ptr %170, i64 2
  %267 = load i16, ptr %266, align 2, !tbaa !48
  %268 = sext i16 %267 to i32
  %269 = getelementptr inbounds i8, ptr %261, i64 2
  %270 = load i16, ptr %269, align 2, !tbaa !48
  %271 = sext i16 %270 to i32
  %272 = sub nsw i32 %268, %271
  %273 = call i32 @llvm.abs.i32(i32 %272, i1 true)
  %274 = icmp sge i32 %273, %5
  %275 = getelementptr inbounds ptr, ptr %15, i64 %138
  %276 = load ptr, ptr %275, align 8, !tbaa !34
  %277 = getelementptr inbounds ptr, ptr %276, i64 %139
  %278 = load ptr, ptr %277, align 8, !tbaa !34
  %279 = load i16, ptr %278, align 2, !tbaa !48
  %280 = sext i16 %279 to i32
  %281 = getelementptr inbounds ptr, ptr %15, i64 %144
  %282 = load ptr, ptr %281, align 8, !tbaa !34
  %283 = getelementptr inbounds ptr, ptr %282, i64 %145
  %284 = load ptr, ptr %283, align 8, !tbaa !34
  %285 = load i16, ptr %284, align 2, !tbaa !48
  %286 = sext i16 %285 to i32
  %287 = sub nsw i32 %280, %286
  %288 = call i32 @llvm.abs.i32(i32 %287, i1 true)
  %289 = or i32 %288, %265
  %290 = icmp ugt i32 %289, 3
  %291 = or i1 %274, %290
  %292 = getelementptr inbounds i8, ptr %278, i64 2
  %293 = load i16, ptr %292, align 2, !tbaa !48
  %294 = sext i16 %293 to i32
  %295 = getelementptr inbounds i8, ptr %284, i64 2
  %296 = load i16, ptr %295, align 2, !tbaa !48
  %297 = sext i16 %296 to i32
  %298 = sub nsw i32 %294, %297
  %299 = call i32 @llvm.abs.i32(i32 %298, i1 true)
  %300 = icmp sge i32 %299, %5
  %301 = or i1 %291, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %257
  %303 = sub nsw i32 %172, %286
  %304 = call i32 @llvm.abs.i32(i32 %303, i1 true)
  %305 = sub nsw i32 %268, %297
  %306 = call i32 @llvm.abs.i32(i32 %305, i1 true)
  %307 = icmp sge i32 %306, %5
  %308 = sub nsw i32 %280, %263
  %309 = call i32 @llvm.abs.i32(i32 %308, i1 true)
  %310 = or i32 %304, %309
  %311 = icmp ugt i32 %310, 3
  %312 = or i1 %311, %307
  %313 = sub nsw i32 %294, %271
  %314 = call i32 @llvm.abs.i32(i32 %313, i1 true)
  %315 = icmp sge i32 %314, %5
  %316 = or i1 %315, %312
  br label %317

317:                                              ; preds = %302, %257
  %318 = phi i1 [ false, %257 ], [ %316, %302 ]
  %319 = zext i1 %318 to i8
  store i8 %319, ptr %102, align 1, !tbaa !30
  br label %321

320:                                              ; preds = %161
  store i8 1, ptr %102, align 1, !tbaa !30
  br label %321

321:                                              ; preds = %320, %183, %220, %317, %105, %105, %105, %105, %100, %100, %100, %100, %83, %120, %124
  %322 = add nuw nsw i64 %43, 1
  %323 = icmp eq i64 %322, 16
  br i1 %323, label %324, label %42

324:                                              ; preds = %321
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @EdgeLoop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10) local_unnamed_addr #0 {
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #7
  %14 = icmp ne i32 %9, 0
  %15 = select i1 %14, i64 90488, i64 90484
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !16
  %18 = add nsw i32 %17, -8
  br i1 %14, label %19, label %27

19:                                               ; preds = %11
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds i8, ptr %2, i64 90548
  %22 = load i32, ptr %21, align 4, !tbaa !29
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x [4 x i32]], ptr @__const.EdgeLoop.pelnum_cr, i64 0, i64 %20, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !16
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %417

27:                                               ; preds = %11, %19
  %28 = phi i32 [ %25, %19 ], [ 16, %11 ]
  %29 = icmp eq i32 %6, 0
  %30 = shl i32 %7, 2
  %31 = icmp slt i32 %7, 4
  %32 = select i1 %31, i32 %30, i32 1
  %33 = sub nsw i32 1, %9
  %34 = add i32 %6, -1
  %35 = getelementptr inbounds i8, ptr %2, i64 31576
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds i8, ptr %12, i64 4
  %38 = icmp eq i32 %28, 8
  %39 = and i1 %14, %38
  %40 = getelementptr inbounds i8, ptr %13, i64 20
  %41 = getelementptr inbounds i8, ptr %13, i64 16
  %42 = getelementptr inbounds i8, ptr %12, i64 20
  %43 = getelementptr inbounds i8, ptr %12, i64 16
  %44 = getelementptr inbounds i8, ptr %2, i64 90564
  %45 = sext i32 %10 to i64
  %46 = getelementptr inbounds [2 x i32], ptr %44, i64 0, i64 %45
  %47 = getelementptr inbounds i8, ptr %2, i64 90532
  %48 = getelementptr inbounds i8, ptr %2, i64 90536
  br label %49

49:                                               ; preds = %27, %412
  %50 = phi i32 [ 0, %27 ], [ %415, %412 ]
  %51 = phi i32 [ 0, %27 ], [ %414, %412 ]
  %52 = phi i32 [ 0, %27 ], [ %413, %412 ]
  %53 = select i1 %29, i32 %30, i32 %50
  %54 = select i1 %29, i32 %50, i32 %32
  call void @getNeighbour(i32 noundef signext %3, i32 noundef signext %53, i32 noundef signext %54, i32 noundef signext %33, ptr noundef nonnull %13) #7
  %55 = add i32 %34, %53
  %56 = sub nsw i32 %54, %6
  call void @getNeighbour(i32 noundef signext %3, i32 noundef signext %55, i32 noundef signext %56, i32 noundef signext %33, ptr noundef nonnull %12) #7
  %57 = load ptr, ptr %35, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.macroblock, ptr %57, i64 %36
  %59 = load i32, ptr %37, align 4, !tbaa !42
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.macroblock, ptr %57, i64 %60
  %62 = getelementptr inbounds i8, ptr %58, i64 424
  %63 = load i32, ptr %62, align 8, !tbaa !23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = getelementptr inbounds i8, ptr %61, i64 424
  %67 = load i32, ptr %66, align 8, !tbaa !23
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr @fieldModeFilteringFlag, align 1, !tbaa !30
  br i1 %39, label %77, label %83

70:                                               ; preds = %49
  store i8 1, ptr @fieldModeFilteringFlag, align 1, !tbaa !30
  br i1 %39, label %71, label %83

71:                                               ; preds = %70
  %72 = getelementptr inbounds i8, ptr %61, i64 424
  %73 = load i32, ptr %72, align 8, !tbaa !23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = shl nuw i32 %50, 1
  br label %83

77:                                               ; preds = %65, %71
  %78 = phi i8 [ 1, %71 ], [ %69, %65 ]
  %79 = shl nuw i32 %50, 1
  %80 = and i32 %79, -4
  %81 = and i32 %50, 1
  %82 = or disjoint i32 %80, %81
  br label %83

83:                                               ; preds = %70, %65, %75, %77
  %84 = phi i8 [ 1, %75 ], [ %78, %77 ], [ %69, %65 ], [ 1, %70 ]
  %85 = phi i32 [ %76, %75 ], [ %82, %77 ], [ %50, %65 ], [ %50, %70 ]
  %86 = load i32, ptr %12, align 4, !tbaa !49
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds i8, ptr %58, i64 508
  %90 = load i32, ptr %89, align 4, !tbaa !25
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %412

92:                                               ; preds = %88, %83
  br i1 %29, label %103, label %93

93:                                               ; preds = %92
  %94 = icmp eq i8 %84, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %93
  %96 = zext i1 %64 to i32
  %97 = shl nsw i32 %8, %96
  %98 = getelementptr inbounds i8, ptr %61, i64 424
  %99 = load i32, ptr %98, align 8, !tbaa !23
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = shl nsw i32 %8, %101
  br label %103

103:                                              ; preds = %93, %92, %95
  %104 = phi i32 [ %97, %95 ], [ 1, %92 ], [ %8, %93 ]
  %105 = phi i32 [ %102, %95 ], [ 1, %92 ], [ %8, %93 ]
  %106 = load i32, ptr %40, align 4, !tbaa !45
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = load i32, ptr %41, align 4, !tbaa !46
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  %113 = load i32, ptr %42, align 4, !tbaa !45
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = load i32, ptr %43, align 4, !tbaa !46
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, ptr %116, i64 %118
  %120 = getelementptr inbounds i8, ptr %61, i64 12
  %121 = load i32, ptr %120, align 4, !tbaa !50
  br i1 %14, label %122, label %143

122:                                              ; preds = %103
  %123 = load i32, ptr %46, align 4, !tbaa !16
  %124 = add nsw i32 %123, %121
  %125 = call i32 @llvm.smin.i32(i32 %124, i32 51)
  %126 = call i32 @llvm.smax.i32(i32 %125, i32 0)
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !30
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds i8, ptr %58, i64 12
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = add nsw i32 %132, %123
  %134 = call i32 @llvm.smin.i32(i32 %133, i32 51)
  %135 = call i32 @llvm.smax.i32(i32 %134, i32 0)
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !30
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %130, 1
  %141 = add nuw nsw i32 %140, %139
  %142 = lshr i32 %141, 1
  br label %149

143:                                              ; preds = %103
  %144 = getelementptr inbounds i8, ptr %58, i64 12
  %145 = load i32, ptr %144, align 4, !tbaa !50
  %146 = add i32 %121, 1
  %147 = add i32 %146, %145
  %148 = ashr i32 %147, 1
  br label %149

149:                                              ; preds = %143, %122
  %150 = phi i32 [ %142, %122 ], [ %148, %143 ]
  %151 = add nsw i32 %150, %4
  %152 = call i32 @llvm.smin.i32(i32 %151, i32 51)
  %153 = call i32 @llvm.smax.i32(i32 %152, i32 0)
  %154 = add nsw i32 %150, %5
  %155 = call i32 @llvm.smin.i32(i32 %154, i32 51)
  %156 = call i32 @llvm.smax.i32(i32 %155, i32 0)
  %157 = zext nneg i32 %153 to i64
  %158 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !30
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, %18
  %162 = zext nneg i32 %156 to i64
  %163 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !30
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, %18
  %167 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %157
  %168 = load i16, ptr %119, align 2, !tbaa !48
  %169 = zext i16 %168 to i32
  %170 = load i16, ptr %112, align 2, !tbaa !48
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 0, %105
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, ptr %119, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !48
  %176 = zext i16 %175 to i32
  %177 = sext i32 %104 to i64
  %178 = getelementptr inbounds i16, ptr %112, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !48
  %180 = zext i16 %179 to i32
  %181 = shl nsw i32 %172, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i16, ptr %119, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !48
  %185 = zext i16 %184 to i32
  %186 = shl nsw i32 %104, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i16, ptr %112, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !48
  %190 = zext i16 %189 to i32
  %191 = mul i32 %105, -3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i16, ptr %119, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !48
  %195 = zext i16 %194 to i32
  %196 = mul nsw i32 %104, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i16, ptr %112, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !48
  %200 = zext i16 %199 to i32
  %201 = sext i32 %85 to i64
  %202 = getelementptr inbounds i8, ptr %1, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !30
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %412, label %205

205:                                              ; preds = %149
  %206 = sub nsw i32 %171, %169
  %207 = call i32 @llvm.abs.i32(i32 %206, i1 true)
  %208 = icmp slt i32 %207, %161
  br i1 %208, label %209, label %412

209:                                              ; preds = %205
  %210 = zext i8 %203 to i64
  %211 = getelementptr inbounds i8, ptr %167, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !30
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, %18
  %215 = sub nsw i32 %171, %180
  %216 = call i32 @llvm.abs.i32(i32 %215, i1 true)
  %217 = sub nsw i32 %216, %166
  %218 = sub nsw i32 %169, %176
  %219 = call i32 @llvm.abs.i32(i32 %218, i1 true)
  %220 = sub nsw i32 %219, %166
  %221 = and i32 %217, %220
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %412

223:                                              ; preds = %209
  br i1 %14, label %224, label %227

224:                                              ; preds = %223
  %225 = add nuw nsw i32 %171, %169
  %226 = icmp eq i8 %203, 4
  br i1 %226, label %238, label %332

227:                                              ; preds = %223
  %228 = sub nsw i32 %171, %190
  %229 = call i32 @llvm.abs.i32(i32 %228, i1 true)
  %230 = icmp slt i32 %229, %166
  %231 = zext i1 %230 to i32
  %232 = sub nsw i32 %169, %185
  %233 = call i32 @llvm.abs.i32(i32 %232, i1 true)
  %234 = icmp slt i32 %233, %166
  %235 = zext i1 %234 to i32
  %236 = add nuw nsw i32 %171, %169
  %237 = icmp eq i8 %203, 4
  br i1 %237, label %251, label %332

238:                                              ; preds = %224
  %239 = shl nuw nsw i32 %180, 1
  %240 = add nuw nsw i32 %171, 2
  %241 = add nuw nsw i32 %240, %176
  %242 = add nuw nsw i32 %241, %239
  %243 = lshr i32 %242, 2
  %244 = trunc nuw i32 %243 to i16
  store i16 %244, ptr %112, align 2, !tbaa !48
  %245 = shl nuw nsw i32 %176, 1
  %246 = add nuw nsw i32 %169, 2
  %247 = add nuw nsw i32 %246, %245
  %248 = add nuw nsw i32 %247, %180
  %249 = lshr i32 %248, 2
  %250 = trunc nuw i32 %249 to i16
  store i16 %250, ptr %119, align 2, !tbaa !48
  br label %412

251:                                              ; preds = %227
  %252 = lshr i32 %161, 2
  %253 = add nuw nsw i32 %252, 2
  %254 = icmp ult i32 %207, %253
  %255 = zext i1 %254 to i32
  %256 = and i32 %231, %255
  %257 = and i32 %235, %255
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %251
  %260 = add nuw nsw i32 %236, %180
  %261 = shl nuw nsw i32 %260, 1
  %262 = add nuw nsw i32 %176, 4
  %263 = add nuw nsw i32 %262, %261
  %264 = add nuw nsw i32 %263, %190
  %265 = lshr i32 %264, 3
  br label %272

266:                                              ; preds = %251
  %267 = shl nuw nsw i32 %180, 1
  %268 = add nuw nsw i32 %171, 2
  %269 = add nuw nsw i32 %268, %176
  %270 = add nuw nsw i32 %269, %267
  %271 = lshr i32 %270, 2
  br label %272

272:                                              ; preds = %266, %259
  %273 = phi i32 [ %265, %259 ], [ %271, %266 ]
  %274 = trunc nuw i32 %273 to i16
  store i16 %274, ptr %112, align 2, !tbaa !48
  %275 = icmp eq i32 %257, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %272
  %277 = add nuw nsw i32 %236, %176
  %278 = shl nuw nsw i32 %277, 1
  %279 = add nuw nsw i32 %180, 4
  %280 = add nuw nsw i32 %279, %278
  %281 = add nuw nsw i32 %280, %185
  %282 = lshr i32 %281, 3
  br label %289

283:                                              ; preds = %272
  %284 = shl nuw nsw i32 %176, 1
  %285 = add nuw nsw i32 %169, 2
  %286 = add nuw nsw i32 %285, %284
  %287 = add nuw nsw i32 %286, %180
  %288 = lshr i32 %287, 2
  br label %289

289:                                              ; preds = %283, %276
  %290 = phi i32 [ %282, %276 ], [ %288, %283 ]
  %291 = trunc nuw i32 %290 to i16
  store i16 %291, ptr %119, align 2, !tbaa !48
  br i1 %258, label %298, label %292

292:                                              ; preds = %289
  %293 = add nuw nsw i32 %169, 2
  %294 = add nuw nsw i32 %293, %171
  %295 = add nuw nsw i32 %294, %180
  %296 = add nuw nsw i32 %295, %190
  %297 = lshr i32 %296, 2
  br label %298

298:                                              ; preds = %289, %292
  %299 = phi i32 [ %297, %292 ], [ %180, %289 ]
  %300 = trunc nuw i32 %299 to i16
  store i16 %300, ptr %178, align 2, !tbaa !48
  br i1 %275, label %307, label %301

301:                                              ; preds = %298
  %302 = add nuw nsw i32 %169, 2
  %303 = add nuw nsw i32 %302, %171
  %304 = add nuw nsw i32 %303, %176
  %305 = add nuw nsw i32 %304, %185
  %306 = lshr i32 %305, 2
  br label %307

307:                                              ; preds = %298, %301
  %308 = phi i32 [ %306, %301 ], [ %176, %298 ]
  %309 = trunc nuw i32 %308 to i16
  store i16 %309, ptr %174, align 2, !tbaa !48
  br i1 %258, label %318, label %310

310:                                              ; preds = %307
  %311 = add nuw nsw i32 %200, %190
  %312 = shl nuw nsw i32 %311, 1
  %313 = add nuw nsw i32 %236, 4
  %314 = add nuw nsw i32 %313, %180
  %315 = add nuw nsw i32 %314, %190
  %316 = add nuw nsw i32 %315, %312
  %317 = lshr i32 %316, 3
  br label %318

318:                                              ; preds = %307, %310
  %319 = phi i32 [ %317, %310 ], [ %190, %307 ]
  %320 = trunc nuw i32 %319 to i16
  store i16 %320, ptr %188, align 2, !tbaa !48
  br i1 %275, label %329, label %321

321:                                              ; preds = %318
  %322 = add nuw nsw i32 %195, %185
  %323 = shl nuw nsw i32 %322, 1
  %324 = add nuw nsw i32 %176, 4
  %325 = add nuw nsw i32 %324, %236
  %326 = add nuw nsw i32 %325, %185
  %327 = add nuw nsw i32 %326, %323
  %328 = lshr i32 %327, 3
  br label %329

329:                                              ; preds = %318, %321
  %330 = phi i32 [ %328, %321 ], [ %185, %318 ]
  %331 = trunc nuw i32 %330 to i16
  store i16 %331, ptr %183, align 2, !tbaa !48
  br label %412

332:                                              ; preds = %227, %224
  %333 = phi i32 [ %236, %227 ], [ %225, %224 ]
  %334 = phi i32 [ %235, %227 ], [ %51, %224 ]
  %335 = phi i32 [ %231, %227 ], [ %52, %224 ]
  %336 = add nsw i32 %214, 1
  %337 = add nsw i32 %334, %214
  %338 = add nsw i32 %337, %335
  %339 = select i1 %14, i32 %336, i32 %338
  %340 = shl nsw i32 %206, 2
  %341 = add nuw nsw i32 %176, 4
  %342 = sub nsw i32 %341, %180
  %343 = add nsw i32 %342, %340
  %344 = ashr i32 %343, 3
  %345 = sub nsw i32 0, %339
  %346 = icmp slt i32 %344, %345
  %347 = call i32 @llvm.smin.i32(i32 %344, i32 %339)
  %348 = select i1 %346, i32 %345, i32 %347
  %349 = add nsw i32 %348, %169
  %350 = icmp slt i32 %349, 0
  br i1 %14, label %363, label %351

351:                                              ; preds = %332
  br i1 %350, label %355, label %352

352:                                              ; preds = %351
  %353 = load i32, ptr %47, align 4, !tbaa !51
  %354 = call i32 @llvm.smin.i32(i32 %349, i32 %353)
  br label %355

355:                                              ; preds = %352, %351
  %356 = phi i32 [ 0, %351 ], [ %354, %352 ]
  %357 = trunc i32 %356 to i16
  store i16 %357, ptr %119, align 2, !tbaa !48
  %358 = sub nsw i32 %171, %348
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %378, label %360

360:                                              ; preds = %355
  %361 = load i32, ptr %47, align 4, !tbaa !51
  %362 = call i32 @llvm.smin.i32(i32 %358, i32 %361)
  br label %378

363:                                              ; preds = %332
  br i1 %350, label %367, label %364

364:                                              ; preds = %363
  %365 = load i32, ptr %48, align 8, !tbaa !52
  %366 = call i32 @llvm.smin.i32(i32 %349, i32 %365)
  br label %367

367:                                              ; preds = %364, %363
  %368 = phi i32 [ 0, %363 ], [ %366, %364 ]
  %369 = trunc i32 %368 to i16
  store i16 %369, ptr %119, align 2, !tbaa !48
  %370 = sub nsw i32 %171, %348
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = load i32, ptr %48, align 8, !tbaa !52
  %374 = call i32 @llvm.smin.i32(i32 %370, i32 %373)
  br label %375

375:                                              ; preds = %367, %372
  %376 = phi i32 [ %374, %372 ], [ 0, %367 ]
  %377 = trunc i32 %376 to i16
  store i16 %377, ptr %112, align 2, !tbaa !48
  br label %412

378:                                              ; preds = %360, %355
  %379 = phi i32 [ 0, %355 ], [ %362, %360 ]
  %380 = trunc i32 %379 to i16
  store i16 %380, ptr %112, align 2, !tbaa !48
  %381 = icmp eq i32 %334, 0
  br i1 %381, label %396, label %382

382:                                              ; preds = %378
  %383 = add nuw nsw i32 %333, 1
  %384 = lshr i32 %383, 1
  %385 = shl nuw nsw i32 %176, 1
  %386 = sub nsw i32 %185, %385
  %387 = add nsw i32 %386, %384
  %388 = ashr i32 %387, 1
  %389 = sub nsw i32 0, %214
  %390 = icmp slt i32 %388, %389
  %391 = call i32 @llvm.smin.i32(i32 %388, i32 %214)
  %392 = select i1 %390, i32 %389, i32 %391
  %393 = load i16, ptr %174, align 2, !tbaa !48
  %394 = trunc i32 %392 to i16
  %395 = add i16 %393, %394
  store i16 %395, ptr %174, align 2, !tbaa !48
  br label %396

396:                                              ; preds = %382, %378
  %397 = icmp eq i32 %335, 0
  br i1 %397, label %412, label %398

398:                                              ; preds = %396
  %399 = add nuw nsw i32 %333, 1
  %400 = lshr i32 %399, 1
  %401 = shl nuw nsw i32 %180, 1
  %402 = sub nsw i32 %190, %401
  %403 = add nsw i32 %402, %400
  %404 = ashr i32 %403, 1
  %405 = sub nsw i32 0, %214
  %406 = icmp slt i32 %404, %405
  %407 = call i32 @llvm.smin.i32(i32 %404, i32 %214)
  %408 = select i1 %406, i32 %405, i32 %407
  %409 = load i16, ptr %178, align 2, !tbaa !48
  %410 = trunc i32 %408 to i16
  %411 = add i16 %409, %410
  store i16 %411, ptr %178, align 2, !tbaa !48
  br label %412

412:                                              ; preds = %375, %88, %205, %329, %238, %396, %398, %209, %149
  %413 = phi i32 [ %52, %238 ], [ %256, %329 ], [ 1, %398 ], [ 0, %396 ], [ %52, %209 ], [ %52, %205 ], [ %52, %149 ], [ %52, %88 ], [ %335, %375 ]
  %414 = phi i32 [ %51, %238 ], [ %257, %329 ], [ %334, %398 ], [ %334, %396 ], [ %51, %209 ], [ %51, %205 ], [ %51, %149 ], [ %51, %88 ], [ %334, %375 ]
  %415 = add nuw nsw i32 %50, 1
  %416 = icmp eq i32 %415, %28
  br i1 %416, label %417, label %49

417:                                              ; preds = %412, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #7
  ret void
}

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @get_mb_block_pos(i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 90304}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !11, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !12, i64 104, !12, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !9, i64 184, !9, i64 4792, !9, i64 7352, !9, i64 8504, !9, i64 12600, !9, i64 13112, !12, i64 14136, !12, i64 14144, !9, i64 14152, !9, i64 18248, !9, i64 21320, !9, i64 29512, !12, i64 31560, !12, i64 31568, !12, i64 31576, !9, i64 31584, !12, i64 89184, !12, i64 89192, !8, i64 89200, !8, i64 89204, !8, i64 89208, !8, i64 89212, !9, i64 89216, !8, i64 89280, !8, i64 89284, !8, i64 89288, !8, i64 89292, !8, i64 89296, !13, i64 89304, !8, i64 89312, !8, i64 89316, !8, i64 89320, !8, i64 89324, !12, i64 89328, !12, i64 89336, !12, i64 89344, !12, i64 89352, !9, i64 89360, !8, i64 89392, !8, i64 89396, !8, i64 89400, !8, i64 89404, !8, i64 89408, !8, i64 89412, !8, i64 89416, !8, i64 89420, !9, i64 89424, !8, i64 90192, !8, i64 90196, !8, i64 90200, !8, i64 90204, !8, i64 90208, !8, i64 90212, !8, i64 90216, !8, i64 90220, !8, i64 90224, !8, i64 90228, !8, i64 90232, !8, i64 90236, !8, i64 90240, !9, i64 90244, !8, i64 90248, !8, i64 90252, !9, i64 90256, !8, i64 90264, !8, i64 90268, !8, i64 90272, !8, i64 90276, !8, i64 90280, !8, i64 90284, !8, i64 90288, !8, i64 90292, !8, i64 90296, !8, i64 90300, !8, i64 90304, !8, i64 90308, !8, i64 90312, !8, i64 90316, !8, i64 90320, !8, i64 90324, !8, i64 90328, !12, i64 90336, !8, i64 90344, !8, i64 90348, !8, i64 90352, !8, i64 90356, !8, i64 90360, !13, i64 90368, !8, i64 90376, !8, i64 90380, !8, i64 90384, !8, i64 90388, !8, i64 90392, !8, i64 90396, !8, i64 90400, !12, i64 90408, !8, i64 90416, !8, i64 90420, !8, i64 90424, !8, i64 90428, !8, i64 90432, !8, i64 90436, !8, i64 90440, !8, i64 90444, !8, i64 90448, !8, i64 90452, !8, i64 90456, !8, i64 90460, !8, i64 90464, !8, i64 90468, !8, i64 90472, !8, i64 90476, !8, i64 90480, !8, i64 90484, !8, i64 90488, !8, i64 90492, !8, i64 90496, !8, i64 90500, !12, i64 90504, !12, i64 90512, !12, i64 90520, !8, i64 90528, !8, i64 90532, !8, i64 90536, !8, i64 90540, !8, i64 90544, !8, i64 90548, !8, i64 90552, !8, i64 90556, !8, i64 90560, !9, i64 90564, !8, i64 90572, !8, i64 90576, !8, i64 90580, !14, i64 90584, !8, i64 90588, !8, i64 90592}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"float", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"double", !9, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = !{!7, !8, i64 90460}
!16 = !{!8, !8, i64 0}
!17 = !{!7, !12, i64 31576}
!18 = !{!19, !8, i64 72}
!19 = !{!"macroblock", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !12, i64 56, !12, i64 64, !8, i64 72, !9, i64 76, !9, i64 332, !9, i64 348, !8, i64 364, !20, i64 368, !9, i64 376, !9, i64 392, !20, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !14, i64 476, !13, i64 480, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520}
!20 = !{!"long long", !9, i64 0}
!21 = !{!19, !8, i64 468}
!22 = !{!7, !8, i64 90220}
!23 = !{!19, !8, i64 424}
!24 = !{!7, !8, i64 28}
!25 = !{!19, !8, i64 508}
!26 = !{!19, !8, i64 448}
!27 = !{!19, !8, i64 452}
!28 = !{!7, !8, i64 12}
!29 = !{!7, !8, i64 90548}
!30 = !{!9, !9, i64 0}
!31 = !{!19, !8, i64 512}
!32 = !{!19, !8, i64 516}
!33 = !{!7, !8, i64 52}
!34 = !{!12, !12, i64 0}
!35 = !{!7, !8, i64 56}
!36 = !{!37, !12, i64 6504}
!37 = !{!"storable_picture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !9, i64 1608, !9, i64 3192, !9, i64 4776, !8, i64 6360, !8, i64 6364, !8, i64 6368, !8, i64 6372, !8, i64 6376, !8, i64 6380, !8, i64 6384, !8, i64 6388, !8, i64 6392, !8, i64 6396, !8, i64 6400, !8, i64 6404, !8, i64 6408, !8, i64 6412, !8, i64 6416, !12, i64 6424, !12, i64 6432, !12, i64 6440, !12, i64 6448, !12, i64 6456, !12, i64 6464, !12, i64 6472, !12, i64 6480, !12, i64 6488, !12, i64 6496, !12, i64 6504, !12, i64 6512, !12, i64 6520, !12, i64 6528, !12, i64 6536, !12, i64 6544, !8, i64 6552, !8, i64 6556, !8, i64 6560, !8, i64 6564, !8, i64 6568, !8, i64 6572, !8, i64 6576}
!38 = !{!37, !12, i64 6488}
!39 = !{!40, !8, i64 8}
!40 = !{!"pix_pos", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!41 = !{!40, !8, i64 12}
!42 = !{!40, !8, i64 4}
!43 = !{!7, !8, i64 24}
!44 = !{!19, !20, i64 368}
!45 = !{!40, !8, i64 20}
!46 = !{!40, !8, i64 16}
!47 = !{!20, !20, i64 0}
!48 = !{!14, !14, i64 0}
!49 = !{!40, !8, i64 0}
!50 = !{!19, !8, i64 12}
!51 = !{!7, !8, i64 90532}
!52 = !{!7, !8, i64 90536}
