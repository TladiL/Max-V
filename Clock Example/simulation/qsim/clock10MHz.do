onerror {exit -code 1}
vlib work
vcom -work work clock10MHz.vho
vcom -work work Waveform4.vwf.vht
vsim -c -t 1ps -L maxv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.task2B_vhd_vec_tst
vcd file -direction clock10MHz.msim.vcd
vcd add -internal task2B_vhd_vec_tst/*
vcd add -internal task2B_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
