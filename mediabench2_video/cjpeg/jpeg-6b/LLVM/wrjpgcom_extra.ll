; ModuleID = 'wrjpgcom.c'
source_filename = "wrjpgcom.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal unnamed_addr global ptr null, align 8
@stdin = external dso_local local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@outfile = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"wrjpgcom inserts a textual comment in a JPEG file.\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"You can add to or replace any existing comment(s).\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Usage: %s [switches] \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"  -replace         Delete any existing comments\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"  -comment \22text\22  Insert comment with given text\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"  -cfile name      Read comment from named file\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Notice that you must put quotes around the comment text\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"when you use -comment.\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"If you do not give either -comment or -cfile on the command line,\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"then the comment text is read from standard input.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"It can be multiple lines, up to %u characters total.\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"You must specify an input JPEG file name when supplying\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"comment text from standard input.\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SOS without prior SOFn\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1

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
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %465

11:                                               ; preds = %9
  %12 = add nsw i32 %0, -1
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %11, %443
  %15 = phi i32 [ %449, %443 ], [ 1, %11 ]
  %16 = phi i32 [ %447, %443 ], [ 1, %11 ]
  %17 = phi i32 [ %446, %443 ], [ 0, %11 ]
  %18 = phi ptr [ %445, %443 ], [ null, %11 ]
  %19 = phi ptr [ %444, %443 ], [ null, %11 ]
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %24 = icmp ne i8 %23, 45
  br i1 %24, label %451, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %442, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %22, i64 2
  %31 = zext i8 %27 to i32
  %32 = tail call ptr @__ctype_b_loc() #8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = zext i8 %27 to i64
  %35 = getelementptr inbounds i16, ptr %33, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !11
  %37 = and i16 %36, 256
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @__ctype_tolower_loc() #8
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i32, ptr %41, i64 %34
  %43 = load i32, ptr %42, align 4, !tbaa !13
  br label %44

44:                                               ; preds = %39, %29
  %45 = phi i32 [ %31, %29 ], [ %43, %39 ]
  %46 = icmp eq i32 %45, 114
  br i1 %46, label %47, label %164

47:                                               ; preds = %44
  %48 = load i8, ptr %30, align 1, !tbaa !10
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %443, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %22, i64 3
  %52 = zext i8 %48 to i32
  %53 = zext i8 %48 to i64
  %54 = getelementptr inbounds i16, ptr %33, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !11
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = tail call ptr @__ctype_tolower_loc() #8
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds i32, ptr %60, i64 %53
  %62 = load i32, ptr %61, align 4, !tbaa !13
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i32 [ %52, %50 ], [ %62, %58 ]
  %65 = icmp eq i32 %64, 101
  br i1 %65, label %66, label %164

66:                                               ; preds = %63
  %67 = load i8, ptr %51, align 1, !tbaa !10
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %443, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %22, i64 4
  %71 = zext i8 %67 to i32
  %72 = zext i8 %67 to i64
  %73 = getelementptr inbounds i16, ptr %33, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !11
  %75 = and i16 %74, 256
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = tail call ptr @__ctype_tolower_loc() #8
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i32, ptr %79, i64 %72
  %81 = load i32, ptr %80, align 4, !tbaa !13
  br label %82

82:                                               ; preds = %77, %69
  %83 = phi i32 [ %71, %69 ], [ %81, %77 ]
  %84 = icmp eq i32 %83, 112
  br i1 %84, label %85, label %164

85:                                               ; preds = %82
  %86 = load i8, ptr %70, align 1, !tbaa !10
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %443, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds i8, ptr %22, i64 5
  %90 = zext i8 %86 to i32
  %91 = zext i8 %86 to i64
  %92 = getelementptr inbounds i16, ptr %33, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !11
  %94 = and i16 %93, 256
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = tail call ptr @__ctype_tolower_loc() #8
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i32, ptr %98, i64 %91
  %100 = load i32, ptr %99, align 4, !tbaa !13
  br label %101

101:                                              ; preds = %96, %88
  %102 = phi i32 [ %90, %88 ], [ %100, %96 ]
  %103 = icmp eq i32 %102, 108
  br i1 %103, label %104, label %164

104:                                              ; preds = %101
  %105 = load i8, ptr %89, align 1, !tbaa !10
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %443, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %22, i64 6
  %109 = zext i8 %105 to i32
  %110 = zext i8 %105 to i64
  %111 = getelementptr inbounds i16, ptr %33, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !11
  %113 = and i16 %112, 256
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = tail call ptr @__ctype_tolower_loc() #8
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds i32, ptr %117, i64 %110
  %119 = load i32, ptr %118, align 4, !tbaa !13
  br label %120

120:                                              ; preds = %115, %107
  %121 = phi i32 [ %109, %107 ], [ %119, %115 ]
  %122 = icmp eq i32 %121, 97
  br i1 %122, label %123, label %164

