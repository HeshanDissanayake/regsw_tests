; ModuleID = 'getvlc.c'
source_filename = "getvlc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.VLCtab = type { i32, i32 }

@DCT3Dtab0 = dso_local local_unnamed_addr global [112 x %struct.VLCtab] [%struct.VLCtab { i32 4225, i32 7 }, %struct.VLCtab { i32 4209, i32 7 }, %struct.VLCtab { i32 4193, i32 7 }, %struct.VLCtab { i32 4177, i32 7 }, %struct.VLCtab { i32 193, i32 7 }, %struct.VLCtab { i32 177, i32 7 }, %struct.VLCtab { i32 161, i32 7 }, %struct.VLCtab { i32 4, i32 7 }, %struct.VLCtab { i32 4161, i32 6 }, %struct.VLCtab { i32 4161, i32 6 }, %struct.VLCtab { i32 4145, i32 6 }, %struct.VLCtab { i32 4145, i32 6 }, %struct.VLCtab { i32 4129, i32 6 }, %struct.VLCtab { i32 4129, i32 6 }, %struct.VLCtab { i32 4113, i32 6 }, %struct.VLCtab { i32 4113, i32 6 }, %struct.VLCtab { i32 145, i32 6 }, %struct.VLCtab { i32 145, i32 6 }, %struct.VLCtab { i32 129, i32 6 }, %struct.VLCtab { i32 129, i32 6 }, %struct.VLCtab { i32 113, i32 6 }, %struct.VLCtab { i32 113, i32 6 }, %struct.VLCtab { i32 97, i32 6 }, %struct.VLCtab { i32 97, i32 6 }, %struct.VLCtab { i32 18, i32 6 }, %struct.VLCtab { i32 18, i32 6 }, %struct.VLCtab { i32 3, i32 6 }, %struct.VLCtab { i32 3, i32 6 }, %struct.VLCtab { i32 81, i32 5 }, %struct.VLCtab { i32 81, i32 5 }, %struct.VLCtab { i32 81, i32 5 }, %struct.VLCtab { i32 81, i32 5 }, %struct.VLCtab { i32 65, i32 5 }, %struct.VLCtab { i32 65, i32 5 }, %struct.VLCtab { i32 65, i32 5 }, %struct.VLCtab { i32 65, i32 5 }, %struct.VLCtab { i32 49, i32 5 }, %struct.VLCtab { i32 49, i32 5 }, %struct.VLCtab { i32 49, i32 5 }, %struct.VLCtab { i32 49, i32 5 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 4097, i32 4 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 17, i32 3 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 33, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }], align 4
@DCT3Dtab1 = dso_local local_unnamed_addr global [96 x %struct.VLCtab] [%struct.VLCtab { i32 9, i32 10 }, %struct.VLCtab { i32 8, i32 10 }, %struct.VLCtab { i32 4481, i32 9 }, %struct.VLCtab { i32 4481, i32 9 }, %struct.VLCtab { i32 4465, i32 9 }, %struct.VLCtab { i32 4465, i32 9 }, %struct.VLCtab { i32 4449, i32 9 }, %struct.VLCtab { i32 4449, i32 9 }, %struct.VLCtab { i32 4433, i32 9 }, %struct.VLCtab { i32 4433, i32 9 }, %struct.VLCtab { i32 4417, i32 9 }, %struct.VLCtab { i32 4417, i32 9 }, %struct.VLCtab { i32 4401, i32 9 }, %struct.VLCtab { i32 4401, i32 9 }, %struct.VLCtab { i32 4385, i32 9 }, %struct.VLCtab { i32 4385, i32 9 }, %struct.VLCtab { i32 4369, i32 9 }, %struct.VLCtab { i32 4369, i32 9 }, %struct.VLCtab { i32 4098, i32 9 }, %struct.VLCtab { i32 4098, i32 9 }, %struct.VLCtab { i32 353, i32 9 }, %struct.VLCtab { i32 353, i32 9 }, %struct.VLCtab { i32 337, i32 9 }, %struct.VLCtab { i32 337, i32 9 }, %struct.VLCtab { i32 321, i32 9 }, %struct.VLCtab { i32 321, i32 9 }, %struct.VLCtab { i32 305, i32 9 }, %struct.VLCtab { i32 305, i32 9 }, %struct.VLCtab { i32 289, i32 9 }, %struct.VLCtab { i32 289, i32 9 }, %struct.VLCtab { i32 273, i32 9 }, %struct.VLCtab { i32 273, i32 9 }, %struct.VLCtab { i32 257, i32 9 }, %struct.VLCtab { i32 257, i32 9 }, %struct.VLCtab { i32 241, i32 9 }, %struct.VLCtab { i32 241, i32 9 }, %struct.VLCtab { i32 66, i32 9 }, %struct.VLCtab { i32 66, i32 9 }, %struct.VLCtab { i32 50, i32 9 }, %struct.VLCtab { i32 50, i32 9 }, %struct.VLCtab { i32 7, i32 9 }, %struct.VLCtab { i32 7, i32 9 }, %struct.VLCtab { i32 6, i32 9 }, %struct.VLCtab { i32 6, i32 9 }, %struct.VLCtab { i32 4353, i32 8 }, %struct.VLCtab { i32 4353, i32 8 }, %struct.VLCtab { i32 4353, i32 8 }, %struct.VLCtab { i32 4353, i32 8 }, %struct.VLCtab { i32 4337, i32 8 }, %struct.VLCtab { i32 4337, i32 8 }, %struct.VLCtab { i32 4337, i32 8 }, %struct.VLCtab { i32 4337, i32 8 }, %struct.VLCtab { i32 4321, i32 8 }, %struct.VLCtab { i32 4321, i32 8 }, %struct.VLCtab { i32 4321, i32 8 }, %struct.VLCtab { i32 4321, i32 8 }, %struct.VLCtab { i32 4305, i32 8 }, %struct.VLCtab { i32 4305, i32 8 }, %struct.VLCtab { i32 4305, i32 8 }, %struct.VLCtab { i32 4305, i32 8 }, %struct.VLCtab { i32 4289, i32 8 }, %struct.VLCtab { i32 4289, i32 8 }, %struct.VLCtab { i32 4289, i32 8 }, %struct.VLCtab { i32 4289, i32 8 }, %struct.VLCtab { i32 4273, i32 8 }, %struct.VLCtab { i32 4273, i32 8 }, %struct.VLCtab { i32 4273, i32 8 }, %struct.VLCtab { i32 4273, i32 8 }, %struct.VLCtab { i32 4257, i32 8 }, %struct.VLCtab { i32 4257, i32 8 }, %struct.VLCtab { i32 4257, i32 8 }, %struct.VLCtab { i32 4257, i32 8 }, %struct.VLCtab { i32 4241, i32 8 }, %struct.VLCtab { i32 4241, i32 8 }, %struct.VLCtab { i32 4241, i32 8 }, %struct.VLCtab { i32 4241, i32 8 }, %struct.VLCtab { i32 225, i32 8 }, %struct.VLCtab { i32 225, i32 8 }, %struct.VLCtab { i32 225, i32 8 }, %struct.VLCtab { i32 225, i32 8 }, %struct.VLCtab { i32 209, i32 8 }, %struct.VLCtab { i32 209, i32 8 }, %struct.VLCtab { i32 209, i32 8 }, %struct.VLCtab { i32 209, i32 8 }, %struct.VLCtab { i32 34, i32 8 }, %struct.VLCtab { i32 34, i32 8 }, %struct.VLCtab { i32 34, i32 8 }, %struct.VLCtab { i32 34, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 5, i32 8 }, %struct.VLCtab { i32 5, i32 8 }, %struct.VLCtab { i32 5, i32 8 }, %struct.VLCtab { i32 5, i32 8 }], align 4
@DCT3Dtab2 = dso_local local_unnamed_addr global [120 x %struct.VLCtab] [%struct.VLCtab { i32 4114, i32 11 }, %struct.VLCtab { i32 4114, i32 11 }, %struct.VLCtab { i32 4099, i32 11 }, %struct.VLCtab { i32 4099, i32 11 }, %struct.VLCtab { i32 11, i32 11 }, %struct.VLCtab { i32 11, i32 11 }, %struct.VLCtab { i32 10, i32 11 }, %struct.VLCtab { i32 10, i32 11 }, %struct.VLCtab { i32 4545, i32 10 }, %struct.VLCtab { i32 4545, i32 10 }, %struct.VLCtab { i32 4545, i32 10 }, %struct.VLCtab { i32 4545, i32 10 }, %struct.VLCtab { i32 4529, i32 10 }, %struct.VLCtab { i32 4529, i32 10 }, %struct.VLCtab { i32 4529, i32 10 }, %struct.VLCtab { i32 4529, i32 10 }, %struct.VLCtab { i32 4513, i32 10 }, %struct.VLCtab { i32 4513, i32 10 }, %struct.VLCtab { i32 4513, i32 10 }, %struct.VLCtab { i32 4513, i32 10 }, %struct.VLCtab { i32 4497, i32 10 }, %struct.VLCtab { i32 4497, i32 10 }, %struct.VLCtab { i32 4497, i32 10 }, %struct.VLCtab { i32 4497, i32 10 }, %struct.VLCtab { i32 146, i32 10 }, %struct.VLCtab { i32 146, i32 10 }, %struct.VLCtab { i32 146, i32 10 }, %struct.VLCtab { i32 146, i32 10 }, %struct.VLCtab { i32 130, i32 10 }, %struct.VLCtab { i32 130, i32 10 }, %struct.VLCtab { i32 130, i32 10 }, %struct.VLCtab { i32 130, i32 10 }, %struct.VLCtab { i32 114, i32 10 }, %struct.VLCtab { i32 114, i32 10 }, %struct.VLCtab { i32 114, i32 10 }, %struct.VLCtab { i32 114, i32 10 }, %struct.VLCtab { i32 98, i32 10 }, %struct.VLCtab { i32 98, i32 10 }, %struct.VLCtab { i32 98, i32 10 }, %struct.VLCtab { i32 98, i32 10 }, %struct.VLCtab { i32 82, i32 10 }, %struct.VLCtab { i32 82, i32 10 }, %struct.VLCtab { i32 82, i32 10 }, %struct.VLCtab { i32 82, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 35, i32 10 }, %struct.VLCtab { i32 35, i32 10 }, %struct.VLCtab { i32 35, i32 10 }, %struct.VLCtab { i32 35, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 12, i32 11 }, %struct.VLCtab { i32 12, i32 11 }, %struct.VLCtab { i32 21, i32 11 }, %struct.VLCtab { i32 21, i32 11 }, %struct.VLCtab { i32 369, i32 11 }, %struct.VLCtab { i32 369, i32 11 }, %struct.VLCtab { i32 385, i32 11 }, %struct.VLCtab { i32 385, i32 11 }, %struct.VLCtab { i32 4561, i32 11 }, %struct.VLCtab { i32 4561, i32 11 }, %struct.VLCtab { i32 4577, i32 11 }, %struct.VLCtab { i32 4577, i32 11 }, %struct.VLCtab { i32 4593, i32 11 }, %struct.VLCtab { i32 4593, i32 11 }, %struct.VLCtab { i32 4609, i32 11 }, %struct.VLCtab { i32 4609, i32 11 }, %struct.VLCtab { i32 22, i32 12 }, %struct.VLCtab { i32 36, i32 12 }, %struct.VLCtab { i32 67, i32 12 }, %struct.VLCtab { i32 83, i32 12 }, %struct.VLCtab { i32 99, i32 12 }, %struct.VLCtab { i32 162, i32 12 }, %struct.VLCtab { i32 401, i32 12 }, %struct.VLCtab { i32 417, i32 12 }, %struct.VLCtab { i32 4625, i32 12 }, %struct.VLCtab { i32 4641, i32 12 }, %struct.VLCtab { i32 4657, i32 12 }, %struct.VLCtab { i32 4673, i32 12 }, %struct.VLCtab { i32 4689, i32 12 }, %struct.VLCtab { i32 4705, i32 12 }, %struct.VLCtab { i32 4721, i32 12 }, %struct.VLCtab { i32 4737, i32 12 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }, %struct.VLCtab { i32 7167, i32 7 }], align 4
@trace = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"motion_code (\00", align 1
@TMNMVtab0 = internal unnamed_addr constant [14 x %struct.VLCtab] [%struct.VLCtab { i32 3, i32 4 }, %struct.VLCtab { i32 61, i32 4 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 62, i32 3 }, %struct.VLCtab { i32 62, i32 3 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 1, i32 2 }, %struct.VLCtab { i32 63, i32 2 }, %struct.VLCtab { i32 63, i32 2 }, %struct.VLCtab { i32 63, i32 2 }, %struct.VLCtab { i32 63, i32 2 }], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"): %d\0A\00", align 1
@TMNMVtab1 = internal unnamed_addr constant [96 x %struct.VLCtab] [%struct.VLCtab { i32 12, i32 10 }, %struct.VLCtab { i32 52, i32 10 }, %struct.VLCtab { i32 11, i32 10 }, %struct.VLCtab { i32 53, i32 10 }, %struct.VLCtab { i32 10, i32 9 }, %struct.VLCtab { i32 10, i32 9 }, %struct.VLCtab { i32 54, i32 9 }, %struct.VLCtab { i32 54, i32 9 }, %struct.VLCtab { i32 9, i32 9 }, %struct.VLCtab { i32 9, i32 9 }, %struct.VLCtab { i32 55, i32 9 }, %struct.VLCtab { i32 55, i32 9 }, %struct.VLCtab { i32 8, i32 9 }, %struct.VLCtab { i32 8, i32 9 }, %struct.VLCtab { i32 56, i32 9 }, %struct.VLCtab { i32 56, i32 9 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 7, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 57, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 6, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 58, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 5, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 59, i32 7 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }, %struct.VLCtab { i32 60, i32 6 }], align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid motion_vector code\0A\00", align 1
@fault = external dso_local local_unnamed_addr global i32, align 4
@TMNMVtab2 = internal unnamed_addr constant [123 x %struct.VLCtab] [%struct.VLCtab { i32 32, i32 12 }, %struct.VLCtab { i32 31, i32 12 }, %struct.VLCtab { i32 33, i32 12 }, %struct.VLCtab { i32 30, i32 11 }, %struct.VLCtab { i32 30, i32 11 }, %struct.VLCtab { i32 34, i32 11 }, %struct.VLCtab { i32 34, i32 11 }, %struct.VLCtab { i32 29, i32 11 }, %struct.VLCtab { i32 29, i32 11 }, %struct.VLCtab { i32 35, i32 11 }, %struct.VLCtab { i32 35, i32 11 }, %struct.VLCtab { i32 28, i32 11 }, %struct.VLCtab { i32 28, i32 11 }, %struct.VLCtab { i32 36, i32 11 }, %struct.VLCtab { i32 36, i32 11 }, %struct.VLCtab { i32 27, i32 11 }, %struct.VLCtab { i32 27, i32 11 }, %struct.VLCtab { i32 37, i32 11 }, %struct.VLCtab { i32 37, i32 11 }, %struct.VLCtab { i32 26, i32 11 }, %struct.VLCtab { i32 26, i32 11 }, %struct.VLCtab { i32 38, i32 11 }, %struct.VLCtab { i32 38, i32 11 }, %struct.VLCtab { i32 25, i32 11 }, %struct.VLCtab { i32 25, i32 11 }, %struct.VLCtab { i32 39, i32 11 }, %struct.VLCtab { i32 39, i32 11 }, %struct.VLCtab { i32 24, i32 10 }, %struct.VLCtab { i32 24, i32 10 }, %struct.VLCtab { i32 24, i32 10 }, %struct.VLCtab { i32 24, i32 10 }, %struct.VLCtab { i32 40, i32 10 }, %struct.VLCtab { i32 40, i32 10 }, %struct.VLCtab { i32 40, i32 10 }, %struct.VLCtab { i32 40, i32 10 }, %struct.VLCtab { i32 23, i32 10 }, %struct.VLCtab { i32 23, i32 10 }, %struct.VLCtab { i32 23, i32 10 }, %struct.VLCtab { i32 23, i32 10 }, %struct.VLCtab { i32 41, i32 10 }, %struct.VLCtab { i32 41, i32 10 }, %struct.VLCtab { i32 41, i32 10 }, %struct.VLCtab { i32 41, i32 10 }, %struct.VLCtab { i32 22, i32 10 }, %struct.VLCtab { i32 22, i32 10 }, %struct.VLCtab { i32 22, i32 10 }, %struct.VLCtab { i32 22, i32 10 }, %struct.VLCtab { i32 42, i32 10 }, %struct.VLCtab { i32 42, i32 10 }, %struct.VLCtab { i32 42, i32 10 }, %struct.VLCtab { i32 42, i32 10 }, %struct.VLCtab { i32 21, i32 10 }, %struct.VLCtab { i32 21, i32 10 }, %struct.VLCtab { i32 21, i32 10 }, %struct.VLCtab { i32 21, i32 10 }, %struct.VLCtab { i32 43, i32 10 }, %struct.VLCtab { i32 43, i32 10 }, %struct.VLCtab { i32 43, i32 10 }, %struct.VLCtab { i32 43, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 20, i32 10 }, %struct.VLCtab { i32 44, i32 10 }, %struct.VLCtab { i32 44, i32 10 }, %struct.VLCtab { i32 44, i32 10 }, %struct.VLCtab { i32 44, i32 10 }, %struct.VLCtab { i32 19, i32 10 }, %struct.VLCtab { i32 19, i32 10 }, %struct.VLCtab { i32 19, i32 10 }, %struct.VLCtab { i32 19, i32 10 }, %struct.VLCtab { i32 45, i32 10 }, %struct.VLCtab { i32 45, i32 10 }, %struct.VLCtab { i32 45, i32 10 }, %struct.VLCtab { i32 45, i32 10 }, %struct.VLCtab { i32 18, i32 10 }, %struct.VLCtab { i32 18, i32 10 }, %struct.VLCtab { i32 18, i32 10 }, %struct.VLCtab { i32 18, i32 10 }, %struct.VLCtab { i32 46, i32 10 }, %struct.VLCtab { i32 46, i32 10 }, %struct.VLCtab { i32 46, i32 10 }, %struct.VLCtab { i32 46, i32 10 }, %struct.VLCtab { i32 17, i32 10 }, %struct.VLCtab { i32 17, i32 10 }, %struct.VLCtab { i32 17, i32 10 }, %struct.VLCtab { i32 17, i32 10 }, %struct.VLCtab { i32 47, i32 10 }, %struct.VLCtab { i32 47, i32 10 }, %struct.VLCtab { i32 47, i32 10 }, %struct.VLCtab { i32 47, i32 10 }, %struct.VLCtab { i32 16, i32 10 }, %struct.VLCtab { i32 16, i32 10 }, %struct.VLCtab { i32 16, i32 10 }, %struct.VLCtab { i32 16, i32 10 }, %struct.VLCtab { i32 48, i32 10 }, %struct.VLCtab { i32 48, i32 10 }, %struct.VLCtab { i32 48, i32 10 }, %struct.VLCtab { i32 48, i32 10 }, %struct.VLCtab { i32 15, i32 10 }, %struct.VLCtab { i32 15, i32 10 }, %struct.VLCtab { i32 15, i32 10 }, %struct.VLCtab { i32 15, i32 10 }, %struct.VLCtab { i32 49, i32 10 }, %struct.VLCtab { i32 49, i32 10 }, %struct.VLCtab { i32 49, i32 10 }, %struct.VLCtab { i32 49, i32 10 }, %struct.VLCtab { i32 14, i32 10 }, %struct.VLCtab { i32 14, i32 10 }, %struct.VLCtab { i32 14, i32 10 }, %struct.VLCtab { i32 14, i32 10 }, %struct.VLCtab { i32 50, i32 10 }, %struct.VLCtab { i32 50, i32 10 }, %struct.VLCtab { i32 50, i32 10 }, %struct.VLCtab { i32 50, i32 10 }, %struct.VLCtab { i32 13, i32 10 }, %struct.VLCtab { i32 13, i32 10 }, %struct.VLCtab { i32 13, i32 10 }, %struct.VLCtab { i32 13, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }, %struct.VLCtab { i32 51, i32 10 }], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"MCBPC (\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Invalid MCBPC code\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"1): %d\0A\00", align 1
@MCBPCtab = internal unnamed_addr constant [256 x %struct.VLCtab] [%struct.VLCtab { i32 -1, i32 0 }, %struct.VLCtab { i32 255, i32 9 }, %struct.VLCtab { i32 52, i32 9 }, %struct.VLCtab { i32 36, i32 9 }, %struct.VLCtab { i32 20, i32 9 }, %struct.VLCtab { i32 49, i32 9 }, %struct.VLCtab { i32 35, i32 8 }, %struct.VLCtab { i32 35, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 19, i32 8 }, %struct.VLCtab { i32 50, i32 8 }, %struct.VLCtab { i32 50, i32 8 }, %struct.VLCtab { i32 51, i32 7 }, %struct.VLCtab { i32 51, i32 7 }, %struct.VLCtab { i32 51, i32 7 }, %struct.VLCtab { i32 51, i32 7 }, %struct.VLCtab { i32 34, i32 7 }, %struct.VLCtab { i32 34, i32 7 }, %struct.VLCtab { i32 34, i32 7 }, %struct.VLCtab { i32 34, i32 7 }, %struct.VLCtab { i32 18, i32 7 }, %struct.VLCtab { i32 18, i32 7 }, %struct.VLCtab { i32 18, i32 7 }, %struct.VLCtab { i32 18, i32 7 }, %struct.VLCtab { i32 33, i32 7 }, %struct.VLCtab { i32 33, i32 7 }, %struct.VLCtab { i32 33, i32 7 }, %struct.VLCtab { i32 33, i32 7 }, %struct.VLCtab { i32 17, i32 7 }, %struct.VLCtab { i32 17, i32 7 }, %struct.VLCtab { i32 17, i32 7 }, %struct.VLCtab { i32 17, i32 7 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 4, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 48, i32 6 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 3, i32 5 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 32, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 16, i32 4 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 2, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }, %struct.VLCtab { i32 1, i32 3 }], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"MODB (\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MCBPCintra (\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Invalid MCBPCintra code\0A\00", align 1
@MCBPCtabintra = internal unnamed_addr constant [32 x %struct.VLCtab] [%struct.VLCtab { i32 -1, i32 0 }, %struct.VLCtab { i32 20, i32 6 }, %struct.VLCtab { i32 36, i32 6 }, %struct.VLCtab { i32 52, i32 6 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 19, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 35, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }, %struct.VLCtab { i32 51, i32 3 }], align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"CBPY (\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Invalid CBPY code\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"11): %d\0A\00", align 1
@CBPYtab = internal unnamed_addr constant [48 x %struct.VLCtab] [%struct.VLCtab { i32 -1, i32 0 }, %struct.VLCtab { i32 -1, i32 0 }, %struct.VLCtab { i32 9, i32 6 }, %struct.VLCtab { i32 6, i32 6 }, %struct.VLCtab { i32 7, i32 5 }, %struct.VLCtab { i32 7, i32 5 }, %struct.VLCtab { i32 11, i32 5 }, %struct.VLCtab { i32 11, i32 5 }, %struct.VLCtab { i32 13, i32 5 }, %struct.VLCtab { i32 13, i32 5 }, %struct.VLCtab { i32 14, i32 5 }, %struct.VLCtab { i32 14, i32 5 }, %struct.VLCtab { i32 15, i32 4 }, %struct.VLCtab { i32 15, i32 4 }, %struct.VLCtab { i32 15, i32 4 }, %struct.VLCtab { i32 15, i32 4 }, %struct.VLCtab { i32 3, i32 4 }, %struct.VLCtab { i32 3, i32 4 }, %struct.VLCtab { i32 3, i32 4 }, %struct.VLCtab { i32 3, i32 4 }, %struct.VLCtab { i32 5, i32 4 }, %struct.VLCtab { i32 5, i32 4 }, %struct.VLCtab { i32 5, i32 4 }, %struct.VLCtab { i32 5, i32 4 }, %struct.VLCtab { i32 1, i32 4 }, %struct.VLCtab { i32 1, i32 4 }, %struct.VLCtab { i32 1, i32 4 }, %struct.VLCtab { i32 1, i32 4 }, %struct.VLCtab { i32 10, i32 4 }, %struct.VLCtab { i32 10, i32 4 }, %struct.VLCtab { i32 10, i32 4 }, %struct.VLCtab { i32 10, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 2, i32 4 }, %struct.VLCtab { i32 12, i32 4 }, %struct.VLCtab { i32 12, i32 4 }, %struct.VLCtab { i32 12, i32 4 }, %struct.VLCtab { i32 12, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 4, i32 4 }, %struct.VLCtab { i32 8, i32 4 }, %struct.VLCtab { i32 8, i32 4 }, %struct.VLCtab { i32 8, i32 4 }, %struct.VLCtab { i32 8, i32 4 }], align 4
@str = private unnamed_addr constant [6 x i8] c"1): 0\00", align 1
@str.19 = private unnamed_addr constant [14 x i8] c"11): MODB = 2\00", align 1
@str.20 = private unnamed_addr constant [14 x i8] c"10): MODB = 1\00", align 1
@str.21 = private unnamed_addr constant [13 x i8] c"0): MODB = 0\00", align 1
@str.22 = private unnamed_addr constant [21 x i8] c"000000001): stuffing\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @getTMNMV() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call signext i32 @getbits1() #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @trace, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %71

