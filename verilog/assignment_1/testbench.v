`timescale 1ns/100ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Closure Labs
// Engineer: Eduardo Corpeño
// 
// Create Date:    Feb-23-2018 
// Module Name:    majority_TB
// Description:    Testbench for a simple 3-input majority function implemented with gates.
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: Part of the FPGA Embedded Design course by Closure Labs.
//                      This example features the pullup and pulldown primitives.
//
//////////////////////////////////////////////////////////////////////////////////

module majority_TB();
  reg in1, in2, in3, in4, in5;
  wire my_out, my_z;
  
  //pullup(my_z);
  //pulldown(my_z);
  
  majority trend(
    .a(in1),
    .b(in2),
    .c(in3),
    .x(my_out)
  );
  
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1,majority_TB,my_z);
      {in1,in2,in3}=3'b000;
      #10;
      {in1,in2,in3}=3'b001;
      #10;
      {in1,in2,in3}=3'b010;
      #10;
      {in1,in2,in3}=3'b011;
      #10;
      {in1,in2,in3}=3'b100;
      #10;
      {in1,in2,in3}=3'b101;
      #10;
      {in1,in2,in3}=3'b110;
      #10;
      {in1,in2,in3}=3'b111;
      #10;
      $finish;
    end
endmodule
