//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &conv1d_input,
    hls::stream<result_t> &layer16_out,
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {

    //hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=conv1d_input,layer16_out 
    #pragma HLS DATAFLOW 

    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1;
    const_size_out_1 = N_LAYER_14;

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<conv1d_weight_t, 4096>(w2, "w2.txt");
        nnet::load_weights_from_txt<conv1d_bias_t, 32>(b2, "b2.txt");
        nnet::load_weights_from_txt<conv1d_1_weight_t, 65536>(w6, "w6.txt");
        nnet::load_weights_from_txt<conv1d_1_bias_t, 32>(b6, "b6.txt");
        nnet::load_weights_from_txt<dense_weight_t, 4320>(w11, "w11.txt");
        nnet::load_weights_from_txt<dense_bias_t, 9>(b11, "b11.txt");
        nnet::load_weights_from_txt<output_dense_weight_t, 27>(w14, "w14.txt");
        nnet::load_weights_from_txt<output_dense_bias_t, 3>(b14, "b14.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=1090
    nnet::conv_1d_cl<input_t, layer2_t, config2>(conv1d_input, layer2_out, w2, b2); // conv1d

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1090
    nnet::linear<layer2_t, layer3_t, linear_config3>(layer2_out, layer3_out); // conv1d_linear

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=1090
    nnet::relu<layer3_t, layer4_t, ReLU_config4>(layer3_out, layer4_out); // re_lu

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=545
    nnet::pooling1d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // average_pooling1d

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=31
    nnet::conv_1d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // conv1d_1

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=31
    nnet::linear<layer6_t, layer7_t, linear_config7>(layer6_out, layer7_out); // conv1d_1_linear

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=31
    nnet::relu<layer7_t, layer8_t, ReLU_config8>(layer7_out, layer8_out); // re_lu_1

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=15
    nnet::pooling1d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // average_pooling1d_1

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=1
    nnet::dense<layer9_t, layer11_t, config11>(layer9_out, layer11_out, w11, b11); // dense

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=1
    nnet::linear<layer11_t, layer12_t, linear_config12>(layer11_out, layer12_out); // dense_linear

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1
    nnet::relu<layer12_t, layer13_t, ReLU_config13>(layer12_out, layer13_out); // re_lu_2

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=1
    nnet::dense<layer13_t, layer14_t, config14>(layer13_out, layer14_out, w14, b14); // output_dense

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=1
    nnet::linear<layer14_t, layer15_t, linear_config15>(layer14_out, layer15_out); // output_dense_linear

    nnet::softmax<layer15_t, result_t, Softmax_config16>(layer15_out, layer16_out); // output_softmax

}
