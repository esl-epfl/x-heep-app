set SynModuleInfo {
  {SRCNAME inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3 MODELNAME inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3 RTLNAME inference_inference_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_VITIS_LOOP_25_3
    SUBMODULES {
      {MODELNAME inference_mux_165_32_1_1 RTLNAME inference_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_mul_32s_16s_32_1_1 RTLNAME inference_mul_32s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_flow_control_loop_pipe_sequential_init RTLNAME inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME inference_Pipeline_VITIS_LOOP_54_1 MODELNAME inference_Pipeline_VITIS_LOOP_54_1 RTLNAME inference_inference_Pipeline_VITIS_LOOP_54_1
    SUBMODULES {
      {MODELNAME inference_sdiv_32ns_32ns_16_36_1 RTLNAME inference_sdiv_32ns_32ns_16_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inference_Pipeline_VITIS_LOOP_76_1 MODELNAME inference_Pipeline_VITIS_LOOP_76_1 RTLNAME inference_inference_Pipeline_VITIS_LOOP_76_1
    SUBMODULES {
      {MODELNAME inference_mul_mul_16s_16s_16_4_1 RTLNAME inference_mul_mul_16s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME inference_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inference MODELNAME inference RTLNAME inference IS_TOP 1
    SUBMODULES {
      {MODELNAME inference_fifo_w16_d2_S RTLNAME inference_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
