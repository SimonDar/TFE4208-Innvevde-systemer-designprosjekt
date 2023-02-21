onerror {exit -code 1}
vlib work
vcom -work work Ver2.vho
vcom -work work StudentDesign_sim2.vwf.vht
vsim -c -t 1ps -sdfmax StudentDesign_vhd_vec_tst/i1=Ver2_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.StudentDesign_vhd_vec_tst
vcd file -direction Lab3.msim.vcd
vcd add -internal StudentDesign_vhd_vec_tst/*
vcd add -internal StudentDesign_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
