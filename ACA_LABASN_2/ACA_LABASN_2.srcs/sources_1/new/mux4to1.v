`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 13:47:23
// Design Name: 
// Module Name: mux4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


 module mux4to1(a,b,c,d,sel,out );
 input a,b,c,d;
 input [1:0]sel;
 output reg  out;
 
 always @ (a or b or c or d or sel)
 begin
    case(sel)
    2'b00:out<=a;
    2'b01:out<=b;
    2'b10:out<=c;
    2'b11:out<=d;
    endcase
 end
endmodule

module mux16to1(f,sels,D);
output f;
input [3:0] sels;
input [15:0] D;
wire out1,out2,out3,out4;

mux4to1 m1(D[0],D[1],D[2],D[3],sels[1:0],out1 );
mux4to1 m2(D[4],D[5],D[6],D[7],sels[1:0],out2 );
mux4to1 m3(D[8],D[9],D[10],D[11],sels[1:0],out3 );
mux4to1 m4(D[12],D[13],D[14],D[15],sels[1:0],out4 );
mux4to1 m5(out1,out2,out3,out4,sels[3:2],f );

  endmodule
