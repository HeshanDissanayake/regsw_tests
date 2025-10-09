; ModuleID = 'countbit.c'
source_filename = "countbit.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@cumf_COD = dso_local global [3 x i32] [i32 16383, i32 6849, i32 0], align 4
@cumf_MCBPC = dso_local global [22 x i32] [i32 16383, i32 4105, i32 3088, i32 2367, i32 1988, i32 1621, i32 1612, i32 1609, i32 1608, i32 496, i32 353, i32 195, i32 77, i32 22, i32 17, i32 12, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 4
@cumf_MCBPC_intra = dso_local global [10 x i32] [i32 16383, i32 7410, i32 6549, i32 5188, i32 442, i32 182, i32 181, i32 141, i32 1, i32 0], align 4
@cumf_MODB = dso_local global [4 x i32] [i32 16383, i32 6062, i32 2130, i32 0], align 4
@cumf_YCBPB = dso_local global [3 x i32] [i32 16383, i32 6062, i32 0], align 4
@cumf_UVCBPB = dso_local global [3 x i32] [i32 16383, i32 491, i32 0], align 4
@cumf_CBPY = dso_local global [17 x i32] [i32 16383, i32 14481, i32 13869, i32 13196, i32 12568, i32 11931, i32 11185, i32 10814, i32 9796, i32 9150, i32 8781, i32 7933, i32 6860, i32 6116, i32 4873, i32 3538, i32 0], align 4
@cumf_CBPY_intra = dso_local global [17 x i32] [i32 16383, i32 13619, i32 13211, i32 12933, i32 12562, i32 12395, i32 11913, i32 11783, i32 11004, i32 10782, i32 10689, i32 9928, i32 9353, i32 8945, i32 8407, i32 7795, i32 0], align 4
@cumf_DQUANT = dso_local global [5 x i32] [i32 16383, i32 12287, i32 8192, i32 4095, i32 0], align 4
@cumf_MVD = dso_local global [65 x i32] [i32 16383, i32 16380, i32 16369, i32 16365, i32 16361, i32 16357, i32 16350, i32 16343, i32 16339, i32 16333, i32 16326, i32 16318, i32 16311, i32 16306, i32 16298, i32 16291, i32 16283, i32 16272, i32 16261, i32 16249, i32 16235, i32 16222, i32 16207, i32 16175, i32 16141, i32 16094, i32 16044, i32 15936, i32 15764, i32 15463, i32 14956, i32 13924, i32 11491, i32 4621, i32 2264, i32 1315, i32 854, i32 583, i32 420, i32 326, i32 273, i32 229, i32 196, i32 166, i32 148, i32 137, i32 123, i32 114, i32 101, i32 91, i32 82, i32 76, i32 66, i32 59, i32 53, i32 46, i32 36, i32 30, i32 26, i32 24, i32 18, i32 14, i32 10, i32 5, i32 0], align 4
@cumf_INTRADC = dso_local global [255 x i32] [i32 16383, i32 16380, i32 16379, i32 16378, i32 16377, i32 16376, i32 16370, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16343, i32 16238, i32 16237, i32 16236, i32 16230, i32 16221, i32 16220, i32 16205, i32 16190, i32 16169, i32 16151, i32 16130, i32 16109, i32 16094, i32 16070, i32 16037, i32 16007, i32 15962, i32 15938, i32 15899, i32 15854, i32 15815, i32 15788, i32 15743, i32 15689, i32 15656, i32 15617, i32 15560, i32 15473, i32 15404, i32 15296, i32 15178, i32 15106, i32 14992, i32 14868, i32 14738, i32 14593, i32 14438, i32 14283, i32 14169, i32 14064, i32 14004, i32 13914, i32 13824, i32 13752, i32 13671, i32 13590, i32 13515, i32 13458, i32 13380, i32 13305, i32 13230, i32 13143, i32 13025, i32 12935, i32 12878, i32 12794, i32 12743, i32 12656, i32 12596, i32 12521, i32 12443, i32 12359, i32 12278, i32 12200, i32 12131, i32 12047, i32 12002, i32 11948, i32 11891, i32 11828, i32 11744, i32 11663, i32 11588, i32 11495, i32 11402, i32 11288, i32 11204, i32 11126, i32 11039, i32 10961, i32 10883, i32 10787, i32 10679, i32 10583, i32 10481, i32 10360, i32 10227, i32 10113, i32 9961, i32 9828, i32 9717, i32 9584, i32 9485, i32 9324, i32 9112, i32 9019, i32 8908, i32 8766, i32 8584, i32 8426, i32 8211, i32 7920, i32 7663, i32 7406, i32 7152, i32 6904, i32 6677, i32 6453, i32 6265, i32 6101, i32 5904, i32 5716, i32 5489, i32 5307, i32 5056, i32 4850, i32 4569, i32 4284, i32 3966, i32 3712, i32 3518, i32 3342, i32 3206, i32 3048, i32 2909, i32 2773, i32 2668, i32 2596, i32 2512, i32 2370, i32 2295, i32 2232, i32 2166, i32 2103, i32 2022, i32 1956, i32 1887, i32 1830, i32 1803, i32 1770, i32 1728, i32 1674, i32 1635, i32 1599, i32 1557, i32 1500, i32 1482, i32 1434, i32 1389, i32 1356, i32 1317, i32 1284, i32 1245, i32 1200, i32 1179, i32 1140, i32 1110, i32 1092, i32 1062, i32 1044, i32 1035, i32 1014, i32 1008, i32 993, i32 981, i32 954, i32 936, i32 912, i32 894, i32 876, i32 864, i32 849, i32 828, i32 816, i32 801, i32 792, i32 777, i32 756, i32 732, i32 690, i32 660, i32 642, i32 615, i32 597, i32 576, i32 555, i32 522, i32 489, i32 459, i32 435, i32 411, i32 405, i32 396, i32 387, i32 375, i32 360, i32 354, i32 345, i32 344, i32 329, i32 314, i32 293, i32 278, i32 251, i32 236, i32 230, i32 224, i32 215, i32 214, i32 208, i32 199, i32 193, i32 184, i32 178, i32 169, i32 154, i32 127, i32 100, i32 94, i32 73, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 9, i32 0], align 4
@cumf_TCOEF1 = dso_local global [104 x i32] [i32 16383, i32 13455, i32 12458, i32 12079, i32 11885, i32 11800, i32 11738, i32 11700, i32 11681, i32 11661, i32 11651, i32 11645, i32 11641, i32 10572, i32 10403, i32 10361, i32 10346, i32 10339, i32 10335, i32 9554, i32 9445, i32 9427, i32 9419, i32 9006, i32 8968, i32 8964, i32 8643, i32 8627, i32 8624, i32 8369, i32 8354, i32 8352, i32 8200, i32 8192, i32 8191, i32 8039, i32 8036, i32 7920, i32 7917, i32 7800, i32 7793, i32 7730, i32 7727, i32 7674, i32 7613, i32 7564, i32 7513, i32 7484, i32 7466, i32 7439, i32 7411, i32 7389, i32 7373, i32 7369, i32 7359, i32 7348, i32 7321, i32 7302, i32 7294, i32 5013, i32 4819, i32 4789, i32 4096, i32 4073, i32 3373, i32 3064, i32 2674, i32 2357, i32 2177, i32 1975, i32 1798, i32 1618, i32 1517, i32 1421, i32 1303, i32 1194, i32 1087, i32 1027, i32 960, i32 890, i32 819, i32 758, i32 707, i32 680, i32 656, i32 613, i32 566, i32 534, i32 505, i32 475, i32 465, i32 449, i32 430, i32 395, i32 358, i32 335, i32 324, i32 303, i32 295, i32 286, i32 272, i32 233, i32 215, i32 0], align 4
@cumf_TCOEF2 = dso_local global [104 x i32] [i32 16383, i32 13582, i32 12709, i32 12402, i32 12262, i32 12188, i32 12150, i32 12131, i32 12125, i32 12117, i32 12113, i32 12108, i32 12104, i32 10567, i32 10180, i32 10070, i32 10019, i32 9998, i32 9987, i32 9158, i32 9037, i32 9010, i32 9005, i32 8404, i32 8323, i32 8312, i32 7813, i32 7743, i32 7726, i32 7394, i32 7366, i32 7364, i32 7076, i32 7062, i32 7060, i32 6810, i32 6797, i32 6614, i32 6602, i32 6459, i32 6454, i32 6304, i32 6303, i32 6200, i32 6121, i32 6059, i32 6012, i32 5973, i32 5928, i32 5893, i32 5871, i32 5847, i32 5823, i32 5809, i32 5796, i32 5781, i32 5771, i32 5763, i32 5752, i32 4754, i32 4654, i32 4631, i32 3934, i32 3873, i32 3477, i32 3095, i32 2758, i32 2502, i32 2257, i32 2054, i32 1869, i32 1715, i32 1599, i32 1431, i32 1305, i32 1174, i32 1059, i32 983, i32 901, i32 839, i32 777, i32 733, i32 683, i32 658, i32 606, i32 565, i32 526, i32 488, i32 456, i32 434, i32 408, i32 380, i32 361, i32 327, i32 310, i32 296, i32 267, i32 259, i32 249, i32 239, i32 230, i32 221, i32 214, i32 0], align 4
@cumf_TCOEF3 = dso_local global [104 x i32] [i32 16383, i32 13532, i32 12677, i32 12342, i32 12195, i32 12112, i32 12059, i32 12034, i32 12020, i32 12008, i32 12003, i32 12002, i32 12001, i32 10586, i32 10297, i32 10224, i32 10202, i32 10195, i32 10191, i32 9223, i32 9046, i32 8999, i32 8987, i32 8275, i32 8148, i32 8113, i32 7552, i32 7483, i32 7468, i32 7066, i32 7003, i32 6989, i32 6671, i32 6642, i32 6631, i32 6359, i32 6327, i32 6114, i32 6103, i32 5929, i32 5918, i32 5792, i32 5785, i32 5672, i32 5580, i32 5507, i32 5461, i32 5414, i32 5382, i32 5354, i32 5330, i32 5312, i32 5288, i32 5273, i32 5261, i32 5247, i32 5235, i32 5227, i32 5219, i32 4357, i32 4277, i32 4272, i32 3847, i32 3819, i32 3455, i32 3119, i32 2829, i32 2550, i32 2313, i32 2104, i32 1881, i32 1711, i32 1565, i32 1366, i32 1219, i32 1068, i32 932, i32 866, i32 799, i32 750, i32 701, i32 662, i32 605, i32 559, i32 513, i32 471, i32 432, i32 403, i32 365, i32 336, i32 312, i32 290, i32 276, i32 266, i32 254, i32 240, i32 228, i32 223, i32 216, i32 206, i32 199, i32 192, i32 189, i32 0], align 4
@cumf_TCOEFr = dso_local global [104 x i32] [i32 16383, i32 13216, i32 12233, i32 11931, i32 11822, i32 11776, i32 11758, i32 11748, i32 11743, i32 11742, i32 11741, i32 11740, i32 11739, i32 10203, i32 9822, i32 9725, i32 9691, i32 9677, i32 9674, i32 8759, i32 8609, i32 8576, i32 8566, i32 7901, i32 7787, i32 7770, i32 7257, i32 7185, i32 7168, i32 6716, i32 6653, i32 6639, i32 6276, i32 6229, i32 6220, i32 5888, i32 5845, i32 5600, i32 5567, i32 5348, i32 5327, i32 5160, i32 5142, i32 5004, i32 4900, i32 4798, i32 4743, i32 4708, i32 4685, i32 4658, i32 4641, i32 4622, i32 4610, i32 4598, i32 4589, i32 4582, i32 4578, i32 4570, i32 4566, i32 3824, i32 3757, i32 3748, i32 3360, i32 3338, i32 3068, i32 2835, i32 2592, i32 2359, i32 2179, i32 1984, i32 1804, i32 1614, i32 1445, i32 1234, i32 1068, i32 870, i32 739, i32 668, i32 616, i32 566, i32 532, i32 489, i32 453, i32 426, i32 385, i32 357, i32 335, i32 316, i32 297, i32 283, i32 274, i32 266, i32 259, i32 251, i32 241, i32 233, i32 226, i32 222, i32 217, i32 214, i32 211, i32 209, i32 208, i32 0], align 4
@cumf_TCOEF1_intra = dso_local global [104 x i32] [i32 16383, i32 13383, i32 11498, i32 10201, i32 9207, i32 8528, i32 8099, i32 7768, i32 7546, i32 7368, i32 7167, i32 6994, i32 6869, i32 6005, i32 5474, i32 5220, i32 5084, i32 4964, i32 4862, i32 4672, i32 4591, i32 4570, i32 4543, i32 4397, i32 4337, i32 4326, i32 4272, i32 4240, i32 4239, i32 4212, i32 4196, i32 4185, i32 4158, i32 4157, i32 4156, i32 4140, i32 4139, i32 4138, i32 4137, i32 4136, i32 4125, i32 4124, i32 4123, i32 4112, i32 4111, i32 4110, i32 4109, i32 4108, i32 4107, i32 4106, i32 4105, i32 4104, i32 4103, i32 4102, i32 4101, i32 4100, i32 4099, i32 4098, i32 4097, i32 3043, i32 2897, i32 2843, i32 1974, i32 1790, i32 1677, i32 1552, i32 1416, i32 1379, i32 1331, i32 1288, i32 1251, i32 1250, i32 1249, i32 1248, i32 1247, i32 1236, i32 1225, i32 1224, i32 1223, i32 1212, i32 1201, i32 1200, i32 1199, i32 1198, i32 1197, i32 1196, i32 1195, i32 1194, i32 1193, i32 1192, i32 1191, i32 1190, i32 1189, i32 1188, i32 1187, i32 1186, i32 1185, i32 1184, i32 1183, i32 1182, i32 1181, i32 1180, i32 1179, i32 0], align 4
@cumf_TCOEF2_intra = dso_local global [104 x i32] [i32 16383, i32 13242, i32 11417, i32 10134, i32 9254, i32 8507, i32 8012, i32 7556, i32 7273, i32 7062, i32 6924, i32 6839, i32 6741, i32 6108, i32 5851, i32 5785, i32 5719, i32 5687, i32 5655, i32 5028, i32 4917, i32 4864, i32 4845, i32 4416, i32 4159, i32 4074, i32 3903, i32 3871, i32 3870, i32 3765, i32 3752, i32 3751, i32 3659, i32 3606, i32 3580, i32 3541, i32 3540, i32 3514, i32 3495, i32 3494, i32 3493, i32 3474, i32 3473, i32 3441, i32 3440, i32 3439, i32 3438, i32 3425, i32 3424, i32 3423, i32 3422, i32 3421, i32 3420, i32 3401, i32 3400, i32 3399, i32 3398, i32 3397, i32 3396, i32 2530, i32 2419, i32 2360, i32 2241, i32 2228, i32 2017, i32 1687, i32 1576, i32 1478, i32 1320, i32 1281, i32 1242, i32 1229, i32 1197, i32 1178, i32 1152, i32 1133, i32 1114, i32 1101, i32 1088, i32 1087, i32 1086, i32 1085, i32 1072, i32 1071, i32 1070, i32 1069, i32 1068, i32 1067, i32 1066, i32 1065, i32 1064, i32 1063, i32 1062, i32 1061, i32 1060, i32 1059, i32 1058, i32 1057, i32 1056, i32 1055, i32 1054, i32 1053, i32 1052, i32 0], align 4
@cumf_TCOEF3_intra = dso_local global [104 x i32] [i32 16383, i32 12741, i32 10950, i32 10071, i32 9493, i32 9008, i32 8685, i32 8516, i32 8385, i32 8239, i32 8209, i32 8179, i32 8141, i32 6628, i32 5980, i32 5634, i32 5503, i32 5396, i32 5327, i32 4857, i32 4642, i32 4550, i32 4481, i32 4235, i32 4166, i32 4151, i32 3967, i32 3922, i32 3907, i32 3676, i32 3500, i32 3324, i32 3247, i32 3246, i32 3245, i32 3183, i32 3168, i32 3084, i32 3069, i32 3031, i32 3030, i32 3029, i32 3014, i32 3013, i32 2990, i32 2975, i32 2974, i32 2973, i32 2958, i32 2943, i32 2928, i32 2927, i32 2926, i32 2925, i32 2924, i32 2923, i32 2922, i32 2921, i32 2920, i32 2397, i32 2298, i32 2283, i32 1891, i32 1799, i32 1591, i32 1445, i32 1338, i32 1145, i32 1068, i32 1006, i32 791, i32 768, i32 661, i32 631, i32 630, i32 615, i32 592, i32 577, i32 576, i32 561, i32 546, i32 523, i32 508, i32 493, i32 492, i32 491, i32 476, i32 475, i32 474, i32 473, i32 472, i32 471, i32 470, i32 469, i32 468, i32 453, i32 452, i32 451, i32 450, i32 449, i32 448, i32 447, i32 446, i32 0], align 4
@cumf_TCOEFr_intra = dso_local global [104 x i32] [i32 16383, i32 12514, i32 10776, i32 9969, i32 9579, i32 9306, i32 9168, i32 9082, i32 9032, i32 9000, i32 8981, i32 8962, i32 8952, i32 7630, i32 7212, i32 7053, i32 6992, i32 6961, i32 6940, i32 6195, i32 5988, i32 5948, i32 5923, i32 5370, i32 5244, i32 5210, i32 4854, i32 4762, i32 4740, i32 4384, i32 4300, i32 4288, i32 4020, i32 3968, i32 3964, i32 3752, i32 3668, i32 3511, i32 3483, i32 3354, i32 3322, i32 3205, i32 3183, i32 3108, i32 3046, i32 2999, i32 2981, i32 2974, i32 2968, i32 2961, i32 2955, i32 2949, i32 2943, i32 2942, i32 2939, i32 2935, i32 2934, i32 2933, i32 2929, i32 2270, i32 2178, i32 2162, i32 1959, i32 1946, i32 1780, i32 1651, i32 1524, i32 1400, i32 1289, i32 1133, i32 1037, i32 942, i32 849, i32 763, i32 711, i32 591, i32 521, i32 503, i32 496, i32 474, i32 461, i32 449, i32 442, i32 436, i32 426, i32 417, i32 407, i32 394, i32 387, i32 377, i32 373, i32 370, i32 367, i32 366, i32 365, i32 364, i32 363, i32 362, i32 358, i32 355, i32 352, i32 351, i32 350, i32 0], align 4
@cumf_SIGN = dso_local global [3 x i32] [i32 16383, i32 8416, i32 0], align 4
@cumf_LAST = dso_local global [3 x i32] [i32 16383, i32 9469, i32 0], align 4
@cumf_LAST_intra = dso_local global [3 x i32] [i32 16383, i32 2820, i32 0], align 4
@cumf_RUN = dso_local global [65 x i32] [i32 16383, i32 15310, i32 14702, i32 13022, i32 11883, i32 11234, i32 10612, i32 10192, i32 9516, i32 9016, i32 8623, i32 8366, i32 7595, i32 7068, i32 6730, i32 6487, i32 6379, i32 6285, i32 6177, i32 6150, i32 6083, i32 5989, i32 5949, i32 5922, i32 5895, i32 5828, i32 5774, i32 5773, i32 5394, i32 5164, i32 5016, i32 4569, i32 4366, i32 4136, i32 4015, i32 3867, i32 3773, i32 3692, i32 3611, i32 3476, i32 3341, i32 3301, i32 2787, i32 2503, i32 2219, i32 1989, i32 1515, i32 1095, i32 934, i32 799, i32 691, i32 583, i32 435, i32 300, i32 246, i32 206, i32 125, i32 124, i32 97, i32 57, i32 30, i32 3, i32 2, i32 1, i32 0], align 4
@cumf_RUN_intra = dso_local global [65 x i32] [i32 16383, i32 10884, i32 8242, i32 7124, i32 5173, i32 4745, i32 4246, i32 3984, i32 3034, i32 2749, i32 2607, i32 2298, i32 966, i32 681, i32 396, i32 349, i32 302, i32 255, i32 254, i32 253, i32 206, i32 159, i32 158, i32 157, i32 156, i32 155, i32 154, i32 153, i32 106, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 4
@cumf_LEVEL = dso_local global [255 x i32] [i32 16383, i32 16382, i32 16381, i32 16380, i32 16379, i32 16378, i32 16377, i32 16376, i32 16375, i32 16374, i32 16373, i32 16372, i32 16371, i32 16370, i32 16369, i32 16368, i32 16367, i32 16366, i32 16365, i32 16364, i32 16363, i32 16362, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16354, i32 16353, i32 16352, i32 16351, i32 16350, i32 16349, i32 16348, i32 16347, i32 16346, i32 16345, i32 16344, i32 16343, i32 16342, i32 16341, i32 16340, i32 16339, i32 16338, i32 16337, i32 16336, i32 16335, i32 16334, i32 16333, i32 16332, i32 16331, i32 16330, i32 16329, i32 16328, i32 16327, i32 16326, i32 16325, i32 16324, i32 16323, i32 16322, i32 16321, i32 16320, i32 16319, i32 16318, i32 16317, i32 16316, i32 16315, i32 16314, i32 16313, i32 16312, i32 16311, i32 16310, i32 16309, i32 16308, i32 16307, i32 16306, i32 16305, i32 16304, i32 16303, i32 16302, i32 16301, i32 16300, i32 16299, i32 16298, i32 16297, i32 16296, i32 16295, i32 16294, i32 16293, i32 16292, i32 16291, i32 16290, i32 16289, i32 16288, i32 16287, i32 16286, i32 16285, i32 16284, i32 16283, i32 16282, i32 16281, i32 16280, i32 16279, i32 16278, i32 16277, i32 16250, i32 16223, i32 16222, i32 16195, i32 16154, i32 16153, i32 16071, i32 15989, i32 15880, i32 15879, i32 15878, i32 15824, i32 15756, i32 15674, i32 15606, i32 15538, i32 15184, i32 14572, i32 13960, i32 10718, i32 7994, i32 5379, i32 2123, i32 1537, i32 992, i32 693, i32 611, i32 516, i32 448, i32 421, i32 380, i32 353, i32 352, i32 284, i32 257, i32 230, i32 203, i32 162, i32 161, i32 160, i32 133, i32 132, i32 105, i32 104, i32 103, i32 102, i32 101, i32 100, i32 99, i32 98, i32 97, i32 96, i32 95, i32 94, i32 93, i32 92, i32 91, i32 90, i32 89, i32 88, i32 87, i32 86, i32 85, i32 84, i32 83, i32 82, i32 81, i32 80, i32 79, i32 78, i32 77, i32 76, i32 75, i32 74, i32 73, i32 72, i32 71, i32 70, i32 69, i32 68, i32 67, i32 66, i32 65, i32 64, i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 4
@cumf_LEVEL_intra = dso_local global [255 x i32] [i32 16383, i32 16379, i32 16378, i32 16377, i32 16376, i32 16375, i32 16374, i32 16373, i32 16372, i32 16371, i32 16370, i32 16369, i32 16368, i32 16367, i32 16366, i32 16365, i32 16364, i32 16363, i32 16362, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16354, i32 16353, i32 16352, i32 16351, i32 16350, i32 16349, i32 16348, i32 16347, i32 16346, i32 16345, i32 16344, i32 16343, i32 16342, i32 16341, i32 16340, i32 16339, i32 16338, i32 16337, i32 16336, i32 16335, i32 16334, i32 16333, i32 16332, i32 16331, i32 16330, i32 16329, i32 16328, i32 16327, i32 16326, i32 16325, i32 16324, i32 16323, i32 16322, i32 16321, i32 16320, i32 16319, i32 16318, i32 16317, i32 16316, i32 16315, i32 16314, i32 16313, i32 16312, i32 16311, i32 16268, i32 16267, i32 16224, i32 16223, i32 16180, i32 16179, i32 16136, i32 16135, i32 16134, i32 16133, i32 16132, i32 16131, i32 16130, i32 16129, i32 16128, i32 16127, i32 16126, i32 16061, i32 16018, i32 16017, i32 16016, i32 16015, i32 16014, i32 15971, i32 15970, i32 15969, i32 15968, i32 15925, i32 15837, i32 15794, i32 15751, i32 15750, i32 15749, i32 15661, i32 15618, i32 15508, i32 15376, i32 15288, i32 15045, i32 14913, i32 14781, i32 14384, i32 13965, i32 13502, i32 13083, i32 12509, i32 12289, i32 12135, i32 11892, i32 11738, i32 11429, i32 11010, i32 10812, i32 10371, i32 9664, i32 9113, i32 8117, i32 8116, i32 8028, i32 6855, i32 5883, i32 4710, i32 4401, i32 4203, i32 3740, i32 3453, i32 3343, i32 3189, i32 2946, i32 2881, i32 2661, i32 2352, i32 2132, i32 1867, i32 1558, i32 1382, i32 1250, i32 1162, i32 1097, i32 1032, i32 967, i32 835, i32 681, i32 549, i32 439, i32 351, i32 350, i32 307, i32 306, i32 305, i32 304, i32 303, i32 302, i32 301, i32 300, i32 299, i32 298, i32 255, i32 212, i32 211, i32 210, i32 167, i32 166, i32 165, i32 164, i32 163, i32 162, i32 161, i32 160, i32 159, i32 158, i32 115, i32 114, i32 113, i32 112, i32 111, i32 68, i32 67, i32 66, i32 65, i32 64, i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 4
@codtab = dso_local local_unnamed_addr global [2 x i32] [i32 0, i32 1], align 4
@mcbpctab = dso_local global [21 x i32] [i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 255], align 4
@mcbpc_intratab = dso_local global [9 x i32] [i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 255], align 4
@cbpytab = dso_local global [16 x i32] [i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 4
@cbpy_intratab = dso_local global [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
@dquanttab = dso_local global [4 x i32] [i32 1, i32 0, i32 3, i32 4], align 4
@mvdtab = dso_local global [64 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 4
@intradctab = dso_local global [254 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127, i32 255, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254], align 4
@tcoeftab = dso_local global [103 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 33, i32 34, i32 35, i32 36, i32 49, i32 50, i32 51, i32 65, i32 66, i32 67, i32 81, i32 82, i32 83, i32 97, i32 98, i32 99, i32 113, i32 114, i32 129, i32 130, i32 145, i32 146, i32 161, i32 162, i32 177, i32 193, i32 209, i32 225, i32 241, i32 257, i32 273, i32 289, i32 305, i32 321, i32 337, i32 353, i32 369, i32 385, i32 401, i32 417, i32 4097, i32 4098, i32 4099, i32 4113, i32 4114, i32 4129, i32 4145, i32 4161, i32 4177, i32 4193, i32 4209, i32 4225, i32 4241, i32 4257, i32 4273, i32 4289, i32 4305, i32 4321, i32 4337, i32 4353, i32 4369, i32 4385, i32 4401, i32 4417, i32 4433, i32 4449, i32 4465, i32 4481, i32 4497, i32 4513, i32 4529, i32 4545, i32 4561, i32 4577, i32 4593, i32 4609, i32 4625, i32 4641, i32 4657, i32 4673, i32 4689, i32 4705, i32 4721, i32 4737, i32 7167], align 4
@signtab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@lasttab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@last_intratab = dso_local local_unnamed_addr global [2 x i32] [i32 0, i32 1], align 4
@runtab = dso_local global [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63], align 4
@leveltab = dso_local global [254 x i32] [i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127], align 4
@arith_used = dso_local local_unnamed_addr global i32 0, align 4
@trace = external dso_local local_unnamed_addr global i32, align 4
@tf = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"MB-nr: %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  COD: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CBPCM (CBP=%d) (cbpcm=%d): \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"MODB: %d, CBPB: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CBPY (CBP=%d) (cbpy=%d): \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DQUANT: \00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Invalid DQUANT\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"  COD: %d \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"GOB sync (GBSC): \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"GN: \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"GFID: \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"GQUANT: \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Coeffs block %d:\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DC: \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Escape code: \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"last: \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"run: \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"level: \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Last coeff: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Escape coding:\0A\00", align 1
@long_vectors = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"Vectors:\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"(x,y) = (%d,%d) - \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"(Px,Py) = (%d,%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"(x_diff,y_diff) = (%d,%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"PB delta vectors:\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"MVDB (x,y) = (%d,%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Illegal block number in FindPMV (countbit.c)\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"picture_start_code: \00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Group number in picture header: \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Time reference: \00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"spare: \00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"always zero for distinction with H.261\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"split_screen_indicator: \00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"document_camera_indicator: \00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"freeze_picture_release: \00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"source_format: \00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"picture_coding_type: \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"mv_outside_frame: \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"sac_coding: \00", align 1
@syntax_arith_coding = external dso_local local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"adv_pred_mode: \00", align 1
@advanced = external dso_local local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [11 x i8] c"PB-coded: \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"QUANT: \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"TRB: \00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"BQUANT: \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"PEI: \00", align 1
@switch.table.CountBitsMB = private unnamed_addr constant [5 x i32] [i32 1, i32 0, i32 0, i32 2, i32 3], align 4

; Function Attrs: nounwind
define dso_local void @CountBitsMB(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr @trace, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @tf, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %4, i64 52
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef signext %12) #12
  %14 = getelementptr inbounds i8, ptr %4, i64 28
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr @tf, align 8, !tbaa !10
  %19 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef signext %1) #12
  br label %20

20:                                               ; preds = %9, %17, %6
  %21 = getelementptr inbounds i8, ptr %4, i64 28
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %1) #12
  %25 = getelementptr inbounds i8, ptr %5, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !16
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !16
  br label %28

28:                                               ; preds = %24, %20
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %28
  %31 = load i32, ptr @trace, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = shl i32 %2, 4
  %35 = and i32 %34, 48
  %36 = or i32 %35, %0
  %37 = load ptr, ptr @tf, align 8, !tbaa !10
  %38 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.2, i32 noundef signext %2, i32 noundef signext %36) #12
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, ptr %21, align 4, !tbaa !15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call signext i32 @put_cbpcm_intra(i32 noundef signext %2, i32 noundef signext %0) #12
  br label %46

44:                                               ; preds = %39
  %45 = tail call signext i32 @put_cbpcm_inter(i32 noundef signext %2, i32 noundef signext %0) #12
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds i8, ptr %5, i64 16
  %49 = load i32, ptr %48, align 4, !tbaa !18
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !18
  %51 = getelementptr inbounds i8, ptr %4, i64 40
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %4, i64 64
  %56 = load i32, ptr %55, align 4, !tbaa !20
  switch i32 %56, label %69 [
    i32 0, label %57
    i32 1, label %58
    i32 2, label %59
  ]

57:                                               ; preds = %54
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  br label %63

58:                                               ; preds = %54
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 2) #12
  br label %63

59:                                               ; preds = %54
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 3) #12
  %60 = getelementptr inbounds i8, ptr %5, i64 20
  %61 = load i32, ptr %60, align 4, !tbaa !21
  %62 = add nsw i32 %61, 2
  store i32 %62, ptr %60, align 4, !tbaa !21
  tail call void @putbits(i32 noundef signext 6, i32 noundef signext %3) #12
  br label %63

63:                                               ; preds = %57, %58, %59
  %64 = phi i64 [ 20, %57 ], [ 20, %58 ], [ 24, %59 ]
  %65 = phi i32 [ 1, %57 ], [ 2, %58 ], [ 6, %59 ]
  %66 = getelementptr inbounds i8, ptr %5, i64 %64
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = add nsw i32 %67, %65
  store i32 %68, ptr %66, align 4, !tbaa !6
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i32, ptr @trace, align 4, !tbaa !6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @tf, align 8, !tbaa !10
  %74 = load i32, ptr %55, align 4, !tbaa !20
  %75 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.3, i32 noundef signext %74, i32 noundef signext %3) #12
  br label %76

76:                                               ; preds = %72, %46
  %77 = load i32, ptr @trace, align 4, !tbaa !6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = add i32 %0, -3
  %81 = icmp ult i32 %80, 2
  %82 = ashr i32 %2, 2
  %83 = xor i32 %82, 15
  %84 = select i1 %81, i32 %83, i32 %82
  %85 = load ptr, ptr @tf, align 8, !tbaa !10
  %86 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.4, i32 noundef signext %2, i32 noundef signext %84) #12
  br label %87

87:                                               ; preds = %69, %79, %76
  %88 = tail call signext i32 @put_cbpy(i32 noundef signext %2, i32 noundef signext %0) #12
  %89 = getelementptr inbounds i8, ptr %5, i64 12
  %90 = load i32, ptr %89, align 4, !tbaa !22
  %91 = add nsw i32 %90, %88
  store i32 %91, ptr %89, align 4, !tbaa !22
  switch i32 %0, label %117 [
    i32 4, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %87, %87
  %93 = load i32, ptr @trace, align 4, !tbaa !6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @tf, align 8, !tbaa !10
  %97 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = getelementptr inbounds i8, ptr %4, i64 48
  %100 = load i32, ptr %99, align 4, !tbaa !23
  %101 = add i32 %100, 2
  %102 = icmp ult i32 %101, 5
  br i1 %102, label %106, label %103

103:                                              ; preds = %106, %98
  %104 = load ptr, ptr @stderr, align 8, !tbaa !10
  %105 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %104) #13
  tail call void @exit(i32 noundef signext -1) #14
  unreachable

106:                                              ; preds = %98
  %107 = trunc nuw i32 %101 to i8
  %108 = lshr i8 27, %107
  %109 = trunc i8 %108 to i1
  br i1 %109, label %110, label %103

110:                                              ; preds = %106
  %111 = zext nneg i32 %101 to i64
  %112 = getelementptr inbounds [5 x i32], ptr @switch.table.CountBitsMB, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext %113) #12
  %114 = getelementptr inbounds i8, ptr %5, i64 36
  %115 = load i32, ptr %114, align 4, !tbaa !24
  %116 = add nsw i32 %115, 2
  store i32 %116, ptr %114, align 4, !tbaa !24
  br label %117

117:                                              ; preds = %110, %87, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @put_cbpcm_intra(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @put_cbpcm_inter(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @put_cbpy(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @Count_sac_BitsMB(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  store i32 1, ptr @arith_used, align 4, !tbaa !6
  %7 = load i32, ptr @trace, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @tf, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %4, i64 52
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef signext %12) #12
  %14 = getelementptr inbounds i8, ptr %4, i64 28
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr @tf, align 8, !tbaa !10
  %19 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef signext %1) #12
  br label %20

20:                                               ; preds = %9, %17, %6
  %21 = getelementptr inbounds i8, ptr %4, i64 28
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = tail call signext i32 @AR_Encode(i32 noundef signext %1, ptr noundef nonnull @cumf_COD) #12
  %26 = getelementptr inbounds i8, ptr %5, i64 28
  %27 = load i32, ptr %26, align 4, !tbaa !16
  %28 = add nsw i32 %27, %25
  store i32 %28, ptr %26, align 4, !tbaa !16
  br label %29

29:                                               ; preds = %24, %20
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %31, label %143

31:                                               ; preds = %29
  %32 = shl i32 %2, 4
  %33 = and i32 %32, 48
  %34 = or i32 %33, %0
  %35 = load i32, ptr @trace, align 4, !tbaa !6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr @tf, align 8, !tbaa !10
  %39 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.2, i32 noundef signext %2, i32 noundef signext %34) #12
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, ptr %21, align 4, !tbaa !15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call signext i32 @indexfn(i32 noundef signext %34, ptr noundef nonnull @mcbpc_intratab, i32 noundef signext 9) #12
  %45 = tail call signext i32 @AR_Encode(i32 noundef signext %44, ptr noundef nonnull @cumf_MCBPC_intra) #12
  br label %49

46:                                               ; preds = %40
  %47 = tail call signext i32 @indexfn(i32 noundef signext %34, ptr noundef nonnull @mcbpctab, i32 noundef signext 21) #12
  %48 = tail call signext i32 @AR_Encode(i32 noundef signext %47, ptr noundef nonnull @cumf_MCBPC) #12
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  %51 = getelementptr inbounds i8, ptr %5, i64 16
  %52 = load i32, ptr %51, align 4, !tbaa !18
  %53 = add nsw i32 %52, %50
  store i32 %53, ptr %51, align 4, !tbaa !18
  %54 = getelementptr inbounds i8, ptr %4, i64 40
  %55 = load i32, ptr %54, align 4, !tbaa !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds i8, ptr %4, i64 64
  %59 = load i32, ptr %58, align 4, !tbaa !20
  switch i32 %59, label %104 [
    i32 0, label %60
    i32 1, label %63
    i32 2, label %66
  ]

60:                                               ; preds = %57
  %61 = tail call signext i32 @AR_Encode(i32 noundef signext 0, ptr noundef nonnull @cumf_MODB) #12
  %62 = getelementptr inbounds i8, ptr %5, i64 20
  br label %99

63:                                               ; preds = %57
  %64 = tail call signext i32 @AR_Encode(i32 noundef signext 1, ptr noundef nonnull @cumf_MODB) #12
  %65 = getelementptr inbounds i8, ptr %5, i64 20
  br label %99

66:                                               ; preds = %57
  %67 = tail call signext i32 @AR_Encode(i32 noundef signext 2, ptr noundef nonnull @cumf_MODB) #12
  %68 = getelementptr inbounds i8, ptr %5, i64 20
  %69 = load i32, ptr %68, align 4, !tbaa !21
  %70 = add nsw i32 %69, %67
  store i32 %70, ptr %68, align 4, !tbaa !21
  %71 = getelementptr inbounds i8, ptr %5, i64 24
  %72 = lshr i32 %3, 5
  %73 = and i32 %72, 1
  %74 = tail call signext i32 @AR_Encode(i32 noundef signext %73, ptr noundef nonnull @cumf_YCBPB) #12
  %75 = load i32, ptr %71, align 4, !tbaa !25
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %71, align 4, !tbaa !25
  %77 = lshr i32 %3, 4
  %78 = and i32 %77, 1
  %79 = tail call signext i32 @AR_Encode(i32 noundef signext %78, ptr noundef nonnull @cumf_YCBPB) #12
  %80 = load i32, ptr %71, align 4, !tbaa !25
  %81 = add nsw i32 %80, %79
  store i32 %81, ptr %71, align 4, !tbaa !25
  %82 = lshr i32 %3, 3
  %83 = and i32 %82, 1
  %84 = tail call signext i32 @AR_Encode(i32 noundef signext %83, ptr noundef nonnull @cumf_YCBPB) #12
  %85 = load i32, ptr %71, align 4, !tbaa !25
  %86 = add nsw i32 %85, %84
  store i32 %86, ptr %71, align 4, !tbaa !25
  %87 = lshr i32 %3, 2
  %88 = and i32 %87, 1
  %89 = tail call signext i32 @AR_Encode(i32 noundef signext %88, ptr noundef nonnull @cumf_YCBPB) #12
  %90 = load i32, ptr %71, align 4, !tbaa !25
  %91 = add nsw i32 %90, %89
  store i32 %91, ptr %71, align 4, !tbaa !25
  %92 = lshr i32 %3, 1
  %93 = and i32 %92, 1
  %94 = tail call signext i32 @AR_Encode(i32 noundef signext %93, ptr noundef nonnull @cumf_UVCBPB) #12
  %95 = load i32, ptr %71, align 4, !tbaa !25
  %96 = add nsw i32 %95, %94
  store i32 %96, ptr %71, align 4, !tbaa !25
  %97 = and i32 %3, 1
  %98 = tail call signext i32 @AR_Encode(i32 noundef signext %97, ptr noundef nonnull @cumf_UVCBPB) #12
  br label %99

99:                                               ; preds = %60, %63, %66
  %100 = phi ptr [ %71, %66 ], [ %65, %63 ], [ %62, %60 ]
  %101 = phi i32 [ %98, %66 ], [ %64, %63 ], [ %61, %60 ]
  %102 = load i32, ptr %100, align 4, !tbaa !6
  %103 = add nsw i32 %102, %101
  store i32 %103, ptr %100, align 4, !tbaa !6
  br label %104

104:                                              ; preds = %99, %57
  %105 = load i32, ptr @trace, align 4, !tbaa !6
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @tf, align 8, !tbaa !10
  %109 = load i32, ptr %58, align 4, !tbaa !20
  %110 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.3, i32 noundef signext %109, i32 noundef signext %3) #12
  br label %111

111:                                              ; preds = %104, %107, %49
  %112 = ashr i32 %2, 2
  %113 = add i32 %0, -3
  %114 = icmp ult i32 %113, 2
  %115 = select i1 %114, ptr @cbpy_intratab, ptr @cbpytab
  %116 = select i1 %114, ptr @cumf_CBPY_intra, ptr @cumf_CBPY
  %117 = tail call signext i32 @indexfn(i32 noundef signext %112, ptr noundef nonnull %115, i32 noundef signext 16) #12
  %118 = tail call signext i32 @AR_Encode(i32 noundef signext %117, ptr noundef nonnull %116) #12
  %119 = load i32, ptr @trace, align 4, !tbaa !6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %111
  %122 = load ptr, ptr @tf, align 8, !tbaa !10
  %123 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.4, i32 noundef signext %2, i32 noundef signext %112) #12
  br label %124

