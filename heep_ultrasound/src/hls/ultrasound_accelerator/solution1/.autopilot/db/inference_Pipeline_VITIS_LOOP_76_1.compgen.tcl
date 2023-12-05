# This script segment is generated automatically by AutoPilot

set id 49
set name inference_mul_mul_16s_16s_16_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 16
set arg_lists {i0 {16 1 +} i1 {16 1 +} p {16 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 52
set name inference_mac_muladd_16s_16s_16ns_16_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 16
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 16
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {16 1 +} i2 {16 0 +} p {16 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name linear_weights_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_15 \
    op interface \
    ports { linear_weights_15_address0 { O 4 vector } linear_weights_15_ce0 { O 1 bit } linear_weights_15_q0 { I 32 vector } linear_weights_15_address1 { O 4 vector } linear_weights_15_ce1 { O 1 bit } linear_weights_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name linear_weights_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_14 \
    op interface \
    ports { linear_weights_14_address0 { O 4 vector } linear_weights_14_ce0 { O 1 bit } linear_weights_14_q0 { I 32 vector } linear_weights_14_address1 { O 4 vector } linear_weights_14_ce1 { O 1 bit } linear_weights_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name linear_weights_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_13 \
    op interface \
    ports { linear_weights_13_address0 { O 4 vector } linear_weights_13_ce0 { O 1 bit } linear_weights_13_q0 { I 32 vector } linear_weights_13_address1 { O 4 vector } linear_weights_13_ce1 { O 1 bit } linear_weights_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name linear_weights_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_12 \
    op interface \
    ports { linear_weights_12_address0 { O 4 vector } linear_weights_12_ce0 { O 1 bit } linear_weights_12_q0 { I 32 vector } linear_weights_12_address1 { O 4 vector } linear_weights_12_ce1 { O 1 bit } linear_weights_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name linear_weights_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_11 \
    op interface \
    ports { linear_weights_11_address0 { O 4 vector } linear_weights_11_ce0 { O 1 bit } linear_weights_11_q0 { I 32 vector } linear_weights_11_address1 { O 4 vector } linear_weights_11_ce1 { O 1 bit } linear_weights_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name linear_weights_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_10 \
    op interface \
    ports { linear_weights_10_address0 { O 4 vector } linear_weights_10_ce0 { O 1 bit } linear_weights_10_q0 { I 32 vector } linear_weights_10_address1 { O 4 vector } linear_weights_10_ce1 { O 1 bit } linear_weights_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name linear_weights_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_9 \
    op interface \
    ports { linear_weights_9_address0 { O 4 vector } linear_weights_9_ce0 { O 1 bit } linear_weights_9_q0 { I 32 vector } linear_weights_9_address1 { O 4 vector } linear_weights_9_ce1 { O 1 bit } linear_weights_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name linear_weights_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_8 \
    op interface \
    ports { linear_weights_8_address0 { O 4 vector } linear_weights_8_ce0 { O 1 bit } linear_weights_8_q0 { I 32 vector } linear_weights_8_address1 { O 4 vector } linear_weights_8_ce1 { O 1 bit } linear_weights_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name linear_weights_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_7 \
    op interface \
    ports { linear_weights_7_address0 { O 4 vector } linear_weights_7_ce0 { O 1 bit } linear_weights_7_q0 { I 32 vector } linear_weights_7_address1 { O 4 vector } linear_weights_7_ce1 { O 1 bit } linear_weights_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name linear_weights_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_6 \
    op interface \
    ports { linear_weights_6_address0 { O 4 vector } linear_weights_6_ce0 { O 1 bit } linear_weights_6_q0 { I 32 vector } linear_weights_6_address1 { O 4 vector } linear_weights_6_ce1 { O 1 bit } linear_weights_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name linear_weights_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_5 \
    op interface \
    ports { linear_weights_5_address0 { O 4 vector } linear_weights_5_ce0 { O 1 bit } linear_weights_5_q0 { I 32 vector } linear_weights_5_address1 { O 4 vector } linear_weights_5_ce1 { O 1 bit } linear_weights_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name linear_weights_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_4 \
    op interface \
    ports { linear_weights_4_address0 { O 4 vector } linear_weights_4_ce0 { O 1 bit } linear_weights_4_q0 { I 32 vector } linear_weights_4_address1 { O 4 vector } linear_weights_4_ce1 { O 1 bit } linear_weights_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name linear_weights_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_3 \
    op interface \
    ports { linear_weights_3_address0 { O 4 vector } linear_weights_3_ce0 { O 1 bit } linear_weights_3_q0 { I 32 vector } linear_weights_3_address1 { O 4 vector } linear_weights_3_ce1 { O 1 bit } linear_weights_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name linear_weights_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_2 \
    op interface \
    ports { linear_weights_2_address0 { O 4 vector } linear_weights_2_ce0 { O 1 bit } linear_weights_2_q0 { I 32 vector } linear_weights_2_address1 { O 4 vector } linear_weights_2_ce1 { O 1 bit } linear_weights_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name linear_weights_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_1 \
    op interface \
    ports { linear_weights_1_address0 { O 4 vector } linear_weights_1_ce0 { O 1 bit } linear_weights_1_q0 { I 32 vector } linear_weights_1_address1 { O 4 vector } linear_weights_1_ce1 { O 1 bit } linear_weights_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name linear_weights_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_weights_0 \
    op interface \
    ports { linear_weights_0_address0 { O 4 vector } linear_weights_0_ce0 { O 1 bit } linear_weights_0_q0 { I 32 vector } linear_weights_0_address1 { O 4 vector } linear_weights_0_ce1 { O 1 bit } linear_weights_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_weights_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name pool_output \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_output \
    op interface \
    ports { pool_output_dout { I 16 vector } pool_output_empty_n { I 1 bit } pool_output_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name linear_biases_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_0_load \
    op interface \
    ports { linear_biases_0_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name linear_biases_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_1_load \
    op interface \
    ports { linear_biases_1_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name linear_biases_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_2_load \
    op interface \
    ports { linear_biases_2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name linear_biases_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_3_load \
    op interface \
    ports { linear_biases_3_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name linear_biases_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_4_load \
    op interface \
    ports { linear_biases_4_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name linear_biases_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_5_load \
    op interface \
    ports { linear_biases_5_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name linear_biases_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_6_load \
    op interface \
    ports { linear_biases_6_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name linear_biases_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_7_load \
    op interface \
    ports { linear_biases_7_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name linear_biases_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_8_load \
    op interface \
    ports { linear_biases_8_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name linear_biases_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_9_load \
    op interface \
    ports { linear_biases_9_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name linear_biases_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_10_load \
    op interface \
    ports { linear_biases_10_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name linear_biases_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_11_load \
    op interface \
    ports { linear_biases_11_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name linear_biases_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_12_load \
    op interface \
    ports { linear_biases_12_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name linear_biases_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_13_load \
    op interface \
    ports { linear_biases_13_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name linear_biases_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_14_load \
    op interface \
    ports { linear_biases_14_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name linear_biases_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_15_load \
    op interface \
    ports { linear_biases_15_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name output_r \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_r \
    op interface \
    ports { output_r_din { O 16 vector } output_r_full_n { I 1 bit } output_r_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName inference_flow_control_loop_pipe_sequential_init_U
set CompName inference_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix inference_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


