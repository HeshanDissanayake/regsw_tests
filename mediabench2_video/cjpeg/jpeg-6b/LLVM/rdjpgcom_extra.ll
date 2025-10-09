; ModuleID = 'rdjpgcom.c'
source_filename = "rdjpgcom.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"rdjpgcom\00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@stdin = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"rdjpgcom displays any textual comments in a JPEG file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Usage: %s [switches] [inputfile]\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"  -verbose    Also display dimensions of JPEG image\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Extended sequential\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Differential sequential\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Differential progressive\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Differential lossless\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Extended sequential, arithmetic coding\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Progressive, arithmetic coding\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Lossless, arithmetic coding\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Differential sequential, arithmetic coding\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Differential progressive, arithmetic coding\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Differential lossless, arithmetic coding\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"JPEG image is %uw * %uh, %d color components, %d bits per sample\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"JPEG process: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Bogus SOF marker length\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@str = private unnamed_addr constant [16 x i8] c"APP12 contains:\00", align 1
@switch.table.scan_JPEG_header = private unnamed_addr constant [16 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.28, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.28, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.28, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 8

; Function Attrs: noreturn nounwind
define dso_local noundef signext i32 @main(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %3, ptr @progname, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  store ptr @.str, ptr @progname, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi ptr [ @.str, %8 ], [ %3, %5 ]
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = add nsw i32 %0, -1
  br label %187

14:                                               ; preds = %9
  %15 = zext nneg i32 %0 to i64
  %16 = add nsw i32 %0, -1
  %17 = getelementptr inbounds i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %26, label %187

21:                                               ; preds = %168
  %22 = getelementptr inbounds ptr, ptr %1, i64 %170
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %184

26:                                               ; preds = %14, %21
  %27 = phi ptr [ %23, %21 ], [ %18, %14 ]
  %28 = phi i32 [ %169, %21 ], [ 0, %14 ]
  %29 = phi i64 [ %170, %21 ], [ 1, %14 ]
  %30 = getelementptr inbounds i8, ptr %27, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %174, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, ptr %27, i64 2
  %35 = zext i8 %31 to i32
  %36 = tail call ptr @__ctype_b_loc() #5
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = zext i8 %31 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !11
  %41 = and i16 %40, 256
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = tail call ptr @__ctype_tolower_loc() #5
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds i32, ptr %45, i64 %38
  %47 = load i32, ptr %46, align 4, !tbaa !13
  br label %48

48:                                               ; preds = %43, %33
  %49 = phi i32 [ %35, %33 ], [ %47, %43 ]
  %50 = icmp eq i32 %49, 118
  br i1 %50, label %51, label %174

51:                                               ; preds = %48
  %52 = load i8, ptr %34, align 1, !tbaa !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %168, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %27, i64 3
  %56 = zext i8 %52 to i32
  %57 = zext i8 %52 to i64
  %58 = getelementptr inbounds i16, ptr %37, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !11
  %60 = and i16 %59, 256
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = tail call ptr @__ctype_tolower_loc() #5
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds i32, ptr %64, i64 %57
  %66 = load i32, ptr %65, align 4, !tbaa !13
  br label %67

67:                                               ; preds = %62, %54
  %68 = phi i32 [ %56, %54 ], [ %66, %62 ]
  %69 = icmp eq i32 %68, 101
  br i1 %69, label %70, label %174

70:                                               ; preds = %67
  %71 = load i8, ptr %55, align 1, !tbaa !10
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %168, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %27, i64 4
  %75 = zext i8 %71 to i32
  %76 = zext i8 %71 to i64
  %77 = getelementptr inbounds i16, ptr %37, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !11
  %79 = and i16 %78, 256
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = tail call ptr @__ctype_tolower_loc() #5
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds i32, ptr %83, i64 %76
  %85 = load i32, ptr %84, align 4, !tbaa !13
  br label %86

86:                                               ; preds = %81, %73
  %87 = phi i32 [ %75, %73 ], [ %85, %81 ]
  %88 = icmp eq i32 %87, 114
  br i1 %88, label %89, label %174

89:                                               ; preds = %86
  %90 = load i8, ptr %74, align 1, !tbaa !10
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %168, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %27, i64 5
  %94 = zext i8 %90 to i32
  %95 = zext i8 %90 to i64
  %96 = getelementptr inbounds i16, ptr %37, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !11
  %98 = and i16 %97, 256
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = tail call ptr @__ctype_tolower_loc() #5
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds i32, ptr %102, i64 %95
  %104 = load i32, ptr %103, align 4, !tbaa !13
  br label %105

105:                                              ; preds = %100, %92
  %106 = phi i32 [ %94, %92 ], [ %104, %100 ]
  %107 = icmp eq i32 %106, 98
  br i1 %107, label %108, label %174

108:                                              ; preds = %105
  %109 = load i8, ptr %93, align 1, !tbaa !10
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %168, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %27, i64 6
  %113 = zext i8 %109 to i32
  %114 = zext i8 %109 to i64
  %115 = getelementptr inbounds i16, ptr %37, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !11
  %117 = and i16 %116, 256
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %111
  %120 = tail call ptr @__ctype_tolower_loc() #5
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds i32, ptr %121, i64 %114
  %123 = load i32, ptr %122, align 4, !tbaa !13
  br label %124

124:                                              ; preds = %119, %111
  %125 = phi i32 [ %113, %111 ], [ %123, %119 ]
  %126 = icmp eq i32 %125, 111
  br i1 %126, label %127, label %174

127:                                              ; preds = %124
  %128 = load i8, ptr %112, align 1, !tbaa !10
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, ptr %27, i64 7
  %132 = zext i8 %128 to i32
  %133 = zext i8 %128 to i64
  %134 = getelementptr inbounds i16, ptr %37, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !11
  %136 = and i16 %135, 256
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %130
  %139 = tail call ptr @__ctype_tolower_loc() #5
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = getelementptr inbounds i32, ptr %140, i64 %133
  %142 = load i32, ptr %141, align 4, !tbaa !13
  br label %143

143:                                              ; preds = %138, %130
  %144 = phi i32 [ %132, %130 ], [ %142, %138 ]
  %145 = icmp eq i32 %144, 115
  br i1 %145, label %146, label %174

146:                                              ; preds = %143
  %147 = load i8, ptr %131, align 1, !tbaa !10
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds i8, ptr %27, i64 8
  %151 = zext i8 %147 to i32
  %152 = zext i8 %147 to i64
  %153 = getelementptr inbounds i16, ptr %37, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !11
  %155 = and i16 %154, 256
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %149
  %158 = tail call ptr @__ctype_tolower_loc() #5
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds i32, ptr %159, i64 %152
  %161 = load i32, ptr %160, align 4, !tbaa !13
  br label %162

162:                                              ; preds = %157, %149
  %163 = phi i32 [ %151, %149 ], [ %161, %157 ]
  %164 = icmp eq i32 %163, 101
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i8, ptr %150, align 1, !tbaa !10
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %51, %70, %89, %108, %127, %146, %165
  %169 = add nuw nsw i32 %28, 1
  %170 = add nuw nsw i64 %29, 1
  %171 = icmp eq i32 %169, %16
  br i1 %171, label %172, label %21

172:                                              ; preds = %168
  %173 = icmp ult i64 %170, %15
  br i1 %173, label %206, label %219

174:                                              ; preds = %26, %48, %67, %86, %105, %124, %143, %162, %165
  %175 = load ptr, ptr @stderr, align 8, !tbaa !6
  %176 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 55, i64 1, ptr %175) #6
  %177 = load ptr, ptr @stderr, align 8, !tbaa !6
  %178 = load ptr, ptr @progname, align 8, !tbaa !6
  %179 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.6, ptr noundef %178) #7
  %180 = load ptr, ptr @stderr, align 8, !tbaa !6
  %181 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 37, i64 1, ptr %180) #6
  %182 = load ptr, ptr @stderr, align 8, !tbaa !6
  %183 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 52, i64 1, ptr %182) #6
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

