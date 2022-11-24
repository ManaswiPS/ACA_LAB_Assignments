`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 10:04:24
// Design Name: 
// Module Name: tb_fa_4_beh
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


module tb_fa_4_beh();
reg [3:0] a,b;
reg cin;
wire [3:0]sum;
wire cout;
full_adder_4b uut(.sum(sum),.cout(cout),.a(a),.b(b),.cin(cin));

 initial
 
 begin
#0 a=4'b0000; b=4'b0000; cin=1'b0;
 #10;
  a=4'b0100; b=4'b0011; cin=1'b1;
#10 a=4'b0011; b=4'b0111; cin=1'b1;
#10 a=4'b1000; b=4'b0100; cin=1'b0;
#10 a=4'b0101; b=4'b0101; cin=1'b1;
#10 a=4'b1111; b=4'b1111; cin=1'b1;
 end

 
endmodule