124:                                              ; preds = %121, %111
  %125 = getelementptr inbounds i8, ptr %5, i64 12
  %126 = load i32, ptr %125, align 4, !tbaa !22
  %127 = add nsw i32 %126, %118
  store i32 %127, ptr %125, align 4, !tbaa !22
  switch i32 %0, label %143 [
    i32 4, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %124, %124
  %129 = load i32, ptr @trace, align 4, !tbaa !6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr @tf, align 8, !tbaa !10
  %133 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = getelementptr inbounds i8, ptr %4, i64 48
  %136 = load i32, ptr %135, align 4, !tbaa !23
  %137 = add nsw i32 %136, 2
  %138 = tail call signext i32 @indexfn(i32 noundef signext %137, ptr noundef nonnull @dquanttab, i32 noundef signext 4) #12
  %139 = tail call signext i32 @AR_Encode(i32 noundef signext %138, ptr noundef nonnull @cumf_DQUANT) #12
  %140 = getelementptr inbounds i8, ptr %5, i64 36
  %141 = load i32, ptr %140, align 4, !tbaa !24
  %142 = add nsw i32 %141, %139
  store i32 %142, ptr %140, align 4, !tbaa !24
  br label %143

143:                                              ; preds = %134, %124, %29
  ret void
}

declare dso_local signext i32 @AR_Encode(i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @indexfn(i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext range(i32 -2147483619, -2147483648) i32 @CountBitsSlice(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @arith_used, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call signext i32 @encoder_flush() #12
  store i32 0, ptr @arith_used, align 4, !tbaa !6
  %7 = add nsw i32 %6, 29
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 29, %2 ]
  %10 = load i32, ptr @trace, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @tf, align 8, !tbaa !10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 17, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  tail call void @putbits(i32 noundef signext 17, i32 noundef signext 1) #12
  %16 = load i32, ptr @trace, align 4, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @tf, align 8, !tbaa !10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %19)
  br label %21

21:                                               ; preds = %18, %15
  tail call void @putbits(i32 noundef signext 5, i32 noundef signext %0) #12
  %22 = load i32, ptr @trace, align 4, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @tf, align 8, !tbaa !10
  %26 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 6, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %24, %21
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext 0) #12
  %28 = load i32, ptr @trace, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @tf, align 8, !tbaa !10
  %32 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 8, i64 1, ptr %31)
  br label %33

