`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 09:42:41
// Design Name: 
// Module Name: FA_Behavioural
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


 module FA_Behavioural(a,b,cin,sum,cout);
 input a,b,cin;
 output reg sum,cout;
  
 always @(a or b or cin)
 begin   
 if(a==0 && b==0 && cin==0)
 begin
   sum=0;
   cout=0;
  end

 else if(a==0 && b==0 && cin==1)
  begin
   sum=1;
   cout=0;
  end

 else if(a==0 && b==1 && cin==0)
  begin
   sum=1;
   cout=0;
  end

 else if(a==0 && b==1 && cin==1)
  begin
   sum=0;
   cout=1;
  end

 else if(a==1 && b==0 && cin==0)
  begin
   sum=1;
   cout=0;
  end

 else if(a==1 && b==0 && cin==1)
  begin
   sum=0;
   cout=1;
  end

 else if(a==1 && b==1 && cin==0)
  begin
  sum=0;
   cout=1;
  end

 else if(a==1 && b==1 && cin==1)
  begin
  sum<=1;
  cout<=1;
  end
   end
endmodule

module full_adder_4b(sum,cout,a,b,cin);
   output [3:0] sum;
   output  cout;
   input [3:0]  a,b;
   input  cin;
   wire cout0,cout1,cout2;

   FA_Behavioural f1 ( a[0], b[0], cin,sum[0], cout0);
   FA_Behavioural f2 ( a[1], b[1], cout0,sum[1], cout1);
   FA_Behavioural f3 (a[2], b[2], cout1, sum[2], cout2);
   FA_Behavioural f4 ( a[3], b[3], cout2,sum[3], cout);

endmodule





