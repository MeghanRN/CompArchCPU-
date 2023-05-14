`timescale 1ns/100ps
`include "./alu.sv"

module alu_tb;
   reg [7:0] a, b;
   reg [2:0] alu_control;
wire [16:0] result;

alu uut(.a(a),.b(b), .alu_control(alu_control), .result(result));

initial
     begin
        $dumpfile("alu.vcd");
	$dumpvars(1, uut);
	$display("funct\tresult\t\ta\t\tb");
        $monitor("%b\t%b\t%b\t%b", funct, result, a, b);
	a=8'b00000010;
	b=8'b00000001;
    funct=3'b000;

	for (int i = 3'b0; i < 3'b111; i++)
	  begin
             #20;
            funct++;
	  end
     end 
endmodule