33:                                               ; preds = %30, %27
  tail call void @putbits(i32 noundef signext 5, i32 noundef signext %1) #12
  ret i32 %9
}

declare dso_local signext i32 @encoder_flush(...) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @CountBitsCoeff(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = add i32 %1, -3
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %4)
  %10 = load i32, ptr %3, align 4, !tbaa !26
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr %3, align 4, !tbaa !26
  %12 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %13 = load i32, ptr %3, align 4, !tbaa !26
  %14 = add nsw i32 %13, %12
  store i32 %14, ptr %3, align 4, !tbaa !26
  %15 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %16 = load i32, ptr %3, align 4, !tbaa !26
  %17 = add nsw i32 %16, %15
  store i32 %17, ptr %3, align 4, !tbaa !26
  %18 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 3, i32 noundef signext %4)
  %19 = load i32, ptr %3, align 4, !tbaa !26
  %20 = add nsw i32 %19, %18
  store i32 %20, ptr %3, align 4, !tbaa !26
  %21 = getelementptr inbounds i8, ptr %3, i64 4
  %22 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 4, i32 noundef signext %4)
  %23 = load i32, ptr %21, align 4, !tbaa !27
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %21, align 4, !tbaa !27
  br label %79

25:                                               ; preds = %5
  %26 = and i32 %2, 32
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %2, 16
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %2, 8
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %2, 4
  %33 = icmp eq i32 %32, 0
  br i1 %27, label %34, label %45

