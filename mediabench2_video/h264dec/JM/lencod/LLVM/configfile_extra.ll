; ModuleID = 'src/configfile.c'
source_filename = "src/configfile.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32, i32, i32, i32, [2 x [5 x i32]], i32, i32, i32, i32 }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double }

@.str = private unnamed_addr constant [11 x i8] c"ProfileIDC\00", align 1
@configinput = dso_local global %struct.InputParameters zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"LevelIDC\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"FrameRate\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IDRIntraEnable\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"StartFrame\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"IntraPeriod\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EnableOpenGOP\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"FramesToBeEncoded\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"QPISlice\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"QPPSlice\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"QPBSlice\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"FrameSkip\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"UseHadamard\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"DisableSubpelME\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SearchRange\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"NumberReferenceFrames\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"PList0References\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"BList0References\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"BList1References\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Log2MaxFNumMinus4\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Log2MaxPOCLsbMinus4\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"GenerateMultiplePPS\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ResendPPS\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"SourceWidth\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SourceHeight\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"MbLineIntraUpdate\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"SliceMode\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SliceArgument\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"UseConstrainedIntraPred\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"InputHeaderLength\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"ReconFile\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"TraceFile\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"DisposableP\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"DispPQPOffset\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"NumberBFrames\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"BRefPicQPOffset\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"DirectModeType\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"DirectInferenceFlag\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"SPPicturePeriodicity\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"QPSPSlice\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"QPSP2Slice\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"SI_FRAMES\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"SP_output\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"SP_output_name\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"SP2_FRAMES\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"SP2_input_name1\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"SP2_input_name2\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"SymbolMode\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"OutFileMode\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"PartitionMode\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"InterSearch16x16\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"InterSearch16x8\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"InterSearch8x16\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"InterSearch8x8\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"InterSearch8x4\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"InterSearch4x8\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"InterSearch4x4\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"IntraDisableInterOnly\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Intra4x4ParDisable\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"Intra4x4DiagDisable\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Intra4x4DirDisable\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Intra16x16ParDisable\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Intra16x16PlaneDisable\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"EnableIPCM\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"ChromaIntraDisable\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"RestrictSearchRange\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"LastFrameNumber\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"ChangeQPI\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"ChangeQPP\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"ChangeQPB\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"ChangeQPBSRefOffset\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"ChangeQPStart\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"RDOptimization\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"DisableThresholding\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"DisableBSkipRDO\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"LossRateA\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"LossRateB\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"LossRateC\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"NumberOfDecoders\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"RestrictRefFrames\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"NumberofLeakyBuckets\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"LeakyBucketRateFile\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"LeakyBucketParamFile\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"PicInterlace\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"MbInterlace\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"IntraBottom\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"NumberFramesInEnhancementLayerSubSequence\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"NumberOfFrameInSecondIGOP\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"RandomIntraMBRefresh\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"WeightedPrediction\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"WeightedBiprediction\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"UseWeightedReferenceME\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"RDPictureDecision\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"RDPictureIntra\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"RDPSliceWeightOnly\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"RDPSliceBTest\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"RDBSliceWeightOnly\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"SkipIntraInInterSlices\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"BReferencePictures\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"PyramidCoding\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"PyramidLevelQPEnable\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"ExplicitPyramidFormat\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"PyramidRefReorder\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"PocMemoryManagement\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"BiPredMotionEstimation\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"BiPredMERefinements\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"BiPredMESearchRange\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"BiPredMESubPel\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"LoopFilterParametersFlag\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"LoopFilterDisable\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"LoopFilterAlphaC0Offset\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"LoopFilterBetaOffset\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"SparePictureOption\00", align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"SparePictureDetectionThr\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"SparePicturePercentageThr\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"num_slice_groups_minus1\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"slice_group_map_type\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"slice_group_change_direction_flag\00", align 1
@.str.120 = private unnamed_addr constant [31 x i8] c"slice_group_change_rate_minus1\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"SliceGroupConfigFileName\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"UseRedundantSlice\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"PicOrderCntType\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"ContextInitMethod\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"FixedModelNumber\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Transform8x8Mode\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"ReportFrameStats\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"DisplayEncParams\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"RateControlEnable\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"InitialQP\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"BasicUnit\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"ChannelType\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"QmatrixFile\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"ScalingMatrixPresentFlag\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag0\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag1\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag2\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag3\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag4\00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag5\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag6\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag7\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"UseFME\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"EPZSPattern\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"EPZSDualRefinement\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"EPZSFixedPredictors\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"EPZSTemporal\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"EPZSSpatialMem\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"EPZSMinThresScale\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"EPZSMaxThresScale\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"EPZSMedThresScale\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"EPZSSubPelME\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"EPZSSubPelThresScale\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"ChromaQPOffset\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"BitDepthLuma\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"BitDepthChroma\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"YUVFormat\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"RGBInput\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"CbQPOffset\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"CrQPOffset\00", align 1
@.str.163 = private unnamed_addr constant [32 x i8] c"QPPrimeYZeroTransformBypassFlag\00", align 1
@.str.164 = private unnamed_addr constant [21 x i8] c"ResidueTransformFlag\00", align 1
@.str.165 = private unnamed_addr constant [24 x i8] c"UseExplicitLambdaParams\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"LambdaWeightPslice\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"LambdaWeightBslice\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"LambdaWeightIslice\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"LambdaWeightSPslice\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"LambdaWeightSIslice\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"LambdaWeightRefBslice\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"QOffsetMatrixFile\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"OffsetMatrixPresentFlag\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"EarlySkipEnable\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"SelectiveIntraEnable\00", align 1
@.str.176 = private unnamed_addr constant [17 x i8] c"AdaptiveRounding\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"AdaptRndPeriod\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"AdaptRndChroma\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorIRef\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorPRef\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorBRef\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorINRef\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorPNRef\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorBNRef\00", align 1
@Map = dso_local local_unnamed_addr global [186 x %struct.Mapping] [%struct.Mapping { ptr @.str, ptr @configinput, i32 0, double 8.800000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.1, ptr getelementptr (i8, ptr @configinput, i64 4), i32 0, double 2.100000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.2, ptr getelementptr (i8, ptr @configinput, i64 3056), i32 2, double 3.000000e+01, i32 1, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { ptr @.str.3, ptr getelementptr (i8, ptr @configinput, i64 1236), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.4, ptr getelementptr (i8, ptr @configinput, i64 1240), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.5, ptr getelementptr (i8, ptr @configinput, i64 1228), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.6, ptr getelementptr (i8, ptr @configinput, i64 1232), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.7, ptr getelementptr (i8, ptr @configinput, i64 8), i32 0, double 1.000000e+00, i32 2, double 1.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.8, ptr getelementptr (i8, ptr @configinput, i64 12), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.9, ptr getelementptr (i8, ptr @configinput, i64 16), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.10, ptr getelementptr (i8, ptr @configinput, i64 1248), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.11, ptr getelementptr (i8, ptr @configinput, i64 20), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.12, ptr getelementptr (i8, ptr @configinput, i64 24), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.13, ptr getelementptr (i8, ptr @configinput, i64 28), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.14, ptr getelementptr (i8, ptr @configinput, i64 32), i32 0, double 1.600000e+01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.15, ptr getelementptr (i8, ptr @configinput, i64 36), i32 0, double 1.000000e+00, i32 1, double 1.000000e+00, double 1.600000e+01 }, %struct.Mapping { ptr @.str.16, ptr getelementptr (i8, ptr @configinput, i64 40), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { ptr @.str.17, ptr getelementptr (i8, ptr @configinput, i64 44), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { ptr @.str.18, ptr getelementptr (i8, ptr @configinput, i64 48), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { ptr @.str.19, ptr getelementptr (i8, ptr @configinput, i64 52), i32 0, double 0.000000e+00, i32 1, double -1.000000e+00, double 1.200000e+01 }, %struct.Mapping { ptr @.str.20, ptr getelementptr (i8, ptr @configinput, i64 56), i32 0, double 2.000000e+00, i32 1, double -1.000000e+00, double 1.200000e+01 }, %struct.Mapping { ptr @.str.21, ptr getelementptr (i8, ptr @configinput, i64 64), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.22, ptr getelementptr (i8, ptr @configinput, i64 60), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.23, ptr getelementptr (i8, ptr @configinput, i64 68), i32 0, double 1.760000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { ptr @.str.24, ptr getelementptr (i8, ptr @configinput, i64 72), i32 0, double 1.440000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { ptr @.str.25, ptr getelementptr (i8, ptr @configinput, i64 80), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.26, ptr getelementptr (i8, ptr @configinput, i64 212), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.27, ptr getelementptr (i8, ptr @configinput, i64 216), i32 0, double 0.000000e+00, i32 2, double 1.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.28, ptr getelementptr (i8, ptr @configinput, i64 220), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.29, ptr getelementptr (i8, ptr @configinput, i64 228), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.30, ptr getelementptr (i8, ptr @configinput, i64 224), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.31, ptr getelementptr (i8, ptr @configinput, i64 428), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.32, ptr getelementptr (i8, ptr @configinput, i64 628), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.33, ptr getelementptr (i8, ptr @configinput, i64 828), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.34, ptr getelementptr (i8, ptr @configinput, i64 4320), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.35, ptr getelementptr (i8, ptr @configinput, i64 4324), i32 0, double 0.000000e+00, i32 0, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.36, ptr getelementptr (i8, ptr @configinput, i64 1244), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.37, ptr getelementptr (i8, ptr @configinput, i64 1252), i32 0, double 0.000000e+00, i32 0, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.38, ptr getelementptr (i8, ptr @configinput, i64 1256), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.39, ptr getelementptr (i8, ptr @configinput, i64 1260), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.40, ptr getelementptr (i8, ptr @configinput, i64 1280), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.41, ptr getelementptr (i8, ptr @configinput, i64 1284), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.42, ptr getelementptr (i8, ptr @configinput, i64 1288), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.43, ptr getelementptr (i8, ptr @configinput, i64 1292), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.44, ptr getelementptr (i8, ptr @configinput, i64 1300), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.45, ptr getelementptr (i8, ptr @configinput, i64 1304), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.46, ptr getelementptr (i8, ptr @configinput, i64 1296), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.47, ptr getelementptr (i8, ptr @configinput, i64 1504), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.48, ptr getelementptr (i8, ptr @configinput, i64 1704), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.49, ptr getelementptr (i8, ptr @configinput, i64 2984), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.50, ptr getelementptr (i8, ptr @configinput, i64 2988), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.51, ptr getelementptr (i8, ptr @configinput, i64 2992), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.52, ptr getelementptr (i8, ptr @configinput, i64 2996), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.53, ptr getelementptr (i8, ptr @configinput, i64 3000), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.54, ptr getelementptr (i8, ptr @configinput, i64 3004), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.55, ptr getelementptr (i8, ptr @configinput, i64 3008), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.56, ptr getelementptr (i8, ptr @configinput, i64 3012), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.57, ptr getelementptr (i8, ptr @configinput, i64 3016), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.58, ptr getelementptr (i8, ptr @configinput, i64 3020), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.59, ptr getelementptr (i8, ptr @configinput, i64 3024), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.60, ptr getelementptr (i8, ptr @configinput, i64 3028), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.61, ptr getelementptr (i8, ptr @configinput, i64 3032), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.62, ptr getelementptr (i8, ptr @configinput, i64 3036), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.63, ptr getelementptr (i8, ptr @configinput, i64 3040), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.64, ptr getelementptr (i8, ptr @configinput, i64 3044), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.65, ptr getelementptr (i8, ptr @configinput, i64 3052), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.66, ptr getelementptr (i8, ptr @configinput, i64 3048), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.67, ptr getelementptr (i8, ptr @configinput, i64 3108), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.68, ptr getelementptr (i8, ptr @configinput, i64 3112), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.69, ptr getelementptr (i8, ptr @configinput, i64 3128), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.70, ptr getelementptr (i8, ptr @configinput, i64 3116), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.71, ptr getelementptr (i8, ptr @configinput, i64 3120), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.72, ptr getelementptr (i8, ptr @configinput, i64 3132), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.73, ptr getelementptr (i8, ptr @configinput, i64 3124), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.74, ptr getelementptr (i8, ptr @configinput, i64 3136), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.75, ptr getelementptr (i8, ptr @configinput, i64 3140), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.76, ptr getelementptr (i8, ptr @configinput, i64 3144), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.77, ptr getelementptr (i8, ptr @configinput, i64 3564), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.78, ptr getelementptr (i8, ptr @configinput, i64 3568), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.79, ptr getelementptr (i8, ptr @configinput, i64 3572), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.80, ptr getelementptr (i8, ptr @configinput, i64 3576), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.81, ptr getelementptr (i8, ptr @configinput, i64 3580), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.82, ptr getelementptr (i8, ptr @configinput, i64 3148), i32 0, double 2.000000e+00, i32 1, double 2.000000e+00, double 2.550000e+02 }, %struct.Mapping { ptr @.str.83, ptr getelementptr (i8, ptr @configinput, i64 3152), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.84, ptr getelementptr (i8, ptr @configinput, i64 3352), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.85, ptr getelementptr (i8, ptr @configinput, i64 3552), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.86, ptr getelementptr (i8, ptr @configinput, i64 3556), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.87, ptr getelementptr (i8, ptr @configinput, i64 3560), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.88, ptr getelementptr (i8, ptr @configinput, i64 3584), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.89, ptr getelementptr (i8, ptr @configinput, i64 3588), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.90, ptr getelementptr (i8, ptr @configinput, i64 3592), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.91, ptr getelementptr (i8, ptr @configinput, i64 1904), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.92, ptr getelementptr (i8, ptr @configinput, i64 1908), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.93, ptr getelementptr (i8, ptr @configinput, i64 1912), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.94, ptr getelementptr (i8, ptr @configinput, i64 1916), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.95, ptr getelementptr (i8, ptr @configinput, i64 1920), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.96, ptr getelementptr (i8, ptr @configinput, i64 1924), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.97, ptr getelementptr (i8, ptr @configinput, i64 1928), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.98, ptr getelementptr (i8, ptr @configinput, i64 1932), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.99, ptr getelementptr (i8, ptr @configinput, i64 1936), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.100, ptr getelementptr (i8, ptr @configinput, i64 1940), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.101, ptr getelementptr (i8, ptr @configinput, i64 1944), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.102, ptr getelementptr (i8, ptr @configinput, i64 1948), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.103, ptr getelementptr (i8, ptr @configinput, i64 1952), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.104, ptr getelementptr (i8, ptr @configinput, i64 2976), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.105, ptr getelementptr (i8, ptr @configinput, i64 2980), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.106, ptr getelementptr (i8, ptr @configinput, i64 1264), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.107, ptr getelementptr (i8, ptr @configinput, i64 1268), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 5.000000e+00 }, %struct.Mapping { ptr @.str.108, ptr getelementptr (i8, ptr @configinput, i64 1272), i32 0, double 8.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.109, ptr getelementptr (i8, ptr @configinput, i64 1276), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.110, ptr getelementptr (i8, ptr @configinput, i64 3596), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.111, ptr getelementptr (i8, ptr @configinput, i64 3600), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.112, ptr getelementptr (i8, ptr @configinput, i64 3604), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { ptr @.str.113, ptr getelementptr (i8, ptr @configinput, i64 3608), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { ptr @.str.114, ptr getelementptr (i8, ptr @configinput, i64 3612), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.115, ptr getelementptr (i8, ptr @configinput, i64 3616), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.116, ptr getelementptr (i8, ptr @configinput, i64 3620), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { ptr @.str.117, ptr getelementptr (i8, ptr @configinput, i64 3824), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 7.000000e+00 }, %struct.Mapping { ptr @.str.118, ptr getelementptr (i8, ptr @configinput, i64 3828), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 6.000000e+00 }, %struct.Mapping { ptr @.str.119, ptr getelementptr (i8, ptr @configinput, i64 3864), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.120, ptr getelementptr (i8, ptr @configinput, i64 3868), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.121, ptr getelementptr (i8, ptr @configinput, i64 3624), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.122, ptr getelementptr (i8, ptr @configinput, i64 3876), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.123, ptr getelementptr (i8, ptr @configinput, i64 3880), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.124, ptr getelementptr (i8, ptr @configinput, i64 3884), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.125, ptr getelementptr (i8, ptr @configinput, i64 3888), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.126, ptr getelementptr (i8, ptr @configinput, i64 3892), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.127, ptr getelementptr (i8, ptr @configinput, i64 3896), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.128, ptr getelementptr (i8, ptr @configinput, i64 3900), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.129, ptr getelementptr (i8, ptr @configinput, i64 3904), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.130, ptr getelementptr (i8, ptr @configinput, i64 3908), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.131, ptr getelementptr (i8, ptr @configinput, i64 3912), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.132, ptr getelementptr (i8, ptr @configinput, i64 3916), i32 0, double 0.000000e+00, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { ptr @.str.133, ptr getelementptr (i8, ptr @configinput, i64 3920), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.134, ptr getelementptr (i8, ptr @configinput, i64 3924), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.135, ptr getelementptr (i8, ptr @configinput, i64 1028), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.136, ptr getelementptr (i8, ptr @configinput, i64 3928), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.137, ptr getelementptr (i8, ptr @configinput, i64 3932), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.138, ptr getelementptr (i8, ptr @configinput, i64 3936), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.139, ptr getelementptr (i8, ptr @configinput, i64 3940), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.140, ptr getelementptr (i8, ptr @configinput, i64 3944), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.141, ptr getelementptr (i8, ptr @configinput, i64 3948), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.142, ptr getelementptr (i8, ptr @configinput, i64 3952), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.143, ptr getelementptr (i8, ptr @configinput, i64 3956), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.144, ptr getelementptr (i8, ptr @configinput, i64 3960), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.145, ptr getelementptr (i8, ptr @configinput, i64 3964), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.146, ptr getelementptr (i8, ptr @configinput, i64 3064), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.147, ptr getelementptr (i8, ptr @configinput, i64 3068), i32 0, double 3.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00 }, %struct.Mapping { ptr @.str.148, ptr getelementptr (i8, ptr @configinput, i64 3072), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { ptr @.str.149, ptr getelementptr (i8, ptr @configinput, i64 3076), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.150, ptr getelementptr (i8, ptr @configinput, i64 3080), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.151, ptr getelementptr (i8, ptr @configinput, i64 3084), i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.152, ptr getelementptr (i8, ptr @configinput, i64 3088), i32 0, double 1.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.153, ptr getelementptr (i8, ptr @configinput, i64 3092), i32 0, double 1.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.154, ptr getelementptr (i8, ptr @configinput, i64 3096), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.155, ptr getelementptr (i8, ptr @configinput, i64 3100), i32 0, double 2.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.156, ptr getelementptr (i8, ptr @configinput, i64 3104), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.157, ptr getelementptr (i8, ptr @configinput, i64 3968), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { ptr @.str.158, ptr getelementptr (i8, ptr @configinput, i64 3972), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { ptr @.str.159, ptr getelementptr (i8, ptr @configinput, i64 76), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.160, ptr getelementptr (i8, ptr @configinput, i64 3984), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.161, ptr getelementptr (i8, ptr @configinput, i64 3988), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.162, ptr getelementptr (i8, ptr @configinput, i64 3992), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { ptr @.str.163, ptr getelementptr (i8, ptr @configinput, i64 3996), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.164, ptr getelementptr (i8, ptr @configinput, i64 4000), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.165, ptr getelementptr (i8, ptr @configinput, i64 4004), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { ptr @.str.166, ptr getelementptr (i8, ptr @configinput, i64 4008), i32 2, double 6.800000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.167, ptr getelementptr (i8, ptr @configinput, i64 4016), i32 2, double 2.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.168, ptr getelementptr (i8, ptr @configinput, i64 4024), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.169, ptr getelementptr (i8, ptr @configinput, i64 4032), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.170, ptr getelementptr (i8, ptr @configinput, i64 4040), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.171, ptr getelementptr (i8, ptr @configinput, i64 4048), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.172, ptr getelementptr (i8, ptr @configinput, i64 4056), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.173, ptr getelementptr (i8, ptr @configinput, i64 4256), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.174, ptr getelementptr (i8, ptr @configinput, i64 4312), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.175, ptr getelementptr (i8, ptr @configinput, i64 4316), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.176, ptr getelementptr (i8, ptr @configinput, i64 4260), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.177, ptr getelementptr (i8, ptr @configinput, i64 4264), i32 0, double 1.600000e+01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { ptr @.str.178, ptr getelementptr (i8, ptr @configinput, i64 4268), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { ptr @.str.179, ptr getelementptr (i8, ptr @configinput, i64 4300), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr @.str.180, ptr getelementptr (i8, ptr @configinput, i64 4292), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr @.str.181, ptr getelementptr (i8, ptr @configinput, i64 4296), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr @.str.182, ptr getelementptr (i8, ptr @configinput, i64 4280), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr @.str.183, ptr getelementptr (i8, ptr @configinput, i64 4272), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr @.str.184, ptr getelementptr (i8, ptr @configinput, i64 4276), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 1.024000e+03 }, %struct.Mapping { ptr null, ptr null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }], align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.185 = private unnamed_addr constant [956 x i8] c"\0A   lencod [-h] [-d defenc.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defenc.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <EncParamM> to <EncValueM>.\0A         See default encoder.cfg file for description of all parameters.\0A\0A## Supported video file formats\0A   RAW:  .yuv -> YUV 4:2:0\0A\0A## Examples of usage:\0A   lencod\0A   lencod  -h\0A   lencod  -d default.cfg\0A   lencod  -f curenc1.cfg\0A   lencod  -f curenc1.cfg -p InputFile=\22e:\\data\\container_qcif_30.yuv\22 -p SourceWidth=176 -p SourceHeight=144\0A   lencod  -f curenc1.cfg -p FramesToBeEncoded=30 -p QPISlice=28 -p QPPSlice=28 -p QPBSlice=30\0A\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"encoder.cfg\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1
@.str.195 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1
@.str.196 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1
@input = external dso_local local_unnamed_addr global ptr, align 8
@.str.197 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.198 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s.\00", align 1
@.str.199 = private unnamed_addr constant [39 x i8] c"Cannot fseek in configuration file %s.\00", align 1
@.str.200 = private unnamed_addr constant [71 x i8] c"Unreasonable Filesize %ld reported by ftell for configuration file %s.\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c"GetConfigFileContent: buf\00", align 1
@FirstFrameIn2ndIGOP = external dso_local local_unnamed_addr global i32, align 4
@.str.202 = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.204 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each line.\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.206 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@.str.217 = private unnamed_addr constant [94 x i8] c" NumberReferenceFrames=%d and Log2MaxFNumMinus4=%d may lead to an invalid value of frame_num.\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = external dso_local local_unnamed_addr global i32, align 4
@.str.218 = private unnamed_addr constant [88 x i8] c"log2_max_pic_order_cnt_lsb_minus4 might not be sufficient for encoding. Increase value.\00", align 1
@.str.219 = private unnamed_addr constant [66 x i8] c"Number of B-frames %d can not exceed the number of frames skipped\00", align 1
@.str.220 = private unnamed_addr constant [56 x i8] c"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1\00", align 1
@.str.221 = private unnamed_addr constant [55 x i8] c"\0ADirectInferenceFlag set to 1 due to interlace coding.\00", align 1
@.str.222 = private unnamed_addr constant [67 x i8] c"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable).\00", align 1
@.str.223 = private unnamed_addr constant [50 x i8] c"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1\00", align 1
@p_in = external dso_local local_unnamed_addr global i32, align 4
@.str.224 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@p_dec = external dso_local local_unnamed_addr global i32, align 4
@.str.225 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str.226 = private unnamed_addr constant [52 x i8] c"even number of lines required for interlaced coding\00", align 1
@.str.227 = private unnamed_addr constant [64 x i8] c"Warning: Automatic cropping activated: Coded frame Size: %dx%d\0A\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"Warning: slice border within macroblock pair. \00", align 1
@.str.229 = private unnamed_addr constant [25 x i8] c"Using %d MBs per slice.\0A\00", align 1
@.str.230 = private unnamed_addr constant [35 x i8] c"PatchInp: input->run_length_minus1\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"%*[^\0A]\00", align 1
@.str.232 = private unnamed_addr constant [26 x i8] c"PatchInp: input->top_left\00", align 1
@.str.233 = private unnamed_addr constant [30 x i8] c"PatchInp: input->bottom_right\00", align 1
@.str.234 = private unnamed_addr constant [32 x i8] c"PatchInp: input->slice_group_id\00", align 1
@.str.235 = private unnamed_addr constant [48 x i8] c"Error read slice group information from file %s\00", align 1
@.str.236 = private unnamed_addr constant [65 x i8] c"PyramidRefReorder Not supported with Interlace encoding methods\0A\00", align 1
@.str.237 = private unnamed_addr constant [67 x i8] c"PocMemoryManagement not supported with Interlace encoding methods\0A\00", align 1
@.str.238 = private unnamed_addr constant [92 x i8] c"Unsupported PicInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2\00", align 1
@.str.239 = private unnamed_addr constant [91 x i8] c"Unsupported MbInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2\00", align 1
@.str.240 = private unnamed_addr constant [55 x i8] c"MB AFF is not compatible with non-rd-optimized coding.\00", align 1
@.str.241 = private unnamed_addr constant [91 x i8] c"RDOptimization=3 mode has been deactivated do to diverging of real and simulated decoders.\00", align 1
@.str.242 = private unnamed_addr constant [58 x i8] c"Fast Mode Decision methods does not support FREX Profiles\00", align 1
@.str.243 = private unnamed_addr constant [59 x i8] c"UseHadamard=2 is not allowed when UseFME is set to 1 or 2.\00", align 1
@.str.244 = private unnamed_addr constant [49 x i8] c"NumFramesInELSubSeq (%d) is out of range [0,%d).\00", align 1
@.str.245 = private unnamed_addr constant [66 x i8] c"Enhanced GOP is not supported in bitstream mode and RTP mode yet.\00", align 1
@.str.246 = private unnamed_addr constant [42 x i8] c"AFF is not compatible with spare picture.\00", align 1
@.str.247 = private unnamed_addr constant [64 x i8] c"Only RTP output mode is compatible with spare picture features.\00", align 1
@.str.248 = private unnamed_addr constant [66 x i8] c"Weighted prediction coding is not supported for MB AFF currently.\00", align 1
@.str.249 = private unnamed_addr constant [70 x i8] c"Enhanced GOP is not supported in weighted prediction coding mode yet.\00", align 1
@.str.250 = private unnamed_addr constant [59 x i8] c"Frame size in macroblocks must be a multiple of BasicUnit.\00", align 1
@.str.251 = private unnamed_addr constant [91 x i8] c"Stored B pictures combined with IDR pictures only supported in Picture Order Count type 0\0A\00", align 1
@.str.252 = private unnamed_addr constant [45 x i8] c"temporal direct needs at least 2 ref frames\0A\00", align 1
@.str.253 = private unnamed_addr constant [52 x i8] c"\0AThe new 8x8 mode is not implemented for sp-frames.\00", align 1
@.str.254 = private unnamed_addr constant [61 x i8] c"\0ATransform8x8Mode may be used only with ProfileIDC %d to %d.\00", align 1
@.str.255 = private unnamed_addr constant [69 x i8] c"\0AScalingMatrixPresentFlag may be used only with ProfileIDC %d to %d.\00", align 1
@.str.256 = private unnamed_addr constant [84 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV422 can be used only with ProfileIDC %d or %d\0A\00", align 1
@.str.257 = private unnamed_addr constant [79 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV444 can be used only with ProfileIDC %d.\0A\00", align 1
@.str.258 = private unnamed_addr constant [54 x i8] c"\0AResidue color transform is supported only in YUV444.\00", align 1
@.str.259 = private unnamed_addr constant [59 x i8] c"\0ABiPredMESearchRange must be smaller or equal SearchRange.\00", align 1
@.str.260 = private unnamed_addr constant [59 x i8] c"Open Gop currently not supported for Field coded pictures.\00", align 1
@.str.261 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str.262 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str.263 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str.264 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str.265 = private unnamed_addr constant [72 x i8] c"Profile must be baseline(66)/main(77)/extended(88) or FRExt (%d to %d).\00", align 1
@.str.266 = private unnamed_addr constant [40 x i8] c"B pictures are not allowed in baseline.\00", align 1
@.str.267 = private unnamed_addr constant [41 x i8] c"SP pictures are not allowed in baseline.\00", align 1
@.str.268 = private unnamed_addr constant [46 x i8] c"Data partitioning is not allowed in baseline.\00", align 1
@.str.269 = private unnamed_addr constant [48 x i8] c"Weighted prediction is not allowed in baseline.\00", align 1
@.str.270 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in baseline.\00", align 1
@.str.271 = private unnamed_addr constant [37 x i8] c"SP pictures are not allowed in main.\00", align 1
@.str.272 = private unnamed_addr constant [42 x i8] c"Data partitioning is not allowed in main.\00", align 1
@.str.273 = private unnamed_addr constant [56 x i8] c"num_slice_groups_minus1>0 (FMO) is not allowed in main.\00", align 1
@.str.274 = private unnamed_addr constant [44 x i8] c"Redundant pictures are not allowed in main.\00", align 1
@.str.275 = private unnamed_addr constant [58 x i8] c"direct_8x8_inference flag must be equal to 1 in extended.\00", align 1
@.str.276 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in extended.\00", align 1
@.str.277 = private unnamed_addr constant [107 x i8] c"\0AWarning: LevelIDC 3.0 and above require direct_8x8_inference to be set to 1. Please check your settings.\0A\00", align 1
@.str.278 = private unnamed_addr constant [103 x i8] c"\0AInterlace modes only supported for LevelIDC in the range of 2.1 and 4.1. Please check your settings.\0A\00", align 1
@str = private unnamed_addr constant [30 x i8] c"Setting Default Parameters...\00", align 1
@str.280 = private unnamed_addr constant [55 x i8] c"*               Encoder Parameters                   *\00", align 1
@str.282 = private unnamed_addr constant [55 x i8] c"******************************************************\00", align 1

; Function Attrs: noreturn nounwind
define dso_local void @JMHelpExit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(ptr nonnull @.str.185, i64 955, i64 1, ptr %1) #15
  tail call void @exit(i32 noundef signext -1) #16
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind
define dso_local void @Configure(i32 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4328) @configinput, i8 0, i64 4328, i1 false)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = load ptr, ptr @Map, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2, %23
  %8 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %9 = phi ptr [ %25, %23 ], [ @Map, %2 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 16
  %11 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %11, label %23 [
    i32 0, label %12
    i32 2, label %18
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 24
  %14 = load double, ptr %13, align 8, !tbaa !15
  %15 = fptosi double %14 to i32
  %16 = getelementptr inbounds i8, ptr %9, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  store i32 %15, ptr %17, align 4, !tbaa !17
  br label %23

18:                                               ; preds = %7
  %19 = getelementptr inbounds i8, ptr %9, i64 24
  %20 = load double, ptr %19, align 8, !tbaa !15
  %21 = getelementptr inbounds i8, ptr %9, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  store double %20, ptr %22, align 8, !tbaa !18
  br label %23

23:                                               ; preds = %18, %12, %7
  %24 = add nuw nsw i64 %8, 1
  %25 = getelementptr inbounds [186 x %struct.Mapping], ptr @Map, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %7

28:                                               ; preds = %23, %2
  %29 = icmp eq i32 %0, 2
  br i1 %29, label %30, label %48

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %1, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, -45
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, ptr %32, i64 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -104
  br label %42

42:                                               ; preds = %30, %37
  %43 = phi i32 [ %35, %30 ], [ %41, %37 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !6
  %47 = tail call i64 @fwrite(ptr nonnull @.str.185, i64 955, i64 1, ptr %46) #15
  tail call void @exit(i32 noundef signext -1) #16
  unreachable

48:                                               ; preds = %28
  %49 = icmp sgt i32 %0, 2
  br i1 %49, label %50, label %82

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, ptr %1, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, -45
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %52, i64 1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -100
  br label %62

62:                                               ; preds = %50, %57
  %63 = phi i32 [ %55, %50 ], [ %61, %57 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %1, i64 16
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi i32 [ 3, %65 ], [ 1, %62 ]
  %70 = phi ptr [ %67, %65 ], [ @.str.186, %62 ]
  br i1 %56, label %71, label %76

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %52, i64 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, -104
  br label %76

76:                                               ; preds = %68, %71
  %77 = phi i32 [ %55, %68 ], [ %75, %71 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load ptr, ptr @stderr, align 8, !tbaa !6
  %81 = tail call i64 @fwrite(ptr nonnull @.str.185, i64 955, i64 1, ptr %80) #15
  tail call void @exit(i32 noundef signext -1) #16
  unreachable

82:                                               ; preds = %42, %76, %48
  %83 = phi i32 [ %69, %76 ], [ 1, %48 ], [ 1, %42 ]
  %84 = phi ptr [ %70, %76 ], [ @.str.186, %48 ], [ @.str.186, %42 ]
  %85 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.190, ptr noundef %84)
  %86 = tail call ptr @GetConfigFileContent(ptr noundef %84)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %89

89:                                               ; preds = %88, %82
  %90 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %86) #18
  %91 = trunc i64 %90 to i32
  tail call fastcc void @ParseContent(ptr noundef %86, i32 noundef signext %91)
  %92 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %86) #17
  %93 = icmp slt i32 %83, %0
  br i1 %93, label %94, label %202

94:                                               ; preds = %89, %199
  %95 = phi i32 [ %200, %199 ], [ %83, %89 ]
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %1, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %100, -45
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %94
  %104 = getelementptr inbounds i8, ptr %98, i64 1
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 104
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load ptr, ptr @stderr, align 8, !tbaa !6
  %109 = tail call i64 @fwrite(ptr nonnull @.str.185, i64 955, i64 1, ptr %108) #15
  tail call void @exit(i32 noundef signext -1) #16
  unreachable

110:                                              ; preds = %103
  %111 = getelementptr inbounds i8, ptr %98, i64 1
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 102
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %97, i64 8
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = tail call ptr @GetConfigFileContent(ptr noundef %116)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %120

120:                                              ; preds = %119, %114
  %121 = load ptr, ptr %115, align 8, !tbaa !6
  %122 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.190, ptr noundef %121)
  %123 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #18
  %124 = trunc i64 %123 to i32
  tail call fastcc void @ParseContent(ptr noundef %117, i32 noundef signext %124)
  %125 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %117) #17
  %126 = add nsw i32 %95, 2
  br label %199

127:                                              ; preds = %110
  %128 = getelementptr inbounds i8, ptr %98, i64 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %130, -112
  br label %132

132:                                              ; preds = %94, %127
  %133 = phi i32 [ %131, %127 ], [ %101, %94 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %197

135:                                              ; preds = %132
  %136 = add nsw i32 %95, 1
  %137 = icmp slt i32 %136, %0
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = sext i32 %136 to i64
  br label %140

140:                                              ; preds = %138, %147
  %141 = phi i64 [ %139, %138 ], [ %148, %147 ]
  %142 = phi i32 [ 0, %138 ], [ %151, %147 ]
  %143 = getelementptr inbounds ptr, ptr %1, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = load i8, ptr %144, align 1, !tbaa !19
  %146 = icmp eq i8 %145, 45
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = add nsw i64 %141, 1
  %149 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %144) #18
  %150 = trunc i64 %149 to i32
  %151 = add i32 %142, %150
  %152 = trunc i64 %148 to i32
  %153 = icmp eq i32 %152, %0
  br i1 %153, label %156, label %140

154:                                              ; preds = %140
  %155 = trunc nsw i64 %141 to i32
  br label %156

156:                                              ; preds = %147, %154, %135
  %157 = phi i32 [ 0, %135 ], [ %142, %154 ], [ %151, %147 ]
  %158 = phi i32 [ %136, %135 ], [ %155, %154 ], [ %0, %147 ]
  %159 = add nsw i32 %157, 1000
  %160 = sext i32 %159 to i64
  %161 = tail call noalias ptr @malloc(i64 noundef %160) #19
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  tail call void @no_mem_exit(ptr noundef nonnull @.str.194) #17
  br label %164

164:                                              ; preds = %163, %156
  store i8 0, ptr %161, align 1, !tbaa !19
  %165 = icmp slt i32 %136, %158
  br i1 %165, label %166, label %191

166:                                              ; preds = %164
  %167 = sext i32 %136 to i64
  br label %168

168:                                              ; preds = %166, %187
  %169 = phi i64 [ %167, %166 ], [ %188, %187 ]
  %170 = getelementptr inbounds ptr, ptr %1, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #18
  %173 = getelementptr inbounds i8, ptr %161, i64 %172
  br label %174

174:                                              ; preds = %184, %168
  %175 = phi ptr [ %171, %168 ], [ %186, %184 ]
  %176 = phi ptr [ %173, %168 ], [ %185, %184 ]
  %177 = load i8, ptr %175, align 1, !tbaa !19
  switch i8 %177, label %182 [
    i8 0, label %187
    i8 61, label %178
  ]

178:                                              ; preds = %174
  %179 = getelementptr inbounds i8, ptr %176, i64 1
  store i8 32, ptr %176, align 1, !tbaa !19
  %180 = getelementptr inbounds i8, ptr %176, i64 2
  store i8 61, ptr %179, align 1, !tbaa !19
  %181 = getelementptr inbounds i8, ptr %176, i64 3
  store i8 32, ptr %180, align 1, !tbaa !19
  br label %184

182:                                              ; preds = %174
  %183 = getelementptr inbounds i8, ptr %176, i64 1
  store i8 %177, ptr %176, align 1, !tbaa !19
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi ptr [ %181, %178 ], [ %183, %182 ]
  %186 = getelementptr inbounds i8, ptr %175, i64 1
  br label %174

187:                                              ; preds = %174
  store i8 0, ptr %176, align 1, !tbaa !19
  %188 = add nsw i64 %169, 1
  %189 = trunc i64 %188 to i32
  %190 = icmp eq i32 %158, %189
  br i1 %190, label %191, label %168

191:                                              ; preds = %187, %164
  %192 = phi i32 [ %136, %164 ], [ %158, %187 ]
  %193 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.195, ptr noundef nonnull %161)
  %194 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #18
  %195 = trunc i64 %194 to i32
  tail call fastcc void @ParseContent(ptr noundef nonnull %161, i32 noundef signext %195)
  tail call void @free(ptr noundef %161) #17
  %196 = tail call i32 @putchar(i32 10)
  br label %199

197:                                              ; preds = %132
  %198 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.196, i32 noundef signext %95, ptr noundef nonnull %98) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %199

199:                                              ; preds = %191, %197, %120
  %200 = phi i32 [ %126, %120 ], [ %192, %191 ], [ %95, %197 ]
  %201 = icmp slt i32 %200, %0
  br i1 %201, label %94, label %202

202:                                              ; preds = %199, %89
  %203 = tail call i32 @putchar(i32 10)
  %204 = load ptr, ptr @Map, align 8, !tbaa !10
  %205 = icmp eq ptr %204, null
  %206 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %205, label %300, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds i8, ptr %206, i64 3968
  %209 = load i32, ptr %208, align 8, !tbaa !20
  %210 = mul i32 %209, 6
  %211 = add i32 %210, -48
  %212 = sitofp i32 %211 to double
  br label %213

213:                                              ; preds = %293, %207
  %214 = phi i64 [ 0, %207 ], [ %294, %293 ]
  %215 = phi ptr [ %204, %207 ], [ %296, %293 ]
  %216 = phi ptr [ @Map, %207 ], [ %295, %293 ]
  %217 = getelementptr inbounds i8, ptr %216, i64 32
  %218 = load i32, ptr %217, align 8, !tbaa !22
  switch i32 %218, label %293 [
    i32 1, label %219
    i32 2, label %250
    i32 3, label %272
  ]

219:                                              ; preds = %213
  %220 = getelementptr inbounds i8, ptr %216, i64 16
  %221 = load i32, ptr %220, align 8, !tbaa !14
  switch i32 %221, label %293 [
    i32 0, label %222
    i32 2, label %237
  ]

222:                                              ; preds = %219
  %223 = getelementptr inbounds i8, ptr %216, i64 8
  %224 = load ptr, ptr %223, align 8, !tbaa !16
  %225 = load i32, ptr %224, align 4, !tbaa !17
  %226 = getelementptr inbounds i8, ptr %216, i64 40
  %227 = load double, ptr %226, align 8, !tbaa !23
  %228 = fptosi double %227 to i32
  %229 = icmp slt i32 %225, %228
  %230 = getelementptr inbounds i8, ptr %216, i64 48
  %231 = load double, ptr %230, align 8, !tbaa !24
  %232 = fptosi double %231 to i32
  %233 = icmp sgt i32 %225, %232
  %234 = select i1 %229, i1 true, i1 %233
  br i1 %234, label %235, label %293

235:                                              ; preds = %222
  %236 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.261, ptr noundef nonnull %215, i32 noundef signext %228, i32 noundef signext %232) #17
  br label %292

237:                                              ; preds = %219
  %238 = getelementptr inbounds i8, ptr %216, i64 8
  %239 = load ptr, ptr %238, align 8, !tbaa !16
  %240 = load double, ptr %239, align 8, !tbaa !18
  %241 = getelementptr inbounds i8, ptr %216, i64 40
  %242 = load double, ptr %241, align 8, !tbaa !23
  %243 = fcmp olt double %240, %242
  %244 = getelementptr inbounds i8, ptr %216, i64 48
  %245 = load double, ptr %244, align 8, !tbaa !24
  %246 = fcmp ogt double %240, %245
  %247 = select i1 %243, i1 true, i1 %246
  br i1 %247, label %248, label %293

248:                                              ; preds = %237
  %249 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.262, ptr noundef nonnull %215, double noundef %242, double noundef %245) #17
  br label %292

250:                                              ; preds = %213
  %251 = getelementptr inbounds i8, ptr %216, i64 16
  %252 = load i32, ptr %251, align 8, !tbaa !14
  switch i32 %252, label %293 [
    i32 0, label %253
    i32 2, label %263
  ]

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, ptr %216, i64 8
  %255 = load ptr, ptr %254, align 8, !tbaa !16
  %256 = load i32, ptr %255, align 4, !tbaa !17
  %257 = getelementptr inbounds i8, ptr %216, i64 40
  %258 = load double, ptr %257, align 8, !tbaa !23
  %259 = fptosi double %258 to i32
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %293

261:                                              ; preds = %253
  %262 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.263, ptr noundef nonnull %215, i32 noundef signext %259) #17
  br label %292

263:                                              ; preds = %250
  %264 = getelementptr inbounds i8, ptr %216, i64 8
  %265 = load ptr, ptr %264, align 8, !tbaa !16
  %266 = load double, ptr %265, align 8, !tbaa !18
  %267 = getelementptr inbounds i8, ptr %216, i64 40
  %268 = load double, ptr %267, align 8, !tbaa !23
  %269 = fcmp olt double %266, %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %263
  %271 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.264, ptr noundef nonnull %215, double noundef %268) #17
  br label %292

272:                                              ; preds = %213
  %273 = getelementptr inbounds i8, ptr %216, i64 16
  %274 = load i32, ptr %273, align 8, !tbaa !14
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %272
  %277 = getelementptr inbounds i8, ptr %216, i64 8
  %278 = load ptr, ptr %277, align 8, !tbaa !16
  %279 = load i32, ptr %278, align 4, !tbaa !17
  %280 = getelementptr inbounds i8, ptr %216, i64 40
  %281 = load double, ptr %280, align 8, !tbaa !23
  %282 = fsub double %281, %212
  %283 = fptosi double %282 to i32
  %284 = icmp slt i32 %279, %283
  %285 = getelementptr inbounds i8, ptr %216, i64 48
  %286 = load double, ptr %285, align 8, !tbaa !24
  %287 = fptosi double %286 to i32
  %288 = icmp sgt i32 %279, %287
  %289 = select i1 %284, i1 true, i1 %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %276
  %291 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.261, ptr noundef nonnull %215, i32 noundef signext %283, i32 noundef signext %287) #17
  br label %292

292:                                              ; preds = %290, %270, %261, %248, %235
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  br label %293

293:                                              ; preds = %292, %276, %272, %263, %253, %250, %237, %222, %219, %213
  %294 = add nuw nsw i64 %214, 1
  %295 = getelementptr inbounds [186 x %struct.Mapping], ptr @Map, i64 0, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !10
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %213

298:                                              ; preds = %293
  %299 = load ptr, ptr @input, align 8, !tbaa !6
  br label %300

300:                                              ; preds = %298, %202
  %301 = phi ptr [ %299, %298 ], [ %206, %202 ]
  %302 = getelementptr inbounds i8, ptr %301, i64 3056
  %303 = load double, ptr %302, align 8, !tbaa !25
  %304 = fcmp oeq double %303, 0.000000e+00
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store double 3.000000e+01, ptr %302, align 8, !tbaa !25
  br label %306

306:                                              ; preds = %305, %300
  %307 = getelementptr inbounds i8, ptr %301, i64 148
  store i32 4, ptr %307, align 4, !tbaa !17
  %308 = getelementptr inbounds i8, ptr %301, i64 152
  store i32 4, ptr %308, align 4, !tbaa !17
  %309 = getelementptr inbounds i8, ptr %301, i64 156
  store i32 4, ptr %309, align 4, !tbaa !17
  %310 = getelementptr inbounds i8, ptr %301, i64 160
  store i32 4, ptr %310, align 4, !tbaa !17
  %311 = getelementptr inbounds i8, ptr %301, i64 164
  store i32 4, ptr %311, align 4, !tbaa !17
  %312 = getelementptr inbounds i8, ptr %301, i64 168
  store i32 2, ptr %312, align 4, !tbaa !17
  %313 = getelementptr inbounds i8, ptr %301, i64 172
  store i32 2, ptr %313, align 4, !tbaa !17
  %314 = getelementptr inbounds i8, ptr %301, i64 176
  store i32 4, ptr %314, align 4, !tbaa !17
  %315 = getelementptr inbounds i8, ptr %301, i64 180
  store i32 2, ptr %315, align 4, !tbaa !17
  %316 = getelementptr inbounds i8, ptr %301, i64 184
  store i32 2, ptr %316, align 4, !tbaa !17
  %317 = getelementptr inbounds i8, ptr %301, i64 188
  store i32 2, ptr %317, align 4, !tbaa !17
  %318 = getelementptr inbounds i8, ptr %301, i64 192
  store i32 1, ptr %318, align 4, !tbaa !17
  %319 = getelementptr inbounds i8, ptr %301, i64 196
  store i32 1, ptr %319, align 4, !tbaa !17
  %320 = getelementptr inbounds i8, ptr %301, i64 200
  store i32 2, ptr %320, align 4, !tbaa !17
  %321 = getelementptr inbounds i8, ptr %301, i64 204
  store i32 1, ptr %321, align 4, !tbaa !17
  %322 = getelementptr inbounds i8, ptr %301, i64 208
  store i32 1, ptr %322, align 4, !tbaa !17
  %323 = getelementptr inbounds i8, ptr %301, i64 84
  store i32 16, ptr %323, align 4, !tbaa !17
  %324 = getelementptr inbounds i8, ptr %301, i64 88
  store i32 16, ptr %324, align 4, !tbaa !17
  %325 = getelementptr inbounds i8, ptr %301, i64 92
  store i32 16, ptr %325, align 4, !tbaa !17
  %326 = getelementptr inbounds i8, ptr %301, i64 96
  store i32 16, ptr %326, align 4, !tbaa !17
  %327 = getelementptr inbounds i8, ptr %301, i64 100
  store i32 16, ptr %327, align 4, !tbaa !17
  %328 = getelementptr inbounds i8, ptr %301, i64 104
  store i32 8, ptr %328, align 4, !tbaa !17
  %329 = getelementptr inbounds i8, ptr %301, i64 108
  store i32 8, ptr %329, align 4, !tbaa !17
  %330 = getelementptr inbounds i8, ptr %301, i64 112
  store i32 16, ptr %330, align 4, !tbaa !17
  %331 = getelementptr inbounds i8, ptr %301, i64 116
  store i32 8, ptr %331, align 4, !tbaa !17
  %332 = getelementptr inbounds i8, ptr %301, i64 120
  store i32 8, ptr %332, align 4, !tbaa !17
  %333 = getelementptr inbounds i8, ptr %301, i64 124
  store i32 8, ptr %333, align 4, !tbaa !17
  %334 = getelementptr inbounds i8, ptr %301, i64 128
  store i32 4, ptr %334, align 4, !tbaa !17
  %335 = getelementptr inbounds i8, ptr %301, i64 132
  store i32 4, ptr %335, align 4, !tbaa !17
  %336 = getelementptr inbounds i8, ptr %301, i64 136
  store i32 8, ptr %336, align 4, !tbaa !17
  %337 = getelementptr inbounds i8, ptr %301, i64 140
  store i32 4, ptr %337, align 4, !tbaa !17
  %338 = getelementptr inbounds i8, ptr %301, i64 144
  store i32 4, ptr %338, align 4, !tbaa !17
  %339 = getelementptr inbounds i8, ptr %301, i64 1940
  %340 = load i32, ptr %339, align 4, !tbaa !26
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %306
  %343 = getelementptr inbounds i8, ptr %301, i64 1244
  %344 = load i32, ptr %343, align 4, !tbaa !27
  %345 = add nsw i32 %344, 1
  br label %346

346:                                              ; preds = %342, %306
  %347 = phi i32 [ %345, %342 ], [ 1, %306 ]
  %348 = getelementptr inbounds i8, ptr %301, i64 52
  %349 = load i32, ptr %348, align 4, !tbaa !28
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %383

351:                                              ; preds = %346
  %352 = getelementptr inbounds i8, ptr %301, i64 8
  %353 = load i32, ptr %352, align 8, !tbaa !29
  %354 = mul nsw i32 %353, %347
  %355 = add i32 %354, -1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %382, label %357

357:                                              ; preds = %351, %357
  %358 = phi i32 [ %361, %357 ], [ 0, %351 ]
  %359 = phi i32 [ %360, %357 ], [ %355, %351 ]
  %360 = lshr i32 %359, 1
  %361 = add nuw nsw i32 %358, 1
  %362 = icmp ult i32 %359, 2
  br i1 %362, label %363, label %357

363:                                              ; preds = %357
  %364 = icmp ult i32 %358, 3
  br i1 %364, label %382, label %365

365:                                              ; preds = %363, %365
  %366 = phi i32 [ %369, %365 ], [ 0, %363 ]
  %367 = phi i32 [ %368, %365 ], [ %355, %363 ]
  %368 = lshr i32 %367, 1
  %369 = add nuw nsw i32 %366, 1
  %370 = icmp ult i32 %367, 2
  br i1 %370, label %371, label %365

371:                                              ; preds = %365
  %372 = icmp ugt i32 %366, 15
  br i1 %372, label %373, label %374

373:                                              ; preds = %371
  store i32 12, ptr @log2_max_frame_num_minus4, align 4, !tbaa !17
  br label %393

374:                                              ; preds = %371, %374
  %375 = phi i32 [ %378, %374 ], [ 0, %371 ]
  %376 = phi i32 [ %377, %374 ], [ %355, %371 ]
  %377 = lshr i32 %376, 1
  %378 = add nuw nsw i32 %375, 1
  %379 = icmp ult i32 %376, 2
  br i1 %379, label %380, label %374

380:                                              ; preds = %374
  %381 = add nsw i32 %375, -3
  br label %383

382:                                              ; preds = %363, %351
  store i32 0, ptr @log2_max_frame_num_minus4, align 4, !tbaa !17
  br label %386

383:                                              ; preds = %380, %346
  %384 = phi i32 [ %381, %380 ], [ %349, %346 ]
  store i32 %384, ptr @log2_max_frame_num_minus4, align 4, !tbaa !17
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %383, %382
  %387 = getelementptr inbounds i8, ptr %301, i64 36
  %388 = load i32, ptr %387, align 4, !tbaa !30
  %389 = icmp eq i32 %388, 16
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.217, i32 noundef signext 16, i32 noundef signext %349) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %392 = load ptr, ptr @input, align 8, !tbaa !6
  br label %393

393:                                              ; preds = %390, %386, %383, %373
  %394 = phi ptr [ %301, %373 ], [ %392, %390 ], [ %301, %386 ], [ %301, %383 ]
  %395 = getelementptr inbounds i8, ptr %394, i64 56
  %396 = load i32, ptr %395, align 8, !tbaa !31
  %397 = icmp eq i32 %396, -1
  %398 = getelementptr inbounds i8, ptr %394, i64 20
  br i1 %397, label %399, label %433

399:                                              ; preds = %393
  %400 = getelementptr inbounds i8, ptr %394, i64 8
  %401 = load i32, ptr %400, align 8, !tbaa !29
  %402 = shl nsw i32 %401, 1
  %403 = load i32, ptr %398, align 4, !tbaa !32
  %404 = add nsw i32 %403, 1
  %405 = mul nsw i32 %402, %404
  %406 = add i32 %405, -1
  br label %407

407:                                              ; preds = %407, %399
  %408 = phi i32 [ %411, %407 ], [ 0, %399 ]
  %409 = phi i32 [ %410, %407 ], [ %406, %399 ]
  %410 = lshr i32 %409, 1
  %411 = add nuw nsw i32 %408, 1
  %412 = icmp ult i32 %409, 2
  br i1 %412, label %413, label %407

413:                                              ; preds = %407
  %414 = icmp ult i32 %408, 3
  br i1 %414, label %431, label %415

415:                                              ; preds = %413, %415
  %416 = phi i32 [ %419, %415 ], [ 0, %413 ]
  %417 = phi i32 [ %418, %415 ], [ %406, %413 ]
  %418 = lshr i32 %417, 1
  %419 = add nuw nsw i32 %416, 1
  %420 = icmp ult i32 %417, 2
  br i1 %420, label %421, label %415

421:                                              ; preds = %415
  %422 = icmp ugt i32 %416, 15
  br i1 %422, label %431, label %423

423:                                              ; preds = %421, %423
  %424 = phi i32 [ %427, %423 ], [ 0, %421 ]
  %425 = phi i32 [ %426, %423 ], [ %406, %421 ]
  %426 = lshr i32 %425, 1
  %427 = add nuw nsw i32 %424, 1
  %428 = icmp ult i32 %425, 2
  br i1 %428, label %429, label %423

429:                                              ; preds = %423
  %430 = add nsw i32 %424, -3
  br label %431

431:                                              ; preds = %429, %421, %413
  %432 = phi i32 [ 0, %413 ], [ %430, %429 ], [ 12, %421 ]
  store i32 %432, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !17
  br label %443

433:                                              ; preds = %393
  store i32 %396, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !17
  %434 = add i32 %396, 3
  %435 = shl nuw i32 1, %434
  %436 = load i32, ptr %398, align 4, !tbaa !32
  %437 = shl nsw i32 %436, 2
  %438 = icmp slt i32 %435, %437
  br i1 %438, label %439, label %443

439:                                              ; preds = %433
  tail call void @error(ptr noundef nonnull @.str.218, i32 noundef signext 400) #17
  %440 = load ptr, ptr @input, align 8, !tbaa !6
  %441 = getelementptr inbounds i8, ptr %440, i64 20
  %442 = load i32, ptr %441, align 4, !tbaa !32
  br label %443

443:                                              ; preds = %439, %433, %431
  %444 = phi i32 [ %403, %431 ], [ %436, %433 ], [ %442, %439 ]
  %445 = phi ptr [ %394, %431 ], [ %394, %433 ], [ %440, %439 ]
  %446 = getelementptr inbounds i8, ptr %445, i64 1244
  %447 = load i32, ptr %446, align 4, !tbaa !27
  %448 = icmp sgt i32 %447, %444
  br i1 %448, label %449, label %454

449:                                              ; preds = %443
  %450 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.219, i32 noundef signext %447) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %451 = load ptr, ptr @input, align 8, !tbaa !6
  %452 = getelementptr inbounds i8, ptr %451, i64 1244
  %453 = load i32, ptr %452, align 4, !tbaa !27
  br label %454

454:                                              ; preds = %449, %443
  %455 = phi i32 [ %453, %449 ], [ %447, %443 ]
  %456 = phi ptr [ %451, %449 ], [ %445, %443 ]
  %457 = icmp eq i32 %455, 0
  br i1 %457, label %465, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %456, i64 1256
  %460 = load i32, ptr %459, align 8, !tbaa !33
  %461 = icmp ult i32 %460, 2
  br i1 %461, label %465, label %462

462:                                              ; preds = %458
  %463 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.220, i32 noundef signext %460) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %464 = load ptr, ptr @input, align 8, !tbaa !6
  br label %465

465:                                              ; preds = %462, %458, %454
  %466 = phi ptr [ %456, %458 ], [ %464, %462 ], [ %456, %454 ]
  %467 = getelementptr inbounds i8, ptr %466, i64 3552
  %468 = load i32, ptr %467, align 8, !tbaa !34
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds i8, ptr %466, i64 3556
  %472 = load i32, ptr %471, align 4, !tbaa !35
  %473 = icmp sgt i32 %472, 0
  br i1 %473, label %474, label %495

474:                                              ; preds = %470, %465
  %475 = getelementptr inbounds i8, ptr %466, i64 1260
  %476 = load i32, ptr %475, align 4, !tbaa !36
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %474
  %479 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.221)
  %480 = load ptr, ptr @input, align 8, !tbaa !6
  %481 = getelementptr inbounds i8, ptr %480, i64 3552
  %482 = load i32, ptr %481, align 8, !tbaa !34
  br label %483

483:                                              ; preds = %478, %474
  %484 = phi i32 [ %482, %478 ], [ %468, %474 ]
  %485 = phi ptr [ %480, %478 ], [ %466, %474 ]
  %486 = getelementptr inbounds i8, ptr %485, i64 1260
  store i32 1, ptr %486, align 4, !tbaa !36
  %487 = icmp sgt i32 %484, 0
  br i1 %487, label %488, label %495

488:                                              ; preds = %483
  %489 = getelementptr inbounds i8, ptr %485, i64 3560
  %490 = load i32, ptr %489, align 8, !tbaa !37
  %491 = icmp ult i32 %490, 2
  br i1 %491, label %495, label %492

492:                                              ; preds = %488
  %493 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.222, i32 noundef signext %490) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %494 = load ptr, ptr @input, align 8, !tbaa !6
  br label %495

495:                                              ; preds = %492, %488, %483, %470
  %496 = phi ptr [ %485, %488 ], [ %494, %492 ], [ %485, %483 ], [ %466, %470 ]
  %497 = getelementptr inbounds i8, ptr %496, i64 2984
  %498 = load i32, ptr %497, align 8, !tbaa !38
  %499 = icmp ult i32 %498, 2
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.223, i32 noundef signext %498) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %502 = load ptr, ptr @input, align 8, !tbaa !6
  br label %503

503:                                              ; preds = %500, %495
  %504 = phi ptr [ %496, %495 ], [ %502, %500 ]
  %505 = getelementptr inbounds i8, ptr %504, i64 228
  %506 = tail call signext i32 (ptr, i32, ...) @open64(ptr noundef nonnull %505, i32 noundef signext 0) #17
  store i32 %506, ptr @p_in, align 4, !tbaa !17
  %507 = icmp eq i32 %506, -1
  br i1 %507, label %508, label %512

508:                                              ; preds = %503
  %509 = load ptr, ptr @input, align 8, !tbaa !6
  %510 = getelementptr inbounds i8, ptr %509, i64 228
  %511 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.224, ptr noundef nonnull %510) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  br label %512

512:                                              ; preds = %508, %503
  %513 = load ptr, ptr @input, align 8, !tbaa !6
  %514 = getelementptr inbounds i8, ptr %513, i64 628
  %515 = load i8, ptr %514, align 1
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %512
  %518 = tail call signext i32 (ptr, i32, ...) @open64(ptr noundef nonnull %514, i32 noundef signext 577, i32 noundef signext 384) #17
  store i32 %518, ptr @p_dec, align 4, !tbaa !17
  %519 = icmp eq i32 %518, -1
  %520 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %519, label %521, label %525

521:                                              ; preds = %517
  %522 = getelementptr inbounds i8, ptr %520, i64 628
  %523 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.225, ptr noundef nonnull %522) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %524 = load ptr, ptr @input, align 8, !tbaa !6
  br label %525

525:                                              ; preds = %521, %517, %512
  %526 = phi ptr [ %524, %521 ], [ %520, %517 ], [ %513, %512 ]
  %527 = getelementptr inbounds i8, ptr %526, i64 68
  %528 = load i32, ptr %527, align 4, !tbaa !39
  %529 = srem i32 %528, 16
  %530 = icmp eq i32 %529, 0
  %531 = sub nsw i32 16, %529
  %532 = select i1 %530, i32 0, i32 %531
  %533 = load ptr, ptr @img, align 8, !tbaa !6
  %534 = getelementptr inbounds i8, ptr %533, i64 90576
  store i32 %532, ptr %534, align 8, !tbaa !40
  %535 = getelementptr inbounds i8, ptr %526, i64 3552
  %536 = load i32, ptr %535, align 8, !tbaa !34
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %525
  %539 = getelementptr inbounds i8, ptr %526, i64 3556
  %540 = load i32, ptr %539, align 4, !tbaa !35
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %565, label %542

542:                                              ; preds = %538, %525
  %543 = getelementptr inbounds i8, ptr %526, i64 72
  %544 = load i32, ptr %543, align 8, !tbaa !44
  %545 = and i32 %544, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %551, label %547

547:                                              ; preds = %542
  tail call void @error(ptr noundef nonnull @.str.226, i32 noundef signext 500) #17
  %548 = load ptr, ptr @input, align 8, !tbaa !6
  %549 = getelementptr inbounds i8, ptr %548, i64 72
  %550 = load i32, ptr %549, align 8, !tbaa !44
  br label %551

551:                                              ; preds = %547, %542
  %552 = phi i32 [ %550, %547 ], [ %544, %542 ]
  %553 = phi ptr [ %548, %547 ], [ %526, %542 ]
  %554 = srem i32 %552, 32
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %561, label %556

556:                                              ; preds = %551
  %557 = sub nsw i32 32, %554
  %558 = load ptr, ptr @img, align 8, !tbaa !6
  %559 = getelementptr inbounds i8, ptr %558, i64 90576
  %560 = load i32, ptr %559, align 8, !tbaa !40
  br label %572

561:                                              ; preds = %551
  %562 = load ptr, ptr @img, align 8, !tbaa !6
  %563 = getelementptr inbounds i8, ptr %562, i64 90576
  %564 = load i32, ptr %563, align 8, !tbaa !40
  br label %579

565:                                              ; preds = %538
  %566 = getelementptr inbounds i8, ptr %526, i64 72
  %567 = load i32, ptr %566, align 8, !tbaa !44
  %568 = srem i32 %567, 16
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %579, label %570

570:                                              ; preds = %565
  %571 = sub nsw i32 16, %568
  br label %572

572:                                              ; preds = %570, %556
  %573 = phi i32 [ %560, %556 ], [ %532, %570 ]
  %574 = phi ptr [ %558, %556 ], [ %533, %570 ]
  %575 = phi i32 [ %557, %556 ], [ %571, %570 ]
  %576 = phi i32 [ %552, %556 ], [ %567, %570 ]
  %577 = phi ptr [ %553, %556 ], [ %526, %570 ]
  %578 = getelementptr inbounds i8, ptr %574, i64 90580
  store i32 %575, ptr %578, align 4, !tbaa !45
  br label %586

579:                                              ; preds = %565, %561
  %580 = phi i32 [ %564, %561 ], [ %532, %565 ]
  %581 = phi ptr [ %562, %561 ], [ %533, %565 ]
  %582 = phi i32 [ %552, %561 ], [ %567, %565 ]
  %583 = phi ptr [ %553, %561 ], [ %526, %565 ]
  %584 = getelementptr inbounds i8, ptr %581, i64 90580
  store i32 0, ptr %584, align 4, !tbaa !45
  %585 = icmp eq i32 %580, 0
  br i1 %585, label %598, label %586

586:                                              ; preds = %579, %572
  %587 = phi i32 [ %575, %572 ], [ 0, %579 ]
  %588 = phi ptr [ %577, %572 ], [ %583, %579 ]
  %589 = phi i32 [ %576, %572 ], [ %582, %579 ]
  %590 = phi i32 [ %573, %572 ], [ %580, %579 ]
  %591 = load ptr, ptr @stderr, align 8, !tbaa !6
  %592 = getelementptr inbounds i8, ptr %588, i64 68
  %593 = load i32, ptr %592, align 4, !tbaa !39
  %594 = add nsw i32 %593, %590
  %595 = add nsw i32 %589, %587
  %596 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %591, ptr noundef nonnull @.str.227, i32 noundef signext %594, i32 noundef signext %595) #20
  %597 = load ptr, ptr @input, align 8, !tbaa !6
  br label %598

598:                                              ; preds = %586, %579
  %599 = phi ptr [ %597, %586 ], [ %583, %579 ]
  %600 = getelementptr inbounds i8, ptr %599, i64 212
  %601 = load i32, ptr %600, align 4, !tbaa !46
  %602 = icmp eq i32 %601, 1
  br i1 %602, label %603, label %624

603:                                              ; preds = %598
  %604 = getelementptr inbounds i8, ptr %599, i64 3556
  %605 = load i32, ptr %604, align 4, !tbaa !35
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %624, label %607

607:                                              ; preds = %603
  %608 = getelementptr inbounds i8, ptr %599, i64 216
  %609 = load i32, ptr %608, align 8, !tbaa !47
  %610 = and i32 %609, 1
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %624, label %612

612:                                              ; preds = %607
  %613 = load ptr, ptr @stderr, align 8, !tbaa !6
  %614 = tail call i64 @fwrite(ptr nonnull @.str.228, i64 46, i64 1, ptr %613) #15
  %615 = load ptr, ptr @input, align 8, !tbaa !6
  %616 = getelementptr inbounds i8, ptr %615, i64 216
  %617 = load i32, ptr %616, align 8, !tbaa !47
  %618 = icmp sgt i32 %617, 1
  %619 = select i1 %618, i32 -1, i32 1
  %620 = add nsw i32 %619, %617
  store i32 %620, ptr %616, align 8, !tbaa !47
  %621 = load ptr, ptr @stderr, align 8, !tbaa !6
  %622 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %621, ptr noundef nonnull @.str.229, i32 noundef signext %620) #20
  %623 = load ptr, ptr @input, align 8, !tbaa !6
  br label %624

624:                                              ; preds = %612, %607, %603, %598
  %625 = phi ptr [ %599, %607 ], [ %623, %612 ], [ %599, %603 ], [ %599, %598 ]
  %626 = getelementptr inbounds i8, ptr %625, i64 3824
  %627 = load i32, ptr %626, align 8, !tbaa !48
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %792, label %629

629:                                              ; preds = %624
  %630 = getelementptr inbounds i8, ptr %625, i64 3828
  %631 = load i32, ptr %630, align 4, !tbaa !49
  switch i32 %631, label %792 [
    i32 0, label %632
    i32 2, label %632
    i32 6, label %632
  ]

632:                                              ; preds = %629, %629, %629
  %633 = getelementptr inbounds i8, ptr %625, i64 3624
  %634 = load i8, ptr %633, align 1
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %646, label %636

636:                                              ; preds = %632
  %637 = tail call ptr @fopen64(ptr noundef nonnull %633, ptr noundef nonnull @.str.197) #17
  %638 = icmp eq ptr %637, null
  %639 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %638, label %643, label %640

640:                                              ; preds = %636
  %641 = getelementptr inbounds i8, ptr %639, i64 3828
  %642 = load i32, ptr %641, align 4, !tbaa !49
  br label %646

643:                                              ; preds = %636
  %644 = getelementptr inbounds i8, ptr %639, i64 3624
  %645 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.225, ptr noundef nonnull %644) #17
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  br label %792

