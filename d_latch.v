`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 20:29:39
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input wire d,
    input wire en,
    output wire q,
    output wire qbar
    );
    wire n1, n2, n3, n4;
    assign n1 = ~(d & en);
    assign n2 = ~(~d & en);
    assign q  = ~(n1 & qbar);
    assign qbar = ~(n2 & q);
endmodule