34:                                               ; preds = %25
  br i1 %29, label %39, label %35

35:                                               ; preds = %34
  %36 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %37 = load i32, ptr %3, align 4, !tbaa !26
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr %3, align 4, !tbaa !26
  br label %39

39:                                               ; preds = %35, %34
  br i1 %31, label %44, label %40

40:                                               ; preds = %39
  %41 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %42 = load i32, ptr %3, align 4, !tbaa !26
  %43 = add nsw i32 %42, %41
  store i32 %43, ptr %3, align 4, !tbaa !26
  br label %44

44:                                               ; preds = %40, %39
  br i1 %33, label %59, label %55

45:                                               ; preds = %25
  %46 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %4)
  %47 = load i32, ptr %3, align 4, !tbaa !26
  %48 = add nsw i32 %47, %46
  store i32 %48, ptr %3, align 4, !tbaa !26
  br i1 %29, label %49, label %65

49:                                               ; preds = %45
  br i1 %31, label %54, label %50

50:                                               ; preds = %49
  %51 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %52 = load i32, ptr %3, align 4, !tbaa !26
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr %3, align 4, !tbaa !26
  br label %54

54:                                               ; preds = %50, %49
  br i1 %33, label %59, label %55

55:                                               ; preds = %54, %44, %73
  %56 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 3, i32 noundef signext %4)
  %57 = load i32, ptr %3, align 4, !tbaa !26
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr %3, align 4, !tbaa !26
  br label %59

59:                                               ; preds = %55, %73, %54, %44
  %60 = and i32 %2, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %2, 1
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds i8, ptr %3, i64 4
  br i1 %61, label %78, label %74

65:                                               ; preds = %45
  %66 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %67 = load i32, ptr %3, align 4, !tbaa !26
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr %3, align 4, !tbaa !26
  br i1 %31, label %73, label %69

69:                                               ; preds = %65
  %70 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %71 = load i32, ptr %3, align 4, !tbaa !26
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr %3, align 4, !tbaa !26
  br label %73

73:                                               ; preds = %65, %69
  br i1 %33, label %59, label %55

74:                                               ; preds = %59
  %75 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 4, i32 noundef signext %4)
  %76 = load i32, ptr %64, align 4, !tbaa !27
  %77 = add nsw i32 %76, %75
  store i32 %77, ptr %64, align 4, !tbaa !27
  br label %78

78:                                               ; preds = %59, %74
  br i1 %63, label %84, label %79

79:                                               ; preds = %78, %8
  %80 = phi ptr [ %21, %8 ], [ %64, %78 ]
  %81 = tail call signext i32 @CodeCoeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 5, i32 noundef signext %4)
  %82 = load i32, ptr %80, align 4, !tbaa !27
  %83 = add nsw i32 %82, %81
  store i32 %83, ptr %80, align 4, !tbaa !27
  br label %84

84:                                               ; preds = %79, %78
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @CodeCoeff(i32 noundef signext %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @trace, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @tf, align 8, !tbaa !10
  %9 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef signext %2) #12
  br label %10

10:                                               ; preds = %7, %4
  %11 = mul nsw i32 %3, %2
  %12 = add nsw i32 %2, 1
  %13 = mul nsw i32 %12, %3
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %151

15:                                               ; preds = %10
  %16 = add i32 %0, -3
  %17 = icmp ult i32 %16, 2
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  br label %20

20:                                               ; preds = %15, %93
  %21 = phi i64 [ %18, %15 ], [ %100, %93 ]
  %22 = phi i32 [ 0, %15 ], [ %99, %93 ]
  %23 = phi i32 [ 1, %15 ], [ %98, %93 ]
  %24 = phi i32 [ 0, %15 ], [ %97, %93 ]
  %25 = phi i32 [ 0, %15 ], [ %96, %93 ]
  %26 = phi i32 [ 0, %15 ], [ %95, %93 ]
  %27 = phi i32 [ 0, %15 ], [ %94, %93 ]
  %28 = trunc nsw i64 %21 to i32
  %29 = srem i32 %28, %3
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %17, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load i32, ptr @trace, align 4, !tbaa !6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @tf, align 8, !tbaa !10
  %37 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, ptr %19, align 4, !tbaa !6
  %40 = icmp eq i32 %39, 128
  %41 = select i1 %40, i32 255, i32 %39
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext %41) #12
  %42 = add nsw i32 %27, 8
  br label %93

43:                                               ; preds = %20
  %44 = getelementptr inbounds i32, ptr %1, i64 %21
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = add nsw i32 %25, 1
  br label %93

49:                                               ; preds = %43
  %50 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %51 = lshr i32 %45, 31
  %52 = icmp eq i32 %23, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = icmp slt i32 %24, 13
  %55 = icmp slt i32 %26, 64
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = tail call signext i32 @put_coeff(i32 noundef signext %26, i32 noundef signext %24, i32 noundef signext 0) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %53, %57
  %61 = load i32, ptr @trace, align 4, !tbaa !6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr @tf, align 8, !tbaa !10
  %65 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = icmp eq i32 %22, 1
  %68 = xor i32 %24, 255
  %69 = add nuw nsw i32 %68, 1
  %70 = select i1 %67, i32 %69, i32 %24
  tail call void @putbits(i32 noundef signext 7, i32 noundef signext 3) #12
  %71 = load i32, ptr @trace, align 4, !tbaa !6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr @tf, align 8, !tbaa !10
  %75 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 6, i64 1, ptr %74)
  br label %76

76:                                               ; preds = %73, %66
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %77 = load i32, ptr @trace, align 4, !tbaa !6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @tf, align 8, !tbaa !10
  %81 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr %80)
  br label %82

82:                                               ; preds = %79, %76
  tail call void @putbits(i32 noundef signext 6, i32 noundef signext %26) #12
  %83 = load i32, ptr @trace, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @tf, align 8, !tbaa !10
  %87 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %86)
  br label %88

88:                                               ; preds = %85, %82
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext %70) #12
  %89 = add nsw i32 %27, 22
  br label %93

90:                                               ; preds = %57
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %22) #12
  %91 = add i32 %27, 1
  %92 = add i32 %91, %58
  br label %93

93:                                               ; preds = %49, %90, %88, %38, %47
  %94 = phi i32 [ %27, %47 ], [ %42, %38 ], [ %27, %49 ], [ %89, %88 ], [ %92, %90 ]
  %95 = phi i32 [ %26, %47 ], [ %26, %38 ], [ %25, %49 ], [ %25, %88 ], [ %25, %90 ]
  %96 = phi i32 [ %48, %47 ], [ %25, %38 ], [ 0, %49 ], [ 0, %88 ], [ 0, %90 ]
  %97 = phi i32 [ %24, %47 ], [ %24, %38 ], [ %50, %49 ], [ %50, %88 ], [ %50, %90 ]
  %98 = phi i32 [ %23, %47 ], [ %23, %38 ], [ 0, %49 ], [ 0, %88 ], [ 0, %90 ]
  %99 = phi i32 [ %22, %47 ], [ %22, %38 ], [ %51, %49 ], [ %51, %88 ], [ %51, %90 ]
  %100 = add nsw i64 %21, 1
  %101 = trunc i64 %100 to i32
  %102 = icmp eq i32 %13, %101
  br i1 %102, label %103, label %20

103:                                              ; preds = %93
  %104 = icmp eq i32 %98, 0
  br i1 %104, label %105, label %151

105:                                              ; preds = %103
  %106 = load i32, ptr @trace, align 4, !tbaa !6
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @tf, align 8, !tbaa !10
  %110 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = icmp slt i32 %97, 13
  %113 = icmp slt i32 %95, 64
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = tail call signext i32 @put_coeff(i32 noundef signext %95, i32 noundef signext %97, i32 noundef signext 1) #12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %111, %115
  %119 = load i32, ptr @trace, align 4, !tbaa !6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @tf, align 8, !tbaa !10
  %123 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = icmp eq i32 %99, 1
  %126 = xor i32 %97, 255
  %127 = add nuw nsw i32 %126, 1
  %128 = select i1 %125, i32 %127, i32 %97
  tail call void @putbits(i32 noundef signext 7, i32 noundef signext 3) #12
  %129 = load i32, ptr @trace, align 4, !tbaa !6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr @tf, align 8, !tbaa !10
  %133 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 6, i64 1, ptr %132)
  br label %134

134:                                              ; preds = %131, %124
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #12
  %135 = load i32, ptr @trace, align 4, !tbaa !6
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @tf, align 8, !tbaa !10
  %139 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr %138)
  br label %140

140:                                              ; preds = %137, %134
  tail call void @putbits(i32 noundef signext 6, i32 noundef signext %95) #12
  %141 = load i32, ptr @trace, align 4, !tbaa !6
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr @tf, align 8, !tbaa !10
  %145 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %144)
  br label %146

146:                                              ; preds = %143, %140
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext %128) #12
  %147 = add nsw i32 %94, 22
  br label %151

148:                                              ; preds = %115
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %99) #12
  %149 = add i32 %94, 1
  %150 = add i32 %149, %116
  br label %151

151:                                              ; preds = %10, %146, %148, %103
  %152 = phi i32 [ %94, %103 ], [ %147, %146 ], [ %150, %148 ], [ 0, %10 ]
  ret i32 %152
}

declare dso_local signext i32 @put_coeff(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @Count_sac_BitsCoeff(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef %3, i32 noundef signext %4) local_unnamed_addr #0 {
  store i32 1, ptr @arith_used, align 4, !tbaa !6
  %6 = add i32 %1, -3
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %4)
  %10 = load i32, ptr %3, align 4, !tbaa !26
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr %3, align 4, !tbaa !26
  %12 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %13 = load i32, ptr %3, align 4, !tbaa !26
  %14 = add nsw i32 %13, %12
  store i32 %14, ptr %3, align 4, !tbaa !26
  %15 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %16 = load i32, ptr %3, align 4, !tbaa !26
  %17 = add nsw i32 %16, %15
  store i32 %17, ptr %3, align 4, !tbaa !26
  %18 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 3, i32 noundef signext %4)
  %19 = load i32, ptr %3, align 4, !tbaa !26
  %20 = add nsw i32 %19, %18
  store i32 %20, ptr %3, align 4, !tbaa !26
  %21 = getelementptr inbounds i8, ptr %3, i64 4
  %22 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 4, i32 noundef signext %4)
  %23 = load i32, ptr %21, align 4, !tbaa !27
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %21, align 4, !tbaa !27
  br label %79

25:                                               ; preds = %5
  %26 = and i32 %2, 32
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %2, 16
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %2, 8
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %2, 4
  %33 = icmp eq i32 %32, 0
  br i1 %27, label %34, label %45

34:                                               ; preds = %25
  br i1 %29, label %39, label %35

35:                                               ; preds = %34
  %36 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %37 = load i32, ptr %3, align 4, !tbaa !26
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr %3, align 4, !tbaa !26
  br label %39

39:                                               ; preds = %35, %34
  br i1 %31, label %44, label %40

40:                                               ; preds = %39
  %41 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %42 = load i32, ptr %3, align 4, !tbaa !26
  %43 = add nsw i32 %42, %41
  store i32 %43, ptr %3, align 4, !tbaa !26
  br label %44

44:                                               ; preds = %40, %39
  br i1 %33, label %59, label %55

45:                                               ; preds = %25
  %46 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %4)
  %47 = load i32, ptr %3, align 4, !tbaa !26
  %48 = add nsw i32 %47, %46
  store i32 %48, ptr %3, align 4, !tbaa !26
  br i1 %29, label %49, label %65

49:                                               ; preds = %45
  br i1 %31, label %54, label %50

50:                                               ; preds = %49
  %51 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %52 = load i32, ptr %3, align 4, !tbaa !26
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr %3, align 4, !tbaa !26
  br label %54

54:                                               ; preds = %50, %49
  br i1 %33, label %59, label %55

55:                                               ; preds = %54, %44, %73
  %56 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 3, i32 noundef signext %4)
  %57 = load i32, ptr %3, align 4, !tbaa !26
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr %3, align 4, !tbaa !26
  br label %59

59:                                               ; preds = %55, %73, %54, %44
  %60 = and i32 %2, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %2, 1
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds i8, ptr %3, i64 4
  br i1 %61, label %78, label %74

65:                                               ; preds = %45
  %66 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 1, i32 noundef signext %4)
  %67 = load i32, ptr %3, align 4, !tbaa !26
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr %3, align 4, !tbaa !26
  br i1 %31, label %73, label %69

69:                                               ; preds = %65
  %70 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 2, i32 noundef signext %4)
  %71 = load i32, ptr %3, align 4, !tbaa !26
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr %3, align 4, !tbaa !26
  br label %73

73:                                               ; preds = %65, %69
  br i1 %33, label %59, label %55

74:                                               ; preds = %59
  %75 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 4, i32 noundef signext %4)
  %76 = load i32, ptr %64, align 4, !tbaa !27
  %77 = add nsw i32 %76, %75
  store i32 %77, ptr %64, align 4, !tbaa !27
  br label %78

78:                                               ; preds = %59, %74
  br i1 %63, label %84, label %79

79:                                               ; preds = %78, %8
  %80 = phi ptr [ %21, %8 ], [ %64, %78 ]
  %81 = tail call signext i32 @Code_sac_Coeff(i32 noundef signext %1, ptr noundef %0, i32 noundef signext 5, i32 noundef signext %4)
  %82 = load i32, ptr %80, align 4, !tbaa !27
  %83 = add nsw i32 %82, %81
  store i32 %83, ptr %80, align 4, !tbaa !27
  br label %84

