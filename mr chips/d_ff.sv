`ifndef D_FF
`define D_FF
module D_FF (q, d, rst_n, clk);  
 output q;  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 input d, rst_n, clk;  
 reg q; // Indicate that q is stateholding  
 always @(posedge clk or negedge rst_n)  
 if (~rst_n)  
 q <= 0;     // On reset, set to 0  
 else  
 q <= d; // Otherwise out = d   

 endmodule
 `endif //d_ff