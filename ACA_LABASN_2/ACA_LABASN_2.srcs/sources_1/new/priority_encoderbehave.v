`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 07:24:43
// Design Name: 
// Module Name: priority_encoderbehave
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


module priority_encoderbehave(A, Y);

input [3:0]Y;
output reg [1:0]A;

always@(Y)
begin

casex(Y)

4'b0001:A = 2'b00;
4'b001x:A = 2'b01;
4'b01xx:A = 2'b10;
4'b1xxx:A = 2'b11;

endcase
end
endmodule
