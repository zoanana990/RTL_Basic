transcript off
vcom Shift_Reg.vhd
vcom tb_Shift_Reg.vhf

vsim test_shift_reg
add wave sim:/test_shift_reg/dev_to_test/*

add 350 ns
