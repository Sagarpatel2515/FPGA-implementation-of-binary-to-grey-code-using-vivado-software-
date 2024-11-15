`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 08:24:26
// Design Name: 
// Module Name: 3c
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

//////////////////////////////////////////////////////////////////////////////////


module three_bit_counter( clk , clr , Q);
input clk,clr;
    
    output reg [2:0] Q;

always @ (posedge clk or posedge clr)
begin
if (clr)
Q<=3'b000;
else
Q <= Q+1'b1;
end

endmodule
