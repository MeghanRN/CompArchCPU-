`ifdef decoder
def decoder

module decoder (
input [15:0] instruction,
output reg [3:0] opcode
);

always @ (instruction) begin
 case (instruction[15:12])
     4'b0000: opcode = 4'b0000; // R-type instruction
     4'b0001: opcode = 4'b0001;
     4'b0010: opcode = 4'b0010;
     4'b0011: opcode = 4'b0011;
     4'b0100: opcode = 4'b0100;
     4'b0101: opcode = 4'b0101;
     4'b0110: opcode = 4'b0110;
     4'b0111: opcode = 4'b0111;
     4'b1000: opcode = 4'b1000;
     4'b1001: opcode = 4'b1001;
     4'b1010: opcode = 4'b1010;
     4'b1011: opcode = 4'b1011;
     4'b1100: opcode = 4'b1100;
     4'b1101: opcode = 4'b1101;
     4'b1110: opcode = 4'b1110;
     4'b1111: opcode = 4'b1111;
     default: opcode = 4'bxxxx;
 endcase
end


endmodule
`endif //decoder