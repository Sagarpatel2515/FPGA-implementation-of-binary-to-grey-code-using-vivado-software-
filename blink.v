`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 08:22:38
// Design Name: 
// Module Name: blink
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


module Clock_1Hz(
    input clk,
    output clk_out
    );


reg [25:0] count=0;

reg clk_out;

always @(posedge clk )

begin

count<=count+1;

if (count==50_000_000)
begin
    count<=0;
    clk_out = ~clk_out;
    
    end
    
    end
    
    endmodule
 
