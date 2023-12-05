#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("input_r_dout", 16, hls_in, 0, "ap_fifo", "fifo_port_we", 1),
	Port_Property("input_r_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("input_r_read", 1, hls_out, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("output_r_din", 16, hls_out, 1, "ap_fifo", "fifo_port_we", 1),
	Port_Property("output_r_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("output_r_write", 1, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("conv_weights_0_address0", 7, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_0_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_0_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_1_address0", 7, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_1_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_1_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_2_address0", 7, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_2_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_2_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_3_address0", 7, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_3_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_3_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_4_address0", 7, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_4_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_4_q0", 32, hls_in, 6, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_5_address0", 7, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_5_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_5_q0", 32, hls_in, 7, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_6_address0", 7, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_6_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_6_q0", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_7_address0", 7, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_7_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_7_q0", 32, hls_in, 9, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_8_address0", 7, hls_out, 10, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_8_ce0", 1, hls_out, 10, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_8_q0", 32, hls_in, 10, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_9_address0", 7, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_9_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_9_q0", 32, hls_in, 11, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_10_address0", 7, hls_out, 12, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_10_ce0", 1, hls_out, 12, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_10_q0", 32, hls_in, 12, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_11_address0", 7, hls_out, 13, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_11_ce0", 1, hls_out, 13, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_11_q0", 32, hls_in, 13, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_12_address0", 7, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_12_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_12_q0", 32, hls_in, 14, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_13_address0", 7, hls_out, 15, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_13_ce0", 1, hls_out, 15, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_13_q0", 32, hls_in, 15, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_14_address0", 7, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_14_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_14_q0", 32, hls_in, 16, "ap_memory", "mem_dout", 1),
	Port_Property("conv_weights_15_address0", 7, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("conv_weights_15_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("conv_weights_15_q0", 32, hls_in, 17, "ap_memory", "mem_dout", 1),
	Port_Property("conv_biases_0", 32, hls_in, 18, "ap_none", "in_data", 1),
	Port_Property("conv_biases_1", 32, hls_in, 19, "ap_none", "in_data", 1),
	Port_Property("conv_biases_2", 32, hls_in, 20, "ap_none", "in_data", 1),
	Port_Property("conv_biases_3", 32, hls_in, 21, "ap_none", "in_data", 1),
	Port_Property("conv_biases_4", 32, hls_in, 22, "ap_none", "in_data", 1),
	Port_Property("conv_biases_5", 32, hls_in, 23, "ap_none", "in_data", 1),
	Port_Property("conv_biases_6", 32, hls_in, 24, "ap_none", "in_data", 1),
	Port_Property("conv_biases_7", 32, hls_in, 25, "ap_none", "in_data", 1),
	Port_Property("conv_biases_8", 32, hls_in, 26, "ap_none", "in_data", 1),
	Port_Property("conv_biases_9", 32, hls_in, 27, "ap_none", "in_data", 1),
	Port_Property("conv_biases_10", 32, hls_in, 28, "ap_none", "in_data", 1),
	Port_Property("conv_biases_11", 32, hls_in, 29, "ap_none", "in_data", 1),
	Port_Property("conv_biases_12", 32, hls_in, 30, "ap_none", "in_data", 1),
	Port_Property("conv_biases_13", 32, hls_in, 31, "ap_none", "in_data", 1),
	Port_Property("conv_biases_14", 32, hls_in, 32, "ap_none", "in_data", 1),
	Port_Property("conv_biases_15", 32, hls_in, 33, "ap_none", "in_data", 1),
	Port_Property("pool_size", 32, hls_in, 34, "ap_none", "in_data", 1),
	Port_Property("pool_stride", 32, hls_in, 35, "ap_none", "in_data", 1),
	Port_Property("linear_weights_0_address0", 4, hls_out, 36, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_0_ce0", 1, hls_out, 36, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_0_q0", 32, hls_in, 36, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_0_address1", 4, hls_out, 36, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_0_ce1", 1, hls_out, 36, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_0_q1", 32, hls_in, 36, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_1_address0", 4, hls_out, 37, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_1_ce0", 1, hls_out, 37, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_1_q0", 32, hls_in, 37, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_1_address1", 4, hls_out, 37, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_1_ce1", 1, hls_out, 37, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_1_q1", 32, hls_in, 37, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_2_address0", 4, hls_out, 38, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_2_ce0", 1, hls_out, 38, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_2_q0", 32, hls_in, 38, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_2_address1", 4, hls_out, 38, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_2_ce1", 1, hls_out, 38, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_2_q1", 32, hls_in, 38, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_3_address0", 4, hls_out, 39, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_3_ce0", 1, hls_out, 39, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_3_q0", 32, hls_in, 39, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_3_address1", 4, hls_out, 39, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_3_ce1", 1, hls_out, 39, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_3_q1", 32, hls_in, 39, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_4_address0", 4, hls_out, 40, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_4_ce0", 1, hls_out, 40, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_4_q0", 32, hls_in, 40, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_4_address1", 4, hls_out, 40, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_4_ce1", 1, hls_out, 40, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_4_q1", 32, hls_in, 40, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_5_address0", 4, hls_out, 41, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_5_ce0", 1, hls_out, 41, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_5_q0", 32, hls_in, 41, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_5_address1", 4, hls_out, 41, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_5_ce1", 1, hls_out, 41, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_5_q1", 32, hls_in, 41, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_6_address0", 4, hls_out, 42, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_6_ce0", 1, hls_out, 42, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_6_q0", 32, hls_in, 42, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_6_address1", 4, hls_out, 42, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_6_ce1", 1, hls_out, 42, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_6_q1", 32, hls_in, 42, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_7_address0", 4, hls_out, 43, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_7_ce0", 1, hls_out, 43, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_7_q0", 32, hls_in, 43, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_7_address1", 4, hls_out, 43, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_7_ce1", 1, hls_out, 43, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_7_q1", 32, hls_in, 43, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_8_address0", 4, hls_out, 44, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_8_ce0", 1, hls_out, 44, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_8_q0", 32, hls_in, 44, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_8_address1", 4, hls_out, 44, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_8_ce1", 1, hls_out, 44, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_8_q1", 32, hls_in, 44, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_9_address0", 4, hls_out, 45, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_9_ce0", 1, hls_out, 45, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_9_q0", 32, hls_in, 45, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_9_address1", 4, hls_out, 45, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_9_ce1", 1, hls_out, 45, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_9_q1", 32, hls_in, 45, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_10_address0", 4, hls_out, 46, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_10_ce0", 1, hls_out, 46, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_10_q0", 32, hls_in, 46, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_10_address1", 4, hls_out, 46, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_10_ce1", 1, hls_out, 46, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_10_q1", 32, hls_in, 46, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_11_address0", 4, hls_out, 47, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_11_ce0", 1, hls_out, 47, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_11_q0", 32, hls_in, 47, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_11_address1", 4, hls_out, 47, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_11_ce1", 1, hls_out, 47, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_11_q1", 32, hls_in, 47, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_12_address0", 4, hls_out, 48, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_12_ce0", 1, hls_out, 48, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_12_q0", 32, hls_in, 48, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_12_address1", 4, hls_out, 48, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_12_ce1", 1, hls_out, 48, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_12_q1", 32, hls_in, 48, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_13_address0", 4, hls_out, 49, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_13_ce0", 1, hls_out, 49, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_13_q0", 32, hls_in, 49, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_13_address1", 4, hls_out, 49, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_13_ce1", 1, hls_out, 49, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_13_q1", 32, hls_in, 49, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_14_address0", 4, hls_out, 50, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_14_ce0", 1, hls_out, 50, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_14_q0", 32, hls_in, 50, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_14_address1", 4, hls_out, 50, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_14_ce1", 1, hls_out, 50, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_14_q1", 32, hls_in, 50, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_weights_15_address0", 4, hls_out, 51, "ap_memory", "mem_address", 1),
	Port_Property("linear_weights_15_ce0", 1, hls_out, 51, "ap_memory", "mem_ce", 1),
	Port_Property("linear_weights_15_q0", 32, hls_in, 51, "ap_memory", "mem_dout", 1),
	Port_Property("linear_weights_15_address1", 4, hls_out, 51, "ap_memory", "MemPortADDR2", 1),
	Port_Property("linear_weights_15_ce1", 1, hls_out, 51, "ap_memory", "MemPortCE2", 1),
	Port_Property("linear_weights_15_q1", 32, hls_in, 51, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("linear_biases_0", 32, hls_in, 52, "ap_none", "in_data", 1),
	Port_Property("linear_biases_1", 32, hls_in, 53, "ap_none", "in_data", 1),
	Port_Property("linear_biases_2", 32, hls_in, 54, "ap_none", "in_data", 1),
	Port_Property("linear_biases_3", 32, hls_in, 55, "ap_none", "in_data", 1),
	Port_Property("linear_biases_4", 32, hls_in, 56, "ap_none", "in_data", 1),
	Port_Property("linear_biases_5", 32, hls_in, 57, "ap_none", "in_data", 1),
	Port_Property("linear_biases_6", 32, hls_in, 58, "ap_none", "in_data", 1),
	Port_Property("linear_biases_7", 32, hls_in, 59, "ap_none", "in_data", 1),
	Port_Property("linear_biases_8", 32, hls_in, 60, "ap_none", "in_data", 1),
	Port_Property("linear_biases_9", 32, hls_in, 61, "ap_none", "in_data", 1),
	Port_Property("linear_biases_10", 32, hls_in, 62, "ap_none", "in_data", 1),
	Port_Property("linear_biases_11", 32, hls_in, 63, "ap_none", "in_data", 1),
	Port_Property("linear_biases_12", 32, hls_in, 64, "ap_none", "in_data", 1),
	Port_Property("linear_biases_13", 32, hls_in, 65, "ap_none", "in_data", 1),
	Port_Property("linear_biases_14", 32, hls_in, 66, "ap_none", "in_data", 1),
	Port_Property("linear_biases_15", 32, hls_in, 67, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "inference";