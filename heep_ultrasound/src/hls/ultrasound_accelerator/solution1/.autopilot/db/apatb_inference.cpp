#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_input_r "../tv/cdatafile/c.inference.autotvin_input_r.dat"
#define AUTOTB_TVOUT_input_r "../tv/cdatafile/c.inference.autotvout_input_r.dat"
#define WRAPC_STREAM_SIZE_IN_input_r "../tv/stream_size/stream_size_in_input_r.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_r "../tv/stream_size/stream_ingress_status_input_r.dat"
#define AUTOTB_TVIN_output_r "../tv/cdatafile/c.inference.autotvin_output_r.dat"
#define AUTOTB_TVOUT_output_r "../tv/cdatafile/c.inference.autotvout_output_r.dat"
#define WRAPC_STREAM_SIZE_OUT_output_r "../tv/stream_size/stream_size_out_output_r.dat"
#define WRAPC_STREAM_EGRESS_STATUS_output_r "../tv/stream_size/stream_egress_status_output_r.dat"
#define AUTOTB_TVIN_conv_weights_0 "../tv/cdatafile/c.inference.autotvin_conv_weights_0.dat"
#define AUTOTB_TVOUT_conv_weights_0 "../tv/cdatafile/c.inference.autotvout_conv_weights_0.dat"
#define AUTOTB_TVIN_conv_weights_1 "../tv/cdatafile/c.inference.autotvin_conv_weights_1.dat"
#define AUTOTB_TVOUT_conv_weights_1 "../tv/cdatafile/c.inference.autotvout_conv_weights_1.dat"
#define AUTOTB_TVIN_conv_weights_2 "../tv/cdatafile/c.inference.autotvin_conv_weights_2.dat"
#define AUTOTB_TVOUT_conv_weights_2 "../tv/cdatafile/c.inference.autotvout_conv_weights_2.dat"
#define AUTOTB_TVIN_conv_weights_3 "../tv/cdatafile/c.inference.autotvin_conv_weights_3.dat"
#define AUTOTB_TVOUT_conv_weights_3 "../tv/cdatafile/c.inference.autotvout_conv_weights_3.dat"
#define AUTOTB_TVIN_conv_weights_4 "../tv/cdatafile/c.inference.autotvin_conv_weights_4.dat"
#define AUTOTB_TVOUT_conv_weights_4 "../tv/cdatafile/c.inference.autotvout_conv_weights_4.dat"
#define AUTOTB_TVIN_conv_weights_5 "../tv/cdatafile/c.inference.autotvin_conv_weights_5.dat"
#define AUTOTB_TVOUT_conv_weights_5 "../tv/cdatafile/c.inference.autotvout_conv_weights_5.dat"
#define AUTOTB_TVIN_conv_weights_6 "../tv/cdatafile/c.inference.autotvin_conv_weights_6.dat"
#define AUTOTB_TVOUT_conv_weights_6 "../tv/cdatafile/c.inference.autotvout_conv_weights_6.dat"
#define AUTOTB_TVIN_conv_weights_7 "../tv/cdatafile/c.inference.autotvin_conv_weights_7.dat"
#define AUTOTB_TVOUT_conv_weights_7 "../tv/cdatafile/c.inference.autotvout_conv_weights_7.dat"
#define AUTOTB_TVIN_conv_weights_8 "../tv/cdatafile/c.inference.autotvin_conv_weights_8.dat"
#define AUTOTB_TVOUT_conv_weights_8 "../tv/cdatafile/c.inference.autotvout_conv_weights_8.dat"
#define AUTOTB_TVIN_conv_weights_9 "../tv/cdatafile/c.inference.autotvin_conv_weights_9.dat"
#define AUTOTB_TVOUT_conv_weights_9 "../tv/cdatafile/c.inference.autotvout_conv_weights_9.dat"
#define AUTOTB_TVIN_conv_weights_10 "../tv/cdatafile/c.inference.autotvin_conv_weights_10.dat"
#define AUTOTB_TVOUT_conv_weights_10 "../tv/cdatafile/c.inference.autotvout_conv_weights_10.dat"
#define AUTOTB_TVIN_conv_weights_11 "../tv/cdatafile/c.inference.autotvin_conv_weights_11.dat"
#define AUTOTB_TVOUT_conv_weights_11 "../tv/cdatafile/c.inference.autotvout_conv_weights_11.dat"
#define AUTOTB_TVIN_conv_weights_12 "../tv/cdatafile/c.inference.autotvin_conv_weights_12.dat"
#define AUTOTB_TVOUT_conv_weights_12 "../tv/cdatafile/c.inference.autotvout_conv_weights_12.dat"
#define AUTOTB_TVIN_conv_weights_13 "../tv/cdatafile/c.inference.autotvin_conv_weights_13.dat"
#define AUTOTB_TVOUT_conv_weights_13 "../tv/cdatafile/c.inference.autotvout_conv_weights_13.dat"
#define AUTOTB_TVIN_conv_weights_14 "../tv/cdatafile/c.inference.autotvin_conv_weights_14.dat"
#define AUTOTB_TVOUT_conv_weights_14 "../tv/cdatafile/c.inference.autotvout_conv_weights_14.dat"
#define AUTOTB_TVIN_conv_weights_15 "../tv/cdatafile/c.inference.autotvin_conv_weights_15.dat"
#define AUTOTB_TVOUT_conv_weights_15 "../tv/cdatafile/c.inference.autotvout_conv_weights_15.dat"
#define AUTOTB_TVIN_conv_biases_0 "../tv/cdatafile/c.inference.autotvin_conv_biases_0.dat"
#define AUTOTB_TVOUT_conv_biases_0 "../tv/cdatafile/c.inference.autotvout_conv_biases_0.dat"
#define AUTOTB_TVIN_conv_biases_1 "../tv/cdatafile/c.inference.autotvin_conv_biases_1.dat"
#define AUTOTB_TVOUT_conv_biases_1 "../tv/cdatafile/c.inference.autotvout_conv_biases_1.dat"
#define AUTOTB_TVIN_conv_biases_2 "../tv/cdatafile/c.inference.autotvin_conv_biases_2.dat"
#define AUTOTB_TVOUT_conv_biases_2 "../tv/cdatafile/c.inference.autotvout_conv_biases_2.dat"
#define AUTOTB_TVIN_conv_biases_3 "../tv/cdatafile/c.inference.autotvin_conv_biases_3.dat"
#define AUTOTB_TVOUT_conv_biases_3 "../tv/cdatafile/c.inference.autotvout_conv_biases_3.dat"
#define AUTOTB_TVIN_conv_biases_4 "../tv/cdatafile/c.inference.autotvin_conv_biases_4.dat"
#define AUTOTB_TVOUT_conv_biases_4 "../tv/cdatafile/c.inference.autotvout_conv_biases_4.dat"
#define AUTOTB_TVIN_conv_biases_5 "../tv/cdatafile/c.inference.autotvin_conv_biases_5.dat"
#define AUTOTB_TVOUT_conv_biases_5 "../tv/cdatafile/c.inference.autotvout_conv_biases_5.dat"
#define AUTOTB_TVIN_conv_biases_6 "../tv/cdatafile/c.inference.autotvin_conv_biases_6.dat"
#define AUTOTB_TVOUT_conv_biases_6 "../tv/cdatafile/c.inference.autotvout_conv_biases_6.dat"
#define AUTOTB_TVIN_conv_biases_7 "../tv/cdatafile/c.inference.autotvin_conv_biases_7.dat"
#define AUTOTB_TVOUT_conv_biases_7 "../tv/cdatafile/c.inference.autotvout_conv_biases_7.dat"
#define AUTOTB_TVIN_conv_biases_8 "../tv/cdatafile/c.inference.autotvin_conv_biases_8.dat"
#define AUTOTB_TVOUT_conv_biases_8 "../tv/cdatafile/c.inference.autotvout_conv_biases_8.dat"
#define AUTOTB_TVIN_conv_biases_9 "../tv/cdatafile/c.inference.autotvin_conv_biases_9.dat"
#define AUTOTB_TVOUT_conv_biases_9 "../tv/cdatafile/c.inference.autotvout_conv_biases_9.dat"
#define AUTOTB_TVIN_conv_biases_10 "../tv/cdatafile/c.inference.autotvin_conv_biases_10.dat"
#define AUTOTB_TVOUT_conv_biases_10 "../tv/cdatafile/c.inference.autotvout_conv_biases_10.dat"
#define AUTOTB_TVIN_conv_biases_11 "../tv/cdatafile/c.inference.autotvin_conv_biases_11.dat"
#define AUTOTB_TVOUT_conv_biases_11 "../tv/cdatafile/c.inference.autotvout_conv_biases_11.dat"
#define AUTOTB_TVIN_conv_biases_12 "../tv/cdatafile/c.inference.autotvin_conv_biases_12.dat"
#define AUTOTB_TVOUT_conv_biases_12 "../tv/cdatafile/c.inference.autotvout_conv_biases_12.dat"
#define AUTOTB_TVIN_conv_biases_13 "../tv/cdatafile/c.inference.autotvin_conv_biases_13.dat"
#define AUTOTB_TVOUT_conv_biases_13 "../tv/cdatafile/c.inference.autotvout_conv_biases_13.dat"
#define AUTOTB_TVIN_conv_biases_14 "../tv/cdatafile/c.inference.autotvin_conv_biases_14.dat"
#define AUTOTB_TVOUT_conv_biases_14 "../tv/cdatafile/c.inference.autotvout_conv_biases_14.dat"
#define AUTOTB_TVIN_conv_biases_15 "../tv/cdatafile/c.inference.autotvin_conv_biases_15.dat"
#define AUTOTB_TVOUT_conv_biases_15 "../tv/cdatafile/c.inference.autotvout_conv_biases_15.dat"
#define AUTOTB_TVIN_pool_size "../tv/cdatafile/c.inference.autotvin_pool_size.dat"
#define AUTOTB_TVOUT_pool_size "../tv/cdatafile/c.inference.autotvout_pool_size.dat"
#define AUTOTB_TVIN_pool_stride "../tv/cdatafile/c.inference.autotvin_pool_stride.dat"
#define AUTOTB_TVOUT_pool_stride "../tv/cdatafile/c.inference.autotvout_pool_stride.dat"
#define AUTOTB_TVIN_linear_weights_0 "../tv/cdatafile/c.inference.autotvin_linear_weights_0.dat"
#define AUTOTB_TVOUT_linear_weights_0 "../tv/cdatafile/c.inference.autotvout_linear_weights_0.dat"
#define AUTOTB_TVIN_linear_weights_1 "../tv/cdatafile/c.inference.autotvin_linear_weights_1.dat"
#define AUTOTB_TVOUT_linear_weights_1 "../tv/cdatafile/c.inference.autotvout_linear_weights_1.dat"
#define AUTOTB_TVIN_linear_weights_2 "../tv/cdatafile/c.inference.autotvin_linear_weights_2.dat"
#define AUTOTB_TVOUT_linear_weights_2 "../tv/cdatafile/c.inference.autotvout_linear_weights_2.dat"
#define AUTOTB_TVIN_linear_weights_3 "../tv/cdatafile/c.inference.autotvin_linear_weights_3.dat"
#define AUTOTB_TVOUT_linear_weights_3 "../tv/cdatafile/c.inference.autotvout_linear_weights_3.dat"
#define AUTOTB_TVIN_linear_weights_4 "../tv/cdatafile/c.inference.autotvin_linear_weights_4.dat"
#define AUTOTB_TVOUT_linear_weights_4 "../tv/cdatafile/c.inference.autotvout_linear_weights_4.dat"
#define AUTOTB_TVIN_linear_weights_5 "../tv/cdatafile/c.inference.autotvin_linear_weights_5.dat"
#define AUTOTB_TVOUT_linear_weights_5 "../tv/cdatafile/c.inference.autotvout_linear_weights_5.dat"
#define AUTOTB_TVIN_linear_weights_6 "../tv/cdatafile/c.inference.autotvin_linear_weights_6.dat"
#define AUTOTB_TVOUT_linear_weights_6 "../tv/cdatafile/c.inference.autotvout_linear_weights_6.dat"
#define AUTOTB_TVIN_linear_weights_7 "../tv/cdatafile/c.inference.autotvin_linear_weights_7.dat"
#define AUTOTB_TVOUT_linear_weights_7 "../tv/cdatafile/c.inference.autotvout_linear_weights_7.dat"
#define AUTOTB_TVIN_linear_weights_8 "../tv/cdatafile/c.inference.autotvin_linear_weights_8.dat"
#define AUTOTB_TVOUT_linear_weights_8 "../tv/cdatafile/c.inference.autotvout_linear_weights_8.dat"
#define AUTOTB_TVIN_linear_weights_9 "../tv/cdatafile/c.inference.autotvin_linear_weights_9.dat"
#define AUTOTB_TVOUT_linear_weights_9 "../tv/cdatafile/c.inference.autotvout_linear_weights_9.dat"
#define AUTOTB_TVIN_linear_weights_10 "../tv/cdatafile/c.inference.autotvin_linear_weights_10.dat"
#define AUTOTB_TVOUT_linear_weights_10 "../tv/cdatafile/c.inference.autotvout_linear_weights_10.dat"
#define AUTOTB_TVIN_linear_weights_11 "../tv/cdatafile/c.inference.autotvin_linear_weights_11.dat"
#define AUTOTB_TVOUT_linear_weights_11 "../tv/cdatafile/c.inference.autotvout_linear_weights_11.dat"
#define AUTOTB_TVIN_linear_weights_12 "../tv/cdatafile/c.inference.autotvin_linear_weights_12.dat"
#define AUTOTB_TVOUT_linear_weights_12 "../tv/cdatafile/c.inference.autotvout_linear_weights_12.dat"
#define AUTOTB_TVIN_linear_weights_13 "../tv/cdatafile/c.inference.autotvin_linear_weights_13.dat"
#define AUTOTB_TVOUT_linear_weights_13 "../tv/cdatafile/c.inference.autotvout_linear_weights_13.dat"
#define AUTOTB_TVIN_linear_weights_14 "../tv/cdatafile/c.inference.autotvin_linear_weights_14.dat"
#define AUTOTB_TVOUT_linear_weights_14 "../tv/cdatafile/c.inference.autotvout_linear_weights_14.dat"
#define AUTOTB_TVIN_linear_weights_15 "../tv/cdatafile/c.inference.autotvin_linear_weights_15.dat"
#define AUTOTB_TVOUT_linear_weights_15 "../tv/cdatafile/c.inference.autotvout_linear_weights_15.dat"
#define AUTOTB_TVIN_linear_biases_0 "../tv/cdatafile/c.inference.autotvin_linear_biases_0.dat"
#define AUTOTB_TVOUT_linear_biases_0 "../tv/cdatafile/c.inference.autotvout_linear_biases_0.dat"
#define AUTOTB_TVIN_linear_biases_1 "../tv/cdatafile/c.inference.autotvin_linear_biases_1.dat"
#define AUTOTB_TVOUT_linear_biases_1 "../tv/cdatafile/c.inference.autotvout_linear_biases_1.dat"
#define AUTOTB_TVIN_linear_biases_2 "../tv/cdatafile/c.inference.autotvin_linear_biases_2.dat"
#define AUTOTB_TVOUT_linear_biases_2 "../tv/cdatafile/c.inference.autotvout_linear_biases_2.dat"
#define AUTOTB_TVIN_linear_biases_3 "../tv/cdatafile/c.inference.autotvin_linear_biases_3.dat"
#define AUTOTB_TVOUT_linear_biases_3 "../tv/cdatafile/c.inference.autotvout_linear_biases_3.dat"
#define AUTOTB_TVIN_linear_biases_4 "../tv/cdatafile/c.inference.autotvin_linear_biases_4.dat"
#define AUTOTB_TVOUT_linear_biases_4 "../tv/cdatafile/c.inference.autotvout_linear_biases_4.dat"
#define AUTOTB_TVIN_linear_biases_5 "../tv/cdatafile/c.inference.autotvin_linear_biases_5.dat"
#define AUTOTB_TVOUT_linear_biases_5 "../tv/cdatafile/c.inference.autotvout_linear_biases_5.dat"
#define AUTOTB_TVIN_linear_biases_6 "../tv/cdatafile/c.inference.autotvin_linear_biases_6.dat"
#define AUTOTB_TVOUT_linear_biases_6 "../tv/cdatafile/c.inference.autotvout_linear_biases_6.dat"
#define AUTOTB_TVIN_linear_biases_7 "../tv/cdatafile/c.inference.autotvin_linear_biases_7.dat"
#define AUTOTB_TVOUT_linear_biases_7 "../tv/cdatafile/c.inference.autotvout_linear_biases_7.dat"
#define AUTOTB_TVIN_linear_biases_8 "../tv/cdatafile/c.inference.autotvin_linear_biases_8.dat"
#define AUTOTB_TVOUT_linear_biases_8 "../tv/cdatafile/c.inference.autotvout_linear_biases_8.dat"
#define AUTOTB_TVIN_linear_biases_9 "../tv/cdatafile/c.inference.autotvin_linear_biases_9.dat"
#define AUTOTB_TVOUT_linear_biases_9 "../tv/cdatafile/c.inference.autotvout_linear_biases_9.dat"
#define AUTOTB_TVIN_linear_biases_10 "../tv/cdatafile/c.inference.autotvin_linear_biases_10.dat"
#define AUTOTB_TVOUT_linear_biases_10 "../tv/cdatafile/c.inference.autotvout_linear_biases_10.dat"
#define AUTOTB_TVIN_linear_biases_11 "../tv/cdatafile/c.inference.autotvin_linear_biases_11.dat"
#define AUTOTB_TVOUT_linear_biases_11 "../tv/cdatafile/c.inference.autotvout_linear_biases_11.dat"
#define AUTOTB_TVIN_linear_biases_12 "../tv/cdatafile/c.inference.autotvin_linear_biases_12.dat"
#define AUTOTB_TVOUT_linear_biases_12 "../tv/cdatafile/c.inference.autotvout_linear_biases_12.dat"
#define AUTOTB_TVIN_linear_biases_13 "../tv/cdatafile/c.inference.autotvin_linear_biases_13.dat"
#define AUTOTB_TVOUT_linear_biases_13 "../tv/cdatafile/c.inference.autotvout_linear_biases_13.dat"
#define AUTOTB_TVIN_linear_biases_14 "../tv/cdatafile/c.inference.autotvin_linear_biases_14.dat"
#define AUTOTB_TVOUT_linear_biases_14 "../tv/cdatafile/c.inference.autotvout_linear_biases_14.dat"
#define AUTOTB_TVIN_linear_biases_15 "../tv/cdatafile/c.inference.autotvin_linear_biases_15.dat"
#define AUTOTB_TVOUT_linear_biases_15 "../tv/cdatafile/c.inference.autotvout_linear_biases_15.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_input_r "../tv/rtldatafile/rtl.inference.autotvout_input_r.dat"
#define AUTOTB_TVOUT_PC_output_r "../tv/rtldatafile/rtl.inference.autotvout_output_r.dat"
#define AUTOTB_TVOUT_PC_conv_weights_0 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_0.dat"
#define AUTOTB_TVOUT_PC_conv_weights_1 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_1.dat"
#define AUTOTB_TVOUT_PC_conv_weights_2 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_2.dat"
#define AUTOTB_TVOUT_PC_conv_weights_3 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_3.dat"
#define AUTOTB_TVOUT_PC_conv_weights_4 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_4.dat"
#define AUTOTB_TVOUT_PC_conv_weights_5 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_5.dat"
#define AUTOTB_TVOUT_PC_conv_weights_6 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_6.dat"
#define AUTOTB_TVOUT_PC_conv_weights_7 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_7.dat"
#define AUTOTB_TVOUT_PC_conv_weights_8 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_8.dat"
#define AUTOTB_TVOUT_PC_conv_weights_9 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_9.dat"
#define AUTOTB_TVOUT_PC_conv_weights_10 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_10.dat"
#define AUTOTB_TVOUT_PC_conv_weights_11 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_11.dat"
#define AUTOTB_TVOUT_PC_conv_weights_12 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_12.dat"
#define AUTOTB_TVOUT_PC_conv_weights_13 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_13.dat"
#define AUTOTB_TVOUT_PC_conv_weights_14 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_14.dat"
#define AUTOTB_TVOUT_PC_conv_weights_15 "../tv/rtldatafile/rtl.inference.autotvout_conv_weights_15.dat"
#define AUTOTB_TVOUT_PC_conv_biases_0 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_0.dat"
#define AUTOTB_TVOUT_PC_conv_biases_1 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_1.dat"
#define AUTOTB_TVOUT_PC_conv_biases_2 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_2.dat"
#define AUTOTB_TVOUT_PC_conv_biases_3 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_3.dat"
#define AUTOTB_TVOUT_PC_conv_biases_4 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_4.dat"
#define AUTOTB_TVOUT_PC_conv_biases_5 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_5.dat"
#define AUTOTB_TVOUT_PC_conv_biases_6 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_6.dat"
#define AUTOTB_TVOUT_PC_conv_biases_7 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_7.dat"
#define AUTOTB_TVOUT_PC_conv_biases_8 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_8.dat"
#define AUTOTB_TVOUT_PC_conv_biases_9 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_9.dat"
#define AUTOTB_TVOUT_PC_conv_biases_10 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_10.dat"
#define AUTOTB_TVOUT_PC_conv_biases_11 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_11.dat"
#define AUTOTB_TVOUT_PC_conv_biases_12 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_12.dat"
#define AUTOTB_TVOUT_PC_conv_biases_13 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_13.dat"
#define AUTOTB_TVOUT_PC_conv_biases_14 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_14.dat"
#define AUTOTB_TVOUT_PC_conv_biases_15 "../tv/rtldatafile/rtl.inference.autotvout_conv_biases_15.dat"
#define AUTOTB_TVOUT_PC_pool_size "../tv/rtldatafile/rtl.inference.autotvout_pool_size.dat"
#define AUTOTB_TVOUT_PC_pool_stride "../tv/rtldatafile/rtl.inference.autotvout_pool_stride.dat"
#define AUTOTB_TVOUT_PC_linear_weights_0 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_0.dat"
#define AUTOTB_TVOUT_PC_linear_weights_1 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_1.dat"
#define AUTOTB_TVOUT_PC_linear_weights_2 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_2.dat"
#define AUTOTB_TVOUT_PC_linear_weights_3 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_3.dat"
#define AUTOTB_TVOUT_PC_linear_weights_4 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_4.dat"
#define AUTOTB_TVOUT_PC_linear_weights_5 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_5.dat"
#define AUTOTB_TVOUT_PC_linear_weights_6 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_6.dat"
#define AUTOTB_TVOUT_PC_linear_weights_7 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_7.dat"
#define AUTOTB_TVOUT_PC_linear_weights_8 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_8.dat"
#define AUTOTB_TVOUT_PC_linear_weights_9 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_9.dat"
#define AUTOTB_TVOUT_PC_linear_weights_10 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_10.dat"
#define AUTOTB_TVOUT_PC_linear_weights_11 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_11.dat"
#define AUTOTB_TVOUT_PC_linear_weights_12 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_12.dat"
#define AUTOTB_TVOUT_PC_linear_weights_13 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_13.dat"
#define AUTOTB_TVOUT_PC_linear_weights_14 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_14.dat"
#define AUTOTB_TVOUT_PC_linear_weights_15 "../tv/rtldatafile/rtl.inference.autotvout_linear_weights_15.dat"
#define AUTOTB_TVOUT_PC_linear_biases_0 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_0.dat"
#define AUTOTB_TVOUT_PC_linear_biases_1 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_1.dat"
#define AUTOTB_TVOUT_PC_linear_biases_2 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_2.dat"
#define AUTOTB_TVOUT_PC_linear_biases_3 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_3.dat"
#define AUTOTB_TVOUT_PC_linear_biases_4 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_4.dat"
#define AUTOTB_TVOUT_PC_linear_biases_5 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_5.dat"
#define AUTOTB_TVOUT_PC_linear_biases_6 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_6.dat"
#define AUTOTB_TVOUT_PC_linear_biases_7 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_7.dat"
#define AUTOTB_TVOUT_PC_linear_biases_8 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_8.dat"
#define AUTOTB_TVOUT_PC_linear_biases_9 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_9.dat"
#define AUTOTB_TVOUT_PC_linear_biases_10 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_10.dat"
#define AUTOTB_TVOUT_PC_linear_biases_11 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_11.dat"
#define AUTOTB_TVOUT_PC_linear_biases_12 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_12.dat"
#define AUTOTB_TVOUT_PC_linear_biases_13 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_13.dat"
#define AUTOTB_TVOUT_PC_linear_biases_14 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_14.dat"
#define AUTOTB_TVOUT_PC_linear_biases_15 "../tv/rtldatafile/rtl.inference.autotvout_linear_biases_15.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  input_r_depth = 0;
  output_r_depth = 0;
  conv_weights_0_depth = 0;
  conv_weights_1_depth = 0;
  conv_weights_2_depth = 0;
  conv_weights_3_depth = 0;
  conv_weights_4_depth = 0;
  conv_weights_5_depth = 0;
  conv_weights_6_depth = 0;
  conv_weights_7_depth = 0;
  conv_weights_8_depth = 0;
  conv_weights_9_depth = 0;
  conv_weights_10_depth = 0;
  conv_weights_11_depth = 0;
  conv_weights_12_depth = 0;
  conv_weights_13_depth = 0;
  conv_weights_14_depth = 0;
  conv_weights_15_depth = 0;
  conv_biases_0_depth = 0;
  conv_biases_1_depth = 0;
  conv_biases_2_depth = 0;
  conv_biases_3_depth = 0;
  conv_biases_4_depth = 0;
  conv_biases_5_depth = 0;
  conv_biases_6_depth = 0;
  conv_biases_7_depth = 0;
  conv_biases_8_depth = 0;
  conv_biases_9_depth = 0;
  conv_biases_10_depth = 0;
  conv_biases_11_depth = 0;
  conv_biases_12_depth = 0;
  conv_biases_13_depth = 0;
  conv_biases_14_depth = 0;
  conv_biases_15_depth = 0;
  pool_size_depth = 0;
  pool_stride_depth = 0;
  linear_weights_0_depth = 0;
  linear_weights_1_depth = 0;
  linear_weights_2_depth = 0;
  linear_weights_3_depth = 0;
  linear_weights_4_depth = 0;
  linear_weights_5_depth = 0;
  linear_weights_6_depth = 0;
  linear_weights_7_depth = 0;
  linear_weights_8_depth = 0;
  linear_weights_9_depth = 0;
  linear_weights_10_depth = 0;
  linear_weights_11_depth = 0;
  linear_weights_12_depth = 0;
  linear_weights_13_depth = 0;
  linear_weights_14_depth = 0;
  linear_weights_15_depth = 0;
  linear_biases_0_depth = 0;
  linear_biases_1_depth = 0;
  linear_biases_2_depth = 0;
  linear_biases_3_depth = 0;
  linear_biases_4_depth = 0;
  linear_biases_5_depth = 0;
  linear_biases_6_depth = 0;
  linear_biases_7_depth = 0;
  linear_biases_8_depth = 0;
  linear_biases_9_depth = 0;
  linear_biases_10_depth = 0;
  linear_biases_11_depth = 0;
  linear_biases_12_depth = 0;
  linear_biases_13_depth = 0;
  linear_biases_14_depth = 0;
  linear_biases_15_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{input_r " << input_r_depth << "}\n";
  total_list << "{output_r " << output_r_depth << "}\n";
  total_list << "{conv_weights_0 " << conv_weights_0_depth << "}\n";
  total_list << "{conv_weights_1 " << conv_weights_1_depth << "}\n";
  total_list << "{conv_weights_2 " << conv_weights_2_depth << "}\n";
  total_list << "{conv_weights_3 " << conv_weights_3_depth << "}\n";
  total_list << "{conv_weights_4 " << conv_weights_4_depth << "}\n";
  total_list << "{conv_weights_5 " << conv_weights_5_depth << "}\n";
  total_list << "{conv_weights_6 " << conv_weights_6_depth << "}\n";
  total_list << "{conv_weights_7 " << conv_weights_7_depth << "}\n";
  total_list << "{conv_weights_8 " << conv_weights_8_depth << "}\n";
  total_list << "{conv_weights_9 " << conv_weights_9_depth << "}\n";
  total_list << "{conv_weights_10 " << conv_weights_10_depth << "}\n";
  total_list << "{conv_weights_11 " << conv_weights_11_depth << "}\n";
  total_list << "{conv_weights_12 " << conv_weights_12_depth << "}\n";
  total_list << "{conv_weights_13 " << conv_weights_13_depth << "}\n";
  total_list << "{conv_weights_14 " << conv_weights_14_depth << "}\n";
  total_list << "{conv_weights_15 " << conv_weights_15_depth << "}\n";
  total_list << "{conv_biases_0 " << conv_biases_0_depth << "}\n";
  total_list << "{conv_biases_1 " << conv_biases_1_depth << "}\n";
  total_list << "{conv_biases_2 " << conv_biases_2_depth << "}\n";
  total_list << "{conv_biases_3 " << conv_biases_3_depth << "}\n";
  total_list << "{conv_biases_4 " << conv_biases_4_depth << "}\n";
  total_list << "{conv_biases_5 " << conv_biases_5_depth << "}\n";
  total_list << "{conv_biases_6 " << conv_biases_6_depth << "}\n";
  total_list << "{conv_biases_7 " << conv_biases_7_depth << "}\n";
  total_list << "{conv_biases_8 " << conv_biases_8_depth << "}\n";
  total_list << "{conv_biases_9 " << conv_biases_9_depth << "}\n";
  total_list << "{conv_biases_10 " << conv_biases_10_depth << "}\n";
  total_list << "{conv_biases_11 " << conv_biases_11_depth << "}\n";
  total_list << "{conv_biases_12 " << conv_biases_12_depth << "}\n";
  total_list << "{conv_biases_13 " << conv_biases_13_depth << "}\n";
  total_list << "{conv_biases_14 " << conv_biases_14_depth << "}\n";
  total_list << "{conv_biases_15 " << conv_biases_15_depth << "}\n";
  total_list << "{pool_size " << pool_size_depth << "}\n";
  total_list << "{pool_stride " << pool_stride_depth << "}\n";
  total_list << "{linear_weights_0 " << linear_weights_0_depth << "}\n";
  total_list << "{linear_weights_1 " << linear_weights_1_depth << "}\n";
  total_list << "{linear_weights_2 " << linear_weights_2_depth << "}\n";
  total_list << "{linear_weights_3 " << linear_weights_3_depth << "}\n";
  total_list << "{linear_weights_4 " << linear_weights_4_depth << "}\n";
  total_list << "{linear_weights_5 " << linear_weights_5_depth << "}\n";
  total_list << "{linear_weights_6 " << linear_weights_6_depth << "}\n";
  total_list << "{linear_weights_7 " << linear_weights_7_depth << "}\n";
  total_list << "{linear_weights_8 " << linear_weights_8_depth << "}\n";
  total_list << "{linear_weights_9 " << linear_weights_9_depth << "}\n";
  total_list << "{linear_weights_10 " << linear_weights_10_depth << "}\n";
  total_list << "{linear_weights_11 " << linear_weights_11_depth << "}\n";
  total_list << "{linear_weights_12 " << linear_weights_12_depth << "}\n";
  total_list << "{linear_weights_13 " << linear_weights_13_depth << "}\n";
  total_list << "{linear_weights_14 " << linear_weights_14_depth << "}\n";
  total_list << "{linear_weights_15 " << linear_weights_15_depth << "}\n";
  total_list << "{linear_biases_0 " << linear_biases_0_depth << "}\n";
  total_list << "{linear_biases_1 " << linear_biases_1_depth << "}\n";
  total_list << "{linear_biases_2 " << linear_biases_2_depth << "}\n";
  total_list << "{linear_biases_3 " << linear_biases_3_depth << "}\n";
  total_list << "{linear_biases_4 " << linear_biases_4_depth << "}\n";
  total_list << "{linear_biases_5 " << linear_biases_5_depth << "}\n";
  total_list << "{linear_biases_6 " << linear_biases_6_depth << "}\n";
  total_list << "{linear_biases_7 " << linear_biases_7_depth << "}\n";
  total_list << "{linear_biases_8 " << linear_biases_8_depth << "}\n";
  total_list << "{linear_biases_9 " << linear_biases_9_depth << "}\n";
  total_list << "{linear_biases_10 " << linear_biases_10_depth << "}\n";
  total_list << "{linear_biases_11 " << linear_biases_11_depth << "}\n";
  total_list << "{linear_biases_12 " << linear_biases_12_depth << "}\n";
  total_list << "{linear_biases_13 " << linear_biases_13_depth << "}\n";
  total_list << "{linear_biases_14 " << linear_biases_14_depth << "}\n";
  total_list << "{linear_biases_15 " << linear_biases_15_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int input_r_depth;
    int output_r_depth;
    int conv_weights_0_depth;
    int conv_weights_1_depth;
    int conv_weights_2_depth;
    int conv_weights_3_depth;
    int conv_weights_4_depth;
    int conv_weights_5_depth;
    int conv_weights_6_depth;
    int conv_weights_7_depth;
    int conv_weights_8_depth;
    int conv_weights_9_depth;
    int conv_weights_10_depth;
    int conv_weights_11_depth;
    int conv_weights_12_depth;
    int conv_weights_13_depth;
    int conv_weights_14_depth;
    int conv_weights_15_depth;
    int conv_biases_0_depth;
    int conv_biases_1_depth;
    int conv_biases_2_depth;
    int conv_biases_3_depth;
    int conv_biases_4_depth;
    int conv_biases_5_depth;
    int conv_biases_6_depth;
    int conv_biases_7_depth;
    int conv_biases_8_depth;
    int conv_biases_9_depth;
    int conv_biases_10_depth;
    int conv_biases_11_depth;
    int conv_biases_12_depth;
    int conv_biases_13_depth;
    int conv_biases_14_depth;
    int conv_biases_15_depth;
    int pool_size_depth;
    int pool_stride_depth;
    int linear_weights_0_depth;
    int linear_weights_1_depth;
    int linear_weights_2_depth;
    int linear_weights_3_depth;
    int linear_weights_4_depth;
    int linear_weights_5_depth;
    int linear_weights_6_depth;
    int linear_weights_7_depth;
    int linear_weights_8_depth;
    int linear_weights_9_depth;
    int linear_weights_10_depth;
    int linear_weights_11_depth;
    int linear_weights_12_depth;
    int linear_weights_13_depth;
    int linear_weights_14_depth;
    int linear_weights_15_depth;
    int linear_biases_0_depth;
    int linear_biases_1_depth;
    int linear_biases_2_depth;
    int linear_biases_3_depth;
    int linear_biases_4_depth;
    int linear_biases_5_depth;
    int linear_biases_6_depth;
    int linear_biases_7_depth;
    int linear_biases_8_depth;
    int linear_biases_9_depth;
    int linear_biases_10_depth;
    int linear_biases_11_depth;
    int linear_biases_12_depth;
    int linear_biases_13_depth;
    int linear_biases_14_depth;
    int linear_biases_15_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void inference_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_inference_hw(volatile void * __xlx_apatb_param_input_r, volatile void * __xlx_apatb_param_output_r, volatile void * __xlx_apatb_param_conv_weights_0, volatile void * __xlx_apatb_param_conv_weights_1, volatile void * __xlx_apatb_param_conv_weights_2, volatile void * __xlx_apatb_param_conv_weights_3, volatile void * __xlx_apatb_param_conv_weights_4, volatile void * __xlx_apatb_param_conv_weights_5, volatile void * __xlx_apatb_param_conv_weights_6, volatile void * __xlx_apatb_param_conv_weights_7, volatile void * __xlx_apatb_param_conv_weights_8, volatile void * __xlx_apatb_param_conv_weights_9, volatile void * __xlx_apatb_param_conv_weights_10, volatile void * __xlx_apatb_param_conv_weights_11, volatile void * __xlx_apatb_param_conv_weights_12, volatile void * __xlx_apatb_param_conv_weights_13, volatile void * __xlx_apatb_param_conv_weights_14, volatile void * __xlx_apatb_param_conv_weights_15, volatile void * __xlx_apatb_param_conv_biases_0, volatile void * __xlx_apatb_param_conv_biases_1, volatile void * __xlx_apatb_param_conv_biases_2, volatile void * __xlx_apatb_param_conv_biases_3, volatile void * __xlx_apatb_param_conv_biases_4, volatile void * __xlx_apatb_param_conv_biases_5, volatile void * __xlx_apatb_param_conv_biases_6, volatile void * __xlx_apatb_param_conv_biases_7, volatile void * __xlx_apatb_param_conv_biases_8, volatile void * __xlx_apatb_param_conv_biases_9, volatile void * __xlx_apatb_param_conv_biases_10, volatile void * __xlx_apatb_param_conv_biases_11, volatile void * __xlx_apatb_param_conv_biases_12, volatile void * __xlx_apatb_param_conv_biases_13, volatile void * __xlx_apatb_param_conv_biases_14, volatile void * __xlx_apatb_param_conv_biases_15, int __xlx_apatb_param_pool_size, int __xlx_apatb_param_pool_stride, volatile void * __xlx_apatb_param_linear_weights_0, volatile void * __xlx_apatb_param_linear_weights_1, volatile void * __xlx_apatb_param_linear_weights_2, volatile void * __xlx_apatb_param_linear_weights_3, volatile void * __xlx_apatb_param_linear_weights_4, volatile void * __xlx_apatb_param_linear_weights_5, volatile void * __xlx_apatb_param_linear_weights_6, volatile void * __xlx_apatb_param_linear_weights_7, volatile void * __xlx_apatb_param_linear_weights_8, volatile void * __xlx_apatb_param_linear_weights_9, volatile void * __xlx_apatb_param_linear_weights_10, volatile void * __xlx_apatb_param_linear_weights_11, volatile void * __xlx_apatb_param_linear_weights_12, volatile void * __xlx_apatb_param_linear_weights_13, volatile void * __xlx_apatb_param_linear_weights_14, volatile void * __xlx_apatb_param_linear_weights_15, volatile void * __xlx_apatb_param_linear_biases_0, volatile void * __xlx_apatb_param_linear_biases_1, volatile void * __xlx_apatb_param_linear_biases_2, volatile void * __xlx_apatb_param_linear_biases_3, volatile void * __xlx_apatb_param_linear_biases_4, volatile void * __xlx_apatb_param_linear_biases_5, volatile void * __xlx_apatb_param_linear_biases_6, volatile void * __xlx_apatb_param_linear_biases_7, volatile void * __xlx_apatb_param_linear_biases_8, volatile void * __xlx_apatb_param_linear_biases_9, volatile void * __xlx_apatb_param_linear_biases_10, volatile void * __xlx_apatb_param_linear_biases_11, volatile void * __xlx_apatb_param_linear_biases_12, volatile void * __xlx_apatb_param_linear_biases_13, volatile void * __xlx_apatb_param_linear_biases_14, volatile void * __xlx_apatb_param_linear_biases_15) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_input_r_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_input_r);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_input_r_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_input_r_stream_buf_final_size; ++i)((hls::stream<short>*)__xlx_apatb_param_input_r)->read();
