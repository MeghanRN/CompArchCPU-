`ifndef instr_mem
`define instr_mem
module instr_mem          // a synthesisable rom implementation  
 (  
      input     [15:0]     pc,  
      output wire     [15:0]          instruction  
 );  
      wire [3 : 0] rom_addr = pc[4 : 1];  
     /*    lw     $3, 0($0) --   
           Loop:     
           slti $1, $3, 50  
           beq $1, $0, Skip  
           add $4, $4, $3   
           addi $3, $3, 1   
           beq $0, $0, Loop--  
           Skip  
 */  
      reg [15:0] rom[15:0];  
      initial  
      begin  
               rom[0] = 16'b0011000000000001; // LOAD $t0, 0x1
               rom[1] = 16'b0011000000000000; // LOAD $t1, 0x0
               rom[2] = 16'b0011000000001010; // LOAD $t2, 0xA
               rom[3] = 16'b0000000100000011; // loop: add $t3, $t0, $t1
               rom[4] = 16'b0000001100000100; // and $t4, $t3, 0xFFFF
               rom[5] = 16'b1010000000010100; // STORE $t4, $t2, 0x0
               rom[6] = 16'b0000010000000100; // add $t4, $t0, $t1
               rom[7] = 16'b0011100000010101; // nor $t5, $t4, $t4
               rom[8] = 16'b0010000100000110; // addi $t5, $t5, 0x1
               rom[9] = 16'b0000010101000010; // and $t1, $t4, $t5
               rom[10] = 16'b0000010001000001; // add $t0, $t1, $t1
               rom[11] = 16'b0101000000001010; // SUBI $t2, $t2, 0x1
               rom[12] = 16'b0001010100000000; // BNE $t2, $0, loop
               rom[13] = 16'b0110100000000000; // JAR $ra
               rom[14] = 4'h0;  
               rom[15] = 4'h0;  
      end  
      assign instruction = (pc[15:0] < 32 )? rom[rom_addr[3:0]]: 16'd0;  
 endmodule   

 `endif