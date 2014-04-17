transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9_vga_vhdl_Spring2014/dreg.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9_vga_vhdl_Spring2014/psclkSample.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9_vga_vhdl_Spring2014/clkDiv.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9/hexDriver.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9_vga_vhdl_Spring2014/keymap.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/lab9_vga_vhdl_Spring2014/keyCapt.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/keyInterface.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/Color_Mapper.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/gameboardarray.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/VGA_Controllerz.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/GameBoard1.vhd}
vcom -93 -work work {E:/Documents/ECE385/ECE385/2048/Tiles.vhd}

