all:
	iverilog -o wave -y ./ majority.v testbench.v
	vvp -n wave -lxt2
clean:
	rm -r -f dump.vcd wave 
