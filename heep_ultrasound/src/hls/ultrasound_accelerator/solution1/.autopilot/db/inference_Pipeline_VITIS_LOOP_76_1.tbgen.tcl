set moduleName inference_Pipeline_VITIS_LOOP_76_1
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
set C_modelName {inference_Pipeline_VITIS_LOOP_76_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ linear_weights_15 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_14 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_13 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_12 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_11 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_10 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_9 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_8 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_7 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_6 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_5 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_4 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_3 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_2 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_1 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_0 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ pool_output int 16 regular {fifo 0 volatile }  }
	{ linear_biases_0_load int 32 regular  }
	{ linear_biases_1_load int 32 regular  }
	{ linear_biases_2_load int 32 regular  }
	{ linear_biases_3_load int 32 regular  }
	{ linear_biases_4_load int 32 regular  }
	{ linear_biases_5_load int 32 regular  }
	{ linear_biases_6_load int 32 regular  }
	{ linear_biases_7_load int 32 regular  }
	{ linear_biases_8_load int 32 regular  }
	{ linear_biases_9_load int 32 regular  }
	{ linear_biases_10_load int 32 regular  }
	{ linear_biases_11_load int 32 regular  }
	{ linear_biases_12_load int 32 regular  }
	{ linear_biases_13_load int 32 regular  }
	{ linear_biases_14_load int 32 regular  }
	{ linear_biases_15_load int 32 regular  }
	{ output_r int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "linear_weights_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pool_output", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_6_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_7_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_8_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_9_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_10_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_11_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_12_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_13_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_14_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_15_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 124
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool_output_dout sc_in sc_lv 16 signal 16 } 
	{ pool_output_empty_n sc_in sc_logic 1 signal 16 } 
	{ pool_output_read sc_out sc_logic 1 signal 16 } 
	{ output_r_din sc_out sc_lv 16 signal 33 } 
	{ output_r_full_n sc_in sc_logic 1 signal 33 } 
	{ output_r_write sc_out sc_logic 1 signal 33 } 
	{ linear_weights_15_address0 sc_out sc_lv 4 signal 0 } 
	{ linear_weights_15_ce0 sc_out sc_logic 1 signal 0 } 
	{ linear_weights_15_q0 sc_in sc_lv 32 signal 0 } 
	{ linear_weights_15_address1 sc_out sc_lv 4 signal 0 } 
	{ linear_weights_15_ce1 sc_out sc_logic 1 signal 0 } 
	{ linear_weights_15_q1 sc_in sc_lv 32 signal 0 } 
	{ linear_weights_14_address0 sc_out sc_lv 4 signal 1 } 
	{ linear_weights_14_ce0 sc_out sc_logic 1 signal 1 } 
	{ linear_weights_14_q0 sc_in sc_lv 32 signal 1 } 
	{ linear_weights_14_address1 sc_out sc_lv 4 signal 1 } 
	{ linear_weights_14_ce1 sc_out sc_logic 1 signal 1 } 
	{ linear_weights_14_q1 sc_in sc_lv 32 signal 1 } 
	{ linear_weights_13_address0 sc_out sc_lv 4 signal 2 } 
	{ linear_weights_13_ce0 sc_out sc_logic 1 signal 2 } 
	{ linear_weights_13_q0 sc_in sc_lv 32 signal 2 } 
	{ linear_weights_13_address1 sc_out sc_lv 4 signal 2 } 
	{ linear_weights_13_ce1 sc_out sc_logic 1 signal 2 } 
	{ linear_weights_13_q1 sc_in sc_lv 32 signal 2 } 
	{ linear_weights_12_address0 sc_out sc_lv 4 signal 3 } 
	{ linear_weights_12_ce0 sc_out sc_logic 1 signal 3 } 
	{ linear_weights_12_q0 sc_in sc_lv 32 signal 3 } 
	{ linear_weights_12_address1 sc_out sc_lv 4 signal 3 } 
	{ linear_weights_12_ce1 sc_out sc_logic 1 signal 3 } 
	{ linear_weights_12_q1 sc_in sc_lv 32 signal 3 } 
	{ linear_weights_11_address0 sc_out sc_lv 4 signal 4 } 
	{ linear_weights_11_ce0 sc_out sc_logic 1 signal 4 } 
	{ linear_weights_11_q0 sc_in sc_lv 32 signal 4 } 
	{ linear_weights_11_address1 sc_out sc_lv 4 signal 4 } 
	{ linear_weights_11_ce1 sc_out sc_logic 1 signal 4 } 
	{ linear_weights_11_q1 sc_in sc_lv 32 signal 4 } 
	{ linear_weights_10_address0 sc_out sc_lv 4 signal 5 } 
	{ linear_weights_10_ce0 sc_out sc_logic 1 signal 5 } 
	{ linear_weights_10_q0 sc_in sc_lv 32 signal 5 } 
	{ linear_weights_10_address1 sc_out sc_lv 4 signal 5 } 
	{ linear_weights_10_ce1 sc_out sc_logic 1 signal 5 } 
	{ linear_weights_10_q1 sc_in sc_lv 32 signal 5 } 
	{ linear_weights_9_address0 sc_out sc_lv 4 signal 6 } 
	{ linear_weights_9_ce0 sc_out sc_logic 1 signal 6 } 
	{ linear_weights_9_q0 sc_in sc_lv 32 signal 6 } 
	{ linear_weights_9_address1 sc_out sc_lv 4 signal 6 } 
	{ linear_weights_9_ce1 sc_out sc_logic 1 signal 6 } 
	{ linear_weights_9_q1 sc_in sc_lv 32 signal 6 } 
	{ linear_weights_8_address0 sc_out sc_lv 4 signal 7 } 
	{ linear_weights_8_ce0 sc_out sc_logic 1 signal 7 } 
	{ linear_weights_8_q0 sc_in sc_lv 32 signal 7 } 
	{ linear_weights_8_address1 sc_out sc_lv 4 signal 7 } 
	{ linear_weights_8_ce1 sc_out sc_logic 1 signal 7 } 
	{ linear_weights_8_q1 sc_in sc_lv 32 signal 7 } 
	{ linear_weights_7_address0 sc_out sc_lv 4 signal 8 } 
	{ linear_weights_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ linear_weights_7_q0 sc_in sc_lv 32 signal 8 } 
	{ linear_weights_7_address1 sc_out sc_lv 4 signal 8 } 
	{ linear_weights_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ linear_weights_7_q1 sc_in sc_lv 32 signal 8 } 
	{ linear_weights_6_address0 sc_out sc_lv 4 signal 9 } 
	{ linear_weights_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ linear_weights_6_q0 sc_in sc_lv 32 signal 9 } 
	{ linear_weights_6_address1 sc_out sc_lv 4 signal 9 } 
	{ linear_weights_6_ce1 sc_out sc_logic 1 signal 9 } 
	{ linear_weights_6_q1 sc_in sc_lv 32 signal 9 } 
	{ linear_weights_5_address0 sc_out sc_lv 4 signal 10 } 
	{ linear_weights_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ linear_weights_5_q0 sc_in sc_lv 32 signal 10 } 
	{ linear_weights_5_address1 sc_out sc_lv 4 signal 10 } 
	{ linear_weights_5_ce1 sc_out sc_logic 1 signal 10 } 
	{ linear_weights_5_q1 sc_in sc_lv 32 signal 10 } 
	{ linear_weights_4_address0 sc_out sc_lv 4 signal 11 } 
	{ linear_weights_4_ce0 sc_out sc_logic 1 signal 11 } 
	{ linear_weights_4_q0 sc_in sc_lv 32 signal 11 } 
	{ linear_weights_4_address1 sc_out sc_lv 4 signal 11 } 
	{ linear_weights_4_ce1 sc_out sc_logic 1 signal 11 } 
	{ linear_weights_4_q1 sc_in sc_lv 32 signal 11 } 
	{ linear_weights_3_address0 sc_out sc_lv 4 signal 12 } 
	{ linear_weights_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ linear_weights_3_q0 sc_in sc_lv 32 signal 12 } 
	{ linear_weights_3_address1 sc_out sc_lv 4 signal 12 } 
	{ linear_weights_3_ce1 sc_out sc_logic 1 signal 12 } 
	{ linear_weights_3_q1 sc_in sc_lv 32 signal 12 } 
	{ linear_weights_2_address0 sc_out sc_lv 4 signal 13 } 
	{ linear_weights_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ linear_weights_2_q0 sc_in sc_lv 32 signal 13 } 
	{ linear_weights_2_address1 sc_out sc_lv 4 signal 13 } 
	{ linear_weights_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ linear_weights_2_q1 sc_in sc_lv 32 signal 13 } 
	{ linear_weights_1_address0 sc_out sc_lv 4 signal 14 } 
	{ linear_weights_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ linear_weights_1_q0 sc_in sc_lv 32 signal 14 } 
	{ linear_weights_1_address1 sc_out sc_lv 4 signal 14 } 
	{ linear_weights_1_ce1 sc_out sc_logic 1 signal 14 } 
	{ linear_weights_1_q1 sc_in sc_lv 32 signal 14 } 
	{ linear_weights_0_address0 sc_out sc_lv 4 signal 15 } 
	{ linear_weights_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ linear_weights_0_q0 sc_in sc_lv 32 signal 15 } 
	{ linear_weights_0_address1 sc_out sc_lv 4 signal 15 } 
	{ linear_weights_0_ce1 sc_out sc_logic 1 signal 15 } 
	{ linear_weights_0_q1 sc_in sc_lv 32 signal 15 } 
	{ linear_biases_0_load sc_in sc_lv 32 signal 17 } 
	{ linear_biases_1_load sc_in sc_lv 32 signal 18 } 
	{ linear_biases_2_load sc_in sc_lv 32 signal 19 } 
	{ linear_biases_3_load sc_in sc_lv 32 signal 20 } 
	{ linear_biases_4_load sc_in sc_lv 32 signal 21 } 
	{ linear_biases_5_load sc_in sc_lv 32 signal 22 } 
	{ linear_biases_6_load sc_in sc_lv 32 signal 23 } 
	{ linear_biases_7_load sc_in sc_lv 32 signal 24 } 
	{ linear_biases_8_load sc_in sc_lv 32 signal 25 } 
	{ linear_biases_9_load sc_in sc_lv 32 signal 26 } 
	{ linear_biases_10_load sc_in sc_lv 32 signal 27 } 
	{ linear_biases_11_load sc_in sc_lv 32 signal 28 } 
	{ linear_biases_12_load sc_in sc_lv 32 signal 29 } 
	{ linear_biases_13_load sc_in sc_lv 32 signal 30 } 
	{ linear_biases_14_load sc_in sc_lv 32 signal 31 } 
	{ linear_biases_15_load sc_in sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pool_output", "role": "dout" }} , 
 	{ "name": "pool_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_output", "role": "empty_n" }} , 
 	{ "name": "pool_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_output", "role": "read" }} , 
 	{ "name": "output_r_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "din" }} , 
 	{ "name": "output_r_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "full_n" }} , 
 	{ "name": "output_r_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "write" }} , 
 	{ "name": "linear_weights_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "address0" }} , 
 	{ "name": "linear_weights_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "ce0" }} , 
 	{ "name": "linear_weights_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "q0" }} , 
 	{ "name": "linear_weights_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "address1" }} , 
 	{ "name": "linear_weights_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "ce1" }} , 
 	{ "name": "linear_weights_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "q1" }} , 
 	{ "name": "linear_weights_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "address0" }} , 
 	{ "name": "linear_weights_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "ce0" }} , 
 	{ "name": "linear_weights_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "q0" }} , 
 	{ "name": "linear_weights_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "address1" }} , 
 	{ "name": "linear_weights_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "ce1" }} , 
 	{ "name": "linear_weights_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "q1" }} , 
 	{ "name": "linear_weights_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "address0" }} , 
 	{ "name": "linear_weights_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "ce0" }} , 
 	{ "name": "linear_weights_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "q0" }} , 
 	{ "name": "linear_weights_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "address1" }} , 
 	{ "name": "linear_weights_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "ce1" }} , 
 	{ "name": "linear_weights_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "q1" }} , 
 	{ "name": "linear_weights_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "address0" }} , 
 	{ "name": "linear_weights_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "ce0" }} , 
 	{ "name": "linear_weights_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "q0" }} , 
 	{ "name": "linear_weights_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "address1" }} , 
 	{ "name": "linear_weights_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "ce1" }} , 
 	{ "name": "linear_weights_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "q1" }} , 
 	{ "name": "linear_weights_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "address0" }} , 
 	{ "name": "linear_weights_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "ce0" }} , 
 	{ "name": "linear_weights_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "q0" }} , 
 	{ "name": "linear_weights_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "address1" }} , 
 	{ "name": "linear_weights_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "ce1" }} , 
 	{ "name": "linear_weights_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "q1" }} , 
 	{ "name": "linear_weights_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "address0" }} , 
 	{ "name": "linear_weights_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "ce0" }} , 
 	{ "name": "linear_weights_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "q0" }} , 
 	{ "name": "linear_weights_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "address1" }} , 
 	{ "name": "linear_weights_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "ce1" }} , 
 	{ "name": "linear_weights_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "q1" }} , 
 	{ "name": "linear_weights_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "address0" }} , 
 	{ "name": "linear_weights_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "ce0" }} , 
 	{ "name": "linear_weights_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "q0" }} , 
 	{ "name": "linear_weights_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "address1" }} , 
 	{ "name": "linear_weights_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "ce1" }} , 
 	{ "name": "linear_weights_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "q1" }} , 
 	{ "name": "linear_weights_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "address0" }} , 
 	{ "name": "linear_weights_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "ce0" }} , 
 	{ "name": "linear_weights_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "q0" }} , 
 	{ "name": "linear_weights_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "address1" }} , 
 	{ "name": "linear_weights_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "ce1" }} , 
 	{ "name": "linear_weights_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "q1" }} , 
 	{ "name": "linear_weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "address0" }} , 
 	{ "name": "linear_weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "ce0" }} , 
 	{ "name": "linear_weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "q0" }} , 
 	{ "name": "linear_weights_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "address1" }} , 
 	{ "name": "linear_weights_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "ce1" }} , 
 	{ "name": "linear_weights_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "q1" }} , 
 	{ "name": "linear_weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "address0" }} , 
 	{ "name": "linear_weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "ce0" }} , 
 	{ "name": "linear_weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "q0" }} , 
 	{ "name": "linear_weights_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "address1" }} , 
 	{ "name": "linear_weights_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "ce1" }} , 
 	{ "name": "linear_weights_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "q1" }} , 
 	{ "name": "linear_weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "address0" }} , 
 	{ "name": "linear_weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "ce0" }} , 
 	{ "name": "linear_weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "q0" }} , 
 	{ "name": "linear_weights_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "address1" }} , 
 	{ "name": "linear_weights_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "ce1" }} , 
 	{ "name": "linear_weights_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "q1" }} , 
 	{ "name": "linear_weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "address0" }} , 
 	{ "name": "linear_weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "ce0" }} , 
 	{ "name": "linear_weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "q0" }} , 
 	{ "name": "linear_weights_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "address1" }} , 
 	{ "name": "linear_weights_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "ce1" }} , 
 	{ "name": "linear_weights_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "q1" }} , 
 	{ "name": "linear_weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "address0" }} , 
 	{ "name": "linear_weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "ce0" }} , 
 	{ "name": "linear_weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "q0" }} , 
 	{ "name": "linear_weights_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "address1" }} , 
 	{ "name": "linear_weights_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "ce1" }} , 
 	{ "name": "linear_weights_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "q1" }} , 
 	{ "name": "linear_weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "address0" }} , 
 	{ "name": "linear_weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "ce0" }} , 
 	{ "name": "linear_weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "q0" }} , 
 	{ "name": "linear_weights_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "address1" }} , 
 	{ "name": "linear_weights_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "ce1" }} , 
 	{ "name": "linear_weights_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "q1" }} , 
 	{ "name": "linear_weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "address0" }} , 
 	{ "name": "linear_weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "ce0" }} , 
 	{ "name": "linear_weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "q0" }} , 
 	{ "name": "linear_weights_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "address1" }} , 
 	{ "name": "linear_weights_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "ce1" }} , 
 	{ "name": "linear_weights_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "q1" }} , 
 	{ "name": "linear_weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "address0" }} , 
 	{ "name": "linear_weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "ce0" }} , 
 	{ "name": "linear_weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "q0" }} , 
 	{ "name": "linear_weights_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "address1" }} , 
 	{ "name": "linear_weights_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "ce1" }} , 
 	{ "name": "linear_weights_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "q1" }} , 
 	{ "name": "linear_biases_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_0_load", "role": "default" }} , 
 	{ "name": "linear_biases_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_1_load", "role": "default" }} , 
 	{ "name": "linear_biases_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_2_load", "role": "default" }} , 
 	{ "name": "linear_biases_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_3_load", "role": "default" }} , 
 	{ "name": "linear_biases_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_4_load", "role": "default" }} , 
 	{ "name": "linear_biases_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_5_load", "role": "default" }} , 
 	{ "name": "linear_biases_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_6_load", "role": "default" }} , 
 	{ "name": "linear_biases_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_7_load", "role": "default" }} , 
 	{ "name": "linear_biases_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_8_load", "role": "default" }} , 
 	{ "name": "linear_biases_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_9_load", "role": "default" }} , 
 	{ "name": "linear_biases_10_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_10_load", "role": "default" }} , 
 	{ "name": "linear_biases_11_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_11_load", "role": "default" }} , 
 	{ "name": "linear_biases_12_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_12_load", "role": "default" }} , 
 	{ "name": "linear_biases_13_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_13_load", "role": "default" }} , 
 	{ "name": "linear_biases_14_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_14_load", "role": "default" }} , 
 	{ "name": "linear_biases_15_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_15_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "inference_Pipeline_VITIS_LOOP_76_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "265", "EstimateLatencyMax" : "265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "linear_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linear_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_output", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pool_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "linear_biases_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U46", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U47", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U48", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U49", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U50", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U51", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U52", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U53", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U54", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U55", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U56", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U57", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U58", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U59", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U60", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U61", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U62", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U63", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U64", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inference_Pipeline_VITIS_LOOP_76_1 {
		linear_weights_15 {Type I LastRead 8 FirstWrite -1}
		linear_weights_14 {Type I LastRead 8 FirstWrite -1}
		linear_weights_13 {Type I LastRead 8 FirstWrite -1}
		linear_weights_12 {Type I LastRead 8 FirstWrite -1}
		linear_weights_11 {Type I LastRead 8 FirstWrite -1}
		linear_weights_10 {Type I LastRead 8 FirstWrite -1}
		linear_weights_9 {Type I LastRead 8 FirstWrite -1}
		linear_weights_8 {Type I LastRead 8 FirstWrite -1}
		linear_weights_7 {Type I LastRead 8 FirstWrite -1}
		linear_weights_6 {Type I LastRead 8 FirstWrite -1}
		linear_weights_5 {Type I LastRead 8 FirstWrite -1}
		linear_weights_4 {Type I LastRead 8 FirstWrite -1}
		linear_weights_3 {Type I LastRead 8 FirstWrite -1}
		linear_weights_2 {Type I LastRead 8 FirstWrite -1}
		linear_weights_1 {Type I LastRead 8 FirstWrite -1}
		linear_weights_0 {Type I LastRead 8 FirstWrite -1}
		pool_output {Type I LastRead 16 FirstWrite -1}
		linear_biases_0_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_1_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_2_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_3_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_4_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_5_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_6_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_7_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_8_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_9_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_10_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_11_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_12_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_13_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_14_load {Type I LastRead 0 FirstWrite -1}
		linear_biases_15_load {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 23}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "265", "Max" : "265"}
	, {"Name" : "Interval", "Min" : "265", "Max" : "265"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	linear_weights_15 { ap_memory {  { linear_weights_15_address0 mem_address 1 4 }  { linear_weights_15_ce0 mem_ce 1 1 }  { linear_weights_15_q0 in_data 0 32 }  { linear_weights_15_address1 MemPortADDR2 1 4 }  { linear_weights_15_ce1 MemPortCE2 1 1 }  { linear_weights_15_q1 in_data 0 32 } } }
	linear_weights_14 { ap_memory {  { linear_weights_14_address0 mem_address 1 4 }  { linear_weights_14_ce0 mem_ce 1 1 }  { linear_weights_14_q0 in_data 0 32 }  { linear_weights_14_address1 MemPortADDR2 1 4 }  { linear_weights_14_ce1 MemPortCE2 1 1 }  { linear_weights_14_q1 in_data 0 32 } } }
	linear_weights_13 { ap_memory {  { linear_weights_13_address0 mem_address 1 4 }  { linear_weights_13_ce0 mem_ce 1 1 }  { linear_weights_13_q0 in_data 0 32 }  { linear_weights_13_address1 MemPortADDR2 1 4 }  { linear_weights_13_ce1 MemPortCE2 1 1 }  { linear_weights_13_q1 in_data 0 32 } } }
	linear_weights_12 { ap_memory {  { linear_weights_12_address0 mem_address 1 4 }  { linear_weights_12_ce0 mem_ce 1 1 }  { linear_weights_12_q0 in_data 0 32 }  { linear_weights_12_address1 MemPortADDR2 1 4 }  { linear_weights_12_ce1 MemPortCE2 1 1 }  { linear_weights_12_q1 in_data 0 32 } } }
	linear_weights_11 { ap_memory {  { linear_weights_11_address0 mem_address 1 4 }  { linear_weights_11_ce0 mem_ce 1 1 }  { linear_weights_11_q0 in_data 0 32 }  { linear_weights_11_address1 MemPortADDR2 1 4 }  { linear_weights_11_ce1 MemPortCE2 1 1 }  { linear_weights_11_q1 in_data 0 32 } } }
	linear_weights_10 { ap_memory {  { linear_weights_10_address0 mem_address 1 4 }  { linear_weights_10_ce0 mem_ce 1 1 }  { linear_weights_10_q0 in_data 0 32 }  { linear_weights_10_address1 MemPortADDR2 1 4 }  { linear_weights_10_ce1 MemPortCE2 1 1 }  { linear_weights_10_q1 in_data 0 32 } } }
	linear_weights_9 { ap_memory {  { linear_weights_9_address0 mem_address 1 4 }  { linear_weights_9_ce0 mem_ce 1 1 }  { linear_weights_9_q0 in_data 0 32 }  { linear_weights_9_address1 MemPortADDR2 1 4 }  { linear_weights_9_ce1 MemPortCE2 1 1 }  { linear_weights_9_q1 in_data 0 32 } } }
	linear_weights_8 { ap_memory {  { linear_weights_8_address0 mem_address 1 4 }  { linear_weights_8_ce0 mem_ce 1 1 }  { linear_weights_8_q0 in_data 0 32 }  { linear_weights_8_address1 MemPortADDR2 1 4 }  { linear_weights_8_ce1 MemPortCE2 1 1 }  { linear_weights_8_q1 in_data 0 32 } } }
	linear_weights_7 { ap_memory {  { linear_weights_7_address0 mem_address 1 4 }  { linear_weights_7_ce0 mem_ce 1 1 }  { linear_weights_7_q0 in_data 0 32 }  { linear_weights_7_address1 MemPortADDR2 1 4 }  { linear_weights_7_ce1 MemPortCE2 1 1 }  { linear_weights_7_q1 in_data 0 32 } } }
	linear_weights_6 { ap_memory {  { linear_weights_6_address0 mem_address 1 4 }  { linear_weights_6_ce0 mem_ce 1 1 }  { linear_weights_6_q0 in_data 0 32 }  { linear_weights_6_address1 MemPortADDR2 1 4 }  { linear_weights_6_ce1 MemPortCE2 1 1 }  { linear_weights_6_q1 in_data 0 32 } } }
	linear_weights_5 { ap_memory {  { linear_weights_5_address0 mem_address 1 4 }  { linear_weights_5_ce0 mem_ce 1 1 }  { linear_weights_5_q0 in_data 0 32 }  { linear_weights_5_address1 MemPortADDR2 1 4 }  { linear_weights_5_ce1 MemPortCE2 1 1 }  { linear_weights_5_q1 in_data 0 32 } } }
	linear_weights_4 { ap_memory {  { linear_weights_4_address0 mem_address 1 4 }  { linear_weights_4_ce0 mem_ce 1 1 }  { linear_weights_4_q0 in_data 0 32 }  { linear_weights_4_address1 MemPortADDR2 1 4 }  { linear_weights_4_ce1 MemPortCE2 1 1 }  { linear_weights_4_q1 in_data 0 32 } } }
	linear_weights_3 { ap_memory {  { linear_weights_3_address0 mem_address 1 4 }  { linear_weights_3_ce0 mem_ce 1 1 }  { linear_weights_3_q0 in_data 0 32 }  { linear_weights_3_address1 MemPortADDR2 1 4 }  { linear_weights_3_ce1 MemPortCE2 1 1 }  { linear_weights_3_q1 in_data 0 32 } } }
	linear_weights_2 { ap_memory {  { linear_weights_2_address0 mem_address 1 4 }  { linear_weights_2_ce0 mem_ce 1 1 }  { linear_weights_2_q0 in_data 0 32 }  { linear_weights_2_address1 MemPortADDR2 1 4 }  { linear_weights_2_ce1 MemPortCE2 1 1 }  { linear_weights_2_q1 in_data 0 32 } } }
	linear_weights_1 { ap_memory {  { linear_weights_1_address0 mem_address 1 4 }  { linear_weights_1_ce0 mem_ce 1 1 }  { linear_weights_1_q0 in_data 0 32 }  { linear_weights_1_address1 MemPortADDR2 1 4 }  { linear_weights_1_ce1 MemPortCE2 1 1 }  { linear_weights_1_q1 in_data 0 32 } } }
	linear_weights_0 { ap_memory {  { linear_weights_0_address0 mem_address 1 4 }  { linear_weights_0_ce0 mem_ce 1 1 }  { linear_weights_0_q0 in_data 0 32 }  { linear_weights_0_address1 MemPortADDR2 1 4 }  { linear_weights_0_ce1 MemPortCE2 1 1 }  { linear_weights_0_q1 in_data 0 32 } } }
	pool_output { ap_fifo {  { pool_output_dout fifo_port_we 0 16 }  { pool_output_empty_n fifo_status 0 1 }  { pool_output_read fifo_data 1 1 } } }
	linear_biases_0_load { ap_none {  { linear_biases_0_load in_data 0 32 } } }
	linear_biases_1_load { ap_none {  { linear_biases_1_load in_data 0 32 } } }
	linear_biases_2_load { ap_none {  { linear_biases_2_load in_data 0 32 } } }
	linear_biases_3_load { ap_none {  { linear_biases_3_load in_data 0 32 } } }
	linear_biases_4_load { ap_none {  { linear_biases_4_load in_data 0 32 } } }
	linear_biases_5_load { ap_none {  { linear_biases_5_load in_data 0 32 } } }
	linear_biases_6_load { ap_none {  { linear_biases_6_load in_data 0 32 } } }
	linear_biases_7_load { ap_none {  { linear_biases_7_load in_data 0 32 } } }
	linear_biases_8_load { ap_none {  { linear_biases_8_load in_data 0 32 } } }
	linear_biases_9_load { ap_none {  { linear_biases_9_load in_data 0 32 } } }
	linear_biases_10_load { ap_none {  { linear_biases_10_load in_data 0 32 } } }
	linear_biases_11_load { ap_none {  { linear_biases_11_load in_data 0 32 } } }
	linear_biases_12_load { ap_none {  { linear_biases_12_load in_data 0 32 } } }
	linear_biases_13_load { ap_none {  { linear_biases_13_load in_data 0 32 } } }
	linear_biases_14_load { ap_none {  { linear_biases_14_load in_data 0 32 } } }
	linear_biases_15_load { ap_none {  { linear_biases_15_load in_data 0 32 } } }
	output_r { ap_fifo {  { output_r_din fifo_port_we 1 16 }  { output_r_full_n fifo_status 0 1 }  { output_r_write fifo_data 1 1 } } }
}