646:                                              ; preds = %640, %632
  %647 = phi i32 [ %642, %640 ], [ %631, %632 ]
  %648 = phi ptr [ %639, %640 ], [ %625, %632 ]
  %649 = phi ptr [ %637, %640 ], [ null, %632 ]
  switch i32 %647, label %790 [
    i32 0, label %650
    i32 2, label %681
    i32 6, label %726
  ]

650:                                              ; preds = %646
  %651 = getelementptr inbounds i8, ptr %648, i64 3824
  %652 = load i32, ptr %651, align 8, !tbaa !48
  %653 = add nsw i32 %652, 1
  %654 = sext i32 %653 to i64
  %655 = shl nsw i64 %654, 2
  %656 = tail call noalias ptr @malloc(i64 noundef %655) #19
  %657 = getelementptr inbounds i8, ptr %648, i64 3856
  store ptr %656, ptr %657, align 8, !tbaa !50
  %658 = icmp eq ptr %656, null
  br i1 %658, label %659, label %663

659:                                              ; preds = %650
  tail call void @no_mem_exit(ptr noundef nonnull @.str.230) #17
  %660 = load ptr, ptr @input, align 8, !tbaa !6
  %661 = getelementptr inbounds i8, ptr %660, i64 3824
  %662 = load i32, ptr %661, align 8, !tbaa !48
  br label %663