84:                                               ; preds = %79, %78
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @Code_sac_Coeff(i32 noundef signext %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = add i32 %0, -3
  %6 = icmp ult i32 %5, 2
  %7 = mul nsw i32 %3, %2
  %8 = add nsw i32 %2, 1
  %9 = mul nsw i32 %8, %3
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %203

11:                                               ; preds = %4
  %12 = select i1 %6, ptr @cumf_TCOEF3_intra, ptr @cumf_TCOEF3
  %13 = select i1 %6, ptr @cumf_TCOEF2_intra, ptr @cumf_TCOEF2
  %14 = select i1 %6, ptr @cumf_TCOEF1_intra, ptr @cumf_TCOEF1
  %15 = select i1 %6, ptr @cumf_TCOEFr_intra, ptr @cumf_TCOEFr
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  br label %18

18:                                               ; preds = %11, %115
  %19 = phi i64 [ %16, %11 ], [ %125, %115 ]
  %20 = phi i32 [ 0, %11 ], [ %124, %115 ]
  %21 = phi i32 [ 0, %11 ], [ %123, %115 ]
  %22 = phi i32 [ 0, %11 ], [ %122, %115 ]
  %23 = phi i32 [ 0, %11 ], [ %121, %115 ]
  %24 = phi i32 [ 1, %11 ], [ %120, %115 ]
  %25 = phi i32 [ 0, %11 ], [ %119, %115 ]
  %26 = phi i32 [ 0, %11 ], [ %118, %115 ]
  %27 = phi i32 [ 0, %11 ], [ %117, %115 ]
  %28 = phi i32 [ 0, %11 ], [ %116, %115 ]
  %29 = trunc nsw i64 %19 to i32
  %30 = srem i32 %29, %3
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %6, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %18
  %34 = load i32, ptr @trace, align 4, !tbaa !6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @tf, align 8, !tbaa !10
  %38 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, ptr %17, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 128
  %42 = select i1 %41, i32 255, i32 %40
  %43 = tail call signext i32 @indexfn(i32 noundef signext %42, ptr noundef nonnull @intradctab, i32 noundef signext 254) #12
  %44 = tail call signext i32 @AR_Encode(i32 noundef signext %43, ptr noundef nonnull @cumf_INTRADC) #12
  %45 = add nsw i32 %44, %28
  br label %115

46:                                               ; preds = %18
  %47 = getelementptr inbounds i32, ptr %1, i64 %19
  %48 = load i32, ptr %47, align 4, !tbaa !6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = add nsw i32 %26, 1
  br label %115

52:                                               ; preds = %46
  %53 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %54 = lshr i32 %48, 31
  %55 = shl i32 %26, 4
  %56 = or i32 %53, %55
  %57 = add nsw i32 %22, 1
  %58 = icmp eq i32 %24, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %52
  %60 = tail call signext i32 @indexfn(i32 noundef signext %21, ptr noundef nonnull @tcoeftab, i32 noundef signext 103) #12
  %61 = icmp slt i32 %25, 13
  %62 = icmp slt i32 %27, 64
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  switch i32 %23, label %67 [
    i32 1, label %68
    i32 2, label %65
    i32 3, label %66
  ]

65:                                               ; preds = %64
  br label %68

66:                                               ; preds = %64
  br label %68

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %64, %67, %66, %65
  %69 = phi ptr [ %13, %65 ], [ %12, %66 ], [ %15, %67 ], [ %14, %64 ]
  %70 = tail call signext i32 @AR_Encode(i32 noundef signext %60, ptr noundef nonnull %69) #12
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %110

72:                                               ; preds = %59, %68
  %73 = load i32, ptr @trace, align 4, !tbaa !6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @tf, align 8, !tbaa !10
  %77 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 15, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = icmp eq i32 %20, 1
  %80 = xor i32 %25, 255
  %81 = add nuw nsw i32 %80, 1
  %82 = select i1 %79, i32 %81, i32 %25
  %83 = tail call signext i32 @indexfn(i32 noundef signext 7167, ptr noundef nonnull @tcoeftab, i32 noundef signext 103) #12
  switch i32 %23, label %86 [
    i32 1, label %87
    i32 2, label %84
    i32 3, label %85
  ]

84:                                               ; preds = %78
  br label %87

85:                                               ; preds = %78
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %78, %84, %85, %86
  %88 = phi ptr [ %13, %84 ], [ %12, %85 ], [ %15, %86 ], [ %14, %78 ]
  %89 = tail call signext i32 @AR_Encode(i32 noundef signext %83, ptr noundef nonnull %88) #12
  %90 = add nsw i32 %89, %28
  %91 = tail call signext i32 @indexfn(i32 noundef signext 0, ptr noundef nonnull @lasttab, i32 noundef signext 2) #12
  br i1 %6, label %92, label %101

92:                                               ; preds = %87
  %93 = tail call signext i32 @AR_Encode(i32 noundef signext %91, ptr noundef nonnull @cumf_LAST_intra) #12
  %94 = add nsw i32 %93, %90
  %95 = tail call signext i32 @indexfn(i32 noundef signext %27, ptr noundef nonnull @runtab, i32 noundef signext 64) #12
  %96 = tail call signext i32 @AR_Encode(i32 noundef signext %95, ptr noundef nonnull @cumf_RUN_intra) #12
  %97 = add nsw i32 %94, %96
  %98 = tail call signext i32 @indexfn(i32 noundef signext %82, ptr noundef nonnull @leveltab, i32 noundef signext 254) #12
  %99 = tail call signext i32 @AR_Encode(i32 noundef signext %98, ptr noundef nonnull @cumf_LEVEL_intra) #12
  %100 = add nsw i32 %97, %99
  br label %115

101:                                              ; preds = %87
  %102 = tail call signext i32 @AR_Encode(i32 noundef signext %91, ptr noundef nonnull @cumf_LAST) #12
  %103 = add nsw i32 %102, %90
  %104 = tail call signext i32 @indexfn(i32 noundef signext %27, ptr noundef nonnull @runtab, i32 noundef signext 64) #12
  %105 = tail call signext i32 @AR_Encode(i32 noundef signext %104, ptr noundef nonnull @cumf_RUN) #12
  %106 = add nsw i32 %103, %105
  %107 = tail call signext i32 @indexfn(i32 noundef signext %82, ptr noundef nonnull @leveltab, i32 noundef signext 254) #12
  %108 = tail call signext i32 @AR_Encode(i32 noundef signext %107, ptr noundef nonnull @cumf_LEVEL) #12
  %109 = add nsw i32 %106, %108
  br label %115

110:                                              ; preds = %68
  %111 = tail call signext i32 @indexfn(i32 noundef signext %20, ptr noundef nonnull @signtab, i32 noundef signext 2) #12
  %112 = tail call signext i32 @AR_Encode(i32 noundef signext %111, ptr noundef nonnull @cumf_SIGN) #12
  %113 = add i32 %70, %28
  %114 = add i32 %113, %112
  br label %115

115:                                              ; preds = %52, %92, %101, %110, %39, %50
  %116 = phi i32 [ %45, %39 ], [ %28, %50 ], [ %28, %52 ], [ %100, %92 ], [ %109, %101 ], [ %114, %110 ]
  %117 = phi i32 [ %27, %39 ], [ %27, %50 ], [ %26, %52 ], [ %26, %92 ], [ %26, %101 ], [ %26, %110 ]
  %118 = phi i32 [ %26, %39 ], [ %51, %50 ], [ 0, %52 ], [ 0, %92 ], [ 0, %101 ], [ 0, %110 ]
  %119 = phi i32 [ %25, %39 ], [ %25, %50 ], [ %53, %52 ], [ %53, %92 ], [ %53, %101 ], [ %53, %110 ]
  %120 = phi i32 [ %24, %39 ], [ %24, %50 ], [ 0, %52 ], [ 0, %92 ], [ 0, %101 ], [ 0, %110 ]
  %121 = phi i32 [ %23, %39 ], [ %23, %50 ], [ %57, %52 ], [ %57, %92 ], [ %57, %101 ], [ %57, %110 ]
  %122 = phi i32 [ %22, %39 ], [ %22, %50 ], [ %57, %52 ], [ %57, %92 ], [ %57, %101 ], [ %57, %110 ]
  %123 = phi i32 [ %21, %39 ], [ %21, %50 ], [ %56, %52 ], [ %56, %92 ], [ %56, %101 ], [ %56, %110 ]
  %124 = phi i32 [ %20, %39 ], [ %20, %50 ], [ %54, %52 ], [ %54, %92 ], [ %54, %101 ], [ %54, %110 ]
  %125 = add nsw i64 %19, 1
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %9, %126
  br i1 %127, label %128, label %18

128:                                              ; preds = %115
  %129 = icmp eq i32 %120, 0
  %130 = or i32 %123, 4096
  br i1 %129, label %131, label %203

131:                                              ; preds = %128
  %132 = load i32, ptr @trace, align 4, !tbaa !6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @tf, align 8, !tbaa !10
  %136 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = tail call signext i32 @indexfn(i32 noundef signext %130, ptr noundef nonnull @tcoeftab, i32 noundef signext 103) #12
  %139 = icmp slt i32 %119, 13
  %140 = icmp slt i32 %117, 64
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  switch i32 %121, label %149 [
    i32 1, label %143
    i32 2, label %145
    i32 3, label %147
  ]

143:                                              ; preds = %142
  %144 = select i1 %6, ptr @cumf_TCOEF1_intra, ptr @cumf_TCOEF1
  br label %151

145:                                              ; preds = %142
  %146 = select i1 %6, ptr @cumf_TCOEF2_intra, ptr @cumf_TCOEF2
  br label %151

147:                                              ; preds = %142
  %148 = select i1 %6, ptr @cumf_TCOEF3_intra, ptr @cumf_TCOEF3
  br label %151

149:                                              ; preds = %142
  %150 = select i1 %6, ptr @cumf_TCOEFr_intra, ptr @cumf_TCOEFr
  br label %151

151:                                              ; preds = %149, %147, %145, %143
  %152 = phi ptr [ %144, %143 ], [ %146, %145 ], [ %148, %147 ], [ %150, %149 ]
  %153 = tail call signext i32 @AR_Encode(i32 noundef signext %138, ptr noundef nonnull %152) #12
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %198

155:                                              ; preds = %137, %151
  %156 = load i32, ptr @trace, align 4, !tbaa !6
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr @tf, align 8, !tbaa !10
  %160 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 15, i64 1, ptr %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = icmp eq i32 %124, 1
  %163 = xor i32 %119, 255
  %164 = add nuw nsw i32 %163, 1
  %165 = select i1 %162, i32 %164, i32 %119
  %166 = tail call signext i32 @indexfn(i32 noundef signext 7167, ptr noundef nonnull @tcoeftab, i32 noundef signext 103) #12
  switch i32 %121, label %173 [
    i32 1, label %167
    i32 2, label %169
    i32 3, label %171
  ]

167:                                              ; preds = %161
  %168 = select i1 %6, ptr @cumf_TCOEF1_intra, ptr @cumf_TCOEF1
  br label %175

169:                                              ; preds = %161
  %170 = select i1 %6, ptr @cumf_TCOEF2_intra, ptr @cumf_TCOEF2
  br label %175

171:                                              ; preds = %161
  %172 = select i1 %6, ptr @cumf_TCOEF3_intra, ptr @cumf_TCOEF3
  br label %175

173:                                              ; preds = %161
  %174 = select i1 %6, ptr @cumf_TCOEFr_intra, ptr @cumf_TCOEFr
  br label %175

175:                                              ; preds = %167, %169, %171, %173
  %176 = phi ptr [ %168, %167 ], [ %170, %169 ], [ %172, %171 ], [ %174, %173 ]
  %177 = tail call signext i32 @AR_Encode(i32 noundef signext %166, ptr noundef nonnull %176) #12
  %178 = add nsw i32 %177, %116
  %179 = tail call signext i32 @indexfn(i32 noundef signext 1, ptr noundef nonnull @lasttab, i32 noundef signext 2) #12
  br i1 %6, label %180, label %189

180:                                              ; preds = %175
  %181 = tail call signext i32 @AR_Encode(i32 noundef signext %179, ptr noundef nonnull @cumf_LAST_intra) #12
  %182 = add nsw i32 %181, %178
  %183 = tail call signext i32 @indexfn(i32 noundef signext %117, ptr noundef nonnull @runtab, i32 noundef signext 64) #12
  %184 = tail call signext i32 @AR_Encode(i32 noundef signext %183, ptr noundef nonnull @cumf_RUN_intra) #12
  %185 = add nsw i32 %182, %184
  %186 = tail call signext i32 @indexfn(i32 noundef signext %165, ptr noundef nonnull @leveltab, i32 noundef signext 254) #12
  %187 = tail call signext i32 @AR_Encode(i32 noundef signext %186, ptr noundef nonnull @cumf_LEVEL_intra) #12
  %188 = add nsw i32 %185, %187
  br label %203

189:                                              ; preds = %175
  %190 = tail call signext i32 @AR_Encode(i32 noundef signext %179, ptr noundef nonnull @cumf_LAST) #12
  %191 = add nsw i32 %190, %178
  %192 = tail call signext i32 @indexfn(i32 noundef signext %117, ptr noundef nonnull @runtab, i32 noundef signext 64) #12
  %193 = tail call signext i32 @AR_Encode(i32 noundef signext %192, ptr noundef nonnull @cumf_RUN) #12
  %194 = add nsw i32 %191, %193
  %195 = tail call signext i32 @indexfn(i32 noundef signext %165, ptr noundef nonnull @leveltab, i32 noundef signext 254) #12
  %196 = tail call signext i32 @AR_Encode(i32 noundef signext %195, ptr noundef nonnull @cumf_LEVEL) #12
  %197 = add nsw i32 %194, %196
  br label %203

198:                                              ; preds = %151
  %199 = tail call signext i32 @indexfn(i32 noundef signext %124, ptr noundef nonnull @signtab, i32 noundef signext 2) #12
  %200 = tail call signext i32 @AR_Encode(i32 noundef signext %199, ptr noundef nonnull @cumf_SIGN) #12
  %201 = add i32 %153, %116
  %202 = add i32 %201, %200
  br label %203

203:                                              ; preds = %4, %198, %189, %180, %128
  %204 = phi i32 [ %116, %128 ], [ %188, %180 ], [ %197, %189 ], [ %202, %198 ], [ 0, %4 ]
  ret i32 %204
}