long __xlx_apatb_param_output_r_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_output_r);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_output_r_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_r);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > output_r_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_r_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "output_r" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
short xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*2+0] = output_r_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = output_r_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<short>*)__xlx_apatb_param_output_r)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_r);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_r);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_output_r);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_output_r);
CodeState = DUMP_INPUTS;
std::vector<short> __xlx_apatb_param_input_r_stream_buf;
{
  while (!((hls::stream<short>*)__xlx_apatb_param_input_r)->empty())
    __xlx_apatb_param_input_r_stream_buf.push_back(((hls::stream<short>*)__xlx_apatb_param_input_r)->read());
  for (int i = 0; i < __xlx_apatb_param_input_r_stream_buf.size(); ++i)
    ((hls::stream<short>*)__xlx_apatb_param_input_r)->write(__xlx_apatb_param_input_r_stream_buf[i]);
  }
long __xlx_apatb_param_input_r_stream_buf_size = ((hls::stream<short>*)__xlx_apatb_param_input_r)->size();
std::vector<short> __xlx_apatb_param_output_r_stream_buf;
long __xlx_apatb_param_output_r_stream_buf_size = ((hls::stream<short>*)__xlx_apatb_param_output_r)->size();
unsigned __xlx_offset_byte_param_conv_weights_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_0, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_0 = 0*4;
  if (__xlx_apatb_param_conv_weights_0) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_0, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_0_depth);