123:                                              ; preds = %120
  %124 = load i8, ptr %108, align 1, !tbaa !10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %443, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds i8, ptr %22, i64 7
  %128 = zext i8 %124 to i32
  %129 = zext i8 %124 to i64
  %130 = getelementptr inbounds i16, ptr %33, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !11
  %132 = and i16 %131, 256
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %126
  %135 = tail call ptr @__ctype_tolower_loc() #8
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = getelementptr inbounds i32, ptr %136, i64 %129
  %138 = load i32, ptr %137, align 4, !tbaa !13
  br label %139

139:                                              ; preds = %134, %126
  %140 = phi i32 [ %128, %126 ], [ %138, %134 ]
  %141 = icmp eq i32 %140, 99
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load i8, ptr %127, align 1, !tbaa !10
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %443, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds i8, ptr %22, i64 8
  %147 = zext i8 %143 to i32
  %148 = zext i8 %143 to i64
  %149 = getelementptr inbounds i16, ptr %33, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !11
  %151 = and i16 %150, 256
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %145
  %154 = tail call ptr @__ctype_tolower_loc() #8
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = getelementptr inbounds i32, ptr %155, i64 %148
  %157 = load i32, ptr %156, align 4, !tbaa !13
  br label %158

158:                                              ; preds = %153, %145
  %159 = phi i32 [ %147, %145 ], [ %157, %153 ]
  %160 = icmp eq i32 %159, 101
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i8, ptr %146, align 1, !tbaa !10
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %443, label %164

164:                                              ; preds = %161, %158, %139, %120, %101, %82, %63, %44
  br i1 %38, label %170, label %165

165:                                              ; preds = %164
  %166 = tail call ptr @__ctype_tolower_loc() #8
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds i32, ptr %167, i64 %34
  %169 = load i32, ptr %168, align 4, !tbaa !13
  br label %170

170:                                              ; preds = %165, %164
  %171 = phi i32 [ %31, %164 ], [ %169, %165 ]
  %172 = icmp eq i32 %171, 99
  br i1 %172, label %173, label %267

173:                                              ; preds = %170
  %174 = load i8, ptr %30, align 1, !tbaa !10
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %267, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds i8, ptr %22, i64 3
  %178 = zext i8 %174 to i32
  %179 = zext i8 %174 to i64
  %180 = getelementptr inbounds i16, ptr %33, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !11
  %182 = and i16 %181, 256
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %176
  %185 = tail call ptr @__ctype_tolower_loc() #8
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = getelementptr inbounds i32, ptr %186, i64 %179
  %188 = load i32, ptr %187, align 4, !tbaa !13
  br label %189

189:                                              ; preds = %184, %176
  %190 = phi i32 [ %178, %176 ], [ %188, %184 ]
  %191 = icmp eq i32 %190, 102
  br i1 %191, label %192, label %267

192:                                              ; preds = %189
  %193 = load i8, ptr %177, align 1, !tbaa !10
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %252, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds i8, ptr %22, i64 4
  %197 = zext i8 %193 to i32
  %198 = zext i8 %193 to i64
  %199 = getelementptr inbounds i16, ptr %33, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !11
  %201 = and i16 %200, 256
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %195
  %204 = tail call ptr @__ctype_tolower_loc() #8
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = getelementptr inbounds i32, ptr %205, i64 %198
  %207 = load i32, ptr %206, align 4, !tbaa !13
  br label %208

208:                                              ; preds = %203, %195
  %209 = phi i32 [ %197, %195 ], [ %207, %203 ]
  %210 = icmp eq i32 %209, 105
  br i1 %210, label %211, label %267

211:                                              ; preds = %208
  %212 = load i8, ptr %196, align 1, !tbaa !10
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %252, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds i8, ptr %22, i64 5
  %216 = zext i8 %212 to i32
  %217 = zext i8 %212 to i64
  %218 = getelementptr inbounds i16, ptr %33, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !11
  %220 = and i16 %219, 256
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %214
  %223 = tail call ptr @__ctype_tolower_loc() #8
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds i32, ptr %224, i64 %217
  %226 = load i32, ptr %225, align 4, !tbaa !13
  br label %227

227:                                              ; preds = %222, %214
  %228 = phi i32 [ %216, %214 ], [ %226, %222 ]
  %229 = icmp eq i32 %228, 108
  br i1 %229, label %230, label %267

230:                                              ; preds = %227
  %231 = load i8, ptr %215, align 1, !tbaa !10
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds i8, ptr %22, i64 6
  %235 = zext i8 %231 to i32
  %236 = zext i8 %231 to i64
  %237 = getelementptr inbounds i16, ptr %33, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !11
  %239 = and i16 %238, 256
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %233
  %242 = tail call ptr @__ctype_tolower_loc() #8
  %243 = load ptr, ptr %242, align 8, !tbaa !6
  %244 = getelementptr inbounds i32, ptr %243, i64 %236
  %245 = load i32, ptr %244, align 4, !tbaa !13
  br label %246