663:                                              ; preds = %659, %650
  %664 = phi i32 [ %662, %659 ], [ %652, %650 ]
  %665 = phi ptr [ %660, %659 ], [ %648, %650 ]
  %666 = icmp slt i32 %664, 0
  br i1 %666, label %790, label %667

667:                                              ; preds = %663, %667
  %668 = phi i64 [ %675, %667 ], [ 0, %663 ]
  %669 = phi ptr [ %676, %667 ], [ %665, %663 ]
  %670 = getelementptr inbounds i8, ptr %669, i64 3856
  %671 = load ptr, ptr %670, align 8, !tbaa !50
  %672 = getelementptr inbounds i32, ptr %671, i64 %668
  %673 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.205, ptr noundef %672) #17
  %674 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.231) #17
  %675 = add nuw nsw i64 %668, 1
  %676 = load ptr, ptr @input, align 8, !tbaa !6
  %677 = getelementptr inbounds i8, ptr %676, i64 3824
  %678 = load i32, ptr %677, align 8, !tbaa !48
  %679 = sext i32 %678 to i64
  %680 = icmp slt i64 %668, %679
  br i1 %680, label %667, label %790

681:                                              ; preds = %646
  %682 = getelementptr inbounds i8, ptr %648, i64 3824
  %683 = load i32, ptr %682, align 8, !tbaa !48
  %684 = sext i32 %683 to i64
  %685 = shl nsw i64 %684, 2
  %686 = tail call noalias ptr @malloc(i64 noundef %685) #19
  %687 = getelementptr inbounds i8, ptr %648, i64 3832
  store ptr %686, ptr %687, align 8, !tbaa !51
  %688 = tail call noalias ptr @malloc(i64 noundef %685) #19
  %689 = getelementptr inbounds i8, ptr %648, i64 3840
  store ptr %688, ptr %689, align 8, !tbaa !52
  %690 = icmp eq ptr %686, null
  br i1 %690, label %691, label %695