#else
// print conv_weights_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_0 = 0*4;
if (__xlx_apatb_param_conv_weights_0) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_0, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_0_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_1, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_1 = 0*4;
  if (__xlx_apatb_param_conv_weights_1) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_1, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_1_depth);
#else
// print conv_weights_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_1 = 0*4;
if (__xlx_apatb_param_conv_weights_1) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_1, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_1_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_2, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_2 = 0*4;
  if (__xlx_apatb_param_conv_weights_2) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_2, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_2_depth);
#else
// print conv_weights_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_2 = 0*4;
if (__xlx_apatb_param_conv_weights_2) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_2, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_2_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_3, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_3 = 0*4;
  if (__xlx_apatb_param_conv_weights_3) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_3, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_3_depth);
#else
// print conv_weights_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_3 = 0*4;
if (__xlx_apatb_param_conv_weights_3) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_3, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_3_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_4, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_4 = 0*4;
  if (__xlx_apatb_param_conv_weights_4) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_4, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_4_depth);
#else
// print conv_weights_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_4 = 0*4;
if (__xlx_apatb_param_conv_weights_4) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_4, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_4_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_5, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_5 = 0*4;
  if (__xlx_apatb_param_conv_weights_5) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_5, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_5_depth);
#else
// print conv_weights_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_5 = 0*4;
if (__xlx_apatb_param_conv_weights_5) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_5, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_5_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_6, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_6 = 0*4;
  if (__xlx_apatb_param_conv_weights_6) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_6, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_6_depth);