246:                                              ; preds = %241, %233
  %247 = phi i32 [ %235, %233 ], [ %245, %241 ]
  %248 = icmp eq i32 %247, 101
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load i8, ptr %234, align 1, !tbaa !10
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %249, %230, %211, %192
  %253 = add nsw i32 %15, 1
  %254 = icmp slt i32 %253, %0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  tail call fastcc void @usage()
  unreachable

256:                                              ; preds = %252
  %257 = sext i32 %253 to i64
  %258 = getelementptr inbounds ptr, ptr %1, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  %260 = tail call ptr @fopen(ptr noundef %259, ptr noundef nonnull @.str.3)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %443

262:                                              ; preds = %256
  %263 = load ptr, ptr @stderr, align 8, !tbaa !6
  %264 = load ptr, ptr @progname, align 8, !tbaa !6
  %265 = load ptr, ptr %258, align 8, !tbaa !6
  %266 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %263, ptr noundef nonnull @.str.4, ptr noundef %264, ptr noundef %265) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

267:                                              ; preds = %170, %189, %208, %227, %246, %249, %173
  br i1 %38, label %273, label %268

268:                                              ; preds = %267
  %269 = tail call ptr @__ctype_tolower_loc() #8
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = getelementptr inbounds i32, ptr %270, i64 %34
  %272 = load i32, ptr %271, align 4, !tbaa !13
  br label %273

273:                                              ; preds = %268, %267
  %274 = phi i32 [ %31, %267 ], [ %272, %268 ]
  %275 = icmp eq i32 %274, 99
  br i1 %275, label %276, label %442

276:                                              ; preds = %273
  %277 = load i8, ptr %30, align 1, !tbaa !10
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %393, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds i8, ptr %22, i64 3
  %281 = zext i8 %277 to i32
  %282 = zext i8 %277 to i64
  %283 = getelementptr inbounds i16, ptr %33, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !11
  %285 = and i16 %284, 256
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %279
  %288 = tail call ptr @__ctype_tolower_loc() #8
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = getelementptr inbounds i32, ptr %289, i64 %282
  %291 = load i32, ptr %290, align 4, !tbaa !13
  br label %292

292:                                              ; preds = %287, %279
  %293 = phi i32 [ %281, %279 ], [ %291, %287 ]
  %294 = icmp eq i32 %293, 111
  br i1 %294, label %295, label %442

295:                                              ; preds = %292
  %296 = load i8, ptr %280, align 1, !tbaa !10
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %393, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds i8, ptr %22, i64 4
  %300 = zext i8 %296 to i32
  %301 = zext i8 %296 to i64
  %302 = getelementptr inbounds i16, ptr %33, i64 %301
  %303 = load i16, ptr %302, align 2, !tbaa !11
  %304 = and i16 %303, 256
  %305 = icmp eq i16 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %298
  %307 = tail call ptr @__ctype_tolower_loc() #8
  %308 = load ptr, ptr %307, align 8, !tbaa !6
  %309 = getelementptr inbounds i32, ptr %308, i64 %301
  %310 = load i32, ptr %309, align 4, !tbaa !13
  br label %311

311:                                              ; preds = %306, %298
  %312 = phi i32 [ %300, %298 ], [ %310, %306 ]
  %313 = icmp eq i32 %312, 109
  br i1 %313, label %314, label %442

314:                                              ; preds = %311
  %315 = load i8, ptr %299, align 1, !tbaa !10
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %393, label %317

317:                                              ; preds = %314
  %318 = getelementptr inbounds i8, ptr %22, i64 5
  %319 = zext i8 %315 to i32
  %320 = zext i8 %315 to i64
  %321 = getelementptr inbounds i16, ptr %33, i64 %320
  %322 = load i16, ptr %321, align 2, !tbaa !11
  %323 = and i16 %322, 256
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %317
  %326 = tail call ptr @__ctype_tolower_loc() #8
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds i32, ptr %327, i64 %320
  %329 = load i32, ptr %328, align 4, !tbaa !13
  br label %330

330:                                              ; preds = %325, %317
  %331 = phi i32 [ %319, %317 ], [ %329, %325 ]
  %332 = icmp eq i32 %331, 109
  br i1 %332, label %333, label %442

333:                                              ; preds = %330
  %334 = load i8, ptr %318, align 1, !tbaa !10
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %393, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds i8, ptr %22, i64 6
  %338 = zext i8 %334 to i32
  %339 = zext i8 %334 to i64
  %340 = getelementptr inbounds i16, ptr %33, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !11
  %342 = and i16 %341, 256
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %336
  %345 = tail call ptr @__ctype_tolower_loc() #8
  %346 = load ptr, ptr %345, align 8, !tbaa !6
  %347 = getelementptr inbounds i32, ptr %346, i64 %339
  %348 = load i32, ptr %347, align 4, !tbaa !13
  br label %349

349:                                              ; preds = %344, %336
  %350 = phi i32 [ %338, %336 ], [ %348, %344 ]
  %351 = icmp eq i32 %350, 101
  br i1 %351, label %352, label %442