691:                                              ; preds = %681
  tail call void @no_mem_exit(ptr noundef nonnull @.str.232) #17
  %692 = load ptr, ptr @input, align 8, !tbaa !6
  %693 = getelementptr inbounds i8, ptr %692, i64 3840
  %694 = load ptr, ptr %693, align 8, !tbaa !52
  br label %695

695:                                              ; preds = %691, %681
  %696 = phi ptr [ %694, %691 ], [ %688, %681 ]
  %697 = phi ptr [ %692, %691 ], [ %648, %681 ]
  %698 = icmp eq ptr %696, null
  br i1 %698, label %699, label %701

699:                                              ; preds = %695
  tail call void @no_mem_exit(ptr noundef nonnull @.str.233) #17
  %700 = load ptr, ptr @input, align 8, !tbaa !6
  br label %701

701:                                              ; preds = %699, %695
  %702 = phi ptr [ %700, %699 ], [ %697, %695 ]
  %703 = getelementptr inbounds i8, ptr %702, i64 3824
  %704 = load i32, ptr %703, align 8, !tbaa !48
  %705 = icmp sgt i32 %704, 0
  br i1 %705, label %706, label %790

706:                                              ; preds = %701, %706
  %707 = phi i64 [ %720, %706 ], [ 0, %701 ]
  %708 = phi ptr [ %721, %706 ], [ %702, %701 ]
  %709 = getelementptr inbounds i8, ptr %708, i64 3832
  %710 = load ptr, ptr %709, align 8, !tbaa !51
  %711 = getelementptr inbounds i32, ptr %710, i64 %707
  %712 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.205, ptr noundef %711) #17
  %713 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.231) #17
  %714 = load ptr, ptr @input, align 8, !tbaa !6
  %715 = getelementptr inbounds i8, ptr %714, i64 3840
  %716 = load ptr, ptr %715, align 8, !tbaa !52
  %717 = getelementptr inbounds i32, ptr %716, i64 %707
  %718 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.205, ptr noundef %717) #17
  %719 = tail call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.231) #17
  %720 = add nuw nsw i64 %707, 1
  %721 = load ptr, ptr @input, align 8, !tbaa !6
  %722 = getelementptr inbounds i8, ptr %721, i64 3824
  %723 = load i32, ptr %722, align 8, !tbaa !48
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %720, %724
  br i1 %725, label %706, label %790

