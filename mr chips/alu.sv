`ifndef alu
`define alu

module alu(

   input [15:0] a,
   input [15:0] b,
   input [2:0] alu_control,
   output reg [15:0] result,
   output zero
);
 reg [31:0] bigreg;

//always @(a,b, funct)
always @(*)
    begin
        case (alu_control)
            3'b000: result = a + b;
            3'b001: result = a-b;
            3'b010: bigreg = a*b;
            3'b011: result = a~|b;
            3'b100: begin if (a<b) result = 16'd1;  
                     else result = 16'd0;  
                     end  
            3'b101:
	    begin
	       bigreg[7:0] = a/b;
	       bigreg[15:8] = a%b;
	    end
            3'b110: result = bigreg[31:15];
            3'b111: result = bigreg[15:0];
            default:result = a + b; // add  
        endcase
    end //
 assign zero = (result==16'd0) ? 1'b1: 1'b0;  
 endmodule 

`endif //alu