352:                                              ; preds = %349
  %353 = load i8, ptr %337, align 1, !tbaa !10
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %393, label %355

355:                                              ; preds = %352
  %356 = getelementptr inbounds i8, ptr %22, i64 7
  %357 = zext i8 %353 to i32
  %358 = zext i8 %353 to i64
  %359 = getelementptr inbounds i16, ptr %33, i64 %358
  %360 = load i16, ptr %359, align 2, !tbaa !11
  %361 = and i16 %360, 256
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %355
  %364 = tail call ptr @__ctype_tolower_loc() #8
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = getelementptr inbounds i32, ptr %365, i64 %358
  %367 = load i32, ptr %366, align 4, !tbaa !13
  br label %368

368:                                              ; preds = %363, %355
  %369 = phi i32 [ %357, %355 ], [ %367, %363 ]
  %370 = icmp eq i32 %369, 110
  br i1 %370, label %371, label %442

371:                                              ; preds = %368
  %372 = load i8, ptr %356, align 1, !tbaa !10
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %393, label %374

374:                                              ; preds = %371
  %375 = getelementptr inbounds i8, ptr %22, i64 8
  %376 = zext i8 %372 to i32
  %377 = zext i8 %372 to i64
  %378 = getelementptr inbounds i16, ptr %33, i64 %377
  %379 = load i16, ptr %378, align 2, !tbaa !11
  %380 = and i16 %379, 256
  %381 = icmp eq i16 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %374
  %383 = tail call ptr @__ctype_tolower_loc() #8
  %384 = load ptr, ptr %383, align 8, !tbaa !6
  %385 = getelementptr inbounds i32, ptr %384, i64 %377
  %386 = load i32, ptr %385, align 4, !tbaa !13
  br label %387

387:                                              ; preds = %382, %374
  %388 = phi i32 [ %376, %374 ], [ %386, %382 ]
  %389 = icmp eq i32 %388, 116
  br i1 %389, label %390, label %442

390:                                              ; preds = %387
  %391 = load i8, ptr %375, align 1, !tbaa !10
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %442

393:                                              ; preds = %390, %371, %352, %333, %314, %295, %276
  %394 = add nsw i32 %15, 1
  %395 = icmp slt i32 %394, %0
  br i1 %395, label %397, label %396

396:                                              ; preds = %393
  tail call fastcc void @usage()
  unreachable

397:                                              ; preds = %393
  %398 = sext i32 %394 to i64
  %399 = getelementptr inbounds ptr, ptr %1, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = load i8, ptr %400, align 1, !tbaa !10
  %402 = icmp eq i8 %401, 34
  br i1 %402, label %403, label %437

403:                                              ; preds = %397
  %404 = tail call noalias dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #11
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load ptr, ptr @stderr, align 8, !tbaa !6
  %408 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %407, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

409:                                              ; preds = %403
  %410 = getelementptr inbounds i8, ptr %400, i64 1
  %411 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %404, ptr noundef nonnull dereferenceable(1) %410) #12
  br label %412

412:                                              ; preds = %430, %409
  %413 = phi i64 [ %431, %430 ], [ %398, %409 ]
  %414 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %404) #13
  %415 = and i64 %414, 4294967295
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %425, label %417

417:                                              ; preds = %412
  %418 = add i64 %414, 4294967295
  %419 = and i64 %418, 4294967295
  %420 = getelementptr inbounds i8, ptr %404, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !10
  %422 = icmp eq i8 %421, 34
  br i1 %422, label %423, label %425

423:                                              ; preds = %417
  %424 = trunc nsw i64 %413 to i32
  store i8 0, ptr %420, align 1, !tbaa !10
  br label %437

425:                                              ; preds = %417, %412
  %426 = icmp eq i64 %413, %13
  br i1 %426, label %427, label %430

427:                                              ; preds = %425
  %428 = load ptr, ptr @stderr, align 8, !tbaa !6
  %429 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %428, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

430:                                              ; preds = %425
  %431 = add nsw i64 %413, 1
  %432 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %404)
  %433 = getelementptr inbounds i8, ptr %404, i64 %432
  store i16 32, ptr %433, align 1
  %434 = getelementptr inbounds ptr, ptr %1, i64 %431
  %435 = load ptr, ptr %434, align 8, !tbaa !6
  %436 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %404, ptr noundef nonnull dereferenceable(1) %435) #12
  br label %412

437:                                              ; preds = %423, %397
  %438 = phi ptr [ %404, %423 ], [ %400, %397 ]
  %439 = phi i32 [ %424, %423 ], [ %394, %397 ]
  %440 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %438) #13
  %441 = trunc i64 %440 to i32
  br label %443

442:                                              ; preds = %25, %390, %273, %292, %311, %330, %349, %368, %387
  tail call fastcc void @usage()
  unreachable