#else
// print conv_weights_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_6 = 0*4;
if (__xlx_apatb_param_conv_weights_6) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_6, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_6_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_7, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_7 = 0*4;
  if (__xlx_apatb_param_conv_weights_7) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_7, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_7_depth);
#else
// print conv_weights_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_7 = 0*4;
if (__xlx_apatb_param_conv_weights_7) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_7, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_7_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_8, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_8 = 0*4;
  if (__xlx_apatb_param_conv_weights_8) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_8, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_8_depth);
#else
// print conv_weights_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_8 = 0*4;
if (__xlx_apatb_param_conv_weights_8) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_8, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_8_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_9, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_9 = 0*4;
  if (__xlx_apatb_param_conv_weights_9) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_9, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_9_depth);
#else
// print conv_weights_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_9 = 0*4;
if (__xlx_apatb_param_conv_weights_9) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_9, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_9_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_10, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_10 = 0*4;
  if (__xlx_apatb_param_conv_weights_10) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_10, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_10_depth);
#else
// print conv_weights_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_10 = 0*4;
if (__xlx_apatb_param_conv_weights_10) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_10, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_10_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_11, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_11 = 0*4;
  if (__xlx_apatb_param_conv_weights_11) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_11, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_11_depth);
#else
// print conv_weights_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_11 = 0*4;
if (__xlx_apatb_param_conv_weights_11) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_11, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_11_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_12, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_12 = 0*4;
  if (__xlx_apatb_param_conv_weights_12) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_12, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_12_depth);
