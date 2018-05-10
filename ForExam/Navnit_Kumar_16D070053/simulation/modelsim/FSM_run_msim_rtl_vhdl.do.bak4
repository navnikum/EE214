transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/navnit1224/Desktop/exam/or.vhd}
vcom -93 -work work {/home/navnit1224/Desktop/exam/not.vhd}
vcom -93 -work work {/home/navnit1224/Desktop/exam/FSM.vhd}
vcom -93 -work work {/home/navnit1224/Desktop/exam/DUT.vhd}
vcom -93 -work work {/home/navnit1224/Desktop/exam/dff_2.vhd}
vcom -93 -work work {/home/navnit1224/Desktop/exam/and.vhd}

vcom -93 -work work {/home/navnit1224/Desktop/exam/../Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
