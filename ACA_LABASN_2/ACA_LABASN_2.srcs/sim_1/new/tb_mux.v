`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 13:59:36
// Design Name: 
// Module Name: tb_mux
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


module tb_mux();
reg a;
reg b;
reg c;
reg d;
reg [1:0]sel;
wire  out;

mux4to1 dut(a,b,c,d,sel,out);
initial
begin
#0 a=1'b1; b=1'b0; c=1'b1; d=1'b0; sel=2'b00;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; sel=2'b01;
#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; sel=2'b10;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b1; sel=2'b11;
end

endmodule