#else
// print conv_weights_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_12 = 0*4;
if (__xlx_apatb_param_conv_weights_12) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_12, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_12_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_13, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_13 = 0*4;
  if (__xlx_apatb_param_conv_weights_13) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_13, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_13_depth);
#else
// print conv_weights_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_13 = 0*4;
if (__xlx_apatb_param_conv_weights_13) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_13, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_13_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_14, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_14 = 0*4;
  if (__xlx_apatb_param_conv_weights_14) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_14, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_14_depth);
#else
// print conv_weights_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_14 = 0*4;
if (__xlx_apatb_param_conv_weights_14) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_14, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_14_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_conv_weights_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_conv_weights_15, 'b');
transaction<32> tr(128);
  __xlx_offset_byte_param_conv_weights_15 = 0*4;
  if (__xlx_apatb_param_conv_weights_15) {
tr.import<4>((char*)__xlx_apatb_param_conv_weights_15, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_conv_weights_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.conv_weights_15_depth);
#else
// print conv_weights_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_weights_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_conv_weights_15 = 0*4;
if (__xlx_apatb_param_conv_weights_15) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_conv_weights_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_conv_weights_15, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.conv_weights_15_depth);
aesl_fh.write(AUTOTB_TVIN_conv_weights_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_0, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_0 = 0*4;
  if (__xlx_apatb_param_linear_weights_0) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_0, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_0_depth);
