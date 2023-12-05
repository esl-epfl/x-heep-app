# This script segment is generated automatically by AutoPilot

# FIFO definition: 
set ID 101
set FifoName inference_fifo_w16_d2_S
set InstName conv_output_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 102
set FifoName inference_fifo_w16_d2_S
set InstName pool_output_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name conv_weights_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_0 \
    op interface \
    ports { conv_weights_0_address0 { O 7 vector } conv_weights_0_ce0 { O 1 bit } conv_weights_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name conv_weights_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_1 \
    op interface \
    ports { conv_weights_1_address0 { O 7 vector } conv_weights_1_ce0 { O 1 bit } conv_weights_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name conv_weights_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_2 \
    op interface \
    ports { conv_weights_2_address0 { O 7 vector } conv_weights_2_ce0 { O 1 bit } conv_weights_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name conv_weights_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_3 \
    op interface \
    ports { conv_weights_3_address0 { O 7 vector } conv_weights_3_ce0 { O 1 bit } conv_weights_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name conv_weights_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_4 \
    op interface \
    ports { conv_weights_4_address0 { O 7 vector } conv_weights_4_ce0 { O 1 bit } conv_weights_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name conv_weights_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_5 \
    op interface \
    ports { conv_weights_5_address0 { O 7 vector } conv_weights_5_ce0 { O 1 bit } conv_weights_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name conv_weights_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_6 \
    op interface \
    ports { conv_weights_6_address0 { O 7 vector } conv_weights_6_ce0 { O 1 bit } conv_weights_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name conv_weights_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_7 \
    op interface \
    ports { conv_weights_7_address0 { O 7 vector } conv_weights_7_ce0 { O 1 bit } conv_weights_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name conv_weights_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_8 \
    op interface \
    ports { conv_weights_8_address0 { O 7 vector } conv_weights_8_ce0 { O 1 bit } conv_weights_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name conv_weights_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_9 \
    op interface \
    ports { conv_weights_9_address0 { O 7 vector } conv_weights_9_ce0 { O 1 bit } conv_weights_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name conv_weights_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_10 \
    op interface \
    ports { conv_weights_10_address0 { O 7 vector } conv_weights_10_ce0 { O 1 bit } conv_weights_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name conv_weights_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_11 \
    op interface \
    ports { conv_weights_11_address0 { O 7 vector } conv_weights_11_ce0 { O 1 bit } conv_weights_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name conv_weights_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_12 \
    op interface \
    ports { conv_weights_12_address0 { O 7 vector } conv_weights_12_ce0 { O 1 bit } conv_weights_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name conv_weights_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_13 \
    op interface \
    ports { conv_weights_13_address0 { O 7 vector } conv_weights_13_ce0 { O 1 bit } conv_weights_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name conv_weights_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_14 \
    op interface \
    ports { conv_weights_14_address0 { O 7 vector } conv_weights_14_ce0 { O 1 bit } conv_weights_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name conv_weights_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_weights_15 \
    op interface \
    ports { conv_weights_15_address0 { O 7 vector } conv_weights_15_ce0 { O 1 bit } conv_weights_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_weights_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
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
    id 141 \
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
    id 142 \
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
    id 143 \
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
    id 144 \
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
    id 145 \
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
    id 146 \
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
    id 147 \
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
    id 148 \
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
    id 149 \
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
    id 150 \
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
    id 151 \
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
    id 152 \
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
    id 153 \
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
    id 154 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name input_r \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_r \
    op interface \
    ports { input_r_dout { I 16 vector } input_r_empty_n { I 1 bit } input_r_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
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
    id 121 \
    name conv_biases_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_0 \
    op interface \
    ports { conv_biases_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name conv_biases_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_1 \
    op interface \
    ports { conv_biases_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name conv_biases_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_2 \
    op interface \
    ports { conv_biases_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name conv_biases_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_3 \
    op interface \
    ports { conv_biases_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name conv_biases_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_4 \
    op interface \
    ports { conv_biases_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name conv_biases_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_5 \
    op interface \
    ports { conv_biases_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name conv_biases_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_6 \
    op interface \
    ports { conv_biases_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name conv_biases_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_7 \
    op interface \
    ports { conv_biases_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name conv_biases_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_8 \
    op interface \
    ports { conv_biases_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name conv_biases_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_9 \
    op interface \
    ports { conv_biases_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name conv_biases_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_10 \
    op interface \
    ports { conv_biases_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name conv_biases_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_11 \
    op interface \
    ports { conv_biases_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name conv_biases_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_12 \
    op interface \
    ports { conv_biases_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name conv_biases_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_13 \
    op interface \
    ports { conv_biases_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name conv_biases_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_14 \
    op interface \
    ports { conv_biases_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name conv_biases_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_biases_15 \
    op interface \
    ports { conv_biases_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name pool_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_size \
    op interface \
    ports { pool_size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name pool_stride \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_stride \
    op interface \
    ports { pool_stride { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name linear_biases_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_0 \
    op interface \
    ports { linear_biases_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name linear_biases_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_1 \
    op interface \
    ports { linear_biases_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name linear_biases_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_2 \
    op interface \
    ports { linear_biases_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name linear_biases_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_3 \
    op interface \
    ports { linear_biases_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name linear_biases_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_4 \
    op interface \
    ports { linear_biases_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name linear_biases_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_5 \
    op interface \
    ports { linear_biases_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name linear_biases_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_6 \
    op interface \
    ports { linear_biases_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name linear_biases_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_7 \
    op interface \
    ports { linear_biases_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name linear_biases_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_8 \
    op interface \
    ports { linear_biases_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name linear_biases_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_9 \
    op interface \
    ports { linear_biases_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name linear_biases_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_10 \
    op interface \
    ports { linear_biases_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name linear_biases_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_11 \
    op interface \
    ports { linear_biases_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name linear_biases_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_12 \
    op interface \
    ports { linear_biases_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name linear_biases_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_13 \
    op interface \
    ports { linear_biases_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name linear_biases_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_14 \
    op interface \
    ports { linear_biases_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name linear_biases_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_biases_15 \
    op interface \
    ports { linear_biases_15 { I 32 vector } } \
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