443:                                              ; preds = %47, %66, %85, %104, %123, %142, %161, %437, %256
  %444 = phi ptr [ %19, %256 ], [ %438, %437 ], [ %19, %161 ], [ %19, %142 ], [ %19, %123 ], [ %19, %104 ], [ %19, %85 ], [ %19, %66 ], [ %19, %47 ]
  %445 = phi ptr [ %260, %256 ], [ %18, %437 ], [ %18, %161 ], [ %18, %142 ], [ %18, %123 ], [ %18, %104 ], [ %18, %85 ], [ %18, %66 ], [ %18, %47 ]
  %446 = phi i32 [ %17, %256 ], [ %441, %437 ], [ %17, %161 ], [ %17, %142 ], [ %17, %123 ], [ %17, %104 ], [ %17, %85 ], [ %17, %66 ], [ %17, %47 ]
  %447 = phi i32 [ %16, %256 ], [ %16, %437 ], [ 0, %161 ], [ 0, %142 ], [ 0, %123 ], [ 0, %104 ], [ 0, %85 ], [ 0, %66 ], [ 0, %47 ]
  %448 = phi i32 [ %253, %256 ], [ %439, %437 ], [ %15, %161 ], [ %15, %142 ], [ %15, %123 ], [ %15, %104 ], [ %15, %85 ], [ %15, %66 ], [ %15, %47 ]
  %449 = add nsw i32 %448, 1
  %450 = icmp slt i32 %449, %0
  br i1 %450, label %14, label %451

451:                                              ; preds = %443, %14
  %452 = phi ptr [ %444, %443 ], [ %19, %14 ]
  %453 = phi ptr [ %445, %443 ], [ %18, %14 ]
  %454 = phi i32 [ %446, %443 ], [ %17, %14 ]
  %455 = phi i32 [ %447, %443 ], [ %16, %14 ]
  %456 = phi i32 [ %449, %443 ], [ %15, %14 ]
  %457 = phi i1 [ %24, %443 ], [ true, %14 ]
  %458 = icmp ne ptr %452, null
  %459 = icmp ne ptr %453, null
  %460 = select i1 %458, i1 %459, i1 false
  br i1 %460, label %461, label %462

461:                                              ; preds = %451
  tail call fastcc void @usage()
  unreachable

462:                                              ; preds = %451
  %463 = select i1 %458, i1 true, i1 %459
  %464 = or i1 %463, %457
  br i1 %464, label %466, label %465

465:                                              ; preds = %9, %462
  tail call fastcc void @usage()
  unreachable

466:                                              ; preds = %462
  br i1 %457, label %467, label %478

467:                                              ; preds = %466
  %468 = sext i32 %456 to i64
  %469 = getelementptr inbounds ptr, ptr %1, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !6
  %471 = tail call ptr @fopen(ptr noundef %470, ptr noundef nonnull @.str.10)
  store ptr %471, ptr @infile, align 8, !tbaa !6
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %480

473:                                              ; preds = %467
  %474 = load ptr, ptr @stderr, align 8, !tbaa !6
  %475 = load ptr, ptr @progname, align 8, !tbaa !6
  %476 = load ptr, ptr %469, align 8, !tbaa !6
  %477 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %474, ptr noundef nonnull @.str.4, ptr noundef %475, ptr noundef %476) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

478:                                              ; preds = %466
  %479 = load ptr, ptr @stdin, align 8, !tbaa !6
  store ptr %479, ptr @infile, align 8, !tbaa !6
  br label %480

480:                                              ; preds = %467, %478
  %481 = add nsw i32 %0, -1
  %482 = icmp slt i32 %456, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = load ptr, ptr @stderr, align 8, !tbaa !6
  %485 = load ptr, ptr @progname, align 8, !tbaa !6
  %486 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %484, ptr noundef nonnull @.str.11, ptr noundef %485) #9
  tail call fastcc void @usage()
  unreachable

487:                                              ; preds = %480
  %488 = load ptr, ptr @stdout, align 8, !tbaa !6
  store ptr %488, ptr @outfile, align 8, !tbaa !6
  br i1 %458, label %519, label %489

489:                                              ; preds = %487
  %490 = tail call noalias dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #11
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load ptr, ptr @stderr, align 8, !tbaa !6
  %494 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %493, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

495:                                              ; preds = %489
  %496 = load ptr, ptr @stdin, align 8
  %497 = select i1 %459, ptr %453, ptr %496
  %498 = tail call signext i32 @getc(ptr noundef %497)
  %499 = icmp eq i32 %498, -1
  br i1 %499, label %515, label %500

500:                                              ; preds = %495, %507
  %501 = phi i64 [ %509, %507 ], [ 0, %495 ]
  %502 = phi i32 [ %511, %507 ], [ %498, %495 ]
  %503 = icmp eq i64 %501, 65000
  br i1 %503, label %504, label %507

504:                                              ; preds = %500
  %505 = load ptr, ptr @stderr, align 8, !tbaa !6
  %506 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %505, ptr noundef nonnull @.str.12, i32 noundef signext 65000) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

