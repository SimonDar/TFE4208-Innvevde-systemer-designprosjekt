transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib DE2_115_SOPC
vmap DE2_115_SOPC DE2_115_SOPC
vlog -vlog01compat -work DE2_115_SOPC +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/DE2_115_SOPC/synthesis/submodules {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/DE2_115_SOPC/synthesis/submodules/DE2_115_SOPC_cpu_cpu_test_bench.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/shiftReqisterFFT.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/AsyncFIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/FIFOToFFT.v}
vlog -vlog01compat -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/CODECToFIFO.v}

vlog -sv -work work +incdir+C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject {C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Robin_testProject/testProject/FIFOToFFT_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L DE2_115_SOPC -voptargs="+acc"  FIFOToFFT_suite

add wave *
view structure
view signals
run -all