13:                                               ; preds = %5
  %14 = tail call signext i32 @showbits(i32 noundef signext 12) #4
  %15 = icmp sgt i32 %14, 511
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = lshr i32 %14, 8
  %18 = add nsw i32 %17, -2
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [14 x %struct.VLCtab], ptr @TMNMVtab0, i64 0, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %22) #4
  %23 = load i32, ptr @trace, align 4, !tbaa !6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, ptr %20, align 4, !tbaa !12
  br label %71

27:                                               ; preds = %16
  %28 = tail call i32 @putchar(i32 48)
  tail call void @printbits(i32 noundef signext %17, i32 noundef signext 4, i32 noundef signext %22) #4
  %29 = load i32, ptr %20, align 4, !tbaa !12
  %30 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %29)
  br label %71

31:                                               ; preds = %13
  %32 = icmp sgt i32 %14, 127
  br i1 %32, label %33, label %48

33:                                               ; preds = %31
  %34 = lshr i32 %14, 2
  %35 = add nsw i32 %34, -32
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [96 x %struct.VLCtab], ptr @TMNMVtab1, i64 0, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %39) #4
  %40 = load i32, ptr @trace, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, ptr %37, align 4, !tbaa !12
  br label %71

44:                                               ; preds = %33
  %45 = tail call i32 @putchar(i32 48)
  tail call void @printbits(i32 noundef signext %34, i32 noundef signext 10, i32 noundef signext %39) #4
  %46 = load i32, ptr %37, align 4, !tbaa !12
  %47 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %46)
  br label %71