#else
// print linear_weights_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_0 = 0*4;
if (__xlx_apatb_param_linear_weights_0) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_0, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_0_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_1, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_1 = 0*4;
  if (__xlx_apatb_param_linear_weights_1) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_1, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_1_depth);
#else
// print linear_weights_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_1 = 0*4;
if (__xlx_apatb_param_linear_weights_1) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_1, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_1_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_2, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_2 = 0*4;
  if (__xlx_apatb_param_linear_weights_2) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_2, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_2_depth);
#else
// print linear_weights_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_2 = 0*4;
if (__xlx_apatb_param_linear_weights_2) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_2, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_2_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_3, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_3 = 0*4;
  if (__xlx_apatb_param_linear_weights_3) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_3, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_3_depth);
#else
// print linear_weights_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_3 = 0*4;
if (__xlx_apatb_param_linear_weights_3) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_3, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_3_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_4, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_4 = 0*4;
  if (__xlx_apatb_param_linear_weights_4) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_4, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_4_depth);
#else
// print linear_weights_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_4 = 0*4;
if (__xlx_apatb_param_linear_weights_4) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_4, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_4_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_5, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_5 = 0*4;
  if (__xlx_apatb_param_linear_weights_5) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_5, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_5_depth);
#else
// print linear_weights_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_5 = 0*4;
if (__xlx_apatb_param_linear_weights_5) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_5, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_5_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_6, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_6 = 0*4;
  if (__xlx_apatb_param_linear_weights_6) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_6, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_6_depth);
