`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 15:02:28
// Design Name: 
// Module Name: tb_16to1mux
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


module tb_16to1mux();
reg [15:0] D;
reg [3:0] sels;
wire f;

mux16to1 dut(.f(f),.sels(sels),.D(D));
initial
begin
#0  D=16'b0000000000000001; sels=4'b0000;
#10 D=16'b0000000000000010; sels=4'b0001;
#10 D=16'b0000000000000010; sels=4'b1000;
#10 D=16'b0000000000000100; sels=4'b0010;
#10 D=16'b0000000000001000; sels=4'b0011;
#10 D=16'b0000000000010000; sels=4'b0100;
#10 D=16'b1000000000000000; sels=4'b1111;
#10 $finish;
end
endmodule
