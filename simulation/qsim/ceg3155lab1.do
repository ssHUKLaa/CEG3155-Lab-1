onerror {exit -code 1}
vlib work
vlog -work work ceg3155lab1.vo
vlog -work work testProgram.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.testProgram_vlg_vec_tst -voptargs="+acc"
vcd file -direction ceg3155lab1.msim.vcd
vcd add -internal testProgram_vlg_vec_tst/*
vcd add -internal testProgram_vlg_vec_tst/i1/*
run -all
quit -f