; Function Attrs: nounwind
define dso_local signext i32 @CodeTCoef(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  switch i32 %1, label %11 [
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
  ]

5:                                                ; preds = %3
  %6 = select i1 %4, ptr @cumf_TCOEF1, ptr @cumf_TCOEF1_intra
  br label %13

7:                                                ; preds = %3
  %8 = select i1 %4, ptr @cumf_TCOEF2, ptr @cumf_TCOEF2_intra
  br label %13

9:                                                ; preds = %3
  %10 = select i1 %4, ptr @cumf_TCOEF3, ptr @cumf_TCOEF3_intra
  br label %13

11:                                               ; preds = %3
  %12 = select i1 %4, ptr @cumf_TCOEFr, ptr @cumf_TCOEFr_intra
  br label %13

13:                                               ; preds = %11, %9, %7, %5
  %14 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ]
  %15 = tail call signext i32 @AR_Encode(i32 noundef signext %0, ptr noundef nonnull %14) #12
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local signext i32 @FindCBP(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #5 {
  %4 = add i32 %1, -3
  %5 = icmp ult i32 %4, 2
  %6 = zext i1 %5 to i32
  %7 = zext i1 %5 to i64
  %8 = sext i32 %2 to i64
  %9 = icmp slt i32 %6, %2
  br i1 %9, label %14, label %19

10:                                               ; preds = %14
  %11 = add nuw nsw i64 %15, 1
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %19, label %14

14:                                               ; preds = %3, %10
  %15 = phi i64 [ %11, %10 ], [ %7, %3 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %14, %3
  %20 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 32, %14 ]
  %21 = add nsw i64 %7, %8
  %22 = shl i32 %2, 1
  %23 = add nsw i32 %6, %2
  %24 = shl nsw i32 %2, 1
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19, %33
  %27 = phi i64 [ %34, %33 ], [ %21, %19 ]
  %28 = getelementptr inbounds i32, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = or disjoint i32 %20, 16
  br label %37

33:                                               ; preds = %26
  %34 = add nsw i64 %27, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %22, %35
  br i1 %36, label %37, label %26

37:                                               ; preds = %33, %31, %19
  %38 = phi i32 [ %32, %31 ], [ %20, %19 ], [ %20, %33 ]
  %39 = add nsw i64 %21, %8
  %40 = mul i32 %2, 3
  %41 = or disjoint i32 %24, %6
  %42 = mul nsw i32 %2, 3
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37, %51
  %45 = phi i64 [ %52, %51 ], [ %39, %37 ]
  %46 = getelementptr inbounds i32, ptr %0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = or i32 %38, 8
  br label %55

51:                                               ; preds = %44
  %52 = add nsw i64 %45, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %40, %53
  br i1 %54, label %55, label %44

55:                                               ; preds = %51, %49, %37
  %56 = phi i32 [ %50, %49 ], [ %38, %37 ], [ %38, %51 ]
  %57 = add nsw i64 %39, %8
  %58 = shl i32 %2, 2
  %59 = add nsw i32 %42, %6
  %60 = shl nsw i32 %2, 2
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55, %69
  %63 = phi i64 [ %70, %69 ], [ %57, %55 ]
  %64 = getelementptr inbounds i32, ptr %0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = or i32 %56, 4
  br label %73

69:                                               ; preds = %62
  %70 = add nsw i64 %63, 1
  %71 = trunc i64 %70 to i32
  %72 = icmp eq i32 %58, %71
  br i1 %72, label %73, label %62

73:                                               ; preds = %69, %67, %55
  %74 = phi i32 [ %68, %67 ], [ %56, %55 ], [ %56, %69 ]
  %75 = add nsw i64 %57, %8
  %76 = mul i32 %2, 5
  %77 = or disjoint i32 %60, %6
  %78 = mul nsw i32 %2, 5
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %73, %87
  %81 = phi i64 [ %88, %87 ], [ %75, %73 ]
  %82 = getelementptr inbounds i32, ptr %0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = or i32 %74, 2
  br label %91

87:                                               ; preds = %80
  %88 = add nsw i64 %81, 1
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %76, %89
  br i1 %90, label %91, label %80

91:                                               ; preds = %87, %85, %73
  %92 = phi i32 [ %86, %85 ], [ %74, %73 ], [ %74, %87 ]
  %93 = mul i32 %2, 6
  %94 = add nsw i32 %78, %6
  %95 = mul nsw i32 %2, 6
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = add nsw i64 %75, %8
  br label %99

99:                                               ; preds = %106, %97
  %100 = phi i64 [ %98, %97 ], [ %107, %106 ]
  %101 = getelementptr inbounds i32, ptr %0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = or i32 %92, 1
  br label %110

106:                                              ; preds = %99
  %107 = add nsw i64 %100, 1
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %93, %108
  br i1 %109, label %110, label %99

110:                                              ; preds = %106, %104, %91
  %111 = phi i32 [ %105, %104 ], [ %92, %91 ], [ %92, %106 ]
  ret i32 %111
}

; Function Attrs: nounwind
define dso_local void @CountBitsVectors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %10 = add nsw i32 %2, 1
  %11 = add nsw i32 %3, 1
  %12 = icmp eq i32 %4, 2
  %13 = sext i32 %11 to i64
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  %16 = zext i1 %12 to i64
  br label %17

17:                                               ; preds = %7, %126
  %18 = phi i64 [ %16, %7 ], [ %127, %126 ]
  %19 = trunc nuw nsw i64 %18 to i32
  call void @FindPMV(ptr noundef %0, i32 noundef signext %10, i32 noundef signext %11, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext 1)
  %20 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %18, i64 %13, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = shl nsw i32 %22, 1
  %24 = getelementptr inbounds i8, ptr %21, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = add nsw i32 %23, %25
  %27 = load i32, ptr %8, align 4, !tbaa !6
  %28 = sub i32 %26, %27
  %29 = getelementptr inbounds i8, ptr %21, i64 4
  %30 = load i32, ptr %29, align 4, !tbaa !31
  %31 = shl nsw i32 %30, 1
  %32 = getelementptr inbounds i8, ptr %21, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !32
  %34 = add nsw i32 %31, %33
  %35 = load i32, ptr %9, align 4, !tbaa !6
  %36 = sub i32 %34, %35
  %37 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %17
  %40 = icmp slt i32 %28, -32
  %41 = add nsw i32 %28, 64
  %42 = icmp sgt i32 %28, 31
  %43 = add nsw i32 %28, -64
  %44 = select i1 %42, i32 %43, i32 %28
  %45 = select i1 %40, i32 %41, i32 %44
  %46 = icmp slt i32 %36, -32
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = add nsw i32 %36, 64
  br label %78

49:                                               ; preds = %39
  %50 = icmp sgt i32 %36, 31
  %51 = add nsw i32 %36, -64
  %52 = select i1 %50, i32 %51, i32 %36
  br label %78

53:                                               ; preds = %17
  %54 = icmp slt i32 %27, -31
  %55 = icmp slt i32 %28, -63
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = add nsw i32 %28, 64
  br label %65

59:                                               ; preds = %53
  %60 = icmp sgt i32 %27, 32
  %61 = icmp sgt i32 %28, 63
  %62 = select i1 %60, i1 %61, i1 false
  %63 = add nsw i32 %28, -64
  %64 = select i1 %62, i32 %63, i32 %28
  br label %65

65:                                               ; preds = %59, %57
  %66 = phi i32 [ %58, %57 ], [ %64, %59 ]
  %67 = icmp slt i32 %35, -31
  %68 = icmp slt i32 %36, -63
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = add nsw i32 %36, 64
  br label %78

72:                                               ; preds = %65
  %73 = icmp sgt i32 %35, 32
  %74 = icmp sgt i32 %36, 63
  %75 = select i1 %73, i1 %74, i1 false
  %76 = add nsw i32 %36, -64
  %77 = select i1 %75, i32 %76, i32 %36
  br label %78

78:                                               ; preds = %72, %49, %70, %47
  %79 = phi i32 [ %71, %70 ], [ %48, %47 ], [ %52, %49 ], [ %77, %72 ]
  %80 = phi i32 [ %66, %70 ], [ %45, %47 ], [ %45, %49 ], [ %66, %72 ]
  %81 = load i32, ptr @trace, align 4, !tbaa !6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr @tf, align 8, !tbaa !10
  %85 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 9, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = lshr i32 %80, 25
  %88 = and i32 %87, 64
  %89 = add i32 %88, %80
  %90 = lshr i32 %79, 25
  %91 = and i32 %90, 64
  %92 = add i32 %91, %79
  %93 = tail call signext i32 @put_mv(i32 noundef signext %89) #12
  %94 = load i32, ptr %15, align 4, !tbaa !33
  %95 = add nsw i32 %94, %93
  store i32 %95, ptr %15, align 4, !tbaa !33
  %96 = tail call signext i32 @put_mv(i32 noundef signext %92) #12
  %97 = load i32, ptr %15, align 4, !tbaa !33
  %98 = add nsw i32 %97, %96
  store i32 %98, ptr %15, align 4, !tbaa !33
  %99 = load i32, ptr @trace, align 4, !tbaa !6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %126, label %101

101:                                              ; preds = %86
  %102 = icmp sgt i32 %89, 31
  %103 = add nsw i32 %89, -64
  %104 = select i1 %102, i32 %103, i32 %89
  %105 = icmp sgt i32 %92, 31
  %106 = add nsw i32 %92, -64
  %107 = select i1 %105, i32 %106, i32 %92
  %108 = load ptr, ptr @tf, align 8, !tbaa !10
  %109 = load ptr, ptr %20, align 8, !tbaa !10
  %110 = load i32, ptr %109, align 4, !tbaa !28
  %111 = shl nsw i32 %110, 1
  %112 = getelementptr inbounds i8, ptr %109, i64 8
  %113 = load i32, ptr %112, align 4, !tbaa !30
  %114 = add nsw i32 %111, %113
  %115 = getelementptr inbounds i8, ptr %109, i64 4
  %116 = load i32, ptr %115, align 4, !tbaa !31
  %117 = shl nsw i32 %116, 1
  %118 = getelementptr inbounds i8, ptr %109, i64 12
  %119 = load i32, ptr %118, align 4, !tbaa !32
  %120 = add nsw i32 %117, %119
  %121 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.22, i32 noundef signext %114, i32 noundef signext %120) #12
  %122 = load ptr, ptr @tf, align 8, !tbaa !10
  %123 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.23, i32 noundef signext %27, i32 noundef signext %35) #12
  %124 = load ptr, ptr @tf, align 8, !tbaa !10
  %125 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.24, i32 noundef signext %104, i32 noundef signext %107) #12
  br label %126

126:                                              ; preds = %86, %101
  %127 = add nuw nsw i64 %18, 1
  %128 = icmp ult i64 %18, 4
  %129 = and i1 %12, %128
  br i1 %129, label %17, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds i8, ptr %6, i64 40
  %132 = load i32, ptr %131, align 4, !tbaa !19
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %175, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %6, i64 64
  %136 = load i32, ptr %135, align 4, !tbaa !20
  %137 = add i32 %136, -1
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %139, label %175

139:                                              ; preds = %134
  %140 = getelementptr inbounds i8, ptr %0, i64 262800
  %141 = getelementptr inbounds [73 x [90 x ptr]], ptr %140, i64 0, i64 %13, i64 %14
  %142 = load ptr, ptr %141, align 8, !tbaa !10
  %143 = load i32, ptr %142, align 4, !tbaa !28
  %144 = getelementptr inbounds i8, ptr %142, i64 4
  %145 = load i32, ptr %144, align 4, !tbaa !31
  %146 = lshr i32 %143, 25
  %147 = and i32 %146, 64
  %148 = add i32 %147, %143
  %149 = lshr i32 %145, 25
  %150 = and i32 %149, 64
  %151 = add i32 %150, %145
  %152 = load i32, ptr @trace, align 4, !tbaa !6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %139
  %155 = load ptr, ptr @tf, align 8, !tbaa !10
  %156 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %154, %139
  %158 = tail call signext i32 @put_mv(i32 noundef signext %148) #12
  %159 = load i32, ptr %15, align 4, !tbaa !33
  %160 = add nsw i32 %159, %158
  store i32 %160, ptr %15, align 4, !tbaa !33
  %161 = tail call signext i32 @put_mv(i32 noundef signext %151) #12
  %162 = load i32, ptr %15, align 4, !tbaa !33
  %163 = add nsw i32 %162, %161
  store i32 %163, ptr %15, align 4, !tbaa !33
  %164 = load i32, ptr @trace, align 4, !tbaa !6
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %157
  %167 = icmp sgt i32 %148, 31
  %168 = add nsw i32 %148, -64
  %169 = select i1 %167, i32 %168, i32 %148
  %170 = icmp sgt i32 %151, 31
  %171 = add nsw i32 %151, -64
  %172 = select i1 %170, i32 %171, i32 %151
  %173 = load ptr, ptr @tf, align 8, !tbaa !10
  %174 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.26, i32 noundef signext %169, i32 noundef signext %172) #12
  br label %175

175:                                              ; preds = %134, %166, %157, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind
define dso_local void @FindPMV(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7) local_unnamed_addr #0 {
  %9 = sext i32 %2 to i64
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 0, i64 %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = getelementptr inbounds i8, ptr %13, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = icmp eq i32 %15, 2
  %17 = add nsw i32 %2, -1
  %18 = sext i32 %17 to i64
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 0, i64 %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %21, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !34
  %24 = icmp eq i32 %23, 2
  %25 = add nsw i32 %1, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 0, i64 %18, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds i8, ptr %28, i64 20
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = icmp eq i32 %30, 2
  switch i32 %5, label %45 [
    i32 0, label %32
    i32 1, label %36
    i32 2, label %40
    i32 3, label %43
    i32 4, label %48
  ]

32:                                               ; preds = %8
  %33 = select i1 %16, i64 2, i64 0
  %34 = select i1 %24, i32 3, i32 0
  %35 = select i1 %31, i32 3, i32 0
  br label %48

36:                                               ; preds = %8
  %37 = select i1 %16, i64 2, i64 0
  %38 = select i1 %24, i32 3, i32 0
  %39 = select i1 %31, i32 3, i32 0
  br label %48

40:                                               ; preds = %8
  %41 = select i1 %24, i32 4, i32 0
  %42 = select i1 %31, i32 3, i32 0
  br label %48

43:                                               ; preds = %8
  %44 = select i1 %16, i64 4, i64 0
  br label %48

45:                                               ; preds = %8
  %46 = load ptr, ptr @stderr, align 8, !tbaa !10
  %47 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 45, i64 1, ptr %46) #13
  tail call void @exit(i32 noundef signext -1) #14
  unreachable