507:                                              ; preds = %500
  %508 = trunc i32 %502 to i8
  %509 = add nuw nsw i64 %501, 1
  %510 = getelementptr inbounds i8, ptr %490, i64 %501
  store i8 %508, ptr %510, align 1, !tbaa !10
  %511 = tail call signext i32 @getc(ptr noundef %497)
  %512 = icmp eq i32 %511, -1
  br i1 %512, label %513, label %500

513:                                              ; preds = %507
  %514 = trunc nuw nsw i64 %509 to i32
  br label %515

515:                                              ; preds = %513, %495
  %516 = phi i32 [ 0, %495 ], [ %514, %513 ]
  br i1 %459, label %517, label %519

517:                                              ; preds = %515
  %518 = tail call signext i32 @fclose(ptr noundef nonnull %453)
  br label %519

519:                                              ; preds = %515, %517, %487
  %520 = phi ptr [ %452, %487 ], [ %490, %517 ], [ %490, %515 ]
  %521 = phi i32 [ %454, %487 ], [ %516, %517 ], [ %516, %515 ]
  %522 = load ptr, ptr @infile, align 8, !tbaa !6
  %523 = tail call signext i32 @getc(ptr noundef %522)
  %524 = load ptr, ptr @infile, align 8, !tbaa !6
  %525 = tail call signext i32 @getc(ptr noundef %524)
  %526 = icmp ne i32 %523, 255
  %527 = icmp ne i32 %525, 216
  %528 = or i1 %526, %527
  br i1 %528, label %529, label %532

529:                                              ; preds = %519
  %530 = load ptr, ptr @stderr, align 8, !tbaa !6
  %531 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %530, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

532:                                              ; preds = %519
  %533 = load ptr, ptr @outfile, align 8, !tbaa !6
  %534 = tail call signext i32 @putc(i32 noundef signext 255, ptr noundef %533)
  %535 = load ptr, ptr @outfile, align 8, !tbaa !6
  %536 = tail call signext i32 @putc(i32 noundef signext 216, ptr noundef %535)
  %537 = load ptr, ptr @infile, align 8, !tbaa !6
  %538 = tail call signext i32 @getc(ptr noundef %537)
  %539 = icmp eq i32 %538, -1
  br i1 %539, label %586, label %540

540:                                              ; preds = %532
  %541 = icmp eq i32 %455, 0
  br i1 %541, label %542, label %589

542:                                              ; preds = %540, %551
  %543 = phi i32 [ %552, %551 ], [ %538, %540 ]
  %544 = phi i32 [ %553, %551 ], [ 0, %540 ]
  %545 = icmp eq i32 %543, 255
  br i1 %545, label %554, label %546

546:                                              ; preds = %542
  %547 = add nuw nsw i32 %544, 1
  %548 = load ptr, ptr @infile, align 8, !tbaa !6
  %549 = tail call signext i32 @getc(ptr noundef %548)
  %550 = icmp eq i32 %549, -1
  br i1 %550, label %601, label %551

551:                                              ; preds = %546, %582
  %552 = phi i32 [ %549, %546 ], [ %584, %582 ]
  %553 = phi i32 [ %547, %546 ], [ 0, %582 ]
  br label %542

554:                                              ; preds = %542, %554
  %555 = load ptr, ptr @infile, align 8, !tbaa !6
  %556 = tail call signext i32 @getc(ptr noundef %555)
  switch i32 %556, label %557 [
    i32 -1, label %607
    i32 255, label %554
  ]

557:                                              ; preds = %554
  %558 = icmp eq i32 %544, 0
  br i1 %558, label %562, label %559

559:                                              ; preds = %557
  %560 = load ptr, ptr @stderr, align 8, !tbaa !6
  %561 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr %560) #14
  br label %562

562:                                              ; preds = %559, %557
  switch i32 %556, label %577 [
    i32 192, label %633
    i32 193, label %633
    i32 194, label %633
    i32 195, label %633
    i32 197, label %633
    i32 198, label %633
    i32 199, label %633
    i32 201, label %633
    i32 202, label %633
    i32 203, label %633
    i32 205, label %633
    i32 206, label %633
    i32 207, label %633
    i32 218, label %616
    i32 217, label %633
    i32 254, label %563
  ]

563:                                              ; preds = %562
  %564 = tail call fastcc signext i32 @read_2_bytes()
  %565 = icmp ult i32 %564, 2
  br i1 %565, label %619, label %566

566:                                              ; preds = %563
  %567 = add i32 %564, -2
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %582, label %569

569:                                              ; preds = %566, %574
  %570 = phi i32 [ %575, %574 ], [ %567, %566 ]
  %571 = load ptr, ptr @infile, align 8, !tbaa !6
  %572 = tail call signext i32 @getc(ptr noundef %571)
  %573 = icmp eq i32 %572, -1
  br i1 %573, label %622, label %574

574:                                              ; preds = %569
  %575 = add i32 %570, -1
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %582, label %569