726:                                              ; preds = %646
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %727 = getelementptr inbounds i8, ptr %648, i64 3552
  %728 = load i32, ptr %727, align 8, !tbaa !34
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %734

730:                                              ; preds = %726
  %731 = getelementptr inbounds i8, ptr %648, i64 3556
  %732 = load i32, ptr %731, align 4, !tbaa !35
  %733 = icmp ne i32 %732, 0
  br label %734

734:                                              ; preds = %730, %726
  %735 = phi i1 [ true, %726 ], [ %733, %730 ]
  %736 = getelementptr inbounds i8, ptr %648, i64 68
  %737 = load i32, ptr %736, align 4, !tbaa !39
  %738 = load ptr, ptr @img, align 8, !tbaa !6
  %739 = getelementptr inbounds i8, ptr %738, i64 90576
  %740 = load i32, ptr %739, align 8, !tbaa !40
  %741 = add nsw i32 %740, %737
  %742 = sdiv i32 %741, 16
  %743 = getelementptr inbounds i8, ptr %648, i64 72
  %744 = load i32, ptr %743, align 8, !tbaa !44
  %745 = getelementptr inbounds i8, ptr %738, i64 90580
  %746 = load i32, ptr %745, align 4, !tbaa !45
  %747 = add nsw i32 %746, %744
  %748 = sdiv i32 %747, 16
  %749 = freeze i1 %735
  %750 = select i1 %749, i32 2, i32 1
  %751 = sdiv i32 %748, %750
  %752 = sext i32 %751 to i64
  %753 = sext i32 %742 to i64
  %754 = mul nsw i64 %752, %753
  %755 = tail call noalias ptr @malloc(i64 noundef %754) #19
  %756 = getelementptr inbounds i8, ptr %648, i64 3848
  store ptr %755, ptr %756, align 8, !tbaa !53
  %757 = icmp eq ptr %755, null
  br i1 %757, label %758, label %759

758:                                              ; preds = %734
  tail call void @no_mem_exit(ptr noundef nonnull @.str.234) #17
  br label %759

759:                                              ; preds = %758, %734
  %760 = mul nsw i32 %751, %742
  %761 = icmp sgt i32 %760, 0
  br i1 %761, label %762, label %789

762:                                              ; preds = %759
  %763 = zext nneg i32 %760 to i64
  br label %764

764:                                              ; preds = %785, %762
  %765 = phi i64 [ 0, %762 ], [ %787, %785 ]
  %766 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.205, ptr noundef nonnull %3) #17
  %767 = load i32, ptr %3, align 4, !tbaa !17
  %768 = trunc i32 %767 to i8
  %769 = load ptr, ptr @input, align 8, !tbaa !6
  %770 = getelementptr inbounds i8, ptr %769, i64 3848
  %771 = load ptr, ptr %770, align 8, !tbaa !53
  %772 = getelementptr inbounds i8, ptr %771, i64 %765
  store i8 %768, ptr %772, align 1, !tbaa !19
  %773 = load ptr, ptr @input, align 8, !tbaa !6
  %774 = getelementptr inbounds i8, ptr %773, i64 3848
  %775 = load ptr, ptr %774, align 8, !tbaa !53
  %776 = getelementptr inbounds i8, ptr %775, i64 %765
  %777 = load i8, ptr %776, align 1, !tbaa !19
  %778 = zext i8 %777 to i32
  %779 = getelementptr inbounds i8, ptr %773, i64 3824
  %780 = load i32, ptr %779, align 8, !tbaa !48
  %781 = icmp slt i32 %780, %778
  br i1 %781, label %782, label %785

782:                                              ; preds = %764
  %783 = getelementptr inbounds i8, ptr %773, i64 3624
  %784 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.235, ptr noundef nonnull %783) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  br label %785

785:                                              ; preds = %782, %764
  %786 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %649, ptr noundef nonnull @.str.231) #17
  %787 = add nuw nsw i64 %765, 1
  %788 = icmp eq i64 %787, %763
  br i1 %788, label %789, label %764

789:                                              ; preds = %785, %759
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %790

790:                                              ; preds = %706, %667, %789, %701, %663, %646
  %791 = call signext i32 @fclose(ptr noundef %649)
  br label %792

