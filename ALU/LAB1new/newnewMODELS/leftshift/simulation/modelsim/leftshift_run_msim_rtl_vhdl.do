transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/navnit1224/EEsem4/214/LAB1new/newnewMODELS/DUT.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/LAB1new/newnewMODELS/leftshift.vhd}

vcom -93 -work work {/home/navnit1224/EEsem4/214/LAB1new/newnewMODELS/leftshift/../Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