48:                                               ; preds = %31
  %49 = icmp slt i32 %14, 5
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load i32, ptr @quiet, align 4, !tbaa !6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !13
  %55 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %54) #5
  br label %56

56:                                               ; preds = %53, %50
  store i32 1, ptr @fault, align 4, !tbaa !6
  br label %71

57:                                               ; preds = %48
  %58 = add nsw i32 %14, -5
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [123 x %struct.VLCtab], ptr @TMNMVtab2, i64 0, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %62) #4
  %63 = load i32, ptr @trace, align 4, !tbaa !6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, ptr %60, align 4, !tbaa !12
  br label %71

67:                                               ; preds = %57
  %68 = tail call i32 @putchar(i32 48)
  tail call void @printbits(i32 noundef signext %14, i32 noundef signext 12, i32 noundef signext %62) #4
  %69 = load i32, ptr %60, align 4, !tbaa !12
  %70 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %69)
  br label %71

71:                                               ; preds = %67, %65, %44, %42, %27, %25, %8, %11, %56
  %72 = phi i32 [ 0, %56 ], [ 0, %11 ], [ 0, %8 ], [ %26, %25 ], [ %29, %27 ], [ %43, %42 ], [ %46, %44 ], [ %66, %65 ], [ %69, %67 ]
  ret i32 %72
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare dso_local signext i32 @getbits1() local_unnamed_addr #2