792:                                              ; preds = %790, %643, %629, %624
  %793 = load ptr, ptr @input, align 8, !tbaa !6
  %794 = getelementptr inbounds i8, ptr %793, i64 2976
  %795 = load i32, ptr %794, align 8, !tbaa !54
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %811, label %797

797:                                              ; preds = %792
  %798 = getelementptr inbounds i8, ptr %793, i64 1944
  %799 = load i32, ptr %798, align 8, !tbaa !55
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %811, label %801

801:                                              ; preds = %797
  %802 = getelementptr inbounds i8, ptr %793, i64 3552
  %803 = load i32, ptr %802, align 8, !tbaa !34
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %809

805:                                              ; preds = %801
  %806 = getelementptr inbounds i8, ptr %793, i64 3556
  %807 = load i32, ptr %806, align 4, !tbaa !35
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %811, label %809

809:                                              ; preds = %805, %801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) @errortext, ptr noundef nonnull align 1 dereferenceable(65) @.str.236, i64 65, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %810 = load ptr, ptr @input, align 8, !tbaa !6
  br label %811

811:                                              ; preds = %809, %805, %797, %792
  %812 = phi ptr [ %810, %809 ], [ %793, %805 ], [ %793, %797 ], [ %793, %792 ]
  %813 = getelementptr inbounds i8, ptr %812, i64 2980
  %814 = load i32, ptr %813, align 4, !tbaa !56
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %830, label %816

816:                                              ; preds = %811
  %817 = getelementptr inbounds i8, ptr %812, i64 1944
  %818 = load i32, ptr %817, align 8, !tbaa !55
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %830, label %820

820:                                              ; preds = %816
  %821 = getelementptr inbounds i8, ptr %812, i64 3552
  %822 = load i32, ptr %821, align 8, !tbaa !34
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %828

824:                                              ; preds = %820
  %825 = getelementptr inbounds i8, ptr %812, i64 3556
  %826 = load i32, ptr %825, align 4, !tbaa !35
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %830, label %828

828:                                              ; preds = %824, %820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) @errortext, ptr noundef nonnull align 1 dereferenceable(67) @.str.237, i64 67, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %829 = load ptr, ptr @input, align 8, !tbaa !6
  br label %830

830:                                              ; preds = %828, %824, %816, %811
  %831 = phi ptr [ %829, %828 ], [ %812, %824 ], [ %812, %816 ], [ %812, %811 ]
  %832 = getelementptr inbounds i8, ptr %831, i64 3552
  %833 = load i32, ptr %832, align 8, !tbaa !34
  %834 = icmp ult i32 %833, 3
  br i1 %834, label %838, label %835

835:                                              ; preds = %830
  %836 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.238, i32 noundef signext %833) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %837 = load ptr, ptr @input, align 8, !tbaa !6
  br label %838

838:                                              ; preds = %835, %830
  %839 = phi ptr [ %831, %830 ], [ %837, %835 ]
  %840 = getelementptr inbounds i8, ptr %839, i64 3556
  %841 = load i32, ptr %840, align 4, !tbaa !35
  %842 = icmp ult i32 %841, 3
  br i1 %842, label %846, label %843

843:                                              ; preds = %838
  %844 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.239, i32 noundef signext %841) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #17
  %845 = load ptr, ptr @input, align 8, !tbaa !6
  br label %846

846:                                              ; preds = %843, %838
  %847 = phi ptr [ %839, %838 ], [ %845, %843 ]
  %848 = getelementptr inbounds i8, ptr %847, i64 3136
  %849 = load i32, ptr %848, align 8, !tbaa !57
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %859

851:                                              ; preds = %846
  %852 = getelementptr inbounds i8, ptr %847, i64 3556
  %853 = load i32, ptr %852, align 4, !tbaa !35
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %876, label %855

855:                                              ; preds = %851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.240, i64 55, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %856 = load ptr, ptr @input, align 8, !tbaa !6
  %857 = getelementptr inbounds i8, ptr %856, i64 3136
  %858 = load i32, ptr %857, align 8, !tbaa !57
  br label %859

859:                                              ; preds = %855, %846
  %860 = phi i32 [ %858, %855 ], [ %849, %846 ]
  %861 = phi ptr [ %856, %855 ], [ %847, %846 ]
  %862 = icmp sgt i32 %860, 2
  br i1 %862, label %863, label %867

863:                                              ; preds = %859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) @errortext, ptr noundef nonnull align 1 dereferenceable(91) @.str.241, i64 91, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %864 = load ptr, ptr @input, align 8, !tbaa !6
  %865 = getelementptr inbounds i8, ptr %864, i64 3136
  %866 = load i32, ptr %865, align 8, !tbaa !57
  br label %867

867:                                              ; preds = %863, %859
  %868 = phi i32 [ %866, %863 ], [ %860, %859 ]
  %869 = phi ptr [ %864, %863 ], [ %861, %859 ]
  %870 = icmp eq i32 %868, 2
  br i1 %870, label %871, label %876

871:                                              ; preds = %867
  %872 = load i32, ptr %869, align 8, !tbaa !58
  %873 = icmp sgt i32 %872, 99
  br i1 %873, label %874, label %876

874:                                              ; preds = %871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.242, i64 58, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %875 = load ptr, ptr @input, align 8, !tbaa !6
  br label %876

876:                                              ; preds = %874, %871, %867, %851
  %877 = phi ptr [ %875, %874 ], [ %869, %871 ], [ %869, %867 ], [ %847, %851 ]
  %878 = getelementptr inbounds i8, ptr %877, i64 24
  %879 = load i32, ptr %878, align 8, !tbaa !59
  %880 = icmp eq i32 %879, 2
  br i1 %880, label %881, label %886

881:                                              ; preds = %876
  %882 = getelementptr inbounds i8, ptr %877, i64 3964
  %883 = load i32, ptr %882, align 4, !tbaa !60
  switch i32 %883, label %884 [
    i32 0, label %886
    i32 3, label %886
  ]

884:                                              ; preds = %881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) @errortext, ptr noundef nonnull align 1 dereferenceable(59) @.str.243, i64 59, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %885 = load ptr, ptr @input, align 8, !tbaa !6
  br label %886

886:                                              ; preds = %884, %881, %881, %876
  %887 = phi ptr [ %877, %881 ], [ %877, %881 ], [ %885, %884 ], [ %877, %876 ]
  %888 = getelementptr inbounds i8, ptr %887, i64 3584
  %889 = load i32, ptr %888, align 8, !tbaa !61
  %890 = getelementptr inbounds i8, ptr %887, i64 36
  %891 = load i32, ptr %890, align 4, !tbaa !30
  %892 = icmp sge i32 %889, %891
  %893 = icmp slt i32 %889, 0
  %894 = or i1 %893, %892
  br i1 %894, label %895, label %900

895:                                              ; preds = %886
  %896 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.244, i32 noundef signext %889, i32 noundef signext %891) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %897 = load ptr, ptr @input, align 8, !tbaa !6
  %898 = getelementptr inbounds i8, ptr %897, i64 3584
  %899 = load i32, ptr %898, align 8, !tbaa !61
  br label %900

900:                                              ; preds = %895, %886
  %901 = phi i32 [ %889, %886 ], [ %899, %895 ]
  %902 = phi ptr [ %887, %886 ], [ %897, %895 ]
  %903 = icmp sgt i32 %901, 0
  br i1 %903, label %904, label %910

904:                                              ; preds = %900
  %905 = getelementptr inbounds i8, ptr %902, i64 2988
  %906 = load i32, ptr %905, align 4, !tbaa !62
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %910

908:                                              ; preds = %904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) @errortext, ptr noundef nonnull align 1 dereferenceable(66) @.str.245, i64 66, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %909 = load ptr, ptr @input, align 8, !tbaa !6
  br label %910

910:                                              ; preds = %908, %904, %900
  %911 = phi ptr [ %909, %908 ], [ %902, %904 ], [ %902, %900 ]
  %912 = getelementptr inbounds i8, ptr %911, i64 3552
  %913 = load i32, ptr %912, align 8, !tbaa !34
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %919

915:                                              ; preds = %910
  %916 = getelementptr inbounds i8, ptr %911, i64 3556
  %917 = load i32, ptr %916, align 4, !tbaa !35
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %925, label %919

919:                                              ; preds = %915, %910
  %920 = getelementptr inbounds i8, ptr %911, i64 3612
  %921 = load i32, ptr %920, align 4, !tbaa !63
  %922 = icmp eq i32 %921, 1
  br i1 %922, label %923, label %925

923:                                              ; preds = %919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str.246, i64 42, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %924 = load ptr, ptr @input, align 8, !tbaa !6
  br label %925

925:                                              ; preds = %923, %919, %915
  %926 = phi ptr [ %924, %923 ], [ %911, %919 ], [ %911, %915 ]
  %927 = getelementptr inbounds i8, ptr %926, i64 2988
  %928 = load i32, ptr %927, align 4, !tbaa !62
  %929 = icmp eq i32 %928, 1
  br i1 %929, label %936, label %930

930:                                              ; preds = %925
  %931 = getelementptr inbounds i8, ptr %926, i64 3612
  %932 = load i32, ptr %931, align 4, !tbaa !63
  %933 = icmp eq i32 %932, 1
  br i1 %933, label %934, label %936

934:                                              ; preds = %930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) @errortext, ptr noundef nonnull align 1 dereferenceable(64) @.str.247, i64 64, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %935 = load ptr, ptr @input, align 8, !tbaa !6
  br label %936

936:                                              ; preds = %934, %930, %925
  %937 = phi ptr [ %935, %934 ], [ %926, %930 ], [ %926, %925 ]
  %938 = getelementptr inbounds i8, ptr %937, i64 1904
  %939 = load i32, ptr %938, align 8, !tbaa !64
  %940 = icmp sgt i32 %939, 0
  br i1 %940, label %945, label %941

941:                                              ; preds = %936
  %942 = getelementptr inbounds i8, ptr %937, i64 1908
  %943 = load i32, ptr %942, align 4, !tbaa !65
  %944 = icmp sgt i32 %943, 0
  br i1 %944, label %945, label %951

945:                                              ; preds = %941, %936
  %946 = getelementptr inbounds i8, ptr %937, i64 3556
  %947 = load i32, ptr %946, align 4, !tbaa !35
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %951, label %949

949:                                              ; preds = %945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) @errortext, ptr noundef nonnull align 1 dereferenceable(66) @.str.248, i64 66, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %950 = load ptr, ptr @input, align 8, !tbaa !6
  br label %951

951:                                              ; preds = %949, %945, %941
  %952 = phi ptr [ %950, %949 ], [ %937, %945 ], [ %937, %941 ]
  %953 = getelementptr inbounds i8, ptr %952, i64 3584
  %954 = load i32, ptr %953, align 8, !tbaa !61
  %955 = icmp sgt i32 %954, 0
  br i1 %955, label %956, label %962

956:                                              ; preds = %951
  %957 = getelementptr inbounds i8, ptr %952, i64 1904
  %958 = load i32, ptr %957, align 8, !tbaa !64
  %959 = icmp sgt i32 %958, 0
  br i1 %959, label %960, label %962

960:                                              ; preds = %956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) @errortext, ptr noundef nonnull align 1 dereferenceable(70) @.str.249, i64 70, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %961 = load ptr, ptr @input, align 8, !tbaa !6
  br label %962

962:                                              ; preds = %960, %956, %951
  %963 = phi ptr [ %961, %960 ], [ %952, %956 ], [ %952, %951 ]
  %964 = getelementptr inbounds i8, ptr %963, i64 3824
  %965 = load i32, ptr %964, align 8, !tbaa !48
  %966 = icmp sgt i32 %965, 0
  br i1 %966, label %967, label %973

967:                                              ; preds = %962
  %968 = getelementptr inbounds i8, ptr %963, i64 3828
  %969 = load i32, ptr %968, align 4, !tbaa !49
  %970 = add i32 %969, -3
  %971 = icmp ult i32 %970, 3
  br i1 %971, label %972, label %973

972:                                              ; preds = %967
  store i32 1, ptr %964, align 8, !tbaa !48
  br label %973

973:                                              ; preds = %972, %967, %962
  %974 = getelementptr inbounds i8, ptr %963, i64 3908
  %975 = load i32, ptr %974, align 4, !tbaa !66
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %997, label %977

977:                                              ; preds = %973
  %978 = getelementptr inbounds i8, ptr %963, i64 72
  %979 = load i32, ptr %978, align 8, !tbaa !44
  %980 = load ptr, ptr @img, align 8, !tbaa !6
  %981 = getelementptr inbounds i8, ptr %980, i64 90580
  %982 = load i32, ptr %981, align 4, !tbaa !45
  %983 = add nsw i32 %982, %979
  %984 = getelementptr inbounds i8, ptr %963, i64 68
  %985 = load i32, ptr %984, align 4, !tbaa !39
  %986 = getelementptr inbounds i8, ptr %980, i64 90576
  %987 = load i32, ptr %986, align 8, !tbaa !40
  %988 = add nsw i32 %987, %985
  %989 = mul nsw i32 %988, %983
  %990 = sdiv i32 %989, 256
  %991 = getelementptr inbounds i8, ptr %963, i64 3920
  %992 = load i32, ptr %991, align 8, !tbaa !67
  %993 = srem i32 %990, %992
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %997, label %995

995:                                              ; preds = %977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) @errortext, ptr noundef nonnull align 1 dereferenceable(59) @.str.250, i64 59, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %996 = load ptr, ptr @input, align 8, !tbaa !6
  br label %997

997:                                              ; preds = %995, %977, %973
  %998 = phi ptr [ %963, %977 ], [ %996, %995 ], [ %963, %973 ]
  %999 = getelementptr inbounds i8, ptr %998, i64 1244
  %1000 = load i32, ptr %999, align 4, !tbaa !27
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1020, label %1002

1002:                                             ; preds = %997
  %1003 = getelementptr inbounds i8, ptr %998, i64 1940
  %1004 = load i32, ptr %1003, align 4, !tbaa !26
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1020, label %1006

1006:                                             ; preds = %1002
  %1007 = getelementptr inbounds i8, ptr %998, i64 1236
  %1008 = load i32, ptr %1007, align 4, !tbaa !68
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1020, label %1010

1010:                                             ; preds = %1006
  %1011 = getelementptr inbounds i8, ptr %998, i64 1228
  %1012 = load i32, ptr %1011, align 4, !tbaa !69
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1020, label %1014

1014:                                             ; preds = %1010
  %1015 = getelementptr inbounds i8, ptr %998, i64 3880
  %1016 = load i32, ptr %1015, align 8, !tbaa !70
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1014
  call void @error(ptr noundef nonnull @.str.251, i32 noundef signext -1000) #17
  %1019 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1020

1020:                                             ; preds = %1018, %1014, %1010, %1006, %1002, %997
  %1021 = phi ptr [ %1019, %1018 ], [ %998, %1014 ], [ %998, %1010 ], [ %998, %1006 ], [ %998, %1002 ], [ %998, %997 ]
  %1022 = getelementptr inbounds i8, ptr %1021, i64 1256
  %1023 = load i32, ptr %1022, align 8, !tbaa !33
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1035

1025:                                             ; preds = %1020
  %1026 = getelementptr inbounds i8, ptr %1021, i64 36
  %1027 = load i32, ptr %1026, align 4, !tbaa !30
  %1028 = icmp slt i32 %1027, 2
  br i1 %1028, label %1029, label %1035

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds i8, ptr %1021, i64 1244
  %1031 = load i32, ptr %1030, align 4, !tbaa !27
  %1032 = icmp sgt i32 %1031, 0
  br i1 %1032, label %1033, label %1035