577:                                              ; preds = %562
  %578 = load ptr, ptr @outfile, align 8, !tbaa !6
  %579 = tail call signext i32 @putc(i32 noundef signext 255, ptr noundef %578)
  %580 = load ptr, ptr @outfile, align 8, !tbaa !6
  %581 = tail call signext i32 @putc(i32 noundef signext %556, ptr noundef %580)
  tail call fastcc void @copy_variable()
  br label %582

582:                                              ; preds = %574, %577, %566
  %583 = load ptr, ptr @infile, align 8, !tbaa !6
  %584 = tail call signext i32 @getc(ptr noundef %583)
  %585 = icmp eq i32 %584, -1
  br i1 %585, label %586, label %551

586:                                              ; preds = %625, %582, %532
  %587 = load ptr, ptr @stderr, align 8, !tbaa !6
  %588 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %587, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

589:                                              ; preds = %540, %598
  %590 = phi i32 [ %599, %598 ], [ %538, %540 ]
  %591 = phi i32 [ %600, %598 ], [ 0, %540 ]
  %592 = icmp eq i32 %590, 255
  br i1 %592, label %604, label %593

593:                                              ; preds = %589
  %594 = add nuw nsw i32 %591, 1
  %595 = load ptr, ptr @infile, align 8, !tbaa !6
  %596 = tail call signext i32 @getc(ptr noundef %595)
  %597 = icmp eq i32 %596, -1
  br i1 %597, label %601, label %598

598:                                              ; preds = %593, %625
  %599 = phi i32 [ %596, %593 ], [ %631, %625 ]
  %600 = phi i32 [ %594, %593 ], [ 0, %625 ]
  br label %589

601:                                              ; preds = %593, %546
  %602 = load ptr, ptr @stderr, align 8, !tbaa !6
  %603 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %602, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

604:                                              ; preds = %589, %604
  %605 = load ptr, ptr @infile, align 8, !tbaa !6
  %606 = tail call signext i32 @getc(ptr noundef %605)
  switch i32 %606, label %610 [
    i32 -1, label %607
    i32 255, label %604
  ]

607:                                              ; preds = %604, %554
  %608 = load ptr, ptr @stderr, align 8, !tbaa !6
  %609 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %608, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

610:                                              ; preds = %604
  %611 = icmp eq i32 %591, 0
  br i1 %611, label %615, label %612

612:                                              ; preds = %610
  %613 = load ptr, ptr @stderr, align 8, !tbaa !6
  %614 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr %613) #14
  br label %615

615:                                              ; preds = %612, %610
  switch i32 %606, label %625 [
    i32 192, label %633
    i32 193, label %633
    i32 194, label %633
    i32 195, label %633
    i32 197, label %633
    i32 198, label %633
    i32 199, label %633
    i32 201, label %633
    i32 202, label %633
    i32 203, label %633
    i32 205, label %633
    i32 206, label %633
    i32 207, label %633
    i32 218, label %616
    i32 217, label %633
  ]

616:                                              ; preds = %615, %562
  %617 = load ptr, ptr @stderr, align 8, !tbaa !6
  %618 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %617, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

619:                                              ; preds = %563
  %620 = load ptr, ptr @stderr, align 8, !tbaa !6
  %621 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %620, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

622:                                              ; preds = %569
  %623 = load ptr, ptr @stderr, align 8, !tbaa !6
  %624 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

625:                                              ; preds = %615
  %626 = load ptr, ptr @outfile, align 8, !tbaa !6
  %627 = tail call signext i32 @putc(i32 noundef signext 255, ptr noundef %626)
  %628 = load ptr, ptr @outfile, align 8, !tbaa !6
  %629 = tail call signext i32 @putc(i32 noundef signext %606, ptr noundef %628)
  tail call fastcc void @copy_variable()
  %630 = load ptr, ptr @infile, align 8, !tbaa !6
  %631 = tail call signext i32 @getc(ptr noundef %630)
  %632 = icmp eq i32 %631, -1
  br i1 %632, label %586, label %598

633:                                              ; preds = %615, %615, %615, %615, %615, %615, %615, %615, %615, %615, %615, %615, %615, %615, %562, %562, %562, %562, %562, %562, %562, %562, %562, %562, %562, %562, %562, %562
  %634 = phi i32 [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %556, %562 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ], [ %606, %615 ]
  %635 = icmp eq i32 %521, 0
  br i1 %635, label %659, label %636

636:                                              ; preds = %633
  %637 = load ptr, ptr @outfile, align 8, !tbaa !6
  %638 = tail call signext i32 @putc(i32 noundef signext 255, ptr noundef %637)
  %639 = load ptr, ptr @outfile, align 8, !tbaa !6
  %640 = tail call signext i32 @putc(i32 noundef signext 254, ptr noundef %639)
  %641 = add i32 %521, 2
  %642 = lshr i32 %641, 8
  %643 = and i32 %642, 255
  %644 = load ptr, ptr @outfile, align 8, !tbaa !6
  %645 = tail call signext i32 @putc(i32 noundef signext %643, ptr noundef %644)
  %646 = and i32 %641, 255
  %647 = load ptr, ptr @outfile, align 8, !tbaa !6
  %648 = tail call signext i32 @putc(i32 noundef signext %646, ptr noundef %647)
  br label %649