declare dso_local signext i32 @showbits(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @flushbits(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @printbits(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @getMCBPC() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call signext i32 @showbits(i32 noundef signext 9) #4
  switch i32 %6, label %20 [
    i32 1, label %7
    i32 0, label %13
  ]

7:                                                ; preds = %5
  %8 = load i32, ptr @trace, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  br label %12

12:                                               ; preds = %10, %7
  tail call void @flushbits(i32 noundef signext 9) #4
  br label %39

13:                                               ; preds = %5
  %14 = load i32, ptr @quiet, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr @stderr, align 8, !tbaa !13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %17) #5
  br label %19

19:                                               ; preds = %16, %13
  store i32 1, ptr @fault, align 4, !tbaa !6
  br label %39

20:                                               ; preds = %5
  %21 = icmp sgt i32 %6, 255
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  tail call void @flushbits(i32 noundef signext 1) #4
  %23 = load i32, ptr @trace, align 4, !tbaa !6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef signext 0)
  br label %39

27:                                               ; preds = %20
  %28 = sext i32 %6 to i64
  %29 = getelementptr inbounds [256 x %struct.VLCtab], ptr @MCBPCtab, i64 0, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %31) #4
  %32 = load i32, ptr @trace, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, ptr %29, align 4, !tbaa !12
  br label %39

