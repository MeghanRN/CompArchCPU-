
`ifndef decoder
`define decoder

module decoder(WriteEn,RegWrite, WriteRegister);  
 input RegWrite;  
 input [4:0] WriteRegister;  
 output [31:0] WriteEn;  
 wire [31:0] OE; // Output Enable  
 dec5to32 dec(OE,WriteRegister);  
 assign WriteEn[0]=0;  
  and #(50) an1(WriteEn[1],OE[1],RegWrite);  
  and #(50) an2(WriteEn[2],OE[2],RegWrite);  
  and #(50) an3(WriteEn[3],OE[3],RegWrite);  
  and #(50) an4(WriteEn[4],OE[4],RegWrite);  
  and #(50) an5(WriteEn[5],OE[5],RegWrite);  
  and #(50) an6(WriteEn[6],OE[6],RegWrite);  
  and #(50) an7(WriteEn[7],OE[7],RegWrite);  
  and #(50) an8(WriteEn[8],OE[8],RegWrite);  
  and #(50) an9(WriteEn[9],OE[9],RegWrite);  
  and #(50) an10(WriteEn[10],OE[10],RegWrite);  
  and #(50) an11(WriteEn[11],OE[11],RegWrite);  
  and #(50) an12(WriteEn[12],OE[12],RegWrite);  
  and #(50) an13(WriteEn[13],OE[13],RegWrite);  
  and #(50) an14(WriteEn[14],OE[14],RegWrite);  
  and #(50) an15(WriteEn[15],OE[15],RegWrite);  
  and #(50) an16(WriteEn[16],OE[16],RegWrite);  
  and #(50) an17(WriteEn[17],OE[17],RegWrite);  
  and #(50) an18(WriteEn[18],OE[18],RegWrite);  
  and #(50) an19(WriteEn[19],OE[19],RegWrite);  
  and #(50) an20(WriteEn[20],OE[20],RegWrite);  
  and #(50) an21(WriteEn[21],OE[21],RegWrite);  
  and #(50) an22(WriteEn[22],OE[22],RegWrite);  
  and #(50) an23(WriteEn[23],OE[23],RegWrite);  
  and #(50) an24(WriteEn[24],OE[24],RegWrite);  
  and #(50) an25(WriteEn[25],OE[25],RegWrite);  
  and #(50) an26(WriteEn[26],OE[26],RegWrite);  
  and #(50) an27(WriteEn[27],OE[27],RegWrite);  
  and #(50) an28(WriteEn[28],OE[28],RegWrite);  
  and #(50) an29(WriteEn[29],OE[29],RegWrite);  
  and #(50) an30(WriteEn[30],OE[30],RegWrite);  
  and #(50) an31(WriteEn[31],OE[31],RegWrite);  
 endmodule  
 module and5(g,a,b,c,d,e);  
  output g;  
  input a,b,c,d,e;  
  and #(50) and1(f1,a,b,c,d),  
       and2(g,f1,e);  
 endmodule  
 module dec5to32(Out,Adr);  
 input [4:0] Adr; // Adr=Address of register  
 output [31:0] Out;  
 not #(50) Inv4(Nota, Adr[4]);  
 not #(50) Inv3(Notb, Adr[3]);  
 not #(50) Inv2(Notc, Adr[2]);  
 not #(50) Inv1(Notd, Adr[1]);  
 not #(50) Inv0(Note, Adr[0]);  
 and5 a1(Out[1], Nota,Notb,Notc,Notd,Adr[0]); // 00001  
 and5 a0(Out[0], Nota,Notb,Notc,Notd,Note); // 00000  
 and5 a2(Out[2], Nota,Notb,Notc,Adr[1],Note); //00010  
 and5 a3(Out[3], Nota,Notb,Notc,Adr[1],Adr[0]);  
 and5 a4(Out[4], Nota,Notb,Adr[2],Notd,Note);  
 and5 a5(Out[5], Nota,Notb,Adr[2],Notd,Adr[0]);  
 and5 a6(Out[6], Nota,Notb,Adr[2],Adr[1],Note);  
 and5 a7(Out[7], Nota,Notb,Adr[2],Adr[1],Adr[0]);  
 and5 a8(Out[8],  Nota,Adr[3],Notc,Notd,Note);  
 and5 a9(Out[9],  Nota,Adr[3],Notc,Notd,Adr[0]);  
 and5 a10(Out[10], Nota,Adr[3],Notc,Adr[1],Note);  
 and5 a11(Out[11], Nota,Adr[3],Notc,Adr[1],Adr[0]);  
 and5 a12(Out[12], Nota,Adr[3],Adr[2],Notd,Note);  
 and5 a13(Out[13], Nota,Adr[3],Adr[2],Notd,Adr[0]);  
 and5 a14(Out[14], Nota,Adr[3],Adr[2],Adr[1],Note);  
 and5 a15(Out[15], Nota,Adr[3],Adr[2],Adr[1],Adr[0]);  
 and5 a16(Out[16], Adr[4],Notb,Notc,Notd,Note);  
 and5 a17(Out[17], Adr[4],Notb,Notc,Notd,Adr[0]);  
 and5 a18(Out[18], Adr[4],Notb,Notc,Adr[1],Note);  
 and5 a19(Out[19], Adr[4],Notb,Notc,Adr[1],Adr[0]);  
 and5 a20(Out[20], Adr[4],Notb,Adr[2],Notd,Note);  
 and5 a21(Out[21], Adr[4],Notb,Adr[2],Notd,Adr[0]);  
 and5 a22(Out[22], Adr[4],Notb,Adr[2],Adr[1],Note);  
 and5 a23(Out[23], Adr[4],Notb,Adr[2],Adr[1],Adr[0]);  
 and5 a24(Out[24], Adr[4],Adr[3],Notc,Notd,Note);  
 and5 a25(Out[25], Adr[4],Adr[3],Notc,Notd,Adr[0]);  
 and5 a26(Out[26], Adr[4],Adr[3],Notc,Adr[1],Note);  
 and5 a27(Out[27], Adr[4],Adr[3],Notc,Adr[1],Adr[0]);  
 and5 a28(Out[28], Adr[4],Adr[3],Adr[2],Notd,Note);  
 and5 a29(Out[29], Adr[4],Adr[3],Adr[2],Notd,Adr[0]);  
 and5 a30(Out[30], Adr[4],Adr[3],Adr[2],Adr[1],Note);  
 and5 a31(Out[31], Adr[4],Adr[3],Adr[2],Adr[1],Adr[0]); // 11111  
 endmodule  

 `endif //decoder