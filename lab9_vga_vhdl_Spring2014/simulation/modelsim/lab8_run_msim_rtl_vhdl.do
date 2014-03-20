transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/altera/13.0/lab9_vga_vhdl_Spring2014/VGA_controller.vhd}
vcom -93 -work work {E:/altera/13.0/lab9_vga_vhdl_Spring2014/Color_Mapper.vhd}
vcom -93 -work work {E:/altera/13.0/lab9_vga_vhdl_Spring2014/BouncingBall.vhd}
vcom -93 -work work {E:/altera/13.0/lab9_vga_vhdl_Spring2014/ball.vhd}

