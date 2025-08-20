; ModuleID = 'jidctflt.c'
source_filename = "jidctflt.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [64 x float], align 4
  %7 = getelementptr inbounds i8, ptr %0, i64 424
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #3
  %9 = getelementptr inbounds i8, ptr %1, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %14

11:                                               ; preds = %140
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %149

14:                                               ; preds = %5, %140
  %15 = phi i32 [ 8, %5 ], [ %147, %140 ]
  %16 = phi ptr [ %6, %5 ], [ %144, %140 ]
  %17 = phi ptr [ %10, %5 ], [ %145, %140 ]
  %18 = phi ptr [ %2, %5 ], [ %146, %140 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 16
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i8, ptr %18, i64 32
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %57

26:                                               ; preds = %14
  %27 = getelementptr inbounds i8, ptr %18, i64 48
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %18, i64 64
  %32 = load i16, ptr %31, align 2, !tbaa !16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %18, i64 80
  %36 = load i16, ptr %35, align 2, !tbaa !16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %18, i64 96
  %40 = load i16, ptr %39, align 2, !tbaa !16
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %18, i64 112
  %44 = load i16, ptr %43, align 2, !tbaa !16
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i16, ptr %18, align 2, !tbaa !16
  %48 = sitofp i16 %47 to float
  %49 = load float, ptr %17, align 4, !tbaa !17
  %50 = fmul float %49, %48
  store float %50, ptr %16, align 4, !tbaa !17
  %51 = getelementptr inbounds i8, ptr %16, i64 32
  store float %50, ptr %51, align 4, !tbaa !17
  %52 = getelementptr inbounds i8, ptr %16, i64 64
  store float %50, ptr %52, align 4, !tbaa !17
  %53 = getelementptr inbounds i8, ptr %16, i64 96
  store float %50, ptr %53, align 4, !tbaa !17
  %54 = getelementptr inbounds i8, ptr %16, i64 128
  store float %50, ptr %54, align 4, !tbaa !17
  %55 = getelementptr inbounds i8, ptr %16, i64 160
  store float %50, ptr %55, align 4, !tbaa !17
  %56 = getelementptr inbounds i8, ptr %16, i64 192
  store float %50, ptr %56, align 4, !tbaa !17
  br label %140

57:                                               ; preds = %14, %42, %38, %34, %30, %26
  %58 = phi i16 [ 0, %42 ], [ 0, %38 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ %23, %14 ]
  %59 = load i16, ptr %18, align 2, !tbaa !16
  %60 = sitofp i16 %59 to float
  %61 = load float, ptr %17, align 4, !tbaa !17
  %62 = fmul float %61, %60
  %63 = sitofp i16 %58 to float
  %64 = getelementptr inbounds i8, ptr %17, i64 64
  %65 = load float, ptr %64, align 4, !tbaa !17
  %66 = fmul float %65, %63
  %67 = getelementptr inbounds i8, ptr %18, i64 64
  %68 = load i16, ptr %67, align 2, !tbaa !16
  %69 = sitofp i16 %68 to float
  %70 = getelementptr inbounds i8, ptr %17, i64 128
  %71 = load float, ptr %70, align 4, !tbaa !17
  %72 = fmul float %71, %69
  %73 = getelementptr inbounds i8, ptr %18, i64 96
  %74 = load i16, ptr %73, align 2, !tbaa !16
  %75 = sitofp i16 %74 to float
  %76 = getelementptr inbounds i8, ptr %17, i64 192
  %77 = load float, ptr %76, align 4, !tbaa !17
  %78 = fmul float %77, %75
  %79 = fadd float %62, %72
  %80 = fsub float %62, %72
  %81 = fadd float %66, %78
  %82 = fsub float %66, %78
  %83 = fneg float %81
  %84 = tail call float @llvm.fmuladd.f32(float %82, float 0x3FF6A09E60000000, float %83)
  %85 = fadd float %79, %81
  %86 = fsub float %79, %81
  %87 = fadd float %80, %84
  %88 = fsub float %80, %84
  %89 = sitofp i16 %20 to float
  %90 = getelementptr inbounds i8, ptr %17, i64 32
  %91 = load float, ptr %90, align 4, !tbaa !17
  %92 = fmul float %91, %89
  %93 = getelementptr inbounds i8, ptr %18, i64 48
  %94 = load i16, ptr %93, align 2, !tbaa !16
  %95 = sitofp i16 %94 to float
  %96 = getelementptr inbounds i8, ptr %17, i64 96
  %97 = load float, ptr %96, align 4, !tbaa !17
  %98 = fmul float %97, %95
  %99 = getelementptr inbounds i8, ptr %18, i64 80
  %100 = load i16, ptr %99, align 2, !tbaa !16
  %101 = sitofp i16 %100 to float
  %102 = getelementptr inbounds i8, ptr %17, i64 160
  %103 = load float, ptr %102, align 4, !tbaa !17
  %104 = fmul float %103, %101
  %105 = getelementptr inbounds i8, ptr %18, i64 112
  %106 = load i16, ptr %105, align 2, !tbaa !16
  %107 = sitofp i16 %106 to float
  %108 = getelementptr inbounds i8, ptr %17, i64 224
  %109 = load float, ptr %108, align 4, !tbaa !17
  %110 = fmul float %109, %107
  %111 = fadd float %98, %104
  %112 = fsub float %104, %98
  %113 = fadd float %92, %110
  %114 = fsub float %92, %110
  %115 = fadd float %111, %113
  %116 = fsub float %113, %111
  %117 = fmul float %116, 0x3FF6A09E60000000
  %118 = fadd float %112, %114
  %119 = fmul float %118, 0x3FFD906BC0000000
  %120 = fneg float %119
  %121 = tail call float @llvm.fmuladd.f32(float %114, float 0x3FF1517A80000000, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %112, float 0xC004E7AEA0000000, float %119)
  %123 = fsub float %122, %115
  %124 = fsub float %117, %123
  %125 = fadd float %121, %124
  %126 = fadd float %85, %115
  store float %126, ptr %16, align 4, !tbaa !17
  %127 = fsub float %85, %115
  %128 = getelementptr inbounds i8, ptr %16, i64 224
  store float %127, ptr %128, align 4, !tbaa !17
  %129 = fadd float %87, %123
  %130 = getelementptr inbounds i8, ptr %16, i64 32
  store float %129, ptr %130, align 4, !tbaa !17
  %131 = fsub float %87, %123
  %132 = getelementptr inbounds i8, ptr %16, i64 192
  store float %131, ptr %132, align 4, !tbaa !17
  %133 = fadd float %88, %124
  %134 = getelementptr inbounds i8, ptr %16, i64 64
  store float %133, ptr %134, align 4, !tbaa !17
  %135 = fsub float %88, %124
  %136 = getelementptr inbounds i8, ptr %16, i64 160
  store float %135, ptr %136, align 4, !tbaa !17
  %137 = fadd float %86, %125
  %138 = getelementptr inbounds i8, ptr %16, i64 128
  store float %137, ptr %138, align 4, !tbaa !17
  %139 = fsub float %86, %125
  br label %140

140:                                              ; preds = %57, %46
  %141 = phi i64 [ 96, %57 ], [ 224, %46 ]
  %142 = phi float [ %139, %57 ], [ %50, %46 ]
  %143 = getelementptr inbounds i8, ptr %16, i64 %141
  store float %142, ptr %143, align 4, !tbaa !17
  %144 = getelementptr inbounds i8, ptr %16, i64 4
  %145 = getelementptr inbounds i8, ptr %17, i64 4
  %146 = getelementptr inbounds i8, ptr %18, i64 2
  %147 = add nsw i32 %15, -1
  %148 = icmp ugt i32 %15, 1
  br i1 %148, label %14, label %11, !llvm.loop !19

149:                                              ; preds = %11, %149
  %150 = phi i64 [ 0, %11 ], [ %259, %149 ]
  %151 = phi ptr [ %6, %11 ], [ %258, %149 ]
  %152 = getelementptr inbounds ptr, ptr %3, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !21
  %154 = getelementptr inbounds i8, ptr %153, i64 %13
  %155 = load float, ptr %151, align 4, !tbaa !17
  %156 = getelementptr inbounds i8, ptr %151, i64 16
  %157 = load float, ptr %156, align 4, !tbaa !17
  %158 = fadd float %155, %157
  %159 = fsub float %155, %157
  %160 = getelementptr inbounds i8, ptr %151, i64 8
  %161 = load float, ptr %160, align 4, !tbaa !17
  %162 = getelementptr inbounds i8, ptr %151, i64 24
  %163 = load float, ptr %162, align 4, !tbaa !17
  %164 = fadd float %161, %163
  %165 = fsub float %161, %163
  %166 = fneg float %164
  %167 = tail call float @llvm.fmuladd.f32(float %165, float 0x3FF6A09E60000000, float %166)
  %168 = fadd float %158, %164
  %169 = fsub float %158, %164
  %170 = fadd float %159, %167
  %171 = fsub float %159, %167
  %172 = getelementptr inbounds i8, ptr %151, i64 20
  %173 = load float, ptr %172, align 4, !tbaa !17
  %174 = getelementptr inbounds i8, ptr %151, i64 12
  %175 = load float, ptr %174, align 4, !tbaa !17
  %176 = fadd float %173, %175
  %177 = fsub float %173, %175
  %178 = getelementptr inbounds i8, ptr %151, i64 4
  %179 = load float, ptr %178, align 4, !tbaa !17
  %180 = getelementptr inbounds i8, ptr %151, i64 28
  %181 = load float, ptr %180, align 4, !tbaa !17
  %182 = fadd float %179, %181
  %183 = fsub float %179, %181
  %184 = fadd float %176, %182
  %185 = fsub float %182, %176
  %186 = fmul float %185, 0x3FF6A09E60000000
  %187 = fadd float %177, %183
  %188 = fmul float %187, 0x3FFD906BC0000000
  %189 = fneg float %188
  %190 = tail call float @llvm.fmuladd.f32(float %183, float 0x3FF1517A80000000, float %189)
  %191 = tail call float @llvm.fmuladd.f32(float %177, float 0xC004E7AEA0000000, float %188)
  %192 = fsub float %191, %184
  %193 = fsub float %186, %192
  %194 = fadd float %190, %193
  %195 = fadd float %168, %184
  %196 = fptosi float %195 to i64
  %197 = add i64 %196, 4
  %198 = lshr i64 %197, 3
  %199 = and i64 %198, 1023
  %200 = getelementptr inbounds i8, ptr %12, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !22
  store i8 %201, ptr %154, align 1, !tbaa !22
  %202 = fsub float %168, %184
  %203 = fptosi float %202 to i64
  %204 = add i64 %203, 4
  %205 = lshr i64 %204, 3
  %206 = and i64 %205, 1023
  %207 = getelementptr inbounds i8, ptr %12, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !22
  %209 = getelementptr inbounds i8, ptr %154, i64 7
  store i8 %208, ptr %209, align 1, !tbaa !22
  %210 = fadd float %170, %192
  %211 = fptosi float %210 to i64
  %212 = add i64 %211, 4
  %213 = lshr i64 %212, 3
  %214 = and i64 %213, 1023
  %215 = getelementptr inbounds i8, ptr %12, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !22
  %217 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 %216, ptr %217, align 1, !tbaa !22
  %218 = fsub float %170, %192
  %219 = fptosi float %218 to i64
  %220 = add i64 %219, 4
  %221 = lshr i64 %220, 3
  %222 = and i64 %221, 1023
  %223 = getelementptr inbounds i8, ptr %12, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !22
  %225 = getelementptr inbounds i8, ptr %154, i64 6
  store i8 %224, ptr %225, align 1, !tbaa !22
  %226 = fadd float %171, %193
  %227 = fptosi float %226 to i64
  %228 = add i64 %227, 4
  %229 = lshr i64 %228, 3
  %230 = and i64 %229, 1023
  %231 = getelementptr inbounds i8, ptr %12, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !22
  %233 = getelementptr inbounds i8, ptr %154, i64 2
  store i8 %232, ptr %233, align 1, !tbaa !22
  %234 = fsub float %171, %193
  %235 = fptosi float %234 to i64
  %236 = add i64 %235, 4
  %237 = lshr i64 %236, 3
  %238 = and i64 %237, 1023
  %239 = getelementptr inbounds i8, ptr %12, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !22
  %241 = getelementptr inbounds i8, ptr %154, i64 5
  store i8 %240, ptr %241, align 1, !tbaa !22
  %242 = fadd float %169, %194
  %243 = fptosi float %242 to i64
  %244 = add i64 %243, 4
  %245 = lshr i64 %244, 3
  %246 = and i64 %245, 1023
  %247 = getelementptr inbounds i8, ptr %12, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !22
  %249 = getelementptr inbounds i8, ptr %154, i64 4
  store i8 %248, ptr %249, align 1, !tbaa !22
  %250 = fsub float %169, %194
  %251 = fptosi float %250 to i64
  %252 = add i64 %251, 4
  %253 = lshr i64 %252, 3
  %254 = and i64 %253, 1023
  %255 = getelementptr inbounds i8, ptr %12, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !22
  %257 = getelementptr inbounds i8, ptr %154, i64 3
  store i8 %256, ptr %257, align 1, !tbaa !22
  %258 = getelementptr inbounds i8, ptr %151, i64 32
  %259 = add nuw nsw i64 %150, 1
  %260 = icmp eq i64 %259, 8
  br i1 %260, label %261, label %149, !llvm.loop !23

261:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 424}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 88}
!15 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !9, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!8, !8, i64 0}
!22 = !{!9, !9, i64 0}
!23 = distinct !{!23, !20}
