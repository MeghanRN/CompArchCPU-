`ifndef Reg16_32
`define Reg16_32
module Reg16_32(out,in,rst,clk);  
 output [31:0] out;  
 input [31:0] in;  
 input rst,clk;  
 D_FF d_ff0(out[0],in[0],rst,clk);  
 D_FF d_ff1(out[1],in[1],rst,clk);  
 D_FF d_ff2(out[2],in[2],rst,clk);  
 D_FF d_ff3(out[3],in[3],rst,clk);  
 D_FF d_ff4(out[4],in[4],rst,clk);  
 D_FF d_ff5(out[5],in[5],rst,clk);  
 D_FF d_ff6(out[6],in[6],rst,clk);  
 D_FF d_ff7(out[7],in[7],rst,clk);  
 D_FF d_ff8(out[8],in[8],rst,clk);  
 D_FF d_ff9(out[9],in[9],rst,clk);  
 D_FF d_ff10(out[10],in[10],rst,clk);  
 D_FF d_ff11(out[11],in[11],rst,clk);  
 D_FF d_ff12(out[12],in[12],rst,clk);  
 D_FF d_ff13(out[13],in[13],rst,clk);  
 D_FF d_ff14(out[14],in[14],rst,clk);  
 D_FF d_ff15(out[15],in[15],rst,clk);  
 D_FF d_ff16(out[16],in[16],rst,clk);  
 D_FF d_ff17(out[17],in[17],rst,clk);  
 D_FF d_ff18(out[18],in[18],rst,clk);  
 D_FF d_ff19(out[19],in[19],rst,clk);  
 D_FF d_ff20(out[20],in[20],rst,clk);  
 D_FF d_ff21(out[21],in[21],rst,clk);  
 D_FF d_ff22(out[22],in[22],rst,clk);  
 D_FF d_ff23(out[23],in[23],rst,clk);  
 D_FF d_ff24(out[24],in[24],rst,clk);  
 D_FF d_ff25(out[25],in[25],rst,clk);  
 D_FF d_ff26(out[26],in[26],rst,clk);  
 D_FF d_ff27(out[27],in[27],rst,clk);  
 D_FF d_ff28(out[28],in[28],rst,clk);  
 D_FF d_ff29(out[29],in[29],rst,clk);  
 D_FF d_ff30(out[30],in[30],rst,clk);  
 D_FF d_ff31(out[31],in[31],rst,clk);  
 endmodule

 `endif