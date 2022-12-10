all:
	iverilog -o wave -y ./ xor.v xor_tb.v
	vvp -n wave -lxt2
clean:
	rm -r -f dump.vcd wave 
