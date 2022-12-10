`timescale 1ns/1ns
module XOR_tb();
	reg a, b;
	wire a_xor_b;
	XOR xor1(a_xor_b, a, b);
	initial begin

	$dumpfile("dump.vcd");
	$dumpvars;	

	a = 0;
	b = 0;
	#10;
	$display("a = %d, b = %d, a_xor_b = %d\n", a, b, a_xor_b);
	a = 1;
	b = 0;
	#10;
	$display("a = %d, b = %d, a_xor_b = %d\n", a, b, a_xor_b);
	a = 0;
	b = 1;
	#10;
	$display("a = %d, b = %d, a_xor_b = %d\n", a, b, a_xor_b);
	a = 1;
	b = 1;
	#10;
	$display("a = %d, b = %d, a_xor_b = %d\n", a, b, a_xor_b);	
	$finish;
	end
endmodule
