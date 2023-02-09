set moduleName inference
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {inference}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {fifo 0 volatile }  }
	{ output_r int 16 regular {fifo 1 volatile }  }
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
	{ conv_biases_0 int 32 regular {pointer 0}  }
	{ conv_biases_1 int 32 regular {pointer 0}  }
	{ conv_biases_2 int 32 regular {pointer 0}  }
	{ conv_biases_3 int 32 regular {pointer 0}  }
	{ conv_biases_4 int 32 regular {pointer 0}  }
	{ conv_biases_5 int 32 regular {pointer 0}  }
	{ conv_biases_6 int 32 regular {pointer 0}  }
	{ conv_biases_7 int 32 regular {pointer 0}  }
	{ conv_biases_8 int 32 regular {pointer 0}  }
	{ conv_biases_9 int 32 regular {pointer 0}  }
	{ conv_biases_10 int 32 regular {pointer 0}  }
	{ conv_biases_11 int 32 regular {pointer 0}  }
	{ conv_biases_12 int 32 regular {pointer 0}  }
	{ conv_biases_13 int 32 regular {pointer 0}  }
	{ conv_biases_14 int 32 regular {pointer 0}  }
	{ conv_biases_15 int 32 regular {pointer 0}  }
	{ pool_size int 32 regular  }
	{ pool_stride int 32 regular  }
	{ linear_weights_0 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_1 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_2 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_3 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_4 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_5 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_6 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_7 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_8 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_9 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_10 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_11 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_12 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_13 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_14 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_weights_15 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ linear_biases_0 int 32 regular {pointer 0}  }
	{ linear_biases_1 int 32 regular {pointer 0}  }
	{ linear_biases_2 int 32 regular {pointer 0}  }
	{ linear_biases_3 int 32 regular {pointer 0}  }
	{ linear_biases_4 int 32 regular {pointer 0}  }
	{ linear_biases_5 int 32 regular {pointer 0}  }
	{ linear_biases_6 int 32 regular {pointer 0}  }
	{ linear_biases_7 int 32 regular {pointer 0}  }
	{ linear_biases_8 int 32 regular {pointer 0}  }
	{ linear_biases_9 int 32 regular {pointer 0}  }
	{ linear_biases_10 int 32 regular {pointer 0}  }
	{ linear_biases_11 int 32 regular {pointer 0}  }
	{ linear_biases_12 int 32 regular {pointer 0}  }
	{ linear_biases_13 int 32 regular {pointer 0}  }
	{ linear_biases_14 int 32 regular {pointer 0}  }
	{ linear_biases_15 int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
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
 	{ "Name" : "conv_biases_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_biases_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pool_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pool_stride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_weights_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "linear_biases_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 190
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_dout sc_in sc_lv 16 signal 0 } 
	{ input_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_r_read sc_out sc_logic 1 signal 0 } 
	{ output_r_din sc_out sc_lv 16 signal 1 } 
	{ output_r_full_n sc_in sc_logic 1 signal 1 } 
	{ output_r_write sc_out sc_logic 1 signal 1 } 
	{ conv_weights_0_address0 sc_out sc_lv 7 signal 2 } 
	{ conv_weights_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_weights_0_q0 sc_in sc_lv 32 signal 2 } 
	{ conv_weights_1_address0 sc_out sc_lv 7 signal 3 } 
	{ conv_weights_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_weights_1_q0 sc_in sc_lv 32 signal 3 } 
	{ conv_weights_2_address0 sc_out sc_lv 7 signal 4 } 
	{ conv_weights_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv_weights_2_q0 sc_in sc_lv 32 signal 4 } 
	{ conv_weights_3_address0 sc_out sc_lv 7 signal 5 } 
	{ conv_weights_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ conv_weights_3_q0 sc_in sc_lv 32 signal 5 } 
	{ conv_weights_4_address0 sc_out sc_lv 7 signal 6 } 
	{ conv_weights_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ conv_weights_4_q0 sc_in sc_lv 32 signal 6 } 
	{ conv_weights_5_address0 sc_out sc_lv 7 signal 7 } 
	{ conv_weights_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv_weights_5_q0 sc_in sc_lv 32 signal 7 } 
	{ conv_weights_6_address0 sc_out sc_lv 7 signal 8 } 
	{ conv_weights_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ conv_weights_6_q0 sc_in sc_lv 32 signal 8 } 
	{ conv_weights_7_address0 sc_out sc_lv 7 signal 9 } 
	{ conv_weights_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ conv_weights_7_q0 sc_in sc_lv 32 signal 9 } 
	{ conv_weights_8_address0 sc_out sc_lv 7 signal 10 } 
	{ conv_weights_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ conv_weights_8_q0 sc_in sc_lv 32 signal 10 } 
	{ conv_weights_9_address0 sc_out sc_lv 7 signal 11 } 
	{ conv_weights_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ conv_weights_9_q0 sc_in sc_lv 32 signal 11 } 
	{ conv_weights_10_address0 sc_out sc_lv 7 signal 12 } 
	{ conv_weights_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ conv_weights_10_q0 sc_in sc_lv 32 signal 12 } 
	{ conv_weights_11_address0 sc_out sc_lv 7 signal 13 } 
	{ conv_weights_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ conv_weights_11_q0 sc_in sc_lv 32 signal 13 } 
	{ conv_weights_12_address0 sc_out sc_lv 7 signal 14 } 
	{ conv_weights_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ conv_weights_12_q0 sc_in sc_lv 32 signal 14 } 
	{ conv_weights_13_address0 sc_out sc_lv 7 signal 15 } 
	{ conv_weights_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ conv_weights_13_q0 sc_in sc_lv 32 signal 15 } 
	{ conv_weights_14_address0 sc_out sc_lv 7 signal 16 } 
	{ conv_weights_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ conv_weights_14_q0 sc_in sc_lv 32 signal 16 } 
	{ conv_weights_15_address0 sc_out sc_lv 7 signal 17 } 
	{ conv_weights_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ conv_weights_15_q0 sc_in sc_lv 32 signal 17 } 
	{ conv_biases_0 sc_in sc_lv 32 signal 18 } 
	{ conv_biases_1 sc_in sc_lv 32 signal 19 } 
	{ conv_biases_2 sc_in sc_lv 32 signal 20 } 
	{ conv_biases_3 sc_in sc_lv 32 signal 21 } 
	{ conv_biases_4 sc_in sc_lv 32 signal 22 } 
	{ conv_biases_5 sc_in sc_lv 32 signal 23 } 
	{ conv_biases_6 sc_in sc_lv 32 signal 24 } 
	{ conv_biases_7 sc_in sc_lv 32 signal 25 } 
	{ conv_biases_8 sc_in sc_lv 32 signal 26 } 
	{ conv_biases_9 sc_in sc_lv 32 signal 27 } 
	{ conv_biases_10 sc_in sc_lv 32 signal 28 } 
	{ conv_biases_11 sc_in sc_lv 32 signal 29 } 
	{ conv_biases_12 sc_in sc_lv 32 signal 30 } 
	{ conv_biases_13 sc_in sc_lv 32 signal 31 } 
	{ conv_biases_14 sc_in sc_lv 32 signal 32 } 
	{ conv_biases_15 sc_in sc_lv 32 signal 33 } 
	{ pool_size sc_in sc_lv 32 signal 34 } 
	{ pool_stride sc_in sc_lv 32 signal 35 } 
	{ linear_weights_0_address0 sc_out sc_lv 4 signal 36 } 
	{ linear_weights_0_ce0 sc_out sc_logic 1 signal 36 } 
	{ linear_weights_0_q0 sc_in sc_lv 32 signal 36 } 
	{ linear_weights_0_address1 sc_out sc_lv 4 signal 36 } 
	{ linear_weights_0_ce1 sc_out sc_logic 1 signal 36 } 
	{ linear_weights_0_q1 sc_in sc_lv 32 signal 36 } 
	{ linear_weights_1_address0 sc_out sc_lv 4 signal 37 } 
	{ linear_weights_1_ce0 sc_out sc_logic 1 signal 37 } 
	{ linear_weights_1_q0 sc_in sc_lv 32 signal 37 } 
	{ linear_weights_1_address1 sc_out sc_lv 4 signal 37 } 
	{ linear_weights_1_ce1 sc_out sc_logic 1 signal 37 } 
	{ linear_weights_1_q1 sc_in sc_lv 32 signal 37 } 
	{ linear_weights_2_address0 sc_out sc_lv 4 signal 38 } 
	{ linear_weights_2_ce0 sc_out sc_logic 1 signal 38 } 
	{ linear_weights_2_q0 sc_in sc_lv 32 signal 38 } 
	{ linear_weights_2_address1 sc_out sc_lv 4 signal 38 } 
	{ linear_weights_2_ce1 sc_out sc_logic 1 signal 38 } 
	{ linear_weights_2_q1 sc_in sc_lv 32 signal 38 } 
	{ linear_weights_3_address0 sc_out sc_lv 4 signal 39 } 
	{ linear_weights_3_ce0 sc_out sc_logic 1 signal 39 } 
	{ linear_weights_3_q0 sc_in sc_lv 32 signal 39 } 
	{ linear_weights_3_address1 sc_out sc_lv 4 signal 39 } 
	{ linear_weights_3_ce1 sc_out sc_logic 1 signal 39 } 
	{ linear_weights_3_q1 sc_in sc_lv 32 signal 39 } 
	{ linear_weights_4_address0 sc_out sc_lv 4 signal 40 } 
	{ linear_weights_4_ce0 sc_out sc_logic 1 signal 40 } 
	{ linear_weights_4_q0 sc_in sc_lv 32 signal 40 } 
	{ linear_weights_4_address1 sc_out sc_lv 4 signal 40 } 
	{ linear_weights_4_ce1 sc_out sc_logic 1 signal 40 } 
	{ linear_weights_4_q1 sc_in sc_lv 32 signal 40 } 
	{ linear_weights_5_address0 sc_out sc_lv 4 signal 41 } 
	{ linear_weights_5_ce0 sc_out sc_logic 1 signal 41 } 
	{ linear_weights_5_q0 sc_in sc_lv 32 signal 41 } 
	{ linear_weights_5_address1 sc_out sc_lv 4 signal 41 } 
	{ linear_weights_5_ce1 sc_out sc_logic 1 signal 41 } 
	{ linear_weights_5_q1 sc_in sc_lv 32 signal 41 } 
	{ linear_weights_6_address0 sc_out sc_lv 4 signal 42 } 
	{ linear_weights_6_ce0 sc_out sc_logic 1 signal 42 } 
	{ linear_weights_6_q0 sc_in sc_lv 32 signal 42 } 
	{ linear_weights_6_address1 sc_out sc_lv 4 signal 42 } 
	{ linear_weights_6_ce1 sc_out sc_logic 1 signal 42 } 
	{ linear_weights_6_q1 sc_in sc_lv 32 signal 42 } 
	{ linear_weights_7_address0 sc_out sc_lv 4 signal 43 } 
	{ linear_weights_7_ce0 sc_out sc_logic 1 signal 43 } 
	{ linear_weights_7_q0 sc_in sc_lv 32 signal 43 } 
	{ linear_weights_7_address1 sc_out sc_lv 4 signal 43 } 
	{ linear_weights_7_ce1 sc_out sc_logic 1 signal 43 } 
	{ linear_weights_7_q1 sc_in sc_lv 32 signal 43 } 
	{ linear_weights_8_address0 sc_out sc_lv 4 signal 44 } 
	{ linear_weights_8_ce0 sc_out sc_logic 1 signal 44 } 
	{ linear_weights_8_q0 sc_in sc_lv 32 signal 44 } 
	{ linear_weights_8_address1 sc_out sc_lv 4 signal 44 } 
	{ linear_weights_8_ce1 sc_out sc_logic 1 signal 44 } 
	{ linear_weights_8_q1 sc_in sc_lv 32 signal 44 } 
	{ linear_weights_9_address0 sc_out sc_lv 4 signal 45 } 
	{ linear_weights_9_ce0 sc_out sc_logic 1 signal 45 } 
	{ linear_weights_9_q0 sc_in sc_lv 32 signal 45 } 
	{ linear_weights_9_address1 sc_out sc_lv 4 signal 45 } 
	{ linear_weights_9_ce1 sc_out sc_logic 1 signal 45 } 
	{ linear_weights_9_q1 sc_in sc_lv 32 signal 45 } 
	{ linear_weights_10_address0 sc_out sc_lv 4 signal 46 } 
	{ linear_weights_10_ce0 sc_out sc_logic 1 signal 46 } 
	{ linear_weights_10_q0 sc_in sc_lv 32 signal 46 } 
	{ linear_weights_10_address1 sc_out sc_lv 4 signal 46 } 
	{ linear_weights_10_ce1 sc_out sc_logic 1 signal 46 } 
	{ linear_weights_10_q1 sc_in sc_lv 32 signal 46 } 
	{ linear_weights_11_address0 sc_out sc_lv 4 signal 47 } 
	{ linear_weights_11_ce0 sc_out sc_logic 1 signal 47 } 
	{ linear_weights_11_q0 sc_in sc_lv 32 signal 47 } 
	{ linear_weights_11_address1 sc_out sc_lv 4 signal 47 } 
	{ linear_weights_11_ce1 sc_out sc_logic 1 signal 47 } 
	{ linear_weights_11_q1 sc_in sc_lv 32 signal 47 } 
	{ linear_weights_12_address0 sc_out sc_lv 4 signal 48 } 
	{ linear_weights_12_ce0 sc_out sc_logic 1 signal 48 } 
	{ linear_weights_12_q0 sc_in sc_lv 32 signal 48 } 
	{ linear_weights_12_address1 sc_out sc_lv 4 signal 48 } 
	{ linear_weights_12_ce1 sc_out sc_logic 1 signal 48 } 
	{ linear_weights_12_q1 sc_in sc_lv 32 signal 48 } 
	{ linear_weights_13_address0 sc_out sc_lv 4 signal 49 } 
	{ linear_weights_13_ce0 sc_out sc_logic 1 signal 49 } 
	{ linear_weights_13_q0 sc_in sc_lv 32 signal 49 } 
	{ linear_weights_13_address1 sc_out sc_lv 4 signal 49 } 
	{ linear_weights_13_ce1 sc_out sc_logic 1 signal 49 } 
	{ linear_weights_13_q1 sc_in sc_lv 32 signal 49 } 
	{ linear_weights_14_address0 sc_out sc_lv 4 signal 50 } 
	{ linear_weights_14_ce0 sc_out sc_logic 1 signal 50 } 
	{ linear_weights_14_q0 sc_in sc_lv 32 signal 50 } 
	{ linear_weights_14_address1 sc_out sc_lv 4 signal 50 } 
	{ linear_weights_14_ce1 sc_out sc_logic 1 signal 50 } 
	{ linear_weights_14_q1 sc_in sc_lv 32 signal 50 } 
	{ linear_weights_15_address0 sc_out sc_lv 4 signal 51 } 
	{ linear_weights_15_ce0 sc_out sc_logic 1 signal 51 } 
	{ linear_weights_15_q0 sc_in sc_lv 32 signal 51 } 
	{ linear_weights_15_address1 sc_out sc_lv 4 signal 51 } 
	{ linear_weights_15_ce1 sc_out sc_logic 1 signal 51 } 
	{ linear_weights_15_q1 sc_in sc_lv 32 signal 51 } 
	{ linear_biases_0 sc_in sc_lv 32 signal 52 } 
	{ linear_biases_1 sc_in sc_lv 32 signal 53 } 
	{ linear_biases_2 sc_in sc_lv 32 signal 54 } 
	{ linear_biases_3 sc_in sc_lv 32 signal 55 } 
	{ linear_biases_4 sc_in sc_lv 32 signal 56 } 
	{ linear_biases_5 sc_in sc_lv 32 signal 57 } 
	{ linear_biases_6 sc_in sc_lv 32 signal 58 } 
	{ linear_biases_7 sc_in sc_lv 32 signal 59 } 
	{ linear_biases_8 sc_in sc_lv 32 signal 60 } 
	{ linear_biases_9 sc_in sc_lv 32 signal 61 } 
	{ linear_biases_10 sc_in sc_lv 32 signal 62 } 
	{ linear_biases_11 sc_in sc_lv 32 signal 63 } 
	{ linear_biases_12 sc_in sc_lv 32 signal 64 } 
	{ linear_biases_13 sc_in sc_lv 32 signal 65 } 
	{ linear_biases_14 sc_in sc_lv 32 signal 66 } 
	{ linear_biases_15 sc_in sc_lv 32 signal 67 } 
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
 	{ "name": "output_r_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "din" }} , 
 	{ "name": "output_r_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "full_n" }} , 
 	{ "name": "output_r_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "write" }} , 
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
 	{ "name": "conv_biases_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_0", "role": "default" }} , 
 	{ "name": "conv_biases_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_1", "role": "default" }} , 
 	{ "name": "conv_biases_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_2", "role": "default" }} , 
 	{ "name": "conv_biases_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_3", "role": "default" }} , 
 	{ "name": "conv_biases_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_4", "role": "default" }} , 
 	{ "name": "conv_biases_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_5", "role": "default" }} , 
 	{ "name": "conv_biases_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_6", "role": "default" }} , 
 	{ "name": "conv_biases_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_7", "role": "default" }} , 
 	{ "name": "conv_biases_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_8", "role": "default" }} , 
 	{ "name": "conv_biases_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_9", "role": "default" }} , 
 	{ "name": "conv_biases_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_10", "role": "default" }} , 
 	{ "name": "conv_biases_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_11", "role": "default" }} , 
 	{ "name": "conv_biases_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_12", "role": "default" }} , 
 	{ "name": "conv_biases_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_13", "role": "default" }} , 
 	{ "name": "conv_biases_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_14", "role": "default" }} , 
 	{ "name": "conv_biases_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_biases_15", "role": "default" }} , 
 	{ "name": "pool_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_size", "role": "default" }} , 
 	{ "name": "pool_stride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_stride", "role": "default" }} , 
 	{ "name": "linear_weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "address0" }} , 
 	{ "name": "linear_weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "ce0" }} , 
 	{ "name": "linear_weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "q0" }} , 
 	{ "name": "linear_weights_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "address1" }} , 
 	{ "name": "linear_weights_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "ce1" }} , 
 	{ "name": "linear_weights_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_0", "role": "q1" }} , 
 	{ "name": "linear_weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "address0" }} , 
 	{ "name": "linear_weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "ce0" }} , 
 	{ "name": "linear_weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "q0" }} , 
 	{ "name": "linear_weights_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "address1" }} , 
 	{ "name": "linear_weights_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "ce1" }} , 
 	{ "name": "linear_weights_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_1", "role": "q1" }} , 
 	{ "name": "linear_weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "address0" }} , 
 	{ "name": "linear_weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "ce0" }} , 
 	{ "name": "linear_weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "q0" }} , 
 	{ "name": "linear_weights_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "address1" }} , 
 	{ "name": "linear_weights_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "ce1" }} , 
 	{ "name": "linear_weights_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_2", "role": "q1" }} , 
 	{ "name": "linear_weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "address0" }} , 
 	{ "name": "linear_weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "ce0" }} , 
 	{ "name": "linear_weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "q0" }} , 
 	{ "name": "linear_weights_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "address1" }} , 
 	{ "name": "linear_weights_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "ce1" }} , 
 	{ "name": "linear_weights_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_3", "role": "q1" }} , 
 	{ "name": "linear_weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "address0" }} , 
 	{ "name": "linear_weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "ce0" }} , 
 	{ "name": "linear_weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "q0" }} , 
 	{ "name": "linear_weights_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "address1" }} , 
 	{ "name": "linear_weights_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "ce1" }} , 
 	{ "name": "linear_weights_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_4", "role": "q1" }} , 
 	{ "name": "linear_weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "address0" }} , 
 	{ "name": "linear_weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "ce0" }} , 
 	{ "name": "linear_weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "q0" }} , 
 	{ "name": "linear_weights_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "address1" }} , 
 	{ "name": "linear_weights_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "ce1" }} , 
 	{ "name": "linear_weights_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_5", "role": "q1" }} , 
 	{ "name": "linear_weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "address0" }} , 
 	{ "name": "linear_weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "ce0" }} , 
 	{ "name": "linear_weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "q0" }} , 
 	{ "name": "linear_weights_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "address1" }} , 
 	{ "name": "linear_weights_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "ce1" }} , 
 	{ "name": "linear_weights_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_6", "role": "q1" }} , 
 	{ "name": "linear_weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "address0" }} , 
 	{ "name": "linear_weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "ce0" }} , 
 	{ "name": "linear_weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "q0" }} , 
 	{ "name": "linear_weights_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "address1" }} , 
 	{ "name": "linear_weights_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "ce1" }} , 
 	{ "name": "linear_weights_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_7", "role": "q1" }} , 
 	{ "name": "linear_weights_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "address0" }} , 
 	{ "name": "linear_weights_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "ce0" }} , 
 	{ "name": "linear_weights_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "q0" }} , 
 	{ "name": "linear_weights_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "address1" }} , 
 	{ "name": "linear_weights_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "ce1" }} , 
 	{ "name": "linear_weights_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_8", "role": "q1" }} , 
 	{ "name": "linear_weights_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "address0" }} , 
 	{ "name": "linear_weights_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "ce0" }} , 
 	{ "name": "linear_weights_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "q0" }} , 
 	{ "name": "linear_weights_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "address1" }} , 
 	{ "name": "linear_weights_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "ce1" }} , 
 	{ "name": "linear_weights_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_9", "role": "q1" }} , 
 	{ "name": "linear_weights_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "address0" }} , 
 	{ "name": "linear_weights_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "ce0" }} , 
 	{ "name": "linear_weights_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "q0" }} , 
 	{ "name": "linear_weights_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "address1" }} , 
 	{ "name": "linear_weights_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "ce1" }} , 
 	{ "name": "linear_weights_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_10", "role": "q1" }} , 
 	{ "name": "linear_weights_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "address0" }} , 
 	{ "name": "linear_weights_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "ce0" }} , 
 	{ "name": "linear_weights_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "q0" }} , 
 	{ "name": "linear_weights_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "address1" }} , 
 	{ "name": "linear_weights_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "ce1" }} , 
 	{ "name": "linear_weights_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_11", "role": "q1" }} , 
 	{ "name": "linear_weights_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "address0" }} , 
 	{ "name": "linear_weights_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "ce0" }} , 
 	{ "name": "linear_weights_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "q0" }} , 
 	{ "name": "linear_weights_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "address1" }} , 
 	{ "name": "linear_weights_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "ce1" }} , 
 	{ "name": "linear_weights_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_12", "role": "q1" }} , 
 	{ "name": "linear_weights_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "address0" }} , 
 	{ "name": "linear_weights_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "ce0" }} , 
 	{ "name": "linear_weights_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "q0" }} , 
 	{ "name": "linear_weights_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "address1" }} , 
 	{ "name": "linear_weights_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "ce1" }} , 
 	{ "name": "linear_weights_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_13", "role": "q1" }} , 
 	{ "name": "linear_weights_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "address0" }} , 
 	{ "name": "linear_weights_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "ce0" }} , 
 	{ "name": "linear_weights_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "q0" }} , 
 	{ "name": "linear_weights_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "address1" }} , 
 	{ "name": "linear_weights_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "ce1" }} , 
 	{ "name": "linear_weights_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_14", "role": "q1" }} , 
 	{ "name": "linear_weights_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "address0" }} , 
 	{ "name": "linear_weights_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "ce0" }} , 
 	{ "name": "linear_weights_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "q0" }} , 
 	{ "name": "linear_weights_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "address1" }} , 
 	{ "name": "linear_weights_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "ce1" }} , 
 	{ "name": "linear_weights_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_weights_15", "role": "q1" }} , 
 	{ "name": "linear_biases_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_0", "role": "default" }} , 
 	{ "name": "linear_biases_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_1", "role": "default" }} , 
 	{ "name": "linear_biases_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_2", "role": "default" }} , 
 	{ "name": "linear_biases_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_3", "role": "default" }} , 
 	{ "name": "linear_biases_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_4", "role": "default" }} , 
 	{ "name": "linear_biases_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_5", "role": "default" }} , 
 	{ "name": "linear_biases_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_6", "role": "default" }} , 
 	{ "name": "linear_biases_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_7", "role": "default" }} , 
 	{ "name": "linear_biases_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_8", "role": "default" }} , 
 	{ "name": "linear_biases_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_9", "role": "default" }} , 
 	{ "name": "linear_biases_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_10", "role": "default" }} , 
 	{ "name": "linear_biases_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_11", "role": "default" }} , 
 	{ "name": "linear_biases_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_12", "role": "default" }} , 
 	{ "name": "linear_biases_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_13", "role": "default" }} , 
 	{ "name": "linear_biases_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_14", "role": "default" }} , 
 	{ "name": "linear_biases_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linear_biases_15", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "9", "30", "31"],
		"CDFG" : "inference",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "input_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "output_r", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "conv_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Port" : "conv_weights_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "conv_biases_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_biases_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Port" : "linear_weights_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "linear_biases_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "linear_biases_15", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394.mux_165_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394.mux_165_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394.mul_32s_16s_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3_fu_394.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_54_1_fu_449", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "inference_Pipeline_VITIS_LOOP_54_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_output", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_output", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pool_output_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter36", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter36", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_54_1_fu_449.sdiv_32ns_32ns_16_36_1_U40", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_54_1_fu_449.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mux_165_32_1_1_U46", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mux_165_32_1_1_U47", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mux_165_32_1_1_U48", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U49", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U50", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U51", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U52", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U53", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U54", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U55", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U56", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U57", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U58", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U59", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U60", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U61", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mul_mul_16s_16s_16_4_1_U62", "Parent" : "9"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U63", "Parent" : "9"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.mac_muladd_16s_16s_16ns_16_4_1_U64", "Parent" : "9"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inference_Pipeline_VITIS_LOOP_76_1_fu_457.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_fifo_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_output_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inference {
		input_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 23}
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
		conv_biases_0 {Type I LastRead 0 FirstWrite -1}
		conv_biases_1 {Type I LastRead 0 FirstWrite -1}
		conv_biases_2 {Type I LastRead 0 FirstWrite -1}
		conv_biases_3 {Type I LastRead 0 FirstWrite -1}
		conv_biases_4 {Type I LastRead 0 FirstWrite -1}
		conv_biases_5 {Type I LastRead 0 FirstWrite -1}
		conv_biases_6 {Type I LastRead 0 FirstWrite -1}
		conv_biases_7 {Type I LastRead 0 FirstWrite -1}
		conv_biases_8 {Type I LastRead 0 FirstWrite -1}
		conv_biases_9 {Type I LastRead 0 FirstWrite -1}
		conv_biases_10 {Type I LastRead 0 FirstWrite -1}
		conv_biases_11 {Type I LastRead 0 FirstWrite -1}
		conv_biases_12 {Type I LastRead 0 FirstWrite -1}
		conv_biases_13 {Type I LastRead 0 FirstWrite -1}
		conv_biases_14 {Type I LastRead 0 FirstWrite -1}
		conv_biases_15 {Type I LastRead 0 FirstWrite -1}
		pool_size {Type I LastRead 0 FirstWrite -1}
		pool_stride {Type I LastRead 0 FirstWrite -1}
		linear_weights_0 {Type I LastRead 8 FirstWrite -1}
		linear_weights_1 {Type I LastRead 8 FirstWrite -1}
		linear_weights_2 {Type I LastRead 8 FirstWrite -1}
		linear_weights_3 {Type I LastRead 8 FirstWrite -1}
		linear_weights_4 {Type I LastRead 8 FirstWrite -1}
		linear_weights_5 {Type I LastRead 8 FirstWrite -1}
		linear_weights_6 {Type I LastRead 8 FirstWrite -1}
		linear_weights_7 {Type I LastRead 8 FirstWrite -1}
		linear_weights_8 {Type I LastRead 8 FirstWrite -1}
		linear_weights_9 {Type I LastRead 8 FirstWrite -1}
		linear_weights_10 {Type I LastRead 8 FirstWrite -1}
		linear_weights_11 {Type I LastRead 8 FirstWrite -1}
		linear_weights_12 {Type I LastRead 8 FirstWrite -1}
		linear_weights_13 {Type I LastRead 8 FirstWrite -1}
		linear_weights_14 {Type I LastRead 8 FirstWrite -1}
		linear_weights_15 {Type I LastRead 8 FirstWrite -1}
		linear_biases_0 {Type I LastRead 6 FirstWrite -1}
		linear_biases_1 {Type I LastRead 6 FirstWrite -1}
		linear_biases_2 {Type I LastRead 6 FirstWrite -1}
		linear_biases_3 {Type I LastRead 6 FirstWrite -1}
		linear_biases_4 {Type I LastRead 6 FirstWrite -1}
		linear_biases_5 {Type I LastRead 6 FirstWrite -1}
		linear_biases_6 {Type I LastRead 6 FirstWrite -1}
		linear_biases_7 {Type I LastRead 6 FirstWrite -1}
		linear_biases_8 {Type I LastRead 6 FirstWrite -1}
		linear_biases_9 {Type I LastRead 6 FirstWrite -1}
		linear_biases_10 {Type I LastRead 6 FirstWrite -1}
		linear_biases_11 {Type I LastRead 6 FirstWrite -1}
		linear_biases_12 {Type I LastRead 6 FirstWrite -1}
		linear_biases_13 {Type I LastRead 6 FirstWrite -1}
		linear_biases_14 {Type I LastRead 6 FirstWrite -1}
		linear_biases_15 {Type I LastRead 6 FirstWrite -1}}
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
		conv_output {Type O LastRead -1 FirstWrite 3}}
	inference_Pipeline_VITIS_LOOP_54_1 {
		pool_stride {Type I LastRead 0 FirstWrite -1}
		conv_output {Type I LastRead 1 FirstWrite -1}
		pool_size {Type I LastRead 0 FirstWrite -1}
		pool_output {Type O LastRead -1 FirstWrite 36}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_fifo {  { input_r_dout fifo_port_we 0 16 }  { input_r_empty_n fifo_status 0 1 }  { input_r_read fifo_data 1 1 } } }
	output_r { ap_fifo {  { output_r_din fifo_port_we 1 16 }  { output_r_full_n fifo_status 0 1 }  { output_r_write fifo_data 1 1 } } }
	conv_weights_0 { ap_memory {  { conv_weights_0_address0 mem_address 1 7 }  { conv_weights_0_ce0 mem_ce 1 1 }  { conv_weights_0_q0 mem_dout 0 32 } } }
	conv_weights_1 { ap_memory {  { conv_weights_1_address0 mem_address 1 7 }  { conv_weights_1_ce0 mem_ce 1 1 }  { conv_weights_1_q0 mem_dout 0 32 } } }
	conv_weights_2 { ap_memory {  { conv_weights_2_address0 mem_address 1 7 }  { conv_weights_2_ce0 mem_ce 1 1 }  { conv_weights_2_q0 mem_dout 0 32 } } }
	conv_weights_3 { ap_memory {  { conv_weights_3_address0 mem_address 1 7 }  { conv_weights_3_ce0 mem_ce 1 1 }  { conv_weights_3_q0 mem_dout 0 32 } } }
	conv_weights_4 { ap_memory {  { conv_weights_4_address0 mem_address 1 7 }  { conv_weights_4_ce0 mem_ce 1 1 }  { conv_weights_4_q0 mem_dout 0 32 } } }
	conv_weights_5 { ap_memory {  { conv_weights_5_address0 mem_address 1 7 }  { conv_weights_5_ce0 mem_ce 1 1 }  { conv_weights_5_q0 mem_dout 0 32 } } }
	conv_weights_6 { ap_memory {  { conv_weights_6_address0 mem_address 1 7 }  { conv_weights_6_ce0 mem_ce 1 1 }  { conv_weights_6_q0 mem_dout 0 32 } } }
	conv_weights_7 { ap_memory {  { conv_weights_7_address0 mem_address 1 7 }  { conv_weights_7_ce0 mem_ce 1 1 }  { conv_weights_7_q0 mem_dout 0 32 } } }
	conv_weights_8 { ap_memory {  { conv_weights_8_address0 mem_address 1 7 }  { conv_weights_8_ce0 mem_ce 1 1 }  { conv_weights_8_q0 mem_dout 0 32 } } }
	conv_weights_9 { ap_memory {  { conv_weights_9_address0 mem_address 1 7 }  { conv_weights_9_ce0 mem_ce 1 1 }  { conv_weights_9_q0 mem_dout 0 32 } } }
	conv_weights_10 { ap_memory {  { conv_weights_10_address0 mem_address 1 7 }  { conv_weights_10_ce0 mem_ce 1 1 }  { conv_weights_10_q0 mem_dout 0 32 } } }
	conv_weights_11 { ap_memory {  { conv_weights_11_address0 mem_address 1 7 }  { conv_weights_11_ce0 mem_ce 1 1 }  { conv_weights_11_q0 mem_dout 0 32 } } }
	conv_weights_12 { ap_memory {  { conv_weights_12_address0 mem_address 1 7 }  { conv_weights_12_ce0 mem_ce 1 1 }  { conv_weights_12_q0 mem_dout 0 32 } } }
	conv_weights_13 { ap_memory {  { conv_weights_13_address0 mem_address 1 7 }  { conv_weights_13_ce0 mem_ce 1 1 }  { conv_weights_13_q0 mem_dout 0 32 } } }
	conv_weights_14 { ap_memory {  { conv_weights_14_address0 mem_address 1 7 }  { conv_weights_14_ce0 mem_ce 1 1 }  { conv_weights_14_q0 mem_dout 0 32 } } }
	conv_weights_15 { ap_memory {  { conv_weights_15_address0 mem_address 1 7 }  { conv_weights_15_ce0 mem_ce 1 1 }  { conv_weights_15_q0 mem_dout 0 32 } } }
	conv_biases_0 { ap_none {  { conv_biases_0 in_data 0 32 } } }
	conv_biases_1 { ap_none {  { conv_biases_1 in_data 0 32 } } }
	conv_biases_2 { ap_none {  { conv_biases_2 in_data 0 32 } } }
	conv_biases_3 { ap_none {  { conv_biases_3 in_data 0 32 } } }
	conv_biases_4 { ap_none {  { conv_biases_4 in_data 0 32 } } }
	conv_biases_5 { ap_none {  { conv_biases_5 in_data 0 32 } } }
	conv_biases_6 { ap_none {  { conv_biases_6 in_data 0 32 } } }
	conv_biases_7 { ap_none {  { conv_biases_7 in_data 0 32 } } }
	conv_biases_8 { ap_none {  { conv_biases_8 in_data 0 32 } } }
	conv_biases_9 { ap_none {  { conv_biases_9 in_data 0 32 } } }
	conv_biases_10 { ap_none {  { conv_biases_10 in_data 0 32 } } }
	conv_biases_11 { ap_none {  { conv_biases_11 in_data 0 32 } } }
	conv_biases_12 { ap_none {  { conv_biases_12 in_data 0 32 } } }
	conv_biases_13 { ap_none {  { conv_biases_13 in_data 0 32 } } }
	conv_biases_14 { ap_none {  { conv_biases_14 in_data 0 32 } } }
	conv_biases_15 { ap_none {  { conv_biases_15 in_data 0 32 } } }
	pool_size { ap_none {  { pool_size in_data 0 32 } } }
	pool_stride { ap_none {  { pool_stride in_data 0 32 } } }
	linear_weights_0 { ap_memory {  { linear_weights_0_address0 mem_address 1 4 }  { linear_weights_0_ce0 mem_ce 1 1 }  { linear_weights_0_q0 mem_dout 0 32 }  { linear_weights_0_address1 MemPortADDR2 1 4 }  { linear_weights_0_ce1 MemPortCE2 1 1 }  { linear_weights_0_q1 MemPortDOUT2 0 32 } } }
	linear_weights_1 { ap_memory {  { linear_weights_1_address0 mem_address 1 4 }  { linear_weights_1_ce0 mem_ce 1 1 }  { linear_weights_1_q0 mem_dout 0 32 }  { linear_weights_1_address1 MemPortADDR2 1 4 }  { linear_weights_1_ce1 MemPortCE2 1 1 }  { linear_weights_1_q1 MemPortDOUT2 0 32 } } }
	linear_weights_2 { ap_memory {  { linear_weights_2_address0 mem_address 1 4 }  { linear_weights_2_ce0 mem_ce 1 1 }  { linear_weights_2_q0 mem_dout 0 32 }  { linear_weights_2_address1 MemPortADDR2 1 4 }  { linear_weights_2_ce1 MemPortCE2 1 1 }  { linear_weights_2_q1 MemPortDOUT2 0 32 } } }
	linear_weights_3 { ap_memory {  { linear_weights_3_address0 mem_address 1 4 }  { linear_weights_3_ce0 mem_ce 1 1 }  { linear_weights_3_q0 mem_dout 0 32 }  { linear_weights_3_address1 MemPortADDR2 1 4 }  { linear_weights_3_ce1 MemPortCE2 1 1 }  { linear_weights_3_q1 MemPortDOUT2 0 32 } } }
	linear_weights_4 { ap_memory {  { linear_weights_4_address0 mem_address 1 4 }  { linear_weights_4_ce0 mem_ce 1 1 }  { linear_weights_4_q0 mem_dout 0 32 }  { linear_weights_4_address1 MemPortADDR2 1 4 }  { linear_weights_4_ce1 MemPortCE2 1 1 }  { linear_weights_4_q1 MemPortDOUT2 0 32 } } }
	linear_weights_5 { ap_memory {  { linear_weights_5_address0 mem_address 1 4 }  { linear_weights_5_ce0 mem_ce 1 1 }  { linear_weights_5_q0 mem_dout 0 32 }  { linear_weights_5_address1 MemPortADDR2 1 4 }  { linear_weights_5_ce1 MemPortCE2 1 1 }  { linear_weights_5_q1 MemPortDOUT2 0 32 } } }
	linear_weights_6 { ap_memory {  { linear_weights_6_address0 mem_address 1 4 }  { linear_weights_6_ce0 mem_ce 1 1 }  { linear_weights_6_q0 mem_dout 0 32 }  { linear_weights_6_address1 MemPortADDR2 1 4 }  { linear_weights_6_ce1 MemPortCE2 1 1 }  { linear_weights_6_q1 MemPortDOUT2 0 32 } } }
	linear_weights_7 { ap_memory {  { linear_weights_7_address0 mem_address 1 4 }  { linear_weights_7_ce0 mem_ce 1 1 }  { linear_weights_7_q0 mem_dout 0 32 }  { linear_weights_7_address1 MemPortADDR2 1 4 }  { linear_weights_7_ce1 MemPortCE2 1 1 }  { linear_weights_7_q1 MemPortDOUT2 0 32 } } }
	linear_weights_8 { ap_memory {  { linear_weights_8_address0 mem_address 1 4 }  { linear_weights_8_ce0 mem_ce 1 1 }  { linear_weights_8_q0 mem_dout 0 32 }  { linear_weights_8_address1 MemPortADDR2 1 4 }  { linear_weights_8_ce1 MemPortCE2 1 1 }  { linear_weights_8_q1 MemPortDOUT2 0 32 } } }
	linear_weights_9 { ap_memory {  { linear_weights_9_address0 mem_address 1 4 }  { linear_weights_9_ce0 mem_ce 1 1 }  { linear_weights_9_q0 mem_dout 0 32 }  { linear_weights_9_address1 MemPortADDR2 1 4 }  { linear_weights_9_ce1 MemPortCE2 1 1 }  { linear_weights_9_q1 MemPortDOUT2 0 32 } } }
	linear_weights_10 { ap_memory {  { linear_weights_10_address0 mem_address 1 4 }  { linear_weights_10_ce0 mem_ce 1 1 }  { linear_weights_10_q0 mem_dout 0 32 }  { linear_weights_10_address1 MemPortADDR2 1 4 }  { linear_weights_10_ce1 MemPortCE2 1 1 }  { linear_weights_10_q1 MemPortDOUT2 0 32 } } }
	linear_weights_11 { ap_memory {  { linear_weights_11_address0 mem_address 1 4 }  { linear_weights_11_ce0 mem_ce 1 1 }  { linear_weights_11_q0 mem_dout 0 32 }  { linear_weights_11_address1 MemPortADDR2 1 4 }  { linear_weights_11_ce1 MemPortCE2 1 1 }  { linear_weights_11_q1 MemPortDOUT2 0 32 } } }
	linear_weights_12 { ap_memory {  { linear_weights_12_address0 mem_address 1 4 }  { linear_weights_12_ce0 mem_ce 1 1 }  { linear_weights_12_q0 mem_dout 0 32 }  { linear_weights_12_address1 MemPortADDR2 1 4 }  { linear_weights_12_ce1 MemPortCE2 1 1 }  { linear_weights_12_q1 MemPortDOUT2 0 32 } } }
	linear_weights_13 { ap_memory {  { linear_weights_13_address0 mem_address 1 4 }  { linear_weights_13_ce0 mem_ce 1 1 }  { linear_weights_13_q0 mem_dout 0 32 }  { linear_weights_13_address1 MemPortADDR2 1 4 }  { linear_weights_13_ce1 MemPortCE2 1 1 }  { linear_weights_13_q1 MemPortDOUT2 0 32 } } }
	linear_weights_14 { ap_memory {  { linear_weights_14_address0 mem_address 1 4 }  { linear_weights_14_ce0 mem_ce 1 1 }  { linear_weights_14_q0 mem_dout 0 32 }  { linear_weights_14_address1 MemPortADDR2 1 4 }  { linear_weights_14_ce1 MemPortCE2 1 1 }  { linear_weights_14_q1 MemPortDOUT2 0 32 } } }
	linear_weights_15 { ap_memory {  { linear_weights_15_address0 mem_address 1 4 }  { linear_weights_15_ce0 mem_ce 1 1 }  { linear_weights_15_q0 mem_dout 0 32 }  { linear_weights_15_address1 MemPortADDR2 1 4 }  { linear_weights_15_ce1 MemPortCE2 1 1 }  { linear_weights_15_q1 MemPortDOUT2 0 32 } } }
	linear_biases_0 { ap_none {  { linear_biases_0 in_data 0 32 } } }
	linear_biases_1 { ap_none {  { linear_biases_1 in_data 0 32 } } }
	linear_biases_2 { ap_none {  { linear_biases_2 in_data 0 32 } } }
	linear_biases_3 { ap_none {  { linear_biases_3 in_data 0 32 } } }
	linear_biases_4 { ap_none {  { linear_biases_4 in_data 0 32 } } }
	linear_biases_5 { ap_none {  { linear_biases_5 in_data 0 32 } } }
	linear_biases_6 { ap_none {  { linear_biases_6 in_data 0 32 } } }
	linear_biases_7 { ap_none {  { linear_biases_7 in_data 0 32 } } }
	linear_biases_8 { ap_none {  { linear_biases_8 in_data 0 32 } } }
	linear_biases_9 { ap_none {  { linear_biases_9 in_data 0 32 } } }
	linear_biases_10 { ap_none {  { linear_biases_10 in_data 0 32 } } }
	linear_biases_11 { ap_none {  { linear_biases_11 in_data 0 32 } } }
	linear_biases_12 { ap_none {  { linear_biases_12 in_data 0 32 } } }
	linear_biases_13 { ap_none {  { linear_biases_13 in_data 0 32 } } }
	linear_biases_14 { ap_none {  { linear_biases_14 in_data 0 32 } } }
	linear_biases_15 { ap_none {  { linear_biases_15 in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_r { fifo_read 1 no_conditional }
	output_r { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