#else
// print linear_weights_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_6 = 0*4;
if (__xlx_apatb_param_linear_weights_6) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_6, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_6_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_7, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_7 = 0*4;
  if (__xlx_apatb_param_linear_weights_7) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_7, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_7_depth);
#else
// print linear_weights_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_7 = 0*4;
if (__xlx_apatb_param_linear_weights_7) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_7, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_7_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_8, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_8 = 0*4;
  if (__xlx_apatb_param_linear_weights_8) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_8, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_8_depth);
#else
// print linear_weights_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_8 = 0*4;
if (__xlx_apatb_param_linear_weights_8) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_8, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_8_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_9, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_9 = 0*4;
  if (__xlx_apatb_param_linear_weights_9) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_9, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_9_depth);
#else
// print linear_weights_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_9 = 0*4;
if (__xlx_apatb_param_linear_weights_9) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_9, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_9_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_10, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_10 = 0*4;
  if (__xlx_apatb_param_linear_weights_10) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_10, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_10_depth);
#else
// print linear_weights_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_10 = 0*4;
if (__xlx_apatb_param_linear_weights_10) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_10, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_10_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_11, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_11 = 0*4;
  if (__xlx_apatb_param_linear_weights_11) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_11, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_11_depth);
#else
// print linear_weights_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_11 = 0*4;
if (__xlx_apatb_param_linear_weights_11) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_11, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_11_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_12, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_12 = 0*4;
  if (__xlx_apatb_param_linear_weights_12) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_12, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_12_depth);
#else
// print linear_weights_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_12 = 0*4;
if (__xlx_apatb_param_linear_weights_12) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_12, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_12_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_13, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_13 = 0*4;
  if (__xlx_apatb_param_linear_weights_13) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_13, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_13_depth);
#else
// print linear_weights_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_13 = 0*4;
if (__xlx_apatb_param_linear_weights_13) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_13, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_13_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_14, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_14 = 0*4;
  if (__xlx_apatb_param_linear_weights_14) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_14, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_14_depth);
#else
// print linear_weights_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_14 = 0*4;
if (__xlx_apatb_param_linear_weights_14) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_14, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_14_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_linear_weights_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_linear_weights_15, 'b');
transaction<32> tr(16);
  __xlx_offset_byte_param_linear_weights_15 = 0*4;
  if (__xlx_apatb_param_linear_weights_15) {
tr.import<4>((char*)__xlx_apatb_param_linear_weights_15, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_linear_weights_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.linear_weights_15_depth);
#else
// print linear_weights_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_weights_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_linear_weights_15 = 0*4;
if (__xlx_apatb_param_linear_weights_15) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_linear_weights_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_linear_weights_15, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.linear_weights_15_depth);
aesl_fh.write(AUTOTB_TVIN_linear_weights_15, end_str());
}

#endif
// print conv_biases_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_0;
aesl_fh.write(AUTOTB_TVIN_conv_biases_0, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_0_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_0, end_str());
}

// print conv_biases_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_1;
aesl_fh.write(AUTOTB_TVIN_conv_biases_1, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_1_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_1, end_str());
}

// print conv_biases_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_2;
aesl_fh.write(AUTOTB_TVIN_conv_biases_2, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_2_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_2, end_str());
}

// print conv_biases_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_3;
aesl_fh.write(AUTOTB_TVIN_conv_biases_3, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_3_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_3, end_str());
}

// print conv_biases_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_4;
aesl_fh.write(AUTOTB_TVIN_conv_biases_4, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_4_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_4, end_str());
}

// print conv_biases_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_5;
aesl_fh.write(AUTOTB_TVIN_conv_biases_5, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_5_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_5, end_str());
}

// print conv_biases_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_6, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_6;
aesl_fh.write(AUTOTB_TVIN_conv_biases_6, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_6_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_6, end_str());
}

// print conv_biases_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_7, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_7;
aesl_fh.write(AUTOTB_TVIN_conv_biases_7, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_7_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_7, end_str());
}

// print conv_biases_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_8, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_8;
aesl_fh.write(AUTOTB_TVIN_conv_biases_8, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_8_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_8, end_str());
}

// print conv_biases_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_9, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_9;
aesl_fh.write(AUTOTB_TVIN_conv_biases_9, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_9_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_9, end_str());
}

// print conv_biases_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_10, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_10;
aesl_fh.write(AUTOTB_TVIN_conv_biases_10, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_10_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_10, end_str());
}

// print conv_biases_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_11, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_11;
aesl_fh.write(AUTOTB_TVIN_conv_biases_11, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_11_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_11, end_str());
}

// print conv_biases_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_12, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_12;
aesl_fh.write(AUTOTB_TVIN_conv_biases_12, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_12_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_12, end_str());
}

// print conv_biases_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_13, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_13;
aesl_fh.write(AUTOTB_TVIN_conv_biases_13, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_13_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_13, end_str());
}

// print conv_biases_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_14, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_14;
aesl_fh.write(AUTOTB_TVIN_conv_biases_14, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_14_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_14, end_str());
}

// print conv_biases_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_conv_biases_15, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_conv_biases_15;
aesl_fh.write(AUTOTB_TVIN_conv_biases_15, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.conv_biases_15_depth);
aesl_fh.write(AUTOTB_TVIN_conv_biases_15, end_str());
}

// print pool_size Transactions
{
aesl_fh.write(AUTOTB_TVIN_pool_size, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_pool_size;
aesl_fh.write(AUTOTB_TVIN_pool_size, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.pool_size_depth);
aesl_fh.write(AUTOTB_TVIN_pool_size, end_str());
}

// print pool_stride Transactions
{
aesl_fh.write(AUTOTB_TVIN_pool_stride, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_pool_stride;
aesl_fh.write(AUTOTB_TVIN_pool_stride, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.pool_stride_depth);
aesl_fh.write(AUTOTB_TVIN_pool_stride, end_str());
}

// print linear_biases_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_0;
aesl_fh.write(AUTOTB_TVIN_linear_biases_0, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_0_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_0, end_str());
}

// print linear_biases_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_1;
aesl_fh.write(AUTOTB_TVIN_linear_biases_1, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_1_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_1, end_str());
}

// print linear_biases_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_2;
aesl_fh.write(AUTOTB_TVIN_linear_biases_2, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_2_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_2, end_str());
}