48:                                               ; preds = %8, %43, %40, %36, %32
  %49 = phi i32 [ %10, %43 ], [ %1, %40 ], [ %10, %36 ], [ %10, %32 ], [ %1, %8 ]
  %50 = phi i32 [ %1, %43 ], [ %25, %40 ], [ %25, %36 ], [ %25, %32 ], [ %1, %8 ]
  %51 = phi i32 [ %2, %43 ], [ %17, %40 ], [ %17, %36 ], [ %17, %32 ], [ %2, %8 ]
  %52 = phi i64 [ %44, %43 ], [ 1, %40 ], [ %37, %36 ], [ %33, %32 ], [ 3, %8 ]
  %53 = phi i32 [ 1, %43 ], [ %41, %40 ], [ %38, %36 ], [ %34, %32 ], [ 1, %8 ]
  %54 = phi i32 [ 2, %43 ], [ %42, %40 ], [ %39, %36 ], [ %35, %32 ], [ 2, %8 ]
  %55 = icmp eq i32 %7, 0
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %52, i64 %9, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = load i32, ptr %58, align 4, !tbaa !28
  %60 = shl nsw i32 %59, 1
  br i1 %55, label %83, label %61

61:                                               ; preds = %48
  %62 = getelementptr inbounds i8, ptr %58, i64 8
  %63 = load i32, ptr %62, align 4, !tbaa !30
  %64 = add nsw i32 %60, %63
  %65 = zext nneg i32 %53 to i64
  %66 = sext i32 %51 to i64
  %67 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %65, i64 %66, i64 %19
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  %69 = load i32, ptr %68, align 4, !tbaa !28
  %70 = shl nsw i32 %69, 1
  %71 = getelementptr inbounds i8, ptr %68, i64 8
  %72 = load i32, ptr %71, align 4, !tbaa !30
  %73 = add nsw i32 %70, %72
  %74 = zext nneg i32 %54 to i64
  %75 = sext i32 %50 to i64
  %76 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %74, i64 %66, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !10
  %78 = load i32, ptr %77, align 4, !tbaa !28
  %79 = shl nsw i32 %78, 1
  %80 = getelementptr inbounds i8, ptr %77, i64 8
  %81 = load i32, ptr %80, align 4, !tbaa !30
  %82 = add nsw i32 %79, %81
  br label %96

83:                                               ; preds = %48
  %84 = zext nneg i32 %53 to i64
  %85 = sext i32 %51 to i64
  %86 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %84, i64 %85, i64 %19
  %87 = load ptr, ptr %86, align 8, !tbaa !10
  %88 = load i32, ptr %87, align 4, !tbaa !28
  %89 = shl nsw i32 %88, 1
  %90 = zext nneg i32 %54 to i64
  %91 = sext i32 %50 to i64
  %92 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %90, i64 %85, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = load i32, ptr %93, align 4, !tbaa !28
  %95 = shl nsw i32 %94, 1
  br label %96

96:                                               ; preds = %83, %61
  %97 = phi ptr [ %77, %61 ], [ %93, %83 ]
  %98 = phi ptr [ %68, %61 ], [ %87, %83 ]
  %99 = phi i32 [ %64, %61 ], [ %60, %83 ]
  %100 = phi i32 [ %73, %61 ], [ %89, %83 ]
  %101 = phi i32 [ %82, %61 ], [ %95, %83 ]
  %102 = icmp ne i32 %6, 0
  %103 = icmp ult i32 %5, 3
  %104 = and i1 %103, %102
  %105 = select i1 %104, i32 1998, i32 %100
  %106 = icmp eq i32 %105, 1998
  %107 = select i1 %106, i32 %99, i32 %105
  %108 = select i1 %106, i32 %99, i32 %101
  %109 = tail call i32 @llvm.smax.i32(i32 %107, i32 %108)
  %110 = tail call i32 @llvm.smax.i32(i32 %99, i32 %109)
  %111 = tail call i32 @llvm.smin.i32(i32 %107, i32 %108)
  %112 = tail call i32 @llvm.smin.i32(i32 %99, i32 %111)
  %113 = add i32 %107, %99
  %114 = add i32 %113, %108
  %115 = add i32 %112, %110
  %116 = sub i32 %114, %115
  store i32 %116, ptr %3, align 4, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %58, i64 4
  %118 = load i32, ptr %117, align 4, !tbaa !31
  %119 = shl nsw i32 %118, 1
  br i1 %55, label %136, label %120

120:                                              ; preds = %96
  %121 = getelementptr inbounds i8, ptr %58, i64 12
  %122 = load i32, ptr %121, align 4, !tbaa !32
  %123 = add nsw i32 %119, %122
  %124 = getelementptr inbounds i8, ptr %98, i64 4
  %125 = load i32, ptr %124, align 4, !tbaa !31
  %126 = shl nsw i32 %125, 1
  %127 = getelementptr inbounds i8, ptr %98, i64 12
  %128 = load i32, ptr %127, align 4, !tbaa !32
  %129 = add nsw i32 %126, %128
  %130 = getelementptr inbounds i8, ptr %97, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !31
  %132 = shl nsw i32 %131, 1
  %133 = getelementptr inbounds i8, ptr %97, i64 12
  %134 = load i32, ptr %133, align 4, !tbaa !32
  %135 = add nsw i32 %132, %134
  br label %143

136:                                              ; preds = %96
  %137 = getelementptr inbounds i8, ptr %98, i64 4
  %138 = load i32, ptr %137, align 4, !tbaa !31
  %139 = shl nsw i32 %138, 1
  %140 = getelementptr inbounds i8, ptr %97, i64 4
  %141 = load i32, ptr %140, align 4, !tbaa !31
  %142 = shl nsw i32 %141, 1
  br label %143

143:                                              ; preds = %136, %120
  %144 = phi i32 [ %123, %120 ], [ %119, %136 ]
  %145 = phi i32 [ %129, %120 ], [ %139, %136 ]
  %146 = phi i32 [ %135, %120 ], [ %142, %136 ]
  %147 = select i1 %104, i32 1998, i32 %145
  %148 = icmp eq i32 %147, 1998
  %149 = select i1 %148, i32 %144, i32 %147
  %150 = select i1 %148, i32 %144, i32 %146
  %151 = tail call i32 @llvm.smax.i32(i32 %149, i32 %150)
  %152 = tail call i32 @llvm.smax.i32(i32 %144, i32 %151)
  %153 = tail call i32 @llvm.smin.i32(i32 %149, i32 %150)
  %154 = tail call i32 @llvm.smin.i32(i32 %144, i32 %153)
  %155 = add i32 %149, %144
  %156 = add i32 %155, %150
  %157 = add i32 %154, %152
  %158 = sub i32 %156, %157
  store i32 %158, ptr %4, align 4, !tbaa !6
  ret void
}

declare dso_local signext i32 @put_mv(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @Count_sac_BitsVectors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 1, ptr @arith_used, align 4, !tbaa !6
  %10 = add nsw i32 %2, 1
  %11 = add nsw i32 %3, 1
  %12 = icmp eq i32 %4, 2
  %13 = sext i32 %11 to i64
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  %16 = zext i1 %12 to i64
  br label %17

17:                                               ; preds = %7, %128
  %18 = phi i64 [ %16, %7 ], [ %129, %128 ]
  %19 = trunc nuw nsw i64 %18 to i32
  call void @FindPMV(ptr noundef %0, i32 noundef signext %10, i32 noundef signext %11, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext 1)
  %20 = getelementptr inbounds [73 x [90 x ptr]], ptr %0, i64 %18, i64 %13, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = shl nsw i32 %22, 1
  %24 = getelementptr inbounds i8, ptr %21, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = add nsw i32 %23, %25
  %27 = load i32, ptr %8, align 4, !tbaa !6
  %28 = sub i32 %26, %27
  %29 = getelementptr inbounds i8, ptr %21, i64 4
  %30 = load i32, ptr %29, align 4, !tbaa !31
  %31 = shl nsw i32 %30, 1
  %32 = getelementptr inbounds i8, ptr %21, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !32
  %34 = add nsw i32 %31, %33
  %35 = load i32, ptr %9, align 4, !tbaa !6
  %36 = sub i32 %34, %35
  %37 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %17
  %40 = icmp slt i32 %28, -32
  %41 = add nsw i32 %28, 64
  %42 = icmp sgt i32 %28, 31
  %43 = add nsw i32 %28, -64
  %44 = select i1 %42, i32 %43, i32 %28
  %45 = select i1 %40, i32 %41, i32 %44
  %46 = icmp slt i32 %36, -32
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = add nsw i32 %36, 64
  br label %78

49:                                               ; preds = %39
  %50 = icmp sgt i32 %36, 31
  %51 = add nsw i32 %36, -64
  %52 = select i1 %50, i32 %51, i32 %36
  br label %78

53:                                               ; preds = %17
  %54 = icmp slt i32 %27, -31
  %55 = icmp slt i32 %28, -63
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = add nsw i32 %28, 64
  br label %65

59:                                               ; preds = %53
  %60 = icmp sgt i32 %27, 32
  %61 = icmp sgt i32 %28, 63
  %62 = select i1 %60, i1 %61, i1 false
  %63 = add nsw i32 %28, -64
  %64 = select i1 %62, i32 %63, i32 %28
  br label %65

65:                                               ; preds = %59, %57
  %66 = phi i32 [ %58, %57 ], [ %64, %59 ]
  %67 = icmp slt i32 %35, -31
  %68 = icmp slt i32 %36, -63
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = add nsw i32 %36, 64
  br label %78

72:                                               ; preds = %65
  %73 = icmp sgt i32 %35, 32
  %74 = icmp sgt i32 %36, 63
  %75 = select i1 %73, i1 %74, i1 false
  %76 = add nsw i32 %36, -64
  %77 = select i1 %75, i32 %76, i32 %36
  br label %78

78:                                               ; preds = %72, %49, %70, %47
  %79 = phi i32 [ %71, %70 ], [ %48, %47 ], [ %52, %49 ], [ %77, %72 ]
  %80 = phi i32 [ %66, %70 ], [ %45, %47 ], [ %45, %49 ], [ %66, %72 ]
  %81 = lshr i32 %80, 25
  %82 = and i32 %81, 64
  %83 = add i32 %82, %80
  %84 = lshr i32 %79, 25
  %85 = and i32 %84, 64
  %86 = add i32 %85, %79
  %87 = load i32, ptr @trace, align 4, !tbaa !6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr @tf, align 8, !tbaa !10
  %91 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 9, i64 1, ptr %90)
  br label %92

92:                                               ; preds = %89, %78
  %93 = tail call signext i32 @indexfn(i32 noundef signext %83, ptr noundef nonnull @mvdtab, i32 noundef signext 64) #12
  %94 = tail call signext i32 @AR_Encode(i32 noundef signext %93, ptr noundef nonnull @cumf_MVD) #12
  %95 = load i32, ptr %15, align 4, !tbaa !33
  %96 = add nsw i32 %95, %94
  store i32 %96, ptr %15, align 4, !tbaa !33
  %97 = tail call signext i32 @indexfn(i32 noundef signext %86, ptr noundef nonnull @mvdtab, i32 noundef signext 64) #12
  %98 = tail call signext i32 @AR_Encode(i32 noundef signext %97, ptr noundef nonnull @cumf_MVD) #12
  %99 = load i32, ptr %15, align 4, !tbaa !33
  %100 = add nsw i32 %99, %98
  store i32 %100, ptr %15, align 4, !tbaa !33
  %101 = load i32, ptr @trace, align 4, !tbaa !6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %92
  %104 = icmp sgt i32 %83, 31
  %105 = add nsw i32 %83, -64
  %106 = select i1 %104, i32 %105, i32 %83
  %107 = icmp sgt i32 %86, 31
  %108 = add nsw i32 %86, -64
  %109 = select i1 %107, i32 %108, i32 %86
  %110 = load ptr, ptr @tf, align 8, !tbaa !10
  %111 = load ptr, ptr %20, align 8, !tbaa !10
  %112 = load i32, ptr %111, align 4, !tbaa !28
  %113 = shl nsw i32 %112, 1
  %114 = getelementptr inbounds i8, ptr %111, i64 8
  %115 = load i32, ptr %114, align 4, !tbaa !30
  %116 = add nsw i32 %113, %115
  %117 = getelementptr inbounds i8, ptr %111, i64 4
  %118 = load i32, ptr %117, align 4, !tbaa !31
  %119 = shl nsw i32 %118, 1
  %120 = getelementptr inbounds i8, ptr %111, i64 12
  %121 = load i32, ptr %120, align 4, !tbaa !32
  %122 = add nsw i32 %119, %121
  %123 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.22, i32 noundef signext %116, i32 noundef signext %122) #12
  %124 = load ptr, ptr @tf, align 8, !tbaa !10
  %125 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.23, i32 noundef signext %27, i32 noundef signext %35) #12
  %126 = load ptr, ptr @tf, align 8, !tbaa !10
  %127 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.24, i32 noundef signext %106, i32 noundef signext %109) #12
  br label %128

128:                                              ; preds = %92, %103
  %129 = add nuw nsw i64 %18, 1
  %130 = icmp ult i64 %18, 4
  %131 = and i1 %12, %130
  br i1 %131, label %17, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %6, i64 40
  %134 = load i32, ptr %133, align 4, !tbaa !19
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %191, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, ptr %6, i64 64
  %138 = load i32, ptr %137, align 4, !tbaa !20
  %139 = add i32 %138, -1
  %140 = icmp ult i32 %139, 2
  br i1 %140, label %141, label %191

141:                                              ; preds = %136
  %142 = getelementptr inbounds i8, ptr %0, i64 262800
  %143 = getelementptr inbounds [73 x [90 x ptr]], ptr %142, i64 0, i64 %13, i64 %14
  %144 = load ptr, ptr %143, align 8, !tbaa !10
  %145 = load i32, ptr %144, align 4, !tbaa !28
  %146 = getelementptr inbounds i8, ptr %144, i64 4
  %147 = load i32, ptr %146, align 4, !tbaa !31
  %148 = icmp slt i32 %145, -32
  %149 = add nsw i32 %145, 64
  %150 = icmp sgt i32 %145, 31
  %151 = add nsw i32 %145, -64
  %152 = select i1 %150, i32 %151, i32 %145
  %153 = select i1 %148, i32 %149, i32 %152
  %154 = icmp slt i32 %147, -32
  %155 = add nsw i32 %147, 64
  %156 = icmp sgt i32 %147, 31
  %157 = add nsw i32 %147, -64
  %158 = select i1 %156, i32 %157, i32 %147
  %159 = select i1 %154, i32 %155, i32 %158
  %160 = lshr i32 %153, 25
  %161 = and i32 %160, 64
  %162 = add i32 %161, %153
  %163 = lshr i32 %159, 25
  %164 = and i32 %163, 64
  %165 = add i32 %164, %159
  %166 = load i32, ptr @trace, align 4, !tbaa !6
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %141
  %169 = load ptr, ptr @tf, align 8, !tbaa !10
  %170 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %169)
  br label %171

