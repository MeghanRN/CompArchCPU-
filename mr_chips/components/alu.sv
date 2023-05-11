// This code defines an Arithmetic Logic Unit (ALU) module using Verilog.

`ifdef alu
`define alu

module alu(a,b, funct, result);

// This declares the alu module with four inputs: a, b, funct and result.
input [7:0] a, b; // Two 8-bit inputs a and b.
input [2:0] funct; // A 3-bit input funct used to select the operation to be performed.
reg [15:0] bigreg; // A 16-bit register used for multiplication, division and modulus operations.
output reg [7:0] result; // An 8-bit output result register.

//always @(a,b, funct)
always @(funct)
// The always block is triggered whenever there is a change in the funct input.
// This is because the funct input is used to select the operation to be performed.
begin
case (funct)
    3'b000: result = a&b; // AND operation
    3'b001: result = a~|b; // NOR operation
    3'b010: result = a+b; // Addition operation
    3'b011: result = a-b; // Subtraction operation
    3'b100: bigreg = a*b; // Multiplication operation
    3'b101:

begin
    bigreg[7:0] = a/b; // Division operation
    bigreg[15:8] = a%b; // Modulus operation
end
    3'b110: result = bigreg[15:8]; // High byte of the bigreg register
    3'b111: result = bigreg[7:0]; // Low byte of the bigreg register
endcase
end // always @ (a,b, funct)

endmodule

`endif //alu
// The `endif directive marks the end of the alu module definition.