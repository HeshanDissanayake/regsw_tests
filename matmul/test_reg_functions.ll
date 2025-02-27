; ModuleID = 'test_reg_functions.c'
source_filename = "test_reg_functions.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-unknown"

@A = dso_local global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], [8 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [8 x i32] [i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24], [8 x i32] [i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32], [8 x i32] [i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40], [8 x i32] [i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48], [8 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56], [8 x i32] [i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64]], align 4
@B = dso_local local_unnamed_addr global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], [8 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [8 x i32] [i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24], [8 x i32] [i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32], [8 x i32] [i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40], [8 x i32] [i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48], [8 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56], [8 x i32] [i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64]], align 4
@C = dso_local local_unnamed_addr global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], [8 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [8 x i32] [i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24], [8 x i32] [i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32], [8 x i32] [i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40], [8 x i32] [i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48], [8 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56], [8 x i32] [i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64]], align 4

; Function Attrs: nounwind
define dso_local signext i32 @main() local_unnamed_addr #0 {
  tail call void asm sideeffect "sw x0, 123(x0)\0A", ""() #1, !srcloc !4
  tail call void asm sideeffect "mv t0, $0\0A", "r,~{x5}"(i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @A, i64 0, i64 0, i64 0)) #1, !srcloc !5
  tail call void asm sideeffect "sw x1, $0(x28)\0A", "i"(i32 32) #1, !srcloc !6
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 0) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 4) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 8) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 12) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 16) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 20) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 24) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 28) #1, !srcloc !7
  tail call void asm sideeffect "sw x1, 32(x28)\0A", ""() #1, !srcloc !8
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "addi x28, x28, 1\0A", ""() #1, !srcloc !9
  tail call void asm sideeffect "mv t0, $0\0A", "r,~{x5}"(i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @A, i64 0, i64 0, i64 0)) #1, !srcloc !10
  tail call void asm sideeffect "sw x1, $0(x28)\0A", "i"(i32 32) #1, !srcloc !11
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 0) #1, !srcloc !12
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 4) #1, !srcloc !12
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 8) #1, !srcloc !12
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 12) #1, !srcloc !12
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 16) #1, !srcloc !12
  tail call void asm sideeffect "sw x28, $0(t0)\0A", "i"(i32 20) #1, !srcloc !12
  tail call void asm sideeffect "mv t0, $0\0A", "r,~{x5}"(i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @A, i64 0, i64 0, i64 0)) #1, !srcloc !5
  tail call void asm sideeffect "sw x1, $0(x28)\0A", "i"(i32 32) #1, !srcloc !6
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 0) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 4) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 8) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 12) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 16) #1, !srcloc !7
  tail call void asm sideeffect "lw x28, $0(t0)\0A", "i"(i32 20) #1, !srcloc !7
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!4 = !{i64 13732}
!5 = !{i64 13941}
!6 = !{i64 14111}
!7 = !{i64 14291}
!8 = !{i64 184}
!9 = !{i64 348}
!10 = !{i64 14536}
!11 = !{i64 14706}
!12 = !{i64 14885}
