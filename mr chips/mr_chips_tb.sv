`timescale 1ns / 1ps

 module mr_chips_tb;  
      // Inputs  
      reg clk;  
      reg reset;  
      // Outputs  
      wire [15:0] pc_out;  
      wire [15:0] alu_result;//,reg3,reg4;  
      // Instantiate the Unit Under Test (UUT)  
      mr_chips uut (  
           .clk(clk),   
           .reset(reset),   
           .pc_out(pc_out),   
           .alu_result(alu_result)  
           //.reg3(reg3),  
          // .reg4(reg4)  
      );  
      initial begin  
           clk = 0;  
           forever #10 clk = ~clk;  
      end  

      initial begin  
           // Initialize Inputs 
        $dumpfile("mr_chips_tb.vcd"); // for Makefile, make dump file same as module name
        $dumpvars(0, uut);

           //$monitor ("register 3=%d, register 4=%d", reg3,reg4);  
           reset = 1;  
           // Wait 100 ns for global reset to finish  
           #100;  
     reset = 0;  
           // Add stimulus here  
                 #500 $finish;

      end  
 endmodule  