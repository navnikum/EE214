transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/16D070053_NavnitKumar/no_of.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/16D070053_NavnitKumar/FSA.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/16D070053_NavnitKumar/final.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/16D070053_NavnitKumar/FD.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/16D070053_NavnitKumar/FA.vhd}

vcom -93 -work work {/home/navnit1224/EEsem4/214/Midsem/pp/../16D070053_NavnitKumar/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
