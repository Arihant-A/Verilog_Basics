`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 01:01:01
// Design Name: 
// Module Name: or3stage
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


module or3stage(
    input wire [9:0] a,
    output wire o);
    wire s0,s1;
    or4in u1 (
        .a(a[0]),
        .b(a[1]),
        .c(a[2]),
        .d(a[3]),
        .y(s0)
        );    
    or4in u2 (
        .a(a[4]),
        .b(a[5]),
        .c(a[6]),
        .d(a[8]),
        .y(s1)
        );
    or4in u3 (
        .a(a[9]),
        .b(a[10]),
        .c(s0),
        .d(s1),
        .y(o)
        );
endmodule