171:                                              ; preds = %168, %141
  %172 = tail call signext i32 @indexfn(i32 noundef signext %162, ptr noundef nonnull @mvdtab, i32 noundef signext 64) #12
  %173 = tail call signext i32 @AR_Encode(i32 noundef signext %172, ptr noundef nonnull @cumf_MVD) #12
  %174 = load i32, ptr %15, align 4, !tbaa !33
  %175 = add nsw i32 %174, %173
  store i32 %175, ptr %15, align 4, !tbaa !33
  %176 = tail call signext i32 @indexfn(i32 noundef signext %165, ptr noundef nonnull @mvdtab, i32 noundef signext 64) #12
  %177 = tail call signext i32 @AR_Encode(i32 noundef signext %176, ptr noundef nonnull @cumf_MVD) #12
  %178 = load i32, ptr %15, align 4, !tbaa !33
  %179 = add nsw i32 %178, %177
  store i32 %179, ptr %15, align 4, !tbaa !33
  %180 = load i32, ptr @trace, align 4, !tbaa !6
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %191, label %182

182:                                              ; preds = %171
  %183 = icmp sgt i32 %162, 31
  %184 = add nsw i32 %162, -64
  %185 = select i1 %183, i32 %184, i32 %162
  %186 = icmp sgt i32 %165, 31
  %187 = add nsw i32 %165, -64
  %188 = select i1 %186, i32 %187, i32 %165
  %189 = load ptr, ptr @tf, align 8, !tbaa !10
  %190 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.26, i32 noundef signext %185, i32 noundef signext %188) #12
  br label %191

191:                                              ; preds = %136, %182, %171, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @ZeroBits(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @ZeroRes(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @AddBits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %1, align 4, !tbaa !26
  %4 = load i32, ptr %0, align 4, !tbaa !26
  %5 = add nsw i32 %4, %3
  store i32 %5, ptr %0, align 4, !tbaa !26
  %6 = getelementptr inbounds i8, ptr %1, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !27
  %10 = add nsw i32 %9, %7
  store i32 %10, ptr %8, align 4, !tbaa !27
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load i32, ptr %11, align 4, !tbaa !33
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !33
  %15 = add nsw i32 %14, %12
  store i32 %15, ptr %13, align 4, !tbaa !33
  %16 = getelementptr inbounds i8, ptr %1, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !22
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !22
  %20 = add nsw i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !22
  %21 = getelementptr inbounds i8, ptr %1, i64 16
  %22 = load i32, ptr %21, align 4, !tbaa !18
  %23 = getelementptr inbounds i8, ptr %0, i64 16
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = add nsw i32 %24, %22
  store i32 %25, ptr %23, align 4, !tbaa !18
  %26 = getelementptr inbounds i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !21
  %28 = getelementptr inbounds i8, ptr %0, i64 20
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %28, align 4, !tbaa !21
  %31 = getelementptr inbounds i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 4, !tbaa !25
  %33 = getelementptr inbounds i8, ptr %0, i64 24
  %34 = load i32, ptr %33, align 4, !tbaa !25
  %35 = add nsw i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !25
  %36 = getelementptr inbounds i8, ptr %1, i64 28
  %37 = load i32, ptr %36, align 4, !tbaa !16
  %38 = getelementptr inbounds i8, ptr %0, i64 28
  %39 = load i32, ptr %38, align 4, !tbaa !16
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %38, align 4, !tbaa !16
  %41 = getelementptr inbounds i8, ptr %1, i64 36
  %42 = load i32, ptr %41, align 4, !tbaa !24
  %43 = getelementptr inbounds i8, ptr %0, i64 36
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = add nsw i32 %44, %42
  store i32 %45, ptr %43, align 4, !tbaa !24
  %46 = getelementptr inbounds i8, ptr %1, i64 32
  %47 = load i32, ptr %46, align 4, !tbaa !35
  %48 = getelementptr inbounds i8, ptr %0, i64 32
  %49 = load i32, ptr %48, align 4, !tbaa !35
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !35
  %51 = getelementptr inbounds i8, ptr %1, i64 40
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = getelementptr inbounds i8, ptr %0, i64 40
  %54 = load i32, ptr %53, align 4, !tbaa !36
  %55 = add nsw i32 %54, %52
  store i32 %55, ptr %53, align 4, !tbaa !36
  %56 = getelementptr inbounds i8, ptr %1, i64 44
  %57 = load i32, ptr %56, align 4, !tbaa !37
  %58 = getelementptr inbounds i8, ptr %0, i64 44
  %59 = load i32, ptr %58, align 4, !tbaa !37
  %60 = add nsw i32 %59, %57
  store i32 %60, ptr %58, align 4, !tbaa !37
  %61 = getelementptr inbounds i8, ptr %1, i64 48
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = getelementptr inbounds i8, ptr %0, i64 48
  %64 = load i32, ptr %63, align 4, !tbaa !38
  %65 = add nsw i32 %64, %62
  store i32 %65, ptr %63, align 4, !tbaa !38
  %66 = getelementptr inbounds i8, ptr %1, i64 52
  %67 = load i32, ptr %66, align 4, !tbaa !39
  %68 = getelementptr inbounds i8, ptr %0, i64 52
  %69 = load i32, ptr %68, align 4, !tbaa !39
  %70 = add nsw i32 %69, %67
  store i32 %70, ptr %68, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @AddRes(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !40
  %5 = load float, ptr %0, align 4, !tbaa !40
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %1, i64 4
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %0, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fadd float %8, %10
  store float %11, ptr %9, align 4, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = load float, ptr %12, align 4, !tbaa !43
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = load float, ptr %14, align 4, !tbaa !43
  %16 = fadd float %13, %15
  store float %16, ptr %14, align 4, !tbaa !43
  %17 = getelementptr inbounds i8, ptr %2, i64 76
  %18 = load float, ptr %17, align 4, !tbaa !44
  %19 = getelementptr inbounds i8, ptr %0, i64 12
  %20 = load float, ptr %19, align 4, !tbaa !45
  %21 = fadd float %18, %20
  store float %21, ptr %19, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @AddBitsPicture(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = load i32, ptr %0, align 4, !tbaa !26
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !27
  %5 = add nsw i32 %4, %2
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %8 = add nsw i32 %5, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = add nsw i32 %8, %10
  %12 = getelementptr inbounds i8, ptr %0, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !18
  %14 = add nsw i32 %11, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = add nsw i32 %14, %16
  %18 = getelementptr inbounds i8, ptr %0, i64 24
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = add nsw i32 %17, %19
  %21 = getelementptr inbounds i8, ptr %0, i64 28
  %22 = load i32, ptr %21, align 4, !tbaa !16
  %23 = add nsw i32 %20, %22
  %24 = getelementptr inbounds i8, ptr %0, i64 36
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = add nsw i32 %23, %25
  %27 = getelementptr inbounds i8, ptr %0, i64 32
  %28 = load i32, ptr %27, align 4, !tbaa !35
  %29 = add nsw i32 %26, %28
  %30 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 %29, ptr %30, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @ZeroVec(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @MarkVec(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store i32 999, ptr %0, align 4, !tbaa !28
  %2 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 999, ptr %2, align 4, !tbaa !31
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %3, align 4, !tbaa !30
  %4 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 0, ptr %4, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @CopyVec(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %1, align 4, !tbaa !28
  store i32 %3, ptr %0, align 4, !tbaa !28
  %4 = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 4, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %8, ptr %9, align 4, !tbaa !31
  %10 = getelementptr inbounds i8, ptr %1, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !32
  %12 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %11, ptr %12, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local signext range(i32 0, 2) i32 @EqualVec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 4, !tbaa !28
  %4 = load i32, ptr %0, align 4, !tbaa !28
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds i8, ptr %0, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !30
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 4, !tbaa !30
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %1, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !32
  %21 = getelementptr inbounds i8, ptr %0, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !32
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 0, %12 ], [ %24, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind
define dso_local signext range(i32 50, 56) i32 @CountBitsPicture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @trace, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @tf, align 8, !tbaa !10
  %6 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 20, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %1
  tail call void @putbits(i32 noundef signext 17, i32 noundef signext 1) #12
  %8 = load i32, ptr @trace, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @tf, align 8, !tbaa !10
  %12 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 32, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %10, %7
  tail call void @putbits(i32 noundef signext 5, i32 noundef signext 0) #12
  %14 = load i32, ptr @trace, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @tf, align 8, !tbaa !10
  %18 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 16, i64 1, ptr %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !46
  tail call void @putbits(i32 noundef signext 8, i32 noundef signext %21) #12
  %22 = load i32, ptr @trace, align 4, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @tf, align 8, !tbaa !10
  %26 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 7, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 1, ptr %28, align 4, !tbaa !47
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 1) #12
  %29 = load i32, ptr @trace, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @tf, align 8, !tbaa !10
  %33 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 39, i64 1, ptr %32)
  br label %34

34:                                               ; preds = %31, %27
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %35 = load i32, ptr @trace, align 4, !tbaa !6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @tf, align 8, !tbaa !10
  %39 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 24, i64 1, ptr %38)
  br label %40

40:                                               ; preds = %37, %34
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %41 = load i32, ptr @trace, align 4, !tbaa !6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @tf, align 8, !tbaa !10
  %45 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 27, i64 1, ptr %44)
  br label %46

46:                                               ; preds = %43, %40
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %47 = load i32, ptr @trace, align 4, !tbaa !6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @tf, align 8, !tbaa !10
  %51 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 24, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %49, %46
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %53 = load i32, ptr @trace, align 4, !tbaa !6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @tf, align 8, !tbaa !10
  %57 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = getelementptr inbounds i8, ptr %0, i64 24
  %60 = load i32, ptr %59, align 4, !tbaa !48
  tail call void @putbits(i32 noundef signext 3, i32 noundef signext %60) #12
  %61 = load i32, ptr @trace, align 4, !tbaa !6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @tf, align 8, !tbaa !10
  %65 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = getelementptr inbounds i8, ptr %0, i64 28
  %68 = load i32, ptr %67, align 4, !tbaa !15
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %68) #12
  %69 = load i32, ptr @trace, align 4, !tbaa !6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr @tf, align 8, !tbaa !10
  %73 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 18, i64 1, ptr %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = getelementptr inbounds i8, ptr %0, i64 36
  %76 = load i32, ptr %75, align 4, !tbaa !49
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %76) #12
  %77 = load i32, ptr @trace, align 4, !tbaa !6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @tf, align 8, !tbaa !10
  %81 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 12, i64 1, ptr %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %83) #12
  %84 = load i32, ptr @trace, align 4, !tbaa !6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr @tf, align 8, !tbaa !10
  %88 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 15, i64 1, ptr %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, ptr @advanced, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %90) #12
  %91 = load i32, ptr @trace, align 4, !tbaa !6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr @tf, align 8, !tbaa !10
  %95 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 10, i64 1, ptr %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = getelementptr inbounds i8, ptr %0, i64 40
  %98 = load i32, ptr %97, align 4, !tbaa !19
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext %98) #12
  %99 = load i32, ptr @trace, align 4, !tbaa !6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr @tf, align 8, !tbaa !10
  %103 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 7, i64 1, ptr %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = getelementptr inbounds i8, ptr %0, i64 44
  %106 = load i32, ptr %105, align 4, !tbaa !50
  tail call void @putbits(i32 noundef signext 5, i32 noundef signext %106) #12
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  %107 = load i32, ptr %97, align 4, !tbaa !19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr @trace, align 4, !tbaa !6
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr @tf, align 8, !tbaa !10
  %114 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 5, i64 1, ptr %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = getelementptr inbounds i8, ptr %0, i64 72
  %117 = load i32, ptr %116, align 4, !tbaa !51
  tail call void @putbits(i32 noundef signext 3, i32 noundef signext %117) #12
  %118 = load i32, ptr @trace, align 4, !tbaa !6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr @tf, align 8, !tbaa !10
  %122 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 8, i64 1, ptr %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = getelementptr inbounds i8, ptr %0, i64 68
  %125 = load i32, ptr %124, align 4, !tbaa !52
  tail call void @putbits(i32 noundef signext 2, i32 noundef signext %125) #12
  br label %126

126:                                              ; preds = %123, %104
  %127 = phi i32 [ 55, %123 ], [ 50, %104 ]
  %128 = load i32, ptr @trace, align 4, !tbaa !6
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @tf, align 8, !tbaa !10
  %132 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 5, i64 1, ptr %131)
  br label %133

133:                                              ; preds = %130, %126
  tail call void @putbits(i32 noundef signext 1, i32 noundef signext 0) #12
  ret i32 %127
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !7, i64 52}
!13 = !{!"pict", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !14, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 76}
!14 = !{!"float", !8, i64 0}
!15 = !{!13, !7, i64 28}
!16 = !{!17, !7, i64 28}
!17 = !{!"bits_counted", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52}
!18 = !{!17, !7, i64 16}
!19 = !{!13, !7, i64 40}
!20 = !{!13, !7, i64 64}
!21 = !{!17, !7, i64 20}
!22 = !{!17, !7, i64 12}
!23 = !{!13, !7, i64 48}
!24 = !{!17, !7, i64 36}
!25 = !{!17, !7, i64 24}
!26 = !{!17, !7, i64 0}
!27 = !{!17, !7, i64 4}
!28 = !{!29, !7, i64 0}
!29 = !{!"motionvector", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!30 = !{!29, !7, i64 8}
!31 = !{!29, !7, i64 4}
!32 = !{!29, !7, i64 12}
!33 = !{!17, !7, i64 8}
!34 = !{!29, !7, i64 20}
!35 = !{!17, !7, i64 32}
!36 = !{!17, !7, i64 40}
!37 = !{!17, !7, i64 44}
!38 = !{!17, !7, i64 48}
!39 = !{!17, !7, i64 52}
!40 = !{!41, !14, i64 0}
!41 = !{!"results", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!42 = !{!41, !14, i64 4}
!43 = !{!41, !14, i64 8}
!44 = !{!13, !14, i64 76}
!45 = !{!41, !14, i64 12}
!46 = !{!13, !7, i64 8}
!47 = !{!13, !7, i64 32}
!48 = !{!13, !7, i64 24}
!49 = !{!13, !7, i64 36}
!50 = !{!13, !7, i64 44}
!51 = !{!13, !7, i64 72}
!52 = !{!13, !7, i64 68}
