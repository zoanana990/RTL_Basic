`timescale 1ns/1ns
module XOR(output myout, input inA, input inB);

	wire x, y, not_a, not_b;
	and(x, inA, not_b);
	and(y, not_a, inB);
	not(not_a, inA);
	not(not_b, inB);
	or(myout, x, y);

endmodule
