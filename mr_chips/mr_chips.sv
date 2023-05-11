`include "mr_chips\components\alu.sv"
`include "mr_chips\components\clk.sv"
`include "mr_chips\components\decoder.sv"
`include "mr_chips\components\adder.sv"

module mr_chips (
    input [15:0] instruction,
    output [7:0] rd

);
    decoder uut(instuction);

endmodule

`ifdef decoder
`define decoder

module decoder (
    input [15:0] instruction,
    reg [3:0] opcode instruction [15:11]
);

    always @ (opcode) begin
        case (opcode)
            4'b0000: begin // If opcode 0000, it's an R-type instruction
                Rs <= instuction[8:6];
                Rt <= instruction[5:3];
                Rd <= instruction[2:0];
                funct <= instruction[11:9];
                alu u(Rs,Rt,Rd);
            end
            4'b0001, // if 0001-0101 then I
            4'b0010,
            4'b0011,
            4'b0100,
            4'b0101,
            4'b0110:  begin
                imm <= instruction[11:6];
                Rt <= instruction[5:3];
                Rd <= instruction[2:0];
            end
            4'b0111,
            4'b1000,
            4'b1001: address <= inst[11:0];
            default: Rs, Rt, Rd, funct, imm <= 0; // If the first 4 bits don't match any opcode, set typo to 'x'
        endcase
    end

endmodule

`endif //decoder
