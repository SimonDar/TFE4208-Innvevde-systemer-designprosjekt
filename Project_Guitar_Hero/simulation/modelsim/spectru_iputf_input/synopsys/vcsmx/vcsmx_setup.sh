
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi1.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr1.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi2.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi3.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr2.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr3.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi4.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi5.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr4.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr5.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twi6.hex ./
cp -f C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0_opt_twr6.hex ./

vhdlan -xlrm          "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/auk_dspip_text_pkg.vhd" -work fft_ii_0
vhdlan -xlrm          "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/auk_dspip_math_pkg.vhd" -work fft_ii_0
vhdlan -xlrm          "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/auk_dspip_lib_pkg.vhd"  -work fft_ii_0
vhdlan -xlrm          "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/auk_dspip_roundsat.vhd" -work fft_ii_0
vlogan +v2k -sverilog "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/submodules/fft_fft_ii_0.sv"        -work fft_ii_0
vlogan +v2k           "C:/Users/magnu/Documents/skole/Invevde_systemer_designprosjekt/project/TFE4208-Innvevde-systemer-designprosjekt/Project_Guitar_Hero/fft/simulation/fft.v"                                           
