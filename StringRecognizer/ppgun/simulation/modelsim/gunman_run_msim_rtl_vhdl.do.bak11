transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/scan_reg.vhdl}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/scan_chain.vhdl}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/TopLevel.vhdl}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/stringrec.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/terrorist.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/knife.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/gunman.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/bomber.vhd}
vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/DUT.vhd}

vcom -93 -work work {/home/navnit1224/EEsem4/214/StringRecognizer/ppgun/../Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