1033:                                             ; preds = %1029
  call void @error(ptr noundef nonnull @.str.252, i32 noundef signext -1000) #17
  %1034 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1035

1035:                                             ; preds = %1033, %1029, %1025, %1020
  %1036 = phi ptr [ %1034, %1033 ], [ %1021, %1029 ], [ %1021, %1025 ], [ %1021, %1020 ]
  %1037 = getelementptr inbounds i8, ptr %1036, i64 3892
  %1038 = load i32, ptr %1037, align 4, !tbaa !71
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1057, label %1040

1040:                                             ; preds = %1035
  %1041 = getelementptr inbounds i8, ptr %1036, i64 1280
  %1042 = load i32, ptr %1041, align 8, !tbaa !72
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1049, label %1044

1044:                                             ; preds = %1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) @errortext, ptr noundef nonnull align 1 dereferenceable(52) @.str.253, i64 52, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1045 = load ptr, ptr @input, align 8, !tbaa !6
  %1046 = getelementptr inbounds i8, ptr %1045, i64 3892
  %1047 = load i32, ptr %1046, align 4, !tbaa !71
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1057, label %1049

1049:                                             ; preds = %1044, %1040
  %1050 = phi ptr [ %1045, %1044 ], [ %1036, %1040 ]
  %1051 = load i32, ptr %1050, align 8, !tbaa !58
  %1052 = add i32 %1051, -145
  %1053 = icmp ult i32 %1052, -45
  br i1 %1053, label %1054, label %1057

1054:                                             ; preds = %1049
  %1055 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.254, i32 noundef signext 100, i32 noundef signext 144) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1056 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1057

1057:                                             ; preds = %1054, %1049, %1044, %1035
  %1058 = phi ptr [ %1050, %1049 ], [ %1056, %1054 ], [ %1045, %1044 ], [ %1036, %1035 ]
  %1059 = getelementptr inbounds i8, ptr %1058, i64 3928
  %1060 = load i32, ptr %1059, align 8, !tbaa !73
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1069, label %1062

1062:                                             ; preds = %1057
  %1063 = load i32, ptr %1058, align 8, !tbaa !58
  %1064 = add i32 %1063, -145
  %1065 = icmp ult i32 %1064, -45
  br i1 %1065, label %1066, label %1069

1066:                                             ; preds = %1062
  %1067 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.255, i32 noundef signext 100, i32 noundef signext 144) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1068 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1069

1069:                                             ; preds = %1066, %1062, %1057
  %1070 = phi ptr [ %1058, %1062 ], [ %1068, %1066 ], [ %1058, %1057 ]
  %1071 = getelementptr inbounds i8, ptr %1070, i64 76
  %1072 = load i32, ptr %1071, align 4, !tbaa !74
  %1073 = icmp eq i32 %1072, 2
  br i1 %1073, label %1074, label %1082

1074:                                             ; preds = %1069
  %1075 = load i32, ptr %1070, align 8, !tbaa !58
  %1076 = icmp slt i32 %1075, 122
  br i1 %1076, label %1077, label %1095

1077:                                             ; preds = %1074
  %1078 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.256, i32 noundef signext 122, i32 noundef signext 144) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1079 = load ptr, ptr @input, align 8, !tbaa !6
  %1080 = getelementptr inbounds i8, ptr %1079, i64 76
  %1081 = load i32, ptr %1080, align 4, !tbaa !74
  br label %1082

1082:                                             ; preds = %1077, %1069
  %1083 = phi i32 [ %1081, %1077 ], [ %1072, %1069 ]
  %1084 = phi ptr [ %1079, %1077 ], [ %1070, %1069 ]
  %1085 = icmp eq i32 %1083, 3
  br i1 %1085, label %1086, label %1095

1086:                                             ; preds = %1082
  %1087 = load i32, ptr %1084, align 8, !tbaa !58
  %1088 = icmp slt i32 %1087, 144
  br i1 %1088, label %1089, label %1102

1089:                                             ; preds = %1086
  %1090 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.257, i32 noundef signext 144) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1091 = load ptr, ptr @input, align 8, !tbaa !6
  %1092 = getelementptr inbounds i8, ptr %1091, i64 76
  %1093 = load i32, ptr %1092, align 4, !tbaa !74
  %1094 = icmp eq i32 %1093, 3
  br i1 %1094, label %1102, label %1095

1095:                                             ; preds = %1089, %1082, %1074
  %1096 = phi ptr [ %1091, %1089 ], [ %1084, %1082 ], [ %1070, %1074 ]
  %1097 = getelementptr inbounds i8, ptr %1096, i64 4000
  %1098 = load i32, ptr %1097, align 8, !tbaa !75
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1102, label %1100

1100:                                             ; preds = %1095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) @errortext, ptr noundef nonnull align 1 dereferenceable(54) @.str.258, i64 54, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1101 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1102

1102:                                             ; preds = %1100, %1095, %1089, %1086
  %1103 = phi ptr [ %1101, %1100 ], [ %1096, %1095 ], [ %1091, %1089 ], [ %1084, %1086 ]
  %1104 = getelementptr inbounds i8, ptr %1103, i64 1264
  %1105 = load i32, ptr %1104, align 8, !tbaa !76
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1102
  %1108 = getelementptr inbounds i8, ptr %1103, i64 32
  %1109 = load i32, ptr %1108, align 8, !tbaa !77
  %1110 = getelementptr inbounds i8, ptr %1103, i64 1272
  %1111 = load i32, ptr %1110, align 8, !tbaa !78
  %1112 = icmp slt i32 %1109, %1111
  br i1 %1112, label %1113, label %1115

1113:                                             ; preds = %1107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) @errortext, ptr noundef nonnull align 1 dereferenceable(59) @.str.259, i64 59, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1114 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1115

1115:                                             ; preds = %1113, %1107, %1102
  %1116 = phi ptr [ %1114, %1113 ], [ %1103, %1107 ], [ %1103, %1102 ]
  %1117 = getelementptr inbounds i8, ptr %1116, i64 1232
  %1118 = load i32, ptr %1117, align 8, !tbaa !79
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1127, label %1120

1120:                                             ; preds = %1115
  %1121 = getelementptr inbounds i8, ptr %1116, i64 2976
  store i32 1, ptr %1121, align 8, !tbaa !54
  %1122 = getelementptr inbounds i8, ptr %1116, i64 3552
  %1123 = load i32, ptr %1122, align 8, !tbaa !34
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) @errortext, ptr noundef nonnull align 1 dereferenceable(59) @.str.260, i64 59, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1126 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1127

1127:                                             ; preds = %1125, %1120, %1115
  %1128 = phi ptr [ %1116, %1115 ], [ %1126, %1125 ], [ %1116, %1120 ]
  %1129 = load i32, ptr %1128, align 8, !tbaa !58
  switch i32 %1129, label %1130 [
    i32 66, label %1134
    i32 77, label %1134
    i32 88, label %1134
    i32 100, label %1134
    i32 110, label %1134
    i32 122, label %1134
    i32 144, label %1134
  ]

1130:                                             ; preds = %1127
  %1131 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.265, i32 noundef signext 100, i32 noundef signext 144) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1132 = load ptr, ptr @input, align 8, !tbaa !6
  %1133 = load i32, ptr %1132, align 8, !tbaa !58
  br label %1134

1134:                                             ; preds = %1130, %1127, %1127, %1127, %1127, %1127, %1127, %1127
  %1135 = phi i32 [ %1129, %1127 ], [ %1129, %1127 ], [ %1129, %1127 ], [ %1129, %1127 ], [ %1129, %1127 ], [ %1129, %1127 ], [ %1129, %1127 ], [ %1133, %1130 ]
  %1136 = phi ptr [ %1128, %1127 ], [ %1128, %1127 ], [ %1128, %1127 ], [ %1128, %1127 ], [ %1128, %1127 ], [ %1128, %1127 ], [ %1128, %1127 ], [ %1132, %1130 ]
  %1137 = icmp eq i32 %1135, 66
  br i1 %1137, label %1138, label %1183

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds i8, ptr %1136, i64 1244
  %1140 = load i32, ptr %1139, align 4, !tbaa !27
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1142, label %1146

1142:                                             ; preds = %1138
  %1143 = getelementptr inbounds i8, ptr %1136, i64 1940
  %1144 = load i32, ptr %1143, align 4, !tbaa !26
  %1145 = icmp eq i32 %1144, 2
  br i1 %1145, label %1146, label %1148

1146:                                             ; preds = %1142, %1138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) @errortext, ptr noundef nonnull align 1 dereferenceable(40) @.str.266, i64 40, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1147 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1148

1148:                                             ; preds = %1146, %1142
  %1149 = phi ptr [ %1147, %1146 ], [ %1136, %1142 ]
  %1150 = getelementptr inbounds i8, ptr %1149, i64 1280
  %1151 = load i32, ptr %1150, align 8, !tbaa !72
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1155, label %1153

1153:                                             ; preds = %1148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) @errortext, ptr noundef nonnull align 1 dereferenceable(41) @.str.267, i64 41, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1154 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1155

1155:                                             ; preds = %1153, %1148
  %1156 = phi ptr [ %1154, %1153 ], [ %1149, %1148 ]
  %1157 = getelementptr inbounds i8, ptr %1156, i64 2992
  %1158 = load i32, ptr %1157, align 8, !tbaa !80
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1162, label %1160

1160:                                             ; preds = %1155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) @errortext, ptr noundef nonnull align 1 dereferenceable(46) @.str.268, i64 46, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1161 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1162

1162:                                             ; preds = %1160, %1155
  %1163 = phi ptr [ %1161, %1160 ], [ %1156, %1155 ]
  %1164 = getelementptr inbounds i8, ptr %1163, i64 1904
  %1165 = load i32, ptr %1164, align 8, !tbaa !64
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) @errortext, ptr noundef nonnull align 1 dereferenceable(48) @.str.269, i64 48, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1168 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1169

1169:                                             ; preds = %1167, %1162
  %1170 = phi ptr [ %1168, %1167 ], [ %1163, %1162 ]
  %1171 = getelementptr inbounds i8, ptr %1170, i64 1908
  %1172 = load i32, ptr %1171, align 4, !tbaa !65
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1176, label %1174

1174:                                             ; preds = %1169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) @errortext, ptr noundef nonnull align 1 dereferenceable(48) @.str.269, i64 48, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1175 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1176

1176:                                             ; preds = %1174, %1169
  %1177 = phi ptr [ %1175, %1174 ], [ %1170, %1169 ]
  %1178 = getelementptr inbounds i8, ptr %1177, i64 2984
  %1179 = load i32, ptr %1178, align 8, !tbaa !38
  %1180 = icmp eq i32 %1179, 1
  br i1 %1180, label %1181, label %1183

1181:                                             ; preds = %1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) @errortext, ptr noundef nonnull align 1 dereferenceable(34) @.str.270, i64 34, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1182 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1183

1183:                                             ; preds = %1181, %1176, %1134
  %1184 = phi ptr [ %1177, %1176 ], [ %1182, %1181 ], [ %1136, %1134 ]
  %1185 = load i32, ptr %1184, align 8, !tbaa !58
  %1186 = icmp eq i32 %1185, 77
  br i1 %1186, label %1187, label %1217

1187:                                             ; preds = %1183
  %1188 = getelementptr inbounds i8, ptr %1184, i64 1280
  %1189 = load i32, ptr %1188, align 8, !tbaa !72
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1193, label %1191

1191:                                             ; preds = %1187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) @errortext, ptr noundef nonnull align 1 dereferenceable(37) @.str.271, i64 37, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1192 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1193

1193:                                             ; preds = %1191, %1187
  %1194 = phi ptr [ %1192, %1191 ], [ %1184, %1187 ]
  %1195 = getelementptr inbounds i8, ptr %1194, i64 2992
  %1196 = load i32, ptr %1195, align 8, !tbaa !80
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1200, label %1198

1198:                                             ; preds = %1193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str.272, i64 42, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1199 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1200

1200:                                             ; preds = %1198, %1193
  %1201 = phi ptr [ %1199, %1198 ], [ %1194, %1193 ]
  %1202 = getelementptr inbounds i8, ptr %1201, i64 3824
  %1203 = load i32, ptr %1202, align 8, !tbaa !48
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1207, label %1205

1205:                                             ; preds = %1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) @errortext, ptr noundef nonnull align 1 dereferenceable(56) @.str.273, i64 56, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1206 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1207

1207:                                             ; preds = %1205, %1200
  %1208 = phi ptr [ %1206, %1205 ], [ %1201, %1200 ]
  %1209 = getelementptr inbounds i8, ptr %1208, i64 3876
  %1210 = load i32, ptr %1209, align 4, !tbaa !81
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1214, label %1212

1212:                                             ; preds = %1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) @errortext, ptr noundef nonnull align 1 dereferenceable(44) @.str.274, i64 44, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1213 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1214

1214:                                             ; preds = %1212, %1207
  %1215 = phi ptr [ %1213, %1212 ], [ %1208, %1207 ]
  %1216 = load i32, ptr %1215, align 8, !tbaa !58
  br label %1217

1217:                                             ; preds = %1214, %1183
  %1218 = phi i32 [ %1216, %1214 ], [ %1185, %1183 ]
  %1219 = phi ptr [ %1215, %1214 ], [ %1184, %1183 ]
  %1220 = icmp eq i32 %1218, 88
  br i1 %1220, label %1221, label %1234

1221:                                             ; preds = %1217
  %1222 = getelementptr inbounds i8, ptr %1219, i64 1260
  %1223 = load i32, ptr %1222, align 4, !tbaa !36
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.275, i64 58, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1226 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1227

1227:                                             ; preds = %1225, %1221
  %1228 = phi ptr [ %1226, %1225 ], [ %1219, %1221 ]
  %1229 = getelementptr inbounds i8, ptr %1228, i64 2984
  %1230 = load i32, ptr %1229, align 8, !tbaa !38
  %1231 = icmp eq i32 %1230, 1
  br i1 %1231, label %1232, label %1234

1232:                                             ; preds = %1227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) @errortext, ptr noundef nonnull align 1 dereferenceable(34) @.str.276, i64 34, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1233 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1234

1234:                                             ; preds = %1232, %1227, %1217
  %1235 = phi ptr [ %1219, %1217 ], [ %1228, %1227 ], [ %1233, %1232 ]
  %1236 = getelementptr inbounds i8, ptr %1235, i64 4
  %1237 = load i32, ptr %1236, align 4, !tbaa !82
  %1238 = icmp sgt i32 %1237, 29
  br i1 %1238, label %1239, label %1250

1239:                                             ; preds = %1234
  %1240 = getelementptr inbounds i8, ptr %1235, i64 1260
  %1241 = load i32, ptr %1240, align 4, !tbaa !36
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1243, label %1250

1243:                                             ; preds = %1239
  %1244 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1245 = call i64 @fwrite(ptr nonnull @.str.277, i64 106, i64 1, ptr %1244) #15
  %1246 = load ptr, ptr @input, align 8, !tbaa !6
  %1247 = getelementptr inbounds i8, ptr %1246, i64 1260
  store i32 1, ptr %1247, align 4, !tbaa !36
  %1248 = getelementptr inbounds i8, ptr %1246, i64 4
  %1249 = load i32, ptr %1248, align 4, !tbaa !82
  br label %1250

1250:                                             ; preds = %1243, %1239, %1234
  %1251 = phi i32 [ %1249, %1243 ], [ %1237, %1239 ], [ %1237, %1234 ]
  %1252 = phi ptr [ %1246, %1243 ], [ %1235, %1239 ], [ %1235, %1234 ]
  %1253 = add i32 %1251, -42
  %1254 = icmp ult i32 %1253, -21
  br i1 %1254, label %1255, label %1265

