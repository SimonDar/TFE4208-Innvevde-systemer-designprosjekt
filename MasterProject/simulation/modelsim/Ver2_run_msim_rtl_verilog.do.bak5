transcript on
if ![file isdirectory Ver2_iputf_libs] {
	file mkdir Ver2_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib Ver2_iputf_libs/fft_ii_0
vmap fft_ii_0 ./Ver2_iputf_libs/fft_ii_0
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 

file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi6.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr5.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr6.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi1.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr1.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi2.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi3.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr2.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi4.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr3.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twr4.hex ./
file copy -force C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0_opt_twi5.hex ./

vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/auk_dspip_text_pkg.vhd"                               -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/auk_dspip_math_pkg.vhd"                               -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/auk_dspip_lib_pkg.vhd"                                -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_sink.vhd"     -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_source.vhd"   -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/auk_dspip_roundsat.vhd"                               -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/apn_fft_mult_can.vhd"                          -work fft_ii_0
vlog     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/apn_fft_mult_cpx_1825.v"                       -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/apn_fft_mult_cpx.vhd"                          -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/hyper_opt_OFF_pkg.vhd"                         -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/altera_fft_dual_port_ram.vhd"                  -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/altera_fft_dual_port_rom.vhd"                  -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/altera_fft_mult_add.vhd"                       -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/altera_fft_single_port_rom.vhd"                -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_fft_pkg.vhd"                               -work fft_ii_0
vlog     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/hyper_pipeline_interface.v"                    -work fft_ii_0
vlog -sv "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/counter_module.sv"                             -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_lib_pkg.vhd"                  -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_bit_reverse_addr_control.vhd"        -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_bit_reverse_core.vhd"                -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_bit_reverse_reverse_carry_adder.vhd" -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_adder_fp.vhd"                 -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_addsub.vhd"                   -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_bfi.vhd"                      -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_bfii.vhd"                     -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_bf_control.vhd"               -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_cma.vhd"                      -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_cma_adder_fp.vhd"             -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_cma_bfi_fp.vhd"               -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_cma_fp.vhd"                   -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_core.vhd"                     -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_counter.vhd"                  -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_delay.vhd"                    -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_enable_control.vhd"           -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_stage.vhd"                    -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_stg_out_pipe.vhd"             -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_stg_pipe.vhd"                 -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_top.vhd"                      -work fft_ii_0
vcom     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/mentor/auk_dspip_r22sdf_twrom.vhd"                    -work fft_ii_0
vlog -sv "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/submodules/FFTBlock_fft_ii_0.sv"                                 -work fft_ii_0
vlog     "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FFTBlock/simulation/FFTBlock.v"                                                                    

vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/magnitude_wrapper.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/magnitude_fsm.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/magnitude.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/fft_wrapper.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/fft_sink_interface.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/shiftReqisterFFT.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/FIFOToFFT.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/CODECToFIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/AsyncFIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/project.v}

vlog -sv -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/MasterProject/project.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L cycloneive -L rtl_work -L work -L fft_ii_0 -voptargs="+acc"  project_suite

add wave *
view structure
view signals
run -all
