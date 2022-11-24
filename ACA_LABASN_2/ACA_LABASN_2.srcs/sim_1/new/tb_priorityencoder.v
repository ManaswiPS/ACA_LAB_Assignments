`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 07:25:56
// Design Name: 
// Module Name: tb_priorityencoder
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


module tb_priorityencoder();
 
 reg [3:0] y;
 wire [1:0] a;
 

priority_encoderbehave dut (.Y(y), .A(a));
initial 
begin      
 #0 y = 4'b0000;
 #10 y = 4'b1000;
 #10 y = 4'b0100;
 #10 y = 4'b0010;
 #10 y = 4'b0001;
 #10 y = 4'b1010;
 #10 y = 4'b1111;
 end 
   
endmodule

