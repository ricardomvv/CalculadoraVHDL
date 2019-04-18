onerror {quit -f}
vlib work
vlog -work work calculadoraVHDL.vo
vlog -work work calculadoraVHDL.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.subtracao_vlg_vec_tst
vcd file -direction calculadoraVHDL.msim.vcd
vcd add -internal subtracao_vlg_vec_tst/*
vcd add -internal subtracao_vlg_vec_tst/i1/*
add wave /*
run -all