184:                                              ; preds = %21
  %185 = icmp ult i64 %170, %15
  %186 = trunc nuw nsw i64 %170 to i32
  br label %187

187:                                              ; preds = %14, %184, %12
  %188 = phi i32 [ %13, %12 ], [ %16, %184 ], [ %16, %14 ]
  %189 = phi i32 [ 1, %12 ], [ %186, %184 ], [ 1, %14 ]
  %190 = phi i32 [ 0, %12 ], [ %169, %184 ], [ 0, %14 ]
  %191 = phi i1 [ false, %12 ], [ %185, %184 ], [ true, %14 ]
  %192 = icmp slt i32 %189, %188
  br i1 %192, label %193, label %205

193:                                              ; preds = %187
  %194 = load ptr, ptr @stderr, align 8, !tbaa !6
  %195 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  %196 = load ptr, ptr @stderr, align 8, !tbaa !6
  %197 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 55, i64 1, ptr %196) #6
  %198 = load ptr, ptr @stderr, align 8, !tbaa !6
  %199 = load ptr, ptr @progname, align 8, !tbaa !6
  %200 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.6, ptr noundef %199) #7
  %201 = load ptr, ptr @stderr, align 8, !tbaa !6
  %202 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 37, i64 1, ptr %201) #6
  %203 = load ptr, ptr @stderr, align 8, !tbaa !6
  %204 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 52, i64 1, ptr %203) #6
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

