#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 35000
#define N_INPUT_2_1 1
#define N_OUTPUTS_2 1090
#define N_FILT_2 32
#define N_OUTPUTS_5 545
#define N_FILT_5 32
#define N_OUTPUTS_6 31
#define N_FILT_6 32
#define N_OUTPUTS_9 15
#define N_FILT_9 32
#define N_SIZE_1_10 480
#define N_LAYER_11 9
#define N_LAYER_14 3

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer2_t;
typedef ap_fixed<16,6> conv1d_weight_t;
typedef ap_fixed<16,6> conv1d_bias_t;
typedef ap_fixed<16,6> conv1d_linear_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 32*1> layer3_t;
typedef ap_fixed<16,6> re_lu_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 32*1> layer4_t;
typedef ap_fixed<16,6> average_pooling1d_default_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer5_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer6_t;
typedef ap_fixed<16,6> conv1d_1_weight_t;
typedef ap_fixed<16,6> conv1d_1_bias_t;
typedef ap_fixed<16,6> conv1d_1_linear_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 32*1> layer7_t;
typedef ap_fixed<16,6> re_lu_1_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 32*1> layer8_t;
typedef ap_fixed<16,6> average_pooling1d_1_default_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer9_t;
typedef nnet::array<ap_fixed<16,6>, 9*1> layer11_t;
typedef ap_fixed<16,6> dense_weight_t;
typedef ap_fixed<16,6> dense_bias_t;
typedef ap_fixed<16,6> dense_linear_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 9*1> layer12_t;
typedef ap_fixed<16,6> re_lu_2_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 9*1> layer13_t;
typedef nnet::array<ap_fixed<16,6>, 3*1> layer14_t;
typedef ap_fixed<16,6> output_dense_weight_t;
typedef ap_fixed<16,6> output_dense_bias_t;
typedef ap_fixed<16,6> output_dense_linear_default_t;
typedef nnet::array<ap_fixed<16,6,AP_RND,AP_SAT>, 3*1> layer15_t;
typedef ap_fixed<16,6> output_softmax_default_t;
typedef nnet::array<ap_fixed<16,6>, 3*1> result_t;

#endif
