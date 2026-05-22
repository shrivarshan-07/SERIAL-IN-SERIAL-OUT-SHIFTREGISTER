onerror {quit -f}
vlib work
vlog -work work EXP5.vo
vlog -work work EXP5.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.EXP5_vlg_vec_tst
vcd file -direction EXP5.msim.vcd
vcd add -internal EXP5_vlg_vec_tst/*
vcd add -internal EXP5_vlg_vec_tst/i1/*
add wave /*
run -all