649:                                              ; preds = %636, %649
  %650 = phi i32 [ %521, %636 ], [ %657, %649 ]
  %651 = phi ptr [ %520, %636 ], [ %652, %649 ]
  %652 = getelementptr inbounds i8, ptr %651, i64 1
  %653 = load i8, ptr %651, align 1, !tbaa !10
  %654 = zext i8 %653 to i32
  %655 = load ptr, ptr @outfile, align 8, !tbaa !6
  %656 = tail call signext i32 @putc(i32 noundef signext %654, ptr noundef %655)
  %657 = add i32 %650, -1
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %649

659:                                              ; preds = %649, %633
  tail call fastcc void @write_marker(i32 noundef signext %634)
  tail call fastcc void @copy_rest_of_file()
  tail call void @exit(i32 noundef signext 0) #10
  unreachable
}

; Function Attrs: noreturn nounwind
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %1) #14
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %3) #14
  %5 = load ptr, ptr @stderr, align 8, !tbaa !6
  %6 = load ptr, ptr @progname, align 8, !tbaa !6
  %7 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %6) #9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %10) #14
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %12) #14
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %14) #14
  %16 = load ptr, ptr @stderr, align 8, !tbaa !6
  %17 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %16) #14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %18) #14
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %20) #14
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %22) #14
  %24 = load ptr, ptr @stderr, align 8, !tbaa !6
  %25 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %24) #14
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.25, i32 noundef signext 65000) #9
  %28 = load ptr, ptr @stderr, align 8, !tbaa !6
  %29 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %28) #14
  %30 = load ptr, ptr @stderr, align 8, !tbaa !6
  %31 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %30) #14
  tail call void @exit(i32 noundef signext 1) #10
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define internal fastcc void @write_marker(i32 noundef signext %0) unnamed_addr #1 {
  %2 = load ptr, ptr @outfile, align 8, !tbaa !6
  %3 = tail call signext i32 @putc(i32 noundef signext 255, ptr noundef %2)
  %4 = load ptr, ptr @outfile, align 8, !tbaa !6
  %5 = tail call signext i32 @putc(i32 noundef signext %0, ptr noundef %4)
  ret void
}

; Function Attrs: nofree nounwind
define internal fastcc void @copy_rest_of_file() unnamed_addr #1 {
  %1 = load ptr, ptr @infile, align 8, !tbaa !6
  %2 = tail call signext i32 @getc(ptr noundef %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %11, label %4

4:                                                ; preds = %0, %4
  %5 = phi i32 [ %9, %4 ], [ %2, %0 ]
  %6 = load ptr, ptr @outfile, align 8, !tbaa !6
  %7 = tail call signext i32 @putc(i32 noundef signext %5, ptr noundef %6)
  %8 = load ptr, ptr @infile, align 8, !tbaa !6
  %9 = tail call signext i32 @getc(ptr noundef %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: nounwind
define internal fastcc void @copy_variable() unnamed_addr #6 {
  %1 = tail call fastcc signext i32 @read_2_bytes()
  %2 = lshr i32 %1, 8
  %3 = and i32 %2, 255
  %4 = load ptr, ptr @outfile, align 8, !tbaa !6
  %5 = tail call signext i32 @putc(i32 noundef signext %3, ptr noundef %4)
  %6 = and i32 %1, 255
  %7 = load ptr, ptr @outfile, align 8, !tbaa !6
  %8 = tail call signext i32 @putc(i32 noundef signext %6, ptr noundef %7)
  %9 = icmp ult i32 %1, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load ptr, ptr @stderr, align 8, !tbaa !6
  %12 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

13:                                               ; preds = %0
  %14 = add i32 %1, -2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %24
  %17 = phi i32 [ %27, %24 ], [ %14, %13 ]
  %18 = load ptr, ptr @infile, align 8, !tbaa !6
  %19 = tail call signext i32 @getc(ptr noundef %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

24:                                               ; preds = %16
  %25 = load ptr, ptr @outfile, align 8, !tbaa !6
  %26 = tail call signext i32 @putc(i32 noundef signext %19, ptr noundef %25)
  %27 = add i32 %17, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %16

29:                                               ; preds = %24, %13
  ret void
}

; Function Attrs: nounwind
define internal fastcc noundef signext i32 @read_2_bytes() unnamed_addr #6 {
  %1 = load ptr, ptr @infile, align 8, !tbaa !6
  %2 = tail call signext i32 @getc(ptr noundef %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @stderr, align 8, !tbaa !6
  %6 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

7:                                                ; preds = %0
  %8 = load ptr, ptr @infile, align 8, !tbaa !6
  %9 = tail call signext i32 @getc(ptr noundef %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  tail call void @exit(i32 noundef signext 1) #10
  unreachable

14:                                               ; preds = %7
  %15 = shl i32 %2, 8
  %16 = add i32 %9, %15
  ret i32 %16
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }

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
