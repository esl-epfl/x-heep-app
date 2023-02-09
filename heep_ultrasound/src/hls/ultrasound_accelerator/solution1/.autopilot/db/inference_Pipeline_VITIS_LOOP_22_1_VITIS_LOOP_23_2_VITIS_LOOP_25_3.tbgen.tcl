set moduleName inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_weights_0 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_1 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_2 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_3 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_4 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_5 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_6 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_7 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_8 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_9 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_10 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_11 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_12 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_13 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_14 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ conv_weights_15 int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ input_r int 16 regular {fifo 0 volatile }  }
	{ conv_biases_0_load int 32 regular  }
	{ conv_biases_1_load int 32 regular  }
	{ conv_biases_2_load int 32 regular  }
	{ conv_biases_3_load int 32 regular  }
	{ conv_biases_4_load int 32 regular  }
	{ conv_biases_5_load int 32 regular  }
	{ conv_biases_6_load int 32 regular  }
	{ conv_biases_7_load int 32 regular  }
	{ conv_biases_8_load int 32 regular  }
	{ conv_biases_9_load int 32 regular  }
	{ conv_biases_10_load int 32 regular  }
	{ conv_biases_11_load int 32 regular  }
	{ conv_biases_12_load int 32 regular  }
	{ conv_biases_13_load int 32 regular  }
	{ conv_biases_14_load int 32 regular  }
	{ conv_biases_15_load int 32 regular  }
	{ conv_output int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_weights_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_6_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_7_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_8_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_9_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_10_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_11_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_12_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_13_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_14_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_15_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_dout sc_in sc_lv 16 signal 16 } 
	{ input_r_empty_n sc_in sc_logic 1 signal 16 } 
	{ input_r_read sc_out sc_logic 1 signal 16 } 
	{ conv_output_din sc_out sc_lv 16 signal 33 } 
	{ conv_output_full_n sc_in sc_logic 1 signal 33 } 
	{ conv_output_write sc_out sc_logic 1 signal 33 } 
	{ conv_weights_0_address0 sc_out sc_lv 7 signal 0 } 
	{ conv_weights_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv_weights_0_q0 sc_in sc_lv 32 signal 0 } 
	{ conv_weights_1_address0 sc_out sc_lv 7 signal 1 } 
	{ conv_weights_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_weights_1_q0 sc_in sc_lv 32 signal 1 } 
	{ conv_weights_2_address0 sc_out sc_lv 7 signal 2 } 
	{ conv_weights_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_weights_2_q0 sc_in sc_lv 32 signal 2 } 
	{ conv_weights_3_address0 sc_out sc_lv 7 signal 3 } 
	{ conv_weights_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_weights_3_q0 sc_in sc_lv 32 signal 3 } 
	{ conv_weights_4_address0 sc_out sc_lv 7 signal 4 } 
	{ conv_weights_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv_weights_4_q0 sc_in sc_lv 32 signal 4 } 
	{ conv_weights_5_address0 sc_out sc_lv 7 signal 5 } 
	{ conv_weights_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ conv_weights_5_q0 sc_in sc_lv 32 signal 5 } 
	{ conv_weights_6_address0 sc_out sc_lv 7 signal 6 } 
	{ conv_weights_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ conv_weights_6_q0 sc_in sc_lv 32 signal 6 } 
	{ conv_weights_7_address0 sc_out sc_lv 7 signal 7 } 
	{ conv_weights_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv_weights_7_q0 sc_in sc_lv 32 signal 7 } 
	{ conv_weights_8_address0 sc_out sc_lv 7 signal 8 } 
	{ conv_weights_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ conv_weights_8_q0 sc_in sc_lv 32 signal 8 } 
	{ conv_weights_9_address0 sc_out sc_lv 7 signal 9 } 
	{ conv_weights_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ conv_weights_9_q0 sc_in sc_lv 32 signal 9 } 
	{ conv_weights_10_address0 sc_out sc_lv 7 signal 10 } 
	{ conv_weights_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ conv_weights_10_q0 sc_in sc_lv 32 signal 10 } 
	{ conv_weights_11_address0 sc_out sc_lv 7 signal 11 } 
	{ conv_weights_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ conv_weights_11_q0 sc_in sc_lv 32 signal 11 } 
	{ conv_weights_12_address0 sc_out sc_lv 7 signal 12 } 
	{ conv_weights_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ conv_weights_12_q0 sc_in sc_lv 32 signal 12 } 
	{ conv_weights_13_address0 sc_out sc_lv 7 signal 13 } 
	{ conv_weights_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ conv_weights_13_q0 sc_in sc_lv 32 signal 13 } 
	{ conv_weights_14_address0 sc_out sc_lv 7 signal 14 } 
	{ conv_weights_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ conv_weights_14_q0 sc_in sc_lv 32 signal 14 } 
	{ conv_weights_15_address0 sc_out sc_lv 7 signal 15 } 
	{ conv_weights_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ conv_weights_15_q0 sc_in sc_lv 32 signal 15 } 
	{ conv_biases_0_load sc_in sc_lv 32 signal 17 } 
	{ conv_biases_1_load sc_in sc_lv 32 signal 18 } 
	{ conv_biases_2_load sc_in sc_lv 32 signal 19 } 
	{ conv_biases_3_load sc_in sc_lv 32 signal 20 } 
	{ conv_biases_4_load sc_in sc_lv 32 signal 21 } 
	{ conv_biases_5_load sc_in sc_lv 32 signal 22 } 
	{ conv_biases_6_load sc_in sc_lv 32 signal 23 } 
	{ conv_biases_7_load sc_in sc_lv 32 signal 24 } 
	{ conv_biases_8_load sc_in sc_lv 32 signal 25 } 
	{ conv_biases_9_load sc_in sc_lv 32 signal 26 } 
	{ conv_biases_10_load sc_in sc_lv 32 signal 27 } 
	{ conv_biases_11_load sc_in sc_lv 32 signal 28 } 
	{ conv_biases_12_load sc_in sc_lv 32 signal 29 } 
	{ conv_biases_13_load sc_in sc_lv 32 signal 30 } 
	{ conv_biases_14_load sc_in sc_lv 32 signal 31 } 
	{ conv_biases_15_load sc_in sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "dout" }} , 
 	{ "name": "input_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "empty_n" }} , 
 	{ "name": "input_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "read" }} , 
 	{ "name": "conv_output_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_output", "role": "din" }} , 
 	{ "name": "conv_output_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output", "role": "full_n" }} , 
 	{ "name": "conv_output_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output", "role": "write" }} , 
 	{ "name": "conv_weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_0", "role": "address0" }} , 
 	{ "name": "conv_weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_0", "role": "ce0" }} , 
 	{ "name": "conv_weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_0", "role": "q0" }} , 
 	{ "name": "conv_weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_1", "role": "address0" }} , 
 	{ "name": "conv_weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_1", "role": "ce0" }} , 
 	{ "name": "conv_weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_1", "role": "q0" }} , 
 	{ "name": "conv_weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_2", "role": "address0" }} , 
 	{ "name": "conv_weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_2", "role": "ce0" }} , 
 	{ "name": "conv_weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_2", "role": "q0" }} , 
 	{ "name": "conv_weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_3", "role": "address0" }} , 
 	{ "name": "conv_weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_3", "role": "ce0" }} , 
 	{ "name": "conv_weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_3", "role": "q0" }} , 
 	{ "name": "conv_weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_4", "role": "address0" }} , 
 	{ "name": "conv_weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_4", "role": "ce0" }} , 
 	{ "name": "conv_weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_4", "role": "q0" }} , 
 	{ "name": "conv_weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_5", "role": "address0" }} , 
 	{ "name": "conv_weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_5", "role": "ce0" }} , 
 	{ "name": "conv_weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_5", "role": "q0" }} , 
 	{ "name": "conv_weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_6", "role": "address0" }} , 
 	{ "name": "conv_weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_6", "role": "ce0" }} , 
 	{ "name": "conv_weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_6", "role": "q0" }} , 
 	{ "name": "conv_weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_7", "role": "address0" }} , 
 	{ "name": "conv_weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_7", "role": "ce0" }} , 
 	{ "name": "conv_weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_7", "role": "q0" }} , 
 	{ "name": "conv_weights_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_8", "role": "address0" }} , 
 	{ "name": "conv_weights_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_8", "role": "ce0" }} , 
 	{ "name": "conv_weights_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_8", "role": "q0" }} , 
 	{ "name": "conv_weights_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_9", "role": "address0" }} , 
 	{ "name": "conv_weights_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_9", "role": "ce0" }} , 
 	{ "name": "conv_weights_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_9", "role": "q0" }} , 
 	{ "name": "conv_weights_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_10", "role": "address0" }} , 
 	{ "name": "conv_weights_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_10", "role": "ce0" }} , 
 	{ "name": "conv_weights_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_10", "role": "q0" }} , 
 	{ "name": "conv_weights_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_11", "role": "address0" }} , 
 	{ "name": "conv_weights_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_11", "role": "ce0" }} , 
 	{ "name": "conv_weights_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_11", "role": "q0" }} , 
 	{ "name": "conv_weights_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_12", "role": "address0" }} , 
 	{ "name": "conv_weights_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_12", "role": "ce0" }} , 
 	{ "name": "conv_weights_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_12", "role": "q0" }} , 
 	{ "name": "conv_weights_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_13", "role": "address0" }} , 
 	{ "name": "conv_weights_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_13", "role": "ce0" }} , 
 	{ "name": "conv_weights_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_13", "role": "q0" }} , 
 	{ "name": "conv_weights_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_14", "role": "address0" }} , 
 	{ "name": "conv_weights_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_14", "role": "ce0" }} , 
 	{ "name": "conv_weights_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_14", "role": "q0" }} , 
 	{ "name": "conv_weights_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_weights_15", "role": "address0" }} , 
 	{ "name": "conv_weights_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weights_15", "role": "ce0" }} , 
 	{ "name": "conv_weights_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weights_15", "role": "q0" }} , 
 	{ "name": "conv_biases_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_0_load", "role": "default" }} , 
 	{ "name": "conv_biases_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_1_load", "role": "default" }} , 
 	{ "name": "conv_biases_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_2_load", "role": "default" }} , 
 	{ "name": "conv_biases_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_3_load", "role": "default" }} , 
 	{ "name": "conv_biases_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_4_load", "role": "default" }} , 
 	{ "name": "conv_biases_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_5_load", "role": "default" }} , 
 	{ "name": "conv_biases_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_6_load", "role": "default" }} , 
 	{ "name": "conv_biases_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_7_load", "role": "default" }} , 
 	{ "name": "conv_biases_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_8_load", "role": "default" }} , 
 	{ "name": "conv_biases_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_9_load", "role": "default" }} , 
 	{ "name": "conv_biases_10_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_10_load", "role": "default" }} , 
 	{ "name": "conv_biases_11_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_11_load", "role": "default" }} , 
 	{ "name": "conv_biases_12_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_12_load", "role": "default" }} , 
 	{ "name": "conv_biases_13_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_13_load", "role": "default" }} , 
 	{ "name": "conv_biases_14_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_14_load", "role": "default" }} , 
 	{ "name": "conv_biases_15_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_15_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35840003", "EstimateLatencyMax" : "35840003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_biases_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_output", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_output_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3 {
		conv_weights_0 {Type I LastRead 1 FirstWrite -1}
		conv_weights_1 {Type I LastRead 1 FirstWrite -1}
		conv_weights_2 {Type I LastRead 1 FirstWrite -1}
		conv_weights_3 {Type I LastRead 1 FirstWrite -1}
		conv_weights_4 {Type I LastRead 1 FirstWrite -1}
		conv_weights_5 {Type I LastRead 1 FirstWrite -1}
		conv_weights_6 {Type I LastRead 1 FirstWrite -1}
		conv_weights_7 {Type I LastRead 1 FirstWrite -1}
		conv_weights_8 {Type I LastRead 1 FirstWrite -1}
		conv_weights_9 {Type I LastRead 1 FirstWrite -1}
		conv_weights_10 {Type I LastRead 1 FirstWrite -1}
		conv_weights_11 {Type I LastRead 1 FirstWrite -1}
		conv_weights_12 {Type I LastRead 1 FirstWrite -1}
		conv_weights_13 {Type I LastRead 1 FirstWrite -1}
		conv_weights_14 {Type I LastRead 1 FirstWrite -1}
		conv_weights_15 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 2 FirstWrite -1}
		conv_biases_0_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_1_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_2_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_3_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_4_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_5_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_6_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_7_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_8_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_9_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_10_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_11_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_12_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_13_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_14_load {Type I LastRead 0 FirstWrite -1}
		conv_biases_15_load {Type I LastRead 0 FirstWrite -1}
		conv_output {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35840003", "Max" : "35840003"}
	, {"Name" : "Interval", "Min" : "35840003", "Max" : "35840003"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv_weights_0 { ap_memory {  { conv_weights_0_address0 mem_address 1 7 }  { conv_weights_0_ce0 mem_ce 1 1 }  { conv_weights_0_q0 in_data 0 32 } } }
	conv_weights_1 { ap_memory {  { conv_weights_1_address0 mem_address 1 7 }  { conv_weights_1_ce0 mem_ce 1 1 }  { conv_weights_1_q0 in_data 0 32 } } }
	conv_weights_2 { ap_memory {  { conv_weights_2_address0 mem_address 1 7 }  { conv_weights_2_ce0 mem_ce 1 1 }  { conv_weights_2_q0 in_data 0 32 } } }
	conv_weights_3 { ap_memory {  { conv_weights_3_address0 mem_address 1 7 }  { conv_weights_3_ce0 mem_ce 1 1 }  { conv_weights_3_q0 in_data 0 32 } } }
	conv_weights_4 { ap_memory {  { conv_weights_4_address0 mem_address 1 7 }  { conv_weights_4_ce0 mem_ce 1 1 }  { conv_weights_4_q0 in_data 0 32 } } }
	conv_weights_5 { ap_memory {  { conv_weights_5_address0 mem_address 1 7 }  { conv_weights_5_ce0 mem_ce 1 1 }  { conv_weights_5_q0 in_data 0 32 } } }
	conv_weights_6 { ap_memory {  { conv_weights_6_address0 mem_address 1 7 }  { conv_weights_6_ce0 mem_ce 1 1 }  { conv_weights_6_q0 in_data 0 32 } } }
	conv_weights_7 { ap_memory {  { conv_weights_7_address0 mem_address 1 7 }  { conv_weights_7_ce0 mem_ce 1 1 }  { conv_weights_7_q0 in_data 0 32 } } }
	conv_weights_8 { ap_memory {  { conv_weights_8_address0 mem_address 1 7 }  { conv_weights_8_ce0 mem_ce 1 1 }  { conv_weights_8_q0 in_data 0 32 } } }
	conv_weights_9 { ap_memory {  { conv_weights_9_address0 mem_address 1 7 }  { conv_weights_9_ce0 mem_ce 1 1 }  { conv_weights_9_q0 in_data 0 32 } } }
	conv_weights_10 { ap_memory {  { conv_weights_10_address0 mem_address 1 7 }  { conv_weights_10_ce0 mem_ce 1 1 }  { conv_weights_10_q0 in_data 0 32 } } }
	conv_weights_11 { ap_memory {  { conv_weights_11_address0 mem_address 1 7 }  { conv_weights_11_ce0 mem_ce 1 1 }  { conv_weights_11_q0 in_data 0 32 } } }
	conv_weights_12 { ap_memory {  { conv_weights_12_address0 mem_address 1 7 }  { conv_weights_12_ce0 mem_ce 1 1 }  { conv_weights_12_q0 in_data 0 32 } } }
	conv_weights_13 { ap_memory {  { conv_weights_13_address0 mem_address 1 7 }  { conv_weights_13_ce0 mem_ce 1 1 }  { conv_weights_13_q0 in_data 0 32 } } }
	conv_weights_14 { ap_memory {  { conv_weights_14_address0 mem_address 1 7 }  { conv_weights_14_ce0 mem_ce 1 1 }  { conv_weights_14_q0 in_data 0 32 } } }
	conv_weights_15 { ap_memory {  { conv_weights_15_address0 mem_address 1 7 }  { conv_weights_15_ce0 mem_ce 1 1 }  { conv_weights_15_q0 in_data 0 32 } } }
	input_r { ap_fifo {  { input_r_dout fifo_port_we 0 16 }  { input_r_empty_n fifo_status 0 1 }  { input_r_read fifo_data 1 1 } } }
	conv_biases_0_load { ap_none {  { conv_biases_0_load in_data 0 32 } } }
	conv_biases_1_load { ap_none {  { conv_biases_1_load in_data 0 32 } } }
	conv_biases_2_load { ap_none {  { conv_biases_2_load in_data 0 32 } } }
	conv_biases_3_load { ap_none {  { conv_biases_3_load in_data 0 32 } } }
	conv_biases_4_load { ap_none {  { conv_biases_4_load in_data 0 32 } } }
	conv_biases_5_load { ap_none {  { conv_biases_5_load in_data 0 32 } } }
	conv_biases_6_load { ap_none {  { conv_biases_6_load in_data 0 32 } } }
	conv_biases_7_load { ap_none {  { conv_biases_7_load in_data 0 32 } } }
	conv_biases_8_load { ap_none {  { conv_biases_8_load in_data 0 32 } } }
	conv_biases_9_load { ap_none {  { conv_biases_9_load in_data 0 32 } } }
	conv_biases_10_load { ap_none {  { conv_biases_10_load in_data 0 32 } } }
	conv_biases_11_load { ap_none {  { conv_biases_11_load in_data 0 32 } } }
	conv_biases_12_load { ap_none {  { conv_biases_12_load in_data 0 32 } } }
	conv_biases_13_load { ap_none {  { conv_biases_13_load in_data 0 32 } } }
	conv_biases_14_load { ap_none {  { conv_biases_14_load in_data 0 32 } } }
	conv_biases_15_load { ap_none {  { conv_biases_15_load in_data 0 32 } } }
	conv_output { ap_fifo {  { conv_output_din fifo_port_we 1 16 }  { conv_output_full_n fifo_status 0 1 }  { conv_output_write fifo_data 1 1 } } }
}
