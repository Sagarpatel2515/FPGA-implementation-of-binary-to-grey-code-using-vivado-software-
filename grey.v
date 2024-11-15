`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 08:26:45
// Design Name: 
// Module Name: grey
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


module Top_Module_GC_Counter(
    input clk,
    input clr,
    output [2:0] NS
    );
    wire [2:0]  Q;
    wire clk_out;
    Clock_1Hz U5(clk,clk_out);
    three_bit_counter U6(clk_out,clr,Q);
    
  assign NS[2] = ~Q[2] & Q[1] & Q[0] | Q[2] & ~Q[1] | Q[2] & ~Q[0];
assign NS[1] = ~Q[2] & Q[0] | ~Q[2] & Q[1] | Q[2] & ~Q[1] & ~Q[0];
assign NS[0] = ~Q[1];

    
endmodule