36:                                               ; preds = %27
  tail call void @printbits(i32 noundef signext %6, i32 noundef signext 9, i32 noundef signext %31) #4
  %37 = load i32, ptr %29, align 4, !tbaa !12
  %38 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %37)
  br label %39

39:                                               ; preds = %36, %34, %22, %25, %19, %12
  %40 = phi i32 [ 255, %12 ], [ 0, %19 ], [ 0, %25 ], [ 0, %22 ], [ %35, %34 ], [ %37, %36 ]
  ret i32 %40
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 3) i32 @getMODB() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call signext i32 @showbits(i32 noundef signext 2) #4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, ptr @trace, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %17

11:                                               ; preds = %5
  %12 = icmp eq i32 %6, 2
  %13 = load i32, ptr @trace, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i32 1, i32 2
  %16 = select i1 %12, ptr @str.20, ptr @str.19
  br i1 %14, label %22, label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ @str.21, %8 ], [ %16, %11 ]
  %19 = phi i32 [ 1, %8 ], [ 2, %11 ]
  %20 = phi i32 [ 0, %8 ], [ %15, %11 ]
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) %18)
  br label %22

22:                                               ; preds = %11, %17, %8
  %23 = phi i32 [ 1, %8 ], [ %19, %17 ], [ 2, %11 ]
  %24 = phi i32 [ 0, %8 ], [ %20, %17 ], [ %15, %11 ]
  tail call void @flushbits(i32 noundef signext %23) #4
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local signext i32 @getMCBPCintra() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call signext i32 @showbits(i32 noundef signext 9) #4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, ptr @trace, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  br label %13