1255:                                             ; preds = %1250
  %1256 = getelementptr inbounds i8, ptr %1252, i64 3552
  %1257 = load i32, ptr %1256, align 8, !tbaa !34
  %1258 = icmp sgt i32 %1257, 0
  br i1 %1258, label %1263, label %1259

1259:                                             ; preds = %1255
  %1260 = getelementptr inbounds i8, ptr %1252, i64 3556
  %1261 = load i32, ptr %1260, align 4, !tbaa !35
  %1262 = icmp sgt i32 %1261, 0
  br i1 %1262, label %1263, label %1265

1263:                                             ; preds = %1259, %1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) @errortext, ptr noundef nonnull align 1 dereferenceable(103) @.str.278, i64 103, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 500) #17
  %1264 = load ptr, ptr @input, align 8, !tbaa !6
  br label %1265

1265:                                             ; preds = %1250, %1259, %1263
  %1266 = phi ptr [ %1252, %1250 ], [ %1252, %1259 ], [ %1264, %1263 ]
  %1267 = getelementptr inbounds i8, ptr %1266, i64 3900
  %1268 = load i32, ptr %1267, align 4, !tbaa !83
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1303, label %1270

1270:                                             ; preds = %1265
  %1271 = call i32 @puts(ptr nonnull dereferenceable(1) @str.282)
  %1272 = call i32 @puts(ptr nonnull dereferenceable(1) @str.280)
  %1273 = call i32 @puts(ptr nonnull dereferenceable(1) @str.282)
  %1274 = load ptr, ptr @Map, align 8, !tbaa !10
  %1275 = icmp eq ptr %1274, null
  br i1 %1275, label %1301, label %1276

1276:                                             ; preds = %1270, %1296
  %1277 = phi i64 [ %1297, %1296 ], [ 0, %1270 ]
  %1278 = phi ptr [ %1299, %1296 ], [ %1274, %1270 ]
  %1279 = phi ptr [ %1298, %1296 ], [ @Map, %1270 ]
  %1280 = getelementptr inbounds i8, ptr %1279, i64 16
  %1281 = load i32, ptr %1280, align 8, !tbaa !14
  switch i32 %1281, label %1296 [
    i32 0, label %1282
    i32 1, label %1287
    i32 2, label %1291
  ]

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds i8, ptr %1279, i64 8
  %1284 = load ptr, ptr %1283, align 8, !tbaa !16
  %1285 = load i32, ptr %1284, align 4, !tbaa !17
  %1286 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.214, ptr noundef nonnull %1278, i32 noundef signext %1285)
  br label %1296

1287:                                             ; preds = %1276
  %1288 = getelementptr inbounds i8, ptr %1279, i64 8
  %1289 = load ptr, ptr %1288, align 8, !tbaa !16
  %1290 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.215, ptr noundef nonnull %1278, ptr noundef %1289)
  br label %1296

1291:                                             ; preds = %1276
  %1292 = getelementptr inbounds i8, ptr %1279, i64 8
  %1293 = load ptr, ptr %1292, align 8, !tbaa !16
  %1294 = load double, ptr %1293, align 8, !tbaa !18
  %1295 = call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.216, ptr noundef nonnull %1278, double noundef %1294)
  br label %1296

1296:                                             ; preds = %1291, %1287, %1282, %1276
  %1297 = add nuw nsw i64 %1277, 1
  %1298 = getelementptr inbounds [186 x %struct.Mapping], ptr @Map, i64 0, i64 %1297
  %1299 = load ptr, ptr %1298, align 8, !tbaa !10
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1301, label %1276

1301:                                             ; preds = %1296, %1270
  %1302 = call i32 @puts(ptr nonnull dereferenceable(1) @str.282)
  br label %1303

1303:                                             ; preds = %1301, %1265
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local noalias noundef ptr @GetConfigFileContent(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.197) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.198, ptr noundef %0) #17
  br label %30

6:                                                ; preds = %1
  %7 = tail call signext i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef signext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.199, ptr noundef %0) #17
  br label %30

11:                                               ; preds = %6
  %12 = tail call i64 @ftell(ptr noundef nonnull %2)
  %13 = icmp ugt i64 %12, 60000
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.200, i64 noundef %12, ptr noundef %0) #17
  br label %30

16:                                               ; preds = %11
  %17 = tail call signext i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef signext 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.199, ptr noundef %0) #17
  br label %30

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %12, 1
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.201) #17
  br label %26

26:                                               ; preds = %25, %21
  %27 = tail call i64 @fread(ptr noundef %23, i64 noundef 1, i64 noundef %12, ptr noundef nonnull %2)
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !19
  %29 = tail call signext i32 @fclose(ptr noundef nonnull %2)
  br label %30

30:                                               ; preds = %26, %19, %14, %9, %4
  %31 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %14 ], [ null, %19 ], [ %23, %26 ]
  ret ptr %31
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
define internal fastcc void @ParseContent(ptr noundef %0, i32 noundef signext %1) unnamed_addr #2 {
  %3 = alloca [10000 x ptr], align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %3) #17
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %130

9:                                                ; preds = %2, %52
  %10 = phi i32 [ %56, %52 ], [ 0, %2 ]
  %11 = phi ptr [ %55, %52 ], [ %0, %2 ]
  %12 = phi i32 [ %54, %52 ], [ 0, %2 ]
  %13 = phi i32 [ %53, %52 ], [ 0, %2 ]
  %14 = load i8, ptr %11, align 1, !tbaa !19
  switch i8 %14, label %43 [
    i8 13, label %15
    i8 35, label %17
    i8 10, label %25
    i8 32, label %27
    i8 9, label %27
    i8 34, label %31
  ]

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  br label %52

17:                                               ; preds = %9
  store i8 0, ptr %11, align 1, !tbaa !19
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi ptr [ %11, %17 ], [ %24, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !19
  %21 = icmp ne i8 %20, 10
  %22 = icmp ult ptr %19, %7
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %23, label %18, label %52

25:                                               ; preds = %9
  %26 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !19
  br label %52

27:                                               ; preds = %9, %9
  %28 = icmp eq i32 %13, 0
  %29 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %28, label %30, label %52

30:                                               ; preds = %27
  store i8 0, ptr %11, align 1, !tbaa !19
  br label %52

31:                                               ; preds = %9
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !19
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = add nsw i32 %10, 1
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %36
  store ptr %32, ptr %37, align 8, !tbaa !6
  %38 = xor i32 %12, -1
  br label %39

39:                                               ; preds = %31, %34
  %40 = phi i32 [ %38, %34 ], [ 0, %31 ]
  %41 = phi i32 [ %35, %34 ], [ %10, %31 ]
  %42 = xor i32 %13, -1
  br label %52

43:                                               ; preds = %9
  %44 = icmp eq i32 %12, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = add nsw i32 %10, 1
  %47 = sext i32 %10 to i64
  %48 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %47
  store ptr %11, ptr %48, align 8, !tbaa !6
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %10, %43 ], [ %46, %45 ]
  %51 = getelementptr inbounds i8, ptr %11, i64 1
  br label %52

52:                                               ; preds = %18, %27, %30, %49, %39, %25, %15
  %53 = phi i32 [ %13, %49 ], [ %42, %39 ], [ 0, %30 ], [ 0, %25 ], [ %13, %15 ], [ -1, %27 ], [ 0, %18 ]
  %54 = phi i32 [ -1, %49 ], [ %40, %39 ], [ 0, %30 ], [ 0, %25 ], [ %12, %15 ], [ %12, %27 ], [ 0, %18 ]
  %55 = phi ptr [ %51, %49 ], [ %32, %39 ], [ %29, %30 ], [ %26, %25 ], [ %16, %15 ], [ %29, %27 ], [ %19, %18 ]
  %56 = phi i32 [ %50, %49 ], [ %41, %39 ], [ %10, %30 ], [ %10, %25 ], [ %10, %15 ], [ %10, %27 ], [ %10, %18 ]
  %57 = icmp ult ptr %55, %7
  br i1 %57, label %9, label %58

58:                                               ; preds = %52
  %59 = add nsw i32 %56, -1
  %60 = icmp sgt i32 %56, 1
  br i1 %60, label %61, label %130

61:                                               ; preds = %58, %126
  %62 = phi i64 [ %127, %126 ], [ 0, %58 ]
  %63 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = load ptr, ptr @Map, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %61, %72
  %68 = phi i64 [ %73, %72 ], [ 0, %61 ]
  %69 = phi ptr [ %75, %72 ], [ %65, %61 ]
  %70 = call signext i32 @strcasecmp(ptr noundef nonnull %69, ptr noundef readonly %64) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = add nuw nsw i64 %68, 1
  %74 = getelementptr inbounds [186 x %struct.Mapping], ptr @Map, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67

77:                                               ; preds = %72, %61
  %78 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.202, ptr noundef %64) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %79

79:                                               ; preds = %67, %77
  %80 = phi i64 [ -1, %77 ], [ %68, %67 ]
  %81 = add nuw nsw i64 %62, 1
  %82 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = call signext i32 @strcasecmp(ptr noundef nonnull @.str.203, ptr noundef %83) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.204, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %87

87:                                               ; preds = %86, %79
  %88 = shl i64 %80, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds [186 x %struct.Mapping], ptr @Map, i64 0, i64 %89
  %91 = getelementptr inbounds i8, ptr %90, i64 16
  %92 = load i32, ptr %91, align 8, !tbaa !14
  switch i32 %92, label %126 [
    i32 0, label %93
    i32 1, label %105
    i32 2, label %112
  ]

93:                                               ; preds = %87
  %94 = add nuw nsw i64 %62, 2
  %95 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %96, ptr noundef nonnull @.str.205, ptr noundef nonnull %4) #17
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.206, ptr noundef %64, ptr noundef %96) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i32, ptr %4, align 4, !tbaa !17
  %103 = getelementptr inbounds i8, ptr %90, i64 8
  %104 = load ptr, ptr %103, align 8, !tbaa !16
  store i32 %102, ptr %104, align 4, !tbaa !17
  br label %124

105:                                              ; preds = %87
  %106 = getelementptr inbounds i8, ptr %90, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !16
  %108 = add nuw nsw i64 %62, 2
  %109 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) %110, i64 noundef 200) #17
  br label %124

112:                                              ; preds = %87
  %113 = add nuw nsw i64 %62, 2
  %114 = getelementptr inbounds [10000 x ptr], ptr %3, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %115, ptr noundef nonnull @.str.208, ptr noundef nonnull %5) #17
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.206, ptr noundef %64, ptr noundef %115) #17
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #17
  br label %120

120:                                              ; preds = %118, %112
  %121 = load double, ptr %5, align 8, !tbaa !18
  %122 = getelementptr inbounds i8, ptr %90, i64 8
  %123 = load ptr, ptr %122, align 8, !tbaa !16
  store double %121, ptr %123, align 8, !tbaa !18
  br label %124

124:                                              ; preds = %120, %105, %101
  %125 = call i32 @putchar(i32 46)
  br label %126

126:                                              ; preds = %124, %87
  %127 = add nuw nsw i64 %62, 3
  %128 = trunc nuw i64 %127 to i32
  %129 = icmp sgt i32 %59, %128
  br i1 %129, label %61, label %130

130:                                              ; preds = %126, %2, %58
  %131 = load ptr, ptr @input, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4328) %131, ptr noundef nonnull align 8 dereferenceable(4328) @configinput, i64 4328, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare dso_local ptr @fopen64(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local signext i32 @CeilLog2(i32 noundef signext %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %2, %1 ]
  %7 = lshr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %6, 2
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @PatchInputNoFrames() local_unnamed_addr #10 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !29
  %4 = add nsw i32 %3, -1
  %5 = getelementptr inbounds i8, ptr %1, i64 3584
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = add nsw i32 %6, 1
  %8 = mul nsw i32 %7, %4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 8, !tbaa !29
  %10 = getelementptr inbounds i8, ptr %1, i64 3588
  %11 = load i32, ptr %10, align 4, !tbaa !84
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = add nsw i32 %11, -1
  %15 = mul nsw i32 %14, %7
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %10, align 4, !tbaa !84
  br label %17

17:                                               ; preds = %13, %0
  store i32 %9, ptr @FirstFrameIn2ndIGOP, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dso_local signext i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare dso_local signext i32 @open64(ptr noundef, i32 noundef signext, ...) local_unnamed_addr #5

declare dso_local signext i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #14

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nofree norecurse nosync nounwind memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }

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
!10 = !{!11, !7, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !13, i64 48}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{!11, !13, i64 24}
!16 = !{!11, !7, i64 8}
!17 = !{!12, !12, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !12, i64 3968}
!21 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!22 = !{!11, !12, i64 32}
!23 = !{!11, !13, i64 40}
!24 = !{!11, !13, i64 48}
!25 = !{!21, !13, i64 3056}
!26 = !{!21, !12, i64 1940}
!27 = !{!21, !12, i64 1244}
!28 = !{!21, !12, i64 52}
!29 = !{!21, !12, i64 8}
!30 = !{!21, !12, i64 36}
!31 = !{!21, !12, i64 56}
!32 = !{!21, !12, i64 20}
!33 = !{!21, !12, i64 1256}
!34 = !{!21, !12, i64 3552}
!35 = !{!21, !12, i64 3556}
!36 = !{!21, !12, i64 1260}
!37 = !{!21, !12, i64 3560}
!38 = !{!21, !12, i64 2984}
!39 = !{!21, !12, i64 68}
!40 = !{!41, !12, i64 90576}
!41 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !42, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !43, i64 90584, !12, i64 90588, !12, i64 90592}
!42 = !{!"float", !8, i64 0}
!43 = !{!"short", !8, i64 0}
!44 = !{!21, !12, i64 72}
!45 = !{!41, !12, i64 90580}
!46 = !{!21, !12, i64 212}
!47 = !{!21, !12, i64 216}
!48 = !{!21, !12, i64 3824}
!49 = !{!21, !12, i64 3828}
!50 = !{!21, !7, i64 3856}
!51 = !{!21, !7, i64 3832}
!52 = !{!21, !7, i64 3840}
!53 = !{!21, !7, i64 3848}
!54 = !{!21, !12, i64 2976}
!55 = !{!21, !12, i64 1944}
!56 = !{!21, !12, i64 2980}
!57 = !{!21, !12, i64 3136}
!58 = !{!21, !12, i64 0}
!59 = !{!21, !12, i64 24}
!60 = !{!21, !12, i64 3964}
!61 = !{!21, !12, i64 3584}
!62 = !{!21, !12, i64 2988}
!63 = !{!21, !12, i64 3612}
!64 = !{!21, !12, i64 1904}
!65 = !{!21, !12, i64 1908}
!66 = !{!21, !12, i64 3908}
!67 = !{!21, !12, i64 3920}
!68 = !{!21, !12, i64 1236}
!69 = !{!21, !12, i64 1228}
!70 = !{!21, !12, i64 3880}
!71 = !{!21, !12, i64 3892}
!72 = !{!21, !12, i64 1280}
!73 = !{!21, !12, i64 3928}
!74 = !{!21, !12, i64 76}
!75 = !{!21, !12, i64 4000}
!76 = !{!21, !12, i64 1264}
!77 = !{!21, !12, i64 32}
!78 = !{!21, !12, i64 1272}
!79 = !{!21, !12, i64 1232}
!80 = !{!21, !12, i64 2992}
!81 = !{!21, !12, i64 3876}
!82 = !{!21, !12, i64 4}
!83 = !{!21, !12, i64 3900}
!84 = !{!21, !12, i64 3588}
