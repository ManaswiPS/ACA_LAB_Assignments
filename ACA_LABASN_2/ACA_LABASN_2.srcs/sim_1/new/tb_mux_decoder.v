`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 07:16:31
// Design Name: 
// Module Name: tb_mux_decoder
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


module tb_mux_decoder();
  reg [3:0] in;
  reg [1:0] sel;
  wire f;
  
  mux_decoder dut(in,sel,f);
initial
 
 begin
  
 #0 in=4'b0000; sel=2'b00;
 #10 in=4'b0001; sel=2'b00;
 #10 in=4'b0010; sel=2'b01;
 #10 in=4'b0001; sel=2'b01;
 #10 in=4'b0001; sel=2'b10;
 #10 in=4'b0101; sel=2'b10;
 #10 in=4'b0111; sel=2'b11;
 #10 in=4'b1000; sel=2'b11;
    
 end

endmodule