13:                                               ; preds = %11, %8
  tail call void @flushbits(i32 noundef signext 9) #4
  br label %43

14:                                               ; preds = %5
  %15 = icmp slt i32 %6, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = load i32, ptr @quiet, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !13
  %21 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 24, i64 1, ptr %20) #5
  br label %22

22:                                               ; preds = %19, %16
  store i32 1, ptr @fault, align 4, !tbaa !6
  br label %43

23:                                               ; preds = %14
  %24 = lshr i32 %6, 3
  %25 = icmp ugt i32 %6, 255
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  tail call void @flushbits(i32 noundef signext 1) #4
  %27 = load i32, ptr @trace, align 4, !tbaa !6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef signext 3)
  br label %43

31:                                               ; preds = %23
  %32 = zext nneg i32 %24 to i64
  %33 = getelementptr inbounds [32 x %struct.VLCtab], ptr @MCBPCtabintra, i64 0, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %35) #4
  %36 = load i32, ptr @trace, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, ptr %33, align 4, !tbaa !12
  br label %43

40:                                               ; preds = %31
  tail call void @printbits(i32 noundef signext %24, i32 noundef signext 6, i32 noundef signext %35) #4
  %41 = load i32, ptr %33, align 4, !tbaa !12
  %42 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %41)
  br label %43

