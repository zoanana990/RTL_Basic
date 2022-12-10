all:
	ghdl -a adder.vhdl
	ghdl -a adder_tb.vhdl
	ghdl -e adder_tb
	ghdl -r adder_tb --vcd=adder.vcd
clean:
	rm -r -f *.o *.vcd
