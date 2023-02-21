vcom -work work Krets_12_sim.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Krets_12_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