205:                                              ; preds = %187
  br i1 %191, label %206, label %219

206:                                              ; preds = %172, %205
  %207 = phi i32 [ %0, %172 ], [ %189, %205 ]
  %208 = phi i32 [ %16, %172 ], [ %190, %205 ]
  %209 = zext nneg i32 %207 to i64
  %210 = getelementptr inbounds ptr, ptr %1, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = tail call ptr @fopen(ptr noundef %211, ptr noundef nonnull @.str.3)
  store ptr %212, ptr @infile, align 8, !tbaa !6
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %206
  %215 = load ptr, ptr @stderr, align 8, !tbaa !6
  %216 = load ptr, ptr @progname, align 8, !tbaa !6
  %217 = load ptr, ptr %210, align 8, !tbaa !6
  %218 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.4, ptr noundef %216, ptr noundef %217) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

219:                                              ; preds = %172, %205
  %220 = phi i32 [ %16, %172 ], [ %190, %205 ]
  %221 = load ptr, ptr @stdin, align 8, !tbaa !6
  store ptr %221, ptr @infile, align 8, !tbaa !6
  br label %222

222:                                              ; preds = %206, %219
  %223 = phi i32 [ %208, %206 ], [ %220, %219 ]
  tail call fastcc void @scan_JPEG_header(i32 noundef signext %223)
  tail call void @exit(i32 noundef signext 0) #8
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind
define internal fastcc void @scan_JPEG_header(i32 noundef signext %0) unnamed_addr #2 {
  %2 = load ptr, ptr @infile, align 8, !tbaa !6
  %3 = tail call signext i32 @getc(ptr noundef %2)
  %4 = load ptr, ptr @infile, align 8, !tbaa !6
  %5 = tail call signext i32 @getc(ptr noundef %4)
  %6 = icmp ne i32 %3, 255
  %7 = icmp ne i32 %5, 216
  %8 = or i1 %6, %7
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @infile, align 8, !tbaa !6
  %11 = tail call signext i32 @getc(ptr noundef %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %0, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %13, %24
  %16 = phi i32 [ %25, %24 ], [ %11, %13 ]
  %17 = phi i32 [ %26, %24 ], [ 0, %13 ]
  %18 = icmp eq i32 %16, 255
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %17, 1
  %21 = load ptr, ptr @infile, align 8, !tbaa !6
  %22 = tail call signext i32 @getc(ptr noundef %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %84, label %24

24:                                               ; preds = %19, %62
  %25 = phi i32 [ %22, %19 ], [ %64, %62 ]
  %26 = phi i32 [ %20, %19 ], [ 0, %62 ]
  br label %15

27:                                               ; preds = %15, %27
  %28 = load ptr, ptr @infile, align 8, !tbaa !6
  %29 = tail call signext i32 @getc(ptr noundef %28)
  switch i32 %29, label %30 [
    i32 -1, label %90
    i32 255, label %27
  ]

30:                                               ; preds = %27
  %31 = icmp eq i32 %17, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @stderr, align 8, !tbaa !6
  %34 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 41, i64 1, ptr %33) #6
  br label %35

35:                                               ; preds = %32, %30
  switch i32 %29, label %61 [
    i32 192, label %38
    i32 193, label %38
    i32 194, label %38
    i32 195, label %38
    i32 197, label %38
    i32 198, label %38
    i32 199, label %38
    i32 201, label %38
    i32 202, label %38
    i32 203, label %38
    i32 205, label %38
    i32 206, label %38
    i32 207, label %38
    i32 218, label %225
    i32 217, label %225
    i32 254, label %37
    i32 236, label %36
  ]

36:                                               ; preds = %35
  tail call fastcc void @skip_variable()
  br label %62

37:                                               ; preds = %35
  tail call fastcc void @process_COM()
  br label %62

38:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %39 = load ptr, ptr @infile, align 8, !tbaa !6
  %40 = tail call signext i32 @getc(ptr noundef %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %205, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @infile, align 8, !tbaa !6
  %44 = tail call signext i32 @getc(ptr noundef %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %208, label %46

46:                                               ; preds = %42
  %47 = shl i32 %40, 8
  %48 = add i32 %44, %47
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %211, label %50

50:                                               ; preds = %46
  %51 = add i32 %48, -2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50, %58
  %54 = phi i32 [ %59, %58 ], [ %51, %50 ]
  %55 = load ptr, ptr @infile, align 8, !tbaa !6
  %56 = tail call signext i32 @getc(ptr noundef %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %214, label %58

58:                                               ; preds = %53
  %59 = add i32 %54, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %53

61:                                               ; preds = %35
  tail call fastcc void @skip_variable()
  br label %62

62:                                               ; preds = %58, %61, %50, %37, %36
  %63 = load ptr, ptr @infile, align 8, !tbaa !6
  %64 = tail call signext i32 @getc(ptr noundef %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %69, label %24

66:                                               ; preds = %1
  %67 = load ptr, ptr @stderr, align 8, !tbaa !6
  %68 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

69:                                               ; preds = %221, %62, %9
  %70 = load ptr, ptr @stderr, align 8, !tbaa !6
  %71 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

72:                                               ; preds = %13, %81
  %73 = phi i32 [ %82, %81 ], [ %11, %13 ]
  %74 = phi i32 [ %83, %81 ], [ 0, %13 ]
  %75 = icmp eq i32 %73, 255
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = add nuw nsw i32 %74, 1
  %78 = load ptr, ptr @infile, align 8, !tbaa !6
  %79 = tail call signext i32 @getc(ptr noundef %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %221
  %82 = phi i32 [ %79, %76 ], [ %223, %221 ]
  %83 = phi i32 [ %77, %76 ], [ 0, %221 ]
  br label %72

84:                                               ; preds = %76, %19
  %85 = load ptr, ptr @stderr, align 8, !tbaa !6
  %86 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

87:                                               ; preds = %72, %87
  %88 = load ptr, ptr @infile, align 8, !tbaa !6
  %89 = tail call signext i32 @getc(ptr noundef %88)
  switch i32 %89, label %93 [
    i32 -1, label %90
    i32 255, label %87
  ]

90:                                               ; preds = %87, %27
  %91 = load ptr, ptr @stderr, align 8, !tbaa !6
  %92 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

93:                                               ; preds = %87
  %94 = icmp eq i32 %74, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr @stderr, align 8, !tbaa !6
  %97 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 41, i64 1, ptr %96) #6
  br label %98

98:                                               ; preds = %93, %95
  switch i32 %89, label %220 [
    i32 192, label %99
    i32 193, label %99
    i32 194, label %99
    i32 195, label %99
    i32 197, label %99
    i32 198, label %99
    i32 199, label %99
    i32 201, label %99
    i32 202, label %99
    i32 203, label %99
    i32 205, label %99
    i32 206, label %99
    i32 207, label %99
    i32 218, label %225
    i32 217, label %225
    i32 254, label %217
    i32 236, label %218
  ]

99:                                               ; preds = %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98
  %100 = load ptr, ptr @infile, align 8, !tbaa !6
  %101 = tail call signext i32 @getc(ptr noundef %100)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load ptr, ptr @stderr, align 8, !tbaa !6
  %105 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

106:                                              ; preds = %99
  %107 = load ptr, ptr @infile, align 8, !tbaa !6
  %108 = tail call signext i32 @getc(ptr noundef %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load ptr, ptr @stderr, align 8, !tbaa !6
  %112 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

113:                                              ; preds = %106
  %114 = shl i32 %101, 8
  %115 = add i32 %108, %114
  %116 = load ptr, ptr @infile, align 8, !tbaa !6
  %117 = tail call signext i32 @getc(ptr noundef %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load ptr, ptr @stderr, align 8, !tbaa !6
  %121 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

122:                                              ; preds = %113
  %123 = load ptr, ptr @infile, align 8, !tbaa !6
  %124 = tail call signext i32 @getc(ptr noundef %123)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load ptr, ptr @stderr, align 8, !tbaa !6
  %128 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

129:                                              ; preds = %122
  %130 = load ptr, ptr @infile, align 8, !tbaa !6
  %131 = tail call signext i32 @getc(ptr noundef %130)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load ptr, ptr @stderr, align 8, !tbaa !6
  %135 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

136:                                              ; preds = %129
  %137 = shl i32 %124, 8
  %138 = add i32 %131, %137
  %139 = load ptr, ptr @infile, align 8, !tbaa !6
  %140 = tail call signext i32 @getc(ptr noundef %139)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load ptr, ptr @stderr, align 8, !tbaa !6
  %144 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

145:                                              ; preds = %136
  %146 = load ptr, ptr @infile, align 8, !tbaa !6
  %147 = tail call signext i32 @getc(ptr noundef %146)
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load ptr, ptr @stderr, align 8, !tbaa !6
  %151 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

152:                                              ; preds = %145
  %153 = shl i32 %140, 8
  %154 = add i32 %147, %153
  %155 = load ptr, ptr @infile, align 8, !tbaa !6
  %156 = tail call signext i32 @getc(ptr noundef %155)
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load ptr, ptr @stderr, align 8, !tbaa !6
  %160 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

161:                                              ; preds = %152
  %162 = add i32 %89, -192
  %163 = icmp ult i32 %162, 16
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = zext nneg i32 %162 to i64
  %166 = getelementptr inbounds [16 x ptr], ptr @switch.table.scan_JPEG_header, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8
  br label %168

168:                                              ; preds = %161, %164
  %169 = phi ptr [ %167, %164 ], [ @.str.28, %161 ]
  %170 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef signext %154, i32 noundef signext %138, i32 noundef signext %156, i32 noundef signext %117)
  %171 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %169)
  %172 = mul nsw i32 %156, 3
  %173 = add nsw i32 %172, 8
  %174 = icmp eq i32 %115, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = icmp sgt i32 %156, 0
  br i1 %176, label %183, label %221

177:                                              ; preds = %168
  %178 = load ptr, ptr @stderr, align 8, !tbaa !6
  %179 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.31) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

180:                                              ; preds = %198
  %181 = add nuw nsw i32 %184, 1
  %182 = icmp eq i32 %181, %156
  br i1 %182, label %221, label %183

183:                                              ; preds = %175, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %175 ]
  %185 = load ptr, ptr @infile, align 8, !tbaa !6
  %186 = tail call signext i32 @getc(ptr noundef %185)
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load ptr, ptr @stderr, align 8, !tbaa !6
  %190 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

191:                                              ; preds = %183
  %192 = load ptr, ptr @infile, align 8, !tbaa !6
  %193 = tail call signext i32 @getc(ptr noundef %192)
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load ptr, ptr @stderr, align 8, !tbaa !6
  %197 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

198:                                              ; preds = %191
  %199 = load ptr, ptr @infile, align 8, !tbaa !6
  %200 = tail call signext i32 @getc(ptr noundef %199)
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %180

202:                                              ; preds = %198
  %203 = load ptr, ptr @stderr, align 8, !tbaa !6
  %204 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

205:                                              ; preds = %38
  %206 = load ptr, ptr @stderr, align 8, !tbaa !6
  %207 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

208:                                              ; preds = %42
  %209 = load ptr, ptr @stderr, align 8, !tbaa !6
  %210 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

211:                                              ; preds = %46
  %212 = load ptr, ptr @stderr, align 8, !tbaa !6
  %213 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

214:                                              ; preds = %53
  %215 = load ptr, ptr @stderr, align 8, !tbaa !6
  %216 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

217:                                              ; preds = %98
  tail call fastcc void @process_COM()
  br label %221

218:                                              ; preds = %98
  %219 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call fastcc void @process_COM()
  br label %221

220:                                              ; preds = %98
  tail call fastcc void @skip_variable()
  br label %221

221:                                              ; preds = %180, %175, %218, %220, %217
  %222 = load ptr, ptr @infile, align 8, !tbaa !6
  %223 = tail call signext i32 @getc(ptr noundef %222)
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %69, label %81

225:                                              ; preds = %98, %98, %35, %35
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: nounwind
define internal fastcc void @skip_variable() unnamed_addr #2 {
  %1 = tail call fastcc signext i32 @read_2_bytes()
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %12

9:                                                ; preds = %12
  %10 = add i32 %13, -1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %6, %9
  %13 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %14 = load ptr, ptr @infile, align 8, !tbaa !6
  %15 = tail call signext i32 @getc(ptr noundef %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

20:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @process_COM() unnamed_addr #2 {
  %1 = tail call fastcc signext i32 @read_2_bytes()
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %6, %38
  %10 = phi i32 [ %13, %38 ], [ 0, %6 ]
  %11 = phi i32 [ %39, %38 ], [ %7, %6 ]
  %12 = load ptr, ptr @infile, align 8, !tbaa !6
  %13 = tail call signext i32 @getc(ptr noundef %12)
  switch i32 %13, label %25 [
    i32 -1, label %14
    i32 13, label %17
    i32 10, label %19
    i32 92, label %23
  ]

14:                                               ; preds = %9
  %15 = load ptr, ptr @stderr, align 8, !tbaa !6
  %16 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

17:                                               ; preds = %9
  %18 = tail call i32 @putchar(i32 10)
  br label %38

19:                                               ; preds = %9
  %20 = icmp eq i32 %10, 13
  br i1 %20, label %38, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @putchar(i32 10)
  br label %38

23:                                               ; preds = %9
  %24 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34)
  br label %38

25:                                               ; preds = %9
  %26 = tail call ptr @__ctype_b_loc() #5
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = sext i32 %13 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !11
  %31 = and i16 %30, 16384
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr @stdout, align 8, !tbaa !6
  %35 = tail call signext i32 @putc(i32 noundef signext %13, ptr noundef %34)
  br label %38

36:                                               ; preds = %25
  %37 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef signext %13)
  br label %38

38:                                               ; preds = %21, %19, %33, %36, %23, %17
  %39 = add i32 %11, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %9

41:                                               ; preds = %38, %6
  %42 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define internal fastcc noundef signext i32 @read_2_bytes() unnamed_addr #2 {
  %1 = load ptr, ptr @infile, align 8, !tbaa !6
  %2 = tail call signext i32 @getc(ptr noundef %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @stderr, align 8, !tbaa !6
  %6 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

7:                                                ; preds = %0
  %8 = load ptr, ptr @infile, align 8, !tbaa !6
  %9 = tail call signext i32 @getc(ptr noundef %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

14:                                               ; preds = %7
  %15 = shl i32 %2, 8
  %16 = add i32 %9, %15
  ret i32 %16
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #4

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { cold }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !8, i64 0}