// print linear_biases_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_3;
aesl_fh.write(AUTOTB_TVIN_linear_biases_3, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_3_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_3, end_str());
}

// print linear_biases_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_4;
aesl_fh.write(AUTOTB_TVIN_linear_biases_4, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_4_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_4, end_str());
}

// print linear_biases_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_5;
aesl_fh.write(AUTOTB_TVIN_linear_biases_5, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_5_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_5, end_str());
}

// print linear_biases_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_6, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_6;
aesl_fh.write(AUTOTB_TVIN_linear_biases_6, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_6_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_6, end_str());
}

// print linear_biases_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_7, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_7;
aesl_fh.write(AUTOTB_TVIN_linear_biases_7, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_7_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_7, end_str());
}

// print linear_biases_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_8, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_8;
aesl_fh.write(AUTOTB_TVIN_linear_biases_8, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_8_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_8, end_str());
}

// print linear_biases_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_9, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_9;
aesl_fh.write(AUTOTB_TVIN_linear_biases_9, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_9_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_9, end_str());
}

// print linear_biases_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_10, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_10;
aesl_fh.write(AUTOTB_TVIN_linear_biases_10, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_10_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_10, end_str());
}

// print linear_biases_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_11, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_11;
aesl_fh.write(AUTOTB_TVIN_linear_biases_11, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_11_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_11, end_str());
}

// print linear_biases_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_12, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_12;
aesl_fh.write(AUTOTB_TVIN_linear_biases_12, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_12_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_12, end_str());
}

// print linear_biases_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_13, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_13;
aesl_fh.write(AUTOTB_TVIN_linear_biases_13, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_13_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_13, end_str());
}

// print linear_biases_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_14, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_14;
aesl_fh.write(AUTOTB_TVIN_linear_biases_14, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_14_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_14, end_str());
}

// print linear_biases_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_linear_biases_15, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_linear_biases_15;
aesl_fh.write(AUTOTB_TVIN_linear_biases_15, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.linear_biases_15_depth);
aesl_fh.write(AUTOTB_TVIN_linear_biases_15, end_str());
}

CodeState = CALL_C_DUT;
inference_hw_stub_wrapper(__xlx_apatb_param_input_r, __xlx_apatb_param_output_r, __xlx_apatb_param_conv_weights_0, __xlx_apatb_param_conv_weights_1, __xlx_apatb_param_conv_weights_2, __xlx_apatb_param_conv_weights_3, __xlx_apatb_param_conv_weights_4, __xlx_apatb_param_conv_weights_5, __xlx_apatb_param_conv_weights_6, __xlx_apatb_param_conv_weights_7, __xlx_apatb_param_conv_weights_8, __xlx_apatb_param_conv_weights_9, __xlx_apatb_param_conv_weights_10, __xlx_apatb_param_conv_weights_11, __xlx_apatb_param_conv_weights_12, __xlx_apatb_param_conv_weights_13, __xlx_apatb_param_conv_weights_14, __xlx_apatb_param_conv_weights_15, __xlx_apatb_param_conv_biases_0, __xlx_apatb_param_conv_biases_1, __xlx_apatb_param_conv_biases_2, __xlx_apatb_param_conv_biases_3, __xlx_apatb_param_conv_biases_4, __xlx_apatb_param_conv_biases_5, __xlx_apatb_param_conv_biases_6, __xlx_apatb_param_conv_biases_7, __xlx_apatb_param_conv_biases_8, __xlx_apatb_param_conv_biases_9, __xlx_apatb_param_conv_biases_10, __xlx_apatb_param_conv_biases_11, __xlx_apatb_param_conv_biases_12, __xlx_apatb_param_conv_biases_13, __xlx_apatb_param_conv_biases_14, __xlx_apatb_param_conv_biases_15, __xlx_apatb_param_pool_size, __xlx_apatb_param_pool_stride, __xlx_apatb_param_linear_weights_0, __xlx_apatb_param_linear_weights_1, __xlx_apatb_param_linear_weights_2, __xlx_apatb_param_linear_weights_3, __xlx_apatb_param_linear_weights_4, __xlx_apatb_param_linear_weights_5, __xlx_apatb_param_linear_weights_6, __xlx_apatb_param_linear_weights_7, __xlx_apatb_param_linear_weights_8, __xlx_apatb_param_linear_weights_9, __xlx_apatb_param_linear_weights_10, __xlx_apatb_param_linear_weights_11, __xlx_apatb_param_linear_weights_12, __xlx_apatb_param_linear_weights_13, __xlx_apatb_param_linear_weights_14, __xlx_apatb_param_linear_weights_15, __xlx_apatb_param_linear_biases_0, __xlx_apatb_param_linear_biases_1, __xlx_apatb_param_linear_biases_2, __xlx_apatb_param_linear_biases_3, __xlx_apatb_param_linear_biases_4, __xlx_apatb_param_linear_biases_5, __xlx_apatb_param_linear_biases_6, __xlx_apatb_param_linear_biases_7, __xlx_apatb_param_linear_biases_8, __xlx_apatb_param_linear_biases_9, __xlx_apatb_param_linear_biases_10, __xlx_apatb_param_linear_biases_11, __xlx_apatb_param_linear_biases_12, __xlx_apatb_param_linear_biases_13, __xlx_apatb_param_linear_biases_14, __xlx_apatb_param_linear_biases_15);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_input_r_stream_buf_final_size = __xlx_apatb_param_input_r_stream_buf_size - ((hls::stream<short>*)__xlx_apatb_param_input_r)->size();
// print input_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_input_r, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_input_r_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_input_r_stream_buf.data()+i);
std::string s(formatData(pos, 16));
aesl_fh.write(AUTOTB_TVIN_input_r, s);
}

  tcl_file.set_num(__xlx_apatb_param_input_r_stream_buf_final_size, &tcl_file.input_r_depth);
aesl_fh.write(AUTOTB_TVIN_input_r, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_r, begin_str(AESL_transaction));
if (__xlx_apatb_param_input_r_stream_buf_final_size > 0) {
  long input_r_stream_ingress_size = __xlx_apatb_param_input_r_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_r_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_r, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_r_stream_buf_final_size; j != e; j++) {
    input_r_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_r_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_r, __xlx_sprintf_buffer.data());
  }
} else {
  long input_r_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_r_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_r, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_r, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_r, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_r_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_r, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_r, end_str());
}
long __xlx_apatb_param_output_r_stream_buf_final_size = ((hls::stream<short>*)__xlx_apatb_param_output_r)->size() - __xlx_apatb_param_output_r_stream_buf_size;
{
  while (!((hls::stream<short>*)__xlx_apatb_param_output_r)->empty())
    __xlx_apatb_param_output_r_stream_buf.push_back(((hls::stream<short>*)__xlx_apatb_param_output_r)->read());
  for (int i = 0; i < __xlx_apatb_param_output_r_stream_buf.size(); ++i)
    ((hls::stream<short>*)__xlx_apatb_param_output_r)->write(__xlx_apatb_param_output_r_stream_buf[i]);
  }
// print output_r Transactions
{
aesl_fh.write(AUTOTB_TVOUT_output_r, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_output_r_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_output_r_stream_buf.data()+__xlx_apatb_param_output_r_stream_buf_size+i);
std::string s(formatData(pos, 16));
aesl_fh.write(AUTOTB_TVOUT_output_r, s);
}

  tcl_file.set_num(__xlx_apatb_param_output_r_stream_buf_final_size, &tcl_file.output_r_depth);
aesl_fh.write(AUTOTB_TVOUT_output_r, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_r, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_output_r_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_r, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_r, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
