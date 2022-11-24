`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 15:48:11
// Design Name: 
// Module Name: tb_3to8
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


module tb_3to8();
reg [2:0] din;
wire [7:0] dout;

decoder3to8 dut(din,dout);

initial
 
 begin
#0 din=3'b000;
#10 din=3'b001;
#10 din=3'b010;
#10 din=3'b011;
#10 din=3'b100;
#10 din=3'b101;
#10 din=3'b110;
#10 din=3'b111;
#10 $finish;

 end
endmodule
