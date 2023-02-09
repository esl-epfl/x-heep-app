; ModuleID = '/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls/ultrasound_accelerator/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_int<16>, 0>" = type { %"struct.ap_int<16>" }
%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_inference_ir(%"class.hls::stream<ap_int<16>, 0>"* noalias nocapture nonnull dereferenceable(2) %input, %"class.hls::stream<ap_int<16>, 0>"* noalias nocapture nonnull dereferenceable(2) %output, [128 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %conv_weights, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %conv_biases, i32 %pool_size, i32 %pool_stride, [16 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %linear_weights, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %linear_biases) local_unnamed_addr #1 {
entry:
  %input_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %input_copy, i32 0) ]
  %output_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %output_copy, i32 0) ]
  %malloccall_0 = call i8* @malloc(i64 512)
  %malloccall_1 = call i8* @malloc(i64 512)
  %malloccall_2 = call i8* @malloc(i64 512)
  %malloccall_3 = call i8* @malloc(i64 512)
  %malloccall_4 = call i8* @malloc(i64 512)
  %malloccall_5 = call i8* @malloc(i64 512)
  %malloccall_6 = call i8* @malloc(i64 512)
  %malloccall_7 = call i8* @malloc(i64 512)
  %malloccall_8 = call i8* @malloc(i64 512)
  %malloccall_9 = call i8* @malloc(i64 512)
  %malloccall_10 = call i8* @malloc(i64 512)
  %malloccall_11 = call i8* @malloc(i64 512)
  %malloccall_12 = call i8* @malloc(i64 512)
  %malloccall_13 = call i8* @malloc(i64 512)
  %malloccall_14 = call i8* @malloc(i64 512)
  %malloccall_15 = call i8* @malloc(i64 512)
  %conv_weights_copy_0 = bitcast i8* %malloccall_0 to [128 x i32]*
  %conv_weights_copy_1 = bitcast i8* %malloccall_1 to [128 x i32]*
  %conv_weights_copy_2 = bitcast i8* %malloccall_2 to [128 x i32]*
  %conv_weights_copy_3 = bitcast i8* %malloccall_3 to [128 x i32]*
  %conv_weights_copy_4 = bitcast i8* %malloccall_4 to [128 x i32]*
  %conv_weights_copy_5 = bitcast i8* %malloccall_5 to [128 x i32]*
  %conv_weights_copy_6 = bitcast i8* %malloccall_6 to [128 x i32]*
  %conv_weights_copy_7 = bitcast i8* %malloccall_7 to [128 x i32]*
  %conv_weights_copy_8 = bitcast i8* %malloccall_8 to [128 x i32]*
  %conv_weights_copy_9 = bitcast i8* %malloccall_9 to [128 x i32]*
  %conv_weights_copy_10 = bitcast i8* %malloccall_10 to [128 x i32]*
  %conv_weights_copy_11 = bitcast i8* %malloccall_11 to [128 x i32]*
  %conv_weights_copy_12 = bitcast i8* %malloccall_12 to [128 x i32]*
  %conv_weights_copy_13 = bitcast i8* %malloccall_13 to [128 x i32]*
  %conv_weights_copy_14 = bitcast i8* %malloccall_14 to [128 x i32]*
  %conv_weights_copy_15 = bitcast i8* %malloccall_15 to [128 x i32]*
  %conv_biases_copy_0 = alloca i32, align 512
  %conv_biases_copy_1 = alloca i32, align 512
  %conv_biases_copy_2 = alloca i32, align 512
  %conv_biases_copy_3 = alloca i32, align 512
  %conv_biases_copy_4 = alloca i32, align 512
  %conv_biases_copy_5 = alloca i32, align 512
  %conv_biases_copy_6 = alloca i32, align 512
  %conv_biases_copy_7 = alloca i32, align 512
  %conv_biases_copy_8 = alloca i32, align 512
  %conv_biases_copy_9 = alloca i32, align 512
  %conv_biases_copy_10 = alloca i32, align 512
  %conv_biases_copy_11 = alloca i32, align 512
  %conv_biases_copy_12 = alloca i32, align 512
  %conv_biases_copy_13 = alloca i32, align 512
  %conv_biases_copy_14 = alloca i32, align 512
  %conv_biases_copy_15 = alloca i32, align 512
  %linear_weights_copy_0 = alloca [16 x i32], align 512
  %linear_weights_copy_1 = alloca [16 x i32], align 512
  %linear_weights_copy_2 = alloca [16 x i32], align 512
  %linear_weights_copy_3 = alloca [16 x i32], align 512
  %linear_weights_copy_4 = alloca [16 x i32], align 512
  %linear_weights_copy_5 = alloca [16 x i32], align 512
  %linear_weights_copy_6 = alloca [16 x i32], align 512
  %linear_weights_copy_7 = alloca [16 x i32], align 512
  %linear_weights_copy_8 = alloca [16 x i32], align 512
  %linear_weights_copy_9 = alloca [16 x i32], align 512
  %linear_weights_copy_10 = alloca [16 x i32], align 512
  %linear_weights_copy_11 = alloca [16 x i32], align 512
  %linear_weights_copy_12 = alloca [16 x i32], align 512
  %linear_weights_copy_13 = alloca [16 x i32], align 512
  %linear_weights_copy_14 = alloca [16 x i32], align 512
  %linear_weights_copy_15 = alloca [16 x i32], align 512
  %linear_biases_copy_0 = alloca i32, align 512
  %linear_biases_copy_1 = alloca i32, align 512
  %linear_biases_copy_2 = alloca i32, align 512
  %linear_biases_copy_3 = alloca i32, align 512
  %linear_biases_copy_4 = alloca i32, align 512
  %linear_biases_copy_5 = alloca i32, align 512
  %linear_biases_copy_6 = alloca i32, align 512
  %linear_biases_copy_7 = alloca i32, align 512
  %linear_biases_copy_8 = alloca i32, align 512
  %linear_biases_copy_9 = alloca i32, align 512
  %linear_biases_copy_10 = alloca i32, align 512
  %linear_biases_copy_11 = alloca i32, align 512
  %linear_biases_copy_12 = alloca i32, align 512
  %linear_biases_copy_13 = alloca i32, align 512
  %linear_biases_copy_14 = alloca i32, align 512
  %linear_biases_copy_15 = alloca i32, align 512
  %0 = bitcast [128 x i32]* %conv_weights to [16 x [128 x i32]]*
  %1 = bitcast i32* %conv_biases to [16 x i32]*
  %2 = bitcast [16 x i32]* %linear_weights to [16 x [16 x i32]]*
  %3 = bitcast i32* %linear_biases to [16 x i32]*
  call void @copy_in(%"class.hls::stream<ap_int<16>, 0>"* nonnull %input, i16* nonnull align 512 %input_copy, %"class.hls::stream<ap_int<16>, 0>"* nonnull %output, i16* nonnull align 512 %output_copy, [16 x [128 x i32]]* nonnull %0, [128 x i32]* %conv_weights_copy_0, [128 x i32]* %conv_weights_copy_1, [128 x i32]* %conv_weights_copy_2, [128 x i32]* %conv_weights_copy_3, [128 x i32]* %conv_weights_copy_4, [128 x i32]* %conv_weights_copy_5, [128 x i32]* %conv_weights_copy_6, [128 x i32]* %conv_weights_copy_7, [128 x i32]* %conv_weights_copy_8, [128 x i32]* %conv_weights_copy_9, [128 x i32]* %conv_weights_copy_10, [128 x i32]* %conv_weights_copy_11, [128 x i32]* %conv_weights_copy_12, [128 x i32]* %conv_weights_copy_13, [128 x i32]* %conv_weights_copy_14, [128 x i32]* %conv_weights_copy_15, [16 x i32]* nonnull %1, i32* nonnull align 512 %conv_biases_copy_0, i32* nonnull align 512 %conv_biases_copy_1, i32* nonnull align 512 %conv_biases_copy_2, i32* nonnull align 512 %conv_biases_copy_3, i32* nonnull align 512 %conv_biases_copy_4, i32* nonnull align 512 %conv_biases_copy_5, i32* nonnull align 512 %conv_biases_copy_6, i32* nonnull align 512 %conv_biases_copy_7, i32* nonnull align 512 %conv_biases_copy_8, i32* nonnull align 512 %conv_biases_copy_9, i32* nonnull align 512 %conv_biases_copy_10, i32* nonnull align 512 %conv_biases_copy_11, i32* nonnull align 512 %conv_biases_copy_12, i32* nonnull align 512 %conv_biases_copy_13, i32* nonnull align 512 %conv_biases_copy_14, i32* nonnull align 512 %conv_biases_copy_15, [16 x [16 x i32]]* nonnull %2, [16 x i32]* nonnull align 512 %linear_weights_copy_0, [16 x i32]* nonnull align 512 %linear_weights_copy_1, [16 x i32]* nonnull align 512 %linear_weights_copy_2, [16 x i32]* nonnull align 512 %linear_weights_copy_3, [16 x i32]* nonnull align 512 %linear_weights_copy_4, [16 x i32]* nonnull align 512 %linear_weights_copy_5, [16 x i32]* nonnull align 512 %linear_weights_copy_6, [16 x i32]* nonnull align 512 %linear_weights_copy_7, [16 x i32]* nonnull align 512 %linear_weights_copy_8, [16 x i32]* nonnull align 512 %linear_weights_copy_9, [16 x i32]* nonnull align 512 %linear_weights_copy_10, [16 x i32]* nonnull align 512 %linear_weights_copy_11, [16 x i32]* nonnull align 512 %linear_weights_copy_12, [16 x i32]* nonnull align 512 %linear_weights_copy_13, [16 x i32]* nonnull align 512 %linear_weights_copy_14, [16 x i32]* nonnull align 512 %linear_weights_copy_15, [16 x i32]* nonnull %3, i32* nonnull align 512 %linear_biases_copy_0, i32* nonnull align 512 %linear_biases_copy_1, i32* nonnull align 512 %linear_biases_copy_2, i32* nonnull align 512 %linear_biases_copy_3, i32* nonnull align 512 %linear_biases_copy_4, i32* nonnull align 512 %linear_biases_copy_5, i32* nonnull align 512 %linear_biases_copy_6, i32* nonnull align 512 %linear_biases_copy_7, i32* nonnull align 512 %linear_biases_copy_8, i32* nonnull align 512 %linear_biases_copy_9, i32* nonnull align 512 %linear_biases_copy_10, i32* nonnull align 512 %linear_biases_copy_11, i32* nonnull align 512 %linear_biases_copy_12, i32* nonnull align 512 %linear_biases_copy_13, i32* nonnull align 512 %linear_biases_copy_14, i32* nonnull align 512 %linear_biases_copy_15)
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([128 x i32]* %conv_weights_copy_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([16 x i32]* %linear_weights_copy_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !4696
  call void @apatb_inference_hw(i16* %input_copy, i16* %output_copy, [128 x i32]* %conv_weights_copy_0, [128 x i32]* %conv_weights_copy_1, [128 x i32]* %conv_weights_copy_2, [128 x i32]* %conv_weights_copy_3, [128 x i32]* %conv_weights_copy_4, [128 x i32]* %conv_weights_copy_5, [128 x i32]* %conv_weights_copy_6, [128 x i32]* %conv_weights_copy_7, [128 x i32]* %conv_weights_copy_8, [128 x i32]* %conv_weights_copy_9, [128 x i32]* %conv_weights_copy_10, [128 x i32]* %conv_weights_copy_11, [128 x i32]* %conv_weights_copy_12, [128 x i32]* %conv_weights_copy_13, [128 x i32]* %conv_weights_copy_14, [128 x i32]* %conv_weights_copy_15, i32* %conv_biases_copy_0, i32* %conv_biases_copy_1, i32* %conv_biases_copy_2, i32* %conv_biases_copy_3, i32* %conv_biases_copy_4, i32* %conv_biases_copy_5, i32* %conv_biases_copy_6, i32* %conv_biases_copy_7, i32* %conv_biases_copy_8, i32* %conv_biases_copy_9, i32* %conv_biases_copy_10, i32* %conv_biases_copy_11, i32* %conv_biases_copy_12, i32* %conv_biases_copy_13, i32* %conv_biases_copy_14, i32* %conv_biases_copy_15, i32 %pool_size, i32 %pool_stride, [16 x i32]* %linear_weights_copy_0, [16 x i32]* %linear_weights_copy_1, [16 x i32]* %linear_weights_copy_2, [16 x i32]* %linear_weights_copy_3, [16 x i32]* %linear_weights_copy_4, [16 x i32]* %linear_weights_copy_5, [16 x i32]* %linear_weights_copy_6, [16 x i32]* %linear_weights_copy_7, [16 x i32]* %linear_weights_copy_8, [16 x i32]* %linear_weights_copy_9, [16 x i32]* %linear_weights_copy_10, [16 x i32]* %linear_weights_copy_11, [16 x i32]* %linear_weights_copy_12, [16 x i32]* %linear_weights_copy_13, [16 x i32]* %linear_weights_copy_14, [16 x i32]* %linear_weights_copy_15, i32* %linear_biases_copy_0, i32* %linear_biases_copy_1, i32* %linear_biases_copy_2, i32* %linear_biases_copy_3, i32* %linear_biases_copy_4, i32* %linear_biases_copy_5, i32* %linear_biases_copy_6, i32* %linear_biases_copy_7, i32* %linear_biases_copy_8, i32* %linear_biases_copy_9, i32* %linear_biases_copy_10, i32* %linear_biases_copy_11, i32* %linear_biases_copy_12, i32* %linear_biases_copy_13, i32* %linear_biases_copy_14, i32* %linear_biases_copy_15)
  call void @copy_back(%"class.hls::stream<ap_int<16>, 0>"* %input, i16* %input_copy, %"class.hls::stream<ap_int<16>, 0>"* %output, i16* %output_copy, [16 x [128 x i32]]* %0, [128 x i32]* %conv_weights_copy_0, [128 x i32]* %conv_weights_copy_1, [128 x i32]* %conv_weights_copy_2, [128 x i32]* %conv_weights_copy_3, [128 x i32]* %conv_weights_copy_4, [128 x i32]* %conv_weights_copy_5, [128 x i32]* %conv_weights_copy_6, [128 x i32]* %conv_weights_copy_7, [128 x i32]* %conv_weights_copy_8, [128 x i32]* %conv_weights_copy_9, [128 x i32]* %conv_weights_copy_10, [128 x i32]* %conv_weights_copy_11, [128 x i32]* %conv_weights_copy_12, [128 x i32]* %conv_weights_copy_13, [128 x i32]* %conv_weights_copy_14, [128 x i32]* %conv_weights_copy_15, [16 x i32]* %1, i32* %conv_biases_copy_0, i32* %conv_biases_copy_1, i32* %conv_biases_copy_2, i32* %conv_biases_copy_3, i32* %conv_biases_copy_4, i32* %conv_biases_copy_5, i32* %conv_biases_copy_6, i32* %conv_biases_copy_7, i32* %conv_biases_copy_8, i32* %conv_biases_copy_9, i32* %conv_biases_copy_10, i32* %conv_biases_copy_11, i32* %conv_biases_copy_12, i32* %conv_biases_copy_13, i32* %conv_biases_copy_14, i32* %conv_biases_copy_15, [16 x [16 x i32]]* %2, [16 x i32]* %linear_weights_copy_0, [16 x i32]* %linear_weights_copy_1, [16 x i32]* %linear_weights_copy_2, [16 x i32]* %linear_weights_copy_3, [16 x i32]* %linear_weights_copy_4, [16 x i32]* %linear_weights_copy_5, [16 x i32]* %linear_weights_copy_6, [16 x i32]* %linear_weights_copy_7, [16 x i32]* %linear_weights_copy_8, [16 x i32]* %linear_weights_copy_9, [16 x i32]* %linear_weights_copy_10, [16 x i32]* %linear_weights_copy_11, [16 x i32]* %linear_weights_copy_12, [16 x i32]* %linear_weights_copy_13, [16 x i32]* %linear_weights_copy_14, [16 x i32]* %linear_weights_copy_15, [16 x i32]* %3, i32* %linear_biases_copy_0, i32* %linear_biases_copy_1, i32* %linear_biases_copy_2, i32* %linear_biases_copy_3, i32* %linear_biases_copy_4, i32* %linear_biases_copy_5, i32* %linear_biases_copy_6, i32* %linear_biases_copy_7, i32* %linear_biases_copy_8, i32* %linear_biases_copy_9, i32* %linear_biases_copy_10, i32* %linear_biases_copy_11, i32* %linear_biases_copy_12, i32* %linear_biases_copy_13, i32* %linear_biases_copy_14, i32* %linear_biases_copy_15)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  call void @free(i8* %malloccall_8)
  call void @free(i8* %malloccall_9)
  call void @free(i8* %malloccall_10)
  call void @free(i8* %malloccall_11)
  call void @free(i8* %malloccall_12)
  call void @free(i8* %malloccall_13)
  call void @free(i8* %malloccall_14)
  call void @free(i8* %malloccall_15)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16a128i32.3.4([128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [16 x [128 x i32]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [128 x i32]* %_0, null
  %2 = icmp eq [16 x [128 x i32]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i4
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %dst.addr57_0 = getelementptr [128 x i32], [128 x i32]* %_0, i64 0, i64 %for.loop.idx39
  %dst.addr57_1 = getelementptr [128 x i32], [128 x i32]* %_1, i64 0, i64 %for.loop.idx39
  %dst.addr57_2 = getelementptr [128 x i32], [128 x i32]* %_2, i64 0, i64 %for.loop.idx39
  %dst.addr57_3 = getelementptr [128 x i32], [128 x i32]* %_3, i64 0, i64 %for.loop.idx39
  %dst.addr57_4 = getelementptr [128 x i32], [128 x i32]* %_4, i64 0, i64 %for.loop.idx39
  %dst.addr57_5 = getelementptr [128 x i32], [128 x i32]* %_5, i64 0, i64 %for.loop.idx39
  %dst.addr57_6 = getelementptr [128 x i32], [128 x i32]* %_6, i64 0, i64 %for.loop.idx39
  %dst.addr57_7 = getelementptr [128 x i32], [128 x i32]* %_7, i64 0, i64 %for.loop.idx39
  %dst.addr57_8 = getelementptr [128 x i32], [128 x i32]* %_8, i64 0, i64 %for.loop.idx39
  %dst.addr57_9 = getelementptr [128 x i32], [128 x i32]* %_9, i64 0, i64 %for.loop.idx39
  %dst.addr57_10 = getelementptr [128 x i32], [128 x i32]* %_10, i64 0, i64 %for.loop.idx39
  %dst.addr57_11 = getelementptr [128 x i32], [128 x i32]* %_11, i64 0, i64 %for.loop.idx39
  %dst.addr57_12 = getelementptr [128 x i32], [128 x i32]* %_12, i64 0, i64 %for.loop.idx39
  %dst.addr57_13 = getelementptr [128 x i32], [128 x i32]* %_13, i64 0, i64 %for.loop.idx39
  %dst.addr57_14 = getelementptr [128 x i32], [128 x i32]* %_14, i64 0, i64 %for.loop.idx39
  %dst.addr57_15 = getelementptr [128 x i32], [128 x i32]* %_15, i64 0, i64 %for.loop.idx39
  %src.addr68 = getelementptr [16 x [128 x i32]], [16 x [128 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  switch i4 %4, label %dst.addr57.case.15 [
    i4 0, label %dst.addr57.case.0
    i4 1, label %dst.addr57.case.1
    i4 2, label %dst.addr57.case.2
    i4 3, label %dst.addr57.case.3
    i4 4, label %dst.addr57.case.4
    i4 5, label %dst.addr57.case.5
    i4 6, label %dst.addr57.case.6
    i4 7, label %dst.addr57.case.7
    i4 -8, label %dst.addr57.case.8
    i4 -7, label %dst.addr57.case.9
    i4 -6, label %dst.addr57.case.10
    i4 -5, label %dst.addr57.case.11
    i4 -4, label %dst.addr57.case.12
    i4 -3, label %dst.addr57.case.13
    i4 -2, label %dst.addr57.case.14
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_0, align 4
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_1, align 4
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_2, align 4
  br label %dst.addr57.exit

dst.addr57.case.3:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_3, align 4
  br label %dst.addr57.exit

dst.addr57.case.4:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_4, align 4
  br label %dst.addr57.exit

dst.addr57.case.5:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_5, align 4
  br label %dst.addr57.exit

dst.addr57.case.6:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_6, align 4
  br label %dst.addr57.exit

dst.addr57.case.7:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_7, align 4
  br label %dst.addr57.exit

dst.addr57.case.8:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_8, align 4
  br label %dst.addr57.exit

dst.addr57.case.9:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_9, align 4
  br label %dst.addr57.exit

dst.addr57.case.10:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_10, align 4
  br label %dst.addr57.exit

dst.addr57.case.11:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_11, align 4
  br label %dst.addr57.exit

dst.addr57.case.12:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_12, align 4
  br label %dst.addr57.exit

dst.addr57.case.13:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_13, align 4
  br label %dst.addr57.exit

dst.addr57.case.14:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_14, align 4
  br label %dst.addr57.exit

dst.addr57.case.15:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_15, align 4
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 128
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16i32.5.6(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [16 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [16 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i4
  switch i4 %5, label %dst.addr.case.15 [
    i4 0, label %dst.addr.case.0
    i4 1, label %dst.addr.case.1
    i4 2, label %dst.addr.case.2
    i4 3, label %dst.addr.case.3
    i4 4, label %dst.addr.case.4
    i4 5, label %dst.addr.case.5
    i4 6, label %dst.addr.case.6
    i4 7, label %dst.addr.case.7
    i4 -8, label %dst.addr.case.8
    i4 -7, label %dst.addr.case.9
    i4 -6, label %dst.addr.case.10
    i4 -5, label %dst.addr.case.11
    i4 -4, label %dst.addr.case.12
    i4 -3, label %dst.addr.case.13
    i4 -2, label %dst.addr.case.14
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %4, i32* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %4, i32* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %4, i32* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i32 %4, i32* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i32 %4, i32* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store i32 %4, i32* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %4, i32* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %4, i32* %_7, align 512
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store i32 %4, i32* %_8, align 512
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store i32 %4, i32* %_9, align 512
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store i32 %4, i32* %_10, align 512
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store i32 %4, i32* %_11, align 512
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store i32 %4, i32* %_12, align 512
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store i32 %4, i32* %_13, align 512
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store i32 %4, i32* %_14, align 512
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store i32 %4, i32* %_15, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16a16i32.7.8([16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [16 x [16 x i32]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [16 x i32]* %_0, null
  %2 = icmp eq [16 x [16 x i32]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i4
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %dst.addr57_0 = getelementptr [16 x i32], [16 x i32]* %_0, i64 0, i64 %for.loop.idx39
  %dst.addr57_1 = getelementptr [16 x i32], [16 x i32]* %_1, i64 0, i64 %for.loop.idx39
  %dst.addr57_2 = getelementptr [16 x i32], [16 x i32]* %_2, i64 0, i64 %for.loop.idx39
  %dst.addr57_3 = getelementptr [16 x i32], [16 x i32]* %_3, i64 0, i64 %for.loop.idx39
  %dst.addr57_4 = getelementptr [16 x i32], [16 x i32]* %_4, i64 0, i64 %for.loop.idx39
  %dst.addr57_5 = getelementptr [16 x i32], [16 x i32]* %_5, i64 0, i64 %for.loop.idx39
  %dst.addr57_6 = getelementptr [16 x i32], [16 x i32]* %_6, i64 0, i64 %for.loop.idx39
  %dst.addr57_7 = getelementptr [16 x i32], [16 x i32]* %_7, i64 0, i64 %for.loop.idx39
  %dst.addr57_8 = getelementptr [16 x i32], [16 x i32]* %_8, i64 0, i64 %for.loop.idx39
  %dst.addr57_9 = getelementptr [16 x i32], [16 x i32]* %_9, i64 0, i64 %for.loop.idx39
  %dst.addr57_10 = getelementptr [16 x i32], [16 x i32]* %_10, i64 0, i64 %for.loop.idx39
  %dst.addr57_11 = getelementptr [16 x i32], [16 x i32]* %_11, i64 0, i64 %for.loop.idx39
  %dst.addr57_12 = getelementptr [16 x i32], [16 x i32]* %_12, i64 0, i64 %for.loop.idx39
  %dst.addr57_13 = getelementptr [16 x i32], [16 x i32]* %_13, i64 0, i64 %for.loop.idx39
  %dst.addr57_14 = getelementptr [16 x i32], [16 x i32]* %_14, i64 0, i64 %for.loop.idx39
  %dst.addr57_15 = getelementptr [16 x i32], [16 x i32]* %_15, i64 0, i64 %for.loop.idx39
  %src.addr68 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  switch i4 %4, label %dst.addr57.case.15 [
    i4 0, label %dst.addr57.case.0
    i4 1, label %dst.addr57.case.1
    i4 2, label %dst.addr57.case.2
    i4 3, label %dst.addr57.case.3
    i4 4, label %dst.addr57.case.4
    i4 5, label %dst.addr57.case.5
    i4 6, label %dst.addr57.case.6
    i4 7, label %dst.addr57.case.7
    i4 -8, label %dst.addr57.case.8
    i4 -7, label %dst.addr57.case.9
    i4 -6, label %dst.addr57.case.10
    i4 -5, label %dst.addr57.case.11
    i4 -4, label %dst.addr57.case.12
    i4 -3, label %dst.addr57.case.13
    i4 -2, label %dst.addr57.case.14
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_0, align 4
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_1, align 4
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_2, align 4
  br label %dst.addr57.exit

dst.addr57.case.3:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_3, align 4
  br label %dst.addr57.exit

dst.addr57.case.4:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_4, align 4
  br label %dst.addr57.exit

dst.addr57.case.5:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_5, align 4
  br label %dst.addr57.exit

dst.addr57.case.6:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_6, align 4
  br label %dst.addr57.exit

dst.addr57.case.7:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_7, align 4
  br label %dst.addr57.exit

dst.addr57.case.8:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_8, align 4
  br label %dst.addr57.exit

dst.addr57.case.9:                                ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_9, align 4
  br label %dst.addr57.exit

dst.addr57.case.10:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_10, align 4
  br label %dst.addr57.exit

dst.addr57.case.11:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_11, align 4
  br label %dst.addr57.exit

dst.addr57.case.12:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_12, align 4
  br label %dst.addr57.exit

dst.addr57.case.13:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_13, align 4
  br label %dst.addr57.exit

dst.addr57.case.14:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_14, align 4
  br label %dst.addr57.exit

dst.addr57.case.15:                               ; preds = %for.loop2
  store i32 %5, i32* %dst.addr57_15, align 4
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(%"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", %"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [16 x [128 x i32]]* noalias readonly "orig.arg.no"="4", [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [16 x i32]* noalias readonly "orig.arg.no"="6", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_16, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_27, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_38, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_49, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_510, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_611, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_712, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_813, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_914, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1015, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1116, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1217, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1318, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1419, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1520, [16 x [16 x i32]]* noalias readonly "orig.arg.no"="8", [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_021, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_122, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_223, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_324, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_425, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_526, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_627, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_728, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_829, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_930, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1031, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1132, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1233, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1334, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1435, [16 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1536, [16 x i32]* noalias readonly "orig.arg.no"="10", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_037, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_138, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_239, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_340, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_441, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_542, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_643, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_744, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_845, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_946, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1047, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1148, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1249, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1350, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1451, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1552) #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>.31"(i16* align 512 %1, %"class.hls::stream<ap_int<16>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>.31"(i16* align 512 %3, %"class.hls::stream<ap_int<16>, 0>"* %2)
  call void @onebyonecpy_hls.p0a16a128i32.3.4([128 x i32]* %_0, [128 x i32]* %_1, [128 x i32]* %_2, [128 x i32]* %_3, [128 x i32]* %_4, [128 x i32]* %_5, [128 x i32]* %_6, [128 x i32]* %_7, [128 x i32]* %_8, [128 x i32]* %_9, [128 x i32]* %_10, [128 x i32]* %_11, [128 x i32]* %_12, [128 x i32]* %_13, [128 x i32]* %_14, [128 x i32]* %_15, [16 x [128 x i32]]* %4)
  call void @onebyonecpy_hls.p0a16i32.5.6(i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520, [16 x i32]* %5)
  call void @onebyonecpy_hls.p0a16a16i32.7.8([16 x i32]* align 512 %_021, [16 x i32]* align 512 %_122, [16 x i32]* align 512 %_223, [16 x i32]* align 512 %_324, [16 x i32]* align 512 %_425, [16 x i32]* align 512 %_526, [16 x i32]* align 512 %_627, [16 x i32]* align 512 %_728, [16 x i32]* align 512 %_829, [16 x i32]* align 512 %_930, [16 x i32]* align 512 %_1031, [16 x i32]* align 512 %_1132, [16 x i32]* align 512 %_1233, [16 x i32]* align 512 %_1334, [16 x i32]* align 512 %_1435, [16 x i32]* align 512 %_1536, [16 x [16 x i32]]* %6)
  call void @onebyonecpy_hls.p0a16i32.5.6(i32* align 512 %_037, i32* align 512 %_138, i32* align 512 %_239, i32* align 512 %_340, i32* align 512 %_441, i32* align 512 %_542, i32* align 512 %_643, i32* align 512 %_744, i32* align 512 %_845, i32* align 512 %_946, i32* align 512 %_1047, i32* align 512 %_1148, i32* align 512 %_1249, i32* align 512 %_1350, i32* align 512 %_1451, i32* align 512 %_1552, [16 x i32]* %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16a128i32.13.14([16 x [128 x i32]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [16 x [128 x i32]]* %0, null
  %2 = icmp eq [128 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i4
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [16 x [128 x i32]], [16 x [128 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68_0 = getelementptr [128 x i32], [128 x i32]* %_0, i64 0, i64 %for.loop.idx39
  %src.addr68_1 = getelementptr [128 x i32], [128 x i32]* %_1, i64 0, i64 %for.loop.idx39
  %src.addr68_2 = getelementptr [128 x i32], [128 x i32]* %_2, i64 0, i64 %for.loop.idx39
  %src.addr68_3 = getelementptr [128 x i32], [128 x i32]* %_3, i64 0, i64 %for.loop.idx39
  %src.addr68_4 = getelementptr [128 x i32], [128 x i32]* %_4, i64 0, i64 %for.loop.idx39
  %src.addr68_5 = getelementptr [128 x i32], [128 x i32]* %_5, i64 0, i64 %for.loop.idx39
  %src.addr68_6 = getelementptr [128 x i32], [128 x i32]* %_6, i64 0, i64 %for.loop.idx39
  %src.addr68_7 = getelementptr [128 x i32], [128 x i32]* %_7, i64 0, i64 %for.loop.idx39
  %src.addr68_8 = getelementptr [128 x i32], [128 x i32]* %_8, i64 0, i64 %for.loop.idx39
  %src.addr68_9 = getelementptr [128 x i32], [128 x i32]* %_9, i64 0, i64 %for.loop.idx39
  %src.addr68_10 = getelementptr [128 x i32], [128 x i32]* %_10, i64 0, i64 %for.loop.idx39
  %src.addr68_11 = getelementptr [128 x i32], [128 x i32]* %_11, i64 0, i64 %for.loop.idx39
  %src.addr68_12 = getelementptr [128 x i32], [128 x i32]* %_12, i64 0, i64 %for.loop.idx39
  %src.addr68_13 = getelementptr [128 x i32], [128 x i32]* %_13, i64 0, i64 %for.loop.idx39
  %src.addr68_14 = getelementptr [128 x i32], [128 x i32]* %_14, i64 0, i64 %for.loop.idx39
  %src.addr68_15 = getelementptr [128 x i32], [128 x i32]* %_15, i64 0, i64 %for.loop.idx39
  switch i4 %4, label %src.addr68.case.15 [
    i4 0, label %src.addr68.case.0
    i4 1, label %src.addr68.case.1
    i4 2, label %src.addr68.case.2
    i4 3, label %src.addr68.case.3
    i4 4, label %src.addr68.case.4
    i4 5, label %src.addr68.case.5
    i4 6, label %src.addr68.case.6
    i4 7, label %src.addr68.case.7
    i4 -8, label %src.addr68.case.8
    i4 -7, label %src.addr68.case.9
    i4 -6, label %src.addr68.case.10
    i4 -5, label %src.addr68.case.11
    i4 -4, label %src.addr68.case.12
    i4 -3, label %src.addr68.case.13
    i4 -2, label %src.addr68.case.14
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  %_01 = load i32, i32* %src.addr68_0, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  %_16 = load i32, i32* %src.addr68_1, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  %_27 = load i32, i32* %src.addr68_2, align 4
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %for.loop2
  %_38 = load i32, i32* %src.addr68_3, align 4
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %for.loop2
  %_49 = load i32, i32* %src.addr68_4, align 4
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %for.loop2
  %_510 = load i32, i32* %src.addr68_5, align 4
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %for.loop2
  %_611 = load i32, i32* %src.addr68_6, align 4
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %for.loop2
  %_712 = load i32, i32* %src.addr68_7, align 4
  br label %src.addr68.exit

src.addr68.case.8:                                ; preds = %for.loop2
  %_813 = load i32, i32* %src.addr68_8, align 4
  br label %src.addr68.exit

src.addr68.case.9:                                ; preds = %for.loop2
  %_914 = load i32, i32* %src.addr68_9, align 4
  br label %src.addr68.exit

src.addr68.case.10:                               ; preds = %for.loop2
  %_1015 = load i32, i32* %src.addr68_10, align 4
  br label %src.addr68.exit

src.addr68.case.11:                               ; preds = %for.loop2
  %_1116 = load i32, i32* %src.addr68_11, align 4
  br label %src.addr68.exit

src.addr68.case.12:                               ; preds = %for.loop2
  %_1217 = load i32, i32* %src.addr68_12, align 4
  br label %src.addr68.exit

src.addr68.case.13:                               ; preds = %for.loop2
  %_1318 = load i32, i32* %src.addr68_13, align 4
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %for.loop2
  %_1419 = load i32, i32* %src.addr68_14, align 4
  br label %src.addr68.exit

src.addr68.case.15:                               ; preds = %for.loop2
  %_1520 = load i32, i32* %src.addr68_15, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %5 = phi i32 [ %_01, %src.addr68.case.0 ], [ %_16, %src.addr68.case.1 ], [ %_27, %src.addr68.case.2 ], [ %_38, %src.addr68.case.3 ], [ %_49, %src.addr68.case.4 ], [ %_510, %src.addr68.case.5 ], [ %_611, %src.addr68.case.6 ], [ %_712, %src.addr68.case.7 ], [ %_813, %src.addr68.case.8 ], [ %_914, %src.addr68.case.9 ], [ %_1015, %src.addr68.case.10 ], [ %_1116, %src.addr68.case.11 ], [ %_1217, %src.addr68.case.12 ], [ %_1318, %src.addr68.case.13 ], [ %_1419, %src.addr68.case.14 ], [ %_1520, %src.addr68.case.15 ]
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 128
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16i32.15.16([16 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [16 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i4
  switch i4 %4, label %src.addr.case.15 [
    i4 0, label %src.addr.case.0
    i4 1, label %src.addr.case.1
    i4 2, label %src.addr.case.2
    i4 3, label %src.addr.case.3
    i4 4, label %src.addr.case.4
    i4 5, label %src.addr.case.5
    i4 6, label %src.addr.case.6
    i4 7, label %src.addr.case.7
    i4 -8, label %src.addr.case.8
    i4 -7, label %src.addr.case.9
    i4 -6, label %src.addr.case.10
    i4 -5, label %src.addr.case.11
    i4 -4, label %src.addr.case.12
    i4 -3, label %src.addr.case.13
    i4 -2, label %src.addr.case.14
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_16 = load i32, i32* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_27 = load i32, i32* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_38 = load i32, i32* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_49 = load i32, i32* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_510 = load i32, i32* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_611 = load i32, i32* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_712 = load i32, i32* %_7, align 512
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_813 = load i32, i32* %_8, align 512
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_914 = load i32, i32* %_9, align 512
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1015 = load i32, i32* %_10, align 512
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_1116 = load i32, i32* %_11, align 512
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_1217 = load i32, i32* %_12, align 512
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_1318 = load i32, i32* %_13, align 512
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_1419 = load i32, i32* %_14, align 512
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_1520 = load i32, i32* %_15, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %5 = phi i32 [ %_01, %src.addr.case.0 ], [ %_16, %src.addr.case.1 ], [ %_27, %src.addr.case.2 ], [ %_38, %src.addr.case.3 ], [ %_49, %src.addr.case.4 ], [ %_510, %src.addr.case.5 ], [ %_611, %src.addr.case.6 ], [ %_712, %src.addr.case.7 ], [ %_813, %src.addr.case.8 ], [ %_914, %src.addr.case.9 ], [ %_1015, %src.addr.case.10 ], [ %_1116, %src.addr.case.11 ], [ %_1217, %src.addr.case.12 ], [ %_1318, %src.addr.case.13 ], [ %_1419, %src.addr.case.14 ], [ %_1520, %src.addr.case.15 ]
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16a16i32.17.18([16 x [16 x i32]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [16 x [16 x i32]]* %0, null
  %2 = icmp eq [16 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i4
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68_0 = getelementptr [16 x i32], [16 x i32]* %_0, i64 0, i64 %for.loop.idx39
  %src.addr68_1 = getelementptr [16 x i32], [16 x i32]* %_1, i64 0, i64 %for.loop.idx39
  %src.addr68_2 = getelementptr [16 x i32], [16 x i32]* %_2, i64 0, i64 %for.loop.idx39
  %src.addr68_3 = getelementptr [16 x i32], [16 x i32]* %_3, i64 0, i64 %for.loop.idx39
  %src.addr68_4 = getelementptr [16 x i32], [16 x i32]* %_4, i64 0, i64 %for.loop.idx39
  %src.addr68_5 = getelementptr [16 x i32], [16 x i32]* %_5, i64 0, i64 %for.loop.idx39
  %src.addr68_6 = getelementptr [16 x i32], [16 x i32]* %_6, i64 0, i64 %for.loop.idx39
  %src.addr68_7 = getelementptr [16 x i32], [16 x i32]* %_7, i64 0, i64 %for.loop.idx39
  %src.addr68_8 = getelementptr [16 x i32], [16 x i32]* %_8, i64 0, i64 %for.loop.idx39
  %src.addr68_9 = getelementptr [16 x i32], [16 x i32]* %_9, i64 0, i64 %for.loop.idx39
  %src.addr68_10 = getelementptr [16 x i32], [16 x i32]* %_10, i64 0, i64 %for.loop.idx39
  %src.addr68_11 = getelementptr [16 x i32], [16 x i32]* %_11, i64 0, i64 %for.loop.idx39
  %src.addr68_12 = getelementptr [16 x i32], [16 x i32]* %_12, i64 0, i64 %for.loop.idx39
  %src.addr68_13 = getelementptr [16 x i32], [16 x i32]* %_13, i64 0, i64 %for.loop.idx39
  %src.addr68_14 = getelementptr [16 x i32], [16 x i32]* %_14, i64 0, i64 %for.loop.idx39
  %src.addr68_15 = getelementptr [16 x i32], [16 x i32]* %_15, i64 0, i64 %for.loop.idx39
  switch i4 %4, label %src.addr68.case.15 [
    i4 0, label %src.addr68.case.0
    i4 1, label %src.addr68.case.1
    i4 2, label %src.addr68.case.2
    i4 3, label %src.addr68.case.3
    i4 4, label %src.addr68.case.4
    i4 5, label %src.addr68.case.5
    i4 6, label %src.addr68.case.6
    i4 7, label %src.addr68.case.7
    i4 -8, label %src.addr68.case.8
    i4 -7, label %src.addr68.case.9
    i4 -6, label %src.addr68.case.10
    i4 -5, label %src.addr68.case.11
    i4 -4, label %src.addr68.case.12
    i4 -3, label %src.addr68.case.13
    i4 -2, label %src.addr68.case.14
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  %_01 = load i32, i32* %src.addr68_0, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  %_16 = load i32, i32* %src.addr68_1, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  %_27 = load i32, i32* %src.addr68_2, align 4
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %for.loop2
  %_38 = load i32, i32* %src.addr68_3, align 4
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %for.loop2
  %_49 = load i32, i32* %src.addr68_4, align 4
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %for.loop2
  %_510 = load i32, i32* %src.addr68_5, align 4
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %for.loop2
  %_611 = load i32, i32* %src.addr68_6, align 4
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %for.loop2
  %_712 = load i32, i32* %src.addr68_7, align 4
  br label %src.addr68.exit

src.addr68.case.8:                                ; preds = %for.loop2
  %_813 = load i32, i32* %src.addr68_8, align 4
  br label %src.addr68.exit

src.addr68.case.9:                                ; preds = %for.loop2
  %_914 = load i32, i32* %src.addr68_9, align 4
  br label %src.addr68.exit

src.addr68.case.10:                               ; preds = %for.loop2
  %_1015 = load i32, i32* %src.addr68_10, align 4
  br label %src.addr68.exit

src.addr68.case.11:                               ; preds = %for.loop2
  %_1116 = load i32, i32* %src.addr68_11, align 4
  br label %src.addr68.exit

src.addr68.case.12:                               ; preds = %for.loop2
  %_1217 = load i32, i32* %src.addr68_12, align 4
  br label %src.addr68.exit

src.addr68.case.13:                               ; preds = %for.loop2
  %_1318 = load i32, i32* %src.addr68_13, align 4
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %for.loop2
  %_1419 = load i32, i32* %src.addr68_14, align 4
  br label %src.addr68.exit

src.addr68.case.15:                               ; preds = %for.loop2
  %_1520 = load i32, i32* %src.addr68_15, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %5 = phi i32 [ %_01, %src.addr68.case.0 ], [ %_16, %src.addr68.case.1 ], [ %_27, %src.addr68.case.2 ], [ %_38, %src.addr68.case.3 ], [ %_49, %src.addr68.case.4 ], [ %_510, %src.addr68.case.5 ], [ %_611, %src.addr68.case.6 ], [ %_712, %src.addr68.case.7 ], [ %_813, %src.addr68.case.8 ], [ %_914, %src.addr68.case.9 ], [ %_1015, %src.addr68.case.10 ], [ %_1116, %src.addr68.case.11 ], [ %_1217, %src.addr68.case.12 ], [ %_1318, %src.addr68.case.13 ], [ %_1419, %src.addr68.case.14 ], [ %_1520, %src.addr68.case.15 ]
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(%"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", %"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [16 x [128 x i32]]* noalias "orig.arg.no"="4", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [16 x i32]* noalias "orig.arg.no"="6", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_16, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_27, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_38, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_49, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_510, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_611, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_712, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_813, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_914, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1015, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1116, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1217, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1318, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1419, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1520, [16 x [16 x i32]]* noalias "orig.arg.no"="8", [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_021, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_122, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_223, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_324, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_425, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_526, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_627, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_728, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_829, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_930, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1031, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1132, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1233, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1334, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1435, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1536, [16 x i32]* noalias "orig.arg.no"="10", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_037, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_138, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_239, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_340, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_441, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_542, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_643, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_744, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_845, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_946, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1047, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1148, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1249, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1350, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1451, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1552) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>"(%"class.hls::stream<ap_int<16>, 0>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>"(%"class.hls::stream<ap_int<16>, 0>"* %2, i16* align 512 %3)
  call void @onebyonecpy_hls.p0a16a128i32.13.14([16 x [128 x i32]]* %4, [128 x i32]* %_0, [128 x i32]* %_1, [128 x i32]* %_2, [128 x i32]* %_3, [128 x i32]* %_4, [128 x i32]* %_5, [128 x i32]* %_6, [128 x i32]* %_7, [128 x i32]* %_8, [128 x i32]* %_9, [128 x i32]* %_10, [128 x i32]* %_11, [128 x i32]* %_12, [128 x i32]* %_13, [128 x i32]* %_14, [128 x i32]* %_15)
  call void @onebyonecpy_hls.p0a16i32.15.16([16 x i32]* %5, i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520)
  call void @onebyonecpy_hls.p0a16a16i32.17.18([16 x [16 x i32]]* %6, [16 x i32]* align 512 %_021, [16 x i32]* align 512 %_122, [16 x i32]* align 512 %_223, [16 x i32]* align 512 %_324, [16 x i32]* align 512 %_425, [16 x i32]* align 512 %_526, [16 x i32]* align 512 %_627, [16 x i32]* align 512 %_728, [16 x i32]* align 512 %_829, [16 x i32]* align 512 %_930, [16 x i32]* align 512 %_1031, [16 x i32]* align 512 %_1132, [16 x i32]* align 512 %_1233, [16 x i32]* align 512 %_1334, [16 x i32]* align 512 %_1435, [16 x i32]* align 512 %_1536)
  call void @onebyonecpy_hls.p0a16i32.15.16([16 x i32]* %7, i32* align 512 %_037, i32* align 512 %_138, i32* align 512 %_239, i32* align 512 %_340, i32* align 512 %_441, i32* align 512 %_542, i32* align 512 %_643, i32* align 512 %_744, i32* align 512 %_845, i32* align 512 %_946, i32* align 512 %_1047, i32* align 512 %_1148, i32* align 512 %_1249, i32* align 512 %_1350, i32* align 512 %_1451, i32* align 512 %_1552)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>"(%"class.hls::stream<ap_int<16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_int<16>, 0>"* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<16>, 0>.26"(%"class.hls::stream<ap_int<16>, 0>"* nonnull %0, i16* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<16>, 0>.26"(%"class.hls::stream<ap_int<16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i16* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca i16
  %3 = alloca %"class.hls::stream<ap_int<16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %9 = call %"struct.ssdm_int<16, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_int<16>, 0>s.i16"(i16 %8)
  %oldret2 = insertvalue %"struct.ap_int_base<16, true>" undef, %"struct.ssdm_int<16, true>" %9, 0
  %oldret1 = insertvalue %"struct.ap_int<16>" undef, %"struct.ap_int_base<16, true>" %oldret2, 0
  %oldret = insertvalue %"class.hls::stream<ap_int<16>, 0>" undef, %"struct.ap_int<16>" %oldret1, 0
  store %"class.hls::stream<ap_int<16>, 0>" %oldret, %"class.hls::stream<ap_int<16>, 0>"* %3
  %10 = bitcast %"class.hls::stream<ap_int<16>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<ap_int<16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !4697

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal %"struct.ssdm_int<16, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_int<16>, 0>s.i16"(i16 %A) #7 {
  %.0 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %A, 0
  %.01 = insertvalue %"struct.ap_int_base<16, true>" undef, %"struct.ssdm_int<16, true>" %.0, 0
  %oldret = extractvalue %"struct.ap_int_base<16, true>" %.01, 0
  ret %"struct.ssdm_int<16, true>" %oldret
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>.31"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_int<16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %"class.hls::stream<ap_int<16>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<16>, 0>.34"(i16* nonnull align 512 %0, %"class.hls::stream<ap_int<16>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<16>, 0>.34"(i16* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_int<16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<ap_int<16>, 0>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_int<16>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_int<16>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_int<16>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_int<16>, 0>", %"class.hls::stream<ap_int<16>, 0>"* %2
  %9 = call i16 @"_llvm.fpga.pack.bits.i16.s_class.hls::stream<ap_int<16>, 0>s"(%"class.hls::stream<ap_int<16>, 0>" %8)
  store i16 %9, i16* %3
  %10 = bitcast i16* %3 to i8*
  %11 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !4697

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i16 @"_llvm.fpga.pack.bits.i16.s_class.hls::stream<ap_int<16>, 0>s"(%"class.hls::stream<ap_int<16>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<ap_int<16>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_int<16>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<16, true>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.0, 0
  ret i16 %A.0.0.0.0
}

declare void @apatb_inference_hw(i16*, i16*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline
define internal void @copy_back(%"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", %"class.hls::stream<ap_int<16>, 0>"* noalias "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [16 x [128 x i32]]* noalias "orig.arg.no"="4", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [16 x i32]* noalias "orig.arg.no"="6", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_16, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_27, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_38, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_49, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_510, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_611, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_712, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_813, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_914, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1015, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1116, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1217, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1318, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1419, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1520, [16 x [16 x i32]]* noalias "orig.arg.no"="8", [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_021, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_122, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_223, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_324, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_425, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_526, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_627, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_728, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_829, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_930, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1031, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1132, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1233, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1334, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1435, [16 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1536, [16 x i32]* noalias "orig.arg.no"="10", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_037, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_138, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_239, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_340, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_441, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_542, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_643, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_744, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_845, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_946, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1047, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1148, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1249, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1350, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1451, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1552) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>"(%"class.hls::stream<ap_int<16>, 0>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<16>, 0>"(%"class.hls::stream<ap_int<16>, 0>"* %2, i16* align 512 %3)
  ret void
}

define void @inference_hw_stub_wrapper(i16*, i16*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #8 {
entry:
  %68 = alloca %"class.hls::stream<ap_int<16>, 0>"
  %69 = alloca %"class.hls::stream<ap_int<16>, 0>"
  %malloccall = tail call i8* @malloc(i64 8192)
  %70 = bitcast i8* %malloccall to [16 x [128 x i32]]*
  %71 = alloca [16 x i32]
  %72 = alloca [16 x [16 x i32]]
  %73 = alloca [16 x i32]
  call void @copy_out(%"class.hls::stream<ap_int<16>, 0>"* %68, i16* %0, %"class.hls::stream<ap_int<16>, 0>"* %69, i16* %1, [16 x [128 x i32]]* %70, [128 x i32]* %2, [128 x i32]* %3, [128 x i32]* %4, [128 x i32]* %5, [128 x i32]* %6, [128 x i32]* %7, [128 x i32]* %8, [128 x i32]* %9, [128 x i32]* %10, [128 x i32]* %11, [128 x i32]* %12, [128 x i32]* %13, [128 x i32]* %14, [128 x i32]* %15, [128 x i32]* %16, [128 x i32]* %17, [16 x i32]* %71, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, [16 x [16 x i32]]* %72, [16 x i32]* %36, [16 x i32]* %37, [16 x i32]* %38, [16 x i32]* %39, [16 x i32]* %40, [16 x i32]* %41, [16 x i32]* %42, [16 x i32]* %43, [16 x i32]* %44, [16 x i32]* %45, [16 x i32]* %46, [16 x i32]* %47, [16 x i32]* %48, [16 x i32]* %49, [16 x i32]* %50, [16 x i32]* %51, [16 x i32]* %73, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67)
  %74 = bitcast [16 x [128 x i32]]* %70 to [128 x i32]*
  %75 = bitcast [16 x i32]* %71 to i32*
  %76 = bitcast [16 x [16 x i32]]* %72 to [16 x i32]*
  %77 = bitcast [16 x i32]* %73 to i32*
  call void @inference_hw_stub(%"class.hls::stream<ap_int<16>, 0>"* %68, %"class.hls::stream<ap_int<16>, 0>"* %69, [128 x i32]* %74, i32* %75, i32 %34, i32 %35, [16 x i32]* %76, i32* %77)
  call void @copy_in(%"class.hls::stream<ap_int<16>, 0>"* %68, i16* %0, %"class.hls::stream<ap_int<16>, 0>"* %69, i16* %1, [16 x [128 x i32]]* %70, [128 x i32]* %2, [128 x i32]* %3, [128 x i32]* %4, [128 x i32]* %5, [128 x i32]* %6, [128 x i32]* %7, [128 x i32]* %8, [128 x i32]* %9, [128 x i32]* %10, [128 x i32]* %11, [128 x i32]* %12, [128 x i32]* %13, [128 x i32]* %14, [128 x i32]* %15, [128 x i32]* %16, [128 x i32]* %17, [16 x i32]* %71, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, [16 x [16 x i32]]* %72, [16 x i32]* %36, [16 x i32]* %37, [16 x i32]* %38, [16 x i32]* %39, [16 x i32]* %40, [16 x i32]* %41, [16 x i32]* %42, [16 x i32]* %43, [16 x i32]* %44, [16 x i32]* %45, [16 x i32]* %46, [16 x i32]* %47, [16 x i32]* %48, [16 x i32]* %49, [16 x i32]* %50, [16 x i32]* %51, [16 x i32]* %73, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67)
  ret void
}

declare void @inference_hw_stub(%"class.hls::stream<ap_int<16>, 0>"*, %"class.hls::stream<ap_int<16>, 0>"*, [128 x i32]*, i32*, i32, i32, [16 x i32]*, i32*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="16" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 101, column: 5, scope: !6)
!6 = distinct !DISubprogram(name: "inference", linkageName: "_Z9inferenceRN3hls6streamI6ap_intILi16EELi0EEES4_PA128_KiPS5_iiPA16_S5_S8_", scope: !7, file: !7, line: 86, type: !8, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !1719, variables: !4)
!7 = !DIFile(filename: "HLS_CNN.cpp", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !1710, !1714, !42, !42, !1715, !1714}
!10 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<ap_int<16>, 0>", scope: !13, file: !12, line: 98, size: 16, flags: DIFlagTypePassByReference, elements: !14, templateParams: !1707, identifier: "_ZTSN3hls6streamI6ap_intILi16EELi0EEE")
!12 = !DIFile(filename: "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!13 = !DINamespace(name: "hls", scope: null)
!14 = !{!15, !1658, !1662, !1665, !1670, !1673, !1676, !1679, !1683, !1684, !1685, !1689, !1692, !1695, !1696, !1699, !1702, !1705, !1706}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !11, file: !12, line: 202, baseType: !16, size: 16, flags: DIFlagPublic)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<16>", file: !17, line: 64, size: 16, flags: DIFlagTypePassByValue, elements: !18, templateParams: !1657, identifier: "_ZTS6ap_intILi16EE")
!17 = !DIFile(filename: "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!18 = !{!19, !1580, !1584, !1587, !1590, !1593, !1596, !1599, !1602, !1605, !1608, !1611, !1614, !1617, !1620, !1623, !1626, !1629, !1632, !1635, !1638, !1644, !1650, !1654}
!19 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !16, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<16, true>", file: !21, line: 154, size: 16, flags: DIFlagTypePassByValue, elements: !22, templateParams: !1565, identifier: "_ZTS11ap_int_baseILi16ELb1EE")
!21 = !DIFile(filename: "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int_base.h", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!22 = !{!23, !41, !43, !45, !50, !54, !57, !62, !67, !72, !76, !81, !84, !89, !94, !99, !106, !112, !117, !121, !125, !129, !132, !137, !141, !146, !147, !151, !154, !157, !160, !163, !166, !169, !172, !175, !178, !181, !184, !187, !190, !198, !201, !204, !207, !210, !213, !216, !217, !220, !223, !226, !229, !232, !235, !238, !241, !245, !246, !247, !248, !249, !252, !253, !256, !259, !260, !263, !264, !265, !266, !267, !268, !269, !272, !273, !274, !285, !286, !289, !1459, !1460, !1461, !1465, !1468, !1471, !1474, !1475, !1476, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !20, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, true>", file: !25, line: 555, size: 16, flags: DIFlagTypePassByValue, elements: !26, templateParams: !36, identifier: "_ZTS8ssdm_intILi16ELb1EE")
!25 = !DIFile(filename: "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_common.h", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!26 = !{!27, !29, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !24, file: !25, line: 557, baseType: !28, size: 16)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 558, type: !30, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 559, type: !34, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !32, !28}
!36 = !{!37, !39}
!37 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 16)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 1)
!40 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !20, file: !21, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 16)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !20, file: !21, line: 177, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!45 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi16ELb1EE16countLeadingOnesEv", scope: !20, file: !21, line: 156, type: !46, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!46 = !DISubroutineType(types: !47)
!47 = !{!38, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!50 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 221, type: !51, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!54 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 254, type: !55, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !53, !44}
!57 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 255, type: !58, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !53, !60}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 256, type: !63, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !53, !65}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 257, type: !68, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !53, !70}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 258, type: !73, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !53, !75}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!76 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 259, type: !77, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !53, !79}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 260, type: !82, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !53, !42}
!84 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 261, type: !85, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !53, !87}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 262, type: !90, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !53, !92}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!94 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 263, type: !95, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !53, !97}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 264, type: !100, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !53, !102}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !104, line: 233, baseType: !105)
!104 = !DIFile(filename: "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_decl.h", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!105 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!106 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 265, type: !107, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !53, !109}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !104, line: 234, baseType: !111)
!111 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 270, type: !113, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !53, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !25, line: 657, baseType: !116)
!116 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!117 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 276, type: !118, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !53, !120}
!120 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!121 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 335, type: !122, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !53, !124}
!124 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!125 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 431, type: !126, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !53, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!129 = !DISubprogram(name: "ap_int_base", scope: !20, file: !21, line: 437, type: !130, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !53, !128, !66}
!132 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi16ELb1EE4readEv", scope: !20, file: !21, line: 459, type: !133, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!20, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!137 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi16ELb1EE5writeERKS0_", scope: !20, file: !21, line: 466, type: !138, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !135, !140}
!140 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !49, size: 64)
!141 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb1EEaSERVKS0_", scope: !20, file: !21, line: 478, type: !142, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !135, !144}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!146 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb1EEaSERKS0_", scope: !20, file: !21, line: 488, type: !138, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSERVKS0_", scope: !20, file: !21, line: 505, type: !148, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !53, !144}
!150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!151 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSERKS0_", scope: !20, file: !21, line: 511, type: !152, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DISubroutineType(types: !153)
!153 = !{!150, !53, !140}
!154 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEb", scope: !20, file: !21, line: 525, type: !155, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!150, !53, !40}
!157 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEc", scope: !20, file: !21, line: 526, type: !158, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!150, !53, !61}
!160 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEa", scope: !20, file: !21, line: 527, type: !161, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!150, !53, !66}
!163 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEh", scope: !20, file: !21, line: 528, type: !164, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{!150, !53, !71}
!166 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEs", scope: !20, file: !21, line: 529, type: !167, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!150, !53, !28}
!169 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEt", scope: !20, file: !21, line: 530, type: !170, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DISubroutineType(types: !171)
!171 = !{!150, !53, !80}
!172 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEi", scope: !20, file: !21, line: 531, type: !173, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!150, !53, !38}
!175 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEj", scope: !20, file: !21, line: 532, type: !176, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!150, !53, !88}
!178 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEl", scope: !20, file: !21, line: 533, type: !179, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!150, !53, !93}
!181 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEm", scope: !20, file: !21, line: 534, type: !182, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DISubroutineType(types: !183)
!183 = !{!150, !53, !98}
!184 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEx", scope: !20, file: !21, line: 535, type: !185, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DISubroutineType(types: !186)
!186 = !{!150, !53, !103}
!187 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEy", scope: !20, file: !21, line: 536, type: !188, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!150, !53, !110}
!190 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi16ELb1EEcvxEv", scope: !20, file: !21, line: 587, type: !191, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !48}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !20, file: !21, line: 174, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !195, file: !21, line: 92, baseType: !103)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !21, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !196, identifier: "_ZTS6retvalILi8ELb1EE")
!196 = !{!197, !39}
!197 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 8)
!198 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_boolEv", scope: !20, file: !21, line: 592, type: !199, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!40, !48}
!201 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_charEv", scope: !20, file: !21, line: 593, type: !202, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!61, !48}
!204 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_scharEv", scope: !20, file: !21, line: 594, type: !205, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!66, !48}
!207 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_ucharEv", scope: !20, file: !21, line: 595, type: !208, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DISubroutineType(types: !209)
!209 = !{!71, !48}
!210 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_shortEv", scope: !20, file: !21, line: 596, type: !211, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!28, !48}
!213 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_ushortEv", scope: !20, file: !21, line: 597, type: !214, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DISubroutineType(types: !215)
!215 = !{!80, !48}
!216 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6to_intEv", scope: !20, file: !21, line: 598, type: !46, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_uintEv", scope: !20, file: !21, line: 599, type: !218, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!88, !48}
!220 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_longEv", scope: !20, file: !21, line: 600, type: !221, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!93, !48}
!223 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_ulongEv", scope: !20, file: !21, line: 601, type: !224, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!98, !48}
!226 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_int64Ev", scope: !20, file: !21, line: 602, type: !227, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!103, !48}
!229 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_uint64Ev", scope: !20, file: !21, line: 603, type: !230, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!110, !48}
!232 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_halfEv", scope: !20, file: !21, line: 604, type: !233, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{!115, !48}
!235 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_floatEv", scope: !20, file: !21, line: 605, type: !236, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubroutineType(types: !237)
!237 = !{!120, !48}
!238 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_doubleEv", scope: !20, file: !21, line: 606, type: !239, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!124, !48}
!241 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi16ELb1EE6lengthEv", scope: !20, file: !21, line: 630, type: !242, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!38, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6lengthEv", scope: !20, file: !21, line: 631, type: !46, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6iszeroEv", scope: !20, file: !21, line: 634, type: !199, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7is_zeroEv", scope: !20, file: !21, line: 637, type: !199, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi16ELb1EE4signEv", scope: !20, file: !21, line: 640, type: !199, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi16ELb1EE5clearEi", scope: !20, file: !21, line: 649, type: !250, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !53, !38}
!252 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi16ELb1EE6invertEi", scope: !20, file: !21, line: 655, type: !250, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi16ELb1EE4testEi", scope: !20, file: !21, line: 664, type: !254, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!40, !48, !38}
!256 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi16ELb1EE3getEv", scope: !20, file: !21, line: 670, type: !257, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!150, !53}
!259 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb1EE3setEi", scope: !20, file: !21, line: 673, type: !250, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb1EE3setEib", scope: !20, file: !21, line: 679, type: !261, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !53, !38, !40}
!263 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi16ELb1EE7lrotateEi", scope: !20, file: !21, line: 686, type: !173, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi16ELb1EE7rrotateEi", scope: !20, file: !21, line: 701, type: !173, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi16ELb1EE7reverseEv", scope: !20, file: !21, line: 716, type: !257, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi16ELb1EE7set_bitEib", scope: !20, file: !21, line: 722, type: !261, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7get_bitEi", scope: !20, file: !21, line: 727, type: !254, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi16ELb1EE5b_notEv", scope: !20, file: !21, line: 732, type: !51, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi16ELb1EE17checkOverflowCsimEibb", scope: !20, file: !21, line: 806, type: !270, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DISubroutineType(types: !271)
!271 = !{!40, !48, !38, !40, !40}
!272 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb1EEppEv", scope: !20, file: !21, line: 911, type: !257, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb1EEmmEv", scope: !20, file: !21, line: 915, type: !257, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb1EEppEi", scope: !20, file: !21, line: 923, type: !275, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !53, !38}
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !279, file: !21, line: 213, baseType: !283)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<16, true>", scope: !20, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !280, identifier: "_ZTSN11ap_int_baseILi16ELb1EE5RTypeILi16ELb1EEE")
!280 = !{!281, !282}
!281 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 16)
!282 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 1)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !284, file: !21, line: 149, baseType: !16)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<16, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !280, identifier: "_ZTS15_ap_int_factoryILi16ELb1EE")
!285 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb1EEmmEi", scope: !20, file: !21, line: 928, type: !275, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi16ELb1EEpsEv", scope: !20, file: !21, line: 937, type: !287, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{!278, !48}
!289 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi16ELb1EEngEv", scope: !20, file: !21, line: 940, type: !290, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !48}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !293, file: !21, line: 209, baseType: !297)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !20, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi16ELb1EE5RTypeILi1ELb0EEE")
!294 = !{!295, !296}
!295 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 1)
!296 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 0)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !298, file: !21, line: 149, baseType: !301)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<17, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !299, identifier: "_ZTS15_ap_int_factoryILi17ELb1EE")
!299 = !{!300, !282}
!300 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 17)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<17>", file: !302, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !303, templateParams: !1458, identifier: "_ZTS6ap_intILi17EE")
!302 = !DIFile(filename: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files/ap_int.h", directory: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared")
!303 = !{!304, !1380, !1384, !1388, !1391, !1394, !1397, !1400, !1403, !1406, !1409, !1412, !1415, !1418, !1421, !1424, !1427, !1430, !1433, !1436, !1439, !1445, !1451, !1455}
!304 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !301, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<17, true>", file: !306, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !307, templateParams: !1365, identifier: "_ZTS11ap_int_baseILi17ELb1EE")
!306 = !DIFile(filename: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files/ap_int_base.h", directory: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared")
!307 = !{!308, !323, !324, !325, !330, !334, !337, !340, !343, !346, !349, !352, !355, !358, !361, !364, !370, !375, !379, !382, !385, !388, !391, !396, !400, !405, !406, !410, !413, !416, !419, !422, !425, !428, !431, !434, !437, !440, !443, !446, !449, !454, !457, !460, !463, !466, !469, !472, !473, !476, !479, !482, !485, !488, !491, !494, !497, !501, !502, !503, !504, !505, !508, !509, !512, !515, !516, !519, !520, !521, !522, !523, !524, !525, !528, !529, !530, !537, !538, !541, !1258, !1259, !1260, !1264, !1267, !1270, !1273, !1274, !1275, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!308 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !305, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<17, true>", file: !310, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !311, templateParams: !321, identifier: "_ZTS8ssdm_intILi17ELb1EE")
!310 = !DIFile(filename: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files/ap_common.h", directory: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared")
!311 = !{!312, !314, !318}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !309, file: !310, line: 511, baseType: !313, size: 17, align: 32)
!313 = !DIBasicType(name: "int17", size: 17, encoding: DW_ATE_signed)
!314 = !DISubprogram(name: "ssdm_int", scope: !309, file: !310, line: 512, type: !315, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!318 = !DISubprogram(name: "ssdm_int", scope: !309, file: !310, line: 513, type: !319, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !317, !313}
!321 = !{!322, !39}
!322 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 17)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !305, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 17)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !305, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!325 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi17ELb1EE16countLeadingOnesEv", scope: !305, file: !306, line: 110, type: !326, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!326 = !DISubroutineType(types: !327)
!327 = !{!38, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!330 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 175, type: !331, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 208, type: !335, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !333, !44}
!337 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 209, type: !338, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !333, !60}
!340 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 210, type: !341, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !333, !65}
!343 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 211, type: !344, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !333, !70}
!346 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 212, type: !347, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !333, !75}
!349 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 213, type: !350, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !333, !79}
!352 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 214, type: !353, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !333, !42}
!355 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 215, type: !356, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !333, !87}
!358 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 216, type: !359, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !333, !92}
!361 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 217, type: !362, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !333, !97}
!364 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 218, type: !365, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !333, !367}
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !369, line: 187, baseType: !105)
!369 = !DIFile(filename: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files/ap_decl.h", directory: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared")
!370 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 219, type: !371, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !333, !373}
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !369, line: 188, baseType: !111)
!375 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 224, type: !376, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !333, !378}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !310, line: 611, baseType: !116)
!379 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 230, type: !380, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !333, !120}
!382 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 289, type: !383, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !333, !124}
!385 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 385, type: !386, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !333, !128}
!388 = !DISubprogram(name: "ap_int_base", scope: !305, file: !306, line: 391, type: !389, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !333, !128, !66}
!391 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi17ELb1EE4readEv", scope: !305, file: !306, line: 413, type: !392, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!305, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!395 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!396 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi17ELb1EE5writeERKS0_", scope: !305, file: !306, line: 420, type: !397, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !394, !399}
!399 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !329, size: 64)
!400 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb1EEaSERVKS0_", scope: !305, file: !306, line: 432, type: !401, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !394, !403}
!403 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!405 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb1EEaSERKS0_", scope: !305, file: !306, line: 442, type: !397, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSERVKS0_", scope: !305, file: !306, line: 459, type: !407, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !333, !403}
!409 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !305, size: 64)
!410 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSERKS0_", scope: !305, file: !306, line: 465, type: !411, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!411 = !DISubroutineType(types: !412)
!412 = !{!409, !333, !399}
!413 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEb", scope: !305, file: !306, line: 479, type: !414, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!409, !333, !40}
!416 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEc", scope: !305, file: !306, line: 480, type: !417, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!417 = !DISubroutineType(types: !418)
!418 = !{!409, !333, !61}
!419 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEa", scope: !305, file: !306, line: 481, type: !420, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!409, !333, !66}
!422 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEh", scope: !305, file: !306, line: 482, type: !423, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!409, !333, !71}
!425 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEs", scope: !305, file: !306, line: 483, type: !426, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!409, !333, !28}
!428 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEt", scope: !305, file: !306, line: 484, type: !429, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!429 = !DISubroutineType(types: !430)
!430 = !{!409, !333, !80}
!431 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEi", scope: !305, file: !306, line: 485, type: !432, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DISubroutineType(types: !433)
!433 = !{!409, !333, !38}
!434 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEj", scope: !305, file: !306, line: 486, type: !435, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!409, !333, !88}
!437 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEl", scope: !305, file: !306, line: 487, type: !438, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!409, !333, !93}
!440 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEm", scope: !305, file: !306, line: 488, type: !441, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DISubroutineType(types: !442)
!442 = !{!409, !333, !98}
!443 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEx", scope: !305, file: !306, line: 489, type: !444, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DISubroutineType(types: !445)
!445 = !{!409, !333, !368}
!446 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEy", scope: !305, file: !306, line: 490, type: !447, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{!409, !333, !374}
!449 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi17ELb1EEcvxEv", scope: !305, file: !306, line: 541, type: !450, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !328}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !305, file: !306, line: 128, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !195, file: !306, line: 46, baseType: !368)
!454 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_boolEv", scope: !305, file: !306, line: 546, type: !455, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!40, !328}
!457 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_charEv", scope: !305, file: !306, line: 547, type: !458, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!61, !328}
!460 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_scharEv", scope: !305, file: !306, line: 548, type: !461, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DISubroutineType(types: !462)
!462 = !{!66, !328}
!463 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_ucharEv", scope: !305, file: !306, line: 549, type: !464, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DISubroutineType(types: !465)
!465 = !{!71, !328}
!466 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_shortEv", scope: !305, file: !306, line: 550, type: !467, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{!28, !328}
!469 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_ushortEv", scope: !305, file: !306, line: 551, type: !470, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!80, !328}
!472 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6to_intEv", scope: !305, file: !306, line: 552, type: !326, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_uintEv", scope: !305, file: !306, line: 553, type: !474, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DISubroutineType(types: !475)
!475 = !{!88, !328}
!476 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_longEv", scope: !305, file: !306, line: 554, type: !477, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!93, !328}
!479 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_ulongEv", scope: !305, file: !306, line: 555, type: !480, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubroutineType(types: !481)
!481 = !{!98, !328}
!482 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_int64Ev", scope: !305, file: !306, line: 556, type: !483, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!368, !328}
!485 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_uint64Ev", scope: !305, file: !306, line: 557, type: !486, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!374, !328}
!488 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_halfEv", scope: !305, file: !306, line: 558, type: !489, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!378, !328}
!491 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_floatEv", scope: !305, file: !306, line: 559, type: !492, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!492 = !DISubroutineType(types: !493)
!493 = !{!120, !328}
!494 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_doubleEv", scope: !305, file: !306, line: 560, type: !495, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{!124, !328}
!497 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi17ELb1EE6lengthEv", scope: !305, file: !306, line: 584, type: !498, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!38, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!501 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6lengthEv", scope: !305, file: !306, line: 585, type: !326, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6iszeroEv", scope: !305, file: !306, line: 588, type: !455, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7is_zeroEv", scope: !305, file: !306, line: 591, type: !455, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi17ELb1EE4signEv", scope: !305, file: !306, line: 594, type: !455, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi17ELb1EE5clearEi", scope: !305, file: !306, line: 603, type: !506, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !333, !38}
!508 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi17ELb1EE6invertEi", scope: !305, file: !306, line: 609, type: !506, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi17ELb1EE4testEi", scope: !305, file: !306, line: 618, type: !510, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DISubroutineType(types: !511)
!511 = !{!40, !328, !38}
!512 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi17ELb1EE3getEv", scope: !305, file: !306, line: 624, type: !513, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{!409, !333}
!515 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb1EE3setEi", scope: !305, file: !306, line: 627, type: !506, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb1EE3setEib", scope: !305, file: !306, line: 633, type: !517, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !333, !38, !40}
!519 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi17ELb1EE7lrotateEi", scope: !305, file: !306, line: 640, type: !432, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi17ELb1EE7rrotateEi", scope: !305, file: !306, line: 655, type: !432, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi17ELb1EE7reverseEv", scope: !305, file: !306, line: 670, type: !513, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi17ELb1EE7set_bitEib", scope: !305, file: !306, line: 676, type: !517, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7get_bitEi", scope: !305, file: !306, line: 681, type: !510, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi17ELb1EE5b_notEv", scope: !305, file: !306, line: 686, type: !331, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi17ELb1EE17checkOverflowCsimEibb", scope: !305, file: !306, line: 760, type: !526, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!40, !328, !38, !40, !40}
!528 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb1EEppEv", scope: !305, file: !306, line: 865, type: !513, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb1EEmmEv", scope: !305, file: !306, line: 869, type: !513, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb1EEppEi", scope: !305, file: !306, line: 877, type: !531, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !333, !38}
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !535, file: !306, line: 167, baseType: !536)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<17, true>", scope: !305, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !299, identifier: "_ZTSN11ap_int_baseILi17ELb1EE5RTypeILi17ELb1EEE")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !298, file: !306, line: 103, baseType: !301)
!537 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb1EEmmEi", scope: !305, file: !306, line: 882, type: !531, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi17ELb1EEpsEv", scope: !305, file: !306, line: 891, type: !539, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{!534, !328}
!541 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi17ELb1EEngEv", scope: !305, file: !306, line: 894, type: !542, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !328}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !545, file: !306, line: 163, baseType: !546)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !305, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi17ELb1EE5RTypeILi1ELb0EEE")
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !547, file: !306, line: 103, baseType: !550)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<18, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !548, identifier: "_ZTS15_ap_int_factoryILi18ELb1EE")
!548 = !{!549, !282}
!549 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 18)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<18>", file: !302, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !551, templateParams: !1257, identifier: "_ZTS6ap_intILi18EE")
!551 = !{!552, !1179, !1183, !1187, !1190, !1193, !1196, !1199, !1202, !1205, !1208, !1211, !1214, !1217, !1220, !1223, !1226, !1229, !1232, !1235, !1238, !1244, !1250, !1254}
!552 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !550, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, true>", file: !306, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !554, templateParams: !1177, identifier: "_ZTS11ap_int_baseILi18ELb1EE")
!554 = !{!555, !569, !570, !571, !576, !580, !583, !586, !589, !592, !595, !598, !601, !604, !607, !610, !613, !616, !619, !622, !625, !628, !631, !636, !640, !645, !646, !650, !653, !656, !659, !662, !665, !668, !671, !674, !677, !680, !683, !686, !689, !693, !696, !699, !702, !705, !708, !711, !712, !715, !718, !721, !724, !727, !730, !733, !736, !740, !741, !742, !743, !744, !747, !748, !751, !754, !755, !758, !759, !760, !761, !762, !763, !764, !767, !768, !769, !775, !776, !779, !1143, !1144, !1145, !1149, !1152, !1155, !1158, !1159, !1160, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!555 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !553, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, true>", file: !310, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !557, templateParams: !567, identifier: "_ZTS8ssdm_intILi18ELb1EE")
!557 = !{!558, !560, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !556, file: !310, line: 511, baseType: !559, size: 18, align: 32)
!559 = !DIBasicType(name: "int18", size: 18, encoding: DW_ATE_signed)
!560 = !DISubprogram(name: "ssdm_int", scope: !556, file: !310, line: 512, type: !561, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!564 = !DISubprogram(name: "ssdm_int", scope: !556, file: !310, line: 513, type: !565, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !563, !559}
!567 = !{!568, !39}
!568 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 18)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !553, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 18)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !553, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!571 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi18ELb1EE16countLeadingOnesEv", scope: !553, file: !306, line: 110, type: !572, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!38, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!576 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 175, type: !577, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!580 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 208, type: !581, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !579, !44}
!583 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 209, type: !584, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !579, !60}
!586 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 210, type: !587, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !579, !65}
!589 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 211, type: !590, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !579, !70}
!592 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 212, type: !593, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !579, !75}
!595 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 213, type: !596, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !579, !79}
!598 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 214, type: !599, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !579, !42}
!601 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 215, type: !602, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !579, !87}
!604 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 216, type: !605, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !579, !92}
!607 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 217, type: !608, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !579, !97}
!610 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 218, type: !611, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !579, !367}
!613 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 219, type: !614, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !579, !373}
!616 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 224, type: !617, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !579, !378}
!619 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 230, type: !620, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !579, !120}
!622 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 289, type: !623, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !579, !124}
!625 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 385, type: !626, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !579, !128}
!628 = !DISubprogram(name: "ap_int_base", scope: !553, file: !306, line: 391, type: !629, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !579, !128, !66}
!631 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi18ELb1EE4readEv", scope: !553, file: !306, line: 413, type: !632, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!632 = !DISubroutineType(types: !633)
!633 = !{!553, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !553)
!636 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi18ELb1EE5writeERKS0_", scope: !553, file: !306, line: 420, type: !637, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !634, !639}
!639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !575, size: 64)
!640 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb1EEaSERVKS0_", scope: !553, file: !306, line: 432, type: !641, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !634, !643}
!643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!645 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb1EEaSERKS0_", scope: !553, file: !306, line: 442, type: !637, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSERVKS0_", scope: !553, file: !306, line: 459, type: !647, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !579, !643}
!649 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !553, size: 64)
!650 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSERKS0_", scope: !553, file: !306, line: 465, type: !651, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!649, !579, !639}
!653 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEb", scope: !553, file: !306, line: 479, type: !654, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!649, !579, !40}
!656 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEc", scope: !553, file: !306, line: 480, type: !657, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!657 = !DISubroutineType(types: !658)
!658 = !{!649, !579, !61}
!659 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEa", scope: !553, file: !306, line: 481, type: !660, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!660 = !DISubroutineType(types: !661)
!661 = !{!649, !579, !66}
!662 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEh", scope: !553, file: !306, line: 482, type: !663, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!663 = !DISubroutineType(types: !664)
!664 = !{!649, !579, !71}
!665 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEs", scope: !553, file: !306, line: 483, type: !666, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!666 = !DISubroutineType(types: !667)
!667 = !{!649, !579, !28}
!668 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEt", scope: !553, file: !306, line: 484, type: !669, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!649, !579, !80}
!671 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEi", scope: !553, file: !306, line: 485, type: !672, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!672 = !DISubroutineType(types: !673)
!673 = !{!649, !579, !38}
!674 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEj", scope: !553, file: !306, line: 486, type: !675, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!675 = !DISubroutineType(types: !676)
!676 = !{!649, !579, !88}
!677 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEl", scope: !553, file: !306, line: 487, type: !678, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DISubroutineType(types: !679)
!679 = !{!649, !579, !93}
!680 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEm", scope: !553, file: !306, line: 488, type: !681, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{!649, !579, !98}
!683 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEx", scope: !553, file: !306, line: 489, type: !684, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DISubroutineType(types: !685)
!685 = !{!649, !579, !368}
!686 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEy", scope: !553, file: !306, line: 490, type: !687, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DISubroutineType(types: !688)
!688 = !{!649, !579, !374}
!689 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi18ELb1EEcvxEv", scope: !553, file: !306, line: 541, type: !690, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !574}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !553, file: !306, line: 128, baseType: !453)
!693 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_boolEv", scope: !553, file: !306, line: 546, type: !694, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DISubroutineType(types: !695)
!695 = !{!40, !574}
!696 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_charEv", scope: !553, file: !306, line: 547, type: !697, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DISubroutineType(types: !698)
!698 = !{!61, !574}
!699 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_scharEv", scope: !553, file: !306, line: 548, type: !700, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!700 = !DISubroutineType(types: !701)
!701 = !{!66, !574}
!702 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_ucharEv", scope: !553, file: !306, line: 549, type: !703, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DISubroutineType(types: !704)
!704 = !{!71, !574}
!705 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_shortEv", scope: !553, file: !306, line: 550, type: !706, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!706 = !DISubroutineType(types: !707)
!707 = !{!28, !574}
!708 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_ushortEv", scope: !553, file: !306, line: 551, type: !709, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{!80, !574}
!711 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6to_intEv", scope: !553, file: !306, line: 552, type: !572, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!712 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_uintEv", scope: !553, file: !306, line: 553, type: !713, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubroutineType(types: !714)
!714 = !{!88, !574}
!715 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_longEv", scope: !553, file: !306, line: 554, type: !716, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!716 = !DISubroutineType(types: !717)
!717 = !{!93, !574}
!718 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_ulongEv", scope: !553, file: !306, line: 555, type: !719, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!98, !574}
!721 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_int64Ev", scope: !553, file: !306, line: 556, type: !722, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DISubroutineType(types: !723)
!723 = !{!368, !574}
!724 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_uint64Ev", scope: !553, file: !306, line: 557, type: !725, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DISubroutineType(types: !726)
!726 = !{!374, !574}
!727 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_halfEv", scope: !553, file: !306, line: 558, type: !728, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!728 = !DISubroutineType(types: !729)
!729 = !{!378, !574}
!730 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_floatEv", scope: !553, file: !306, line: 559, type: !731, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!120, !574}
!733 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_doubleEv", scope: !553, file: !306, line: 560, type: !734, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!124, !574}
!736 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi18ELb1EE6lengthEv", scope: !553, file: !306, line: 584, type: !737, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!38, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!740 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6lengthEv", scope: !553, file: !306, line: 585, type: !572, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6iszeroEv", scope: !553, file: !306, line: 588, type: !694, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7is_zeroEv", scope: !553, file: !306, line: 591, type: !694, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!743 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi18ELb1EE4signEv", scope: !553, file: !306, line: 594, type: !694, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!744 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi18ELb1EE5clearEi", scope: !553, file: !306, line: 603, type: !745, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !579, !38}
!747 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi18ELb1EE6invertEi", scope: !553, file: !306, line: 609, type: !745, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!748 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi18ELb1EE4testEi", scope: !553, file: !306, line: 618, type: !749, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!40, !574, !38}
!751 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi18ELb1EE3getEv", scope: !553, file: !306, line: 624, type: !752, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!752 = !DISubroutineType(types: !753)
!753 = !{!649, !579}
!754 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb1EE3setEi", scope: !553, file: !306, line: 627, type: !745, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!755 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb1EE3setEib", scope: !553, file: !306, line: 633, type: !756, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !579, !38, !40}
!758 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi18ELb1EE7lrotateEi", scope: !553, file: !306, line: 640, type: !672, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi18ELb1EE7rrotateEi", scope: !553, file: !306, line: 655, type: !672, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi18ELb1EE7reverseEv", scope: !553, file: !306, line: 670, type: !752, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!761 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi18ELb1EE7set_bitEib", scope: !553, file: !306, line: 676, type: !756, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7get_bitEi", scope: !553, file: !306, line: 681, type: !749, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi18ELb1EE5b_notEv", scope: !553, file: !306, line: 686, type: !577, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi18ELb1EE17checkOverflowCsimEibb", scope: !553, file: !306, line: 760, type: !765, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!40, !574, !38, !40, !40}
!767 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb1EEppEv", scope: !553, file: !306, line: 865, type: !752, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb1EEmmEv", scope: !553, file: !306, line: 869, type: !752, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb1EEppEi", scope: !553, file: !306, line: 877, type: !770, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !579, !38}
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !774, file: !306, line: 167, baseType: !546)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<18, true>", scope: !553, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !548, identifier: "_ZTSN11ap_int_baseILi18ELb1EE5RTypeILi18ELb1EEE")
!775 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb1EEmmEi", scope: !553, file: !306, line: 882, type: !770, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!776 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi18ELb1EEpsEv", scope: !553, file: !306, line: 891, type: !777, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!777 = !DISubroutineType(types: !778)
!778 = !{!773, !574}
!779 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi18ELb1EEngEv", scope: !553, file: !306, line: 894, type: !780, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !574}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !783, file: !306, line: 163, baseType: !784)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !553, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi18ELb1EE5RTypeILi1ELb0EEE")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !785, file: !306, line: 103, baseType: !788)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<19, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !786, identifier: "_ZTS15_ap_int_factoryILi19ELb1EE")
!786 = !{!787, !282}
!787 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 19)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<19>", file: !302, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !789, templateParams: !1142, identifier: "_ZTS6ap_intILi19EE")
!789 = !{!790, !1064, !1068, !1072, !1075, !1078, !1081, !1084, !1087, !1090, !1093, !1096, !1099, !1102, !1105, !1108, !1111, !1114, !1117, !1120, !1123, !1129, !1135, !1139}
!790 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !788, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<19, true>", file: !306, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !792, templateParams: !1062, identifier: "_ZTS11ap_int_baseILi19ELb1EE")
!792 = !{!793, !807, !808, !809, !814, !818, !821, !824, !827, !830, !833, !836, !839, !842, !845, !848, !851, !854, !857, !860, !863, !866, !869, !874, !878, !883, !884, !888, !891, !894, !897, !900, !903, !906, !909, !912, !915, !918, !921, !924, !927, !931, !934, !937, !940, !943, !946, !949, !950, !953, !956, !959, !962, !965, !968, !971, !974, !978, !979, !980, !981, !982, !985, !986, !989, !992, !993, !996, !997, !998, !999, !1000, !1001, !1002, !1005, !1006, !1007, !1013, !1014, !1017, !1027, !1028, !1029, !1033, !1036, !1039, !1042, !1043, !1044, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!793 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !791, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<19, true>", file: !310, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !795, templateParams: !805, identifier: "_ZTS8ssdm_intILi19ELb1EE")
!795 = !{!796, !798, !802}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !794, file: !310, line: 511, baseType: !797, size: 19, align: 32)
!797 = !DIBasicType(name: "int19", size: 19, encoding: DW_ATE_signed)
!798 = !DISubprogram(name: "ssdm_int", scope: !794, file: !310, line: 512, type: !799, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!802 = !DISubprogram(name: "ssdm_int", scope: !794, file: !310, line: 513, type: !803, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !801, !797}
!805 = !{!806, !39}
!806 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 19)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !791, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 19)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !791, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!809 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi19ELb1EE16countLeadingOnesEv", scope: !791, file: !306, line: 110, type: !810, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!810 = !DISubroutineType(types: !811)
!811 = !{!38, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!814 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 175, type: !815, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!818 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 208, type: !819, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !817, !44}
!821 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 209, type: !822, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !817, !60}
!824 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 210, type: !825, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !817, !65}
!827 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 211, type: !828, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !817, !70}
!830 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 212, type: !831, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !817, !75}
!833 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 213, type: !834, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !817, !79}
!836 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 214, type: !837, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !817, !42}
!839 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 215, type: !840, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !817, !87}
!842 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 216, type: !843, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !817, !92}
!845 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 217, type: !846, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !817, !97}
!848 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 218, type: !849, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !817, !367}
!851 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 219, type: !852, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !817, !373}
!854 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 224, type: !855, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !817, !378}
!857 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 230, type: !858, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !817, !120}
!860 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 289, type: !861, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !817, !124}
!863 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 385, type: !864, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !817, !128}
!866 = !DISubprogram(name: "ap_int_base", scope: !791, file: !306, line: 391, type: !867, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !817, !128, !66}
!869 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi19ELb1EE4readEv", scope: !791, file: !306, line: 413, type: !870, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!870 = !DISubroutineType(types: !871)
!871 = !{!791, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!873 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !791)
!874 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi19ELb1EE5writeERKS0_", scope: !791, file: !306, line: 420, type: !875, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !872, !877}
!877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !813, size: 64)
!878 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi19ELb1EEaSERVKS0_", scope: !791, file: !306, line: 432, type: !879, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !872, !881}
!881 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!883 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi19ELb1EEaSERKS0_", scope: !791, file: !306, line: 442, type: !875, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSERVKS0_", scope: !791, file: !306, line: 459, type: !885, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DISubroutineType(types: !886)
!886 = !{!887, !817, !881}
!887 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !791, size: 64)
!888 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSERKS0_", scope: !791, file: !306, line: 465, type: !889, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!889 = !DISubroutineType(types: !890)
!890 = !{!887, !817, !877}
!891 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEb", scope: !791, file: !306, line: 479, type: !892, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DISubroutineType(types: !893)
!893 = !{!887, !817, !40}
!894 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEc", scope: !791, file: !306, line: 480, type: !895, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!895 = !DISubroutineType(types: !896)
!896 = !{!887, !817, !61}
!897 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEa", scope: !791, file: !306, line: 481, type: !898, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DISubroutineType(types: !899)
!899 = !{!887, !817, !66}
!900 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEh", scope: !791, file: !306, line: 482, type: !901, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{!887, !817, !71}
!903 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEs", scope: !791, file: !306, line: 483, type: !904, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!887, !817, !28}
!906 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEt", scope: !791, file: !306, line: 484, type: !907, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!907 = !DISubroutineType(types: !908)
!908 = !{!887, !817, !80}
!909 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEi", scope: !791, file: !306, line: 485, type: !910, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DISubroutineType(types: !911)
!911 = !{!887, !817, !38}
!912 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEj", scope: !791, file: !306, line: 486, type: !913, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!887, !817, !88}
!915 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEl", scope: !791, file: !306, line: 487, type: !916, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!916 = !DISubroutineType(types: !917)
!917 = !{!887, !817, !93}
!918 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEm", scope: !791, file: !306, line: 488, type: !919, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!919 = !DISubroutineType(types: !920)
!920 = !{!887, !817, !98}
!921 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEx", scope: !791, file: !306, line: 489, type: !922, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DISubroutineType(types: !923)
!923 = !{!887, !817, !368}
!924 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEy", scope: !791, file: !306, line: 490, type: !925, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!925 = !DISubroutineType(types: !926)
!926 = !{!887, !817, !374}
!927 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi19ELb1EEcvxEv", scope: !791, file: !306, line: 541, type: !928, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DISubroutineType(types: !929)
!929 = !{!930, !812}
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !791, file: !306, line: 128, baseType: !453)
!931 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_boolEv", scope: !791, file: !306, line: 546, type: !932, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DISubroutineType(types: !933)
!933 = !{!40, !812}
!934 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_charEv", scope: !791, file: !306, line: 547, type: !935, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DISubroutineType(types: !936)
!936 = !{!61, !812}
!937 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_scharEv", scope: !791, file: !306, line: 548, type: !938, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!938 = !DISubroutineType(types: !939)
!939 = !{!66, !812}
!940 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_ucharEv", scope: !791, file: !306, line: 549, type: !941, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!71, !812}
!943 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_shortEv", scope: !791, file: !306, line: 550, type: !944, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DISubroutineType(types: !945)
!945 = !{!28, !812}
!946 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_ushortEv", scope: !791, file: !306, line: 551, type: !947, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DISubroutineType(types: !948)
!948 = !{!80, !812}
!949 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6to_intEv", scope: !791, file: !306, line: 552, type: !810, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!950 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_uintEv", scope: !791, file: !306, line: 553, type: !951, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{!88, !812}
!953 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_longEv", scope: !791, file: !306, line: 554, type: !954, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!954 = !DISubroutineType(types: !955)
!955 = !{!93, !812}
!956 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_ulongEv", scope: !791, file: !306, line: 555, type: !957, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DISubroutineType(types: !958)
!958 = !{!98, !812}
!959 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_int64Ev", scope: !791, file: !306, line: 556, type: !960, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!960 = !DISubroutineType(types: !961)
!961 = !{!368, !812}
!962 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_uint64Ev", scope: !791, file: !306, line: 557, type: !963, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DISubroutineType(types: !964)
!964 = !{!374, !812}
!965 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_halfEv", scope: !791, file: !306, line: 558, type: !966, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!966 = !DISubroutineType(types: !967)
!967 = !{!378, !812}
!968 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_floatEv", scope: !791, file: !306, line: 559, type: !969, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!120, !812}
!971 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_doubleEv", scope: !791, file: !306, line: 560, type: !972, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!972 = !DISubroutineType(types: !973)
!973 = !{!124, !812}
!974 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi19ELb1EE6lengthEv", scope: !791, file: !306, line: 584, type: !975, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DISubroutineType(types: !976)
!976 = !{!38, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!978 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6lengthEv", scope: !791, file: !306, line: 585, type: !810, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6iszeroEv", scope: !791, file: !306, line: 588, type: !932, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!980 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7is_zeroEv", scope: !791, file: !306, line: 591, type: !932, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi19ELb1EE4signEv", scope: !791, file: !306, line: 594, type: !932, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!982 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi19ELb1EE5clearEi", scope: !791, file: !306, line: 603, type: !983, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !817, !38}
!985 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi19ELb1EE6invertEi", scope: !791, file: !306, line: 609, type: !983, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!986 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi19ELb1EE4testEi", scope: !791, file: !306, line: 618, type: !987, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DISubroutineType(types: !988)
!988 = !{!40, !812, !38}
!989 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi19ELb1EE3getEv", scope: !791, file: !306, line: 624, type: !990, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DISubroutineType(types: !991)
!991 = !{!887, !817}
!992 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi19ELb1EE3setEi", scope: !791, file: !306, line: 627, type: !983, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi19ELb1EE3setEib", scope: !791, file: !306, line: 633, type: !994, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !817, !38, !40}
!996 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi19ELb1EE7lrotateEi", scope: !791, file: !306, line: 640, type: !910, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi19ELb1EE7rrotateEi", scope: !791, file: !306, line: 655, type: !910, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!998 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi19ELb1EE7reverseEv", scope: !791, file: !306, line: 670, type: !990, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi19ELb1EE7set_bitEib", scope: !791, file: !306, line: 676, type: !994, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7get_bitEi", scope: !791, file: !306, line: 681, type: !987, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi19ELb1EE5b_notEv", scope: !791, file: !306, line: 686, type: !815, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1002 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi19ELb1EE17checkOverflowCsimEibb", scope: !791, file: !306, line: 760, type: !1003, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!40, !812, !38, !40, !40}
!1005 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi19ELb1EEppEv", scope: !791, file: !306, line: 865, type: !990, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi19ELb1EEmmEv", scope: !791, file: !306, line: 869, type: !990, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi19ELb1EEppEi", scope: !791, file: !306, line: 877, type: !1008, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!1010, !817, !38}
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1012, file: !306, line: 167, baseType: !784)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<19, true>", scope: !791, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !786, identifier: "_ZTSN11ap_int_baseILi19ELb1EE5RTypeILi19ELb1EEE")
!1013 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi19ELb1EEmmEi", scope: !791, file: !306, line: 882, type: !1008, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1014 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi19ELb1EEpsEv", scope: !791, file: !306, line: 891, type: !1015, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1011, !812}
!1017 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi19ELb1EEngEv", scope: !791, file: !306, line: 894, type: !1018, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !812}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1021, file: !306, line: 163, baseType: !1022)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !791, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi19ELb1EE5RTypeILi1ELb0EEE")
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1023, file: !306, line: 103, baseType: !1026)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<20, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1024, identifier: "_ZTS15_ap_int_factoryILi20ELb1EE")
!1024 = !{!1025, !282}
!1025 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 20)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<20>", file: !369, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi20EE")
!1027 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi19ELb1EEntEv", scope: !791, file: !306, line: 901, type: !932, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi19ELb1EEcoEv", scope: !791, file: !306, line: 907, type: !1015, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi19ELb1EE5rangeEii", scope: !791, file: !306, line: 1045, type: !1030, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!1032, !817, !38, !38}
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<19, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi19ELb1EE")
!1033 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi19ELb1EE5rangeEii", scope: !791, file: !306, line: 1052, type: !1034, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1032, !812, !38, !38}
!1036 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi19ELb1EE5rangeEv", scope: !791, file: !306, line: 1076, type: !1037, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!1032, !817}
!1039 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi19ELb1EE5rangeEv", scope: !791, file: !306, line: 1080, type: !1040, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!1032, !812}
!1042 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi19ELb1EEclEii", scope: !791, file: !306, line: 1084, type: !1030, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1043 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi19ELb1EEclEii", scope: !791, file: !306, line: 1088, type: !1034, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi19ELb1EEixEi", scope: !791, file: !306, line: 1126, type: !1045, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !817, !38}
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<19, true>", file: !369, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi19ELb1EE")
!1048 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi19ELb1EEixEi", scope: !791, file: !306, line: 1142, type: !987, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi19ELb1EE3bitEi", scope: !791, file: !306, line: 1155, type: !1045, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi19ELb1EE3bitEi", scope: !791, file: !306, line: 1170, type: !987, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi19ELb1EE17countLeadingZerosEv", scope: !791, file: !306, line: 1193, type: !810, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1052 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10and_reduceEv", scope: !791, file: !306, line: 1413, type: !932, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE11nand_reduceEv", scope: !791, file: !306, line: 1414, type: !932, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1054 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9or_reduceEv", scope: !791, file: !306, line: 1415, type: !932, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10nor_reduceEv", scope: !791, file: !306, line: 1416, type: !932, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10xor_reduceEv", scope: !791, file: !306, line: 1417, type: !932, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1057 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE11xnor_reduceEv", scope: !791, file: !306, line: 1418, type: !932, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_stringEab", scope: !791, file: !306, line: 1433, type: !1059, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !812, !66, !40}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1062 = !{!1063, !39}
!1063 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 19)
!1064 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 21, type: !1065, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1068 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 57, type: !1069, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1067, !1071, !40}
!1071 = !DIBasicType(name: "uint19", size: 19, encoding: DW_ATE_unsigned)
!1072 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 127, type: !1073, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1067, !40}
!1075 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 128, type: !1076, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !1067, !61}
!1078 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 129, type: !1079, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1067, !66}
!1081 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 130, type: !1082, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !1067, !71}
!1084 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 131, type: !1085, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1067, !28}
!1087 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 132, type: !1088, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1067, !80}
!1090 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 133, type: !1091, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1067, !38}
!1093 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 134, type: !1094, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1067, !88}
!1096 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 135, type: !1097, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !1067, !93}
!1099 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 136, type: !1100, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1067, !98}
!1102 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 137, type: !1103, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1067, !368}
!1105 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 138, type: !1106, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !1067, !374}
!1108 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 140, type: !1109, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !1067, !124}
!1111 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 141, type: !1112, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1067, !120}
!1114 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 142, type: !1115, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1067, !378}
!1117 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 145, type: !1118, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !1067, !128}
!1120 = !DISubprogram(name: "ap_int", scope: !788, file: !302, line: 147, type: !1121, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1067, !128, !66}
!1123 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi19EEaSERKS0_", scope: !788, file: !302, line: 152, type: !1124, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !1067, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !788, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!1129 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi19EEaSERVKS0_", scope: !788, file: !302, line: 161, type: !1130, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1126, !1067, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !788)
!1135 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi19EEaSERKS0_", scope: !788, file: !302, line: 167, type: !1136, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1138, !1127}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1139 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi19EEaSERVKS0_", scope: !788, file: !302, line: 171, type: !1140, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1138, !1132}
!1142 = !{!1063}
!1143 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi18ELb1EEntEv", scope: !553, file: !306, line: 901, type: !694, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1144 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi18ELb1EEcoEv", scope: !553, file: !306, line: 907, type: !777, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb1EE5rangeEii", scope: !553, file: !306, line: 1045, type: !1146, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!1148, !579, !38, !38}
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<18, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi18ELb1EE")
!1149 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb1EE5rangeEii", scope: !553, file: !306, line: 1052, type: !1150, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!1148, !574, !38, !38}
!1152 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb1EE5rangeEv", scope: !553, file: !306, line: 1076, type: !1153, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1148, !579}
!1155 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb1EE5rangeEv", scope: !553, file: !306, line: 1080, type: !1156, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1148, !574}
!1158 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi18ELb1EEclEii", scope: !553, file: !306, line: 1084, type: !1146, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi18ELb1EEclEii", scope: !553, file: !306, line: 1088, type: !1150, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi18ELb1EEixEi", scope: !553, file: !306, line: 1126, type: !1161, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1163, !579, !38}
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<18, true>", file: !369, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi18ELb1EE")
!1164 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi18ELb1EEixEi", scope: !553, file: !306, line: 1142, type: !749, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi18ELb1EE3bitEi", scope: !553, file: !306, line: 1155, type: !1161, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1166 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi18ELb1EE3bitEi", scope: !553, file: !306, line: 1170, type: !749, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi18ELb1EE17countLeadingZerosEv", scope: !553, file: !306, line: 1193, type: !572, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1168 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10and_reduceEv", scope: !553, file: !306, line: 1413, type: !694, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE11nand_reduceEv", scope: !553, file: !306, line: 1414, type: !694, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9or_reduceEv", scope: !553, file: !306, line: 1415, type: !694, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10nor_reduceEv", scope: !553, file: !306, line: 1416, type: !694, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1172 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10xor_reduceEv", scope: !553, file: !306, line: 1417, type: !694, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1173 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE11xnor_reduceEv", scope: !553, file: !306, line: 1418, type: !694, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_stringEab", scope: !553, file: !306, line: 1433, type: !1175, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1061, !574, !66, !40}
!1177 = !{!1178, !39}
!1178 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 18)
!1179 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 21, type: !1180, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1183 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 57, type: !1184, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !1182, !1186, !40}
!1186 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!1187 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 127, type: !1188, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1182, !40}
!1190 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 128, type: !1191, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1182, !61}
!1193 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 129, type: !1194, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1182, !66}
!1196 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 130, type: !1197, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1182, !71}
!1199 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 131, type: !1200, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1182, !28}
!1202 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 132, type: !1203, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1182, !80}
!1205 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 133, type: !1206, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1182, !38}
!1208 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 134, type: !1209, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1182, !88}
!1211 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 135, type: !1212, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !1182, !93}
!1214 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 136, type: !1215, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1182, !98}
!1217 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 137, type: !1218, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1182, !368}
!1220 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 138, type: !1221, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1182, !374}
!1223 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 140, type: !1224, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1182, !124}
!1226 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 141, type: !1227, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1182, !120}
!1229 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 142, type: !1230, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1182, !378}
!1232 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 145, type: !1233, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1182, !128}
!1235 = !DISubprogram(name: "ap_int", scope: !550, file: !302, line: 147, type: !1236, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1182, !128, !66}
!1238 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi18EEaSERKS0_", scope: !550, file: !302, line: 152, type: !1239, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1241, !1182, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !550, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!1244 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi18EEaSERVKS0_", scope: !550, file: !302, line: 161, type: !1245, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1241, !1182, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !550)
!1250 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi18EEaSERKS0_", scope: !550, file: !302, line: 167, type: !1251, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1253, !1242}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1254 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi18EEaSERVKS0_", scope: !550, file: !302, line: 171, type: !1255, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1253, !1247}
!1257 = !{!1178}
!1258 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi17ELb1EEntEv", scope: !305, file: !306, line: 901, type: !455, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1259 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi17ELb1EEcoEv", scope: !305, file: !306, line: 907, type: !539, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1260 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb1EE5rangeEii", scope: !305, file: !306, line: 1045, type: !1261, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!1263, !333, !38, !38}
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<17, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi17ELb1EE")
!1264 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb1EE5rangeEii", scope: !305, file: !306, line: 1052, type: !1265, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1263, !328, !38, !38}
!1267 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb1EE5rangeEv", scope: !305, file: !306, line: 1076, type: !1268, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1263, !333}
!1270 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb1EE5rangeEv", scope: !305, file: !306, line: 1080, type: !1271, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1263, !328}
!1273 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi17ELb1EEclEii", scope: !305, file: !306, line: 1084, type: !1261, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1274 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi17ELb1EEclEii", scope: !305, file: !306, line: 1088, type: !1265, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1275 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi17ELb1EEixEi", scope: !305, file: !306, line: 1126, type: !1276, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1278, !333, !38}
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<17, true>", file: !1279, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !1280, templateParams: !1365, identifier: "_ZTS10ap_bit_refILi17ELb1EE")
!1279 = !DIFile(filename: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files/ap_int_ref.h", directory: "/wrk/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared")
!1280 = !{!1281, !1284, !1285, !1291, !1295, !1300, !1304, !1305, !1309, !1312, !1315, !1318, !1321, !1324, !1327, !1330, !1333, !1336, !1339, !1342, !1345, !1348, !1351, !1354, !1355, !1358, !1359, !1362}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1278, file: !1279, line: 766, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1278, file: !1279, line: 765, baseType: !305)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1278, file: !1279, line: 767, baseType: !38, size: 32, offset: 64)
!1285 = !DISubprogram(name: "ap_bit_ref", scope: !1278, file: !1279, line: 771, type: !1286, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1291 = !DISubprogram(name: "ap_bit_ref", scope: !1278, file: !1279, line: 774, type: !1292, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !1288, !1294, !38}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1295 = !DISubprogram(name: "ap_bit_ref", scope: !1278, file: !1279, line: 776, type: !1296, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1288, !1298, !38}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1300 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi17ELb1EEcvbEv", scope: !1278, file: !1279, line: 779, type: !1301, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!40, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1304 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi17ELb1EE7to_boolEv", scope: !1278, file: !1279, line: 780, type: !1301, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!1305 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEb", scope: !1278, file: !1279, line: 798, type: !1306, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1308, !1288, !40}
!1308 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1278, size: 64)
!1309 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEc", scope: !1278, file: !1279, line: 799, type: !1310, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1308, !1288, !61}
!1312 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEa", scope: !1278, file: !1279, line: 800, type: !1313, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1308, !1288, !66}
!1315 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEh", scope: !1278, file: !1279, line: 801, type: !1316, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1308, !1288, !71}
!1318 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEs", scope: !1278, file: !1279, line: 802, type: !1319, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1308, !1288, !28}
!1321 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEt", scope: !1278, file: !1279, line: 803, type: !1322, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1308, !1288, !80}
!1324 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEi", scope: !1278, file: !1279, line: 804, type: !1325, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1308, !1288, !38}
!1327 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEj", scope: !1278, file: !1279, line: 805, type: !1328, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1308, !1288, !88}
!1330 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEl", scope: !1278, file: !1279, line: 806, type: !1331, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1308, !1288, !93}
!1333 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEm", scope: !1278, file: !1279, line: 807, type: !1334, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1308, !1288, !98}
!1336 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEx", scope: !1278, file: !1279, line: 808, type: !1337, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1308, !1288, !368}
!1339 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEy", scope: !1278, file: !1279, line: 809, type: !1340, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1308, !1288, !374}
!1342 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEDh", scope: !1278, file: !1279, line: 820, type: !1343, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1308, !1288, !378}
!1345 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEf", scope: !1278, file: !1279, line: 821, type: !1346, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1308, !1288, !120}
!1348 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEd", scope: !1278, file: !1279, line: 822, type: !1349, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1308, !1288, !124}
!1351 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSERKS0_", scope: !1278, file: !1279, line: 839, type: !1352, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1308, !1288, !1289}
!1354 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi17ELb1EE3getEv", scope: !1278, file: !1279, line: 959, type: !1301, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!1355 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi17ELb1EE3getEv", scope: !1278, file: !1279, line: 961, type: !1356, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!40, !1288}
!1358 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi17ELb1EEcoEv", scope: !1278, file: !1279, line: 968, type: !1301, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!1359 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi17ELb1EE6lengthEv", scope: !1278, file: !1279, line: 973, type: !1360, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!38, !1303}
!1362 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi17ELb1EE9to_stringEv", scope: !1278, file: !1279, line: 979, type: !1363, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1061, !1303}
!1365 = !{!1366, !39}
!1366 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 17)
!1367 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi17ELb1EEixEi", scope: !305, file: !306, line: 1142, type: !510, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1368 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi17ELb1EE3bitEi", scope: !305, file: !306, line: 1155, type: !1276, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1369 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi17ELb1EE3bitEi", scope: !305, file: !306, line: 1170, type: !510, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1370 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi17ELb1EE17countLeadingZerosEv", scope: !305, file: !306, line: 1193, type: !326, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1371 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10and_reduceEv", scope: !305, file: !306, line: 1413, type: !455, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1372 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE11nand_reduceEv", scope: !305, file: !306, line: 1414, type: !455, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1373 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9or_reduceEv", scope: !305, file: !306, line: 1415, type: !455, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1374 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10nor_reduceEv", scope: !305, file: !306, line: 1416, type: !455, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1375 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10xor_reduceEv", scope: !305, file: !306, line: 1417, type: !455, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1376 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE11xnor_reduceEv", scope: !305, file: !306, line: 1418, type: !455, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1377 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_stringEab", scope: !305, file: !306, line: 1433, type: !1378, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1061, !328, !66, !40}
!1380 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 21, type: !1381, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1384 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 57, type: !1385, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1383, !1387, !40}
!1387 = !DIBasicType(name: "uint17", size: 17, encoding: DW_ATE_unsigned)
!1388 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 127, type: !1389, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1383, !40}
!1391 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 128, type: !1392, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1383, !61}
!1394 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 129, type: !1395, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1383, !66}
!1397 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 130, type: !1398, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1383, !71}
!1400 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 131, type: !1401, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1383, !28}
!1403 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 132, type: !1404, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1383, !80}
!1406 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 133, type: !1407, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1383, !38}
!1409 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 134, type: !1410, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1383, !88}
!1412 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 135, type: !1413, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1383, !93}
!1415 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 136, type: !1416, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1383, !98}
!1418 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 137, type: !1419, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1383, !368}
!1421 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 138, type: !1422, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1383, !374}
!1424 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 140, type: !1425, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1383, !124}
!1427 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 141, type: !1428, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1383, !120}
!1430 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 142, type: !1431, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1383, !378}
!1433 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 145, type: !1434, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1383, !128}
!1436 = !DISubprogram(name: "ap_int", scope: !301, file: !302, line: 147, type: !1437, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1383, !128, !66}
!1439 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi17EEaSERKS0_", scope: !301, file: !302, line: 152, type: !1440, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1442, !1383, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !301, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!1445 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi17EEaSERVKS0_", scope: !301, file: !302, line: 161, type: !1446, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1442, !1383, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !301)
!1451 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi17EEaSERKS0_", scope: !301, file: !302, line: 167, type: !1452, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454, !1443}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1455 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi17EEaSERVKS0_", scope: !301, file: !302, line: 171, type: !1456, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1454, !1448}
!1458 = !{!1366}
!1459 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi16ELb1EEntEv", scope: !20, file: !21, line: 947, type: !199, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!1460 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi16ELb1EEcoEv", scope: !20, file: !21, line: 953, type: !287, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1461 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb1EE5rangeEii", scope: !20, file: !21, line: 1091, type: !1462, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !53, !38, !38}
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<16, true>", file: !104, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi16ELb1EE")
!1465 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb1EE5rangeEii", scope: !20, file: !21, line: 1098, type: !1466, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1464, !48, !38, !38}
!1468 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb1EE5rangeEv", scope: !20, file: !21, line: 1122, type: !1469, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1464, !53}
!1471 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb1EE5rangeEv", scope: !20, file: !21, line: 1126, type: !1472, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1464, !48}
!1474 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi16ELb1EEclEii", scope: !20, file: !21, line: 1130, type: !1462, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!1475 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi16ELb1EEclEii", scope: !20, file: !21, line: 1134, type: !1466, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!1476 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi16ELb1EEixEi", scope: !20, file: !21, line: 1172, type: !1477, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1479, !53, !38}
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<16, true>", file: !1279, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !1480, templateParams: !1565, identifier: "_ZTS10ap_bit_refILi16ELb1EE")
!1480 = !{!1481, !1484, !1485, !1491, !1495, !1500, !1504, !1505, !1509, !1512, !1515, !1518, !1521, !1524, !1527, !1530, !1533, !1536, !1539, !1542, !1545, !1548, !1551, !1554, !1555, !1558, !1559, !1562}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1479, file: !1279, line: 766, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1479, file: !1279, line: 765, baseType: !20)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1479, file: !1279, line: 767, baseType: !38, size: 32, offset: 64)
!1485 = !DISubprogram(name: "ap_bit_ref", scope: !1479, file: !1279, line: 771, type: !1486, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!1491 = !DISubprogram(name: "ap_bit_ref", scope: !1479, file: !1279, line: 774, type: !1492, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1488, !1494, !38}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1495 = !DISubprogram(name: "ap_bit_ref", scope: !1479, file: !1279, line: 776, type: !1496, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !1488, !1498, !38}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1500 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi16ELb1EEcvbEv", scope: !1479, file: !1279, line: 779, type: !1501, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!40, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1504 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi16ELb1EE7to_boolEv", scope: !1479, file: !1279, line: 780, type: !1501, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!1505 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEb", scope: !1479, file: !1279, line: 798, type: !1506, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508, !1488, !40}
!1508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1479, size: 64)
!1509 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEc", scope: !1479, file: !1279, line: 799, type: !1510, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1508, !1488, !61}
!1512 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEa", scope: !1479, file: !1279, line: 800, type: !1513, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1508, !1488, !66}
!1515 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEh", scope: !1479, file: !1279, line: 801, type: !1516, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1508, !1488, !71}
!1518 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEs", scope: !1479, file: !1279, line: 802, type: !1519, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1508, !1488, !28}
!1521 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEt", scope: !1479, file: !1279, line: 803, type: !1522, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1508, !1488, !80}
!1524 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEi", scope: !1479, file: !1279, line: 804, type: !1525, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1508, !1488, !38}
!1527 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEj", scope: !1479, file: !1279, line: 805, type: !1528, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1508, !1488, !88}
!1530 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEl", scope: !1479, file: !1279, line: 806, type: !1531, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1508, !1488, !93}
!1533 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEm", scope: !1479, file: !1279, line: 807, type: !1534, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1508, !1488, !98}
!1536 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEx", scope: !1479, file: !1279, line: 808, type: !1537, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1508, !1488, !368}
!1539 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEy", scope: !1479, file: !1279, line: 809, type: !1540, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1508, !1488, !374}
!1542 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEDh", scope: !1479, file: !1279, line: 820, type: !1543, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1508, !1488, !378}
!1545 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEf", scope: !1479, file: !1279, line: 821, type: !1546, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1508, !1488, !120}
!1548 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEd", scope: !1479, file: !1279, line: 822, type: !1549, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1508, !1488, !124}
!1551 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSERKS0_", scope: !1479, file: !1279, line: 839, type: !1552, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1508, !1488, !1489}
!1554 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi16ELb1EE3getEv", scope: !1479, file: !1279, line: 959, type: !1501, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!1555 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi16ELb1EE3getEv", scope: !1479, file: !1279, line: 961, type: !1556, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!40, !1488}
!1558 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi16ELb1EEcoEv", scope: !1479, file: !1279, line: 968, type: !1501, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!1559 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi16ELb1EE6lengthEv", scope: !1479, file: !1279, line: 973, type: !1560, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!38, !1503}
!1562 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi16ELb1EE9to_stringEv", scope: !1479, file: !1279, line: 979, type: !1563, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1061, !1503}
!1565 = !{!1566, !39}
!1566 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 16)
!1567 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi16ELb1EEixEi", scope: !20, file: !21, line: 1188, type: !254, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!1568 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi16ELb1EE3bitEi", scope: !20, file: !21, line: 1201, type: !1477, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!1569 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi16ELb1EE3bitEi", scope: !20, file: !21, line: 1216, type: !254, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!1570 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi16ELb1EE17countLeadingZerosEv", scope: !20, file: !21, line: 1239, type: !46, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!1571 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10and_reduceEv", scope: !20, file: !21, line: 1459, type: !199, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!1572 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE11nand_reduceEv", scope: !20, file: !21, line: 1460, type: !199, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!1573 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9or_reduceEv", scope: !20, file: !21, line: 1461, type: !199, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!1574 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10nor_reduceEv", scope: !20, file: !21, line: 1462, type: !199, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!1575 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10xor_reduceEv", scope: !20, file: !21, line: 1463, type: !199, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!1576 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE11xnor_reduceEv", scope: !20, file: !21, line: 1464, type: !199, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!1577 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_stringEab", scope: !20, file: !21, line: 1479, type: !1578, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1061, !48, !66, !40}
!1580 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 67, type: !1581, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1584 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 103, type: !1585, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !1583, !80, !40}
!1587 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 173, type: !1588, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1583, !40}
!1590 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 174, type: !1591, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1583, !61}
!1593 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 175, type: !1594, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1583, !66}
!1596 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 176, type: !1597, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1583, !71}
!1599 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 177, type: !1600, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1583, !28}
!1602 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 178, type: !1603, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1583, !80}
!1605 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 179, type: !1606, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1583, !38}
!1608 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 180, type: !1609, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1583, !88}
!1611 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 181, type: !1612, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1583, !93}
!1614 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 182, type: !1615, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1583, !98}
!1617 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 183, type: !1618, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1583, !103}
!1620 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 184, type: !1621, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1583, !110}
!1623 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 186, type: !1624, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1583, !124}
!1626 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 187, type: !1627, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1583, !120}
!1629 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 188, type: !1630, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1583, !115}
!1632 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 191, type: !1633, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1583, !128}
!1635 = !DISubprogram(name: "ap_int", scope: !16, file: !17, line: 193, type: !1636, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1583, !128, !66}
!1638 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi16EEaSERKS0_", scope: !16, file: !17, line: 198, type: !1639, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1641, !1583, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!1644 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi16EEaSERVKS0_", scope: !16, file: !17, line: 207, type: !1645, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1641, !1583, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!1650 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi16EEaSERKS0_", scope: !16, file: !17, line: 213, type: !1651, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1653, !1642}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1654 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi16EEaSERVKS0_", scope: !16, file: !17, line: 217, type: !1655, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1653, !1647}
!1657 = !{!1566}
!1658 = !DISubprogram(name: "stream", scope: !11, file: !12, line: 103, type: !1659, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1662 = !DISubprogram(name: "stream", scope: !11, file: !12, line: 107, type: !1663, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1661, !128}
!1665 = !DISubprogram(name: "stream", scope: !11, file: !12, line: 114, type: !1666, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1661, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!1670 = !DISubprogram(name: "operator=", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EEaSERKS3_", scope: !11, file: !12, line: 117, type: !1671, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!10, !1661, !1668}
!1673 = !DISubprogram(name: "operator>>", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EErsERS2_", scope: !11, file: !12, line: 124, type: !1674, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1661, !1641}
!1676 = !DISubprogram(name: "operator<<", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EElsERKS2_", scope: !11, file: !12, line: 128, type: !1677, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1661, !1642}
!1679 = !DISubprogram(name: "empty", linkageName: "_ZNK3hls6streamI6ap_intILi16EELi0EE5emptyEv", scope: !11, file: !12, line: 135, type: !1680, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!40, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1683 = !DISubprogram(name: "full", linkageName: "_ZNK3hls6streamI6ap_intILi16EELi0EE4fullEv", scope: !11, file: !12, line: 139, type: !1680, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1684 = !DISubprogram(name: "read", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE4readERS2_", scope: !11, file: !12, line: 144, type: !1674, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1685 = !DISubprogram(name: "read_dep", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE8read_depERS2_b", scope: !11, file: !12, line: 149, type: !1686, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!40, !1661, !1641, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!1689 = !DISubprogram(name: "read", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE4readEv", scope: !11, file: !12, line: 154, type: !1690, isLocal: false, isDefinition: false, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!16, !1661}
!1692 = !DISubprogram(name: "read_nb", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE7read_nbERS2_", scope: !11, file: !12, line: 161, type: !1693, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!40, !1661, !1641}
!1695 = !DISubprogram(name: "write", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE5writeERKS2_", scope: !11, file: !12, line: 173, type: !1677, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1696 = !DISubprogram(name: "write_dep", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE9write_depERKS2_b", scope: !11, file: !12, line: 178, type: !1697, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!40, !1661, !1642, !1688}
!1699 = !DISubprogram(name: "write_nb", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE8write_nbERKS2_", scope: !11, file: !12, line: 184, type: !1700, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!40, !1661, !1642}
!1702 = !DISubprogram(name: "size", linkageName: "_ZNK3hls6streamI6ap_intILi16EELi0EE4sizeEv", scope: !11, file: !12, line: 189, type: !1703, isLocal: false, isDefinition: false, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!88, !1682}
!1705 = !DISubprogram(name: "capacity", linkageName: "_ZNK3hls6streamI6ap_intILi16EELi0EE8capacityEv", scope: !11, file: !12, line: 194, type: !1703, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1706 = !DISubprogram(name: "set_name", linkageName: "_ZN3hls6streamI6ap_intILi16EELi0EE8set_nameEPKc", scope: !11, file: !12, line: 199, type: !1663, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1707 = !{!1708, !1709}
!1708 = !DITemplateTypeParameter(name: "__STREAM_T__", type: !16)
!1709 = !DITemplateValueParameter(name: "DEPTH", type: !38, value: i32 0)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4096, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 128)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 16)
!1719 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1720, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1721, globals: !4683)
!1720 = !DIFile(filename: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls/ultrasound_accelerator/solution1/.autopilot/db/HLS_CNN.pp.0.cpp", directory: "/home/saverio/Documents/x-heep-app/heep_ultrasound/src/hls")
!1721 = !{!1722, !4325, !193}
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !21, line: 154, size: 32, flags: DIFlagTypePassByValue, elements: !1723, templateParams: !4211, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!1723 = !{!1724, !1737, !1738, !1739, !1744, !1748, !1751, !1754, !1757, !1760, !1763, !1766, !1769, !1772, !1775, !1778, !1781, !1784, !1787, !1790, !1793, !1796, !1799, !1804, !1808, !1813, !1814, !1818, !1821, !1824, !1827, !1830, !1833, !1836, !1839, !1842, !1845, !1848, !1851, !1854, !1857, !1861, !1864, !1867, !1870, !1873, !1876, !1879, !1880, !1883, !1886, !1889, !1892, !1895, !1898, !1901, !1904, !1908, !1909, !1910, !1911, !1912, !1915, !1916, !1919, !1922, !1923, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1935, !1936, !1937, !2029, !2030, !2033, !3541, !3542, !3543, !4212, !4215, !4218, !4221, !4222, !4223, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322}
!1724 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1722, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !25, line: 555, size: 32, flags: DIFlagTypePassByValue, elements: !1726, templateParams: !1735, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!1726 = !{!1727, !1728, !1732}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1725, file: !25, line: 557, baseType: !38, size: 32)
!1728 = !DISubprogram(name: "ssdm_int", scope: !1725, file: !25, line: 558, type: !1729, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1732 = !DISubprogram(name: "ssdm_int", scope: !1725, file: !25, line: 559, type: !1733, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1731, !38}
!1735 = !{!1736, !39}
!1736 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1722, file: !21, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !1722, file: !21, line: 177, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!1739 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb1EE16countLeadingOnesEv", scope: !1722, file: !21, line: 156, type: !1740, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!38, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1744 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 221, type: !1745, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1748 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 254, type: !1749, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1747, !44}
!1751 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 255, type: !1752, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1747, !60}
!1754 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 256, type: !1755, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1747, !65}
!1757 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 257, type: !1758, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1747, !70}
!1760 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 258, type: !1761, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1747, !75}
!1763 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 259, type: !1764, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1747, !79}
!1766 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 260, type: !1767, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1747, !42}
!1769 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 261, type: !1770, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1747, !87}
!1772 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 262, type: !1773, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !1747, !92}
!1775 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 263, type: !1776, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1747, !97}
!1778 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 264, type: !1779, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1747, !102}
!1781 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 265, type: !1782, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1747, !109}
!1784 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 270, type: !1785, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !1747, !115}
!1787 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 276, type: !1788, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1747, !120}
!1790 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 335, type: !1791, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1747, !124}
!1793 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 431, type: !1794, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !1747, !128}
!1796 = !DISubprogram(name: "ap_int_base", scope: !1722, file: !21, line: 437, type: !1797, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1747, !128, !66}
!1799 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb1EE4readEv", scope: !1722, file: !21, line: 459, type: !1800, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!1722, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1803 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1722)
!1804 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb1EE5writeERKS0_", scope: !1722, file: !21, line: 466, type: !1805, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1802, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1743, size: 64)
!1808 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !1722, file: !21, line: 478, type: !1809, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1802, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1813 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERKS0_", scope: !1722, file: !21, line: 488, type: !1805, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1814 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !1722, file: !21, line: 505, type: !1815, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1817, !1747, !1811}
!1817 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1722, size: 64)
!1818 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !1722, file: !21, line: 511, type: !1819, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1817, !1747, !1807}
!1821 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEb", scope: !1722, file: !21, line: 525, type: !1822, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1817, !1747, !40}
!1824 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEc", scope: !1722, file: !21, line: 526, type: !1825, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!1817, !1747, !61}
!1827 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEa", scope: !1722, file: !21, line: 527, type: !1828, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1817, !1747, !66}
!1830 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEh", scope: !1722, file: !21, line: 528, type: !1831, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1817, !1747, !71}
!1833 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEs", scope: !1722, file: !21, line: 529, type: !1834, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1817, !1747, !28}
!1836 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEt", scope: !1722, file: !21, line: 530, type: !1837, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1817, !1747, !80}
!1839 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEi", scope: !1722, file: !21, line: 531, type: !1840, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!1817, !1747, !38}
!1842 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEj", scope: !1722, file: !21, line: 532, type: !1843, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1817, !1747, !88}
!1845 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEl", scope: !1722, file: !21, line: 533, type: !1846, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1817, !1747, !93}
!1848 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEm", scope: !1722, file: !21, line: 534, type: !1849, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1817, !1747, !98}
!1851 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEx", scope: !1722, file: !21, line: 535, type: !1852, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1817, !1747, !103}
!1854 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEy", scope: !1722, file: !21, line: 536, type: !1855, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1817, !1747, !110}
!1857 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcvxEv", scope: !1722, file: !21, line: 587, type: !1858, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !1742}
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !1722, file: !21, line: 174, baseType: !194)
!1861 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_boolEv", scope: !1722, file: !21, line: 592, type: !1862, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!40, !1742}
!1864 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_charEv", scope: !1722, file: !21, line: 593, type: !1865, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!61, !1742}
!1867 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_scharEv", scope: !1722, file: !21, line: 594, type: !1868, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!66, !1742}
!1870 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ucharEv", scope: !1722, file: !21, line: 595, type: !1871, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!71, !1742}
!1873 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_shortEv", scope: !1722, file: !21, line: 596, type: !1874, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!28, !1742}
!1876 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_ushortEv", scope: !1722, file: !21, line: 597, type: !1877, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!80, !1742}
!1879 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6to_intEv", scope: !1722, file: !21, line: 598, type: !1740, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!1880 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_uintEv", scope: !1722, file: !21, line: 599, type: !1881, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!88, !1742}
!1883 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_longEv", scope: !1722, file: !21, line: 600, type: !1884, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!93, !1742}
!1886 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ulongEv", scope: !1722, file: !21, line: 601, type: !1887, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!98, !1742}
!1889 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_int64Ev", scope: !1722, file: !21, line: 602, type: !1890, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!103, !1742}
!1892 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_uint64Ev", scope: !1722, file: !21, line: 603, type: !1893, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!110, !1742}
!1895 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_halfEv", scope: !1722, file: !21, line: 604, type: !1896, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!115, !1742}
!1898 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_floatEv", scope: !1722, file: !21, line: 605, type: !1899, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!120, !1742}
!1901 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_doubleEv", scope: !1722, file: !21, line: 606, type: !1902, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!124, !1742}
!1904 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb1EE6lengthEv", scope: !1722, file: !21, line: 630, type: !1905, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!38, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1908 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6lengthEv", scope: !1722, file: !21, line: 631, type: !1740, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!1909 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6iszeroEv", scope: !1722, file: !21, line: 634, type: !1862, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!1910 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7is_zeroEv", scope: !1722, file: !21, line: 637, type: !1862, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!1911 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4signEv", scope: !1722, file: !21, line: 640, type: !1862, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1912 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb1EE5clearEi", scope: !1722, file: !21, line: 649, type: !1913, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1747, !38}
!1915 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb1EE6invertEi", scope: !1722, file: !21, line: 655, type: !1913, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1916 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4testEi", scope: !1722, file: !21, line: 664, type: !1917, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!40, !1742, !38}
!1919 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb1EE3getEv", scope: !1722, file: !21, line: 670, type: !1920, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1817, !1747}
!1922 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEi", scope: !1722, file: !21, line: 673, type: !1913, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!1923 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEib", scope: !1722, file: !21, line: 679, type: !1924, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1747, !38, !40}
!1926 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7lrotateEi", scope: !1722, file: !21, line: 686, type: !1840, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1927 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7rrotateEi", scope: !1722, file: !21, line: 701, type: !1840, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!1928 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb1EE7reverseEv", scope: !1722, file: !21, line: 716, type: !1920, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!1929 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE7set_bitEib", scope: !1722, file: !21, line: 722, type: !1924, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!1930 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7get_bitEi", scope: !1722, file: !21, line: 727, type: !1917, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!1931 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb1EE5b_notEv", scope: !1722, file: !21, line: 732, type: !1745, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!1932 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb", scope: !1722, file: !21, line: 806, type: !1933, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!40, !1742, !38, !40, !40}
!1935 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEv", scope: !1722, file: !21, line: 911, type: !1920, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!1936 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEv", scope: !1722, file: !21, line: 915, type: !1920, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!1937 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEi", scope: !1722, file: !21, line: 923, type: !1938, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940, !1747, !38}
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1942, file: !21, line: 213, baseType: !1945)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, true>", scope: !1722, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1943, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi32ELb1EEE")
!1943 = !{!1944, !282}
!1944 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 32)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1946, file: !21, line: 149, baseType: !1947)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1943, identifier: "_ZTS15_ap_int_factoryILi32ELb1EE")
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<32>", file: !302, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !1948, templateParams: !2027, identifier: "_ZTS6ap_intILi32EE")
!1948 = !{!1949, !1950, !1954, !1957, !1960, !1963, !1966, !1969, !1972, !1975, !1978, !1981, !1984, !1987, !1990, !1993, !1996, !1999, !2002, !2005, !2008, !2014, !2020, !2024}
!1949 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1947, baseType: !1722)
!1950 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 21, type: !1951, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1954 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 57, type: !1955, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1953, !88, !40}
!1957 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 127, type: !1958, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1953, !40}
!1960 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 128, type: !1961, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1953, !61}
!1963 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 129, type: !1964, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1953, !66}
!1966 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 130, type: !1967, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1953, !71}
!1969 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 131, type: !1970, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1953, !28}
!1972 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 132, type: !1973, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1953, !80}
!1975 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 133, type: !1976, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1953, !38}
!1978 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 134, type: !1979, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1953, !88}
!1981 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 135, type: !1982, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1953, !93}
!1984 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 136, type: !1985, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1953, !98}
!1987 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 137, type: !1988, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1953, !368}
!1990 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 138, type: !1991, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1953, !374}
!1993 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 140, type: !1994, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1953, !124}
!1996 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 141, type: !1997, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1953, !120}
!1999 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 142, type: !2000, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1953, !378}
!2002 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 145, type: !2003, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !1953, !128}
!2005 = !DISubprogram(name: "ap_int", scope: !1947, file: !302, line: 147, type: !2006, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1953, !128, !66}
!2008 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERKS0_", scope: !1947, file: !302, line: 152, type: !2009, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !1953, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1947, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!2014 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERVKS0_", scope: !1947, file: !302, line: 161, type: !2015, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2011, !1953, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1947)
!2020 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERKS0_", scope: !1947, file: !302, line: 167, type: !2021, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !2023, !2012}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2024 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERVKS0_", scope: !1947, file: !302, line: 171, type: !2025, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2023, !2017}
!2027 = !{!2028}
!2028 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 32)
!2029 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEi", scope: !1722, file: !21, line: 928, type: !1938, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!2030 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb1EEpsEv", scope: !1722, file: !21, line: 937, type: !2031, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1941, !1742}
!2033 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb1EEngEv", scope: !1722, file: !21, line: 940, type: !2034, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2036, !1742}
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2037, file: !21, line: 209, baseType: !2038)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !1722, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi1ELb0EEE")
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2039, file: !21, line: 149, baseType: !2042)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<33, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2040, identifier: "_ZTS15_ap_int_factoryILi33ELb1EE")
!2040 = !{!2041, !282}
!2041 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 33)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<33>", file: !302, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !2043, templateParams: !3540, identifier: "_ZTS6ap_intILi33EE")
!2043 = !{!2044, !3462, !3466, !3470, !3473, !3476, !3479, !3482, !3485, !3488, !3491, !3494, !3497, !3500, !3503, !3506, !3509, !3512, !3515, !3518, !3521, !3527, !3533, !3537}
!2044 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2042, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !306, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !2046, templateParams: !3447, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!2046 = !{!2047, !2061, !2062, !2063, !2068, !2072, !2075, !2078, !2081, !2084, !2087, !2090, !2093, !2096, !2099, !2102, !2105, !2108, !2111, !2114, !2117, !2120, !2123, !2128, !2132, !2137, !2138, !2142, !2145, !2148, !2151, !2154, !2157, !2160, !2163, !2166, !2169, !2172, !2175, !2178, !2181, !2185, !2188, !2191, !2194, !2197, !2200, !2203, !2204, !2207, !2210, !2213, !2216, !2219, !2222, !2225, !2228, !2232, !2233, !2234, !2235, !2236, !2239, !2240, !2243, !2246, !2247, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2259, !2260, !2261, !2268, !2269, !2272, !3341, !3342, !3343, !3347, !3350, !3353, !3356, !3357, !3358, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!2047 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2045, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !310, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !2049, templateParams: !2059, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!2049 = !{!2050, !2052, !2056}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2048, file: !310, line: 511, baseType: !2051, size: 33, align: 64)
!2051 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!2052 = !DISubprogram(name: "ssdm_int", scope: !2048, file: !310, line: 512, type: !2053, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2056 = !DISubprogram(name: "ssdm_int", scope: !2048, file: !310, line: 513, type: !2057, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2055, !2051}
!2059 = !{!2060, !39}
!2060 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 33)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2045, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 33)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2045, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!2063 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi33ELb1EE16countLeadingOnesEv", scope: !2045, file: !306, line: 110, type: !2064, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!38, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2068 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 175, type: !2069, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !2071}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2072 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 208, type: !2073, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !2071, !44}
!2075 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 209, type: !2076, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !2071, !60}
!2078 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 210, type: !2079, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2071, !65}
!2081 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 211, type: !2082, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2071, !70}
!2084 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 212, type: !2085, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !2071, !75}
!2087 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 213, type: !2088, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2071, !79}
!2090 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 214, type: !2091, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2071, !42}
!2093 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 215, type: !2094, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2071, !87}
!2096 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 216, type: !2097, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2071, !92}
!2099 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 217, type: !2100, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2071, !97}
!2102 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 218, type: !2103, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2071, !367}
!2105 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 219, type: !2106, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2071, !373}
!2108 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 224, type: !2109, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2071, !378}
!2111 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 230, type: !2112, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2071, !120}
!2114 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 289, type: !2115, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2071, !124}
!2117 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 385, type: !2118, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2071, !128}
!2120 = !DISubprogram(name: "ap_int_base", scope: !2045, file: !306, line: 391, type: !2121, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !2071, !128, !66}
!2123 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi33ELb1EE4readEv", scope: !2045, file: !306, line: 413, type: !2124, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2045, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2045)
!2128 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi33ELb1EE5writeERKS0_", scope: !2045, file: !306, line: 420, type: !2129, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2126, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2067, size: 64)
!2132 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !2045, file: !306, line: 432, type: !2133, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !2126, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2137 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERKS0_", scope: !2045, file: !306, line: 442, type: !2129, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!2138 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !2045, file: !306, line: 459, type: !2139, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2141, !2071, !2135}
!2141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2045, size: 64)
!2142 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !2045, file: !306, line: 465, type: !2143, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2141, !2071, !2131}
!2145 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEb", scope: !2045, file: !306, line: 479, type: !2146, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2141, !2071, !40}
!2148 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEc", scope: !2045, file: !306, line: 480, type: !2149, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2141, !2071, !61}
!2151 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEa", scope: !2045, file: !306, line: 481, type: !2152, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2141, !2071, !66}
!2154 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEh", scope: !2045, file: !306, line: 482, type: !2155, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2141, !2071, !71}
!2157 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEs", scope: !2045, file: !306, line: 483, type: !2158, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!2141, !2071, !28}
!2160 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEt", scope: !2045, file: !306, line: 484, type: !2161, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2141, !2071, !80}
!2163 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEi", scope: !2045, file: !306, line: 485, type: !2164, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!2141, !2071, !38}
!2166 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEj", scope: !2045, file: !306, line: 486, type: !2167, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2141, !2071, !88}
!2169 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEl", scope: !2045, file: !306, line: 487, type: !2170, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2141, !2071, !93}
!2172 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEm", scope: !2045, file: !306, line: 488, type: !2173, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2141, !2071, !98}
!2175 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEx", scope: !2045, file: !306, line: 489, type: !2176, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2141, !2071, !368}
!2178 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEy", scope: !2045, file: !306, line: 490, type: !2179, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2141, !2071, !374}
!2181 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcvxEv", scope: !2045, file: !306, line: 541, type: !2182, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!2184, !2066}
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2045, file: !306, line: 128, baseType: !453)
!2185 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_boolEv", scope: !2045, file: !306, line: 546, type: !2186, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!40, !2066}
!2188 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_charEv", scope: !2045, file: !306, line: 547, type: !2189, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!61, !2066}
!2191 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_scharEv", scope: !2045, file: !306, line: 548, type: !2192, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!66, !2066}
!2194 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ucharEv", scope: !2045, file: !306, line: 549, type: !2195, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!71, !2066}
!2197 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_shortEv", scope: !2045, file: !306, line: 550, type: !2198, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!28, !2066}
!2200 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_ushortEv", scope: !2045, file: !306, line: 551, type: !2201, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!80, !2066}
!2203 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6to_intEv", scope: !2045, file: !306, line: 552, type: !2064, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!2204 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_uintEv", scope: !2045, file: !306, line: 553, type: !2205, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!88, !2066}
!2207 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_longEv", scope: !2045, file: !306, line: 554, type: !2208, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!93, !2066}
!2210 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ulongEv", scope: !2045, file: !306, line: 555, type: !2211, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!98, !2066}
!2213 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_int64Ev", scope: !2045, file: !306, line: 556, type: !2214, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!368, !2066}
!2216 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_uint64Ev", scope: !2045, file: !306, line: 557, type: !2217, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!374, !2066}
!2219 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_halfEv", scope: !2045, file: !306, line: 558, type: !2220, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!378, !2066}
!2222 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_floatEv", scope: !2045, file: !306, line: 559, type: !2223, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!120, !2066}
!2225 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_doubleEv", scope: !2045, file: !306, line: 560, type: !2226, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!124, !2066}
!2228 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi33ELb1EE6lengthEv", scope: !2045, file: !306, line: 584, type: !2229, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!38, !2231}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2232 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6lengthEv", scope: !2045, file: !306, line: 585, type: !2064, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!2233 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6iszeroEv", scope: !2045, file: !306, line: 588, type: !2186, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!2234 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7is_zeroEv", scope: !2045, file: !306, line: 591, type: !2186, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!2235 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4signEv", scope: !2045, file: !306, line: 594, type: !2186, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2236 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi33ELb1EE5clearEi", scope: !2045, file: !306, line: 603, type: !2237, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2071, !38}
!2239 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi33ELb1EE6invertEi", scope: !2045, file: !306, line: 609, type: !2237, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!2240 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4testEi", scope: !2045, file: !306, line: 618, type: !2241, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!40, !2066, !38}
!2243 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi33ELb1EE3getEv", scope: !2045, file: !306, line: 624, type: !2244, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!2141, !2071}
!2246 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEi", scope: !2045, file: !306, line: 627, type: !2237, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!2247 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEib", scope: !2045, file: !306, line: 633, type: !2248, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2071, !38, !40}
!2250 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7lrotateEi", scope: !2045, file: !306, line: 640, type: !2164, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2251 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7rrotateEi", scope: !2045, file: !306, line: 655, type: !2164, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2252 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi33ELb1EE7reverseEv", scope: !2045, file: !306, line: 670, type: !2244, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2253 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE7set_bitEib", scope: !2045, file: !306, line: 676, type: !2248, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!2254 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7get_bitEi", scope: !2045, file: !306, line: 681, type: !2241, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!2255 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi33ELb1EE5b_notEv", scope: !2045, file: !306, line: 686, type: !2069, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2256 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb", scope: !2045, file: !306, line: 760, type: !2257, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!40, !2066, !38, !40, !40}
!2259 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEv", scope: !2045, file: !306, line: 865, type: !2244, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!2260 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEv", scope: !2045, file: !306, line: 869, type: !2244, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!2261 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEi", scope: !2045, file: !306, line: 877, type: !2262, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!2264, !2071, !38}
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2266, file: !306, line: 167, baseType: !2267)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<33, true>", scope: !2045, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2040, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi33ELb1EEE")
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2039, file: !306, line: 103, baseType: !2042)
!2268 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEi", scope: !2045, file: !306, line: 882, type: !2262, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!2269 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi33ELb1EEpsEv", scope: !2045, file: !306, line: 891, type: !2270, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2265, !2066}
!2272 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi33ELb1EEngEv", scope: !2045, file: !306, line: 894, type: !2273, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2275, !2066}
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2276, file: !306, line: 163, baseType: !2277)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2045, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi1ELb0EEE")
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2278, file: !306, line: 103, baseType: !2281)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<34, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2279, identifier: "_ZTS15_ap_int_factoryILi34ELb1EE")
!2279 = !{!2280, !282}
!2280 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 34)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<34>", file: !302, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !2282, templateParams: !3340, identifier: "_ZTS6ap_intILi34EE")
!2282 = !{!2283, !3262, !3266, !3270, !3273, !3276, !3279, !3282, !3285, !3288, !3291, !3294, !3297, !3300, !3303, !3306, !3309, !3312, !3315, !3318, !3321, !3327, !3333, !3337}
!2283 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2281, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !306, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !2285, templateParams: !3260, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!2285 = !{!2286, !2300, !2301, !2302, !2307, !2311, !2314, !2317, !2320, !2323, !2326, !2329, !2332, !2335, !2338, !2341, !2344, !2347, !2350, !2353, !2356, !2359, !2362, !2367, !2371, !2376, !2377, !2381, !2384, !2387, !2390, !2393, !2396, !2399, !2402, !2405, !2408, !2411, !2414, !2417, !2420, !2424, !2427, !2430, !2433, !2436, !2439, !2442, !2443, !2446, !2449, !2452, !2455, !2458, !2461, !2464, !2467, !2471, !2472, !2473, !2474, !2475, !2478, !2479, !2482, !2485, !2486, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2498, !2499, !2500, !2506, !2507, !2510, !3226, !3227, !3228, !3232, !3235, !3238, !3241, !3242, !3243, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257}
!2286 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2284, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !310, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !2288, templateParams: !2298, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!2288 = !{!2289, !2291, !2295}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2287, file: !310, line: 511, baseType: !2290, size: 34, align: 64)
!2290 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!2291 = !DISubprogram(name: "ssdm_int", scope: !2287, file: !310, line: 512, type: !2292, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2295 = !DISubprogram(name: "ssdm_int", scope: !2287, file: !310, line: 513, type: !2296, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2294, !2290}
!2298 = !{!2299, !39}
!2299 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 34)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2284, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 34)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2284, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!2302 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi34ELb1EE16countLeadingOnesEv", scope: !2284, file: !306, line: 110, type: !2303, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!38, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2307 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 175, type: !2308, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2311 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 208, type: !2312, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !2310, !44}
!2314 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 209, type: !2315, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !2310, !60}
!2317 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 210, type: !2318, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !2310, !65}
!2320 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 211, type: !2321, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2310, !70}
!2323 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 212, type: !2324, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2310, !75}
!2326 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 213, type: !2327, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2310, !79}
!2329 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 214, type: !2330, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2310, !42}
!2332 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 215, type: !2333, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2310, !87}
!2335 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 216, type: !2336, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2310, !92}
!2338 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 217, type: !2339, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2310, !97}
!2341 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 218, type: !2342, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2310, !367}
!2344 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 219, type: !2345, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2310, !373}
!2347 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 224, type: !2348, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !2310, !378}
!2350 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 230, type: !2351, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2310, !120}
!2353 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 289, type: !2354, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !2310, !124}
!2356 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 385, type: !2357, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2310, !128}
!2359 = !DISubprogram(name: "ap_int_base", scope: !2284, file: !306, line: 391, type: !2360, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2310, !128, !66}
!2362 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi34ELb1EE4readEv", scope: !2284, file: !306, line: 413, type: !2363, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2284, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2284)
!2367 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi34ELb1EE5writeERKS0_", scope: !2284, file: !306, line: 420, type: !2368, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2365, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2306, size: 64)
!2371 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !2284, file: !306, line: 432, type: !2372, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2365, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2376 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERKS0_", scope: !2284, file: !306, line: 442, type: !2368, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!2377 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !2284, file: !306, line: 459, type: !2378, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2380, !2310, !2374}
!2380 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2284, size: 64)
!2381 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !2284, file: !306, line: 465, type: !2382, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2380, !2310, !2370}
!2384 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEb", scope: !2284, file: !306, line: 479, type: !2385, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!2380, !2310, !40}
!2387 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEc", scope: !2284, file: !306, line: 480, type: !2388, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2380, !2310, !61}
!2390 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEa", scope: !2284, file: !306, line: 481, type: !2391, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!2380, !2310, !66}
!2393 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEh", scope: !2284, file: !306, line: 482, type: !2394, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!2380, !2310, !71}
!2396 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEs", scope: !2284, file: !306, line: 483, type: !2397, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2380, !2310, !28}
!2399 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEt", scope: !2284, file: !306, line: 484, type: !2400, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!2380, !2310, !80}
!2402 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEi", scope: !2284, file: !306, line: 485, type: !2403, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2380, !2310, !38}
!2405 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEj", scope: !2284, file: !306, line: 486, type: !2406, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2380, !2310, !88}
!2408 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEl", scope: !2284, file: !306, line: 487, type: !2409, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!2380, !2310, !93}
!2411 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEm", scope: !2284, file: !306, line: 488, type: !2412, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2380, !2310, !98}
!2414 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEx", scope: !2284, file: !306, line: 489, type: !2415, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2380, !2310, !368}
!2417 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEy", scope: !2284, file: !306, line: 490, type: !2418, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2380, !2310, !374}
!2420 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcvxEv", scope: !2284, file: !306, line: 541, type: !2421, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2423, !2305}
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2284, file: !306, line: 128, baseType: !453)
!2424 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_boolEv", scope: !2284, file: !306, line: 546, type: !2425, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!40, !2305}
!2427 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_charEv", scope: !2284, file: !306, line: 547, type: !2428, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!61, !2305}
!2430 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_scharEv", scope: !2284, file: !306, line: 548, type: !2431, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!66, !2305}
!2433 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ucharEv", scope: !2284, file: !306, line: 549, type: !2434, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!71, !2305}
!2436 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_shortEv", scope: !2284, file: !306, line: 550, type: !2437, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!28, !2305}
!2439 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_ushortEv", scope: !2284, file: !306, line: 551, type: !2440, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!80, !2305}
!2442 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6to_intEv", scope: !2284, file: !306, line: 552, type: !2303, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!2443 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_uintEv", scope: !2284, file: !306, line: 553, type: !2444, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!88, !2305}
!2446 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_longEv", scope: !2284, file: !306, line: 554, type: !2447, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!93, !2305}
!2449 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ulongEv", scope: !2284, file: !306, line: 555, type: !2450, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!98, !2305}
!2452 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_int64Ev", scope: !2284, file: !306, line: 556, type: !2453, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!368, !2305}
!2455 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_uint64Ev", scope: !2284, file: !306, line: 557, type: !2456, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!374, !2305}
!2458 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_halfEv", scope: !2284, file: !306, line: 558, type: !2459, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!378, !2305}
!2461 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_floatEv", scope: !2284, file: !306, line: 559, type: !2462, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!120, !2305}
!2464 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_doubleEv", scope: !2284, file: !306, line: 560, type: !2465, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!124, !2305}
!2467 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi34ELb1EE6lengthEv", scope: !2284, file: !306, line: 584, type: !2468, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!38, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2471 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6lengthEv", scope: !2284, file: !306, line: 585, type: !2303, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!2472 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6iszeroEv", scope: !2284, file: !306, line: 588, type: !2425, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!2473 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7is_zeroEv", scope: !2284, file: !306, line: 591, type: !2425, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!2474 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4signEv", scope: !2284, file: !306, line: 594, type: !2425, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2475 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi34ELb1EE5clearEi", scope: !2284, file: !306, line: 603, type: !2476, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !2310, !38}
!2478 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi34ELb1EE6invertEi", scope: !2284, file: !306, line: 609, type: !2476, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!2479 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4testEi", scope: !2284, file: !306, line: 618, type: !2480, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!40, !2305, !38}
!2482 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi34ELb1EE3getEv", scope: !2284, file: !306, line: 624, type: !2483, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2380, !2310}
!2485 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEi", scope: !2284, file: !306, line: 627, type: !2476, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!2486 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEib", scope: !2284, file: !306, line: 633, type: !2487, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2310, !38, !40}
!2489 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7lrotateEi", scope: !2284, file: !306, line: 640, type: !2403, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2490 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7rrotateEi", scope: !2284, file: !306, line: 655, type: !2403, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2491 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi34ELb1EE7reverseEv", scope: !2284, file: !306, line: 670, type: !2483, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2492 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE7set_bitEib", scope: !2284, file: !306, line: 676, type: !2487, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!2493 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7get_bitEi", scope: !2284, file: !306, line: 681, type: !2480, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!2494 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi34ELb1EE5b_notEv", scope: !2284, file: !306, line: 686, type: !2308, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2495 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb", scope: !2284, file: !306, line: 760, type: !2496, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!40, !2305, !38, !40, !40}
!2498 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEv", scope: !2284, file: !306, line: 865, type: !2483, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!2499 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEv", scope: !2284, file: !306, line: 869, type: !2483, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!2500 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEi", scope: !2284, file: !306, line: 877, type: !2501, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2503, !2310, !38}
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2505, file: !306, line: 167, baseType: !2277)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<34, true>", scope: !2284, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2279, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi34ELb1EEE")
!2506 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEi", scope: !2284, file: !306, line: 882, type: !2501, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!2507 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi34ELb1EEpsEv", scope: !2284, file: !306, line: 891, type: !2508, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2504, !2305}
!2510 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi34ELb1EEngEv", scope: !2284, file: !306, line: 894, type: !2511, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!2513, !2305}
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2514, file: !306, line: 163, baseType: !2515)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2284, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi1ELb0EEE")
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2516, file: !306, line: 103, baseType: !2519)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<35, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2517, identifier: "_ZTS15_ap_int_factoryILi35ELb1EE")
!2517 = !{!2518, !282}
!2518 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 35)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<35>", file: !302, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !2520, templateParams: !3225, identifier: "_ZTS6ap_intILi35EE")
!2520 = !{!2521, !3147, !3151, !3155, !3158, !3161, !3164, !3167, !3170, !3173, !3176, !3179, !3182, !3185, !3188, !3191, !3194, !3197, !3200, !3203, !3206, !3212, !3218, !3222}
!2521 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2519, baseType: !2522)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<35, true>", file: !306, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !2523, templateParams: !3145, identifier: "_ZTS11ap_int_baseILi35ELb1EE")
!2523 = !{!2524, !2538, !2539, !2540, !2545, !2549, !2552, !2555, !2558, !2561, !2564, !2567, !2570, !2573, !2576, !2579, !2582, !2585, !2588, !2591, !2594, !2597, !2600, !2605, !2609, !2614, !2615, !2619, !2622, !2625, !2628, !2631, !2634, !2637, !2640, !2643, !2646, !2649, !2652, !2655, !2658, !2662, !2665, !2668, !2671, !2674, !2677, !2680, !2681, !2684, !2687, !2690, !2693, !2696, !2699, !2702, !2705, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2720, !2723, !2724, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2736, !2737, !2738, !2744, !2745, !2748, !3111, !3112, !3113, !3117, !3120, !3123, !3126, !3127, !3128, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!2524 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2522, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<35, true>", file: !310, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !2526, templateParams: !2536, identifier: "_ZTS8ssdm_intILi35ELb1EE")
!2526 = !{!2527, !2529, !2533}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2525, file: !310, line: 511, baseType: !2528, size: 35, align: 64)
!2528 = !DIBasicType(name: "int35", size: 35, encoding: DW_ATE_signed)
!2529 = !DISubprogram(name: "ssdm_int", scope: !2525, file: !310, line: 512, type: !2530, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2533 = !DISubprogram(name: "ssdm_int", scope: !2525, file: !310, line: 513, type: !2534, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2532, !2528}
!2536 = !{!2537, !39}
!2537 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 35)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2522, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 35)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2522, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!2540 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi35ELb1EE16countLeadingOnesEv", scope: !2522, file: !306, line: 110, type: !2541, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!38, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2545 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 175, type: !2546, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2549 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 208, type: !2550, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2548, !44}
!2552 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 209, type: !2553, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !2548, !60}
!2555 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 210, type: !2556, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2548, !65}
!2558 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 211, type: !2559, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !2548, !70}
!2561 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 212, type: !2562, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2548, !75}
!2564 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 213, type: !2565, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2548, !79}
!2567 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 214, type: !2568, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !2548, !42}
!2570 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 215, type: !2571, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2548, !87}
!2573 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 216, type: !2574, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2548, !92}
!2576 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 217, type: !2577, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2548, !97}
!2579 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 218, type: !2580, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2548, !367}
!2582 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 219, type: !2583, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2548, !373}
!2585 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 224, type: !2586, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !2548, !378}
!2588 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 230, type: !2589, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !2548, !120}
!2591 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 289, type: !2592, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2548, !124}
!2594 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 385, type: !2595, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !2548, !128}
!2597 = !DISubprogram(name: "ap_int_base", scope: !2522, file: !306, line: 391, type: !2598, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2548, !128, !66}
!2600 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi35ELb1EE4readEv", scope: !2522, file: !306, line: 413, type: !2601, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!2522, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2604 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2522)
!2605 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi35ELb1EE5writeERKS0_", scope: !2522, file: !306, line: 420, type: !2606, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2603, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2544, size: 64)
!2609 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !2522, file: !306, line: 432, type: !2610, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2603, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2614 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERKS0_", scope: !2522, file: !306, line: 442, type: !2606, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!2615 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !2522, file: !306, line: 459, type: !2616, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2618, !2548, !2612}
!2618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2522, size: 64)
!2619 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERKS0_", scope: !2522, file: !306, line: 465, type: !2620, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!2618, !2548, !2608}
!2622 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEb", scope: !2522, file: !306, line: 479, type: !2623, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!2618, !2548, !40}
!2625 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEc", scope: !2522, file: !306, line: 480, type: !2626, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!2618, !2548, !61}
!2628 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEa", scope: !2522, file: !306, line: 481, type: !2629, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!2618, !2548, !66}
!2631 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEh", scope: !2522, file: !306, line: 482, type: !2632, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!2618, !2548, !71}
!2634 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEs", scope: !2522, file: !306, line: 483, type: !2635, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!2618, !2548, !28}
!2637 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEt", scope: !2522, file: !306, line: 484, type: !2638, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!2618, !2548, !80}
!2640 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEi", scope: !2522, file: !306, line: 485, type: !2641, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2618, !2548, !38}
!2643 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEj", scope: !2522, file: !306, line: 486, type: !2644, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!2618, !2548, !88}
!2646 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEl", scope: !2522, file: !306, line: 487, type: !2647, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!2618, !2548, !93}
!2649 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEm", scope: !2522, file: !306, line: 488, type: !2650, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!2618, !2548, !98}
!2652 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEx", scope: !2522, file: !306, line: 489, type: !2653, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!2618, !2548, !368}
!2655 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEy", scope: !2522, file: !306, line: 490, type: !2656, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!2618, !2548, !374}
!2658 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcvxEv", scope: !2522, file: !306, line: 541, type: !2659, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!2661, !2543}
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2522, file: !306, line: 128, baseType: !453)
!2662 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_boolEv", scope: !2522, file: !306, line: 546, type: !2663, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!40, !2543}
!2665 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_charEv", scope: !2522, file: !306, line: 547, type: !2666, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!61, !2543}
!2668 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_scharEv", scope: !2522, file: !306, line: 548, type: !2669, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!66, !2543}
!2671 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ucharEv", scope: !2522, file: !306, line: 549, type: !2672, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!71, !2543}
!2674 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_shortEv", scope: !2522, file: !306, line: 550, type: !2675, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!28, !2543}
!2677 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_ushortEv", scope: !2522, file: !306, line: 551, type: !2678, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!80, !2543}
!2680 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6to_intEv", scope: !2522, file: !306, line: 552, type: !2541, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!2681 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_uintEv", scope: !2522, file: !306, line: 553, type: !2682, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!88, !2543}
!2684 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_longEv", scope: !2522, file: !306, line: 554, type: !2685, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!93, !2543}
!2687 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ulongEv", scope: !2522, file: !306, line: 555, type: !2688, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!98, !2543}
!2690 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_int64Ev", scope: !2522, file: !306, line: 556, type: !2691, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!368, !2543}
!2693 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_uint64Ev", scope: !2522, file: !306, line: 557, type: !2694, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!374, !2543}
!2696 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_halfEv", scope: !2522, file: !306, line: 558, type: !2697, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!378, !2543}
!2699 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_floatEv", scope: !2522, file: !306, line: 559, type: !2700, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!120, !2543}
!2702 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_doubleEv", scope: !2522, file: !306, line: 560, type: !2703, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!124, !2543}
!2705 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi35ELb1EE6lengthEv", scope: !2522, file: !306, line: 584, type: !2706, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!38, !2708}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2709 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6lengthEv", scope: !2522, file: !306, line: 585, type: !2541, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!2710 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6iszeroEv", scope: !2522, file: !306, line: 588, type: !2663, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!2711 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7is_zeroEv", scope: !2522, file: !306, line: 591, type: !2663, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!2712 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4signEv", scope: !2522, file: !306, line: 594, type: !2663, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2713 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi35ELb1EE5clearEi", scope: !2522, file: !306, line: 603, type: !2714, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2548, !38}
!2716 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi35ELb1EE6invertEi", scope: !2522, file: !306, line: 609, type: !2714, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!2717 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4testEi", scope: !2522, file: !306, line: 618, type: !2718, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!40, !2543, !38}
!2720 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi35ELb1EE3getEv", scope: !2522, file: !306, line: 624, type: !2721, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!2618, !2548}
!2723 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEi", scope: !2522, file: !306, line: 627, type: !2714, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!2724 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEib", scope: !2522, file: !306, line: 633, type: !2725, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{null, !2548, !38, !40}
!2727 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7lrotateEi", scope: !2522, file: !306, line: 640, type: !2641, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2728 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7rrotateEi", scope: !2522, file: !306, line: 655, type: !2641, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2729 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi35ELb1EE7reverseEv", scope: !2522, file: !306, line: 670, type: !2721, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2730 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE7set_bitEib", scope: !2522, file: !306, line: 676, type: !2725, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!2731 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7get_bitEi", scope: !2522, file: !306, line: 681, type: !2718, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!2732 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi35ELb1EE5b_notEv", scope: !2522, file: !306, line: 686, type: !2546, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2733 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17checkOverflowCsimEibb", scope: !2522, file: !306, line: 760, type: !2734, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!40, !2543, !38, !40, !40}
!2736 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEv", scope: !2522, file: !306, line: 865, type: !2721, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!2737 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEv", scope: !2522, file: !306, line: 869, type: !2721, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!2738 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEi", scope: !2522, file: !306, line: 877, type: !2739, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2741, !2548, !38}
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2743, file: !306, line: 167, baseType: !2515)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<35, true>", scope: !2522, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2517, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi35ELb1EEE")
!2744 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEi", scope: !2522, file: !306, line: 882, type: !2739, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!2745 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi35ELb1EEpsEv", scope: !2522, file: !306, line: 891, type: !2746, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!2742, !2543}
!2748 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi35ELb1EEngEv", scope: !2522, file: !306, line: 894, type: !2749, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!2751, !2543}
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2752, file: !306, line: 163, baseType: !2753)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2522, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi1ELb0EEE")
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2754, file: !306, line: 103, baseType: !2757)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<36, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2755, identifier: "_ZTS15_ap_int_factoryILi36ELb1EE")
!2755 = !{!2756, !282}
!2756 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 36)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<36>", file: !302, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !2758, templateParams: !3110, identifier: "_ZTS6ap_intILi36EE")
!2758 = !{!2759, !3032, !3036, !3040, !3043, !3046, !3049, !3052, !3055, !3058, !3061, !3064, !3067, !3070, !3073, !3076, !3079, !3082, !3085, !3088, !3091, !3097, !3103, !3107}
!2759 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2757, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<36, true>", file: !306, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !2761, templateParams: !3030, identifier: "_ZTS11ap_int_baseILi36ELb1EE")
!2761 = !{!2762, !2776, !2777, !2778, !2783, !2787, !2790, !2793, !2796, !2799, !2802, !2805, !2808, !2811, !2814, !2817, !2820, !2823, !2826, !2829, !2832, !2835, !2838, !2843, !2847, !2852, !2853, !2857, !2860, !2863, !2866, !2869, !2872, !2875, !2878, !2881, !2884, !2887, !2890, !2893, !2896, !2900, !2903, !2906, !2909, !2912, !2915, !2918, !2919, !2922, !2925, !2928, !2931, !2934, !2937, !2940, !2943, !2947, !2948, !2949, !2950, !2951, !2954, !2955, !2958, !2961, !2962, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2974, !2975, !2976, !2982, !2983, !2986, !2996, !2997, !2998, !3002, !3005, !3008, !3011, !3012, !3013, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027}
!2762 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2760, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<36, true>", file: !310, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !2764, templateParams: !2774, identifier: "_ZTS8ssdm_intILi36ELb1EE")
!2764 = !{!2765, !2767, !2771}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2763, file: !310, line: 511, baseType: !2766, size: 36, align: 64)
!2766 = !DIBasicType(name: "int36", size: 36, encoding: DW_ATE_signed)
!2767 = !DISubprogram(name: "ssdm_int", scope: !2763, file: !310, line: 512, type: !2768, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2771 = !DISubprogram(name: "ssdm_int", scope: !2763, file: !310, line: 513, type: !2772, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2770, !2766}
!2774 = !{!2775, !39}
!2775 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 36)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2760, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 36)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2760, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!2778 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi36ELb1EE16countLeadingOnesEv", scope: !2760, file: !306, line: 110, type: !2779, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!38, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2783 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 175, type: !2784, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2787 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 208, type: !2788, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2786, !44}
!2790 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 209, type: !2791, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2786, !60}
!2793 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 210, type: !2794, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2786, !65}
!2796 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 211, type: !2797, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2786, !70}
!2799 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 212, type: !2800, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2786, !75}
!2802 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 213, type: !2803, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2786, !79}
!2805 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 214, type: !2806, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{null, !2786, !42}
!2808 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 215, type: !2809, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2786, !87}
!2811 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 216, type: !2812, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2786, !92}
!2814 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 217, type: !2815, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2786, !97}
!2817 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 218, type: !2818, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2786, !367}
!2820 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 219, type: !2821, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2786, !373}
!2823 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 224, type: !2824, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !2786, !378}
!2826 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 230, type: !2827, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2786, !120}
!2829 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 289, type: !2830, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2786, !124}
!2832 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 385, type: !2833, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2786, !128}
!2835 = !DISubprogram(name: "ap_int_base", scope: !2760, file: !306, line: 391, type: !2836, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2786, !128, !66}
!2838 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi36ELb1EE4readEv", scope: !2760, file: !306, line: 413, type: !2839, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!2760, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2842 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2760)
!2843 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi36ELb1EE5writeERKS0_", scope: !2760, file: !306, line: 420, type: !2844, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2841, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2782, size: 64)
!2847 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !2760, file: !306, line: 432, type: !2848, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2841, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2842)
!2852 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERKS0_", scope: !2760, file: !306, line: 442, type: !2844, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!2853 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !2760, file: !306, line: 459, type: !2854, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!2856, !2786, !2850}
!2856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2760, size: 64)
!2857 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERKS0_", scope: !2760, file: !306, line: 465, type: !2858, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!2856, !2786, !2846}
!2860 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEb", scope: !2760, file: !306, line: 479, type: !2861, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!2856, !2786, !40}
!2863 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEc", scope: !2760, file: !306, line: 480, type: !2864, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!2856, !2786, !61}
!2866 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEa", scope: !2760, file: !306, line: 481, type: !2867, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!2856, !2786, !66}
!2869 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEh", scope: !2760, file: !306, line: 482, type: !2870, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!2856, !2786, !71}
!2872 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEs", scope: !2760, file: !306, line: 483, type: !2873, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!2856, !2786, !28}
!2875 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEt", scope: !2760, file: !306, line: 484, type: !2876, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!2856, !2786, !80}
!2878 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEi", scope: !2760, file: !306, line: 485, type: !2879, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!2856, !2786, !38}
!2881 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEj", scope: !2760, file: !306, line: 486, type: !2882, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2856, !2786, !88}
!2884 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEl", scope: !2760, file: !306, line: 487, type: !2885, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!2856, !2786, !93}
!2887 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEm", scope: !2760, file: !306, line: 488, type: !2888, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!2856, !2786, !98}
!2890 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEx", scope: !2760, file: !306, line: 489, type: !2891, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!2856, !2786, !368}
!2893 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEy", scope: !2760, file: !306, line: 490, type: !2894, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!2856, !2786, !374}
!2896 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcvxEv", scope: !2760, file: !306, line: 541, type: !2897, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!2899, !2781}
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2760, file: !306, line: 128, baseType: !453)
!2900 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_boolEv", scope: !2760, file: !306, line: 546, type: !2901, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!40, !2781}
!2903 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_charEv", scope: !2760, file: !306, line: 547, type: !2904, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!61, !2781}
!2906 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_scharEv", scope: !2760, file: !306, line: 548, type: !2907, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!66, !2781}
!2909 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ucharEv", scope: !2760, file: !306, line: 549, type: !2910, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!71, !2781}
!2912 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_shortEv", scope: !2760, file: !306, line: 550, type: !2913, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!28, !2781}
!2915 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_ushortEv", scope: !2760, file: !306, line: 551, type: !2916, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!80, !2781}
!2918 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6to_intEv", scope: !2760, file: !306, line: 552, type: !2779, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!2919 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_uintEv", scope: !2760, file: !306, line: 553, type: !2920, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!88, !2781}
!2922 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_longEv", scope: !2760, file: !306, line: 554, type: !2923, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!93, !2781}
!2925 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ulongEv", scope: !2760, file: !306, line: 555, type: !2926, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!98, !2781}
!2928 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_int64Ev", scope: !2760, file: !306, line: 556, type: !2929, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!368, !2781}
!2931 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_uint64Ev", scope: !2760, file: !306, line: 557, type: !2932, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!374, !2781}
!2934 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_halfEv", scope: !2760, file: !306, line: 558, type: !2935, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!378, !2781}
!2937 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_floatEv", scope: !2760, file: !306, line: 559, type: !2938, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!120, !2781}
!2940 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_doubleEv", scope: !2760, file: !306, line: 560, type: !2941, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!124, !2781}
!2943 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi36ELb1EE6lengthEv", scope: !2760, file: !306, line: 584, type: !2944, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!38, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2947 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6lengthEv", scope: !2760, file: !306, line: 585, type: !2779, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!2948 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6iszeroEv", scope: !2760, file: !306, line: 588, type: !2901, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!2949 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7is_zeroEv", scope: !2760, file: !306, line: 591, type: !2901, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!2950 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4signEv", scope: !2760, file: !306, line: 594, type: !2901, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2951 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi36ELb1EE5clearEi", scope: !2760, file: !306, line: 603, type: !2952, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2786, !38}
!2954 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi36ELb1EE6invertEi", scope: !2760, file: !306, line: 609, type: !2952, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!2955 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4testEi", scope: !2760, file: !306, line: 618, type: !2956, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!40, !2781, !38}
!2958 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi36ELb1EE3getEv", scope: !2760, file: !306, line: 624, type: !2959, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2856, !2786}
!2961 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEi", scope: !2760, file: !306, line: 627, type: !2952, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!2962 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEib", scope: !2760, file: !306, line: 633, type: !2963, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2786, !38, !40}
!2965 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7lrotateEi", scope: !2760, file: !306, line: 640, type: !2879, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2966 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7rrotateEi", scope: !2760, file: !306, line: 655, type: !2879, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2967 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi36ELb1EE7reverseEv", scope: !2760, file: !306, line: 670, type: !2959, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2968 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE7set_bitEib", scope: !2760, file: !306, line: 676, type: !2963, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!2969 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7get_bitEi", scope: !2760, file: !306, line: 681, type: !2956, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!2970 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi36ELb1EE5b_notEv", scope: !2760, file: !306, line: 686, type: !2784, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2971 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17checkOverflowCsimEibb", scope: !2760, file: !306, line: 760, type: !2972, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!40, !2781, !38, !40, !40}
!2974 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEv", scope: !2760, file: !306, line: 865, type: !2959, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!2975 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEv", scope: !2760, file: !306, line: 869, type: !2959, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!2976 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEi", scope: !2760, file: !306, line: 877, type: !2977, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2979, !2786, !38}
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2981, file: !306, line: 167, baseType: !2753)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<36, true>", scope: !2760, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2755, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi36ELb1EEE")
!2982 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEi", scope: !2760, file: !306, line: 882, type: !2977, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!2983 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi36ELb1EEpsEv", scope: !2760, file: !306, line: 891, type: !2984, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2980, !2781}
!2986 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi36ELb1EEngEv", scope: !2760, file: !306, line: 894, type: !2987, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!2989, !2781}
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2990, file: !306, line: 163, baseType: !2991)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2760, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi1ELb0EEE")
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2992, file: !306, line: 103, baseType: !2995)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<37, true>", file: !306, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2993, identifier: "_ZTS15_ap_int_factoryILi37ELb1EE")
!2993 = !{!2994, !282}
!2994 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 37)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<37>", file: !369, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi37EE")
!2996 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi36ELb1EEntEv", scope: !2760, file: !306, line: 901, type: !2901, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!2997 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcoEv", scope: !2760, file: !306, line: 907, type: !2984, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!2998 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEii", scope: !2760, file: !306, line: 1045, type: !2999, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!3001, !2786, !38, !38}
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<36, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi36ELb1EE")
!3002 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEii", scope: !2760, file: !306, line: 1052, type: !3003, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!3001, !2781, !38, !38}
!3005 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEv", scope: !2760, file: !306, line: 1076, type: !3006, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!3001, !2786}
!3008 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEv", scope: !2760, file: !306, line: 1080, type: !3009, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!3001, !2781}
!3011 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi36ELb1EEclEii", scope: !2760, file: !306, line: 1084, type: !2999, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!3012 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi36ELb1EEclEii", scope: !2760, file: !306, line: 1088, type: !3003, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!3013 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi36ELb1EEixEi", scope: !2760, file: !306, line: 1126, type: !3014, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!3016, !2786, !38}
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<36, true>", file: !369, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi36ELb1EE")
!3017 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi36ELb1EEixEi", scope: !2760, file: !306, line: 1142, type: !2956, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!3018 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE3bitEi", scope: !2760, file: !306, line: 1155, type: !3014, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!3019 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE3bitEi", scope: !2760, file: !306, line: 1170, type: !2956, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!3020 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17countLeadingZerosEv", scope: !2760, file: !306, line: 1193, type: !2779, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!3021 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10and_reduceEv", scope: !2760, file: !306, line: 1413, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!3022 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11nand_reduceEv", scope: !2760, file: !306, line: 1414, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!3023 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9or_reduceEv", scope: !2760, file: !306, line: 1415, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!3024 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10nor_reduceEv", scope: !2760, file: !306, line: 1416, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!3025 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10xor_reduceEv", scope: !2760, file: !306, line: 1417, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!3026 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11xnor_reduceEv", scope: !2760, file: !306, line: 1418, type: !2901, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!3027 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_stringEab", scope: !2760, file: !306, line: 1433, type: !3028, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!1061, !2781, !66, !40}
!3030 = !{!3031, !39}
!3031 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 36)
!3032 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 21, type: !3033, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3036 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 57, type: !3037, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !3035, !3039, !40}
!3039 = !DIBasicType(name: "uint36", size: 36, encoding: DW_ATE_unsigned)
!3040 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 127, type: !3041, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !3035, !40}
!3043 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 128, type: !3044, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3035, !61}
!3046 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 129, type: !3047, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !3035, !66}
!3049 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 130, type: !3050, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !3035, !71}
!3052 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 131, type: !3053, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !3035, !28}
!3055 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 132, type: !3056, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !3035, !80}
!3058 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 133, type: !3059, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !3035, !38}
!3061 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 134, type: !3062, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !3035, !88}
!3064 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 135, type: !3065, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !3035, !93}
!3067 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 136, type: !3068, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !3035, !98}
!3070 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 137, type: !3071, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !3035, !368}
!3073 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 138, type: !3074, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !3035, !374}
!3076 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 140, type: !3077, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3035, !124}
!3079 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 141, type: !3080, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3035, !120}
!3082 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 142, type: !3083, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3035, !378}
!3085 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 145, type: !3086, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !3035, !128}
!3088 = !DISubprogram(name: "ap_int", scope: !2757, file: !302, line: 147, type: !3089, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !3035, !128, !66}
!3091 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERKS0_", scope: !2757, file: !302, line: 152, type: !3092, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!3094, !3035, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2757, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!3097 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERVKS0_", scope: !2757, file: !302, line: 161, type: !3098, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3094, !3035, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2757)
!3103 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERKS0_", scope: !2757, file: !302, line: 167, type: !3104, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !3106, !3095}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3107 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERVKS0_", scope: !2757, file: !302, line: 171, type: !3108, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3106, !3100}
!3110 = !{!3031}
!3111 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi35ELb1EEntEv", scope: !2522, file: !306, line: 901, type: !2663, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!3112 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcoEv", scope: !2522, file: !306, line: 907, type: !2746, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!3113 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEii", scope: !2522, file: !306, line: 1045, type: !3114, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!3116, !2548, !38, !38}
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<35, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi35ELb1EE")
!3117 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEii", scope: !2522, file: !306, line: 1052, type: !3118, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3116, !2543, !38, !38}
!3120 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEv", scope: !2522, file: !306, line: 1076, type: !3121, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!3116, !2548}
!3123 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEv", scope: !2522, file: !306, line: 1080, type: !3124, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3116, !2543}
!3126 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi35ELb1EEclEii", scope: !2522, file: !306, line: 1084, type: !3114, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!3127 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi35ELb1EEclEii", scope: !2522, file: !306, line: 1088, type: !3118, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!3128 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi35ELb1EEixEi", scope: !2522, file: !306, line: 1126, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!3131, !2548, !38}
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<35, true>", file: !369, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi35ELb1EE")
!3132 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi35ELb1EEixEi", scope: !2522, file: !306, line: 1142, type: !2718, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!3133 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE3bitEi", scope: !2522, file: !306, line: 1155, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!3134 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE3bitEi", scope: !2522, file: !306, line: 1170, type: !2718, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!3135 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17countLeadingZerosEv", scope: !2522, file: !306, line: 1193, type: !2541, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!3136 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10and_reduceEv", scope: !2522, file: !306, line: 1413, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!3137 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11nand_reduceEv", scope: !2522, file: !306, line: 1414, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!3138 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9or_reduceEv", scope: !2522, file: !306, line: 1415, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!3139 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10nor_reduceEv", scope: !2522, file: !306, line: 1416, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!3140 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10xor_reduceEv", scope: !2522, file: !306, line: 1417, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!3141 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11xnor_reduceEv", scope: !2522, file: !306, line: 1418, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!3142 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_stringEab", scope: !2522, file: !306, line: 1433, type: !3143, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!1061, !2543, !66, !40}
!3145 = !{!3146, !39}
!3146 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 35)
!3147 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 21, type: !3148, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !3150}
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3151 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 57, type: !3152, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !3150, !3154, !40}
!3154 = !DIBasicType(name: "uint35", size: 35, encoding: DW_ATE_unsigned)
!3155 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 127, type: !3156, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !3150, !40}
!3158 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 128, type: !3159, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !3150, !61}
!3161 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 129, type: !3162, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3150, !66}
!3164 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 130, type: !3165, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3150, !71}
!3167 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 131, type: !3168, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !3150, !28}
!3170 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 132, type: !3171, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !3150, !80}
!3173 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 133, type: !3174, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !3150, !38}
!3176 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 134, type: !3177, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !3150, !88}
!3179 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 135, type: !3180, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !3150, !93}
!3182 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 136, type: !3183, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3150, !98}
!3185 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 137, type: !3186, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !3150, !368}
!3188 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 138, type: !3189, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !3150, !374}
!3191 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 140, type: !3192, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3150, !124}
!3194 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 141, type: !3195, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3150, !120}
!3197 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 142, type: !3198, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3150, !378}
!3200 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 145, type: !3201, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3150, !128}
!3203 = !DISubprogram(name: "ap_int", scope: !2519, file: !302, line: 147, type: !3204, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !3150, !128, !66}
!3206 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERKS0_", scope: !2519, file: !302, line: 152, type: !3207, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!3209, !3150, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2519, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!3212 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERVKS0_", scope: !2519, file: !302, line: 161, type: !3213, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3209, !3150, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2519)
!3218 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERKS0_", scope: !2519, file: !302, line: 167, type: !3219, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3221, !3210}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3222 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERVKS0_", scope: !2519, file: !302, line: 171, type: !3223, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3221, !3215}
!3225 = !{!3146}
!3226 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi34ELb1EEntEv", scope: !2284, file: !306, line: 901, type: !2425, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!3227 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcoEv", scope: !2284, file: !306, line: 907, type: !2508, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!3228 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEii", scope: !2284, file: !306, line: 1045, type: !3229, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!3231, !2310, !38, !38}
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<34, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi34ELb1EE")
!3232 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEii", scope: !2284, file: !306, line: 1052, type: !3233, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!3231, !2305, !38, !38}
!3235 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEv", scope: !2284, file: !306, line: 1076, type: !3236, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3231, !2310}
!3238 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEv", scope: !2284, file: !306, line: 1080, type: !3239, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!3231, !2305}
!3241 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi34ELb1EEclEii", scope: !2284, file: !306, line: 1084, type: !3229, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!3242 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi34ELb1EEclEii", scope: !2284, file: !306, line: 1088, type: !3233, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!3243 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi34ELb1EEixEi", scope: !2284, file: !306, line: 1126, type: !3244, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!3246, !2310, !38}
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<34, true>", file: !369, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi34ELb1EE")
!3247 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi34ELb1EEixEi", scope: !2284, file: !306, line: 1142, type: !2480, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!3248 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE3bitEi", scope: !2284, file: !306, line: 1155, type: !3244, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!3249 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE3bitEi", scope: !2284, file: !306, line: 1170, type: !2480, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!3250 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17countLeadingZerosEv", scope: !2284, file: !306, line: 1193, type: !2303, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!3251 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10and_reduceEv", scope: !2284, file: !306, line: 1413, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!3252 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11nand_reduceEv", scope: !2284, file: !306, line: 1414, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!3253 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9or_reduceEv", scope: !2284, file: !306, line: 1415, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!3254 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10nor_reduceEv", scope: !2284, file: !306, line: 1416, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!3255 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10xor_reduceEv", scope: !2284, file: !306, line: 1417, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!3256 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11xnor_reduceEv", scope: !2284, file: !306, line: 1418, type: !2425, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!3257 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_stringEab", scope: !2284, file: !306, line: 1433, type: !3258, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!1061, !2305, !66, !40}
!3260 = !{!3261, !39}
!3261 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 34)
!3262 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 21, type: !3263, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3266 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 57, type: !3267, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3265, !3269, !40}
!3269 = !DIBasicType(name: "uint34", size: 34, encoding: DW_ATE_unsigned)
!3270 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 127, type: !3271, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !3265, !40}
!3273 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 128, type: !3274, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3265, !61}
!3276 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 129, type: !3277, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3265, !66}
!3279 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 130, type: !3280, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3265, !71}
!3282 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 131, type: !3283, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3265, !28}
!3285 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 132, type: !3286, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3265, !80}
!3288 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 133, type: !3289, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3265, !38}
!3291 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 134, type: !3292, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !3265, !88}
!3294 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 135, type: !3295, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !3265, !93}
!3297 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 136, type: !3298, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3265, !98}
!3300 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 137, type: !3301, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !3265, !368}
!3303 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 138, type: !3304, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3265, !374}
!3306 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 140, type: !3307, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3265, !124}
!3309 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 141, type: !3310, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3265, !120}
!3312 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 142, type: !3313, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3265, !378}
!3315 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 145, type: !3316, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3265, !128}
!3318 = !DISubprogram(name: "ap_int", scope: !2281, file: !302, line: 147, type: !3319, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3265, !128, !66}
!3321 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERKS0_", scope: !2281, file: !302, line: 152, type: !3322, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!3324, !3265, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2281, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!3327 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERVKS0_", scope: !2281, file: !302, line: 161, type: !3328, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!3324, !3265, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2281)
!3333 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERKS0_", scope: !2281, file: !302, line: 167, type: !3334, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3336, !3325}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3337 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERVKS0_", scope: !2281, file: !302, line: 171, type: !3338, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3336, !3330}
!3340 = !{!3261}
!3341 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi33ELb1EEntEv", scope: !2045, file: !306, line: 901, type: !2186, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!3342 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcoEv", scope: !2045, file: !306, line: 907, type: !2270, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!3343 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEii", scope: !2045, file: !306, line: 1045, type: !3344, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!3346, !2071, !38, !38}
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<33, true>", file: !369, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi33ELb1EE")
!3347 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEii", scope: !2045, file: !306, line: 1052, type: !3348, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!3346, !2066, !38, !38}
!3350 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEv", scope: !2045, file: !306, line: 1076, type: !3351, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!3346, !2071}
!3353 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEv", scope: !2045, file: !306, line: 1080, type: !3354, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!3346, !2066}
!3356 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi33ELb1EEclEii", scope: !2045, file: !306, line: 1084, type: !3344, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!3357 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi33ELb1EEclEii", scope: !2045, file: !306, line: 1088, type: !3348, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!3358 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi33ELb1EEixEi", scope: !2045, file: !306, line: 1126, type: !3359, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3361, !2071, !38}
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<33, true>", file: !1279, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !3362, templateParams: !3447, identifier: "_ZTS10ap_bit_refILi33ELb1EE")
!3362 = !{!3363, !3366, !3367, !3373, !3377, !3382, !3386, !3387, !3391, !3394, !3397, !3400, !3403, !3406, !3409, !3412, !3415, !3418, !3421, !3424, !3427, !3430, !3433, !3436, !3437, !3440, !3441, !3444}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3361, file: !1279, line: 766, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3361, file: !1279, line: 765, baseType: !2045)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !3361, file: !1279, line: 767, baseType: !38, size: 32, offset: 64)
!3367 = !DISubprogram(name: "ap_bit_ref", scope: !3361, file: !1279, line: 771, type: !3368, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3361)
!3373 = !DISubprogram(name: "ap_bit_ref", scope: !3361, file: !1279, line: 774, type: !3374, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3370, !3376, !38}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3377 = !DISubprogram(name: "ap_bit_ref", scope: !3361, file: !1279, line: 776, type: !3378, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !3370, !3380, !38}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3382 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcvbEv", scope: !3361, file: !1279, line: 779, type: !3383, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!40, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3386 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", scope: !3361, file: !1279, line: 780, type: !3383, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!3387 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEb", scope: !3361, file: !1279, line: 798, type: !3388, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!3390, !3370, !40}
!3390 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3361, size: 64)
!3391 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEc", scope: !3361, file: !1279, line: 799, type: !3392, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!3390, !3370, !61}
!3394 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEa", scope: !3361, file: !1279, line: 800, type: !3395, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!3390, !3370, !66}
!3397 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEh", scope: !3361, file: !1279, line: 801, type: !3398, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!3390, !3370, !71}
!3400 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEs", scope: !3361, file: !1279, line: 802, type: !3401, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!3390, !3370, !28}
!3403 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEt", scope: !3361, file: !1279, line: 803, type: !3404, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!3390, !3370, !80}
!3406 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEi", scope: !3361, file: !1279, line: 804, type: !3407, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!3390, !3370, !38}
!3409 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEj", scope: !3361, file: !1279, line: 805, type: !3410, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!3390, !3370, !88}
!3412 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEl", scope: !3361, file: !1279, line: 806, type: !3413, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!3390, !3370, !93}
!3415 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEm", scope: !3361, file: !1279, line: 807, type: !3416, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!3390, !3370, !98}
!3418 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEx", scope: !3361, file: !1279, line: 808, type: !3419, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!3390, !3370, !368}
!3421 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEy", scope: !3361, file: !1279, line: 809, type: !3422, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!3390, !3370, !374}
!3424 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEDh", scope: !3361, file: !1279, line: 820, type: !3425, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!3390, !3370, !378}
!3427 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEf", scope: !3361, file: !1279, line: 821, type: !3428, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!3390, !3370, !120}
!3430 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEd", scope: !3361, file: !1279, line: 822, type: !3431, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!3390, !3370, !124}
!3433 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSERKS0_", scope: !3361, file: !1279, line: 839, type: !3434, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!3390, !3370, !3371}
!3436 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi33ELb1EE3getEv", scope: !3361, file: !1279, line: 959, type: !3383, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!3437 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi33ELb1EE3getEv", scope: !3361, file: !1279, line: 961, type: !3438, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!40, !3370}
!3440 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcoEv", scope: !3361, file: !1279, line: 968, type: !3383, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!3441 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi33ELb1EE6lengthEv", scope: !3361, file: !1279, line: 973, type: !3442, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!38, !3385}
!3444 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi33ELb1EE9to_stringEv", scope: !3361, file: !1279, line: 979, type: !3445, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!1061, !3385}
!3447 = !{!3448, !39}
!3448 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 33)
!3449 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi33ELb1EEixEi", scope: !2045, file: !306, line: 1142, type: !2241, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!3450 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE3bitEi", scope: !2045, file: !306, line: 1155, type: !3359, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!3451 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE3bitEi", scope: !2045, file: !306, line: 1170, type: !2241, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!3452 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17countLeadingZerosEv", scope: !2045, file: !306, line: 1193, type: !2064, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!3453 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10and_reduceEv", scope: !2045, file: !306, line: 1413, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!3454 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11nand_reduceEv", scope: !2045, file: !306, line: 1414, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!3455 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9or_reduceEv", scope: !2045, file: !306, line: 1415, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!3456 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10nor_reduceEv", scope: !2045, file: !306, line: 1416, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!3457 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10xor_reduceEv", scope: !2045, file: !306, line: 1417, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!3458 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11xnor_reduceEv", scope: !2045, file: !306, line: 1418, type: !2186, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!3459 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_stringEab", scope: !2045, file: !306, line: 1433, type: !3460, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!1061, !2066, !66, !40}
!3462 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 21, type: !3463, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3466 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 57, type: !3467, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3465, !3469, !40}
!3469 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!3470 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 127, type: !3471, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3465, !40}
!3473 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 128, type: !3474, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !3465, !61}
!3476 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 129, type: !3477, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3465, !66}
!3479 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 130, type: !3480, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !3465, !71}
!3482 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 131, type: !3483, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3465, !28}
!3485 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 132, type: !3486, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3465, !80}
!3488 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 133, type: !3489, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3465, !38}
!3491 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 134, type: !3492, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3465, !88}
!3494 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 135, type: !3495, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3465, !93}
!3497 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 136, type: !3498, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !3465, !98}
!3500 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 137, type: !3501, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3465, !368}
!3503 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 138, type: !3504, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3465, !374}
!3506 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 140, type: !3507, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3465, !124}
!3509 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 141, type: !3510, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3465, !120}
!3512 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 142, type: !3513, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3465, !378}
!3515 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 145, type: !3516, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !3465, !128}
!3518 = !DISubprogram(name: "ap_int", scope: !2042, file: !302, line: 147, type: !3519, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3465, !128, !66}
!3521 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERKS0_", scope: !2042, file: !302, line: 152, type: !3522, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3524, !3465, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2042, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!3527 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERVKS0_", scope: !2042, file: !302, line: 161, type: !3528, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3524, !3465, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3532)
!3532 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2042)
!3533 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERKS0_", scope: !2042, file: !302, line: 167, type: !3534, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3536, !3525}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3537 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERVKS0_", scope: !2042, file: !302, line: 171, type: !3538, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !3536, !3530}
!3540 = !{!3448}
!3541 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb1EEntEv", scope: !1722, file: !21, line: 947, type: !1862, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!3542 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcoEv", scope: !1722, file: !21, line: 953, type: !2031, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!3543 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEii", scope: !1722, file: !21, line: 1091, type: !3544, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!3546, !1747, !38, !38}
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, true>", file: !1279, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !3547, templateParams: !4211, identifier: "_ZTS12ap_range_refILi32ELb1EE")
!3547 = !{!3548, !3551, !3552, !3553, !3559, !3563, !3568, !4122, !4125, !4129, !4132, !4135, !4138, !4141, !4144, !4147, !4150, !4153, !4156, !4159, !4162, !4165, !4168, !4171, !4174, !4177, !4181, !4182, !4183, !4184, !4185, !4186, !4189, !4190, !4193, !4196, !4199, !4202, !4203, !4206, !4207, !4208}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3546, file: !1279, line: 295, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3546, file: !1279, line: 294, baseType: !1722)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !3546, file: !1279, line: 296, baseType: !38, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !3546, file: !1279, line: 297, baseType: !38, size: 32, offset: 96)
!3553 = !DISubprogram(name: "ap_range_ref", scope: !3546, file: !1279, line: 300, type: !3554, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3546)
!3559 = !DISubprogram(name: "ap_range_ref", scope: !3546, file: !1279, line: 303, type: !3560, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !3556, !3562, !38, !38}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3563 = !DISubprogram(name: "ap_range_ref", scope: !3546, file: !1279, line: 306, type: !3564, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3556, !3566, !38, !38}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3568 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb1EEcv11ap_int_baseILi32ELb0EEEv", scope: !3546, file: !1279, line: 309, type: !3569, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!3571, !4121}
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !306, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !3572, templateParams: !4007, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!3572 = !{!3573, !3586, !3587, !3588, !3593, !3597, !3600, !3603, !3606, !3609, !3612, !3615, !3618, !3621, !3624, !3627, !3630, !3633, !3636, !3639, !3642, !3645, !3648, !3653, !3657, !3662, !3663, !3667, !3670, !3673, !3676, !3679, !3682, !3685, !3688, !3691, !3694, !3697, !3700, !3703, !3706, !3713, !3716, !3719, !3722, !3725, !3728, !3731, !3732, !3735, !3738, !3741, !3744, !3747, !3750, !3753, !3756, !3760, !3761, !3762, !3763, !3764, !3767, !3768, !3771, !3774, !3775, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3787, !3788, !3789, !3878, !3879, !3882, !3887, !3888, !3889, !4008, !4011, !4014, !4017, !4018, !4019, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!3573 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3571, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !310, line: 517, size: 32, flags: DIFlagTypePassByValue, elements: !3575, templateParams: !3584, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!3575 = !{!3576, !3577, !3581}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !3574, file: !310, line: 519, baseType: !88, size: 32)
!3577 = !DISubprogram(name: "ssdm_int", scope: !3574, file: !310, line: 520, type: !3578, isLocal: false, isDefinition: false, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3581 = !DISubprogram(name: "ssdm_int", scope: !3574, file: !310, line: 521, type: !3582, isLocal: false, isDefinition: false, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !3580, !88}
!3584 = !{!1736, !3585}
!3585 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 0)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !3571, file: !306, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !3571, file: !306, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 false)
!3588 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb0EE16countLeadingOnesEv", scope: !3571, file: !306, line: 110, type: !3589, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!38, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3593 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 175, type: !3594, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3597 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 208, type: !3598, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3596, !44}
!3600 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 209, type: !3601, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3596, !60}
!3603 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 210, type: !3604, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !3596, !65}
!3606 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 211, type: !3607, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3596, !70}
!3609 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 212, type: !3610, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3596, !75}
!3612 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 213, type: !3613, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3596, !79}
!3615 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 214, type: !3616, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3596, !42}
!3618 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 215, type: !3619, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3596, !87}
!3621 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 216, type: !3622, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{null, !3596, !92}
!3624 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 217, type: !3625, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3596, !97}
!3627 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 218, type: !3628, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3596, !367}
!3630 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 219, type: !3631, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3596, !373}
!3633 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 224, type: !3634, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3596, !378}
!3636 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 230, type: !3637, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !3596, !120}
!3639 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 289, type: !3640, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3596, !124}
!3642 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 385, type: !3643, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3596, !128}
!3645 = !DISubprogram(name: "ap_int_base", scope: !3571, file: !306, line: 391, type: !3646, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3596, !128, !66}
!3648 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb0EE4readEv", scope: !3571, file: !306, line: 413, type: !3649, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!3571, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3652 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3571)
!3653 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb0EE5writeERKS0_", scope: !3571, file: !306, line: 420, type: !3654, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !3651, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3592, size: 64)
!3657 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !3571, file: !306, line: 432, type: !3658, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3651, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3662 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERKS0_", scope: !3571, file: !306, line: 442, type: !3654, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!3663 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !3571, file: !306, line: 459, type: !3664, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!3666, !3596, !3660}
!3666 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3571, size: 64)
!3667 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !3571, file: !306, line: 465, type: !3668, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!3666, !3596, !3656}
!3670 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEb", scope: !3571, file: !306, line: 479, type: !3671, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!3666, !3596, !40}
!3673 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEc", scope: !3571, file: !306, line: 480, type: !3674, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3666, !3596, !61}
!3676 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEa", scope: !3571, file: !306, line: 481, type: !3677, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3666, !3596, !66}
!3679 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEh", scope: !3571, file: !306, line: 482, type: !3680, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!3666, !3596, !71}
!3682 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEs", scope: !3571, file: !306, line: 483, type: !3683, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!3666, !3596, !28}
!3685 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEt", scope: !3571, file: !306, line: 484, type: !3686, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!3666, !3596, !80}
!3688 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEi", scope: !3571, file: !306, line: 485, type: !3689, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!3666, !3596, !38}
!3691 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEj", scope: !3571, file: !306, line: 486, type: !3692, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!3666, !3596, !88}
!3694 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEl", scope: !3571, file: !306, line: 487, type: !3695, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3666, !3596, !93}
!3697 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEm", scope: !3571, file: !306, line: 488, type: !3698, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3666, !3596, !98}
!3700 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEx", scope: !3571, file: !306, line: 489, type: !3701, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!3666, !3596, !368}
!3703 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEy", scope: !3571, file: !306, line: 490, type: !3704, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3666, !3596, !374}
!3706 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcvyEv", scope: !3571, file: !306, line: 541, type: !3707, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3709, !3591}
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !3571, file: !306, line: 128, baseType: !3710)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !3711, file: !306, line: 51, baseType: !374)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !306, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3712, identifier: "_ZTS6retvalILi8ELb0EE")
!3712 = !{!197, !3585}
!3713 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_boolEv", scope: !3571, file: !306, line: 546, type: !3714, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!40, !3591}
!3716 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_charEv", scope: !3571, file: !306, line: 547, type: !3717, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!61, !3591}
!3719 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_scharEv", scope: !3571, file: !306, line: 548, type: !3720, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!66, !3591}
!3722 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ucharEv", scope: !3571, file: !306, line: 549, type: !3723, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!71, !3591}
!3725 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_shortEv", scope: !3571, file: !306, line: 550, type: !3726, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!28, !3591}
!3728 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_ushortEv", scope: !3571, file: !306, line: 551, type: !3729, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!80, !3591}
!3731 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6to_intEv", scope: !3571, file: !306, line: 552, type: !3589, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!3732 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_uintEv", scope: !3571, file: !306, line: 553, type: !3733, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!88, !3591}
!3735 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_longEv", scope: !3571, file: !306, line: 554, type: !3736, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!93, !3591}
!3738 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ulongEv", scope: !3571, file: !306, line: 555, type: !3739, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!98, !3591}
!3741 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_int64Ev", scope: !3571, file: !306, line: 556, type: !3742, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!368, !3591}
!3744 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_uint64Ev", scope: !3571, file: !306, line: 557, type: !3745, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!374, !3591}
!3747 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_halfEv", scope: !3571, file: !306, line: 558, type: !3748, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!378, !3591}
!3750 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_floatEv", scope: !3571, file: !306, line: 559, type: !3751, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!120, !3591}
!3753 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_doubleEv", scope: !3571, file: !306, line: 560, type: !3754, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!124, !3591}
!3756 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb0EE6lengthEv", scope: !3571, file: !306, line: 584, type: !3757, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!38, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3760 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6lengthEv", scope: !3571, file: !306, line: 585, type: !3589, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!3761 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6iszeroEv", scope: !3571, file: !306, line: 588, type: !3714, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!3762 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7is_zeroEv", scope: !3571, file: !306, line: 591, type: !3714, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!3763 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4signEv", scope: !3571, file: !306, line: 594, type: !3714, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!3764 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb0EE5clearEi", scope: !3571, file: !306, line: 603, type: !3765, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3596, !38}
!3767 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb0EE6invertEi", scope: !3571, file: !306, line: 609, type: !3765, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!3768 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4testEi", scope: !3571, file: !306, line: 618, type: !3769, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!40, !3591, !38}
!3771 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb0EE3getEv", scope: !3571, file: !306, line: 624, type: !3772, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!3666, !3596}
!3774 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEi", scope: !3571, file: !306, line: 627, type: !3765, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!3775 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEib", scope: !3571, file: !306, line: 633, type: !3776, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3596, !38, !40}
!3778 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7lrotateEi", scope: !3571, file: !306, line: 640, type: !3689, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!3779 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7rrotateEi", scope: !3571, file: !306, line: 655, type: !3689, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!3780 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb0EE7reverseEv", scope: !3571, file: !306, line: 670, type: !3772, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!3781 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE7set_bitEib", scope: !3571, file: !306, line: 676, type: !3776, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!3782 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7get_bitEi", scope: !3571, file: !306, line: 681, type: !3769, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!3783 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb0EE5b_notEv", scope: !3571, file: !306, line: 686, type: !3594, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!3784 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17checkOverflowCsimEibb", scope: !3571, file: !306, line: 760, type: !3785, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!40, !3591, !38, !40, !40}
!3787 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEv", scope: !3571, file: !306, line: 865, type: !3772, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!3788 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEv", scope: !3571, file: !306, line: 869, type: !3772, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!3789 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEi", scope: !3571, file: !306, line: 877, type: !3790, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3792, !3596, !38}
!3792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !3794, file: !306, line: 167, baseType: !3796)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, false>", scope: !3571, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3795, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi32ELb0EEE")
!3795 = !{!1944, !296}
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3797, file: !306, line: 105, baseType: !3798)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, false>", file: !306, line: 105, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3795, identifier: "_ZTS15_ap_int_factoryILi32ELb0EE")
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !302, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !3799, templateParams: !2027, identifier: "_ZTS7ap_uintILi32EE")
!3799 = !{!3800, !3801, !3805, !3808, !3811, !3814, !3817, !3820, !3823, !3826, !3829, !3832, !3835, !3838, !3841, !3844, !3847, !3850, !3853, !3856, !3859, !3865, !3871, !3875}
!3800 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3798, baseType: !3571)
!3801 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 184, type: !3802, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3805 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 212, type: !3806, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3804, !88, !40}
!3808 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 281, type: !3809, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3804, !40}
!3811 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 282, type: !3812, isLocal: false, isDefinition: false, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3804, !61}
!3814 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 283, type: !3815, isLocal: false, isDefinition: false, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3804, !66}
!3817 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 284, type: !3818, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3804, !71}
!3820 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 285, type: !3821, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3804, !28}
!3823 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 286, type: !3824, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3804, !80}
!3826 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 287, type: !3827, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3804, !38}
!3829 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 288, type: !3830, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3804, !88}
!3832 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 289, type: !3833, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3804, !93}
!3835 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 290, type: !3836, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3804, !98}
!3838 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 291, type: !3839, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3804, !368}
!3841 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 292, type: !3842, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3804, !374}
!3844 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 294, type: !3845, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !3804, !124}
!3847 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 295, type: !3848, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !3804, !120}
!3850 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 296, type: !3851, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3804, !378}
!3853 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 299, type: !3854, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3804, !128}
!3856 = !DISubprogram(name: "ap_uint", scope: !3798, file: !302, line: 301, type: !3857, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3804, !128, !66}
!3859 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !3798, file: !302, line: 307, type: !3860, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!3862, !3804, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3798, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3798)
!3865 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERVKS0_", scope: !3798, file: !302, line: 317, type: !3866, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!3862, !3804, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3870)
!3870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3798)
!3871 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERKS0_", scope: !3798, file: !302, line: 323, type: !3872, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3874, !3863}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3875 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERVKS0_", scope: !3798, file: !302, line: 327, type: !3876, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3874, !3868}
!3878 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEi", scope: !3571, file: !306, line: 882, type: !3790, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!3879 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb0EEpsEv", scope: !3571, file: !306, line: 891, type: !3880, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!3793, !3591}
!3882 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb0EEngEv", scope: !3571, file: !306, line: 894, type: !3883, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3885, !3591}
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !3886, file: !306, line: 163, baseType: !2267)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !3571, file: !306, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi1ELb0EEE")
!3887 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb0EEntEv", scope: !3571, file: !306, line: 901, type: !3714, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!3888 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcoEv", scope: !3571, file: !306, line: 907, type: !3880, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!3889 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEii", scope: !3571, file: !306, line: 1045, type: !3890, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!3892, !3596, !38, !38}
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, false>", file: !1279, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !3893, templateParams: !4007, identifier: "_ZTS12ap_range_refILi32ELb0EE")
!3893 = !{!3894, !3897, !3898, !3899, !3905, !3909, !3914, !3918, !3921, !3925, !3928, !3931, !3934, !3937, !3940, !3943, !3946, !3949, !3952, !3955, !3958, !3961, !3964, !3967, !3970, !3973, !3977, !3978, !3979, !3980, !3981, !3982, !3985, !3986, !3989, !3992, !3995, !3998, !3999, !4002, !4003, !4004}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3892, file: !1279, line: 295, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3892, file: !1279, line: 294, baseType: !3571)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !3892, file: !1279, line: 296, baseType: !38, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !3892, file: !1279, line: 297, baseType: !38, size: 32, offset: 96)
!3899 = !DISubprogram(name: "ap_range_ref", scope: !3892, file: !1279, line: 300, type: !3900, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3903 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3892)
!3905 = !DISubprogram(name: "ap_range_ref", scope: !3892, file: !1279, line: 303, type: !3906, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3902, !3908, !38, !38}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3909 = !DISubprogram(name: "ap_range_ref", scope: !3892, file: !1279, line: 306, type: !3910, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3902, !3912, !38, !38}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3914 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0EEEv", scope: !3892, file: !1279, line: 309, type: !3915, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3571, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3918 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb0EEcvyEv", scope: !3892, file: !1279, line: 315, type: !3919, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!374, !3917}
!3921 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEb", scope: !3892, file: !1279, line: 339, type: !3922, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!3924, !3902, !40}
!3924 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3892, size: 64)
!3925 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEc", scope: !3892, file: !1279, line: 340, type: !3926, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!3924, !3902, !61}
!3928 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEa", scope: !3892, file: !1279, line: 341, type: !3929, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!3924, !3902, !66}
!3931 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEh", scope: !3892, file: !1279, line: 342, type: !3932, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!3924, !3902, !71}
!3934 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEs", scope: !3892, file: !1279, line: 343, type: !3935, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!3924, !3902, !28}
!3937 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEt", scope: !3892, file: !1279, line: 344, type: !3938, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!3924, !3902, !80}
!3940 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEi", scope: !3892, file: !1279, line: 345, type: !3941, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!3924, !3902, !38}
!3943 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEj", scope: !3892, file: !1279, line: 346, type: !3944, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!3924, !3902, !88}
!3946 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEl", scope: !3892, file: !1279, line: 347, type: !3947, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!3924, !3902, !93}
!3949 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEm", scope: !3892, file: !1279, line: 348, type: !3950, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!3924, !3902, !98}
!3952 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEx", scope: !3892, file: !1279, line: 349, type: !3953, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!3924, !3902, !368}
!3955 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEy", scope: !3892, file: !1279, line: 350, type: !3956, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!3924, !3902, !374}
!3958 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEDh", scope: !3892, file: !1279, line: 351, type: !3959, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3924, !3902, !378}
!3961 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEf", scope: !3892, file: !1279, line: 352, type: !3962, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!3924, !3902, !120}
!3964 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEd", scope: !3892, file: !1279, line: 353, type: !3965, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!3924, !3902, !124}
!3967 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEPKc", scope: !3892, file: !1279, line: 358, type: !3968, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!3924, !3902, !128}
!3970 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSERKS0_", scope: !3892, file: !1279, line: 375, type: !3971, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3924, !3902, !3903}
!3973 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0EE", scope: !3892, file: !1279, line: 443, type: !3974, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!3976, !3902, !3666}
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false> >", file: !1279, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb0EELi32E11ap_int_baseILi32ELb0EEE")
!3977 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb0EEcoEv", scope: !3892, file: !1279, line: 601, type: !3915, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!3978 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb0EEntEv", scope: !3892, file: !1279, line: 607, type: !3915, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!3979 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb0EEpsEv", scope: !3892, file: !1279, line: 613, type: !3915, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!3980 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb0EEngEv", scope: !3892, file: !1279, line: 619, type: !3915, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!3981 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb0EE3getEv", scope: !3892, file: !1279, line: 626, type: !3915, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!3982 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb0EE6lengthEv", scope: !3892, file: !1279, line: 637, type: !3983, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!38, !3917}
!3985 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb0EE6to_intEv", scope: !3892, file: !1279, line: 641, type: !3983, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!3986 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_uintEv", scope: !3892, file: !1279, line: 645, type: !3987, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!88, !3917}
!3989 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_longEv", scope: !3892, file: !1279, line: 651, type: !3990, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!93, !3917}
!3992 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", scope: !3892, file: !1279, line: 655, type: !3993, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!98, !3917}
!3995 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", scope: !3892, file: !1279, line: 661, type: !3996, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!368, !3917}
!3998 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", scope: !3892, file: !1279, line: 665, type: !3919, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!3999 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", scope: !3892, file: !1279, line: 671, type: !4000, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!40, !3917}
!4002 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", scope: !3892, file: !1279, line: 685, type: !4000, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!4003 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", scope: !3892, file: !1279, line: 699, type: !4000, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!4004 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_stringEa", scope: !3892, file: !1279, line: 720, type: !4005, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!1061, !3917, !66}
!4007 = !{!2028, !3585}
!4008 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEii", scope: !3571, file: !306, line: 1052, type: !4009, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!3892, !3591, !38, !38}
!4011 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEv", scope: !3571, file: !306, line: 1076, type: !4012, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!3892, !3596}
!4014 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEv", scope: !3571, file: !306, line: 1080, type: !4015, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!3892, !3591}
!4017 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb0EEclEii", scope: !3571, file: !306, line: 1084, type: !3890, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!4018 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb0EEclEii", scope: !3571, file: !306, line: 1088, type: !4009, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!4019 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb0EEixEi", scope: !3571, file: !306, line: 1126, type: !4020, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!4022, !3596, !38}
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, false>", file: !1279, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !4023, templateParams: !4007, identifier: "_ZTS10ap_bit_refILi32ELb0EE")
!4023 = !{!4024, !4027, !4028, !4034, !4038, !4043, !4047, !4048, !4052, !4055, !4058, !4061, !4064, !4067, !4070, !4073, !4076, !4079, !4082, !4085, !4088, !4091, !4094, !4097, !4098, !4101, !4102, !4105}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4022, file: !1279, line: 766, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4022, file: !1279, line: 765, baseType: !3571)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !4022, file: !1279, line: 767, baseType: !38, size: 32, offset: 64)
!4028 = !DISubprogram(name: "ap_bit_ref", scope: !4022, file: !1279, line: 771, type: !4029, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4034 = !DISubprogram(name: "ap_bit_ref", scope: !4022, file: !1279, line: 774, type: !4035, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !4031, !4037, !38}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4038 = !DISubprogram(name: "ap_bit_ref", scope: !4022, file: !1279, line: 776, type: !4039, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !4031, !4041, !38}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4043 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcvbEv", scope: !4022, file: !1279, line: 779, type: !4044, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!40, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4047 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EE7to_boolEv", scope: !4022, file: !1279, line: 780, type: !4044, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!4048 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEb", scope: !4022, file: !1279, line: 798, type: !4049, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!4051, !4031, !40}
!4051 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4022, size: 64)
!4052 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEc", scope: !4022, file: !1279, line: 799, type: !4053, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!4051, !4031, !61}
!4055 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEa", scope: !4022, file: !1279, line: 800, type: !4056, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!4051, !4031, !66}
!4058 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEh", scope: !4022, file: !1279, line: 801, type: !4059, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!4051, !4031, !71}
!4061 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEs", scope: !4022, file: !1279, line: 802, type: !4062, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!4051, !4031, !28}
!4064 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEt", scope: !4022, file: !1279, line: 803, type: !4065, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!4051, !4031, !80}
!4067 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEi", scope: !4022, file: !1279, line: 804, type: !4068, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!4051, !4031, !38}
!4070 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEj", scope: !4022, file: !1279, line: 805, type: !4071, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!4051, !4031, !88}
!4073 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEl", scope: !4022, file: !1279, line: 806, type: !4074, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!4051, !4031, !93}
!4076 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEm", scope: !4022, file: !1279, line: 807, type: !4077, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!4051, !4031, !98}
!4079 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEx", scope: !4022, file: !1279, line: 808, type: !4080, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!4051, !4031, !368}
!4082 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEy", scope: !4022, file: !1279, line: 809, type: !4083, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4051, !4031, !374}
!4085 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEDh", scope: !4022, file: !1279, line: 820, type: !4086, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!4051, !4031, !378}
!4088 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEf", scope: !4022, file: !1279, line: 821, type: !4089, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!4051, !4031, !120}
!4091 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEd", scope: !4022, file: !1279, line: 822, type: !4092, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!4051, !4031, !124}
!4094 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSERKS0_", scope: !4022, file: !1279, line: 839, type: !4095, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!4051, !4031, !4032}
!4097 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb0EE3getEv", scope: !4022, file: !1279, line: 959, type: !4044, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!4098 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb0EE3getEv", scope: !4022, file: !1279, line: 961, type: !4099, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!40, !4031}
!4101 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcoEv", scope: !4022, file: !1279, line: 968, type: !4044, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!4102 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb0EE6lengthEv", scope: !4022, file: !1279, line: 973, type: !4103, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!38, !4046}
!4105 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb0EE9to_stringEv", scope: !4022, file: !1279, line: 979, type: !4106, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!1061, !4046}
!4108 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb0EEixEi", scope: !3571, file: !306, line: 1142, type: !3769, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!4109 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE3bitEi", scope: !3571, file: !306, line: 1155, type: !4020, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!4110 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE3bitEi", scope: !3571, file: !306, line: 1170, type: !3769, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!4111 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17countLeadingZerosEv", scope: !3571, file: !306, line: 1193, type: !3589, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!4112 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10and_reduceEv", scope: !3571, file: !306, line: 1413, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!4113 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11nand_reduceEv", scope: !3571, file: !306, line: 1414, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!4114 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9or_reduceEv", scope: !3571, file: !306, line: 1415, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!4115 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10nor_reduceEv", scope: !3571, file: !306, line: 1416, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!4116 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10xor_reduceEv", scope: !3571, file: !306, line: 1417, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!4117 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11xnor_reduceEv", scope: !3571, file: !306, line: 1418, type: !3714, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!4118 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_stringEab", scope: !3571, file: !306, line: 1433, type: !4119, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!1061, !3591, !66, !40}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4122 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb1EEcvyEv", scope: !3546, file: !1279, line: 315, type: !4123, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!374, !4121}
!4125 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEb", scope: !3546, file: !1279, line: 339, type: !4126, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!4128, !3556, !40}
!4128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3546, size: 64)
!4129 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEc", scope: !3546, file: !1279, line: 340, type: !4130, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!4128, !3556, !61}
!4132 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEa", scope: !3546, file: !1279, line: 341, type: !4133, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!4128, !3556, !66}
!4135 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEh", scope: !3546, file: !1279, line: 342, type: !4136, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!4128, !3556, !71}
!4138 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEs", scope: !3546, file: !1279, line: 343, type: !4139, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!4128, !3556, !28}
!4141 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEt", scope: !3546, file: !1279, line: 344, type: !4142, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4128, !3556, !80}
!4144 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEi", scope: !3546, file: !1279, line: 345, type: !4145, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!4128, !3556, !38}
!4147 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEj", scope: !3546, file: !1279, line: 346, type: !4148, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!4128, !3556, !88}
!4150 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEl", scope: !3546, file: !1279, line: 347, type: !4151, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!4128, !3556, !93}
!4153 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEm", scope: !3546, file: !1279, line: 348, type: !4154, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!4128, !3556, !98}
!4156 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEx", scope: !3546, file: !1279, line: 349, type: !4157, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!4128, !3556, !368}
!4159 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEy", scope: !3546, file: !1279, line: 350, type: !4160, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!4128, !3556, !374}
!4162 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEDh", scope: !3546, file: !1279, line: 351, type: !4163, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!4128, !3556, !378}
!4165 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEf", scope: !3546, file: !1279, line: 352, type: !4166, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!4128, !3556, !120}
!4168 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEd", scope: !3546, file: !1279, line: 353, type: !4169, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!4128, !3556, !124}
!4171 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEPKc", scope: !3546, file: !1279, line: 358, type: !4172, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!4128, !3556, !128}
!4174 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSERKS0_", scope: !3546, file: !1279, line: 375, type: !4175, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!4128, !3556, !3557}
!4177 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb1EEcmER11ap_int_baseILi32ELb1EE", scope: !3546, file: !1279, line: 443, type: !4178, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4180, !3556, !1817}
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, true>, 32, ap_int_base<32, true> >", file: !1279, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb1EELi32E11ap_int_baseILi32ELb1EEE")
!4181 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb1EEcoEv", scope: !3546, file: !1279, line: 601, type: !3569, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!4182 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb1EEntEv", scope: !3546, file: !1279, line: 607, type: !3569, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!4183 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb1EEpsEv", scope: !3546, file: !1279, line: 613, type: !3569, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!4184 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb1EEngEv", scope: !3546, file: !1279, line: 619, type: !3569, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!4185 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb1EE3getEv", scope: !3546, file: !1279, line: 626, type: !3569, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!4186 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb1EE6lengthEv", scope: !3546, file: !1279, line: 637, type: !4187, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!38, !4121}
!4189 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb1EE6to_intEv", scope: !3546, file: !1279, line: 641, type: !4187, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!4190 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_uintEv", scope: !3546, file: !1279, line: 645, type: !4191, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!88, !4121}
!4193 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_longEv", scope: !3546, file: !1279, line: 651, type: !4194, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!93, !4121}
!4196 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_ulongEv", scope: !3546, file: !1279, line: 655, type: !4197, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!98, !4121}
!4199 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_int64Ev", scope: !3546, file: !1279, line: 661, type: !4200, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!368, !4121}
!4202 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_uint64Ev", scope: !3546, file: !1279, line: 665, type: !4123, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!4203 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10and_reduceEv", scope: !3546, file: !1279, line: 671, type: !4204, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!40, !4121}
!4206 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE9or_reduceEv", scope: !3546, file: !1279, line: 685, type: !4204, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!4207 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10xor_reduceEv", scope: !3546, file: !1279, line: 699, type: !4204, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!4208 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_stringEa", scope: !3546, file: !1279, line: 720, type: !4209, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!1061, !4121, !66}
!4211 = !{!2028, !39}
!4212 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEii", scope: !1722, file: !21, line: 1098, type: !4213, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!3546, !1742, !38, !38}
!4215 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEv", scope: !1722, file: !21, line: 1122, type: !4216, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!3546, !1747}
!4218 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEv", scope: !1722, file: !21, line: 1126, type: !4219, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!3546, !1742}
!4221 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb1EEclEii", scope: !1722, file: !21, line: 1130, type: !3544, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!4222 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb1EEclEii", scope: !1722, file: !21, line: 1134, type: !4213, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!4223 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb1EEixEi", scope: !1722, file: !21, line: 1172, type: !4224, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!4226, !1747, !38}
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, true>", file: !1279, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !4227, templateParams: !4211, identifier: "_ZTS10ap_bit_refILi32ELb1EE")
!4227 = !{!4228, !4231, !4232, !4238, !4242, !4247, !4251, !4252, !4256, !4259, !4262, !4265, !4268, !4271, !4274, !4277, !4280, !4283, !4286, !4289, !4292, !4295, !4298, !4301, !4302, !4305, !4306, !4309}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4226, file: !1279, line: 766, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4226, file: !1279, line: 765, baseType: !1722)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !4226, file: !1279, line: 767, baseType: !38, size: 32, offset: 64)
!4232 = !DISubprogram(name: "ap_bit_ref", scope: !4226, file: !1279, line: 771, type: !4233, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4235, !4236}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4238 = !DISubprogram(name: "ap_bit_ref", scope: !4226, file: !1279, line: 774, type: !4239, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !4235, !4241, !38}
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4242 = !DISubprogram(name: "ap_bit_ref", scope: !4226, file: !1279, line: 776, type: !4243, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !4235, !4245, !38}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4230)
!4247 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcvbEv", scope: !4226, file: !1279, line: 779, type: !4248, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!40, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4251 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EE7to_boolEv", scope: !4226, file: !1279, line: 780, type: !4248, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!4252 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEb", scope: !4226, file: !1279, line: 798, type: !4253, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!4255, !4235, !40}
!4255 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4226, size: 64)
!4256 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEc", scope: !4226, file: !1279, line: 799, type: !4257, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!4255, !4235, !61}
!4259 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEa", scope: !4226, file: !1279, line: 800, type: !4260, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4255, !4235, !66}
!4262 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEh", scope: !4226, file: !1279, line: 801, type: !4263, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!4255, !4235, !71}
!4265 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEs", scope: !4226, file: !1279, line: 802, type: !4266, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!4255, !4235, !28}
!4268 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEt", scope: !4226, file: !1279, line: 803, type: !4269, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!4255, !4235, !80}
!4271 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEi", scope: !4226, file: !1279, line: 804, type: !4272, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4255, !4235, !38}
!4274 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEj", scope: !4226, file: !1279, line: 805, type: !4275, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!4255, !4235, !88}
!4277 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEl", scope: !4226, file: !1279, line: 806, type: !4278, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!4255, !4235, !93}
!4280 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEm", scope: !4226, file: !1279, line: 807, type: !4281, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!4255, !4235, !98}
!4283 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEx", scope: !4226, file: !1279, line: 808, type: !4284, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4255, !4235, !368}
!4286 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEy", scope: !4226, file: !1279, line: 809, type: !4287, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!4255, !4235, !374}
!4289 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEDh", scope: !4226, file: !1279, line: 820, type: !4290, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!4255, !4235, !378}
!4292 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEf", scope: !4226, file: !1279, line: 821, type: !4293, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!4255, !4235, !120}
!4295 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEd", scope: !4226, file: !1279, line: 822, type: !4296, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!4255, !4235, !124}
!4298 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSERKS0_", scope: !4226, file: !1279, line: 839, type: !4299, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!4255, !4235, !4236}
!4301 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb1EE3getEv", scope: !4226, file: !1279, line: 959, type: !4248, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!4302 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb1EE3getEv", scope: !4226, file: !1279, line: 961, type: !4303, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!40, !4235}
!4305 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcoEv", scope: !4226, file: !1279, line: 968, type: !4248, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!4306 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb1EE6lengthEv", scope: !4226, file: !1279, line: 973, type: !4307, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!38, !4250}
!4309 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb1EE9to_stringEv", scope: !4226, file: !1279, line: 979, type: !4310, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1061, !4250}
!4312 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb1EEixEi", scope: !1722, file: !21, line: 1188, type: !1917, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!4313 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE3bitEi", scope: !1722, file: !21, line: 1201, type: !4224, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!4314 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE3bitEi", scope: !1722, file: !21, line: 1216, type: !1917, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!4315 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17countLeadingZerosEv", scope: !1722, file: !21, line: 1239, type: !1740, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!4316 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10and_reduceEv", scope: !1722, file: !21, line: 1459, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!4317 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11nand_reduceEv", scope: !1722, file: !21, line: 1460, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!4318 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9or_reduceEv", scope: !1722, file: !21, line: 1461, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!4319 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10nor_reduceEv", scope: !1722, file: !21, line: 1462, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!4320 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10xor_reduceEv", scope: !1722, file: !21, line: 1463, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!4321 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11xnor_reduceEv", scope: !1722, file: !21, line: 1464, type: !1862, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!4322 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_stringEab", scope: !1722, file: !21, line: 1479, type: !4323, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!1061, !1742, !66, !40}
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !4326, file: !21, line: 174, baseType: !194)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<48, true>", file: !21, line: 154, size: 64, flags: DIFlagTypePassByValue, elements: !4327, templateParams: !4682, identifier: "_ZTS11ap_int_baseILi48ELb1EE")
!4327 = !{!4328, !4342, !4343, !4344, !4349, !4353, !4356, !4359, !4362, !4365, !4368, !4371, !4374, !4377, !4380, !4383, !4386, !4389, !4392, !4395, !4398, !4401, !4404, !4409, !4413, !4418, !4419, !4423, !4426, !4429, !4432, !4435, !4438, !4441, !4444, !4447, !4450, !4453, !4456, !4459, !4462, !4465, !4468, !4471, !4474, !4477, !4480, !4483, !4484, !4487, !4490, !4493, !4496, !4499, !4502, !4505, !4508, !4512, !4513, !4514, !4515, !4516, !4519, !4520, !4523, !4526, !4527, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4539, !4540, !4541, !4634, !4635, !4638, !4648, !4649, !4650, !4654, !4657, !4660, !4663, !4664, !4665, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679}
!4328 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4326, baseType: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<48, true>", file: !25, line: 555, size: 64, flags: DIFlagTypePassByValue, elements: !4330, templateParams: !4340, identifier: "_ZTS8ssdm_intILi48ELb1EE")
!4330 = !{!4331, !4333, !4337}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !4329, file: !25, line: 557, baseType: !4332, size: 48, align: 64)
!4332 = !DIBasicType(name: "int48", size: 48, encoding: DW_ATE_signed)
!4333 = !DISubprogram(name: "ssdm_int", scope: !4329, file: !25, line: 558, type: !4334, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4336}
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4337 = !DISubprogram(name: "ssdm_int", scope: !4329, file: !25, line: 559, type: !4338, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4336, !4332}
!4340 = !{!4341, !39}
!4341 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 48)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4326, file: !21, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 48)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !4326, file: !21, line: 177, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!4344 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi48ELb1EE16countLeadingOnesEv", scope: !4326, file: !21, line: 156, type: !4345, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!38, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4349 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 221, type: !4350, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{null, !4352}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4353 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 254, type: !4354, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !4352, !44}
!4356 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 255, type: !4357, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4352, !60}
!4359 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 256, type: !4360, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4352, !65}
!4362 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 257, type: !4363, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4352, !70}
!4365 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 258, type: !4366, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4352, !75}
!4368 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 259, type: !4369, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4352, !79}
!4371 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 260, type: !4372, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !4352, !42}
!4374 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 261, type: !4375, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !4352, !87}
!4377 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 262, type: !4378, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !4352, !92}
!4380 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 263, type: !4381, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4352, !97}
!4383 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 264, type: !4384, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4352, !102}
!4386 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 265, type: !4387, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !4352, !109}
!4389 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 270, type: !4390, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !4352, !115}
!4392 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 276, type: !4393, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !4352, !120}
!4395 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 335, type: !4396, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4352, !124}
!4398 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 431, type: !4399, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !4352, !128}
!4401 = !DISubprogram(name: "ap_int_base", scope: !4326, file: !21, line: 437, type: !4402, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !4352, !128, !66}
!4404 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi48ELb1EE4readEv", scope: !4326, file: !21, line: 459, type: !4405, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!4326, !4407}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4408 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4326)
!4409 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi48ELb1EE5writeERKS0_", scope: !4326, file: !21, line: 466, type: !4410, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !4407, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4348, size: 64)
!4413 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi48ELb1EEaSERVKS0_", scope: !4326, file: !21, line: 478, type: !4414, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4407, !4416}
!4416 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4408)
!4418 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi48ELb1EEaSERKS0_", scope: !4326, file: !21, line: 488, type: !4410, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!4419 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSERVKS0_", scope: !4326, file: !21, line: 505, type: !4420, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4422, !4352, !4416}
!4422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4326, size: 64)
!4423 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSERKS0_", scope: !4326, file: !21, line: 511, type: !4424, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!4422, !4352, !4412}
!4426 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEb", scope: !4326, file: !21, line: 525, type: !4427, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!4422, !4352, !40}
!4429 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEc", scope: !4326, file: !21, line: 526, type: !4430, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!4422, !4352, !61}
!4432 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEa", scope: !4326, file: !21, line: 527, type: !4433, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!4422, !4352, !66}
!4435 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEh", scope: !4326, file: !21, line: 528, type: !4436, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!4422, !4352, !71}
!4438 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEs", scope: !4326, file: !21, line: 529, type: !4439, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!4422, !4352, !28}
!4441 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEt", scope: !4326, file: !21, line: 530, type: !4442, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4422, !4352, !80}
!4444 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEi", scope: !4326, file: !21, line: 531, type: !4445, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4422, !4352, !38}
!4447 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEj", scope: !4326, file: !21, line: 532, type: !4448, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!4422, !4352, !88}
!4450 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEl", scope: !4326, file: !21, line: 533, type: !4451, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!4422, !4352, !93}
!4453 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEm", scope: !4326, file: !21, line: 534, type: !4454, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!4422, !4352, !98}
!4456 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEx", scope: !4326, file: !21, line: 535, type: !4457, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!4422, !4352, !103}
!4459 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb1EEaSEy", scope: !4326, file: !21, line: 536, type: !4460, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4422, !4352, !110}
!4462 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi48ELb1EEcvxEv", scope: !4326, file: !21, line: 587, type: !4463, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!4325, !4347}
!4465 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7to_boolEv", scope: !4326, file: !21, line: 592, type: !4466, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!40, !4347}
!4468 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7to_charEv", scope: !4326, file: !21, line: 593, type: !4469, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!61, !4347}
!4471 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_scharEv", scope: !4326, file: !21, line: 594, type: !4472, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!66, !4347}
!4474 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_ucharEv", scope: !4326, file: !21, line: 595, type: !4475, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!71, !4347}
!4477 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_shortEv", scope: !4326, file: !21, line: 596, type: !4478, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!28, !4347}
!4480 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi48ELb1EE9to_ushortEv", scope: !4326, file: !21, line: 597, type: !4481, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!80, !4347}
!4483 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi48ELb1EE6to_intEv", scope: !4326, file: !21, line: 598, type: !4345, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!4484 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7to_uintEv", scope: !4326, file: !21, line: 599, type: !4485, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!88, !4347}
!4487 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7to_longEv", scope: !4326, file: !21, line: 600, type: !4488, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!93, !4347}
!4490 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_ulongEv", scope: !4326, file: !21, line: 601, type: !4491, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!98, !4347}
!4493 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_int64Ev", scope: !4326, file: !21, line: 602, type: !4494, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!103, !4347}
!4496 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi48ELb1EE9to_uint64Ev", scope: !4326, file: !21, line: 603, type: !4497, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!110, !4347}
!4499 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7to_halfEv", scope: !4326, file: !21, line: 604, type: !4500, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!115, !4347}
!4502 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi48ELb1EE8to_floatEv", scope: !4326, file: !21, line: 605, type: !4503, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!120, !4347}
!4505 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi48ELb1EE9to_doubleEv", scope: !4326, file: !21, line: 606, type: !4506, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!124, !4347}
!4508 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi48ELb1EE6lengthEv", scope: !4326, file: !21, line: 630, type: !4509, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!38, !4511}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4512 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi48ELb1EE6lengthEv", scope: !4326, file: !21, line: 631, type: !4345, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!4513 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi48ELb1EE6iszeroEv", scope: !4326, file: !21, line: 634, type: !4466, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!4514 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7is_zeroEv", scope: !4326, file: !21, line: 637, type: !4466, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!4515 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi48ELb1EE4signEv", scope: !4326, file: !21, line: 640, type: !4466, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!4516 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi48ELb1EE5clearEi", scope: !4326, file: !21, line: 649, type: !4517, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{null, !4352, !38}
!4519 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi48ELb1EE6invertEi", scope: !4326, file: !21, line: 655, type: !4517, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!4520 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi48ELb1EE4testEi", scope: !4326, file: !21, line: 664, type: !4521, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!40, !4347, !38}
!4523 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi48ELb1EE3getEv", scope: !4326, file: !21, line: 670, type: !4524, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!4422, !4352}
!4526 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi48ELb1EE3setEi", scope: !4326, file: !21, line: 673, type: !4517, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!4527 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi48ELb1EE3setEib", scope: !4326, file: !21, line: 679, type: !4528, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{null, !4352, !38, !40}
!4530 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi48ELb1EE7lrotateEi", scope: !4326, file: !21, line: 686, type: !4445, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!4531 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi48ELb1EE7rrotateEi", scope: !4326, file: !21, line: 701, type: !4445, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!4532 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi48ELb1EE7reverseEv", scope: !4326, file: !21, line: 716, type: !4524, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!4533 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi48ELb1EE7set_bitEib", scope: !4326, file: !21, line: 722, type: !4528, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!4534 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi48ELb1EE7get_bitEi", scope: !4326, file: !21, line: 727, type: !4521, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!4535 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi48ELb1EE5b_notEv", scope: !4326, file: !21, line: 732, type: !4350, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!4536 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi48ELb1EE17checkOverflowCsimEibb", scope: !4326, file: !21, line: 806, type: !4537, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!40, !4347, !38, !40, !40}
!4539 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi48ELb1EEppEv", scope: !4326, file: !21, line: 911, type: !4524, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!4540 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi48ELb1EEmmEv", scope: !4326, file: !21, line: 915, type: !4524, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!4541 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi48ELb1EEppEi", scope: !4326, file: !21, line: 923, type: !4542, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!4544, !4352, !38}
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !4546, file: !21, line: 213, baseType: !4549)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<48, true>", scope: !4326, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !4547, identifier: "_ZTSN11ap_int_baseILi48ELb1EE5RTypeILi48ELb1EEE")
!4547 = !{!4548, !282}
!4548 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 48)
!4549 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4550, file: !21, line: 149, baseType: !4551)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<48, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !4547, identifier: "_ZTS15_ap_int_factoryILi48ELb1EE")
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<48>", file: !17, line: 64, size: 64, flags: DIFlagTypePassByValue, elements: !4552, templateParams: !4632, identifier: "_ZTS6ap_intILi48EE")
!4552 = !{!4553, !4554, !4558, !4562, !4565, !4568, !4571, !4574, !4577, !4580, !4583, !4586, !4589, !4592, !4595, !4598, !4601, !4604, !4607, !4610, !4613, !4619, !4625, !4629}
!4553 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4551, baseType: !4326)
!4554 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 67, type: !4555, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{null, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4558 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 103, type: !4559, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4557, !4561, !40}
!4561 = !DIBasicType(name: "uint48", size: 48, encoding: DW_ATE_unsigned)
!4562 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 173, type: !4563, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4557, !40}
!4565 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 174, type: !4566, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4557, !61}
!4568 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 175, type: !4569, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{null, !4557, !66}
!4571 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 176, type: !4572, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4557, !71}
!4574 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 177, type: !4575, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4557, !28}
!4577 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 178, type: !4578, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !4557, !80}
!4580 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 179, type: !4581, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{null, !4557, !38}
!4583 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 180, type: !4584, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4557, !88}
!4586 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 181, type: !4587, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !4557, !93}
!4589 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 182, type: !4590, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{null, !4557, !98}
!4592 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 183, type: !4593, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4557, !103}
!4595 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 184, type: !4596, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4557, !110}
!4598 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 186, type: !4599, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !4557, !124}
!4601 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 187, type: !4602, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{null, !4557, !120}
!4604 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 188, type: !4605, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4557, !115}
!4607 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 191, type: !4608, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !4557, !128}
!4610 = !DISubprogram(name: "ap_int", scope: !4551, file: !17, line: 193, type: !4611, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{null, !4557, !128, !66}
!4613 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi48EEaSERKS0_", scope: !4551, file: !17, line: 198, type: !4614, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!4616, !4557, !4617}
!4616 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4551, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4619 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi48EEaSERVKS0_", scope: !4551, file: !17, line: 207, type: !4620, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!4616, !4557, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4551)
!4625 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi48EEaSERKS0_", scope: !4551, file: !17, line: 213, type: !4626, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !4628, !4617}
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4629 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi48EEaSERVKS0_", scope: !4551, file: !17, line: 217, type: !4630, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4628, !4622}
!4632 = !{!4633}
!4633 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 48)
!4634 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi48ELb1EEmmEi", scope: !4326, file: !21, line: 928, type: !4542, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!4635 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi48ELb1EEpsEv", scope: !4326, file: !21, line: 937, type: !4636, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!4545, !4347}
!4638 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi48ELb1EEngEv", scope: !4326, file: !21, line: 940, type: !4639, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!4641, !4347}
!4641 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !4642, file: !21, line: 209, baseType: !4643)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !4326, file: !21, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !294, identifier: "_ZTSN11ap_int_baseILi48ELb1EE5RTypeILi1ELb0EEE")
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4644, file: !21, line: 149, baseType: !4647)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<49, true>", file: !21, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !4645, identifier: "_ZTS15_ap_int_factoryILi49ELb1EE")
!4645 = !{!4646, !282}
!4646 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 49)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<49>", file: !104, line: 183, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi49EE")
!4648 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi48ELb1EEntEv", scope: !4326, file: !21, line: 947, type: !4466, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!4649 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi48ELb1EEcoEv", scope: !4326, file: !21, line: 953, type: !4636, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!4650 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi48ELb1EE5rangeEii", scope: !4326, file: !21, line: 1091, type: !4651, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4653, !4352, !38, !38}
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<48, true>", file: !104, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi48ELb1EE")
!4654 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi48ELb1EE5rangeEii", scope: !4326, file: !21, line: 1098, type: !4655, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!4653, !4347, !38, !38}
!4657 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi48ELb1EE5rangeEv", scope: !4326, file: !21, line: 1122, type: !4658, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!4653, !4352}
!4660 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi48ELb1EE5rangeEv", scope: !4326, file: !21, line: 1126, type: !4661, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4653, !4347}
!4663 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi48ELb1EEclEii", scope: !4326, file: !21, line: 1130, type: !4651, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!4664 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi48ELb1EEclEii", scope: !4326, file: !21, line: 1134, type: !4655, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!4665 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi48ELb1EEixEi", scope: !4326, file: !21, line: 1172, type: !4666, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4668, !4352, !38}
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<48, true>", file: !104, line: 192, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi48ELb1EE")
!4669 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi48ELb1EEixEi", scope: !4326, file: !21, line: 1188, type: !4521, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!4670 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi48ELb1EE3bitEi", scope: !4326, file: !21, line: 1201, type: !4666, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!4671 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi48ELb1EE3bitEi", scope: !4326, file: !21, line: 1216, type: !4521, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!4672 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi48ELb1EE17countLeadingZerosEv", scope: !4326, file: !21, line: 1239, type: !4345, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!4673 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE10and_reduceEv", scope: !4326, file: !21, line: 1459, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!4674 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE11nand_reduceEv", scope: !4326, file: !21, line: 1460, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!4675 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE9or_reduceEv", scope: !4326, file: !21, line: 1461, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!4676 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE10nor_reduceEv", scope: !4326, file: !21, line: 1462, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!4677 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE10xor_reduceEv", scope: !4326, file: !21, line: 1463, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!4678 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi48ELb1EE11xnor_reduceEv", scope: !4326, file: !21, line: 1464, type: !4466, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!4679 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi48ELb1EE9to_stringEab", scope: !4326, file: !21, line: 1479, type: !4680, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!1061, !4347, !66, !40}
!4682 = !{!4633, !39}
!4683 = !{!4684, !4686, !4688, !4690, !4692, !4694}
!4684 = !DIGlobalVariableExpression(var: !4685, expr: !DIExpression(DW_OP_constu, 35000, DW_OP_stack_value))
!4685 = distinct !DIGlobalVariable(name: "N", scope: !1719, file: !7, line: 4, type: !42, isLocal: true, isDefinition: true)
!4686 = !DIGlobalVariableExpression(var: !4687, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!4687 = distinct !DIGlobalVariable(name: "K", scope: !1719, file: !7, line: 5, type: !42, isLocal: true, isDefinition: true)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!4689 = distinct !DIGlobalVariable(name: "F", scope: !1719, file: !7, line: 6, type: !42, isLocal: true, isDefinition: true)
!4690 = !DIGlobalVariableExpression(var: !4691, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!4691 = distinct !DIGlobalVariable(name: "P", scope: !1719, file: !7, line: 8, type: !42, isLocal: true, isDefinition: true)
!4692 = !DIGlobalVariableExpression(var: !4693, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!4693 = distinct !DIGlobalVariable(name: "D", scope: !1719, file: !7, line: 9, type: !42, isLocal: true, isDefinition: true)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!4695 = distinct !DIGlobalVariable(name: "S", scope: !1719, file: !7, line: 7, type: !42, isLocal: true, isDefinition: true)
!4696 = !DILocation(line: 105, column: 5, scope: !6)
!4697 = distinct !{!4697, !4698}
!4698 = !{!"llvm.loop.rotate.disable"}