43:                                               ; preds = %40, %38, %26, %29, %22, %13
  %44 = phi i32 [ 255, %13 ], [ 0, %22 ], [ 3, %29 ], [ 3, %26 ], [ %39, %38 ], [ %41, %40 ]
  ret i32 %44
}

; Function Attrs: nounwind
define dso_local signext i32 @getCBPY() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call signext i32 @showbits(i32 noundef signext 6) #4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, ptr @quiet, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !13
  %13 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr %12) #5
  br label %14

14:                                               ; preds = %11, %8
  store i32 1, ptr @fault, align 4, !tbaa !6
  br label %34

15:                                               ; preds = %5
  %16 = icmp ugt i32 %6, 47
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  tail call void @flushbits(i32 noundef signext 2) #4
  %18 = load i32, ptr @trace, align 4, !tbaa !6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef signext 0)
  br label %34

22:                                               ; preds = %15
  %23 = zext nneg i32 %6 to i64
  %24 = getelementptr inbounds [48 x %struct.VLCtab], ptr @CBPYtab, i64 0, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !10
  tail call void @flushbits(i32 noundef signext %26) #4
  %27 = load i32, ptr @trace, align 4, !tbaa !6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, ptr %24, align 4, !tbaa !12
  br label %34

31:                                               ; preds = %22
  tail call void @printbits(i32 noundef signext %6, i32 noundef signext 6, i32 noundef signext %26) #4
  %32 = load i32, ptr %24, align 4, !tbaa !12
  %33 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef signext %32)
  br label %34

34:                                               ; preds = %31, %29, %17, %20, %14
  %35 = phi i32 [ -1, %14 ], [ 0, %20 ], [ 0, %17 ], [ %30, %29 ], [ %32, %31 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 4}
!11 = !{!"", !7, i64 0, !7, i64 4}
!12 = !{!11, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
